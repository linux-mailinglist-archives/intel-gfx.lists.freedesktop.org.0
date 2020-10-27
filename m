Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5BA29BE14
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 17:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E886EBA0;
	Tue, 27 Oct 2020 16:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5626EBA0;
 Tue, 27 Oct 2020 16:56:08 +0000 (UTC)
IronPort-SDR: 0Ld8XR8Lru0oO5zswR7dmSSeizXePWuMFqeEYYZqy6zh1DsS+IwCdW1Mv+iTAAT+7loAJU6VR4
 8ihYni6kfekg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="147975764"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="147975764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:56:07 -0700
IronPort-SDR: mWZ0+miaSMgfFIajyVHIC9t2fvXtUC4ARJaAzTaBMIw5iy8qoXm5nX/yu+60tJjpjC+73TFkS5
 M0Xb50RT/U1w==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="355613056"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:56:05 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 27 Oct 2020 22:11:55 +0530
Message-Id: <20201027164208.10026-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201027164208.10026-1-anshuman.gupta@intel.com>
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/16] drm/i915/hotplug: Handle CP_IRQ for
 DP-MST
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGFuZGxlIENQX0lSUSBpbiBERVZJQ0VfU0VSVklDRV9JUlFfVkVDVE9SX0VTSTAKSXQgcmVxdWly
ZXMgdG8gY2FsbCBpbnRlbF9oZGNwX2hhbmRsZV9jcF9pcnEoKSBpbiBjYXNlCm9mIENQX0lSUSBp
cyB0cmlnZ2VyZWQgYnkgYSBzaW5rIGluIERQLU1TVCB0b3BvbG9neS4KCkNjOiAiVmlsbGUgU3ly
asOkbMOkIiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBSYW1hbGluZ2FtIEMg
PHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4u
Z3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDE0ICsrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpp
bmRleCA4MThkYWFiMjUyZjMuLjIxYzZjOTgyOGNkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwpAQCAtNTY1Nyw2ICs1NjU3LDE3IEBAIHN0YXRpYyB2b2lkIGludGVs
X2RwX2hhbmRsZV90ZXN0X3JlcXVlc3Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJCSAg
ICAiQ291bGQgbm90IHdyaXRlIHRlc3QgcmVzcG9uc2UgdG8gc2lua1xuIik7CiB9CiAKK3N0YXRp
YyB2b2lkCitpbnRlbF9kcF9tc3RfaHBkX2lycShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1
OCAqZXNpLCBib29sICpoYW5kbGVkKQoreworCQlkcm1fZHBfbXN0X2hwZF9pcnEoJmludGVsX2Rw
LT5tc3RfbWdyLCBlc2ksIGhhbmRsZWQpOworCisJCWlmIChlc2lbMV0gJiBEUF9DUF9JUlEpIHsK
KwkJCWludGVsX2hkY3BfaGFuZGxlX2NwX2lycShpbnRlbF9kcC0+YXR0YWNoZWRfY29ubmVjdG9y
KTsKKwkJCSpoYW5kbGVkID0gdHJ1ZTsKKwkJfQorfQorCiAvKioKICAqIGludGVsX2RwX2NoZWNr
X21zdF9zdGF0dXMgLSBzZXJ2aWNlIGFueSBwZW5kaW5nIE1TVCBpbnRlcnJ1cHRzLCBjaGVjayBs
aW5rIHN0YXR1cwogICogQGludGVsX2RwOiBJbnRlbCBEUCBzdHJ1Y3QKQEAgLTU3MDEsNyArNTcx
Miw4IEBAIGludGVsX2RwX2NoZWNrX21zdF9zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkKIAogCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiZ290IGVzaSAlM3BoXG4iLCBlc2kpOwog
Ci0JCWRybV9kcF9tc3RfaHBkX2lycSgmaW50ZWxfZHAtPm1zdF9tZ3IsIGVzaSwgJmhhbmRsZWQp
OworCQlpbnRlbF9kcF9tc3RfaHBkX2lycShpbnRlbF9kcCwgZXNpLCAmaGFuZGxlZCk7CisKIAkJ
aWYgKCFoYW5kbGVkKQogCQkJYnJlYWs7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
