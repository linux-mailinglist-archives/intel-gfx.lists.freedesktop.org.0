Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680B12C8ED8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835796E83A;
	Mon, 30 Nov 2020 20:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E91289056
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:30 +0000 (UTC)
IronPort-SDR: Q3KPAK7gNp4CEf4X34PDeayCFMc4F2FgjaVwvA6LMB921JjW8Eq0v8YTfNC2xfL7+UakuCnpl2
 4nkH266M9UAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892998"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892998"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:29 -0800
IronPort-SDR: YtVyOgV/sLIZU4g5k7fogn7ZXuLYroWPIpt2nhUT0kr9ycZpKsyuHhfXFT6c8uCpz2EyvMaDan
 MLAVOeUjRx0Q==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472382"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:28 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:37 +0530
Message-Id: <20201130204738.2443-15-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 14/15] drm/i915/lspcon: Do not send DRM infoframes
 to non-HDMI sinks
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

Tm9uLUhETUkgc2lua3Mgc2hvdWxkbid0IGJlIHNlbnQgRHluYW1pYyBSYW5nZSBhbmQgTWFzdGVy
aW5nIGluZm9mcmFtZXMuCkNoZWNrIGZvciB0aGF0IHdoZW4gdXNpbmcgTFNQQ09OLgoKdjI6IEFk
ZHJlc3NlZCBWaWxsZSdzIHJldmlldyBjb21tZW50LgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyB8IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKaW5kZXggNDhkYTVkYzU5OTM5Li43NmU5NzViNDc2NWIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNDExOCw2ICs0MTE4LDcgQEAgc3RhdGljIHZv
aWQgaW50ZWxfZW5hYmxlX2RkaV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXIt
PmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2Rw
KGVuY29kZXIpOworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3Rv
X2RpZ19wb3J0KGVuY29kZXIpOwogCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKIAog
CWlmIChwb3J0ID09IFBPUlRfQSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSkKQEAgLTQxMjUs
NyArNDEyNiwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRpX2RwKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJaW50ZWxfZWRwX2JhY2tsaWdodF9vbihjcnRjX3N0
YXRlLCBjb25uX3N0YXRlKTsKIAlpbnRlbF9wc3JfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRl
LCBjb25uX3N0YXRlKTsKLQlpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcyhlbmNvZGVyLCB0cnVlLCBj
cnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKKworCWlmICghZGlnX3BvcnQtPmxzcGNvbi5hY3RpdmUg
fHwgZGlnX3BvcnQtPmRwLmhhc19oZG1pX3NpbmspCisJCWludGVsX2RwX3NldF9pbmZvZnJhbWVz
KGVuY29kZXIsIHRydWUsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOworCiAJaW50ZWxfZWRwX2Ry
cnNfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKIAogCWlmIChjcnRjX3N0YXRlLT5oYXNf
YXVkaW8pCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
