Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EmqFybMy2l0LwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:29:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CEB36A42E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57BA910E252;
	Tue, 31 Mar 2026 13:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WGAxjt/o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AD4D10E251;
 Tue, 31 Mar 2026 13:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774963745; x=1806499745;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J/2wVUcQIJYHvpJSvYaAS0J1N5hy6AUn7vIa1PObqJY=;
 b=WGAxjt/oztDuLYAODyhPhrdvevvbopa7RIYfFFuqEPp9QLsjvFmNSz7s
 m1dpYItcs4toJAFoGL0q0njHJvnCr2Alm9tv3sysSi7uZlA2WAKEp+Gus
 6HtV9wY6880uvvSjeL9lhBlZlimCNM9kvlJjAeKK7KkLXLgCHn6qGAY5G
 1yukKRrW9yJOPJAStP1WyCsM+znNcFOEfGtOON9Gfm43zAXLR4Anl8ZnW
 q/5NEwkZpCnawOWqbf+Xl5u0O2F5wOr5gpWFHZgnHC5PqUL2kHi+oTDEm
 lXfu1h+bsmZivqJqb2KgB42icpeQOKy3hulPreyYlPqSplQ2cJU+dYC5/ g==;
X-CSE-ConnectionGUID: k5rogWeRSW+bI/76TtWtWA==
X-CSE-MsgGUID: rqfislY9TseVWN6BxAunug==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="79835720"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="79835720"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 06:29:05 -0700
X-CSE-ConnectionGUID: xfnoHEp2TH6T9D+u8pVozA==
X-CSE-MsgGUID: Kbeh4ic7S8m1K45Scew/tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="231295833"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 06:29:03 -0700
Date: Tue, 31 Mar 2026 16:28:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/{i915, xe}: convert VLV sideband display
 wrappers into real functions
Message-ID: <acvMGpZbVVjd6tKO@intel.com>
References: <cover.1774957233.git.jani.nikula@intel.com>
 <57740dc3a820cb5fc1cfcd28e4be58b2cb48020d.1774957233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <57740dc3a820cb5fc1cfcd28e4be58b2cb48020d.1774957233.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 36CEB36A42E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 02:40:54PM +0300, Jani Nikula wrote:
> Convert the VLV sideband static inline wrappers into real
> functions. This will help the follow-up work of moving the VLV sideband
> to the display parent interface.
> 
> The downside is that we'll have to build vlv_sideband.c as part of xe
> build, to avoid a plethora of stubs.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> 'git show --color-moved' will help review

If only --color-moved and --word-diff could play nice...

For some other other patches --word-diff alone seemed pretty good
fortunately.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_sideband.c | 125 +++++++++++++++
>  drivers/gpu/drm/i915/display/vlv_sideband.h | 165 ++++----------------
>  drivers/gpu/drm/xe/Makefile                 |   3 +-
>  3 files changed, 156 insertions(+), 137 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/drm/i915/display/vlv_sideband.c
> index e18045f2b89d..2472e0412728 100644
> --- a/drivers/gpu/drm/i915/display/vlv_sideband.c
> +++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
> @@ -8,6 +8,71 @@
>  #include "intel_dpio_phy.h"
>  #include "vlv_sideband.h"
>  
> +void vlv_bunit_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
> +}
> +
> +u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
> +{
> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
> +}
> +
> +void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
> +{
> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
> +}
> +
> +void vlv_bunit_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
> +}
> +
> +void vlv_cck_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
> +}
> +
> +u32 vlv_cck_read(struct drm_device *drm, u32 reg)
> +{
> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
> +}
> +
> +void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
> +{
> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
> +}
> +
> +void vlv_cck_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
> +}
> +
> +void vlv_ccu_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
> +}
> +
> +u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
> +{
> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
> +}
> +
> +void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
> +{
> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
> +}
> +
> +void vlv_ccu_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
> +}
> +
> +void vlv_dpio_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
> +}
> +
>  static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display *display,
>  						  enum dpio_phy phy)
>  {
> @@ -48,3 +113,63 @@ void vlv_dpio_write(struct drm_device *drm,
>  
>  	vlv_iosf_sb_write(drm, unit, reg, val);
>  }
> +
> +void vlv_dpio_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
> +}
> +
> +void vlv_flisdsi_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
> +}
> +
> +u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
> +{
> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
> +}
> +
> +void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
> +{
> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
> +}
> +
> +void vlv_flisdsi_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
> +}
> +
> +void vlv_nc_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
> +}
> +
> +u32 vlv_nc_read(struct drm_device *drm, u8 addr)
> +{
> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
> +}
> +
> +void vlv_nc_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
> +}
> +
> +void vlv_punit_get(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
> +}
> +
> +u32 vlv_punit_read(struct drm_device *drm, u32 addr)
> +{
> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
> +}
> +
> +int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
> +{
> +	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
> +}
> +
> +void vlv_punit_put(struct drm_device *drm)
> +{
> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
> +}
> diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/drm/i915/display/vlv_sideband.h
> index 2c240d81fead..065273726379 100644
> --- a/drivers/gpu/drm/i915/display/vlv_sideband.h
> +++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
> @@ -4,7 +4,6 @@
>  #ifndef _VLV_SIDEBAND_H_
>  #define _VLV_SIDEBAND_H_
>  
> -#include <linux/bitops.h>
>  #include <linux/types.h>
>  
>  #include "vlv_iosf_sb.h"
> @@ -13,144 +12,38 @@
>  enum dpio_phy;
>  struct drm_device;
>  
> -static inline void vlv_bunit_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
> -}
> +void vlv_bunit_get(struct drm_device *drm);
> +u32 vlv_bunit_read(struct drm_device *drm, u32 reg);
> +void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val);
> +void vlv_bunit_put(struct drm_device *drm);
>  
> -static inline u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
> -{
> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
> -}
> +void vlv_cck_get(struct drm_device *drm);
> +u32 vlv_cck_read(struct drm_device *drm, u32 reg);
> +void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val);
> +void vlv_cck_put(struct drm_device *drm);
>  
> -static inline void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
> -{
> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
> -}
> +void vlv_ccu_get(struct drm_device *drm);
> +u32 vlv_ccu_read(struct drm_device *drm, u32 reg);
> +void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val);
> +void vlv_ccu_put(struct drm_device *drm);
>  
> -static inline void vlv_bunit_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
> -}
> -
> -static inline void vlv_cck_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
> -}
> -
> -static inline u32 vlv_cck_read(struct drm_device *drm, u32 reg)
> -{
> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
> -}
> -
> -static inline void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
> -{
> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
> -}
> -
> -static inline void vlv_cck_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
> -}
> -
> -static inline void vlv_ccu_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
> -}
> -
> -static inline u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
> -{
> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
> -}
> -
> -static inline void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
> -{
> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
> -}
> -
> -static inline void vlv_ccu_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
> -}
> -
> -static inline void vlv_dpio_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
> -}
> -
> -#ifdef I915
> +void vlv_dpio_get(struct drm_device *drm);
>  u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg);
> -void vlv_dpio_write(struct drm_device *drm,
> -		    enum dpio_phy phy, int reg, u32 val);
> -#else
> -static inline u32 vlv_dpio_read(struct drm_device *drm, int phy, int reg)
> -{
> -	return 0;
> -}
> -static inline void vlv_dpio_write(struct drm_device *drm,
> -				  int phy, int reg, u32 val)
> -{
> -}
> -#endif
> -
> -static inline void vlv_dpio_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
> -}
> -
> -static inline void vlv_flisdsi_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
> -}
> -
> -static inline u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
> -{
> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
> -}
> -
> -static inline void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
> -{
> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
> -}
> -
> -static inline void vlv_flisdsi_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
> -}
> -
> -static inline void vlv_nc_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
> -}
> -
> -static inline u32 vlv_nc_read(struct drm_device *drm, u8 addr)
> -{
> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
> -}
> -
> -static inline void vlv_nc_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
> -}
> -
> -static inline void vlv_punit_get(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
> -}
> -
> -static inline u32 vlv_punit_read(struct drm_device *drm, u32 addr)
> -{
> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
> -}
> -
> -static inline int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
> -{
> -	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
> -}
> -
> -static inline void vlv_punit_put(struct drm_device *drm)
> -{
> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
> -}
> +void vlv_dpio_write(struct drm_device *drm, enum dpio_phy phy, int reg, u32 val);
> +void vlv_dpio_put(struct drm_device *drm);
> +
> +void vlv_flisdsi_get(struct drm_device *drm);
> +u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg);
> +void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val);
> +void vlv_flisdsi_put(struct drm_device *drm);
> +
> +void vlv_nc_get(struct drm_device *drm);
> +u32 vlv_nc_read(struct drm_device *drm, u8 addr);
> +void vlv_nc_put(struct drm_device *drm);
> +
> +void vlv_punit_get(struct drm_device *drm);
> +u32 vlv_punit_read(struct drm_device *drm, u32 addr);
> +int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val);
> +void vlv_punit_put(struct drm_device *drm);
>  
>  #endif /* _VLV_SIDEBAND_H_ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 9dacb0579a7d..7960c2db33bd 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -332,7 +332,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/skl_prefill.o \
>  	i915-display/skl_scaler.o \
>  	i915-display/skl_universal_plane.o \
> -	i915-display/skl_watermark.o
> +	i915-display/skl_watermark.o \
> +	i915-display/vlv_sideband.o
>  
>  ifeq ($(CONFIG_ACPI),y)
>  	xe-$(CONFIG_DRM_XE_DISPLAY) += \
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
