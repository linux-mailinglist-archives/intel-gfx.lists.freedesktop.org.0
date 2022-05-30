Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1DD537AAD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B6E10E7A5;
	Mon, 30 May 2022 12:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E106B10E76D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653913991; x=1685449991;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=D8aAsaJxuYh1Gm2ry4EJlEWCt6q2oyYUXckaAHuicvs=;
 b=i1hxm/jaHCsS9SjrRaBsxgVyW1Gbv5uOTsfY+/8muKrCNIocPpptv62O
 S0mBxvdi2hT9wlkBduMKSJ2L2I/LZ79p77sXePcFc2Ks+sdM/F8j2KNGZ
 a+bDJF16LRnvHmB1kYEMLgxypucF/Jmqd/2ERFqsKHcq5+YQvzMj5VSrJ
 fQjhgrJmPzpjrfXWXFRFEbD1vAW6Xudl8Io9+Z85d2DUQNP0nLI5uYOMh
 pc4GLeP0GVU5KNJcp4D5V4QeG264M5kYMuUSrb0/aRTc1MMUEmD1t4/A3
 I6KtBD3FbGau38lA9ocoveR0ZFQ5TIOIPQRgkQWHqcBHHL5C+L9R7HvmF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="274706540"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="274706540"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:33:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="605168719"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:33:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220527204949.2264-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-5-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:33:06 +0300
Message-ID: <87ilpnryil.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/bios: Fix aggressiveness typos
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

On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Fix various typos around "aggressiveness". Note that
> the VBT spec also sometimes missspells it as
> "agressiveness" so I guess that's where some of the typos
> came from.

Could nitpick unrelated things like space before ":" in bitfields or the
struct naming, but this patch does what it says on the box.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 4b98bab3b890..39109f204c6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -856,9 +856,9 @@ struct als_data_entry {
>  	u16 lux;
>  } __packed;
>=20=20
> -struct agressiveness_profile_entry {
> -	u8 dpst_agressiveness : 4;
> -	u8 lace_agressiveness : 4;
> +struct aggressiveness_profile_entry {
> +	u8 dpst_aggressiveness : 4;
> +	u8 lace_aggressiveness : 4;
>  } __packed;
>=20=20
>  struct bdb_lfp_power {
> @@ -873,7 +873,7 @@ struct bdb_lfp_power {
>  	u16 dmrrs;
>  	u16 adb;
>  	u16 lace_enabled_status;
> -	struct agressiveness_profile_entry aggressivenes[16];
> +	struct aggressiveness_profile_entry aggressiveness[16];
>  	u16 hobl; /* 232+ */
>  	u16 vrr_feature_enabled; /* 233+ */
>  } __packed;

--=20
Jani Nikula, Intel Open Source Graphics Center
