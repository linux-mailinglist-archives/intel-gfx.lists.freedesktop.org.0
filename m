Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 445B01C750C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 17:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B40C6E852;
	Wed,  6 May 2020 15:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5136E852
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 15:36:51 +0000 (UTC)
IronPort-SDR: CpKuU/LmWRXWJyx1+P1vtcn777RIwJKvCc43dopq9pGVt5F2P3MXpYDeHtZkIGD3uq6VLyUbzt
 znLN1CTikHyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 08:36:50 -0700
IronPort-SDR: e8sTAAHPF7ZnxWSsQcghe6b6LmAQHExcorLTnUY/K7jve6/8saI1yXsIzwkWLY1STGXJ31Uz6/
 iUFZGAuBPaEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="251230996"
Received: from avolk-mobl.ger.corp.intel.com (HELO [10.251.165.157])
 ([10.251.165.157])
 by fmsmga008.fm.intel.com with ESMTP; 06 May 2020 08:36:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200505215214.9690-1-chris@chris-wilson.co.uk>
 <20200505215214.9690-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <e9e6dc95-72b2-2d06-fdd4-4c039ae4fdd5@intel.com>
Date: Wed, 6 May 2020 16:36:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505215214.9690-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915: Propagate error from
 completed fences
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

On 05/05/2020 22:52, Chris Wilson wrote:
> We need to preserve fatal errors from fences that are being terminated
> as we hook them up.
> 
> Fixes: ef4688497512 ("drm/i915: Propagate fence errors")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
