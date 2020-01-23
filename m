Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F2414694D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50ED6FCBE;
	Thu, 23 Jan 2020 13:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29916FCBE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:39:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19982861-1500050 for multiple; Thu, 23 Jan 2020 13:39:06 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200123132707.GK13686@intel.com>
References: <20200123125934.1401755-1-chris@chris-wilson.co.uk>
 <20200123132707.GK13686@intel.com>
Message-ID: <157978674377.19995.13523461350756168685@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 13:39:03 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Detect overflow in
 calculating dumb buffer size
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDEtMjMgMTM6Mjc6MDcpCj4gT24gVGh1LCBK
YW4gMjMsIDIwMjAgYXQgMTI6NTk6MzRQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
VG8gbXVsdGlwbHkgMiB1MzIgbnVtYmVycyB0byBnZW5lcmF0ZSBhIHU2NCBpbiBDIHJlcXVpcmVz
IGEgYml0IG9mCj4gPiBmb3Jld2FybmluZyBmb3IgdGhlIGNvbXBpbGVyLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENj
OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gPiBDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmcKPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMgfCA1ICsrKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+IGluZGV4IDBhMjAwODMz
MjFhMy4uZmY3OWRhNTY1N2Y4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4g
QEAgLTI2NSw3ICsyNjUsMTAgQEAgaTkxNV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxl
ICpmaWxlLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBEUk1fRk9STUFUX01PRF9MSU5FQVIpKQo+ID4gICAgICAgICAgICAgICBhcmdzLT5waXRj
aCA9IEFMSUdOKGFyZ3MtPnBpdGNoLCA0MDk2KTsKPiA+ICAKPiA+IC0gICAgIGFyZ3MtPnNpemUg
PSBhcmdzLT5waXRjaCAqIGFyZ3MtPmhlaWdodDsKPiA+ICsgICAgIGlmIChhcmdzLT5waXRjaCA8
IGFyZ3MtPndpZHRoKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ICsKPiA+
ICsgICAgIGFyZ3MtPnNpemUgPSBtdWxfdTMyX3UzMihhcmdzLT5waXRjaCwgYXJncy0+aGVpZ2h0
KTsKPiAKPiBJIHRob3VnaHQgc29tZXRoaW5nIHdvdWxkIGhhdmUgY2hlY2tlZCB0aGVzZSBhZ2Fp
bnN0IHRoZSBtb2RlX2NvbmZpZwo+IGZiIGxpbWl0cyBhbHJlYWR5LiBCdXQgY2FuJ3Qgc2VlIGNv
ZGUgbGlrZSB0aGF0IGFueXdoZXJlLiBNYXliZSB3ZQo+IHNob3VsZCBqdXN0IGRvIHRoYXQgaW4g
dGhlIGNvcmU/CgpXaGlsZSBpdCBpcyBpbiB1YXBpL2RybV9tb2RlLmgsIGlzIHRoZXJlIGFueSBy
ZXN0cmljdGlvbiB0aGF0IHRoZSBkdW1iCmJ1ZmZlciBoYXMgdG8gYmUgdXNlZCB3aXRoIGEgZnJh
bWVidWZmZXI/IE5vdCB0aGF0IEkgaGF2ZSBhIGdvb2QgdXNlCmNhc2UsIGp1c3Qgd29uZGVyaW5n
IGlmIHdlIG5lZWQgdG8gYmUgc28gcHJvc2NyaXB0aXZlLgoKV2UgY3JlYXRlIHNvbWV0aGluZyB0
aGF0IGlzIGNvbXBhdGlibGUgYnV0IHByZXN1bWUgd2Ugd2lsbCBuZWVkIGxhdGVyCnZhbGlkYXRp
b24gYWdhaW5zdCBIVy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
