Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG16AwJ6jGktpAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:45:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C65A124795
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D428F10E55F;
	Wed, 11 Feb 2026 12:45:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Adx3aZvc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994C510E189;
 Wed, 11 Feb 2026 12:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770813951; x=1802349951;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lvGAfMFv354LCCily7l1DFsi/DPxnOSDgvqXVGMU0YE=;
 b=Adx3aZvcSTxeL+gsXHUa031hjlCrmXbXfA2QCN48LlgUz7V6Uv0NR8vc
 mVsWoOCG2ek5Q7etyBX129mZc4tOlPzJK1qF93fXPLYQ9yUznq3TKT3kd
 U0A0rVsZTTl6HJ99E4elZymmhZjjxBs4cxi2cMFTTI7Jp+TYGT3bduvyY
 yy08uakrzjILNmbt6GVuacOypzCwiFXDgXO6DnbSXGgnoIwsmwaTs8qOT
 oIL25gd27EguKdjZ5PzH7NgOcf2mxx9Tc8b8jS113JxHy9QMa4QLjdwjy
 j8K3s+KLbaVF6fUUu9tUXOSmJUohvaPHKAZUNsyv365AM5CkY4Lt9Yd8V A==;
X-CSE-ConnectionGUID: 0pm+Gy6cQ12hHIJYibgN3w==
X-CSE-MsgGUID: Mji7QHjSRGWYWx8sBKn2yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="72052931"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="72052931"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:45:50 -0800
X-CSE-ConnectionGUID: ERPg1wKOSDmj9w+PYVVsmA==
X-CSE-MsgGUID: GPHBKHQjR2uoUvbh8hDBBA==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:45:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 07/20] drm/i915: Move GMD_ID and mask to intel_gt header
In-Reply-To: <20260205094341.1882816-8-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-8-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:45:46 +0200
Message-ID: <df0924e9ccb0db4b2f2d6a36660af20bec538b46@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 9C65A124795
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> GMD_ID* is relevant only for GT, hence moving the same
> together in gt/intel_gt_regs.h
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h         | 4 ----
>  2 files changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 7421ed18d8d1..14d31882e9e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -61,6 +61,9 @@
>  
>  #define GMD_ID_GRAPHICS				_MMIO(0xd8c)
>  #define GMD_ID_MEDIA				_MMIO(MTL_MEDIA_GSI_BASE + 0xd8c)
> +#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
> +#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> +#define   GMD_ID_STEP				REG_GENMASK(5, 0)
>  
>  #define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
>  #define MTL_STEER_SEMAPHORE			_MMIO(0xfd0)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 90a5c60e7667..b12c6bf68a2c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -922,10 +922,6 @@
>  #define   MASK_WAKEMEM				REG_BIT(13)
>  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
>  
> -#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
> -#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> -#define   GMD_ID_STEP				REG_GENMASK(5, 0)
> -
>  /* PCH */
>  
>  #define SDEISR  _MMIO(0xc4000)

-- 
Jani Nikula, Intel
