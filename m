Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC8B84CDE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 15:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A92F6E6E2;
	Wed,  7 Aug 2019 13:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C64C6E6E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 13:26:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 06:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="176962377"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 06:26:29 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DA41E5C1E44; Wed,  7 Aug 2019 16:25:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190807113827.28127-1-chris@chris-wilson.co.uk>
References: <20190807113827.28127-1-chris@chris-wilson.co.uk>
Date: Wed, 07 Aug 2019 16:25:54 +0300
Message-ID: <87v9v985ul.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include the DRIVER_DATE in the
 error state
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gRm9yIGZv
cmtsaWZ0ZWQgZnJhbmtlbmtlcm5lbHMsIHRoZSByZXBvcnRlZCBrZXJuZWwgdmVyc2lvbiBoYXMg
bm8KPiBiZWFyaW5nIG9uIHRoZSBhY3R1YWwgZHJpdmVyIHZlcnNpb24uIEluY2x1ZGUgb3VyIG93
biBkcml2ZXIgZGF0ZSB0aGF0Cj4gaXMgdXBkYXRlZCBldmVyeSB0aW1lIHdlIHRhZyBkcm0taW50
ZWwtbmV4dC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+IGluZGV4IDllZWU5OWJkYzUxNC4uNzhmNDMxZDUy
N2NlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCj4gQEAgLTY4Nyw2
ICs2ODcsNyBAQCBzdGF0aWMgdm9pZCBfX2Vycl9wcmludF90b19zZ2woc3RydWN0IGRybV9pOTE1
X2Vycm9yX3N0YXRlX2J1ZiAqbSwKPiAgCQkgICBpbml0X3V0c25hbWUoKS0+cmVsZWFzZSwKPiAg
CQkgICBpbml0X3V0c25hbWUoKS0+bWFjaGluZSk7Cj4gIAl0cyA9IGt0aW1lX3RvX3RpbWVzcGVj
NjQoZXJyb3ItPnRpbWUpOwo+ICsJZXJyX3ByaW50ZihtLCAiRHJpdmVyOiAlc1xuIiwgRFJJVkVS
X0RBVEUpOwo+ICAJZXJyX3ByaW50ZihtLCAiVGltZTogJWxsZCBzICVsZCB1c1xuIiwKPiAgCQkg
ICAoczY0KXRzLnR2X3NlYywgdHMudHZfbnNlYyAvIE5TRUNfUEVSX1VTRUMpOwo+ICAJdHMgPSBr
dGltZV90b190aW1lc3BlYzY0KGVycm9yLT5ib290dGltZSk7Cj4gLS0gCj4gMi4yMy4wLnJjMQo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
