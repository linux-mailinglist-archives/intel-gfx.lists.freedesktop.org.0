Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE4B53E199
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 10:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2571110E17E;
	Mon,  6 Jun 2022 08:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C1010E17E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 08:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654503839; x=1686039839;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xJcyfq4bDv5M8fLI+iAJNqrrNzFEhPzgAn2akskK90A=;
 b=QzYaN4hn2cjhev4XTCFW5g+g5Vq9w3G9QsS8Mw3Y1mo8bIyR7QhhMYFK
 H38lcfLl02BWwsHm286by4jtgFuJyXtxrk2zoENZT4+JXxS4oPBkfqSVV
 7gycgnVeNGGhruavc3jRxLGwVEeBayK4sVm0Se4SM3Eq+tXvwr8UpNcB1
 jRyuj62dV5aKlWhyCJ0hkMarCAPA/Fb6BFVhVuPDJWmdXqLwFyzw11EO3
 /9p86gSIvnZGAu0vVVSmAMc+L8YgvJBo4sGuMWKsCh3cYJLzbSyXz9a0T
 5X7FsIMFaOFeP24RzB1Rmb3VyhDw5sCDaHvqKd5Ax+7PbjA69+sqbaxAG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="337472458"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="337472458"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 01:23:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="583514325"
Received: from pplank-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.15])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 01:22:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220606060324.1618-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220606060324.1618-1-anshuman.gupta@intel.com>
Date: Mon, 06 Jun 2022 11:22:51 +0300
Message-ID: <8735ginquc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015795083
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Jun 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> i915 must disable Render DOP clock gating globally.
>
> B.Spec: 52621

Please use

Bspec:

BR,
Jani.

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 58e9b464d564..55a291ab5536 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -630,6 +630,7 @@
>  
>  #define GEN7_MISCCPCTL				_MMIO(0x9424)
>  #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
> +#define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE    (1 << 1)
>  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
>  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
>  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a604bc7c0701..b957dec64eee 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1489,6 +1489,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 * performance guide section.
>  	 */
>  	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
> +
> +	/*
> +	 * Wa_14015795083
> +	 */
> +	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  }
>  
>  static void

-- 
Jani Nikula, Intel Open Source Graphics Center
