Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF8A14C3C3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 00:52:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B71A6E170;
	Tue, 28 Jan 2020 23:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE636E170
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 23:52:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 15:52:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="252435117"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.252])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jan 2020 15:52:45 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 15:52:41 -0800
Message-Id: <20200128235241.169694-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128235241.169694-1-jose.souza@intel.com>
References: <20200128235241.169694-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dgfx: Do not write in removed FBC
 fence registers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNv
bT4KCmRnZnggcGxhdGZvcm1zIGRvIG5vdCBzdXBwb3J0IENQVSBmZW5jZSBhbmQgRkJDIGhvc3Qg
dHJhY2tpbmcgc28KbGV0cyBhdm9pZCB3cml0ZSB0byByZW1vdmVkIHJlZ2lzdGVycy4KCkNjOiBS
b2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJh
bi5wYW5kaXlhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRh
IDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNyArKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMKaW5kZXggMWYwZDI0YTFkZWMxLi4xMjkwMGI4Y2UyOGUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtMzE0LDcgKzMxNCwxMiBAQCBz
dGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJCWJyZWFrOwogCX0KIAotCWlmIChwYXJhbXMtPmZlbmNlX2lkID49IDApIHsKKwlp
ZiAoSVNfREdGWChkZXZfcHJpdikpIHsKKwkJLyoKKwkJICogZEdGWCBHUFVzIGRvbid0IGhhdmUg
YXBwZXJ0dXJlIG9yIGZlbmNlcyBhbmQgb25seSByZWx5IG9uIEZCQworCQkgKiByZW5kZXIgbnVr
ZSB0byB0cmFjayBmcm9udGJ1ZmZlciBtb2RpZmljYXRpb25zCisJCSAqLworCX0gZWxzZSBpZiAo
cGFyYW1zLT5mZW5jZV9pZCA+PSAwKSB7CiAJCWRwZmNfY3RsIHw9IElWQl9EUEZDX0NUTF9GRU5D
RV9FTjsKIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFNOQl9EUEZDX0NUTF9TQSwKIAkJCSAg
ICAgICBTTkJfQ1BVX0ZFTkNFX0VOQUJMRSB8IHBhcmFtcy0+ZmVuY2VfaWQpOwotLSAKMi4yNS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
