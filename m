Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C5856E0A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 17:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FF36E484;
	Wed, 26 Jun 2019 15:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4006E483
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 15:49:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 08:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183195228"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 08:49:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87v9wsqre3.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190626144020.2155-1-jani.nikula@intel.com>
 <20190626144020.2155-5-jani.nikula@intel.com>
 <op.z3z0cesrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <87v9wsqre3.fsf@intel.com>
Date: Wed, 26 Jun 2019 18:51:56 +0300
Message-ID: <87sgrwqr8j.fsf@intel.com>
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

T24gV2VkLCAyNiBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gV2VkLCAyNiBKdW4gMjAxOSwgTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+IHdyb3RlOgo+PiBPbiBXZWQsIDI2IEp1biAyMDE5IDE2OjQwOjEx
ICswMjAwLCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPiAgCj4+IHdyb3RlOgo+
Pgo+Pj4gQWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBo
ZWFkZXIgc2VsZi1jb250YWluZWQsCj4+PiBhbmQgZW5zdXJlIGl0IHN0YXlzIHRoYXQgd2F5Lgo+
Pj4KPj4+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8IDIgKysK
Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAKPj4+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKPj4+IGluZGV4IDAyOGJlM2I0NGQwNy4uODgzYTVlZDE0
NmMzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgK
Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCj4+PiBAQCAtNDIs
NiArNDIsOCBAQAo+Pj4gI2luY2x1ZGUgPGRybS9kcm1fbW0uaD4KPj4+ICsjaW5jbHVkZSA8ZHJt
L2RybV9tbS5oPgo+Pgo+PiB0aGlzIHNlZW1zIHRvIGJlIHJlZHVuZGFudCA7KQo+Cj4gR2FoLCBj
dXJpb3VzbHkgc2lsZW50IHJlYmFzZSBmYWlsLiBUaGFua3MgZm9yIHNwb3R0aW5nIQoKSGVoLCBJ
IHdlbnQgYmFjayB0byBmaXggaXQsIGJ1dCB3ZSBjYW4ganVzdCBkcm9wIHRoaXMgb25lLiBJdCB3
YXMgYWxsCmRvbmUgYnkgQ2hyaXMgaW4gYjMyZmE4MTExNTYzICgiZHJtL2k5MTUvZ3R0OiBEZWZl
ciBhZGRyZXNzIHNwYWNlCmNsZWFudXAgdG8gYW4gUkNVIHdvcmtlciIpLgoKSi4KCgoKCgo+Cj4g
QlIsCj4gSmFuaS4KPgo+Pgo+Pj4gKwo+Pj4gICNpbmNsdWRlICJndC9pbnRlbF9yZXNldC5oIgo+
Pj4gICNpbmNsdWRlICJpOTE1X2dlbV9mZW5jZV9yZWcuaCIKPj4+ICAjaW5jbHVkZSAiaTkxNV9y
ZXF1ZXN0LmgiCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
