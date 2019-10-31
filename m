Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B05DEAB69
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 09:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578B76EDA8;
	Thu, 31 Oct 2019 08:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5DF6EDA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 08:14:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19028395-1500050 for multiple; Thu, 31 Oct 2019 08:14:16 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191031013040.25803-1-daniele.ceraolospurio@intel.com>
References: <20191031013040.25803-1-daniele.ceraolospurio@intel.com>
Message-ID: <157250965436.7938.9083795074561132539@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 31 Oct 2019 08:14:14 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: drop lrc header page
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTMxIDAxOjMwOjM5KQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCj4gaW5kZXggZmFhMmQ1NmMyNzliLi4wNDUxMWQ4
ZWJkYzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaAo+IEBAIC04NiwzMSAr
ODYsMTIgQEAgaW50IGludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uX3NldHVwKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSk7Cj4gIGludCBpbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbl9p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Cj4gIAo+ICAvKiBMb2dpY2FsIFJp
bmcgQ29udGV4dHMgKi8KPiAtCj4gLS8qCj4gLSAqIFdlIGFsbG9jYXRlIGEgaGVhZGVyIGF0IHRo
ZSBzdGFydCBvZiB0aGUgY29udGV4dCBpbWFnZSBmb3Igb3VyIG93bgo+IC0gKiB1c2UsIHRoZXJl
Zm9yZSB0aGUgYWN0dWFsIGxvY2F0aW9uIG9mIHRoZSBsb2dpY2FsIHN0YXRlIGlzIG9mZnNldAo+
IC0gKiBmcm9tIHRoZSBzdGFydCBvZiB0aGUgVk1BLiBUaGUgbGF5b3V0IGlzCj4gLSAqCj4gLSAq
IHwgW2d1Y10gICAgICAgICAgfCBbaHdzcF0gW2xvZ2ljYWwgc3RhdGVdIHwKPiAtICogfDwtIG91
ciBoZWFkZXIgLT58PC0gY29udGV4dCBpbWFnZSAgICAgIC0+fAo+IC0gKgo+IC0gKi8KPiAtLyog
VGhlIGZpcnN0IHBhZ2UgaXMgdXNlZCBmb3Igc2hhcmluZyBkYXRhIHdpdGggdGhlIEd1QyAqLwo+
IC0jZGVmaW5lIExSQ19HVUNTSFJfUE4gICgwKQo+IC0jZGVmaW5lIExSQ19HVUNTSFJfU1ogICgx
KQo+ICAvKiBBdCB0aGUgc3RhcnQgb2YgdGhlIGNvbnRleHQgaW1hZ2UgaXMgaXRzIHBlci1wcm9j
ZXNzIEhXUyBwYWdlICovCj4gLSNkZWZpbmUgTFJDX1BQSFdTUF9QTiAgKExSQ19HVUNTSFJfUE4g
KyBMUkNfR1VDU0hSX1NaKQo+ICsjZGVmaW5lIExSQ19QUEhXU1BfUE4gICgwKQo+ICAjZGVmaW5l
IExSQ19QUEhXU1BfU1ogICgxKQo+IC0vKiBGaW5hbGx5IHdlIGhhdmUgdGhlIGxvZ2ljYWwgc3Rh
dGUgZm9yIHRoZSBjb250ZXh0ICovCj4gKy8qIEFmdGVyIHRoZSBQUEhXU1Agd2UgaGF2ZSB0aGUg
bG9naWNhbCBzdGF0ZSBmb3IgdGhlIGNvbnRleHQgKi8KPiAgI2RlZmluZSBMUkNfU1RBVEVfUE4g
ICAoTFJDX1BQSFdTUF9QTiArIExSQ19QUEhXU1BfU1opCj4gIAo+IC0vKgo+IC0gKiBDdXJyZW50
bHkgd2UgaW5jbHVkZSB0aGUgUFBIV1NQIGluIF9faW50ZWxfZW5naW5lX2NvbnRleHRfc2l6ZSgp
IHNvCj4gLSAqIHRoZSBzaXplIG9mIHRoZSBoZWFkZXIgaXMgc3lub255bW91cyB3aXRoIHRoZSBz
dGFydCBvZiB0aGUgUFBIV1NQLgo+IC0gKi8KPiAtI2RlZmluZSBMUkNfSEVBREVSX1BBR0VTIExS
Q19QUEhXU1BfUE4KCkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
