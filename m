Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0404292611
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 12:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0448E6E910;
	Mon, 19 Oct 2020 10:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED69C6E910
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 10:51:26 +0000 (UTC)
IronPort-SDR: YAoUF8a0iGwwepM9ud3KaEOBHYOpv4kbABtv0u5QV0gzvr6EmZGL9mbhJNzm9+i3V5udDXzV9Y
 k3mcTlTPFHYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="146300410"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="146300410"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 03:51:26 -0700
IronPort-SDR: qfFsVKnugRwMJPnqkibzqd/uTbLM0ImkAM//crNi4LLp7tgwIb3HwudcPbfPOlMxG2hQPwucXa
 y754n/IAx1WA==
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="465482012"
Received: from maciejho-mobl.ger.corp.intel.com (HELO [10.252.17.157])
 ([10.252.17.157])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 03:51:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201019083444.1286-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <d0c62faa-78d7-6ce0-fa04-776f752f281c@intel.com>
Date: Mon, 19 Oct 2020 11:51:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201019083444.1286-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Onion unwind for scratch page
 allocation failure
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

On 19/10/2020 09:34, Chris Wilson wrote:
> In switching to using objects for our ppGTT scratch pages, care was not
> taken to avoid trying to unref NULL objects on failure. And for gen6
> ppGTT, it appears we forgot entirely to unwind after a partial allocation
> failure.
> 
> Fixes: 89351925a477 ("drm/i915/gt: Switch to object allocations for page directories")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
