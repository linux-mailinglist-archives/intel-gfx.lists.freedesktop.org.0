Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D58A78522
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 01:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F28A10E099;
	Tue,  1 Apr 2025 23:13:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwyrHQqa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E7D10E099
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 23:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743549233; x=1775085233;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=d7FKJIWSPnUFbOLMp9eByP0D+uD/TvJurbFJi56Eykc=;
 b=lwyrHQqaj+V8/sLU1vZH0bR822IatSDC1uLiuLKka0/3G40gg60uKO2I
 FWflOzbK2GzvsX0RImqJoNb/PHD5eDW7aH76oUv4yUZuE8gEyOwaejSc9
 ZT1jh6AGFwbNkHAIli96IgCm4KJsAz8vLZZQNRzQNHzLFDHTvwIl6CkiQ
 nn7O/WjBpmlZtTKqJsNOncip6nq2uGGuectjCoFVmnN9G1N5MK8y8k7BG
 ZVZDYzRrHFB1+aOVo9b2GZCy9Hc2jCrlP0H3J+Mye2YXTfo1sas0+AXSW
 4UsTd0vR/wpAoCUe1koqyL1P+KektvzmlBkjclu9pR/WPUkyap7Mt4+O7 w==;
X-CSE-ConnectionGUID: rMPWhqAeQMuYZr8wlIOvIg==
X-CSE-MsgGUID: CelEduGbQkOQG3V5F0kQUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="56260963"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="56260963"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:13:52 -0700
X-CSE-ConnectionGUID: cO9dKsswSJ2JTiXrZuWOUg==
X-CSE-MsgGUID: Tlb3YrxjTrqP4kuWNrIt4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131717226"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.184])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:13:50 -0700
Date: Wed, 2 Apr 2025 01:13:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
Message-ID: <Z-xzLIqdjhU3RVOA@ashyti-mobl2.lan>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
 <20250401163752.6412-4-ville.syrjala@linux.intel.com>
 <Z-wjk-9ZVEpBVw0G@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z-wjk-9ZVEpBVw0G@ashyti-mobl2.lan>
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

Hi Ville,

> >  		if (i915_gem_context_is_recoverable(eb->gem_context) &&
> > -		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
> > +		    GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
> 
> How is this is more relaxed than the old version?

nevermind...

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
