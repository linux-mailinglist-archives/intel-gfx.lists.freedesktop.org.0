Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6963415CEFB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 01:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097966E048;
	Fri, 14 Feb 2020 00:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A29E6E048
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 00:21:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 16:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="238205839"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 13 Feb 2020 16:21:25 -0800
To: John Harrison <John.C.Harrison@Intel.com>, intel-gfx@lists.freedesktop.org
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
 <20200212003124.33844-7-daniele.ceraolospurio@intel.com>
 <fbdaffb1-22a2-a693-4e29-f35e31083000@Intel.com>
 <9a678e60-8063-2df9-9fe3-018b2191b083@intel.com>
 <41a8a56d-4c06-27b6-de91-6211bcc5cbda@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <6e4c0794-1a42-a4a8-a620-511ee5b86a10@intel.com>
Date: Thu, 13 Feb 2020 16:21:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <41a8a56d-4c06-27b6-de91-6211bcc5cbda@Intel.com>
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

CgpPbiAyLzEzLzIwIDQ6MDQgUE0sIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4gT24gMi8xMy8yMDIw
IDE1OjQ0LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+PiBPbiAyLzEzLzIwIDM6MzYg
UE0sIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4+PiBPbiAyLzExLzIwMjAgMTY6MzEsIERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+Pj4gVG8gYmUgYWJsZSB0byBzZXR1cCBHdUMgc3VibWlz
c2lvbiBmdW5jdGlvbnMgZHVyaW5nIGVuZ2luZSBpbml0IHdlIG5lZWQKPj4+PiB0byBjb21taXQg
dG8gdXNpbmcgR3VDIGFzIHNvb24gYXMgcG9zc2libGUuCj4+Pj4gQ3VycmVudGx5LCB0aGUgb25s
eSB0aGluZyB0aGF0IGNhbiBzdG9wIHVzIGZyb20gdXNpbmcgdGhlCj4+Pj4gbWljcm9jb250cm9s
bGVycyBvbmNlIHdlJ3ZlIGZldGNoZWQgdGhlIGJsb2JzIGlzIGEgZnVuZGFtZW50YWwKPj4+PiBl
cnJvciAoZS5nLiBPT00pOyBnaXZlbiB0aGF0IGlmIHdlIGhpdCBzdWNoIGFuIGVycm9yIHdlIGNh
bid0IHJlYWxseQo+Pj4+IGZhbGwtYmFjayB0byBhbnl0aGluZywgd2UgY2FuICJvZmZpY2lhbGl6
ZSIgdGhlIEZXIGZldGNoaW5nIGNvbXBsZXRpb24KPj4+PiBhcyB0aGUgbW9tZW50IGF0IHdoaWNo
IHdlJ3JlIGNvbW1pdHRpbmcgdG8gdXNpbmcgR3VDLgo+Pj4+Cj4+Pj4gVG8gYmV0dGVyIGRpZmZl
cmVudGlhdGUgdGhpcyBjYXNlLCB0aGUgdXNlc19ndWMgY2hlY2ssIHdoaWNoIGluZGljYXRlcwo+
Pj4+IHRoYXQgR3VDIGlzIHN1cHBvcnRlZCBhbmQgd2FzIHNlbGVjdGVkIGluIG1vZHBhcmFtLCBp
cyByZW5hbWVkIHRvCj4+Pj4gd2FudHNfZ3VjIGFuZCBhIG5ldyB1c2VzX2d1YyBpcyBpbnRyb2R1
Y2VkIHRvIHJlcHJlc2VudCB0aGUgY2FzZSB3ZXJlCj4+Pj4gd2UncmUgY29tbWl0dGVkIHRvIHVz
aW5nIHRoZSBHdUMuIE5vdGUgdGhhdCB1c2VzX2d1YyBkb2VzIHN0aWxsIG5vdCAKPj4+PiBpbXBs
eQo+Pj4+IHRoYXQgdGhlIGJsb2IgaXMgYWN0dWFsbHkgbG9hZGVkIG9uIHRoZSBIVyAoaXNfcnVu
bmluZyBpcyB0aGUgY2hlY2sgZm9yCj4+Pj4gdGhhdCkuIEFsc28sIHNpbmNlIHdlIG5lZWQgdG8g
aGF2ZSBhdHRlbXB0ZWQgdGhlIGZldGNoIGZvciB0aGUgcmVzdWx0Cj4+Pj4gb2YgdXNlc19ndWMg
dG8gYmUgbWVhbmluZ2Z1bCwgd2UgbmVlZCB0byBtYWtlIHN1cmUgd2UndmUgbW92ZWQgYXdheQo+
Pj4+IGZyb20gSU5URUxfVUNfRklSTVdBUkVfU0VMRUNURUQuCj4+Pj4KPj4+PiBBbGwgdGhlIEd1
QyBjaGFuZ2VzIGhhdmUgYmVlbiBtaXJyb3JlZCBvbiB0aGUgSHVDIGZvciBjb2hlcmVuY3kuCj4+
Pj4KPj4+PiB2Mjogc3BsaXQgZmV0Y2ggcmV0dXJuIGNoYW5nZXMgYW5kIG5ldyBtYWNyb3MgdG8g
dGhlaXIgb3duIHBhdGNoZXMsCj4+Pj4gwqDCoMKgwqAgc3VwcG9ydCBIdUMgb25seSBpZiBHdUMg
aXMgd2FudGVkLCBpbXByb3ZlICJ1c2VkIiBzdGF0ZQo+Pj4+IMKgwqDCoMKgIGRlc2NyaXB0aW9u
IChNaWNoYWwpCj4+Pj4KPj4+PiB2Mzogcy93YW50c19odWMvdXNlc19odWMgaW4gdWNfaW5pdF93
b3BjbQo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBsaW51eC5pbnRlbC5jb20+Cj4+Pj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgo+Pj4+IENjOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlz
b25ASW50ZWwuY29tPgo+Pj4+IENjOiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVs
LmNvbT4KPj4+PiBSZXZpZXdlZC1ieTogRmVybmFuZG8gUGFjaGVjbyA8ZmVybmFuZG8ucGFjaGVj
b0BpbnRlbC5jb20+ICN2MQo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5owqDCoMKgIHzCoCA4ICsrKysrKystCj4+Pj4gwqAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmjCoMKgwqAgfMKgIDggKysrKysrKy0KPj4+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYyB8wqAgMiArLQo+Pj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmPCoMKgwqDCoCB8IDIxICsrKysr
KysrKysrLS0tLS0tLS0tCj4+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWMuaMKgwqDCoMKgIHwgMjQgCj4+Pj4gKysrKysrKysrKysrKysrKysrKysrKy0KPj4+PiDCoCA1
IGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pj4+Cj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oIAo+
Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKPj4+PiBpbmRleCA2
NjhiMDY3YjcxZTIuLmI1MWFkYWFjODc1MiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Yy5oCj4+Pj4gQEAgLTE0MywxMSArMTQzLDE3IEBAIHN0YXRpYyBpbmxp
bmUgYm9vbCAKPj4+PiBpbnRlbF9ndWNfaXNfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1
YykKPj4+PiDCoMKgwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19zdXBwb3J0ZWQoJmd1Yy0+
ZncpOwo+Pj4+IMKgIH0KPj4+PiAtc3RhdGljIGlubGluZSBib29sIGludGVsX2d1Y19pc19lbmFi
bGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4+PiArc3RhdGljIGlubGluZSBib29sIGludGVs
X2d1Y19pc193YW50ZWQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+Pj4+IMKgIHsKPj4+PiDCoMKg
wqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19lbmFibGVkKCZndWMtPmZ3KTsKPj4+PiDCoCB9
Cj4+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndWNfaXNfdXNlZChzdHJ1Y3QgaW50ZWxf
Z3VjICpndWMpCj4+Pj4gK3sKPj4+PiArwqDCoMKgIEdFTV9CVUdfT04oX19pbnRlbF91Y19md19z
dGF0dXMoJmd1Yy0+ZncpID09IAo+Pj4+IElOVEVMX1VDX0ZJUk1XQVJFX1NFTEVDVEVEKTsKPj4+
PiArwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19hdmFpbGFibGUoJmd1Yy0+ZncpOwo+Pj4+
ICt9Cj4+Pj4gKwo+Pj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndWNfaXNfZndfcnVu
bmluZyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+Pj4gwqAgewo+Pj4+IMKgwqDCoMKgwqAgcmV0
dXJuIGludGVsX3VjX2Z3X2lzX3J1bm5pbmcoJmd1Yy0+ZncpOwo+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaCAKPj4+PiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5oCj4+Pj4gaW5kZXggNjQ0YzA1OWZlMDFkLi5hNDBi
OWNmYzZjMjIgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfaHVjLmgKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMu
aAo+Pj4+IEBAIC00MSwxMSArNDEsMTcgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX2h1Y19p
c19zdXBwb3J0ZWQoc3RydWN0IAo+Pj4+IGludGVsX2h1YyAqaHVjKQo+Pj4+IMKgwqDCoMKgwqAg
cmV0dXJuIGludGVsX3VjX2Z3X2lzX3N1cHBvcnRlZCgmaHVjLT5mdyk7Cj4+Pj4gwqAgfQo+Pj4+
IC1zdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX2VuYWJsZWQoc3RydWN0IGludGVsX2h1
YyAqaHVjKQo+Pj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX3dhbnRlZChzdHJ1
Y3QgaW50ZWxfaHVjICpodWMpCj4+Pj4gwqAgewo+Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIGludGVs
X3VjX2Z3X2lzX2VuYWJsZWQoJmh1Yy0+ZncpOwo+Pj4+IMKgIH0KPj4+PiArc3RhdGljIGlubGlu
ZSBib29sIGludGVsX2h1Y19pc191c2VkKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKPj4+PiArewo+
Pj4+ICvCoMKgwqAgR0VNX0JVR19PTihfX2ludGVsX3VjX2Z3X3N0YXR1cygmaHVjLT5mdykgPT0g
Cj4+Pj4gSU5URUxfVUNfRklSTVdBUkVfU0VMRUNURUQpOwo+Pj4+ICvCoMKgwqAgcmV0dXJuIGlu
dGVsX3VjX2Z3X2lzX2F2YWlsYWJsZSgmaHVjLT5mdyk7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gwqAg
c3RhdGljIGlubGluZSBib29sIGludGVsX2h1Y19pc19hdXRoZW50aWNhdGVkKHN0cnVjdCBpbnRl
bF9odWMgKmh1YykKPj4+PiDCoCB7Cj4+Pj4gwqDCoMKgwqDCoCByZXR1cm4gaW50ZWxfdWNfZndf
aXNfcnVubmluZygmaHVjLT5mdyk7Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jIAo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfaHVjX2Z3LmMKPj4+PiBpbmRleCBlZWUxOTNiZjJjYzQuLjljZGY0Y2JlNjkxYyAx
MDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncu
Ywo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCj4+
Pj4gQEAgLTIwLDcgKzIwLDcgQEAgdm9pZCBpbnRlbF9odWNfZndfaW5pdF9lYXJseShzdHJ1Y3Qg
aW50ZWxfaHVjICpodWMpCj4+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGd0LT5pOTE1Owo+Pj4+IMKgwqDCoMKgwqAgaW50ZWxfdWNfZndfaW5pdF9lYXJseSgm
aHVjLT5mdywgSU5URUxfVUNfRldfVFlQRV9IVUMsCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpbnRlbF91Y191c2VzX2d1Yyh1YyksCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF91Y193YW50c19ndWModWMpLAo+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSU5URUxfSU5GTyhpOTE1KS0+
cGxhdGZvcm0sIElOVEVMX1JFVklEKGk5MTUpKTsKPj4+PiDCoCB9Cj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgCj4+Pj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+Pj4gaW5kZXggYWZmYzRkNmY5ZWFkLi41ODI1
YTZjM2UwYTAgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMK
Pj4+PiBAQCAtNDgsMTcgKzQ4LDE3IEBAIHN0YXRpYyB2b2lkIF9fY29uZmlybV9vcHRpb25zKHN0
cnVjdCBpbnRlbF91YyAqdWMpCj4+Pj4gwqDCoMKgwqDCoCBEUk1fREVWX0RFQlVHX0RSSVZFUihp
OTE1LT5kcm0uZGV2LAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
ZW5hYmxlX2d1Yz0lZCAoZ3VjOiVzIHN1Ym1pc3Npb246JXMgaHVjOiVzKVxuIiwKPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1
YywKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgeWVzbm8oaW50ZWxfdWNf
dXNlc19ndWModWMpKSwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgeWVz
bm8oaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSksCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjX3N1Ym1pc3Npb24odWMpKSwKPj4+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgeWVzbm8oaW50ZWxfdWNfdXNlc19o
dWModWMpKSk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHllc25vKGlu
dGVsX3VjX3dhbnRzX2h1Yyh1YykpKTsKPj4+PiDCoMKgwqDCoMKgIGlmIChpOTE1X21vZHBhcmFt
cy5lbmFibGVfZ3VjID09IC0xKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+Pj4g
wqDCoMKgwqDCoCBpZiAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA9PSAwKSB7Cj4+Pj4gLcKg
wqDCoMKgwqDCoMKgIEdFTV9CVUdfT04oaW50ZWxfdWNfdXNlc19ndWModWMpKTsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y193YW50c19ndWModWMpKTsKPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKHVj
KSk7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIEdFTV9CVUdfT04oaW50ZWxfdWNfdXNlc19odWModWMp
KTsKPj4+PiArwqDCoMKgwqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91Y193YW50c19odWModWMp
KTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4+IMKgwqDCoMKgwqAgfQo+Pj4+
IEBAIC05Myw3ICs5Myw3IEBAIHZvaWQgaW50ZWxfdWNfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxf
dWMgKnVjKQo+Pj4+IMKgwqDCoMKgwqAgX19jb25maXJtX29wdGlvbnModWMpOwo+Pj4+IC3CoMKg
wqAgaWYgKGludGVsX3VjX3VzZXNfZ3VjKHVjKSkKPj4+PiArwqDCoMKgIGlmIChpbnRlbF91Y193
YW50c19ndWModWMpKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB1Yy0+b3BzID0gJnVjX29wc19v
bjsKPj4+PiDCoMKgwqDCoMKgIGVsc2UKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdWMtPm9wcyA9
ICZ1Y19vcHNfb2ZmOwo+Pj4+IEBAIC0yNTcsMTMgKzI1NywxMyBAQCBzdGF0aWMgdm9pZCBfX3Vj
X2ZldGNoX2Zpcm13YXJlcyhzdHJ1Y3QgCj4+Pj4gaW50ZWxfdWMgKnVjKQo+Pj4+IMKgIHsKPj4+
PiDCoMKgwqDCoMKgIGludCBlcnI7Cj4+Pj4gLcKgwqDCoCBHRU1fQlVHX09OKCFpbnRlbF91Y191
c2VzX2d1Yyh1YykpOwo+Pj4+ICvCoMKgwqAgR0VNX0JVR19PTighaW50ZWxfdWNfd2FudHNfZ3Vj
KHVjKSk7Cj4+Pj4gwqDCoMKgwqDCoCBlcnIgPSBpbnRlbF91Y19md19mZXRjaCgmdWMtPmd1Yy5m
dyk7Cj4+Pj4gwqDCoMKgwqDCoCBpZiAoZXJyKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4+Pj4gLcKgwqDCoCBpZiAoaW50ZWxfdWNfdXNlc19odWModWMpKQo+Pj4+ICvCoMKgwqAg
aWYgKGludGVsX3VjX3dhbnRzX2h1Yyh1YykpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGludGVs
X3VjX2Z3X2ZldGNoKCZ1Yy0+aHVjLmZ3KTsKPj4+PiDCoCB9Cj4+Pj4gQEAgLTI3OSw3ICsyNzks
MTAgQEAgc3RhdGljIHZvaWQgX191Y19pbml0KHN0cnVjdCBpbnRlbF91YyAqdWMpCj4+Pj4gwqDC
oMKgwqDCoCBzdHJ1Y3QgaW50ZWxfaHVjICpodWMgPSAmdWMtPmh1YzsKPj4+PiDCoMKgwqDCoMKg
IGludCByZXQ7Cj4+Pj4gLcKgwqDCoCBHRU1fQlVHX09OKCFpbnRlbF91Y191c2VzX2d1Yyh1Yykp
Owo+Pj4+ICvCoMKgwqAgR0VNX0JVR19PTighaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSk7Cj4+Pj4g
Kwo+Pj4+ICvCoMKgwqAgaWYgKCFpbnRlbF91Y191c2VzX2d1Yyh1YykpCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybjsKPj4+PiDCoMKgwqDCoMKgIC8qIFhYWDogR3VDIHN1Ym1pc3Npb24gaXMg
dW5hdmFpbGFibGUgZm9yIG5vdyAqLwo+Pj4+IMKgwqDCoMKgwqAgR0VNX0JVR19PTihpbnRlbF91
Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbih1YykpOwo+Pj4+IEBAIC00MDIsNyArNDA1LDcgQEAg
c3RhdGljIGludCBfX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKPj4+PiDCoMKgwqDC
oMKgIGludCByZXQsIGF0dGVtcHRzOwo+Pj4+IMKgwqDCoMKgwqAgR0VNX0JVR19PTighaW50ZWxf
dWNfc3VwcG9ydHNfZ3VjKHVjKSk7Cj4+Pj4gLcKgwqDCoCBHRU1fQlVHX09OKCFpbnRlbF91Y191
c2VzX2d1Yyh1YykpOwo+Pj4+ICvCoMKgwqAgR0VNX0JVR19PTighaW50ZWxfdWNfd2FudHNfZ3Vj
KHVjKSk7Cj4+Pj4gwqDCoMKgwqDCoCBpZiAoIWludGVsX3VjX2Z3X2lzX2F2YWlsYWJsZSgmZ3Vj
LT5mdykpIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gX191Y19jaGVja19odyh1Yykg
fHwKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
aCAKPj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmgKPj4+PiBpbmRl
eCAyY2U5OTNjZWI2MGEuLmE0MWFhZjM1M2Y4OCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuaAo+Pj4+IEBAIC00MCw2ICs0MCwyNyBAQCB2b2lkIGludGVsX3Vj
X3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfdWMgKnVjKTsKPj4+PiDCoCBpbnQgaW50ZWxf
dWNfcmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMpOwo+Pj4+IMKgIGludCBpbnRlbF91Y19ydW50
aW1lX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfdWMgKnVjKTsKPj4+PiArLyoKPj4+PiArICogV2UgbmVl
ZCB0byBrbm93IGFzIGVhcmx5IGFzIHBvc3NpYmxlIGlmIHdlJ3JlIGdvaW5nIHRvIHVzZSBHdUMg
Cj4+Pj4gb3Igbm90IHRvCj4+Pj4gKyAqIHRha2UgdGhlIGNvcnJlY3Qgc2V0dXAgcGF0aHMuIEFk
ZGl0aW9uYWxseSwgb25jZSB3ZSd2ZSBzdGFydGVkIAo+Pj4+IGxvYWRpbmcgdGhlCj4+Pj4gKyAq
IEd1QywgaXQgaXMgdW5zYWZlIHRvIGtlZXAgZXhlY3V0aW5nIHdpdGhvdXQgaXQgYmVjYXVzZSBz
b21lIAo+Pj4+IHBhcnRzIG9mIHRoZSBIVywKPj4+PiArICogYSBzdWJzZXQgb2Ygd2hpY2ggaXMg
bm90IGNsZWFuZWQgb24gR1QgcmVzZXQsIHdpbGwgc3RhcnQgCj4+Pj4gZXhwZWN0aW5nIHRoZSBH
dUMgRlcKPj4+PiArICogdG8gYmUgcnVubmluZy4KPj4+PiArICogVG8gc29sdmUgYm90aCB0aGVz
ZSByZXF1aXJlbWVudHMsIHdlIGNvbW1pdCB0byB1c2luZyB0aGUgCj4+Pj4gbWljcm9jb250cm9s
bGVycyBpZgo+Pj4+ICsgKiB0aGUgcmVsZXZhbnQgbW9kcGFyYW0gaXMgc2V0IGFuZCB0aGUgYmxv
YnMgYXJlIGZvdW5kIG9uIHRoZSAKPj4+PiBzeXN0ZW0uIEF0IHRoaXMKPj4+PiArICogc3RhZ2Us
IHRoZSBvbmx5IHRoaW5nIHRoYXQgY2FuIHN0b3AgdXMgZnJvbSBhdHRlbXB0aW5nIHRvIGxvYWQg
Cj4+Pj4gdGhlIGJsb2JzIG9uCj4+Pj4gKyAqIHRoZSBIVyBhbmQgdXNlIHRoZW0gaXMgYSBmdW5k
YW1lbnRhbCBpc3N1ZSAoZS5nLiBubyBtZW1vcnkgZm9yIG91cgo+Pj4+ICsgKiBzdHJ1Y3R1cmVz
KTsgaWYgd2UgaGl0IHN1Y2ggYSBwcm9ibGVtIGR1cmluZyBkcml2ZXIgbG9hZCB3ZSdyZSAKPj4+
PiBicm9rZW4gZXZlbgo+Pj4+ICsgKiB3aXRob3V0IEd1Qywgc28gdGhlcmUgaXMgbm8gcG9pbnQg
aW4gdHJ5aW5nIHRvIGZhbGwgYmFjay4KPj4+PiArICoKPj4+PiArICogR2l2ZW4gdGhlIGFib3Zl
LCB3ZSBjYW4gYmUgaW4gb25lIG9mIDQgc3RhdGVzLCB3aXRoIHRoZSBsYXN0IG9uZSAKPj4+PiBp
bXBseWluZwo+Pj4+ICsgKiB3ZSdyZSBjb21taXR0ZWQgdG8gdXNpbmcgdGhlIG1pY3JvY29udHJv
bGxlcjoKPj4+PiArICogLSBOb3Qgc3VwcG9ydGVkOiBub3QgYXZhaWxhYmxlIGluIEhXIGFuZC9v
ciBmaXJtd2FyZSBub3QgZGVmaW5lZC4KPj4+PiArICogLSBTdXBwb3J0ZWQ6IGF2YWlsYWJsZSBp
biBIVyBhbmQgZmlybXdhcmUgZGVmaW5lZC4KPj4+PiArICogLSBXYW50ZWQ6IHN1cHBvcnRlZCAr
IGVuYWJsZWQgaW4gbW9kcGFyYW0uCj4+Pj4gKyAqIC0gSW4gdXNlOiB3YW50ZWQgKyBmaXJtd2Fy
ZSBmb3VuZCBvbiB0aGUgc3lzdGVtIGFuZCBzdWNjZXNzZnVsbHkgCj4+Pj4gZmV0Y2hlZC4KPj4+
IFNob3VsZCBiZSBhbm90aGVyIGxpbmUgZm9yICdSdW5uaW5nJz8gSSBndWVzcyB0aGUgZGVmaW5p
dGlvbiBvZiAKPj4+ICdpc19ydW5uaW5nJyBjb21lcyBmcm9tIGVsc2V3aGVyZSBidXQgaXQgd291
bGQgbWFrZSBzZW5zZSB0byBpbmNsdWRlIAo+Pj4gaXQgaW4gdGhlIGRlc2NyaXB0aW9uIGhlcmUu
Cj4+Cj4+ICJSdW5uaW5nIiBiZWxvbmdzIHRvIGEgZGlmZmVyZW50IHNldCBvZiBzdGF0ZXMsIGlu
ZGljYXRpbmcgdGhlIGN1cnJlbnQgCj4+IHN0YXRlIG9mIHRoZSB1Qy4gVGhlIG9uZXMgYWRkZWQg
aGVyZSBhcmUgYWJvdXQgd2hhdCB3ZSBwbGFuIHRvIGRvIHdpdGggCj4+IHRoZSBHdUMsIG5vdCB3
aGF0IHRoZSBjdXJyZW50IHN0YXRlIGlzLCBzbyBJIGRpc2FncmVlIHRoYXQgaXQgbWFrZXMgCj4+
IHNlbnNlIHRvIGFkZCAicnVubmluZyIgaGVyZS4KPj4KPj4+Cj4+PiBBbHNvLCBpdCB3b3VsZCBi
ZSBnb29kIHRvIGluY2x1ZGUgdGhlIGFjdHVhbCBmdW5jdGlvbiBuYW1lcyAKPj4+IHRoZW1zZWx2
ZXMuIFRoYXQgd2F5IGlmIHNvbWVvbmUgc2VhcmNoZXMgb24gJ2ludGVsX3VjX3VzZXNfZ3VjJywg
Zm9yIAo+Pj4gZXhhbXBsZSwgdGhleSB3aWxsIGZpbmQgdGhpcyBkZXNjcmlwdGlvbi4gRXNwZWNp
YWxseSBhcyBzZWFyY2hpbmcgZm9yIAo+Pj4gdGhlbSBieSBlaXRoZXIgdGV4dCBvciBzeW1ib2wg
d2lsbCBub3QgZmluZCB0aGUgZGVmaW5pdGlvbiEKPj4+Cj4+Cj4+IEhvdyBkbyB5b3Ugd2FudCB0
aGVtIGFkZGVkPyBXZSBkb24ndCB1c3VhbGx5IGRvIHRoYXQgZm9yIGF1dG9nZW5lcmF0ZWQgCj4+
IGZ1bmN0aW9ucyAodGhlcmUgaXMgYW4gZXhhbXBsZSBvZiB0aGF0IGZ1cnRoZXIgZG93biBpbiB0
aGlzIGZpbGUpLgo+Pgo+PiBEYW5pZWxlCj4+Cj4gQW4gZXhhbXBsZSBvZiBkb2N1bWVudGF0aW9u
PyBPciBhbiBleGFtcGxlIG9mIG1vcmUgYXV0b2dlbmVyYXRlZCAKPiBmdW5jdGlvbnM/IFRoZSBp
bnRlbF91Yy5oIGN1cnJlbnRseSBpbiB0aGUgdHJlZSBoYXMgbm8gZG9jdW1lbnRhdGlvbiBpbiAK
PiBpdCBhdCBhbGwhIEkgd2FzIGp1c3QgdGhpbmtpbmcgdGhhdCBJIHBlcnNvbmFsbHkgZ2V0IGZy
dXN0cmF0ZWQgd2hlbiBJIAo+IHRyeSB0byBzZWFyY2ggZm9yIGEgZnVuY3Rpb24gZGVmaW5pdGlv
biBhbmQgY2FuJ3QgZmluZCBhbnl0aGluZyBiZWNhdXNlIAo+IGl0IGlzIHNvbWUgZmFuY3kgYXV0
b2dlbmVyYXRlZCB0aGluZyB3aXRoIG5vIGRvY3VtZW50YXRpb24gYXQgYWxsLiBJZiAKPiB5b3Ug
ZmVlbCB0aGF0IGluY2x1ZGluZyB0aGUgZXhwYW5kZWQgbmFtZXMgaXMgdG9vIHZlcmJvc2UgdGhl
biBmaW5lLCAKPiBpdCdzIGhhcmRseSBhIHNob3cgc3RvcHBlciBpc3N1ZS4gQXQgbGVhc3QgeW91
IGhhdmUgYWRkZWQgc29tZSAKPiBkb2N1bWVudGF0aW9uIGFib3V0IHdoYXQgdGhlIHZhcmlvdXMg
c3RhdGVzIG1lYW4hCj4gCgpJIG1lYW50IHRvIGFzayBob3cgZGlkIHlvdSB3YW50IHRoZW0gZG9j
dW1lbnRlZC4gVGhlcmUgaXNuJ3QgYSAxOjEgCm1hcHBpbmcgYmV0d2VlbiB0aGUgZnVuY3Rpb24g
YW5kIHRoZSBzdGF0ZXMgKDQgdGhlb3JldGljYWwgc3RhdGVzLCBidXQgMyAKYWN0dWFsIHJlY29y
ZGVkIHN0YXRlcy9mdW5jdGlvbnMpIGFuZCB0aGUgbmFtZXMgYXJlIHN1YmplY3QgdG8gY2hhbmdl
IGFzIAp3ZWxsLCB3aGljaCBpcyBkaWZmaWN1bHQgdG8gbWlycm9yIGluIGRldGFjaGVkIGRvY3Vt
ZW50YXRpb24uIEFuZCB5ZXMsIAppdCBkb2VzIGFsc28gZmVlbCBhIGJpdCB0b28gdmVyYm9zZSB0
byBtZSA6UAoKRGFuaWVsZQoKPiBKb2huLgo+IAo+Pj4gV2l0aCB0aGF0IHR3ZWFrOgo+Pj4gUmV2
aWV3ZWQtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4+Pgo+
Pj4KPj4+PiArICovCj4+Pj4gKwo+Pj4+IMKgICNkZWZpbmUgX191Y19zdGF0ZV9jaGVja2VyKHgs
IHN0YXRlLCByZXF1aXJlZCkgXAo+Pj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF91Y18j
I3N0YXRlIyNfIyN4KHN0cnVjdCBpbnRlbF91YyAqdWMpIFwKPj4+PiDCoCB7IFwKPj4+PiBAQCAt
NDgsNyArNjksOCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfIyNzdGF0ZSMjXyMjeChz
dHJ1Y3QgCj4+Pj4gaW50ZWxfdWMgKnVjKSBcCj4+Pj4gwqAgI2RlZmluZSB1Y19zdGF0ZV9jaGVj
a2Vycyh4KSBcCj4+Pj4gwqAgX191Y19zdGF0ZV9jaGVja2VyKHgsIHN1cHBvcnRzLCBzdXBwb3J0
ZWQpIFwKPj4+PiAtX191Y19zdGF0ZV9jaGVja2VyKHgsIHVzZXMsIGVuYWJsZWQpCj4+Pj4gK19f
dWNfc3RhdGVfY2hlY2tlcih4LCB3YW50cywgd2FudGVkKSBcCj4+Pj4gK19fdWNfc3RhdGVfY2hl
Y2tlcih4LCB1c2VzLCB1c2VkKQo+Pj4+IMKgIHVjX3N0YXRlX2NoZWNrZXJzKGd1Yyk7Cj4+Pj4g
wqAgdWNfc3RhdGVfY2hlY2tlcnMoaHVjKTsKPj4+Cj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
