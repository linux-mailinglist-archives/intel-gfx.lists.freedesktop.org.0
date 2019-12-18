Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416A8124CD7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 630046E85C;
	Wed, 18 Dec 2019 16:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709466E85B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189708"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:45 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:11:01 +0200
Message-Id: <20191218161105.30638-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/15] drm/framebuffer: Format modifier for
 Intel Gen-12 media compression
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Nanley G Chery <nanley.g.chery@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpHZW4tMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHRo
ZSBtZWRpYSBlbmdpbmUsIGFkZAphIG5ldyBtb2RpZmllciBhcyB0aGUgZHJpdmVyIG5lZWRzIHRv
IGtub3cgdGhlIHN1cmZhY2Ugd2FzIGNvbXByZXNzZWQgYnkKdGhlIG1lZGlhIG9yIHJlbmRlciBl
bmdpbmUuCgp2MjogVXBkYXRlIGNvZGUgY29tbWVudCBkZXNjcmliaW5nIHRoZSBjb2xvciBwbGFu
ZSBvcmRlciBmb3IgWVVWCiAgICBzZW1pcGxhbmFyIGZvcm1hdHMuCgpDYzogTmFubGV5IEcgQ2hl
cnkgPG5hbmxleS5nLmNoZXJ5QGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFu
LnBhbmRpeWFuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCB8IDEzICsrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
aW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3Vy
Y2MuaAppbmRleCA1YmE0ODFmNDk5MzEuLjhiYzBiMzE1OTdkOCAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS91YXBpL2RybS9kcm1fZm91cmNjLmgKKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNj
LmgKQEAgLTQyMSw2ICs0MjEsMTkgQEAgZXh0ZXJuICJDIiB7CiAgKi8KICNkZWZpbmUgSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRFTCwgNikK
IAorLyoKKyAqIEludGVsIGNvbG9yIGNvbnRyb2wgc3VyZmFjZXMgKENDUykgZm9yIEdlbi0xMiBt
ZWRpYSBjb21wcmVzc2lvbgorICoKKyAqIFRoZSBtYWluIHN1cmZhY2UgaXMgWS10aWxlZCBhbmQg
YXQgcGxhbmUgaW5kZXggMCwgdGhlIENDUyBpcyBsaW5lYXIgYW5kCisgKiBhdCBpbmRleCAxLiBB
IDY0QiBDQ1MgY2FjaGUgbGluZSBjb3JyZXNwb25kcyB0byBhbiBhcmVhIG9mIDR4MSB0aWxlcyBp
bgorICogbWFpbiBzdXJmYWNlLiBJbiBvdGhlciB3b3JkcywgNCBiaXRzIGluIENDUyBtYXAgdG8g
YSBtYWluIHN1cmZhY2UgY2FjaGUKKyAqIGxpbmUgcGFpci4gVGhlIG1haW4gc3VyZmFjZSBwaXRj
aCBpcyByZXF1aXJlZCB0byBiZSBhIG11bHRpcGxlIG9mIGZvdXIKKyAqIFktdGlsZSB3aWR0aHMu
IEZvciBzZW1pLXBsYW5hciBmb3JtYXRzIGxpa2UgTlYxMiwgQ0NTIHBsYW5lcyBmb2xsb3cgdGhl
CisgKiBZIGFuZCBVViBwbGFuZXMgaS5lLiwgcGxhbmVzIDAgYW5kIDEgYXJlIHVzZWQgZm9yIFkg
YW5kIFVWIHN1cmZhY2VzLAorICogcGxhbmVzIDIgYW5kIDMgZm9yIHRoZSByZXNwZWN0aXZlIEND
Uy4KKyAqLworI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1MgZm91
cmNjX21vZF9jb2RlKElOVEVMLCA3KQorCiAvKgogICogVGlsZWQsIE5WMTJNVCwgZ3JvdXBlZCBp
biA2NCAocGl4ZWxzKSB4IDMyIChsaW5lcykgLXNpemVkIG1hY3JvYmxvY2tzCiAgKgotLSAKMi4y
Mi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
