Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1000FA4DB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 03:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739286E544;
	Wed, 13 Nov 2019 02:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF79C6E544
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 02:20:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 18:19:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,298,1569308400"; d="scan'208";a="287741686"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.167])
 by orsmga001.jf.intel.com with ESMTP; 12 Nov 2019 18:19:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 18:19:35 -0800
Message-Id: <20191113021935.41547-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: allow DVI/HDMI on port A
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

VGlnZXIgTGFrZSBzdXBwb3J0cyBIRE1JIG9uIHBvcnQgQS4gRm9yIG90aGVyIHBsYXRmb3JtcyB3
ZSBpZ25vcmUgd2hhdCB0aGUgVkJUCnNheXMgcmVnYXJkaW5nIEhETUkgdG8gd29ya2Fyb3VuZCBi
cm9rZW4gVkJUcywgc2VlIGNvbW1pdAoyYmE3ZDdlMDQzNzEgKCJkcm0vaTkxNS9iaW9zOiBpZ25v
cmUgSERNSSBvbiBwb3J0IEEiKS4gTWFrZSB0aGlzIGFwcGx5CmdlbjEyKyBzbyB0aGV5IGluaGVy
aXQgdGhlIFRHTCBiZWhhdmlvci4KClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDdj
MGNhNzMzYmVmOC4uZTZkYTk4NzI5ZTFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYwpAQCAtMTQ1MCw3ICsxNDUwLDcgQEAgc3RhdGljIHZvaWQgcGFyc2VfZGRp
X3BvcnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlzX2hkbWkgPSBpc19k
dmkgJiYgKGNoaWxkLT5kZXZpY2VfdHlwZSAmIERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVCkg
PT0gMDsKIAlpc19lZHAgPSBpc19kcCAmJiAoY2hpbGQtPmRldmljZV90eXBlICYgREVWSUNFX1RZ
UEVfSU5URVJOQUxfQ09OTkVDVE9SKTsKIAotCWlmIChwb3J0ID09IFBPUlRfQSAmJiBpc19kdmkp
IHsKKwlpZiAocG9ydCA9PSBQT1JUX0EgJiYgaXNfZHZpICYmIElOVEVMX0dFTihkZXZfcHJpdikg
PCAxMikgewogCQlEUk1fREVCVUdfS01TKCJWQlQgY2xhaW1zIHBvcnQgQSBzdXBwb3J0cyBEVkkl
cywgaWdub3JpbmdcbiIsCiAJCQkgICAgICBpc19oZG1pID8gIi9IRE1JIiA6ICIiKTsKIAkJaXNf
ZHZpID0gZmFsc2U7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmlu
ZGV4IGVkNGE2OGZiMzUxZi4uNjU5YTAzYjA4ODQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMzE0MCw3ICszMTQwLDcgQEAgdm9pZCBpbnRlbF9oZG1p
X2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0
LAogCURSTV9ERUJVR19LTVMoIkFkZGluZyBIRE1JIGNvbm5lY3RvciBvbiBbRU5DT0RFUjolZDol
c11cbiIsCiAJCSAgICAgIGludGVsX2VuY29kZXItPmJhc2UuYmFzZS5pZCwgaW50ZWxfZW5jb2Rl
ci0+YmFzZS5uYW1lKTsKIAotCWlmIChXQVJOX09OKHBvcnQgPT0gUE9SVF9BKSkKKwlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA8IDEyICYmIFdBUk5fT04ocG9ydCA9PSBQT1JUX0EpKQogCQlyZXR1
cm47CiAKIAlpZiAoV0FSTihpbnRlbF9kaWdfcG9ydC0+bWF4X2xhbmVzIDwgNCwKLS0gCjIuMjQu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
