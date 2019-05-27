Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A94E2B35D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4827898C7;
	Mon, 27 May 2019 11:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42498920F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 11:40:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 04:40:30 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.19.234])
 by orsmga008.jf.intel.com with ESMTP; 27 May 2019 04:40:26 -0700
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190523233049.28020-3-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
 <20190523233049.28020-3-michal.wajdeczko@intel.com>
Message-ID: <155895722528.4287.7165428447449557799@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 27 May 2019 14:40:25 +0300
Subject: Re: [Intel-gfx] [PATCH v4 02/22] drm/i915/guc: Don't allow GuC
 submission
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTI0IDAyOjMwOjI5KQo+IER1ZSB0byB0
aGUgdXBjb21pbmcgY2hhbmdlcyB0byB0aGUgR3VDIEFCSSBpbnRlcmZhY2UsIHdlIG11c3QKPiBk
aXNhYmxlIEd1QyBzdWJtaXNzaW9uIG1vZGUgdW50aWwgZmluYWwgQUJJIHdpbGwgYmUgYXZhaWxh
YmxlCj4gb24gYWxsIEd1QyBmaXJtd2FyZXMuCj4gCj4gVG8gYXZvaWQgcmVncmVzc2lvbnMgb24g
c3lzdGVtcyBjb25maWd1cmVkIHRvIHJ1biB3aXRoIG5vIGxvbmdlcgo+IHN1cHBvcnRlZCBjb25m
aWd1cmF0aW9uICJlbmFibGVfZ3VjPTMiIG9yICJlbmFibGVfZ3VjPTEiIGNsZWFyCj4gR3VDIHN1
Ym1pc3Npb24gYml0Lgo+IAo+IHYyOiBmb3JjZSBzd2l0Y2ggdG8gbm9uLUd1QyBzdWJtaXNzaW9u
IG1vZGUKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENj
OiBKb2huIFNwb3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+Cj4gQ2M6IFZpbmF5
IEJlbGdhdW1rYXIgPHZpbmF5LmJlbGdhdW1rYXJAaW50ZWwuY29tPgo+IENjOiBUb255IFllIDx0
b255LnllQGludGVsLmNvbT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPgo+IENjOiBKZWZmIE1jZ2VlIDxqZWZmLm1jZ2VlQGludGVsLmNvbT4KPiBDYzog
QW50b25pbyBBcmdlbnppYW5vIDxhbnRvbmlvLmFyZ2Vuemlhbm9AaW50ZWwuY29tPgo+IENjOiBT
dWphcml0aGEgU3VuZGFyZXNhbiA8c3VqYXJpdGhhLnN1bmRhcmVzYW5AaW50ZWwuY29tPgo+IENj
OiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+Cj4gQWNrZWQtYnk6
IE1hcnRpbiBQZXJlcyA8bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91Yy5jCj4gaW5kZXggMWEyNjVmYmQ5NWM3Li5mNjYxMDVkNzU2ZGYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3VjLmMKPiBAQCAtMjk4LDYgKzMwNywxMCBAQCBpbnQgaW50ZWxfdWNf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgICAgICAgIGlmICghSEFTX0dV
QyhpOTE1KSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gIAo+ICsgICAgICAg
LyogWFhYOiBHdUMgc3VibWlzc2lvbiBpcyB1bmF2YWlsYWJsZSBmb3Igbm93ICovCj4gKyAgICAg
ICBpZiAoVVNFU19HVUNfU1VCTUlTU0lPTihpOTE1KSkKPiArICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU87Cj4gKwoKVGhpcyB3b3VsZCBiZSBhIGRyaXZlciBwcm9ncmFtbWVyIGVycm9yLCB3b3Vs
ZG4ndCBpdD8KCk1heWJlIGFkZCBHRU1fQlVHX09OKCkgdG8gdGhlIGxhdGVyIGJyYW5jaCB0aGF0
IGRvZXMgdGhlIGNoZWNrPwoKUmVnYXJkcywgSm9vbmFzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
