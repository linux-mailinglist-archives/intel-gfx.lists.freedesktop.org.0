Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5F1E012C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F5B6E4FF;
	Tue, 22 Oct 2019 09:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E526E4FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:53:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:53:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="200731811"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 22 Oct 2019 02:53:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 12:51:55 +0300
Message-Id: <20191022095155.30991-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Add new CNL PCH ID seen on a CML
 platform
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
Cc: Cyrus <cyrus.lien@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXRtIHdlIGRvbid0IGRldGVjdCBhIFBDSCB3aXRoIFBDSSBJRCAweEEzQzEgd2hpY2ggc2hvd2Vk
IHVwIG5vdyBvbiBhIENNTApwbGF0Zm9ybS4gV2UgZG9uJ3QgaGF2ZSB0aGUgb2ZmaWNpYWwgYXNz
aWdubWVudCBvZiB0aGUgUENIIFBDSSBJRHMsIGJ1dAp0aGlzIGxvb2tzIGxpa2UgYSBDTlAgd2hp
Y2ggd2FzIGFscmVhZHkgdXNlZCBvbiBDTUwgcGxhdGZvcm1zLiBMZXQncyBhZGQKdGhlIG5ldyBJ
RC0+UENIIHR5cGUgbWFwcGluZyBhY2NvcmRpbmdseS4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwNTEKUmVwb3J0ZWQtYW5kLXRlc3Rl
ZC1ieTogQ3lydXMgPGN5cnVzLmxpZW5AY2Fub25pY2FsLmNvbT4KQ2M6IEN5cnVzIDxjeXJ1cy5s
aWVuQGNhbm9uaWNhbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyB8IDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNo
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwppbmRleCAxMDM1ZDNkNDZmZDgu
LjQzZjIzODIwZDAzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNo
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKQEAgLTYxLDYgKzYxLDcg
QEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCB1bnNpZ25lZCBzaG9ydCBpZCkKIAkJLyogS0JQIGlzIFNQVCBjb21wYXRpYmxlICovCiAJCXJl
dHVybiBQQ0hfU1BUOwogCWNhc2UgSU5URUxfUENIX0NOUF9ERVZJQ0VfSURfVFlQRToKKwljYXNl
IElOVEVMX1BDSF9DTlAyX0RFVklDRV9JRF9UWVBFOgogCQlEUk1fREVCVUdfS01TKCJGb3VuZCBD
YW5ub24gTGFrZSBQQ0ggKENOUClcbiIpOwogCQlXQVJOX09OKCFJU19DQU5OT05MQUtFKGRldl9w
cml2KSAmJiAhSVNfQ09GRkVFTEFLRShkZXZfcHJpdikpOwogCQlyZXR1cm4gUENIX0NOUDsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcGNoLmgKaW5kZXggZjRkYzE4YzM0MjkxLi4xMTE1YzZhMDUyMmMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCkBAIC00MCw2ICs0MCw3IEBAIGVudW0gaW50ZWxfcGNo
IHsKICNkZWZpbmUgSU5URUxfUENIX1NQVF9MUF9ERVZJQ0VfSURfVFlQRQkJMHg5RDAwCiAjZGVm
aW5lIElOVEVMX1BDSF9LQlBfREVWSUNFX0lEX1RZUEUJCTB4QTI4MAogI2RlZmluZSBJTlRFTF9Q
Q0hfQ05QX0RFVklDRV9JRF9UWVBFCQkweEEzMDAKKyNkZWZpbmUgSU5URUxfUENIX0NOUDJfREVW
SUNFX0lEX1RZUEUJCTB4QTM4MAogI2RlZmluZSBJTlRFTF9QQ0hfQ05QX0xQX0RFVklDRV9JRF9U
WVBFCQkweDlEODAKICNkZWZpbmUgSU5URUxfUENIX0NNUF9ERVZJQ0VfSURfVFlQRQkJMHgwMjgw
CiAjZGVmaW5lIElOVEVMX1BDSF9DTVAyX0RFVklDRV9JRF9UWVBFCQkweDA2ODAKLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
