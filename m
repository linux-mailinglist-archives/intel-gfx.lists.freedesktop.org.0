Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DAB5F664
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BE26E2F2;
	Thu,  4 Jul 2019 10:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893486E2FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:14:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:14:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="362910974"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jul 2019 03:14:34 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DE4465C1EB4; Thu,  4 Jul 2019 13:14:26 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190703171913.16585-3-chris@chris-wilson.co.uk>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-3-chris@chris-wilson.co.uk>
Date: Thu, 04 Jul 2019 13:14:26 +0300
Message-ID: <87o92a2jjx.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: Defer the free for alloc
 error paths
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgd2Ug
aGl0IGFuIGVycm9yIHdoaWxlIGFsbG9jYXRpbmcgdGhlIHBhZ2UgdGFibGVzLCB3ZSBoYXZlIHRv
IHVud2luZAo+IHRoZSBpbmNvbXBsZXRlIHVwZGF0ZXMsIGFuZCB3aXNoIHRvIGZyZWUgdGhlIHVu
dXNlZCBwZC4gSG93ZXZlciwgd2UgYXJlCj4gbm90IGFsbG93ZWQgdG8gYmUgaG9kaW5nIHRoZSBz
cGlubG9jayBhdCB0aGF0IHBvaW50LCBhbmQgc28gbXVzdCB1c2UgdGhlCj4gbGF0ZXIgZnJlZSB0
byBkZWZlciBpdCB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLgo+Cj4gPDM+IFs0MTQuMzYz
Nzk1XSBCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29udGV4dCBh
dCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzo0NzIKPiA8Mz4gWzQxNC4zNjQx
NjddIGluX2F0b21pYygpOiAxLCBpcnFzX2Rpc2FibGVkKCk6IDAsIHBpZDogMzkwNSwgbmFtZTog
aTkxNV9zZWxmdGVzdAo+IDw0PiBbNDE0LjM2NDQwNl0gMyBsb2NrcyBoZWxkIGJ5IGk5MTVfc2Vs
ZnRlc3QvMzkwNToKPiA8ND4gWzQxNC4zNjQ0MDhdICAjMDogMDAwMDAwMDAzNGZlOGFhOCAoJmRl
di0+bXV0ZXgpey4uLi59LCBhdDogZGV2aWNlX2RyaXZlcl9hdHRhY2grMHgxOC8weDUwCj4gPDQ+
IFs0MTQuMzY0NDE1XSAgIzE6IDAwMDAwMDAwNmJkOGE1NjAgKCZkZXYtPnN0cnVjdF9tdXRleCl7
Ky4rLn0sIGF0OiBpZ3RfY3R4X2V4ZWMrMHhiNy8weDQxMCBbaTkxNV0KPiA8ND4gWzQxNC4zNjQ0
NzZdICAjMjogMDAwMDAwMDAzZGZkYzc2NiAoJigmcGQtPmxvY2spLT5ybG9jayl7Ky4rLn0sIGF0
OiBnZW44X3BwZ3R0X2FsbG9jX3BkcCsweDQ0OC8weDU0MCBbaTkxNV0KPiA8Mz4gWzQxNC4zNjQ1
MjldIFByZWVtcHRpb24gZGlzYWJsZWQgYXQ6Cj4gPDQ+IFs0MTQuMzY0NTMwXSBbPDAwMDAwMDAw
MDAwMDAwMDA+XSAweDAKPiA8ND4gWzQxNC4zNjQ2OTZdIENQVTogMCBQSUQ6IDM5MDUgQ29tbTog
aTkxNV9zZWxmdGVzdCBUYWludGVkOiBHICAgICBVICAgICAgICAgICAgNS4yLjAtcmM3LUNJLUNJ
X0RSTV82NDAzKyAjMQo+IDw0PiBbNDE0LjM2NDY5OF0gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFu
ZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgcmVsLTEuMTAuMS0wLWc4ODkxNjk3
LXByZWJ1aWx0LnFlbXUtcHJvamVjdC5vcmcgMDQvMDEvMjAxNAo+IDw0PiBbNDE0LjM2NDY5OV0g
Q2FsbCBUcmFjZToKPiA8ND4gWzQxNC4zNjQ3MDRdICBkdW1wX3N0YWNrKzB4NjcvMHg5Ygo+IDw0
PiBbNDE0LjM2NDcwOF0gIF9fX21pZ2h0X3NsZWVwKzB4MTY3LzB4MjUwCj4gPDQ+IFs0MTQuMzY0
Nzc3XSAgdm1fZnJlZV9wYWdlKzB4MjQvMHhjMCBbaTkxNV0KPiA8ND4gWzQxNC4zNjQ4NTJdICBm
cmVlX3BkKzB4Zi8weDIwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NDg5N10gIGdlbjhfcHBndHRfYWxs
b2NfcGRwKzB4NDg5LzB4NTQwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NDk0Nl0gIGdlbjhfcHBndHRf
YWxsb2NfNGx2bCsweDhlLzB4MmUwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NDk5Ml0gIHBwZ3R0X2Jp
bmRfdm1hKzB4MmUvMHg2MCBbaTkxNV0KPiA8ND4gWzQxNC4zNjUwMzldICBpOTE1X3ZtYV9iaW5k
KzB4ZTgvMHgyYzAgW2k5MTVdCj4gPDQ+IFs0MTQuMzY1MDg4XSAgX19pOTE1X3ZtYV9kb19waW4r
MHhhMS8weGQyMCBbaTkxNV0KPgo+IEZpeGVzOiAxZDFiNTQ5MGI5MWMgKCJkcm0vaTkxNS9ndHQ6
IFJlcGxhY2Ugc3RydWN0X211dGV4IHNlcmlhbGlzYXRpb24gZm9yIGFsbG9jYXRpb24iKQo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgoKRnJvbSBhbm90aGVyIHRocmVhZCwKClJldmll
d2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgNiArKysrLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggOWU3NjM0N2UwMzllLi4xMDY1NzUzZTg2
ZmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0xNDg5LDcgKzE0
ODksOCBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAo+ICAJCWdlbjhfcHBndHRfc2V0X3BkcGUocGRwLCB2bS0+c2NyYXRjaF9w
ZCwgcGRwZSk7Cj4gIAkJR0VNX0JVR19PTighYXRvbWljX3JlYWQoJnBkcC0+dXNlZCkpOwo+ICAJ
CWF0b21pY19kZWMoJnBkcC0+dXNlZCk7Cj4gLQkJZnJlZV9wZCh2bSwgcGQpOwo+ICsJCUdFTV9C
VUdfT04oYWxsb2MpOwo+ICsJCWFsbG9jID0gcGQ7IC8qIGRlZmVyIHRoZSBmcmVlIHRvIGFmdGVy
IHRoZSBsb2NrICovCj4gIAl9Cj4gIAlzcGluX3VubG9jaygmcGRwLT5sb2NrKTsKPiAgdW53aW5k
Ogo+IEBAIC0xNTU4LDcgKzE1NTksOCBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfNGx2
bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiAgCXNwaW5fbG9jaygmcG1sNC0+bG9j
ayk7Cj4gIAlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmcGRwLT51c2VkKSkgewo+ICAJCWdlbjhf
cHBndHRfc2V0X3BtbDRlKHBtbDQsIHZtLT5zY3JhdGNoX3BkcCwgcG1sNGUpOwo+IC0JCWZyZWVf
cGQodm0sIHBkcCk7Cj4gKwkJR0VNX0JVR19PTihhbGxvYyk7Cj4gKwkJYWxsb2MgPSBwZHA7IC8q
IGRlZmVyIHRoZSBmcmVlIHVudGlsIGFmdGVyIHRoZSBsb2NrICovCj4gIAl9Cj4gIAlzcGluX3Vu
bG9jaygmcG1sNC0+bG9jayk7Cj4gIHVud2luZDoKPiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
