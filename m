Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B56742647
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 14:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D8410E3CE;
	Thu, 29 Jun 2023 12:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B0310E1B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688041380; x=1719577380;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ghDfm2x4UBHnOmfXSU38MaJoOgjQsHyss8BtDsHR0CQ=;
 b=fh+jSkYqYiKNXujH3ZD3l5Uvd25+VbHxkIEvdiGBj52IcplZAq+3o4Mh
 umVYybQLqXZrMNbYFrqXGp7hLSNZ55TxKn9kIw8JH7JAxajxB20Jng8CJ
 gCaklYHpe+XRW7/etv85Bf5JhFUApIpG1M105RNBYUPMKS0Kunxh97Ddr
 aWdtYm/2KJF0na1G+OhfcY98qYeChU7VA8MQ15CzgfgaWIrp6BZyh4Nxj
 cx2jckZjzFl/ov7J37ZfH9Pbsf7+RHgcKZL+QQcOh40A+2UTBbySmHP9U
 41vj5lHLIxMaKwh01Ez+58xxZE02TpGI2b8Sf/o9uHMF5XCTKm6YI8ypV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="359579155"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="359579155"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 05:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="747011368"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="747011368"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 05:22:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <ZJ1rxgwwBBDnKL0C@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
 <87o7kzsjvs.fsf@intel.com> <ZJ1rxgwwBBDnKL0C@intel.com>
Date: Thu, 29 Jun 2023 15:22:37 +0300
Message-ID: <878rc2sbjm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't preserve dpll_hw_state for
 slave crtc in Bigjoiner
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 29 Jun 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> On Wed, Jun 28, 2023 at 06:10:15PM +0300, Jani Nikula wrote:
>> On Wed, 28 Jun 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
>> > If we are using Bigjoiner dpll_hw_state is supposed to be exactly
>> > same as for master crtc, so no need to save it's state for slave crtc.
>> 
>> Could this help with [1]?
>> 
>> BR,
>> Jani.
>> 
>> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/8720
>
> I don't think that would help, here this is mostly a cosmetic fix
> to remove dmesg warn caused by slave crtc sw/hw state mismatch, because
> we don't calculate pll state for slave crtc in Bigjoiner, but still try
> to verify it against the values in the correspodent hw.

I think that's one part of what's going in the bug, but I guess just for
a different phy.

BR,
Jani.

>
> Stan
>
>> 
>> >
>> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 1 -
>> >  1 file changed, 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> > index 43d6ba980780..c3e93bdde29d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -4568,7 +4568,6 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>> >  	saved_state->uapi = slave_crtc_state->uapi;
>> >  	saved_state->scaler_state = slave_crtc_state->scaler_state;
>> >  	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
>> > -	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
>> >  	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
>> >  
>> >  	intel_crtc_free_hw_state(slave_crtc_state);
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
