Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB8E60727
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 16:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF196E4CF;
	Fri,  5 Jul 2019 14:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F9E6E4CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 14:04:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 07:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,455,1557212400"; d="scan'208";a="167060600"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 05 Jul 2019 07:04:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 17:04:23 +0300
Message-Id: <20190705140423.28404-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705140423.28404-1-imre.deak@intel.com>
References: <20190705140423.28404-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/icl: Clear the shared port PLLs
 from the new crtc state
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGNvbnNpc3RlbmN5IGNsZWFyIHRoZSBpY2xfcG9ydF9kcGxscyBmcm9tIHRoZSBuZXcgY3J0
YyBzdGF0ZSwgd2hlbgpyZWxlYXNpbmcgdGhlIERQTExzIGZyb20gdGhlIG9sZCBjcnRjIHN0YXRl
LiBMZWF2aW5nIHRoZW0gc2V0IGNvdWxkCnJlc3VsdCBpbiByZWxlYXNpbmcgdGhlIHNhbWUgUExM
cyBtdWx0aXBsZSB0aW1lcyBmcm9tIHRoZSBzYW1lIENSVEMKc3RhdGUgaW5jb3JyZWN0bHkgKGlm
IHRoZSBzYW1lIENSVEMgd2FzIGZpcnN0IHVzZWQgZm9yIGEgVHlwZUMgcG9ydCB0aGVuCmZvciBh
IGNvbWJvIFBIWSBwb3J0KS4KCkxlYXZpbmcgdGhlIHN0YWxlIHBvaW50ZXJzIGJlaGluZCBoYXBw
ZW5zIG5vdCB0byBjYXVzZSBhIHByb2JsZW0gYXRtCihzaW5jZSB0aGUgaW5jb3JyZWN0IHJlbGVh
c2luZyB3aWxsIGJlIGEgTk9QKSwgYnV0IHdlIG5lZWQgdG8gZml4IHRoYXQKZm9yIGNvbnNpc3Rl
bmN5LgoKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDEyICsrKysr
KystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKaW5kZXgg
NzIyYjFkZWNhOTk5Li5mNGRiMjQxMGNhOTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTMwMjEsMTUgKzMwMjEsMTcgQEAgc3RhdGljIHZv
aWQgaWNsX3B1dF9kcGxscyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAluZXdf
Y3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwgPSBOVUxMOwogCiAJZm9yIChpZCA9IElDTF9QT1JUX0RQ
TExfREVGQVVMVDsgaWQgPCBJQ0xfUE9SVF9EUExMX0NPVU5UOyBpZCsrKSB7Ci0JCXN0cnVjdCBp
Y2xfcG9ydF9kcGxsICpwb3J0X2RwbGwgPQorCQlzdHJ1Y3QgaWNsX3BvcnRfZHBsbCAqb2xkX3Bv
cnRfZHBsbCA9CiAJCQkmb2xkX2NydGNfc3RhdGUtPmljbF9wb3J0X2RwbGxzW2lkXTsKKwkJc3Ry
dWN0IGljbF9wb3J0X2RwbGwgKm5ld19wb3J0X2RwbGwgPQorCQkJJm5ld19jcnRjX3N0YXRlLT5p
Y2xfcG9ydF9kcGxsc1tpZF07CiAKLQkJaWYgKCFwb3J0X2RwbGwtPnBsbCkKLQkJCWNvbnRpbnVl
OworCQluZXdfcG9ydF9kcGxsLT5wbGwgPSBOVUxMOwogCi0JCWludGVsX3VucmVmZXJlbmNlX3No
YXJlZF9kcGxsKHN0YXRlLCBjcnRjLCBwb3J0X2RwbGwtPnBsbCk7CisJCWlmICghb2xkX3BvcnRf
ZHBsbC0+cGxsKQorCQkJY29udGludWU7CiAKLQkJLyogRklYTUU6IENsZWFyIHRoZSBpY2xfcG9y
dF9kcGxscyBmcm9tIHRoZSBuZXcgY3J0YyBzdGF0ZSAqLworCQlpbnRlbF91bnJlZmVyZW5jZV9z
aGFyZWRfZHBsbChzdGF0ZSwgY3J0Yywgb2xkX3BvcnRfZHBsbC0+cGxsKTsKIAl9CiB9CiAKLS0g
CjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
