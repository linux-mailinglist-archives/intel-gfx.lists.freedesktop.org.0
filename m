Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006B53729F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 13:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86414895E1;
	Thu,  6 Jun 2019 11:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEBE89471;
 Thu,  6 Jun 2019 11:18:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 04:18:05 -0700
X-ExtLoop1: 1
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2019 04:18:04 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.99]) with mapi id 14.03.0415.000;
 Thu, 6 Jun 2019 12:18:03 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "daniel.vetter@ffwll.ch"
 <daniel.vetter@ffwll.ch>, "Latvala, Petri" <petri.latvala@intel.com>,
 "rodrigosiqueiramelo@gmail.com" <rodrigosiqueiramelo@gmail.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH V8 i-g-t] tests/kms_flip: Skip VBlank tests in modules
 without VBlank
Thread-Index: AQHVG0bHtjjB0xAd9kqhOcfMVioyP6aOa7UA
Date: Thu, 6 Jun 2019 11:18:03 +0000
Message-ID: <d6c1ad8d4c2e0b0710d005efb5bb7b18258736c3.camel@intel.com>
References: <20190605023053.h7q2ei2b7gf2k5pn@smtp.gmail.com>
In-Reply-To: <20190605023053.h7q2ei2b7gf2k5pn@smtp.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <D334DF0CF53F5C4C9B3F4D03FB70A64F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH V8 i-g-t] tests/kms_flip: Skip VBlank tests
 in modules without VBlank
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDIzOjMwIC0wMzAwLCBSb2RyaWdvIFNpcXVlaXJhIHdyb3Rl
Og0KPiBUaGUga21zX2ZsaXAgdGVzdCByZWxpZXMgb24gVkJsYW5rIHN1cHBvcnQsIGFuZCB0aGlz
IHNpdHVhdGlvbiBtYXkNCj4gZXhjbHVkZSBzb21lIHZpcnR1YWwgZHJpdmVycyB0byB0YWtlIGFk
dmFudGFnZSBvZiB0aGlzIHNldCBvZiB0ZXN0cy4NCj4gVGhpcyBjb21taXQgYWRkcyBhIG1lY2hh
bmlzbSB0aGF0IGNoZWNrcyBpZiBhIG1vZHVsZSBoYXMgVkJsYW5rLiBJZiB0aGUNCj4gdGFyZ2V0
IG1vZHVsZSBoYXMgVkJsYW5rIHN1cHBvcnQsIGttc19mbGlwIHdpbGwgcnVuIGFsbCB0aGUgVkJs
YW5rDQo+IHRlc3RzOyBvdGhlcndpc2UsIHRoZSBWQmxhbmsgdGVzdHMgd2lsbCBiZSBza2lwcGVk
LiBBZGRpdGlvbmFsbHksIHRoaXMNCj4gY29tbWl0IGltcHJvdmVzIHRoZSB0ZXN0IGNvdmVyYWdl
IGJ5IGNoZWNrcyBpZiB0aGUgZnVuY3Rpb24NCj4gZHJtV2FpdFZCbGFuaygpIHJldHVybnMgRU9Q
Tk9UU1VQUCAoaS5lLiwgbm8gVkJsYW5rIHN1cHBvcnQpLg0KPiANCj4gVjc6IENoYW5nZXMgc2lu
Y2UgVjYNCj4gIC0gU2tpcCBURVNUX0RQTVMgd2l0aCBURVNUX01PREVTRVQgYW5kIFRFU1RfRUJV
U1kgaWYgdGhlIGRldmljZSBkb2VzDQo+ICAgIG5vdCBzdXBwb3J0IHZibGFuaw0KDQpIbW0sIEkn
bSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhpcyBsaW5lLiBJZiBJJ20gcmVhZGluZyB0aGlzIGNv
cnJlY3RseQ0KaXQgcmVmZXJzIHRvIHRoaXMgbGluZToNCg0KICAgIGlmICghKG8tPmZsYWdzICYg
KFRFU1RfRFBNUyB8IFRFU1RfTU9ERVNFVCB8IFRFU1RfTk9fVkJMQU5LKSkpDQoNClNvIHRoZSBj
aGVjayB3YXMgcHJldmlvdXNseSBza2lwcGVkIG9uIFRFU1RfRFBNUyBhbmQgVEVTVF9NT0RFU0VU
LiBJdCdzDQpub3cgc2tpcHBlZCBvbiBURVNUX05PX1ZCTEFOSyB0b28uIFNvIEknbSBhIGxpdHRs
ZSBjb25mdXNlZCB3aXRoIHRoZQ0KY2hhbmdlbG9nIGxpbmU6IHNob3VsZCBpdCBzYXkgInNraXAg
c2VxIG51bWJlciBjaGVja2luZyBpdCB0aGUgZGV2aWNlDQpkb2Vzbid0IHN1cHBvcnQgdmJsYW5r
Ij8NCg0KQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8NCg0KQXBhcnQgZnJvbSB0aGlzLCB0aGUgcGF0
Y2ggaXRzZWxmIGxvb2tzIGdvb2QgdG8gbWUuDQoNCj4gVjY6IFNldCBlcnJubyB0byB6ZXJvIGJl
Zm9yZSBjYWxsIGRybVdhaXRWQmxhbmsoKSAoQ2hyaXMgV2lsc29uKQ0KPiANCj4gVjU6IERyb3Ag
dGhlIERSTV9WQkxBTktfTkVYVE9OTUlTUyAoQ2hyaXMgV2lsc29uKQ0KPiANCj4gVjQ6IFJlcGxh
Y2UgRFJNX1ZCTEFOS19BQlNPTFVURSBieSBEUk1fVkJMQU5LX1JFTEFUSVZFIGFuZA0KPiBEUk1f
VkJMQU5LX05FWFRPTk1JU1MNCj4gDQo+IFYzOiBBZGQgZG9jdW1lbnRhdGlvbiAoRGFuaWVsIFZl
dHRlcikNCj4gDQo+IFYyOiBBZGQgbmV3IGJyYW5jaCBjb3ZlcmFnZSB0byBjaGVjayBpZiBWQmxh
bmsgaXMgZW5hYmxlZCBvciBub3QgYW5kDQo+IHVwZGF0ZSBjb21taXQgbWVzc2FnZQ0KPiANCj4g
VjE6IENocmlzIFdpbHNvbg0KPiAgIC0gQ2hhbmdlIGZ1bmN0aW9uIG5hbWUgZnJvbSBpZ3RfdGhl
cmVfaXNfdmJsYW5rIHRvIGttc19oYXNfdmJsYW5rDQo+ICAgLSBNb3ZlIHZibGFuayBmdW5jdGlv
biBjaGVjayBmcm9tIGlndF9hdXggdG8gaWd0X2ttcw0KPiAgIC0gVXRpbGl6ZXMgbWVtc2V0IGlu
IGR1bW15X3ZibCB2YXJpYWJsZQ0KPiAgIC0gRGlyZWN0bHkgcmV0dXJuIHRoZSByZXN1bHQgb2Yg
ZHJtV2FpdFZCbGFuaygpDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFNpcXVlaXJhIDxy
b2RyaWdvc2lxdWVpcmFtZWxvQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICBsaWIvaWd0X2ttcy5jICAg
IHwgMjEgKysrKysrKysrKysrKysrKysrKysrDQo+ICBsaWIvaWd0X2ttcy5oICAgIHwgIDIgKysN
Cj4gIHRlc3RzL2ttc19mbGlwLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKy0NCj4gIDMg
ZmlsZXMgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2xpYi9pZ3Rfa21zLmMgYi9saWIvaWd0X2ttcy5jDQo+IGluZGV4IGQ3ZDcxMWE3
Li44YTQ2NWY2NyAxMDA2NDQNCj4gLS0tIGEvbGliL2lndF9rbXMuYw0KPiArKysgYi9saWIvaWd0
X2ttcy5jDQo+IEBAIC0xNjczLDYgKzE2NzMsMjcgQEAgdm9pZCBpZ3RfYXNzZXJ0X3BsYW5lX3Zp
c2libGUoaW50IGZkLCBlbnVtIHBpcGUgcGlwZSwgaW50IHBsYW5lX2luZGV4LCBib29sIHZpc2kN
Cj4gIAlpZ3RfYXNzZXJ0X2VxKHZpc2libGUsIHZpc2liaWxpdHkpOw0KPiAgfQ0KPiAgDQo+ICsv
KioNCj4gKyAqIGttc19oYXNfdmJsYW5rOg0KPiArICogQGZkOiBEUk0gZmQNCj4gKyAqDQo+ICsg
KiBHZXQgdGhlIFZCbGFuayBlcnJubyBhZnRlciBhbiBhdHRlbXB0IHRvIGNhbGwgZHJtV2FpdFZC
bGFuaygpLiBUaGlzDQo+ICsgKiBmdW5jdGlvbiBpcyB1c2VmdWwgZm9yIGNoZWNraW5nIGlmIGEg
ZHJpdmVyIGhhcyBzdXBwb3J0IG9yIG5vdCBmb3IgVkJsYW5rLg0KPiArICoNCj4gKyAqIFJldHVy
bnM6IHRydWUgaWYgdGFyZ2V0IGRyaXZlciBoYXMgVkJsYW5rIHN1cHBvcnQsIG90aGVyd2lzZSBy
ZXR1cm4gZmFsc2UuDQo+ICsgKi8NCj4gK2Jvb2wga21zX2hhc192YmxhbmsoaW50IGZkKQ0KPiAr
ew0KPiArCWRybVZCbGFuayBkdW1teV92Ymw7DQo+ICsNCj4gKwltZW1zZXQoJmR1bW15X3ZibCwg
MCwgc2l6ZW9mKGRybVZCbGFuaykpOw0KPiArCWR1bW15X3ZibC5yZXF1ZXN0LnR5cGUgPSBEUk1f
VkJMQU5LX1JFTEFUSVZFOw0KPiArDQo+ICsJZXJybm8gPSAwOw0KPiArCWRybVdhaXRWQmxhbmso
ZmQsICZkdW1teV92YmwpOw0KPiArCXJldHVybiAoZXJybm8gIT0gRU9QTk9UU1VQUCk7DQo+ICt9
DQo+ICsNCj4gIC8qDQo+ICAgKiBBIHNtYWxsIG1vZGVzZXQgQVBJDQo+ICAgKi8NCj4gZGlmZiAt
LWdpdCBhL2xpYi9pZ3Rfa21zLmggYi9saWIvaWd0X2ttcy5oDQo+IGluZGV4IDRhYzI4MTMxLi41
YjVjZjI3NCAxMDA2NDQNCj4gLS0tIGEvbGliL2lndF9rbXMuaA0KPiArKysgYi9saWIvaWd0X2tt
cy5oDQo+IEBAIC0yMjksNiArMjI5LDggQEAgdm9pZCBrbXN0ZXN0X3dhaXRfZm9yX3BhZ2VmbGlw
KGludCBmZCk7DQo+ICB1bnNpZ25lZCBpbnQga21zdGVzdF9nZXRfdmJsYW5rKGludCBmZCwgaW50
IHBpcGUsIHVuc2lnbmVkIGludCBmbGFncyk7DQo+ICB2b2lkIGlndF9hc3NlcnRfcGxhbmVfdmlz
aWJsZShpbnQgZmQsIGVudW0gcGlwZSBwaXBlLCBpbnQgcGxhbmVfaW5kZXgsIGJvb2wgdmlzaWJp
bGl0eSk7DQo+ICANCj4gK2Jvb2wga21zX2hhc192YmxhbmsoaW50IGZkKTsNCj4gKw0KPiAgLyoN
Cj4gICAqIEEgc21hbGwgbW9kZXNldCBBUEkNCj4gICAqLw0KPiBkaWZmIC0tZ2l0IGEvdGVzdHMv
a21zX2ZsaXAuYyBiL3Rlc3RzL2ttc19mbGlwLmMNCj4gaW5kZXggZDdjMWY5Y2YuLjJhMTU4ZDk3
IDEwMDc1NQ0KPiAtLS0gYS90ZXN0cy9rbXNfZmxpcC5jDQo+ICsrKyBiL3Rlc3RzL2ttc19mbGlw
LmMNCj4gQEAgLTcxLDYgKzcxLDcgQEANCj4gICNkZWZpbmUgVEVTVF9TVVNQRU5ECQkoMSA8PCAy
NikNCj4gICNkZWZpbmUgVEVTVF9CT19UT09CSUcJCSgxIDw8IDI4KQ0KPiAgDQo+ICsjZGVmaW5l
IFRFU1RfTk9fVkJMQU5LCQkoMSA8PCAyOSkNCj4gICNkZWZpbmUgVEVTVF9CQVNJQwkJKDEgPDwg
MzApDQo+ICANCj4gICNkZWZpbmUgRVZFTlRfRkxJUAkJKDEgPDwgMCkNCj4gQEAgLTEyNiw2ICsx
MjcsMTggQEAgc3RydWN0IGV2ZW50X3N0YXRlIHsNCj4gIAlpbnQgc2VxX3N0ZXA7DQo+ICB9Ow0K
PiAgDQo+ICtzdGF0aWMgYm9vbCB2YmxhbmtfZGVwZW5kZW5jZShpbnQgZmxhZ3MpDQo+ICt7DQo+
ICsJaW50IHZibGFua19mbGFncyA9IFRFU1RfVkJMQU5LIHwgVEVTVF9WQkxBTktfQkxPQ0sgfA0K
PiArCQkJICAgVEVTVF9WQkxBTktfQUJTT0xVVEUgfCBURVNUX1ZCTEFOS19FWFBJUkVEX1NFUSB8
DQo+ICsJCQkgICBURVNUX0NIRUNLX1RTIHwgVEVTVF9WQkxBTktfUkFDRSB8IFRFU1RfRUJVU1k7
DQo+ICsNCj4gKwlpZiAoZmxhZ3MgJiB2YmxhbmtfZmxhZ3MpDQo+ICsJCXJldHVybiB0cnVlOw0K
PiArDQo+ICsJcmV0dXJuIGZhbHNlOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgZmxvYXQgdGltZXZh
bF9mbG9hdChjb25zdCBzdHJ1Y3QgdGltZXZhbCAqdHYpDQo+ICB7DQo+ICAJcmV0dXJuIHR2LT50
dl9zZWMgKyB0di0+dHZfdXNlYyAvIDEwMDAwMDAuMGY7DQo+IEBAIC00OTQsNyArNTA3LDcgQEAg
c3RhdGljIHZvaWQgY2hlY2tfc3RhdGUoY29uc3Qgc3RydWN0IHRlc3Rfb3V0cHV0ICpvLCBjb25z
dCBzdHJ1Y3QgZXZlbnRfc3RhdGUgKmUNCj4gIAkvKiBjaGVjayBvbmx5IHZhbGlkIGlmIG5vIG1v
ZGVzZXQgaGFwcGVucyBpbiBiZXR3ZWVuLCB0aGF0IGluY3JlbWVudHMgYnkNCj4gIAkgKiAoMSA8
PCAyMykgb24gZWFjaCBzdGVwLiBUaGlzIGJvdW5kaW5nIG1hdGNoZXMgdGhlIG9uZSBpbg0KPiAg
CSAqIERSTV9JT0NUTF9XQUlUX1ZCTEFOSy4gKi8NCj4gLQlpZiAoIShvLT5mbGFncyAmIChURVNU
X0RQTVMgfCBURVNUX01PREVTRVQpKSkNCj4gKwlpZiAoIShvLT5mbGFncyAmIChURVNUX0RQTVMg
fCBURVNUX01PREVTRVQgfCBURVNUX05PX1ZCTEFOSykpKQ0KPiAgCQlpZ3RfYXNzZXJ0X2YoZXMt
PmN1cnJlbnRfc2VxIC0gKGVzLT5sYXN0X3NlcSArIG8tPnNlcV9zdGVwKSA8PSAxVUwgPDwgMjMs
DQo+ICAJCQkgICAgICJ1bmV4cGVjdGVkICVzIHNlcSAldSwgc2hvdWxkIGJlID49ICV1XG4iLA0K
PiAgCQkJICAgICBlcy0+bmFtZSwgZXMtPmN1cnJlbnRfc2VxLCBlcy0+bGFzdF9zZXEgKyBvLT5z
ZXFfc3RlcCk7DQo+IEBAIC0xMTc2LDYgKzExODksNyBAQCBzdGF0aWMgdm9pZCBydW5fdGVzdF9v
bl9jcnRjX3NldChzdHJ1Y3QgdGVzdF9vdXRwdXQgKm8sIGludCAqY3J0Y19pZHhzLA0KPiAgCXVu
c2lnbmVkIGJvX3NpemUgPSAwOw0KPiAgCXVpbnQ2NF90IHRpbGluZzsNCj4gIAlpbnQgaTsNCj4g
Kwlib29sIHZibGFuayA9IHRydWU7DQo+ICANCj4gIAlzd2l0Y2ggKGNydGNfY291bnQpIHsNCj4g
IAljYXNlIFJVTl9URVNUOg0KPiBAQCAtMTI1OSw2ICsxMjczLDE0IEBAIHN0YXRpYyB2b2lkIHJ1
bl90ZXN0X29uX2NydGNfc2V0KHN0cnVjdCB0ZXN0X291dHB1dCAqbywgaW50ICpjcnRjX2lkeHMs
DQo+ICAJfQ0KPiAgCWlndF9hc3NlcnQoZmJfaXNfYm91bmQobywgby0+ZmJfaWRzWzBdKSk7DQo+
ICANCj4gKwl2YmxhbmsgPSBrbXNfaGFzX3ZibGFuayhkcm1fZmQpOw0KPiArCWlmICghdmJsYW5r
KSB7DQo+ICsJCWlmICh2YmxhbmtfZGVwZW5kZW5jZShvLT5mbGFncykpDQo+ICsJCQlpZ3RfcmVx
dWlyZV9mKHZibGFuaywgIlRoZXJlIGlzIG5vIFZCbGFua1xuIik7DQo+ICsJCWVsc2UNCj4gKwkJ
CW8tPmZsYWdzIHw9IFRFU1RfTk9fVkJMQU5LOw0KPiArCX0NCj4gKw0KPiAgCS8qIHF1aWVzY2Vu
dCB0aGUgaHcgYSBiaXQgc28gZW5zdXJlIHdlIGRvbid0IG1pc3MgYSBzaW5nbGUgZnJhbWUgKi8N
Cj4gIAlpZiAoby0+ZmxhZ3MgJiBURVNUX0NIRUNLX1RTKQ0KPiAgCQljYWxpYnJhdGVfdHMobywg
Y3J0Y19pZHhzWzBdKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
