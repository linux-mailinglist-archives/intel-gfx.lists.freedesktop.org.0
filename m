Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D6EE37E4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 18:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79406E47E;
	Thu, 24 Oct 2019 16:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5966E47E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 16:29:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 09:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="210190839"
Received: from dhiatt-desk.jf.intel.com ([10.54.81.11])
 by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2019 09:29:58 -0700
From: don.hiatt@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 09:29:58 -0700
Message-Id: <20191024162958.11839-1-don.hiatt@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o GuC
 submission but enabled
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

RnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgoKQ2hlY2sgdG8gc2VlIGlmIEd1
QyBzdWJtaXNzaW9uIGlzIGVuYWJsZWQgYmVmb3JlIHJlcXVlc3RpbmcgdGhlCkVYSVRfU19TVEFU
RSBhY3Rpb24uCgpPbiBzb21lIHBsYXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBv
cnQgR3VDIHN1Ym1pc3Npb24sIGJ1dAp0aGUgdXNlciBlbmFibGVkIHRoZSBHdUMgY29tbXVuaWNh
dGlvbiAoZS5nIGZvciBIdUMgYXV0aGVudGljYXRpb24pCmNhbGxpbmcgdGhlIEd1QyBFWElUX1Nf
U1RBVEUgYWN0aW9uIHJlc3VsdHMgaW4gbG9zZSBvZiBhYmlsaXR5IHRvCmVudGVyIFJDNi4gR3Vh
cmQgYWdhaW5zdCB0aGlzIGJ5IG9ubHkgcmVxdWVzdGluZyB0aGUgR3VDIGFjdGlvbiBvbgpwbGF0
Zm9ybXMgdGhhdCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLgoKSSd2ZSB2ZXJmaWVkIHRoYXQgaW50
ZWxfZ3VjX3Jlc3VtZSgpIG9ubHkgZ2V0cyBjYWxsZWQgd2hlbiBkcml2ZXIKaXMgbG9hZGVkIHdp
dGg6IGd1Y19lbmFibGU9ezEsMiwzfSwgYWxsIG90aGVyIGNhc2VzIChubyBhcmdzLApndWNfZW5h
YmxlPXswLC0xfSB0aGUgaW50ZWxfZ3VjX3Jlc3VtZSgpIGlzIG5vdCBjYWxsZWQuCgpTaWduZWQt
b2ZmLWJ5OiBEb24gSGlhdHQgPGRvbi5oaWF0dEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWMuYwppbmRleCAzN2Y3YmNiZjdkYWMuLjMzMzE4ZWQxMzVjMCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKQEAgLTU2NSw3ICs1NjUsMTAgQEAgaW50IGludGVsX2d1
Y19yZXN1bWUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQogCQlHVUNfUE9XRVJfRDAsCiAJfTsKIAot
CXJldHVybiBpbnRlbF9ndWNfc2VuZChndWMsIGFjdGlvbiwgQVJSQVlfU0laRShhY3Rpb24pKTsK
KwlpZiAoZ3VjLT5zdWJtaXNzaW9uX3N1cHBvcnRlZCkKKwkJcmV0dXJuIGludGVsX2d1Y19zZW5k
KGd1YywgYWN0aW9uLCBBUlJBWV9TSVpFKGFjdGlvbikpOworCisJcmV0dXJuIDA7CiB9CiAKIC8q
KgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
