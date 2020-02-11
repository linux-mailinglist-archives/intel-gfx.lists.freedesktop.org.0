Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DC9159922
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DB26F42A;
	Tue, 11 Feb 2020 18:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69DC66F42B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:50:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 10:50:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="313155508"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.229])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2020 10:50:10 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 10:50:07 -0800
Message-Id: <20200211185008.30806-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/mst: Set intel_dp_set_m_n() for
 MST slaves
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDFjOWQyZWIyNDE1MyAoImRybS9pOTE1OiBtb3ZlIGludGVsX2RwX3NldF9tX24oKSB0
byBlbmNvZGVyIGZvcgpEREkgcGxhdGZvcm1zIikgbW92ZWQgdGhlIGludGVsX2RwX3NldF9tX24o
KSBmcm9tIGhzd19jcnRjX2VuYWJsZSgpCnRvIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKCkgYnV0
IGl0IG1pc3NlZCBhZGQgaXQgdG8KaW50ZWxfbXN0X3ByZV9lbmFibGVfZHAoKSBjYXVzaW5nIE1T
VCBzbGF2ZXMgdG8gbm90IHdvcmsuCgp2MjogTm90IHNldHRpbmcgaW50ZWxfZGRpX3NldF9kcF9t
c2EoKSB0d2ljZSBmb3IgTVNUIG1hc3RlcgoKRml4ZXM6IDFjOWQyZWIyNDE1MyAoImRybS9pOTE1
OiBtb3ZlIGludGVsX2RwX3NldF9tX24oKSB0byBlbmNvZGVyIGZvciBEREkgcGxhdGZvcm1zIikK
Q2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICB8IDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwppbmRleCA1NDRlMTU2MDNlZjkuLmExZmQ4ZmQ2N2M4NSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNjE1LDEwICszNjE1LDExIEBAIHN0
YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCS8qIE1TVCB3aWxsIGNhbGwgYSBzZXR0aW5nIG9mIE1TQSBhZnRlciBhbiBhbGxv
Y2F0aW5nIG9mIFZpcnR1YWwgQ2hhbm5lbAogCSAqIGZyb20gTVNUIGVuY29kZXIgcHJlX2VuYWJs
ZSBjYWxsYmFjay4KIAkgKi8KLQlpZiAoIWludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwg
SU5URUxfT1VUUFVUX0RQX01TVCkpCisJaWYgKCFpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3Rh
dGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKSB7CiAJCWludGVsX2RkaV9zZXRfZHBfbXNhKGNydGNf
c3RhdGUsIGNvbm5fc3RhdGUpOwogCi0JaW50ZWxfZHBfc2V0X21fbihjcnRjX3N0YXRlLCBNMV9O
MSk7CisJCWludGVsX2RwX3NldF9tX24oY3J0Y19zdGF0ZSwgTTFfTjEpOworCX0KIH0KIAogc3Rh
dGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGVfaGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmlu
ZGV4IDljZDU5MTQxOTUzZC4uZDdiZmE3YzM1MGU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTQ4MCw2ICs0ODAsOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9tc3RfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJ
aW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2NrKHBpcGVfY29uZmlnKTsKIAogCWludGVsX2RkaV9z
ZXRfZHBfbXNhKHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKKworCWludGVsX2RwX3NldF9tX24o
cGlwZV9jb25maWcsIE0xX04xKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfbXN0X2VuYWJsZV9k
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKLS0gCjIuMjUuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
