Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAECE073C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33206E492;
	Tue, 22 Oct 2019 15:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFC86E081;
 Tue, 22 Oct 2019 15:25:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 08:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,216,1569308400"; d="scan'208";a="227752578"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.252.151.246])
 ([10.252.151.246])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 08:25:28 -0700
To: Mihail Atanassov <Mihail.Atanassov@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
References: <20191022095946.29354-1-shashank.sharma@intel.com>
 <20191022095946.29354-2-shashank.sharma@intel.com>
 <1738058.hDiTJb8QWX@e123338-lin>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <950a59c1-f1a0-0fce-5d9c-700d87d5f97f@intel.com>
Date: Tue, 22 Oct 2019 20:55:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1738058.hDiTJb8QWX@e123338-lin>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Introduce scaling filter mode
 property
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gTWloYWlsLAoKVGhhbmtzIGZvciB5b3VyIHJldmlldywgbXkgY29tbWVudHMgaW5saW5l
LgoKT24gMTAvMjIvMjAxOSA2OjU2IFBNLCBNaWhhaWwgQXRhbmFzc292IHdyb3RlOgo+IEhpIFNo
YXNoYW5rLAo+Cj4gT24gVHVlc2RheSwgMjIgT2N0b2JlciAyMDE5IDEwOjU5OjQ0IEJTVCBTaGFz
aGFuayBTaGFybWEgd3JvdGU6Cj4+IFRoaXMgcGF0Y2ggYWRkcyBhIHNjYWxpbmcgZmlsdGVyIG1v
ZGUgcG9ycGVydHkKPj4gdG8gYWxsb3c6Cj4+IC0gQSBkcml2ZXIvSFcgdG8gc2hvd2Nhc2UgaXQn
cyBzY2FsaW5nIGZpbHRlciBjYXBhYmlsaXRpZXMuCj4+IC0gQSB1c2Vyc3BhY2UgdG8gcGljayBh
IGRlc2lyZWQgZWZmZWN0IHdoaWxlIHNjYWxpbmcuCj4+Cj4+IFRoaXMgb3B0aW9uIHdpbGwgYmUg
cGFydGljdWxhcmx5IHVzZWZ1bCBpbiB0aGUgc2NlbmFyaW9zIHdoZXJlCj4+IEludGVnZXIgbW9k
ZSBzY2FsaW5nIGlzIHBvc3NpYmxlLCBhbmQgYSBVSSBjbGllbnQgd2FudHMgdG8gcGljawo+PiBm
aWx0ZXJzIGxpa2UgTmVhcmVzdC1uZWlnaGJvciBhcHBsaWVkIGZvciBub24tYmx1cnJ5IG91dHB1
dHMuCj4+Cj4+IFRoZXJlIHdhcyBhIFJGQyBwYXRjaCBzZXJpZXMgcHVibGlzaGVkLCB0byBkaXNj
dXMgdGhlIHJlcXVlc3QgdG8gZW5hYmxlCj4+IEludGVnZXIgbW9kZSBzY2FsaW5nIGJ5IHNvbWUg
b2YgdGhlIGdhbWluZyBjb21tdW5pdGllcywgd2hpY2ggY2FuIGJlCj4+IGZvdW5kIGhlcmU6Cj4+
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjYxNzUvCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4K
Pj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jIHwgIDQgKysrKwo+
PiAgIGluY2x1ZGUvZHJtL2RybV9jcnRjLmggICAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysr
KysrKysrKysrKysrCj4+ICAgaW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmggICAgIHwgIDYg
KysrKysrCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2F0b21pY191YXBpLmMKPj4gaW5kZXggMGQ0NjZkM2IwODA5Li44ODMzMjk0NTNhODYg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMKPj4gQEAgLTQzNSw2ICs0MzUsOCBA
QCBzdGF0aWMgaW50IGRybV9hdG9taWNfY3J0Y19zZXRfcHJvcGVydHkoc3RydWN0IGRybV9jcnRj
ICpjcnRjLAo+PiAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+PiAgICAgICAgfSBlbHNlIGlm
IChwcm9wZXJ0eSA9PSBjb25maWctPnByb3BfdnJyX2VuYWJsZWQpIHsKPj4gICAgICAgICAgICAg
ICAgc3RhdGUtPnZycl9lbmFibGVkID0gdmFsOwo+PiArICAgICB9IGVsc2UgaWYgKHByb3BlcnR5
ID09IGNvbmZpZy0+c2NhbGluZ19maWx0ZXJfcHJvcGVydHkpIHsKPj4gKyAgICAgICAgICAgICBz
dGF0ZS0+c2NhbGluZ19maWx0ZXIgPSB2YWw7Cj4+ICAgICAgICB9IGVsc2UgaWYgKHByb3BlcnR5
ID09IGNvbmZpZy0+ZGVnYW1tYV9sdXRfcHJvcGVydHkpIHsKPj4gICAgICAgICAgICAgICAgcmV0
ID0gZHJtX2F0b21pY19yZXBsYWNlX3Byb3BlcnR5X2Jsb2JfZnJvbV9pZChkZXYsCj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZzdGF0ZS0+ZGVnYW1tYV9sdXQsCj4+
IEBAIC01MDMsNiArNTA1LDggQEAgZHJtX2F0b21pY19jcnRjX2dldF9wcm9wZXJ0eShzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMsCj4+ICAgICAgICAgICAgICAgICp2YWwgPSAoc3RhdGUtPmdhbW1hX2x1
dCkgPyBzdGF0ZS0+Z2FtbWFfbHV0LT5iYXNlLmlkIDogMDsKPj4gICAgICAgIGVsc2UgaWYgKHBy
b3BlcnR5ID09IGNvbmZpZy0+cHJvcF9vdXRfZmVuY2VfcHRyKQo+PiAgICAgICAgICAgICAgICAq
dmFsID0gMDsKPj4gKyAgICAgZWxzZSBpZiAocHJvcGVydHkgPT0gY29uZmlnLT5zY2FsaW5nX2Zp
bHRlcl9wcm9wZXJ0eSkKPj4gKyAgICAgICAgICAgICAqdmFsID0gc3RhdGUtPnNjYWxpbmdfZmls
dGVyOwo+PiAgICAgICAgZWxzZSBpZiAoY3J0Yy0+ZnVuY3MtPmF0b21pY19nZXRfcHJvcGVydHkp
Cj4+ICAgICAgICAgICAgICAgIHJldHVybiBjcnRjLT5mdW5jcy0+YXRvbWljX2dldF9wcm9wZXJ0
eShjcnRjLCBzdGF0ZSwgcHJvcGVydHksIHZhbCk7Cj4+ICAgICAgICBlbHNlCj4+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2RybS9kcm1fY3J0Yy5oIGIvaW5jbHVkZS9kcm0vZHJtX2NydGMuaAo+PiBp
bmRleCA1ZTliMTVhMGU4YzUuLjk0YzU1MDk0NzRhOCAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9k
cm0vZHJtX2NydGMuaAo+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fY3J0Yy5oCj4+IEBAIC01OCw2
ICs1OCwyNSBAQCBzdHJ1Y3QgZGV2aWNlX25vZGU7Cj4+ICAgc3RydWN0IGRtYV9mZW5jZTsKPj4g
ICBzdHJ1Y3QgZWRpZDsKPj4KPj4gK2VudW0gZHJtX3NjYWxpbmdfZmlsdGVycyB7Cj4+ICsgICAg
IERSTV9TQ0FMSU5HX0ZJTFRFUl9ERUZBVUxULAo+PiArICAgICBEUk1fU0NBTElOR19GSUxURVJf
TUVESVVNLAo+PiArICAgICBEUk1fU0NBTElOR19GSUxURVJfQklMSU5FQVIsCj4+ICsgICAgIERS
TV9TQ0FMSU5HX0ZJTFRFUl9OTiwKPj4gKyAgICAgRFJNX1NDQUxJTkdfRklMVEVSX05OX0lTX09O
TFksCj4+ICsgICAgIERSTV9TQ0FMSU5HX0ZJTFRFUl9FREdFX0VOSEFOQ0UsCj4gVGhpcyBvbmUg
bG9va3MgdG8gYmUgbWlzc2luZyBhIHN0cmluZ2lmaWVkIHZlcnNpb24gYmVsb3cuCk9oIHllcywg
aXQgZGlkLiBUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0Lgo+ICAgSnVzdCB3YW50ZWQKPiB0
byBqdW1wIGluIGVhcmx5IGFuZCBzdWdnZXN0IGRyb3BwaW5nIGl0IGZyb20gdGhlIHNjYWxpbmcg
ZmlsdGVyIGVudW0uCj4gRWRnZSBlbmhhbmNlbWVudCBpcyBvcnRob2dvbmFsIHRvIHRoZSBtb2Rl
IHVzZWQgZm9yIHNjYWxpbmcsIGF0IGxlYXN0Cj4gb24ga29tZWRhIEhXLCBzbyB3ZSB3b3VsZG4n
dCBiZSBhYmxlIHRvIG1ha2UgdGhlIGJlc3QgdXNlIG9mIHRoZQo+IHByb3BlcnR5IGluIGl0cyBj
dXJyZW50IGZvcm0uClllcywgVmlsbGUgYWxzbyBzdWdnZXN0ZWQgc2ltaWxhciwgSSBndWVzcyB3
ZSBjYW4gc3RhcnQgd2l0aCB0aGUgc21hbGxlciAKc2V0Lgo+Cj4+ICsgICAgIERSTV9TQ0FMSU5H
X0ZJTFRFUl9JTlZBTElELAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
cHJvcF9lbnVtX2xpc3QgZHJtX3NjYWxpbmdfZmlsdGVyX2VudW1fbGlzdFtdID0gewo+PiArICAg
ICB7IERSTV9TQ0FMSU5HX0ZJTFRFUl9ERUZBVUxULCAiRGVmYXVsdCIgfSwKPj4gKyAgICAgeyBE
Uk1fU0NBTElOR19GSUxURVJfTUVESVVNLCAiTWVkaXVtIiB9LAo+PiArICAgICB7IERSTV9TQ0FM
SU5HX0ZJTFRFUl9CSUxJTkVBUiwgIkJpbGluZWFyIiB9LAo+PiArICAgICB7IERSTV9TQ0FMSU5H
X0ZJTFRFUl9OTiwgIk5lYXJlc3QgTmVpZ2hib3IiIH0sCj4+ICsgICAgIHsgRFJNX1NDQUxJTkdf
RklMVEVSX05OX0lTX09OTFksICJJbnRlZ2VyIE1vZGUgU2NhbGluZyIgfSwKPj4gKyAgICAgeyBE
Uk1fU0NBTElOR19GSUxURVJfSU5WQUxJRCwgIkludmFsaWQiIH0sCj4+ICt9Owo+PiArCj4+ICAg
c3RhdGljIGlubGluZSBpbnQ2NF90IFU2NDJJNjQodWludDY0X3QgdmFsKQo+PiAgIHsKPj4gICAg
ICAgIHJldHVybiAoaW50NjRfdCkqKChpbnQ2NF90ICopJnZhbCk7Cj4+IEBAIC0yODMsNiArMzAy
LDEzIEBAIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSB7Cj4+ICAgICAgICAgKi8KPj4gICAgICAgIHUz
MiB0YXJnZXRfdmJsYW5rOwo+Pgo+PiArICAgICAvKioKPj4gKyAgICAgICogQHNjYWxpbmdfZmls
dGVyOgo+PiArICAgICAgKgo+PiArICAgICAgKiBTY2FsaW5nIGZpbHRlciBtb2RlIHRvIGJlIGFw
cGxpZWQKPj4gKyAgICAgICovCj4+ICsgICAgIHUzMiBzY2FsaW5nX2ZpbHRlcjsKPj4gKwo+PiAg
ICAgICAgLyoqCj4+ICAgICAgICAgKiBAYXN5bmNfZmxpcDoKPj4gICAgICAgICAqCj4+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9t
b2RlX2NvbmZpZy5oCj4+IGluZGV4IDNiY2JlMzAzMzlmMC4uZWZkNmZkNTU3NzBmIDEwMDY0NAo+
PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaAo+PiArKysgYi9pbmNsdWRlL2Ry
bS9kcm1fbW9kZV9jb25maWcuaAo+PiBAQCAtOTE0LDYgKzkxNCwxMiBAQCBzdHJ1Y3QgZHJtX21v
ZGVfY29uZmlnIHsKPj4gICAgICAgICAqLwo+PiAgICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAq
bW9kaWZpZXJzX3Byb3BlcnR5Owo+Pgo+PiArICAgICAvKioKPj4gKyAgICAgICogQHNjYWxpbmdf
ZmlsdGVyX3Byb3BlcnR5OiBDUlRDIHByb3BlcnR5IHRvIGFwcGx5IGEgcGFydGljdWxhciBmaWx0
ZXIKPiBBIHNjYWxpbmcgZmlsdGVyIG9wdGlvbiBjYW4gYWxzbyBiZSB1c2VmdWwgZm9yIHNjYWxp
bmcgaW5kaXZpZHVhbAo+IHBsYW5lcywgZG8geW91IGhhdmUgYW55IHBsYW5zIHRvIGV4dGVuZCB0
aGUgcHJvcGVydHkncyBhcHBsaWNhdGlvbnMKPiBpbiB0aGF0IGRpcmVjdGlvbj8KClllcywgdGhl
IHNlY29uZCBzdGFnZSBvZiBkZXZlbG9wbWVudCBzaG91bGQgY29udGFpbiB0aGUgcGxhbmUgbGV2
ZWwgCmZpbHRlcmluZyB0b28sIGJ1dCBhcyB5b3Uga25vdywgdGhhdCB3b3VsZCBiZSBhIGNvbXBs
ZXggdGhpbmcgdG8gaGFuZGxlLCAKYXMgcGxhbmVzIGFwcGx5IGZpbHRlciBwcmUtYmxlbmRpbmcu
IFdlIG5lZWQgdG8gZGlzY3VzIHRoYXQgKGluIGEgCnBhcmFsbGVsIHRocmVhZCA6KSkgaG93IHNo
b3VsZCB0aGF0IGxvb2sgbGlrZS4KCi0gU2hhc2hhbmsKCj4KPj4gKyAgICAgICogd2hpbGUgc2Nh
bGluZyBpbiBwYW5lbCBmaXR0ZXIgbW9kZS4KPj4gKyAgICAgICovCj4+ICsgICAgIHN0cnVjdCBk
cm1fcHJvcGVydHkgKnNjYWxpbmdfZmlsdGVyX3Byb3BlcnR5Owo+PiArCj4+ICAgICAgICAvKiBj
dXJzb3Igc2l6ZSAqLwo+PiAgICAgICAgdWludDMyX3QgY3Vyc29yX3dpZHRoLCBjdXJzb3JfaGVp
Z2h0Owo+Pgo+Pgo+Cj4gLS0KPiBNaWhhaWwKPgo+Cj4KPiBJTVBPUlRBTlQgTk9USUNFOiBUaGUg
Y29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBjb25maWRlbnRp
YWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSBhbmQgZG8g
bm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkgb3RoZXIgcGVyc29uLCB1c2UgaXQgZm9y
IGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRoZSBpbmZvcm1hdGlvbiBpbiBhbnkgbWVk
aXVtLiBUaGFuayB5b3UuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
