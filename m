Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1A15182C0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 12:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3AA10FF51;
	Tue,  3 May 2022 10:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E5010FF51
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 10:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651575417; x=1683111417;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=kRu23FwvI88sm11AKxfhlHDJuZ7KuLA0kFC2GbxmocU=;
 b=Z8mk/t9jUGsieEMgsvTCALDaq1i8GVLBiZRVB5jvXydBJrUI7k8/4C07
 FLOkW8zAjs9faGZXnru6CEAWIUP8ovU6otMyIDk96iETOq9UXBel4tP4X
 E6Y3DXBrOnWOia5wQ32GYaf4WMMGMCYY4y/F4HESPsDczp8Umr7woGlz6
 YzePtdTOGj5b7qxGYvBrl+VmiiBuTGkjaSq3bW8ExIwHf1Ubf4V+I50TP
 YaIMjuYJ0QEo//qoa81NWypRCDo2jcQre2WUWhUi5CobSC25GRBTq+UgV
 +cTLTF9b/iYf4dFeTU0I/jmhDabGusXzvzUZtD8Yg4ivljwneoRl2k+Rl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267326336"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267326336"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 03:56:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="653215368"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 03:56:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220426193222.3422-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-5-ville.syrjala@linux.intel.com>
Date: Tue, 03 May 2022 13:56:50 +0300
Message-ID: <87levirij1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 04/18] drm/i915/bios: Document the mess
 around the LFP data tables
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

On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Document the fact that struct lvds_lfp_data_entry can't be used
> directly and instead must be accessed via the data table pointers.
>
> Also remove the bogus comment implying that there might be a
> variable number of panel entries in the table. There are always
> exactly 16.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 64551d206aeb..294e74c3289d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -735,7 +735,7 @@ struct lvds_lfp_data_ptr {
>  } __packed;
>=20=20
>  struct bdb_lvds_lfp_data_ptrs {
> -	u8 lvds_entries; /* followed by one or more lvds_data_ptr structs */
> +	u8 lvds_entries;
>  	struct lvds_lfp_data_ptr ptr[16];
>  	struct lvds_lfp_data_ptr_table panel_name; /* 156-163? */
>  } __packed;
> @@ -769,6 +769,11 @@ struct lvds_pnp_id {
>  	u8 mfg_year;
>  } __packed;
>=20=20
> +/*
> + * For reference only. fp_timing has variable size so
> + * the data must be accessed using the data table pointers.
> + * Do not use this directly!
> + */
>  struct lvds_lfp_data_entry {
>  	struct lvds_fp_timing fp_timing;
>  	struct lvds_dvo_timing dvo_timing;

--=20
Jani Nikula, Intel Open Source Graphics Center
