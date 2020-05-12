Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9727E1CFC6B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 19:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88976E950;
	Tue, 12 May 2020 17:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F95A6E954
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 17:42:09 +0000 (UTC)
IronPort-SDR: FTe3giW57hG+Ir0G1WMijX3z1mEQRrBHDYU4lvN45Ulm4EjNXNRpAOcyPv6AaARMOve2whnAI1
 NXZieVwQm0aQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:42:08 -0700
IronPort-SDR: TmbXmNuuZwIX0VaWfGQz/pm6wzvTrZgYce+EE5P2K1jwMnkgVpytyTOOyLZgoqUD8Qh+Orw1/r
 PwXWe5Bvcv1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="280212994"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 12 May 2020 10:42:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 20:42:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 20:41:45 +0300
Message-Id: <20200512174145.3186-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Replace some hand rolled max()s
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
cmVlbXBoX21heCA9IGludGVsX2RwLT5wcmVlbXBoX21heChpbnRlbF9kcCk7Ci0tIAoyLjI2LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
