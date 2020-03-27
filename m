Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9306E19606F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 22:32:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8BE6EA85;
	Fri, 27 Mar 2020 21:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FA76EA85
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 21:32:51 +0000 (UTC)
IronPort-SDR: pPxeXRUQnc6Ko2zqU11zeiO/stBsjFQ+d+Gf3Asnn01TvAfpRqwi7AVakm16PGJL0XtFW9P0nL
 QamC84CDSz1g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 14:32:51 -0700
IronPort-SDR: OD958ZK/dJFi/ptbJf4O9ZavNANgRpZ03ay2PfvNySPMIHf34N9BmG7p3QNw32h3D2PSORckca
 HXoRThp09RXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="271709631"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by fmsmga004.fm.intel.com with ESMTP; 27 Mar 2020 14:32:51 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 14:34:12 -0700
Message-Id: <20200327213413.166623-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327213413.166623-1-jose.souza@intel.com>
References: <20200327213413.166623-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dp/ehl: Update vswing table for
 HBR and RBR
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

RUhMIGhhcyBub3cgb25seSBvbmUgdGFibGUgZm9yIGFsbCBEUCB0cmFuc21pc3Npb24gbW9kZXMu
CgpCU3BlYzogMjEyNTcKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5k
ZXggN2FmMTU3MmQ0ZjFkLi5lMWE5ZTE0ZjQ2ZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwpAQCAtNTY4LDcgKzU2OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
Y25sX2RkaV9idWZfdHJhbnMgaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWlbXSA9
IHsKIAl7IDB4NiwgMHg3RiwgMHgzNSwgMHgwMCwgMHgwQSB9LAkvKiA2MDAgICA4NTAgICAgICAz
LjAgICAqLwogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyBlaGxf
Y29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzW10gPSB7CitzdGF0aWMgY29uc3Qg
c3RydWN0IGNubF9kZGlfYnVmX3RyYW5zIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19k
cFtdID0gewogCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KIAl7IDB4QSwgMHgzMywg
MHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLwogCXsgMHhBLCAw
eDQ3LCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCkBAIC05
NDcsOSArOTQ3LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqCiBl
aGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGludCB0eXBlLCBpbnQgcmF0ZSwKIAkJCWludCAqbl9lbnRyaWVzKQogewotCWlmICh0eXBlID09
IElOVEVMX09VVFBVVF9EREkgJiYgcmF0ZSA+IDI3MDAwMCkgewotCQkqbl9lbnRyaWVzID0gQVJS
QVlfU0laRShlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzKTsKLQkJcmV0
dXJuIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19oYnIyX2hicjM7CisJaWYgKHR5cGUg
PT0gSU5URUxfT1VUUFVUX0RESSkgeworCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShlaGxfY29t
Ym9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHApOworCQlyZXR1cm4gZWhsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2RwOwogCX0KIAogCXJldHVybiBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhk
ZXZfcHJpdiwgdHlwZSwgcmF0ZSwgbl9lbnRyaWVzKTsKLS0gCjIuMjYuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
