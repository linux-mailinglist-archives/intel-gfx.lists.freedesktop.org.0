Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8373717C1EC
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 16:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3005B89CCE;
	Fri,  6 Mar 2020 15:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D549689CCE
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 15:36:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 07:36:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="234838348"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2020 07:36:11 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <20200303173313.28117-10-ville.syrjala@linux.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <451da653-041f-ab31-02d0-f3b3c88f1a17@intel.com>
Date: Fri, 6 Mar 2020 21:06:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303173313.28117-10-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915: Pass the crtc to the low
 level read_lut() funcs
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

CgpPbiAwMy1NYXItMjAgMTE6MDMgUE0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBUaGUgbG93
IGxldmVsIHJlYWRfbHV0KCkgZnVuY3Rpb25zIGRvbid0IG5lZWQgdGhlIGVudGlyZSBjcnRjIHN0
YXRlCj4gYXMgdGhleSBrbm93IGV4YWN0bHkgd2hhdCB0aGV5J3JlIHJlYWRpbmcuIEp1c3QgbmVl
ZCB0byBwYXNzIGluIHRoZQo+IGNydGMgdG8gZ2V0IGF0IHRoZSBwaXBlLiBUaGlzIG5vdyBuZWF0
bHkgbWlycm9ycyB0aGUgbG9hZF9sdXQoKQo+IGRpcmVjdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3
ZWQtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCA1MSArKysrKysrKysr
Ky0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
Ywo+IGluZGV4IGVkOTk5NmFhY2FmZC4uYzFjY2U5M2ExYzI1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+IEBAIC0xNzIyLDEwICsxNzIyLDggQEAg
Ym9vbCBpbnRlbF9jb2xvcl9sdXRfZXF1YWwoc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9i
MSwKPiAgIAlyZXR1cm4gdHJ1ZTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgc3RydWN0IGRybV9wcm9w
ZXJ0eV9ibG9iICoKPiAtaTl4eF9yZWFkX2x1dF84KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQo+ICtzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICppOXh4
X3JlYWRfbHV0Xzgoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gICB7Cj4gLQlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKPiAg
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKPiAgIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4gICAJc3RydWN0IGRybV9w
cm9wZXJ0eV9ibG9iICpibG9iOwo+IEBAIC0xNzUxLDE2ICsxNzQ5LDE2IEBAIGk5eHhfcmVhZF9s
dXRfOChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgIAo+ICAg
c3RhdGljIHZvaWQgaTl4eF9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCj4gICB7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMo
Y3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKPiArCj4gICAJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9l
bmFibGUpCj4gICAJCXJldHVybjsKPiAgIAo+IC0JY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0g
aTl4eF9yZWFkX2x1dF84KGNydGNfc3RhdGUpOwo+ICsJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0
ID0gaTl4eF9yZWFkX2x1dF84KGNydGMpOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBzdHJ1Y3QgZHJt
X3Byb3BlcnR5X2Jsb2IgKgo+IC1pOTY1X3JlYWRfbHV0XzEwcDYoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Js
b2IgKmk5NjVfcmVhZF9sdXRfMTBwNihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgIHsKPiAt
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBp
LmNydGMpOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOwo+ICAgCWludCBpLCBsdXRfc2l6ZSA9IElOVEVMX0lORk8oZGV2X3By
aXYpLT5jb2xvci5nYW1tYV9sdXRfc2l6ZTsKPiAgIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBp
cGU7Cj4gQEAgLTE3OTEsMTkgKzE3ODksMTkgQEAgaTk2NV9yZWFkX2x1dF8xMHA2KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAgCj4gICBzdGF0aWMgdm9pZCBp
OTY1X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgIHsK
PiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51
YXBpLmNydGMpOwo+ICsKPiAgIAlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKPiAgIAkJ
cmV0dXJuOwo+ICAgCj4gICAJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9E
RV9NT0RFXzhCSVQpCj4gLQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1
dF84KGNydGNfc3RhdGUpOwo+ICsJCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGk5eHhfcmVh
ZF9sdXRfOChjcnRjKTsKPiAgIAllbHNlCj4gLQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0g
aTk2NV9yZWFkX2x1dF8xMHA2KGNydGNfc3RhdGUpOwo+ICsJCWNydGNfc3RhdGUtPmh3LmdhbW1h
X2x1dCA9IGk5NjVfcmVhZF9sdXRfMTBwNihjcnRjKTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgc3Ry
dWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKPiAtY2h2X3JlYWRfY2dtX2dhbW1hKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICtzdGF0aWMgc3RydWN0IGRybV9wcm9w
ZXJ0eV9ibG9iICpjaHZfcmVhZF9jZ21fZ2FtbWEoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4g
ICB7Cj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiAgIAlpbnQgaSwgbHV0X3NpemUgPSBJTlRFTF9JTkZP
KGRldl9wcml2KS0+Y29sb3IuZ2FtbWFfbHV0X3NpemU7Cj4gICAJZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlOwo+IEBAIC0xODMwLDE2ICsxODI4LDE2IEBAIGNodl9yZWFkX2NnbV9nYW1tYShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgIAo+ICAgc3RhdGlj
IHZvaWQgY2h2X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
PiAgIHsKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT51YXBpLmNydGMpOwo+ICsKPiAgIAlpZiAoY3J0Y19zdGF0ZS0+Y2dtX21vZGUgJiBDR01f
UElQRV9NT0RFX0dBTU1BKQo+IC0JCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGNodl9yZWFk
X2NnbV9nYW1tYShjcnRjX3N0YXRlKTsKPiArCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBj
aHZfcmVhZF9jZ21fZ2FtbWEoY3J0Yyk7Cj4gICAJZWxzZQo+ICAgCQlpOTY1X3JlYWRfbHV0cyhj
cnRjX3N0YXRlKTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9i
ICoKPiAtaWxrX3JlYWRfbHV0XzgoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCj4gK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmlsa19yZWFkX2x1dF84
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICAgewo+IC0Jc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gICAJ
ZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ICAgCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxv
YiAqYmxvYjsKPiBAQCAtMTg2MywxMCArMTg2MSw4IEBAIGlsa19yZWFkX2x1dF84KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAgCXJldHVybiBibG9iOwo+ICAg
fQo+ICAgCj4gLXN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKgo+IC1pbGtfcmVhZF9s
dXRfMTAoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3N0YXRp
YyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmlsa19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKPiAgIHsKPiAtCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICAgCWludCBpLCBsdXRfc2l6
ZSA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5jb2xvci5nYW1tYV9sdXRfc2l6ZTsKPiAgIAllbnVt
IHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4gQEAgLTE4OTIsNiArMTg4OCw4IEBAIGlsa19yZWFk
X2x1dF8xMChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgIAo+
ICAgc3RhdGljIHZvaWQgaWxrX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKPiAgIHsKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0
YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+ICsKPiAgIAlpZiAoIWNydGNfc3RhdGUtPmdhbW1h
X2VuYWJsZSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gQEAgLTE4OTksMTUgKzE4OTcsMTQgQEAgc3Rh
dGljIHZvaWQgaWxrX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gICAJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0g
R0FNTUFfTU9ERV9NT0RFXzhCSVQpCj4gLQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gaWxr
X3JlYWRfbHV0XzgoY3J0Y19zdGF0ZSk7Cj4gKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0g
aWxrX3JlYWRfbHV0XzgoY3J0Yyk7Cj4gICAJZWxzZQo+IC0JCWNydGNfc3RhdGUtPmh3LmdhbW1h
X2x1dCA9IGlsa19yZWFkX2x1dF8xMChjcnRjX3N0YXRlKTsKPiArCQljcnRjX3N0YXRlLT5ody5n
YW1tYV9sdXQgPSBpbGtfcmVhZF9sdXRfMTAoY3J0Yyk7Cj4gICB9Cj4gICAKPiAtc3RhdGljIHN0
cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqCj4gLWdsa19yZWFkX2x1dF8xMChjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwgdTMyIHByZWNfaW5kZXgpCj4gK3N0YXRpYyBz
dHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmdsa19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKPiArCQkJCQkJIHUzMiBwcmVjX2luZGV4KQo+ICAgewo+IC0Jc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7Cj4gICAJaW50IGksIGh3X2x1dF9zaXplID0gaXZiX2x1dF8xMF9zaXplKHByZWNfaW5kZXgp
Owo+ICAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPiBAQCAtMTkzOCwxMyArMTkzNSwx
NSBAQCBnbGtfcmVhZF9sdXRfMTAoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsIHUzMiBwcmVjX2luZGV4KQo+ICAgCj4gICBzdGF0aWMgdm9pZCBnbGtfcmVhZF9sdXRz
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAgewo+ICsJc3RydWN0IGlu
dGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4g
Kwo+ICAgCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+ICAgCQlyZXR1cm47Cj4gICAK
PiAgIAlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkK
PiAtCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBpbGtfcmVhZF9sdXRfOChjcnRjX3N0YXRl
KTsKPiArCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBpbGtfcmVhZF9sdXRfOChjcnRjKTsK
PiAgIAllbHNlCj4gLQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfbHV0XzEw
KGNydGNfc3RhdGUsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKPiArCQljcnRjX3N0YXRlLT5o
dy5nYW1tYV9sdXQgPSBnbGtfcmVhZF9sdXRfMTAoY3J0YywgUEFMX1BSRUNfSU5ERVhfVkFMVUUo
MCkpOwo+ICAgfQo+ICAgCj4gICB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpCj4gCgotLSAKflN3YXRpIFNoYXJtYQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
