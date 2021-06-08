Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D15839F07E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043EB6EB23;
	Tue,  8 Jun 2021 08:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F746EB23;
 Tue,  8 Jun 2021 08:13:57 +0000 (UTC)
IronPort-SDR: kkXA409QNNd+tWNNnhsKZp2tQPQ9hmQOUphr5UhNi9W/Nzkydk3LZCQk5FTwKvnFfnba9mLNyd
 Ab23ZKgmo/Kw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192121531"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="192121531"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:13:55 -0700
IronPort-SDR: liBxa8jaN66qQD8lIj0GattY9dd/+/vuQMLMiRNEVf9NdwGJEPuP93faIy/kcLMZ7jgl65Y92j
 JTD/Cp0abBFg==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="485127102"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO [10.215.170.251])
 ([10.215.170.251])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:13:53 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-6-matthew.auld@intel.com>
 <b741db2d0b50b634a995d6f7bbfbf70b35818850.camel@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <53aa14b3-87b5-65e9-42e3-198dc55c0a51@intel.com>
Date: Tue, 8 Jun 2021 09:13:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <b741db2d0b50b634a995d6f7bbfbf70b35818850.camel@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/ttm: switch over to
 ttm_buddy_man
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDgvMDYvMjAyMSAwODozOSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gT24gTW9uLCAy
MDIxLTA2LTA3IGF0IDE5OjIyICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IE1vdmUgYmFj
ayB0byB0aGUgYnVkZHkgYWxsb2NhdG9yIGZvciBtYW5hZ2luZyBkZXZpY2UgbG9jYWwgbWVtb3J5
LAo+PiBhbmQKPj4gcmVzdG9yZSB0aGUgbG9zdCBtb2NrIHNlbGZ0ZXN0cy4gS2VlcCBhcm91bmQg
dGhlIHJhbmdlIG1hbmFnZXIKPj4gcmVsYXRlZAo+PiBiaXRzLCBzaW5jZSB3ZSBsaWtlbHkgbmVl
ZCB0aGlzIGZvciBtYW5hZ2luZyBzdG9sZW4gYXQgc29tZSBwb2ludC4KPj4gRm9yCj4+IHN0b2xl
biB3ZSBhbHNvIGRvbid0IG5lZWQgdG8gcmVzZXJ2ZSBhbnl0aGluZyBzbyBubyBuZWVkIHRvIHN1
cHBvcnQgYQo+PiBnZW5lcmljIHJlc2VydmUgaW50ZXJmYWNlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IENjOiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiAgwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmPCoMKgwqDCoMKgwqAgfMKgIDI2
ICstLQo+PiAgwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmPCoMKg
wqAgfMKgIDU1ICstLS0tLQo+PiAgwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlf
cmVnaW9uLmjCoMKgwqAgfMKgIDE3IC0tCj4+ICDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3JlZ2lvbl90dG0uY8KgwqDCoMKgwqDCoCB8IDEwMCArKystLS0tLS0tLQo+PiAgwqAuLi4vZHJt
L2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uY8KgIHwgMTcwICsrKysrKysrKysr
Ky0tLS0KPj4gLS0KPj4KPiAKPiAuLi4KPiAKPj4gICAKPj4gIMKgc3RhdGljIGludCBpOTE1X3R0
bV9tb3ZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sIGJvb2wgZXZpY3QsCj4+IEBAIC02
NjEsMjAgKzY2MSw4IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QKPj4g
aW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+PiAgwqDCoMKgwqDCoMKgwqDCoHN0YXRpYyBzdHJ1
Y3QgbG9ja19jbGFzc19rZXkgbG9ja19jbGFzczsKPj4gIMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG1lbS0+aTkxNTsKPj4gIMKgwqDCoMKgwqDCoMKgwqBl
bnVtIHR0bV9ib190eXBlIGJvX3R5cGU7Cj4+IC3CoMKgwqDCoMKgwqDCoHNpemVfdCBhbGlnbm1l
bnQgPSAwOwo+PiAgwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Cj4+ICAgCj4+IC3CoMKgwqDCoMKg
wqDCoC8qIEFkanVzdCBhbGlnbm1lbnQgdG8gR1BVLSBhbmQgQ1BVIGh1Z2UgcGFnZSBzaXplcy4g
Ki8KPj4gLQo+PiAtwqDCoMKgwqDCoMKgwqBpZiAobWVtLT5pc19yYW5nZV9tYW5hZ2VyKSB7Cj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoc2l6ZSA+PSBTWl8xRykKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhbGlnbm1lbnQgPSBT
Wl8xRyA+PiBQQUdFX1NISUZUOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxz
ZSBpZiAoc2l6ZSA+PSBTWl8yTSkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBhbGlnbm1lbnQgPSBTWl8yTSA+PiBQQUdFX1NISUZUOwo+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoc2l6ZSA+PSBTWl82NEspCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWxpZ25tZW50ID0gU1pf
NjRLID4+IFBBR0VfU0hJRlQ7Cj4+IC3CoMKgwqDCoMKgwqDCoH0KPj4gLQo+PiAgwqDCoMKgwqDC
oMKgwqDCoGRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+ZHJtLCAmb2JqLT5iYXNl
LCBzaXplKTsKPj4gIMKgwqDCoMKgwqDCoMKgwqBpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZp
OTE1X2dlbV90dG1fb2JqX29wcywgJmxvY2tfY2xhc3MsCj4+IGZsYWdzKTsKPj4gIMKgwqDCoMKg
wqDCoMKgwqBpOTE1X2dlbV9vYmplY3RfaW5pdF9tZW1vcnlfcmVnaW9uKG9iaiwgbWVtKTsKPj4g
QEAgLTY5Niw3ICs2ODQsNyBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQoc3RydWN0
Cj4+IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPj4gIMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4g
IMKgwqDCoMKgwqDCoMKgwqBvYmotPmJhc2Uudm1hX25vZGUuZHJpdmVyX3ByaXZhdGUgPSBpOTE1
X2dlbV90b190dG0ob2JqKTsKPj4gIMKgwqDCoMKgwqDCoMKgwqByZXQgPSB0dG1fYm9faW5pdCgm
aTkxNS0+YmRldiwgaTkxNV9nZW1fdG9fdHRtKG9iaiksIHNpemUsCj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9fdHlwZSwgJmk5MTVfc3lzX3Bs
YWNlbWVudCwgYWxpZ25tZW50LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJvX3R5cGUsICZpOTE1X3N5c19wbGFjZW1lbnQsIFBBR0VfU0laRSwK
PiAKPiBBY3R1YWxseSBqdXN0IHJlYWxpemVkIHRoYXQgdGhlIGFsaWdubWVudCBpcyBzcGVjaWZp
ZWQgaW4gUEFHRV9TSVpFCj4gdW5pdHMsIHNvIGFib3ZlIHNob3VsZCBiZSBzL1BBR0VfU0laRS8x
Ly4gTWlnaHQgbmVlZCB0byBjaGVjayB0aGF0IHRoZQo+IGJ1ZGR5IFRUTSBpbnRlcmZhY2UgZ2V0
cyB0aGlzIHJpZ2h0IGFzIHdlbGwuCgpPb3BzLCBhbmQgeWVzIGl0IGxvb2tzIGxpa2UgdGhlIGJ1
ZGR5IGlzIGFsc28gY29uZnVzZWQgaGVyZS4KCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
