Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669F92CF6C7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 23:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF3F6E220;
	Fri,  4 Dec 2020 22:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7006E220
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 22:33:11 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607121189;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YbRXY429jy10ThX2bWwmeNckWbunoi+DH/zVHNz4Hkg=;
 b=zZgk97fS/Cu1ayNQt8zCSx+RyGvBPt3BEbtm4/2J0+wYSt7qAt6S6lrIbTMFbW5zPvJAU1
 zR4xvxFeAx/SRlb7YupffZ8F6YfLtK8qQ8zNls/G+rvxmeqVtD770eJ0vGJ9mB8n0/b1JA
 Cdj9si6bqurOhG4SB5uF58outH8W5uvUm3+K95JPjhBxa13SygviLAmCHaYJeblezOyfLs
 N+J1GlhrZWDPMVMh28Jz8zrYUtKlIXwRHZFcNT+tvzdKkMPK2NnRAvUPb8d7vVedO7smUv
 28AQaFm92Jbtf4yp602X8ur9q7xCkWiNgVBSfABcaMLndKkOgSR0sNCxTTlxpg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607121189;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YbRXY429jy10ThX2bWwmeNckWbunoi+DH/zVHNz4Hkg=;
 b=upIBhyrHbsbvHciDx/4TpyV/LlhEy5Xqw9SdhaA99Phzx/iTH3SYoU7Xz2RPcQPNxHNKwU
 86WcyyOx8qiQaFAA==
To: Ira Weiny <ira.weiny@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
In-Reply-To: <20201204160504.GH1563847@iweiny-DESK2.sc.intel.com>
References: <20201124060755.1405602-1-ira.weiny@intel.com>
 <20201124060755.1405602-4-ira.weiny@intel.com>
 <160648211578.10416.3269409785516897908@jlahtine-mobl.ger.corp.intel.com>
 <20201204160504.GH1563847@iweiny-DESK2.sc.intel.com>
Date: Fri, 04 Dec 2020 23:33:08 +0100
Message-ID: <878sad9p7f.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/17] drivers/gpu: Convert to mem*_page()
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
Cc: Chao Yu <yuchao0@huawei.com>, Alexei Starovoitov <ast@kernel.org>,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Christoph Hellwig <hch@infradead.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Matthew Wilcox <willy@infradead.org>,
 Eric Biggers <ebiggers@kernel.org>, intel-gfx@lists.freedesktop.org,
 Josef Bacik <josef@toxicpanda.com>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Brian King <brking@us.ibm.com>, Al Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Dave Hansen <dave.hansen@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, Luis Chamberlain <mcgrof@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04 2020 at 08:05, Ira Weiny wrote:
> So I think I'm going to submit the base patch to Andrew today (with some
> cleanups per the comments in this thread).

Could you please base that on tip core/mm where the kmap_local() muck is
and use kmap_local() right away?

Thanks,

        tglx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
