Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 656491CD37
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 18:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB7E89293;
	Tue, 14 May 2019 16:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82ED489293
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 16:46:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 09:46:53 -0700
X-ExtLoop1: 1
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2019 09:46:53 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 09:46:53 -0700
Message-Id: <20190514164653.935-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190514164653.935-1-stuart.summers@intel.com>
References: <20190514164653.935-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Extend reset modparam to domain
 resets
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhlIGV2ZW50IGEgcGxhdGZvcm0gZG9lcyBub3QgcHJvcGVybHkgaW1wbGVtZW50IHJlc2V0
LApkbyBub3QgZ28gdGhyb3VnaCByZXNldCBmbG93cyBmb3IgZW5naW5lIGRvbWFpbnMgdG8gYXZv
aWQKYW4gdW5saWtlbHkgc2l0dWF0aW9uIHdoZXJlIHdyaXRlcyBhcmUgYWNjZXB0ZWQgYnV0IHJl
Z2lzdGVyCnZhbHVlcyBhcmUgbmV2ZXIgY2xlYXJlZCwgYXMgdGhpcyBjYW4gcmVzdWx0IGluIEdQ
VSB3ZWRnZXMKaW4gdGhlc2UgY2FzZXMuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IDQ2NDM2OWJj
NTVhZC4uODFmOWY5ZjczYjFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMK
QEAgLTMwOSw2ICszMDksMTIgQEAgc3RhdGljIGludCBnZW42X2h3X2RvbWFpbl9yZXNldChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSAmaTkxNS0+dW5jb3JlOwogCWludCBlcnI7CiAKKwlpZiAoIWk5MTVfbW9kcGFyYW1zLnJlc2V0
KSB7CisJCURSTV9ERUJVR19EUklWRVIoIlNraXBwaW5nIDB4JTA4eCBlbmdpbmVzIHJlc2V0XG4i
LAorCQkJCSBod19kb21haW5fbWFzayk7CisJCXJldHVybiAwOworCX0KKwogCS8qCiAJICogR0VO
Nl9HRFJTVCBpcyBub3QgaW4gdGhlIGd0IHBvd2VyIHdlbGwsIG5vIG5lZWQgdG8gY2hlY2sKIAkg
KiBmb3IgZmlmbyBzcGFjZSBmb3IgdGhlIHdyaXRlIG9yIGZvcmNld2FrZSB0aGUgY2hpcCBmb3IK
QEAgLTUxNyw2ICs1MjMsMTMgQEAgc3RhdGljIGludCBnZW44X2VuZ2luZV9yZXNldF9wcmVwYXJl
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJcmV0dXJuIDA7CiAJfQogCisJaWYg
KCFpOTE1X21vZHBhcmFtcy5yZXNldCkgeworCQlEUk1fREVCVUdfRFJJVkVSKCJTa2lwcGluZyAl
cyByZXNldCByZXF1ZXN0IHtyZXF1ZXN0OiAlMDh4LCBSRVNFVF9DVEw6ICUwOHh9XG4iLAorCQkJ
CSBlbmdpbmUtPm5hbWUsIHJlcXVlc3QsCisJCQkJIGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29y
ZSwgcmVnKSk7CisJCXJldHVybiAwOworCX0KKwogCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNv
cmUsIHJlZywgX01BU0tFRF9CSVRfRU5BQkxFKHJlcXVlc3QpKTsKIAlyZXQgPSBfX2ludGVsX3dh
aXRfZm9yX3JlZ2lzdGVyX2Z3KHVuY29yZSwgcmVnLCBtYXNrLCBhY2ssCiAJCQkJCSAgIDcwMCwg
MCwgTlVMTCk7Ci0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
