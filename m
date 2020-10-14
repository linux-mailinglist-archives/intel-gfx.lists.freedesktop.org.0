Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0DE28DF35
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2636EA3A;
	Wed, 14 Oct 2020 10:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534AC89C99;
 Wed, 14 Oct 2020 10:43:52 +0000 (UTC)
IronPort-SDR: aioUmkV2fbnmOy2poLXx2ahYWwegLlndTLzNqFTfuUMUmNd/a5B8Ep0+RYBDPCuqAB66VI6IB5
 y13x6a/LLwYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="165292129"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="165292129"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 03:43:51 -0700
IronPort-SDR: I3wigCh8INXyEwnd6iFHfQ+7fmly/lVlyWMFUG93vj+z3TCJKRHT/unpyOhHRY6v+3wy2kEI8J
 6blXKEU9bwfw==
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="463836993"
Received: from hvanhaar-mobl1.ger.corp.intel.com (HELO [10.252.4.86])
 ([10.252.4.86])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 03:43:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
 <20201014104038.2554985-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <27f4ac94-cf2e-f17d-e23f-29e6e976fd01@intel.com>
Date: Wed, 14 Oct 2020 11:43:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201014104038.2554985-3-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH i-g-t 03/10] i915/gen9_exec_parse: Check
 oversized batch with length==0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14/10/2020 11:40, Chris Wilson wrote:
> Include the implicit eb.batch_len=0 into the mix of various offsets and
> lengths.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
