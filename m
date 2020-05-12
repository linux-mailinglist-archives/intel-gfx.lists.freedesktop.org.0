Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1446B1CFC2F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 19:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFAA6E133;
	Tue, 12 May 2020 17:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF616E133
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 17:31:00 +0000 (UTC)
IronPort-SDR: rwWriXx6YlI3PTxhdKqO8WxJ5RN7jdZcyifYxvDTlKPmOe3DQ0tZwm4o70ZcM70ueR/FJQxM7E
 G8Q7qbNzqdsw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:30:59 -0700
IronPort-SDR: yfj+y9/wLgfSm/pxOloE4f6kLFb0LDaWt1pe3lt3YbBErRaVz4/p1pOxzBuW0lVmVS04jtD2jk
 JxgD8wIfPkJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="250967246"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2020 10:30:59 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
 <20200502045744.407060-3-matthew.d.roper@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <738e66e3-fd24-11dc-3373-5bce3acf5fc5@intel.com>
Date: Tue, 12 May 2020 10:30:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
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



On 5/1/20 9:57 PM, Matt Roper wrote:
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

Did you check with the HW team about this behavior? AFAIU from reading 
the specs, the 0xfdc register should be nowhere close the render domain 
and therefore it should not be impacted by RCS reset. If it really is 
impacted, it might indicate that something funny is happening on the HW 
and there might be other register in the area that are also incorrectly 
losing their value, so IMO worth investigating.

Daniele

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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
