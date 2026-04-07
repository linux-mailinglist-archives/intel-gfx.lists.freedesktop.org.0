Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNxGDglr1Wm96AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 22:37:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6723B495C
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 22:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B2D10E4C2;
	Tue,  7 Apr 2026 20:37:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kVIfMot4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1692410E4BA;
 Tue,  7 Apr 2026 20:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775594245; x=1807130245;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P10gUYx8aw0a3B6Gp5l6gi0ryWaNWgUToE36/l9v6as=;
 b=kVIfMot4K++HSWZw9eu6RRRXt/aFFkLtYuw3VfSx7fnqvhUG7Hn2SWZ6
 0NfGoN0bszCks4naruXi7gXE2dyqM4WfxEx4sEzOAnLMVsPRm+i4LlKY9
 vfBJJ3+CkcGmDtgpBJOnkbItHGnfjhQfR5fgVQ8diTjssxafHKx/YLJzF
 oH3z0IRV7X2emoC/78Xzl93ysvbN9aLGFLT69rLQa8IdiK3+Pga4Fk1oB
 qECfZC02nLaKagx7nZkP0/1k1P6VPel9FSCSOooFDP8rtUnkKWvW4bld5
 Qo4gNDCSPKeW7U0mxW26nWxZNiR9Q8balXKY9Go6MxN6xQL+Elc1KDn+z w==;
X-CSE-ConnectionGUID: YOszbKpsSgeEnFS7h93OOQ==
X-CSE-MsgGUID: hRVHfv6DQnubBMt12Zdtzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87642062"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="87642062"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 13:37:25 -0700
X-CSE-ConnectionGUID: azj/UhM4QciS+mocHCqKJg==
X-CSE-MsgGUID: 8K6F8yJ5RA28oN2As3QPtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="228532843"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 13:37:23 -0700
Date: Tue, 7 Apr 2026 23:37:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/5] drm/i915/mchbar: drop unnecessary
 intel_mchbar_regs.h include
Message-ID: <adVrAOdCQQvDIZgk@intel.com>
References: <cover.1775590536.git.jani.nikula@intel.com>
 <7eaf98e648240e3011bfb85d0330787074c39205.1775590536.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7eaf98e648240e3011bfb85d0330787074c39205.1775590536.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BB6723B495C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 10:36:27PM +0300, Jani Nikula wrote:
> There are some unnecessary includes. Remove.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 1 -
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 1 -
>  drivers/gpu/drm/i915/gvt/handlers.c           | 1 -
>  3 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index babaf16e72f2..adf2512e2ed5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -19,7 +19,6 @@
>  #include "intel_gt_pm_debugfs.h"
>  #include "intel_gt_regs.h"
>  #include "intel_llc.h"
> -#include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index fa9af08f9708..a75f05ff1110 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -16,7 +16,6 @@
>  #include "i915_wait_util.h"
>  #include "intel_guc_print.h"
>  #include "intel_guc_slpc.h"
> -#include "intel_mchbar_regs.h"
>  
>  /**
>   * DOC: SLPC - Dynamic Frequency management
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index a34f56630af9..9f61867e2478 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -71,7 +71,6 @@
>  #include "i915_drv.h"
>  #include "i915_pvinfo.h"
>  #include "i915_reg.h"
> -#include "intel_mchbar_regs.h"
>  #include "sched_policy.h"
>  
>  /* XXX FIXME i915 has changed PP_XXX definition */
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
