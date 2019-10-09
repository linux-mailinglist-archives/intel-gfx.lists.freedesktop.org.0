Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966CBD1998
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 22:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6E06E1B8;
	Wed,  9 Oct 2019 20:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108B76E321
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 20:36:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18782939-1500050 
 for multiple; Wed, 09 Oct 2019 21:36:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 21:36:32 +0100
Message-Id: <20191009203641.15477-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191009203641.15477-1-chris@chris-wilson.co.uk>
References: <20191009203641.15477-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/perf: Tidy up unpinning the
 oa_context
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

UmVuYW1lIHRoZSBmdW5jdGlvbiBmb3IgY29uc2lzdGVuY3ksIGFuZCByZW1vdmUgdGhlIHJlZHVu
ZGFudCB0ZXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCAxMSArKysr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDZmYTVjOWRjMzhkMy4uMTQ3ZDU1ZTVmYzhk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMTMwNCwxMyArMTMwNCwxMyBAQCBzdGF0
aWMgaW50IG9hX2dldF9yZW5kZXJfY3R4X2lkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0pCiB9CiAKIC8qKgotICogb2FfcHV0X3JlbmRlcl9jdHhfaWQgLSBjb3VudGVycGFydCB0byBv
YV9nZXRfcmVuZGVyX2N0eF9pZCByZWxlYXNlcyBob2xkCisgKiBwdXRfb2FfY29udGV4dCAtIGNv
dW50ZXJwYXJ0IHRvIG9hX2dldF9yZW5kZXJfY3R4X2lkIHJlbGVhc2VzIGhvbGQKICAqIEBzdHJl
YW06IEFuIGk5MTUtcGVyZiBzdHJlYW0gb3BlbmVkIGZvciBPQSBtZXRyaWNzCiAgKgogICogSW4g
Y2FzZSBhbnl0aGluZyBuZWVkZWQgZG9pbmcgdG8gZW5zdXJlIHRoZSBjb250ZXh0IEhXIElEIHdv
dWxkIHJlbWFpbiB2YWxpZAogICogZm9yIHRoZSBsaWZldGltZSBvZiB0aGUgc3RyZWFtLCB0aGVu
IHRoYXQgY2FuIGJlIHVuZG9uZSBoZXJlLgogICovCi1zdGF0aWMgdm9pZCBvYV9wdXRfcmVuZGVy
X2N0eF9pZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQorc3RhdGljIHZvaWQgcHV0
X29hX2NvbnRleHQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIHsKIAlzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2U7CiAKQEAgLTEzNDcsOSArMTM0Nyw3IEBAIHN0YXRpYyB2b2lkIGk5
MTVfb2Ffc3RyZWFtX2Rlc3Ryb3koc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIAlw
ZXJmLT5vcHMuZGlzYWJsZV9tZXRyaWNfc2V0KHN0cmVhbSk7CiAKIAlmcmVlX29hX2J1ZmZlcihz
dHJlYW0pOwotCi0JaWYgKHN0cmVhbS0+Y3R4KQotCQlvYV9wdXRfcmVuZGVyX2N0eF9pZChzdHJl
YW0pOworCXB1dF9vYV9jb250ZXh0KHN0cmVhbSk7CiAKIAlwdXRfb2FfY29uZmlnKHN0cmVhbS0+
b2FfY29uZmlnKTsKIApAQCAtMjIyMCw4ICsyMjE4LDcgQEAgc3RhdGljIGludCBpOTE1X29hX3N0
cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJcHV0X29hX2NvbmZp
ZyhzdHJlYW0tPm9hX2NvbmZpZyk7CiAKIGVycl9jb25maWc6Ci0JaWYgKHN0cmVhbS0+Y3R4KQot
CQlvYV9wdXRfcmVuZGVyX2N0eF9pZChzdHJlYW0pOworCXB1dF9vYV9jb250ZXh0KHN0cmVhbSk7
CiAKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
