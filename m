Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AF356E05
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 17:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F1D6E482;
	Wed, 26 Jun 2019 15:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98E696E482
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 15:48:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 08:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183194838"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 08:45:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <op.z3z0cesrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190626144020.2155-1-jani.nikula@intel.com>
 <20190626144020.2155-5-jani.nikula@intel.com>
 <op.z3z0cesrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Date: Wed, 26 Jun 2019 18:48:36 +0300
Message-ID: <87v9wsqre3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 04/13] drm/i915: make i915_gem_gtt.h
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

T24gV2VkLCAyNiBKdW4gMjAxOSwgTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+IHdyb3RlOgo+IE9uIFdlZCwgMjYgSnVuIDIwMTkgMTY6NDA6MTEgKzAyMDAsIEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ICAKPiB3cm90ZToKPgo+PiBBZGQgdGhl
IG1pbmltYWwgaW5jbHVkZXMvZGVjbGFyYXRpb25zIHRvIG1ha2UgdGhlIGhlYWRlciBzZWxmLWNv
bnRhaW5lZCwKPj4gYW5kIGVuc3VyZSBpdCBzdGF5cyB0aGF0IHdheS4KPj4KPj4gUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgMiArKwo+PiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmggIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5o
Cj4+IGluZGV4IDAyOGJlM2I0NGQwNy4uODgzYTVlZDE0NmMzIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuaAo+PiBAQCAtNDIsNiArNDIsOCBAQAo+PiAjaW5jbHVkZSA8ZHJt
L2RybV9tbS5oPgo+PiArI2luY2x1ZGUgPGRybS9kcm1fbW0uaD4KPgo+IHRoaXMgc2VlbXMgdG8g
YmUgcmVkdW5kYW50IDspCgpHYWgsIGN1cmlvdXNseSBzaWxlbnQgcmViYXNlIGZhaWwuIFRoYW5r
cyBmb3Igc3BvdHRpbmchCgpCUiwKSmFuaS4KCj4KPj4gKwo+PiAgI2luY2x1ZGUgImd0L2ludGVs
X3Jlc2V0LmgiCj4+ICAjaW5jbHVkZSAiaTkxNV9nZW1fZmVuY2VfcmVnLmgiCj4+ICAjaW5jbHVk
ZSAiaTkxNV9yZXF1ZXN0LmgiCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
