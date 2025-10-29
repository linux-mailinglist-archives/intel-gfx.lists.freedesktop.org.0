Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEBCC1B7AA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810CD10E7ED;
	Wed, 29 Oct 2025 14:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZ8UBpcb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979DB10E7EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749936; x=1793285936;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=p8xMAvp9B29GYl5yvfS6ntnnWsrv4GLNuC50GYf3sys=;
 b=NZ8UBpcbD84e3wn03VESX21ZcKUnnGdp3yr3is3fc5Ys1row1RPxcu8W
 n5khD6wzN0x0E2fxOLtCG/Fxb3mt/tO4ghfkx7JoDXmW/a7+1HfOTrzVj
 CEFA4zz/27vQCdSbbz9x932L6jsEAvK3GhDzAkh6lauqNS4Gv7NWAbrTj
 McGfLK4tBwDAGd2t62PTazjE9cqvEDzIENLEU83MvWDAFGk5jTll+cPWv
 0AhDzCvN7yT2W1IpJuQK4Tkodt9FEwrrwepblD8bd1h18f3GHp9dUru1p
 fJUgwqQQrkq9bKjempi3I40F7D88DAM+PV/vXwhZy12fVNIBgwPPLZz7E w==;
X-CSE-ConnectionGUID: njQ550tYQo+RhqG2NDpjrA==
X-CSE-MsgGUID: uXfiIBPTT0SEntLz0C6tbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="81502499"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="81502499"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:55 -0700
X-CSE-ConnectionGUID: 2HmaaT08TCadHUHBIM3+1A==
X-CSE-MsgGUID: Jv1xhNeCQDiWs5OcZk+5/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="185386815"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:54 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:58:51 +0200
Resent-Message-ID: <9777cc8a829f3e0e94d751f8178b292f74555b44@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 07/10] drm/i915/frontbuffer: Extract
 intel_frontbuffer_ref()
In-Reply-To: <20251016185408.22735-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-8-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:35:55 +0200
Message-ID: <b7304abc6b1051a2696620ea1144a36b6f0d7f1c@intel.com>
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

On Thu, 16 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I want to hide the kref from the high level frontbuffer code.
> To that end abstract the kref_get() in intel_frontbuffer_queue_flush()
> (which is the only high level function that needs this) as a new
> intel_frontbuffer_ref().
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Upgrade to

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 02b06dfb9fee..e5f3f0d555a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -165,6 +165,11 @@ void __intel_fb_flush(struct intel_frontbuffer *fron=
t,
>  		frontbuffer_flush(display, frontbuffer_bits, origin);
>  }
>=20=20
> +static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
> +{
> +	kref_get(&front->ref);
> +}
> +
>  static void intel_frontbuffer_flush_work(struct work_struct *work)
>  {
>  	struct intel_frontbuffer *front =3D
> @@ -186,7 +191,7 @@ void intel_frontbuffer_queue_flush(struct intel_front=
buffer *front)
>  	if (!front)
>  		return;
>=20=20
> -	kref_get(&front->ref);
> +	intel_frontbuffer_ref(front);
>  	if (!schedule_work(&front->flush_work))
>  		intel_frontbuffer_put(front);
>  }

--=20
Jani Nikula, Intel
