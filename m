Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 392E32CE30A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 00:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8961B6E0E1;
	Thu,  3 Dec 2020 23:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4896E0DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 23:51:04 +0000 (UTC)
IronPort-SDR: 1Qq+Y6GPfXtYdfGH0lp0duP9sc4pfOiQWnv4kIVsz+SwNmOqOYKJDdvgEOL9bpK1YVSrDmWgIx
 xm2hTy14RMkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="161067209"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="161067209"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 15:51:03 -0800
IronPort-SDR: Ol0DhG4blTAQNa8O97cTs3Khi8DyE/tfsTX5wjMLxcwihMgek9UATDDWL+PCLaHf+l8b637kOw
 buK4anU1WbdA==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="550716499"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Dec 2020 15:51:03 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 15:53:51 -0800
Message-Id: <20201203235358.18041-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201203235358.18041-1-manasi.d.navare@intel.com>
References: <20201203235358.18041-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/9] drm/i915/display/dp: Attach and set drm
 connector VRR property
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CgpUaGlzIGZ1bmN0
aW9uIHNldHMgdGhlIFZSUiBwcm9wZXJ0eSBmb3IgY29ubmVjdG9yIGJhc2VkCm9uIHRoZSBwbGF0
Zm9ybSBzdXBwb3J0LCBFRElEIG1vbml0b3IgcmFuZ2UgYW5kIERQIHNpbmsKRFBDRCBjYXBhYmls
aXR5IG9mIG91dHB1dGluZyB2aWRlbyB3aXRob3V0IG1zYQp0aW1pbmcgaW5mb3JtYXRpb24uCgp2
ODoKKiBVc2UgSEFTX1ZSUiwgcmVtb3ZlIGRybV9jb25uIGRlY2xhcmF0aW9uIChKYW5pIE4pCiog
Rml4IHR5cG9zIGluIENvbW1lbnQgKEphbmkgTikKdjc6CiogTW92ZSB0aGUgaGVscGVyIHRvIHNl
cGFyYXRlIGZpbGUgKE1hbmFzaSkKdjY6CiogUmVtb3ZlIHVuc2V0IG9mIHByb3AKdjU6CiogRml4
IHRoZSB2cnIgcHJvcCBub3QgYmVpbmcgc2V0IGluIGtlcm5lbCAoTWFuYXNpKQoqIFVuc2V0IHRo
ZSBwcm9wIG9uIGNvbm5lY3RvciBkaXNjb25uZWN0IChNYW5hc2kpCnY0OgoqIFJlYmFzZSAoTWFu
c2kpCnYzOgoqIGludGVsX2RwX2lzX3Zycl9jYXBhYmxlIGNhbiBiZSB1c2VkIGZvciBkZWJ1Z2Zz
LCBtYWtlIGl0Cm5vbiBzdGF0aWMgKE1hbmFzaSkKdjI6CiogSnVzdCBzZXQgdGhpcyBpbiBpbnRl
bF9kcF9nZXRfbW9kZXMgaW5zdGVhZCBvZiBuZXcgaG9vayAoSmFuaSkKCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8
YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jICB8IDggKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdnJyLmMgfCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5k
ZXggMmQ0ZDVlOTVhZjg0Li42NzI5ZTYyOTAxMzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKQEAgLTYyLDYgKzYyLDcgQEAKICNpbmNsdWRlICJpbnRlbF9zaWRlYmFu
ZC5oIgogI2luY2x1ZGUgImludGVsX3RjLmgiCiAjaW5jbHVkZSAiaW50ZWxfdmRzYy5oIgorI2lu
Y2x1ZGUgImludGVsX3Zyci5oIgogCiAjZGVmaW5lIERQX0RQUlhfRVNJX0xFTiAxNAogCkBAIC02
NzQwLDYgKzY3NDEsMTAgQEAgc3RhdGljIGludCBpbnRlbF9kcF9nZXRfbW9kZXMoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAllZGlkID0gaW50ZWxfY29ubmVjdG9yLT5kZXRlY3Rf
ZWRpZDsKIAlpZiAoZWRpZCkgewogCQlpbnQgcmV0ID0gaW50ZWxfY29ubmVjdG9yX3VwZGF0ZV9t
b2Rlcyhjb25uZWN0b3IsIGVkaWQpOworCisJCWlmIChpbnRlbF92cnJfaXNfY2FwYWJsZShjb25u
ZWN0b3IpKQorCQkJZHJtX2Nvbm5lY3Rvcl9zZXRfdnJyX2NhcGFibGVfcHJvcGVydHkoY29ubmVj
dG9yLAorCQkJCQkJCSAgICAgICB0cnVlKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAJ
fQpAQCAtNzIyNCw2ICs3MjI5LDkgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKIAkJY29ubmVj
dG9yLT5zdGF0ZS0+c2NhbGluZ19tb2RlID0gRFJNX01PREVfU0NBTEVfQVNQRUNUOwogCiAJfQor
CisJaWYgKEhBU19WUlIoZGV2X3ByaXYpKQorCQlkcm1fY29ubmVjdG9yX2F0dGFjaF92cnJfY2Fw
YWJsZV9wcm9wZXJ0eShjb25uZWN0b3IpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kcF9pbml0
X3BhbmVsX3Bvd2VyX3RpbWVzdGFtcHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCmluZGV4IDhhNDI3YzE1MjM0MS4uODY5
ZTQxYWE4Mzk2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKQEAg
LTIwLDEwICsyMCwxMCBAQCBib29sIGludGVsX3Zycl9pc19jYXBhYmxlKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IpCiAKIAlpbnRlbF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKHRvX2lu
dGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpKTsKIAkvKgotCSAqIERQIFNpbmsgaXMgY2FwYWJsZSBv
ZiBWYXJpYWJsZSByZWZyZXNoIHZpZGVvIHRpbWluZ3MgaWYKKwkgKiBEUCBTaW5rIGlzIGNhcGFi
bGUgb2YgVlJSIHZpZGVvIHRpbWluZ3MgaWYKIAkgKiBJZ25vcmUgTVNBIGJpdCBpcyBzZXQgaW4g
RFBDRC4KIAkgKiBFRElEIG1vbml0b3IgcmFuZ2UgYWxzbyBzaG91bGQgYmUgYXRsZWFzdCAxMCBm
b3IgcmVhc29uYWJsZQotCSAqIEFkYXB0aXZlIHN5bmMvIFZSUiBlbmQgdXNlciBleHBlcmllbmNl
LgorCSAqIEFkYXB0aXZlIFN5bmMgb3IgVmFyaWFibGUgUmVmcmVzaCBSYXRlIGVuZCB1c2VyIGV4
cGVyaWVuY2UuCiAJICovCiAJcmV0dXJuIEhBU19WUlIoaTkxNSkgJiYKIAkJZHJtX2RwX3Npbmtf
Y2FuX2RvX3ZpZGVvX3dpdGhvdXRfdGltaW5nX21zYShpbnRlbF9kcC0+ZHBjZCkgJiYKLS0gCjIu
MTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
