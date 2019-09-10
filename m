Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 755CCAE75D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 11:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B13589E98;
	Tue, 10 Sep 2019 09:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F3E8921C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 09:54:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 02:54:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="268358380"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 10 Sep 2019 02:54:56 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4519C5C1E43; Tue, 10 Sep 2019 12:54:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156810839289.30942.17826426340427610628@skylake-alporthouse-com>
References: <20190910075738.26919-1-chris@chris-wilson.co.uk>
 <87a7bcts4m.fsf@gaia.fi.intel.com>
 <156810839289.30942.17826426340427610628@skylake-alporthouse-com>
Date: Tue, 10 Sep 2019 12:54:43 +0300
Message-ID: <877e6gtr18.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Clear STOP_RING bit on
 reset
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEwIDEwOjMxOjA1KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBEdXJpbmcgcmVzZXQsIHdl
IHRyeSB0byBlbnN1cmUgbm8gZm9yd2FyZCBwcm9ncmVzcyBvZiB0aGUgQ1MgcHJpb3IgdG8KPj4g
PiB0aGUgcmVzZXQgYnkgc2V0dGluZyB0aGUgU1RPUF9SSU5HIGJpdCBpbiBSSU5HX01JX01PREUu
IFNpbmNlIGdlbjksIHRoaXMKPj4gPiByZWdpc3RlciBpcyBjb250ZXh0IHNhdmVkIGFuZCBkbyB3
ZSBlbmQgdXAgaW4gdGhlIG9kZCBzaXR1YXRpb24gd2hlcmUgd2UKPj4gPiBzYXZlIHRoZSBTVE9Q
X1JJTkcgYml0IGFuZCBzbyB0cnkgdG8gc3RvcCB0aGUgZW5naW5lIGFnYWluIGltbWVkaWF0ZWx5
Cj4+ID4gdXBvbiByZXN1bWUuIFRoaXMgaXMgcXVpdGUgdW5leHBlY3RlZCBhbmQgY2F1c2VzIHVz
IHRvIGNvbXBsYWluIGFib3V0IGFuCj4+ID4gZWFybHkgQ1MgY29tcGxldGlvbiBldmVudCEKPj4g
Cj4+IFRoZSBjb21wbGV0aW9uIGV2ZW50IGlzIGEgcHJvZHVjdCBvZiByZXN1bWUgd2l0aCBhIHN0
b3Agc2V0Pwo+Cj4gQSBjb21wbGV0aW9uIGV2ZW50IGlzIHRoZSBwcm9kdWN0IG9mIFNUT1BfUklO
Ry4gV2hldGhlciBpdCBpcyB0aGUKPiBjb21wbGV0aW9uIGV2ZW50IHRoYXQgd2Uga2VlcCBmYWls
aW5nIG9uLi4uCj4gIAo+PiBJZiBteSBtZW1vcnkgc2VydmVzIG1lIHdlbGwsIHdlIGhhdmUgZm91
Z2h0IHRoaXMgYmVmb3JlLgo+Cj4gRXhhY3RseS4gV2UndmUgcmVkdWNlZCB0aGUgZnJlcXVlbmN5
IG9mIHdoZW4gd2UgYXBwbHkgdGhlIFNUT1BfUklORywgYnV0Cj4gaGF2ZSBub3QgZWxpbWluYXRl
ZCBpdC4KPiAgCj4+IEJ1dCBJIGhhdmUgc3RpbGwgbWlzc2luZyBwaWVjZXMuIFdoeSB3b3VsZCB3
ZSBub3Qgd2FudCB0bwo+PiBzZXQgdGhpcyBmb3IgYWxsIGNvbnRleHRzIHByaW1lZCBmb3IgZXhl
Y3V0aW9uPyBJbiBnZW44IHRvby4KPgo+IEl0J3Mgbm90IGluIHRoZSBnZW44IGNvbnRleHQsIGFm
YWljdC4gSSBzZWFyY2hlZCB0aGUgY29udGV4dCBpbWFnZSBmb3IgYW4KPiBMUkkgd2l0aCB0aGUg
UklOR19NSV9NT0RFIHJlZ2lzdGVyOgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9wYXRjaC8zMjk5MTkvP3Nlcmllcz02NjQ2OCZyZXY9MQo+ICAKPj4gSSBtZWFuLCBxdWV1aW5n
IGNvbnRleHQgd2l0aCBhIHJpbmcgc3RvcHBlZCBqdXN0IGRvZXNuJ3QKPj4gc291bmQgcmlnaHQg
b24gYW55IGdlbi4KPgo+IFdlIGNsZWFyIHRoZSBTVE9QX1JJTkcgaW4gdGhlIHJlZ2lzdGVyIG9u
IHJlc3VtZSBqdXN0IGluIGNhc2UsIGFuZCB0aGF0Cj4gaXMgYmVpbmcgZmxhZ2dlZCBvbiBJY2Vs
YWtlICh3aGljaCBJIHB1dCBkb3duIHRvIHRoZSByZXNldCBub3QgYmVpbmcgdmVyeQo+IHRob3Jv
dWdoISkuIFRoZSByZW1haW5pbmcgcXVlc3Rpb24gd2FzIHdoZXRoZXIgd2Ugd2VyZSByZXN0b3Jp
bmcgaXQgZnJvbQo+IHRoZSBjb250ZXh0IGltYWdlLgoKSG1tIHllYWgsIEkgd2FzIGNvbmZ1c2Vk
IG9mIHRoZSBzZXF1ZW5jZSBvZiBzZXR1cC4gV2l0aCB0aGF0IGNsZWFyZWQKYW5kIHdpdGggdGhl
IGNvbnRleHQgc3RhdGUgYmVpbmcgd29ya2VkIG9uLCBwZXJoYXBzIHdlIGNhbiBhZGQKc2FuaXR5
IGNoZWNrZXJzIHRvIHRoZSBxdWV1aW5nIHBhdGguCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
