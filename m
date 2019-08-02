Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3822787511
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56A36ED82;
	Fri,  9 Aug 2019 09:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com [216.228.121.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2056EF50;
 Fri,  2 Aug 2019 18:52:53 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d44868e0000>; Fri, 02 Aug 2019 11:53:02 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 02 Aug 2019 11:52:53 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 02 Aug 2019 11:52:53 -0700
Received: from [10.2.171.217] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 18:52:52 +0000
To: Jens Wiklander <jens.wiklander@linaro.org>, <john.hubbard@gmail.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-17-jhubbard@nvidia.com>
 <CAHUa44G++iiwU62jj7QH=V3sr4z26sf007xrwWLPw6AAeMLAEw@mail.gmail.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <23cc9ac3-4b03-9187-aae6-d64ba8cfca00@nvidia.com>
Date: Fri, 2 Aug 2019 11:51:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHUa44G++iiwU62jj7QH=V3sr4z26sf007xrwWLPw6AAeMLAEw@mail.gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nvidia.com; s=n1; 
 t=1564771982; bh=CFAZPyZ9nyhPuztKsk/cdMMUIvZ+gPTM3kJiO5Miqjw=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=ot3YKf5tvKuqvfXnHFOaqaBQdxJLPGhqZRpe5CvAqHZLCjzw07N/807rN30ol1bdm
 nSwbs6gHuJ0OhztqkvSHwPR2slPtTDH8B6O0PTm5jeGujoQh8m+xI16KJQgg3RcoMR
 UmCB87Ti9N/9lxRub68goKft4A4cSSIx2dfCYEbKRo3lQGuFQW16SKp/EWIKLGs/zO
 EK17YqQ1lGvgW/45aW7/Z5pzy0Gf5VysXOYCi076on7MtH51Ov9Uy2W59ssEl2aP4N
 G3YJtwUCv04lDB6y7cBERLsZUR9V90J5rUhO14bUw0xWFxWN4jqCBXztLnN9RVkDQG
 l2CwayAFuEHwg==
Subject: Re: [Intel-gfx] [PATCH 16/34] drivers/tee: convert put_page() to
 put_user_page*()
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, "open
 list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gOC8xLzE5IDExOjI5IFBNLCBKZW5zIFdpa2xhbmRlciB3cm90ZToKPiBPbiBGcmksIEF1ZyAy
LCAyMDE5IGF0IDQ6MjAgQU0gPGpvaG4uaHViYmFyZEBnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBG
cm9tOiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+Cj4+Cj4+IEZvciBwYWdlcyB0
aGF0IHdlcmUgcmV0YWluZWQgdmlhIGdldF91c2VyX3BhZ2VzKigpLCByZWxlYXNlIHRob3NlIHBh
Z2VzCj4+IHZpYSB0aGUgbmV3IHB1dF91c2VyX3BhZ2UqKCkgcm91dGluZXMsIGluc3RlYWQgb2Yg
dmlhIHB1dF9wYWdlKCkgb3IKPj4gcmVsZWFzZV9wYWdlcygpLgo+Pgo+PiBUaGlzIGlzIHBhcnQg
YSB0cmVlLXdpZGUgY29udmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2Nh
MmQKPj4gKCJtbTogaW50cm9kdWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNp
b25zIikuCj4+Cj4+IENjOiBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9y
Zz4KPj4gU2lnbmVkLW9mZi1ieTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgo+
PiAtLS0KPj4gICBkcml2ZXJzL3RlZS90ZWVfc2htLmMgfCAxMCArKy0tLS0tLS0tCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBBY2tlZC1i
eTogSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+Cj4gCj4gSSBzdXBw
b3NlIHlvdSdyZSB0YWtpbmcgdGhpcyB2aWEgeW91ciBvd24gdHJlZSBvciBzdWNoLgo+IAoKSGkg
SmVucywKClRoYW5rcyBmb3IgdGhlIEFDSyEgSSdtIGV4cGVjdGluZyB0aGF0IEFuZHJldyB3aWxs
IHRha2UgdGhpcyB0aHJvdWdoIGhpcwotbW0gdHJlZSwgdW5sZXNzIGhlIHBvcHMgdXAgYW5kIHNh
eXMgb3RoZXJ3aXNlLgoKdGhhbmtzLAotLSAKSm9obiBIdWJiYXJkCk5WSURJQQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
