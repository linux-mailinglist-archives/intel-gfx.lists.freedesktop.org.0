Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FCE8FE5B5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EB810E90E;
	Thu,  6 Jun 2024 11:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTFkrKM7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EF210E90E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717674304; x=1749210304;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=5gv+H08d2uFqwRES4/j4MrstlPGLLAb2GMLVPW/P/bQ=;
 b=bTFkrKM7xOYFT/c8P178Vrt8SROp1hc5eAjsIxdK93Xm9gJ6AvP8+4TU
 Hgnj6eP+pBpNvlYHyF2/QNw86ErrTGC4ucey1KOUZucCFz2125Dx+cpXq
 qbHxif0BGeJcJEJeFcq2+fPcKCyjZ9cYoBMMZY7PlX/XElt1hR5z0Z7VG
 8ggVNE5FzNPoIyR/wrelYFBul3dIrYVWD7MkQNYnBPpeUfRckvuYrImfq
 lOZaWqWdHIPdXZORHq5sC6GfdfZBkWhyHNNLx24EdtyxPDAvlB2NzhVnq
 K41TCyYMcU486M8HHeqV0IToNEOg7A/AA228Qb/1TnBoYevZsfLFZSLkE w==;
X-CSE-ConnectionGUID: gMDPv8I7SceJBlvOjx7ujw==
X-CSE-MsgGUID: eDkxJx5hS6Owfu7LGifsow==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18126202"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18126202"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:45:04 -0700
X-CSE-ConnectionGUID: 9Fcxdnf4QIeUWLDbKLcVrw==
X-CSE-MsgGUID: URFRCJV2Tk26F7E3H0vbdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42876178"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:45:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/7] drm/i915: bdw+ pipe interrupt stuff
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jun 2024 14:44:59 +0300
Message-ID: <87plsu9txg.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Clean up the bdw+ pipe interrupt bits, and enable some new fault
> interrupts on tgl+ and mtl+.

Some clarifications needed on patch 6, but overall

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> Ville Syrj=C3=A4l=C3=A4 (7):
>   drm/i915: Use REG_BIT() for bdw+ pipe interrupts
>   drm/i915: Document bdw+ pipe interrupt bits
>   drm/i915: Sort bdw+ pipe interrupt bits
>   drm/i915: Extend GEN9_PIPE_PLANE_FLIP_DONE() to cover all universal
>     planes
>   drm/i915: Nuke the intermediate pipe fault bitmasks
>   drm/i915: Enable pipeDMC fault interrupts on tgl+
>   drm/i915: Enable plane/pipeDMC ATS fault interrupts on mtl
>
>  .../gpu/drm/i915/display/intel_display_irq.c  | 49 ++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h               | 80 ++++++++-----------
>  2 files changed, 79 insertions(+), 50 deletions(-)

--=20
Jani Nikula, Intel
