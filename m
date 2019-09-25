Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7B1BE8BC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 01:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE216ECAC;
	Wed, 25 Sep 2019 23:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7169F6ECAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 23:05:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 16:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="189815744"
Received: from unknown (HELO pachecof-ubuntu.fm.intel.com) ([10.1.27.23])
 by fmsmga007.fm.intel.com with ESMTP; 25 Sep 2019 16:04:59 -0700
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:00:31 -0700
Message-Id: <20190925230032.23676-1-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 0/1] GuC engine reset support
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

QW5vdGhlciBhdHRlbXB0IGF0IHByb3ZpZGluZyBHdUMgYSBsaXN0IG9mIHJlZ2lzdGVycyB0bwpz
YXZlL3Jlc3RvcmUgZHVyaW5nIGVuZ2luZSByZXNldHMgWzFdLgoKVGhlIGxpc3Qgd2UgcHJvdmlk
ZSBHdUMgc2hvdWxkIG1pcnJvciwgd2l0aCBwb3NzaWJseSBzb21lIGV4Y2VwdGlvbnMsCnRoZSBs
aXN0IG9mIHJlZ2lzdGVycyBhcHBsaWVkIGR1cmluZyBleGVjbGlzdHNfcmVzdW1lL2VuYWJsZV9l
eGVjbGlzdHMuCkFueSBpZGVhcyBvbiBob3cgdG8gZmxhZyBhbnkgZGlzY3JlcGFuY2llcyAoeWV0
IGZsZXhpYmxlIGVub3VnaCB0bwpoYW5kbGUgZXhjZXB0aW9ucykgYmV0d2VlbiB0aGUgdHdvIGxp
c3RzIGUuZy4gdmlhIGEgc2VsZnRlc3Q/IEkgd291bGQKbGlrZSBzb21ldGhpbmcgc3Ryb25nZXIg
dGhhbiBhIGNvbW1lbnQgdGhhdCBqdXN0IHN0YXRlcyB0aGUgb3RoZXIgbmVlZHMKdXBkYXRpbmcu
IE9yIHNob3VsZCBJIHRha2UgdGhpcyB0byBtZWFuIGEgZGlmZmVyZW50IGFwcHJvYWNoIGlzIG5l
ZWRlZD8KClRoYW5rcywKRmVybmFuZG8KClsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvcGF0Y2gvMTYxODg4LwoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+
CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgoKRmVybmFuZG8gUGFjaGVjbyAoMSk6CiAgZHJtL2k5MTUvZ3VjOiBQcm92aWRlIG1taW8g
bGlzdCB0byBiZSBzYXZlZC9yZXN0b3JlZCBvbiBlbmdpbmUgcmVzZXQKCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICAgfCAyMyArKystLQogLi4uL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kc190eXBlcy5oIHwgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Fkcy5jICAgIHwgODcgKysrKysrKysrKysrKysrKysrKwog
MyBmaWxlcyBjaGFuZ2VkLCAxMDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
