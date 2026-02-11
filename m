Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLx9LSJ6jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:46:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9D1247D0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2864D10E189;
	Wed, 11 Feb 2026 12:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnLJQ/96";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557D410E189;
 Wed, 11 Feb 2026 12:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770813983; x=1802349983;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EwdQF+XvO+Ncecomv0N4M5NVRF0cJwOFSlq09U5MOS8=;
 b=hnLJQ/96LKWooEdXpIxi8SzII2QAsUIBkz/b9L6ADLPrlN8GYTyKZyXS
 Z81shVPWpIZD9G/Xv9X0Vm/+xLf0RIm2qRUYo15MJXh8BMhuiclKxJfTt
 idesbg9dglBxjyLbjXNDiUYouAaC9asTgfd54mi9FAxQQ8RrIN3/pAg7E
 4Qk3djGg0SeFg0/E+NB7dTz5DyY5DcuUojzjsg26u292wyZIdoogQDaYm
 KGdAzpl5Y7JTVPd/zxKkyjgp1B4VWr2CD0wDdwGxO4ZuaMmddESlpY5b/
 5UdEjgvVeK6YjLa704o3lh3OHuG+OWHyPHlN1SJhVgQJT9JnyaW9ErqqE A==;
X-CSE-ConnectionGUID: R0vUnQyMQtWQjBWUNyqP8w==
X-CSE-MsgGUID: BpPuZMLVQOqPbhACQKSjmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="82598033"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="82598033"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:46:23 -0800
X-CSE-ConnectionGUID: KopCT6c2RKWbogcSlFfb+A==
X-CSE-MsgGUID: snEBelDwRn668Iak28Zc7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="217201818"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:46:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 08/20] drm/i915: Remove i915_reg.h from intel_dram.c
In-Reply-To: <20260205094341.1882816-9-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-9-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:46:17 +0200
Message-ID: <eed6ba9e8805169ef7ae1d3c1e7d654a5b7782bf@intel.com>
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
X-Rspamd-Queue-Id: 12A9D1247D0
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Make intel_dram.c free from including i915_reg.h.
>
> v3: Move MEM_SS info reg to display instead of pcode header (Jani)
>
> v2: Move mem config register to newly added pcode header (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_dram.c         | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h                   | 6 ------
>  3 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index c598ccb3c78b..42aef6300320 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3075,6 +3075,12 @@ enum skl_power_gate {
>  #define MTL_PIPE_CLKGATE_DIS2(pipe)		_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)
>  #define   MTL_DPFC_GATING_DIS			REG_BIT(6)
>  
> +#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> +#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
> +#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
> +#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
> +#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> +
>  #define MTL_MEM_SS_INFO_QGV_POINT_OFFSET	0x45710
>  #define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)
>  #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
> diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
> index 61aefe77f90f..bd281d4b4c05 100644
> --- a/drivers/gpu/drm/i915/display/intel_dram.c
> +++ b/drivers/gpu/drm/i915/display/intel_dram.c
> @@ -9,9 +9,9 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_display_core.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_regs.h"
>  #include "intel_dram.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_parent.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b12c6bf68a2c..e905250f4fa5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1005,12 +1005,6 @@
>  #define OROM_OFFSET				_MMIO(0x1020c0)
>  #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
>  
> -#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> -#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
> -#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
> -#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
> -#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> -
>  #define MTL_MEDIA_GSI_BASE		0x380000
>  
>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel
