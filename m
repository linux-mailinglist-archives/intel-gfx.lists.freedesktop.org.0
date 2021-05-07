Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C37B3762A8
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 11:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E489A6EDFA;
	Fri,  7 May 2021 09:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917C96EDFA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 09:12:47 +0000 (UTC)
IronPort-SDR: igiZIiGNpxtKr5jfMO3vxmawdmxs58bp/ZcCveT8BU+bwfs3tZP3Ua+QUYQ7GKdkCdEHvXyoy0
 JRrJ+WidtbhA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="262629108"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="262629108"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 02:12:46 -0700
IronPort-SDR: hdctU7gnHzM8nS8x/Gf+qZ+ICIrWDK9H9PU8xgdb3du/E1xbkNBDcA0hwVInYlJe6kL+2nerAq
 EmgItrohfZzg==
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="540279340"
Received: from flydon-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.20.229])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 02:12:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 10:12:10 +0100
Message-Id: <20210507091210.371132-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: relax 2big checking around
 initial fb
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpUaGUga2VybmVs
IHByZWZlcnMgZW5hYmxpbmcgZmJjIG92ZXIgdGhlIGluaXRpYWwgZmIsIHNpbmNlIHRoaXMgbGVh
ZHMgdG8KYWN0dWFsIHJ1bnRpbWUgcG93ZXIgc2F2aW5ncywgc28gaWYgdGhlIGluaXRpYWwgZmIg
aXMgZGVlbWVkIHRvbyBiaWcKdXNpbmcgc29tZSBoZXVyaXN0aWMsIHRoZW4gd2Ugc2ltcGx5IHNr
aXAgYWxsb2NhdGluZyBzdG9sZW4gZm9yIGl0LgpIb3dldmVyIGlmIHRoZSBrZXJuZWwgaXMgbm90
IGNvbmZpZ3VyZWQgd2l0aCBmYmNvbiB0aGVuIGl0IHNob3VsZCBiZQpwb3NzaWJsZSB0byByZWxh
eCB0aGlzLCBzaW5jZSB1bmxpa2Ugd2l0aCBmYmNvbiB0aGUgZGlzcGxheSBzZXJ2ZXIKc2hvdWxk
bid0IHByZXNlcnZlIGl0IHdoZW4gbGF0ZXIgcmVwbGFjaW5nIGl0LCBhbmQgc28gd2Ugc2hvdWxk
IGJlIGFibGUKdG8gcmUtdXNlIHRoZSBzdG9sZW4gbWVtb3J5IGZvciBmYmMgYW5kIGZyaWVuZHMu
IFRoaXMgcGF0Y2ggaXMgcmVwb3J0ZWQKdG8gZml4IHNvbWUgZmxpY2tlciBzZWVuIGR1cmluZyBi
b290IHNwbGFzaCBvbiBzb21lIGRldmljZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVs
LmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZWMyZDNmYTYwMDAzLi4wZWUxZjAyMTNm
ZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xNDU1LDcgKzE0NTUsNyBAQCBpbml0aWFsX3BsYW5lX3ZtYShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAkgKiBpbXBvcnRhbnQgYW5kIHdlIHNob3VsZCBwcm9iYWJseSB1c2UgdGhh
dCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcgogCSAqIGZlYXR1cmVzLgogCSAqLwotCWlmIChzaXpl
ICogMiA+IGk5MTUtPnN0b2xlbl91c2FibGVfc2l6ZSkKKwlpZiAoSVNfRU5BQkxFRChGUkFNRUJV
RkZFUl9DT05TT0xFKSAmJiBzaXplICogMiA+IGk5MTUtPnN0b2xlbl91c2FibGVfc2l6ZSkKIAkJ
cmV0dXJuIE5VTEw7CiAKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9mb3Jf
cHJlYWxsb2NhdGVkKGk5MTUsIGJhc2UsIHNpemUpOwotLSAKMi4yNi4zCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
