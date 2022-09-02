Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B5E5AB2EE
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C396510E858;
	Fri,  2 Sep 2022 14:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4336210E858
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662127543; x=1693663543;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hgLGdM0QO7kC7hrczTaKyWL+RiWxkoCNfd0veuexgFk=;
 b=EclfN4HoDSG3KzF+bfYHXS00TWv1ZnlXCYksIsKpOBDqUic3UEmS8Gs6
 c6KYbjeAsfkOEpBNoGbW1xRSoNgD4xmYrvhRLaC4/lnPdHwGNKcmKTpKj
 rbv8lNp1N4fN7tpCFIztD6ocyqRBWymEFRCEvchOtuiQmC40JeU6btAFM
 xKvWXpZ901ImetOrEV6siQwYEJ4zslvtHpphPtwpA4PUcV7abdTELqYUL
 7OWscPOYjj4KC9XMVuFiIpTW1qEoDCGmPFQvWdpo9gIUUkz/VyiQNtlHY
 tytAYOn23+t69zGTAQ2ep0HCQQRYcuXVWPwXdrqTWJmH6NnNw89xHKo8k g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="276388061"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="276388061"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:05:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674365492"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:05:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-8-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:05:30 +0300
Message-ID: <875yi5eus5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915: Document the sets of bits
 in the driver features block
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a few comment documenting the sets of bits in the driver
> features block. Might make it a bit easier to check against
> the spec.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 8bdb533b5304..c04937aa75b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -542,6 +542,7 @@ struct bdb_psr {
>  #define BDB_DRIVER_FEATURE_INT_SDVO_LVDS	3
>=20=20
>  struct bdb_driver_features {
> +	/* Driver bits */
>  	u8 boot_dev_algorithm:1;
>  	u8 block_display_switch:1;
>  	u8 allow_display_switch:1;
> @@ -556,6 +557,7 @@ struct bdb_driver_features {
>  	u8 boot_mode_bpp;
>  	u8 boot_mode_refresh;
>=20=20
> +	/* Extended Driver Bits 1 */
>  	u16 enable_lfp_primary:1;
>  	u16 selective_mode_pruning:1;
>  	u16 dual_frequency:1;
> @@ -571,6 +573,7 @@ struct bdb_driver_features {
>  	u16 tv_hotplug:1;
>  	u16 hdmi_config:2;
>=20=20
> +	/* Driver Flags 1 */
>  	u8 static_display:1;					/* 163+ */
>  	u8 reserved2:7;
>=20=20
> @@ -578,8 +581,12 @@ struct bdb_driver_features {
>  	u16 legacy_crt_max_y;
>  	u8 legacy_crt_max_refresh;
>=20=20
> +	/* Extended Driver Bits 2 */
>  	u8 hdmi_termination;
> +
>  	u8 custom_vbt_version;					/* 165+ */
> +
> +	/* Driver Feature Flags */
>  	u16 rmpm_enabled:1;					/* 165+ */
>  	u16 s2ddt_enabled:1;					/* 165+ */
>  	u16 dpst_enabled:1;					/* 165-227 */

--=20
Jani Nikula, Intel Open Source Graphics Center
