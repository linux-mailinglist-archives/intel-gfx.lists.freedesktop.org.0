Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0EF124CCD
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91086E883;
	Wed, 18 Dec 2019 16:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74C16E88A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189579"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:28 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:10:51 +0200
Message-Id: <20191218161105.30638-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] drm/framebuffer: Format modifier for
 Intel Gen-12 render compression
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpHZW4tMTIgaGFzIGEgbmV3IGNvbXByZXNzaW9uIGZvcm1hdCwgYWRkIGEgbmV3IG1vZGlmaWVy
IHRvIGluZGljYXRlIHRoYXQuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
CkNjOiBOYW5sZXkgRyBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPgpDYzogSmFzb24g
RWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgpTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFu
IFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkvZHJtL2Ry
bV9mb3VyY2MuaCB8IDExICsrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIGIvaW5jbHVk
ZS91YXBpL2RybS9kcm1fZm91cmNjLmgKaW5kZXggOGNhYWFmN2ZmOTFiLi41YmE0ODFmNDk5MzEg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCisrKyBiL2luY2x1ZGUv
dWFwaS9kcm0vZHJtX2ZvdXJjYy5oCkBAIC00MTAsNiArNDEwLDE3IEBAIGV4dGVybiAiQyIgewog
I2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1MJZm91cmNjX21vZF9jb2RlKElOVEVM
LCA0KQogI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTCWZvdXJjY19tb2RfY29k
ZShJTlRFTCwgNSkKIAorLyoKKyAqIEludGVsIGNvbG9yIGNvbnRyb2wgc3VyZmFjZXMgKENDUykg
Zm9yIEdlbi0xMiByZW5kZXIgY29tcHJlc3Npb24uCisgKgorICogVGhlIG1haW4gc3VyZmFjZSBp
cyBZLXRpbGVkIGFuZCBhdCBwbGFuZSBpbmRleCAwLCB0aGUgQ0NTIGlzIGxpbmVhciBhbmQKKyAq
IGF0IGluZGV4IDEuIEEgNjRCIENDUyBjYWNoZSBsaW5lIGNvcnJlc3BvbmRzIHRvIGFuIGFyZWEg
b2YgNHgxIHRpbGVzIGluCisgKiBtYWluIHN1cmZhY2UuIEluIG90aGVyIHdvcmRzLCA0IGJpdHMg
aW4gQ0NTIG1hcCB0byBhIG1haW4gc3VyZmFjZSBjYWNoZQorICogbGluZSBwYWlyLiBUaGUgbWFp
biBzdXJmYWNlIHBpdGNoIGlzIHJlcXVpcmVkIHRvIGJlIGEgbXVsdGlwbGUgb2YgZm91cgorICog
WS10aWxlIHdpZHRocy4KKyAqLworI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4x
Ml9SQ19DQ1MgZm91cmNjX21vZF9jb2RlKElOVEVMLCA2KQorCiAvKgogICogVGlsZWQsIE5WMTJN
VCwgZ3JvdXBlZCBpbiA2NCAocGl4ZWxzKSB4IDMyIChsaW5lcykgLXNpemVkIG1hY3JvYmxvY2tz
CiAgKgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
