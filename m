Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D2D27BA7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 13:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6253F89DC2;
	Thu, 23 May 2019 11:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DBC89DC1;
 Thu, 23 May 2019 11:23:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16653670-1500050 for multiple; Thu, 23 May 2019 12:23:02 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <9e96f093-9a2c-fed7-2291-570b7a082673@linux.intel.com>
References: <20190523080649.29466-1-chris@chris-wilson.co.uk>
 <9e96f093-9a2c-fed7-2291-570b7a082673@linux.intel.com>
Message-ID: <155861058142.28319.13876354824034844646@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 12:23:01 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Improve static engine map for
 legacy
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAxMDo0ODoyNykKPiAKPiBPbiAyMy8w
NS8yMDE5IDA5OjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBuZWVkIHRvIGtlZXAgaWd0
IHdvcmtpbmcgb24gbGludXMgYW5kIGRpZiwgb3IgSm9vbmFzIGdldHMgdmVyeSB1cHNldC4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+
IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KPiA+IENjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgbGli
L2k5MTUvZ2VtX2NvbnRleHQuYyAgICAgICAgIHwgIDIgKy0KPiA+ICAgbGliL2k5MTUvZ2VtX2Vu
Z2luZV90b3BvbG9neS5jIHwgMTUgKysrLS0tLS0tLQo+ID4gICBsaWIvaWd0X2d0LmMgICAgICAg
ICAgICAgICAgICAgfCA1NCArKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAg
IGxpYi9pZ3RfZ3QuaCAgICAgICAgICAgICAgICAgICB8IDE3IC0tLS0tLS0tLS0tCj4gPiAgIHRl
c3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYyB8IDIxICsrKysrLS0tLS0tLS0KPiA+ICAgdG9v
bHMvaW50ZWxfcmVnLmMgICAgICAgICAgICAgIHwgIDQgKy0tCj4gPiAgIDYgZmlsZXMgY2hhbmdl
ZCwgMTkgaW5zZXJ0aW9ucygrKSwgOTQgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9saWIvaTkxNS9nZW1fY29udGV4dC5jIGIvbGliL2k5MTUvZ2VtX2NvbnRleHQuYwo+ID4gaW5k
ZXggZjk0ZDg5Y2I0Li4wN2FiNzgxNzQgMTAwNjQ0Cj4gPiAtLS0gYS9saWIvaTkxNS9nZW1fY29u
dGV4dC5jCj4gPiArKysgYi9saWIvaTkxNS9nZW1fY29udGV4dC5jCj4gPiBAQCAtMjkwLDcgKzI5
MCw3IEBAIGJvb2wgZ2VtX2NvbnRleHRfaGFzX2VuZ2luZShpbnQgZmQsIHVpbnQzMl90IGN0eCwg
dWludDY0X3QgZW5naW5lKQo+ID4gICAgICAgICogd291bGRuJ3QgcHJvZHVjZSBhbnkgcmVzdWx0
Lgo+ID4gICAgICAgICovCj4gPiAgICAgICBpZiAoKGVuZ2luZSAmIH4oMzw8MTMpKSA9PSBJOTE1
X0VYRUNfQlNEKSB7Cj4gPiAtICAgICAgICAgICAgIGlmIChlbmdpbmUgJiAoMyA8PCAxMykgJiYg
IWdlbV9oYXNfYnNkMihmZCkpCj4gPiArICAgICAgICAgICAgIGlmIChlbmdpbmUgJiAoMiA8PCAx
MykgJiYgIWdlbV9oYXNfYnNkMihmZCkpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJu
IGZhbHNlOwo+ID4gICAgICAgfQo+ID4gICAKPiA+IGRpZmYgLS1naXQgYS9saWIvaTkxNS9nZW1f
ZW5naW5lX3RvcG9sb2d5LmMgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKPiA+IGlu
ZGV4IGQwYzhiZDVhYS4uZmRkMWI5NTE2IDEwMDY0NAo+ID4gLS0tIGEvbGliL2k5MTUvZ2VtX2Vu
Z2luZV90b3BvbG9neS5jCj4gPiArKysgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMK
PiA+IEBAIC0yMjMsMjIgKzIyMywxNSBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2RhdGEgaW50ZWxf
aW5pdF9lbmdpbmVfbGlzdChpbnQgZmQsIHVpbnQzMl90IGN0eF9pZCkKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKl9fZTIgPQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJmVuZ2luZV9kYXRhLmVuZ2luZXNbZW5naW5lX2Rh
dGEubmVuZ2luZXNdOwo+ID4gICAKPiA+IC0gICAgICAgICAgICAgICAgICAgICBpZiAoIWlndF9v
bmx5X2xpc3Rfc3VidGVzdHMoKSkgewo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
X19lMi0+ZmxhZ3MgPSBnZW1fY2xhc3NfaW5zdGFuY2VfdG9fZWJfZmxhZ3MoZmQsCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZTItPmNsYXNzLCBlMi0+
aW5zdGFuY2UpOwo+ID4gLQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKCFn
ZW1faGFzX3JpbmcoZmQsIF9fZTItPmZsYWdzKSkKPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgfSBlbHNl
IHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIF9fZTItPmZsYWdzID0gLTE7IC8q
IDB4ZmZmLi4uICovCj4gPiAtICAgICAgICAgICAgICAgICAgICAgfQo+ID4gLQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIF9fZTItPm5hbWUgICAgICAgPSBlMi0+bmFtZTsKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICBfX2UyLT5pbnN0YW5jZSAgID0gZTItPmluc3RhbmNlOwo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIF9fZTItPmNsYXNzICAgICAgPSBlMi0+Y2xhc3M7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgX19lMi0+ZmxhZ3MgICAgICA9IGUyLT5mbGFnczsKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICBfX2UyLT5pc192aXJ0dWFsID0gZmFsc2U7Cj4gPiAgIAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgIGVuZ2luZV9kYXRhLm5lbmdpbmVzKys7Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgaWYgKGlndF9vbmx5X2xpc3Rfc3VidGVzdHMoKSB8fAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICBnZW1faGFzX3JpbmcoZmQsIGUyLT5mbGFncykpCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBlbmdpbmVfZGF0YS5uZW5naW5lcysrOwo+ID4gICAgICAgICAg
ICAgICB9Cj4gPiAgICAgICAgICAgICAgIHJldHVybiBlbmdpbmVfZGF0YTsKPiA+ICAgICAgIH0K
PiA+IGRpZmYgLS1naXQgYS9saWIvaWd0X2d0LmMgYi9saWIvaWd0X2d0LmMKPiA+IGluZGV4IDZi
N2MwMzdlNi4uNzhlM2NkMDg5IDEwMDY0NAo+ID4gLS0tIGEvbGliL2lndF9ndC5jCj4gPiArKysg
Yi9saWIvaWd0X2d0LmMKPiA+IEBAIC01ODUsMTIgKzU4NSwxMiBAQCBib29sIGdlbV9jYW5fc3Rv
cmVfZHdvcmQoaW50IGZkLCB1bnNpZ25lZCBpbnQgZW5naW5lKQo+ID4gICB9Cj4gPiAgIAo+ID4g
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgaW50ZWxfZXhlY3V0aW9uX2Vu
Z2luZXMyW10gPSB7Cj4gPiAtICAgICB7ICJyY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfUkVOREVS
LCAwIH0sCj4gPiAtICAgICB7ICJiY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCB9LAo+
ID4gLSAgICAgeyAidmNzMCIsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAwIH0sCj4gPiAtICAg
ICB7ICJ2Y3MxIiwgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDEgfSwKPiA+IC0gICAgIHsgInZj
czIiLCBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMiB9LAo+ID4gLSAgICAgeyAidmVjczAiLCBJ
OTE1X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNFLCAwIH0sCj4gPiArICAgICB7ICJyY3MwIiwg
STkxNV9FTkdJTkVfQ0xBU1NfUkVOREVSLCAwLCBJOTE1X0VYRUNfUkVOREVSIH0sCj4gPiArICAg
ICB7ICJiY3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCwgSTkxNV9FWEVDX0JMVCB9LAo+
ID4gKyAgICAgeyAidmNzMCIsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAwLCBJOTE1X0VYRUNf
QlNEIHwgSTkxNV9FWEVDX0JTRF9SSU5HMSB9LAo+ID4gKyAgICAgeyAidmNzMSIsIEk5MTVfRU5H
SU5FX0NMQVNTX1ZJREVPLCAxLCBJOTE1X0VYRUNfQlNEIHwgSTkxNV9FWEVDX0JTRF9SSU5HMiB9
LAo+ID4gKyAgICAgeyAidmNzMiIsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAyLCAtMSB9LAo+
ID4gKyAgICAgeyAidmVjczAiLCBJOTE1X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNFLCAwLCBJ
OTE1X0VYRUNfVkVCT1ggfSwKPiA+ICAgICAgIHsgfQo+ID4gICB9Owo+ID4gICAKPiA+IEBAIC02
MTEsNDggKzYxMSw2IEBAIGludCBnZW1fZXhlY2J1Zl9mbGFnc190b19lbmdpbmVfY2xhc3ModW5z
aWduZWQgaW50IGZsYWdzKQo+ID4gICAgICAgfQo+ID4gICB9Cj4gPiAgIAo+ID4gLXVuc2lnbmVk
IGludAo+ID4gLWdlbV9jbGFzc19pbnN0YW5jZV90b19lYl9mbGFncyhpbnQgZ2VtX2ZkLAo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRybV9pOTE1X2dlbV9lbmdpbmVfY2xh
c3MgY2xhc3MsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBp
bnN0YW5jZSkKPiA+IC17Cj4gPiAtICAgICBpZiAoY2xhc3MgIT0gSTkxNV9FTkdJTkVfQ0xBU1Nf
VklERU8pCj4gPiAtICAgICAgICAgICAgIGlndF9hc3NlcnQoaW5zdGFuY2UgPT0gMCk7Cj4gPiAt
ICAgICBlbHNlCj4gPiAtICAgICAgICAgICAgIGlndF9hc3NlcnQoaW5zdGFuY2UgPj0gMCAmJiBp
bnN0YW5jZSA8PSAxKTsKPiA+IC0KPiA+IC0gICAgIHN3aXRjaCAoY2xhc3MpIHsKPiA+IC0gICAg
IGNhc2UgSTkxNV9FTkdJTkVfQ0xBU1NfUkVOREVSOgo+ID4gLSAgICAgICAgICAgICByZXR1cm4g
STkxNV9FWEVDX1JFTkRFUjsKPiA+IC0gICAgIGNhc2UgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWToK
PiA+IC0gICAgICAgICAgICAgcmV0dXJuIEk5MTVfRVhFQ19CTFQ7Cj4gPiAtICAgICBjYXNlIEk5
MTVfRU5HSU5FX0NMQVNTX1ZJREVPOgo+ID4gLSAgICAgICAgICAgICBpZiAoaW5zdGFuY2UgPT0g
MCkgewo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGlmIChnZW1faGFzX2JzZDIoZ2VtX2ZkKSkK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBJOTE1X0VYRUNfQlNEIHwg
STkxNV9FWEVDX0JTRF9SSU5HMTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBlbHNlCj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gSTkxNV9FWEVDX0JTRDsKPiA+IC0K
PiA+IC0gICAgICAgICAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByZXR1
cm4gSTkxNV9FWEVDX0JTRCB8IEk5MTVfRVhFQ19CU0RfUklORzI7Cj4gPiAtICAgICAgICAgICAg
IH0KPiA+IC0gICAgIGNhc2UgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU9fRU5IQU5DRToKPiA+IC0g
ICAgICAgICAgICAgcmV0dXJuIEk5MTVfRVhFQ19WRUJPWDsKPiA+IC0gICAgIGNhc2UgSTkxNV9F
TkdJTkVfQ0xBU1NfSU5WQUxJRDoKPiA+IC0gICAgIGRlZmF1bHQ6Cj4gPiAtICAgICAgICAgICAg
IGlndF9hc3NlcnQoMCk7Cj4gPiAtICAgICB9Owo+ID4gLX0KPiA+IC0KPiA+IC1ib29sIGdlbV9o
YXNfZW5naW5lKGludCBnZW1fZmQsCj4gPiAtICAgICAgICAgICAgICAgICBlbnVtIGRybV9pOTE1
X2dlbV9lbmdpbmVfY2xhc3MgY2xhc3MsCj4gPiAtICAgICAgICAgICAgICAgICB1bnNpZ25lZCBp
bnQgaW5zdGFuY2UpCj4gPiAtewo+ID4gLSAgICAgcmV0dXJuIGdlbV9oYXNfcmluZyhnZW1fZmQs
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgIGdlbV9jbGFzc19pbnN0YW5jZV90b19lYl9m
bGFncyhnZW1fZmQsIGNsYXNzLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaW5zdGFuY2UpKTsKPiA+IC19Cj4gPiAtCj4gPiAgIGJv
b2wgZ2VtX3JpbmdfaXNfcGh5c2ljYWxfZW5naW5lKGludCBmZCwgdW5zaWduZWQgcmluZykKPiA+
ICAgewo+ID4gICAgICAgaWYgKHJpbmcgPT0gSTkxNV9FWEVDX0RFRkFVTFQpCj4gPiBkaWZmIC0t
Z2l0IGEvbGliL2lndF9ndC5oIGIvbGliL2lndF9ndC5oCj4gPiBpbmRleCA3NzMxOGUyYTguLjcz
YjUwMDJhMCAxMDA2NDQKPiA+IC0tLSBhL2xpYi9pZ3RfZ3QuaAo+ID4gKysrIGIvbGliL2lndF9n
dC5oCj4gPiBAQCAtMTAyLDIxICsxMDIsNCBAQCBleHRlcm4gY29uc3Qgc3RydWN0IGludGVsX2V4
ZWN1dGlvbl9lbmdpbmUyIHsKPiA+ICAgCj4gPiAgIGludCBnZW1fZXhlY2J1Zl9mbGFnc190b19l
bmdpbmVfY2xhc3ModW5zaWduZWQgaW50IGZsYWdzKTsKPiA+ICAgCj4gPiAtdW5zaWduZWQgaW50
Cj4gPiAtZ2VtX2NsYXNzX2luc3RhbmNlX3RvX2ViX2ZsYWdzKGludCBnZW1fZmQsCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gZHJtX2k5MTVfZ2VtX2VuZ2luZV9jbGFzcyBj
bGFzcywKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGluc3Rh
bmNlKTsKPiA+IC0KPiA+IC1ib29sIGdlbV9oYXNfZW5naW5lKGludCBnZW1fZmQsCj4gPiAtICAg
ICAgICAgICAgICAgICBlbnVtIGRybV9pOTE1X2dlbV9lbmdpbmVfY2xhc3MgY2xhc3MsCj4gPiAt
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgaW5zdGFuY2UpOwo+ID4gLQo+ID4gLXN0YXRp
YyBpbmxpbmUKPiA+IC12b2lkIGdlbV9yZXF1aXJlX2VuZ2luZShpbnQgZ2VtX2ZkLAo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgIGVudW0gZHJtX2k5MTVfZ2VtX2VuZ2luZV9jbGFzcyBjbGFzcywK
PiA+IC0gICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgaW5zdGFuY2UpCj4gPiAtewo+
ID4gLSAgICAgaWd0X3JlcXVpcmUoZ2VtX2hhc19lbmdpbmUoZ2VtX2ZkLCBjbGFzcywgaW5zdGFu
Y2UpKTsKPiA+IC19Cj4gPiAtCj4gPiAgICNlbmRpZiAvKiBJR1RfR1RfSCAqLwo+ID4gZGlmZiAt
LWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0
eF9pc29sYXRpb24uYwo+ID4gaW5kZXggYmNkMGY0ODEyLi41YjA1NGM4MWQgMTAwNjQ0Cj4gPiAt
LS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiA+ICsrKyBiL3Rlc3RzL2k5MTUv
Z2VtX2N0eF9pc29sYXRpb24uYwo+ID4gQEAgLTMyMSw4ICszMjEsNyBAQCBzdGF0aWMgdWludDMy
X3QgcmVhZF9yZWdzKGludCBmZCwKPiA+ICAgICAgIG1lbXNldCgmZXhlY2J1ZiwgMCwgc2l6ZW9m
KGV4ZWNidWYpKTsKPiA+ICAgICAgIGV4ZWNidWYuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50
ZXIob2JqKTsKPiA+ICAgICAgIGV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMjsKPiA+IC0gICAgIGV4
ZWNidWYuZmxhZ3MgPQo+ID4gLSAgICAgICAgICAgICBnZW1fY2xhc3NfaW5zdGFuY2VfdG9fZWJf
ZmxhZ3MoZmQsIGUtPmNsYXNzLCBlLT5pbnN0YW5jZSk7Cj4gPiArICAgICBleGVjYnVmLmZsYWdz
ID0gZS0+ZmxhZ3M7Cj4gPiAgICAgICBleGVjYnVmLnJzdmQxID0gY3R4Owo+ID4gICAgICAgZ2Vt
X2V4ZWNidWYoZmQsICZleGVjYnVmKTsKPiA+ICAgICAgIGdlbV9jbG9zZShmZCwgb2JqWzFdLmhh
bmRsZSk7Cj4gPiBAQCAtMzc3LDggKzM3Niw3IEBAIHN0YXRpYyB2b2lkIHdyaXRlX3JlZ3MoaW50
IGZkLAo+ID4gICAgICAgbWVtc2V0KCZleGVjYnVmLCAwLCBzaXplb2YoZXhlY2J1ZikpOwo+ID4g
ICAgICAgZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqKTsKPiA+ICAg
ICAgIGV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMTsKPiA+IC0gICAgIGV4ZWNidWYuZmxhZ3MgPQo+
ID4gLSAgICAgICAgICAgICBnZW1fY2xhc3NfaW5zdGFuY2VfdG9fZWJfZmxhZ3MoZmQsIGUtPmNs
YXNzLCBlLT5pbnN0YW5jZSk7Cj4gPiArICAgICBleGVjYnVmLmZsYWdzID0gZS0+ZmxhZ3M7Cj4g
PiAgICAgICBleGVjYnVmLnJzdmQxID0gY3R4Owo+ID4gICAgICAgZ2VtX2V4ZWNidWYoZmQsICZl
eGVjYnVmKTsKPiA+ICAgICAgIGdlbV9jbG9zZShmZCwgb2JqLmhhbmRsZSk7Cj4gPiBAQCAtNDQ4
LDggKzQ0Niw3IEBAIHN0YXRpYyB2b2lkIHJlc3RvcmVfcmVncyhpbnQgZmQsCj4gPiAgICAgICBt
ZW1zZXQoJmV4ZWNidWYsIDAsIHNpemVvZihleGVjYnVmKSk7Cj4gPiAgICAgICBleGVjYnVmLmJ1
ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKG9iaik7Cj4gPiAgICAgICBleGVjYnVmLmJ1ZmZl
cl9jb3VudCA9IDI7Cj4gPiAtICAgICBleGVjYnVmLmZsYWdzID0KPiA+IC0gICAgICAgICAgICAg
Z2VtX2NsYXNzX2luc3RhbmNlX3RvX2ViX2ZsYWdzKGZkLCBlLT5jbGFzcywgZS0+aW5zdGFuY2Up
Owo+ID4gKyAgICAgZXhlY2J1Zi5mbGFncyA9IGUtPmZsYWdzOwo+ID4gICAgICAgZXhlY2J1Zi5y
c3ZkMSA9IGN0eDsKPiA+ICAgICAgIGdlbV9leGVjYnVmKGZkLCAmZXhlY2J1Zik7Cj4gPiAgICAg
ICBnZW1fY2xvc2UoZmQsIG9ialsxXS5oYW5kbGUpOwo+ID4gQEAgLTU1OSw4ICs1NTYsNyBAQCBz
dGF0aWMgdm9pZCBub25wcml2KGludCBmZCwKPiA+ICAgICAgICAgICAgICAgMHgwNTA1YzBjMCwK
PiA+ICAgICAgICAgICAgICAgMHhkZWFkYmVlZgo+ID4gICAgICAgfTsKPiA+IC0gICAgIHVuc2ln
bmVkIGludCBlbmdpbmUgPQo+ID4gLSAgICAgICAgICAgICBnZW1fY2xhc3NfaW5zdGFuY2VfdG9f
ZWJfZmxhZ3MoZmQsIGUtPmNsYXNzLCBlLT5pbnN0YW5jZSk7Cj4gPiArICAgICB1bnNpZ25lZCBp
bnQgZW5naW5lID0gZS0+ZmxhZ3M7Cj4gPiAgICAgICB1bnNpZ25lZCBpbnQgbnVtX3ZhbHVlcyA9
IEFSUkFZX1NJWkUodmFsdWVzKTsKPiA+ICAgCj4gPiAgICAgICAvKiBTaWdoIC0tIGhzdzogd2Ug
bmVlZCBjbWRwYXJzZXIgYWNjZXNzIHRvIG91ciBvd24gcmVnaXN0ZXJzISAqLwo+ID4gQEAgLTYx
Niw5ICs2MTIsNyBAQCBzdGF0aWMgdm9pZCBpc29sYXRpb24oaW50IGZkLAo+ID4gICAgICAgICAg
ICAgICAweGFhYWFhYWFhLAo+ID4gICAgICAgICAgICAgICAweGRlYWRiZWVmCj4gPiAgICAgICB9
Owo+ID4gLSAgICAgdW5zaWduZWQgaW50IGVuZ2luZSA9IGdlbV9jbGFzc19pbnN0YW5jZV90b19l
Yl9mbGFncyhmZCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZS0+Y2xhc3MsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGUtPmluc3RhbmNlKTsKPiA+ICsgICAg
IHVuc2lnbmVkIGludCBlbmdpbmUgPSBlLT5mbGFnczsKPiA+ICAgICAgIHVuc2lnbmVkIGludCBu
dW1fdmFsdWVzID0KPiA+ICAgICAgICAgICAgICAgZmxhZ3MgJiAoRElSVFkxIHwgRElSVFkyKSA/
IEFSUkFZX1NJWkUodmFsdWVzKSA6IDE7Cj4gPiAgIAo+ID4gQEAgLTcyOSw4ICs3MjMsNyBAQCBz
dGF0aWMgdm9pZCBwcmVzZXJ2YXRpb24oaW50IGZkLAo+ID4gICAgICAgICAgICAgICAweGRlYWRi
ZWVmCj4gPiAgICAgICB9Owo+ID4gICAgICAgY29uc3QgdW5zaWduZWQgaW50IG51bV92YWx1ZXMg
PSBBUlJBWV9TSVpFKHZhbHVlcyk7Cj4gPiAtICAgICB1bnNpZ25lZCBpbnQgZW5naW5lID0KPiA+
IC0gICAgICAgICAgICAgZ2VtX2NsYXNzX2luc3RhbmNlX3RvX2ViX2ZsYWdzKGZkLCBlLT5jbGFz
cywgZS0+aW5zdGFuY2UpOwo+ID4gKyAgICAgdW5zaWduZWQgaW50IGVuZ2luZSA9IGUtPmZsYWdz
Owo+ID4gICAgICAgdWludDMyX3QgY3R4W251bV92YWx1ZXMgKzEgXTsKPiA+ICAgICAgIHVpbnQz
Ml90IHJlZ3NbbnVtX3ZhbHVlcyArIDFdWzJdOwo+ID4gICAgICAgaWd0X3NwaW5fdCAqc3BpbjsK
PiA+IEBAIC04NDAsNyArODMzLDcgQEAgaWd0X21haW4KPiA+ICAgICAgICAgICAgICAgaWd0X3N1
YnRlc3RfZ3JvdXAgewo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlndF9maXh0dXJlIHsKPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKGhhc19jb250ZXh0X2lz
b2xhdGlvbiAmICgxIDw8IGUtPmNsYXNzKSk7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBnZW1fcmVxdWlyZV9lbmdpbmUoZmQsIGUtPmNsYXNzLCBlLT5pbnN0YW5jZSk7Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnZW1fcmVxdWlyZV9yaW5nKGZkLCBlLT5mbGFn
cyk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZ3RfZm9ya19oYW5nX2RldGVj
dG9yKGZkKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICB9Cj4gPiAgIAo+ID4gZGlmZiAtLWdp
dCBhL3Rvb2xzL2ludGVsX3JlZy5jIGIvdG9vbHMvaW50ZWxfcmVnLmMKPiA+IGluZGV4IDEyNDdi
NzBiMC4uZTUxNzk1NmI4IDEwMDY0NAo+ID4gLS0tIGEvdG9vbHMvaW50ZWxfcmVnLmMKPiA+ICsr
KyBiL3Rvb2xzL2ludGVsX3JlZy5jCj4gPiBAQCAtMzI5LDkgKzMyOSw3IEBAIHN0YXRpYyBpbnQg
cmVnaXN0ZXJfc3JtKHN0cnVjdCBjb25maWcgKmNvbmZpZywgc3RydWN0IHJlZyAqcmVnLAo+ID4g
ICAgICAgbWVtc2V0KCZleGVjYnVmLCAwLCBzaXplb2YoZXhlY2J1ZikpOwo+ID4gICAgICAgZXhl
Y2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihvYmopOwo+ID4gICAgICAgZXhlY2J1
Zi5idWZmZXJfY291bnQgPSAyOwo+ID4gLSAgICAgZXhlY2J1Zi5mbGFncyA9IGdlbV9jbGFzc19p
bnN0YW5jZV90b19lYl9mbGFncyhmZCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lLT5jbGFzcywKPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lLT5pbnN0YW5jZSk7
Cj4gPiArICAgICBleGVjYnVmLmZsYWdzID0gZW5naW5lLT5mbGFnczsKPiA+ICAgICAgIGlmIChz
ZWN1cmUpCj4gPiAgICAgICAgICAgICAgIGV4ZWNidWYuZmxhZ3MgfD0gSTkxNV9FWEVDX1NFQ1VS
RTsKPiA+ICAgCj4gPiAKPiAKPiBJdCBzdGlsbCBwdXp6bGVzIG1lIGF0IHdoaWNoIHBvaW50IHdh
cyBJOTE1X0VYRUNfQlNEX1JJTkcxIG5vdCBhbGxvd2VkIAo+IG9uIHNpbmdsZSB2Y3MgcGFydHMu
IFdhcyBpdCBqdXN0IGEgZmFpbCBpbiBJR1Q/IT8gVGhlIGZpcnN0IGh1bmsgaW4gdGhpcyAKPiBw
YXRjaC4gRGlnZ2luZyBpbiBoaXN0b3J5IHBvaW50cyB0byB0aGF0Li4KCkkgZG8gcmVjYWxsIG1h
a2luZyBhIGRlY2lzaW9uIHRvIGhpZGUgdmNzMSBpZiAhdmNzMiBzbyB0aGF0IHdlIGRpZG4ndApk
dXBsaWNhdGUgKHZjcywgdmNzMSksIGFuZCBzdGlsbCBoYXZlIHRoZSBwbGFpbiByYW5kb21seSBj
aG9zZW4gdmNzLgpUaGF0IGlzIGxpa2VseSB0aGUgYWRkaXRpb25hbCBzb3VyY2Ugb2YgY29uZnVz
aW9uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
