Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 451472F6C8A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9FE6E138;
	Thu, 14 Jan 2021 20:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33D66E138
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:51:08 +0000 (UTC)
IronPort-SDR: j+U9Zk8HeeqLj3pyvkyDDzxgcQTfyzY0JdYCl0K/mJazT3OcEuQap5va4VpHzI1Cd+0fxxJYlH
 uDoUhhdH3jNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="242511397"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="242511397"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:51:07 -0800
IronPort-SDR: VxM00vYOGuVClJe8SgtwdPeGcgZAGVhcbu1kRNN/5eslQBJ5FgYPlfnkHZ4SwFxHv/zlG3SNYy
 1df/VGAaK84w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="389916943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 Jan 2021 12:51:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 22:51:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:50:45 +0200
Message-Id: <20210114205046.8247-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Fix the PHY compliance test vs.
 hotplug mishap
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
YWNjaWRlbnRhbGx5IGFkZGVkIHRoZSBjb21wbGlhbmNlIHRlc3QgaGFja3Mgb25seSB0bwppbnRl
bF9kcF9ob3RwbHVnKCkgd2hpY2ggZG9lc24ndCBldmVuIGdldCB1c2VkIG9uIGFueSBEREkKcGxh
dGZvcm0uIFB1dCB0aGUgc2FtZSBjcmFwIGludG8gaW50ZWxfZGRpX2hvdHBsdWcoKS4KCkNjOiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkZpeGVzOiAxOTNhZjEyY2Q2ODEgKCJkcm0v
aTkxNTogU2hvdmUgdGhlIFBIWSB0ZXN0IGludG8gdGhlIGhvdHBsdWcgd29yayIpClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDggKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgfCAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggIHwgMSArCiAzIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwppbmRleCA0NDQzYTRhYjcyMmYuLmQ3ZGYxODI4YTc0MCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC01MjA0LDEyICs1MjA0LDIw
IEBAIGludGVsX2RkaV9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogewog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7CiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3Bv
cnQoZW5jb2Rlcik7CisJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZkaWdfcG9ydC0+ZHA7
CiAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7
CiAJYm9vbCBpc190YyA9IGludGVsX3BoeV9pc190YyhpOTE1LCBwaHkpOwogCXN0cnVjdCBkcm1f
bW9kZXNldF9hY3F1aXJlX2N0eCBjdHg7CiAJZW51bSBpbnRlbF9ob3RwbHVnX3N0YXRlIHN0YXRl
OwogCWludCByZXQ7CiAKKwlpZiAoaW50ZWxfZHAtPmNvbXBsaWFuY2UudGVzdF9hY3RpdmUgJiYK
KwkgICAgaW50ZWxfZHAtPmNvbXBsaWFuY2UudGVzdF90eXBlID09IERQX1RFU1RfTElOS19QSFlf
VEVTVF9QQVRURVJOKSB7CisJCWludGVsX2RwX3BoeV90ZXN0KGVuY29kZXIpOworCQkvKiBqdXN0
IGRvIHRoZSBQSFkgdGVzdCBhbmQgbm90aGluZyBlbHNlICovCisJCXJldHVybiBJTlRFTF9IT1RQ
TFVHX1VOQ0hBTkdFRDsKKwl9CisKIAlzdGF0ZSA9IGludGVsX2VuY29kZXJfaG90cGx1ZyhlbmNv
ZGVyLCBjb25uZWN0b3IpOwogCiAJZHJtX21vZGVzZXRfYWNxdWlyZV9pbml0KCZjdHgsIDApOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDMwNzEzODE2YmY5ZC4u
MzQ5NjQ3ZjZiYmI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBA
IC01NTIyLDcgKzU1MjIsNyBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RvX3BoeV90ZXN0KHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXJldHVybiAwOwogfQogCi1zdGF0aWMgdm9pZCBp
bnRlbF9kcF9waHlfdGVzdChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3ZvaWQgaW50
ZWxfZHBfcGh5X3Rlc3Qoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0
IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4IGN0eDsKIAlpbnQgcmV0OwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5oCmluZGV4IDZhMmM3NTlhZDQ2Zi4uZDQyODYwZWY0NTIxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCkBAIC0xMzcsNSArMTM3LDYg
QEAgY29uc3Qgc3RydWN0IGRwbGwgKnZsdl9nZXRfZHBsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSk7CiB2b2lkIGludGVsX2RwX2NoZWNrX2ZybF90cmFpbmluZyhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTsKIHZvaWQgaW50ZWxfZHBfcGNvbl9kc2NfY29uZmlndXJlKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsKK3ZvaWQgaW50ZWxfZHBfcGh5X3Rlc3Qoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpOwogCiAjZW5kaWYgLyogX19JTlRFTF9EUF9IX18gKi8KLS0gCjIuMjYuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
