Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EC1F529F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 18:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357116FA35;
	Fri,  8 Nov 2019 17:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11F46FA35
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 17:34:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 09:34:55 -0800
X-IronPort-AV: E=Sophos;i="5.68,282,1569308400"; d="scan'208";a="196965657"
Received: from unknown (HELO ldmartin-desk1) ([10.24.10.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 09:34:55 -0800
Date: Fri, 8 Nov 2019 09:34:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191108173450.isy4tf4scysb4vzc@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <87mud6683k.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mud6683k.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/opregion: fix leaking fw on
 error path
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

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMTE6MTY6NDdBTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj5PbiBUaHUsIDA3IE5vdiAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4gd3JvdGU6Cj4+IENvbnZlcnQgdGhlIGNvZGUgdG8gcmV0dXJuLWVhcmx5IHN0
eWxlIGFuZCBmaXggbWlzc2luZyBjYWxscwo+PiB0byByZWxlYXNlX2Zpcm13YXJlKCkgaWYgdmJ0
IGlzIG5vdCB2YWxpZC4KPgo+SSBkb24ndCB1bmRlcnN0YW5kIHdoZXJlIGFueXRoaW5nIHdvdWxk
IGxlYWsgaW4gdGhlIGN1cnJlbnQgY29kZS4gUGxlYXNlCj5lbGFib3JhdGUuCgpJdCB3YXMgbXkg
ZmFpbHVyZSByZWFkaW5nIHRoZSBjdXJyZW50IGNvZGUuLi4gbm90IHN1cmUgd2h5IG9uIGEgZmly
c3QKcmVhZCBJIHRob3VnaHQgaXQgd2FzIGxlYWtpbmcuCgo+Cj5Zb3UgY291bGQgbWFrZSBhIGNh
c2UgZm9yIGEgY2hhbmdlIGluIHN0eWxlIHRvIGF2b2lkIHNvIG11Y2gKPmluZGVudGF0aW9uLCBi
dXQgZG9uJ3QgY2xhaW0gaXQgZml4ZXMgc3R1ZmYgaWYgaXQgZG9lc24ndC4KCnllYWguIEkgd2ls
bCBrZWVwIGl0IG91dCBmb3Igbm93LgoKVGhhbmtzCkx1Y2FzIERlIE1hcmNoaQoKPgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
Pj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMg
fCAyOCArKysrKysrKysrKy0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9u
cygrKSwgMTEgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX29wcmVnaW9uLmMKPj4gaW5kZXggOTY5YWRlNjIzNjkxLi45NzM4NTExMTQ3YjEg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdp
b24uYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9u
LmMKPj4gQEAgLTg3MiwyMyArODcyLDI5IEBAIHN0YXRpYyBpbnQgaW50ZWxfbG9hZF92YnRfZmly
bXdhcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiAgCQlyZXR1cm4gcmV0
Owo+PiAgCX0KPj4KPj4gLQlpZiAoaW50ZWxfYmlvc19pc192YWxpZF92YnQoZnctPmRhdGEsIGZ3
LT5zaXplKSkgewo+PiAtCQlvcHJlZ2lvbi0+dmJ0X2Zpcm13YXJlID0ga21lbWR1cChmdy0+ZGF0
YSwgZnctPnNpemUsIEdGUF9LRVJORUwpOwo+PiAtCQlpZiAob3ByZWdpb24tPnZidF9maXJtd2Fy
ZSkgewo+PiAtCQkJRFJNX0RFQlVHX0tNUygiRm91bmQgdmFsaWQgVkJUIGZpcm13YXJlIFwiJXNc
IlxuIiwgbmFtZSk7Cj4+IC0JCQlvcHJlZ2lvbi0+dmJ0ID0gb3ByZWdpb24tPnZidF9maXJtd2Fy
ZTsKPj4gLQkJCW9wcmVnaW9uLT52YnRfc2l6ZSA9IGZ3LT5zaXplOwo+PiAtCQkJcmV0ID0gMDsK
Pj4gLQkJfSBlbHNlIHsKPj4gLQkJCXJldCA9IC1FTk9NRU07Cj4+IC0JCX0KPj4gLQl9IGVsc2Ug
ewo+PiArCWlmICghaW50ZWxfYmlvc19pc192YWxpZF92YnQoZnctPmRhdGEsIGZ3LT5zaXplKSkg
ewo+PiAgCQlEUk1fREVCVUdfS01TKCJJbnZhbGlkIFZCVCBmaXJtd2FyZSBcIiVzXCJcbiIsIG5h
bWUpOwo+PiAgCQlyZXQgPSAtRUlOVkFMOwo+PiArCQlnb3RvIGVycl9yZWxlYXNlX2Z3Owo+PiAr
CX0KPj4gKwo+PiArCW9wcmVnaW9uLT52YnRfZmlybXdhcmUgPSBrbWVtZHVwKGZ3LT5kYXRhLCBm
dy0+c2l6ZSwgR0ZQX0tFUk5FTCk7Cj4+ICsJaWYgKCFvcHJlZ2lvbi0+dmJ0X2Zpcm13YXJlKSB7
Cj4+ICsJCXJldCA9IC1FTk9NRU07Cj4+ICsJCWdvdG8gZXJyX3JlbGVhc2VfZnc7Cj4+ICAJfQo+
Pgo+PiArCW9wcmVnaW9uLT52YnQgPSBvcHJlZ2lvbi0+dmJ0X2Zpcm13YXJlOwo+PiArCW9wcmVn
aW9uLT52YnRfc2l6ZSA9IGZ3LT5zaXplOwo+PiArCj4+ICsJRFJNX0RFQlVHX0tNUygiRm91bmQg
dmFsaWQgVkJUIGZpcm13YXJlIFwiJXNcIlxuIiwgbmFtZSk7Cj4+ICsKPj4gIAlyZWxlYXNlX2Zp
cm13YXJlKGZ3KTsKPj4KPj4gKwlyZXR1cm4gMDsKPgo+V2l0aCByZXQgPSAwIGF0IHRoZSBiZWdp
bm5pbmcgeW91IGNvdWxkIGp1c3QgcmVtb3ZlIHRoZSB0aGUgYWJvdmUgdGhyZWUKPmxpbmVzIGFu
ZCBsZXQgdGhpcyBydW4gdGhyb3VnaCB0aGUgYmVsb3cgY29kZS4KPgo+PiArCj4+ICtlcnJfcmVs
ZWFzZV9mdzoKPj4gKwlyZWxlYXNlX2Zpcm13YXJlKGZ3KTsKPgo+VXN1YWxseSB3ZSdkIGhhdmUg
YSBibGFuayBsaW5lIGJlZm9yZSB0aGUgcmV0Lgo+Cj5CUiwKPkphbmkuCj4KPj4gIAlyZXR1cm4g
cmV0Owo+PiAgfQo+Cj4tLSAKPkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
