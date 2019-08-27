Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28999F321
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA7489B65;
	Tue, 27 Aug 2019 19:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD3B89B69
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:17:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="209863339"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 12:17:52 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 00:40:14 +0530
Message-Id: <20190827191026.26175-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/11] DSB enablement.
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
cmVhdGVfaW50ZXJuYWwgaW5zdGVhZCBvZiBfc2htZW0uIChDaHJpcykgCi0gY21kX2J1Zl90YWls
IHJlbW92ZWQgYW5kIGNhbiBiZSBkZXJpdmVkIHRocm91Z2ggdm1hIG9iamVjdC4gKENocmlzKQot
IFNpbXBsaWZpZWQgYW5kIG9wdGltaXplZCBjb2RlIGZldyBwbGFjZXMuIChDaHJpcykKLSBDYWxs
ZWQgZHNiLWFwaSBkaXJlY3RseSBpbiBjYWxsc2l0ZXMgaW5zdGVhZCBnb2luZyB2aWEgSTkxNV9X
UklURS4gKEphbmkpICAKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbEBmZndsbC5jaD4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IE1p
Y2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+CkNjOiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpDYzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFy
bWFAaW50ZWwuY29tPgpDYzogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4K
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KCkFuaW1lc2ggTWFu
bmEgKDExKToKICBkcm0vaTkxNS9kc2I6IGZlYXR1cmUgZmxhZyBhZGRlZCBmb3IgZGlzcGxheSBz
dGF0ZSBidWZmZXIuCiAgZHJtL2k5MTUvZHNiOiBEU0IgY29udGV4dCBjcmVhdGlvbi4KICBkcm0v
aTkxNS9kc2I6IHNpbmdsZSByZWdpc3RlciB3cml0ZSBmdW5jdGlvbiBmb3IgRFNCLgogIGRybS9p
OTE1L2RzYjogSW5kZXhlZCByZWdpc3RlciB3cml0ZSBmdW5jdGlvbiBmb3IgRFNCLgogIGRybS9p
OTE1L2RzYjogUmVnaXN0ZXIgZGVmaW5pdGlvbiBvZiBEU0IgcmVnaXN0ZXJzLgogIGRybS9pOTE1
L2RzYjogQ2hlY2sgRFNCIGVuZ2luZSBzdGF0dXMuCiAgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbnMg
dG8gZW5hYmxlL2Rpc2FibGUgRFNCIGVuZ2luZS4KICBkcm0vaTkxNS9kc2I6IGZ1bmN0aW9uIHRv
IHRyaWdnZXIgd29ya2xvYWQgZXhlY3V0aW9uIG9mIERTQi4KICBkcm0vaTkxNS9kc2I6IERvY3Vt
ZW50YXRpb24gZm9yIERTQi4KICBkcm0vaTkxNS9kc2I6IEVuYWJsZSBnYW1tYSBsdXQgcHJvZ3Jh
bW1pbmcgdXNpbmcgRFNCLgogIGRybS9pOTE1L2RzYjogRW5hYmxlIERTQiBmb3IgZ2VuMTIuCgog
RG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgICAgICAgICAgICAgICAgICAgIHwgICA5ICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICAgfCAgNjQgKystLQogLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAzICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDMyNiArKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggICAgICB8
ICA0OSArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8
ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAg
IDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAx
NSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICAgfCAgIDEg
KwogMTAgZmlsZXMgY2hhbmdlZCwgNDUyIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5oCgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
