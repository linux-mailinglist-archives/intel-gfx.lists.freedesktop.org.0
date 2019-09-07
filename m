Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 599EAAC63A
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 13:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289AF89DC1;
	Sat,  7 Sep 2019 11:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89ABD89DC1
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 11:15:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 04:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,477,1559545200"; d="scan'208";a="177883096"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 04:15:17 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 16:37:24 +0530
Message-Id: <20190907110735.10302-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 00/11] DSB enablement.
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
bGxvd3MgZHJpdmVyCnRvIGJhdGNoIHN1Ym1pdCBIVyBwcm9ncmFtbWluZy4KCkFzIHBhcnQgb2Yg
aW5pdGlhbCBlbmFibGVtZW50IGNvbW1vbiBhcGkgY3JlYXRlZCB3aGljaCBjdXJyZW50bHkgdXNl
ZAp0byBwcm9ncmFtIGdhbW1hIGx1dCBwcm9yYW1taW5nLgoKR29pbmcgZm9yd2FkIERTQiBzdXBw
b3J0IGNhbiBiZSBhZGRlZCBmb3IgSERSIGFuZCBmbGlwIHJlbGF0ZWQgb3BlcmF0aW9uLgoKSFNE
RVM6IDEyMDk5NzgyNDEKQlNwZWM6IDMyMDIwCgp2MTogSW5pdGlhbCB2ZXJzaW9uLgoKdjI6IE1v
dmUgaW50ZWxfZHNiIGZpbGVzIHVuZGVyIGRpc3BsYXkgZm9sZGVyIGFuZCBmaXhlZCBhbiBpc3N1
ZS4KCnYzOiBBcyBwZXIgcmV2aWV3IGNvbW1lbnRzIGZyb20gQ2hyaXMgYW5kIEphbmksCi0gcmVt
b3ZlZCBzb21lIHVud2FudGVkIGNvZGUuIChDaHJpcykKLSBVc2VkIGk5MTVfZ2VtX29iamVjdF9j
cmVhdGVfaW50ZXJuYWwgaW5zdGVhZCBvZiBfc2htZW0uIChDaHJpcykKLSBjbWRfYnVmX3RhaWwg
cmVtb3ZlZCBhbmQgY2FuIGJlIGRlcml2ZWQgdGhyb3VnaCB2bWEgb2JqZWN0LiAoQ2hyaXMpCi0g
U2ltcGxpZmllZCBhbmQgb3B0aW1pemVkIGNvZGUgZmV3IHBsYWNlcy4gKENocmlzKQotIENhbGxl
ZCBkc2ItYXBpIGRpcmVjdGx5IGluIGNhbGxzaXRlcyBpbnN0ZWFkIGdvaW5nIHZpYSBJOTE1X1dS
SVRFLiAoSmFuaSkKCnY0OiBBZGRyZXNzZWQgcmV2aWV3IGNvbW1uZXRzIGZyb20gU2hhc2hhbmsu
Cgp2NTogQWRkcmVzc2VkIHJldmlldyBjb21tbmV0cyBmcm9tIFNoYXNoYW5rIGFuZCBKYW5pLgoK
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogTWljaGVsIFRoaWVycnkgPG1p
Y2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+CkNj
OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKQW5pbWVzaCBNYW5uYSAoMTEpOgogIGRybS9p
OTE1L2RzYjogZmVhdHVyZSBmbGFnIGFkZGVkIGZvciBkaXNwbGF5IHN0YXRlIGJ1ZmZlci4KICBk
cm0vaTkxNS9kc2I6IERTQiBjb250ZXh0IGNyZWF0aW9uLgogIGRybS9pOTE1L2RzYjogc2luZ2xl
IHJlZ2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZvciBEU0IuCiAgZHJtL2k5MTUvZHNiOiBJbmRleGVk
IHJlZ2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZvciBEU0IuCiAgZHJtL2k5MTUvZHNiOiBDaGVjayBE
U0IgZW5naW5lIHN0YXR1cy4KICBkcm0vaTkxNS9kc2I6IGZ1bmN0aW9ucyB0byBlbmFibGUvZGlz
YWJsZSBEU0IgZW5naW5lLgogIGRybS9pOTE1L2RzYjogZnVuY3Rpb24gdG8gdHJpZ2dlciB3b3Jr
bG9hZCBleGVjdXRpb24gb2YgRFNCLgogIGRybS9pOTE1L2RzYjogYWRkZWQgZHNiIHJlZmNvdW50
IHRvIHN5bmNocm9uaXplIGJldHdlZW4gZ2V0L3B1dC4KICBkcm0vaTkxNS9kc2I6IEVuYWJsZSBn
YW1tYSBsdXQgcHJvZ3JhbW1pbmcgdXNpbmcgRFNCLgogIGRybS9pOTE1L2RzYjogRW5hYmxlIERT
QiBmb3IgZ2VuMTIuCiAgZHJtL2k5MTUvZHNiOiBEb2N1bWVudGF0aW9uIGZvciBEU0IuCgogRG9j
dW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgICAgICAgICAgICAgICAgICAgIHwgICA5ICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICAgfCAgNjMgKystLQogLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAzICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDMzNSArKysrKysrKysrKysr
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggICAgICB8ICA0
OSArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAg
MyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAgIDMg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAxMCAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICAgfCAgIDEgKwog
MTAgZmlsZXMgY2hhbmdlZCwgNDU0IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5oCgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
