Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7212445F0A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6959589930;
	Fri, 14 Jun 2019 13:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACC2898B7;
 Fri, 14 Jun 2019 13:48:35 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYz-0005e1-FO; Fri, 14 Jun 2019 13:48:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:23 +0200
Message-Id: <20190614134726.3827-14-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVPCPj1LrefwU2xq/k4nx8MUt6z5g1ttpdf31GA4t7s=; b=R7oVdWdv/mZN0cFwPPhtVK4TMx
 UB/wqQzgkHyYoVXTIUGR/8fAw8BWFMkxfhjvQA8cZVsEfByOCf1n/fgHZGG1Ku2HbnOU7wlpCu6md
 kV7iFak0CwzMgcwf+1ko540TzfJZ7m8NhyKeNAafjIR+Eh02tznZJ/tUqmN1GKHmPpnm8D9T4ipEj
 VhsgOFo98A7OHLvTQLaE2S3jC8uxQMExeLN7wqYne/Oa8lDjeUuhj+sBM6/IpP/HI6hcndIgYuq/y
 Z6v4feaEGjGdbjf71aj7myD5cdjMs8C9wTELFpbzveIUWDepgbQiHeWiGh6p6pC5gwcbLSKzfWexb
 co9by/hQ==;
Subject: [Intel-gfx] [PATCH 13/16] mm: rename alloc_pages_exact_nid to
 alloc_pages_exact_node
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBmaXRzIGluIHdpdGggdGhlIG5hbWluZyBzY2hlbWUgdXNlZCBieSBhbGxvY19wYWdlc19u
b2RlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQog
aW5jbHVkZS9saW51eC9nZnAuaCB8IDIgKy0KIG1tL3BhZ2VfYWxsb2MuYyAgICAgfCA0ICsrLS0K
IG1tL3BhZ2VfZXh0LmMgICAgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2dmcC5oIGIv
aW5jbHVkZS9saW51eC9nZnAuaAppbmRleCBmYjA3YjUwM2RjNDUuLjQyNzRlYTZiYzcyYiAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9nZnAuaAorKysgYi9pbmNsdWRlL2xpbnV4L2dmcC5oCkBA
IC01MzIsNyArNTMyLDcgQEAgZXh0ZXJuIHVuc2lnbmVkIGxvbmcgZ2V0X3plcm9lZF9wYWdlKGdm
cF90IGdmcF9tYXNrKTsKIAogdm9pZCAqYWxsb2NfcGFnZXNfZXhhY3Qoc2l6ZV90IHNpemUsIGdm
cF90IGdmcF9tYXNrKTsKIHZvaWQgZnJlZV9wYWdlc19leGFjdCh2b2lkICp2aXJ0LCBzaXplX3Qg
c2l6ZSk7Ci12b2lkICogX19tZW1pbml0IGFsbG9jX3BhZ2VzX2V4YWN0X25pZChpbnQgbmlkLCBz
aXplX3Qgc2l6ZSwgZ2ZwX3QgZ2ZwX21hc2spOwordm9pZCAqIF9fbWVtaW5pdCBhbGxvY19wYWdl
c19leGFjdF9ub2RlKGludCBuaWQsIHNpemVfdCBzaXplLCBnZnBfdCBnZnBfbWFzayk7CiAKICNk
ZWZpbmUgX19nZXRfZnJlZV9wYWdlKGdmcF9tYXNrKSBcCiAJCV9fZ2V0X2ZyZWVfcGFnZXMoKGdm
cF9tYXNrKSwgMCkKZGlmZiAtLWdpdCBhL21tL3BhZ2VfYWxsb2MuYyBiL21tL3BhZ2VfYWxsb2Mu
YwppbmRleCBkNjZiYzhhYmUwYWYuLmRkMmZlZDY2YjY1NiAxMDA2NDQKLS0tIGEvbW0vcGFnZV9h
bGxvYy5jCisrKyBiL21tL3BhZ2VfYWxsb2MuYwpAQCAtNDg4OCw3ICs0ODg4LDcgQEAgdm9pZCAq
YWxsb2NfcGFnZXNfZXhhY3Qoc2l6ZV90IHNpemUsIGdmcF90IGdmcF9tYXNrKQogRVhQT1JUX1NZ
TUJPTChhbGxvY19wYWdlc19leGFjdCk7CiAKIC8qKgotICogYWxsb2NfcGFnZXNfZXhhY3Rfbmlk
IC0gYWxsb2NhdGUgYW4gZXhhY3QgbnVtYmVyIG9mIHBoeXNpY2FsbHktY29udGlndW91cworICog
YWxsb2NfcGFnZXNfZXhhY3Rfbm9kZSAtIGFsbG9jYXRlIGFuIGV4YWN0IG51bWJlciBvZiBwaHlz
aWNhbGx5LWNvbnRpZ3VvdXMKICAqCQkJICAgcGFnZXMgb24gYSBub2RlLgogICogQG5pZDogdGhl
IHByZWZlcnJlZCBub2RlIElEIHdoZXJlIG1lbW9yeSBzaG91bGQgYmUgYWxsb2NhdGVkCiAgKiBA
c2l6ZTogdGhlIG51bWJlciBvZiBieXRlcyB0byBhbGxvY2F0ZQpAQCAtNDg5OSw3ICs0ODk5LDcg
QEAgRVhQT1JUX1NZTUJPTChhbGxvY19wYWdlc19leGFjdCk7CiAgKgogICogUmV0dXJuOiBwb2lu
dGVyIHRvIHRoZSBhbGxvY2F0ZWQgYXJlYSBvciAlTlVMTCBpbiBjYXNlIG9mIGVycm9yLgogICov
Ci12b2lkICogX19tZW1pbml0IGFsbG9jX3BhZ2VzX2V4YWN0X25pZChpbnQgbmlkLCBzaXplX3Qg
c2l6ZSwgZ2ZwX3QgZ2ZwX21hc2spCit2b2lkICogX19tZW1pbml0IGFsbG9jX3BhZ2VzX2V4YWN0
X25vZGUoaW50IG5pZCwgc2l6ZV90IHNpemUsIGdmcF90IGdmcF9tYXNrKQogewogCXVuc2lnbmVk
IGludCBvcmRlciA9IGdldF9vcmRlcihzaXplKTsKIAlzdHJ1Y3QgcGFnZSAqcDsKZGlmZiAtLWdp
dCBhL21tL3BhZ2VfZXh0LmMgYi9tbS9wYWdlX2V4dC5jCmluZGV4IGQ4ZjFhY2E0YWQ0My4uYmNh
NmJiMzE2NzE0IDEwMDY0NAotLS0gYS9tbS9wYWdlX2V4dC5jCisrKyBiL21tL3BhZ2VfZXh0LmMK
QEAgLTIxNSw3ICsyMTUsNyBAQCBzdGF0aWMgdm9pZCAqX19tZW1pbml0IGFsbG9jX3BhZ2VfZXh0
KHNpemVfdCBzaXplLCBpbnQgbmlkKQogCWdmcF90IGZsYWdzID0gR0ZQX0tFUk5FTCB8IF9fR0ZQ
X1pFUk8gfCBfX0dGUF9OT1dBUk47CiAJdm9pZCAqYWRkciA9IE5VTEw7CiAKLQlhZGRyID0gYWxs
b2NfcGFnZXNfZXhhY3RfbmlkKG5pZCwgc2l6ZSwgZmxhZ3MpOworCWFkZHIgPSBhbGxvY19wYWdl
c19leGFjdF9ub2RlKG5pZCwgc2l6ZSwgZmxhZ3MpOwogCWlmIChhZGRyKSB7CiAJCWttZW1sZWFr
X2FsbG9jKGFkZHIsIHNpemUsIDEsIGZsYWdzKTsKIAkJcmV0dXJuIGFkZHI7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
