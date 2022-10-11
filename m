Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB0A5FBDC1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 00:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1EA10E05F;
	Tue, 11 Oct 2022 22:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4358110E05F
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 22:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665526708; x=1697062708;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=a5t4TmMXRd4c556X0rkk52m9zWe4wKx3tKZ6H4SmNVg=;
 b=QZKFbySqIp1N2VGNsKjOlgY/Zb53eE2Iea61LG9s3RHWKhMy/5W4TJ5q
 uasxD6GnHF4+sYeATC2Q7dPRImS9OGZcgHF+gXZdXZN9wco7GiWJKfx64
 pLW/cpy1wz2XOJawDyfnSHYe5qgFWHN0shcgFzdkGWCNDdpwNZhFmqPjA
 aZ+AThHMfNjCJMh0cOyC84ocPAdfWm8vvbe2vAlFd9HX7kvdSg5nDvBfh
 69kLGpiRvN9xCSIHSHtgHosY2hrZ0gsTUpi4LZSJTBanfbJnwJNbbyv93
 e1J38u3XgNleLXEXioomnQBksVXmeldwzlf5xJNiS/+MhE1ZZyIsbwBdQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="390945358"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="390945358"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 15:18:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621565343"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="621565343"
Received: from mheksel-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.213.13.94])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 15:18:25 -0700
Date: Wed, 12 Oct 2022 00:18:22 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y0XrroTbf/YSlJP5@ashyti-mobl2.lan>
References: <20221006163200.2803722-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221006163200.2803722-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 0/4] Simplify uncore register updates
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Thu, Oct 06, 2022 at 06:31:56PM +0200, Andrzej Hajda wrote:
> This patchset should not modify behaviour of the code (except patch 3).
> It just replaces sequence of uncore read/modify/write with single call.
> Moreover it replaces nested pointers with alias if there is one.
> All patches except 3rd, were generated using coccinelle (quite ugly)
> and adjusted in some cases by hand.
> 
> v2:
> - addressed comments by Andi, Jani and lkp,
> - despite Jani objections Ive left 1st patch with hope he will change his mind,
>   if not it can be safely ignored :),
> - converted few more read/modifiy/write sequences in last patch,
> - style adjustements to make checkpatch happy.
> 
> Regards
> Andrzej
> 
> 
> Andrzej Hajda (4):
>   drm/i915/display: Use drm_device alias if defined
>   drm/i915/display: Use intel_uncore alias if defined
>   drm/i915: make intel_uncore_rmw() write unconditionally
>   drm/i915: use proper helper for register updates

Pushed in drm-intel-next

Thanks,
Andi

>  drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   3 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  13 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |   9 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 237 +++++++-----------
>  drivers/gpu/drm/i915/intel_pm.c               |  60 ++---
>  drivers/gpu/drm/i915/intel_uncore.h           |   8 +-
>  drivers/gpu/drm/i915/vlv_suspend.c            |  28 +--
>  12 files changed, 133 insertions(+), 237 deletions(-)
> 
> -- 
> 2.34.1
