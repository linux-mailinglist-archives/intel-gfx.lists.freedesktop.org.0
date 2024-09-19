Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C40897C995
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C6B10E6E3;
	Thu, 19 Sep 2024 12:57:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l19TE3Kc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6382210E6D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726750647; x=1758286647;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TE4zZVPvnqFphIyHlboaxRJReo/8H/OoOxRJCcFgDrA=;
 b=l19TE3KczLqRVGZN+zusrrS5KRiTvCOuxM9rCNAifS4h6tozPKvqjoCw
 JWhL/ZMT2MxuxkwqWpcLQFk2Erm1TABr1tHW9SG7xl5401qBc6ajhjaPA
 ErYCjDGGerOpWGrkNiFtGDAwzyTWZC+CP72xbeSv8aHxPxjn1qEZxDSm8
 k3wWhu4A7QbVNxxV4g8d282amKde384yG+xmGgsl4jxDAc0FrfsiNw0SA
 U/5ufQ7WiT81XNELlF4Sq1q2yW4FsMERFJ78mdtuUumCtDeX17ufMz/Wn
 rDPraO4aOkhoHMUThOFHKoxD3DtvoVPmYgiVUGEnheh0UA0G0yPXB8NCX Q==;
X-CSE-ConnectionGUID: U4iLRDPNRPmoGmVa3qOC4A==
X-CSE-MsgGUID: v+m+q0wZSZiMR32upR8kKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36297101"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="36297101"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:57:27 -0700
X-CSE-ConnectionGUID: 6nmpKEbhREO06iSw4y9WVg==
X-CSE-MsgGUID: uj4+sHvmSQGFmfG/pYYnbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69514628"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:57:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: add i9xx_display_irq_reset()
In-Reply-To: <ZuhcJPu8U5z-dlnl@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240916134720.501725-1-jani.nikula@intel.com>
 <ZuhcJPu8U5z-dlnl@intel.com>
Date: Thu, 19 Sep 2024 15:57:23 +0300
Message-ID: <871q1fajik.fsf@intel.com>
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

On Mon, 16 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Sep 16, 2024 at 04:47:20PM +0300, Jani Nikula wrote:
>> Add common i9xx_display_irq_reset() for display 2-4. The check for
>> I915_HAS_HOTPLUG() covers all the alternatives.
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, merged a couple of days ago already.

BR,
Jani.


-- 
Jani Nikula, Intel
