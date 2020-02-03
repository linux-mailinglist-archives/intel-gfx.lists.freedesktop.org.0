Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEABC151297
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 23:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448616E450;
	Mon,  3 Feb 2020 22:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8083A6E450
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 22:55:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 14:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="224433205"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.13.31])
 by fmsmga007.fm.intel.com with ESMTP; 03 Feb 2020 14:55:57 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 14:55:49 -0800
Message-Id: <20200203225549.152301-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Set TRANS_DDI_MODE_SELECT
 to default value when clearing DDI select
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

VEdMIGlzIHN1ZmZlcmluZyBvZiB0aW1lb3V0cyBhbmQgZmlmbyB1bmRlcnJ1bnMgd2hlbiBkaXNh
YmxpbmcKdHJhbnNjb2RlciBpbiBNU1QgbW9kZSwgdGhpcyBpcyBmaXhlZCBieSBzZXQgVFJBTlNf
RERJX01PREVfU0VMRUNUIHRvCjAoSERNSSBtb2RlKSB3aGVuIGNsZWFyaW5nIERESSBzZWxlY3Qu
CgpBbHRob3VnaCBCU3BlYyBkaXNhYmxlIHNlcXVlbmNlIGRvbid0IHJlcXVpcmUgdGhpcyBzdGVw
LCBpdCBpcyBhCmhhcm1sZXNzIGNoYW5nZSBhbmQgaXQgaXMgYWxzbyBkb25lIGJ5IFdpbmRvd3Mg
ZHJpdmVyLgpBbnlob3cgSFcgdGVhbSB3YXMgbm90aWZpZWQgYWJvdXQgdGhhdCBidXQgaXQgY2Fu
IHRha2Ugc29tZSB0aW1lIHRvCmRvY3VtZW50YXRpb24gdG8gYmUgdXBkYXRlZC4KCkEgY2FzZSB0
aGF0IGFsd2F5cyBsZWFkIHRvIHRob3NlIGlzc3VlcyBpczoKLSBkbyBhIG1vZGVzZXQgZW5hYmxp
bmcgcGlwZSBBIGFuZCBwaXBlIEIgaW4gdGhlIHNhbWUgTVNUIHN0cmVhbQpsZWF2aW5nIEEgYXMg
bWFzdGVyCi0gZGlzYWJsZSBwaXBlIEEsIHByb21vdGUgQiBhcyBtYXN0ZXIgZG9pbmcgYSBmdWxs
IG1vZGVzZXQgaW4gQQotIGVuYWJsZSBwaXBlIEEsIGNoYW5naW5nIHRoZSBtYXN0ZXIgdHJhbnNj
b2RlciBiYWNrIHRvIEEoZG9pbmcgYQpmdWxsIG1vZGVzZXQgaW4gQikKLSBQb3c6IHVuZGVycnVu
cyBhbmQgdGltZW91dHMKClRoZSB0cmFuc2NvZGVycyBpbnZvbHZlZCB3aWxsIG9ubHkgd29yayBh
Z2FpbiB3aGVuIGNvbXBsZXRlIGRpc2FibGVkCmFuZCB0aGVpciBwb3dlciB3ZWxscyB0dXJuZWQg
b2ZmIGNhdXNpbmcgYSByZXNldCBpbiB0aGVpciByZWdpc3RlcnMuCgp2MjogU2V0dGluZyBUUkFO
U19ERElfTU9ERV9TRUxFQ1QgdG8gZGVmYXVsdCB3aGVuIGNsZWFyaW5nIERESSBzZWxlY3QKbm90
IGFueW1vcmUgd2hlbiBkaXNhYmxpbmcgVFJBTlNfRERJLCBib3RoIHdvcmsgYnV0IHRoaXMgb25l
IGxvb2tzCm1vcmUgc2FmZS4gKFZpbGxlIGNvbW1lbnQpCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwppbmRleCBhYTA2NmZiOWViMDAuLjQ1MDgyZTcxMjYyYyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xOTg4LDEwICsxOTg4LDEyIEBAIHZv
aWQgaW50ZWxfZGRpX2Rpc2FibGVfdHJhbnNjb2Rlcl9mdW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlCiAJdmFsICY9IH5UUkFOU19ERElfRlVOQ19FTkFCTEU7CiAK
IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewotCQlpZiAoIWludGVsX2RwX21zdF9p
c19tYXN0ZXJfdHJhbnMoY3J0Y19zdGF0ZSkpCisJCWlmICghaW50ZWxfZHBfbXN0X2lzX21hc3Rl
cl90cmFucyhjcnRjX3N0YXRlKSkgewogCQkJdmFsICY9IH5UR0xfVFJBTlNfRERJX1BPUlRfTUFT
SzsKKwkJCXZhbCAmPSB+VFJBTlNfRERJX01PREVfU0VMRUNUX01BU0s7CisJCX0KIAl9IGVsc2Ug
ewotCQl2YWwgJj0gflRSQU5TX0RESV9QT1JUX01BU0s7CisJCXZhbCAmPSB+KFRSQU5TX0RESV9Q
T1JUX01BU0sgfCBUUkFOU19ERElfTU9ERV9TRUxFQ1RfTUFTSyk7CiAJfQogCWludGVsX2RlX3dy
aXRlKGRldl9wcml2LCBUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpLCB2YWwpOwog
CkBAIC0zNzI5LDYgKzM3MzEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxl
X2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJdmFsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwKIAkJCQkJICAgIFRSQU5TX0RESV9GVU5DX0NUTChjcHVfdHJhbnNjb2Rlcikp
OwogCQkJdmFsICY9IH5UR0xfVFJBTlNfRERJX1BPUlRfTUFTSzsKKwkJCXZhbCAmPSB+VFJBTlNf
RERJX01PREVfU0VMRUNUX01BU0s7CiAJCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwKIAkJCQkg
ICAgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSwKIAkJCQkgICAgICAgdmFs
KTsKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
