Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 791E61C3882
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 13:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7666E02C;
	Mon,  4 May 2020 11:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B18DF6E02C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 11:43:59 +0000 (UTC)
IronPort-SDR: H0d3u8ViXGwlR9NDJuRVdPnMeAIoA4ZF9kDd2wH07CAgobYMKRTMD5my1kfiFkRhG5176dR4F2
 LwNgwnRk/HjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 04:43:59 -0700
IronPort-SDR: wpoKNxgtm8sOe4Hdr3dj+mQUKH/p8KVxF43Bg8Kc6QOCSR8Hhk0uCA9vQG/Y+KEm0KKuVow5Ve
 7Z2Y2oJ5NDDQ==
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="277505159"
Received: from efarji-mobl1.ger.corp.intel.com (HELO [10.251.165.124])
 ([10.251.165.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 04:43:57 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
 <20200502045744.407060-3-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d6817bc7-4c66-a715-a0d4-0600c0099a0f@linux.intel.com>
Date: Mon, 4 May 2020 12:43:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200502045744.407060-3-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Setup MCR steering for RCS
 engine workarounds
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: chris@chris-wilson.co.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/05/2020 05:57, Matt Roper wrote:
> Reads of multicast registers give the value associated with
> slice/subslice 0 by default unless we manually steer the reads to a
> different slice/subslice.  If slice/subslice 0 are fused off in hardware,
> performing unsteered reads of multicast registers will return a value of
> 0 rather than the value we wrote into the multicast register.
> 
> To ensure we can properly readback and verify workarounds that touch
> registers in a multicast range, we currently setup MCR steering to a
> known-valid slice/subslice as the very first item in the GT workaround
> list for gen10+.  That steering will then be in place as we verify the
> rest of the registers that show up in the GT workaround list, and at
> initialization the steering will also still be in effect when we move on
> to applying and verifying the workarounds in the RCS engine's workaround
> list (which is where most of the multicast registers actually show up).
> 
> However we seem run into problems during resets where RCS engine
> workarounds are applied without being preceded by application of the GT
> workaround list and the steering isn't in place.  Let's add the same MCR
> steering to the beginning of the RCS engine's workaround list to ensure
> that it's always in place and we don't get erroneous messages about RCS
> engine workarounds failing to apply.
> 
> References: https://gitlab.freedesktop.org/drm/intel/issues/1222
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: chris@chris-wilson.co.uk
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4a255de13394..b11b83546696 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1345,6 +1345,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   {
>   	struct drm_i915_private *i915 = engine->i915;
>   
> +	if (INTEL_GEN(i915) >= 10)
> +		wa_init_mcr(i915, wal);
> +
>   	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>   		/*
>   		 * Wa_1607138336:tgl
> 

No complaints, only a question - is live_engine_reset_workarounds able 
to catch this, presumably sporadic, 0xfdc loss after engine reset?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
