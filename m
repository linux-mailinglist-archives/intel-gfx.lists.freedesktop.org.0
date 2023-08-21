Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EF1782B9D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB8B10E26F;
	Mon, 21 Aug 2023 14:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57C610E276
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692627763; x=1724163763;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kFdsvp9+3v2ngOp26VG/o5aBGAZWGosZvtHq9yeyU1Y=;
 b=bW04KO5luxP0Le/dPeJ3AVDoZFSM2FRQQpmwUe+KBFNXZ8zPQ7GlHMMx
 PtrQ4oDHl+3uv1O/4Q2gPOkFgQjF+8KUfYe4unyWqqGCR7605mhgolKjl
 nIuPxBR4I9cpFatly+F80mzC1Fsoy0aqIsS0GSKUi/0V5WDoyST/TkPo0
 d/zv0i11oN4A9MTThz4owwmWanh6E14uVkrS4dqDNgs5C2PLCZeFC6QeG
 t6curbUejsYvThN32HGBSjnDN10hB4huYVXhUQZN4nfDXxZ/wDoEGuwMq
 KZB3R1A4JUQv2iJ/90ubACSgxurQYs9ECWMDjePgHqz5KF8nGCV7Y6plt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404608257"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="404608257"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:22:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="909725825"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="909725825"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.180.108])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2023 07:22:40 -0700
Date: Mon, 21 Aug 2023 16:22:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZONzLqXzw8zF9KDU@ashyti-mobl2.lan>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-14-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230814200632.56105-14-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 3/9] drm/i915/xelpg: Call Xe_LPG
 workaround functions based on IP version
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Mon, Aug 14, 2023 at 01:06:36PM -0700, Matt Roper wrote:
> Although some of our Xe_LPG workarounds were already being applied based
> on IP version correctly, others were matching on MTL as a base platform,
> which is incorrect.  Although MTL is the only platform right now that
> uses Xe_LPG IP, this may not always be the case.  If a future platform
> re-uses this graphics IP, the same workarounds should be applied, even
> if it isn't a "MTL" platform.
> 
> We were also incorrectly applying Xe_LPG workarounds/tuning to the
> Xe_LPM+ media IP in one or two places; we should make sure that we don't
> try to apply graphics workarounds to the media GT and vice versa where
> they don't belong.  A new helper macro IS_GT_IP_RANGE() is added to help
> ensure this is handled properly -- it checks that the GT matches the IP
> type being tested as well as the IP version falling in the proper range.
> 
> Note that many of the stepping-based workarounds are still incorrectly
> checking for a MTL base platform; that will be remedied in a later
> patch.
> 
> v2:
>  - Rework macro into a slightly more generic IS_GT_IP_RANGE() that can
>    be used for either GFX or MEDIA checks.
> 
> v3:
>  - Switch back to separate macros for gfx and media.  (Jani)
>  - Move macro to intel_gt.h.  (Andi)
> 
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
