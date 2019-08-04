Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D83DA87518
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF63D6ED75;
	Fri,  9 Aug 2019 09:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com
 [IPv6:2607:f8b0:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526FE88A27;
 Sun,  4 Aug 2019 22:50:07 +0000 (UTC)
Received: by mail-pl1-x644.google.com with SMTP id c2so35655556plz.13;
 Sun, 04 Aug 2019 15:50:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4iYkOl3aeyTERThJenFq1/3UwJx4Onl0nTT+k7YLDaI=;
 b=k+s8Ylg0CB5ldSZ+tJIdeZwwArppYWTNPteLOJCTNVnuCqW3UWgkV/zgKlgrGn6Ntd
 ijsibU+/OIgz0weTC8LK3MU3bCyRzSCM7C3PoKLqV1ZZDCBDRE0b4ty/TgYesW3ACM2m
 ijoDGMTzCSRnw24Jcs2ZOe8OfeSuE4I+TK9zF3tm79kRhgQvlc7GqaWuaYajMQNuNeB6
 I4e9dMHmrXU9vc92NFFMFDSoHs9Ama/lj87UvFuqzR+epQngdH09+Z59ISGpJm29CON3
 Y7EUGf4W2FNu5QYnQ3dsGDmArN69yU4T7kEPqsrJ7mizto+KunzJoqypXGvhW2PfwXf7
 nCbw==
X-Gm-Message-State: APjAAAXavtrS8XIYeoqSf2gXx9ZwmyaXUtLUOUDoP8ozDMA1JcyEerak
 k0QSQhfrH1961XrXlpDVE8A=
X-Google-Smtp-Source: APXvYqxMhyr2kFbHr1O04Zbn2AO0Z+HHRdZeT7lsPwl/97dZ/e7++C1RY1spQOQBhYkgPZq+HBfy0Q==
X-Received: by 2002:a17:902:20e9:: with SMTP id
 v38mr45178412plg.62.1564959007040; 
 Sun, 04 Aug 2019 15:50:07 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:06 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Sun,  4 Aug 2019 15:49:11 -0700
Message-Id: <20190804224915.28669-31-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4iYkOl3aeyTERThJenFq1/3UwJx4Onl0nTT+k7YLDaI=;
 b=amp4rnRki7aZFblJwd+WR3AEEzT5jM0SqyuAgEV5CpAXAAopEM+ITm1VpHO/SXfmvR
 bo3NeFkBoHD+nAtlrBJ99G13P743PgNgDEkm2beH5ytNMeAvvksIb5/nFkswd7I26BcB
 Cu1H5Ec5GdgS9K1iSW46QqjiHGOk9ncTBdveqncGI12f820ka+y3wAT0qtpPsphaALcE
 KARWU4xHW0EFsjyrCk3ygT7cspgIvwlFXf07QJTASmi0+CbMzKJ+WTLfULPC2/v9VrXO
 To6FnxsBZLTmhG738lrtTmoKuXplA6aK9GPBNooGQXp1H7hHSJ+TLir+Hjd5setkxK8q
 WV8w==
Subject: [Intel-gfx] [PATCH v2 30/34] crypt: convert put_page() to
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
 rds-devel@oss.oracle.com, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogSGVyYmVy
dCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PgpDYzogRGF2aWQgUy4gTWlsbGVyIDxk
YXZlbUBkYXZlbWxvZnQubmV0PgpDYzogbGludXgtY3J5cHRvQHZnZXIua2VybmVsLm9yZwpTaWdu
ZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+Ci0tLQogY3J5cHRv
L2FmX2FsZy5jIHwgNyArKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2NyeXB0by9hZl9hbGcuYyBiL2NyeXB0by9hZl9h
bGcuYwppbmRleCA4NzljZjIzZjc0ODkuLmVkZDM1OGVhNjRkYSAxMDA2NDQKLS0tIGEvY3J5cHRv
L2FmX2FsZy5jCisrKyBiL2NyeXB0by9hZl9hbGcuYwpAQCAtNDI4LDEwICs0MjgsNyBAQCBzdGF0
aWMgdm9pZCBhZl9hbGdfbGlua19zZyhzdHJ1Y3QgYWZfYWxnX3NnbCAqc2dsX3ByZXYsCiAKIHZv
aWQgYWZfYWxnX2ZyZWVfc2coc3RydWN0IGFmX2FsZ19zZ2wgKnNnbCkKIHsKLQlpbnQgaTsKLQot
CWZvciAoaSA9IDA7IGkgPCBzZ2wtPm5wYWdlczsgaSsrKQotCQlwdXRfcGFnZShzZ2wtPnBhZ2Vz
W2ldKTsKKwlwdXRfdXNlcl9wYWdlcyhzZ2wtPnBhZ2VzLCBzZ2wtPm5wYWdlcyk7CiB9CiBFWFBP
UlRfU1lNQk9MX0dQTChhZl9hbGdfZnJlZV9zZyk7CiAKQEAgLTY2OCw3ICs2NjUsNyBAQCBzdGF0
aWMgdm9pZCBhZl9hbGdfZnJlZV9hcmVxX3NnbHMoc3RydWN0IGFmX2FsZ19hc3luY19yZXEgKmFy
ZXEpCiAJCWZvcl9lYWNoX3NnKHRzZ2wsIHNnLCBhcmVxLT50c2dsX2VudHJpZXMsIGkpIHsKIAkJ
CWlmICghc2dfcGFnZShzZykpCiAJCQkJY29udGludWU7Ci0JCQlwdXRfcGFnZShzZ19wYWdlKHNn
KSk7CisJCQlwdXRfdXNlcl9wYWdlKHNnX3BhZ2Uoc2cpKTsKIAkJfQogCiAJCXNvY2tfa2ZyZWVf
cyhzaywgdHNnbCwgYXJlcS0+dHNnbF9lbnRyaWVzICogc2l6ZW9mKCp0c2dsKSk7Ci0tIAoyLjIy
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
