Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B507F13F6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 14:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F8F10E3C2;
	Mon, 20 Nov 2023 13:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA0E10E3C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 13:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700485874; x=1732021874;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fBuLHABpbGqT3jp5HcaSUMABvfM7yFBLqXpCZS3v34c=;
 b=dfqbRUUPmR4LixOssQ9cEfN1SLZ/bwv7ODyC7sIJhMT6Ju4RK1XWi9Nt
 39LoxTaIWHfjZu39Zzyd7Ir/NaZiLZYzGsPtQ91EnB/8D6OzHlRcH0RzS
 rcGdpo+wkxGFi0C44hgAyEQ5xqu4+3aD0d5Z1F8aapIQcjy97vUKMmhCK
 acTsvu+vFQ9radwErWhKrR60EzLRC4xR3tVEcGgl5/RQ8C3uz92rcN+a8
 Glav/AZj9gfOeK39t7dGzlHhAFsbkRNob+Z7b8TQlpyaD1BPaOk9vnNBq
 sF9f/dzI9MQRxuRg3uPCYu7I32/n4MKFvMtToGDN2iAZ896pgbJHp25tb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="4796742"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; 
   d="scan'208";a="4796742"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 05:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="716199509"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="716199509"
Received: from avmoskal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 05:11:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231120130214.3332726-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231120130214.3332726-1-jouni.hogander@intel.com>
Date: Mon, 20 Nov 2023 15:11:08 +0200
Message-ID: <87pm04o9hv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Do not check psr2 if
 psr/panel replay is not supported
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

On Mon, 20 Nov 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Do not continue to psr2 checks if psr or panel replay is not supported.
>
> Cc: Animesh Manna <animesh.manna@intel.com>
>
> Fixes: b8cf5b5d266e ("drm/i915/panelreplay: Initializaton and compute con=
fig for panel replay")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9670
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 8d180132a74b..9aa1c269cfef 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1373,6 +1373,9 @@ void intel_psr_compute_config(struct intel_dp *inte=
l_dp,
>  	else
>  		crtc_state->has_psr =3D _psr_compute_config(intel_dp, crtc_state);
>=20=20
> +	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))

Pure nitpicking, but I always find it easier to think and read this:

	if (!has_panel_replay && !has_psr)

BR,
Jani.


> +		return;
> +
>  	crtc_state->has_psr2 =3D intel_psr2_config_valid(intel_dp, crtc_state);
>=20=20
>  	crtc_state->infoframes.enable |=3D intel_hdmi_infoframe_enable(DP_SDP_V=
SC);

--=20
Jani Nikula, Intel
