Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEF9F91EF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3326EB0F;
	Tue, 12 Nov 2019 14:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096616EB35
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:23:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:23:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="287559949"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 12 Nov 2019 06:23:24 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A3CE15C1E42; Tue, 12 Nov 2019 16:23:14 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112092854.869-1-chris@chris-wilson.co.uk>
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
Date: Tue, 12 Nov 2019 16:23:14 +0200
Message-ID: <87mud141il.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/27] drm/i915: Flush context free work on
 cleanup
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhyb3cg
aW4gYSBmbHVzaF93b3JrKCkgYW5kIHJjdV9iYXJyaWVyKCkgdG8gc3BlY2lmaWNhbGx5IGZsdXNo
IHRoZQo+IGNvbnRleHQgY2xlYW51cCB3b3JrLgo+Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI0OAo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYwo+IGluZGV4IDcyZDM4OWFmYTI4YS4uMTdmMzk1NjcyZTVlIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTc3Niw2ICs3NzYs
NyBAQCBpbnQgaTkxNV9nZW1faW5pdF9jb250ZXh0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAgdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVsZWFzZV9fY29udGV4dHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAgCWRlc3Ryb3lfa2VybmVsX2NvbnRleHQoJmk5
MTUtPmtlcm5lbF9jb250ZXh0KTsKPiArCWZsdXNoX3dvcmsoJmk5MTUtPmdlbS5jb250ZXh0cy5m
cmVlX3dvcmspOwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IGNvbnRleHRfaWRyX2NsZWFudXAoaW50
IGlkLCB2b2lkICpwLCB2b2lkICpkYXRhKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jCj4gaW5kZXggYjk2MTNkMDQ0MzkzLi4xZjY4NzAwYTIzMTEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+IEBAIC00MDIsNiArNDAy
LDcgQEAgdm9pZCBpbnRlbF9lbmdpbmVzX2NsZWFudXAoc3RydWN0IGludGVsX2d0ICpndCkKPiAg
CQlndC0+ZW5naW5lW2lkXSA9IE5VTEw7Cj4gIAkJZ3QtPmk5MTUtPmVuZ2luZVtpZF0gPSBOVUxM
Owo+ICAJfQo+ICsJcmN1X2JhcnJpZXIoKTsKCkkgZ3Vlc3Mgd2UgbmVlZCB0aGlzIGZvciByZWxl
YXNpbmcga2VybmVsX2N0eCBidXQgSSBkb24ndCBzZWUgd2h5CmV4YWN0bHkuCi1NaWthCgoKPiAg
fQo+ICAKPiAgLyoqCj4gLS0gCj4gMi4yNC4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
