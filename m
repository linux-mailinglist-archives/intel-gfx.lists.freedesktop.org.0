Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5BE1EA1DB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 12:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955638996E;
	Mon,  1 Jun 2020 10:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255058996E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 10:29:09 +0000 (UTC)
IronPort-SDR: HOGofhqmgOELMFco61sBhBl3sp6gTDdMS2w/LKjSDdnyl8XRO+01rRkfumid75l/iVMYz4LLR9
 GdLKP7ZTadSg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 03:29:08 -0700
IronPort-SDR: x9moCRrzQyy15Belms9PbtuKV3MwbscQ2SIBP1rehgoZc0beRQCThSP0SazvcQgRS8N0shSn1B
 jR61Phhy33Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="470276676"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jun 2020 03:29:06 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 15:45:16 +0530
Message-Id: <20200601101516.21018-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915: lpsp with hdmi/dp outputs
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

R2VuMTIgaHcgYXJlIGZhaWxpbmcgdG8gZW5hYmxlIGxwc3AgY29uZmlndXJhdGlvbiBkdWUgdG8g
UEczIHdhcyBsZWZ0IG9uCmR1ZSB0byB2YWxpZCB1c2dhZSBjb3VudCBvZiBQT1dFUl9ET01BSU5f
QVVESU8uCkl0IGlzIG5vdCByZXF1aXJlZCB0byBnZXQgUE9XRVJfRE9NQUlOX0FVRElPIHJlZi1j
b3VudCB3aGVuIGVuYWJsaW5nCmEgY3J0YywgaXQgc2hvdWxkIGJlIGFsd2F5cyBpOTE1X2F1ZGlv
X2NvbXBvbmVudCByZXF1ZXN0IHRvIGdldC9wdXQKQVVESU9fUE9XRVJfRE9NQUlOLgoKQ2M6IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4u
Z3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IDZjM2IxMWRlMmRhZi4uZjMxYTU3OWQ3YTUyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNzM1Niw3ICs3MzU2LDExIEBAIHN0
YXRpYyB1NjQgZ2V0X2NydGNfcG93ZXJfZG9tYWlucyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkKIAkJbWFzayB8PSBCSVRfVUxMKGludGVsX2VuY29kZXItPnBvd2VyX2RvbWFp
bik7CiAJfQogCi0JaWYgKEhBU19EREkoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPmhhc19hdWRp
bykKKwkvKgorCSAqIEdlbjEyIGNhbiBkcml2ZSBscHNwIG9uIGhkbWkvZHAgb3V0cHVzLCBpdCBk
b2Vzbid0IHJlcXVpcmUgdG8KKwkgKiBlbmFibGUgQVVESU8gcG93ZXIgaW4gb3JkZXIgdG8gZW5h
YmxlIGEgY3J0Yy4KKwkgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyICYmIEhBU19E
REkoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPmhhc19hdWRpbykKIAkJbWFzayB8PSBCSVRfVUxM
KFBPV0VSX0RPTUFJTl9BVURJTyk7CiAKIAlpZiAoY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwpCi0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
