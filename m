Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10597D614C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 13:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136316E27C;
	Mon, 14 Oct 2019 11:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6E96E27C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 11:30:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 04:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185465842"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 04:30:37 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 16:31:15 +0530
Message-Id: <20191014110122.31923-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/7] Add mipi dsi command mode support.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgaGFzIG1haW5seSBwYXRjaGVzIHRvIGNvbmZpZ3VyZSB0aGUgZHNpIGluCmNv
bW1hbmQgbW9kZSwgVEUgZXZlbnQgaGFuZGxpbmcgYW5kIGluaXRpYXRlIGEgZnJhbWUKcmVxdWVz
dCB0byB0aGUgcGFuZWwuIEZsb2F0aW5nIHRoZSBSRkMgZm9yIHJldmlldyB3cnQKdGhlIGFib3Zl
IG1lbnRpb25lZCBpbXBsZW1lbnRhdGlvbi4KRm9yIG5vdyB3ZSBhcmUgY29uZmlndXJpbmcgdGhl
IE1JUEkgRFNJIHRvIG9wZXJhdGUgaW4KVEUgZ2F0ZSBtb2RlIGFuZCB0YWtlIFRFIGV2ZW50cyB2
aWEgR1BJTy4KClRoZXJlIGFyZSBmZXcgcGxhY2VzIHRoYXQgbmVlZHMgdG8gYmUgZml4ZWQgdG8g
aGFuZGxlLApjYXNlcyB3aGVyZSBtcGkgZHNpIGNvdWxkIGJlIG9wZXJhdGluZyBpbiBzaW5nbGUg
bGluawpjbWQgbW9kZSBvbiBwb3J0IEIuCgpJIGhhdmUgdGVzdGVkIGR1YWwgbGluayB3aXRoIHRo
aXMgc2VyaWVzIG9uIGljbC15LgpUaGVyZSBpcyBvbmUgb3BlbiB3cnQgZmxpcGRvbmUgd2hpY2gg
bmVlZHMgdG8gYmUgZml4ZWQuClRoaXMgaXMgV0lQLgoKTWFkaGF2IENoYXVoYW4gKDEpOgogIGRy
bS9pOTE1L2RzaTogSGVscGVyIHRvIGZpbmQgZHNpIGVuY29kZXIgaW4gY21kIG1vZGUKClZhbmRp
dGEgS3Vsa2FybmkgKDYpOgogIGRybS9pOTE1L2RzaTogRGVmaW5lIGNvbW1hbmQgbW9kZSByZWdp
c3RlcnMKICBkcm0vaTkxNS9kc2k6IENvbmZpZ3VyZSB0cmFuc2NvZGVyIG9wZXJhdGlvbiBmb3Ig
Y29tbWFuZCBtb2RlLgogIGRybS9pOTE1L2RzaTogQWRkIHZibGFuayBjYWxjdWxhdGlvbiBmb3Ig
Y29tbWFuZCBtb2RlCiAgZHJtL2k5MTUvZHNpOiBDb25maWd1cmUgVEUgaW50ZXJydXB0IGZvciBj
bWQgbW9kZQogIGRybS9pOTE1L2RzaTogQWRkIFRFIGhhbmRsZXIgZm9yIGRzaSBjbWQgbW9kZS4K
ICBkcm0vaTkxNS9kc2k6IEluaXRpYXRlIGZyYW1lIHJlcXVlc3QgaW4gY21kIG1vZGUKCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAxMzIgKysrKysrKysr
KysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
fCAgMTYgKysrCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAg
fCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuaCAgICAgIHwg
ICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICB8IDEx
MCArKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgICB8ICA3NiArKysrKysrKy0tCiA2IGZpbGVzIGNoYW5nZWQsIDMxNSBpbnNlcnRpb25z
KCspLCAyOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
