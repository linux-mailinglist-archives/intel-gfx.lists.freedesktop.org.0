Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C552A30AB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 17:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04936E57E;
	Mon,  2 Nov 2020 16:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09226E57E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 16:59:38 +0000 (UTC)
IronPort-SDR: Voq3hiSovjnyHXdJqoeQa19yJ8VrkLmq0G5NrpsosJD+ewd0xM6diZWOehgyK1hWPHcScR2LsG
 V2IMIAKzeraA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="148770953"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="148770953"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 08:59:38 -0800
IronPort-SDR: 5+enoc1YJDtrptOyvB59hayAFVHpjKnfckHJfj3oYUtvWuf0m/UedgxWYuikIyRMLrkffMHWJr
 6p/PXMai2I4Q==
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="538092093"
Received: from wwmckenz-mobl.amr.corp.intel.com (HELO [10.255.229.174])
 ([10.255.229.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 08:59:37 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20201027043228.696518-1-lucas.demarchi@intel.com>
 <20201027043509.xd54q2tkldc4ybyo@ldmartin-desk1>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <c8263e54-7ab9-780b-9e4b-32d8ccf0596d@intel.com>
Date: Mon, 2 Nov 2020 08:59:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201027043509.xd54q2tkldc4ybyo@ldmartin-desk1>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dg1: map/unmap pll clocks
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMjYvMjAgOTozNSBQTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IE9uIE1vbiwgT2N0
IDI2LCAyMDIwIGF0IDA5OjMyOjI2UE0gLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj4g
REcxIHVzZXMgMiByZWdpc3RlcnMgZm9yIHRoZSBkZGkgY2xvY2sgbWFwcGluZywgd2l0aCBQSFkg
QSBhbmQgQiB1c2luZwo+PiBEUENMS0FfQ0ZHQ1IwIGFuZCBQSFkgQyBhbmQgRCB1c2luZyBEUENM
S0ExX0NGR0NSMC4gSGlkZSB0aGlzIGJlaGluZCBhCj4+IHNpbmdsZSBtYWNybyB0aGF0IGNob29z
ZXMgdGhlIGNvcnJlY3QgcmVnaXN0ZXIgYWNjb3JkaW5nIHRvIHRoZSBwaHkKPj4gYmVpbmcgYWNj
ZXNzZWQsIHVzZSB0aGUgY29ycmVjdCBiaXRmaWVsZHMgZm9yIGVhY2ggcGxsL3BoeSBhbmQgaW1w
bGVtZW50Cj4+IHNlcGFyYXRlIGZ1bmN0aW9ucyBmb3IgREcxIHNpbmNlIGl0IGRvZXNuJ3Qgc2hh
cmUgbXVjaCB3aXRoIElDTC9UR0wKPj4gYW55bW9yZS4KPj4KPj4gVGhlIHByZXZpb3VzIHZhbHVl
cyB3ZXJlIGNvcnJlY3QgZm9yIFBIWSBBIGFuZCBCIHNpbmNlIHRoZXkgd2VyZSB1c2luZwo+PiB0
aGUgc2FtZSByZWdpc3RlciBhcyBiZWZvcmUgYW5kIHRoZSBiaXRmaWVsZHMgd2VyZSBtYXRjaGlu
Zy4KPj4KPj4gdjI6IEFkZCBjb21tZW50IGFuZCB0cnkgdG8gc2ltcGxpZnkgREcxX0RQQ0xLQSog
bWFjcm9zIGJ5IHJldXNpbmcKPj4gcHJldmlvdXMgb25lcwo+Pgo+PiBDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+IENjOiBDbGludG9uIFRheWxvciA8
Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+Cj4+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KPiAKPiBNYXR0LCB5b3UgaGFkIGdpdmVuIHlvdSBSLWIgYnV0
IHNpbmNlIEkgY2hhbmdlZCB0aGUgbWFjcm9zIGNvbnNpZGVyYWJseSwKPiBwbGVhc2UgdGFrZSBh
IGxvb2sgaWYgaXQgc3RpbGwgc3RhbmRzLgo+IAo+IHRoYW5rcwo+IEx1Y2FzIERlIE1hcmNoaQo+
IAo+PiAtLS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuY8KgwqDC
oMKgIHwgOTIgKysrKysrKysrKysrKysrKysrKy0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyNSArKysrKy0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjMgKysrKysKPj4gMyBmaWxl
cyBjaGFuZ2VkLCAxMzYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4+IGluZGV4IDYzMzgwYjE2NmMyNS4u
ZjYzNDNhOTUwYjNhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKPj4gQEAgLTI5NzAsNiArMjk3MCwzOCBAQCBzdGF0aWMgdTMyIGljbF9kcGNsa2FfY2Zn
Y3IwX2Nsa19vZmYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiDCoMKgwqDC
oHJldHVybiAwOwo+PiB9Cj4+Cj4+ICtzdGF0aWMgdm9pZCBkZzFfbWFwX3BsbHNfdG9fcG9ydHMo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+
PiArewo+PiArwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+PiArwqDCoMKgIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBs
bCAqcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGw7Cj4+ICvCoMKgwqAgZW51bSBwaHkgcGh5
ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOwo+PiArwqDCoMKg
IHUzMiB2YWw7Cj4+ICsKPj4gK8KgwqDCoCAvKgo+PiArwqDCoMKgwqAgKiBJZiB3ZSBmYWlsIHRo
aXMsIHNvbWV0aGluZyB3ZW50IHZlcnkgd3Jvbmc6IGZpcnN0IDIgUExMcyBzaG91bGQgYmUKPj4g
K8KgwqDCoMKgICogdXNlZCBieSBmaXJzdCAyIHBoeXMgYW5kIGxhc3QgMiBQTExzIGJ5IGxhc3Qg
cGh5cwo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBpZiAoV0FSTl9PTigocGxsLT5pbmZvLT5p
ZCA8IERQTExfSURfREcxX0RQTEwyICYmIHBoeSA+PSBQSFlfQykgfHwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKHBsbC0+aW5mby0+aWQgPj0gRFBMTF9JRF9ERzFfRFBMTDIgJiYgcGh5IDwg
UEhZX0MpKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gKwo+PiArwqDCoMKgIG11dGV4
X2xvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwo+PiArCj4+ICvCoMKgwqAgdmFsID0gaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgREcxX0RQQ0xLQV9DRkdDUjAocGh5KSk7Cj4+ICvCoMKgwqAgV0FS
Tl9PTigodmFsICYgREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KSkgPT0gMCk7Cj4+
ICsKPj4gK8KgwqDCoCB2YWwgJj0gfkRHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0so
cGh5KTsKPj4gK8KgwqDCoCB2YWwgfD0gREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUwocGxs
LT5pbmZvLT5pZCwgcGh5KTsKPj4gK8KgwqDCoCBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgREcx
X0RQQ0xLQV9DRkdDUjAocGh5KSwgdmFsKTsKPj4gK8KgwqDCoCBpbnRlbF9kZV9wb3N0aW5nX3Jl
YWQoZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSkpOwo+PiArCj4+ICvCoMKgwqAgdmFs
ICY9IH5ERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOwo+PiArwqDCoMKgIGludGVs
X2RlX3dyaXRlKGRldl9wcml2LCBERzFfRFBDTEtBX0NGR0NSMChwaHkpLCB2YWwpOwo+PiArCj4+
ICvCoMKgwqAgbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHBsbC5sb2NrKTsKPj4gK30KPj4gKwo+
PiBzdGF0aWMgdm9pZCBpY2xfbWFwX3BsbHNfdG9fcG9ydHMoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+IHsKPj4gQEAgLTMwMTcsNiArMzA0
OSwxOSBAQCBzdGF0aWMgdm9pZCBpY2xfbWFwX3BsbHNfdG9fcG9ydHMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCj4+IMKgwqDCoMKgbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHBsbC5s
b2NrKTsKPj4gfQo+Pgo+PiArc3RhdGljIHZvaWQgZGcxX3VubWFwX3BsbHNfdG9fcG9ydHMoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4+ICvC
oMKgwqAgZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXIt
PnBvcnQpOwo+PiArCj4+ICvCoMKgwqAgbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7
Cj4+ICsKPj4gK8KgwqDCoCBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1Iw
KHBoeSksIDAsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgREcxX0RQQ0xLQV9DRkdDUjBf
RERJX0NMS19PRkYocGh5KSk7Cj4+ICsKPj4gK8KgwqDCoCBtdXRleF91bmxvY2soJmRldl9wcml2
LT5kcGxsLmxvY2spOwo+PiArfQo+PiArCj4+IHN0YXRpYyB2b2lkIGljbF91bm1hcF9wbGxzX3Rv
X3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+PiB7Cj4+IMKgwqDCoMKgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7Cj4+IEBAIC0zMDMyLDYgKzMwNzcsNDAgQEAgc3RhdGljIHZvaWQgaWNsX3VubWFwX3BsbHNf
dG9fcG9ydHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4+IMKgwqDCoMKgbXV0ZXhf
dW5sb2NrKCZkZXZfcHJpdi0+ZHBsbC5sb2NrKTsKPj4gfQo+Pgo+PiArc3RhdGljIHZvaWQgZGcx
X3Nhbml0aXplX3BvcnRfY2xrX29mZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIHBvcnRf
bWFzaywgYm9vbCBkZGlfY2xrX25lZWRlZCkKPj4gK3sKPj4gK8KgwqDCoCBlbnVtIHBvcnQgcG9y
dDsKPj4gK8KgwqDCoCB1MzIgdmFsOwo+PiArCj4+ICvCoMKgwqAgZm9yX2VhY2hfcG9ydF9tYXNr
ZWQocG9ydCwgcG9ydF9tYXNrKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlbnVtIHBoeSBwaHkgPSBp
bnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBib29s
IGRkaV9jbGtfb2ZmOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCB2YWwgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBERzFfRFBDTEtBX0NGR0NSMChwaHkpKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGRk
aV9jbGtfb2ZmID0gdmFsICYgREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KTsKPj4g
Kwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGRkaV9jbGtfbmVlZGVkID09ICFkZGlfY2xrX29mZikK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+ICsKPj4gK8KgwqDCoMKgwqDC
oMKgIC8qCj4+ICvCoMKgwqDCoMKgwqDCoMKgICogUHVudCBvbiB0aGUgY2FzZSBub3cgd2hlcmUg
Y2xvY2sgaXMgZ2F0ZWQsIGJ1dCBpdCB3b3VsZAo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGJlIG5l
ZWRlZCBieSB0aGUgcG9ydC4gU29tZXRoaW5nIGVsc2UgaXMgcmVhbGx5IGJyb2tlbiB0aGVuLgo+
PiArwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGRkaV9jbGtfbmVl
ZGVkKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFdBUk4oMSwgImRkaV9jbGtfbmVlZGVk
PSV1IGRkaV9jbGtfb2ZmPSV1IHBoeT0ldVxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGRkaV9jbGtfbmVlZGVkLCBkZGlfY2xrX29mZiwgcGh5KTsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+ICsKPj4gK8Kg
wqDCoMKgwqDCoMKgIERSTV9OT1RFKCJQSFkgJWMgaXMgZGlzYWJsZWQvaW4gRFNJIG1vZGUgd2l0
aCBhbiB1bmdhdGVkIERESSBjbG9jaywgZ2F0ZSBpdFxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwaHlfbmFtZShwaHkpKTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgdmFsIHw9IERH
MV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgREcxX0RQQ0xLQV9DRkdDUjAocGh5KSwgdmFsKTsKPj4gK8Kg
wqDCoCB9Cj4+ICt9Cj4+ICsKPj4gc3RhdGljIHZvaWQgaWNsX3Nhbml0aXplX3BvcnRfY2xrX29m
ZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIgcG9ydF9tYXNrLCBib29sIGRkaV9jbGtfbmVl
ZGVkKQo+PiB7Cj4+IEBAIC0zMTE0LDcgKzMxOTMsMTAgQEAgdm9pZCBpY2xfc2FuaXRpemVfZW5j
b2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPj4gwqDCoMKg
wqDCoMKgwqAgZGRpX2Nsa19uZWVkZWQgPSBmYWxzZTsKPj4gwqDCoMKgwqB9Cj4+Cj4+IC3CoMKg
wqAgaWNsX3Nhbml0aXplX3BvcnRfY2xrX29mZihkZXZfcHJpdiwgcG9ydF9tYXNrLCBkZGlfY2xr
X25lZWRlZCk7Cj4+ICvCoMKgwqAgaWYgKElTX0RHMShkZXZfcHJpdikpCj4+ICvCoMKgwqDCoMKg
wqDCoCBkZzFfc2FuaXRpemVfcG9ydF9jbGtfb2ZmKGRldl9wcml2LCBwb3J0X21hc2ssIGRkaV9j
bGtfbmVlZGVkKTsKPj4gK8KgwqDCoCBlbHNlCj4+ICvCoMKgwqDCoMKgwqDCoCBpY2xfc2FuaXRp
emVfcG9ydF9jbGtfb2ZmKGRldl9wcml2LCBwb3J0X21hc2ssIGRkaV9jbGtfbmVlZGVkKTsKPj4g
fQo+Pgo+PiBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xrX3NlbGVjdChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPj4gQEAgLTM2NjYsNyArMzc0OCw5IEBAIHN0YXRpYyB2b2lkIGludGVs
X2RkaV9wcmVfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+Pgo+PiDC
oMKgwqDCoGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBjcnRjX3N0YXRlLT5oYXNfcGNoX2Vu
Y29kZXIpOwo+Pgo+PiAtwqDCoMKgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+PiAr
wqDCoMKgIGlmIChJU19ERzEoZGV2X3ByaXYpKQo+PiArwqDCoMKgwqDCoMKgwqAgZGcxX21hcF9w
bGxzX3RvX3BvcnRzKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+PiArwqDCoMKgIGVsc2UgaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4+IMKgwqDCoMKgwqDCoMKgIGljbF9tYXBfcGxsc190
b19wb3J0cyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPj4KPj4gwqDCoMKgwqBpbnRlbF9zZXRfY3B1
X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2LCBwaXBlLCB0cnVlKTsKPj4gQEAgLTM4
NDgsNyArMzkzMiw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4+IMKgwqDCoMKgwqDCoMKgIGludGVsX2RkaV9w
b3N0X2Rpc2FibGVfZHAoc3RhdGUsIGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlLAo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2xkX2Nvbm5fc3RhdGUpOwo+Pgo+
PiAtwqDCoMKgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+PiArwqDCoMKgIGlmIChJ
U19ERzEoZGV2X3ByaXYpKQo+PiArwqDCoMKgwqDCoMKgwqAgZGcxX3VubWFwX3BsbHNfdG9fcG9y
dHMoZW5jb2Rlcik7Cj4+ICvCoMKgwqAgZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkKPj4gwqDCoMKgwqDCoMKgwqAgaWNsX3VubWFwX3BsbHNfdG9fcG9ydHMoZW5jb2Rlcik7Cj4+
Cj4+IMKgwqDCoMKgaWYgKGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIob2xkX2NydGNfc3RhdGUp
IHx8IGlzX3RjX3BvcnQpCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4+IGluZGV4IGY0MWI2ZjhiNTYxOC4uOTdjMTRkMTg3YTgzIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBAQCAtMTEw
MDMsNiArMTEwMDMsMjcgQEAgc3RhdGljIGludCBoc3dfY3J0Y19jb21wdXRlX2Nsb2NrKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjLAo+PiDCoMKgwqDCoHJldHVybiAwOwo+PiB9Cj4+Cj4+ICtzdGF0
aWMgdm9pZCBkZzFfZ2V0X2RkaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHBvcnQgcG9ydCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCj4+ICt7Cj4+ICvCoMKgwqAgZW51bSBp
Y2xfcG9ydF9kcGxsX2lkIHBvcnRfZHBsbF9pZCA9IElDTF9QT1JUX0RQTExfREVGQVVMVDsKPj4g
K8KgwqDCoCBlbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7
Cj4+ICvCoMKgwqAgZW51bSBpbnRlbF9kcGxsX2lkIGlkOwo+PiArwqDCoMKgIHUzMiB2YWw7Cj4+
ICsKPj4gK8KgwqDCoCB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBERzFfRFBDTEtBX0NG
R0NSMChwaHkpKQo+PiArwqDCoMKgwqDCoMKgwqAgJiBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X1NFTF9NQVNLKHBoeSk7CnZhbCBpcyBtYXNrZWQgd2l0aCBjbGsgc2VsIG1hc2sgYmVmb3JlIGJl
aW5nIHBhc3NlZCB0byBQTEwgSUQgbWFjcm8uCkNoZWNrIGNvbW1lbnQgb24gUExMIElEIG1hY3Jv
IGRlZmluaXRpb24gYmVsb3cuCj4+ICvCoMKgwqAgaWQgPSBERzFfRFBDTEtBX0NGR0NSMF9ERElf
Q0xLX1NFTF9UT19QTExfSUQodmFsLCBwaHkpOwo+PiArCj4+ICvCoMKgwqAgaWYgKFdBUk5fT04o
aWQgPiBEUExMX0lEX0RHMV9EUExMMykpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+ICsK
Pj4gK8KgwqDCoCBwaXBlX2NvbmZpZy0+aWNsX3BvcnRfZHBsbHNbcG9ydF9kcGxsX2lkXS5wbGwg
PQo+PiArwqDCoMKgwqDCoMKgwqAgaW50ZWxfZ2V0X3NoYXJlZF9kcGxsX2J5X2lkKGRldl9wcml2
LCBpZCk7Cj4+ICsKPj4gK8KgwqDCoCBpY2xfc2V0X2FjdGl2ZV9wb3J0X2RwbGwocGlwZV9jb25m
aWcsIHBvcnRfZHBsbF9pZCk7Cj4+ICt9Cj4+ICsKPj4gc3RhdGljIHZvaWQgY25sX2dldF9kZGlf
cGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQsCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
cGlwZV9jb25maWcpCj4+IHsKPj4gQEAgLTExMzExLDcgKzExMzMyLDkgQEAgc3RhdGljIHZvaWQg
aHN3X2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBwb3J0ID0gVFJBTlNfRERJX0ZVTkNfQ1RMX1ZBTF9UT19QT1JUKHRt
cCk7Cj4+IMKgwqDCoMKgfQo+Pgo+PiAtwqDCoMKgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExKQo+PiArwqDCoMKgIGlmIChJU19ERzEoZGV2X3ByaXYpKQo+PiArwqDCoMKgwqDCoMKgwqAg
ZGcxX2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2NvbmZpZyk7Cj4+ICvCoMKgwqAg
ZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPj4gwqDCoMKgwqDCoMKgwqAgaWNs
X2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2NvbmZpZyk7Cj4+IMKgwqDCoMKgZWxz
ZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCj4+IMKgwqDCoMKgwqDCoMKgIGNubF9nZXRf
ZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPj4gaW5kZXggOGIwMjFmNzdjYjFmLi45OWM3NDk3ODc1NDEgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+PiBAQCAtMjMwLDEyICsyMzAsMTQgQEAgc3RhdGljIGlubGluZSBi
b29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4+ICNkZWZpbmUgX1RSQU5T
KHRyYW4sIGEsIGIpwqDCoMKgwqDCoMKgwqAgX1BJQ0tfRVZFTih0cmFuLCBhLCBiKQo+PiAjZGVm
aW5lIF9QT1JUKHBvcnQsIGEsIGIpwqDCoMKgwqDCoMKgwqAgX1BJQ0tfRVZFTihwb3J0LCBhLCBi
KQo+PiAjZGVmaW5lIF9QTEwocGxsLCBhLCBiKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX1BJQ0tf
RVZFTihwbGwsIGEsIGIpCj4+ICsjZGVmaW5lIF9QSFkocGh5LCBhLCBiKcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgX1BJQ0tfRVZFTihwaHksIGEsIGIpCj4+Cj4+ICNkZWZpbmUgX01NSU9fUElQRShw
aXBlLCBhLCBiKcKgwqDCoMKgwqDCoMKgIF9NTUlPKF9QSVBFKHBpcGUsIGEsIGIpKQo+PiAjZGVm
aW5lIF9NTUlPX1BMQU5FKHBsYW5lLCBhLCBiKcKgwqDCoCBfTU1JTyhfUExBTkUocGxhbmUsIGEs
IGIpKQo+PiAjZGVmaW5lIF9NTUlPX1RSQU5TKHRyYW4sIGEsIGIpwqDCoMKgwqDCoMKgwqAgX01N
SU8oX1RSQU5TKHRyYW4sIGEsIGIpKQo+PiAjZGVmaW5lIF9NTUlPX1BPUlQocG9ydCwgYSwgYinC
oMKgwqDCoMKgwqDCoCBfTU1JTyhfUE9SVChwb3J0LCBhLCBiKSkKPj4gI2RlZmluZSBfTU1JT19Q
TEwocGxsLCBhLCBiKcKgwqDCoMKgwqDCoMKgIF9NTUlPKF9QTEwocGxsLCBhLCBiKSkKPj4gKyNk
ZWZpbmUgX01NSU9fUEhZKHBoeSwgYSwgYinCoMKgwqDCoMKgwqDCoCBfTU1JTyhfUEhZKHBoeSwg
YSwgYikpCj4+Cj4+ICNkZWZpbmUgX1BIWTMocGh5LCAuLi4pwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBfUElDSyhwaHksIF9fVkFfQVJHU19fKQo+Pgo+PiBAQCAtMTAzMjQsNiArMTAzMjYsNyBAQCBl
bnVtIHNrbF9wb3dlcl9nYXRlIHsKPj4gI2RlZmluZcKgIERQQ0xLQV9DRkdDUjBfRERJX0NMS19T
RUxfTUFTSyhwb3J0KcKgwqDCoCAoMyA8PCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZU
KHBvcnQpKQo+PiAjZGVmaW5lwqAgRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChwbGwsIHBvcnQp
wqDCoMKgICgocGxsKSA8PCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBvcnQpKQo+
Pgo+PiArLyogSUNMIENsb2NrcyAqLwo+PiAjZGVmaW5lIElDTF9EUENMS0FfQ0ZHQ1IwwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBfTU1JTygweDE2NDI4MCkKPj4gI2RlZmluZcKgIElDTF9EUENMS0Ff
Q0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSnCoMKgwqAgKDEgPDwgX1BJQ0socGh5LCAxMCwgMTEsIDI0
KSkKPj4gI2RlZmluZcKgIFJLTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSnCoMKgwqAg
UkVHX0JJVCgocGh5KSArIDEwKQo+PiBAQCAtMTAzMzksNiArMTAzNDIsMjYgQEAgZW51bSBza2xf
cG93ZXJfZ2F0ZSB7Cj4+ICNkZWZpbmXCoCBSS0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChw
bGwsIHBoeSkgXAo+PiDCoMKgwqDCoCgocGxsKSA8PCBSS0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X1NFTF9TSElGVChwaHkpKQo+Pgo+PiArLyoKPj4gKyAqIERHMSBDbG9ja3MKPj4gKyAqIEZpcnN0
IHJlZ2lzdGVycyBjb250cm9scyB0aGUgZmlyc3QgQSBhbmQgQiwgd2hpbGUgdGhlIHNlY29uZCBy
ZWdpc3Rlcgo+PiArICogY29udHJvbHMgdGhlIHBoeSBDIGFuZCBELiBUaGUgYml0cyBvbiB0aGVz
ZSByZWdpc3RlcnMgYXJlIHRoZQo+PiArICogc2FtZSwgYnV0IHJlZmVyIHRvIGRpZmZlcmVudCBw
aHlzCj4+ICsgKi8KPj4gKyNkZWZpbmUgX0RHMV9EUENMS0FfQ0ZHQ1IwwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDB4MTY0MjgwCj4+ICsjZGVmaW5lIF9ERzFfRFBDTEtBMV9DRkdDUjDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgxNkMyODAKPj4gKyNkZWZpbmUgX0RHMV9E
UENMS0FfUEhZX0lEWChwaHkpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoKHBoeSkgJSAyKQo+PiAr
I2RlZmluZSBfREcxX0RQQ0xLQV9QTExfSURYKHBsbCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgo
cGxsKSAlIDIpCj4+ICsjZGVmaW5lIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSnCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgX01NSU9fUEhZKChwaHkpIC8gMiwgXAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9E
RzFfRFBDTEtBX0NGR0NSMCwgXAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9ERzFfRFBDTEtBMV9DRkdDUjApCj4+
ICsjZGVmaW5lwqDCoCBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpwqDCoMKgwqDC
oMKgwqAgUkVHX0JJVChfREcxX0RQQ0xLQV9QSFlfSURYKHBoeSkgKyAxMCkKPj4gKyNkZWZpbmXC
oMKgIERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBsbCwgcGh5KcKgwqDCoCAoX0RHMV9E
UENMS0FfUExMX0lEWChwbGwpIDw8IChfREcxX0RQQ0xLQV9QSFlfSURYKHBoeSkgKiAyKSkKPj4g
KyNkZWZpbmXCoMKgIERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KcKgwqDC
oCBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTCgweDMsIHBoeSkKRXZlbiB0aG91Z2ggaXQg
aXMgaW1wbGljaXRseSB1bmRlcnN0b29kIHRoYXQgdGhlIHZhbHVlIGJlaW5nIHBhc3NlZCBpcyBh
IG1hc2sgcmF0aGVyIHRoYW4gYSBwbGwgdG8gdGhlIENMS19TRUwgbWFjcm8gYW5kCnRoZSBmaXJz
dCBhcmd1bWVudCB0byBDTEtfU0VMIG1hY3JvIGlzIGEgcGxsIGFuZCBub3QgcGxsIG1hc2ssIGEg
b25lIGxpbmUgY29tbWVudCBleHBsYWluaW5nIHRoYXQgd291bGQgYmUgaGVscGZ1bC4gCkJ1dCB1
cCB0byB5b3UgaWYgeW91IGZlZWwgdGhlIHVzYWdlIGlzIHNlbGYgZXhwbGFuYXRvcnkuCj4+ICsj
ZGVmaW5lwqDCoCBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9UT19QTExfSUQodmFsLCBw
aHkpIFwKPj4gK8KgwqDCoCAoKCgodmFsKSAmIERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VM
X01BU0socGh5KSkgPj4gKF9ERzFfRFBDTEtBX1BIWV9JRFgocGh5KSAqIDIpKSArIFwKJiB3aXRo
IERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0soKSBpcyBub3QgcmVxdWlyZWQgaW4g
dGhlIG1hY3JvIGFzIGl0IGlzIGFscmVhZHkgbWFza2VkIApiZWZvcmUgdGhlIHZhbHVlIGlzIHBh
c3NlZCB0byBQTEwgSUQgbWFjcm8uIAo+PiArwqDCoMKgwqAgKChwaHkpID49IFBIWV9DID8gRFBM
TF9JRF9ERzFfRFBMTDIgOiBEUExMX0lEX0RHMV9EUExMMCkpCldvdWxkIHByZWZlciB0aGlzIFBI
WV9DLEQgPC0+IERQTEwyLDMgbWFwcGluZyBjaGVjayB0byBiZSBkZWZpbmVkIGFzIGEgc2VwYXJh
dGUgbWFjcm8gZm9yIGJldHRlciByZWFkYWJpbGl0eS9jbGFyaXR5LgoKQWRpdHlhCj4+ICsKPj4g
LyogQ05MIFBMTCAqLwo+PiAjZGVmaW5lIERQTEwwX0VOQUJMRcKgwqDCoMKgwqDCoMKgIDB4NDYw
MTAKPj4gI2RlZmluZSBEUExMMV9FTkFCTEXCoMKgwqDCoMKgwqDCoCAweDQ2MDE0Cj4+IC0twqAK
Pj4gMi4yOS4wCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
