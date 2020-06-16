Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEED1FC0AE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 23:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB56F6E996;
	Tue, 16 Jun 2020 21:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C006E93B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 21:11:49 +0000 (UTC)
IronPort-SDR: As0d/aviuKGaWHBFKY400fFOX4wBguy3mJ3Nc1hS5a/NrvqiPDWlAp0flbTdCCIN9Pi5A4PT9H
 Fe/f3uyckn6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 14:11:49 -0700
IronPort-SDR: KwtWh9kMk4CF90rhDp1TVo/ESMt+CzZZ0sQQxhoEnJn823QDkhWz1CXlBguuXbxjpdSg5AKxBN
 k+g9jQk2DWlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="273288317"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 14:11:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 00:11:44 +0300
Message-Id: <20200616211146.23027-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915/tgl+: Use the correct DP_TP_*
 register instances in MST encoders
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

TVNUIGVuY29kZXJzIG11c3QgdXNlIHRoZSBtYXN0ZXIgTVNUIHRyYW5zY29kZXIncyBEUF9UUF9T
VEFUVVMgYW5kCkRQX1RQX0NPTlRST0wgcmVnaXN0ZXJzLiBBdG0sIGR1cmluZyB0aGUgSFcgcmVh
ZG91dCBvZiBhbiBNU1QgZW5jb2Rlcgpjb25uZWN0ZWQgdG8gYSBzbGF2ZSB0cmFuc2NvZGVyIHdl
IHJlc2V0IHRoZXNlIHJlZ2lzdGVyIGFkZHJlc3NlcyBpbgppbnRlbF9kcDo6cmVncy5kcF90cF8q
IHRvIHRoZSBzbGF2ZSB0cmFuc2NvZGVyJ3MgRFBfVFBfKiByZWdpc3RlcgphZGRyZXNzZXMgaW5j
b3JyZWN0bHk7IGZpeCB0aGlzLgoKT25lIGV4YW1wbGUgd2hlcmUgdGhlIGFib3ZlIG92ZXJ3aXRl
IGhhcHBlbnMgaXMgdGhlIGVuY29kZXIgSFcgc3RhdGUKdmFsaWRhdGlvbiBhZnRlciBlbmFibGlu
ZyBtdWx0aXBsZSBzdHJlYW1zOyBzZWUKaW50ZWxfZHBfbXN0X2VuY19nZXRfY29uZmlnKCkuIEFm
dGVyIHRoYXQgZHVyaW5nIGRpc2FibGluZyBhbnkgc3RyZWFtCndlJ2xsIGdldCBhCgonVGltZWQg
b3V0IHdhaXRpbmcgZm9yIEFDVCBzZW50IHdoZW4gZGlzYWJsaW5nJwoKZXJyb3IsIGR1ZSB0byBy
ZWFkaW5nIGZyb20gdGhlIGluY29ycmVjdCBEUF9UUF9TVEFUVVMgcmVnaXN0ZXIuCgpUaGlzIGNo
YW5nZSByZXBsYWNlcwpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzY5
NTc3Lz9zZXJpZXM9NzgxOTMmcmV2PTEKd2hpY2gganVzdCBwYXBlcmVkIG92ZXIgdGhlIHByb2Js
ZW0uCgp2MjoKLSBDb3JyZWN0IHRoZSBmYWlsdXJlIHNjZW5hcmlvIGluIHRoZSBjb21taXQgbG9n
LiAoSm9zw6kpCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxNSArKysrKysrKysrLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGNhN2JiMjI5NGQyYi4u
NzNkNmNjMjkyOTFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
QEAgLTQxOTMsMTEgKzQxOTMsNiBAQCB2b2lkIGludGVsX2RkaV9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
dHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5zY29kZXIpKSkKIAkJcmV0dXJuOwogCi0JaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKLQkJaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsID0g
VEdMX0RQX1RQX0NUTChjcHVfdHJhbnNjb2Rlcik7Ci0JCWludGVsX2RwLT5yZWdzLmRwX3RwX3N0
YXR1cyA9IFRHTF9EUF9UUF9TVEFUVVMoY3B1X3RyYW5zY29kZXIpOwotCX0KLQogCWludGVsX2Rz
Y19nZXRfY29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnKTsKIAogCXRlbXAgPSBpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LCBUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpKTsKQEAgLTQy
OTksNiArNDI5NCwxNiBAQCB2b2lkIGludGVsX2RkaV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCQlicmVhazsKIAl9CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgeworCQllbnVtIHRyYW5zY29kZXIgdHJhbnNjb2RlciA9CisJCQlpbnRlbF9kcF9t
c3RfaXNfc2xhdmVfdHJhbnMocGlwZV9jb25maWcpID8KKwkJCXBpcGVfY29uZmlnLT5tc3RfbWFz
dGVyX3RyYW5zY29kZXIgOgorCQkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyOworCisJCWlu
dGVsX2RwLT5yZWdzLmRwX3RwX2N0bCA9IFRHTF9EUF9UUF9DVEwodHJhbnNjb2Rlcik7CisJCWlu
dGVsX2RwLT5yZWdzLmRwX3RwX3N0YXR1cyA9IFRHTF9EUF9UUF9TVEFUVVModHJhbnNjb2Rlcik7
CisJfQorCiAJcGlwZV9jb25maWctPmhhc19hdWRpbyA9CiAJCWludGVsX2RkaV9pc19hdWRpb19l
bmFibGVkKGRldl9wcml2LCBjcHVfdHJhbnNjb2Rlcik7CiAKLS0gCjIuMjMuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
