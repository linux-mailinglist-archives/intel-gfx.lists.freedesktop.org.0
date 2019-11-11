Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C2EF7273
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154986E215;
	Mon, 11 Nov 2019 10:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60326E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:47:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:47:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="378452827"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 11 Nov 2019 02:47:10 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 711755C1DF4; Mon, 11 Nov 2019 12:47:00 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191110185806.17413-3-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-3-chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 12:47:00 +0200
Message-ID: <87blti666z.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/25] drm/i915/gem: Update context name on
 closing
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVXBkYXRl
IHRoZSBjb250ZXh0Lm5hbWUgb24gY2xvc2luZyBzbyB0aGF0IHRoZSBwZXJzaXN0ZW50IHJlcXVl
c3RzIGFyZQo+IGNsZWFyIGluIGRlYnVnIHByaW50cy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMTggKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCA5ODI3NzBlODE2M2QuLjcyZDM4OWFm
YTI4YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
Ywo+IEBAIC00NjEsMTEgKzQ2MSwyOSBAQCBzdGF0aWMgdm9pZCBraWxsX2NvbnRleHQoc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiAgCX0KPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgc2V0
X2Nsb3NlZF9uYW1lKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCj4gK3sKPiArCWNoYXIg
KnM7Cj4gKwo+ICsJLyogUmVwbGFjZSAnW10nIHdpdGggJzw+JyB0byBpbmRpY2F0ZSBjbG9zZWQg
aW4gZGVidWcgcHJpbnRzICovCj4gKwo+ICsJcyA9IHN0cnJjaHIoY3R4LT5uYW1lLCAnWycpOwo+
ICsJaWYgKCFzKQo+ICsJCXJldHVybjsKPiArCj4gKwkqcyA9ICc8JzsKPiArCj4gKwlzID0gc3Ry
Y2hyKHMgKyAxLCAnXScpOwoKSSBjYW4ndCB0aGluayBvZiBhIHdheSBmb3IgcysxIHRvIGJlIE5V
TEwgYXMgdGhlIFRBU0tDT01fTEVOICsgOAptYWtlcyB0aGUgW3BpZF0gYXBwZWFyIGF0IHRoZSBl
bmQuCgpXaXRoIGV4dGVuZGluZyB0aGUgYnVmZmVyLCBvbmUgY291bGQgaGF2ZSBnb25lIHdpdGgg
Cis9ICIoY2xvc2VkKSIuIFRvIGJlIG1vcmUgcmVhZGFibGUuCgpCdXQgd291bGQgYmxvYXQgdGhl
IGJ1ZmZlciBtb3JlLgoKV2hpY2ggbGVhZHMgdG8gdGhpbmtpbmcgdGhhdCBwZXJoYXBzIHdlIHNo
b3VsZCBncmFiIG9ubHkKdGhlIHRhc2tuYW1lL3BpZCBhbmQgdGhlbiBjb25zdHJ1Y3QgdGhlIG5h
bWUgb24gdGhlIGZseS4KClRoYXQgbmVlZHMgYnVmZmVyIGZvciBjYWxsZXJzLCB3aGljaCBtaWdo
dCBiZSBub250cml2aWFsCmR1ZSB0byB1c2FnZSBvbiBlcnJvciBzaXR1YXRpb25zLgoKU28gYWZ0
ZXIgcnVubmluZyBhIGNpcmNsZSwKClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCgo+ICsJaWYgKHMpCj4gKwkJKnMgPSAnPic7Cj4gK30K
PiArCj4gIHN0YXRpYyB2b2lkIGNvbnRleHRfY2xvc2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQg
KmN0eCkKPiAgewo+ICAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07Cj4gIAo+ICAJaTkx
NV9nZW1fY29udGV4dF9zZXRfY2xvc2VkKGN0eCk7Cj4gKwlzZXRfY2xvc2VkX25hbWUoY3R4KTsK
PiAgCj4gIAltdXRleF9sb2NrKCZjdHgtPm11dGV4KTsKPiAgCj4gLS0gCj4gMi4yNC4wCj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
