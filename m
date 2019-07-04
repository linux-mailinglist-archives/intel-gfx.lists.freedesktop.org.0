Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C4D5FB26
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 17:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66C889332;
	Thu,  4 Jul 2019 15:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3674E892D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 15:44:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 08:44:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="187604412"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jul 2019 08:44:23 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 91357840181; Thu,  4 Jul 2019 18:44:09 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 18:44:06 +0300
Message-Id: <20190704154407.25551-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
References: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: Tear down setup and cleanup
 macros for page dma
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZG9uJ3QgdXNlIGNvbW1vbiBjb2RlcGF0aHMgdG8gc2V0dXAgYW5kIGNsZWFudXAgcGFnZQpk
aXJlY3RvcmllcyB2cyBwYWdlIHRhYmxlcy4gU28gdGhlaXIgc2V0dXAgYW5kIGNsZWFudXAgbWFj
cm9zCmFyZSBvZiBubyB1c2UuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIHwgMTIgKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNDcwOTk0
OGE2YzBlLi44NGUxMTlkN2E1ZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBA
IC01OTQsOCArNTk0LDYgQEAgc3RhdGljIHZvaWQgY2xlYW51cF9wYWdlX2RtYShzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSwKIAogI2RlZmluZSBrbWFwX2F0b21pY19weChweCkga21hcF9h
dG9taWMocHhfYmFzZShweCktPnBhZ2UpCiAKLSNkZWZpbmUgc2V0dXBfcHgodm0sIHB4KSBzZXR1
cF9wYWdlX2RtYSgodm0pLCBweF9iYXNlKHB4KSkKLSNkZWZpbmUgY2xlYW51cF9weCh2bSwgcHgp
IGNsZWFudXBfcGFnZV9kbWEoKHZtKSwgcHhfYmFzZShweCkpCiAjZGVmaW5lIGZpbGxfcHgodm0s
IHB4LCB2KSBmaWxsX3BhZ2VfZG1hKCh2bSksIHB4X2Jhc2UocHgpLCAodikpCiAjZGVmaW5lIGZp
bGwzMl9weCh2bSwgcHgsIHYpIGZpbGxfcGFnZV9kbWFfMzIoKHZtKSwgcHhfYmFzZShweCksICh2
KSkKIApAQCAtNjk3LDcgKzY5NSw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICph
bGxvY19wdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlpZiAodW5saWtlbHkoIXB0
KSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLQlpZiAodW5saWtlbHkoc2V0dXBfcHgo
dm0sIHB0KSkpIHsKKwlpZiAodW5saWtlbHkoc2V0dXBfcGFnZV9kbWEodm0sICZwdC0+YmFzZSkp
KSB7CiAJCWtmcmVlKHB0KTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAJfQpAQCAtNzA5
LDcgKzcwNyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICphbGxvY19wdChzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAogc3RhdGljIHZvaWQgZnJlZV9wdChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqcHQpCiB7Ci0J
Y2xlYW51cF9weCh2bSwgcHQpOworCWNsZWFudXBfcGFnZV9kbWEodm0sICZwdC0+YmFzZSk7CiAJ
a2ZyZWUocHQpOwogfQogCkBAIC03NTIsNyArNzUwLDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5ICphbGxvY19wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlp
ZiAodW5saWtlbHkoIXBkKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLQlpZiAodW5s
aWtlbHkoc2V0dXBfcHgodm0sIHBkKSkpIHsKKwlpZiAodW5saWtlbHkoc2V0dXBfcGFnZV9kbWEo
dm0sICZwZC0+YmFzZSkpKSB7CiAJCWtmcmVlKHBkKTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7CiAJfQpAQCAtNzY5LDcgKzc2Nyw3IEBAIHN0YXRpYyB2b2lkIGZyZWVfcGQoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCSAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAq
cGQpCiB7CiAJaWYgKGxpa2VseShwZF9oYXNfcGh5c19wYWdlKHBkKSkpCi0JCWNsZWFudXBfcHgo
dm0sIHBkKTsKKwkJY2xlYW51cF9wYWdlX2RtYSh2bSwgJnBkLT5iYXNlKTsKIAogCWtmcmVlKHBk
KTsKIH0KQEAgLTE2NDAsNyArMTYzOCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2Vu
OF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJfQogCiAJaWYg
KGk5MTVfdm1faXNfNGx2bCgmcHBndHQtPnZtKSkgewotCQllcnIgPSBzZXR1cF9weCgmcHBndHQt
PnZtLCBwcGd0dC0+cGQpOworCQllcnIgPSBzZXR1cF9wYWdlX2RtYSgmcHBndHQtPnZtLCAmcHBn
dHQtPnBkLT5iYXNlKTsKIAkJaWYgKGVycikKIAkJCWdvdG8gZXJyX2ZyZWVfcGRwOwogCi0tIAoy
LjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
