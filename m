Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F392195883
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 09:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C711B6E602;
	Tue, 20 Aug 2019 07:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB8C6E5F8;
 Tue, 20 Aug 2019 07:31:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 00:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="202595424"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga004.fm.intel.com with ESMTP; 20 Aug 2019 00:31:07 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Tue, 20 Aug 2019 13:00:31 +0530
Message-Id: <20190820073034.15911-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/3] drm/i915: Enable HDCP 1.4 and 2.2 on
 Gen12+
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
Cc: tomas.winkler@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxpbmcgdGhlIEhEQ1AxLjQgYW5kIDIuMiBvbiBUR0wgYnkgc3VwcG9ydGluZyB0aGUgSFcg
YmxvY2sgbW92ZW1lbnQKZnJvbSBEREkgaW50byB0cmFuc2NvZGVyLgoKdjY6CiAgRXh0ZW5kaW5n
IHRoZSBJOTE1LU1FSSBIRENQIGludGVyZmFjZSB0byBpbmNsdWRlIHRoZSB0cmFuc2NvZGVyLgog
IEZvciByZWdpc3RlciBwcm9ncmFtbWluZywgdHJhbnNjb2RlciBpcyB1c2VkIGluc3RlYWQgb2Yg
UElQRS4gSnVzdAoJcmVhZGFiaWxpdHkgaW1wcm92ZW1lbnQKICBwaXBlIGFuZCB0cmFuc2NvZGVy
IGRlZmluaXRpb24gaXMgbW92ZWQgaW50byBpOTE1X2RybS5oCiAgUmViYXNlZC4KClJhbWFsaW5n
YW0gQyAoMyk6CiAgZHJtL2k5MTU6IGVudW0gdHJhbnNjb2RlciBhbmQgcGlwZSBhcmUgbW92ZWQg
aW50byBpOTE1X2RybS5oCiAgbWlzYy9tZWlfaGRjcDogQWRkaW5nIHRoZSB0cmFuc2NvZGVyIGRl
dGFpbCBpbiBwYXlsb2FkIGlucHV0CiAgZHJtL2k5MTU6IEVuYWJsZSBIRENQIDEuNCBhbmQgMi4y
IG9uIEdlbjEyKwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5o
IHwgIDQ0IC0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAg
ICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgICAg
fCAxNTggKysrKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZGNwLmggICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmMgICAgfCAgMTIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgICAgIHwgMTI0ICsrKysrKysrKysrKystLQogZHJpdmVycy9taXNjL21laS9oZGNwL21l
aV9oZGNwLmMgICAgICAgICAgICAgfCAgMjcgKysrKwogZHJpdmVycy9taXNjL21laS9oZGNwL21l
aV9oZGNwLmggICAgICAgICAgICAgfCAgMTUgKy0KIGluY2x1ZGUvZHJtL2k5MTVfZHJtLmggICAg
ICAgICAgICAgICAgICAgICAgIHwgIDQ2ICsrKysrKwogaW5jbHVkZS9kcm0vaTkxNV9tZWlfaGRj
cF9pbnRlcmZhY2UuaCAgICAgICAgfCAgIDIgKwogMTAgZmlsZXMgY2hhbmdlZCwgMzI0IGluc2Vy
dGlvbnMoKyksIDEwOSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
