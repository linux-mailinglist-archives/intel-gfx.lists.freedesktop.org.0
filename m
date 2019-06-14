Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C8445F15
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6369389935;
	Fri, 14 Jun 2019 13:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A27D8992E;
 Fri, 14 Jun 2019 13:48:38 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZ3-0005hB-Ky; Fri, 14 Jun 2019 13:48:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:24 +0200
Message-Id: <20190614134726.3827-15-hch@lst.de>
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
 bh=Gz4Xhr4GKX8cgnBiH4+BILh020IQOylUizPJRjDHE/E=; b=cf3JZA+ZRH3KX860kHpnPR8oA/
 bqAxf2wdh/kYQFTTiXQ/cfGIHFtkzi1Q6IAe9eh8VXYnYOyFEmHCCu4FhR+BvSXtpAx5ApdhZC2tL
 eqsB5EioSDc9+R5gTT7rMPzafsusILIBU05BomvsIAKlHCVNuXOq2PanGax2oHqCJpo1ef3+4E/WO
 eAvSS6Dx80B05dalPw/wekrBppUw3IEJLxzJHpuSGlVG4QM3kKSs6MrdGwLQEd0MHw3LaJPiqt54p
 Ec8ghntYydM0pKm2+mAy/RaUMsAIhlCtQMD+RUDzu5uz1USZRuoH2TqfwRFQkKEzx7x86HBrZfST/
 CbsAG57g==;
Subject: [Intel-gfx] [PATCH 14/16] mm: use alloc_pages_exact_node to
 implement alloc_pages_exact
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

Tm8gbmVlZCB0byBkdXBsaWNhdGUgdGhlIGxvZ2ljIG92ZXIgdHdvIGZ1bmN0aW9ucyB0aGF0IGFy
ZSBhbG1vc3QgdGhlCnNhbWUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNo
QGxzdC5kZT4KLS0tCiBpbmNsdWRlL2xpbnV4L2dmcC5oIHwgIDUgKysrLS0KIG1tL3BhZ2VfYWxs
b2MuYyAgICAgfCAzOSArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDIg
ZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9nZnAuaCBiL2luY2x1ZGUvbGludXgvZ2ZwLmgKaW5kZXggNDI3
NGVhNmJjNzJiLi5jNjE2YTIzYTNmODEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZ2ZwLmgK
KysrIGIvaW5jbHVkZS9saW51eC9nZnAuaApAQCAtNTMwLDkgKzUzMCwxMCBAQCBleHRlcm4gc3Ry
dWN0IHBhZ2UgKmFsbG9jX3BhZ2VzX3ZtYShnZnBfdCBnZnBfbWFzaywgaW50IG9yZGVyLAogZXh0
ZXJuIHVuc2lnbmVkIGxvbmcgX19nZXRfZnJlZV9wYWdlcyhnZnBfdCBnZnBfbWFzaywgdW5zaWdu
ZWQgaW50IG9yZGVyKTsKIGV4dGVybiB1bnNpZ25lZCBsb25nIGdldF96ZXJvZWRfcGFnZShnZnBf
dCBnZnBfbWFzayk7CiAKLXZvaWQgKmFsbG9jX3BhZ2VzX2V4YWN0KHNpemVfdCBzaXplLCBnZnBf
dCBnZnBfbWFzayk7CiB2b2lkIGZyZWVfcGFnZXNfZXhhY3Qodm9pZCAqdmlydCwgc2l6ZV90IHNp
emUpOwotdm9pZCAqIF9fbWVtaW5pdCBhbGxvY19wYWdlc19leGFjdF9ub2RlKGludCBuaWQsIHNp
emVfdCBzaXplLCBnZnBfdCBnZnBfbWFzayk7Cit2b2lkICphbGxvY19wYWdlc19leGFjdF9ub2Rl
KGludCBuaWQsIHNpemVfdCBzaXplLCBnZnBfdCBnZnBfbWFzayk7CisjZGVmaW5lIGFsbG9jX3Bh
Z2VzX2V4YWN0KHNpemUsIGdmcF9tYXNrKSBcCisJYWxsb2NfcGFnZXNfZXhhY3Rfbm9kZShOVU1B
X05PX05PREUsIHNpemUsIGdmcF9tYXNrKQogCiAjZGVmaW5lIF9fZ2V0X2ZyZWVfcGFnZShnZnBf
bWFzaykgXAogCQlfX2dldF9mcmVlX3BhZ2VzKChnZnBfbWFzayksIDApCmRpZmYgLS1naXQgYS9t
bS9wYWdlX2FsbG9jLmMgYi9tbS9wYWdlX2FsbG9jLmMKaW5kZXggZGQyZmVkNjZiNjU2Li5kZWM2
OGJkMjFhNzEgMTAwNjQ0Ci0tLSBhL21tL3BhZ2VfYWxsb2MuYworKysgYi9tbS9wYWdlX2FsbG9j
LmMKQEAgLTQ4NTksMzQgKzQ4NTksNiBAQCBzdGF0aWMgdm9pZCAqbWFrZV9hbGxvY19leGFjdCh1
bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGludCBvcmRlciwKIAlyZXR1cm4gKHZvaWQgKilh
ZGRyOwogfQogCi0vKioKLSAqIGFsbG9jX3BhZ2VzX2V4YWN0IC0gYWxsb2NhdGUgYW4gZXhhY3Qg
bnVtYmVyIHBoeXNpY2FsbHktY29udGlndW91cyBwYWdlcy4KLSAqIEBzaXplOiB0aGUgbnVtYmVy
IG9mIGJ5dGVzIHRvIGFsbG9jYXRlCi0gKiBAZ2ZwX21hc2s6IEdGUCBmbGFncyBmb3IgdGhlIGFs
bG9jYXRpb24sIG11c3Qgbm90IGNvbnRhaW4gX19HRlBfQ09NUAotICoKLSAqIFRoaXMgZnVuY3Rp
b24gaXMgc2ltaWxhciB0byBhbGxvY19wYWdlcygpLCBleGNlcHQgdGhhdCBpdCBhbGxvY2F0ZXMg
dGhlCi0gKiBtaW5pbXVtIG51bWJlciBvZiBwYWdlcyB0byBzYXRpc2Z5IHRoZSByZXF1ZXN0LiAg
YWxsb2NfcGFnZXMoKSBjYW4gb25seQotICogYWxsb2NhdGUgbWVtb3J5IGluIHBvd2VyLW9mLXR3
byBwYWdlcy4KLSAqCi0gKiBUaGlzIGZ1bmN0aW9uIGlzIGFsc28gbGltaXRlZCBieSBNQVhfT1JE
RVIuCi0gKgotICogTWVtb3J5IGFsbG9jYXRlZCBieSB0aGlzIGZ1bmN0aW9uIG11c3QgYmUgcmVs
ZWFzZWQgYnkgZnJlZV9wYWdlc19leGFjdCgpLgotICoKLSAqIFJldHVybjogcG9pbnRlciB0byB0
aGUgYWxsb2NhdGVkIGFyZWEgb3IgJU5VTEwgaW4gY2FzZSBvZiBlcnJvci4KLSAqLwotdm9pZCAq
YWxsb2NfcGFnZXNfZXhhY3Qoc2l6ZV90IHNpemUsIGdmcF90IGdmcF9tYXNrKQotewotCXVuc2ln
bmVkIGludCBvcmRlciA9IGdldF9vcmRlcihzaXplKTsKLQl1bnNpZ25lZCBsb25nIGFkZHI7Ci0K
LQlpZiAoV0FSTl9PTl9PTkNFKGdmcF9tYXNrICYgX19HRlBfQ09NUCkpCi0JCWdmcF9tYXNrICY9
IH5fX0dGUF9DT01QOwotCi0JYWRkciA9IF9fZ2V0X2ZyZWVfcGFnZXMoZ2ZwX21hc2ssIG9yZGVy
KTsKLQlyZXR1cm4gbWFrZV9hbGxvY19leGFjdChhZGRyLCBvcmRlciwgc2l6ZSk7Ci19Ci1FWFBP
UlRfU1lNQk9MKGFsbG9jX3BhZ2VzX2V4YWN0KTsKLQogLyoqCiAgKiBhbGxvY19wYWdlc19leGFj
dF9ub2RlIC0gYWxsb2NhdGUgYW4gZXhhY3QgbnVtYmVyIG9mIHBoeXNpY2FsbHktY29udGlndW91
cwogICoJCQkgICBwYWdlcyBvbiBhIG5vZGUuCkBAIC00ODk0LDEyICs0ODY2LDE1IEBAIEVYUE9S
VF9TWU1CT0woYWxsb2NfcGFnZXNfZXhhY3QpOwogICogQHNpemU6IHRoZSBudW1iZXIgb2YgYnl0
ZXMgdG8gYWxsb2NhdGUKICAqIEBnZnBfbWFzazogR0ZQIGZsYWdzIGZvciB0aGUgYWxsb2NhdGlv
biwgbXVzdCBub3QgY29udGFpbiBfX0dGUF9DT01QCiAgKgotICogTGlrZSBhbGxvY19wYWdlc19l
eGFjdCgpLCBidXQgdHJ5IHRvIGFsbG9jYXRlIG9uIG5vZGUgbmlkIGZpcnN0IGJlZm9yZSBmYWxs
aW5nCi0gKiBiYWNrLgorICogVGhpcyBmdW5jdGlvbiBpcyBzaW1pbGFyIHRvIGFsbG9jX3BhZ2Vz
X25vZGUoKSwgZXhjZXB0IHRoYXQgaXQgYWxsb2NhdGVzIHRoZQorICogbWluaW11bSBudW1iZXIg
b2YgcGFnZXMgdG8gc2F0aXNmeSB0aGUgcmVxdWVzdCB3aGlsZSBhbGxvY19wYWdlcygpIGNhbiBv
bmx5CisgKiBhbGxvY2F0ZSBtZW1vcnkgaW4gcG93ZXItb2YtdHdvIHBhZ2VzLiAgVGhpcyBmdW5j
dGlvbiBpcyBhbHNvIGxpbWl0ZWQgYnkKKyAqIE1BWF9PUkRFUi4KICAqCi0gKiBSZXR1cm46IHBv
aW50ZXIgdG8gdGhlIGFsbG9jYXRlZCBhcmVhIG9yICVOVUxMIGluIGNhc2Ugb2YgZXJyb3IuCisg
KiBSZXR1cm5zIGEgcG9pbnRlciB0byB0aGUgYWxsb2NhdGVkIGFyZWEgb3IgJU5VTEwgaW4gY2Fz
ZSBvZiBlcnJvciwgbWVtb3J5CisgKiBhbGxvY2F0ZWQgYnkgdGhpcyBmdW5jdGlvbiBtdXN0IGJl
IHJlbGVhc2VkIGJ5IGZyZWVfcGFnZXNfZXhhY3QoKS4KICAqLwotdm9pZCAqIF9fbWVtaW5pdCBh
bGxvY19wYWdlc19leGFjdF9ub2RlKGludCBuaWQsIHNpemVfdCBzaXplLCBnZnBfdCBnZnBfbWFz
aykKK3ZvaWQgKmFsbG9jX3BhZ2VzX2V4YWN0X25vZGUoaW50IG5pZCwgc2l6ZV90IHNpemUsIGdm
cF90IGdmcF9tYXNrKQogewogCXVuc2lnbmVkIGludCBvcmRlciA9IGdldF9vcmRlcihzaXplKTsK
IAlzdHJ1Y3QgcGFnZSAqcDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
