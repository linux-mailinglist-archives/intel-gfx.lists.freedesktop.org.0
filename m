Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8AC12CEFC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 11:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75034892D3;
	Mon, 30 Dec 2019 10:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8587892D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 10:48:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19725074-1500050 for multiple; Mon, 30 Dec 2019 10:48:34 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191227235147.32366-1-imre.deak@intel.com>
References: <20191227235147.32366-1-imre.deak@intel.com>
Message-ID: <157770291183.2392.13453391973135570968@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 10:48:31 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add support for
 non-power-of-2 FB plane alignment
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMTItMjcgMjM6NTE6NDUpCj4gQXQgbGVhc3Qgb25lIGZy
YW1lYnVmZmVyIHBsYW5lIG9uIFRHTCAtIHRoZSBVViBwbGFuZSBvZiBZVVYgc2VtaXBsYW5hcgo+
IEZCcyAtIHJlcXVpcmVzIGEgbm9uLXBvd2VyLW9mLTIgYWxpZ25tZW50LCBzbyBhZGQgc3VwcG9y
dCBmb3IgdGhpcy4gVGhpcwo+IG5ldyBhbGlnbm1lbnQgcmVzdHJpY3Rpb24gYXBwbGllcyBvbmx5
IHRvIGFuIG9mZnNldCB3aXRoaW4gYW4gRkIsIHNvIHRoZQo+IEdFTSBidWZmZXIgaXRzZWxmIGNv
bnRhaW5pbmcgdGhlIEZCIG11c3Qgc3RpbGwgYmUgcG93ZXItb2YtMiBhbGlnbmVkLgoKSXQncyB3
b3J0aCB0YWxraW5nIGFib3V0IHZpcnR1YWwgbWVtb3J5IGFsaWdubWVudCAoaW4gdGhlIEdHVFQp
IGhlcmUgYW5kCm5vdCB0aGUgcGh5c2ljYWwgYWxpZ25tZW50IG9mIHRoZSBiYWNraW5nIHN0b3Jl
LiBUaGUgYnVmZmVyIGl0c2VsZiBwbGF5cwpubyBwYXJ0IGhlcmUuCgo+IEFkZCBhIGNoZWNrIGZv
ciB0aGlzIChpbiBwcmFjdGljZSBwbGFuZSAwLCBzaW5jZSB0aGUgcGxhbmUgMCBvZmZzZXQgbXVz
dAo+IGJlIDApLgo+IAo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjIgKysrKysr
KysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiBpbmRleCA2MjRiYTliZTcyOTMuLmQ4OTcwMTk4Yzc3ZSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTIxOTQsNiArMjE5
NCw3IEBAIGludGVsX3Bpbl9hbmRfZmVuY2VfZmJfb2JqKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIg
KmZiLAo+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiAgCj4gICAg
ICAgICBhbGlnbm1lbnQgPSBpbnRlbF9zdXJmX2FsaWdubWVudChmYiwgMCk7Cj4gKyAgICAgICBX
QVJOX09OKCFpc19wb3dlcl9vZl8yKGFsaWdubWVudCkpOwoKSGFuZGxlIHRoZSBlcnJvciwgaWYg
eW91IGFyZSBnb2luZyB0byB0aGUgdHJvdWJsZSB0byB3YXJuLCBhZGQgdGhlCnJldHVybiBhcyB3
ZWxsLgoKPiAgCj4gICAgICAgICAvKiBOb3RlIHRoYXQgdGhlIHcvYSBhbHNvIHJlcXVpcmVzIDY0
IFBURSBvZiBwYWRkaW5nIGZvbGxvd2luZyB0aGUKPiAgICAgICAgICAqIGJvLiBXZSBjdXJyZW50
bHkgZmlsbCBhbGwgdW51c2VkIFBURSB3aXRoIHRoZSBzaGFkb3cgcGFnZSBhbmQgc28KPiBAQCAt
MjQzMiw5ICsyNDMzLDYgQEAgc3RhdGljIHUzMiBpbnRlbF9jb21wdXRlX2FsaWduZWRfb2Zmc2V0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgICAgICAgIHVuc2lnbmVkIGlu
dCBjcHAgPSBmYi0+Zm9ybWF0LT5jcHBbY29sb3JfcGxhbmVdOwo+ICAgICAgICAgdTMyIG9mZnNl
dCwgb2Zmc2V0X2FsaWduZWQ7Cj4gIAo+IC0gICAgICAgaWYgKGFsaWdubWVudCkKPiAtICAgICAg
ICAgICAgICAgYWxpZ25tZW50LS07Cj4gLQo+ICAgICAgICAgaWYgKCFpc19zdXJmYWNlX2xpbmVh
cihmYiwgY29sb3JfcGxhbmUpKSB7Cj4gICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCB0aWxl
X3NpemUsIHRpbGVfd2lkdGgsIHRpbGVfaGVpZ2h0Owo+ICAgICAgICAgICAgICAgICB1bnNpZ25l
ZCBpbnQgdGlsZV9yb3dzLCB0aWxlcywgcGl0Y2hfdGlsZXM7Cj4gQEAgLTI0NTYsMTcgKzI0NTQs
MjQgQEAgc3RhdGljIHUzMiBpbnRlbF9jb21wdXRlX2FsaWduZWRfb2Zmc2V0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgICAgICAgICAgICAgICAgKnggJT0gdGlsZV93aWR0
aDsKPiAgCj4gICAgICAgICAgICAgICAgIG9mZnNldCA9ICh0aWxlX3Jvd3MgKiBwaXRjaF90aWxl
cyArIHRpbGVzKSAqIHRpbGVfc2l6ZTsKPiAtICAgICAgICAgICAgICAgb2Zmc2V0X2FsaWduZWQg
PSBvZmZzZXQgJiB+YWxpZ25tZW50Owo+ICsKPiArICAgICAgICAgICAgICAgb2Zmc2V0X2FsaWdu
ZWQgPSBvZmZzZXQ7Cj4gKyAgICAgICAgICAgICAgIGlmIChhbGlnbm1lbnQpCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgb2Zmc2V0X2FsaWduZWQgPSByb3VuZGRvd24ob2Zmc2V0X2FsaWduZWQs
IGFsaWdubWVudCk7Cj4gIAo+ICAgICAgICAgICAgICAgICBpbnRlbF9hZGp1c3RfdGlsZV9vZmZz
ZXQoeCwgeSwgdGlsZV93aWR0aCwgdGlsZV9oZWlnaHQsCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB0aWxlX3NpemUsIHBpdGNoX3RpbGVzLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2Zmc2V0LCBvZmZzZXRfYWxpZ25lZCk7Cj4g
ICAgICAgICB9IGVsc2Ugewo+ICAgICAgICAgICAgICAgICBvZmZzZXQgPSAqeSAqIHBpdGNoICsg
KnggKiBjcHA7Cj4gLSAgICAgICAgICAgICAgIG9mZnNldF9hbGlnbmVkID0gb2Zmc2V0ICYgfmFs
aWdubWVudDsKPiAtCj4gLSAgICAgICAgICAgICAgICp5ID0gKG9mZnNldCAmIGFsaWdubWVudCkg
LyBwaXRjaDsKPiAtICAgICAgICAgICAgICAgKnggPSAoKG9mZnNldCAmIGFsaWdubWVudCkgLSAq
eSAqIHBpdGNoKSAvIGNwcDsKPiArICAgICAgICAgICAgICAgb2Zmc2V0X2FsaWduZWQgPSBvZmZz
ZXQ7Cj4gKyAgICAgICAgICAgICAgIGlmIChhbGlnbm1lbnQpIHsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBvZmZzZXRfYWxpZ25lZCA9IHJvdW5kZG93bihvZmZzZXRfYWxpZ25lZCwgYWxpZ25t
ZW50KTsKPiArICAgICAgICAgICAgICAgICAgICAgICAqeSA9IChvZmZzZXQgJSBhbGlnbm1lbnQp
IC8gcGl0Y2g7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgKnggPSAoKG9mZnNldCAlIGFsaWdu
bWVudCkgLSAqeSAqIHBpdGNoKSAvIGNwcDsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAqeSA9ICp4ID0gMDsKPiArICAgICAgICAgICAgICAgfQo+
ICAgICAgICAgfQo+ICAKPiAgICAgICAgIHJldHVybiBvZmZzZXRfYWxpZ25lZDsKPiBAQCAtMzcz
OCw2ICszNzQzLDcgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gICAgICAgICBpbnRlbF9hZGRfZmJfb2Zm
c2V0cygmeCwgJnksIHBsYW5lX3N0YXRlLCAwKTsKPiAgICAgICAgIG9mZnNldCA9IGludGVsX3Bs
YW5lX2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoJngsICZ5LCBwbGFuZV9zdGF0ZSwgMCk7Cj4gICAg
ICAgICBhbGlnbm1lbnQgPSBpbnRlbF9zdXJmX2FsaWdubWVudChmYiwgMCk7Cj4gKyAgICAgICBX
QVJOX09OKCFpc19wb3dlcl9vZl8yKGFsaWdubWVudCkpOwoKVGhlIG90aGVyIHR3byBhcmUgZXhw
ZWN0ZWQgdG8gaGFuZGxlICFpc19wb3QuLi4KCkkgd291bGQgc3Ryb25nbHkgc3VnZ2VzdCBoYW5k
bGluZyB0aGUgV0FSTnMsIG9yIGVsc2UgeW91IG1heSBhcyB3ZWxsIGJ1ZwpvdXQgZm9yIHRoZSBw
cm9ncmFtbWluZyBlcnJvci4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
