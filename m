Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B51A0A76E
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2025 08:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8A710E225;
	Sun, 12 Jan 2025 07:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NS6u7U3K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9EF610E225
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Jan 2025 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736667263; x=1768203263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bGgSFidl/lKU5XkQJOj10D17tcEkehEQrOQ2Z3becX4=;
 b=NS6u7U3KMIINC9Ze/p0jR98F4+URRYdkbVYUsUJuzIS88CGMIOzAWt4k
 z0gCpogj5TYIIosv5vcJUyaBNLGoqh26At9CkVR2aBPcT+CHsR1RGn3RL
 KfLJt5b8l/IC+0vk8HqeDxcMDf0atP09x1BYalSJBOPgokaggGdRbJIoT
 R4ttz7sdsRM0tLWGgO4gnTcC2kY551BykIlLbjBooCVJt3kCSgGKAFBlA
 pxHoebtWV2VX81NMYyN9JLi3hm8ZKcVyRnPVFd0u8XTecdzjSxFGiZ1K0
 65Y2Ao6lraXegB0UJgPCxhzEuaXXNvxV3UPad0Mtku13w564IdHamduXT Q==;
X-CSE-ConnectionGUID: 2h8Xgf8hRi+Blqf+kdoqhA==
X-CSE-MsgGUID: uvA3NZOSS8ONxkV/bwzKEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11312"; a="47487059"
X-IronPort-AV: E=Sophos;i="6.12,308,1728975600"; d="scan'208";a="47487059"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2025 23:34:22 -0800
X-CSE-ConnectionGUID: uvL8czthQayMzQZZTBZefg==
X-CSE-MsgGUID: D3BPoX8DTVmTD6/HhNrIuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104010633"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2025 23:34:20 -0800
Date: Sun, 12 Jan 2025 09:34:17 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 andi.shyti@linux.intel.com, anshuman.gupta@intel.com
Subject: Re: [PATCH v1] drm/i915/selftest: Change throttle criteria for rps
Message-ID: <Z4NweSvVpJcn2_Zk@black.fi.intel.com>
References: <20250102110618.174415-1-raag.jadav@intel.com>
 <sog7fejryo3zpyp2ekqk7wffgc7tueoxvkyntun6i7bqae5a3w@ljnv62saynkn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <sog7fejryo3zpyp2ekqk7wffgc7tueoxvkyntun6i7bqae5a3w@ljnv62saynkn>
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

On Sat, Jan 11, 2025 at 09:41:47PM +0100, Andi Shyti wrote:
> Hi Raag,
> 
> On Thu, Jan 02, 2025 at 04:36:18PM +0530, Raag Jadav wrote:
> > Current live_rps_control() implementation errors out on throttling.
> > This was done with the assumption that throttling to minimum frequency
> > is a catastrophic failure, which is incorrect. Throttling can happen
> > due to variety of reasons and often times out of our control. Also,
> > the resulting frequency can be at any given point below the maximum
> > allowed. Change throttle criteria to reflect this logic and drop the
> > error, as it doesn't necessarily mean selftest failure.
> > 
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> 
> Reviewed and merged to drm-intel-gt-next.

Thank you.

Sorry I didn't pick your tag as I considered this a different patch.

Raag
