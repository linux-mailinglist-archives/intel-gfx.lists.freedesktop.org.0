Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571D48B91
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:13:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C28A892FE;
	Mon, 17 Jun 2019 18:13:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79AA892EA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:12:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:12:58 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2019 11:12:57 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 19:12:11 +0100
Message-Id: <20190617181236.7981-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 08/33] drm/i915: Use intel_uncore_rmw in
 intel_gt_init_swizzling
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClR3byBlYXN5
IG9wcG9ydHVuaXRpZXMgdG8gY29tcGFjdCB0aGUgY29kZSBieSB1c2luZyB0aGUgZXhpc3Rpbmcg
aGVscGVyLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgfCA5ICsr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCmluZGV4IGRkMDk3OTBj
NDIwZC4uYmNhYzM1OWVjNjYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9mZW5jZV9yZWcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5j
ZV9yZWcuYwpAQCAtODQ0LDE3ICs4NDQsMTIgQEAgdm9pZCBpbnRlbF9ndF9pbml0X3N3aXp6bGlu
ZyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCSAgICBpOTE1LT5tbS5iaXRfNl9zd2l6emxlX3ggPT0g
STkxNV9CSVRfNl9TV0laWkxFX05PTkUpCiAJCXJldHVybjsKIAotCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsCi0JCQkgICBESVNQX0FSQl9DVEwsCi0JCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1
bmNvcmUsIERJU1BfQVJCX0NUTCkgfAotCQkJICAgRElTUF9USUxFX1NVUkZBQ0VfU1dJWlpMSU5H
KTsKKwlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgRElTUF9BUkJfQ1RMLCAwLCBESVNQX1RJTEVf
U1VSRkFDRV9TV0laWkxJTkcpOwogCiAJaWYgKElTX0dFTihpOTE1LCA1KSkKIAkJcmV0dXJuOwog
Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCSAgIFRJTEVDVEwsCi0JCQkgICBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIFRJTEVDVEwpIHwgVElMRUNUTF9TV1pDVEwpOworCWludGVs
X3VuY29yZV9ybXcodW5jb3JlLCBUSUxFQ1RMLCAwLCBUSUxFQ1RMX1NXWkNUTCk7CiAKIAlpZiAo
SVNfR0VOKGk5MTUsIDYpKQogCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
