Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1AE9FE620
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 13:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2963310E04C;
	Mon, 30 Dec 2024 12:58:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dsG77mmd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE3110E04C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 12:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735563517; x=1767099517;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XugTrTH7V+c80MpWpRuOWQcZbC5bEydBnNoYh1KNNhs=;
 b=dsG77mmd7BMWNUZ6wMueo54slLcRYwtjiMN7vHZ4XxVSFb0yvzOl4y5X
 dtPX7vvBxPewEIMki+CYBQIVnVLz6dlY5jqbHzJG8FUdEYZ9ZEg6xneX6
 PrwVX8upcInIuxp8toqI/Hur174/VMpBRRJLbNopVGlJlJQzSNrStMC0Q
 qU2JO0TNL51ryDUsBlrXeh7jRvCHS5yuhcBP0u1ctTBxsdwK4nuGYzKmg
 Gz25diNkpz4qn8V8oItov618pRl9LBOzI+QJNZDHWQ23QTifzTCQYNIMh
 9CLOmT3HYt77Msy/mPLM4lbeYL7iQCh72HbrB/QK5pgTl75oMaXrqHR13 w==;
X-CSE-ConnectionGUID: m1UoSTT9Tt+zXl7GzzBVHw==
X-CSE-MsgGUID: Yobn8wWxRNO+uwWL85xE6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="47269369"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="47269369"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 04:58:37 -0800
X-CSE-ConnectionGUID: tszRLbeWSL2ZzsI+hHtPLA==
X-CSE-MsgGUID: v9wSMCnWSMKKwL8gKuovlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="138132840"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 04:58:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915/scaler: Pimp scaler debugs
In-Reply-To: <173507271978.1822.13474225879621112042@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-7-ville.syrjala@linux.intel.com>
 <173507271978.1822.13474225879621112042@intel.com>
Date: Mon, 30 Dec 2024 14:58:31 +0200
Message-ID: <87a5cdpbt4.fsf@intel.com>
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

On Tue, 24 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Ville Syrjala (2024-12-19 10:08:25-03:00)
>>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>>Include the standard "[CRTC:...]" information in the scaler debugs
>>to make life easier.
>
> Drive-by comment (and going a bit off-topic):
>
>     $ git grep '\[[A-Z]\+:%d:%s]' -- drivers/gpu/drm | wc -l
>     600
>
> Has someone already considered creating DRM_*_FMT and DRM_*_ARG() for
> those? E.g. DRM_CRTC_FMT and CRM_CRTC_ARG(crtc->base), which, IMO, would
> be easier to use and arguably more concise.

Personally, I'm not in favour. I dislike having to concatenate the
string constants all over the place.

> I tried doing a quick search on lore.kernel.org/dri-devel, but I'm not
> sure what would be good search terms to find previous attempts to see
> possible arguments against it.

We've gone through this a number of times, and some of the other options
are:

- Add allocated debug string to the objects, e.g. crtc->debug or
  crtc->id and print it with %s. It also works when you want to print
  the info of e.g. both the connector and the encoder.

- Add function pointers for debug logging in the drm objects, and have
  the drm_dbg* family of functions use them based on the type passed to
  it with generics. You'd do drm_dbg_kms(connector, "foo\n"); and that
  would add the [CONNECTOR:...] prefix. Falls short when you want to
  print the info of multiple objects.

- Object specific debug logging macros. connector_dbg() etc. I'm
  strongly against the proliferation of logging macros. All the variants
  (like once, ratelimited, etc.) get multiplied by the number of object
  types. (Yes, I also dislike the gt/guc macros, but I digress.) And
  this also doesn't solve the logging of multiple objects at once.

- Add printk format specifiers. There's apparently no way to do this in
  a human readable way, as anything nice throws off compiler printf
  format checks. So you end up with stuff like %pXYZ where the XYZ are
  meaningless magic letters. And they'd need to be implemented in kernel
  core.


BR,
Jani.


>
> --
> Gustavo Sousa
>
>>
>>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>---
>> drivers/gpu/drm/i915/display/skl_scaler.c | 25 +++++++++++++++--------
>> 1 file changed, 16 insertions(+), 9 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
>>index cbc71e44fcbb..f6d76ef1a854 100644
>>--- a/drivers/gpu/drm/i915/display/skl_scaler.c
>>+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>>@@ -166,7 +166,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>>         if (DISPLAY_VER(display) >=3D 9 && crtc_state->hw.enable &&
>>             need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLAC=
E) {
>>                 drm_dbg_kms(display->drm,
>>-                            "Pipe/Plane scaling not supported with IF-ID=
 mode\n");
>>+                            "[CRTC:%d:%s] scaling not supported with IF-=
ID mode\n",
>>+                            crtc->base.base.id, crtc->base.name);
>>                 return -EINVAL;
>>         }
>>=20
>>@@ -186,8 +187,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>>                         scaler_state->scalers[*scaler_id].in_use =3D fal=
se;
>>=20
>>                         drm_dbg_kms(display->drm,
>>-                                    "scaler_user index %u.%u: "
>>+                                    "[CRTC:%d:%s] scaler_user index %u.%=
u: "
>>                                     "Staged freeing scaler id %d scaler_=
users =3D 0x%x\n",
>>+                                    crtc->base.base.id, crtc->base.name,
>>                                     crtc->pipe, scaler_user, *scaler_id,
>>                                     scaler_state->scaler_users);
>>                         *scaler_id =3D -1;
>>@@ -207,8 +209,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>>             src_w > max_src_w || src_h > max_src_h ||
>>             dst_w > max_dst_w || dst_h > max_dst_h) {
>>                 drm_dbg_kms(display->drm,
>>-                            "scaler_user index %u.%u: src %ux%u dst %ux%=
u "
>>+                            "[CRTC:%d:%s] scaler_user index %u.%u: src %=
ux%u dst %ux%u "
>>                             "size is out of scaler range\n",
>>+                            crtc->base.base.id, crtc->base.name,
>>                             crtc->pipe, scaler_user, src_w, src_h,
>>                             dst_w, dst_h);
>>                 return -EINVAL;
>>@@ -224,16 +227,18 @@ skl_update_scaler(struct intel_crtc_state *crtc_sta=
te, bool force_detach,
>>          */
>>         if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
>>                 drm_dbg_kms(display->drm,
>>-                            "scaler_user index %u.%u: pipe src size %ux%=
u "
>>+                            "[CRTC:%d:%s] scaler_user index %u.%u: pipe =
src size %ux%u "
>>                             "is out of scaler range\n",
>>+                            crtc->base.base.id, crtc->base.name,
>>                             crtc->pipe, scaler_user, pipe_src_w, pipe_sr=
c_h);
>>                 return -EINVAL;
>>         }
>>=20
>>         /* mark this plane as a scaler user in crtc_state */
>>         scaler_state->scaler_users |=3D (1 << scaler_user);
>>-        drm_dbg_kms(display->drm, "scaler_user index %u.%u: "
>>+        drm_dbg_kms(display->drm, "[CRTC:%d:%s] scaler_user index %u.%u:=
 "
>>                     "staged scaling request for %ux%u->%ux%u scaler_user=
s =3D 0x%x\n",
>>+                    crtc->base.base.id, crtc->base.name,
>>                     crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
>>                     scaler_state->scaler_users);
>>=20
>>@@ -421,8 +426,8 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>>=20
>>                 if (hscale < 0 || vscale < 0) {
>>                         drm_dbg_kms(display->drm,
>>-                                    "Scaler %d doesn't support required =
plane scaling\n",
>>-                                    *scaler_id);
>>+                                    "[CRTC:%d:%s] scaler %d doesn't supp=
ort required plane scaling\n",
>>+                                    crtc->base.base.id, crtc->base.name,=
 *scaler_id);
>>                         drm_rect_debug_print("src: ", src, true);
>>                         drm_rect_debug_print("dst: ", dst, false);
>>=20
>>@@ -430,7 +435,8 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>>                 }
>>         }
>>=20
>>-        drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
>>+        drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%u=
 to %s:%d\n",
>>+                    crtc->base.base.id, crtc->base.name,
>>                     crtc->pipe, *scaler_id, name, idx);
>>         scaler_state->scalers[*scaler_id].mode =3D mode;
>>=20
>>@@ -530,7 +536,8 @@ int intel_atomic_setup_scalers(struct intel_atomic_st=
ate *state,
>>         /* fail if required scalers > available scalers */
>>         if (num_scalers_need > crtc->num_scalers) {
>>                 drm_dbg_kms(display->drm,
>>-                            "Too many scaling requests %d > %d\n",
>>+                            "[CRTC:%d:%s] too many scaling requests %d >=
 %d\n",
>>+                            crtc->base.base.id, crtc->base.name,
>>                             num_scalers_need, crtc->num_scalers);
>>                 return -EINVAL;
>>         }
>>--=20
>>2.45.2
>>

--=20
Jani Nikula, Intel
