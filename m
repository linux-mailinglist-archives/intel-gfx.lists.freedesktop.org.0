Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B32E4A0BF2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 23:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F306389E52;
	Wed, 28 Aug 2019 21:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953C389E52
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 21:01:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 14:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="183258871"
Received: from rdvivi-losangeles.jf.intel.com ([10.7.196.65])
 by orsmga003.jf.intel.com with ESMTP; 28 Aug 2019 14:01:51 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: stable@vger.kernel.org
Date: Wed, 28 Aug 2019 14:02:09 -0700
Message-Id: <20190828210209.10541-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: fix broadwell EU computation
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
Y29tbWl0IDZhNjdhMjAzNjZmODk0YzE3MjczNGYyOGM1NjQ2YmRiZTQ4YTQ2ZTMgdXBzdHJlYW0u
CgpzdWJzbGljZV9tYXNrIGlzIGFuIGFycmF5IGluZGV4ZWQgYnkgc2xpY2UsIG5vdCBzdWJzbGlj
ZS4KClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGlu
QGludGVsLmNvbT4KRml4ZXM6IDhjYzc2NjkzNTUxMzZmICgiZHJtL2k5MTU6IHN0b3JlIGFsbCBz
dWJzbGljZSBtYXNrcyIpCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDg3MTIKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Bh
dGNoL21zZ2lkLzIwMTgxMTEyMTIzOTMxLjI4MTUtMS1saW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbQooY2hlcnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCA2M2FjMzMyOGYwZDFkMzdmMjg2ZTM5N2Ix
NGQ5NTk2ZWQwOWQ3Y2E1KQpTaWduZWQtb2ZmLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA0
LjE3ClNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggMGVmMGM2NDQ4ZDUzLi4wMWZhOTgyOTli
YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtNDc0LDcg
KzQ3NCw3IEBAIHN0YXRpYyB2b2lkIGJyb2Fkd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQl1OCBldV9kaXNhYmxlZF9tYXNrOwogCQkJdTMy
IG5fZGlzYWJsZWQ7CiAKLQkJCWlmICghKHNzZXUtPnN1YnNsaWNlX21hc2tbc3NdICYgQklUKHNz
KSkpCisJCQlpZiAoIShzc2V1LT5zdWJzbGljZV9tYXNrW3NdICYgQklUKHNzKSkpCiAJCQkJLyog
c2tpcCBkaXNhYmxlZCBzdWJzbGljZSAqLwogCQkJCWNvbnRpbnVlOwogCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
