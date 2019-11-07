Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BE1F38FB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 20:52:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9046E51C;
	Thu,  7 Nov 2019 19:52:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDCF6E51C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 19:52:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 11:52:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="227947546"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by fmsmga004.fm.intel.com with ESMTP; 07 Nov 2019 11:52:33 -0800
Date: Thu, 7 Nov 2019 11:40:59 -0800
From: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191107194059.GI19940@nvishwa1-DESK.sc.intel.com>
References: <20191106091312.12921-1-chris@chris-wilson.co.uk>
 <20191107160930.GH19940@nvishwa1-DESK.sc.intel.com>
 <157314607464.2228.12518419712996055704@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157314607464.2228.12518419712996055704@skylake-alporthouse-com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Safely acquire the ctx->vm
 when copying
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDU6MDE6MTRQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBOaXJhbmphbiBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDcgMTY6MDk6
MzEpCj4+IE9uIFdlZCwgTm92IDA2LCAyMDE5IGF0IDA5OjEzOjEyQU0gKzAwMDAsIENocmlzIFdp
bHNvbiB3cm90ZToKPj4gPkFzIHdlIHJlYWQgdGhlIGN0eC0+dm0gdW5sb2NrZWQgYmVmb3JlIGNs
b25pbmcvZXhwb3J0aW5nLCB3ZSBzaG91bGQKPj4gPnZhbGlkYXRlIG91ciByZWZlcmVuY2UgaXMg
Y29ycmVjdCBiZWZvcmUgcmV0dXJuaW5nIGl0LiBXZSBhbHJlYWR5IGRvIGZvcgo+PiA+Y2xvbmVf
dm0oKSBidXQgd2VyZSBub3Qgc28gc3RyaWN0IGFyb3VuZCBnZXRfcHBndHQoKS4KPj4gPgo+PiA+
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+
ID4tLS0KPj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwg
ODAgKysrKysrKysrKystLS0tLS0tLS0tCj4+ID4gMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlv
bnMoKyksIDM3IGRlbGV0aW9ucygtKQo+PiA+Cj4+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKPj4gPmluZGV4IGRlNmU1NWFmODJjZi4uYTA2Y2M4ZTYzMjgx
IDEwMDY0NAo+PiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYwo+PiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
Ywo+PiA+QEAgLTk5NSw2ICs5OTUsMzggQEAgc3RhdGljIGludCBjb250ZXh0X2JhcnJpZXJfdGFz
ayhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+PiA+ICAgICAgIHJldHVybiBlcnI7Cj4+
ID4gfQo+PiA+Cj4+ID4rc3RhdGljIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKgo+PiA+K2Nv
bnRleHRfZ2V0X3ZtX3JjdShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQo+PiA+K3sKPj4g
PisgICAgICBkbyB7Cj4+ID4rICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bTsKPj4gPisKPj4gPisgICAgICAgICAgICAgIHZtID0gcmN1X2RlcmVmZXJlbmNlKGN0eC0+
dm0pOwo+PiA+KyAgICAgICAgICAgICAgaWYgKCFrcmVmX2dldF91bmxlc3NfemVybygmdm0tPnJl
ZikpCj4+ID4rICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+Pgo+PiBCdXQgc2hvdWxk
IHdlIGNoZWNrIGZvciBOVUxMIHZtPwo+PiBJIGtub3cgdGhlIGNhbGxlcnMgYXJlIGVuc3VyaW5n
IGN0eC0+dm0gd2lsbCBub3QgYmUgTlVMTCwgYnV0IGp1c3Qgd29uZGVyaW5nLgo+Cj5XZSBkb24n
dCBuZWVkIHRvIGFzIHRoZSBydWxlIGlzIHRoYXQgY3R4LT52bSBvbmNlIHNldCBjYW4gbmV2ZXIg
YmUKPnVuc2V0OyBhbmQgaXQgY2FuIG9ubHkgYmUgc2V0IGR1cmluZyBjb25zdHJ1Y3Rpb24gYmFz
ZWQgb24gdGhlIEhXCj5wcm9wZXJ0aWVzLiBUaGUgaWRlYSBpcyB0aGF0ICEhY3R4LT52bSBpcyBh
biBpbnZhcmlhbnQgaW5kaWNhdGluZwo+d2hldGhlciBvciBub3Qgd2UgaGF2ZSBmdWxsLXBwZ3R0
IGVuYWJsZWQuIEZyb20gYSBzZWN1cml0eSBwZXJzcGVjdGl2ZSwKPmFsbG93aW5nIGEgZG93bmdy
YWRlIGZyb20gZnVsbC1wcGd0dCB0byBhIHNoYXJlZCBnbG9iYWwgZ3R0IGlzIGEgYmlnIG5vLAo+
c28gSSBkb24ndCBhbnRpY2lwYXRpbmcgdXMgYWxsb3dpbmcgc2V0dGluZyBjdHgtPnZtIHRvIE5V
TEwgYW55dGltZSBpbgo+dGhlIG5lYXIgZnV0dXJlIDopCgpPSywgc291bmRzIHJpZ2h0LgoKPgo+
PiA+Kwo+PiA+KyAgICAgICAgICAgICAgLyoKPj4gPisgICAgICAgICAgICAgICAqIFRoaXMgcHBn
dHQgbWF5IGhhdmUgYmUgcmVhbGxvY2F0ZWQgYmV0d2Vlbgo+PiA+KyAgICAgICAgICAgICAgICog
dGhlIHJlYWQgYW5kIHRoZSBrcmVmLCBhbmQgcmVhc3NpZ25lZCB0byBhIHRoaXJkCj4+ID4rICAg
ICAgICAgICAgICAgKiBjb250ZXh0LiBJbiBvcmRlciB0byBhdm9pZCBpbmFkdmVydGVudCBzaGFy
aW5nCj4+ID4rICAgICAgICAgICAgICAgKiBvZiB0aGlzIHBwZ3R0IHdpdGggdGhhdCB0aGlyZCBj
b250ZXh0IChhbmQgbm90Cj4+ID4rICAgICAgICAgICAgICAgKiBzcmMpLCB3ZSBoYXZlIHRvIGNv
bmZpcm0gdGhhdCB3ZSBoYXZlIHRoZSBzYW1lCj4+ID4rICAgICAgICAgICAgICAgKiBwcGd0dCBh
ZnRlciBwYXNzaW5nIHRocm91Z2ggdGhlIHN0cm9uZyBtZW1vcnkKPj4gPisgICAgICAgICAgICAg
ICAqIGJhcnJpZXIgaW1wbGllZCBieSBhIHN1Y2Nlc3NmdWwKPj4gPisgICAgICAgICAgICAgICAq
IGtyZWZfZ2V0X3VubGVzc196ZXJvKCkuCj4+ID4rICAgICAgICAgICAgICAgKgo+PiA+KyAgICAg
ICAgICAgICAgICogT25jZSB3ZSBoYXZlIGFjcXVpcmVkIHRoZSBjdXJyZW50IHBwZ3R0IG9mIHNy
YywKPj4gPisgICAgICAgICAgICAgICAqIHdlIG5vIGxvbmdlciBjYXJlIGlmIGl0IGlzIHJlbGVh
c2VkIGZyb20gc3JjLCBhcwo+PiA+KyAgICAgICAgICAgICAgICogaXQgY2Fubm90IGJlIHJlYWxs
b2NhdGVkIGVsc2V3aGVyZS4KPj4gPisgICAgICAgICAgICAgICAqLwo+Pgo+PiBDb21tZW50IHNo
b3VsZCBiZSBtYWRlIGdlbmVyaWM/IEl0IGlzIHRvbyBzcGVjaWZpYyB0byBjbG9uaW5nIGNhc2Uu
Cj4KPnMvc3JjL2N0eC8KPi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
