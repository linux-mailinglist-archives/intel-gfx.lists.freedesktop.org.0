Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A1B3010EC
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1186EA7B;
	Fri, 22 Jan 2021 23:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9B96EA75
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:32 +0000 (UTC)
IronPort-SDR: iizHKmLEg1QLL9Bi7xSX2a+MDr6TvtI/tlTiY4y9nBABo62lwBPgHJHw6eyb8Per6v5iqHZVWm
 QKpccDZZSQFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344455"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344455"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: p1C1K6JVw4M+BHzkv3X+K/2n2ciZosDeLERFDrrRSnxuDoE6eE3zgbpne6YEcl/NNORYtcegZ4
 ME2q0TDi4K3Q==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466018"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:39 -0800
Message-Id: <20210122232647.22688-10-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 10/18] drm/i915/display/vrr: Configure and
 enable VRR in modeset enable
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

VGhpcyBwYXRjaCBjb21wdXRlcyB0aGUgVlJSIHBhcmFtZXRlcnMgZnJvbSBWUlIgY3J0YyBzdGF0
ZXMKYW5kIGNvbmZpZ3VyZXMgdGhlbSBpbiBWUlIgcmVnaXN0ZXJzIGR1cmluZyBDUlRDIGVuYWJs
ZSBpbgp0aGUgbW9kZXNldCBlbmFibGUgc2VxdWVuY2UuCgp2MjoKKiBSZW1vdmUgaW5pdGlhbGl6
YXRpb24gdG8gMCAoSmFuaSBOKQoqIFVzZSBjb3JyZWN0IHBpcGUgJWMgKEphbmkgTikKCnYzOgoq
IFJlbW92ZSBkZWJ1ZyBwcmludHMgKFZpbGxlKQoqIFVzZSBjcHVfdHJhbnMgaW5zdGVhZCBvZiBw
aXBlIGZvciBUUkFOU19WUlIgcmVncyAoVmlsbGUpCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyB8ICAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuYyB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmggfCAgMyArKysKIDMgZmlsZXMgY2hhbmdlZCwgMjgg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmlu
ZGV4IGQ0YzA5YTFhYTA2ZS4uZDFjYjA0OTlhNWM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKQEAgLTUxLDYgKzUxLDcgQEAKICNpbmNsdWRlICJpbnRlbF9zcHJp
dGUuaCIKICNpbmNsdWRlICJpbnRlbF90Yy5oIgogI2luY2x1ZGUgImludGVsX3Zkc2MuaCIKKyNp
bmNsdWRlICJpbnRlbF92cnIuaCIKIAogc3RydWN0IGRkaV9idWZfdHJhbnMgewogCXUzMiB0cmFu
czE7CS8qIGJhbGFuY2UgbGVnIGVuYWJsZSwgZGUtZW1waCBsZXZlbCAqLwpAQCAtNDMxMCw2ICs0
MzExLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZW5hYmxlX2RkaShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwKIAlpZiAoIWNydGNfc3RhdGUtPmJpZ2pvaW5lcl9zbGF2ZSkKIAkJaW50
ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAKKwlp
bnRlbF92cnJfZW5hYmxlKGVuY29kZXIsIGNydGNfc3RhdGUpOworCiAJaW50ZWxfZW5hYmxlX3Bp
cGUoY3J0Y19zdGF0ZSk7CiAKIAlpbnRlbF9jcnRjX3ZibGFua19vbihjcnRjX3N0YXRlKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCmluZGV4IDM0NmVhM2MxNmNjOC4u
YjI1NDVkZGM4ZmM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMK
QEAgLTk5LDMgKzk5LDI1IEBAIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljcnRjX3N0YXRlLT52cnIucGlwZWxpbmVfZnVsbCA9
CiAJCW1pbigyNTUsIGNydGNfc3RhdGUtPnZyci52bWluIC0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192
ZGlzcGxheSAtIDQgLSAxKTsKIH0KKwordm9pZCBpbnRlbF92cnJfZW5hYmxlKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAorCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29k
ZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsKKwl1MzIgdHJhbnNfdnJyX2N0bDsKKwor
CWlmICghY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkKKwkJcmV0dXJuOworCisJdHJhbnNfdnJyX2N0
bCA9IFZSUl9DVExfVlJSX0VOQUJMRSB8CisJCVZSUl9DVExfSUdOX01BWF9TSElGVCB8IFZSUl9D
VExfRkxJUF9MSU5FX0VOIHwKKwkJVlJSX0NUTF9QSVBFTElORV9GVUxMKGNydGNfc3RhdGUtPnZy
ci5waXBlbGluZV9mdWxsKSB8CisJCVZSUl9DVExfUElQRUxJTkVfRlVMTF9PVkVSUklERTsKKwor
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19WUlJfVk1JTihjcHVfdHJhbnNjb2Rlciks
IGNydGNfc3RhdGUtPnZyci52bWluIC0gMSk7CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRS
QU5TX1ZSUl9WTUFYKGNwdV90cmFuc2NvZGVyKSwgY3J0Y19zdGF0ZS0+dnJyLnZtYXggLSAxKTsK
KwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfVlJSX0NUTChjcHVfdHJhbnNjb2Rlciks
IHRyYW5zX3Zycl9jdGwpOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19WUlJfRkxJ
UExJTkUoY3B1X3RyYW5zY29kZXIpLCBjcnRjX3N0YXRlLT52cnIuZmxpcGxpbmUgLSAxKTsKKwlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfUFVTSChjcHVfdHJhbnNjb2RlciksIFRSQU5T
X1BVU0hfRU4pOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92cnIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgKaW5k
ZXggNjdjNDc3ZDZkMWE0Li44MGMzM2ZiZDA2MzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuaApAQCAtMTQsMTAgKzE0LDEzIEBAIHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGU7CiBzdHJ1Y3QgaW50ZWxfY3J0YzsKIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwogc3Ry
dWN0IGludGVsX2RwOworc3RydWN0IGludGVsX2VuY29kZXI7CiAKIGJvb2wgaW50ZWxfdnJyX2lz
X2NhcGFibGUoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CiB2b2lkIGludGVsX3Zy
cl9jaGVja19tb2Rlc2V0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKIHZvaWQg
aW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAogCQkJICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOwor
dm9pZCBpbnRlbF92cnJfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkg
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAKICNlbmRp
ZiAvKiBfX0lOVEVMX1ZSUl9IX18gKi8KLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
