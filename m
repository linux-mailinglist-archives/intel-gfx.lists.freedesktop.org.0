Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882181030C2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 01:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCFB6E9AA;
	Wed, 20 Nov 2019 00:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336F46E9AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 00:32:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 16:32:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,219,1571727600"; d="scan'208";a="204564048"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2019 16:32:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
 <157420927906.15427.11611745082531859894@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ca8feb1c-ce50-7d2b-710e-8c59c78b34e8@intel.com>
Date: Tue, 19 Nov 2019 16:32:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157420927906.15427.11611745082531859894@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: re-init the GT in
 live_gt_pm
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMS8xOS8xOSA0OjIxIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTExLTIwIDAwOjA0OjI1KQo+PiBXaGVuIEd1QyBpcyBp
biB1c2Ugd2UgbmVlZCB0byBtYWtlIHN1cmUgaXQgaXMgcmUtbG9hZGVkIGJlZm9yZSB0aGUgY2Fs
bAo+PiB0byBndF9yZXN1bWUsIG90aGVyd2lzZSBjb21tdW5pY2F0aW9uIGZyb20gdGhlIGVuZ2lu
ZXMgdG8gdGhlIEd1QyB3aWxsCj4+IG5vdCBiZSBwcm9jZXNzZWQsIHdoaWNoIGJsb2NrcyB0aGUg
ZW5naW5lcyBmcm9tIGN0eCBzd2l0Y2hpbmcgYW5kIGZyb20KPj4gYmVpbmcgcmVzZXQuCj4+Cj4+
IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTIyMDUKPj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+PiBDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IFNpZ25lZC1vZmYtYnk6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+
IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgfCA5ICsr
KysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCj4+IGluZGV4IGQxNzUyZjE1NzAyYS4u
MGJiMTdjODA2ZGZjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9ndF9wbS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0
X3BtLmMKPj4gQEAgLTExLDggKzExLDExIEBAIHN0YXRpYyBpbnQgbGl2ZV9ndF9yZXN1bWUodm9p
ZCAqYXJnKQo+PiAgIHsKPj4gICAgICAgICAgc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKPj4g
ICAgICAgICAgSUdUX1RJTUVPVVQoZW5kX3RpbWUpOwo+PiArICAgICAgIGludGVsX3dha2VyZWZf
dCB3YWtlcmVmOwo+PiAgICAgICAgICBpbnQgZXJyOwo+PiAgIAo+PiArICAgICAgIHdha2VyZWYg
PSBpbnRlbF9ydW50aW1lX3BtX2dldChndC0+dW5jb3JlLT5ycG0pOwo+IAo+IFRoYXQgZGVmZWF0
cyB0aGUgcG9pbnQgb2YgZ3QgcG0sIG5vPwo+IAo+PiArCj4+ICAgICAgICAgIC8qIERvIHNldmVy
YWwgc3VzcGVuZC9yZXN1bWUgY3ljbGVzIHRvIGNoZWNrIHdlIGRvbid0IGV4cGxvZGUhICovCj4+
ICAgICAgICAgIGRvIHsKPj4gICAgICAgICAgICAgICAgICBpbnRlbF9ndF9zdXNwZW5kX3ByZXBh
cmUoZ3QpOwo+PiBAQCAtMjUsNiArMjgsMTAgQEAgc3RhdGljIGludCBsaXZlX2d0X3Jlc3VtZSh2
b2lkICphcmcpCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4gICAgICAgICAg
ICAgICAgICB9Cj4+ICAgCj4+ICsgICAgICAgICAgICAgICBlcnIgPSBpbnRlbF9ndF9pbml0X2h3
KGd0KTsKPiAKPiBIbW0uIEkgaGF2ZSB0aGF0IGFzIHBhcnQgb2YgaW50ZWxfZ3RfcmVzdW1lLiAg
V2hpY2ggYWxzbyBwdWxscyBpdCBpbnRvCj4gdGhlIHBtLgoKSSBhbHNvIGNvbnNpZGVyZWQgbW92
aW5nIGluaXRfaHcoKSBpbnNpZGUgcmVzdW1lKCksIGJ1dCBpbiB0aGUgZW5kIG9wdGVkIApub3Qg
dG8gdG8ga2VlcCB0aGUgZml4IGlzb2xhdGVkIHRvIHRoZSB0ZXN0LiBCdXQgaWYgeW91IGhhdmUg
YWxyZWFkeSAKZG9uZSB0aGUgd29yay4uLgoKPiAKPiBJIHRoaW5rIEkgcHJlZmVyIG15IHBsYW4v
cGF0Y2hlcyA6KQoKQ2FuIHlvdSBwb2ludCBtZSB0byB0aGVtIGlmIHRoZXkncmUgYWxyZWFkeSBv
biB0aGUgbGlzdD8KClRoYW5rcywKRGFuaWVsZQoKPiAtQ2hyaXMKPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
