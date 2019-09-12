Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6583B101E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7FD6ED71;
	Thu, 12 Sep 2019 13:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DA76ED71
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 13:38:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 06:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385067868"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 06:38:26 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C93CE843D1C; Thu, 12 Sep 2019 16:38:20 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 16:38:16 +0300
Message-Id: <20190912133816.1382-4-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
References: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/tgl: Disable preemption while
 being debugged
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpXZSBzZWUgZmFp
bHVyZXMgd2hlcmUgdGhlIGNvbnRleHQgY29udGludWVzIGV4ZWN1dGluZyBwYXN0IGEKcHJlZW1w
dGlvbiBldmVudCwgZXZlbnR1YWxseSBsZWFkaW5nIHRvIHNpdHVhdGlvbnMgd2hlcmUgYSByZXF1
ZXN0IGhhcwpleGVjdXRlZCBiZWZvcmUgd2UgaGF2ZSBldmVudCBzdWJtaXR0ZWQgaXQgdG8gSFch
IEl0IHNlZW1zIGxpa2UgdGdsIGlzCmlnbm9yaW5nIG91ciBSSU5HX1RBSUwgdXBkYXRlcywgYnV0
IG1vcmUgbGlrZWx5IGlzIHRoYXQgdGhlcmUgaXMgYQptaXNzaW5nIHVwZGF0ZSByZXF1aXJlZCBm
b3Igb3VyIHNlbWFwaG9yZSB3YWl0cyBhcm91bmQgcHJlZW1wdGlvbi4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZmJlOThhMmRiODhlLi4xZjE3ZDU5Yzg2MmMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtNzk3LDYgKzc5Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJLmRpc3Bs
YXkuaGFzX21vZHVsYXJfZmlhID0gMSwKIAkuZW5naW5lX21hc2sgPQogCQlCSVQoUkNTMCkgfCBC
SVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAorCS5oYXNfbG9n
aWNhbF9yaW5nX3ByZWVtcHRpb24gPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dp
bmcgKi8KIH07CiAKICN1bmRlZiBHRU4KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
