Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF57BB48F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 14:57:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098536E8E4;
	Mon, 23 Sep 2019 12:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9489C6E8E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:57:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 05:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="195362411"
Received: from akaras-dev.fi.intel.com ([10.237.72.88])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Sep 2019 05:57:09 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 15:56:40 +0300
Message-Id: <20190923125640.22321-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Describe structure member in
 documentation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGRlc2NyaXB0aW9uIG9mIHdha2VyZWYgbWVtYmVyIG9mIGludGVsX3NoYXJlZF9kcGxsIHN0
cnVjdHVyZSB0bwpkb2N1bWVudGF0aW9uLgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgpDYzogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCA1ICsr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCmluZGV4IDEwNGNmNmQ0MjMzMy4uZTM1ZGQ2
YjA0NDQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5oCkBAIC0zMzcsNiArMzM3LDExIEBAIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCB7CiAJICog
QGluZm86IHBsYXRmb3JtIHNwZWNpZmljIGluZm8KIAkgKi8KIAljb25zdCBzdHJ1Y3QgZHBsbF9p
bmZvICppbmZvOworCisJLyoqCisJICogQHdha2VyZWY6IEEgZGV2aWNlLWxldmVsIHJ1bnRpbWUg
cG0gcmVmZXJlbmNlIGdyYWJiZWQgb25seSBpZgorCSAqIGl0IGlzIHBvd2VyZWQgb24uCisJICov
CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiB9OwogCi0tIAoyLjE5LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
