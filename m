Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD1E3A33AC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 21:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122066E15F;
	Thu, 10 Jun 2021 19:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FE26E15F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 19:02:51 +0000 (UTC)
IronPort-SDR: xpLRjbQiFijCb/rsGTzm80SyN93C2arKRvCuGMcWyrBv5NaVQHvMFeDGN2kjygIlSxXhDCq8W+
 qxMWQ8Ja2z6A==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="192690119"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="192690119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 12:02:42 -0700
IronPort-SDR: L8iHdgFcEytNAYchxwLIplFlCn66XnDMtHFE4/VHd06j7+UCia5VD+2evAsUmZFBxYC5bLIGU6
 ERGriEupR/WQ==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486298388"
Received: from smirnov2-mobl.ccr.corp.intel.com (HELO [10.249.254.160])
 ([10.249.254.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 12:02:41 -0700
To: Matthew Auld <matthew.auld@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c9ea7221-cc54-3394-f664-3f819ecc6d06@linux.intel.com>
Date: Thu, 10 Jun 2021 21:02:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-gfx] Strange hugepages result?
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

Hi, Matthew!

I got a funny result from the hugepages selftest when trying to break 
out some functionality from shmem to make a ttm page pool for 
cached-only TTM system bos.

It turns out that shmem computed the pagesizes using the underlying 
pages rather than the dma segments, so when I changed that, hugepages 
started failing.

https://patchwork.freedesktop.org/series/91227/

But when hacking the page-size computation to use the underlying pages, 
it's fine again

https://patchwork.freedesktop.org/series/91336/

It seems like some assumption about huge dma segments is wrong, either 
in our page-size calculation, in the selftest or in the actual huge page 
setup. Could it be that huge sized segments are assumed to be properly 
aligned?

/Thomas



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
