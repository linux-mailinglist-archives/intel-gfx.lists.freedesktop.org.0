Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4DE8C84ED
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 12:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 087FC10EE71;
	Fri, 17 May 2024 10:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMkssvp+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2051710E247
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 10:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715942087; x=1747478087;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XG8AIfHdx/6javik/iorVxOqFkWefga3pNHseAHUPis=;
 b=fMkssvp+K+9tri75KZ7PMnXhngEpGYfQg4xJnSEpXofsg+oxlIjUYZue
 q41U6YSbWwwoq9bJksA1jN59wHFjrMtZOBgUWmlu3wnzgJMVn0FXwD8Bj
 KTrsXNOLhF/J8o/JBjl8pikaUXapt52oFYvm5CWthZk/knOtSBZgFHzLI
 41fPN+0nmQu/pszKshnZ2IuenEPOhDuI7EqgD9KomDJLjQ3XVDr1gZvKr
 LsJGrP0RBbM+qa1f6G/oR/Ux/I9HAa011ntOUeZ4xXvFrOuyIW/kpJX0j
 NQ63/bNcgwoOzdV4S3GAfX3Wqyug4fU3qrWY9XreU1wWxMVGj7ePzHKI6 A==;
X-CSE-ConnectionGUID: EAwd2gTJRbSlDgqotxLz/w==
X-CSE-MsgGUID: qoPTVXSzQG6n9DUvMFfmjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12053964"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="12053964"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 03:34:46 -0700
X-CSE-ConnectionGUID: /+KtmxtBRH+DhikPnd20Vw==
X-CSE-MsgGUID: fDVxdghWRC+yGP/iT2VH9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="36655561"
Received: from bvivekan-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.247.118.196])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 03:34:40 -0700
Date: Fri, 17 May 2024 12:34:29 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, drm-devel@ashyti-mobl2.lan,
 Andi Shyti <andi.shyti@kernel.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, Gnattu OC <gnattuoc@me.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Jian Ye <jian.ye@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Fix CCS id's calculation for CCS mode setting
Message-ID: <ZkcytdBIXEbL3GcV@ashyti-mobl2.lan>
References: <20240517090616.242529-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517090616.242529-1-andi.shyti@linux.intel.com>
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

Hi,

On Fri, May 17, 2024 at 11:06:16AM +0200, Andi Shyti wrote:
> The whole point of the previous fixes has been to change the CCS
> hardware configuration to generate only one stream available to
> the compute users. We did this by changing the info.engine_mask
> that is set during device probe, reset during the detection of
> the fused engines, and finally reset again when choosing the CCS
> mode.
> 
> We can't use the engine_mask variable anymore, as with the
> current configuration, it imposes only one CCS no matter what the
> hardware configuration is.
> 
> Before changing the engine_mask for the third time, save it and
> use it for calculating the CCS mode.
> 
> After the previous changes, the user reported a performance drop
> to around 1/4. We have tested that the compute operations, with
> the current patch, have improved by the same factor.
> 
> Fixes: 6db31251bb26 ("drm/i915/gt: Enable only one CCS for compute workload")
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Cc: Gnattu OC <gnattuoc@me.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Tested-by: Jian Ye <jian.ye@intel.com>

of course:

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
