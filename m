Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D21A2702B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6686C10E5F5;
	Tue,  4 Feb 2025 11:25:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i1OZChLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A77310E5F5;
 Tue,  4 Feb 2025 11:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738668326; x=1770204326;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=n9JD9VszPaiHemIj7pCO4WV3BloOkJjFGVruvdPzQ80=;
 b=i1OZChLdQ1C2QVoJuG2tbkjWOBhMEIu1mNCQKp8S29UBUW2qHLneqfGn
 MY4y7JLJnZNb+r2zqJYq28ArNo9Y2pyXeN4HYdpmS1nQdyFZmOIBz3e8f
 5XUS8/JKqqepxb57nGBqIkP8ktDIYLUTMFIHcfJWOp90f9WadNlNguKQG
 io78Si6r4xhhEC+NSVjvBXhXeduXxxrDxO1G5Xrpdd6ImykWyA/QN11NF
 0X8xlcjHIyAX0KeaAa4C9xfsyrnWMt7xuBK3x13a3ffm9Z/eaOyZnQDzA
 rZqBANjwe7Gpeb8wmonDD9gvIdIiRr6tO8wthPgRtxogTyQ9q9X+Q+erQ g==;
X-CSE-ConnectionGUID: pOATXAxWQfayPTTw1morWg==
X-CSE-MsgGUID: IGiRUIxbTJ2A69tfdzji1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49446587"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49446587"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:25:26 -0800
X-CSE-ConnectionGUID: 1YaNnMGZQuKGccowoujNfg==
X-CSE-MsgGUID: Ltf4wZnbQTqk7o6O/PMGFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111425165"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:25:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/i915: Improve the display VT-d workarounds
In-Reply-To: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 Feb 2025 13:25:22 +0200
Message-ID: <87pljy54v1.fsf@intel.com>
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

On Wed, 22 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Try to make the display VT-d workarounds more robust.

Okay, so I didn't hunt all the details in bspec, and I'm not sure if
anyone's going to, so I'm just going to trust you. Everything else
checks out and makes sense.

Series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> Ville Syrj=C3=A4l=C3=A4 (5):
>   drm/i915: Move VT-d alignment into plane->min_alignment()
>   drm/i915: Use more optimal VTd alignment for planes
>   drm/i915: Calculate the VT-d guard size in the display code
>   drm/i915: Use per-plane VT-d guard numbers
>   drm/i915/fbdev: Use fb->normal_view.gtt
>
>  drivers/gpu/drm/i915/display/i9xx_plane.c     | 15 ++++++
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  8 ++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_fb.c       | 48 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h       |  3 ++
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 20 ++++----
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  7 ++-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 15 ++++++
>  .../drm/i915/display/skl_universal_plane.c    |  7 +++
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 15 ++----
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  1 +
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
>  15 files changed, 120 insertions(+), 28 deletions(-)

--=20
Jani Nikula, Intel
