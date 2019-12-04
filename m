Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 686931136D1
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 21:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291826E970;
	Wed,  4 Dec 2019 20:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7AD6E970
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 20:55:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 12:55:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="412714394"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.67])
 by fmsmga006.fm.intel.com with ESMTP; 04 Dec 2019 12:55:12 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 12:55:08 -0800
Message-Id: <20191204205510.119853-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/display: Do not check for the
 ddb allocations of turned off pipes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgc2hvdWxkIG5vdCBjYXJlIGFib3V0IEREQiBhbGxvY2F0aW9ucyBvZiBwaXBlcyBnb2luZyB0
aHJvdWdoCmEgZnVsbG1vZGVzZXQsIGFzIGF0IHRoaXMgcG9pbnQgdGhvc2UgcGlwZXMgYXJlIGRp
c2FibGVkLgpUaGUgY29tbWVudCBpbiB0aGUgY29kZSBhbHNvIHBvaW50cyB0byB0aGF0IGJ1dCB0
aGF0IHdhcyBub3Qgd2hhdAp3YXMgYmVpbmcgZXhlY3V0ZWQuCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGViMDUwNWE2NmVhOC4uNjg1NzU0NTdkNDBlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQ2MDMs
NyArMTQ2MDMsNyBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9j
cnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUs
IGkpCiAJCS8qIGlnbm9yZSBhbGxvY2F0aW9ucyBmb3IgY3J0YydzIHRoYXQgaGF2ZSBiZWVuIHR1
cm5lZCBvZmYuICovCi0JCWlmIChuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQorCQlpZiAoIW5l
ZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmIG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUp
CiAJCQllbnRyaWVzW2ldID0gb2xkX2NydGNfc3RhdGUtPndtLnNrbC5kZGI7CiAKIAkvKiBJZiAy
bmQgREJ1ZiBzbGljZSByZXF1aXJlZCwgZW5hYmxlIGl0IGhlcmUgKi8KLS0gCjIuMjQuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
