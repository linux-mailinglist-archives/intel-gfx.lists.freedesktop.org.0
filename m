Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D808452806
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 11:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5286E0B1;
	Tue, 25 Jun 2019 09:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206226E0B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 09:26:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 02:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="182848916"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2019 02:26:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <op.z3i9yfupxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190617095108.22118-1-jani.nikula@intel.com>
 <20190617095108.22118-9-jani.nikula@intel.com>
 <op.z3i9yfupxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Date: Tue, 25 Jun 2019 12:29:23 +0300
Message-ID: <87ftnyrp1o.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915: make intel_guc_reg.h
 self-contained
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

T24gTW9uLCAxNyBKdW4gMjAxOSwgTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+IHdyb3RlOgo+IE9uIE1vbiwgMTcgSnVuIDIwMTkgMTE6NTE6MDUgKzAyMDAsIEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ICAKPiB3cm90ZToKPgo+PiBBZGQgdGhl
IG1pbmltYWwgaW5jbHVkZXMvZGVjbGFyYXRpb25zIHRvIG1ha2UgdGhlIGhlYWRlciBzZWxmLWNv
bnRhaW5lZCwKPj4gYW5kIGVuc3VyZSBpdCBzdGF5cyB0aGF0IHdheS4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCB8IDEgKwo+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oICAgICAgfCAzICsrKwo+PiAgMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlLmhlYWRlci10ZXN0ICAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZS5oZWFkZXItdGVzdAo+PiBpbmRleCBiMTQwYWZlYjYxN2UuLjA4NWZiYThlNzFmMiAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPj4gQEAgLTIy
LDYgKzIyLDcgQEAgaGVhZGVyX3Rlc3QgOj0gXAo+PiAgCWludGVsX2Rydi5oIFwKPj4gIAlpbnRl
bF9ndWNfY3QuaCBcCj4+ICAJaW50ZWxfZ3VjX2Z3aWYuaCBcCj4+ICsJaW50ZWxfZ3VjX3JlZy5o
IFwKPj4gIAlpbnRlbF9wbS5oIFwKPj4gIAlpbnRlbF9ydW50aW1lX3BtLmggXAo+PiAgCWludGVs
X3NpZGViYW5kLmggXAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjX3JlZy5oICAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKPj4g
aW5kZXggYTIxNGY4YjcxOTI5Li4wMmY0YjFkNjFhOTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfcmVnLmgKPj4gQEAgLTI0LDYgKzI0LDkgQEAKPj4gICNpZm5kZWYgX0lOVEVM
X0dVQ19SRUdfSF8KPj4gICNkZWZpbmUgX0lOVEVMX0dVQ19SRUdfSF8KPj4gKyNpbmNsdWRlIDxs
aW51eC9jb21waWxlci5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gIC8q
IERlZmluaXRpb25zIG9mIEd1QyBIL1cgcmVnaXN0ZXJzLCBiaXRzLCBldGMgKi8KPj4gI2RlZmlu
ZSBHVUNfU1RBVFVTCQkJX01NSU8oMHhjMDAwKQo+Cj4gc2hvdWxkbid0IHdlIGFsc28gaW5jbHVk
ZSBpOTE1X3JlZy5oIGZvciBfTU1JTyBkZWZpbml0aW9uPwoKVGhhbmtzLCBhZGRlZCB0aGF0IGlu
IHYyLiBUaG91Z2ggdGhpcyBjb21waWxlcyBqdXN0IGZpbmUgc3RhbmRhbG9uZSB3aGVuCm5vYm9k
eSB1c2VzIHRoZSBtYWNyb3MuIDspCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
