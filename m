Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B55A38142C
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 01:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E7D6F4B0;
	Fri, 14 May 2021 23:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9146F4B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 23:19:44 +0000 (UTC)
IronPort-SDR: W/QyLXXW8SuYDKBV8FMKALXEqKgqwZKInFSa//DMpaw6UadRbM0OFWd7MNJs/aQxzzsCw7KtQD
 6FRMCSAirB+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="199938030"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="199938030"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:19:43 -0700
IronPort-SDR: mTj0sVSny+id9SiMgXtwhcAN5BbrYs9zVnNo+cz1VkT3knaSpo3ajXXr15auksoR49crjHd3ZK
 KBimoqmrZLVQ==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="627453929"
Received: from rmjoslin-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.1.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:19:41 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 16:22:44 -0700
Message-Id: <20210514232247.144542-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: Fix fastsets involving
 PSR
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

Q29tbWl0IDc4Yjc3MmUxYTAxZiAoImRybS9pOTE1L2Rpc3BsYXk6IEZpbGwgUFNSIHN0YXRlIGR1
cmluZyBoYXJkd2FyZQpjb25maWd1cmF0aW9uIHJlYWQgb3V0IikgaXMgbm90IGFsbG93aW5nIGZh
c3RzZXRzIHRvIGhhcHBlbiB3aGVuIFBTUgpzdGF0ZXMgY2hhbmdlcyBidXQgUFNSIGlzIGEgZmVh
dHVyZSB0aGF0IGNhbiBiZSBlbmFibGVkIGFuZCBkaXNhYmxlZApkdXJpbmcgZmFzdHNldHMuCgpT
byBoZXJlIG1vdmluZyB0aGUgUFNSIHBpcGUgY29uZiBjaGVja3MgdG8gYSBibG9jayB0aGF0IGlz
IG9ubHkKZXhlY3V0ZWQgd2hlbiBjaGVja2luZyBpZiBIVyBzdGF0ZSBtYXRjaGVzIHdpdGggcmVx
dWVzdGVkIHN0YXRlLCBub3QKZHVyaW5nIHRoZSBwaGFzZSB3aGVyZSBpdCBjaGVja3MgaWYgZmFz
dHNldCBpcyBwb3NzaWJsZSBvciBub3QuCgpUaGVyZSBzdGlsbCBhIHN0YXRlIG1pc21hdGNoIG5v
dCBhbGxvd2luZyBmYXN0c2V0cyBiZXR3ZWVuIHN0YXRlcwp0dXJuaW5nIG9mZiBvciBvbiBQU1Ig
YmVjYXVzZSBvZiBjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZQpCSVQoRFBfU0RQX1ZTQykg
YnV0IGF0IGxlYXN0IGZvciBub3cgaXQgd2lsbCBhbGxvdyBhIGZhc3RzZXQgYmV0d2VlbgpQU1Ix
IDwtPiBQU1IyLCB0aGF0IGlzIGEgY2FzZSBoZWF2aWxseSB1c2VkIGJ5IENJIGR1ZSB0byBwaXBl
IENSQyBub3QKd29yayB3aXRoIFBTUjIsIGJ1dCB0aGUgcmVtYW5pbmcgaXNzdWUgd2lsbCBiZSBm
aXhlZCBpbiBhIGZ1dHVyZSBwYXRjaC4KCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25n
Lm11bkBpbnRlbC5jb20+CkNjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNy
aXBhZGFAaW50ZWwuY29tPgpSZXBvcnRlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KRml4ZXM6IDc4Yjc3MmUxYTAxZiAoImRybS9pOTE1L2Rpc3Bs
YXk6IEZpbGwgUFNSIHN0YXRlIGR1cmluZyBoYXJkd2FyZSBjb25maWd1cmF0aW9uIHJlYWQgb3V0
IikKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
aW5kZXggMGMyYjE5NDAwNmY4Li41MWY0OTkyNzFjYzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC04NTQ4LDYgKzg1NDgsMTEgQEAgaW50ZWxf
cGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVu
dF9jb25maWcsCiAJCWJwX2dhbW1hID0gaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNp
b24ocGlwZV9jb25maWcpOwogCQlpZiAoYnBfZ2FtbWEpCiAJCQlQSVBFX0NPTkZfQ0hFQ0tfQ09M
T1JfTFVUKGdhbW1hX21vZGUsIGh3LmdhbW1hX2x1dCwgYnBfZ2FtbWEpOworCisJCVBJUEVfQ09O
Rl9DSEVDS19CT09MKGhhc19wc3IpOworCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfcHNyMik7
CisJCVBJUEVfQ09ORl9DSEVDS19CT09MKGVuYWJsZV9wc3IyX3NlbF9mZXRjaCk7CisJCVBJUEVf
Q09ORl9DSEVDS19JKGRjM2NvX2V4aXRsaW5lKTsKIAl9CiAKIAlQSVBFX0NPTkZfQ0hFQ0tfQk9P
TChkb3VibGVfd2lkZSk7CkBAIC04NjMxLDExICs4NjM2LDYgQEAgaW50ZWxfcGlwZV9jb25maWdf
Y29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCiAJ
UElQRV9DT05GX0NIRUNLX0kodnJyLmZsaXBsaW5lKTsKIAlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIu
cGlwZWxpbmVfZnVsbCk7CiAKLQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfcHNyKTsKLQlQSVBF
X0NPTkZfQ0hFQ0tfQk9PTChoYXNfcHNyMik7Ci0JUElQRV9DT05GX0NIRUNLX0JPT0woZW5hYmxl
X3BzcjJfc2VsX2ZldGNoKTsKLQlQSVBFX0NPTkZfQ0hFQ0tfSShkYzNjb19leGl0bGluZSk7Ci0K
ICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfWAogI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19JCiAjdW5k
ZWYgUElQRV9DT05GX0NIRUNLX0JPT0wKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
