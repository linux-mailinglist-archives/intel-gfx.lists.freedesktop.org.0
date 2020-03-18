Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E66491895DE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 07:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3188B6E86C;
	Wed, 18 Mar 2020 06:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 566DC6E866;
 Wed, 18 Mar 2020 06:33:48 +0000 (UTC)
IronPort-SDR: WMOCpY4nDSj2Nze8F22irhlT+mQD13U7wbOqqW320yu7qxUBXith9jzKXmhqUO90g+DdcJup4f
 fW1okT7ywH5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 23:33:47 -0700
IronPort-SDR: 2BfrBXnn7Yrzn3yRyOlTlQQ/xKY4q3AodVhKURyBBzbcfAC9E9PUllYpTxNz5mGnm0kaWldyM5
 Vf+RFKMCZLww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="417839759"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005.jf.intel.com with ESMTP; 17 Mar 2020 23:33:47 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 17 Mar 2020 23:35:16 -0700
Message-Id: <20200318063517.3844-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200318063517.3844-1-manasi.d.navare@intel.com>
References: <20200318063517.3844-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm: Create a drm_connector_helper_funcs
 hook for Adaptive Sync support
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
Cc: Harry Wentland <harry.wentland@amd.com>,
 Nicholas Kazlauskas <Nicholas.Kazlauskas@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGEgaG9vayBpbiBkcm1fY29ubmVjdG9yX2hlbHBlcl9mdW5jcyB0byBn
ZXQgdGhlCnN1cHBvcnQgb2YgdGhlIGRyaXZlciBmb3IgYWRhcHRpdmUgc3luYyBmdW5jdGlvbmFs
aXR5LgoKVGhpcyBjYW4gYmUgY2FsbGVkIGluIHRoZSBjb25uZWN0b3IgcHJvYmUgaGVscGVyIGZ1
bmN0aW9uIGFmdGVyCnRoZSBjb25uZWN0b3IgZGV0ZWN0KCkgYW5kIGdldF9tb2RlcygpIGhvb2tz
IHRvIGFsc28KcXVlcnkgdGhlIGFkYXB0aXZlIHN5bmMgc3VwcG9ydCBvZiB0aGUgZHJpdmVyLgoK
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSGFycnkgV2VudGxh
bmQgPGhhcnJ5LndlbnRsYW5kQGFtZC5jb20+CkNjOiBOaWNob2xhcyBLYXpsYXVza2FzIDxOaWNo
b2xhcy5LYXpsYXVza2FzQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9o
ZWxwZXIuYyAgICAgICB8ICA0ICsrKysKIGluY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92
dGFibGVzLmggfCAxNiArKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYwppbmRleCA1NzZiNGI3ZGNkODku
LjQ0MDM4MTdiZmIwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxw
ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5jCkBAIC00ODIsNiAr
NDgyLDEwIEBAIGludCBkcm1faGVscGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMoc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAogCWNvdW50ID0gKCpjb25uZWN0b3JfZnVu
Y3MtPmdldF9tb2RlcykoY29ubmVjdG9yKTsKIAorCS8qIEdldCB0aGUgQWRhcHRpdmUgU3luYyBT
dXBwb3J0IGlmIGhlbHBlciBleGlzdHMgKi8KKwlpZiAoKmNvbm5lY3Rvcl9mdW5jcy0+Z2V0X2Fk
YXB0aXZlX3N5bmNfc3VwcG9ydCkKKwkJKCoqY29ubmVjdG9yX2Z1bmNzLT5nZXRfYWRhcHRpdmVf
c3luY19zdXBwb3J0KShjb25uZWN0b3IpOworCiAJLyoKIAkgKiBGYWxsYmFjayBmb3Igd2hlbiBE
REMgcHJvYmUgZmFpbGVkIGluIGRybV9nZXRfZWRpZCgpIGFuZCB0aHVzIHNraXBwZWQKIAkgKiBv
dmVycmlkZS9maXJtd2FyZSBFRElELgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX21vZGVz
ZXRfaGVscGVyX3Z0YWJsZXMuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFi
bGVzLmgKaW5kZXggN2MyMGIxYzhiNmE3Li4wYjIwM2ZkZDI1ZGYgMTAwNjQ0Ci0tLSBhL2luY2x1
ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJt
X21vZGVzZXRfaGVscGVyX3Z0YWJsZXMuaApAQCAtMTA3OSw2ICsxMDc5LDIyIEBAIHN0cnVjdCBk
cm1fY29ubmVjdG9yX2hlbHBlcl9mdW5jcyB7CiAJCQkJICAgICBzdHJ1Y3QgZHJtX3dyaXRlYmFj
a19qb2IgKmpvYik7CiAJdm9pZCAoKmNsZWFudXBfd3JpdGViYWNrX2pvYikoc3RydWN0IGRybV93
cml0ZWJhY2tfY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQkJICAgICAgc3RydWN0IGRybV93cml0
ZWJhY2tfam9iICpqb2IpOworCisJLyoqCisJICogQGdldF9hZGFwdGl2ZV9zeW5jX3N1cHBvcnQ6
CisJICoKKwkgKiBUaGlzIGhvb2sgaXMgdXNlZCBieSB0aGUgcHJvYmUgaGVscGVyIHRvIGdldCB0
aGUgZHJpdmVyJ3Mgc3VwcG9ydAorCSAqIGZvciBhZGFwdGl2ZSBzeW5jIG9yIHZhcmlhYmxlIHJl
ZnJlc2ggcmF0ZS4KKwkgKiBUaGlzIGlzIGNhbGxlZCBmcm9tIGRybV9oZWxwZXJfcHJvYmVfc2lu
Z2xlX2Nvbm5lY3Rvcl9tb2RlcygpCisJICogVGhpcyBpcyBjYWxsZWQgYWZ0ZXIgdGhlIEBnZXRf
bW9kZXMgaG9vayBzbyB0aGF0IHRoZSBjb25uZWN0b3IgbW9kZXMKKwkgKiBhcmUgYWxyZWFkeSBv
YnRhaW5lZCBhbmQgRURJRCBpcyBwYXJzZWQgdG8gb2J0YWluIHRoZSBtb25pdG9yCisJICogcmFu
Z2UgZGVzY3JpcHRvciBpbmZvcm1hdGlvbi4KKwkgKgorCSAqIFRoaXMgaG9vayBpcyBvcHRpb25h
bCBhbmQgZGVmaW5lZCBvbmx5IGZvciB0aGUgZHJpdmVycyBhbmQgb24KKwkgKiBjb25uZWN0b3Jz
IHRoYXQgYWR2ZXJ0aXNlIGFkYXB0aXZlIHN5bmMgc3VwcG9ydC4KKwkgKgorCSAqLworCXZvaWQg
KCpnZXRfYWRhcHRpdmVfc3luY19zdXBwb3J0KShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yKTsKIH07CiAKIC8qKgotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
