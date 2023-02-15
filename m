Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1E2697998
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 11:15:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0EA910EA91;
	Wed, 15 Feb 2023 10:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5BA910EA91
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 10:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676456120; x=1707992120;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VTdtvMAQJ+cHkKeWBpRdSGhR0cjY60wUvBVNiORLZZQ=;
 b=gVoQzgFLt1n+goPEPfS9NsbaSRXxHCunu/xdzjKZMBnDx2ZTfjPjywH9
 wQDVLNk+b7wsM7Eo2YS7Uz+3h1WJrYZ1fG4bAf3fU6WBSj+HLxmXbFy8Z
 paD/SD6MlchWxzoO3loBP1n6UQ+lBUdbSH4BoFyAhQTa6ZPd+G+d7mzbe
 a8gNJnYztZZrrlN4fHXqct56RYdMUj/lsHNDut+m/w72Z8TDxhYJjrb6I
 YDXx4zR5U6ToqKgJomQBVoGMWpAEBj299mnttvLcBshs+VaZoaYbPse3W
 +tR2lynZgjUrYGkruWa4+kCTHQnRjgvkwsGsmokUpHmKTbi3h9RqFBiBV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="358812773"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="358812773"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:15:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="619373005"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="619373005"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:15:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230214134739.25077-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
 <20230214134739.25077-2-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 12:15:16 +0200
Message-ID: <87zg9fqlor.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Don't hide function calls
 with side effects
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

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Hiding a function call with side effects inside the
> variable declaration block is a bit rude. Make it
> stand out more.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index d1d54870aefd..e196da8c8f71 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1614,8 +1614,9 @@ static void intel_pwm_disable_backlight(const struc=
t drm_connector_state *conn_s
>  static int intel_pwm_setup_backlight(struct intel_connector *connector, =
enum pipe pipe)
>  {
>  	struct intel_panel *panel =3D &connector->panel;
> -	int ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
> +	int ret;
>=20=20
> +	ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
>  	if (ret < 0)
>  		return ret;

--=20
Jani Nikula, Intel Open Source Graphics Center
