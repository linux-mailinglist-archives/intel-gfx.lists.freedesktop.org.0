Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 462333010E9
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AD56EA76;
	Fri, 22 Jan 2021 23:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680FB6E900
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:31 +0000 (UTC)
IronPort-SDR: J1iTCiFhvaqpzpD+w+nSUpEqv2LNH7QpkYdExSDnsy1znz2BsjsQE3XQjS0jQQmMtFVF5uhRFi
 TkEZHn9swXeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="158703309"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="158703309"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: +JMdgFldhWuDge/vsa63Wvxi+iOOoVvfZzzNLbl9mIU8RfwgFDGb5kLrWXzwekslm1kRqYGaF9
 uiJUoOiLn5+A==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466023"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:40 -0800
Message-Id: <20210122232647.22688-11-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 11/18] drm/i915/display/vrr: Send VRR push to
 flip the frame
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

VlJSIGFjaGlldmVzIHZibGFuayBzdHJldGNoaW5nIHVzaW5nIHRoZSBIVyBQVVNIIGZ1bmN0aW9u
YWxpdHkuClNvIG9uY2UgdGhlIFZSUiBpcyBlbmFibGVkIGR1cmluZyBtb2Rlc2V0IHRoZW4gZm9y
IGVhY2ggZmxpcApyZXF1ZXN0IGZyb20gdXNlcnNwYWNlLCBpbiB0aGUgYXRvbWljIHRhaWwgcGlw
ZV91cGRhdGVfZW5kKCkKd2UgbmVlZCB0byBzZXQgdGhlIFZSUiBwdXNoIGJpdCBpbiBIVyBmb3Ig
aXQgdG8gdGVybWluYXRlCnRoZSB2YmxhbmsgYXQgY29uZmlndXJlZCBmbGlwbGluZSBvciBhbnl0
aW1lIGFmdGVyIGZsaXBsaW5lCm9yIGxhdGVzdCBhdCB0aGUgVm1heC4KClRoZSBIVyBjbGVhcnMg
dGhlIFBVU0ggYml0IGFmdGVyIHRoZSBkb3VibGUgYnVmZmVyIHVwZGF0ZXMKYXJlIGNvbXBsZXRl
ZC4KCnYyOgoqIE1vdmUgc2VuZCBwdXNoIHRvIGFmdGVyIGlycSBlbiAoTWFuYXNpKQoqIENhbGwg
c2VuZCBwdXNoIHVuY29uZGl0aW9uYWxseSAoSmFuaSBOKQoKdjM6CiogU3RhbGwgdy5yLnQgVnJy
IHZtYXggKE1hbmFzaSwgR2FyeSBTbWl0aCkKCnY0OgoqIFJlbW92ZSB0aGUgcm13IChWaWxsZSkK
CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzog
R2FyeSBTbWl0aCA8Z2FyeS5rLnNtaXRoQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNp
IE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICAgfCAxMyArKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oICAgIHwgIDEgKwogMyBmaWxlcyBjaGFu
Z2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMKaW5kZXggNDBjNDhiODkzYjNlLi42MzUyNmMwZWJkNGMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtNTAsNiArNTAsNyBAQAog
I2luY2x1ZGUgImludGVsX2RzaS5oIgogI2luY2x1ZGUgImludGVsX3Nwcml0ZS5oIgogI2luY2x1
ZGUgImk5eHhfcGxhbmUuaCIKKyNpbmNsdWRlICJpbnRlbF92cnIuaCIKIAogaW50IGludGVsX3Vz
ZWNzX3RvX3NjYW5saW5lcyhjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRf
bW9kZSwKIAkJCSAgICAgaW50IHVzZWNzKQpAQCAtMjY2LDYgKzI2Nyw5IEBAIHZvaWQgaW50ZWxf
cGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkK
IAogCWxvY2FsX2lycV9lbmFibGUoKTsKIAorCS8qIFNlbmQgVlJSIFB1c2ggdG8gdGVybWluYXRl
IFZibGFuayAqLworCWludGVsX3Zycl9zZW5kX3B1c2gobmV3X2NydGNfc3RhdGUpOworCiAJaWYg
KGludGVsX3ZncHVfYWN0aXZlKGRldl9wcml2KSkKIAkJcmV0dXJuOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYwppbmRleCBiMjU0NWRkYzhmYzUuLjQ1OTZhMTg4NTdm
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCkBAIC0xMjEsMyAr
MTIxLDE2IEBAIHZvaWQgaW50ZWxfdnJyX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfVlJSX0ZMSVBMSU5FKGNwdV90
cmFuc2NvZGVyKSwgY3J0Y19zdGF0ZS0+dnJyLmZsaXBsaW5lIC0gMSk7CiAJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIFRSQU5TX1BVU0goY3B1X3RyYW5zY29kZXIpLCBUUkFOU19QVVNIX0VOKTsK
IH0KKwordm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWVudW0gdHJhbnNjb2RlciBjcHVf
dHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOworCisJaWYgKCFjcnRjX3N0
YXRlLT52cnIuZW5hYmxlKQorCQlyZXR1cm47CisKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
VFJBTlNfUFVTSChjcHVfdHJhbnNjb2RlciksCisJCSAgICAgICBUUkFOU19QVVNIX0VOIHwgVFJB
TlNfUFVTSF9TRU5EKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdnJyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5o
CmluZGV4IDgwYzMzZmJkMDYzOS4uMWI3YzUzYjU2MDRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdnJyLmgKQEAgLTIyLDUgKzIyLDYgQEAgdm9pZCBpbnRlbF92cnJfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAg
ICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7CiB2b2lkIGludGVsX3Zy
cl9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCSAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK3ZvaWQgaW50ZWxfdnJyX3NlbmRf
cHVzaChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAKICNlbmRp
ZiAvKiBfX0lOVEVMX1ZSUl9IX18gKi8KLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
