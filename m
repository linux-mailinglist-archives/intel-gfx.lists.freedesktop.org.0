Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE5DAC3A8
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 02:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466DE6E029;
	Sat,  7 Sep 2019 00:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 340FD6E029
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 00:21:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 17:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="177795998"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 06 Sep 2019 17:21:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 17:21:35 -0700
Message-Id: <20190907002143.22591-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] cdclk consolidation and rework for BXT-TGL
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

Y2RjbGsgZGVzaWduIGhhc24ndCBjaGFuZ2VkIG11Y2ggZnJvbSBCWFQgb253YXJkLCBidXQgd2Ug
c3RpbGwgaGF2ZQphIGxvdCBvZiBkaWZmZXJlbnQgY29kZXBhdGhzIHRvIGhhbmRsZSB0aGUgZGlm
ZmVyZW50IHBsYXRmb3JtcyBhbmQgaW4Kc29tZSBjYXNlcyB0aGV5J3ZlIGV2b2x2ZWQgaW4gZGlm
ZmVyZW50IGRpcmVjdGlvbnMuICBMZXQncyB0cnkgdG8KY29uc29saWRhdGUgc29tZSBvZiB0aGUg
Y29tbW9uIGxvZ2ljIHdoZXJlIGl0IG1ha2VzIHNlbnNlLgoKV2UgYWxzbyBoYXZlIHNvbWUgZnVu
Y3Rpb25zIHRoYXQgYXJlIGJhc2ljYWxseSBjb2RlIHJlcGVzZW50YXRpb25zIG9mCnRhYmxlcyBp
biB0aGUgYnNwZWMuICBBcyBuZXcgY2RjbGsgdmFsdWVzIGdldCBhZGRlZC9yZW1vdmVkIGZyb20g
dGhlCmJzcGVjIG92ZXIgdGltZSwgb3IgbmV3IHBsYXRmb3JtcyBnZXQgZW5hYmxlZCwgaXQncyBl
YXN5IHRvIG92ZXJsb29rCnNvbWUgb2YgdGhlIHBsYWNlcyB0aGF0IHdlIG5lZWQgdG8gdXBkYXRl
IHZhcmlvdXMgZnVuY3Rpb25zIHRvIHJlZmxlY3QKdGhvc2UgY2hhbmdlcy4gIExldCdzIHRyeSB0
byBhZGRyZXNzIHRoaXMgYnkgaW5jbHVkaW5nIGEgbW9yZSBsaXRlcmFsCnJlcHJlc2VudGF0aW9u
IG9mIHRoZSBic3BlYyB0YWJsZXMgaW4gdGhlIGRyaXZlciBhbmQgYWRhcHRpbmcgb3VyIGRyaXZl
cgp0byBwYXJzZSB0aG9zZSB0YWJsZXMgdG8gZ2V0IHRoZSB2YWx1ZXMgdGhleSBuZWVkLgoKQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpNYXR0IFJv
cGVyICg4KToKICBkcm0vaTkxNTogQ29uc29saWRhdGUgYnh0L2NubC9pY2wgY2RjbGsgcmVhZG91
dAogIGRybS9pOTE1OiBVc2UgbGl0ZXJhbCByZXByZXNlbnRhdGlvbiBvZiBjZGNsayB0YWJsZXMK
ICBkcm0vaTkxNTogQ29tYmluZSBieHRfc2V0X2NkY2xrIGFuZCBjbmxfc2V0X2NkY2xrCiAgZHJt
L2k5MTU6IEtpbGwgY25sX3Nhbml0aXplX2NkY2xrKCkKICBkcm0vaTkxNTogQ29uc29saWRhdGUg
e2J4dCxjbmwsaWNsfV91bmluaXRfY2RjbGsKICBkcm0vaTkxNTogQWRkIGNhbGNfdm9sdGFnZV9s
ZXZlbCBkaXNwbGF5IHZmdW5jCiAgZHJtL2k5MTU6IEVuaGFuY2UgY2RjbGsgc2FuaXRpemF0aW9u
CiAgZHJtL2k5MTU6IENvbnNvbGlkYXRlIHtieHQsY25sLGljbH1faW5pdF9jZGNsawoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDk3NyArKysrKysrKy0tLS0t
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaCB8ICAg
OCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgfCAgIDUgKwog
MyBmaWxlcyBjaGFuZ2VkLCAzNTggaW5zZXJ0aW9ucygrKSwgNjMyIGRlbGV0aW9ucygtKQoKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
