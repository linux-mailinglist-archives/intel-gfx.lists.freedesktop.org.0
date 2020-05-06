Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7241E1C6F3F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 13:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B875F6E863;
	Wed,  6 May 2020 11:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D33EF6E863
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 11:23:50 +0000 (UTC)
IronPort-SDR: Ae9SOnCSZ4c30MPfFs2CRpa0KG6rBRUR2e+Kcxe5AQNK0aVf7HD9uE+c7rcdtb3o8RH4vTmhUM
 eS1g2HGElm1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:23:50 -0700
IronPort-SDR: Y97L3fSKeTIcP3e1iixsGesscCygOhtRpLCpPw16/IhcKlSNjtiJu3wWxMlb21vEK/AKvxKbNN
 vXlYVAYga+9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="249747129"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 06 May 2020 04:23:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 14:23:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 14:23:26 +0300
Message-Id: <20200506112328.16562-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
References: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Replace some hand rolled max()s
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBtYXgoKSBpbnN0ZWFkIG9mIGhhbmQgcm9sbGluZyBpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCA5ICsrLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5jCmluZGV4IGFhN2FmNTMxYmNiOC4uMjQ5MzE0MmE3MGU5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwpAQCAtNTks
MTMgKzU5LDggQEAgdm9pZCBpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsCiAJdTggcHJlZW1waF9tYXg7CiAKIAlmb3IgKGxhbmUgPSAwOyBsYW5lIDwg
aW50ZWxfZHAtPmxhbmVfY291bnQ7IGxhbmUrKykgewotCQl1OCB0aGlzX3YgPSBkcm1fZHBfZ2V0
X2FkanVzdF9yZXF1ZXN0X3ZvbHRhZ2UobGlua19zdGF0dXMsIGxhbmUpOwotCQl1OCB0aGlzX3Ag
PSBkcm1fZHBfZ2V0X2FkanVzdF9yZXF1ZXN0X3ByZV9lbXBoYXNpcyhsaW5rX3N0YXR1cywgbGFu
ZSk7Ci0KLQkJaWYgKHRoaXNfdiA+IHYpCi0JCQl2ID0gdGhpc192OwotCQlpZiAodGhpc19wID4g
cCkKLQkJCXAgPSB0aGlzX3A7CisJCXYgPSBtYXgodiwgZHJtX2RwX2dldF9hZGp1c3RfcmVxdWVz
dF92b2x0YWdlKGxpbmtfc3RhdHVzLCBsYW5lKSk7CisJCXAgPSBtYXgocCwgZHJtX2RwX2dldF9h
ZGp1c3RfcmVxdWVzdF9wcmVfZW1waGFzaXMobGlua19zdGF0dXMsIGxhbmUpKTsKIAl9CiAKIAlw
cmVlbXBoX21heCA9IGludGVsX2RwLT5wcmVlbXBoX21heChpbnRlbF9kcCk7Ci0tIAoyLjI0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
