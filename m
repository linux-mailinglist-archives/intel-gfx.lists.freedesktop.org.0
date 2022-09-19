Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34DE5BC569
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 11:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D4810E5E3;
	Mon, 19 Sep 2022 09:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD97210E5E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663579971; x=1695115971;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zfUbRuxvgo/c8ZuYLwNTMHAbh7NSZM7yX8Q8Y0VzR9k=;
 b=QRRO8/u/FcMgz7WeS1XrB261Gk+Pzuyd3rAJe/qjLoKl5oBh2XMYjPuI
 90HallPb+iJItrushCteFEmsNnXVQNstBTy7TAbVjiJvh7xZ9Jz+gZYYw
 nYUwgoqco1wEuFCv4zJOAr1E9d8yI/fMdwzy8LzwT8+xe9t0ZFQbBjqc0
 dV5QRHQj2FUQJeryhTDOO2Wr6y2Md/ysBQ4GUQKmVV5npjUaVir5SiBFN
 /XSZOye6ECdY/wivGubgbQUEggZSMQ8NmZiaJIfnLP6YOvky9nMs1C1vS
 MNiLxibJUWlRLuXZubh7WfitRQd1lTjr6/6fc03qlpLtDrGJ03WwDIXzp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="361089975"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="361089975"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:32:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="649070635"
Received: from jjohns2-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:32:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220916204132.10469-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916204132.10469-1-ville.syrjala@linux.intel.com>
Date: Mon, 19 Sep 2022 12:32:33 +0300
Message-ID: <87mtavpv4e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: WARN if a port should use VBT
 provided vswing tables
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 16 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We don't parse the VBT vswing/preemphassis tables at all currently.
> Let's WARN if a port wants to use them so we get a heads up that
> whether we really need to implement this stuff or not. My
> current stash contains no VBTs with this bit set.
>
> v2: Move to print_ddi_port() (Jani)
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

LGTM.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 28bdb936cd1f..4c543e8205ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2676,6 +2676,14 @@ static void print_ddi_port(const struct intel_bios=
_encoder_data *devdata,
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT DP max link rate: %d\n",
>  			    port_name(port), dp_max_link_rate);
> +
> +	/*
> +	 * FIXME need to implement support for VBT
> +	 * vswing/preemph tables should this ever trigger.
> +	 */
> +	drm_WARN(&i915->drm, child->use_vbt_vswing,
> +		 "Port %c asks to use VBT vswing/preemph tables\n",
> +		 port_name(port));
>  }
>=20=20
>  static void parse_ddi_port(struct intel_bios_encoder_data *devdata)

--=20
Jani Nikula, Intel Open Source Graphics Center
