Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32D93A3BB0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 08:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A738C6EE2E;
	Fri, 11 Jun 2021 06:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D086E524;
 Fri, 11 Jun 2021 06:09:07 +0000 (UTC)
IronPort-SDR: C5nLcPmgZHttl1FliA4ndMiIveLYq7KzuK0UO2b7CiMw7NhNeHebi82hoXuAe7ukmgrJKhoGlI
 TrP4nYNrxDaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="202442699"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="202442699"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 23:09:06 -0700
IronPort-SDR: wfC1u9B0EaDsIFUWM1BCOz6StQH8ZFr34TPJC85tHAtHT5NZoP6rQRZpbjFitRYTqvLyve2NZc
 YCiIHhKpl3vw==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="483148298"
Received: from kdobkakr-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.15.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 23:09:04 -0700
Date: Fri, 11 Jun 2021 08:09:00 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210611060900.GA3298@zkempczy-mobl2>
References: <20210610103955.67802-1-zbigniew.kempczynski@intel.com>
 <YMIjXG1x7dwAsJxj@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMIjXG1x7dwAsJxj@intel.com>
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
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTAsIDIwMjEgYXQgMTA6MzY6MTJBTSAtMDQwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIFRodSwgSnVuIDEwLCAyMDIxIGF0IDEyOjM5OjU1UE0gKzAyMDAsIFpiaWduaWV3
IEtlbXBjennFhHNraSB3cm90ZToKPiA+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNseSB3
ZSBzdG9wIHVzaW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gPiBmcm9tIGdlbjEyIHBsYXRmb3Jt
cyB3aXRoIFRpZ2VybGFrZSBhcyBhbiBleGNlcHRpb24uIFdlIGtlZXAgdGhpcwo+ID4gc3RhdGVt
ZW50IGJ1dCB3ZSB3YW50IHRvIGVuYWJsZSByZWxvY2F0aW9ucyBjb25kaXRpb25hbGx5IGZvcgo+
ID4gUm9ja2V0bGFrZSBhbmQgQWxkZXJsYWtlIHVuZGVyIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxh
ZyBzZXQuCj4gPiAKPiA+IEtlZXBpbmcgcmVsb2NhdGlvbnMgdW5kZXIgcmVxdWlyZV9mb3JjZV9w
cm9iZSBmbGFnIGlzIGludGVyaW0gc29sdXRpb24KPiA+IHVudGlsIElHVHMgd2lsbCBiZSByZXdy
aXR0ZW4gdG8gdXNlIHNvZnRwaW4uCj4gCj4gaG1tLi4uIHRvIGJlIHJlYWxseSBob25lc3QgSSdt
IG5vdCBzbyBoYXBweSB0aGF0IHdlIGFyZSBpbnRyb2R1Y2luZwo+IGEgbmV3IGNyaXRlcmlhIHRv
IHRoZSBmb3JjZV9wcm9iZS4KPiAKPiBUaGUgY3JpdGVyaWEgd2FzIHRvIGhhdmUgYSBmdW5jdGlv
bmFsIGRyaXZlciBhbmQgbm90IHRvIHRyYWNrIHVhcGkuCj4gCj4gQnV0IG9uIHRoZSBvdGhlciBo
YW5kIEkgZG8gcmVjb2duaXplIHRoYXQgdGhlIGN1cnJlbnQgZGVmaW5pdGlvbgo+IG9mIHRoZSBm
bGFnIGFsbG93cyB0aGF0LCBiZWNhdXNlIHdlIGhhdmUgZXN0YWJsaXNoZWQgdGhhdCB3aXRoCj4g
dGhpcyBiZWhhdmlvciwgdGhlICJkcml2ZXIgZm9yIG5ldyBJbnRlbCBncmFwaGljcyBkZXZpY2Vz
IHRoYXQKPiBhcmUgcmVjb2duaXplZCBidXQgbm90IHByb3Blcmx5IHN1cHBvcnRlZCBieSB0aGlz
IGtlcm5lbCB2ZXJzaW9uIgo+IChhcyBzdGF0ZWQgaW4gdGhlIEtjb25maWcgZm9yIHRoZSBEUk1f
STkxNV9GT1JDRV9QUk9CRSkuCj4gCj4gSG93ZXZlci4uLgo+IAo+ID4gCj4gPiB2MjogLSByZW1v
dmUgaW5saW5lIGZyb20gZnVuY3Rpb24gZGVmaW5pdGlvbiAoSmFuaSkKPiA+ICAgICAtIGZpeCBp
bmRlbnRhdGlvbgo+ID4gCj4gPiB2MzogY2hhbmdlIHRvIEdSQVBISUNTX1ZFUigpIChaYmlnbmll
dykKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmll
dy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVk
aGF0LmNvbT4KPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
PiA+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gPiBBY2tlZC1i
eTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDI0ICsrKysrKysrKysrKysr
Ky0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jCj4gPiBpbmRleCBhOGFiYzlhZjVmZjQuLjMwYzRmMDU0OWVhMCAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiA+IEBA
IC00OTEsMTYgKzQ5MSwzMCBAQCBlYl91bnJlc2VydmVfdm1hKHN0cnVjdCBlYl92bWEgKmV2KQo+
ID4gIAlldi0+ZmxhZ3MgJj0gfl9fRVhFQ19PQkpFQ1RfUkVTRVJWRUQ7Cj4gPiAgfQo+ID4gIAo+
ID4gK3N0YXRpYyBib29sIHBsYXRmb3JtX2hhc19yZWxvY3NfZW5hYmxlZChjb25zdCBzdHJ1Y3Qg
aTkxNV9leGVjYnVmZmVyICplYikKPiA+ICt7Cj4gPiArCS8qCj4gPiArCSAqIFJlbG9jYXRpb25z
IGFyZSBkaXNhbGxvd2VkIHN0YXJ0aW5nIGZyb20gZ2VuMTIgd2l0aCBUaWdlcmxha2UKPiA+ICsJ
ICogYXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3JhcmlseSB1c2UgcmVsb2NhdGlvbnMg
Zm9yIFJvY2tldGxha2UKPiA+ICsJICogYW5kIEFsZGVybGFrZSB3aGVuIHJlcXVpcmVfZm9yY2Vf
cHJvYmUgZmxhZyBpcyBzZXQuCj4gPiArCSAqLwo+ID4gKwlpZiAoR1JBUEhJQ1NfVkVSKGViLT5p
OTE1KSA8IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gPiArCQlyZXR1cm4gdHJ1ZTsK
PiA+ICsKPiA+ICsJaWYgKElOVEVMX0lORk8oZWItPmk5MTUpLT5yZXF1aXJlX2ZvcmNlX3Byb2Jl
ICYmCj4gPiArCSAgICAoSVNfUk9DS0VUTEFLRShlYi0+aTkxNSkKPiAKPiBUaGlzIHNoaXAgaGFz
IHNhaWxlZC4uLiBSS0wgaXMgbm90IHByb3RlY3RlZCBieSB0aGlzIGZsYWcgYW55IGxvbmdlci4K
PiBTaG91bGQgdGhpcyBiZSBvbiB0aGUgVEdMIHNpZGUgbm93PwoKK0x1Y2FzCgpJIHRoaW5rIG5v
LCBSS0wgaGFzIHJlbG9jYXRpb25zIGRpc2FibGVkIHNvIHdlIGNhbm5vdCBwdXQgaXQgdG8gVEdM
IHNpZGUuClNvIGlmIFJLTCBpcyBhbHJlYWR5IHJlbGVhc2VkIHRoZW4gcHV0dGluZyBpdCB1bmRl
ciByZXF1aXJlX2ZvcmNlX3Byb2JlIApmbGFnIGlzIHdyb25nIGFuZCBvbmx5IEkgY2FuIGRvIGlz
IHRvIHJlbW92ZSBpdCBmcm9tIHRoYXQgY29uZGl0aW9uLiAKVGhlcmUncyBubyBvcHRpb24gdG8g
dW5ibG9jayBSS0wgb24gSUdUIENJIHVudGlsIHdlIHJld3JpdGUgYWxsIHRoZSB0ZXN0cy4KV2Ug
aGF2ZSB0byByZWx5IHRoZW4gb24gQURMKiB3aXRoIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxhZyB0
byBjaGVjayBob3cKQURMIHdpbGwgd29yayB3aXRoIHJlbG9jYXRpb25zLiAKCj4gCj4gPiAgfHwg
SVNfQUxERVJMQUtFX1MoZWItPmk5MTUpIHx8Cj4gPiArCSAgICAgSVNfQUxERVJMQUtFX1AoZWIt
Pmk5MTUpKSkKPiAKPiBIb3cgdG8gZW5zdXJlIHRoYXQgd2Ugd2lsbCBlYXNpbHkgY2F0Y2ggdGhp
cyB3aGVuIHJlbW92aW5nIHRoZQo+IGZsYWc/Cj4gCj4gSSBtZWFuLCBzaG91bGQgd2UgaGF2ZSBh
IEdFTV9CVUcgb3IgZHJtX2VyciBtZXNzYWdlIHdoZW4gdGhlc2UKPiBwbGF0Zm9ybXMgaW4gdGhp
cyBsaXN0IGhhcyBub3QgdGhlIHJlcXVpcmVkX2ZvcmNlX3Byb2JlPwoKSSBkb24ndCB0aGluayB3
ZSBuZWVkIEdFTV9CVUcoKS9kcm1fZXJyKCkgLSB3aGVuIElHVCB0ZXN0cyB3aWxsIHN1cHBvcnQK
Ym90aCAtIHJlbG9jICsgbm8tcmVsb2MgLSB0aGVuIGNvbmRpdGlvbiB3aWxsIGJlIGxpbWl0ZWQg
dG86CgogICAgICAgIGlmIChHUkFQSElDU19WRVIoZWItPmk5MTUpIDwgMTIgfHwgSVNfVElHRVJM
QUtFKGViLT5pOTE1KSkKICAgICAgICAgICAgICAgIHJldHVybiB0cnVlOwogCiAgICAgICAgcmV0
dXJuIGZhbHNlOwoKc28gcmVxdWlyZV9mb3JjZV9wcm9iZSBjb25kaXRpb24gd2lsbCBiZSBkZWxl
dGVkIGFuZCB3ZSB3b24ndCBuZWVkIGl0CmFueW1vcmUgKElHVHMgd2lsbCBiZSByZWFkeSkuCgot
LQpaYmlnbmlldwoKPiAKPiA+ICsJCXJldHVybiB0cnVlOwo+ID4gKwo+ID4gKwlyZXR1cm4gZmFs
c2U7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBpbnQKPiA+ICBlYl92YWxpZGF0ZV92bWEoc3Ry
dWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gPiAgCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNf
b2JqZWN0MiAqZW50cnksCj4gPiAgCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+ICB7Cj4gPiAt
CS8qIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIGZvciBhbGwgcGxhdGZvcm1zIGFmdGVyIFRH
TC1MUC4gIFRoaXMKPiA+IC0JICogYWxzbyBjb3ZlcnMgYWxsIHBsYXRmb3JtcyB3aXRoIGxvY2Fs
IG1lbW9yeS4KPiA+IC0JICovCj4gPiAtCWlmIChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgo+
ID4gLQkgICAgR1JBUEhJQ1NfVkVSKGViLT5pOTE1KSA+PSAxMiAmJiAhSVNfVElHRVJMQUtFKGVi
LT5pOTE1KSkKPiA+ICsJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmICFwbGF0Zm9ybV9o
YXNfcmVsb2NzX2VuYWJsZWQoZWIpKQo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAgCj4gPiAg
CWlmICh1bmxpa2VseShlbnRyeS0+ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykpCj4gPiAtLSAK
PiA+IDIuMjYuMAo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
