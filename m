Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FB2386C4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 11:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D982289CE2;
	Fri,  7 Jun 2019 09:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5EE89CE2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 09:12:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 02:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,562,1557212400"; d="scan'208";a="182609334"
Received: from kseeloff-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk.fios-router.home) ([10.254.23.10])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2019 02:12:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 02:12:21 -0700
Message-Id: <20190607091230.1489-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] Add support for new DMC headers
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

VGhpcyBpcyB2MiBvZiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYx
MDE2LwpMYXN0IHBhdGNoIGFzIG1vdmVkIGFzIHRoZSBmaXJzdCBhbmQgc2VudCBzZXBhcmF0ZWx5
IHNvIGl0IGNhbiBiZQpiYWNrcG9ydGVkLiBUaGF0IG9uZSBpcyBhbHJlYWR5IGFwcGxpZWQuCgpS
b2RyaWdvIGFuZCBBbnVzaGEgZ2F2ZSB0aGVpciByLWIgb24gYWxsIHRoZXNlLCBidXQgZ2l2ZW4g
dGhlIHJlYmFzZSwgdGhlCnBhdGNoZXMgY2hhbmdlZCBjb25zaWRlcmFibHkgKGFuZCB0aGUgZW5k
IHJlc3VsdCBpcyBub3QgZXZlbiB0aGUgc2FtZSkuClNvIEkgZGlkbid0IGFkZCB0aGVtIGhlcmUs
IGV4Y2VwdCBmb3IgdGhlIGZpcnN0IHRoYXQgaXMgYSB0cml2aWFsIG9uZS4KCkx1Y2FzIERlIE1h
cmNoaSAoOSk6CiAgZHJtL2k5MTUvZG1jOiB1c2Uga2VybmVsIHR5cGVzCiAgZHJtL2k5MTUvZG1j
OiBleHRyYWN0IGZ3X2luZm8gYW5kIHRhYmxlIHdhbGsgZnJvbSBpbnRlbF9wYWNrYWdlX2hlYWRl
cgogIGRybS9pOTE1L2RtYzogYWRkIHN1cHBvcnQgZm9yIHBhY2thZ2VfaGVhZGVyIHdpdGggdmVy
c2lvbiAyCiAgZHJtL2k5MTUvZG1jOiBleHRyYWN0IGZ1bmN0aW9uIHRvIHBhcnNlIGNzcyBoZWFk
ZXIKICBkcm0vaTkxNS9kbWM6IGV4dHJhY3QgZnVuY3Rpb24gdG8gcGFyc2UgcGFja2FnZV9oZWFk
ZXIKICBkcm0vaTkxNS9kbWM6IGV4dHJhY3QgZnVuY3Rpb24gdG8gcGFyc2UgZG1jX2hlYWRlcgog
IGRybS9pOTE1L2RtYzogYWRkIHN1cHBvcnQgdG8gbG9hZCBkbWNfaGVhZGVyIHZlcnNpb24gMwog
IGRybS9pOTE1L2RtYzogcmVtb3ZlIHJlZHVuZGFudCByZXR1cm4gaW4gcGFyc2VfY3NyX2Z3KCkK
ICBkcm0vaTkxNS9kbWM6IHByb3RlY3QgYWdhaW5zdCBsb2FkaW5nIHdyb25nIGZpcm13YXJlCgog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jIHwgNDA3ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0K
IDIgZmlsZXMgY2hhbmdlZCwgMjkwIGluc2VydGlvbnMoKyksIDEyMSBkZWxldGlvbnMoLSkKCi0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
