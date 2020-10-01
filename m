Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 401AD280258
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 17:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3F96E8B7;
	Thu,  1 Oct 2020 15:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB49B6E8B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 15:17:10 +0000 (UTC)
IronPort-SDR: c7HtnOBIzsKJJsrHNPzzS1n6xJ+IO++N1V2YrLQrTGjK75rURTw9WYoualixCX4PQEQQ3ocbCR
 cKgjybSuRuSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="180905587"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="180905587"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 08:17:01 -0700
IronPort-SDR: D/sCSIZ+K3tAm/11ihORfK/oT7dke2cCKy6elhfb3vro2LVn8doSxc05LA6L55yNz2LAzi8hFc
 hFLb7u25QWnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="351998364"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 01 Oct 2020 08:16:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 18:16:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Oct 2020 18:16:40 +0300
Message-Id: <20201001151640.14590-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: Wait for VLV/CHV/BXT/GLK DSI
 panel power cycle delay on reboot
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
IHdpdGggZURQIGFuZCBMVkRTIHdlIHNob3VsZCBhbHNvIHJlc3BlY3QgdGhlIHBvd2VyIGN5Y2xl
CmRlbGF5IG9uIERTSSBwYW5lbHMuIFdlIGFyZSBub3QgdXNpbmcgdGhlIHBvd2VyIHNlcXVlbmNl
cgpmb3IgdGhlc2UsIGFuZCB3ZSBoYXZlIG5vIG9wdGltaXphdGlvbnMgYXJvdW5kIHRoZSBzbGVl
cApkdXJhdGlvbiwgc28gd2UganVzdCBtc2xlZXAoKSB0aGUgd2hvbGUgdGhpbmcgYXdheS4KCk5v
dGUgdGhhdCB0aGUgSUNMKyBEU0kgY29kZSBkb2Vzbid0IHNlZW0gdG8gaGF2ZSBhbnkgcG93ZXIK
b2ZmL3Bvd2VyIGN5Y2xlIGRlbGF5IGhhbmRsaW5nIHdoYXRzb2V2ZXIuIFRoZSBvbmx5IHRoaW5n
IGl0CmhhbmRsZXMgaXMgdGhlIHBvd2VyIG9uIGRlbGF5LiBBcyB0aGF0IGxvb2tzIHByZXR0eSBi
dXN0ZWQKaW4gZ2VuZXJhbCBJIHdvbid0IGJvdGhlciBkZWFsaW5nIHdpdGggaXQgZm9yIHRoZSB0
aW1lIGJlaW5nLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9k
c2kuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jCmluZGV4IDVlNTUyMjkyM2IxZS4uZDUyZjlj
MTc3OTA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2ku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYwpAQCAtOTg1LDYg
Kzk4NSwxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kc2lfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWludGVsX2RzaV9tc2xlZXAoaW50ZWxfZHNpLCBpbnRl
bF9kc2ktPnBhbmVsX3B3cl9jeWNsZV9kZWxheSk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX2Rz
aV9zaHV0ZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgaW50
ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKGVuY29kZXIpOworCisJaW50ZWxf
ZHNpX21zbGVlcChpbnRlbF9kc2ksIGludGVsX2RzaS0+cGFuZWxfcHdyX2N5Y2xlX2RlbGF5KTsK
K30KKwogc3RhdGljIGJvb2wgaW50ZWxfZHNpX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAkJCQkgICBlbnVtIHBpcGUgKnBpcGUpCiB7CkBAIC0xODQzLDYgKzE4
NTAsNyBAQCB2b2lkIHZsdl9kc2lfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJaW50ZWxfZW5jb2Rlci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxfZHNpX2dldF9od19zdGF0
ZTsKIAlpbnRlbF9lbmNvZGVyLT5nZXRfY29uZmlnID0gaW50ZWxfZHNpX2dldF9jb25maWc7CiAJ
aW50ZWxfZW5jb2Rlci0+dXBkYXRlX3BpcGUgPSBpbnRlbF9wYW5lbF91cGRhdGVfYmFja2xpZ2h0
OworCWludGVsX2VuY29kZXItPnNodXRkb3duID0gaW50ZWxfZHNpX3NodXRkb3duOwogCiAJaW50
ZWxfY29ubmVjdG9yLT5nZXRfaHdfc3RhdGUgPSBpbnRlbF9jb25uZWN0b3JfZ2V0X2h3X3N0YXRl
OwogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
