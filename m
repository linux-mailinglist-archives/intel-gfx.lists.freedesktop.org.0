Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F8E10B741
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787FE6E5BD;
	Wed, 27 Nov 2019 20:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCED5897F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 20:13:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 12:13:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="221091909"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 27 Nov 2019 12:13:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 22:13:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:12:21 +0200
Message-Id: <20191127201222.16669-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/14] drm/i915/fbc: Enable fbc by default on
 glk+ once again
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
dyB0aGF0IHdlIGhhdmUgdGhlIGdsaysgdy9hIGZvciBiYWNrIHRvIGJhY2sgZmJjIGRpc2FibGUg
KyBwbGFuZQp1cGRhdGUgaW4gcGxhY2Ugd2UgY2FuIG9uY2UgbW9yZSBlbmFibGUgZmJjIG9uIGds
aysgYnkgZGVmYXVsdC4KCkNjOiBEYW5pZWwgRHJha2UgPGRyYWtlQGVuZGxlc3NtLmNvbT4KQ2M6
IFBhdWxvIFphbm9uaSA8cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPgpDYzogSmlhbi1Ib25nIFBh
biA8amlhbi1ob25nQGVuZGxlc3NtLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggNzhm
ZTRhYmI1YTkzLi5jOTc2Njk4YjA3MjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYwpAQCAtMTI4OCwxMCArMTI4OCw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfc2FuaXRp
emVfZmJjX29wdGlvbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKCFI
QVNfRkJDKGRldl9wcml2KSkKIAkJcmV0dXJuIDA7CiAKLQkvKiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwODUgKi8KLQlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKLQkJcmV0dXJuIDA7Ci0KIAlp
ZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCiAJ
CXJldHVybiAxOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
