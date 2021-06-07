Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C25CB39E8D7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 23:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A43C6EA1A;
	Mon,  7 Jun 2021 21:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 423 seconds by postgrey-1.36 at gabe;
 Mon, 07 Jun 2021 21:04:14 UTC
Received: from smtprelay.hostedemail.com (smtprelay0188.hostedemail.com
 [216.40.44.188])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11126EA17
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 21:04:14 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 279FF181CA760
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 20:57:11 +0000 (UTC)
Received: from omf16.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 06D02182CF670;
 Mon,  7 Jun 2021 20:57:10 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf16.hostedemail.com (Postfix) with ESMTPA id 3303C255114; 
 Mon,  7 Jun 2021 20:57:08 +0000 (UTC)
Message-ID: <179e1e6a1c383650b65d73a4ea98d5e22c34e562.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 07 Jun 2021 13:57:06 -0700
In-Reply-To: <20210607203229.GA60476@embeddedor>
References: <20210607203229.GA60476@embeddedor>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
X-Spam-Status: No, score=0.08
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 3303C255114
X-Stat-Signature: pgm14zeb35swy91hjkipde1pgsrpsfgb
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19L9gsetg5NN1XIjN0ilmq/oYUJ5kbZDSw=
X-HE-Tag: 1623099428-943858
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915/gem: Fix fall-through
 warning for Clang
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
Cc: Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-06-07 at 15:32 -0500, Gustavo A. R. Silva wrote:
> In preparation to enable -Wimplicit-fallthrough for Clang, fix a
> warning by explicitly adding a fallthrough; statement.
[]
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_shrinker.c
[]
> @@ -62,6 +62,7 @@ static void try_to_writeback(struct drm_i915_gem_object=
 *obj,
> =A0	switch (obj->mm.madv) {
> =A0	case I915_MADV_DONTNEED:
> =A0		i915_gem_object_truncate(obj);
> +		fallthrough;
> =A0	case __I915_MADV_PURGED:
> =A0		return;
> =A0	}

I think fallthrough to return is not particularly nice to follow.

This is the current function:

static void try_to_writeback(struct drm_i915_gem_object *obj,
			     unsigned int flags)
{
	switch (obj->mm.madv) {
	case I915_MADV_DONTNEED:
		i915_gem_object_truncate(obj);
	case __I915_MADV_PURGED:
		return;
	}

	if (flags & I915_SHRINK_WRITEBACK)
		i915_gem_object_writeback(obj);
}

One of these might be more typical:

static void try_to_writeback(struct drm_i915_gem_object *obj,
			     unsigned int flags)
{
	switch (obj->mm.madv) {
	case I915_MADV_DONTNEED:
		i915_gem_object_truncate(obj);
		break;
	case __I915_MADV_PURGED:
		break;
	default:
		if (flags & I915_SHRINK_WRITEBACK)
			i915_gem_object_writeback(obj);
		break;
	}
}

or maybe:

static void try_to_writeback(struct drm_i915_gem_object *obj,
			     unsigned int flags)
{
	switch (obj->mm.madv) {
	case I915_MADV_DONTNEED:
		i915_gem_object_truncate(obj);
		return;
	case __I915_MADV_PURGED:
		return;
	}

	if (flags & I915_SHRINK_WRITEBACK)
		i915_gem_object_writeback(obj);
}


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
