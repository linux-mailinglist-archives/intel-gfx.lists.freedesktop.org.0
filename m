Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF4FFB4DA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 17:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 175B86E0DF;
	Wed, 13 Nov 2019 16:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A5EB6E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 16:20:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19189843-1500050 for multiple; Wed, 13 Nov 2019 16:20:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191113151956.32242-1-chris@chris-wilson.co.uk>
 <87r22b7ona.fsf@gaia.fi.intel.com>
In-Reply-To: <87r22b7ona.fsf@gaia.fi.intel.com>
Message-ID: <157366200624.22201.15882970957010971548@skylake-alporthouse-com>
Date: Wed, 13 Nov 2019 16:20:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Invalidate as we write the
 gen7 breadcrumb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEzIDE1OjU5OjUzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBTdGlsbCB0aGUgc2Fn
YSBvZiB0aGUgaHN3IGxpdmVfYmx0IGluY29oZXJlbmN5IGNvbnRpbnVlcy4gV2hpbGUgaXQgZGlk
Cj4gPiBzZWVtIHRoYXQgdGhlIGludmFsaWRhdGUgYmVmb3JlIHRoZSBicmVhZGNydW1iIGhhZCBp
bXByb3ZlZCB0aGUgbXRiZiwKPiA+IG5ldmVydGhlbGVzcyBsaXZlX2JsdCBzdGlsbCBmYWlsZWQu
IE1pa2EncyBuZXh0IGlkZWEgd2FzIHRvIHB1bGwgdGhlCj4gPiBpbnZhbGlkYXRlLXN0YWxsIGlu
dG8gdGhlIGJyZWFkY3J1bWIgd3JpdGUgaXRzZWxmLgo+ID4KPiA+IFJlZmVyZW5jZXM6IDg2MGFm
YTA4Njg0MSAoImRybS9pOTE1L2d0OiBGbHVzaCBnZW43IGV2ZW4gaGFyZGVyIikKPiA+IFJlZmVy
ZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE0
Nwo+ID4gVGVzdGNhc2U6IGlndC9pOTE1X3NlbGZ0ZXN0L2xpdmVfYmx0Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jIHwgOSArKystLS0t
LS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1
Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lv
bi5jCj4gPiBpbmRleCBlOGJlZTQ0YWRkMzQuLmYyNWNlY2NiMzM1ZSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwo+ID4gQEAg
LTQ1NCwxMiArNDU0LDggQEAgc3RhdGljIHUzMiAqZ2VuN194Y3NfZW1pdF9icmVhZGNydW1iKHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgKmNzKQo+ID4gICAgICAgR0VNX0JVR19PTihpOTE1
X3JlcXVlc3RfYWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9nZ3R0ICE9IHJxLT5lbmdpbmUtPnN0
YXR1c19wYWdlLnZtYSk7Cj4gPiAgICAgICBHRU1fQlVHX09OKG9mZnNldF9pbl9wYWdlKGk5MTVf
cmVxdWVzdF9hY3RpdmVfdGltZWxpbmUocnEpLT5od3NwX29mZnNldCkgIT0gSTkxNV9HRU1fSFdT
X1NFUU5PX0FERFIpOwo+ID4gIAo+ID4gLSAgICAgKmNzKysgPSAoTUlfRkxVU0hfRFcgfCBNSV9J
TlZBTElEQVRFX1RMQiB8Cj4gPiAtICAgICAgICAgICAgICBNSV9GTFVTSF9EV19TVE9SRV9JTkRF
WCB8IE1JX0ZMVVNIX0RXX09QX1NUT1JFRFcpOwo+ID4gLSAgICAgKmNzKysgPSBJOTE1X0dFTV9I
V1NfU0NSQVRDSF9BRERSIHwgTUlfRkxVU0hfRFdfVVNFX0dUVDsKPiA+IC0gICAgICpjcysrID0g
MDsKPiA+IC0KPiA+IC0gICAgICpjcysrID0gTUlfRkxVU0hfRFcgfCBNSV9GTFVTSF9EV19PUF9T
VE9SRURXIHwgTUlfRkxVU0hfRFdfU1RPUkVfSU5ERVg7Cj4gPiArICAgICAqY3MrKyA9IE1JX0ZM
VVNIX0RXIHwgTUlfSU5WQUxJREFURV9UTEIgfAo+ID4gKyAgICAgICAgICAgICBNSV9GTFVTSF9E
V19PUF9TVE9SRURXIHwgTUlfRkxVU0hfRFdfU1RPUkVfSU5ERVg7Cj4gPiAgICAgICAqY3MrKyA9
IEk5MTVfR0VNX0hXU19TRVFOT19BRERSIHwgTUlfRkxVU0hfRFdfVVNFX0dUVDsKPiA+ICAgICAg
ICpjcysrID0gcnEtPmZlbmNlLnNlcW5vOwo+IAo+IEluIGJvdGggd291bGQgaGF2ZSBiZWVuIHRo
ZSBzaG90Z3VuIGFwcHJvYWNoLiBZb3UgZmF2b3VyIHNuaXBlci4KCkF0IHRoZSBlbmQgb2YgdGhl
IGRheSwgd2Ugc3RvcCB3aGVuIGxpdmVfYmx0IHN0b3BzIGZhaWxpbmcgLS0gYW5kIHdlCmhvcGUg
dGhhdCBpdCdzIGluIHRoZSBzaW1wbGVzdCBmb3JtIHdoZW4gd2UgZm9yZ2V0IGFib3V0IGl0IDop
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
