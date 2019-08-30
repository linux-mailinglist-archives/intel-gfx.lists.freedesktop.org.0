Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4560A3720
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60DF46E31C;
	Fri, 30 Aug 2019 12:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093966E31C
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:53:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="198029778"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2019 05:53:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 18:15:23 +0530
Message-Id: <20190830124533.26573-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/10] DSB enablement.
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
CgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBNaWNoZWwgVGhpZXJyeSA8
bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4KQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4K
Q2M6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBN
YW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+CgpBbmltZXNoIE1hbm5hICgxMCk6CiAgZHJt
L2k5MTUvZHNiOiBmZWF0dXJlIGZsYWcgYWRkZWQgZm9yIGRpc3BsYXkgc3RhdGUgYnVmZmVyLgog
IGRybS9pOTE1L2RzYjogRFNCIGNvbnRleHQgY3JlYXRpb24uCiAgZHJtL2k5MTUvZHNiOiBzaW5n
bGUgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KICBkcm0vaTkxNS9kc2I6IEluZGV4
ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KICBkcm0vaTkxNS9kc2I6IENoZWNr
IERTQiBlbmdpbmUgc3RhdHVzLgogIGRybS9pOTE1L2RzYjogZnVuY3Rpb25zIHRvIGVuYWJsZS9k
aXNhYmxlIERTQiBlbmdpbmUuCiAgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0byB0cmlnZ2VyIHdv
cmtsb2FkIGV4ZWN1dGlvbiBvZiBEU0IuCiAgZHJtL2k5MTUvZHNiOiBFbmFibGUgZ2FtbWEgbHV0
IHByb2dyYW1taW5nIHVzaW5nIERTQi4KICBkcm0vaTkxNS9kc2I6IEVuYWJsZSBEU0IgZm9yIGdl
bjEyLgogIGRybS9pOTE1L2RzYjogRG9jdW1lbnRhdGlvbiBmb3IgRFNCLgoKIERvY3VtZW50YXRp
b24vZ3B1L2k5MTUucnN0ICAgICAgICAgICAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgIHwgIDY0ICsrLS0KIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jICAgICAgfCAzMzcgKysrKysrKysrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgICAgfCAgNDkgKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDUgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgICAzICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgMTAgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgIHwgICAxICsKIDEwIGZpbGVz
IGNoYW5nZWQsIDQ1OCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaAoKLS0g
CjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
