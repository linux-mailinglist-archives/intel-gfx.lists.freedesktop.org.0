Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D8A51C64
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 22:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2464189DD3;
	Mon, 24 Jun 2019 20:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C0189DD3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 20:32:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 13:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="184241347"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2019 13:32:11 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 13:31:48 -0700
Message-Id: <20190624203152.13725-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/4] Display uncore
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9yZSBmb2N1c2VkIHByb3Bvc2FsIGZvciBkaXNwbGF5L0dUIHVuY29yZSBzcGxpdC4KQSBmZXcg
bm90ZXMvY29uc2lkZXJhdGlvbnM6CgotIEkndmUgY29waWVkIHRoZSBNTUlPIHJhbmdlcyBjaGVj
ayBpbiBwYXRjaCAzIGZyb20gYSBwYXRjaCBmcm9tIFZpbGxlCiAgdGhhdCBkaWQgc29tZXRoaW5n
IHNpbWlsYXIgaW4gcmVnYXJkcyB0byBzcGxpdHRpbmcgR1QvREUgcmVnaXN0ZXIKICBhY2Nlc3Mu
IEknbSBzZWVpbmcgc29tZSBjaGVjayBmYWlsdXJlcyBvbiBnZW4gMyBhbmQgNCBbMV0sIHNvIEkn
ZAogIGFwcHJlY2lhdGUgaXQgaWYgc29tZW9uZSBjb3VsZCBkb3VibGUgY2hlY2sgdGhvc2UgcmFu
Z2VzIHNpbmNlIEknbQogIG5vdCBmYW1pbGlhciB3aXRoIHRob3NlIGdlbnMuIEZvciB0aGUgc2Ft
ZSByZWFzb24gSSBkb24ndCBleHBlY3QgQkFUCiAgdG8gcGFzcy4KCi0gSW5zdGVhZCBvZiBkb2lu
ZyBhIHJhbmdlIGNoZWNrIHRvIGZpbmQgZXJyb25lb3VzIGFjY2Vzc2VzLCBJCiAgY29uc2lkZXJl
ZCB1c2luZyBhIG5ldyBzdHJ1Y3R1cmUgZm9yIGRpc3BsYXkgcmVnaXN0ZXJzICh3cmFwcGluZwog
IGk5MTVfcmVnX3QpIGFuZCB0aGVyZWZvcmUgZm9yY2UgYSBjb21waWxlLXRpbWUgY2hlY2ssIGJ1
dCB0aGUgc2hlZXIKICBhbW91bnQgb2YgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgdGhhdCB3b3VsZCBu
ZWVkIHVwZGF0aW5nIG1ha2VzIHRoaXMKICBoYXJkIHRvIG1lcmdlIHRvZ2V0aGVyIHdpdGggdGhl
IHN3aXRjaCB0byB0aGUgbmV3IGZ1bmN0aW9ucyB3aXRob3V0CiAgaGl0dGluZyBjb25mbGljdHMu
IElmIHRoZXJlIGlzIGludGVyZXN0IGluIHRoaXMgb3B0aW9uLCBJJ2xsIHB1dAogIHNvbWV0aGlu
ZyBvdXQgYWZ0ZXIgYWxsIHRoZSBkaXNwbGF5IHJlZ2lzdGVyIGFjY2Vzc2VzIGhhdmUKICB0cmFu
c2l0aW9uZWQgdG8gdGhlIG5ldyBhY2Nlc3NvcnMuCgotIFdoZW4gTU1JTyBkZWJ1ZyBpcyBlbmFi
bGVkLCB0aGUgYWNjZXNzZXMgZnJvbSBHVCBhbmQgREUgYXJlIHN0aWxsCiAgc2VyaWFsaXplZCBi
ZWNhdXNlIHRoZSBIVyBkZWJ1ZyBpbmZyYXN0cnVjdHVyZSBpcyBzaGFyZWQuIFNpbmNlIG91cgog
IHRlc3RpbmcgZGVmYXVsdHMgdGhlIE1NSU8gZGVidWcgb24sIHdlIHdvbid0IHJlYWxseSB0ZXN0
IHBhcmFsbGVsCiAgYWNjZXNzZXMuIEFmdGVyIHRoZSBzZXJpZXMgc2V0dGxlcyBkb3duIEknbSBn
b2luZyB0byBzdWJtaXQgYSBDSSBydW4KICB3aXRoIE1NSU8gZGVidWcgb2ZmLCBidXQgbWF5YmUg
d2Ugc2hvdWxkIHVwZGF0ZSBzb21lIHRlc3RzIHRvIHJ1bgogIHdpdGggTU1JTyBkZWJ1ZyBkaXNh
YmxlZC4gVGhvdWdodHM/IAoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgoKWzFdIGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvVHJ5Ym90XzQ0OTEvPwoKRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyAoNCk6CiAgZHJtL2k5MTU6IHNwbGl0IG91dCB1bmNvcmVfbW1pb19kZWJ1ZwogIGRybS9p
OTE1OiByZXdvcmsgbW1pbyBkZWJ1ZyBzdG9wL3N0YXJ0CiAgZHJtL2k5MTU6IGludHJvZHVjZSBk
aXNwbGF5X3VuY29yZQogIGRybS9pOTE1OiBjb252ZXJ0IGludGVsX2hkbWkgdG8gZGlzcGxheSBy
ZWcgYWNjZXNzb3JzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMg
fCAyNzggKysrKysrKysrKy0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
ICAgICAgICAgIHwgIDIwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgICB8ICA1OSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgICAg
ICAgfCAxMDAgKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5oICAg
ICAgIHwgIDE4ICstCiA2IGZpbGVzIGNoYW5nZWQsIDI5MiBpbnNlcnRpb25zKCspLCAxODUgZGVs
ZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
