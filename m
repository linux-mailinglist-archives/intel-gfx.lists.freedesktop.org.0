Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9240439F172
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083ED6EB4D;
	Tue,  8 Jun 2021 08:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EA0389A14
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 08:54:25 +0000 (UTC)
IronPort-SDR: 02oOoEsx2sYzzmO+zTXHQf5/en3NGOF6xqMJvetUI0BkLW8pj0B28c2eP3vEqdFM87Lq7nrnnx
 aQduXVq8YxEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204769664"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204769664"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:54:24 -0700
IronPort-SDR: yNvH3t9KUjjuX7kX40QUDs3jLsybZ8grrfMU7JY0ib6j6QwkBfdc6q0WC/0pBO/znDZDXUlY+F
 1U7MTFSWHkAg==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="552206966"
Received: from unknown (HELO helsinki.fi.intel.com) ([10.237.72.166])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:54:22 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 11:54:15 +0300
Message-Id: <20210608085415.515342-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210608085415.515342-1-gwan-gyeong.mun@intel.com>
References: <20210608085415.515342-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: Disable PSR around cdclk
 changes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFV
WCBsb2dpYyBpcyBvZnRlbiBjbG9ja2VkIGZyb20gY2RjbGsuIERpc2FibGUgUFNSIHRvIG1ha2Ug
c3VyZQp0aGVyZSBhcmUgbm8gaHcgaW5pdGlhdGVkIEFVWCB0cmFuc2FjdGlvbnMgaW4gZmxpZ2h0
IHdoaWxlIHdlCmNoYW5nZSB0aGUgY2RjbGsgZnJlcXVlbmN5LgoKQ2M6IE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11
biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIHwgMTMgKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5k
ZXggNDY1NmE2ZWRjM2JlLi42MThhOWUxZTJiMGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTI4LDYgKzI4LDcgQEAKICNpbmNsdWRlICJpbnRlbF9j
ZGNsay5oIgogI2luY2x1ZGUgImludGVsX2RlLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90
eXBlcy5oIgorI2luY2x1ZGUgImludGVsX3Bzci5oIgogI2luY2x1ZGUgImludGVsX3NpZGViYW5k
LmgiCiAKIC8qKgpAQCAtMTkwOCw2ICsxOTA5LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9j
ZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlpbnRlbF9kdW1wX2Nk
Y2xrX2NvbmZpZyhjZGNsa19jb25maWcsICJDaGFuZ2luZyBDRENMSyB0byIpOwogCisJZm9yX2Vh
Y2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2RlcikgeworCQlz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOworCisJ
CWludGVsX3Bzcl9wYXVzZShpbnRlbF9kcCk7CisJfQorCiAJLyoKIAkgKiBMb2NrIGF1eC9nbWJ1
cyB3aGlsZSB3ZSBjaGFuZ2UgY2RjbGsgaW4gY2FzZSB0aG9zZQogCSAqIGZ1bmN0aW9ucyB1c2Ug
Y2RjbGsuIE5vdCBhbGwgcGxhdGZvcm1zL3BvcnRzIGRvLApAQCAtMTkzMCw2ICsxOTM3LDEyIEBA
IHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJfQogCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmdtYnVzX211dGV4KTsKIAorCWZv
cl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsK
KwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsK
KworCQlpbnRlbF9wc3JfcmVzdW1lKGludGVsX2RwKTsKKwl9CisKIAlpZiAoZHJtX1dBUk4oJmRl
dl9wcml2LT5kcm0sCiAJCSAgICAgaW50ZWxfY2RjbGtfY2hhbmdlZCgmZGV2X3ByaXYtPmNkY2xr
Lmh3LCBjZGNsa19jb25maWcpLAogCQkgICAgICJjZGNsayBzdGF0ZSBkb2Vzbid0IG1hdGNoIVxu
IikpIHsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
