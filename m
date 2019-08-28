Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8859F791
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 02:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A85989BC2;
	Wed, 28 Aug 2019 00:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F289898C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 00:50:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 17:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="171378576"
Received: from pachecof-ubuntu.fm.intel.com ([10.1.27.56])
 by orsmga007.jf.intel.com with ESMTP; 27 Aug 2019 17:50:04 -0700
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 17:45:55 -0700
Message-Id: <20190828004558.11903-1-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Add/modify checks within intel_uc_fini_hw
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

VGhlIHRoaXJkIHBhdGNoIGluIHRoZSBzZXJpZXMgYXR0ZW1wdHMgdG8gZG93bmdyYWRlIHRoZSBj
aGVjayBmb3IKaXNfZ3VjX3J1bm5pbmcgdG8gaXNfZndfYXZhaWxhYmxlIHdpdGhpbiBpbnRlbF91
Y19maW5pX2h3LiBXZSBjYW5ub3QKcmVseSBvbiBpc19ndWNfcnVubmluZyBiZWNhdXNlIHdlIHdp
bGwgY29tcGxldGVseSBza2lwIG91ciBhdHRlbXB0IHRvCmZpbmkgdUMgaHcgZHVyaW5nIHVubG9h
ZC4gSG93ZXZlciwgdGhpcyBleHBvc2VzIGEgbmV3IHNldCBvZiBwcm9ibGVtcyBkdWUKdG8gdGhl
IGRyaXZlciBiZWluZyBhYmxlIHRvIGNvbnRpbnVlIGFmdGVyIEd1QyBpbml0aWFsaXphdGlvbiBm
YWlsdXJlczoKd2UgY2FuIG5vdyB0cnkgdG8gZGlzYWJsZSBzdWJtaXNzaW9uIG9yIGNvbW11bmlj
YXRpb24gdGhhdCB3YXMgbmV2ZXIgZW5hYmxlZAppbiB0aGUgZmlyc3QgcGxhY2UuCgpUaGUgZmly
c3QgdHdvIHBhdGNoZXMgYXR0ZW1wdCB0byByZXNvbHZlIHRob3NlIGlzc3VlcyBieSBhZGRpbmcK
KGhvcGVmdWxseSBzdHJvbmdlcikgY2hlY2tzIGFyb3VuZCBzdWJtaXNzaW9uX2Rpc2FibGUgYW5k
CmNvbW11bmljYXRpb25fZGlzYWJsZS4KClRoYW5rcywKRmVybmFuZG8KCkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KCkZlcm5hbmRvIFBhY2hlY28gKDMpOgogIGRybS9p
OTE1L3VjOiBFeHRyYWN0IGNvbW1vbiBjb2RlIGZyb20gR3VDIHN0b3AvZGlzYWJsZSBjb21tCiAg
ZHJtL2k5MTUvdWM6IERpc2FibGUgR3VDIHN1Ym1pc3Npb24gb25seSBpZiBjdXJyZW50bHkgZW5h
YmxlZAogIGRybS9pOTE1L3VjOiBGaW5pIGh3IGV2ZW4gaWYgR3VDIGlzIG5vdCBydW5uaW5nCgog
Li4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgMjMgKysrKysr
KysrKysrKwogLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5oIHwg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwgMzQg
KysrKysrKysrKystLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAx
NCBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
