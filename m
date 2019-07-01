Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB775B51D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697178961E;
	Mon,  1 Jul 2019 06:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543F68961E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:35:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988492"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:33:34 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:17 +0530
Message-Id: <20190701062632.456-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/15] DSB enablement.
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzcGxheSBTdGF0ZSBCdWZmZXIgKERTQikgaXMgaGFyZHdhcmUgY2FwYWJpbGl0eSB3aGljaCBh
bGxvd3MKZHJpdmVyIHRvIGJhdGNoIHN1Ym1pdCBIVyBwcm9ncmFtbWluZy4KCkFzIHBhcnQgb2Yg
aW5pdGlhbCBlbmFibGVtZW50IGNvbW1vbiBhcGkgY3JlYXRlZCB3aGljaCBjdXJyZW50bHkgdXNl
ZAp0byBwcm9ncmFtIGdhbW1hIGx1dCBwcm9yYW1taW5nLgoKR29pbmcgZm9yd2FkIERTQiBzdXBw
b3J0IGNhbiBiZSBhZGRlZCBmb3IgSERSIGFuZCBmbGlwIHJlbGF0ZWQgb3BlcmF0aW9uLgoKRmV3
IGNoYW5nZXMgb2YgdGhpcyBwYXRjaCBzZXJpZXMgaXMgbm90IHRlc3RlZCwgc2VuZGluZyB2ZXJz
aW9uIDEKZm9yIGRlc2lnbiByZXZpZXcsIHdpbGwgYmUgdGVzdGluZyBpbiBwYXJhbGxlbC4KCkhT
REVTOiAxMjA5OTc4MjQxCkJTcGVjOiAzMjAyMAoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPgpDYzogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEg
PHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+CkNjOiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFy
bWFAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PgoKQW5pbWVzaCBNYW5uYSAoMTUpOgogIGRybS9pOTE1L2RzYjogZmVhdHVyZSBmbGFnIGFkZGVk
IGZvciBkaXNwbGF5IHN0YXRlIGJ1ZmZlci4KICBkcm0vaTkxNS9kc2I6IERTQiBjb250ZXh0IGNy
ZWF0aW9uLgogIGRybS9pOTE1L2RzYjogc2luZ2xlIHJlZ2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZv
ciBEU0IuCiAgZHJtL2k5MTUvZHNiOiBBZGRlZCBlbnVtIGZvciByZWcgd3JpdGUgY2FwYWJpbGl0
eS4KICBkcm0vaTkxNS9kc2I6IEluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERT
Qi4KICBkcm0vaTkxNS9kc2I6IFVwZGF0ZSBpOTE1X3dyaXRlIHRvIGNhbGwgZHNiLXdyaXRlLgog
IGRybS9pOTE1L2RzYjogUmVnaXN0ZXIgZGVmaW5pdGlvbiBvZiBEU0IgcmVnaXN0ZXJzLgogIGRy
bS9pOTE1L2RzYjogQ2hlY2sgRFNCIGVuZ2luZSBzdGF0dXMuCiAgZHJtL2k5MTUvZHNiOiBmdW5j
dGlvbnMgdG8gZW5hYmxlL2Rpc2FibGUgRFNCIGVuZ2luZS4KICBkcm0vaTkxNS9kc2I6IGZ1bmN0
aW9uIHRvIHRyaWdnZXIgd29ya2xvYWQgZXhlY3V0aW9uIG9mIERTQi4KICBkcm0vaTkxNS9kc2I6
IGZ1bmN0aW9uIHRvIGRlc3Ryb3kgRFNCIGNvbnRleHQuCiAgZHJtL2k5MTUvZHNiOiBFYXJseSBw
cmVwYXJlIG9mIGRzYiBjb250ZXh0LgogIGRybS9pOTE1L2RzYjogQ2xlYW51cCBvZiBEU0IgY29u
dGV4dC4KICBkcm0vaTkxNS9kc2I6IERvY3VtZW50YXRpb24gZm9yIERTQi4KICBkcm0vaTkxNS9k
c2I6IEVuYWJsZSBnYW1tYSBsdXQgcHJvZ3JhbW1pbmcgdXNpbmcgRFNCLgoKIERvY3VtZW50YXRp
b24vZ3B1L2k5MTUucnN0ICAgICAgICAgICAgICAgICAgIHwgICA5ICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDM0ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgIHwgIDUzICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmggICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rydi5oICAgICAgICAgICAgIHwgICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rz
Yi5jICAgICAgICAgICAgIHwgMzA1ICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RzYi5oICAgICAgICAgICAgIHwgIDQ4ICsrKwogMTAgZmlsZXMgY2hhbmdl
ZCwgNDYwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzYi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmgKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
