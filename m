Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611BC300033
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 11:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57BE689D73;
	Fri, 22 Jan 2021 10:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F057489D73
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 10:27:25 +0000 (UTC)
IronPort-SDR: kdRlo2Zx1hJyfDjKx10A/FMYB32sFaa/SJ0WMA64qmDTfzdP25bcVaSWmO87AdMFdLBBHMVTnX
 bBAU9XjrIgiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="198181325"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="198181325"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 02:27:25 -0800
IronPort-SDR: 6+8wOWlJjWzNUVVhTOUYuI38TGBXhAas0+Za4mtWanSQzB1g0m67iO7llQHlIS0kl0o2Mv+T4B
 aytBJxwYsLwQ==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385711041"
Received: from lcfenner-mobl1.ger.corp.intel.com (HELO [10.252.20.148])
 ([10.252.20.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 02:27:23 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210121232807.16618-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <5b188fea-2417-fa6a-7a8c-c2d240b359f7@intel.com>
Date: Fri, 22 Jan 2021 10:27:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210121232807.16618-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Always flush the active worker
 before returning from the wait
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/01/2021 23:28, Chris Wilson wrote:
> The first thing the active retirement worker does is decrement the
> i915_active count.
> 
> The first thing we do during i915_active_wait is try to increment the
> i915_active count, but only if already active [non-zero].
> 
> The wait may see that the retirement is already started and so marked the
> i915_active as idle, and skip waiting for the retirement handler.
> However, the caller of i915_active_wait may immediately free the
> i915_active upon returning (e.g. i915_vma_destroy) so we must not return
> before the concurrent access from the worker are completed. We must
> always flush the worker.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2473
> Fixes: 274cbf20fd10 ("drm/i915: Push the i915_active.retire into a worker")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
