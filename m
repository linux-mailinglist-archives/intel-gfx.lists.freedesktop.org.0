Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9295F3F06
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 11:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324AF10E53D;
	Tue,  4 Oct 2022 09:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CC510E40F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 09:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664874011; x=1696410011;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HLir+e+eLEyB+5h68gGK/8ALtIuoSRoqU/2YBKRhHEM=;
 b=RPTBIMMRMPtb0nIu+7YKvLkobZFayUrqk6hAn1YJ2pxaH5WuA/pCGYl7
 uGvAdd7bJY6c6IkliCqdP2sxDzZMjTF1mE+Xg7WPZyODK2b6kKdyFNlzC
 fnxU82EVv80eMeaJPwld5K7sSQ2aBbOhadi1Ws7BU22WZKZOmpZUlP0aW
 3NTFFmvUJT8Hz9ClZikGTCRM/2XZd0uY+4jhZ6qRHtp189vDlmMapONIV
 GkKtolmjqqt+stQkLApUyktntTAiMek6UJtMpc2Ln2y4ugDo6g5C/Ptei
 p7Bcrjy57diiJMadshJFlaSbqsMcI6ieXOrPy/y+JJUp9un8eGdI5iODC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="301581458"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="301581458"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:00:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="799045702"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="799045702"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:00:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221003113249.16213-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
 <20221003113249.16213-7-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 12:00:03 +0300
Message-ID: <8735c4ufos.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915: Setup final panel
 drrs_type already during init
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

On Mon, 03 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we track the VBT drrs type per-panel we can move the
> has_drrs_modes() check to the panel init rather than doing it
> for every intel_panel_drrs_type() call.

And we also get the correct DRRS type logging hint early on.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index d18c56cf957d..2b4b359b8342 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -165,9 +165,6 @@ static bool has_drrs_modes(struct intel_connector *co=
nnector)
>=20=20
>  enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
>  {
> -	if (!has_drrs_modes(connector))
> -		return DRRS_TYPE_NONE;
> -
>  	return connector->panel.vbt.drrs_type;
>  }
>=20=20
> @@ -668,6 +665,9 @@ int intel_panel_init(struct intel_connector *connecto=
r)
>=20=20
>  	intel_backlight_init_funcs(panel);
>=20=20
> +	if (!has_drrs_modes(connector))
> +		connector->panel.vbt.drrs_type =3D DRRS_TYPE_NONE;
> +
>  	drm_dbg_kms(connector->base.dev,
>  		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
>  		    connector->base.base.id, connector->base.name,

--=20
Jani Nikula, Intel Open Source Graphics Center
