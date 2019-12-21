Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D9F128681
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 02:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAED36E185;
	Sat, 21 Dec 2019 01:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D736E120
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 01:59:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 17:59:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,338,1571727600"; d="scan'208";a="213440831"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga007.fm.intel.com with ESMTP; 20 Dec 2019 17:59:36 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 18:01:05 -0800
Message-Id: <20191221020109.27871-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] i915 Fixes for 8K tiled displays
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

VGhzaSBzZXJpZXMgZml4ZXMgc29tZSBDSSBidWdzIHNlZW4gb24gdGlsZWQgZGlzcGxheXMgcmVs
YXRlZCB0byBob3RwbHVncwphbmQgZGlzYWJsZSB0ZWFyZG93biBzZXF1ZW5jZS4KClRoaXMgYWxz
byBpbmNsdWRlcyBhIHBhdGNoIGZyb20gSm9zZSBmcm9tIGhlcmU6Cmh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zNDYyODQvP3Nlcmllcz03MTIyOSZyZXY9MQoKU2luY2Ug
bXkgcGF0Y2ggaXMgZGVwZW5kZW50IG9uIHRoaXMgcGF0Y2guCgpQYXRjaCAzLCA0IGFscmVhZHkg
QWNrZWQgb3Igci1iClBhdGNoIDIgbmVlZHMgYSByZXZpZXcgZnJvbSBWaWxsZSwgaXQgYWRkcmVz
c2VzIGFsbCBoaXMgZmluYWwgY29tbWVudHMKCkpvc8OpIFJvYmVydG8gZGUgU291emEgKDEpOgog
IGRybS85MTUvZGlzcGxheTogUHJlcGFyZSBmb3IgZmFzdHNldCBleHRlcm5hbCBkZXBlbmRlbmNp
ZXMgY2hlY2sKCk1hbmFzaSBOYXZhcmUgKDMpOgogIGRybS9pOTE1L2RwOiBNYWtlIHN1cmUgYWxs
IHRpbGVkIGNvbm5lY3RvcnMgZ2V0IGFkZGVkIHRvIHRoZSBzdGF0ZQogICAgd2l0aCBmdWxsIG1v
ZGVzZXQKICBkcm0vaTkxNS9kcDogTWFrZSBwb3J0IHN5bmMgbW9kZSBhc3NpZ25tZW50cyBvbmx5
IGlmIGFsbCB0aWxlcyBwcmVzZW50CiAgZHJtL2k5MTUvZHA6IERpc2FibGUgUG9ydCBzeW5jIG1v
ZGUgY29ycmVjdGx5IG9uIHRlYXJkb3duCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMzI0ICsrKysrKysrKysrKysrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MjU5IGluc2VydGlvbnMoKyksIDcyIGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
