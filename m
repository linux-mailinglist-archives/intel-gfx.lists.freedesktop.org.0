Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D30318A987
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 00:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4B86E99E;
	Wed, 18 Mar 2020 23:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691036E99B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 23:58:51 +0000 (UTC)
IronPort-SDR: cf6kKUCJSqFVC/nd0fvHHa03NilB+My4Ww42LIr05q6DOU1MoQgRJyOepjXrYCm5popNcauTBC
 RgA94NpOYAgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:58:49 -0700
IronPort-SDR: ZyxkoUTjNoA20bB+cvgXzDzKprP5MCFOHfGng8eq8IGy3WVR96RNB2673u2oPq7LKRM3WSi2oJ
 n1w7iKO8XWYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="324346286"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga001.jf.intel.com with ESMTP; 18 Mar 2020 16:58:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 16:59:55 -0700
Message-Id: <20200318235956.118409-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200318235956.118409-1-jose.souza@intel.com>
References: <20200318235956.118409-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/tc/icl: Implement the TC cold exit
 sequence
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyByZXF1aXJlZCBmb3IgbGVnYWN5L3N0YXRpYyBUQyBwb3J0cyBhcyBJT00gaXMgbm90
IGF3YXJlIG9mCnRoZSBjb25uZWN0aW9uIGFuZCB3aWxsIG5vdCB0cmlnZ2VyIHRoZSBUQyBjb2xk
IGV4aXQuCgpKdXN0IHJlcXVlc3QgUENPREUgdG8gZXhpdCBUQ0NPTEQgaXMgbm90IGVub3VnaCBh
cyBpdCBjb3VsZCBlbnRlcgphZ2FpbiBiZSBkcml2ZXIgbWFrZXMgdXNlIG9mIHRoZSBwb3J0LCB0
byBwcmV2ZW50IGl0IEJTcGVjIHN0YXRlcyB0aGF0CmF1eCBwb3dlcndlbGwgc2hvdWxkIGJlIGhl
bGQuCgpTbyBiZWZvcmUgZGV0ZWN0aW5nIHRoZSBtb2RlLCBhdXggcG93ZXIgaXMgcmVxdWVzdGVk
IHdpdGhvdXQgd2FpdCBmb3IKaGFyZHdhcmUgYWNrLCBQQ09ERSBpcyByZXF1ZXN0ZWQgdG8gZXhp
dCBUQ0NPTEQgYW5kIHRoZSBUQyBkZXRlY3Rpb24Kc2VxdWVuY2VzIGZvbGxvd3MgYXMgbm9ybWFs
LgpBZnRlciBkZXRlY3Rpb24gaWYgbW9kZSBpcyBub3Qgc3RhdGljIGF1eCBjYW4gYmUgcG93ZXJl
ZCBvZmYgb3RoZXJ3aXNlCndlIG5lZWQgdG8gd2FpdCBmb3IgSFcgYWNrIGFzIGZ1dHVyZSBjYWxs
cyB0byBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldCgpCm92ZXIgYXV4IHdpbGwgbm90IGNoZWNrIGZv
ciBIVyBhY2suCgpCU3BlYzogMjE3NTAKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KQ2M6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KQ2M6IEthaS1IZW5n
IEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMzAgKysrKysrKysrLQogLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAgIHwgNTYgKysrKysrKysrKysrKysr
KystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDEg
KwogNCBmaWxlcyBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMK
aW5kZXggYTdlNTMxYjY0ZTE2Li43MWE0YzVkNzkwZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01NzMsOCArNTczLDkg
QEAgc3RhdGljIHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKICNkZWZpbmUgVEdMX0FVWF9QV19UT19UQ19QT1JUKHB3X2lk
eCkJKChwd19pZHgpIC0gVEdMX1BXX0NUTF9JRFhfQVVYX1RDMSkKIAogc3RhdGljIHZvaWQKLWlj
bF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKLQkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkKK19pY2xf
dGNfcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCisJCQkJICBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsLAorCQkJCSAg
Ym9vbCB3YWl0X2FjaykKIHsKIAllbnVtIGF1eF9jaCBhdXhfY2ggPSBpY2xfdGNfcGh5X2F1eF9j
aChkZXZfcHJpdiwgcG93ZXJfd2VsbCk7CiAJdTMyIHZhbDsKQEAgLTU4Nyw3ICs1ODgsNyBAQCBp
Y2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAJCXZhbCB8PSBEUF9BVVhfQ0hfQ1RMX1RCVF9JTzsKIAlpbnRlbF9kZV93cml0
ZShkZXZfcHJpdiwgRFBfQVVYX0NIX0NUTChhdXhfY2gpLCB2YWwpOwogCi0JaHN3X3Bvd2VyX3dl
bGxfZW5hYmxlKGRldl9wcml2LCBwb3dlcl93ZWxsKTsKKwlfaHN3X3Bvd2VyX3dlbGxfZW5hYmxl
KGRldl9wcml2LCBwb3dlcl93ZWxsLCB3YWl0X2Fjayk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMiAmJiAhcG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlzX3RjX3RidCkgewogCQllbnVt
IHRjX3BvcnQgdGNfcG9ydDsKQEAgLTYwMyw2ICs2MDQsMjAgQEAgaWNsX3RjX3BoeV9hdXhfcG93
ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCX0KIH0K
IAorc3RhdGljIHZvaWQKK2ljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAq
cG93ZXJfd2VsbCkKK3sKKwlfaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoZGV2X3By
aXYsIHBvd2VyX3dlbGwsIHRydWUpOworfQorCitzdGF0aWMgdm9pZAoraWNsX3RjX3BoeV9hdXhf
cG93ZXJfd2VsbF9lbmFibGVfd2l0aG91dF9hY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAorCQkJCQkgICAgIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpCit7
CisJX2ljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2LCBwb3dlcl93ZWxs
LCBmYWxzZSk7Cit9CisKIHN0YXRpYyB2b2lkCiBpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX2Rp
c2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgc3RydWN0IGk5
MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkKQEAgLTY0Miw2ICs2NTcsMTMgQEAgc3RhdGljIGJv
b2wgaHN3X3Bvd2VyX3dlbGxfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJcmV0dXJuICh2YWwgJiBtYXNrKSA9PSBtYXNrOwogfQogCitzdGF0aWMgdm9pZAoraHN3
X3Bvd2VyX3dlbGxfd2FpdF9hY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAor
CQkJc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkKK3sKKwloc3dfd2FpdF9mb3Jf
cG93ZXJfd2VsbF9lbmFibGUoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOworfQorCiBzdGF0aWMgdm9p
ZCBhc3NlcnRfY2FuX2VuYWJsZV9kYzkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogewogCWRybV9XQVJOX09OQ0UoJmRldl9wcml2LT5kcm0sCkBAIC0zNTgyLDggKzM2MDQsMTAg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfb3BzIGljbF9jb21ib19waHlf
YXV4X3Bvd2VyX3dlbGxfb3BzID0gewogc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dl
bGxfb3BzIGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzID0gewogCS5zeW5jX2h3ID0gaHN3
X3Bvd2VyX3dlbGxfc3luY19odywKIAkuZW5hYmxlID0gaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2Vs
bF9lbmFibGUsCisJLmVuYWJsZV93aXRob3V0X2FjayA9IGljbF90Y19waHlfYXV4X3Bvd2VyX3dl
bGxfZW5hYmxlX3dpdGhvdXRfYWNrLAogCS5kaXNhYmxlID0gaWNsX3RjX3BoeV9hdXhfcG93ZXJf
d2VsbF9kaXNhYmxlLAogCS5pc19lbmFibGVkID0gaHN3X3Bvd2VyX3dlbGxfZW5hYmxlZCwKKwku
d2FpdF9lbmFibGVfYWNrID0gaHN3X3Bvd2VyX3dlbGxfd2FpdF9hY2ssCiB9OwogCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9yZWdzIGljbF9hdXhfcG93ZXJfd2VsbF9yZWdz
ID0gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaAppbmRleCA1ZTAwZTYxMWYwNzcuLjliOTBiZTQzZDY3ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTEzODYs
NiArMTM4Niw3IEBAIHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgewogCWVudW0gdGNfcG9ydF9t
b2RlIHRjX21vZGU7CiAJZW51bSBwaHlfZmlhIHRjX3BoeV9maWE7CiAJdTggdGNfcGh5X2ZpYV9p
ZHg7CisJaW50ZWxfd2FrZXJlZl90IHRjX2NvbGRfd2FrZXJlZjsKIAogCXZvaWQgKCp3cml0ZV9p
bmZvZnJhbWUpKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCWNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jCmluZGV4IGU0YzVkZTVjZTg3NC4uZTMzZGFkOTY0NmE1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCkBAIC00MTYsOSArNDE2LDYgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfdGNfcG9ydF9yZXNldF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0LAogCWVudW0gdGNfcG9ydF9tb2RlIG9sZF90Y19tb2RlID0gZGlnX3BvcnQtPnRj
X21vZGU7CiAKIAlpbnRlbF9kaXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsoaTkxNSk7Ci0JZHJtX1dB
Uk5fT04oJmk5MTUtPmRybSwKLQkJICAgIGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChp
OTE1LAotCQkJCQlpbnRlbF9hdXhfcG93ZXJfZG9tYWluKGRpZ19wb3J0KSkpOwogCiAJaWNsX3Rj
X3BoeV9kaXNjb25uZWN0KGRpZ19wb3J0KTsKIAlpY2xfdGNfcGh5X2Nvbm5lY3QoZGlnX3BvcnQs
IHJlcXVpcmVkX2xhbmVzKTsKQEAgLTUyOCw2ICs1MjUsMzUgQEAgc3RhdGljIGlubGluZSBpbnQg
dGdsX3RjX2NvbGRfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwK
IAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMgaW5saW5lIGludCBpY2xfdGNfY29sZF9yZXF1ZXN0
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAorCQkJCSAgICAgIGJvb2wgYmxv
Y2spCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0
LT5iYXNlLmJhc2UuZGV2KTsKKwllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGF1eF9k
b21haW47CisJaW50IHJldDsKKworCWF1eF9kb21haW4gPSBpbnRlbF9hdXhfY2hfdG9fcG93ZXJf
ZG9tYWluKGRpZ19wb3J0LT5hdXhfY2gpOworCisJaWYgKGJsb2NrKSB7CisJCWRpZ19wb3J0LT50
Y19jb2xkX3dha2VyZWYgPQorCQkJaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfd2l0aG91dF9hY2so
aTkxNSwgYXV4X2RvbWFpbik7CisKKwkJZG8geworCQkJcmV0ID0gc2FuZHlicmlkZ2VfcGNvZGVf
d3JpdGVfdGltZW91dChpOTE1LAorCQkJCQkJCSAgICAgIElDTF9QQ09ERV9FWElUX1RDQ09MRCwK
KwkJCQkJCQkgICAgICAwLCAyNTAsIDEpOworCisJCX0gd2hpbGUgKHJldCA9PSAtRUFHQUlOKTsK
Kwl9IGVsc2UgaWYgKGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfTEVHQUNZKSB7CisJCWRy
bV9XQVJOX09OKCZpOTE1LT5kcm0sICFkaWdfcG9ydC0+dGNfbG9ja193YWtlcmVmKTsKKwkJaW50
ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgYXV4X2RvbWFpbiwKKwkJCQkJZGlnX3BvcnQtPnRj
X2NvbGRfd2FrZXJlZik7CisJCWRpZ19wb3J0LT50Y19jb2xkX3dha2VyZWYgPSAwOworCX0KKwor
CXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyBpbnQgdGNfY29sZF9yZXF1ZXN0KHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LCBib29sIGJsb2NrKQogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7CkBAIC01
MzYsOCArNTYyLDcgQEAgc3RhdGljIGludCB0Y19jb2xkX3JlcXVlc3Qoc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgYmxvY2spCiAJaWYgKElOVEVMX0dFTihpOTE1KSA+
PSAxMikKIAkJcmV0ID0gdGdsX3RjX2NvbGRfcmVxdWVzdChkaWdfcG9ydCwgYmxvY2spOwogCWVs
c2UKLQkJLyogVE9ETzogaW1wbGVtZW50IEdFTjExIFRDQ09MRCBzZXF1ZW5jZXMgKi8KLQkJcmV0
ID0gMDsKKwkJcmV0ID0gaWNsX3RjX2NvbGRfcmVxdWVzdChkaWdfcG9ydCwgYmxvY2spOwogCiAJ
ZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBvcnQgJXM6IFRDQ09MRCAlc2Jsb2NrICVzXG4iLAog
CQkgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSwgKGJsb2NrID8gIiIgOiAidW4iKSwKQEAgLTU0
Niw2ICs1NzEsMjYgQEAgc3RhdGljIGludCB0Y19jb2xkX3JlcXVlc3Qoc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgYmxvY2spCiAJcmV0dXJuIHJldDsKIH0KIAorc3Rh
dGljIHZvaWQgdGNfY29sZF9hZnRlcl9yZXNldF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkx
NShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7CisJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2Rv
bWFpbiBhdXhfZG9tYWluOworCisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMikKKwkJcmV0dXJu
OworCisJYXV4X2RvbWFpbiA9IGludGVsX2F1eF9jaF90b19wb3dlcl9kb21haW4oZGlnX3BvcnQt
PmF1eF9jaCk7CisKKwlpZiAoZGlnX3BvcnQtPnRjX21vZGUgPT0gVENfUE9SVF9MRUdBQ1kpIHsK
KwkJaW50ZWxfZGlzcGxheV9wb3dlcl93YWl0X2VuYWJsZV9hY2soaTkxNSwgYXV4X2RvbWFpbik7
CisJfSBlbHNlIHsKKwkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIWRpZ19wb3J0LT50Y19jb2xk
X3dha2VyZWYpOworCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChpOTE1LCBhdXhfZG9tYWluLAor
CQkJCQlkaWdfcG9ydC0+dGNfY29sZF93YWtlcmVmKTsKKwkJZGlnX3BvcnQtPnRjX2NvbGRfd2Fr
ZXJlZiA9IDA7CisJfQorfQorCiBzdGF0aWMgdm9pZCBfX2ludGVsX3RjX3BvcnRfbG9jayhzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJCQkgaW50IHJlcXVpcmVkX2xhbmVz
KQogewpAQCAtNTYwLDYgKzYwNSw3IEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfdGNfcG9ydF9sb2Nr
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCQl0Y19jb2xkX3JlcXVlc3Qo
ZGlnX3BvcnQsIHRydWUpOwogCQlpbnRlbF90Y19wb3J0X25lZWRzX3Jlc2V0KGRpZ19wb3J0KTsK
IAkJaW50ZWxfdGNfcG9ydF9yZXNldF9tb2RlKGRpZ19wb3J0LCByZXF1aXJlZF9sYW5lcyk7CisJ
CXRjX2NvbGRfYWZ0ZXJfcmVzZXRfbW9kZShkaWdfcG9ydCk7CiAJfQogCiAJZHJtX1dBUk5fT04o
Jmk5MTUtPmRybSwgZGlnX3BvcnQtPnRjX2xvY2tfd2FrZXJlZik7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAppbmRleCA3ZTM0MWQ5OTQ1YjMuLjhkNGY0MGE3MGE0ZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCkBAIC05MDE3LDYgKzkwMTcsNyBAQCBlbnVtIHsKICNkZWZpbmUgICAgIElDTF9QQ09E
RV9NRU1fU1NfUkVBRF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbnQpIDw8IDE2KSB8ICgw
eDEgPDwgOCkpCiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX0RfQ09NUAkJMHgxMAogI2RlZmlu
ZSAgIEdFTjZfUENPREVfV1JJVEVfRF9DT01QCQkweDExCisjZGVmaW5lICAgSUNMX1BDT0RFX0VY
SVRfVENDT0xECQkJMHgxMgogI2RlZmluZSAgIEhTV19QQ09ERV9ERV9XUklURV9GUkVRX1JFUQkJ
MHgxNwogI2RlZmluZSAgIERJU1BMQVlfSVBTX0NPTlRST0wJCQkweDE5CiAjZGVmaW5lICAgVEdM
X1BDT0RFX1RDQ09MRAkJCQkweDI2Ci0tIAoyLjI1LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
