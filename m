Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E23249CC8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FEA06E30C;
	Wed, 19 Aug 2020 11:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC3A6E2FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 11:54:55 +0000 (UTC)
IronPort-SDR: vFPy6bF/KjZdi65qIGDgbz4uGMcipBvJTyXyCNm8H91Xd2DES18J+t7s00aQgNDmctjEZ7+YM0
 jlwZQJDgZOdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="239922286"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="239922286"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 04:54:55 -0700
IronPort-SDR: uOOox3NUDBRDqokliC5qb/epwEBL0CJqb3yXaIETYozGiCPTet1MxUsJNjEreDRaEmEYj3oVfJ
 oBbpJ80iK/bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="371220337"
Received: from dashah-mobl.ger.corp.intel.com (HELO [10.252.46.246])
 ([10.252.46.246])
 by orsmga001.jf.intel.com with ESMTP; 19 Aug 2020 04:54:53 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-16-maarten.lankhorst@linux.intel.com>
 <ef9789d4-61a3-7087-dcda-75a60f6df899@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0604b44f-a67f-5851-b48f-f9bdbe13d9d2@linux.intel.com>
Date: Wed, 19 Aug 2020 13:54:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <ef9789d4-61a3-7087-dcda-75a60f6df899@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 15/24] drm/i915: Make sure execbuffer always
 passes ww state to i915_vma_pin.
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

T3AgMTItMDgtMjAyMCBvbSAyMTozMiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiA4LzEwLzIwIDEyOjMwIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4gQXMg
YSBwcmVwYXJhdGlvbiBzdGVwIGZvciBmdWxsIG9iamVjdCBsb2NraW5nIGFuZCB3YWl0L3dvdW5k
IGhhbmRsaW5nCj4+IGR1cmluZyBwaW4gYW5kIG9iamVjdCBtYXBwaW5nLCBlbnN1cmUgdGhhdCB3
ZSBhbHdheXMgcGFzcyB0aGUgd3cgY29udGV4dAo+PiBpbiBpOTE1X2dlbV9leGVjYnVmZmVyLmMg
dG8gaTkxNV92bWFfcGluLCB1c2UgbG9ja2RlcCB0byBlbnN1cmUgdGhpcwo+PiBoYXBwZW5zLgo+
Pgo+PiBUaGlzIGFsc28gcmVxdWlyZXMgY2hhbmdpbmcgdGhlIG9yZGVyIG9mIGViX3BhcnNlIHNs
aWdodGx5LCB0byBlbnN1cmUKPj4gd2UgcGFzcyB3dyBhdCBhIHBvaW50IHdoZXJlIHdlIGNvdWxk
IHN0aWxsIGhhbmRsZSAtRURFQURMSyBzYWZlbHkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4KPiBJJ20g
YSBiaXQgY3VyaW91cyBhcyBob3cgd2UgaGFuZGxlIHRoZSBsaWZldGltZSBvbiB0aGUgY29udGVu
ZGluZyBsb2NrcyBzaW5jZSB3ZSBvZnRlbiByZXR1cm4gdGhyb3VnaCB0aGUgY2FsbCB0cmVlIGJl
Zm9yZSBkb2luZyB0aGUgd3cgdHJhbnNhY3Rpb24gcmVsYXhhdGlvbsKgICh0aGUgc2xvdyBsb2Nr
KS4gSGFzIHRoYXQgYmVlbiBhIHByb2JsZW0/Cj4KPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmPCoCB8wqDCoCAyICstCj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmPCoMKgIHzCoMKgIDQgKy0KPj4g
wqAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jwqDCoMKgIHwgMTQw
ICsrKysrKysrKystLS0tLS0tLQo+PiDCoCAuLi4vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuY8KgIHzCoMKgIDQgKy0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
Z2VuNl9wcGd0dC5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDQgKy0KPj4gwqAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5owqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDQgKy0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jwqDCoMKgwqDCoMKg
IHzCoCA2NSArKysrKy0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0LmjCoMKgwqDCoMKgwqAgfMKgIDEzICsrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2NvbnRleHRfdHlwZXMuaCB8wqDCoCAzICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jwqDCoMKgwqAgfMKgwqAgMiArLQo+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAy
ICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgNSArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZW5kZXJzdGF0ZS5jwqDCoCB8wqDCoCAyICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmcuY8KgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTAgKy0KPj4gwqAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5owqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKy0K
Pj4gwqAgLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uY8KgwqAgfMKg
IDE1ICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmPCoMKg
wqDCoMKgIHzCoCAxMiArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1l
bGluZS5owqDCoMKgwqDCoCB8wqDCoCAzICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L21vY2tfZW5naW5lLmPCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKy0KPj4gwqAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmPCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICstCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmPCoMKgIHzCoMKg
IDQgKy0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmPCoMKgwqDC
oMKgwqDCoCB8wqDCoCAyICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmjC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMyArLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTEgKy0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDEzICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmjC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMyArLQo+PiDCoCAyNiBmaWxlcyBjaGFu
Z2VkLCAyMTcgaW5zZXJ0aW9ucygrKSwgMTM3IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBpbmRleCA1YjQ0MzQyODkx
MTcuLmFhNWE4ODM0MGQxMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTM0NTEsNyArMzQ1MSw3IEBAIGluaXRpYWxfcGxhbmVf
dm1hKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiDCoMKgwqDCoMKgIGlmIChJU19F
UlIodm1hKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX29iajsKPj4gwqAgLcKgwqDC
oCBpZiAoaTkxNV9nZ3R0X3Bpbih2bWEsIDAsIFBJTl9NQVBQQUJMRSB8IFBJTl9PRkZTRVRfRklY
RUQgfCBiYXNlKSkKPj4gK8KgwqDCoCBpZiAoaTkxNV9nZ3R0X3Bpbih2bWEsIE5VTEwsIDAsIFBJ
Tl9NQVBQQUJMRSB8IFBJTl9PRkZTRVRfRklYRUQgfCBiYXNlKSkKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGdvdG8gZXJyX29iajsKPj4gwqAgwqDCoMKgwqDCoCBpZiAoaTkxNV9nZW1fb2JqZWN0X2lz
X3RpbGVkKG9iaikgJiYKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCj4+IGluZGV4IDM0YzhiMGRkODVlMC4uY2Y1ZWNiZGU5ZTA2IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPj4gQEAgLTExNTQsNyAr
MTE1NCw3IEBAIHN0YXRpYyBpbnQgY29udGV4dF9iYXJyaWVyX3Rhc2soc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCwKPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGk5MTVfZ2VtX3d3X2N0eF9p
bml0KCZ3dywgdHJ1ZSk7Cj4+IMKgIHJldHJ5Ogo+PiAtwqDCoMKgwqDCoMKgwqAgZXJyID0gaW50
ZWxfY29udGV4dF9waW4oY2UpOwo+PiArwqDCoMKgwqDCoMKgwqAgZXJyID0gaW50ZWxfY29udGV4
dF9waW5fd3coY2UsICZ3dyk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZXJyKQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycjsKPj4gwqAgQEAgLTEyNDcsNyArMTI0Nyw3
IEBAIHN0YXRpYyBpbnQgcGluX3BwZ3R0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
IHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3Cj4+IMKgIMKgwqDCoMKgwqAgaWYgKCFIQVNfTE9H
SUNBTF9SSU5HX0NPTlRFWFRTKHZtLT5pOTE1KSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIHBw
R1RUIGlzIG5vdCBwYXJ0IG9mIHRoZSBsZWdhY3kgY29udGV4dCBpbWFnZSAqLwo+PiAtwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIGdlbjZfcHBndHRfcGluKGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiBnZW42X3BwZ3R0X3BpbihpOTE1X3ZtX3RvX3BwZ3R0KHZt
KSwgd3cpOwo+PiDCoCDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiBpbmRleCA2MDRlMjZh
ZGVhMjMuLjk0YmZkYzU0ZjAzNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+IEBAIC00MzcsMTYgKzQzNywxNyBAQCBlYl9waW5f
dm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcGlu
X2ZsYWdzIHw9IFBJTl9HTE9CQUw7Cj4+IMKgIMKgwqDCoMKgwqAgLyogQXR0ZW1wdCB0byByZXVz
ZSB0aGUgY3VycmVudCBsb2NhdGlvbiBpZiBhdmFpbGFibGUgKi8KPj4gLcKgwqDCoCBpZiAodW5s
aWtlbHkoaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgcGluX2ZsYWdzKSkpIHsKPj4gK8KgwqDCoCAv
KiBUT0RPOiBBZGQgLUVERUFETEsgaGFuZGxpbmcgaGVyZSAqLwo+PiArwqDCoMKgIGlmICh1bmxp
a2VseShpOTE1X3ZtYV9waW5fd3codm1hLCAmZWItPnd3LCAwLCAwLCBwaW5fZmxhZ3MpKSkgewo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVudHJ5LT5mbGFncyAmIEVYRUNfT0JKRUNUX1BJTk5F
RCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwo+PiDCoCDCoMKg
wqDCoMKgwqDCoMKgwqAgLyogRmFpbGluZyB0aGF0IHBpY2sgYW55IF9mcmVlXyBzcGFjZSBpZiBz
dWl0YWJsZSAqLwo+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHVubGlrZWx5KGk5MTVfdm1hX3Bpbih2
bWEsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW50cnkt
PnBhZF90b19zaXplLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGVudHJ5LT5hbGlnbm1lbnQsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZWJfcGluX2ZsYWdzKGVudHJ5LCBldi0+ZmxhZ3MpIHwKPj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQSU5fVVNFUiB8IFBJTl9OT0VWSUNU
KSkpCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodW5saWtlbHkoaTkxNV92bWFfcGluX3d3KHZtYSwg
JmViLT53dywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBlbnRyeS0+cGFkX3RvX3NpemUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZW50cnktPmFsaWdubWVudCwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlYl9waW5fZmxhZ3MoZW50cnksIGV2
LT5mbGFncykgfAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFBJTl9VU0VSIHwgUElOX05PRVZJQ1QpKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIGZhbHNlOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgQEAgLTU4Nyw3ICs1ODgs
NyBAQCBzdGF0aWMgaW5saW5lIGludCB1c2VfY3B1X3JlbG9jKGNvbnN0IHN0cnVjdCByZWxvY19j
YWNoZSAqY2FjaGUsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBvYmotPmNhY2hlX2xldmVsICE9IEk5
MTVfQ0FDSEVfTk9ORSk7Cj4+IMKgIH0KPj4gwqAgLXN0YXRpYyBpbnQgZWJfcmVzZXJ2ZV92bWEo
Y29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+ICtzdGF0aWMgaW50IGViX3Jlc2Vy
dmVfdm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IGViX3ZtYSAqZXYsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB1NjQgcGluX2ZsYWdzKQo+PiDCoCB7Cj4+IEBAIC02MDIsNyArNjAzLDcgQEAgc3Rh
dGljIGludCBlYl9yZXNlcnZlX3ZtYShjb25zdCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4gwqDCoMKgwqDCoCB9
Cj4+IMKgIC3CoMKgwqAgZXJyID0gaTkxNV92bWFfcGluKHZtYSwKPj4gK8KgwqDCoCBlcnIgPSBp
OTE1X3ZtYV9waW5fd3codm1hLCAmZWItPnd3LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBlbnRyeS0+cGFkX3RvX3NpemUsIGVudHJ5LT5hbGlnbm1lbnQsCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGViX3Bpbl9mbGFncyhlbnRyeSwgZXYtPmZsYWdzKSB8
IHBpbl9mbGFncyk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikKPj4gQEAgLTExMzMsOSArMTEzNCwx
MCBAQCBzdGF0aWMgdm9pZCAqcmVsb2Nfa21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAo+PiDCoCB9Cj4+IMKgIMKgIHN0YXRpYyB2b2lkICpyZWxvY19pb21hcChzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCByZWxvY19jYWNoZSAqY2FjaGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5z
aWduZWQgbG9uZyBwYWdlKQo+PiDCoCB7Cj4+ICvCoMKgwqAgc3RydWN0IHJlbG9jX2NhY2hlICpj
YWNoZSA9ICZlYi0+cmVsb2NfY2FjaGU7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGk5MTVfZ2d0dCAq
Z2d0dCA9IGNhY2hlX3RvX2dndHQoY2FjaGUpOwo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcg
b2Zmc2V0Owo+PiDCoMKgwqDCoMKgIHZvaWQgKnZhZGRyOwo+PiBAQCAtMTE1NywxMCArMTE1OSwx
MyBAQCBzdGF0aWMgdm9pZCAqcmVsb2NfaW9tYXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChlcnIpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKGVycik7Cj4+IMKgIC3CoMKgwqDCoMKgwqDCoCB2bWEg
PSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLAo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQSU5fTUFQUEFCTEUg
fAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBQSU5fTk9OQkxPQ0sgLyogTk9XQVJOICovIHwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUElOX05PRVZJQ1QpOwo+PiArwqDCoMKgwqDC
oMKgwqAgdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluX3d3KG9iaiwgJmViLT53dywgTlVM
TCwgMCwgMCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFBJTl9NQVBQQUJMRSB8Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBQSU5fTk9OQkxPQ0sgLyogTk9XQVJOICovIHwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBJTl9OT0VWSUNU
KTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmICh2bWEgPT0gRVJSX1BUUigtRURFQURMSykpCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB2bWE7Cj4+ICsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChJU19FUlIodm1hKSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZW1z
ZXQoJmNhY2hlLT5ub2RlLCAwLCBzaXplb2YoY2FjaGUtPm5vZGUpKTsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwo+PiBAQCAtMTE5Niw5
ICsxMjAxLDEwIEBAIHN0YXRpYyB2b2lkICpyZWxvY19pb21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLAo+PiDCoCB9Cj4+IMKgIMKgIHN0YXRpYyB2b2lkICpyZWxvY192YWRkcihz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCByZWxvY19jYWNoZSAqY2FjaGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdW5zaWduZWQgbG9uZyBwYWdlKQo+PiDCoCB7Cj4+ICvCoMKgwqAgc3RydWN0IHJlbG9j
X2NhY2hlICpjYWNoZSA9ICZlYi0+cmVsb2NfY2FjaGU7Cj4+IMKgwqDCoMKgwqAgdm9pZCAqdmFk
ZHI7Cj4+IMKgIMKgwqDCoMKgwqAgaWYgKGNhY2hlLT5wYWdlID09IHBhZ2UpIHsKPj4gQEAgLTEy
MDYsNyArMTIxMiw3IEBAIHN0YXRpYyB2b2lkICpyZWxvY192YWRkcihzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAo+PiDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCB2YWRkciA9IE5VTEw7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoKGNhY2hlLT52YWRk
ciAmIEtNQVApID09IDApCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhZGRyID0gcmVsb2Nf
aW9tYXAob2JqLCBjYWNoZSwgcGFnZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhZGRy
ID0gcmVsb2NfaW9tYXAob2JqLCBlYiwgcGFnZSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
IXZhZGRyKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YWRkciA9IHJlbG9jX2ttYXAo
b2JqLCBjYWNoZSwgcGFnZSk7Cj4+IMKgwqDCoMKgwqAgfQo+PiBAQCAtMTI5Myw3ICsxMjk5LDcg
QEAgc3RhdGljIGludCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICpl
YiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3VubWFwOwo+PiDCoMKgwqDCoMKgIH0K
Pj4gwqAgLcKgwqDCoCBlcnIgPSBpOTE1X3ZtYV9waW4oYmF0Y2gsIDAsIDAsIFBJTl9VU0VSIHwg
UElOX05PTkJMT0NLKTsKPj4gK8KgwqDCoCBlcnIgPSBpOTE1X3ZtYV9waW5fd3coYmF0Y2gsICZl
Yi0+d3csIDAsIDAsIFBJTl9VU0VSIHwgUElOX05PTkJMT0NLKTsKPj4gwqDCoMKgwqDCoCBpZiAo
ZXJyKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJfdW5tYXA7Cj4+IMKgIEBAIC0xMzE0
LDcgKzEzMjAsNyBAQCBzdGF0aWMgaW50IF9fcmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgKmViLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlYi0+cmVsb2NfY29u
dGV4dCA9IGNlOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoCAtwqDCoMKgwqDCoMKgwqAg
ZXJyID0gaW50ZWxfY29udGV4dF9waW4oY2UpOwo+PiArwqDCoMKgwqDCoMKgwqAgZXJyID0gaW50
ZWxfY29udGV4dF9waW5fd3coY2UsICZlYi0+d3cpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KGVycikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJfdW5waW47Cj4+IMKg
IEBAIC0xNTM3LDggKzE1NDMsNyBAQCByZWxvY2F0ZV9lbnRyeShzdHJ1Y3QgaTkxNV92bWEgKnZt
YSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHZvaWQgKnZhZGRyOwo+PiDCoCDCoCByZXBlYXQ6Cj4+
IC3CoMKgwqDCoMKgwqDCoCB2YWRkciA9IHJlbG9jX3ZhZGRyKHZtYS0+b2JqLAo+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmViLT5yZWxvY19jYWNoZSwKPj4gK8Kg
wqDCoMKgwqDCoMKgIHZhZGRyID0gcmVsb2NfdmFkZHIodm1hLT5vYmosIGViLAo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zmc2V0ID4+IFBBR0VfU0hJRlQp
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUih2YWRkcikpCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiBQVFJfRVJSKHZhZGRyKTsKPj4gQEAgLTE5NTQsNiArMTk1
OSw3IEBAIHN0YXRpYyBub2lubGluZSBpbnQgZWJfcmVsb2NhdGVfcGFyc2Vfc2xvdyhzdHJ1Y3Qg
aTkxNV9leGVjYnVmZmVyICplYiwKPj4gwqDCoMKgwqDCoCBycSA9IGViX3Bpbl9lbmdpbmUoZWIs
IGZhbHNlKTsKPj4gwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHJxKSkgewo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgZXJyID0gUFRSX0VSUihycSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBycSA9IE5VTEw7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycjsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgIEBAIC0y
MjM4LDcgKzIyNDQsOCBAQCBzdGF0aWMgaW50IGk5MTVfcmVzZXRfZ2VuN19zb2xfb2Zmc2V0cyhz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPj4gwqAgfQo+PiDCoCDCoCBzdGF0aWMgc3RydWN0IGk5
MTVfdm1hICoKPj4gLXNoYWRvd19iYXRjaF9waW4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPj4gK3NoYWRvd19iYXRjaF9waW4oc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4+IMKgIHsKPj4gQEAgLTIyNDks
NyArMjI1Niw3IEBAIHNoYWRvd19iYXRjaF9waW4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPj4gwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHZtYSkpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gdm1hOwo+PiDCoCAtwqDCoMKgIGVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAs
IGZsYWdzKTsKPj4gK8KgwqDCoCBlcnIgPSBpOTE1X3ZtYV9waW5fd3codm1hLCAmZWItPnd3LCAw
LCAwLCBmbGFncyk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiBFUlJfUFRSKGVycik7Cj4+IMKgIEBAIC0yNDAzLDE2ICsyNDEwLDMzIEBAIHN0YXRp
YyBpbnQgZWJfcGFyc2VfcGlwZWxpbmUoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+IMKg
wqDCoMKgwqAgcmV0dXJuIGVycjsKPj4gwqAgfQo+PiDCoCArc3RhdGljIHN0cnVjdCBpOTE1X3Zt
YSAqZWJfZGlzcGF0Y2hfc2VjdXJlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSkKPj4gK3sKPj4gK8KgwqDCoCAvKgo+PiArwqDCoMKgwqAgKiBzbmIvaXZi
L3ZsdiBjb25mbGF0ZSB0aGUgImJhdGNoIGluIHBwZ3R0IiBiaXQgd2l0aCB0aGUgIm5vbi1zZWN1
cmUKPj4gK8KgwqDCoMKgICogYmF0Y2giIGJpdC4gSGVuY2Ugd2UgbmVlZCB0byBwaW4gc2VjdXJl
IGJhdGNoZXMgaW50byB0aGUgZ2xvYmFsIGd0dC4KPj4gK8KgwqDCoMKgICogaHN3IHNob3VsZCBo
YXZlIHRoaXMgZml4ZWQsIGJ1dCBiZHcgbXVja3MgaXQgdXAgYWdhaW4uICovCj4+ICvCoMKgwqAg
aWYgKGViLT5iYXRjaF9mbGFncyAmIEk5MTVfRElTUEFUQ0hfU0VDVVJFKQo+PiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bpbl93dyh2bWEtPm9iaiwgJmViLT53
dywgTlVMTCwgMCwgMCwgMCk7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gTlVMTDsKPj4gK30KPj4g
Kwo+PiDCoCBzdGF0aWMgaW50IGViX3BhcnNlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+
PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlYi0+
aTkxNTsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9kZSAqcG9v
bCA9IGViLT5iYXRjaF9wb29sOwo+PiAtwqDCoMKgIHN0cnVjdCBpOTE1X3ZtYSAqc2hhZG93LCAq
dHJhbXBvbGluZTsKPj4gK8KgwqDCoCBzdHJ1Y3QgaTkxNV92bWEgKnNoYWRvdywgKnRyYW1wb2xp
bmUsICpiYXRjaDsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgbGVuOwo+PiDCoMKgwqDCoMKg
IGludCBlcnI7Cj4+IMKgIC3CoMKgwqAgaWYgKCFlYl91c2VfY21kcGFyc2VyKGViKSkKPj4gLcKg
wqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiArwqDCoMKgIGlmICghZWJfdXNlX2NtZHBhcnNlcihl
YikpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGJhdGNoID0gZWJfZGlzcGF0Y2hfc2VjdXJlKGViLCBl
Yi0+YmF0Y2gtPnZtYSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKGJhdGNoKSkKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIoYmF0Y2gpOwo+PiArCj4+ICvC
oMKgwqDCoMKgwqDCoCBnb3RvIHNlY3VyZV9iYXRjaDsKPj4gK8KgwqDCoCB9Cj4+IMKgIMKgwqDC
oMKgwqAgbGVuID0gZWItPmJhdGNoX2xlbjsKPj4gwqDCoMKgwqDCoCBpZiAoIUNNRFBBUlNFUl9V
U0VTX0dHVFQoZWItPmk5MTUpKSB7Cj4+IEBAIC0yNDQwLDcgKzI0NjQsNyBAQCBzdGF0aWMgaW50
IGViX3BhcnNlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+PiDCoMKgwqDCoMKgIGlmIChl
cnIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycjsKPj4gwqAgLcKgwqDCoCBzaGFkb3cg
PSBzaGFkb3dfYmF0Y2hfcGluKHBvb2wtPm9iaiwgZWItPmNvbnRleHQtPnZtLCBQSU5fVVNFUik7
Cj4+ICvCoMKgwqAgc2hhZG93ID0gc2hhZG93X2JhdGNoX3BpbihlYiwgcG9vbC0+b2JqLCBlYi0+
Y29udGV4dC0+dm0sIFBJTl9VU0VSKTsKPj4gwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHNoYWRvdykp
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IFBUUl9FUlIoc2hhZG93KTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIGdvdG8gZXJyOwo+PiBAQCAtMjQ1Miw3ICsyNDc2LDcgQEAgc3RhdGljIGlu
dCBlYl9wYXJzZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPj4gwqDCoMKgwqDCoCBpZiAo
Q01EUEFSU0VSX1VTRVNfR0dUVChlYi0+aTkxNSkpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHRy
YW1wb2xpbmUgPSBzaGFkb3c7Cj4+IMKgIC3CoMKgwqDCoMKgwqDCoCBzaGFkb3cgPSBzaGFkb3df
YmF0Y2hfcGluKHBvb2wtPm9iaiwKPj4gK8KgwqDCoMKgwqDCoMKgIHNoYWRvdyA9IHNoYWRvd19i
YXRjaF9waW4oZWIsIHBvb2wtPm9iaiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAmZWItPmVuZ2luZS0+Z3QtPmdndHQtPnZtLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBJTl9HTE9CQUwpOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUihzaGFkb3cpKSB7Cj4+IEBAIC0yNDY1LDE5ICsyNDg5
LDM0IEBAIHN0YXRpYyBpbnQgZWJfcGFyc2Uoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBlYi0+YmF0Y2hfZmxhZ3MgfD0gSTkxNV9ESVNQQVRDSF9TRUNV
UkU7Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCArwqDCoMKgIGJhdGNoID0gZWJfZGlzcGF0Y2hfc2Vj
dXJlKGViLCBzaGFkb3cpOwo+PiArwqDCoMKgIGlmIChJU19FUlIoYmF0Y2gpKSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoCBlcnIgPSBQVFJfRVJSKGJhdGNoKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8g
ZXJyX3RyYW1wb2xpbmU7Cj4+ICvCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgwqAgZXJyID0gZWJf
cGFyc2VfcGlwZWxpbmUoZWIsIHNoYWRvdywgdHJhbXBvbGluZSk7Cj4+IMKgwqDCoMKgwqAgaWYg
KGVycikKPj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3RyYW1wb2xpbmU7Cj4+ICvCoMKgwqDC
oMKgwqDCoCBnb3RvIGVycl91bnBpbl9iYXRjaDsKPj4gwqAgLcKgwqDCoCBlYi0+dm1hW2ViLT5i
dWZmZXJfY291bnRdLnZtYSA9IGk5MTVfdm1hX2dldChzaGFkb3cpOwo+PiAtwqDCoMKgIGViLT52
bWFbZWItPmJ1ZmZlcl9jb3VudF0uZmxhZ3MgPSBfX0VYRUNfT0JKRUNUX0hBU19QSU47Cj4+IMKg
wqDCoMKgwqAgZWItPmJhdGNoID0gJmViLT52bWFbZWItPmJ1ZmZlcl9jb3VudCsrXTsKPj4gK8Kg
wqDCoCBlYi0+YmF0Y2gtPnZtYSA9IGk5MTVfdm1hX2dldChzaGFkb3cpOwo+PiArwqDCoMKgIGVi
LT5iYXRjaC0+ZmxhZ3MgPSBfX0VYRUNfT0JKRUNUX0hBU19QSU47Cj4+IMKgIMKgwqDCoMKgwqAg
ZWItPnRyYW1wb2xpbmUgPSB0cmFtcG9saW5lOwo+PiDCoMKgwqDCoMKgIGViLT5iYXRjaF9zdGFy
dF9vZmZzZXQgPSAwOwo+PiDCoCArc2VjdXJlX2JhdGNoOgo+PiArwqDCoMKgIGlmIChiYXRjaCkg
ewo+PiArwqDCoMKgwqDCoMKgwqAgZWItPmJhdGNoID0gJmViLT52bWFbZWItPmJ1ZmZlcl9jb3Vu
dCsrXTsKPj4gK8KgwqDCoMKgwqDCoMKgIGViLT5iYXRjaC0+ZmxhZ3MgPSBfX0VYRUNfT0JKRUNU
X0hBU19QSU47Cj4+ICvCoMKgwqDCoMKgwqDCoCBlYi0+YmF0Y2gtPnZtYSA9IGk5MTVfdm1hX2dl
dChiYXRjaCk7Cj4+ICvCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCArZXJy
X3VucGluX2JhdGNoOgo+PiArwqDCoMKgIGlmIChiYXRjaCkKPj4gK8KgwqDCoMKgwqDCoMKgIGk5
MTVfdm1hX3VucGluKGJhdGNoKTsKPj4gwqAgZXJyX3RyYW1wb2xpbmU6Cj4+IMKgwqDCoMKgwqAg
aWYgKHRyYW1wb2xpbmUpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X3ZtYV91bnBpbih0cmFt
cG9saW5lKTsKPj4gQEAgLTI2MTksNyArMjY1OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICplYl9waW5fZW5naW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBib29sIHRocm90
Cj4+IMKgwqDCoMKgwqDCoCAqIEdHVFQgc3BhY2UsIHNvIGRvIHRoaXMgZmlyc3QgYmVmb3JlIHdl
IHJlc2VydmUgYSBzZXFubyBmb3IKPj4gwqDCoMKgwqDCoMKgICogb3Vyc2VsdmVzLgo+PiDCoMKg
wqDCoMKgwqAgKi8KPj4gLcKgwqDCoCBlcnIgPSBpbnRlbF9jb250ZXh0X3BpbihjZSk7Cj4+ICvC
oMKgwqAgZXJyID0gaW50ZWxfY29udGV4dF9waW5fd3coY2UsICZlYi0+d3cpOwo+PiDCoMKgwqDC
oMKgIGlmIChlcnIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUihlcnIpOwo+
PiDCoCBAQCAtMzIzNywzMyArMzI3Niw3IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKPj4gwqAgwqDCoMKgwqDCoCB3d19hY3F1aXJlX2RvbmUoJmViLnd3
LmN0eCk7Cj4+IMKgIC3CoMKgwqAgLyoKPj4gLcKgwqDCoMKgICogc25iL2l2Yi92bHYgY29uZmxh
dGUgdGhlICJiYXRjaCBpbiBwcGd0dCIgYml0IHdpdGggdGhlICJub24tc2VjdXJlCj4+IC3CoMKg
wqDCoCAqIGJhdGNoIiBiaXQuIEhlbmNlIHdlIG5lZWQgdG8gcGluIHNlY3VyZSBiYXRjaGVzIGlu
dG8gdGhlIGdsb2JhbCBndHQuCj4+IC3CoMKgwqDCoCAqIGhzdyBzaG91bGQgaGF2ZSB0aGlzIGZp
eGVkLCBidXQgYmR3IG11Y2tzIGl0IHVwIGFnYWluLiAqLwo+PiAtwqDCoMKgIGlmIChlYi5iYXRj
aF9mbGFncyAmIEk5MTVfRElTUEFUQ0hfU0VDVVJFKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBzdHJ1
Y3QgaTkxNV92bWEgKnZtYTsKPj4gLQo+PiAtwqDCoMKgwqDCoMKgwqAgLyoKPj4gLcKgwqDCoMKg
wqDCoMKgwqAgKiBTbyBvbiBmaXJzdCBnbGFuY2UgaXQgbG9va3MgZnJlYWt5IHRoYXQgd2UgcGlu
IHRoZSBiYXRjaCBoZXJlCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogb3V0c2lkZSBvZiB0aGUgcmVz
ZXJ2YXRpb24gbG9vcC4gQnV0Ogo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIC0gVGhlIGJhdGNoIGlz
IGFscmVhZHkgcGlubmVkIGludG8gdGhlIHJlbGV2YW50IHBwZ3R0LCBzbyB3ZQo+PiAtwqDCoMKg
wqDCoMKgwqDCoCAqwqDCoCBhbHJlYWR5IGhhdmUgdGhlIGJhY2tpbmcgc3RvcmFnZSBmdWxseSBh
bGxvY2F0ZWQuCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogLSBObyBvdGhlciBCTyB1c2VzIHRoZSBn
bG9iYWwgZ3R0ICh3ZWxsIGNvbnRleHRzLCBidXQgbWVoKSwKPj4gLcKgwqDCoMKgwqDCoMKgwqAg
KsKgwqAgc28gd2UgZG9uJ3QgcmVhbGx5IGhhdmUgaXNzdWVzIHdpdGggbXVsdGlwbGUgb2JqZWN0
cyBub3QKPj4gLcKgwqDCoMKgwqDCoMKgwqAgKsKgwqAgZml0dGluZyBkdWUgdG8gZnJhZ21lbnRh
dGlvbi4KPj4gLcKgwqDCoMKgwqDCoMKgwqAgKiBTbyB0aGlzIGlzIGFjdHVhbGx5IHNhZmUuCj4+
IC3CoMKgwqDCoMKgwqDCoMKgICovCj4+IC3CoMKgwqDCoMKgwqDCoCB2bWEgPSBpOTE1X2dlbV9v
YmplY3RfZ2d0dF9waW4oZWIuYmF0Y2gtPnZtYS0+b2JqLCBOVUxMLCAwLCAwLCAwKTsKPj4gLcKg
wqDCoMKgwqDCoMKgIGlmIChJU19FUlIodm1hKSkgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlcnIgPSBQVFJfRVJSKHZtYSk7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJy
X3ZtYTsKPj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4gLQo+PiAtwqDCoMKgwqDCoMKgwqAgYmF0Y2gg
PSB2bWE7Cj4+IC3CoMKgwqAgfSBlbHNlIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGJhdGNoID0gZWIu
YmF0Y2gtPnZtYTsKPj4gLcKgwqDCoCB9Cj4+ICvCoMKgwqAgYmF0Y2ggPSBlYi5iYXRjaC0+dm1h
Owo+PiDCoCDCoMKgwqDCoMKgIC8qIEFsbCBHUFUgcmVsb2NhdGlvbiBiYXRjaGVzIG11c3QgYmUg
c3VibWl0dGVkIHByaW9yIHRvIHRoZSB1c2VyIHJxICovCj4+IMKgwqDCoMKgwqAgR0VNX0JVR19P
TihlYi5yZWxvY19jYWNoZS5ycSk7Cj4+IEBAIC0zMjcyLDcgKzMyODUsNyBAQCBpOTE1X2dlbV9k
b19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4+IMKgwqDCoMKgwqAgZWIucmVx
dWVzdCA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZWIuY29udGV4dCk7Cj4+IMKgwqDCoMKgwqAgaWYg
KElTX0VSUihlYi5yZXF1ZXN0KSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZXJyID0gUFRSX0VS
UihlYi5yZXF1ZXN0KTsKPj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX2JhdGNoX3VucGluOwo+
PiArwqDCoMKgwqDCoMKgwqAgZ290byBlcnJfdm1hOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgwqDC
oMKgwqDCoCBpZiAoaW5fZmVuY2UpIHsKPj4gQEAgLTMzMzMsOSArMzM0Niw2IEBAIGk5MTVfZ2Vt
X2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPj4gwqDCoMKgwqDCoCB9Cj4+
IMKgwqDCoMKgwqAgaTkxNV9yZXF1ZXN0X3B1dChlYi5yZXF1ZXN0KTsKPj4gwqAgLWVycl9iYXRj
aF91bnBpbjoKPj4gLcKgwqDCoCBpZiAoZWIuYmF0Y2hfZmxhZ3MgJiBJOTE1X0RJU1BBVENIX1NF
Q1VSRSkKPj4gLcKgwqDCoMKgwqDCoMKgIGk5MTVfdm1hX3VucGluKGJhdGNoKTsKPj4gwqAgZXJy
X3ZtYToKPj4gwqDCoMKgwqDCoCBlYl9yZWxlYXNlX3ZtYXMoJmViLCB0cnVlKTsKPj4gwqDCoMKg
wqDCoCBpZiAoZWIudHJhbXBvbGluZSkKPj4gQEAgLTM0MjMsNyArMzQzMyw5IEBAIGk5MTVfZ2Vt
X2V4ZWNidWZmZXJfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPj4g
wqDCoMKgwqDCoCAvKiBDb3B5IGluIHRoZSBleGVjIGxpc3QgZnJvbSB1c2VybGFuZCAqLwo+PiDC
oMKgwqDCoMKgIGV4ZWNfbGlzdCA9IGt2bWFsbG9jX2FycmF5KGNvdW50LCBzaXplb2YoKmV4ZWNf
bGlzdCksCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19HRlBf
Tk9XQVJOIHwgR0ZQX0tFUk5FTCk7Cj4+IC3CoMKgwqAgZXhlYzJfbGlzdCA9IGt2bWFsbG9jX2Fy
cmF5KGNvdW50ICsgMSwgZWJfZWxlbWVudF9zaXplKCksCj4+ICsKPj4gK8KgwqDCoCAvKiBBbGxv
Y2F0ZSBleHRyYSBzbG90cyBmb3IgdXNlIGJ5IHRoZSBjb21tYW5kIHBhcnNlciAqLwo+PiArwqDC
oMKgIGV4ZWMyX2xpc3QgPSBrdm1hbGxvY19hcnJheShjb3VudCArIDIsIGViX2VsZW1lbnRfc2l6
ZSgpLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19HRlBf
Tk9XQVJOIHwgR0ZQX0tFUk5FTCk7Cj4+IMKgwqDCoMKgwqAgaWYgKGV4ZWNfbGlzdCA9PSBOVUxM
IHx8IGV4ZWMyX2xpc3QgPT0gTlVMTCkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2RiZygm
aTkxNS0+ZHJtLAo+PiBAQCAtMzUwMCw4ICszNTEyLDggQEAgaTkxNV9nZW1fZXhlY2J1ZmZlcjJf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPj4gwqDCoMKgwqDCoCBp
ZiAoZXJyKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4gwqAgLcKgwqDCoCAv
KiBBbGxvY2F0ZSBhbiBleHRyYSBzbG90IGZvciB1c2UgYnkgdGhlIGNvbW1hbmQgcGFyc2VyICov
Cj4+IC3CoMKgwqAgZXhlYzJfbGlzdCA9IGt2bWFsbG9jX2FycmF5KGNvdW50ICsgMSwgZWJfZWxl
bWVudF9zaXplKCksCj4+ICvCoMKgwqAgLyogQWxsb2NhdGUgZXh0cmEgc2xvdHMgZm9yIHVzZSBi
eSB0aGUgY29tbWFuZCBwYXJzZXIgKi8KPj4gK8KgwqDCoCBleGVjMl9saXN0ID0ga3ZtYWxsb2Nf
YXJyYXkoY291bnQgKyAyLCBlYl9lbGVtZW50X3NpemUoKSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9fR0ZQX05PV0FSTiB8IEdGUF9LRVJORUwpOwo+PiDC
oMKgwqDCoMKgIGlmIChleGVjMl9saXN0ID09IE5VTEwpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGRybV9kYmcoJmk5MTUtPmRybSwgIkZhaWxlZCB0byBhbGxvY2F0ZSBleGVjIGxpc3QgZm9yICV6
ZCBidWZmZXJzXG4iLAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiBpbmRleCA1NjM4MzljYmFmMWMuLmUx
ZDUwYTVhMTQ3NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4gQEAgLTM2LDcgKzM2LDcgQEAg
c3RhdGljIGludCBfX2lndF9ncHVfcmVsb2Moc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+
IMKgwqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+
IMKgIC3CoMKgwqAgZXJyID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgUElOX1VTRVIgfCBQSU5f
SElHSCk7Cj4+ICvCoMKgwqAgZXJyID0gaTkxNV92bWFfcGluX3d3KHZtYSwgJmViLT53dywgMCwg
MCwgUElOX1VTRVIgfCBQSU5fSElHSCk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+IMKgIEBAIC0xMzksNyArMTM5LDcgQEAgc3RhdGlj
IGludCBpZ3RfZ3B1X3JlbG9jKHZvaWQgKmFyZykKPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGk5
MTVfZ2VtX3d3X2N0eF9pbml0KCZlYi53dywgZmFsc2UpOwo+PiDCoCByZXRyeToKPj4gLcKgwqDC
oMKgwqDCoMKgIGVyciA9IGludGVsX2NvbnRleHRfcGluKGViLmNvbnRleHQpOwo+PiArwqDCoMKg
wqDCoMKgwqAgZXJyID0gaW50ZWxfY29udGV4dF9waW5fd3coZWIuY29udGV4dCwgJmViLnd3KTsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghZXJyKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGVyciA9IF9faWd0X2dwdV9yZWxvYygmZWIsIHNjcmF0Y2gpOwo+PiDCoCBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5jCj4+IGluZGV4IDdlNWE4NmI3NzRhNy4uZmQwZDI0ZDI4
NzYzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW42X3BwZ3R0LmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5jCj4+IEBAIC0zNjgs
NyArMzY4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqcGRfdm1hX2NyZWF0ZShzdHJ1Y3Qg
Z2VuNl9wcGd0dCAqcHBndHQsIGludCBzaXplKQo+PiDCoMKgwqDCoMKgIHJldHVybiB2bWE7Cj4+
IMKgIH0KPj4gwqAgLWludCBnZW42X3BwZ3R0X3BpbihzdHJ1Y3QgaTkxNV9wcGd0dCAqYmFzZSkK
Pj4gK2ludCBnZW42X3BwZ3R0X3BpbihzdHJ1Y3QgaTkxNV9wcGd0dCAqYmFzZSwgc3RydWN0IGk5
MTVfZ2VtX3d3X2N0eCAqd3cpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZ2VuNl9wcGd0
dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGJhc2UpOwo+PiDCoMKgwqDCoMKgIGludCBlcnI7Cj4+
IEBAIC0zOTQsNyArMzk0LDcgQEAgaW50IGdlbjZfcHBndHRfcGluKHN0cnVjdCBpOTE1X3BwZ3R0
ICpiYXNlKQo+PiDCoMKgwqDCoMKgwqAgKi8KPj4gwqDCoMKgwqDCoCBlcnIgPSAwOwo+PiDCoMKg
wqDCoMKgIGlmICghYXRvbWljX3JlYWQoJnBwZ3R0LT5waW5fY291bnQpKQo+PiAtwqDCoMKgwqDC
oMKgwqAgZXJyID0gaTkxNV9nZ3R0X3BpbihwcGd0dC0+dm1hLCBHRU42X1BEX0FMSUdOLCBQSU5f
SElHSCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlcnIgPSBpOTE1X2dndHRfcGluKHBwZ3R0LT52bWEs
IHd3LCBHRU42X1BEX0FMSUdOLCBQSU5fSElHSCk7Cj4+IMKgwqDCoMKgwqAgaWYgKCFlcnIpCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBhdG9taWNfaW5jKCZwcGd0dC0+cGluX2NvdW50KTsKPj4gwqDC
oMKgwqDCoCBtdXRleF91bmxvY2soJnBwZ3R0LT5waW5fbXV0ZXgpOwo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvZ2VuNl9wcGd0dC5oCj4+IGluZGV4IDcyNDk2NzJlNTgwMi4uMzM1NzIyOGYzMzA0IDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW42X3BwZ3R0LmgKPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5oCj4+IEBAIC04LDYgKzgsOCBA
QAo+PiDCoCDCoCAjaW5jbHVkZSAiaW50ZWxfZ3R0LmgiCj4+IMKgICtzdHJ1Y3QgaTkxNV9nZW1f
d3dfY3R4Owo+PiArCj4+IMKgIHN0cnVjdCBnZW42X3BwZ3R0IHsKPj4gwqDCoMKgwqDCoCBzdHJ1
Y3QgaTkxNV9wcGd0dCBiYXNlOwo+PiDCoCBAQCAtNjcsNyArNjksNyBAQCBzdGF0aWMgaW5saW5l
IHN0cnVjdCBnZW42X3BwZ3R0ICp0b19nZW42X3BwZ3R0KHN0cnVjdCBpOTE1X3BwZ3R0ICpiYXNl
KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChwdCA9IGk5MTVfcHRfZW50cnkocGQs
IGl0ZXIpLCB0cnVlKTvCoMKgwqDCoMKgwqDCoCBcCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgICsr
aXRlcikKPj4gwqAgLWludCBnZW42X3BwZ3R0X3BpbihzdHJ1Y3QgaTkxNV9wcGd0dCAqYmFzZSk7
Cj4+ICtpbnQgZ2VuNl9wcGd0dF9waW4oc3RydWN0IGk5MTVfcHBndHQgKmJhc2UsIHN0cnVjdCBp
OTE1X2dlbV93d19jdHggKnd3KTsKPj4gwqAgdm9pZCBnZW42X3BwZ3R0X3VucGluKHN0cnVjdCBp
OTE1X3BwZ3R0ICpiYXNlKTsKPj4gwqAgdm9pZCBnZW42X3BwZ3R0X3VucGluX2FsbChzdHJ1Y3Qg
aTkxNV9wcGd0dCAqYmFzZSk7Cj4+IMKgIHZvaWQgZ2VuNl9wcGd0dF9lbmFibGUoc3RydWN0IGlu
dGVsX2d0ICpndCk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKPj4g
aW5kZXggZWZlOWE3YTg5ZWRlLi5jMDVlZjIxM2JkYzIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKPj4gQEAgLTkzLDEyICs5MywxMiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9jb250ZXh0X2FjdGl2ZV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
Pj4gwqDCoMKgwqDCoCBpOTE1X2FjdGl2ZV9yZWxlYXNlKCZjZS0+YWN0aXZlKTsKPj4gwqAgfQo+
PiDCoCAtc3RhdGljIGludCBfX2NvbnRleHRfcGluX3N0YXRlKHN0cnVjdCBpOTE1X3ZtYSAqdm1h
KQo+PiArc3RhdGljIGludCBfX2NvbnRleHRfcGluX3N0YXRlKHN0cnVjdCBpOTE1X3ZtYSAqdm1h
LCBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHVuc2ln
bmVkIGludCBiaWFzID0gaTkxNV9nZ3R0X3Bpbl9iaWFzKHZtYSkgfCBQSU5fT0ZGU0VUX0JJQVM7
Cj4+IMKgwqDCoMKgwqAgaW50IGVycjsKPj4gwqAgLcKgwqDCoCBlcnIgPSBpOTE1X2dndHRfcGlu
KHZtYSwgMCwgYmlhcyB8IFBJTl9ISUdIKTsKPj4gK8KgwqDCoCBlcnIgPSBpOTE1X2dndHRfcGlu
KHZtYSwgd3csIDAsIGJpYXMgfCBQSU5fSElHSCk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+IMKgIEBAIC0xMjcsMTEgKzEyNywxMiBA
QCBzdGF0aWMgdm9pZCBfX2NvbnRleHRfdW5waW5fc3RhdGUoc3RydWN0IGk5MTVfdm1hICp2bWEp
Cj4+IMKgwqDCoMKgwqAgX19pOTE1X3ZtYV91bnBpbih2bWEpOwo+PiDCoCB9Cj4+IMKgIC1zdGF0
aWMgaW50IF9fcmluZ19hY3RpdmUoc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCj4+ICtzdGF0aWMg
aW50IF9fcmluZ19hY3RpdmUoc3RydWN0IGludGVsX3JpbmcgKnJpbmcsCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCj4+IMKgIHsKPj4gwqDC
oMKgwqDCoCBpbnQgZXJyOwo+PiDCoCAtwqDCoMKgIGVyciA9IGludGVsX3JpbmdfcGluKHJpbmcp
Owo+PiArwqDCoMKgIGVyciA9IGludGVsX3JpbmdfcGluKHJpbmcsIHd3KTsKPj4gwqDCoMKgwqDC
oCBpZiAoZXJyKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4gwqAgQEAgLTE1
MiwyNCArMTUzLDI1IEBAIHN0YXRpYyB2b2lkIF9fcmluZ19yZXRpcmUoc3RydWN0IGludGVsX3Jp
bmcgKnJpbmcpCj4+IMKgwqDCoMKgwqAgaW50ZWxfcmluZ191bnBpbihyaW5nKTsKPj4gwqAgfQo+
PiDCoCAtc3RhdGljIGludCBpbnRlbF9jb250ZXh0X3ByZV9waW4oc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlKQo+PiArc3RhdGljIGludCBpbnRlbF9jb250ZXh0X3ByZV9waW4oc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+PiDC
oCDCoMKgwqDCoMKgIENFX1RSQUNFKGNlLCAiYWN0aXZlXG4iKTsKPj4gwqAgLcKgwqDCoCBlcnIg
PSBfX3JpbmdfYWN0aXZlKGNlLT5yaW5nKTsKPj4gK8KgwqDCoCBlcnIgPSBfX3JpbmdfYWN0aXZl
KGNlLT5yaW5nLCB3dyk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiBlcnI7Cj4+IMKgIC3CoMKgwqAgZXJyID0gaW50ZWxfdGltZWxpbmVfcGluKGNl
LT50aW1lbGluZSk7Cj4+ICvCoMKgwqAgZXJyID0gaW50ZWxfdGltZWxpbmVfcGluKGNlLT50aW1l
bGluZSwgd3cpOwo+PiDCoMKgwqDCoMKgIGlmIChlcnIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBn
b3RvIGVycl9yaW5nOwo+PiDCoCDCoMKgwqDCoMKgIGlmICghY2UtPnN0YXRlKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIC3CoMKgwqAgZXJyID0gX19jb250ZXh0X3Bpbl9z
dGF0ZShjZS0+c3RhdGUpOwo+PiArwqDCoMKgIGVyciA9IF9fY29udGV4dF9waW5fc3RhdGUoY2Ut
PnN0YXRlLCB3dyk7Cj4+IMKgwqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGdvdG8gZXJyX3RpbWVsaW5lOwo+PiDCoCBAQCAtMTkyLDcgKzE5NCw4IEBAIHN0YXRpYyB2b2lk
IGludGVsX2NvbnRleHRfcG9zdF91bnBpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4+IMKg
wqDCoMKgwqAgX19yaW5nX3JldGlyZShjZS0+cmluZyk7Cj4+IMKgIH0KPj4gwqAgLWludCBfX2lu
dGVsX2NvbnRleHRfZG9fcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPj4gK2ludCBfX2lu
dGVsX2NvbnRleHRfZG9fcGluX3d3KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cp
Cj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBib29sIGhhbmRvZmYgPSBmYWxzZTsKPj4gwqDCoMKgwqDC
oCB2b2lkICp2YWRkcjsKPj4gQEAgLTIwOSw3ICsyMTIsMTQgQEAgaW50IF9faW50ZWxfY29udGV4
dF9kb19waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+PiDCoMKgwqDCoMKgwqAgKiByZWZj
b3VudCBmb3IgX19pbnRlbF9jb250ZXh0X2FjdGl2ZSgpLCB3aGljaCBwcmV2ZW50IGEgbG9jawo+
PiDCoMKgwqDCoMKgwqAgKiBpbnZlcnNpb24gb2YgY2UtPnBpbl9tdXRleCB2cyBkbWFfcmVzdl9s
b2NrKCkuCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgIGVyciA9IGludGVsX2NvbnRleHRf
cHJlX3BpbihjZSk7Cj4+ICsKPj4gK8KgwqDCoCBlcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhj
ZS0+dGltZWxpbmUtPmh3c3BfZ2d0dC0+b2JqLCB3dyk7Cj4KPiBTaW5jZSBod3NwX2dndHQtPm9i
aiBpcyBhIHNoYXJlZCBnZW0gb2JqZWN0IGR1ZSB0byBzdWItYWxsb2NhdGlvbiwgaG9sZGluZyB0
aGlzIGxvY2sgYWNyb3NzIGV4ZWNidWYgdW5uZWNlc3NhcmlseSBzdGFsbHMgc3VibWlzc2lvbiBv
ZiBvdGhlciBjbGllbnRzIHRoYXQgc2hhcmUgdGhlIHNhbWUgc3ViYWxsb2NhdGlvbiBzbGFiLiBT
aW5jZSBpdCdzIHBpbm5lZCB1c2luZyBhIHBpbi1jb3VudCByYXRoZXIgdGhhbiB1c2luZyBhIGRt
YS1mZW5jZSwgaXQgc2hvdWxkIGJlIGNvbXBsZXRlbHkgc2FmZSB0byBkcm9wIHRoaXMgbG9jayBi
ZWZvcmUgcmV0dXJuaW5nIHplcm8gZnJvbSB0aGlzIGZ1bmN0aW9uLiBIb3dldmVyIGlmIHdlIGlu
IHRoZSBmdXR1cmUgbW92ZSB0byBwcm90ZWN0aW5nIHRoZSByZXNpZGVuY3kgd2l0aCB0aGUgcmVx
dWVzdCBkbWEtZmVuY2Ugd2UgY2FuIG5vIGxvbmdlciBkcm9wIGl0IGhlcmUsIHNpbmNlIHdlIGRv
bid0IGhhdmUgdGhhdCBkbWEtZmVuY2UgeWV0Lgo+Cj4gQW4gYWx0ZXJuYXRpdmUgYnJvdWdodCB1
cCBieSBEYW5pZWwgd291bGQgYmUgdG8gcmV2ZXJ0IHRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2Vz
IHRoZSBod3NwIGNhY2hlbGluZSBzdWJhbGxvY2F0aW9uLgpJJ20gcmVtb3ZpbmcgdGhlIGNhY2hl
bGluZSBhdCB0aGUgZW5kIG9mIHRoZSBuZXh0IHNlcmllcywgYnV0IEkgbmVlZCB0byBmaWd1cmUg
b3V0IHdoeSBib290aW5nIGZhaWxzIHN0aWxsIG9uIGxlZ2FjeSBwbGF0Zm9ybXMsIG90aGVyd2lz
ZSBoYXBweSB3aXRoIHRoZSBzb2x1dGlvbi4gRXZlbiByb2xsb3ZlciB3b3JrcyBhcyBleHBlY3Rl
ZCwgd2l0aG91dCBhIHJlcXVpcmVtZW50IG9mIGk5MTVfdm1hX3Bpbi4KPgo+PiArwqDCoMKgIGlm
ICghZXJyICYmIGNlLT5yaW5nLT52bWEtPm9iaikKPj4gK8KgwqDCoMKgwqDCoMKgIGVyciA9IGk5
MTVfZ2VtX29iamVjdF9sb2NrKGNlLT5yaW5nLT52bWEtPm9iaiwgd3cpOwo+PiArwqDCoMKgIGlm
ICghZXJyICYmIGNlLT5zdGF0ZSkKPj4gK8KgwqDCoMKgwqDCoMKgIGVyciA9IGk5MTVfZ2VtX29i
amVjdF9sb2NrKGNlLT5zdGF0ZS0+b2JqLCB3dyk7Cj4KPiBDb3VsZCB0aGVzZSB0aHJlZSBsb2Nr
cyBiZSBtYWRlIGludGVycnVwdGlibGU/ClRoZXkgYWxyZWFkeSBhcmUsIHdoZW4gd3ctPmludGVy
cnVwdGlibGUgaXMgc2V0LiA6LSkKPgo+PiAraW50IGk5MTVfZ2d0dF9waW4oc3RydWN0IGk5MTVf
dm1hICp2bWEsIHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LAo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgIHUzMiBhbGlnbiwgdW5zaWduZWQgaW50IGZsYWdzKTsKPj4gwqAgwqAgc3RhdGljIGlubGlu
ZSBpbnQgaTkxNV92bWFfcGluX2NvdW50KGNvbnN0IHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+PiDC
oCB7Cj4KPiAvVGhvbWFzCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
