Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D71B5E94
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 10:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1AC6EE35;
	Wed, 18 Sep 2019 08:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B4D66EE35
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 08:05:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 01:05:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="362110385"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2019 01:05:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 13:27:35 +0530
Message-Id: <20190918075745.17076-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 00/10] DSB enablement.
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
ZWQgcmV2aWV3IGNvbW1uZXRzIGZyb20gU2hhc2hhbmsgYW5kIEphbmkuCgpBbmltZXNoIE1hbm5h
ICgxMCk6CiAgZHJtL2k5MTUvZHNiOiBmZWF0dXJlIGZsYWcgYWRkZWQgZm9yIGRpc3BsYXkgc3Rh
dGUgYnVmZmVyLgogIGRybS9pOTE1L2RzYjogRFNCIGNvbnRleHQgY3JlYXRpb24uCiAgZHJtL2k5
MTUvZHNiOiBzaW5nbGUgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KICBkcm0vaTkx
NS9kc2I6IEluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KICBkcm0vaTkx
NS9kc2I6IENoZWNrIERTQiBlbmdpbmUgc3RhdHVzLgogIGRybS9pOTE1L2RzYjogZnVuY3Rpb25z
IHRvIGVuYWJsZS9kaXNhYmxlIERTQiBlbmdpbmUuCiAgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0
byB0cmlnZ2VyIHdvcmtsb2FkIGV4ZWN1dGlvbiBvZiBEU0IuCiAgZHJtL2k5MTUvZHNiOiBFbmFi
bGUgZ2FtbWEgbHV0IHByb2dyYW1taW5nIHVzaW5nIERTQi4KICBkcm0vaTkxNS9kc2I6IEVuYWJs
ZSBEU0IgZm9yIGdlbjEyLgogIGRybS9pOTE1L2RzYjogRG9jdW1lbnRhdGlvbiBmb3IgRFNCLgoK
IERvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0ICAgICAgICAgICAgICAgICAgICB8ICAgOSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgIHwgIDYzICsrLS0KIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jICAgICAgfCAzMzQgKysrKysrKysr
KysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgICAg
fCAgNDkgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAg
fCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwg
ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAg
MTAgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgIHwgICAx
ICsKIDEwIGZpbGVzIGNoYW5nZWQsIDQ1MyBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuaAoKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
