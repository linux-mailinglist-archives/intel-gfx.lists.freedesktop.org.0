Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA02BB0A4C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 10:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323B86EC59;
	Thu, 12 Sep 2019 08:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5D06EC59
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 08:28:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 01:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="175898756"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 12 Sep 2019 01:28:11 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 03D125C1E49; Thu, 12 Sep 2019 11:27:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156827549301.4926.3480311664455647255@skylake-alporthouse-com>
References: <20190912070925.11526-1-chris@chris-wilson.co.uk>
 <87pnk6rlyt.fsf@gaia.fi.intel.com>
 <156827549301.4926.3480311664455647255@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 11:27:56 +0300
Message-ID: <87muf9syur.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a paranoid
 flush of the CSB pointers upon reset
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEyIDA4OjUxOjM4KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBBZnRlciBhIEdQVSByZXNl
dCwgd2UgbmVlZCB0byBkcmFpbiBhbGwgdGhlIENTIGV2ZW50cyBzbyB0aGF0IHdlIGhhdmUgYW4K
Pj4gPiBhY2N1cmF0ZSBwaWN0dXJlIG9mIHRoZSBleGVjbGlzdHMgc3RhdGUgYXQgdGhlIHRpbWUg
b2YgdGhlIHJlc2V0LiBCZQo+PiA+IHBhcmFub2lkIGFuZCBmb3JjZSBhIHJlYWQgb2YgdGhlIENT
QiB3cml0ZSBwb2ludGVyIGZyb20gbWVtb3J5Lgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+ID4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDQgKysrKwo+PiA+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspCj4+ID4KPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Ywo+PiA+IGluZGV4IDNkODNjN2UwZDlkZS4uNjFhMzhhNGNjYmNhIDEwMDY0NAo+PiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gPiBAQCAtMjgzNiw2ICsyODM2LDEwIEBAIHN0
YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwgYm9vbCBzdGFsbGVkKQo+PiA+ICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+PiA+
ICAgICAgIHUzMiAqcmVnczsKPj4gPiAgCj4+ID4gKyAgICAgbWIoKTsgLyogcGFyYW5vaWE6IHJl
YWQgdGhlIENTQiBwb2ludGVycyBmcm9tIGFmdGVyIHRoZSByZXNldCAqLwo+PiA+ICsgICAgIGNs
Zmx1c2goZXhlY2xpc3RzLT5jc2Jfd3JpdGUpOwo+PiA+ICsgICAgIG1iKCk7Cj4+ID4gKwo+PiAK
Pj4gV2Uga25vdyB0aGVyZSBpcyBhbHdheXMgYSBjb3N0LiBXZSBkbyBpbnZhbGlkYXRlIHRoZSBj
c2IKPj4gb24gZWFjaCBwYXNzIG9uIHByb2Nlc3NfY3NiLgo+PiAKPj4gQWRkIGNzYl93cml0ZSBp
biB0byBpbnZhbGlkYXRlX2NzYiBlbnRyaWVzIGFsb25nCj4+IHdpdGggbWJzLiBSZW5hbWUgaXQg
dG8gaW52YWxpZGF0ZV9jc2IgYW5kIHVzZSBpdAo+PiBhbHdheXM/Cj4+IAo+PiBCeSBkb2luZyBz
bywgd2UgY291bGQgcHJvbGx5IHRocm93IG91dCB0aGUgcm1iKCkgYXQKPj4gdGhlIHN0YXJ0IG9m
IHRoZSBwcm9jZXNzX2NzYiBhcyB3ZSB3b3VsZCBoYXZlIGludmFsaWRhdGVkCj4+IHRoZSB3cml0
ZSBwb2ludGVyIGFsb25nIHdpdGggdGhlIGVudHJpZXMgd2UgcmVhZCwKPj4gb24gcHJldmlvdXMg
cGFzcy4KPgo+IE5vLiBUaGF0IHJtYiBpcyBlc3NlbnRpYWwgZm9yIHRoZSByZWFkIG9yZGVyaW5n
IGF0IHRoYXQgbW9tZW50IGluIHRpbWUuCgpBaCB5ZXMgaW5kZWVkIGl0IGlzLiBoZWFkIHZzIGVu
dHJpZXMgY29oZXJlbmN5LgoKPgo+IEFsbCBJIGhhdmUgaW4gbWluZCBoZXJlIGlzIGEgZGVsYXks
IG5vdCByZWFsbHkgYSBiYXJyaWVyIHBlciBzZSwganVzdAo+IHRoaXMgaXMgYSBuaWNlIHdheSBv
ZiBzYXlpbmcgbm8gc3BlY3VsYXRpb24gZWl0aGVyLgoKRm9yZ2V0dGluZyB0aGUgcm1iKCksIHRo
ZXJlIGlzIHNpbWlsYXIgcGF0dGVybiBvZiBtYigpK2ZsdXNoCmVsc2V3aGVyZS4gSnVzdCBzYXcg
dGhlIHByb2ZpbGlmZXJhdGlvbiBhbmQgb3Bwb3J0dW5pdHkgdG8gY29udmVyZ2UuCgpCdXQgc3lu
Y2luZyB3aXRoIHRoZSBoYXJkd2FyZSBvbiBtb21lbnQgb2YgcmVzZXQsIHRoaXMgc2hvdWxkCmRv
LgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
