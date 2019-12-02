Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D4210EBC1
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 15:47:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723D389F35;
	Mon,  2 Dec 2019 14:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D758089F35
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 14:47:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19429148-1500050 
 for multiple; Mon, 02 Dec 2019 14:47:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 14:47:00 +0000
Message-Id: <20191202144702.2536644-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202144702.2536644-1-chris@chris-wilson.co.uk>
References: <20191202144702.2536644-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Manually flush barriers on
 eviction
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgdGhlIGNhbGxlciBtYXkgYmUga2VlcGluZyB0aGUgZW5naW5lcyBhd2FrZSwgZXZlbiB0aG91
Z2gKd2FpdC1mb3ItaWRsZSB3aWxsIGZsdXNoIHRoZSBjb250ZXh0cywgdGhlIGNvbnRleHRzIHdp
bGwgbm90IGJlIHVucGlubmVkCnVudGlsIHRoZSBlbmdpbmUgaXMgcGFya2VkLiBNYW51YWxseSBm
bHVzaCB0aGUgaWRsZSBiYXJyaWVycyB0byBlbnN1cmUKdGhhdCBhbnkgY29udGV4dCB0aGF0IGNh
biBiZSB1bnBpbm5lZCwgd2lsbCBiZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2V2aWN0LmMgfCAyMSArKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZXZpY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2
aWN0LmMKaW5kZXggN2U2MmMzMTAyOTBmLi4wZmY0YmU5YjI5NTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZXZpY3QuYwpAQCAtMjgsNyArMjgsNyBAQAogCiAjaW5jbHVkZSA8ZHJtL2k5
MTVfZHJtLmg+CiAKLSNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgorI2luY2x1ZGUg
Imd0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9yZXF1
ZXN0cy5oIgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKQEAgLTQwLDYgKzQwLDEwIEBAIEk5MTVf
U0VMRlRFU1RfREVDTEFSRShzdGF0aWMgc3RydWN0IGlndF9ldmljdF9jdGwgewogCiBzdGF0aWMg
aW50IGdndHRfZmx1c2goc3RydWN0IGludGVsX2d0ICpndCkKIHsKKwlzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50IHJldDsKKwog
CS8qCiAJICogTm90IGV2ZXJ5dGhpbmcgaW4gdGhlIEdHVFQgaXMgdHJhY2tlZCB2aWEgdm1hIChv
dGhlcndpc2Ugd2UKIAkgKiBjb3VsZCBldmljdCBhcyByZXF1aXJlZCB3aXRoIG1pbmltYWwgc3Rh
bGxpbmcpIHNvIHdlIGFyZSBmb3JjZWQKQEAgLTQ3LDYgKzUxLDIxIEBAIHN0YXRpYyBpbnQgZ2d0
dF9mbHVzaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCSAqIHRoZSBob3BlcyB0aGF0IHdlIGNhbiB0
aGVuIHJlbW92ZSBjb250ZXh0cyBhbmQgdGhlIGxpa2Ugb25seQogCSAqIGJvdW5kIGJ5IHRoZWly
IGFjdGl2ZSByZWZlcmVuY2UuCiAJICovCisJcmV0ID0gaW50ZWxfZ3Rfd2FpdF9mb3JfaWRsZShn
dCwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwkv
KgorCSAqIFRoZSBlbmdpbmVzIG1heSBiZSBrZXB0IGF3YWtlIGJ5IHRoZSBjYWxsZXIgYW5kIHNv
IHNraXAgdGhlIGV4cGVjdGVkCisJICogYmFycmllciBmbHVzaGVzIChuZWVkZWQgZm9yIHVucGlu
bmluZyBjb250ZXh0cykgdXBvbiBwYXJraW5nLgorCSAqLworCWZvcl9lYWNoX2VuZ2luZShlbmdp
bmUsIGd0LCBpZCkgeworCQlyZXQgPSBpbnRlbF9lbmdpbmVfZmx1c2hfYmFycmllcnMoZW5naW5l
KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisJfQorCisJLyogQW5kIG9uY2UgbW9yZSBm
b3IgdGhlIGJhcnJpZXJzICovCiAJcmV0dXJuIGludGVsX2d0X3dhaXRfZm9yX2lkbGUoZ3QsIE1B
WF9TQ0hFRFVMRV9USU1FT1VUKTsKIH0KIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
