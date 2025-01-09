Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F05A07852
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 14:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D2A10EDF0;
	Thu,  9 Jan 2025 13:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8uhqBvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB3010EDE9;
 Thu,  9 Jan 2025 13:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736431090; x=1767967090;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EJUHZnn6XLX4XoEdM53C4y2sJS+Yx4hHqVXxeyKgVS8=;
 b=H8uhqBvQfa4MhImMEXuPMoaTX7qMt+sQKwDuyBQf0IVXtFYfcV8SxnjI
 AvaFhqbK9UopzfaM4POc+rhob6GPh4AK1MCjT2PbBTTjWALSbR3SSqQGA
 J259TcshM33LW6lySYjjOe1KX2EbkYyG4GVQk8PVVZOTWTcsOe9ZIKiBF
 JNhfLXrqemLhSOGGAi5L+Bb5xYXJ/0Te/uGaTyWSr5klQwfJK348LS5Mp
 bPG+J25gjtFpUHYviajCn2yW7piRUgVUCZPWW+hGFRP5zGfHAXGBWnNrd
 Nad/mZO/xrebxuKAJoy2NXwBh+wpCuZbIXioTc+gL5ZfPNsb8IvcuAWIF A==;
X-CSE-ConnectionGUID: nLBOxE4gTeml/EuczdALjQ==
X-CSE-MsgGUID: ExfNsTG3SD+ap8jJTGOBPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="59160313"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="59160313"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 05:58:10 -0800
X-CSE-ConnectionGUID: NL48F9s4RUuta1KkjADmkQ==
X-CSE-MsgGUID: cuE50ck4SWOvFodIzuAx/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="108404541"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 05:58:07 -0800
Date: Thu, 9 Jan 2025 15:58:04 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/xe: remove unused xe_pciids.h harder, add missing
 PCI ID
Message-ID: <Z3_V7MHFINUqR6qs@black.fi.intel.com>
References: <20250109105032.2585416-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109105032.2585416-1-jani.nikula@intel.com>
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

On Thu, Jan 09, 2025 at 12:50:32PM +0200, Jani Nikula wrote:
> Commit 493454445c95 ("drm/xe: switch to common PCI ID macros") removed
> xe_pciids.h via drm-intel-next. In the mean time, commit ae78ec0a52c4
> ("drm/xe/ptl: Add another PTL PCI ID") added to xe_pciids.h via
> drm-xe-next.
> 
> The two commits were merged in commit 8f109f287fdc ("Merge drm/drm-next
> into drm-xe-next"), but xe_pciids.h wasn't removed, and the PCI ID
> wasn't added to pciids.h.
> 
> Remove xe_pciids.h, and add the PCI ID to pciids.h.

Unless there's a nuance intended in the subject

s/harder/header

Raag
