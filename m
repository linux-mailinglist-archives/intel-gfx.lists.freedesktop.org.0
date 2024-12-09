Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E339E9089
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 11:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880D610E6BC;
	Mon,  9 Dec 2024 10:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iuEpJBu6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC0610E4BE;
 Mon,  9 Dec 2024 10:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733740758; x=1765276758;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zrOttzyjSgQKZvxSP2i+o4lzkjUqEZoJ03/qv6DjehU=;
 b=iuEpJBu65+e3t6pTLHiAzXsayqxeFhi5SKtrX2uq9kheMPYsQ/uYSPpO
 I4GSdqgtpxJBlX46Rlg94NBvk+zQhFbROmDjh2l9duFc0azkooFNzAzq8
 Ls79f5YgMt361qJAulaj2sz90L/aBmtwzDJwb+gsI1i/rmfbTF1nlFrHB
 eeviGXvoes3m4ylDI5XdXNsB2DnnCv3LrYd2QRD2apOHdKTrSEhE1kPM7
 kp+tA/QtYYebVHwnnSNP5pBtL6DAsHhllLvD+2mYlKuAn/62KSJ9DfPOC
 CkSLw2bY82fKwdfJfyuYt5QNXxyl0vKcpub89f+YPdBetdUPqqlAjDful g==;
X-CSE-ConnectionGUID: jIq4+QOxQNOqweDaU1XTnw==
X-CSE-MsgGUID: Ripj/XsGTsOeaMtJ6C9Asg==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="34175719"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="34175719"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 02:39:18 -0800
X-CSE-ConnectionGUID: 6gxKu/E8Qn2zvdv/Gwn2hA==
X-CSE-MsgGUID: IKTV3ZS3QXSl+bphycBD9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="99851275"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.194])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 02:39:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 0/5] drm/xe/display: Rework display init for reducing
 flickering.
In-Reply-To: <20241206185956.3290-1-dev@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241206185956.3290-1-dev@lankhorst.se>
Date: Mon, 09 Dec 2024 12:39:13 +0200
Message-ID: <871pyh16pa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 06 Dec 2024, Maarten Lankhorst <dev@lankhorst.se> wrote:
> I have rebased the previous series and took out the GuC parts. This makes it a lot easier to review missing parts,
> and not be dependent on GuC loading changes for merging.

I think all of the patches need more explanations in the commit
messages. Why are we doing this? Why is this okay? How does this work
with the plans to unify display code between i915 and xe, especially wrt
the init ordering and the expectations on irqs.

BR,
Jani.




>
> Maarten Lankhorst (5):
>   drm/xe/display: Add intel_plane_initial_vblank_wait
>   drm/xe: Remove double pageflip
>   drm/xe: Move suballocator init to after display init
>   drm/xe: Defer irq init until after xe_display_init_noaccel
>   drm/xe/display: Use a single early init call for display
>
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
>  .../drm/i915/display/intel_plane_initial.c    |  7 +-
>  .../drm/i915/display/intel_plane_initial.h    |  2 +
>  drivers/gpu/drm/xe/display/xe_display.c       | 71 +++++--------------
>  drivers/gpu/drm/xe/display/xe_display.h       |  8 +--
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 29 +++++---
>  drivers/gpu/drm/xe/xe_device.c                | 28 +++-----
>  drivers/gpu/drm/xe/xe_tile.c                  | 19 +++--
>  drivers/gpu/drm/xe/xe_tile.h                  |  1 +
>  9 files changed, 77 insertions(+), 94 deletions(-)

-- 
Jani Nikula, Intel
