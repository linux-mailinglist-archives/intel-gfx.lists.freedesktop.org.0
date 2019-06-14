Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1674E45F16
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A30898C4;
	Fri, 14 Jun 2019 13:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A878992E;
 Fri, 14 Jun 2019 13:48:39 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZ7-0005kh-Ep; Fri, 14 Jun 2019 13:48:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:25 +0200
Message-Id: <20190614134726.3827-16-hch@lst.de>
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
 bh=RVKpwDD7wUATUASeNR+XdAkTqCzdoA7nasScp5npHqs=; b=InfZ/wOT5rvjRmLvAJ5YP0wj7w
 MnY2l6T7U9OKNQHOpXU4ecx11Q/eDpbs9QZcUEk1J6VapmhpcCqvhL8/4NsVudmklSgaa2WcxVUBe
 waQaOUcUb4RL/2HYzMKDhBFk0TbOCBJW2bM1HFoiaO8f2Ig4hC482NJbLtwEkvvRfYlxTkYB8GZfS
 F0h9hjSdleNEn2dTrk1H5znVe9s/hC3c40GaTOTSLSDPoVROxZizHibMU3rX0xz8EOQplEK9nB80Z
 xPVZaB3uqh4bQkuTonc69uqBuDRYzL7doJGRuaJI4LbV+3+NfJQNVhZazRojfRluUXrQDfyvbPdjZ
 6hG3FXUA==;
Subject: [Intel-gfx] [PATCH 15/16] dma-mapping: clear __GFP_COMP in
 dma_alloc_attrs
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

TGlmdCB0aGUgY29kZSB0byBjbGVhciBfX0dGUF9DT01QIGZyb20gYXJtIGludG8gdGhlIGNvbW1v
biBETUEKYWxsb2NhdG9yIHBhdGguICBGb3Igb25lIHRoaXMgZml4ZXMgdGhlIHZhcmlvdXMgb3Ro
ZXIgcGF0Y2hlcyB0aGF0CmNhbGwgYWxsb2NfcGFnZXNfZXhhY3Qgb3Igc3BsaXRfcGFnZSBpbiBj
YXNlIGEgYm9ndXMgZHJpdmVyIHBhc3Nlcwp0aGUgYXJndW1lbnQsIGFuZCBpdCBhbHNvIHByZXBh
cmVzIGZvciBkb2luZyBleGFjdCBhbGxvY2F0aW9uIGluCnRoZSBnZW5lcmljIGRtYS1kaXJlY3Qg
YWxsb2NhdG9yLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Ci0tLQogYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYyB8IDE3IC0tLS0tLS0tLS0tLS0tLS0tCiBr
ZXJuZWwvZG1hL21hcHBpbmcuYyAgICAgIHwgIDkgKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
bW0vZG1hLW1hcHBpbmcuYyBiL2FyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmMKaW5kZXggMGE3NTA1
OGMxMWYzLi44NjEzNWZlYjJjMDUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21tL2RtYS1tYXBwaW5n
LmMKKysrIGIvYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYwpAQCAtNzU5LDE0ICs3NTksNiBAQCBz
dGF0aWMgdm9pZCAqX19kbWFfYWxsb2Moc3RydWN0IGRldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwg
ZG1hX2FkZHJfdCAqaGFuZGxlLAogCWlmIChtYXNrIDwgMHhmZmZmZmZmZlVMTCkKIAkJZ2ZwIHw9
IEdGUF9ETUE7CiAKLQkvKgotCSAqIEZvbGxvd2luZyBpcyBhIHdvcmstYXJvdW5kIChhLmsuYS4g
aGFjaykgdG8gcHJldmVudCBwYWdlcwotCSAqIHdpdGggX19HRlBfQ09NUCBiZWluZyBwYXNzZWQg
dG8gc3BsaXRfcGFnZSgpIHdoaWNoIGNhbm5vdAotCSAqIGhhbmRsZSB0aGVtLiAgVGhlIHJlYWwg
cHJvYmxlbSBpcyB0aGF0IHRoaXMgZmxhZyBwcm9iYWJseQotCSAqIHNob3VsZCBiZSAwIG9uIEFS
TSBhcyBpdCBpcyBub3Qgc3VwcG9ydGVkIG9uIHRoaXMKLQkgKiBwbGF0Zm9ybTsgc2VlIENPTkZJ
R19IVUdFVExCRlMuCi0JICovCi0JZ2ZwICY9IH4oX19HRlBfQ09NUCk7CiAJYXJncy5nZnAgPSBn
ZnA7CiAKIAkqaGFuZGxlID0gRE1BX01BUFBJTkdfRVJST1I7CkBAIC0xNTI3LDE1ICsxNTE5LDYg
QEAgc3RhdGljIHZvaWQgKl9fYXJtX2lvbW11X2FsbG9jX2F0dHJzKHN0cnVjdCBkZXZpY2UgKmRl
diwgc2l6ZV90IHNpemUsCiAJCXJldHVybiBfX2lvbW11X2FsbG9jX3NpbXBsZShkZXYsIHNpemUs
IGdmcCwgaGFuZGxlLAogCQkJCQkgICAgY29oZXJlbnRfZmxhZywgYXR0cnMpOwogCi0JLyoKLQkg
KiBGb2xsb3dpbmcgaXMgYSB3b3JrLWFyb3VuZCAoYS5rLmEuIGhhY2spIHRvIHByZXZlbnQgcGFn
ZXMKLQkgKiB3aXRoIF9fR0ZQX0NPTVAgYmVpbmcgcGFzc2VkIHRvIHNwbGl0X3BhZ2UoKSB3aGlj
aCBjYW5ub3QKLQkgKiBoYW5kbGUgdGhlbS4gIFRoZSByZWFsIHByb2JsZW0gaXMgdGhhdCB0aGlz
IGZsYWcgcHJvYmFibHkKLQkgKiBzaG91bGQgYmUgMCBvbiBBUk0gYXMgaXQgaXMgbm90IHN1cHBv
cnRlZCBvbiB0aGlzCi0JICogcGxhdGZvcm07IHNlZSBDT05GSUdfSFVHRVRMQkZTLgotCSAqLwot
CWdmcCAmPSB+KF9fR0ZQX0NPTVApOwotCiAJcGFnZXMgPSBfX2lvbW11X2FsbG9jX2J1ZmZlcihk
ZXYsIHNpemUsIGdmcCwgYXR0cnMsIGNvaGVyZW50X2ZsYWcpOwogCWlmICghcGFnZXMpCiAJCXJl
dHVybiBOVUxMOwpkaWZmIC0tZ2l0IGEva2VybmVsL2RtYS9tYXBwaW5nLmMgYi9rZXJuZWwvZG1h
L21hcHBpbmcuYwppbmRleCBmN2FmZGFkYjY3NzAuLjRiNjE4ZTFhYmJjMSAxMDA2NDQKLS0tIGEv
a2VybmVsL2RtYS9tYXBwaW5nLmMKKysrIGIva2VybmVsL2RtYS9tYXBwaW5nLmMKQEAgLTI1Miw2
ICsyNTIsMTUgQEAgdm9pZCAqZG1hX2FsbG9jX2F0dHJzKHN0cnVjdCBkZXZpY2UgKmRldiwgc2l6
ZV90IHNpemUsIGRtYV9hZGRyX3QgKmRtYV9oYW5kbGUsCiAJLyogbGV0IHRoZSBpbXBsZW1lbnRh
dGlvbiBkZWNpZGUgb24gdGhlIHpvbmUgdG8gYWxsb2NhdGUgZnJvbTogKi8KIAlmbGFnICY9IH4o
X19HRlBfRE1BIHwgX19HRlBfRE1BMzIgfCBfX0dGUF9ISUdITUVNKTsKIAorCS8qCisJICogX19H
RlBfQ09NUCBpbnRlcmFjdHMgYmFkbHkgd2l0aCBzcGxpdHRpbmcgdXAgYSBsYXJnZXIgb3JkZXIK
KwkgKiBhbGxvY2F0aW9uLiAgQnV0IGFzIG91ciBhbGxvY2F0aW9ucyBtaWdodCBub3QgZXZlbiBj
b21lIGZyb20gdGhlCisJICogcGFnZSBhbGxvY2F0b3IsIHRoZSBjYWxsZXJzIGNhbid0IHJlbHkg
b24gdGhlIGZhY3QgdGhhdCB0aGV5CisJICogZXZlbiBnZXQgcGFnZXMsIG5ldmVyIG1pbmQgd2hp
Y2gga2luZC4KKwkgKi8KKwlpZiAoV0FSTl9PTl9PTkNFKGZsYWcgJiBfX0dGUF9DT01QKSkKKwkJ
ZmxhZyAmPSB+X19HRlBfQ09NUDsKKwogCWlmIChkbWFfaXNfZGlyZWN0KG9wcykpCiAJCWNwdV9h
ZGRyID0gZG1hX2RpcmVjdF9hbGxvYyhkZXYsIHNpemUsIGRtYV9oYW5kbGUsIGZsYWcsIGF0dHJz
KTsKIAllbHNlIGlmIChvcHMtPmFsbG9jKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
