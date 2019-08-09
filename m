Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6E587838
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 13:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F89B6ED53;
	Fri,  9 Aug 2019 11:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE8D6ED82
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 11:08:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17941982-1500050 
 for multiple; Fri, 09 Aug 2019 12:07:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 12:07:52 +0100
Message-Id: <20190809110752.19763-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Free the imported shmemfs file for
 phys objects
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF0dGhldyBzcG90dGVkIHRoYXQgd2UgbG9zdCB0aGUgZnB1dCgpIGZvciBwaHlzIG9iamVjdHMg
bm93IHRoYXQgd2UgYXJlCm5vdCByZWx5aW5nIG9uIHRoZSBjb3JlIHRvIGNsZWFudXAgdGhlIEdF
TSBvYmplY3QuIChGb3IgdGhlIHJlY29yZCwgcGh5cwpvYmplY3RzIGltcG9ydCB0aGUgc2htZW1m
cyBmcm9tIHRoZWlyIG9yaWdpbmFsIHNldCBvZiBwYWdlcyBhbmQga2VlcCBpdAp0byBwcm92aWRl
IHN3YXAgc3BhY2UsIGJ1dCB3ZSBuZXZlciB0cmFuc2Zvcm0gYmFjayBpbnRvIGEgc2htZW0gb2Jq
ZWN0LikKClJlcG9ydGVkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpG
aXhlczogMGMxNTlmZmVmNjI4ICgiZHJtL2k5MTUvZ2VtOiBEZWZlciBvYmotPmJhc2UucmVzdiBm
aW5pIHVudGlsIFJDVSBjYWxsYmFjayIpCkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGh5cy5jIHwgNyArKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9waHlzLmMKaW5kZXggMTAyZmQ3YTIzZDNkLi43NjgzNTY5MDgxNjAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYwpAQCAtMTMzLDkgKzEzMywx
NiBAQCBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX3BoeXMoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKIAlkcm1fcGNpX2ZyZWUob2JqLT5iYXNlLmRldiwgb2JqLT5waHlzX2hhbmRs
ZSk7CiB9CiAKK3N0YXRpYyB2b2lkIHBoeXNfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQoreworCWZwdXQob2JqLT5iYXNlLmZpbHApOworfQorCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX3BoeXNfb3BzID0gewogCS5n
ZXRfcGFnZXMgPSBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX3BoeXMsCiAJLnB1dF9wYWdlcyA9
IGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfcGh5cywKKworCS5yZWxlYXNlID0gcGh5c19yZWxl
YXNlLAogfTsKIAogaW50IGk5MTVfZ2VtX29iamVjdF9hdHRhY2hfcGh5cyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLCBpbnQgYWxpZ24pCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
