Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677D415CEC3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 00:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A58756F89B;
	Thu, 13 Feb 2020 23:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F436F89C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 23:45:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 15:45:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="238196184"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 13 Feb 2020 15:45:09 -0800
To: John Harrison <John.C.Harrison@Intel.com>, intel-gfx@lists.freedesktop.org
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
 <20200212003124.33844-7-daniele.ceraolospurio@intel.com>
 <fbdaffb1-22a2-a693-4e29-f35e31083000@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <9a678e60-8063-2df9-9fe3-018b2191b083@intel.com>
Date: Thu, 13 Feb 2020 15:44:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <fbdaffb1-22a2-a693-4e29-f35e31083000@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 06/10] drm/i915/uc: Improve tracking of
 uC init status
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAyLzEzLzIwIDM6MzYgUE0sIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4gT24gMi8xMS8yMDIw
IDE2OjMxLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+PiBUbyBiZSBhYmxlIHRvIHNl
dHVwIEd1QyBzdWJtaXNzaW9uIGZ1bmN0aW9ucyBkdXJpbmcgZW5naW5lIGluaXQgd2UgbmVlZAo+
PiB0byBjb21taXQgdG8gdXNpbmcgR3VDIGFzIHNvb24gYXMgcG9zc2libGUuCj4+IEN1cnJlbnRs
eSwgdGhlIG9ubHkgdGhpbmcgdGhhdCBjYW4gc3RvcCB1cyBmcm9tIHVzaW5nIHRoZQo+PiBtaWNy
b2NvbnRyb2xsZXJzIG9uY2Ugd2UndmUgZmV0Y2hlZCB0aGUgYmxvYnMgaXMgYSBmdW5kYW1lbnRh
bAo+PiBlcnJvciAoZS5nLiBPT00pOyBnaXZlbiB0aGF0IGlmIHdlIGhpdCBzdWNoIGFuIGVycm9y
IHdlIGNhbid0IHJlYWxseQo+PiBmYWxsLWJhY2sgdG8gYW55dGhpbmcsIHdlIGNhbiAib2ZmaWNp
YWxpemUiIHRoZSBGVyBmZXRjaGluZyBjb21wbGV0aW9uCj4+IGFzIHRoZSBtb21lbnQgYXQgd2hp
Y2ggd2UncmUgY29tbWl0dGluZyB0byB1c2luZyBHdUMuCj4+Cj4+IFRvIGJldHRlciBkaWZmZXJl
bnRpYXRlIHRoaXMgY2FzZSwgdGhlIHVzZXNfZ3VjIGNoZWNrLCB3aGljaCBpbmRpY2F0ZXMKPj4g
dGhhdCBHdUMgaXMgc3VwcG9ydGVkIGFuZCB3YXMgc2VsZWN0ZWQgaW4gbW9kcGFyYW0sIGlzIHJl
bmFtZWQgdG8KPj4gd2FudHNfZ3VjIGFuZCBhIG5ldyB1c2VzX2d1YyBpcyBpbnRyb2R1Y2VkIHRv
IHJlcHJlc2VudCB0aGUgY2FzZSB3ZXJlCj4+IHdlJ3JlIGNvbW1pdHRlZCB0byB1c2luZyB0aGUg
R3VDLiBOb3RlIHRoYXQgdXNlc19ndWMgZG9lcyBzdGlsbCBub3QgaW1wbHkKPj4gdGhhdCB0aGUg
YmxvYiBpcyBhY3R1YWxseSBsb2FkZWQgb24gdGhlIEhXIChpc19ydW5uaW5nIGlzIHRoZSBjaGVj
ayBmb3IKPj4gdGhhdCkuIEFsc28sIHNpbmNlIHdlIG5lZWQgdG8gaGF2ZSBhdHRlbXB0ZWQgdGhl
IGZldGNoIGZvciB0aGUgcmVzdWx0Cj4+IG9mIHVzZXNfZ3VjIHRvIGJlIG1lYW5pbmdmdWwsIHdl
IG5lZWQgdG8gbWFrZSBzdXJlIHdlJ3ZlIG1vdmVkIGF3YXkKPj4gZnJvbSBJTlRFTF9VQ19GSVJN
V0FSRV9TRUxFQ1RFRC4KPj4KPj4gQWxsIHRoZSBHdUMgY2hhbmdlcyBoYXZlIGJlZW4gbWlycm9y
ZWQgb24gdGhlIEh1QyBmb3IgY29oZXJlbmN5Lgo+Pgo+PiB2Mjogc3BsaXQgZmV0Y2ggcmV0dXJu
IGNoYW5nZXMgYW5kIG5ldyBtYWNyb3MgdG8gdGhlaXIgb3duIHBhdGNoZXMsCj4+IMKgwqDCoMKg
IHN1cHBvcnQgSHVDIG9ubHkgaWYgR3VDIGlzIHdhbnRlZCwgaW1wcm92ZSAidXNlZCIgc3RhdGUK
Pj4gwqDCoMKgwqAgZGVzY3JpcHRpb24gKE1pY2hhbCkKPj4KPj4gdjM6IHMvd2FudHNfaHVjL3Vz
ZXNfaHVjIGluIHVjX2luaXRfd29wY20KPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28g
PG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiBDYzogSm9obiBIYXJyaXNvbiA8Sm9obi5D
LkhhcnJpc29uQEludGVsLmNvbT4KPj4gQ2M6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RA
aW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTogRmVybmFuZG8gUGFjaGVjbyA8ZmVybmFuZG8ucGFj
aGVjb0BpbnRlbC5jb20+ICN2MQo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjLmjCoMKgwqAgfMKgIDggKysrKysrKy0KPj4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmjCoMKgwqAgfMKgIDggKysrKysrKy0KPj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgfMKgIDIgKy0KPj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuY8KgwqDCoMKgIHwgMjEgKysrKysrKysrKyst
LS0tLS0tLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaMKgwqDC
oMKgIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKy0KPj4gwqAgNSBmaWxlcyBjaGFuZ2VkLCA1
MCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5oCj4+IGluZGV4IDY2OGIwNjdiNzFlMi4uYjUxYWRhYWM4NzUy
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAo+PiBAQCAtMTQz
LDExICsxNDMsMTcgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX2d1Y19pc19zdXBwb3J0ZWQo
c3RydWN0IAo+PiBpbnRlbF9ndWMgKmd1YykKPj4gwqDCoMKgwqDCoCByZXR1cm4gaW50ZWxfdWNf
ZndfaXNfc3VwcG9ydGVkKCZndWMtPmZ3KTsKPj4gwqAgfQo+PiAtc3RhdGljIGlubGluZSBib29s
IGludGVsX2d1Y19pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4gK3N0YXRpYyBp
bmxpbmUgYm9vbCBpbnRlbF9ndWNfaXNfd2FudGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4g
wqAgewo+PiDCoMKgwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19lbmFibGVkKCZndWMtPmZ3
KTsKPj4gwqAgfQo+PiArc3RhdGljIGlubGluZSBib29sIGludGVsX2d1Y19pc191c2VkKHN0cnVj
dCBpbnRlbF9ndWMgKmd1YykKPj4gK3sKPj4gK8KgwqDCoCBHRU1fQlVHX09OKF9faW50ZWxfdWNf
Zndfc3RhdHVzKCZndWMtPmZ3KSA9PSAKPj4gSU5URUxfVUNfRklSTVdBUkVfU0VMRUNURUQpOwo+
PiArwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19hdmFpbGFibGUoJmd1Yy0+ZncpOwo+PiAr
fQo+PiArCj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndWNfaXNfZndfcnVubmluZyhz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCByZXR1cm4gaW50ZWxf
dWNfZndfaXNfcnVubmluZygmZ3VjLT5mdyk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9odWMuaAo+PiBpbmRleCA2NDRjMDU5ZmUwMWQuLmE0MGI5Y2ZjNmMyMiAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmgKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmgKPj4gQEAgLTQxLDExICs0MSwx
NyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX3N1cHBvcnRlZChzdHJ1Y3QgCj4+
IGludGVsX2h1YyAqaHVjKQo+PiDCoMKgwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19zdXBw
b3J0ZWQoJmh1Yy0+ZncpOwo+PiDCoCB9Cj4+IC1zdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVj
X2lzX2VuYWJsZWQoc3RydWN0IGludGVsX2h1YyAqaHVjKQo+PiArc3RhdGljIGlubGluZSBib29s
IGludGVsX2h1Y19pc193YW50ZWQoc3RydWN0IGludGVsX2h1YyAqaHVjKQo+PiDCoCB7Cj4+IMKg
wqDCoMKgwqAgcmV0dXJuIGludGVsX3VjX2Z3X2lzX2VuYWJsZWQoJmh1Yy0+ZncpOwo+PiDCoCB9
Cj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX3VzZWQoc3RydWN0IGludGVsX2h1
YyAqaHVjKQo+PiArewo+PiArwqDCoMKgIEdFTV9CVUdfT04oX19pbnRlbF91Y19md19zdGF0dXMo
Jmh1Yy0+ZncpID09IAo+PiBJTlRFTF9VQ19GSVJNV0FSRV9TRUxFQ1RFRCk7Cj4+ICvCoMKgwqAg
cmV0dXJuIGludGVsX3VjX2Z3X2lzX2F2YWlsYWJsZSgmaHVjLT5mdyk7Cj4+ICt9Cj4+ICsKPj4g
wqAgc3RhdGljIGlubGluZSBib29sIGludGVsX2h1Y19pc19hdXRoZW50aWNhdGVkKHN0cnVjdCBp
bnRlbF9odWMgKmh1YykKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19p
c19ydW5uaW5nKCZodWMtPmZ3KTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2h1Y19mdy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2h1Y19mdy5jCj4+IGluZGV4IGVlZTE5M2JmMmNjNC4uOWNkZjRjYmU2OTFjIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYwo+PiBAQCAtMjAsNyAr
MjAsNyBAQCB2b2lkIGludGVsX2h1Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9odWMgKmh1
YykKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1
Owo+PiDCoMKgwqDCoMKgIGludGVsX3VjX2Z3X2luaXRfZWFybHkoJmh1Yy0+ZncsIElOVEVMX1VD
X0ZXX1RZUEVfSFVDLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlu
dGVsX3VjX3VzZXNfZ3VjKHVjKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpbnRlbF91Y193YW50c19ndWModWMpLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIElOVEVMX0lORk8oaTkxNSktPnBsYXRmb3JtLCBJTlRFTF9SRVZJRChp
OTE1KSk7Cj4+IMKgIH0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+
PiBpbmRleCBhZmZjNGQ2ZjllYWQuLjU4MjVhNmMzZTBhMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+IEBAIC00OCwxNyArNDgsMTcgQEAgc3RhdGljIHZvaWQg
X19jb25maXJtX29wdGlvbnMoc3RydWN0IGludGVsX3VjICp1YykKPj4gwqDCoMKgwqDCoCBEUk1f
REVWX0RFQlVHX0RSSVZFUihpOTE1LT5kcm0uZGV2LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgImVuYWJsZV9ndWM9JWQgKGd1YzolcyBzdWJtaXNzaW9uOiVzIGh1Yzol
cylcbiIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X21vZHBh
cmFtcy5lbmFibGVfZ3VjLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgeWVz
bm8oaW50ZWxfdWNfdXNlc19ndWModWMpKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHllc25vKGludGVsX3VjX3dhbnRzX2d1Yyh1YykpLAo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgeWVzbm8oaW50ZWxfdWNfdXNlc19ndWNfc3VibWlzc2lvbih1
YykpLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgeWVzbm8oaW50ZWxfdWNf
dXNlc19odWModWMpKSk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB5ZXNu
byhpbnRlbF91Y193YW50c19odWModWMpKSk7Cj4+IMKgwqDCoMKgwqAgaWYgKGk5MTVfbW9kcGFy
YW1zLmVuYWJsZV9ndWMgPT0gLTEpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+IMKg
wqDCoMKgwqAgaWYgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgPT0gMCkgewo+PiAtwqDCoMKg
wqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y191c2VzX2d1Yyh1YykpOwo+PiArwqDCoMKgwqDC
oMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y193YW50c19ndWModWMpKTsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIEdFTV9CVUdfT04oaW50ZWxfdWNfdXNlc19ndWNfc3VibWlzc2lvbih1YykpOwo+PiAt
wqDCoMKgwqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y191c2VzX2h1Yyh1YykpOwo+PiArwqDC
oMKgwqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y193YW50c19odWModWMpKTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybjsKPj4gwqDCoMKgwqDCoCB9Cj4+IEBAIC05Myw3ICs5Myw3IEBA
IHZvaWQgaW50ZWxfdWNfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+PiDCoMKgwqDC
oMKgIF9fY29uZmlybV9vcHRpb25zKHVjKTsKPj4gLcKgwqDCoCBpZiAoaW50ZWxfdWNfdXNlc19n
dWModWMpKQo+PiArwqDCoMKgIGlmIChpbnRlbF91Y193YW50c19ndWModWMpKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgdWMtPm9wcyA9ICZ1Y19vcHNfb247Cj4+IMKgwqDCoMKgwqAgZWxzZQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgdWMtPm9wcyA9ICZ1Y19vcHNfb2ZmOwo+PiBAQCAtMjU3LDEzICsy
NTcsMTMgQEAgc3RhdGljIHZvaWQgX191Y19mZXRjaF9maXJtd2FyZXMoc3RydWN0IGludGVsX3Vj
IAo+PiAqdWMpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+PiAtwqDCoMKgIEdFTV9C
VUdfT04oIWludGVsX3VjX3VzZXNfZ3VjKHVjKSk7Cj4+ICvCoMKgwqAgR0VNX0JVR19PTighaW50
ZWxfdWNfd2FudHNfZ3VjKHVjKSk7Cj4+IMKgwqDCoMKgwqAgZXJyID0gaW50ZWxfdWNfZndfZmV0
Y2goJnVjLT5ndWMuZncpOwo+PiDCoMKgwqDCoMKgIGlmIChlcnIpCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm47Cj4+IC3CoMKgwqAgaWYgKGludGVsX3VjX3VzZXNfaHVjKHVjKSkKPj4gK8Kg
wqDCoCBpZiAoaW50ZWxfdWNfd2FudHNfaHVjKHVjKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlu
dGVsX3VjX2Z3X2ZldGNoKCZ1Yy0+aHVjLmZ3KTsKPj4gwqAgfQo+PiBAQCAtMjc5LDcgKzI3OSwx
MCBAQCBzdGF0aWMgdm9pZCBfX3VjX2luaXQoc3RydWN0IGludGVsX3VjICp1YykKPj4gwqDCoMKg
wqDCoCBzdHJ1Y3QgaW50ZWxfaHVjICpodWMgPSAmdWMtPmh1YzsKPj4gwqDCoMKgwqDCoCBpbnQg
cmV0Owo+PiAtwqDCoMKgIEdFTV9CVUdfT04oIWludGVsX3VjX3VzZXNfZ3VjKHVjKSk7Cj4+ICvC
oMKgwqAgR0VNX0JVR19PTighaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSk7Cj4+ICsKPj4gK8KgwqDC
oCBpZiAoIWludGVsX3VjX3VzZXNfZ3VjKHVjKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybjsK
Pj4gwqDCoMKgwqDCoCAvKiBYWFg6IEd1QyBzdWJtaXNzaW9uIGlzIHVuYXZhaWxhYmxlIGZvciBu
b3cgKi8KPj4gwqDCoMKgwqDCoCBHRU1fQlVHX09OKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJt
aXNzaW9uKHVjKSk7Cj4+IEBAIC00MDIsNyArNDA1LDcgQEAgc3RhdGljIGludCBfX3VjX2luaXRf
aHcoc3RydWN0IGludGVsX3VjICp1YykKPj4gwqDCoMKgwqDCoCBpbnQgcmV0LCBhdHRlbXB0czsK
Pj4gwqDCoMKgwqDCoCBHRU1fQlVHX09OKCFpbnRlbF91Y19zdXBwb3J0c19ndWModWMpKTsKPj4g
LcKgwqDCoCBHRU1fQlVHX09OKCFpbnRlbF91Y191c2VzX2d1Yyh1YykpOwo+PiArwqDCoMKgIEdF
TV9CVUdfT04oIWludGVsX3VjX3dhbnRzX2d1Yyh1YykpOwo+PiDCoMKgwqDCoMKgIGlmICghaW50
ZWxfdWNfZndfaXNfYXZhaWxhYmxlKCZndWMtPmZ3KSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0ID0gX191Y19jaGVja19odyh1YykgfHwKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWMuaAo+PiBpbmRleCAyY2U5OTNjZWI2MGEuLmE0MWFhZjM1M2Y4OCAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaAo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCj4+IEBAIC00MCw2ICs0MCwyNyBAQCB2
b2lkIGludGVsX3VjX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfdWMgKnVjKTsKPj4gwqAg
aW50IGludGVsX3VjX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfdWMgKnVjKTsKPj4gwqAgaW50IGludGVs
X3VjX3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMpOwo+PiArLyoKPj4gKyAqIFdl
IG5lZWQgdG8ga25vdyBhcyBlYXJseSBhcyBwb3NzaWJsZSBpZiB3ZSdyZSBnb2luZyB0byB1c2Ug
R3VDIG9yIAo+PiBub3QgdG8KPj4gKyAqIHRha2UgdGhlIGNvcnJlY3Qgc2V0dXAgcGF0aHMuIEFk
ZGl0aW9uYWxseSwgb25jZSB3ZSd2ZSBzdGFydGVkIAo+PiBsb2FkaW5nIHRoZQo+PiArICogR3VD
LCBpdCBpcyB1bnNhZmUgdG8ga2VlcCBleGVjdXRpbmcgd2l0aG91dCBpdCBiZWNhdXNlIHNvbWUg
cGFydHMgCj4+IG9mIHRoZSBIVywKPj4gKyAqIGEgc3Vic2V0IG9mIHdoaWNoIGlzIG5vdCBjbGVh
bmVkIG9uIEdUIHJlc2V0LCB3aWxsIHN0YXJ0IGV4cGVjdGluZyAKPj4gdGhlIEd1QyBGVwo+PiAr
ICogdG8gYmUgcnVubmluZy4KPj4gKyAqIFRvIHNvbHZlIGJvdGggdGhlc2UgcmVxdWlyZW1lbnRz
LCB3ZSBjb21taXQgdG8gdXNpbmcgdGhlIAo+PiBtaWNyb2NvbnRyb2xsZXJzIGlmCj4+ICsgKiB0
aGUgcmVsZXZhbnQgbW9kcGFyYW0gaXMgc2V0IGFuZCB0aGUgYmxvYnMgYXJlIGZvdW5kIG9uIHRo
ZSAKPj4gc3lzdGVtLiBBdCB0aGlzCj4+ICsgKiBzdGFnZSwgdGhlIG9ubHkgdGhpbmcgdGhhdCBj
YW4gc3RvcCB1cyBmcm9tIGF0dGVtcHRpbmcgdG8gbG9hZCB0aGUgCj4+IGJsb2JzIG9uCj4+ICsg
KiB0aGUgSFcgYW5kIHVzZSB0aGVtIGlzIGEgZnVuZGFtZW50YWwgaXNzdWUgKGUuZy4gbm8gbWVt
b3J5IGZvciBvdXIKPj4gKyAqIHN0cnVjdHVyZXMpOyBpZiB3ZSBoaXQgc3VjaCBhIHByb2JsZW0g
ZHVyaW5nIGRyaXZlciBsb2FkIHdlJ3JlIAo+PiBicm9rZW4gZXZlbgo+PiArICogd2l0aG91dCBH
dUMsIHNvIHRoZXJlIGlzIG5vIHBvaW50IGluIHRyeWluZyB0byBmYWxsIGJhY2suCj4+ICsgKgo+
PiArICogR2l2ZW4gdGhlIGFib3ZlLCB3ZSBjYW4gYmUgaW4gb25lIG9mIDQgc3RhdGVzLCB3aXRo
IHRoZSBsYXN0IG9uZSAKPj4gaW1wbHlpbmcKPj4gKyAqIHdlJ3JlIGNvbW1pdHRlZCB0byB1c2lu
ZyB0aGUgbWljcm9jb250cm9sbGVyOgo+PiArICogLSBOb3Qgc3VwcG9ydGVkOiBub3QgYXZhaWxh
YmxlIGluIEhXIGFuZC9vciBmaXJtd2FyZSBub3QgZGVmaW5lZC4KPj4gKyAqIC0gU3VwcG9ydGVk
OiBhdmFpbGFibGUgaW4gSFcgYW5kIGZpcm13YXJlIGRlZmluZWQuCj4+ICsgKiAtIFdhbnRlZDog
c3VwcG9ydGVkICsgZW5hYmxlZCBpbiBtb2RwYXJhbS4KPj4gKyAqIC0gSW4gdXNlOiB3YW50ZWQg
KyBmaXJtd2FyZSBmb3VuZCBvbiB0aGUgc3lzdGVtIGFuZCBzdWNjZXNzZnVsbHkgCj4+IGZldGNo
ZWQuCj4gU2hvdWxkIGJlIGFub3RoZXIgbGluZSBmb3IgJ1J1bm5pbmcnPyBJIGd1ZXNzIHRoZSBk
ZWZpbml0aW9uIG9mIAo+ICdpc19ydW5uaW5nJyBjb21lcyBmcm9tIGVsc2V3aGVyZSBidXQgaXQg
d291bGQgbWFrZSBzZW5zZSB0byBpbmNsdWRlIGl0IAo+IGluIHRoZSBkZXNjcmlwdGlvbiBoZXJl
LgoKIlJ1bm5pbmciIGJlbG9uZ3MgdG8gYSBkaWZmZXJlbnQgc2V0IG9mIHN0YXRlcywgaW5kaWNh
dGluZyB0aGUgY3VycmVudCAKc3RhdGUgb2YgdGhlIHVDLiBUaGUgb25lcyBhZGRlZCBoZXJlIGFy
ZSBhYm91dCB3aGF0IHdlIHBsYW4gdG8gZG8gd2l0aCAKdGhlIEd1Qywgbm90IHdoYXQgdGhlIGN1
cnJlbnQgc3RhdGUgaXMsIHNvIEkgZGlzYWdyZWUgdGhhdCBpdCBtYWtlcyAKc2Vuc2UgdG8gYWRk
ICJydW5uaW5nIiBoZXJlLgoKPiAKPiBBbHNvLCBpdCB3b3VsZCBiZSBnb29kIHRvIGluY2x1ZGUg
dGhlIGFjdHVhbCBmdW5jdGlvbiBuYW1lcyB0aGVtc2VsdmVzLiAKPiBUaGF0IHdheSBpZiBzb21l
b25lIHNlYXJjaGVzIG9uICdpbnRlbF91Y191c2VzX2d1YycsIGZvciBleGFtcGxlLCB0aGV5IAo+
IHdpbGwgZmluZCB0aGlzIGRlc2NyaXB0aW9uLiBFc3BlY2lhbGx5IGFzIHNlYXJjaGluZyBmb3Ig
dGhlbSBieSBlaXRoZXIgCj4gdGV4dCBvciBzeW1ib2wgd2lsbCBub3QgZmluZCB0aGUgZGVmaW5p
dGlvbiEKPiAKCkhvdyBkbyB5b3Ugd2FudCB0aGVtIGFkZGVkPyBXZSBkb24ndCB1c3VhbGx5IGRv
IHRoYXQgZm9yIGF1dG9nZW5lcmF0ZWQgCmZ1bmN0aW9ucyAodGhlcmUgaXMgYW4gZXhhbXBsZSBv
ZiB0aGF0IGZ1cnRoZXIgZG93biBpbiB0aGlzIGZpbGUpLgoKRGFuaWVsZQoKPiBXaXRoIHRoYXQg
dHdlYWs6Cj4gUmV2aWV3ZWQtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRl
bC5jb20+Cj4gCj4gCj4+ICsgKi8KPj4gKwo+PiDCoCAjZGVmaW5lIF9fdWNfc3RhdGVfY2hlY2tl
cih4LCBzdGF0ZSwgcmVxdWlyZWQpIFwKPj4gwqAgc3RhdGljIGlubGluZSBib29sIGludGVsX3Vj
XyMjc3RhdGUjI18jI3goc3RydWN0IGludGVsX3VjICp1YykgXAo+PiDCoCB7IFwKPj4gQEAgLTQ4
LDcgKzY5LDggQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX3VjXyMjc3RhdGUjI18jI3goc3Ry
dWN0IAo+PiBpbnRlbF91YyAqdWMpIFwKPj4gwqAgI2RlZmluZSB1Y19zdGF0ZV9jaGVja2Vycyh4
KSBcCj4+IMKgIF9fdWNfc3RhdGVfY2hlY2tlcih4LCBzdXBwb3J0cywgc3VwcG9ydGVkKSBcCj4+
IC1fX3VjX3N0YXRlX2NoZWNrZXIoeCwgdXNlcywgZW5hYmxlZCkKPj4gK19fdWNfc3RhdGVfY2hl
Y2tlcih4LCB3YW50cywgd2FudGVkKSBcCj4+ICtfX3VjX3N0YXRlX2NoZWNrZXIoeCwgdXNlcywg
dXNlZCkKPj4gwqAgdWNfc3RhdGVfY2hlY2tlcnMoZ3VjKTsKPj4gwqAgdWNfc3RhdGVfY2hlY2tl
cnMoaHVjKTsKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
