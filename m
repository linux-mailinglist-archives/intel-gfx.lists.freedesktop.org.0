Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D83A332F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC846EDD4;
	Thu, 10 Jun 2021 18:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541606EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:33:03 +0000 (UTC)
IronPort-SDR: 6B31UzTF0GLDcZIOWqDRov8KLQ2u1mT/bVpsCC8t7jwkUORtE3Mcm7iMq2Fpm6DFVWL8SFzhiV
 vTSr1DLYA9iw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="290999702"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="290999702"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:33:03 -0700
IronPort-SDR: 09FsLBVjAqoKGdw4pu/hX/KYe1JbI0/zatIfgoIiDWdOk1gKOtswi18QoiqQ41qy2NGjgJWqcF
 epLBwI8y3DDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486286292"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 10 Jun 2021 11:33:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:33:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:35 +0300
Message-Id: <20210610183237.3920-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/fbc: Extract intel_fbc_stolen_end()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRl
Y2x1dHRlciBmaW5kX2NvbXByZXNzaW9uX2xpbWl0KCkgYSBiaXQgYnkgZXh0cmFjdGluZwppbnRl
bF9mYmNfc3RvbGVuX2VuZCgpLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jIHwgMTkgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggMzFhYzExNjNmNTViLi42NDE1ZjJjZmQxYWMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtNDIzLDEzICs0MjMsOCBA
QCBzdGF0aWMgdTY0IGludGVsX2ZiY19jZmJfYmFzZV9tYXgoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiAJCXJldHVybiBCSVRfVUxMKDMyKTsKIH0KIAotc3RhdGljIGludCBmaW5kX2Nv
bXByZXNzaW9uX2xpbWl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkg
IHVuc2lnbmVkIGludCBzaXplLAotCQkJCSAgdW5zaWduZWQgaW50IGZiX2NwcCkKK3N0YXRpYyB1
NjQgaW50ZWxfZmJjX3N0b2xlbl9lbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogewotCXN0cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOwotCWludCBjb21w
cmVzc2lvbl9saW1pdCA9IDE7Ci0JaW50IHJldDsKIAl1NjQgZW5kOwogCiAJLyogVGhlIEZCQyBo
YXJkd2FyZSBmb3IgQkRXL1NLTCBkb2Vzbid0IGhhdmUgYWNjZXNzIHRvIHRoZSBzdG9sZW4KQEAg
LTQ0Miw3ICs0MzcsMTcgQEAgc3RhdGljIGludCBmaW5kX2NvbXByZXNzaW9uX2xpbWl0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAllbHNlCiAJCWVuZCA9IFU2NF9NQVg7CiAK
LQllbmQgPSBtaW4oZW5kLCBpbnRlbF9mYmNfY2ZiX2Jhc2VfbWF4KGRldl9wcml2KSk7CisJcmV0
dXJuIG1pbihlbmQsIGludGVsX2ZiY19jZmJfYmFzZV9tYXgoZGV2X3ByaXYpKTsKK30KKworc3Rh
dGljIGludCBmaW5kX2NvbXByZXNzaW9uX2xpbWl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKKwkJCQkgIHVuc2lnbmVkIGludCBzaXplLAorCQkJCSAgdW5zaWduZWQgaW50IGZi
X2NwcCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAmZGV2X3ByaXYtPmZiYzsKKwl1NjQg
ZW5kID0gaW50ZWxfZmJjX3N0b2xlbl9lbmQoZGV2X3ByaXYpOworCWludCBjb21wcmVzc2lvbl9s
aW1pdCA9IDE7CisJaW50IHJldDsKIAogCS8qIEhBQ0s6IFRoaXMgY29kZSBkZXBlbmRzIG9uIHdo
YXQgd2Ugd2lsbCBkbyBpbiAqX2VuYWJsZV9mYmMuIElmIHRoYXQKIAkgKiBjb2RlIGNoYW5nZXMs
IHRoaXMgY29kZSBuZWVkcyB0byBjaGFuZ2UgYXMgd2VsbC4KLS0gCjIuMzEuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
