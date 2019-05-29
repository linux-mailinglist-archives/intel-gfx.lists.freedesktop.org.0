Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A03622D7BF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 10:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2119E6E094;
	Wed, 29 May 2019 08:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4AD56E094
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 08:26:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 01:26:43 -0700
X-ExtLoop1: 1
Received: from nippert-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.202])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 01:26:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190528200655.11605-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
Date: Wed, 29 May 2019 11:26:43 +0300
Message-ID: <87d0k1oed8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl
 sseu slice
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

T24gVHVlLCAyOCBNYXkgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFdlIHdhbnQgdGhlIGluZGV4IGNvcnJlc3BvbmRpbmcgdG8gdGhlIHNldCBi
aXQgYnV0IGZscygpIHJldHVybnMgdGhlCj4gMS1pbmRleCB2YWx1ZS4KPgo+IE90aGVyd2lzZSwg
d2UgdHJpZ2dlciB0aGUgc2FuaXR5Y2hlY2sKPiAJaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzOjQ2
IEdFTV9CVUdfT04oc2xpY2UgPj0gc3NldS0+bWF4X3NsaWNlcykKPiB3aGVuIHdlIGxvb2sgdXAg
dGhlIGludmFsaWQgc2xpY2UuCj4KPiBUaGUgb25seSByZW1haW5pbmcgcXVlc3Rpb24gdGhlbiBp
cyBqdXN0IGhvdyByZWxpYWJsZSB0aGUgcmVzdCBvZgo+IGludGVsX2NhbGN1bGF0ZV9tY3Jfc19z
c19zZWxlY3QoKSBpcyAtLSBob3cgbWFueSBtb3JlIG9mIHRob3NlIGZscygpIGFyZQo+IGFsc28g
b2ZmLWJ5LW9uZS4KPgo+IEZpeGVzOiAxYWMxNTllMjNjMmMgKCJkcm0vaTkxNTogRXhwYW5kIHN1
YnNsaWNlIG1hc2siKQoKSSBzZW50IGEgcmV2ZXJ0IG9mIHRoaXMgY29tbWl0IFsxXSBmb3IgcmVh
c29ucyBleHBsYWluZWQgaW4gdGhlIGNvbW1pdAptZXNzYWdlLgoKQlIsCkphbmkuCgoKWzFdIGh0
dHA6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNTI5MDgyMTUw
LjMxNTI2LTEtamFuaS5uaWt1bGFAaW50ZWwuY29tCgoKPiBGaXhlczogMWU0MGQ0YWVhNTdiICgi
ZHJtL2k5MTUvY25sOiBJbXBsZW1lbnQgV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNp
ZmljTW1pb1JlYWRzIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+IENjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNA
aW50ZWwuY29tPgo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IGZi
Yzg1MzA4NTgwOS4uNDg1Y2QxYzhlY2M0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTc4MSw3ICs3ODEsNyBAQCB3YV9pbml0X21jcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+
ICAJCSAqIHJlYWQgRlVTRTMgZm9yIGVuYWJsZWQgTDMgQmFuayBJRHMsIGlmIEwzIEJhbmsgbWF0
Y2hlcwo+ICAJCSAqIGVuYWJsZWQgc3Vic2xpY2UsIG5vIG5lZWQgdG8gcmVkaXJlY3QgTUNSIHBh
Y2tldAo+ICAJCSAqLwo+IC0JCXUzMiBzbGljZSA9IGZscyhzc2V1LT5zbGljZV9tYXNrKTsKPiAr
CQl1MzIgc2xpY2UgPSBfX2Zscyhzc2V1LT5zbGljZV9tYXNrKTsKPiAgCQl1MzIgZnVzZTMgPQo+
ICAJCQlpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLCBHRU4xMF9NSVJST1JfRlVTRTMp
Owo+ICAJCXUzMiBzc19tYXNrID0gaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzKHNzZXUsIHNsaWNl
KTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
