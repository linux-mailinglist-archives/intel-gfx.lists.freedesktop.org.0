Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D72CF011C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 16:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F836EAAC;
	Tue,  5 Nov 2019 15:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2507F6EAAC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 15:20:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 07:20:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="205529581"
Received: from cyucel-mobl.ger.corp.intel.com ([10.249.254.157])
 by orsmga006.jf.intel.com with ESMTP; 05 Nov 2019 07:20:49 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191105145305.14314-1-chris@chris-wilson.co.uk>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <bd7ccfa0-cb34-8dec-10cd-27b060d1c340@linux.intel.com>
Date: Tue, 5 Nov 2019 17:20:47 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105145305.14314-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Early rejection of
 no-aperture map_ggtt
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwNS8xMS8yMDE5IDE2LjUzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gSWYgdGhlIGRldmlj
ZSBkb2VzIG5vdCBoYXZlIGFuIGFwZXJ0dXJlIHRocm91Z2ggd2hpY2ggd2UgY2FuIGluZGlyZWN0
bHkKPiBhY2Nlc3MgYW5kIGRldGlsZSB0aGUgYnVmZmVycywgc2ltcGx5IHJlamVjdCB0aGUgaW9j
dGwuIExhdGVyIHdlIGNhbgo+IGV4dGVuZCB0aGUgaW9jdGwgdG8gc3VwcG9ydCBkaWZmZXJlbnQg
bW9kZXMsIGJ1dCBhcyBhbiBleHRlbnNpb24gdGhlCj4gdXNlciBtdXN0IG9wdCBpbiBhbmQgZXhw
bGljaXRseSBjb250cm9sIHRoZSBtbWFwIHR5cGUgKHZpego+IE1NQVBfT0ZGU0VUX0lPQ1RMKS4K
ClJldmlld2VkLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5p
bnRlbC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMyArKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uYwo+IGluZGV4IGUzMDAyODQ5ODQ0Yi4uZDYwOTczNjAzY2MxIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gQEAgLTQ1MCw2
ICs0NTAsOSBAQCBpOTE1X2dlbV9tbWFwX2d0dChzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICAJaW50IHJldDsKPiAgCj4gKwlpZiAo
IWk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoJnRvX2k5MTUoZGV2KS0+Z2d0dCkpCj4gKwkJcmV0dXJu
IC1FTk9ERVY7Cj4gKwo+ICAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBoYW5k
bGUpOwo+ICAJaWYgKCFvYmopCj4gIAkJcmV0dXJuIC1FTk9FTlQ7Cj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
