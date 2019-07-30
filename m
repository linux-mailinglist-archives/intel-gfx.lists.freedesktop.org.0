Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6777A2BC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1773F6E43D;
	Tue, 30 Jul 2019 08:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2FE6E43D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702433"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:11 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:44 +0530
Message-Id: <20190730073648.5157-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 2/6] drm/i915/tgl/dsi: Set latency PCS_DW1 for tgl
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGF0ZW5jeSBwcm9ncmFtbWluZyByZW1haW5zIHNhbWUgYXMgdGhhdCBvZiBJQ0wgYW5kCnNldHRp
bmcgbGF0ZW5jeSBvdGltaXphdGlvbiBmb3IgUENTX0RXMSBsYW5lcyBpcyBzYW1lIGFzCnRoYXQg
b2YgRUhMLCBoZW5jZSBleHRlbmRpbmcgaXQgdG8gVEdMLgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0
YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBVbWEg
U2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaWNsX2RzaS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMK
aW5kZXggN2I4ZmRiMTZiNjUxLi4zMTg1Y2IwYmFlNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jCkBAIC00MDMsOCArNDAzLDggQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNp
X2NvbmZpZ19waHlfbGFuZXNfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
CiAJCXRtcCB8PSBGUkNfTEFURU5DWV9PUFRJTV9WQUwoMHg1KTsKIAkJSTkxNV9XUklURShJQ0xf
UE9SVF9UWF9EVzJfR1JQKHBoeSksIHRtcCk7CiAKLQkJLyogRm9yIEVITCBzZXQgbGF0ZW5jeSBv
cHRpbWl6YXRpb24gZm9yIFBDU19EVzEgbGFuZXMgKi8KLQkJaWYgKElTX0VMS0hBUlRMQUtFKGRl
dl9wcml2KSkgeworCQkvKiBGb3IgRUhMLCBUR0wsIHNldCBsYXRlbmN5IG9wdGltaXphdGlvbiBm
b3IgUENTX0RXMSBsYW5lcyAqLworCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpIHx8IChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSkgewogCQkJdG1wID0gSTkxNV9SRUFEKElDTF9QT1JU
X1BDU19EVzFfQVVYKHBoeSkpOwogCQkJdG1wICY9IH5MQVRFTkNZX09QVElNX01BU0s7CiAJCQl0
bXAgfD0gTEFURU5DWV9PUFRJTV9WQUwoMCk7Ci0tIAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
