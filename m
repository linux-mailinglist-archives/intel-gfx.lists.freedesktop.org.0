Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E77C45F19
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F088E8993B;
	Fri, 14 Jun 2019 13:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B5D289938;
 Fri, 14 Jun 2019 13:48:40 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZB-0005nI-Ab; Fri, 14 Jun 2019 13:48:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:26 +0200
Message-Id: <20190614134726.3827-17-hch@lst.de>
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
 bh=ve9eOR0n9NYQG/06xL1T/7RN+D+EYosn1r01rGXCWe8=; b=oOXLpQSB9eTwi5cRnaIs3K9jSP
 U3nYifQRasO4H8c9LydLZ7aFiLS8AmMO8L7HX1fSqc06MgW+WgkhhHaoKo2MKfTDNYkKunWyK4auH
 sDEmoQgB8oqOU4hpKwhX2F52HvfX8JBk7RhqZQB3ZfChLLyBOjp1aO1CsWRbTm+0Fj1lVP/P78vhq
 Q/tTXEXgky31g4PmH9ZYyI2SmqKT0gbaGOa4wj3ZMyfwF3m6qpJz2Hgvhxr+PiNdqUsIFqqBd/Bdq
 t5+5nb9o2JxesKPlAa9uOOJPL3zGPLmnTYV+Z+YPjVKvRBW0T/H3FZDUMD4bcdC4PQzCFzjLGL6V3
 kn/hUemg==;
Subject: [Intel-gfx] [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
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

TWFueSBhcmNoaXRlY3R1cmVzIChlLmcuIGFybSwgbTY4IGFuZCBzaCkgaGF2ZSBhbHdheXMgdXNl
ZCBleGFjdAphbGxvY2F0aW9uIGluIHRoZWlyIGRtYSBjb2hlcmVudCBhbGxvY2F0b3IsIHdoaWNo
IGF2b2lkcyBhIGxvdCBvZgptZW1vcnkgd2FzdGUgZXNwZWNpYWxseSBmb3IgbGFyZ2VyIGFsbG9j
YXRpb25zLiAgTGlmdCB0aGlzIGJlaGF2aW9yCmludG8gdGhlIGdlbmVyaWMgYWxsb2NhdG9yIHNv
IHRoYXQgZG1hLWRpcmVjdCBhbmQgdGhlIGdlbmVyaWMgSU9NTVUKY29kZSBiZW5lZml0IGZyb20g
dGhpcyBiZWhhdmlvciBhcyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcg
PGhjaEBsc3QuZGU+Ci0tLQogaW5jbHVkZS9saW51eC9kbWEtY29udGlndW91cy5oIHwgIDggKysr
KystLS0KIGtlcm5lbC9kbWEvY29udGlndW91cy5jICAgICAgICB8IDE3ICsrKysrKysrKysrLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtY29udGlndW91cy5oIGIvaW5jbHVkZS9saW51
eC9kbWEtY29udGlndW91cy5oCmluZGV4IGMwNWQ0ZTY2MTQ4OS4uMmU1NDJlMzE0YWNmIDEwMDY0
NAotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1jb250aWd1b3VzLmgKKysrIGIvaW5jbHVkZS9saW51
eC9kbWEtY29udGlndW91cy5oCkBAIC0xNjEsMTUgKzE2MSwxNyBAQCBzdGF0aWMgaW5saW5lIHN0
cnVjdCBwYWdlICpkbWFfYWxsb2NfY29udGlndW91cyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHNpemVf
dCBzaXplLAogCQlnZnBfdCBnZnApCiB7CiAJaW50IG5vZGUgPSBkZXYgPyBkZXZfdG9fbm9kZShk
ZXYpIDogTlVNQV9OT19OT0RFOwotCXNpemVfdCBhbGlnbiA9IGdldF9vcmRlcihQQUdFX0FMSUdO
KHNpemUpKTsKKwl2b2lkICpjcHVfYWRkciA9IGFsbG9jX3BhZ2VzX2V4YWN0X25vZGUobm9kZSwg
c2l6ZSwgZ2ZwKTsKIAotCXJldHVybiBhbGxvY19wYWdlc19ub2RlKG5vZGUsIGdmcCwgYWxpZ24p
OworCWlmICghY3B1X2FkZHIpCisJCXJldHVybiBOVUxMOworCXJldHVybiB2aXJ0X3RvX3BhZ2Uo
cCk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfZnJlZV9jb250aWd1b3VzKHN0cnVjdCBk
ZXZpY2UgKmRldiwgc3RydWN0IHBhZ2UgKnBhZ2UsCiAJCXNpemVfdCBzaXplKQogewotCV9fZnJl
ZV9wYWdlcyhwYWdlLCBnZXRfb3JkZXIoc2l6ZSkpOworCWZyZWVfcGFnZXNfZXhhY3QocGFnZV9h
ZGRyZXNzKHBhZ2UpLCBnZXRfb3JkZXIoc2l6ZSkpOwogfQogCiAjZW5kaWYKZGlmZiAtLWdpdCBh
L2tlcm5lbC9kbWEvY29udGlndW91cy5jIGIva2VybmVsL2RtYS9jb250aWd1b3VzLmMKaW5kZXgg
YmZjMGMxN2YyYTNkLi44NGY0MWVlYTI3NDEgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9kbWEvY29udGln
dW91cy5jCisrKyBiL2tlcm5lbC9kbWEvY29udGlndW91cy5jCkBAIC0yMzIsOSArMjMyLDggQEAg
c3RydWN0IHBhZ2UgKmRtYV9hbGxvY19jb250aWd1b3VzKHN0cnVjdCBkZXZpY2UgKmRldiwgc2l6
ZV90IHNpemUsIGdmcF90IGdmcCkKIHsKIAlpbnQgbm9kZSA9IGRldiA/IGRldl90b19ub2RlKGRl
dikgOiBOVU1BX05PX05PREU7CiAJc2l6ZV90IGNvdW50ID0gUEFHRV9BTElHTihzaXplKSA+PiBQ
QUdFX1NISUZUOwotCXNpemVfdCBhbGlnbiA9IGdldF9vcmRlcihQQUdFX0FMSUdOKHNpemUpKTsK
LQlzdHJ1Y3QgcGFnZSAqcGFnZSA9IE5VTEw7CiAJc3RydWN0IGNtYSAqY21hID0gTlVMTDsKKwl2
b2lkICpjcHVfYWRkcjsKIAogCWlmIChkZXYgJiYgZGV2LT5jbWFfYXJlYSkKIAkJY21hID0gZGV2
LT5jbWFfYXJlYTsKQEAgLTI0MywxNCArMjQyLDIwIEBAIHN0cnVjdCBwYWdlICpkbWFfYWxsb2Nf
Y29udGlndW91cyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHNpemVfdCBzaXplLCBnZnBfdCBnZnApCiAK
IAkvKiBDTUEgY2FuIGJlIHVzZWQgb25seSBpbiB0aGUgY29udGV4dCB3aGljaCBwZXJtaXRzIHNs
ZWVwaW5nICovCiAJaWYgKGNtYSAmJiBnZnBmbGFnc19hbGxvd19ibG9ja2luZyhnZnApKSB7CisJ
CXNpemVfdCBhbGlnbiA9IGdldF9vcmRlcihQQUdFX0FMSUdOKHNpemUpKTsKKwkJc3RydWN0IHBh
Z2UgKnBhZ2U7CisKIAkJYWxpZ24gPSBtaW5fdChzaXplX3QsIGFsaWduLCBDT05GSUdfQ01BX0FM
SUdOTUVOVCk7CiAJCXBhZ2UgPSBjbWFfYWxsb2MoY21hLCBjb3VudCwgYWxpZ24sIGdmcCAmIF9f
R0ZQX05PV0FSTik7CisJCWlmIChwYWdlKQorCQkJcmV0dXJuIHBhZ2U7CiAJfQogCiAJLyogRmFs
bGJhY2sgYWxsb2NhdGlvbiBvZiBub3JtYWwgcGFnZXMgKi8KLQlpZiAoIXBhZ2UpCi0JCXBhZ2Ug
PSBhbGxvY19wYWdlc19ub2RlKG5vZGUsIGdmcCwgYWxpZ24pOwotCXJldHVybiBwYWdlOworCWNw
dV9hZGRyID0gYWxsb2NfcGFnZXNfZXhhY3Rfbm9kZShub2RlLCBzaXplLCBnZnApOworCWlmICgh
Y3B1X2FkZHIpCisJCXJldHVybiBOVUxMOworCXJldHVybiB2aXJ0X3RvX3BhZ2UoY3B1X2FkZHIp
OwogfQogCiAvKioKQEAgLTI2Nyw3ICsyNzIsNyBAQCBzdHJ1Y3QgcGFnZSAqZG1hX2FsbG9jX2Nv
bnRpZ3VvdXMoc3RydWN0IGRldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwgZ2ZwX3QgZ2ZwKQogdm9p
ZCBkbWFfZnJlZV9jb250aWd1b3VzKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHBhZ2UgKnBh
Z2UsIHNpemVfdCBzaXplKQogewogCWlmICghY21hX3JlbGVhc2UoZGV2X2dldF9jbWFfYXJlYShk
ZXYpLCBwYWdlLCBzaXplID4+IFBBR0VfU0hJRlQpKQotCQlfX2ZyZWVfcGFnZXMocGFnZSwgZ2V0
X29yZGVyKHNpemUpKTsKKwkJZnJlZV9wYWdlc19leGFjdChwYWdlX2FkZHJlc3MocGFnZSksIGdl
dF9vcmRlcihzaXplKSk7CiB9CiAKIC8qCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
