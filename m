Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C2DA9076E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 17:13:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD3510E96D;
	Wed, 16 Apr 2025 15:13:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZjfXrHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1148A890D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 15:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744816381; x=1776352381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LXAWtBOmd7PXVoIQIVgd9O1CfkdPafGYIsv5NHJlXrI=;
 b=jZjfXrHve3n5JyouSfk8lfC+s/IEiToQBMaI2rl4CFAJREFRnqmbB77t
 Zk5sjXMrtTneM2lYFyxDnq4iNIH/7lgUuvmwUC977FN7qXu2iOXVKOtnK
 wralzd9OZAIBdSlOkKtv7wCXJoNaOLDVEJRvPP6KmzMDtK9OwFj74TIoU
 68+b99RXxqrg7umtVzuGfM8nj5d5xVUjoVu9iONYcJY5hZtPW96L8DLWH
 RQ9oiqe5ZnIpHgsVC6tW6dAPXeHZI7vSZjeiw2WzQmnII91dbCVSVSaNV
 i5MdsVMDkpe0GjhhF0fw77FdHsdswzsTSjGXKmlDc1Y27M0O1gwvklZvu Q==;
X-CSE-ConnectionGUID: Wd4fOQFjQ7GtwNJCcUHVhw==
X-CSE-MsgGUID: D7ljYNyjRWWFsn1lhyFZog==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46086067"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46086067"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 08:13:00 -0700
X-CSE-ConnectionGUID: o/3FLG8TQ7Ogge2bp+hrIg==
X-CSE-MsgGUID: P2m4ZEPQRams32HDEzWdVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="135681696"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 16 Apr 2025 08:12:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Apr 2025 18:12:57 +0300
Date: Wed, 16 Apr 2025 18:12:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 0/8] Enable/Disable DC balance along with VRR DSB
Message-ID: <Z__I-b-UQgS3log3@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
 <Z__HlFEmNYauSX2u@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z__HlFEmNYauSX2u@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Apr 16, 2025 at 06:07:00PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 16, 2025 at 11:57:29AM +0530, Mitul Golani wrote:
> > Control DC Balance Adjustment bit to accomodate changes along
> > with VRR DSB implementation.
> > 
> > Mitul Golani (8):
> >   drm/i915/vrr: Add DC balance registers
> >   drm/i915/dmc: Add pipe DMC DC balance registers
> >   drm/i915/vrr: Refactor vmin/vmax stuff
> >   drm/i915/vrr: Add functions to read out vmin/vmax stuff
> >   drm/i915: Extract vrr_vblank_start()
> >   drm/i915/vrr: Implement vblank evasion with DC balancing
> >   drm/i915/dsb: Add pipedmc dc balance enable/disable
> >   drm/i915/vrr: Pause DC balancing for DSB commits
> 
> Looks like you've messed up the authorship of most of these.

Thse in fact just look like what I had. Where is the stuff to
actually program the DC balance parameters?

> 
> > 
> >  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
> >  .../drm/i915/display/intel_display_types.h    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_dmc.c      |  16 ++
> >  drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h |  37 +++++
> >  drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +++-
> >  drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++++-
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 138 +++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
> >  drivers/gpu/drm/i915/display/intel_vrr_regs.h |  43 ++++++
> >  10 files changed, 284 insertions(+), 39 deletions(-)
> > 
> > -- 
> > 2.48.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
