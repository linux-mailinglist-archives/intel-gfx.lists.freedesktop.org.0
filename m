Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 832A9E50C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 16:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4904289327;
	Mon, 29 Apr 2019 14:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9E7892ED;
 Mon, 29 Apr 2019 14:44:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 07:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168969096"
Received: from nuc.iind.intel.com (HELO intel.com) ([10.99.66.149])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 07:44:00 -0700
Date: Mon, 29 Apr 2019 20:16:13 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20190429144613.GB12742@intel.com>
References: <20190418085805.5648-1-ramalingam.c@intel.com>
 <20190418085805.5648-12-ramalingam.c@intel.com>
 <20190429073832.GI3271@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429073832.GI3271@phenom.ffwll.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 11/12] drm: Add CP downstream_info
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wNC0yOSBhdCAwOTozODozMiArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBP
biBUaHUsIEFwciAxOCwgMjAxOSBhdCAwMjoyODowNFBNICswNTMwLCBSYW1hbGluZ2FtIEMgd3Jv
dGU6Cj4gPiBUaGlzIHBhdGNoIGFkZHMgYSBvcHRpb25hbCBDUCBkb3duc3RyZWFtIGluZm8gYmxv
YiBwcm9wZXJ0eSB0byB0aGUKPiA+IGNvbm5lY3RvcnMuIFRoaXMgZW5hYmxlcyB0aGUgVXNlcnNw
YWNlIHRvIHJlYWQgdGhlIGluZm9ybWF0aW9uIG9mIEhEQ1AKPiA+IGF1dGhlbnRpY2F0ZWQgZG93
bnN0cmVhbSB0b3BvbG9neS4KPiA+IAo+ID4gRHJpdmVyIHdpbGwgdXBkYXRlIHRoaXMgYmxvYiB3
aXRoIGFsbCBkb3duc3RyZWFtIGluZm9ybWF0aW9uIGF0IHRoZQo+ID4gZW5kIG9mIHRoZSBhdXRo
ZW50aWNhdGlvbi4KPiA+IAo+ID4gSW4gY2FzZSB1c2Vyc3BhY2UgY29uZmlndXJlcyB0aGlzIHBs
YXRmb3JtIGFzIHJlcGVhdGVyLCB0aGVuIHRoaXMKPiA+IGluZm9ybWF0aW9uIGlzIG5lZWRlZCBm
b3IgdGhlIGF1dGhlbnRpY2F0aW9uIHdpdGggdXBzdHJlYW0gSERDUAo+ID4gdHJhbnNtaXR0ZXIu
Cj4gPiAKPiA+IHYyOgo+ID4gICBzL2NwX2Rvd25zdHJlYW0vY29udGVudF9wcm90ZWN0aW9uX2Rv
d25zdHJlYW0gW2RhbmllbF0KPiA+IHYzOgo+ID4gICBzL2NvbnRlbnRfcHJvdGVjdGlvbl9kb3du
c3RyZWFtL2hkY3BfdG9wb2xvZ3kgW2RhbmllbF0KPiA+IHY0Ogo+ID4gICBoZGNwX3RvcG9sb2d5
X2luZm8gc3RydWN0IGlzIGFkZGVkIHdpdGggZXhwbGljaXQgcGFkZGluZyBbRGFuaWVsXQo+ID4g
djU6Cj4gPiAgIFJlYmFzZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1f
YXRvbWljX3VhcGkuYyB8ICAzICsrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
YyAgIHwgMjAgKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jICAgICAg
ICB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICBpbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmggICAgICAgfCAgNiArKysKPiA+ICBpbmNsdWRlL2RybS9kcm1faGRjcC5o
ICAgICAgICAgICAgfCAgNiArKysKPiA+ICBpbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAg
ICAgfCAgNiArKysKPiA+ICBpbmNsdWRlL3VhcGkvZHJtL2RybV9tb2RlLmggICAgICAgfCAzNyAr
KysrKysrKysrKysrKysrKysKPiA+ICA3IGZpbGVzIGNoYW5nZWQsIDE0MyBpbnNlcnRpb25zKCsp
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMKPiA+IGluZGV4IDBiMDc0Nzg2OTk2
My4uMWM5ZTFhYjBkNTM2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9t
aWNfdWFwaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMKPiA+
IEBAIC04MTMsNiArODEzLDkgQEAgZHJtX2F0b21pY19jb25uZWN0b3JfZ2V0X3Byb3BlcnR5KHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gPiAgCQkqdmFsID0gc3RhdGUtPmNvbnRl
bnRfcHJvdGVjdGlvbjsKPiA+ICAJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBjb25maWctPmhkY3Bf
Y29udGVudF90eXBlX3Byb3BlcnR5KSB7Cj4gPiAgCQkqdmFsID0gc3RhdGUtPmhkY3BfY29udGVu
dF90eXBlOwo+ID4gKwl9IGVsc2UgaWYgKHByb3BlcnR5ID09IGNvbmZpZy0+aGRjcF90b3BvbG9n
eV9wcm9wZXJ0eSkgewo+ID4gKwkJKnZhbCA9IGNvbm5lY3Rvci0+aGRjcF90b3BvbG9neV9ibG9i
X3B0ciA/Cj4gPiArCQkJY29ubmVjdG9yLT5oZGNwX3RvcG9sb2d5X2Jsb2JfcHRyLT5iYXNlLmlk
IDogMDsKPiA+ICAJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBjb25maWctPndyaXRlYmFja19mYl9p
ZF9wcm9wZXJ0eSkgewo+ID4gIAkJLyogV3JpdGViYWNrIGZyYW1lYnVmZmVyIGlzIG9uZS1zaG90
LCB3cml0ZSBhbmQgZm9yZ2V0ICovCj4gPiAgCQkqdmFsID0gMDsKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25u
ZWN0b3IuYwo+ID4gaW5kZXggNDM2Y2Y4ZTc2NGNjLi4wMzNjZWQ3NzRkMzcgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2Nvbm5lY3Rvci5jCj4gPiBAQCAtMjQ2LDYgKzI0Niw3IEBAIGludCBkcm1fY29u
bmVjdG9yX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiA+ICAJbXV0ZXhfaW5pdCgmY29u
bmVjdG9yLT5tdXRleCk7Cj4gPiAgCWNvbm5lY3Rvci0+ZWRpZF9ibG9iX3B0ciA9IE5VTEw7Cj4g
PiAgCWNvbm5lY3Rvci0+dGlsZV9ibG9iX3B0ciA9IE5VTEw7Cj4gPiArCWNvbm5lY3Rvci0+aGRj
cF90b3BvbG9neV9ibG9iX3B0ciA9IE5VTEw7Cj4gPiAgCWNvbm5lY3Rvci0+c3RhdHVzID0gY29u
bmVjdG9yX3N0YXR1c191bmtub3duOwo+ID4gIAljb25uZWN0b3ItPmRpc3BsYXlfaW5mby5wYW5l
bF9vcmllbnRhdGlvbiA9Cj4gPiAgCQlEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dO
Owo+ID4gQEAgLTk3Miw2ICs5NzMsMjUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9l
bnVtX2xpc3QgaGRtaV9jb2xvcnNwYWNlc1tdID0gewo+ID4gICAqCWF1dGhlbnRpY2F0aW9uIHBy
b2Nlc3MuIElmIGNvbnRlbnQgdHlwZSBpcyBjaGFuZ2VkIHdoZW4KPiA+ICAgKgljb250ZW50X3By
b3RlY3Rpb24gaXMgbm90IFVOREVTSVJFRCwgdGhlbiBrZXJuZWwgd2lsbCBkaXNhYmxlIHRoZSBI
RENQCj4gPiAgICoJYW5kIHJlLWVuYWJsZSB3aXRoIG5ldyB0eXBlIGluIHRoZSBzYW1lIGF0b21p
YyBjb21taXQKPiA+ICsgKiBIRENQIFRvcG9sb2d5Ogo+ID4gKyAqCVRoaXMgYmxvYiBwcm9wZXJ0
eSBpcyB1c2VkIHRvIHBhc3MgdGhlIEhEQ1AgZG93bnN0cmVhbSB0b3BvbG9neSBkZXRhaWxzCj4g
PiArICoJb2YgYSBIRENQIGVuY3J5cHRlZCBjb25uZWN0b3IsIGZyb20ga2VybmVsIHRvIHVzZXJz
cGFjZS4KPiA+ICsgKglUaGlzIHByb3ZpZGVzIGFsbCByZXF1aXJlZCBpbmZvcm1hdGlvbiB0byB1
c2Vyc3BhY2UsIHNvIHRoYXQgdXNlcnNwYWNlCj4gPiArICoJY2FuIGltcGxlbWVudCB0aGUgSERD
UCByZXBlYXRlciB1c2luZyB0aGUga2VybmVsIGFzIGRvd25zdHJlYW0gcG9ydHMgb2YKPiA+ICsg
Kgl0aGUgcmVwZWF0ZXIuIGFzIGlsbHVzdHJhdGVkIGJlbG93Ogo+ID4gKyAqCj4gPiArICogICAg
ICAgICAgICAgICAgICAgICAgICAgIEhEQ1AgUmVwZWF0ZXJzCj4gPiArICogKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ID4g
KyAqIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKPiA+ICsgKiB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gPiArICogfCAgIFVzZXJzcGFjZSBIRENQIFJl
Y2VpdmVyICArLS0tLS0+ICAgIEtNRCBIRENQIHRyYW5zbWl0dGVycyAgfAo+ID4gKyAqIHwgICAg
ICAoVXBzdHJlYW0gUG9ydCkgICAgICA8LS0tLS0tKyAgICAgKERvd25zdHJlYW0gUG9ydHMpICAg
IHwKPiA+ICsgKiB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8Cj4gPiArICogfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ID4gKyAqICstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPiAKPiBI
bSBJIHRoaW5rIHRoaXMgbWlzcmVuZGVycywgc2luY2UgdGhlIHRhYmxlIGlzbid0IGluZGVudGVk
IG9yIG1hcmtlZCBhcwo+IGZpeGVkIHdpdGguIERpZCB5b3UgY2hlY2sgdGhlIG91dHB1dCBvZiAk
bWFrZSBodG1sZG9jcz8KWWVzIGNoZWNrZWQgb24gZG9jIG91dHB1dC4gY29ycnVwdGVkLiBJIHdp
bGwgZml4IGl0LgoKPiAKPiA+ICsgKgo+ID4gKyAqCUtlcm5lbCB3aWxsIHBvcHVsYXRlIHRoaXMg
YmxvYiBvbmx5IHdoZW4gdGhlIEhEQ1AgYXV0aGVudGljYXRpb24gaXMKPiA+ICsgKglzdWNjZXNz
ZnVsLgo+ID4gICAqCj4gPiAgICogbWF4IGJwYzoKPiA+ICAgKglUaGlzIHJhbmdlIHByb3BlcnR5
IGlzIHVzZWQgYnkgdXNlcnNwYWNlIHRvIGxpbWl0IHRoZSBiaXQgZGVwdGguIFdoZW4KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1faGRjcC5jCj4gPiBpbmRleCA1NjQwYzRlNzQ0ZmUuLmMwZDNmYzkzZmM1MCAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2hkY3AuYwo+ID4gQEAgLTQzMSwzICs0MzEsNjggQEAgdm9pZCBkcm1faGRjcF91cGRh
dGVfY29udGVudF9wcm90ZWN0aW9uKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4g
PiAgCQkJCSBkZXYtPm1vZGVfY29uZmlnLmNvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eSk7Cj4g
PiAgfQo+ID4gIEVYUE9SVF9TWU1CT0woZHJtX2hkY3BfdXBkYXRlX2NvbnRlbnRfcHJvdGVjdGlv
bik7Cj4gPiArCj4gPiArLyoqCj4gPiArICogZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfaGRjcF90b3Bv
bG9neV9wcm9wZXJ0eSAtIGF0dGFjaCBoZGNwIHRvcG9sb2d5IHByb3BlcnR5Cj4gPiArICoKPiA+
ICsgKiBAY29ubmVjdG9yOiBjb25uZWN0b3IgdG8gYXR0YWNoIGhkY3AgdG9wb2xvZ3kgcHJvcGVy
dHkgd2l0aC4KPiA+ICsgKgo+ID4gKyAqIFRoaXMgaXMgdXNlZCB0byBhZGQgc3VwcG9ydCBmb3Ig
aGRjcCB0b3BvbG9neSBzdXBwb3J0IG9uIHNlbGVjdCBjb25uZWN0b3JzLgo+ID4gKyAqIFdoZW4g
SW50ZWwgcGxhdGZvcm0gaXMgY29uZmlndXJlZCBhcyByZXBlYXRlciwgdGhpcyBkb3duc3RyZWFt
IGluZm8gaXMgdXNlZAo+ID4gKyAqIGJ5IHVzZXJzcGFjZSwgdG8gY29tcGxldGUgdGhlIHJlcGVh
dGVyIGF1dGhlbnRpY2F0aW9uIG9mIEhEQ1Agc3BlY2lmaWNhdGlvbgo+ID4gKyAqIHdpdGggdXBz
dHJlYW0gSERDUCB0cmFuc21pdHRlci4KPiA+ICsgKgo+ID4gKyAqIFRoZSBibG9iX2lkIG9mIHRo
ZSBoZGNwIHRvcG9sb2d5IGluZm8gd2lsbCBiZSBzZXQgdG8KPiA+ICsgKiAmZHJtX2Nvbm5lY3Rv
cl9zdGF0ZS5oZGNwX3RvcG9sb2d5Cj4gPiArICoKPiA+ICsgKiBSZXR1cm5zOgo+ID4gKyAqIFpl
cm8gb24gc3VjY2VzcywgbmVnYXRpdmUgZXJybm8gb24gZmFpbHVyZS4KPiA+ICsgKi8KPiA+ICtp
bnQgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfaGRjcF90b3BvbG9neV9wcm9wZXJ0eShzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gK3sKPiA+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRl
diA9IGNvbm5lY3Rvci0+ZGV2Owo+ID4gKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9wID0gZGV2
LT5tb2RlX2NvbmZpZy5oZGNwX3RvcG9sb2d5X3Byb3BlcnR5Owo+ID4gKwo+ID4gKwlpZiAoIXBy
b3ApCj4gPiArCQlwcm9wID0gZHJtX3Byb3BlcnR5X2NyZWF0ZShkZXYsIERSTV9NT0RFX1BST1Bf
QkxPQiB8Cj4gPiArCQkJCQkgICBEUk1fTU9ERV9QUk9QX0lNTVVUQUJMRSwKPiA+ICsJCQkJCSAg
ICJIRENQIFRvcG9sb2d5IiwgMCk7Cj4gPiArCWlmICghcHJvcCkKPiA+ICsJCXJldHVybiAtRU5P
TUVNOwo+ID4gKwo+ID4gKwlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5i
YXNlLCBwcm9wLCAwKTsKPiA+ICsJZGV2LT5tb2RlX2NvbmZpZy5oZGNwX3RvcG9sb2d5X3Byb3Bl
cnR5ID0gcHJvcDsKPiA+ICsJcmV0dXJuIDA7Cj4gPiArfQo+ID4gK0VYUE9SVF9TWU1CT0woZHJt
X2Nvbm5lY3Rvcl9hdHRhY2hfaGRjcF90b3BvbG9neV9wcm9wZXJ0eSk7Cj4gPiArCj4gPiArLyoq
Cj4gPiArICogZHJtX2Nvbm5lY3Rvcl91cGRhdGVfaGRjcF90b3BvbG9neV9wcm9wZXJ0eSAtIHVw
ZGF0ZSB0aGUgaGRjcCB0b3BvbG9neQo+ID4gKyAqIHByb3BlcnR5IG9mIGEgY29ubmVjdG9yCj4g
PiArICogQGNvbm5lY3RvcjogZHJtIGNvbm5lY3RvciwgdGhlIHRvcG9sb2d5IGlzIGFzc29jaWF0
ZWQgdG8KPiA+ICsgKiBAaGRjcF90b3BvbG9neV9pbmZvOiBuZXcgY29udGVudCBmb3IgdGhlIGJs
b2Igb2YgaGRjcF90b3BvbG9neV9wcm9wZXJ0eQo+ID4gKyAqCj4gPiArICogVGhpcyBmdW5jdGlv
biBjcmVhdGVzIGEgbmV3IGJsb2IgbW9kZXNldCBvYmplY3QgYW5kIGFzc2lnbnMgaXRzIGlkIHRv
IHRoZQo+ID4gKyAqIGNvbm5lY3RvcidzIGhkY3BfdG9wb2xvZ3lfcHJvcGVydHkuCj4gPiArICoK
PiA+ICsgKiBSZXR1cm5zOgo+ID4gKyAqIFplcm8gb24gc3VjY2VzcywgbmVnYXRpdmUgZXJybm8g
b24gZmFpbHVyZS4KPiA+ICsgKi8KPiA+ICtpbnQKPiA+ICtkcm1fY29ubmVjdG9yX3VwZGF0ZV9o
ZGNwX3RvcG9sb2d5X3Byb3BlcnR5KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4g
PiArCQkJCQljb25zdCBzdHJ1Y3QgaGRjcF90b3BvbG9neV9pbmZvICppbmZvKQo+ID4gK3sKPiA+
ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNvbm5lY3Rvci0+ZGV2Owo+ID4gKwlpbnQgcmV0
Owo+ID4gKwo+ID4gKwlpZiAoIWluZm8pCj4gPiArCQlyZXR1cm4gLUVJTlZBTDsKPiA+ICsKPiA+
ICsJcmV0ID0gZHJtX3Byb3BlcnR5X3JlcGxhY2VfZ2xvYmFsX2Jsb2IoZGV2LAo+ID4gKwkJCSZj
b25uZWN0b3ItPmhkY3BfdG9wb2xvZ3lfYmxvYl9wdHIsCj4gPiArCQkJc2l6ZW9mKHN0cnVjdCBo
ZGNwX3RvcG9sb2d5X2luZm8pLAo+ID4gKwkJCWluZm8sICZjb25uZWN0b3ItPmJhc2UsCj4gPiAr
CQkJZGV2LT5tb2RlX2NvbmZpZy5oZGNwX3RvcG9sb2d5X3Byb3BlcnR5KTsKPiA+ICsJcmV0dXJu
IHJldDsKPiA+ICt9Cj4gCj4gSG0sIEknZCBwdXQgdGhpcyBpbnRvIHRoZSBwcmV2aW91cyBmdW5j
dGlvbiB0aGF0IGFsc28gc2VuZHMgb3V0IHRoZQo+IHVldmVudC4gVGhhdCB3YXkgd2UgY2FuIGd1
YXJhbnRlZSB0aGF0IHdlIHVwZGF0ZSBldmVyeXRpbmcgX2JlZm9yZV8gd2UKPiBzZW5kIG91dCB0
aGUgdWV2ZW50IHRvIHNpZ25hbCB0byB1c2Vyc3BhY2UgdGhhdCBpdCBzaG91bGQgdGFrZSBzb21l
Cj4gYWN0aW9uLgoKVGhhdCB3aWxsIG5vdCB3b3JrIGFzIGFib3ZlIGZ1Y250aW9uIHdvbnQgYmUg
Y2FsbGVkIGZvciB0aGUgZGlzYWJsZQpyZXF1ZXN0LiBXaGVyZSBhcyB0aGlzIGJsb2IgbmVlZHMg
dG8gYmUgcmVtb3ZlZCBvbiBkaXNhYmxlLiBTbyBJIHByZWZlcgp0byBrZWVwIHRoaXMgYXMgc2Vw
YXJhdGUuCj4gCj4gPiArRVhQT1JUX1NZTUJPTChkcm1fY29ubmVjdG9yX3VwZGF0ZV9oZGNwX3Rv
cG9sb2d5X3Byb3BlcnR5KTsKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVj
dG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiA+IGluZGV4IDllMmYxYTlkZTJh
MC4uMTgwZjhmNGQ0NTI2IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rv
ci5oCj4gPiArKysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiA+IEBAIC0xMDUwLDYg
KzEwNTAsMTIgQEAgc3RydWN0IGRybV9jb25uZWN0b3Igewo+ID4gIAkvKiogQHByb3BlcnRpZXM6
IHByb3BlcnR5IHRyYWNraW5nIGZvciB0aGlzIGNvbm5lY3RvciAqLwo+ID4gIAlzdHJ1Y3QgZHJt
X29iamVjdF9wcm9wZXJ0aWVzIHByb3BlcnRpZXM7Cj4gPiAgCj4gPiArCS8qKgo+ID4gKwkgKiBA
aGRjcF90b3BvbG9neV9ibG9iX3B0cjogRFJNIEJMT0IgcG9pbnRlciBmb3IgaGRjcCBkb3duc3Ry
ZWFtCj4gPiArCSAqIHRvcG9sb2d5IGluZm9ybWF0aW9uLgo+ID4gKwkgKi8KPiA+ICsJc3RydWN0
IGRybV9wcm9wZXJ0eV9ibG9iICpoZGNwX3RvcG9sb2d5X2Jsb2JfcHRyOwo+ID4gKwo+ID4gIAkv
KioKPiA+ICAJICogQHNjYWxpbmdfbW9kZV9wcm9wZXJ0eTogT3B0aW9uYWwgYXRvbWljIHByb3Bl
cnR5IHRvIGNvbnRyb2wgdGhlCj4gPiAgCSAqIHVwc2NhbGluZy4gU2VlIGRybV9jb25uZWN0b3Jf
YXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eSgpLgo+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9oZGNwLmggYi9pbmNsdWRlL2RybS9kcm1faGRjcC5oCj4gPiBpbmRleCA5
NDU3YzdlYzBkMzcuLjAxMWYzNWUxMjFhNSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2Ry
bV9oZGNwLmgKPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9oZGNwLmgKPiA+IEBAIC0zMDAsMTAg
KzMwMCwxNiBAQCBzdHJ1Y3QgaGRjcDJfc3JtX2hlYWRlciB7Cj4gPiAgCj4gPiAgc3RydWN0IGRy
bV9kZXZpY2U7Cj4gPiAgc3RydWN0IGRybV9jb25uZWN0b3I7Cj4gPiArc3RydWN0IGhkY3BfdG9w
b2xvZ3lfaW5mbzsKPiA+ICAKPiA+ICBib29sIGRybV9oZGNwX2tzdnNfcmV2b2NhdGVkKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHU4ICprc3ZzLCB1MzIga3N2X2NvdW50KTsKPiA+ICBpbnQgZHJt
X2Nvbm5lY3Rvcl9hdHRhY2hfY29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5KAo+ID4gIAkJc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgYm9vbCBoZGNwX2NvbnRlbnRfdHlwZSk7Cj4g
PiAgdm9pZCBkcm1faGRjcF91cGRhdGVfY29udGVudF9wcm90ZWN0aW9uKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsCj4gPiAgCQkJCQl1NjQgdmFsKTsKPiA+ICtpbnQgZHJtX2Nvbm5l
Y3Rvcl9hdHRhY2hfaGRjcF90b3BvbG9neV9wcm9wZXJ0eSgKPiA+ICsJCQkJc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gPiAraW50IGRybV9jb25uZWN0b3JfdXBkYXRlX2hkY3Bf
dG9wb2xvZ3lfcHJvcGVydHkoCj4gPiArCQkJCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IsCj4gPiArCQkJCWNvbnN0IHN0cnVjdCBoZGNwX3RvcG9sb2d5X2luZm8gKmluZm8pOwo+ID4g
ICNlbmRpZgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oIGIv
aW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmgKPiA+IGluZGV4IGIzNTliNWI3MWViOS4uNDM0
OWI2MTRmYTE1IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmgK
PiA+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCj4gPiBAQCAtODQ4LDYgKzg0
OCwxMiBAQCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnIHsKPiA+ICAJICovCj4gPiAgCXN0cnVjdCBk
cm1fcHJvcGVydHkgKmhkY3BfY29udGVudF90eXBlX3Byb3BlcnR5Owo+ID4gIAo+ID4gKwkvKioK
PiA+ICsJICogQGhkY3BfdG9wb2xvZ3lfcHJvcGVydHk6IERSTSBCTE9CIHByb3BlcnR5IGZvciBo
ZGNwIGRvd25zdHJlYW0KPiA+ICsJICogdG9wb2xvZ3kgaW5mb3JtYXRpb24uCj4gPiArCSAqLwo+
ID4gKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpoZGNwX3RvcG9sb2d5X3Byb3BlcnR5Owo+ID4gKwo+
ID4gIAkvKiBkdW1iIGlvY3RsIHBhcmFtZXRlcnMgKi8KPiA+ICAJdWludDMyX3QgcHJlZmVycmVk
X2RlcHRoLCBwcmVmZXJfc2hhZG93Owo+ID4gIAo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFw
aS9kcm0vZHJtX21vZGUuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaAo+ID4gaW5kZXgg
OGFjMDMzNTFmZGVlLi45ZDdjZGZhYjQ5NjIgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkv
ZHJtL2RybV9tb2RlLmgKPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaAo+ID4g
QEAgLTIxMyw2ICsyMTMsNDMgQEAgZXh0ZXJuICJDIiB7Cj4gPiAgI2RlZmluZSBEUk1fTU9ERV9I
RENQX0NPTlRFTlRfVFlQRTAJCTAKPiA+ICAjZGVmaW5lIERSTV9NT0RFX0hEQ1BfQ09OVEVOVF9U
WVBFMQkJMQo+ID4gIAo+ID4gKyNkZWZpbmUgRFJNX01PREVfSERDUF9LU1ZfTEVOCQkJNQo+ID4g
KyNkZWZpbmUgRFJNX01PREVfSERDUF9NQVhfREVWSUNFX0NOVAkJMTI3Cj4gPiArI2RlZmluZSBE
Uk1fTU9ERV9IRENQMTRfSU5fRk9SQ0UJCSgxIDw8IDApCj4gPiArI2RlZmluZSBEUk1fTU9ERV9I
RENQMjJfSU5fRk9SQ0UJCSgxIDw8IDEpCj4gPiArCj4gPiArc3RydWN0IGhkY3BfdG9wb2xvZ3lf
aW5mbyB7Cj4gPiArCS8qIFZlcnNpb24gb2YgSERDUCBhdXRoZW50aWNhdGVkICgxLjQvMi4yKSAq
Lwo+ID4gKwlfX3UzMiB2ZXJfaW5fZm9yY2U7Cj4gPiArCj4gPiArCS8qIEFwcGxpY2FibGUgb25s
eSBmb3IgSERDUDIuMiAqLwo+ID4gKwlfX3UzMiBjb250ZW50X3R5cGU7Cj4gPiArCj4gPiArCS8q
IEtTViBvZiBpbW1lZGlhdGUgSERDUCBTaW5rLiBJbiBMaXR0bGUtRW5kaWFuIEZvcm1hdC4gKi8K
PiA+ICsJX191OCBia3N2W0RSTV9NT0RFX0hEQ1BfS1NWX0xFTl07Cj4gPiArCj4gPiArCS8qIFdo
ZXRoZXIgSW1tZWRpYXRlIEhEQ1Agc2luayBpcyBhIHJlcGVhdGVyPyAqLwo+ID4gKwlfX3U4IGlz
X3JlcGVhdGVyOwo+ID4gKwo+ID4gKwkvKiBEZXB0aCByZWNlaXZlZCBmcm9tIGltbWVkaWF0ZSBk
b3duc3RyZWFtIHJlcGVhdGVyICovCj4gPiArCV9fdTggZGVwdGg7Cj4gPiArCV9fdTggcGFkMTsK
PiA+ICsKPiA+ICsJLyogRGV2aWNlIGNvdW50IHJlY2VpdmVkIGZyb20gaW1tZWRpYXRlIGRvd25z
dHJlYW0gcmVwZWF0ZXIgKi8KPiA+ICsJX191MzIgZGV2aWNlX2NvdW50Owo+ID4gKwo+ID4gKwkv
Kgo+ID4gKwkgKiBNYXggYnVmZmVyIHJlcXVpcmVkIHRvIGhvbGQga3N2IGxpc3QgcmVjZWl2ZWQg
ZnJvbSBpbW1lZGlhdGUKPiA+ICsJICogcmVwZWF0ZXIuIEluIHRoaXMgYXJyYXkgZmlyc3QgZGV2
aWNlX2NvdW50ICogRFJNX01PREVfSERDUF9LU1ZfTEVOCj4gPiArCSAqIHdpbGwgaG9sZCB0aGUg
dmFsaWQga3N2IGJ5dGVzLgo+ID4gKwkgKiBJZiBhdXRoZW50aWNhdGlvbiBzcGVjaWZpY2F0aW9u
IGlzCj4gPiArCSAqCUhEQ1AxLjQgLSBlYWNoIEtTVidzIEJ5dGVzIHdpbGwgYmUgaW4gTGl0dGxl
LUVuZGlhbiBmb3JtYXQuCj4gPiArCSAqCUhEQ1AyLjIgLSBlYWNoIEtTVidzIEJ5dGVzIHdpbGwg
YmUgaW4gQmlnLUVuZGlhbiBmb3JtYXQuCj4gPiArCSAqLwo+ID4gKwlfX3U4IGtzdl9saXN0W0RS
TV9NT0RFX0hEQ1BfS1NWX0xFTiAqIERSTV9NT0RFX0hEQ1BfTUFYX0RFVklDRV9DTlRdOwo+ID4g
KwlfX3U4IHBhZDJbNV07Cj4gPiArfSBfX3BhY2tlZDsKPiAKPiBTbyBJIHRoaW5rIHdlIG5lZWQg
dXNlcnNwYWNlIGZvciB0aGlzLCBidXQgbm90IHN1cmUgd2hlcmUgdGhlIGRpc2N1c3Npb25zCj4g
b24gdGhhdCBhcmUgcmlnaHQgbm93LiBJcyB0aGlzIGZlYXNpYmxlLCBvciB0aGlzIGFuZCBmb2xs
b3ctdXAgaTkxNSBwYXRjaAo+IG1vcmUgZnlpIGFuZCBub3QgZm9yIHVwc3RyZWFtPwoKVGhpcyBp
cyBub3QgZm9yIHVwc3RyZWFtLCBhcyBpIGNvdWxkbid0IGNvbWV1cCB3aXRoIHVzZXJzcGFjZS4g
SSB3aWxsCm1lbnRpb24gdGhhdCBpbiB0aGUgY29tbWl0IG1zZy4gT3RoZXJ3aXNlIHNoYXJlIHlv
dXIgdmlldyBvbiB0aGUgcGF0Y2guCgotUmFtCgo+IC1EYW5pZWwKPiAKPiA+ICsKPiA+ICBzdHJ1
Y3QgZHJtX21vZGVfbW9kZWluZm8gewo+ID4gIAlfX3UzMiBjbG9jazsKPiA+ICAJX191MTYgaGRp
c3BsYXk7Cj4gPiAtLSAKPiA+IDIuMTkuMQo+ID4gCj4gCj4gLS0gCj4gRGFuaWVsIFZldHRlcgo+
IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+IGh0dHA6Ly9ibG9nLmZmd2xs
LmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
