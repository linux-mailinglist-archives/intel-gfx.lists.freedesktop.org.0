Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D70D5B8B56
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 09:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0822C6E8A8;
	Fri, 20 Sep 2019 07:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2AD6E8A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 07:04:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 00:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,527,1559545200"; d="scan'208";a="362764745"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2019 00:04:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 12:26:16 +0530
Message-Id: <20190920065626.3525-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 00/10] DSB enablement.
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
djY6IEFkZHJlc3NlZCByZXZpZXcgY29tbW5ldHMgZnJvbSBTaGFzaGFuay4KCnY3OiBBZGRyZXNz
ZWQgcmV2aWV3IGNvbW1uZXRzIGZyb20gU2hhc2hhbmsgYW5kIEphbmkuCgp2ODogQWRkcmVzc2Vk
IHJldmlldyBjb21tbmV0cyBmcm9tIFNoYXNoYW5rIGFuZCBKYW5pLgoKCkFuaW1lc2ggTWFubmEg
KDEwKToKICBkcm0vaTkxNS9kc2I6IGZlYXR1cmUgZmxhZyBhZGRlZCBmb3IgZGlzcGxheSBzdGF0
ZSBidWZmZXIuCiAgZHJtL2k5MTUvZHNiOiBEU0IgY29udGV4dCBjcmVhdGlvbi4KICBkcm0vaTkx
NS9kc2I6IHNpbmdsZSByZWdpc3RlciB3cml0ZSBmdW5jdGlvbiBmb3IgRFNCLgogIGRybS9pOTE1
L2RzYjogSW5kZXhlZCByZWdpc3RlciB3cml0ZSBmdW5jdGlvbiBmb3IgRFNCLgogIGRybS9pOTE1
L2RzYjogQ2hlY2sgRFNCIGVuZ2luZSBzdGF0dXMuCiAgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbnMg
dG8gZW5hYmxlL2Rpc2FibGUgRFNCIGVuZ2luZS4KICBkcm0vaTkxNS9kc2I6IGZ1bmN0aW9uIHRv
IHRyaWdnZXIgd29ya2xvYWQgZXhlY3V0aW9uIG9mIERTQi4KICBkcm0vaTkxNS9kc2I6IEVuYWJs
ZSBnYW1tYSBsdXQgcHJvZ3JhbW1pbmcgdXNpbmcgRFNCLgogIGRybS9pOTE1L2RzYjogRW5hYmxl
IERTQiBmb3IgZ2VuMTIuCiAgZHJtL2k5MTUvZHNiOiBEb2N1bWVudGF0aW9uIGZvciBEU0IuCgog
RG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgICAgICAgICAgICAgICAgICAgIHwgICA5ICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICAgfCAgNjMgKystLQogLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAzICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDMzNiArKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggICAgICB8
ICA0OSArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8
ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAg
IDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAx
MCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICAgfCAgIDEg
KwogMTAgZmlsZXMgY2hhbmdlZCwgNDU1IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5oCgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
