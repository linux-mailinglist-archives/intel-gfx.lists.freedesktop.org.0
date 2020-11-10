Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8D2AE15A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 22:04:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1577289C28;
	Tue, 10 Nov 2020 21:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F265D89C28
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 21:04:50 +0000 (UTC)
IronPort-SDR: yOEO3kwCBIWUn85PXNS45iZ/BkH7BJ1fORcBLyCAy1OGJph0O5+fkHRidC5ZkUoXJEkkzK4E8e
 r+uautzylqnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="149325162"
X-IronPort-AV: E=Sophos;i="5.77,467,1596524400"; d="scan'208";a="149325162"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 13:04:50 -0800
IronPort-SDR: O9CkldqJ2EaOgcj7/Dx90dcTA5MiSWx4prfzQPMS12XtA/pd/dbIwSoVPBvOVctWoIjsjzf0Q6
 LoXQxpNV/gSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,467,1596524400"; d="scan'208";a="428523406"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 10 Nov 2020 13:04:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Nov 2020 23:04:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Nov 2020 23:04:47 +0200
Message-Id: <20201110210447.27454-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Handle max_bpc==16
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkVE
SUQgY2FuIGRlY2xhcmUgdGhlIG1heGltdW0gc3VwcG9ydGVkIGJwYyB1cCB0byAxNiwKYW5kIGFw
cGFyZW50bHkgdGhlcmUgYXJlIGRpc3BsYXlzIHRoYXQgZG8gc28uIEN1cnJlbnRseQp3ZSBhc3N1
bWUgMTIgYnBjIGlzIHRoYSBtYXguIEZpeCB0aGUgYXNzdW1wdGlvbiBhbmQKdG9zcyBpbiBhIE1J
U1NJTkdfQ0FTRSgpIGZvciBhbnkgb3RoZXIgdmFsdWUgd2UgZG9uJ3QKZXhwZWN0IHRvIHNlZS4K
ClRoaXMgZml4ZXMgbW9kZXNldHMgd2l0aCBhIGRpc3BsYXkgd2l0aCBFRElEIG1heCBicGMgPiAx
Mi4KUHJldmlvdXNseSBhbnkgbW9kZXNldCB3b3VsZCBqdXN0IHNpbGVudGx5IGZhaWwgb24gcGxh
dGZvcm1zCnRoYXQgZGlkbid0IG90aGVyd2lzZSBsaW1pdCB0aGlzIHZpYSB0aGUgbWF4X2JwYyBw
cm9wZXJ0eS4KSW4gcGFydGljdWxhciB3ZSBkb24ndCBhZGQgdGhlIG1heF9icGMgcHJvcGVydHkg
dG8gSERNSQpwb3J0cyBvbiBnbWNoIHBsYXRmb3JtcywgYW5kIHRodXMgd2Ugd291bGQgc2VlIHRo
ZSByYXcKbWF4X2JwYyBjb21pbmcgZnJvbSB0aGUgRURJRC4KCkkgc3VwcG9zZSB3ZSBjb3VsZCBh
bHJlYWR5IGFkanVzdCB0aGlzIHRvIGFsc28gYWxsb3cgMTZicGMsCmJ1dCBzZWVpbmcgYXMgbm8g
Y3VycmVudCBwbGF0Zm9ybSBzdXBwb3J0cyB0aGF0IHRoZXJlIGlzCmxpdHRsZSBwb2ludC4KCkNj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnCkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yNjMyClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMjcyOWM4NTJjNjY4Li4yYTZlYjFjYTljOGUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzA2
MCwxMCArMTMwNjAsMTEgQEAgY29tcHV0ZV9zaW5rX3BpcGVfYnBwKGNvbnN0IHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlLAogCWNhc2UgMTAgLi4uIDExOgogCQlicHAgPSAx
MCAqIDM7CiAJCWJyZWFrOwotCWNhc2UgMTI6CisJY2FzZSAxMiAuLi4gMTY6CiAJCWJwcCA9IDEy
ICogMzsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKGNvbm5fc3RhdGUtPm1h
eF9icGMpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
