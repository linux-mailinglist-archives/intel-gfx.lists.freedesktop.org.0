Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD7E9DDBE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 08:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B49989996;
	Tue, 27 Aug 2019 06:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F200489996
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 06:27:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 23:27:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="182685156"
Received: from akn-lab.iind.intel.com ([10.223.74.154])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2019 23:27:17 -0700
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 11:59:30 +0530
Message-Id: <1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915: Prune 2560x2880 mode for 5K tiled
 dual DP monitors
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

RnJvbTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPgoKQ3VycmVu
dGx5LCB0aGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgZmVhdHVyZSBpcyBub3QgYXZhaWxhYmxlLCBk
dWUgdG8Kd2hpY2ggdGhlIDVLLXRpbGVkIGR1YWwgRFAgbW9uaXRvcnMgZXhwZXJpZW5jZSBjb3Jy
dXB0aW9uIHdoZW4KMjU2MHgyODgwIG1vZGUgaXMgYXBwbGllZCBmb3IgYm90aCBvZiB0aGUgdGls
ZWQgRFAgY29ubmVjdG9ycy4KQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTk3MjQ0CgpUaGVyZSBpcyBhIHBhdGNoIHNlcmllcyB0byBlbmFibGUg
dHJhbnNjb2RlIHBvcnQgc3luYyBmZWF0dXJlIGZvcgp0aWxlZCBkaXNwbGF5IGZvciBJQ0wrLCB3
aGljaCBpcyB1bmRlciByZXZpZXc6Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVj
dC9pbnRlbC1nZngvbGlzdC8/c2VyaWVzPTEzNzMzOQoKRm9yIHRoZSBvbGRlciBwbGF0Zm9ybXMs
IHdlIG5lZWQgdG8gcmVtb3ZlIHRoZSAyNTYweDI4ODAgbW9kZSB0byBhdm9pZAphIHBvc3NpYmls
aXR5IG9mIHVzZXJzcGFjZSBjaG9vc2luZyAyNTYweDI4ODAgbW9kZSBmb3IgYm90aCB0aWxlZApk
aXNwbGF5cywgcmVzdWx0aW5nIGluIGNvcnJ1cHRpb24uCgpUaGlzIHBhdGNoIHBydW5lcyAyNTYw
eDI4ODAgbW9kZSBmb3Igb25lIG9mIHRoZSB0aWxlZCBEUCBjb25uZWN0b3IuClNpbmNlIGJvdGgg
dGhlIHRpbGVkIERQIGNvbm5lY3RvcnMgaGF2ZSBkaWZmZXJlbnQgdGlsZV9oX2xvYyBhbmQKdGls
ZV92X2xvYywgdGhlIHRpbGVkIGNvbm5lY3RvciB3aXRoIHRpbGVfaF9sb2MgYW5kIHRpbGVfdl9s
b2MgYXMgJzAnLAppcyBjaG9zZW4sIGZvciB3aGljaCB0aGUgZ2l2ZW4gcmVzb2x1dGlvbiBpcyBy
ZW1vdmVkLgoKU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxA
aW50ZWwuY29tPgpDQzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMSArKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNWM0NWEzYi4uYWE0M2EzYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNTY0LDYgKzU2NCwxNyBAQCBpbnRlbF9k
cF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJaWYgKG1vZGUt
PmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxDTEspCiAJCXJldHVybiBNT0RFX0hfSUxMRUdBTDsK
IAorCS8qCisJICogRm9yIDVLIHRpbGVkIGR1YWwgRFAgbW9uaXRvcnMsIGR1YWwtRFAgc3luYyBp
cyBub3QgeWV0IHN1cHBvcnRlZC4KKwkgKiBUaGlzIHJlc3VsdHMgaW4gZGlzcGxheSBzeW5jIGlz
c3Vlcywgd2hlbiBib3RoIHRpbGVkIGNvbm5lY3RvcnMgcnVuCisJICogb24gMjU2MHgyODgwIHJl
c29sdXRpb24uIFRoZXJlZm9yZSBwcnVuZSB0aGUgMjU2MHgyODgwIG1vZGUgb24gb25lCisJICog
b2YgdGhlIHRpbGVkIGNvbm5lY3RvciwgdG8gYXZvaWQgc3VjaCBhIGNhc2UuCisJICovCisJaWYg
KGNvbm5lY3Rvci0+aGFzX3RpbGUgJiYKKwkgICAgKGNvbm5lY3Rvci0+dGlsZV9oX2xvYyA9PSAw
ICYmIGNvbm5lY3Rvci0+dGlsZV92X2xvYyA9PSAwKSAmJgorCSAgICAobW9kZS0+aGRpc3BsYXkg
PT0gMjU2MCAmJiBtb2RlLT52ZGlzcGxheSA9PSAyODgwKSkKKwkJcmV0dXJuIE1PREVfUEFORUw7
CisKIAlyZXR1cm4gTU9ERV9PSzsKIH0KIAotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
