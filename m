Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE83A1A206
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 11:41:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3174510E7CA;
	Thu, 23 Jan 2025 10:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atnth2Va";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DED10E7CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 10:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737628893; x=1769164893;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=HdRUYvg/t8WX8ekUXMmQQjw0VsSWEEEfKZ21QT7NBi0=;
 b=atnth2VammOsbRUCiFgKMgjahqVrrMp1nA9mJCRGWW31DMXljF9yOVeh
 DCgXPCpAhuTt0Oax12ppAyjD/FxrghzdfLp02rcnrwLECsNccZW241DkJ
 Y1If8rVWVQoQu3lqMoBIrzEhveAuX+a4tEN7rdFUWqh+r86GV/ptki9qk
 x5Fikki0XU5x6e6tuRsi0YPK5Tn6YGz1UsMhi9FafetCD6ct7Fv7BaEY0
 M0YtUobmY21/ZKUaiTv7ZJZzo5Av6pvAjm72lZoRCUmdnre95bQ+EIqOm
 RHuwSXRXfGNEiPbTtbh/CZeawRhzmqmbsWMG+JBykUZRGW5095kTclUvX w==;
X-CSE-ConnectionGUID: aCMX0vzVSPKxqffVZPJDUA==
X-CSE-MsgGUID: HNQ2Npc1RImk/TXK6ZOlpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="49111697"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="49111697"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 02:41:32 -0800
X-CSE-ConnectionGUID: 6FhdVfzwSIW24PdqpWXD5g==
X-CSE-MsgGUID: 54qvzx/aTnigvzUAlz0Wdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="107533178"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.204])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 02:41:30 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z4_H-1qhW1AjH_-m@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-4-nitin.r.gote@intel.com>
 <Z4_H-1qhW1AjH_-m@intel.com>
Subject: Re: [PATCH v4 3/8] drm/i915/gem: fix typos in i915/gem files
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: krzysztof.niemiec@intel.com, andi.shyti@intel.com,
 jani.nikula@linux.intel.com, intel-gfx@lists.freedesktop.org
To: Nitin Gote <nitin.r.gote@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Date: Thu, 23 Jan 2025 12:41:26 +0200
Message-ID: <173762888649.10294.11253060379071971587@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.12.dev7+g16b50e5f
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

Quoting Rodrigo Vivi (2025-01-21 18:14:51)
> On Mon, Jan 20, 2025 at 01:45:12PM +0530, Nitin Gote wrote:
> > Fix all typos in files under drm/i915/gem reported by codespell tool.
> >=20
> > v2: Codespell won't catch it, but it should be
> >     "user defined" and not "use defined". <Krzysztof Niemiec>
> >=20
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c        | 6 +++---
> >  drivers/gpu/drm/i915/gem/i915_gem_context_types.h  | 6 +++---
> >  drivers/gpu/drm/i915/gem/i915_gem_domain.c         | 2 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 4 ++--
> >  drivers/gpu/drm/i915/gem/i915_gem_region.c         | 2 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c       | 4 ++--
> >  drivers/gpu/drm/i915/gem/i915_gem_tiling.c         | 2 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c            | 2 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c       | 2 +-
>=20
> Joonas, Tvrtko, ack on taking this and the other gt related patch from th=
is
> series both in drm-intel-next?

That's fine by me. We can always cross-merge if there is an incoming
conflict, which is not expected at this rate of patches in -gt-next.

Regards, Joonas
