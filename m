Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14112360841
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 13:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1EB6EA41;
	Thu, 15 Apr 2021 11:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A818F6EA3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 11:30:01 +0000 (UTC)
IronPort-SDR: 0LYfcViRpqnIwIwm8LeiJr9zhjDHcGofb0WpPyKV2k314fNtrH+bwP/FcBawmgO0iUE04FxbZD
 Tek8kJOpVvyw==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="215339799"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="215339799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:29:58 -0700
IronPort-SDR: AfQISppagctcCEgLQMjJXDiT9m5DMBRj5Jj1j6MJp7RvEvwwhneqMrSGuvX2EA65jBiYCLa4OV
 J7e0GQefdK8Q==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="425148259"
Received: from rousseau-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:29:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414155208.3161335-1-imre.deak@intel.com>
Date: Thu, 15 Apr 2021 14:29:53 +0300
Message-ID: <87a6pzeqfi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/11] drm/i915/adl_p: Add support for
 Display Page Tables
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNCBBcHIgMjAyMSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBBbGRlciBMYWtlLVAgYWRkcyBhIG5ldyBEaXNwbGF5IFBhZ2UgVGFibGUgaGFyZHdhcmUg
c3RydWN0dXJlLCBtYXBwaW5nCj4gdGlsZWQgZnJhbWVidWZmZXIgcGFnZXMgdG8gdGhlIGRpc3Bs
YXkgZW5naW5lLCByZWR1Y2luZyB0aGUgYWRkcmVzcwo+IHNwYWNlIHJlcXVpcmVkIGluIEdHVFQg
Zm9yIHRoZXNlIGZyYW1lYnVmZmVycy4KPgo+IFRoaXMgcGF0Y2hzZXQgYWRkcyBzdXBwb3J0IGZv
ciB0aGlzIHRha2luZyBhIG1pbmltdW0gc2V0IG9mIGRlcGVuZGVuY3kKPiBwYXRjaGVzIGZyb20g
dGhlIEFETF9QIGVuYWJsaW5nIHBhdGNoc2V0IGF0Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy84Nzg5Ny8KCkNjOiBEYW5pZWwKCkkgZ3Vlc3Mgd2UnbGwgbmVlZCBh
IHRvcGljIGJyYW5jaCBmb3IgdGhlIGJhc2UgZW5hYmxpbmcgdG8gbWVyZ2UgdG8gYm90aApkaW4g
YW5kIGRpZ24/IEkgZ3Vlc3MgaXQnbGwgbmVlZCB0byBpbmNsdWRlIHRoZSBzdHVmZiBpbgp0b3Bp
Yy9pbnRlbC1nZW4tdG8tdmVyIHRvby4KClNoYXJlZCBzdHVmZiBsaWtlIHRoaXMga2VlcHMgYmVp
bmcgYSBwcm9ibGVtIHdpdGggdGhlIHNlcGFyYXRlIGRpZ24KYnJhbmNoLCBlc3BlY2lhbGx5IHdo
ZW4gdGhlIG9ubHkgd2F5IHRvIHN5bmMgaXMgdG8gbWVyZ2UgYm90aCBkaW4gYW5kCmRpZ24gdG8g
ZHJtLW5leHQgYW5kIHRoZW4gYmFja21lcmdlIHRvIGJvdGguCgpCUiwKSmFuaS4KCgo+Cj4gQ2xp
bnRvbiBUYXlsb3IgKDIpOgo+ICAgZHJtL2k5MTUvYWRsX3A6IEFkZCBQQ0kgRGV2aWNlcyBJRHMK
PiAgIGRybS9pOTE1L2FkbF9wOiBBRExfUCBkZXZpY2UgaW5mbyBlbmFibGluZwo+Cj4gSW1yZSBE
ZWFrICg0KToKPiAgIGRybS9pOTE1OiBQYXNzIGludGVsX2ZyYW1lYnVmZmVyIGluc3RhZCBvZiBk
cm1fZnJhbWVidWZmZXIgdG8KPiAgICAgaW50ZWxfZmlsbF9mYl9pbmZvKCkKPiAgIGRybS9pOTE1
L2FkbF9wOiBEaXNhYmxlIHN1cHBvcnQgZm9yIDkwLzI3MCBGQiByb3RhdGlvbgo+ICAgZHJtL2k5
MTUvYWRsX3A6IFJlcXVpcmUgYSBtaW5pbXVtIG9mIDggdGlsZXMgc3RyaWRlIGZvciBEUFQgRkJz
Cj4gICBkcm0vaTkxNS9hZGxfcDogRW5hYmxlIHJlbWFwcGluZyB0byBwYWQgRFBUIEZCIHN0cmlk
ZXMgdG8gUE9UCj4KPiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyKToKPiAgIGRybS9pOTE1L3hl
bHBkOiBGYWxsYmFjayB0byBwbGFuZSBzdHJpZGUgbGltaXRhdGlvbnMgd2hlbiB1c2luZyBEUFQK
PiAgIGRybS9pOTE1L2FkbF9wOiBBZGQgc3RyaWRlIHJlc3RyaWN0aW9uIHdoZW4gdXNpbmcgRFBU
Cj4KPiBKdWhhLVBla2thIEhlaWtraWzDpCAoMSk6Cj4gICBkcm0vaTkxNS94ZWxwZDogU3VwcG9y
dCAxMjhrIHBsYW5lIHN0cmlkZQo+Cj4gTWF0dCBSb3BlciAoMSk6Cj4gICBkcm0vaTkxNS94ZWxw
ZDogYWRkIFhFX0xQRCBkaXNwbGF5IGNoYXJhY3RlcmlzdGljcwo+Cj4gVmlsbGUgU3lyasOkbMOk
ICgxKToKPiAgIGRybS9pOTE1L3hlbHBkOiBGaXJzdCBzdGFiIGF0IERQVCBzdXBwb3J0Cj4KPiAg
YXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jICAgICAgICAgICAgICAgIHwgICAxICsKPiAg
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgICA3ICstCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDM4MSArKysr
KysrKysrKysrKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmggIHwgICAxICsKPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgIDI1ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIu
YyAgICAgICB8ICA5MiArKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiLmggICAgICAgfCAgIDUgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYyAgICAgIHwgICA2ICstCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJz
YWxfcGxhbmUuYyAgICB8ICA2OCArKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhf
cHBndHQuaCAgICAgICAgICB8ICAgNyArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2dndHQuYyAgICAgICAgICB8ICAgNyArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndHQuaCAgICAgICAgICAgfCAgIDUgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jICAgICAgICAgICAgICAgfCAgMjIgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgICAgICAgfCAgIDIgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oICAgICAgfCAgIDEgKwo+ICBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oICAg
ICAgICAgICAgICAgICAgICAgfCAgMjEgKwo+ICAxOCBmaWxlcyBjaGFuZ2VkLCA1NjcgaW5zZXJ0
aW9ucygrKSwgODYgZGVsZXRpb25zKC0pCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
