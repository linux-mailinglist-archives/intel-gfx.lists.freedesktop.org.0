Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05741BDFF9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 16:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D4D86ED6A;
	Wed, 29 Apr 2020 14:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B7C6EEA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 14:04:48 +0000 (UTC)
IronPort-SDR: Q/RnTihrkaiTMyEznREqtFN9ncPyD/zNUhPbRndpyqBdFLbHLGmzOWXyQF26JLfWsRi6rMV3T2
 LRKdaPCmbhAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 07:04:47 -0700
IronPort-SDR: SE2f6Txtq1iZn02sLHrtoUgjQlCr8E8HxVcZdIPDSOr4FAJbg0FCgI/4uaA5nuhcZKAUWuGo6U
 v0W9rushVC8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="405046929"
Received: from jncorcor-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.22.42])
 by orsmga004.jf.intel.com with ESMTP; 29 Apr 2020 07:04:44 -0700
Date: Wed, 29 Apr 2020 17:04:43 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200429140443.GC5168@intel.intel>
References: <20200429132425.GE815283@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429132425.GE815283@mwanda>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix error handling in
 __live_lrc_indirect_ctx_bb()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

On Wed, Apr 29, 2020 at 04:24:25PM +0300, Dan Carpenter wrote:
> If intel_context_create() fails then it leads to an error pointer
> dereference.  I shuffled things around to make error handling easier.
> 
> Fixes: 1dd47b54baea ("drm/i915: Add live selftests for indirect ctx batchbuffers")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
