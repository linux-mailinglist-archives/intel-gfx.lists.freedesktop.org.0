Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEtKAMbI+GlQ0gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 18:26:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A546B4C154E
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 18:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2367910E760;
	Mon,  4 May 2026 16:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="C7nsBiw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FA010E3DC;
 Mon,  4 May 2026 16:26:39 +0000 (UTC)
Received: from killaraus.ideasonboard.com
 (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7D36F9C;
 Mon,  4 May 2026 18:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1777911995;
 bh=E9px648KO3wjHBF0FvoQJ7oWqClwxx9bwOStqChZ5Dg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C7nsBiw9DfJdqe3vAIYvrHSaWv8vOFVzMj0n+NiBzUAPMyhk8h2a2SM2Bulaujsx8
 d1pRVOk4Ncb3L1muy/CHM/aX8ZQX1GlcGVUsDs0tNhAx+haCjF7MzMb+9wF1uQ5IaL
 OgYAB8rIqmJUXUEvwtBpDVsHyESYrjqNYazNcKwY=
Date: Mon, 4 May 2026 19:26:36 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Simon Ser <contact@emersion.fr>,
 Harry Wentland <harry.wentland@amd.com>, Melissa Wen <mwen@igalia.com>,
 Sebastian Wick <sebastian.wick@redhat.com>, Alex Hung <alex.hung@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 01/20] drm/atomic: Document atomic state lifetime
Message-ID: <20260504162636.GF1344263@killaraus.ideasonboard.com>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-1-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-drm-mode-config-init-v3-1-8b68d9db0d8b@kernel.org>
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
X-Rspamd-Queue-Id: A546B4C154E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:dkim,ideasonboard.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Hi Maxime,

Thank you for the patch.

On Fri, Apr 24, 2026 at 12:18:41PM +0200, Maxime Ripard wrote:
> How drm_atomic_state structures and the various entity structures are
> allocated and freed isn't really trivial. Document it.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  Documentation/gpu/drm-kms.rst |  6 +++++
>  drivers/gpu/drm/drm_atomic.c  | 55 +++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 61 insertions(+)
> 
> diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
> index 2292e65f044c..017c7b196ed7 100644
> --- a/Documentation/gpu/drm-kms.rst
> +++ b/Documentation/gpu/drm-kms.rst
> @@ -280,10 +280,16 @@ structure, ordering of committing state changes to hardware is sequenced using
>  :c:type:`struct drm_crtc_commit <drm_crtc_commit>`.
>  
>  Read on in this chapter, and also in :ref:`drm_atomic_helper` for more detailed
>  coverage of specific topics.
>  
> +Atomic State Lifetime
> +---------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/drm_atomic.c
> +   :doc: state lifetime
> +
>  Handling Driver Private State
>  -----------------------------
>  
>  .. kernel-doc:: drivers/gpu/drm/drm_atomic.c
>     :doc: handling driver private state
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 41c57063f3b4..253a00f450b0 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -45,10 +45,65 @@
>  #include <drm/drm_colorop.h>
>  
>  #include "drm_crtc_internal.h"
>  #include "drm_internal.h"
>  
> +/**
> + * DOC: state lifetime
> + *
> + * &struct drm_atomic_state represents an update to video pipeline
> + * state. Despite its confusing name, it's actually a transient object
> + * that holds a state update as a collection of pointers to individual
> + * objects' states. &struct drm_atomic_state has a much shorter lifetime
> + * than the objects' states, since it's only allocated while preparing,
> + * checking or committing the update, while object states are allocated
> + * when preparing the update and kept alive as long as they are active
> + * in the device.
> + *
> + * Their respective lifetimes are:
> + *
> + * - at reset time, the object reset implementation will allocate a new
> + *   default state and will store it in the object state pointer.
> + *
> + * - whenever a new update is needed:
> + *
> + *   + A new &struct drm_atomic_state is allocated using
> + *     drm_atomic_state_alloc().
> + *
> + *   + The current active state of affected entity is copied into this

s/affected entity/affected entities/

but maybe clearer, I'd write

  + The current active state of all entities affected by the update is
  copied ...

> + *     new &struct drm_atomic_state using drm_atomic_get_plane_state(),
> + *     drm_atomic_get_crtc_state(), drm_atomic_get_connector_state(), or
> + *     drm_atomic_get_private_obj_state(). This new state can then be
> + *     modified.
> + *
> + *     At that point, &struct drm_atomic_state stores three state
> + *     pointers for any affected entity: the "old" and "new" states, and
> + *     state_to_destroy. The old state is the state currently active in
> + *     the hardware, which is either the one initialized by reset() or a
> + *     newer one if a commit has been made. The new state is the state
> + *     we just allocated and we might eventually commit to the hardware.
> + *     The state_to_destroy points to the state we'll eventually have to
> + *     free when the drm_atomic_state will be destroyed, and points to
> + *     the new state for now since the old state is still the active
> + *     state.
> + *
> + *   + After the state is populated, it is checked. If the check is
> + *     successful, the update is committed. Part of the commit is a call
> + *     to drm_atomic_helper_swap_state() which will turn the new states
> + *     into the active states. Doing so involves updating the object's
> + *     state pointer (&drm_crtc.state or similar) to point to the new
> + *     state, and state_to_destroy will now point to the old states,
> + *     that used to be active but aren't anymore.
> + *
> + *   + When the commit is done, and when all references to our &struct
> + *     drm_atomic_state are put, drm_atomic_state_clear() runs and will
> + *     free all state_to_destroy (ie. old states).

I would also mention here that the drm_atomic_state itself is freed at
this point (unless I'm mistaken and the drm_atomic_state still lives on
for some time, in which case this misunderstanding is probably a sign
that the correct behaviour should be documented :-)).

With this,

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> + *
> + *   + Now, we don't have any active &struct drm_atomic_state anymore,
> + *     and only the entity active states remain allocated.
> + */
> +
>  void __drm_crtc_commit_free(struct kref *kref)
>  {
>  	struct drm_crtc_commit *commit =
>  		container_of(kref, struct drm_crtc_commit, ref);
>  

-- 
Regards,

Laurent Pinchart
