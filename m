Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C98886A17
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A7210E918;
	Fri, 22 Mar 2024 10:20:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cx3zFLX/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936BA10E918
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711102809; x=1742638809;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=qoGSSVWznK31hq139y5cSYzZ4vIjIM+0/ivrvXrIINg=;
 b=cx3zFLX/L9mri7qiq4gAeKeW5W/JCWx9FLtw/Qtwjtna/ND3pGCwC0m2
 O7GeK0UvOQHCujY3y5JdpOYObbxFXaJbdKih5vS3rgZ+y21MD8EJrYiBD
 IMJGzhsbqbM59KNz/2qPj+atPfJnHhzVmVYzb80FG40zrJJUjbUE0a9Zu
 dn6NXDY55zC/vN5Bxo+gINn3rHTWkZ+Q3v2/tshfUzd4dRfIF+109DGiq
 R2zTTv7W8Ss1Clk0Wpgks+Jmz0U1gIYTXgUU+XsGfr+Vlq97liRkgkzto
 cdVFe9Wip4VsY4Ftx6yJL4b6qPhd34vxbfFAANl/Dbf833W5xwYi13+7w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9947465"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9947465"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14826728"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.6])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:20:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/bios: Add the old DPST field into VBT LFP
 power block
In-Reply-To: <20240321161806.31714-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
 <20240321161806.31714-4-ville.syrjala@linux.intel.com>
Date: Fri, 22 Mar 2024 12:20:01 +0200
Message-ID: <87zfuqk1pq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 21 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> According to some VBIOS sources the LFP power block used to
> have a single bit for DPST support. In version 159 that bit
> got moved into the driver features block, and then in version
> 228 back into the LFP power block (but this time as a
> per-panel thing). We have definitions for the last two, but
> not the original bit. Define it as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 24583b455f2d..5da8ae407dfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -918,7 +918,7 @@ struct bdb_lfp_backlight_data {
>   * Block 44 - LFP Power Conservation Features Block
>   */
>  struct lfp_power_features {
> -	u8 reserved1:1;
> +	u8 dpst_support:1;						/* ???-159 */
>  	u8 power_conservation_pref:3;
>  	u8 reserved2:1;
>  	u8 lace_enabled_status:1;					/* 210+ */

--=20
Jani Nikula, Intel
