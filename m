Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32735267705
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 03:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6DD6E0BC;
	Sat, 12 Sep 2020 01:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AED6E0BC
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 01:08:10 +0000 (UTC)
IronPort-SDR: 4YGBtmURLJtJ4pdqHEStr9/dWB4Yzl0fnpB3B/PCmIrxb33aaaQHH5RL7iQWHCZ8TlNGfXX0gW
 b95dtkU4hwBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="156325930"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="156325930"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 18:08:05 -0700
IronPort-SDR: Y6g34JjXtVkgZbe77OwOy9XK6d7YN836Uwhm3RytZuuAdA33twv1TE7Q8dFw1PH6Vt9DI481Hn
 zXs+aYr3o78A==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="344796896"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 18:08:03 -0700
Date: Fri, 11 Sep 2020 21:10:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <20200912011026.GA265632@intel.com>
References: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl,
 rkl: Make Wa_1606700617/22010271021 permanent
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 11, 2020 at 03:11:58PM -0700, Swathi Dhanavanthri wrote:
> This workaround applies to all TGL and RKL steppings.
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 39817c5a7058..6c580d0d9ea8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1729,10 +1729,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN6_RC_SLEEP_PSMI_CONTROL,
>  			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
> -	}
>  
> -	if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {

please notice this function is called for other gens.
In case you need to extend this to other platforms, please add them
to the if instead of removing the if.

> -		/* Wa_1606700617:tgl */
> +		/*
> +		 * Wa_1606700617:tgl
> +		 * Wa_22010271021:tgl,rkl
> +		 */
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
>  			     FF_DOP_CLOCK_GATE_DISABLE);
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
