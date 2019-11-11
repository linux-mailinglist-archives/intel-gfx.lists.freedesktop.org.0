Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 986DAF737C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787716E1EC;
	Mon, 11 Nov 2019 11:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3ABC6E1EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:59:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19158690-1500050 for multiple; Mon, 11 Nov 2019 11:59:26 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <e6237915-eac0-1339-12b3-bd79c567edad@linux.intel.com>
References: <20191109105356.5273-1-chris@chris-wilson.co.uk>
 <0285daa4-eeb5-b1e1-8b4d-d7220024d429@linux.intel.com>
 <157346538997.28106.15260731624402142184@skylake-alporthouse-com>
 <e6237915-eac0-1339-12b3-bd79c567edad@linux.intel.com>
Message-ID: <157347356151.28106.4177551454597329092@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 11:59:21 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: "Frequency" is reported as
 accumulated cycles
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xMSAxMDo0MDoxNykKPiAKPiBPbiAxMS8x
MS8yMDE5IDA5OjQzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTExIDA5OjExOjAzKQo+ID4+Cj4gPj4gT24gMDkvMTEvMjAxOSAxMDo1Mywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBXZSByZXBvcnQgImZyZXF1ZW5jaWVzIiAoYWN0dWFs
LWZyZXF1ZW5jeSwgcmVxdWVzdGVkLWZyZXF1ZW5jeSkgYXMgdGhlCj4gPj4+IG51bWJlciBvZiBh
Y2N1bXVsYXRlZCBjeWNsZXMgc28gdGhhdCB0aGUgYXZlcmFnZSBmcmVxdWVuY3kgb3ZlciB0aGF0
Cj4gPj4+IHBlcmlvZCBtYXkgYmUgZGV0ZXJtaW5lZCBieSB0aGUgdXNlci4gVGhpcyBtZWFucyB0
aGUgdW5pdHMgd2UgcmVwb3J0IHRvCj4gPj4+IHRoZSB1c2VyIGFyZSBNY3ljbGVzIChvciBqdXN0
IE0pLCBub3QgTUh6Lgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gPj4+
IC0tLQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgNCArKy0tCj4g
Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Pj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+ID4+PiBpbmRleCA0ODA0Nzc1NjQ0YmYu
LjliMDJiZTBhZDRlNiAxMDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wbXUuYwo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gPj4+
IEBAIC05MDgsOCArOTA4LDggQEAgY3JlYXRlX2V2ZW50X2F0dHJpYnV0ZXMoc3RydWN0IGk5MTVf
cG11ICpwbXUpCj4gPj4+ICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4gPj4+ICAg
ICAgICAgICAgICAgIGNvbnN0IGNoYXIgKnVuaXQ7Cj4gPj4+ICAgICAgICB9IGV2ZW50c1tdID0g
ewo+ID4+PiAtICAgICAgICAgICAgIF9fZXZlbnQoSTkxNV9QTVVfQUNUVUFMX0ZSRVFVRU5DWSwg
ImFjdHVhbC1mcmVxdWVuY3kiLCAiTUh6IiksCj4gPj4+IC0gICAgICAgICAgICAgX19ldmVudChJ
OTE1X1BNVV9SRVFVRVNURURfRlJFUVVFTkNZLCAicmVxdWVzdGVkLWZyZXF1ZW5jeSIsICJNSHoi
KSwKPiA+Pj4gKyAgICAgICAgICAgICBfX2V2ZW50KEk5MTVfUE1VX0FDVFVBTF9GUkVRVUVOQ1ks
ICJhY3R1YWwtZnJlcXVlbmN5IiwgIk0iKSwKPiA+Pj4gKyAgICAgICAgICAgICBfX2V2ZW50KEk5
MTVfUE1VX1JFUVVFU1RFRF9GUkVRVUVOQ1ksICJyZXF1ZXN0ZWQtZnJlcXVlbmN5IiwgIk0iKSwK
PiA+Pj4gICAgICAgICAgICAgICAgX19ldmVudChJOTE1X1BNVV9JTlRFUlJVUFRTLCAiaW50ZXJy
dXB0cyIsIE5VTEwpLAo+ID4+PiAgICAgICAgICAgICAgICBfX2V2ZW50KEk5MTVfUE1VX1JDNl9S
RVNJREVOQ1ksICJyYzYtcmVzaWRlbmN5IiwgIm5zIiksCj4gPj4+ICAgICAgICB9Owo+ID4+Pgo+
ID4+Cj4gPj4gTUh6IHdhcyB3cm9uZyB5ZXMuIEJ1dCBpcyAnTScgZXN0YWJsaXNoZWQgb3Igd291
bGQgJ01jeWNsZXMnIGJlIGJldHRlcj8KPiA+IAo+ID4gVGhlIG9ubHkgcGxhY2Ugd2hlcmUgImN5
Y2xlcyIgcG9wcyB1cCBpcyBpbiB0aGUgcGVyZiB1aSwgdGhlIG90aGVyCj4gPiBldmVudHMgdGhh
dCBJIHRob3VnaHQgd2VyZSBzaW1pbGFyIGluIG5hdHVyZSBhcmUgdW5pdGxlc3MuIEFzIHRoZQo+
ID4gJ2N5Y2xlJyBpdHNlbGYgaXMgbm90IGFuIFNJIGJhc2UgdW5pdCBhcyBpdCBpcyBhIG1lcmUg
Y291bnQuCj4gPiAKPiA+IH5vfiBJIGhhdmUgbm8gaWRlYSB+b34KPiAKPiBCdXQgaWYgdGhlIGFy
Z3VtZW50IGlmIHRoYXQgJ2N5Y2xlJyBpcyBub3QgU0kgdGhlbiBuZWl0aGVyIGlzICdNJy4gU28g
SSAKPiB0aGluayBJIHdvdWxkIHByZWZlciAnTWN5Y2xlcycuIE5ldmVydGhlbGVzcywgSSBndWVz
cyBhIHN0cmFuZ2UgJ00nIGlzIAo+IGJldHRlciB0aGFuIHdyb25nICdNSHonLgoKWWVhaCwgSSdt
IHJlYWxseSB0ZW1wdGVkIHRvIHNheSB3ZSBzaG91bGQganVzdCByZW1vdmUgdGhlIE0gYXMgd2Vs
bCBidXQKd2hhdCBhIHdhc3RlIG9mIGJpdHMhCgpJIHRoaW5rICdNJyBpcyB1bmRlcnN0YW5kYWJs
ZSBmcm9tIGNvbnRleHQsIHdoZXJlYXMgTUh6IHdhcyBxdWl0ZQptaXNsZWFkaW5nIGluIHBlcmYg
c3RhdCA6KQoKU3RpbGwsIGlmIHdlIGV2ZXIgZ2V0IGFueSBmZWVkYmFjaywgaXQgc2hvdWxkIGJl
IGVhc3kgdG8gZml4IDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
