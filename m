Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB87930E9F6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 03:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188E26EC66;
	Thu,  4 Feb 2021 02:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95BF6EC66
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 02:08:57 +0000 (UTC)
IronPort-SDR: CSqx2KY1bn9YzkoAydH0sweZCrHozHpm1Xo0AmVaS+xD5DOvNxd3R5iqbgv9vvsY7LrvVof+Ei
 2bXRu0wOiKgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="177649099"
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="177649099"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 18:08:55 -0800
IronPort-SDR: 78aJ6O/z3f5zIi4vFc4KbnuxoufMh2sfxnZWv8OEcBKXrI8BjwUI0JQPOaXqCJsdQXUCleiLd1
 t0X5jiHPwUXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="414613466"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 03 Feb 2021 18:08:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 04:08:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 04:08:46 +0200
Message-Id: <20210204020846.2094-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210204020846.2094-1-ville.syrjala@linux.intel.com>
References: <20210204020846.2094-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Use intel_hdmi_port_clock() more
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIGludGVsX2hkbWlfcG9ydF9jbG9jaygpIHN0dWZmCndpdGgg
dGhlIHJlYWwgdGhpbmcuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIHwgMjcgKysrKysrKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDY2ZTFhYzM4ODdjNi4uNDU3YTE2Yzg4MDNhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMjIyOSw2ICsy
MjI5LDE2IEBAIGhkbWlfcG9ydF9jbG9ja192YWxpZChzdHJ1Y3QgaW50ZWxfaGRtaSAqaGRtaSwK
IAlyZXR1cm4gTU9ERV9PSzsKIH0KIAorc3RhdGljIGludCBpbnRlbF9oZG1pX3BvcnRfY2xvY2so
aW50IGNsb2NrLCBpbnQgYnBjKQoreworCS8qCisJICogTmVlZCB0byBhZGp1c3QgdGhlIHBvcnQg
bGluayBieToKKwkgKiAgMS41eCBmb3IgMTJicGMKKwkgKiAgMS4yNXggZm9yIDEwYnBjCisJICov
CisJcmV0dXJuIGNsb2NrICogYnBjIC8gODsKK30KKwogc3RhdGljIGVudW0gZHJtX21vZGVfc3Rh
dHVzCiBpbnRlbF9oZG1pX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwKIAkJICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCkBAIC0yMjYwLDE3ICsy
MjcwLDE4IEBAIGludGVsX2hkbWlfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAogCQljbG9jayAvPSAyOwogCiAJLyogY2hlY2sgaWYgd2UgY2FuIGRvIDhicGMgKi8K
LQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRtaSwgY2xvY2ssIHRydWUsIGhhc19o
ZG1pX3NpbmspOworCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192YWxpZChoZG1pLCBpbnRlbF9o
ZG1pX3BvcnRfY2xvY2soY2xvY2ssIDgpLAorCQkJCSAgICAgICB0cnVlLCBoYXNfaGRtaV9zaW5r
KTsKIAogCWlmIChoYXNfaGRtaV9zaW5rKSB7CiAJCS8qIGlmIHdlIGNhbid0IGRvIDhicGMgd2Ug
bWF5IHN0aWxsIGJlIGFibGUgdG8gZG8gMTJicGMgKi8KIAkJaWYgKHN0YXR1cyAhPSBNT0RFX09L
ICYmICFIQVNfR01DSChkZXZfcHJpdikpCi0JCQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFs
aWQoaGRtaSwgY2xvY2sgKiAzIC8gMiwKKwkJCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192YWxp
ZChoZG1pLCBpbnRlbF9oZG1pX3BvcnRfY2xvY2soY2xvY2ssIDEyKSwKIAkJCQkJCSAgICAgICB0
cnVlLCBoYXNfaGRtaV9zaW5rKTsKIAogCQkvKiBpZiB3ZSBjYW4ndCBkbyA4LDEyYnBjIHdlIG1h
eSBzdGlsbCBiZSBhYmxlIHRvIGRvIDEwYnBjICovCiAJCWlmIChzdGF0dXMgIT0gTU9ERV9PSyAm
JiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQotCQkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2Nr
X3ZhbGlkKGhkbWksIGNsb2NrICogNSAvIDQsCisJCQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tf
dmFsaWQoaGRtaSwgaW50ZWxfaGRtaV9wb3J0X2Nsb2NrKGNsb2NrLCAxMCksCiAJCQkJCQkgICAg
ICAgdHJ1ZSwgaGFzX2hkbWlfc2luayk7CiAJfQogCWlmIChzdGF0dXMgIT0gTU9ERV9PSykKQEAg
LTIzNzgsMTYgKzIzODksNiBAQCBpbnRlbF9oZG1pX3ljYmNyNDIwX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlyZXR1cm4gaW50ZWxfcGNoX3BhbmVsX2ZpdHRp
bmcoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7CiB9CiAKLXN0YXRpYyBpbnQgaW50ZWxfaGRtaV9w
b3J0X2Nsb2NrKGludCBjbG9jaywgaW50IGJwYykKLXsKLQkvKgotCSAqIE5lZWQgdG8gYWRqdXN0
IHRoZSBwb3J0IGxpbmsgYnk6Ci0JICogIDEuNXggZm9yIDEyYnBjCi0JICogIDEuMjV4IGZvciAx
MGJwYwotCSAqLwotCXJldHVybiBjbG9jayAqIGJwYyAvIDg7Ci19Ci0KIHN0YXRpYyBpbnQgaW50
ZWxfaGRtaV9jb21wdXRlX2JwYyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgaW50IGNsb2NrKQot
LSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
