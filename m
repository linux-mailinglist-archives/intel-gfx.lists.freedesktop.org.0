Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C651CA596FA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 15:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D751110E466;
	Mon, 10 Mar 2025 14:02:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b="kio8/h+n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out30-119.freemail.mail.aliyun.com
 (out30-119.freemail.mail.aliyun.com [115.124.30.119])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058AC10E20A
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Mar 2025 05:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1741412381; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
 bh=HTIcER/dyIswpMrv6blznZFW77d+UzEIvHyZ7/F+fAM=;
 b=kio8/h+n58JbwZ8JAZilQb+q7myuB0deRRUB+3AGR6DKh9+Y9pKeBpk3iTM95W+lozks3hsUymtaBgcfU+NJOdTWkXE1m62ZjFjDO8HFdlBFz7cWCN6VE7kmeOQ3YVyhxM+7t5TS22dfBHH5xPAofQPA7mAMDj5UGghc1BAjW7k=
Received: from 30.221.80.100(mailfrom:baolin.wang@linux.alibaba.com
 fp:SMTPD_---0WQu4qrn_1741412069 cluster:ay36) by smtp.aliyun-inc.com;
 Sat, 08 Mar 2025 13:34:30 +0800
Message-ID: <315f4426-0ed0-4ce6-8b12-ca4e79ee00ee@linux.alibaba.com>
Date: Sat, 8 Mar 2025 13:34:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] mm: Remove swap_writepage() and shmem_writepage()
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
Cc: linux-mm@kvack.org, intel-gfx@lists.freedesktop.org
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-11-willy@infradead.org>
From: Baolin Wang <baolin.wang@linux.alibaba.com>
In-Reply-To: <20250307135414.2987755-11-willy@infradead.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 10 Mar 2025 14:02:27 +0000
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



On 2025/3/7 21:54, Matthew Wilcox (Oracle) wrote:
> Call swap_writeout() and shmem_writeout() from pageout() instead.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

I tested shmem swap-out and swap-in with your patch set, and works well. 
So feel free to add:
Reviewed-by: Baolin Wang <baolin.wang@linux.alibaba.com>
Tested-by: Baolin Wang <baolin.wang@linux.alibaba.com>
