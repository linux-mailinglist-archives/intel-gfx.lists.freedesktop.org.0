Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DFAF221
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A3D891D2;
	Tue, 30 Apr 2019 08:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB82A891C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:38:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="138659403"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga008.jf.intel.com with ESMTP; 30 Apr 2019 01:38:42 -0700
Received: from irsmsx107.ger.corp.intel.com ([169.254.10.246]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.115]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 09:38:41 +0100
From: "Peres, Martin" <martin.peres@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
Thread-Index: AQHU/x/mUZ94h9jQtk6OHdX2t7uAnw==
Date: Tue, 30 Apr 2019 08:38:40 +0000
Message-ID: <56A4AB1F0E1B5D4C83D27F43C50F662E58F7F163@IRSMSX107.ger.corp.intel.com>
References: <20190430064206.32443-1-stanislav.lisovskiy@intel.com>
 <8736m0rl8o.fsf@intel.com>
 <a563ef46c6cc28727999d2968423f7c6ba8a14ae.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.73]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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

T24gMzAvMDQvMjAxOSAxMTowMSwgTGlzb3Zza2l5LCBTdGFuaXNsYXYgd3JvdGU6Cj4gT24gVHVl
LCAyMDE5LTA0LTMwIGF0IDEwOjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gT24gVHVl
LCAzMCBBcHIgMjAxOSwgU3RhbmlzbGF2IExpc292c2tpeSA8Cj4+IHN0YW5pc2xhdi5saXNvdnNr
aXlAaW50ZWwuY29tPiB3cm90ZToKPj4+IEN1cnJlbnRseSBkdWUgdG8gcmVncmVzc2lvbiBDSSBt
YWNoaW5lCj4+PiBkaXNwbGF5cyBzaG93IGNvcnJ1cHQgcGljdHVyZS4KPj4+IFByb2JsZW0gaXMg
d2hlbiBDRENMSyBpcyBhcyBsb3cgYXMgNzkyMDAsIHBpY3R1cmUgZ2V0cwo+Pj4gdW5zdGFibGUs
IHdoaWxlIERTSSBhbmQgREUgcGxsIHZhbHVlcyB3ZXJlCj4+PiBjb25maXJtZWQgdG8gYmUgY29y
cmVjdC4KPj4+IExpbWl0aW5nIHRvIDE1ODQwMCBhcyBhZ3JlZWQgd2l0aCBWaWxsZS4KPj4+Cj4+
PiBXZSBjb3VsZCBub3QgY29tZSB1cCB3aXRoIGFueSBiZXR0ZXIgc29sdXRpb24KPj4+IHlldCwg
YXMgUExMIGRpdmlkZXIgdmFsdWVzIGJvdGggZm9yIE1JUEkoRFNJIFBMTCkgYW5kCj4+PiBDRENM
SyhERSBQTEwpIGFyZSBjb3JyZWN0LCBob3dldmVyIHNlZW1zIHRoYXQgZHVlIHRvIHNvbWUKPj4+
IGJvdW5kYXJ5IGNvbmRpdGlvbnMsIHdoZW4gY2xvY2tpbmcgaXMgdG9vIGxvdyB3ZSBnZXQKPj4+
IHdyb25nIHRpbWluZ3MgZm9yIERTSSBkaXNwbGF5Lgo+Pj4gU2ltaWxhciB3b3JrYXJvdW5kIGV4
aXN0cyBmb3IgVkxWIHRob3VnaCwgc28ganVzdAo+Pj4gdG9vayBzaW1pbGFyIGNvbmRpdGlvbiBp
bnRvIHVzZS4gQXQgbGVhc3QgdGhhdCB3YXkKPj4+IEdMSyBwbGF0Zm9ybSB3aWxsIHN0YXJ0IHRv
IGJlIHVzYWJsZSBhZ2Fpbiwgd2l0aAo+Pj4gY3VycmVudCBkcm0tdGlwLgo+Pj4KPj4+IHYyOiBG
aXhlZCBjb21taXQgc3ViamVjdCBhcyBzdWdnZXN0ZWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4+PiBB
Y2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
Pj4KPj4gRG8gd2UgaGF2ZSBhIGJ1Z3ppbGxhIGxpbms/Cj4+Cj4+IEJSLAo+PiBKYW5pLgo+IAo+
IE5vLCBvciBhdCBsZWFzdCBJJ20gbm90IGF3YXJlIG9mLiBJIGp1c3QgZ290IGEgbWFjaGluZSBm
cm9tIENJIGZvcgo+IGludmVzdGlnYXRpb24gOikgSSBndWVzcyBpdCBtaWdodCBiZSB3b3J0aCB0
byBjcmVhdGUgYSBidWcgZm9yIHRoYXQuCj4gCj4gCj4gTWFydGluOiBkbyB3ZSBoYXZlIGEgYnVn
IGZvciBDSSBHTEsgaXNzdWU/CgpObyBpZGVhLiBDaGVjayBpdCBvdXQ6Cmh0dHA6Ly9nZngtY2ku
ZmkuaW50ZWwuY29tL2NpYnVnbG9nLW5nL3Jlc3VsdHMva25vd25mYWlsdXJlcz9xdWVyeT1tYWNo
aW5lX25hbWUrJTNEKyUyN2ZpLWdsay1kc2klMjcrQU5EK05PVCtzdGF0dXNfbmFtZSslM0QrJTI3
c2tpcCUyNwoKVGhpcyBwb3NzaWJseSBjb3VsZCBleHBsYWluIGFsbCB0aGUgQ1JDIG1pc21hdGNo
ZXMgd2UgZ2V0IG9uIEdMSy1kc2k/ClRpbWUgd2lsbCB0ZWxsLgoKTWFydGluCgo+IAo+IC1TdGFu
aXNsYXYKPiAKPj4KPj4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nk
Y2xrLmMgfCA5ICsrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwo+
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jCj4+PiBpbmRleCBhZTQwYTg2
NzkzMTQuLjJiMjNmODUwMDM2MiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NkY2xrLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xr
LmMKPj4+IEBAIC0yMjc3LDYgKzIyNzcsMTUgQEAgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5f
Y2RjbGsoY29uc3QKPj4+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+Pj4g
IAkgICAgSVNfVkFMTEVZVklFVyhkZXZfcHJpdikpCj4+PiAgCQltaW5fY2RjbGsgPSBtYXgoMzIw
MDAwLCBtaW5fY2RjbGspOwo+Pj4gIAo+Pj4gKwkvKgo+Pj4gKwkgKiBPbiBHZW1pbmlsYWtlIG9u
Y2UgdGhlIENEQ0xLIGdldHMgYXMgbG93IGFzIDc5MjAwCj4+PiArCSAqIHBpY3R1cmUgZ2V0cyB1
bnN0YWJsZSwgZGVzcGl0ZSB0aGF0IHZhbHVlcyBhcmUKPj4+ICsJICogY29ycmVjdCBmb3IgRFNJ
IFBMTCBhbmQgREUgUExMLgo+Pj4gKwkgKi8KPj4+ICsJaWYgKGludGVsX2NydGNfaGFzX3R5cGUo
Y3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgJiYKPj4+ICsJICAgIElTX0dFTUlOSUxBS0Uo
ZGV2X3ByaXYpKQo+Pj4gKwkJbWluX2NkY2xrID0gbWF4KDE1ODQwMCwgbWluX2NkY2xrKTsKPj4+
ICsKPj4+ICAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgewo+Pj4g
IAkJRFJNX0RFQlVHX0tNUygicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhjZWVkcyBtYXggKCVk
Cj4+PiBrSHopXG4iLAo+Pj4gIAkJCSAgICAgIG1pbl9jZGNsaywgZGV2X3ByaXYtPm1heF9jZGNs
a19mcmVxKTsKPj4KPj4KPiAKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBGaW5sYW5kIE95ClJlZ2lzdGVy
ZWQgQWRkcmVzczogUEwgMjgxLCAwMDE4MSBIZWxzaW5raSAKQnVzaW5lc3MgSWRlbnRpdHkgQ29k
ZTogMDM1NzYwNiAtIDQgCkRvbWljaWxlZCBpbiBIZWxzaW5raSAKClRoaXMgZS1tYWlsIGFuZCBh
bnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUg
c29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmlldyBvciBkaXN0
cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90
IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRl
bGV0ZSBhbGwgY29waWVzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
