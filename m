Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF153485FA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 01:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAA06EADE;
	Thu, 25 Mar 2021 00:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA1D86EADE
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 00:44:21 +0000 (UTC)
IronPort-SDR: JLxX7a7PiFODRuCI+wEW/hkbH1xx8giNpRyCC852c77mwZtubpz/fHvUUQu55sSfF1nGf99QLf
 Bkkt9a0pK1aQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="190246566"
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="190246566"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 17:44:21 -0700
IronPort-SDR: zUhLyj3DbafKC7eQNKx1fZZEoFAok1Q0fd9OFxacVDO7V3l6j++mxEaxLDu94RAqV5DtcmaFcu
 e/7xz1SCCbHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="382000406"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 24 Mar 2021 17:44:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Mar 2021 02:44:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 02:44:15 +0200
Message-Id: <20210325004415.17432-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
References: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Stop adding planes to the commit
 needlessly
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkYnVmIGJhbmR3aWR0aCBjYWxjdWxhdGlvbnMgZG9uJ3QgbmVlZCB0aGUgcGxhbmVzIHRvIGJl
CmFkZGVkIHRvIHRoZSBzdGF0ZS4gRWFjaCBwbGFuZSdzIGRhdGEgcmF0ZSBoYXMgYWxyZWFkeSBi
ZWVuCnByZWNhbGN1bGF0ZWQgYW5kIHN0b3JlZCBpbiB0aGUgY3J0YyBzdGF0ZSwgYW5kIHRoYXQg
d2l0aAp0aGUgZGJ1ZiBzbGljZSB1c2FnZSBmb3IgZWFjaCBwbGFuZSBpcyBhbGwgdGhlIGRidWYg
YmFuZHdpZHRoCmNvZGUgbmVlZHMgdG8gZmlndXJlIG91dCB3aGF0IHRoZSBtaW5pbXVtIGNkY2xr
IGlzLgoKV2hhdCB3ZSdyZSB0cnlpbmcgdG8gZG8gaGVyZSBpcyBtYWtlIHN1cmUgZWFjaCBwbGFu
ZSByZWNhbGN1bGF0ZXMKaXRzIG1pbmltdW0gY2RjbGsgKGllLiBwbGFuZS0+bWluX2NkY2xrKCkp
IG9uIHRob3NlIHBsYXRmb3JtcyB3aGVyZQp0aGUgbnVtYmVyIG9mIGFjdGl2ZSBwbGFuZXMgYWZm
ZWN0cyB0aGUgcmVzdWx0IG9mIHNhaWQgY2FsY3VsYXRpb24uCk5vdGhpbmcgdG8gZG8gd2l0aCBh
bnkgZGJ1ZiBjZGNsayByZXF1aXJlbWVudHMuCgpOb3Qgc3VyZSBpZiB3ZSBoYWQgc3R1ZmYgaW4g
c2xpZ2h0bHkgZGlmZmVyZW50IG9yZGVyIG9yIHdoYXQsCmJ1dCBhdCBsZWFzdCBpbiB0aGUgY3Vy
cmVudCBzY2hlbWUgdGhpcyBpcyBub3QgbmVjZXNzYXJ5LgoKQ2M6IFN0YW5pc2xhdiBMaXNvdnNr
aXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDE3NDkwZDI5ZGMxMy4uMjMw
MGQ1OGJhNDdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtOTgxMSw3ICs5ODExLDcgQEAgc3RhdGljIGJvb2wgYWN0aXZlX3BsYW5lc19hZmZl
Y3RzX21pbl9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJLyogU2Vl
IHtoc3csdmx2LGl2Yn1fcGxhbmVfcmF0aW8oKSAqLwogCXJldHVybiBJU19CUk9BRFdFTEwoZGV2
X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpIHx8CiAJCUlTX0NIRVJSWVZJRVcoZGV2X3By
aXYpIHx8IElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8Ci0JCUlTX0lWWUJSSURHRShkZXZfcHJp
dikgfHwgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSk7CisJCUlTX0lWWUJSSURHRShkZXZf
cHJpdik7CiB9CiAKIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hZGRfYmlnam9pbmVyX3BsYW5lcyhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKQEAgLTk4OTgsMTMgKzk4OTgsNyBAQCBz
dGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19wbGFuZXMoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUpCiAJCW9sZF9hY3RpdmVfcGxhbmVzID0gb2xkX2NydGNfc3RhdGUtPmFjdGl2
ZV9wbGFuZXMgJiB+QklUKFBMQU5FX0NVUlNPUik7CiAJCW5ld19hY3RpdmVfcGxhbmVzID0gbmV3
X2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgJiB+QklUKFBMQU5FX0NVUlNPUik7CiAKLQkJLyoK
LQkJICogTm90IG9ubHkgdGhlIG51bWJlciBvZiBwbGFuZXMsIGJ1dCBpZiB0aGUgcGxhbmUgY29u
ZmlndXJhdGlvbiBoYWQKLQkJICogY2hhbmdlZCBtaWdodCBhbHJlYWR5IG1lYW4gd2UgbmVlZCB0
byByZWNvbXB1dGUgbWluIENEQ0xLLAotCQkgKiBiZWNhdXNlIGRpZmZlcmVudCBwbGFuZXMgbWln
aHQgY29uc3VtZSBkaWZmZXJlbnQgYW1vdW50IG9mIERidWYgYmFuZHdpZHRoCi0JCSAqIGFjY29y
ZGluZyB0byBmb3JtdWxhOiBCdyBwZXIgcGxhbmUgPSBQaXhlbCByYXRlICogYnBwICogcGlwZS9w
bGFuZSBzY2FsZSBmYWN0b3IKLQkJICovCi0JCWlmIChvbGRfYWN0aXZlX3BsYW5lcyA9PSBuZXdf
YWN0aXZlX3BsYW5lcykKKwkJaWYgKGh3ZWlnaHQ4KG9sZF9hY3RpdmVfcGxhbmVzKSA9PSBod2Vp
Z2h0OChuZXdfYWN0aXZlX3BsYW5lcykpCiAJCQljb250aW51ZTsKIAogCQlyZXQgPSBpbnRlbF9j
cnRjX2FkZF9wbGFuZXNfdG9fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19hY3RpdmVfcGxhbmVzKTsK
LS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
