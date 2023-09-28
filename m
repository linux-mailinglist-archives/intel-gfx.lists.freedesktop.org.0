Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4927B1537
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 09:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA4510E5D8;
	Thu, 28 Sep 2023 07:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F0610E5D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 07:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695886997; x=1727422997;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4Hny2KuYrdyLgYYe7RcGOxeqJ1Otens+lRcXuk4WRHo=;
 b=RKfjb8wvcNjbGQ3Id2zMs5Vj9ASTsgdGnDYUyihS3nfm0DH6vDOW5Y2R
 P+k2vHRipG2SBB6yvT4wygS+FO7UgrVBgXJRJeR+VB5XqrEdDiuzl5oQ3
 8J9ELPq/g0H8SBGtEsRzh5Uyxoh6oC/OY7RNDQxGvZVafU87bSFurvhdW
 yWmj5v4jp2SIbMIMMnN2uZLqE5lXKz/+bFwekkxUUp6qPVJ8stp4+NaS5
 FU0KoSn+bt6HtL1QajK+YW+bRqVwoHwoogL5+56YMNYT6ehGE4EtNyp0d
 ZBdm6pGu/Ha7r7E0UxLzdjBAK7YOFGIIWHz0gqzuz0SJdkvBZ1Rl9m7Tn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="385868277"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="385868277"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 00:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="726140422"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="726140422"
Received: from vrohpcvpnmu01.ger.corp.intel.com (HELO localhost)
 ([10.252.54.82])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 00:43:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230928065210.103376-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230928065210.103376-1-jouni.hogander@intel.com>
Date: Thu, 28 Sep 2023 10:43:13 +0300
Message-ID: <87cyy2kajy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
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

On Thu, 28 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When we
> are releasing frontbuffer we are clearing the pointer from the object. Wa=
rn
> on if return value is not null.
>
> v2: Instead of ignoring do drm_WARN_ON
>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index d5540c739404..95319301cf2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
>=20=20
>  	i915_ggtt_clear_scanout(obj);
>=20=20
> -	i915_gem_object_set_frontbuffer(obj, NULL);
> +	drm_WARN_ON(&intel_bo_to_i915(obj)->drm,
> +		    i915_gem_object_set_frontbuffer(obj, NULL) !=3D NULL);

I'm in the camp that says drm_WARN_ON() and friends should not contain
any functional actions, and it should just be for checks. I.e. if you
removed all the warns, things would still work, and lines that do stuff
stand out and aren't hidden in WARN parameters.

Like so:

	ret =3D i915_gem_object_set_frontbuffer(obj, NULL);
	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);

BR,
Jani.

>  	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>=20=20
>  	i915_active_fini(&front->write);

--=20
Jani Nikula, Intel
