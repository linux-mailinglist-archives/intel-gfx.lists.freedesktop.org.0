Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37A68E1B9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 02:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921B56E87D;
	Thu, 15 Aug 2019 00:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com [216.228.121.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 304BF6E85E;
 Wed, 14 Aug 2019 21:53:45 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d5482f40000>; Wed, 14 Aug 2019 14:53:56 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 14 Aug 2019 14:53:45 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 14 Aug 2019 14:53:45 -0700
Received: from rcampbell-dev.nvidia.com (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 14 Aug
 2019 21:53:42 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, <linux-mm@kvack.org>
References: <20190806231548.25242-1-jgg@ziepe.ca>
 <20190806231548.25242-12-jgg@ziepe.ca>
X-Nvconfidentiality: public
From: Ralph Campbell <rcampbell@nvidia.com>
Message-ID: <84b35625-9877-0f35-155a-2d5ee1af4108@nvidia.com>
Date: Wed, 14 Aug 2019 14:53:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190806231548.25242-12-jgg@ziepe.ca>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
X-Mailman-Approved-At: Thu, 15 Aug 2019 00:14:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nvidia.com; s=n1; 
 t=1565819637; bh=jn8qPKX3vGj+tzC7jfWRezHMQaQX7LZbuyruFud4LQQ=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Uy/wbQbI/8gVkXaKmTTwv+BToKsSnHkL4fjJP55iQ/ZlkQP2OtlkImaIl2J3Y4W7G
 mB5itZ0n9QzGL6wQvneV7cnvmEuDvAXs9I8nM+lm5VeT2HrSfqUQKJITY6RoWiahKa
 KlifUf5odeun27zyI1aFM28N+eumN+LjAQ5n4zzu+jSP4hRjpJlBuL2H3dl6e7qf0/
 ZxwBA2TqKNkk93zu8c+eJXx39NWA0utEl726npSZNBRVr87LB025ymRNuncppsbyax
 BTLkxtEts5zZjuzAj/Ye2TuvmWZBrWXRaZRUvPRqPQZeDSM2p+eqQKmB2s8vjB4PN6
 TEzQIENXwNPKw==
Subject: Re: [Intel-gfx] [PATCH v3 hmm 11/11] mm/mmu_notifiers: remove
 unregister_no_release
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Dimitri Sivanich <sivanich@sgi.com>, Gavin Shan <shangw@linux.vnet.ibm.com>,
 Andrea Righi <andrea@betterlinux.com>, linux-rdma@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, "Kuehling, Felix" <Felix.Kuehling@amd.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 iommu@lists.linux-foundation.org, amd-gfx@lists.freedesktop.org,
 Jason Gunthorpe <jgg@mellanox.com>, Alex
 Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDgvNi8xOSA0OjE1IFBNLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4gRnJvbTogSmFzb24g
R3VudGhvcnBlIDxqZ2dAbWVsbGFub3guY29tPgo+IAo+IG1tdV9ub3RpZmllcl91bnJlZ2lzdGVy
X25vX3JlbGVhc2UoKSBhbmQgbW11X25vdGlmaWVyX2NhbGxfc3JjdSgpIG5vCj4gbG9uZ2VyIGhh
dmUgYW55IHVzZXJzLCB0aGV5IGhhdmUgYWxsIGJlZW4gY29udmVydGVkIHRvIHVzZQo+IG1tdV9u
b3RpZmllcl9wdXQoKS4KPiAKPiBTbyBkZWxldGUgdGhpcyBkaWZmaWN1bHQgdG8gdXNlIGludGVy
ZmFjZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BtZWxsYW5veC5j
b20+CgpSZXZpZXdlZC1ieTogUmFscGggQ2FtcGJlbGwgPHJjYW1wYmVsbEBudmlkaWEuY29tPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
