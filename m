Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E91A2D0ADE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 07:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118F76E566;
	Mon,  7 Dec 2020 06:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C52B66E566
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 06:46:56 +0000 (UTC)
IronPort-SDR: 5wdrVMjxY/7NxqGY0zpYuQKe5WVzrUE3UVgb1G0nVjzaNc5ayD1i9pfY7iGSIFhCmCwqd6aY67
 4xrXvJm9BqBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="152898030"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="152898030"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 22:46:56 -0800
IronPort-SDR: 4FH3/Y817ld6sm+54ad8aUJ+RAw5sbHDpwqTAM/MP0pI8maX3Aytstx5sdbZIFZ/+Z7xloG9ro
 fd9YOjOFvrjQ==
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="363003127"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 22:46:55 -0800
Date: Sun, 6 Dec 2020 22:46:55 -0800
From: Ira Weiny <ira.weiny@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201207064655.GK1563847@iweiny-DESK2.sc.intel.com>
References: <20201124060755.1405602-1-ira.weiny@intel.com>
 <20201124060755.1405602-4-ira.weiny@intel.com>
 <160648211578.10416.3269409785516897908@jlahtine-mobl.ger.corp.intel.com>
 <20201204160504.GH1563847@iweiny-DESK2.sc.intel.com>
 <878sad9p7f.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878sad9p7f.fsf@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.1 (2018-12-01)
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
Cc: Alexei Starovoitov <ast@kernel.org>, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, Kirti Wankhede <kwankhede@nvidia.com>,
 Christoph Hellwig <hch@infradead.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>,
 Chao Yu <yuchao0@huawei.com>, intel-gfx@lists.freedesktop.org,
 Josef Bacik <josef@toxicpanda.com>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Brian King <brking@us.ibm.com>, Al Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, Luis Chamberlain <mcgrof@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 11:33:08PM +0100, Thomas Gleixner wrote:
> On Fri, Dec 04 2020 at 08:05, Ira Weiny wrote:
> > So I think I'm going to submit the base patch to Andrew today (with some
> > cleanups per the comments in this thread).
> 
> Could you please base that on tip core/mm where the kmap_local() muck is
> and use kmap_local() right away?

Sure.  Would that mean it should go through you and not Andrew?

Ira

> 
> Thanks,
> 
>         tglx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
