Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3142D10ECE3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C34F6E228;
	Mon,  2 Dec 2019 16:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076106E228
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 16:14:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19430420-1500050 for multiple; Mon, 02 Dec 2019 16:14:01 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2ab5b752aaf954678a4171d61be7277cf6693e0c.1575302334.git.jani.nikula@intel.com>
References: <cover.1575302334.git.jani.nikula@intel.com>
 <2ab5b752aaf954678a4171d61be7277cf6693e0c.1575302334.git.jani.nikula@intel.com>
Message-ID: <157530324080.27263.16449733152255210730@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 02 Dec 2019 16:14:00 +0000
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/debugfs: use intel uncore
 functions for forcewake register access
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMi0wMiAxNjowMDo1MCkKPiBNb3ZlIGF3YXkgZnJv
bSBJOTE1X1JFQURfRlcoKSBhbmQgSTkxNV9XUklURV9GVygpIGFuZCBzd2l0Y2ggdG8gdXNpbmcK
PiBpbnRlbF91bmNvcmVfcmVhZF9mdygpIGFuZCBpbnRlbF91bmNvcmVfd3JpdGVfZncoKSwgcmVz
cGVjdGl2ZWx5Lgo+IAo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KPiAKPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgfCAxNCArKysrKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCj4gaW5kZXggY2FiNjMyNzkxZjczLi40MjcwOWE1N2I0NzUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0xMTI4LDcgKzExMjgsOCBAQCBzdGF0aWMgaW50
IGdlbjZfZHJwY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSkKPiAgICAgICAgIHUzMiBndF9jb3Jl
X3N0YXR1cywgcmNjdGwxLCByYzZ2aWRzID0gMDsKPiAgICAgICAgIHUzMiBnZW45X3Bvd2VyZ2F0
ZV9lbmFibGUgPSAwLCBnZW45X3Bvd2VyZ2F0ZV9zdGF0dXMgPSAwOwo+ICAKPiAtICAgICAgIGd0
X2NvcmVfc3RhdHVzID0gSTkxNV9SRUFEX0ZXKEdFTjZfR1RfQ09SRV9TVEFUVVMpOwo+ICsgICAg
ICAgZ3RfY29yZV9zdGF0dXMgPSBpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2X3ByaXYtPnVuY29y
ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VONl9H
VF9DT1JFX1NUQVRVUyk7Cj4gICAgICAgICB0cmFjZV9pOTE1X3JlZ19ydyhmYWxzZSwgR0VONl9H
VF9DT1JFX1NUQVRVUywgZ3RfY29yZV9zdGF0dXMsIDQsIHRydWUpOwo+ICAKPiAgICAgICAgIHJj
Y3RsMSA9IEk5MTVfUkVBRChHRU42X1JDX0NPTlRST0wpOwo+IEBAIC0xNjc0LDEwICsxNjc1LDEz
IEBAIHN0YXRpYyBpbnQgaTkxNV9ycHNfYm9vc3RfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZv
aWQgKmRhdGEpCj4gICAgICAgICAgICAgICAgIHUzMiBycGRvd24sIHJwZG93bmVpOwo+ICAKPiAg
ICAgICAgICAgICAgICAgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQoJmRldl9wcml2LT51bmNv
cmUsIEZPUkNFV0FLRV9BTEwpOwo+IC0gICAgICAgICAgICAgICBycHVwID0gSTkxNV9SRUFEX0ZX
KEdFTjZfUlBfQ1VSX1VQKSAmIEdFTjZfUlBfRUlfTUFTSzsKPiAtICAgICAgICAgICAgICAgcnB1
cGVpID0gSTkxNV9SRUFEX0ZXKEdFTjZfUlBfQ1VSX1VQX0VJKSAmIEdFTjZfUlBfRUlfTUFTSzsK
PiAtICAgICAgICAgICAgICAgcnBkb3duID0gSTkxNV9SRUFEX0ZXKEdFTjZfUlBfQ1VSX0RPV04p
ICYgR0VONl9SUF9FSV9NQVNLOwo+IC0gICAgICAgICAgICAgICBycGRvd25laSA9IEk5MTVfUkVB
RF9GVyhHRU42X1JQX0NVUl9ET1dOX0VJKSAmIEdFTjZfUlBfRUlfTUFTSzsKPiArICAgICAgICAg
ICAgICAgcnB1cCA9IGludGVsX3VuY29yZV9yZWFkX2Z3KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU42
X1JQX0NVUl9VUCkgJiBHRU42X1JQX0VJX01BU0s7Cj4gKyAgICAgICAgICAgICAgIHJwdXBlaSA9
IGludGVsX3VuY29yZV9yZWFkX2Z3KCZkZXZfcHJpdi0+dW5jb3JlLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRU42X1JQX0NVUl9VUF9FSSkgJiBHRU42
X1JQX0VJX01BU0s7Cj4gKyAgICAgICAgICAgICAgIHJwZG93biA9IGludGVsX3VuY29yZV9yZWFk
X2Z3KCZkZXZfcHJpdi0+dW5jb3JlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBHRU42X1JQX0NVUl9ET1dOKSAmIEdFTjZfUlBfRUlfTUFTSzsKPiArICAg
ICAgICAgICAgICAgcnBkb3duZWkgPSBpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2X3ByaXYtPnVu
Y29yZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBH
RU42X1JQX0NVUl9ET1dOX0VJKSAmIEdFTjZfUlBfRUlfTUFTSzsKPiAgICAgICAgICAgICAgICAg
aW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQoJmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9B
TEwpOwoKVGhlc2Ugc2hvdWxkIGJlIG1vdmVkIG92ZXIgdG8gYSBpbnRlbF9ycHNfc2hvdygpIGFz
IHRoZXkgbmVlZApndC0+dW5jb3JlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
