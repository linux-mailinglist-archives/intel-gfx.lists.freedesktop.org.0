Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C117E782BE2
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3A410E089;
	Mon, 21 Aug 2023 14:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5742010E089
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692628276; x=1724164276;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+jcdKY4yQg5NfkexmmKkU6Duke36gnyiwyLmKYIRihU=;
 b=AWRNP8hpbaTaSRuy5lXEXz9EGvMLR8mY7xVmxmrh97TK2UREyrAcp8+H
 7d7HVpYBgDbLAqXBaqmCWa0Ga11WmJwmPe6+N6ZeTo6SvCgwjPTFXS0Kz
 xMBz3ll5fmO6f4skaP/i6HxOvboivdQlefXpIZ68D5TXIQomkzeQOhTJo
 78RU2aTSCDrKv4QOe/WfqPeMzC9y4hUg/OgmGrsPrrZGqdCFpRnh9rq2s
 z5vT3PBue7y+8ZBpYYDKic2eh+BdnlSVjTxGXsUZPJg81jeiNM+W8TeSJ
 dSeNKA/R6mqHo9sMqr/61pL1dgd4SGVcaQdeEOazXYIfRDUrq3LKiaP3A A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="372503733"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="372503733"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="825938134"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="825938134"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.180.108])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2023 07:24:41 -0700
Date: Mon, 21 Aug 2023 16:24:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZONzpi7mDeqZG6ag@ashyti-mobl2.lan>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-15-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230814200632.56105-15-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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

On Mon, Aug 14, 2023 at 01:06:37PM -0700, Matt Roper wrote:
> Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
> of these workarounds are actually tied to MTL as a platform; they only
> relate to the Xe_LPG graphics IP, regardless of what platform it appears
> in.  At the moment MTL is the only platform that uses Xe_LPG with IP
> versions 12.70 and 12.71, but we can't count on this being true in the
> future.  Switch these to use a new IS_GFX_GT_IP_STEP() macro instead
> that is purely based on IP version.  IS_GFX_GT_IP_STEP() is also
> GT-based rather than device-based, which will help prevent mistakes
> where we accidentally try to apply Xe_LPG graphics workarounds to the
> Xe_LPM+ media GT and vice-versa.
> 
> v2:
>  - Switch to a more generic and shorter IS_GT_IP_STEP macro that can be
>    used for both graphics and media IP (and any other kind of GTs that
>    show up in the future).
> v3:
>  - Switch back to long-form IS_GFX_GT_IP_STEP macro.  (Jani)
>  - Move macro to intel_gt.h.  (Andi)
> v4:
>  - Build IS_GFX_GT_IP_STEP on top of IS_GFX_GT_IP_RANGE and
>    IS_GRAPHICS_STEP building blocks and name the parameters from/until
>    rather than begin/fixed.  (Jani)
>  - Fix usage examples in comment.
> 
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
