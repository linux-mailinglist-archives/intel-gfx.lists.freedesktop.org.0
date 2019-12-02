Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D59410F2D6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 23:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FAF6E358;
	Mon,  2 Dec 2019 22:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FA66E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 22:25:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 14:25:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="360972480"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.52])
 by orsmga004.jf.intel.com with ESMTP; 02 Dec 2019 14:25:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 14:25:12 -0800
Message-Id: <20191202222513.337777-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202222513.337777-1-jose.souza@intel.com>
References: <20191202222513.337777-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/3] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzYWJsaW5nIHBpcGUvdHJhbnNjb2RlciBjbG9jayBiZWZvcmUgcG93ZXIgZG93biBzaW5rIGNv
dWxkIGNhdXNlCnNpbmsgbG9zdCBzaWduYWwsIGNhdXNpbmcgaXQgdG8gdHJpZ2dlciBhIGhvdHBs
dWcgdG8gbm90aWZ5IHNvdXJjZQp0aGF0IGxpbmsgc2lnbmFsIHdhcyBsb3N0LgoKQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IGE5NzY2MDZkMjFjNy4uMGNlMDZhOTRhMjdlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM4MDIsMTIgKzM4MDIsMTIg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJp
diwgZW5jb2Rlci0+cG9ydCk7CiAKIAlpZiAoIWlzX21zdCkgewotCQlpbnRlbF9kZGlfZGlzYWJs
ZV9waXBlX2Nsb2NrKG9sZF9jcnRjX3N0YXRlKTsKIAkJLyoKIAkJICogUG93ZXIgZG93biBzaW5r
IGJlZm9yZSBkaXNhYmxpbmcgdGhlIHBvcnQsIG90aGVyd2lzZSB3ZSBlbmQKIAkJICogdXAgZ2V0
dGluZyBpbnRlcnJ1cHRzIGZyb20gdGhlIHNpbmsgb24gZGV0ZWN0aW5nIGxpbmsgbG9zcy4KIAkJ
ICovCiAJCWludGVsX2RwX3NpbmtfZHBtcyhpbnRlbF9kcCwgRFJNX01PREVfRFBNU19PRkYpOwor
CQlpbnRlbF9kZGlfZGlzYWJsZV9waXBlX2Nsb2NrKG9sZF9jcnRjX3N0YXRlKTsKIAl9CiAKIAlp
bnRlbF9kaXNhYmxlX2RkaV9idWYoZW5jb2Rlciwgb2xkX2NydGNfc3RhdGUpOwotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
