Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCC92CBC88
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 13:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E917C6EA0A;
	Wed,  2 Dec 2020 12:13:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057F96EA0A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 12:13:00 +0000 (UTC)
IronPort-SDR: ojPr+tj9eGmxuba1tSPNvE72VWmCWsgoiGUWcpEqER3mzDGf7fj3giG4yMRf8dXuRhV5n2C1cZ
 BKWzj96QyWFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="160774920"
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="160774920"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 04:12:59 -0800
IronPort-SDR: fVv2umKBudcBD6tQvL6ucvH/G28JgdjRdyIIHIhDp1zMnhmD8ebkCKdSM4JhZiiBKUi/tNdOoa
 CPYDBBBHJ0Kw==
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="481529225"
Received: from ldunne-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.85.165])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 04:12:57 -0800
Date: Wed, 2 Dec 2020 14:12:54 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X8eExozrccgxVc4Y@intel.intel>
References: <20201202112140.16759-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202112140.16759-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Spring clean debugfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Throw away all the debugfs entries that are not being actively used for
> debugging/developing IGT. Note that a couple of these are already and
> will remain available under the gt/
> 
> Files removed:
> 	i915_gem_fence_regs
> 	i915_gem_interrupt
> 	i915_ring_freq_table
> 	i915_context_status
> 	i915_llc
> 	i915_shrinker_info
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

And that's the statement :)

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
