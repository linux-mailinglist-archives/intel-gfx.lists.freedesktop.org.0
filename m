Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4E3769EF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4B66ED78;
	Fri, 26 Jul 2019 13:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CDC26ED78
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:55:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17630927-1500050 for multiple; Fri, 26 Jul 2019 14:55:09 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <829d0b40-7f49-c388-336b-cb8b542e7a9b@linux.intel.com>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-3-lucas.demarchi@intel.com>
 <156409982772.30723.16146937485087701539@skylake-alporthouse-com>
 <54eaffac-0d15-109d-6d9b-98eb6b2a604f@linux.intel.com>
 <156414725474.30723.10098194461695043311@skylake-alporthouse-com>
 <829d0b40-7f49-c388-336b-cb8b542e7a9b@linux.intel.com>
Message-ID: <156414930801.30723.7260005122192857105@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 14:55:08 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yNiAxNDozNDo1NikKPiAKPiBPbiAyNi8w
Ny8yMDE5IDE0OjIwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBjYW4gZG8gcm13IGluc2lk
ZSBjdHhfd2EgaWYgd2UgaGF2ZSB0byB0aGFua3MgdG8gTUlfTUFUSC4gU2hvdWxkIHdlCj4gPiBz
dGFydCBwcmVwYXJpbmcgZm9yIHRoYXQgbmlnaHRtYXJlPyA6KQo+IAo+IFdoZW4geW91IHNheSBw
cmVwYXJpbmcgaXQgbWFrZXMgaXQgc291bmRzIGNvbXBsaWNhdGVkIHNvIEkgd2FudCB0byBzYXkg
Cj4gbm8uIEJ1dCBzdXJlLCBpZiB5b3UgaGF2ZSBleHRyYSB0aW1lIGdvIGZvciBpdC4KClRoZSBx
dWljay1hbmQtZGlydHkgc29sdXRpb24gaXMgdG8gd3JpdGUgdGhlIGFzc2VtYmx5IHJvdXRpbmVz
IGJ5IGhhbmQsCmJ1dCBMaW9uZWwgbWVudGlvbmVkIHRoYXQgbWVzYSBtaWdodCBoYXZlIGEgZHNs
IHdlIGNvdWxkIHVzZSB0byBjcmVhdGUKTUlfTUFUSCByb3V0aW5lcy4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
