Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB908A9FF6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 12:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD006E030;
	Thu,  5 Sep 2019 10:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5AC089D60;
 Thu,  5 Sep 2019 10:40:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="195053707"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga002.jf.intel.com with ESMTP; 05 Sep 2019 03:40:02 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 13:37:45 +0300
Message-Id: <20190905103746.32326-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905103746.32326-1-stanislav.lisovskiy@intel.com>
References: <20190905103746.32326-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] [PATCH v4 2/3] drm: Introduce change counter to
 drm_connector
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBjb3VudGVyIHdpbGwgYmUgdXNlZCBieSBkcm1faGVscGVyX3Byb2JlX2RldGVjdCBjYWxs
ZXIgdG8gZGV0ZXJtaW5lCmlmIHNvbWV0aGluZyBlbHNlIGhhZCBjaGFuZ2VkIGV4Y2VwdCBjb25u
ZWN0aW9uIHN0YXR1cywKbGlrZSBmb3IgZXhhbXBsZSBlZGlkLiBIYXJkd2FyZSBzcGVjaWZpYyBk
cml2ZXJzIGFyZSByZXNwb25zaWJsZQpmb3IgdXBkYXRpbmcgdGhpcyBjb3VudGVyIHdoZW4gc29t
ZSBjaGFuZ2UgaXMgZGV0ZWN0ZWQgdG8gbm90aWZ5CnRoZSBkcm0gcGFydCwgd2hpY2ggY2FuIHRy
aWdnZXIgZm9yIGV4YW1wbGUgaG90cGx1ZyBldmVudC4KCkN1cnJlbnRseSB0aGVyZSBpcyBubyB3
YXkgdG8gcHJvcGFnYXRlIHRoYXQgdG8gYSBjYWxsaW5nIGxheWVyLAphcyB3ZSBzZW5kIG9ubHkg
Y29ubmVjdGlvbl9zdGF0dXMgdXBkYXRlLCBob3dldmVyIGFzIHdlIHNlZSB3aXRoCmVkaWQgdGhl
IGNoYW5nZXMgY2FuIGJlIGJyb2FkZXIuCgp2MjogQWRkZWQgZG9jdW1lbnRhdGlvbiBmb3IgdGhl
IG5ldyBjb3VudGVyLiBSZW5hbWUgY2hhbmdlX2NvdW50ZXIgdG8KICAgIGVwb2NoX2NvdW50ZXIu
CgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA1NTQwClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgICAg
fCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5jIHwgMjkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0KIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAgICAgICAg
fCAgMyArKysKIDMgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwppbmRleCA0Yzc2NjYyNGIyMGQuLjE4YjFhZDJhNGVl
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jCkBAIC0yNDYsNiArMjQ2LDcgQEAgaW50IGRybV9j
b25uZWN0b3JfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCUlOSVRfTElTVF9IRUFEKCZj
b25uZWN0b3ItPm1vZGVzKTsKIAltdXRleF9pbml0KCZjb25uZWN0b3ItPm11dGV4KTsKIAljb25u
ZWN0b3ItPmVkaWRfYmxvYl9wdHIgPSBOVUxMOworCWNvbm5lY3Rvci0+ZXBvY2hfY291bnRlciA9
IDA7CiAJY29ubmVjdG9yLT50aWxlX2Jsb2JfcHRyID0gTlVMTDsKIAljb25uZWN0b3ItPnN0YXR1
cyA9IGNvbm5lY3Rvcl9zdGF0dXNfdW5rbm93bjsKIAljb25uZWN0b3ItPmRpc3BsYXlfaW5mby5w
YW5lbF9vcmllbnRhdGlvbiA9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2Jl
X2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYwppbmRleCAzNTFj
YmM0MGYwZjguLjUxMzFhZTU2ZTY3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9w
cm9iZV9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5jCkBA
IC03NzcsNiArNzc3LDcgQEAgYm9vbCBkcm1faGVscGVyX2hwZF9pcnFfZXZlbnQoc3RydWN0IGRy
bV9kZXZpY2UgKmRldikKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXIgY29ubl9pdGVy
OwogCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgb2xkX3N0YXR1czsKIAlib29sIGNoYW5nZWQg
PSBmYWxzZTsKKwl1aW50NjRfdCBvbGRfZXBvY2hfY291bnRlcjsKIAogCWlmICghZGV2LT5tb2Rl
X2NvbmZpZy5wb2xsX2VuYWJsZWQpCiAJCXJldHVybiBmYWxzZTsKQEAgLTc5MCwyMCArNzkxLDQ0
IEBAIGJvb2wgZHJtX2hlbHBlcl9ocGRfaXJxX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAKIAkJb2xkX3N0YXR1cyA9IGNvbm5lY3Rvci0+c3RhdHVzOwogCisJCW9sZF9lcG9jaF9jb3Vu
dGVyID0gY29ubmVjdG9yLT5lcG9jaF9jb3VudGVyOworCisJCURSTV9ERUJVR19LTVMoIltDT05O
RUNUT1I6JWQ6JXNdIE9sZCBjaGFuZ2UgY291bnRlciAlbGx1XG4iLCBjb25uZWN0b3ItPmJhc2Uu
aWQsCisJCQkgICAgICBjb25uZWN0b3ItPm5hbWUsCisJCQkgICAgICBvbGRfZXBvY2hfY291bnRl
cik7CisKIAkJY29ubmVjdG9yLT5zdGF0dXMgPSBkcm1faGVscGVyX3Byb2JlX2RldGVjdChjb25u
ZWN0b3IsIE5VTEwsIGZhbHNlKTsKIAkJRFJNX0RFQlVHX0tNUygiW0NPTk5FQ1RPUjolZDolc10g
c3RhdHVzIHVwZGF0ZWQgZnJvbSAlcyB0byAlc1xuIiwKIAkJCSAgICAgIGNvbm5lY3Rvci0+YmFz
ZS5pZCwKIAkJCSAgICAgIGNvbm5lY3Rvci0+bmFtZSwKIAkJCSAgICAgIGRybV9nZXRfY29ubmVj
dG9yX3N0YXR1c19uYW1lKG9sZF9zdGF0dXMpLAogCQkJICAgICAgZHJtX2dldF9jb25uZWN0b3Jf
c3RhdHVzX25hbWUoY29ubmVjdG9yLT5zdGF0dXMpKTsKLQkJaWYgKG9sZF9zdGF0dXMgIT0gY29u
bmVjdG9yLT5zdGF0dXMpCisKKwkJRFJNX0RFQlVHX0tNUygiW0NPTk5FQ1RPUjolZDolc10gTmV3
IGNoYW5nZSBjb3VudGVyICVsbHVcbiIsCisJCQkgICAgICBjb25uZWN0b3ItPmJhc2UuaWQsCisJ
CQkgICAgICBjb25uZWN0b3ItPm5hbWUsCisJCQkgICAgICBjb25uZWN0b3ItPmVwb2NoX2NvdW50
ZXIpOworCisJCWlmIChvbGRfc3RhdHVzICE9IGNvbm5lY3Rvci0+c3RhdHVzKSB7CiAJCQljaGFu
Z2VkID0gdHJ1ZTsKKwkJfQorCisJCS8qIENoZWNrIGNoYW5naW5nIG9mIGVkaWQgd2hlbiBhIGNv
bm5lY3RvciBzdGF0dXMgc3RpbGwgcmVtYWlucworCQkgKiBhcyAiY29ubmVjdG9yX3N0YXR1c19j
b25uZWN0ZWQiLgorCQkgKi8KKwkJaWYgKGNvbm5lY3Rvci0+c3RhdHVzID09IGNvbm5lY3Rvcl9z
dGF0dXNfY29ubmVjdGVkICYmCisJCSAgICBvbGRfc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNf
Y29ubmVjdGVkICYmCisJCSAgICBvbGRfZXBvY2hfY291bnRlciAhPSBjb25uZWN0b3ItPmVwb2No
X2NvdW50ZXIpIHsKKwkJCWNoYW5nZWQgPSB0cnVlOworCQl9CiAJfQogCWRybV9jb25uZWN0b3Jf
bGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKIAltdXRleF91bmxvY2soJmRldi0+bW9kZV9jb25m
aWcubXV0ZXgpOwogCi0JaWYgKGNoYW5nZWQpCisJaWYgKGNoYW5nZWQpIHsKIAkJZHJtX2ttc19o
ZWxwZXJfaG90cGx1Z19ldmVudChkZXYpOworCQlEUk1fREVCVUdfS01TKCJTZW50IGhvdHBsdWcg
ZXZlbnRcbiIpOworCX0KIAogCXJldHVybiBjaGFuZ2VkOwogfQpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCmluZGV4
IDY4MWNiNTkwZjk1Mi4uYTNjYzdkMDkyN2Q2IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1f
Y29ubmVjdG9yLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCkBAIC0xMjg4LDYg
KzEyODgsOSBAQCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciB7CiAJLyoqIEBvdmVycmlkZV9lZGlkOiBo
YXMgdGhlIEVESUQgYmVlbiBvdmVyd3JpdHRlbiB0aHJvdWdoIGRlYnVnZnMgZm9yIHRlc3Rpbmc/
ICovCiAJYm9vbCBvdmVycmlkZV9lZGlkOwogCisJLyoqIEBlcG9jaF9jb3VudGVyOiB1c2VkIHRv
IGRldGVjdCBhbnkgb3RoZXIgY2hhbmdlcyBpbiBjb25uZWN0b3IsIGJlc2lkZXMgc3RhdHVzICov
CisJdWludDY0X3QgZXBvY2hfY291bnRlcjsKKwogI2RlZmluZSBEUk1fQ09OTkVDVE9SX01BWF9F
TkNPREVSIDMKIAkvKioKIAkgKiBAZW5jb2Rlcl9pZHM6IFZhbGlkIGVuY29kZXJzIGZvciB0aGlz
IGNvbm5lY3Rvci4gUGxlYXNlIG9ubHkgdXNlCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
