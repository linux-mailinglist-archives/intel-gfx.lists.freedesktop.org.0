Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D72857BE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 03:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73DC6E0A2;
	Thu,  8 Aug 2019 01:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4556E0A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 01:44:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 18:44:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="165538115"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 07 Aug 2019 18:44:41 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 18:44:20 -0700
Message-Id: <20190808014423.20377-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/3] Display uncore
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSd2ZSBiZWVuIHRyeWluZyB0byBpZGVudGlmeSBNTUlPIHJhbmdlcyB0byBjbGVhcmx5IGRlZmlu
ZSB3aGF0IGJlbG9uZ3MKdG8gZGlzcGxheV91bmNvcmUgdG8gZG8gYSBjaGVjayBvbiBhY2Nlc3Ms
IGJ1dCB0aGVyZSBhcmUgbG90cyBvZgpleGNlcHRpb25zIGFuZCBkaWZmZXJlbmNlcyBhY3Jvc3Mg
Z2VucyAod2l0aCBhIGZldyBtb3JlIGNvbWluZyB3aXRoIFRHTCksCnNvIEkgZG9uJ3QgdGhpbmsg
dGhhdCdzIGEgdmlhYmxlIHdheS4gVGhlIGFsdGVybmF0aXZlIG9wdGlvbiBpbXBsZW1lbnRlZApo
ZXJlIGlzIHRvIGRpZmZlcmVudGlhdGUgdGhlIHJlZ2lzdGVyIGJ5IHR5cGUsIHdoaWNoIHNob3Vs
ZCBlbnN1cmUgd2UKbmV2ZXIgbWl4IHRoZW0gdXAsIGJ1dCBhdCB0aGUgY29zdCBvZiBhIG1vcmUg
Y29tcGxleCB0cmFuc2l0aW9uLgoKVGhvdWdodHM/IEknbSB2ZXJ5IG9wZW4gdG8gKGFuZCBJIGFj
dHVhbGx5IGhvcGUgZm9yKSBiZXR0ZXIgaWRlYXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyAoMyk6CiAgZHJtL2k5MTU6IHNwbGl0IG91dCB1bmNvcmVfbW1pb19kZWJ1Zwog
IGRybS9pOTE1OiBpbnRyb2R1Y2UgZGlzcGxheV91bmNvcmUKICBkcm0vaTkxNTogY29udmVydCBh
IGNvdXBsZSBvZiByZWdpc3RlcnMgdG8gX0RFX01NSU8KCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9yZWcuaCAgfCAgNjYgKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgfCAgMzIgKysrLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICAyMCArKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMzIgKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgNDQgLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jICAgICAgICAgICB8IDEwMCArKysrKysr
KysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5oICAgICAgICAg
ICB8ICAxOCArKy0tCiA4IGZpbGVzIGNoYW5nZWQsIDIxNSBpbnNlcnRpb25zKCspLCA5OSBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcmVnLmgKCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
