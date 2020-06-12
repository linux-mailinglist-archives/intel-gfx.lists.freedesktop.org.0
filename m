Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1991F75A6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 11:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1528B6E876;
	Fri, 12 Jun 2020 09:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD7E6E876
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:04:57 +0000 (UTC)
IronPort-SDR: M54z84rlwr06hHTt328CAQ+mikx7QexRUsS365JW2FGOZ7HIUsS74RDlpx2m8VV9IsKt2Oa7AP
 A4FIb29s4MXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 02:04:57 -0700
IronPort-SDR: +S/fK5gwkjwzXgR5/PYIQfEPav5q6zFMX9u9VDOHwu2Zt220HvefIVMalcgisz47UNm5SjY6QK
 o0ex0LTVfgaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,502,1583222400"; d="scan'208";a="419404989"
Received: from mbrescia-mobl.ger.corp.intel.com (HELO [10.252.48.93])
 ([10.252.48.93])
 by orsmga004.jf.intel.com with ESMTP; 12 Jun 2020 02:04:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200611180421.23262-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <2d5c000f-f35d-d095-93af-0f8e0f39f745@intel.com>
Date: Fri, 12 Jun 2020 10:04:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611180421.23262-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Leave vma intact as they are
 discarded
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/06/2020 19:04, Chris Wilson wrote:
> If we find ourselves trying to reuse a misplaced but active vma, we
> currently try to discard it to avoid having to wait to unbind it
> (upsetting the current user fo the vma). An alternative to marking it as
> a dicarded vma and keeping it in both the obj->vma.list and
> obj->vma.tree, is to simply remove it from the lookup rbtree.
> 
> While it remains in the list of vma, it will be unbound under eviction
> pressure and freed along with the object. We will never reuse it again
> for new instances. As before, with no pruning, the list may continually
> grow, but eventually we will have the most constrained version of the
> ggtt view that meets all requirements -- so the list of vma should not
> grow without bound.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2012
> Fixes: 9bdcaa5e3a2f ("drm/i915: Discard a misplaced GGTT vma")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>

Seems much simpler,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
