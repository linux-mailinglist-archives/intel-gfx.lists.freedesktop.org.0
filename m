Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 599B03A2E60
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 16:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8C66ED14;
	Thu, 10 Jun 2021 14:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DAB6ECD3;
 Thu, 10 Jun 2021 14:36:15 +0000 (UTC)
IronPort-SDR: V5Rhfv7tKqs4Vlx5thpsZ8krjaID6IMG6nfLbI0kVJ0BjvbB0oVuKLG8KkOSQugWSueFePGIob
 rwCpmqVeTc1A==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205342975"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="205342975"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 07:36:14 -0700
IronPort-SDR: QWWavEbTEniavad8n1R7uDIrnXODM/MxaqihOMTRcuNomJzbqJuTyHKdPcJb8SdvPPX9B9wMZu
 mugTLMTuy2bw==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="552373518"
Received: from jeremyhi-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.254.4.145])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 07:36:13 -0700
Date: Thu, 10 Jun 2021 10:36:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <YMIjXG1x7dwAsJxj@intel.com>
References: <20210610103955.67802-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610103955.67802-1-zbigniew.kempczynski@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTAsIDIwMjEgYXQgMTI6Mzk6NTVQTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6
ecWEc2tpIHdyb3RlOgo+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNseSB3ZSBzdG9wIHVz
aW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdl
cmxha2UgYXMgYW4gZXhjZXB0aW9uLiBXZSBrZWVwIHRoaXMKPiBzdGF0ZW1lbnQgYnV0IHdlIHdh
bnQgdG8gZW5hYmxlIHJlbG9jYXRpb25zIGNvbmRpdGlvbmFsbHkgZm9yCj4gUm9ja2V0bGFrZSBh
bmQgQWxkZXJsYWtlIHVuZGVyIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxhZyBzZXQuCj4gCj4gS2Vl
cGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgaW50ZXJp
bSBzb2x1dGlvbgo+IHVudGlsIElHVHMgd2lsbCBiZSByZXdyaXR0ZW4gdG8gdXNlIHNvZnRwaW4u
CgpobW0uLi4gdG8gYmUgcmVhbGx5IGhvbmVzdCBJJ20gbm90IHNvIGhhcHB5IHRoYXQgd2UgYXJl
IGludHJvZHVjaW5nCmEgbmV3IGNyaXRlcmlhIHRvIHRoZSBmb3JjZV9wcm9iZS4KClRoZSBjcml0
ZXJpYSB3YXMgdG8gaGF2ZSBhIGZ1bmN0aW9uYWwgZHJpdmVyIGFuZCBub3QgdG8gdHJhY2sgdWFw
aS4KCkJ1dCBvbiB0aGUgb3RoZXIgaGFuZCBJIGRvIHJlY29nbml6ZSB0aGF0IHRoZSBjdXJyZW50
IGRlZmluaXRpb24Kb2YgdGhlIGZsYWcgYWxsb3dzIHRoYXQsIGJlY2F1c2Ugd2UgaGF2ZSBlc3Rh
Ymxpc2hlZCB0aGF0IHdpdGgKdGhpcyBiZWhhdmlvciwgdGhlICJkcml2ZXIgZm9yIG5ldyBJbnRl
bCBncmFwaGljcyBkZXZpY2VzIHRoYXQKYXJlIHJlY29nbml6ZWQgYnV0IG5vdCBwcm9wZXJseSBz
dXBwb3J0ZWQgYnkgdGhpcyBrZXJuZWwgdmVyc2lvbiIKKGFzIHN0YXRlZCBpbiB0aGUgS2NvbmZp
ZyBmb3IgdGhlIERSTV9JOTE1X0ZPUkNFX1BST0JFKS4KCkhvd2V2ZXIuLi4KCj4gCj4gdjI6IC0g
cmVtb3ZlIGlubGluZSBmcm9tIGZ1bmN0aW9uIGRlZmluaXRpb24gKEphbmkpCj4gICAgIC0gZml4
IGluZGVudGF0aW9uCj4gCj4gdjM6IGNoYW5nZSB0byBHUkFQSElDU19WRVIoKSAoWmJpZ25pZXcp
Cj4gCj4gU2lnbmVkLW9mZi1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1w
Y3p5bnNraUBpbnRlbC5jb20+Cj4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+
Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBKYXNv
biBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gQWNrZWQtYnk6IERhdmUgQWlybGll
IDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gLS0tCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyAgICB8IDI0ICsrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gaW5kZXggYThhYmM5YWY1
ZmY0Li4zMGM0ZjA1NDllYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9leGVjYnVmZmVyLmMKPiBAQCAtNDkxLDE2ICs0OTEsMzAgQEAgZWJfdW5yZXNlcnZl
X3ZtYShzdHJ1Y3QgZWJfdm1hICpldikKPiAgCWV2LT5mbGFncyAmPSB+X19FWEVDX09CSkVDVF9S
RVNFUlZFRDsKPiAgfQo+ICAKPiArc3RhdGljIGJvb2wgcGxhdGZvcm1faGFzX3JlbG9jc19lbmFi
bGVkKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKwkvKgo+ICsJICog
UmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgc3RhcnRpbmcgZnJvbSBnZW4xMiB3aXRoIFRpZ2Vy
bGFrZQo+ICsJICogYXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3JhcmlseSB1c2UgcmVs
b2NhdGlvbnMgZm9yIFJvY2tldGxha2UKPiArCSAqIGFuZCBBbGRlcmxha2Ugd2hlbiByZXF1aXJl
X2ZvcmNlX3Byb2JlIGZsYWcgaXMgc2V0Lgo+ICsJICovCj4gKwlpZiAoR1JBUEhJQ1NfVkVSKGVi
LT5pOTE1KSA8IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gKwkJcmV0dXJuIHRydWU7
Cj4gKwo+ICsJaWYgKElOVEVMX0lORk8oZWItPmk5MTUpLT5yZXF1aXJlX2ZvcmNlX3Byb2JlICYm
Cj4gKwkgICAgKElTX1JPQ0tFVExBS0UoZWItPmk5MTUpCgpUaGlzIHNoaXAgaGFzIHNhaWxlZC4u
LiBSS0wgaXMgbm90IHByb3RlY3RlZCBieSB0aGlzIGZsYWcgYW55IGxvbmdlci4KU2hvdWxkIHRo
aXMgYmUgb24gdGhlIFRHTCBzaWRlIG5vdz8KCj4gIHx8IElTX0FMREVSTEFLRV9TKGViLT5pOTE1
KSB8fAo+ICsJICAgICBJU19BTERFUkxBS0VfUChlYi0+aTkxNSkpKQoKSG93IHRvIGVuc3VyZSB0
aGF0IHdlIHdpbGwgZWFzaWx5IGNhdGNoIHRoaXMgd2hlbiByZW1vdmluZyB0aGUKZmxhZz8KCkkg
bWVhbiwgc2hvdWxkIHdlIGhhdmUgYSBHRU1fQlVHIG9yIGRybV9lcnIgbWVzc2FnZSB3aGVuIHRo
ZXNlCnBsYXRmb3JtcyBpbiB0aGlzIGxpc3QgaGFzIG5vdCB0aGUgcmVxdWlyZWRfZm9yY2VfcHJv
YmU/Cgo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCXJldHVybiBmYWxzZTsKPiArfQo+ICsKPiAg
c3RhdGljIGludAo+ICBlYl92YWxpZGF0ZV92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIs
Cj4gIAkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmVudHJ5LAo+ICAJCXN0cnVj
dCBpOTE1X3ZtYSAqdm1hKQo+ICB7Cj4gLQkvKiBSZWxvY2F0aW9ucyBhcmUgZGlzYWxsb3dlZCBm
b3IgYWxsIHBsYXRmb3JtcyBhZnRlciBUR0wtTFAuICBUaGlzCj4gLQkgKiBhbHNvIGNvdmVycyBh
bGwgcGxhdGZvcm1zIHdpdGggbG9jYWwgbWVtb3J5Lgo+IC0JICovCj4gLQlpZiAoZW50cnktPnJl
bG9jYXRpb25fY291bnQgJiYKPiAtCSAgICBHUkFQSElDU19WRVIoZWItPmk5MTUpID49IDEyICYm
ICFJU19USUdFUkxBS0UoZWItPmk5MTUpKQo+ICsJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50
ICYmICFwbGF0Zm9ybV9oYXNfcmVsb2NzX2VuYWJsZWQoZWIpKQo+ICAJCXJldHVybiAtRUlOVkFM
Owo+ICAKPiAgCWlmICh1bmxpa2VseShlbnRyeS0+ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykp
Cj4gLS0gCj4gMi4yNi4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
