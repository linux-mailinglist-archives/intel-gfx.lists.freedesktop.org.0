Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC94519E0A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DA5897BC;
	Fri, 10 May 2019 13:22:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E4289362
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 13:22:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 06:22:50 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.28.3])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2019 06:22:49 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 14:22:36 +0100
Message-Id: <20190510132240.11029-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
References: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/6] drm/i915: Track per-context engine busyness
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNvbWUgY3Vz
dG9tZXJzIHdhbnQgdG8ga25vdyBob3cgbXVjaCBvZiB0aGUgR1BVIHRpbWUgYXJlIHRoZWlyIGNs
aWVudHMKdXNpbmcgaW4gb3JkZXIgdG8gbWFrZSBkeW5hbWljIGxvYWQgYmFsYW5jaW5nIGRlY2lz
aW9ucy4KCldpdGggdGhlIGhvb2tzIGFscmVhZHkgaW4gcGxhY2Ugd2hpY2ggdHJhY2sgdGhlIG92
ZXJhbGwgZW5naW5lIGJ1c3luZXNzLAp3ZSBjYW4gZXh0ZW5kIHRoYXQgc2xpZ2h0bHkgdG8gc3Bs
aXQgdGhhdCB0aW1lIGJldHdlZW4gY29udGV4dHMuCgp2MjogRml4IGFjY291bnRpbmcgZm9yIHRh
aWwgdXBkYXRlcy4KdjM6IFJlYmFzZS4KdjQ6IE1hcmsgY3VycmVudGx5IHJ1bm5pbmcgY29udGV4
dHMgYXMgYWN0aXZlIG9uIHN0YXRzIGVuYWJsZS4KdjU6IEluY2x1ZGUgc29tZSBoZWFkZXJzIHRv
IGZpeCB0aGUgYnVpbGQuCnY2OiBBZGRlZCBmaW5lIGdyYWluZWQgbG9jay4Kdjc6IENvbnZlcnQg
dG8gc2VxbG9jay4gKENocmlzIFdpbHNvbikKdjg6IFJlYmFzZSBhbmQgdGlkeSB3aXRoIGhlbHBl
cnMuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyAgICAgICB8
IDIxICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaCAgICAg
ICB8ICA5ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5o
IHwgIDkgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAg
fCAgOCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8
IDYyICsrKysrKysrKysrKysrKystLS0KIDUgZmlsZXMgY2hhbmdlZCwgOTkgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
CmluZGV4IDViMzFlMWUwNWRkZC4uOWFkZjYzZmYwMmUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jCkBAIC0xMjUsNiArMTI1LDggQEAgaW50ZWxfY29udGV4dF9pbml0
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAogCWk5MTVfYWN0aXZlX3JlcXVlc3RfaW5pdCgm
Y2UtPmFjdGl2ZV90cmFja2VyLAogCQkJCSBOVUxMLCBpbnRlbF9jb250ZXh0X3JldGlyZSk7CisK
KwlzZXFsb2NrX2luaXQoJmNlLT5zdGF0cy5sb2NrKTsKIH0KIAogc3RhdGljIHZvaWQgaTkxNV9n
bG9iYWxfY29udGV4dF9zaHJpbmsodm9pZCkKQEAgLTE3NywzICsxNzksMjIgQEAgc3RydWN0IGk5
MTVfcmVxdWVzdCAqaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCiAKIAlyZXR1cm4gcnE7CiB9CisKK2t0aW1lX3QgaW50ZWxfY29udGV4dF9nZXRf
YnVzeV90aW1lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwl1bnNpZ25lZCBpbnQgc2Vx
OworCWt0aW1lX3QgdG90YWw7CisKKwlkbyB7CisJCXNlcSA9IHJlYWRfc2VxYmVnaW4oJmNlLT5z
dGF0cy5sb2NrKTsKKworCQl0b3RhbCA9IGNlLT5zdGF0cy50b3RhbDsKKworCQlpZiAoY2UtPnN0
YXRzLmFjdGl2ZSkKKwkJCXRvdGFsID0ga3RpbWVfYWRkKHRvdGFsLAorCQkJCQkgIGt0aW1lX3N1
YihrdGltZV9nZXQoKSwKKwkJCQkJCSAgICBjZS0+c3RhdHMuc3RhcnQpKTsKKwl9IHdoaWxlIChy
ZWFkX3NlcXJldHJ5KCZjZS0+c3RhdHMubG9jaywgc2VxKSk7CisKKwlyZXR1cm4gdG90YWw7Cit9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmgKaW5kZXggNjMzOTJjODhjZDk4
Li42NTdkY2RjZTcxNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmgK
QEAgLTEyNyw0ICsxMjcsMTMgQEAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX2NvbnRleHRfdGlt
ZWxpbmVfdW5sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogc3RydWN0IGk5MTVfcmVx
dWVzdCAqaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpOwogCitzdGF0aWMgaW5saW5lIHZvaWQKK19faW50ZWxfY29udGV4dF9zdGF0c19zdGFydChz
dHJ1Y3QgaW50ZWxfY29udGV4dF9zdGF0cyAqc3RhdHMsIGt0aW1lX3Qgbm93KQoreworCXN0YXRz
LT5zdGFydCA9IG5vdzsKKwlzdGF0cy0+YWN0aXZlID0gdHJ1ZTsKK30KKwora3RpbWVfdCBpbnRl
bF9jb250ZXh0X2dldF9idXN5X3RpbWUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKTsKKwogI2Vu
ZGlmIC8qIF9fSU5URUxfQ09OVEVYVF9IX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2NvbnRleHRfdHlwZXMuaAppbmRleCA5NjNhMzEyNDMwZTYuLmIzMzc3MGYzOTZlMiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaApAQCAt
MTEsNiArMTEsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KICNpbmNsdWRlIDxsaW51eC9t
dXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisjaW5jbHVkZSA8bGludXgvc2VxbG9j
ay5oPgogCiAjaW5jbHVkZSAiaTkxNV9hY3RpdmVfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9l
bmdpbmVfdHlwZXMuaCIKQEAgLTY1LDYgKzY2LDE0IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0IHsK
IAogCS8qKiBzc2V1OiBDb250cm9sIGV1L3NsaWNlIHBhcnRpdGlvbmluZyAqLwogCXN0cnVjdCBp
bnRlbF9zc2V1IHNzZXU7CisKKwkvKiogc3RhdHM6IENvbnRleHQgR1BVIGVuZ2luZSBidXN5bmVz
cyB0cmFja2luZy4gKi8KKwlzdHJ1Y3QgaW50ZWxfY29udGV4dF9zdGF0cyB7CisJCXNlcWxvY2tf
dCBsb2NrOworCQlib29sIGFjdGl2ZTsKKwkJa3RpbWVfdCBzdGFydDsKKwkJa3RpbWVfdCB0b3Rh
bDsKKwl9IHN0YXRzOwogfTsKIAogI2VuZGlmIC8qIF9fSU5URUxfQ09OVEVYVF9UWVBFU19fICov
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDRjMzc1M2Mx
YjU3My4uYzk3MjY5ZTFiZWIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwpAQCAtMTU1OSw2ICsxNTU5LDE0IEBAIGludCBpbnRlbF9lbmFibGVfZW5naW5lX3N0
YXRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCQllbmdpbmUtPnN0YXRzLmVu
YWJsZWRfYXQgPSBrdGltZV9nZXQoKTsKIAorCQkvKiBNYXJrIGN1cnJlbnRseSBydW5uaW5nIGNv
bnRleHQgYXMgYWN0aXZlLiAqLworCQlpZiAocG9ydF9pc3NldChwb3J0KSkgeworCQkJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEgPSBwb3J0X3JlcXVlc3QocG9ydCk7CisKKwkJCV9faW50ZWxfY29u
dGV4dF9zdGF0c19zdGFydCgmcnEtPmh3X2NvbnRleHQtPnN0YXRzLAorCQkJCQkJICAgIGVuZ2lu
ZS0+c3RhdHMuZW5hYmxlZF9hdCk7CisJCX0KKwogCQkvKiBYWFggc3VibWlzc2lvbiBtZXRob2Qg
b2JsaXZpb3VzPyAqLwogCQl3aGlsZSAobnVtX3BvcnRzLS0gJiYgcG9ydF9pc3NldChwb3J0KSkg
ewogCQkJZW5naW5lLT5zdGF0cy5hY3RpdmUrKzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKaW5kZXggMTcwZTM5NDIwNmNhLi4zYTk2YmRkZjk0NzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCkBAIC00NTQsMTggKzQ1NCw0OCBAQCBleGVjbGlzdHNfY29udGV4dF9zdGF0
dXNfY2hhbmdlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1bnNpZ25lZCBsb25nIHN0YXR1cykK
IH0KIAogc3RhdGljIGlubGluZSB2b2lkCi1pbnRlbF9lbmdpbmVfY29udGV4dF9pbihzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCitpbnRlbF9jb250ZXh0X3N0YXRzX3N0YXJ0KHN0cnVj
dCBpbnRlbF9jb250ZXh0X3N0YXRzICpzdGF0cywga3RpbWVfdCBub3cpCiB7CisJd3JpdGVfc2Vx
bG9jaygmc3RhdHMtPmxvY2spOworCV9faW50ZWxfY29udGV4dF9zdGF0c19zdGFydChzdGF0cywg
bm93KTsKKwl3cml0ZV9zZXF1bmxvY2soJnN0YXRzLT5sb2NrKTsKK30KKworc3RhdGljIGlubGlu
ZSB2b2lkCitpbnRlbF9jb250ZXh0X3N0YXRzX3N0b3Aoc3RydWN0IGludGVsX2NvbnRleHRfc3Rh
dHMgKnN0YXRzLCBrdGltZV90IG5vdykKK3sKKwl3cml0ZV9zZXFsb2NrKCZzdGF0cy0+bG9jayk7
CisJR0VNX0JVR19PTighc3RhdHMtPnN0YXJ0KTsKKwlzdGF0cy0+dG90YWwgPSBrdGltZV9hZGQo
c3RhdHMtPnRvdGFsLCBrdGltZV9zdWIobm93LCBzdGF0cy0+c3RhcnQpKTsKKwlzdGF0cy0+YWN0
aXZlID0gZmFsc2U7CisJd3JpdGVfc2VxdW5sb2NrKCZzdGF0cy0+bG9jayk7Cit9CisKK3N0YXRp
YyBpbmxpbmUgdm9pZAoraW50ZWxfY29udGV4dF9pbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
IGJvb2wgc3VibWl0KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGNlLT5l
bmdpbmU7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKKwlrdGltZV90IG5vdzsKIAogCWlmIChSRUFE
X09OQ0UoZW5naW5lLT5zdGF0cy5lbmFibGVkKSA9PSAwKQogCQlyZXR1cm47CiAKIAl3cml0ZV9z
ZXFsb2NrX2lycXNhdmUoJmVuZ2luZS0+c3RhdHMubG9jaywgZmxhZ3MpOwogCisJaWYgKHN1Ym1p
dCkgeworCQlub3cgPSBrdGltZV9nZXQoKTsKKwkJaW50ZWxfY29udGV4dF9zdGF0c19zdGFydCgm
Y2UtPnN0YXRzLCBub3cpOworCX0gZWxzZSB7CisJCW5vdyA9IDA7CisJfQorCiAJaWYgKGVuZ2lu
ZS0+c3RhdHMuZW5hYmxlZCA+IDApIHsKLQkJaWYgKGVuZ2luZS0+c3RhdHMuYWN0aXZlKysgPT0g
MCkKLQkJCWVuZ2luZS0+c3RhdHMuc3RhcnQgPSBrdGltZV9nZXQoKTsKKwkJaWYgKGVuZ2luZS0+
c3RhdHMuYWN0aXZlKysgPT0gMCkgeworCQkJaWYgKCFub3cpCisJCQkJbm93ID0ga3RpbWVfZ2V0
KCk7CisJCQllbmdpbmUtPnN0YXRzLnN0YXJ0ID0gbm93OworCQl9CiAJCUdFTV9CVUdfT04oZW5n
aW5lLT5zdGF0cy5hY3RpdmUgPT0gMCk7CiAJfQogCkBAIC00NzMsOCArNTAzLDkgQEAgaW50ZWxf
ZW5naW5lX2NvbnRleHRfaW4oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogfQogCiBz
dGF0aWMgaW5saW5lIHZvaWQKLWludGVsX2VuZ2luZV9jb250ZXh0X291dChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCitpbnRlbF9jb250ZXh0X291dChzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UpCiB7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gY2UtPmVuZ2luZTsK
IAl1bnNpZ25lZCBsb25nIGZsYWdzOwogCiAJaWYgKFJFQURfT05DRShlbmdpbmUtPnN0YXRzLmVu
YWJsZWQpID09IDApCkBAIC00ODMsMTQgKzUxNCwyNSBAQCBpbnRlbF9lbmdpbmVfY29udGV4dF9v
dXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCXdyaXRlX3NlcWxvY2tfaXJxc2F2
ZSgmZW5naW5lLT5zdGF0cy5sb2NrLCBmbGFncyk7CiAKIAlpZiAoZW5naW5lLT5zdGF0cy5lbmFi
bGVkID4gMCkgeworCQlzdHJ1Y3QgZXhlY2xpc3RfcG9ydCAqbmV4dF9wb3J0ID0gJmVuZ2luZS0+
ZXhlY2xpc3RzLnBvcnRbMV07CisJCWt0aW1lX3Qgbm93ID0ga3RpbWVfZ2V0KCk7CiAJCWt0aW1l
X3QgbGFzdDsKIAorCQlpbnRlbF9jb250ZXh0X3N0YXRzX3N0b3AoJmNlLT5zdGF0cywgbm93KTsK
KworCQlpZiAocG9ydF9pc3NldChuZXh0X3BvcnQpKSB7CisJCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpuZXh0X3JxID0gcG9ydF9yZXF1ZXN0KG5leHRfcG9ydCk7CisKKwkJCWludGVsX2NvbnRleHRf
c3RhdHNfc3RhcnQoJm5leHRfcnEtPmh3X2NvbnRleHQtPnN0YXRzLAorCQkJCQkJICBub3cpOwor
CQl9CisKIAkJaWYgKGVuZ2luZS0+c3RhdHMuYWN0aXZlICYmIC0tZW5naW5lLT5zdGF0cy5hY3Rp
dmUgPT0gMCkgewogCQkJLyoKIAkJCSAqIERlY3JlbWVudCB0aGUgYWN0aXZlIGNvbnRleHQgY291
bnQgYW5kIGluIGNhc2UgR1BVCiAJCQkgKiBpcyBub3cgaWRsZSBhZGQgdXAgdG8gdGhlIHJ1bm5p
bmcgdG90YWwuCiAJCQkgKi8KLQkJCWxhc3QgPSBrdGltZV9zdWIoa3RpbWVfZ2V0KCksIGVuZ2lu
ZS0+c3RhdHMuc3RhcnQpOworCQkJbGFzdCA9IGt0aW1lX3N1Yihub3csIGVuZ2luZS0+c3RhdHMu
c3RhcnQpOwogCiAJCQllbmdpbmUtPnN0YXRzLnRvdGFsID0ga3RpbWVfYWRkKGVuZ2luZS0+c3Rh
dHMudG90YWwsCiAJCQkJCQkJbGFzdCk7CkBAIC01MDAsNyArNTQyLDcgQEAgaW50ZWxfZW5naW5l
X2NvbnRleHRfb3V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCSAqIHRoZSBm
aXJzdCBldmVudCBpbiB3aGljaCBjYXNlIHdlIGFjY291bnQgZnJvbSB0aGUKIAkJCSAqIHRpbWUg
c3RhdHMgZ2F0aGVyaW5nIHdhcyB0dXJuZWQgb24uCiAJCQkgKi8KLQkJCWxhc3QgPSBrdGltZV9z
dWIoa3RpbWVfZ2V0KCksIGVuZ2luZS0+c3RhdHMuZW5hYmxlZF9hdCk7CisJCQlsYXN0ID0ga3Rp
bWVfc3ViKG5vdywgZW5naW5lLT5zdGF0cy5lbmFibGVkX2F0KTsKIAogCQkJZW5naW5lLT5zdGF0
cy50b3RhbCA9IGt0aW1lX2FkZChlbmdpbmUtPnN0YXRzLnRvdGFsLAogCQkJCQkJCWxhc3QpOwpA
QCAtNTI0LDEyICs1NjYsMTIgQEAgZXhlY2xpc3RzX3VzZXJfZW5kKHN0cnVjdCBpbnRlbF9lbmdp
bmVfZXhlY2xpc3RzICpleGVjbGlzdHMpCiB9CiAKIHN0YXRpYyBpbmxpbmUgdm9pZAotZXhlY2xp
c3RzX2NvbnRleHRfc2NoZWR1bGVfaW4oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCitleGVjbGlz
dHNfY29udGV4dF9zY2hlZHVsZV9pbihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdW5zaWduZWQg
aW50IHBvcnQpCiB7CiAJR0VNX0JVR19PTihycS0+aHdfY29udGV4dC0+YWN0aXZlKTsKIAogCWV4
ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFuZ2UocnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVf
SU4pOwotCWludGVsX2VuZ2luZV9jb250ZXh0X2luKHJxLT5lbmdpbmUpOworCWludGVsX2NvbnRl
eHRfaW4ocnEtPmh3X2NvbnRleHQsIHBvcnQgPT0gMCk7CiAJcnEtPmh3X2NvbnRleHQtPmFjdGl2
ZSA9IHJxLT5lbmdpbmU7CiB9CiAKQEAgLTUzNyw3ICs1NzksNyBAQCBzdGF0aWMgaW5saW5lIHZv
aWQKIGV4ZWNsaXN0c19jb250ZXh0X3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSwgdW5zaWduZWQgbG9uZyBzdGF0dXMpCiB7CiAJcnEtPmh3X2NvbnRleHQtPmFjdGl2ZSA9IE5V
TEw7Ci0JaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KHJxLT5lbmdpbmUpOworCWludGVsX2NvbnRl
eHRfb3V0KHJxLT5od19jb250ZXh0KTsKIAlleGVjbGlzdHNfY29udGV4dF9zdGF0dXNfY2hhbmdl
KHJxLCBzdGF0dXMpOwogCXRyYWNlX2k5MTVfcmVxdWVzdF9vdXQocnEpOwogfQpAQCAtNjEwLDcg
KzY1Miw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQogCQlpZiAocnEpIHsKIAkJCUdFTV9CVUdfT04oY291bnQgPiAh
bik7CiAJCQlpZiAoIWNvdW50KyspCi0JCQkJZXhlY2xpc3RzX2NvbnRleHRfc2NoZWR1bGVfaW4o
cnEpOworCQkJCWV4ZWNsaXN0c19jb250ZXh0X3NjaGVkdWxlX2luKHJxLCBuKTsKIAkJCXBvcnRf
c2V0KCZwb3J0W25dLCBwb3J0X3BhY2socnEsIGNvdW50KSk7CiAJCQlkZXNjID0gZXhlY2xpc3Rz
X3VwZGF0ZV9jb250ZXh0KHJxKTsKIAkJCUdFTV9ERUJVR19FWEVDKHBvcnRbbl0uY29udGV4dF9p
ZCA9IHVwcGVyXzMyX2JpdHMoZGVzYykpOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
