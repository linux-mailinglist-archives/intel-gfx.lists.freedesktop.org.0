Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266DE4A17C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A756E171;
	Tue, 18 Jun 2019 13:04:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B756E171
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:04:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="160053281"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 06:04:02 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 14:03:22 +0100
Message-Id: <20190618130345.6135-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
References: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/33] drm/i915: Convert gt workarounds to
 intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgY29u
dmVyc2lvbiBvZiBpOTE1X2dlbV9pbml0X2h3IHRvIHVuY29yZS4KClNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMTAgKysrKystLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuaCB8ICA2ICsrKy0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICB8ICA0ICsrLS0KIDMgZmlsZXMgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggMTY1YjBhNDVlMDA5Li4wYjMzMDhlMzlh
MTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAt
Niw2ICs2LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfY29u
dGV4dC5oIgorI2luY2x1ZGUgImludGVsX2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxfd29ya2Fyb3Vu
ZHMuaCIKIAogLyoqCkBAIC05ODQsOSArOTg1LDkgQEAgd2FfbGlzdF9hcHBseShzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUsIGNvbnN0IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZ1bmNvcmUtPmxvY2ssIGZsYWdzKTsKIH0KIAotdm9pZCBpbnRl
bF9ndF9hcHBseV93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3Zv
aWQgaW50ZWxfZ3RfYXBwbHlfd29ya2Fyb3VuZHMoc3RydWN0IGludGVsX2d0ICpndCkKIHsKLQl3
YV9saXN0X2FwcGx5KCZpOTE1LT51bmNvcmUsICZpOTE1LT5ndF93YV9saXN0KTsKKwl3YV9saXN0
X2FwcGx5KGd0LT51bmNvcmUsICZndC0+aTkxNS0+Z3Rfd2FfbGlzdCk7CiB9CiAKIHN0YXRpYyBi
b29sIHdhX2xpc3RfdmVyaWZ5KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKQEAgLTEwMDUs
MTAgKzEwMDYsOSBAQCBzdGF0aWMgYm9vbCB3YV9saXN0X3ZlcmlmeShzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUsCiAJcmV0dXJuIG9rOwogfQogCi1ib29sIGludGVsX2d0X3ZlcmlmeV93b3Jr
YXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCQkgY29uc3QgY2hhciAq
ZnJvbSkKK2Jvb2wgaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91bmRzKHN0cnVjdCBpbnRlbF9ndCAq
Z3QsIGNvbnN0IGNoYXIgKmZyb20pCiB7Ci0JcmV0dXJuIHdhX2xpc3RfdmVyaWZ5KCZpOTE1LT51
bmNvcmUsICZpOTE1LT5ndF93YV9saXN0LCBmcm9tKTsKKwlyZXR1cm4gd2FfbGlzdF92ZXJpZnko
Z3QtPnVuY29yZSwgJmd0LT5pOTE1LT5ndF93YV9saXN0LCBmcm9tKTsKIH0KIAogc3RhdGljIHZv
aWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5oCmluZGV4IDM3
NjFhNmVlNThiYi4uOGM5Yzc2OWMyMjA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmgKQEAgLTE0LDYgKzE0LDcgQEAKIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlOwogc3RydWN0IGk5MTVfcmVxdWVzdDsKIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7CitzdHJ1
Y3QgaW50ZWxfZ3Q7CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF93YV9saXN0X2ZyZWUoc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogewpAQCAtMjUsOSArMjYsOCBAQCB2b2lkIGludGVsX2Vu
Z2luZV9pbml0X2N0eF93YShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogaW50IGlu
dGVsX2VuZ2luZV9lbWl0X2N0eF93YShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSk7CiAKIHZvaWQg
aW50ZWxfZ3RfaW5pdF93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
Ci12b2lkIGludGVsX2d0X2FwcGx5X3dvcmthcm91bmRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKLWJvb2wgaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91bmRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAotCQkJCSBjb25zdCBjaGFyICpmcm9tKTsKK3ZvaWQgaW50ZWxfZ3Rf
YXBwbHlfd29ya2Fyb3VuZHMoc3RydWN0IGludGVsX2d0ICpndCk7Citib29sIGludGVsX2d0X3Zl
cmlmeV93b3JrYXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBjb25zdCBjaGFyICpmcm9tKTsK
IAogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF93aGl0ZWxpc3Qoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKTsKIHZvaWQgaW50ZWxfZW5naW5lX2FwcGx5X3doaXRlbGlzdChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggNmY5NmQz
NjBlOGQ1Li4wYTMxMzI4OWY5ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTI0OCw5
ICsxMjQ4LDkgQEAgaW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCQkJICAgTE9XRVJfU0xJQ0VfRU5BQkxFRCA6IExPV0VSX1NMSUNFX0RJU0FC
TEVEKTsKIAogCS8qIEFwcGx5IHRoZSBHVCB3b3JrYXJvdW5kcy4uLiAqLwotCWludGVsX2d0X2Fw
cGx5X3dvcmthcm91bmRzKGRldl9wcml2KTsKKwlpbnRlbF9ndF9hcHBseV93b3JrYXJvdW5kcygm
ZGV2X3ByaXYtPmd0KTsKIAkvKiAuLi5hbmQgZGV0ZXJtaW5lIHdoZXRoZXIgdGhleSBhcmUgc3Rp
Y2tpbmcuICovCi0JaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91bmRzKGRldl9wcml2LCAiaW5pdCIp
OworCWludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcygmZGV2X3ByaXYtPmd0LCAiaW5pdCIpOwog
CiAJaW50ZWxfZ3RfaW5pdF9zd2l6emxpbmcoJmRldl9wcml2LT5ndCk7CiAKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
