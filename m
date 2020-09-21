Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2869C2719AE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 05:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5AD89EBD;
	Mon, 21 Sep 2020 03:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9630E89EBD
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 03:50:36 +0000 (UTC)
IronPort-SDR: sSoWvUiInt3cYAdLqBSP4jxBrT3W7ZzrwcD4Gxi/nDCcFB9Ck9C/iERYao/2t/oFZPtWYiJdFD
 iTBRfC1fXLjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="178380496"
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; d="scan'208";a="178380496"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2020 20:50:35 -0700
IronPort-SDR: c0pXzbsm1hszCf+aUkgZG7xv0amxCafNyOnhRrJ8dqX+TWpHQQ4AFz8P3LUg8tmE8QeQcRv9/b
 B0TUJ6u9yNMQ==
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; d="scan'208";a="485240365"
Received: from mateuszp-mobl1.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.5.247])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2020 20:50:34 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Sep 2020 05:50:17 +0200
Message-Id: <20200921035017.6868-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Ensure bo is dirty when WB-mapped on
 !llc in pagefault handler
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gIWxsYyBwbGF0Zm9ybXMgd2hlbiBidWZmZXIgaXMgbWFwcGVkIHdpdGggV0IgdXNpbmcgR0VN
X01NQVBfT0ZGU0VUCnBhZ2VmYXVsdCBoYW5kbGVyIGNsZWFycyBpdHMgZGlydHkgZmxhZy4gVGhp
cyBoYXMgY29uc2VxdWVuY2VzCmJ1ZmZlciBpcyBub3QgZmx1c2hlZCBvbiBleGVjIGJlZm9yZSBt
b3ZpbmcgdG8gcmVuZGVyIGRvbWFpbi4KU28gbWFrZSBzdXJlIHdlIGtlZXAgZGlydHkgZmxhZyBm
b3IgYnVmZmVycyBtYXBwZWQgdG8gd3JpdGUgdW50aWwKaXQgbGVhdmVzIGNwdSBkb21haW4uCgpT
aWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tp
QGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCA3ICsrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYwppbmRleCAzZDY5ZTUxZjNlNGQuLjNmNjFhNWNjYmRkNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC0yMzksNiArMjM5LDcgQEAg
c3RhdGljIHZtX2ZhdWx0X3Qgdm1fZmF1bHRfY3B1KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQogCXN0
cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW8gPSBhcmVhLT52bV9wcml2YXRlX2RhdGE7CiAJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IG1tby0+b2JqOwogCXJlc291cmNlX3NpemVf
dCBpb21hcDsKKwl1MTYgcHJldl93cml0ZV9kb21haW47CiAJaW50IGVycjsKIAogCS8qIFNhbml0
eSBjaGVjayB0aGF0IHdlIGFsbG93IHdyaXRpbmcgaW50byB0aGlzIG9iamVjdCAqLwpAQCAtMjQ2
LDYgKzI0Nyw4IEBAIHN0YXRpYyB2bV9mYXVsdF90IHZtX2ZhdWx0X2NwdShzdHJ1Y3Qgdm1fZmF1
bHQgKnZtZikKIAkJICAgICBhcmVhLT52bV9mbGFncyAmIFZNX1dSSVRFKSkKIAkJcmV0dXJuIFZN
X0ZBVUxUX1NJR0JVUzsKIAorCXByZXZfd3JpdGVfZG9tYWluID0gb2JqLT53cml0ZV9kb21haW47
CisKIAllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAJaWYgKGVycikKIAkJ
Z290byBvdXQ7CkBAIC0yNjgsNiArMjcxLDEwIEBAIHN0YXRpYyB2bV9mYXVsdF90IHZtX2ZhdWx0
X2NwdShzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIAogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdl
cyhvYmopOwogCisJLyogT24gIWxsYyB3ZSBuZWVkIHRvIGZsdXNoIGJlZm9yZSBtb3ZpbmcgdG8g
cmVuZGVyIGRvbWFpbiAqLworCWlmICghb2JqLT5jYWNoZV9jb2hlcmVudCAmJiBwcmV2X3dyaXRl
X2RvbWFpbiA9PSBJOTE1X0dFTV9ET01BSU5fQ1BVKQorCQlvYmotPmNhY2hlX2RpcnR5ID0gdHJ1
ZTsKKwogb3V0OgogCXJldHVybiBpOTE1X2Vycm9yX3RvX3ZtZl9mYXVsdChlcnIpOwogfQotLSAK
Mi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
