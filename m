Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6EA87561
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DCB6ED87;
	Fri,  9 Aug 2019 09:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D276E862;
 Fri,  2 Aug 2019 02:21:00 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id n9so29014201pgc.1;
 Thu, 01 Aug 2019 19:21:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/YV2nCBRUvj+JHalhe5VKLnhqnMLLZTxEiSQrNBGLQ=;
 b=GZxQEbcw/IjId+2nQGKxTXBkfuVR+sdguRrezJWhF8LU9idvFePuSGzCb/o73269s0
 FV0wuLH536oI63thAlcrMU2rS58KidQwJWdazMNlUYj6HHqFOlyzuK/J5HA15tanuchy
 vCG6TJwVj3fVQc95e/wSpERpfrKbcrMhiDgBDZdblnujQnG/c4M7nhOn7LbIE+oguO9g
 fIlPVFQEYGkBh317bC3Tj+WBXP5122GmDOUSjqluAmlGrwQAog5xA6B1Qt/NCWXoacIc
 gaDVciVtrojrI3CK+BNIxJde6ELFcb/zCkGuKkSApOsPUtq2yvn6ayV6hRgiacmhFLxs
 Zzlw==
X-Gm-Message-State: APjAAAUyTdP7PfNK6HTOmtf1s/tFFFzpmKRKhDz9S4/lEv1I2/YIbNyB
 +5nuH5X3H2DP1tRAexhZMdY=
X-Google-Smtp-Source: APXvYqwGNmSeCqbGUwEK1nMIVRCwdEn4NOX6aNf7I9lvnteHEiZ+Pa2UbMiy7LcaaaYIQGQbOjX2Vg==
X-Received: by 2002:a17:90a:3086:: with SMTP id
 h6mr1977670pjb.14.1564712460540; 
 Thu, 01 Aug 2019 19:21:00 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:21:00 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu,  1 Aug 2019 19:20:02 -0700
Message-Id: <20190802022005.5117-32-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/YV2nCBRUvj+JHalhe5VKLnhqnMLLZTxEiSQrNBGLQ=;
 b=LoaCL2H2RUJBCIOglYnaArkmIVWTYlGIsKjGOYisZuAUApfhu5gEmc6qkNjj0+H7tu
 P+8Dh9t16ihvD6gplnd7Tc9AK6ZGCZeLjxm8tt5yZaZLJjevhgAQKR5u0bAClFOVBiw3
 mudk+AK8dwI6nYLVBSSjbYQjnEo/x77kPGPgsQFzLk0mY0MTwpLYueBrrkls4g4lNcFE
 23WeAWQvuXbP3ljk10sU7SrPFsFGjeRWLbXNTJO4ixgqQlxC9gc1Tv3tUxDQgjI0BYi3
 8BhTJVYtfR/r0jUz//rNUXMcepW6CTlPDrLR0cTlbj3o8jhk3sRuBiigNZ2CjgqdDsZo
 Ctuw==
Subject: [Intel-gfx] [PATCH 31/34] nfs: convert put_page() to
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
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogVHJvbmQg
TXlrbGVidXN0IDx0cm9uZC5teWtsZWJ1c3RAaGFtbWVyc3BhY2UuY29tPgpDYzogQW5uYSBTY2h1
bWFrZXIgPGFubmEuc2NodW1ha2VyQG5ldGFwcC5jb20+CkNjOiBsaW51eC1uZnNAdmdlci5rZXJu
ZWwub3JnClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4K
LS0tCiBmcy9uZnMvZGlyZWN0LmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9uZnMvZGlyZWN0LmMgYi9mcy9u
ZnMvZGlyZWN0LmMKaW5kZXggMGNiNDQyNDA2MTY4Li5iMDBiODlkZGEzYzUgMTAwNjQ0Ci0tLSBh
L2ZzL25mcy9kaXJlY3QuYworKysgYi9mcy9uZnMvZGlyZWN0LmMKQEAgLTI3OCw5ICsyNzgsNyBA
QCBzc2l6ZV90IG5mc19kaXJlY3RfSU8oc3RydWN0IGtpb2NiICppb2NiLCBzdHJ1Y3QgaW92X2l0
ZXIgKml0ZXIpCiAKIHN0YXRpYyB2b2lkIG5mc19kaXJlY3RfcmVsZWFzZV9wYWdlcyhzdHJ1Y3Qg
cGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBpbnQgbnBhZ2VzKQogewotCXVuc2lnbmVkIGludCBpOwot
CWZvciAoaSA9IDA7IGkgPCBucGFnZXM7IGkrKykKLQkJcHV0X3BhZ2UocGFnZXNbaV0pOworCXB1
dF91c2VyX3BhZ2VzKHBhZ2VzLCBucGFnZXMpOwogfQogCiB2b2lkIG5mc19pbml0X2NpbmZvX2Zy
b21fZHJlcShzdHJ1Y3QgbmZzX2NvbW1pdF9pbmZvICpjaW5mbywKLS0gCjIuMjIuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
