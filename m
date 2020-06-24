Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D78206D53
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 09:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51276EA54;
	Wed, 24 Jun 2020 07:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA966EA54
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 07:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id E836C3F37A;
 Wed, 24 Jun 2020 09:10:47 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=CDFHdIyK; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKjW_0g2n0bD; Wed, 24 Jun 2020 09:10:46 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 750C23F2D9;
 Wed, 24 Jun 2020 09:10:44 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 0AB11360168;
 Wed, 24 Jun 2020 09:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592982645; bh=j8jJ4tHCDm6R8tYX+Bn07Wvl/cLG1/QVHAJ1vcia4wY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=CDFHdIyKd1lPtOLKZ50oSf4xx67OR+Y+e8ofhxSJadd1BERWfXi2mnf8kI6m2tVOe
 HaQqywsYzyngQsQ0EmDycvKMb9yjpTObMebF5tVLVip7mlO//WurnEBSYh3qm7RCZ6
 553NEVtnXzd5hJOqaJcoFNulP6k7A6NxX51Oe0m4=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-4-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a6c4e18e-7ba3-8ce7-caaf-78b3946441e6@shipmail.org>
Date: Wed, 24 Jun 2020 09:10:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-4-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/26] drm/i915: Add an implementation for
 i915_gem_ww_ctx locking, v2.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIE1hYXJ0ZW4sCgoKT24gNi8yMy8yMCA0OjI4IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPiBpOTE1X2dlbV93d19jdHggaXMgdXNlZCB0byBsb2NrIGFsbCBnZW0gYm8ncyBmb3IgcGlu
bmluZyBhbmQgbWVtb3J5Cj4gZXZpY3Rpb24uIFdlIGRvbid0IHVzZSBpdCB5ZXQsIGJ1dCBsZXRz
IHN0YXJ0IGFkZGluZyB0aGUgZGVmaW5pdGlvbgo+IGZpcnN0Lgo+Cj4gVG8gdXNlIGl0LCB3ZSBo
YXZlIHRvIHBhc3MgYSBub24tTlVMTCB3dyB0byBnZW1fb2JqZWN0X2xvY2ssIGFuZCBkb24ndAo+
IHVubG9jayBkaXJlY3RseS4gSXQgaXMgZG9uZSBpbiBpOTE1X2dlbV93d19jdHhfZmluaS4KPgo+
IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBDaGFuZ2Ugd3dfY3R4IGFuZCBvYmogb3JkZXIgaW4gbG9j
a2luZyBmdW5jdGlvbnMgKEpvbmFzIExhaHRpbmVuKQo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA0ICstCj4g
ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgICAgfCAgMiArLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDIgKy0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICB8ICA0ICst
Cj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgICAgfCAxMCAr
Ky0tCj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAg
NCArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwg
IDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8
IDM4ICsrKysrKysrKysrLS0tCj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfdHlwZXMuaCAgfCAgOSArKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcG0uYyAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3RpbGluZy5jICAgIHwgIDIgKy0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9odWdlX3BhZ2VzLmMgICB8ICAyICstCj4gICAuLi4vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYyAgfCAgMiArLQo+ICAgLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jb2hlcmVuY3kuYyAgIHwgMTAgKystLQo+ICAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fY29udGV4dC5jIHwgIDQgKy0KPiAgIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICA0ICstCj4gICAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9waHlzLmMgICAgfCAgMiArLQo+ICAgLi4uL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF93b3JrYXJvdW5kcy5jICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d2dC9jbWRfcGFyc2VyLmMgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCA1MiArKysrKysrKysrKysrKysrKy0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oICAgICAgICAgICAgICAgfCAxMSArKysrCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYyAgICAgfCA0MSArKysr
KysrKysrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5j
ICAgICB8ICAyICstCj4gICAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdp
b24uYyAgfCAgMiArLQo+ICAgMjQgZmlsZXMgY2hhbmdlZCwgMTczIGluc2VydGlvbnMoKyksIDQy
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfdHlwZXMuaAo+IGluZGV4IGIxZjgyYTExYWVmMi4uMzc0MGMwMDgwZTM4IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMu
aAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMu
aAo+IEBAIC0xMjIsNiArMTIyLDE1IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKPiAg
IAkgKi8KPiAgIAlzdHJ1Y3QgbGlzdF9oZWFkIGx1dF9saXN0Owo+ICAgCj4gKwkvKioKPiArCSAq
IEBvYmpfbGluazogTGluayBpbnRvIEBpOTE1X2dlbV93d19jdHgub2JqX2xpc3QKPiArCSAqCj4g
KwkgKiBXaGVuIHdlIGxvY2sgdGhpcyBvYmplY3QgdGhyb3VnaCBpOTE1X2dlbV9vYmplY3RfbG9j
aygpIHdpdGggYQo+ICsJICogY29udGV4dCwgd2UgYWRkIGl0IHRvIHRoZSBsaXN0IHRvIGVuc3Vy
ZSB3ZSBjYW4gdW5sb2NrIGV2ZXJ5dGhpbmcKPiArCSAqIHdoZW4gaTkxNV9nZW1fd3dfY3R4X2Jh
Y2tvZmYoKSBvciBpOTE1X2dlbV93d19jdHhfZmluaSgpIGFyZSBjYWxsZWQuCj4gKwkgKi8KPiAr
CXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpbms7Cj4gKwoKU2luY2Ugd2UgZG9uJ3QgcmVmY291bnQg
b2JqZWN0cyBvbiB0aGUgbGlzdCwgKGFuZCB3ZSBzaG91bGRuJ3QgbmVlZCB0byksIApwZXJoYXBz
IGEgZGVidWcgd2FybmluZyBpZiBkdXJpbmcgb2JqZWN0IGRlc3RydWN0aW9uLCB0aGlzIGlzbid0
IGFuIAplbXB0eSBsaXN0IGhlYWQ/CgpPdGhlciB0aGFuIHRoYXQsIHRoaXMgcGF0Y2ggbG9va3Mg
Z29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBpbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
