Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00297C8F00
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F796E12D;
	Wed,  2 Oct 2019 16:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB286E12D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:53:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 09:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="198263822"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2019 09:53:07 -0700
Date: Wed, 2 Oct 2019 19:53:06 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: Imre Deak <imre.deak@intel.com>
In-Reply-To: <20191002121139.GB11229@ideak-desk.fi.intel.com>
Message-ID: <alpine.DEB.2.21.1910021852400.16459@zeliteleevi>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
 <20191002121139.GB11229@ideak-desk.fi.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio power up sequence
 for gen10/11
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGV5LAoKT24gV2VkLCAyIE9jdCAyMDE5LCBJbXJlIERlYWsgd3JvdGU6Cgo+IE9uIFR1ZSwgT2N0
IDAxLCAyMDE5IGF0IDA3OjM1OjU0UE0gKzAzMDAsIEthaSBWZWhtYW5lbiB3cm90ZToKPiA+IE9u
IGdlbjEwLzExIHBsYXRmb3JtcywgZHJpdmVyIG11c3Qgc2V0IHRoZSBlbmFibGUgYml0IG9mIEFV
RF9QSU5fQlVGX0NUTAo+ID4gYXMgcGFydCBvZiBhdWRpbyBwb3dlciB1cCBzZXF1ZW5jZS4KPiAK
PiBHb29kIGNhdGNoLCBzZWVtcyB0byBtYXRjaCBic3BlYyAyMTM1MiAoYW5kIDQ5MjgwIGZvciBH
RU4xMispLgo+IAo+IEJlZm9yZSBzZXR0aW5nIHRoaXMgYml0IHRoZSBzZXF1ZW5jZSBoYXMgYW4g
b3RoZXIgc3RlcCBkb25lIGluIHRoZSBIREEKPiBkcml2ZXIgKExDVEwgcmVnIHdyaXRlIGluIHNv
dW5kL3BjaS9oZGEvaGRhX2ludGVsLmMsIGludGVsX2luaXRfbGN0bCgpKQo+IGJlZm9yZSBzZXR0
aW5nIHRoaXMgYml0LiBJZiB0aGF0IG9yZGVyIGlzIGltcG9ydGFudCB3ZSdkIG5lZWQgYW5vdGhl
cgo+IGhvb2sgaW4gZHJtX2F1ZGlvX2NvbXBvbmVudF9vcHMgKGFuZCBhbHNvIGNsZWFyIHRoZSBi
aXQpLgoKdGhhdCBpcyB0cnVlLiBUaGUgZnVsbCBzZXF1ZW5jZXMgdG8gYXZvaWQgdW5zb2xpY2l0
ZWQgcmVzcG9uc2VzIGFyZSBxdWl0ZSAKYXdrd2FyZCBhcyB0aGVyZSBhcmUgbXVsdGlwbGUgKG5l
dykgaG9wcyBiZXR3ZWVuIGRpc3BsYXkgYW5kIGhkYSBkcml2ZXJzLiAKSSBkb24ndCB0aGluayB3
ZSBzdHJpY3RseSBuZWVkIHRoZXNlIG9uIExpbnV4LCBidXQgaXQncyBkZWZpbml0ZWx5IGEgCnBy
b2JsZW0gaWYgd2UgZG9uJ3QgZW5zdXJlIEFVRF9QSU5fQlVGX0NUTCBpcyBzZXQuCgpJIGhhdmUg
b25lIGZhaWxpbmcgY2FzZSBsZWZ0IG9uIElDTCB3aGVyZSB2MSBwYXRjaHNldCBkb2VzIG5vdCBz
ZWVtIApzdWZmaWNpZW50LiBUaGUgdGVzdCBjYXNlIGludm9sdmVzIGEgbG9vcCBvZiBkb2luZyBT
MyBzdXNwZW5kLCByZXN1bWUsIAp1bmxvYWQgZHJpdmVyLCBsb2FkIGRyaXZlciwgcGxheSBhdWRp
byB2aWEgSERNSSBhbmQgcmVwZWF0LiBJIGdldCAKc3lzdGVtYXRpY2FsbHkgYmV0dGVyIHJlc3Vs
dHMgd2l0aCB0aGlzIHBhdGNoLCBidXQgaXQgc3RpbGwgZmFpbHMgYmVmb3JlIAoxMDAgaXRlcmF0
aW9ucy4gSXQncyBhIGRlZmluaXRlIGltcHJvdmVtZW50LCBzbyBwcm9iYWJseSB0aGlzIHBhdGNo
IApzaG91bGQgZ28gaW4gaW4gYW55IGNhc2UuCgpJIGhhdmUgYSB3aXAgcGF0Y2ggdG8gSERBIGRy
aXZlciBzaWRlIHRoYXQgc2VlbXMgdG8gY3VyZSB0aGUgcmVtYWluaW5nIAppc3N1ZSBhcyB3ZWxs
LiBUaGUgcHJvYmxlbSBzZWVtcyBzbGlnaHRseSBkaWZmZXJlbnQgLS0gd2UgbWlzcyBhbiBJUlEg
YnV0IAp0aGUgZGlzcGxheS1wY2ggdHJhbnNhY3Rpb25zIGFyZSBmdW5jdGlvbmFsLCBzbyB0aGlz
IGNhbiBiZSBhIGRpZmZlcmVudCAKcHJvYmxlbS4gSSdsbCBjb250aW51ZSB0ZXN0aW5nIGEgYml0
IGFuZCBvbmNlIGNvbmZpZGVudCBlbm91Z2gsIHNlbmQgb3V0IAp0aGUgdjIgcGF0Y2guCgpCciwg
S2FpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
