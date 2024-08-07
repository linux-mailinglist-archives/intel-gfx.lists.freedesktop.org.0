Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE7E94EEF7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 15:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D88B10E224;
	Mon, 12 Aug 2024 13:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 50D4510E0E5
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 07:38:30 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FBB2FEC;
 Wed,  7 Aug 2024 00:38:55 -0700 (PDT)
Received: from [10.57.81.112] (unknown [10.57.81.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 687A53F5A1;
 Wed,  7 Aug 2024 00:38:25 -0700 (PDT)
Message-ID: <e693ed7a-97bf-486b-84fb-f57e44a399b4@arm.com>
Date: Wed, 7 Aug 2024 08:38:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [linux-next:master] [fs] cdc4ad36a8:
 kernel_BUG_at_include/linux/page-flags.h
Content-Language: en-GB
To: Matthew Wilcox <willy@infradead.org>,
 kernel test robot <oliver.sang@intel.com>,
 Christian Brauner <brauner@kernel.org>
Cc: oe-lkp@lists.linux.dev, lkp@intel.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-bcachefs@vger.kernel.org,
 ceph-devel@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-mtd@lists.infradead.org,
 jfs-discussion@lists.sourceforge.net, linux-nfs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, ntfs3@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-karma-devel@lists.sourceforge.net,
 devel@lists.orangefs.org, reiserfs-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <202408062249.2194d51b-lkp@intel.com>
 <ZrLuBz1eBdgFzIyC@casper.infradead.org>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <ZrLuBz1eBdgFzIyC@casper.infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Aug 2024 13:57:02 +0000
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

On 07/08/2024 04:46, Matthew Wilcox wrote:
> On Tue, Aug 06, 2024 at 10:26:17PM +0800, kernel test robot wrote:
>> kernel test robot noticed "kernel_BUG_at_include/linux/page-flags.h" on:
>>
>> commit: cdc4ad36a871b7ac43fcc6b2891058d332ce60ce ("fs: Convert aops->write_begin to take a folio")
>> https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git master
>>
>> [test failed on linux-next/master 1e391b34f6aa043c7afa40a2103163a0ef06d179]
>>
>> in testcase: boot
> 
> This patch should fix it.
> 
> Christian, can you squash the fix in?
> 
> 
> diff --git a/mm/shmem.c b/mm/shmem.c
> index 7d28304aea0f..66ff87417090 100644
> --- a/mm/shmem.c
> +++ b/mm/shmem.c
> @@ -2904,7 +2904,8 @@ shmem_write_begin(struct file *file, struct address_space *mapping,
>  	if (ret)
>  		return ret;
>  
> -	if (folio_test_has_hwpoisoned(folio)) {
> +	if (folio_test_hwpoison(folio) ||
> +	    (folio_test_large(folio) && folio_test_has_hwpoisoned(folio))) {

Reviewed-by: Ryan Roberts <ryan.roberts@arm.com>
Tested-by: Ryan Roberts <ryan.roberts@arm.com>


>  		folio_unlock(folio);
>  		folio_put(folio);
>  		return -EIO;

