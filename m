Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA08F6BCF4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F316E14B;
	Wed, 17 Jul 2019 13:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1095E6E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:25:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17371321-1500050 for multiple; Wed, 17 Jul 2019 14:24:57 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190717074644.32724-1-chris@chris-wilson.co.uk>
 <5d0af90c-a448-8a67-c577-0dd61faf1ca4@linux.intel.com>
In-Reply-To: <5d0af90c-a448-8a67-c577-0dd61faf1ca4@linux.intel.com>
Message-ID: <156336989630.4375.10279287150317637256@skylake-alporthouse-com>
Date: Wed, 17 Jul 2019 14:24:56 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove obsolete engine clenaup
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDoxODo1NikKPiAKPiBPbiAxNy8w
Ny8yMDE5IDA4OjQ2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBSZW1vdmUgdGhlIG91dGVyIGxh
eWVyIGNsZWFudXAgb2YgZW5naW5lIHN0dWJzOyBpdCBubyBsb25nZXIgdHJpZXMgdG8KPiAKPiBX
aG8gaXMgIml0Ij8KCmk5MTVfZHJ2LmMKCj4gPiBwcmVhbGxvY2F0ZSBhbmQgc28gaXMgbm90IHJl
c3BvbnNpYmxlIGZvciBlaXRoZXIgdGhlIGFsbG9jYXRpb24gb3IgZnJlZS4KPiA+IEJ5IHRoZSB0
aW1lIHdlIGNhbGwgdGhlIGNsZWFudXAgZnVuY3Rpb24sIHdlIGFscmVhZHkgaGF2ZSBjbGVhbmVk
IHVwIHRoZQo+ID4gZW5naW5lcy4KPiAKPiBJIHNlZToKPiAKPiBpOTE1X2RyaXZlcl9wcm9iZQo+
IHsKPiAuLi4KPiAgICAgICAgIHJldCA9IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKGRldl9wcml2
KTsKPiAuLi4KPiAgICAgICAgIGk5MTVfZHJpdmVyX21taW9fcHJvYmUgLT4gaW50ZWxfZW5naW5l
c19pbml0X21taW8gLT4gYWxsb2NhdGVzIGVuZ2luZXMKPiAuLi4KPiAgICAgICAgIDxsYXRlciBz
dGVwIGZhaWxzPiAtPiB3aG8gZnJlZXMgdGhlIGVuZ2luZXM/CgpUaGUgbWlycm9yIG9mIGk5MTVf
ZHJpdmVyX21taW9fcHJvYmUsIHdoaWNoIHdvdWxkIGJlCmk5MTVfZHJpdmVyX21taW9fcmVsZWFz
ZSwgc2hvdWxkIGJlIHJlc3BvbnNpYmxlIGZvciBjbGVhbmluZyB1cC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
