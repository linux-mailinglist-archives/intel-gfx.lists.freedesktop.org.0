Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1000863B9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9594D8913B;
	Thu,  8 Aug 2019 13:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F848913B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:54:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17931529-1500050 for multiple; Thu, 08 Aug 2019 14:54:16 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
Message-ID: <156527245351.22627.15346937144273849701@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 08 Aug 2019 14:54:13 +0100
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915: header cleanup of the day
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOC0wOCAxNDo0MjozOSkKPiBUaGUgZGFpbHkgZG9z
ZSBvZiBoZWFkZXIgY2xlYW51cC4gSSB0aGluayBJJ2xsIHNldHRsZSBkb3duIGZvciBhIHdoaWxl
IGFmdGVyCj4gdGhpcyBvbmUuIDspCj4gCj4gQlIsCj4gSmFuaS4KPiAKPiBKYW5pIE5pa3VsYSAo
MTApOgo+ICAgZHJtL2k5MTU6IHJlbW92ZSB1bnVzZWQgZGV2X3ByaXYtPm5vX2F1eF9oYW5kc2hh
a2UKPiAgIGRybS9pOTE1OiBtb3ZlIGFkZF90YWludF9mb3JfQ0koKSB0byBpOTE1X3V0aWxzLmgK
PiAgIGRybS9pOTE1OiBtb3ZlIEk5MTVfU1RBVEVfV0FSTigpIGFuZCBfT04oKSB0byBpbnRlbF9k
aXNwbGF5LmgKPiAgIGRybS9pOTE1OiBtb3ZlIHByaW50aW5nIGFuZCBsb2FkIGVycm9yIGluamVj
dCB0byBpOTE1X3V0aWxzLltjaF0KPiAgIGRybS9pOTE1OiBleHRyYWN0IGk5MTVfcGVyZi5oIGZy
b20gaTkxNV9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaTkxNV9zeXNmcy5oIGZyb20gaTkx
NV9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaTkxNV9zdXNwZW5kLmggZnJvbSBpOTE1X2Ry
di5oCj4gICBkcm0vaTkxNTogZXh0cmFjdCBpOTE1X21lbWNweS5oIGZyb20gaTkxNV9kcnYuaAo+
ICAgZHJtL2k5MTU6IGV4dHJhY3QgZ2VtL2k5MTVfZ2VtX3N0b2xlbi5oIGZyb20gaTkxNV9kcnYu
aAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaTkxNV9nZW1fc2hyaW5rZXIuaCBmcm9tIGk5MTVfZHJ2
LmgKCk5vIGNvbXBsYWludHMsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KCkkgdGhvdWdodCBJIGhhZCBkb25lIGEgYmV0dGVyIGpvYiBvZiBncmFi
YmluZyB0aGUgR0VNIHN0dWZmIGFuZCBwdXR0aW5nCmluIGl0cyBkdW5nZW9uLiBPYnZpb3VzbHkg
SSBuZWVkIHRvIGpvaW4gaXQgaW4gdGhlIGR1bmdlb24gYW5kIHRocm93IGF3YXkKdGhlIGtleS4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
