Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 330717FBA05
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD61C10E4F7;
	Tue, 28 Nov 2023 12:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4E3810E4F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701174301; x=1732710301;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=qi3DSzqFTMy9Jf67EU6Ra3XCRXHLjvKqqLMJVArnszo=;
 b=TOLNcMwBqHEfTgCB7C/ge6m2Nh4p2zQznvlkZKmTTvP5mI/6k2duZ4qT
 34HZhvCNMIDgE2Z65beB4rVjuhnDg9JUzrnTaXtM92VxCOukC3uvt7/79
 Dj/3d7n+rAzCSIcsu1IxK3pupFsyV6k9JFtemtLDj0crTui23bmEUu7i/
 uduPsAD03ZCRB3V+y1T/TP4gmF/OPldrqemSxN7rGvRlhcOQXwRP1XvoP
 EtPXQDkEobHj0pHel6181PrbgHdEdAy2haiUOVOv3hRB/wwnERR6oCQFP
 teTnrr0D3uUcg5C0Ix9wBbRTWOd5vspnKLh/8umS6wSsJJTRfMyHBlu5Y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="372287469"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="372287469"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:25:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="16928736"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:25:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231127145028.4899-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
 <20231127145028.4899-3-ville.syrjala@linux.intel.com>
Date: Tue, 28 Nov 2023 14:24:57 +0200
Message-ID: <87wmu26p5y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/mst: Reject modes that require
 the bigjoiner
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

On Mon, 27 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have no bigjoiner support in the MST code, so .mode_valid()
> pretending otherwise is just going to result black screens for
> users. Reject any mode that needs the joiner.
>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: d51f25eb479a ("drm/i915: Add DSC support to MST path")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 0680a42f7d2a..b665fe6ef871 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1332,6 +1332,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *=
connector,
>  	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
>  		bigjoiner =3D true;
>  		max_dotclk *=3D 2;
> +
> +		/* TODO: add support for bigjoiner */
> +		*status =3D MODE_CLOCK_HIGH;
> +		return 0;
>  	}
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 10 &&

--=20
Jani Nikula, Intel
