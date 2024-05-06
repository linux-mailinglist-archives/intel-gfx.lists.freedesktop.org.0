Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD348BCAA8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A1610EDF7;
	Mon,  6 May 2024 09:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/lE2xHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F7510EDF7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987793; x=1746523793;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EORkPeV/8JZHtQyvknOYaE0TALurab2z8pRE2xS1H1c=;
 b=Q/lE2xHz2i6Qisa85sOCDBqkatIpsbH5J/d5M+KKuceBZQDg+zxUtyLc
 8cXwHHNM7ryriy5WMP+G/NdOdw6Vh4jPo7He8XGRHchDsTGgI5yPfgEiv
 j6d+lOCSKOqk2GJTEBj9/wYmyUM9TGnHo5o+6SD774ijExPZ3OttLCoa6
 rfCqpj4ty3+Oi7BqP1+BT2RP5FN0ZezJMhOo9Q4Rh4TRxpDSOiBx4BvT7
 c5rx2wPDx0tqcSj6a3uXGcJxTohDVxhH6BDKQJXMA5PqfgPwOiYKjDpkj
 +Rw8lP5U0Cjm5tLSvgxQGEkjXeIPJTidyWNYHfkhruik0fTZ01vELMsW0 w==;
X-CSE-ConnectionGUID: PJvZItN+TDG0J00tJ+wtUA==
X-CSE-MsgGUID: wDyMXQChSBylJgI3rPRZWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10603887"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10603887"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:29:52 -0700
X-CSE-ConnectionGUID: FyIbdyOxQDubD8bWEgvjXQ==
X-CSE-MsgGUID: y836fAkcS2mbmrVhJtjrUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="27993253"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:29:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 14/35] drm/i915/bios: Define VBT block 12 (Driver
 Persistent Algorithm) contents
In-Reply-To: <20240503122449.27266-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-15-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:29:47 +0300
Message-ID: <875xvrnv90.fsf@intel.com>
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define the contents of VBT block 12 (Driver Persistent Algorithm).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Baffled.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index d78523cd4214..2075d53ca317 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -778,6 +778,25 @@ struct bdb_driver_features {
>  	u16 pc_feature_valid:1;					/* 159+ */
>  } __packed;
>=20=20
> +/*
> + * Block 13 - Driver Persistent Algorithm
> + */
> +
> +struct bdb_driver_persistence {
> +	u16 hotkey_persistent_algorithm:1;
> +	u16 lid_switch_persistent_algorithm:1;
> +	u16 power_management_persistent_algorithm:1;
> +	u16 hotkey_persistent_on_mds_twin:1;
> +	u16 hotkey_persistent_on_refresh_rate:1;
> +	u16 hotkey_persistent_on_restore_pipe:1;
> +	u16 hotkey_persistent_on_mode:1;
> +	u16 edid_persistent_on_mode:1;
> +	u16 dvo_hotplug_persistent_on_mode:1;
> +	u16 docking_persistent_algorithm:1;
> +	u16 rsvd:6;
> +	u8 persistent_max_config;
> +} __packed;
> +
>  /*
>   * Block 22 - SDVO LVDS General Options
>   */

--=20
Jani Nikula, Intel
