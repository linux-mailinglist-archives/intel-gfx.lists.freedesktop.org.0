Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A61348F7F5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 02:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABE36E1BB;
	Fri, 16 Aug 2019 00:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836EF6E1BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 00:21:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 17:21:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="201384141"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 15 Aug 2019 17:21:54 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7G0LraP013516; Fri, 16 Aug 2019 01:21:53 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190815171228.31920-3-michal.wajdeczko@intel.com>
 <20190815214841.17856-1-michal.wajdeczko@intel.com>
 <d3f8973f-8aa7-e7e3-6d44-30e42e6537d5@intel.com>
Date: Fri, 16 Aug 2019 02:21:53 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6k9yrtgxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <d3f8973f-8aa7-e7e3-6d44-30e42e6537d5@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/wopcm: Check WOPCM layout
 separately from calculations
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNiBBdWcgMjAxOSAwMjoxMDoyNiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4KPgo+IE9uIDgv
MTUvMTkgMjo0OCBQTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPj4gV2UgY2FuIGRvIFdPUENN
IHBhcnRpdGlvbmluZyB1c2luZyByb3VnaCBlc3RpbWF0ZXMgYW5kIGxpbWl0cwo+PiBhbmQgcGVy
Zm9ybSBkZXRhaWxlZCBjaGVjayBhcyBzZXBhcmF0ZSBzdGVwLgo+PiAgdjI6IG9vcHMhIHMvbWF4
L21pbgo+PiAgU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+Cj4+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgo+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMg
fCAxMDUgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
NzQgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCj4+ICBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyAgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd29wY20uYwo+PiBpbmRleCAyOTc1ZTAwZjU3ZjUuLjM5ZjI3NjRjYTNhOCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCj4+IEBAIC04Nyw3ICs4Nyw4IEBAIHZvaWQg
aW50ZWxfd29wY21faW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKQo+PiAgIAll
bHNlCj4+ICAgCQl3b3BjbS0+c2l6ZSA9IEdFTjlfV09QQ01fU0laRTsKPj4gICAtCURSTV9ERUJV
R19EUklWRVIoIldPUENNIHNpemU6ICV1S2lCXG4iLCB3b3BjbS0+c2l6ZSAvIDEwMjQpOwo+PiAr
CURSTV9ERVZfREVCVUdfRFJJVkVSKGk5MTUtPmRybS5kZXYsICJXT1BDTTogc2l6ZSAldUtpQlxu
IiwKPj4gKwkJCSAgICAgd29wY20tPnNpemUgLyBTWl8xSyk7Cj4+ICAgfQo+PiAgICAgc3RhdGlj
IGlubGluZSB1MzIgY29udGV4dF9yZXNlcnZlZF9zaXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICAKPj4gKmk5MTUpCj4+IEBAIC0xMzgsOSArMTM5LDkgQEAgc3RhdGljIGlubGluZSBpbnQgZ2Vu
OV9jaGVja19odWNfZndfZml0cyh1MzIgIAo+PiBndWNfd29wY21fc2l6ZSwgdTMyIGh1Y19md19z
aXplKQo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgLXN0YXRpYyBpbmxpbmUgaW50IGNoZWNr
X2h3X3Jlc3RyaWN0aW9uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiAtCQkJCSAg
ICAgICB1MzIgZ3VjX3dvcGNtX2Jhc2UsIHUzMiBndWNfd29wY21fc2l6ZSwKPj4gLQkJCQkgICAg
ICAgdTMyIGh1Y19md19zaXplKQo+PiArc3RhdGljIGlubGluZSBib29sIGNoZWNrX2h3X3Jlc3Ry
aWN0aW9ucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gKwkJCQkJIHUzMiBndWNf
d29wY21fYmFzZSwgdTMyIGd1Y193b3BjbV9zaXplLAo+PiArCQkJCQkgdTMyIGh1Y19md19zaXpl
KQo+PiAgIHsKPj4gICAJaW50IGVyciA9IDA7Cj4+ICAgQEAgLTE1MSw3ICsxNTIsNjQgQEAgc3Rh
dGljIGlubGluZSBpbnQgY2hlY2tfaHdfcmVzdHJpY3Rpb24oc3RydWN0ICAKPj4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKPj4gICAJICAgIChJU19HRU4oaTkxNSwgOSkgfHwgSVNfQ05MX1JFVklE
KGk5MTUsIENOTF9SRVZJRF9BMCwgIAo+PiBDTkxfUkVWSURfQTApKSkKPj4gICAJCWVyciA9IGdl
bjlfY2hlY2tfaHVjX2Z3X2ZpdHMoZ3VjX3dvcGNtX3NpemUsIGh1Y19md19zaXplKTsKPj4gICAt
CXJldHVybiBlcnI7Cj4+ICsJcmV0dXJuICFlcnI7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbmxp
bmUgYm9vbCBfX2NoZWNrX2xheW91dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMy
ICAKPj4gd29wY21fc2l6ZSwKPj4gKwkJCQkgIHUzMiBndWNfd29wY21fYmFzZSwgdTMyIGd1Y193
b3BjbV9zaXplLAo+PiArCQkJCSAgdTMyIGd1Y19md19zaXplLCB1MzIgaHVjX2Z3X3NpemUpCj4+
ICt7Cj4+ICsJY29uc3QgdTMyIGN0eF9yc3ZkID0gY29udGV4dF9yZXNlcnZlZF9zaXplKGk5MTUp
Owo+PiArCXUzMiBzaXplOwo+PiArCj4+ICsJaWYgKHVubGlrZWx5KGd1Y193b3BjbV9iYXNlID4g
d29wY21fc2l6ZSkpIHsKPj4gKwkJZGV2X2VycihpOTE1LT5kcm0uZGV2LAo+PiArCQkJIldPUENN
OiBpbnZhbGlkIEd1QyByZWdpb24gYmFzZTogJXVLID4gJXVLXG4iLAo+PiArCQkJZ3VjX3dvcGNt
X2Jhc2UgLyBTWl8xSywgd29wY21fc2l6ZSAvIFNaXzFLKTsKPj4gKwkJcmV0dXJuIGZhbHNlOwo+
PiArCX0KPj4gKwo+PiArCXNpemUgPSB3b3BjbV9zaXplIC0gY3R4X3JzdmQ7Cj4+ICsJaWYgKHVu
bGlrZWx5KGd1Y193b3BjbV9iYXNlID4gc2l6ZSkpIHsKPj4gKwkJZGV2X2VycihpOTE1LT5kcm0u
ZGV2LAo+PiArCQkJIldPUENNOiBpbnZhbGlkIEd1QyByZWdpb24gYmFzZTogJXVLID4gJXVLXG4i
LAo+PiArCQkJZ3VjX3dvcGNtX2Jhc2UgLyBTWl8xSywgc2l6ZSAvIFNaXzFLKTsKPj4gKwkJcmV0
dXJuIGZhbHNlOwo+PiArCX0KPj4gKwo+PiArCWlmICh1bmxpa2VseShndWNfd29wY21fc2l6ZSA+
IHdvcGNtX3NpemUpKSB7Cj4+ICsJCWRldl9lcnIoaTkxNS0+ZHJtLmRldiwKPj4gKwkJCSJXT1BD
TTogaW52YWxpZCBHdUMgcmVnaW9uIHNpemU6ICV1SyA+ICV1S1xuIiwKPj4gKwkJCWd1Y193b3Bj
bV9zaXplIC8gU1pfMUssIHdvcGNtX3NpemUgLyBTWl8xSyk7Cj4+ICsJCXJldHVybiBmYWxzZTsK
Pj4gKwl9Cj4+ICsKPj4gKwlzaXplID0gd29wY21fc2l6ZSAtIGd1Y193b3BjbV9iYXNlIC0gY3R4
X3JzdmQ7Cj4+ICsJaWYgKHVubGlrZWx5KGd1Y193b3BjbV9zaXplID4gc2l6ZSkpIHsKPj4gKwkJ
ZGV2X2VycihpOTE1LT5kcm0uZGV2LAo+PiArCQkJIldPUENNOiBpbnZhbGlkIEd1QyByZWdpb24g
c2l6ZTogJXVLID4gJXVLXG4iLAo+PiArCQkJZ3VjX3dvcGNtX3NpemUgLyBTWl8xSywgc2l6ZSAv
IFNaXzFLKTsKPj4gKwkJcmV0dXJuIGZhbHNlOwo+PiArCX0KPgo+Cj4gSSB0aGluayB3ZSBjYW4g
Y29uc29saWRhdGUgYWxsIHRoZSBjaGVja3MgYWJvdmUgaW4ganVzdDoKPgo+IHdvcGNtX2d1Y19t
YXggPSB3b3BjbV9zaXplIC0gY3R4X3JzdmQ7Cj4gaWYgKHJhbmdlX292ZXJmbG93cyhndWNfd29w
Y21fYmFzZSwgZ3VjX3dvcGNtX3NpemUsIHdvcGNtX2d1Y19tYXgpCj4gCQlyZXR1cm4gZmFsc2U7
CgppZiB3ZSBjb25zb2xpZGF0ZSwgdGhlbiBpdCB3aWxsIGJlIGhhcmQgdG8gdGVsbCB3aGF0IHdl
bnQgd3JvbmcuCndpdGggc2VwYXJhdGUgbG9ncyB3ZSBjYW4gZmluZCB3aGljaCBjaGVjayBmYWls
ZWQgKHRoZXkgYWxsIGFyZQp1bmxpa2VseSwgYnV0IHN0aWxsIHBvc3NpYmxlKQoKPgo+Cj4+ICsK
Pj4gKwlzaXplID0gZ3VjX2Z3X3NpemUgKyBHVUNfV09QQ01fUkVTRVJWRUQgKyBHVUNfV09QQ01f
U1RBQ0tfUkVTRVJWRUQ7Cj4+ICsJaWYgKHVubGlrZWx5KGd1Y193b3BjbV9zaXplIDwgc2l6ZSkp
IHsKPj4gKwkJZGV2X2VycihpOTE1LT5kcm0uZGV2LCAiV09QQ006IG5vIHNwYWNlIGZvciAlczog
JXVLIDwgJXVLXG4iLAo+PiArCQkJaW50ZWxfdWNfZndfdHlwZV9yZXByKElOVEVMX1VDX0ZXX1RZ
UEVfR1VDKSwKPj4gKwkJCWd1Y193b3BjbV9zaXplIC8gU1pfMUssIHNpemUgLyBTWl8xSyk7Cj4+
ICsJCXJldHVybiBmYWxzZTsKPj4gKwl9Cj4+ICsKPj4gKwlzaXplID0gaHVjX2Z3X3NpemUgKyBX
T1BDTV9SRVNFUlZFRF9TSVpFOwo+PiArCWlmICh1bmxpa2VseShndWNfd29wY21fYmFzZSA8IHNp
emUpKSB7Cj4+ICsJCWRldl9lcnIoaTkxNS0+ZHJtLmRldiwgIldPUENNOiBubyBzcGFjZSBmb3Ig
JXM6ICV1SyA8ICV1S1xuIiwKPj4gKwkJCWludGVsX3VjX2Z3X3R5cGVfcmVwcihJTlRFTF9VQ19G
V19UWVBFX0hVQyksCj4+ICsJCQlndWNfd29wY21fYmFzZSAvIFNaXzFLLCBzaXplIC8gU1pfMUsp
Owo+PiArCQlyZXR1cm4gZmFsc2U7Cj4+ICsJfQo+PiArCj4+ICsJcmV0dXJuIGNoZWNrX2h3X3Jl
c3RyaWN0aW9ucyhpOTE1LCBndWNfd29wY21fYmFzZSwgZ3VjX3dvcGNtX3NpemUsCj4+ICsJCQkJ
ICAgICBodWNfZndfc2l6ZSk7Cj4+ICAgfQo+PiAgICAgLyoqCj4+IEBAIC0xNzIsOCArMjMwLDYg
QEAgdm9pZCBpbnRlbF93b3BjbV9pbml0KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCj4+ICAg
CXUzMiBjdHhfcnN2ZCA9IGNvbnRleHRfcmVzZXJ2ZWRfc2l6ZShpOTE1KTsKPj4gICAJdTMyIGd1
Y193b3BjbV9iYXNlOwo+PiAgIAl1MzIgZ3VjX3dvcGNtX3NpemU7Cj4+IC0JdTMyIGd1Y193b3Bj
bV9yc3ZkOwo+PiAtCWludCBlcnI7Cj4+ICAgICAJaWYgKCFndWNfZndfc2l6ZSkKPj4gICAJCXJl
dHVybjsKPj4gQEAgLTE4MywzOSArMjM5LDI2IEBAIHZvaWQgaW50ZWxfd29wY21faW5pdChzdHJ1
Y3QgaW50ZWxfd29wY20gKndvcGNtKQo+PiAgIAlHRU1fQlVHX09OKHdvcGNtLT5ndWMuc2l6ZSk7
Cj4+ICAgCUdFTV9CVUdfT04oZ3VjX2Z3X3NpemUgPj0gd29wY20tPnNpemUpOwo+PiAgIAlHRU1f
QlVHX09OKGh1Y19md19zaXplID49IHdvcGNtLT5zaXplKTsKPj4gKwlHRU1fQlVHX09OKGN0eF9y
c3ZkICsgV09QQ01fUkVTRVJWRURfU0laRSA+PSB3b3BjbS0+c2l6ZSk7Cj4+ICAgICAJaWYgKGk5
MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoaTkxNSkpCj4+ICAgCQlyZXR1cm47Cj4+ICAgICAJZ3Vj
X3dvcGNtX2Jhc2UgPSBBTElHTihodWNfZndfc2l6ZSArIFdPUENNX1JFU0VSVkVEX1NJWkUsCj4+
ICAgCQkJICAgICAgIEdVQ19XT1BDTV9PRkZTRVRfQUxJR05NRU5UKTsKPj4gLQlpZiAoKGd1Y193
b3BjbV9iYXNlICsgY3R4X3JzdmQpID49IHdvcGNtLT5zaXplKSB7Cj4+IC0JCURSTV9FUlJPUigi
R3VDIFdPUENNIGJhc2UgKCV1S2lCKSBpcyB0b28gYmlnLlxuIiwKPj4gLQkJCSAgZ3VjX3dvcGNt
X2Jhc2UgLyAxMDI0KTsKPj4gLQkJcmV0dXJuOwo+PiAtCX0KPj4gLQo+PiArCWd1Y193b3BjbV9i
YXNlID0gbWluKHdvcGNtLT5zaXplIC0gY3R4X3JzdmQsIGd1Y193b3BjbV9iYXNlKTsKPgo+IFRo
aXMgbGluZSBjb25mdXNlZCBtZSBxdWl0ZSBhIGJpdCB1bnRpbCB3ZSBjaGF0dGVkIG9uIElNIGFi
b3V0IGl0LiBtYXliZSAgCj4gYWRkIGEgY29tbWVudCwgZS5nLjoKPgo+IC8qCj4gICAqIHdlIHdh
bnQgdG8ga2VlcCBhbGwgdGhlIGNoZWNrcyBpbiB0aGUgc2FtZSBwbGFjZSB0byBiZSBhYmxlIHRv
IHJlLXVzZQo+ICAgKiB0aGVtIHdoZW4gd2UgZmluZCBsb2NrZWQgdmFsdWVzIGluIFdPUENNIHNv
IHdlIGRvbid0IHZhbGlkYXRlCj4gICAqIGd1Y193b3BjbV9iYXNlIGhlcmUsIGJ1dCB3ZSBzdGls
bCBuZWVkIHRvIGNsYW1wIGl0IHRvIG1ha2Ugc3VyZSB0aGUKPiAgICogZm9sbG93aW5nIG1hdGgg
aXMgc2FuZS4KPiAgICovCgpvawoKPgo+IEFsc28sIHdpdGggbXkgc3VnZ2VzdGlvbiBmb3IgY29u
c29saWRhdGlvbiBhYm92ZSwgZm9yIHRoZSBjaGVja3Mgd2UgIAo+IGFsd2F5cyBjYXJlIGFib3V0
IHdvcGNtLT5zaXplIC0gY3R4X3JzdmQsIHNvIG1heWJlIHN0b3JlIHRoYXQgaW4gYSBsb2NhbCAg
Cj4gdmFyIHRvIHVzZSBpdCBoZXJlIGFuZCBiZWxvdyBhbmQgcGFzcyB0aGF0IGludG8gX19jaGVj
a19sYXlvdXQoKS4KCmFsbCBtYXRoIHRyaWVzIHRvIHVzZSBzaXplcyBmcm9tIHRoZSBkaWFncmFt
IGFib3ZlLCBpbnRyb2R1Y2luZyBvbmUKc3ViLXNpemUgaGVscGVyIG1pZ2h0IGJlIG92ZXIgZW5n
aW5lZXJpbmcgOykKCj4KPiBEYW5pZWxlCj4KPj4gICAJZ3VjX3dvcGNtX3NpemUgPSB3b3BjbS0+
c2l6ZSAtIGd1Y193b3BjbV9iYXNlIC0gY3R4X3JzdmQ7Cj4+ICAgCWd1Y193b3BjbV9zaXplICY9
IEdVQ19XT1BDTV9TSVpFX01BU0s7Cj4+ICAgLQlEUk1fREVCVUdfRFJJVkVSKCJDYWxjdWxhdGVk
IEd1QyBXT1BDTSBSZWdpb246IFsldUtpQiwgJXVLaUIpXG4iLAo+PiAtCQkJIGd1Y193b3BjbV9i
YXNlIC8gMTAyNCwgZ3VjX3dvcGNtX3NpemUgLyAxMDI0KTsKPj4gKwlEUk1fREVWX0RFQlVHX0RS
SVZFUihpOTE1LT5kcm0uZGV2LAo+PiArCQkJICAgICAiQ2FsY3VsYXRlZCBHdUMgV09QQ00gUmVn
aW9uOiBbJXVLaUIsICV1S2lCKVxuIiwKPj4gKwkJCSAgICAgZ3VjX3dvcGNtX2Jhc2UgLyBTWl8x
SywgZ3VjX3dvcGNtX3NpemUgLyBTWl8xSyk7Cj4+ICAgLQlndWNfd29wY21fcnN2ZCA9IEdVQ19X
T1BDTV9SRVNFUlZFRCArIEdVQ19XT1BDTV9TVEFDS19SRVNFUlZFRDsKPj4gLQlpZiAoKGd1Y19m
d19zaXplICsgZ3VjX3dvcGNtX3JzdmQpID4gZ3VjX3dvcGNtX3NpemUpIHsKPj4gLQkJRFJNX0VS
Uk9SKCJOZWVkICV1S2lCIFdPUENNIGZvciBHdUMsICV1S2lCIGF2YWlsYWJsZS5cbiIsCj4+IC0J
CQkgIChndWNfZndfc2l6ZSArIGd1Y193b3BjbV9yc3ZkKSAvIDEwMjQsCj4+IC0JCQkgIGd1Y193
b3BjbV9zaXplIC8gMTAyNCk7Cj4+IC0JCXJldHVybjsKPj4gKwlpZiAoX19jaGVja19sYXlvdXQo
aTkxNSwgd29wY20tPnNpemUsIGd1Y193b3BjbV9iYXNlLCBndWNfd29wY21fc2l6ZSwKPj4gKwkJ
CSAgIGd1Y19md19zaXplLCBodWNfZndfc2l6ZSkpIHsKPj4gKwkJd29wY20tPmd1Yy5iYXNlID0g
Z3VjX3dvcGNtX2Jhc2U7Cj4+ICsJCXdvcGNtLT5ndWMuc2l6ZSA9IGd1Y193b3BjbV9zaXplOwo+
PiArCQlHRU1fQlVHX09OKCF3b3BjbS0+Z3VjLmJhc2UpOwo+PiArCQlHRU1fQlVHX09OKCF3b3Bj
bS0+Z3VjLnNpemUpOwo+PiAgIAl9Cj4+IC0KPj4gLQllcnIgPSBjaGVja19od19yZXN0cmljdGlv
bihpOTE1LCBndWNfd29wY21fYmFzZSwgZ3VjX3dvcGNtX3NpemUsCj4+IC0JCQkJICAgaHVjX2Z3
X3NpemUpOwo+PiAtCWlmIChlcnIpCj4+IC0JCXJldHVybjsKPj4gLQo+PiAtCXdvcGNtLT5ndWMu
YmFzZSA9IGd1Y193b3BjbV9iYXNlOwo+PiAtCXdvcGNtLT5ndWMuc2l6ZSA9IGd1Y193b3BjbV9z
aXplOwo+PiAtCUdFTV9CVUdfT04oIXdvcGNtLT5ndWMuYmFzZSk7Cj4+IC0JR0VNX0JVR19PTigh
d29wY20tPmd1Yy5zaXplKTsKPj4gICB9Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
