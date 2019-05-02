Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 185AB11C4C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BEA89199;
	Thu,  2 May 2019 15:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2862B89199
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:11:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16430825-1500050 for multiple; Thu, 02 May 2019 16:11:35 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
Message-ID: <155680989353.9023.13192841480110038083@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 02 May 2019 16:11:33 +0100
Subject: Re: [Intel-gfx] [PATCH 00/13] drm/i915: the great header
 refactoring, part three
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNS0wMiAxNjowMjozNCkKPiBDb250aW51ZSB0aGUg
aGVhZGVyIHJlZmFjdG9yaW5nIHN0YXJ0ZWQgaW4gWzFdIGFuZCBbMl0uCj4gCj4gQlIsCj4gSmFu
aS4KPiAKPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81OTAy
Mi8KPiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDA2MC8K
PiAKPiBKYW5pIE5pa3VsYSAoMTMpOgo+ICAgZHJtL2k5MTUvZHZvOiBtb3ZlIERWTyBjaGlwIHR5
cGVzIHRvIGludGVsX2R2by5jCj4gICBkcm0vaTkxNS9kc2k6IG1vdmUgb3BlcmF0aW9uIG1vZGUg
dHlwZXMgdG8gaW50ZWxfZHNpLmgKPiAgIGRybS9pOTE1OiBtb3ZlIHJhbmdlcyB0byBpbnRlbF9k
aXNwbGF5LmMKPiAgIGRybS9pOTE1OiByZW1vdmUgdW51c2VkL3N0YWxlIG1hY3JvcyBhbmQgY29t
bWVudHMgZnJvbSBpbnRlbF9kcnYuaAo+ICAgZHJtL2k5MTUvY3NyOiBtb3ZlIENTUiB2ZXJzaW9u
IG1hY3JvcyB0byBpbnRlbF9jc3IuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfZHBpb19w
aHkuaCBmcm9tIGk5MTVfZHJ2LmgKPiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX2xwZV9hdWRp
by5oIGZyb20gaTkxNV9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfYWNwaS5oIGZy
b20gaTkxNV9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaTkxNV9kZWJ1Z2ZzLmggZnJvbSBp
OTE1X2Rydi5oCj4gICBkcm0vaTkxNTogbW92ZSBpOTE1X3ZnYWNudHJsX3JlZygpIHdoZXJlIG5l
ZWRlZAo+ICAgZHJtL2k5MTU6IG1ha2UgaTkxNV91dGlscy5oIHNlbGYtY29udGFpbmVkCj4gICBk
cm0vaTkxNTogbW92ZSBtb3JlIGdlbmVyaWMgdXRpbHMgdG8gaTkxNV91dGlscy5oCj4gICBkcm0v
aTkxNTogZXh0cmFjdCBpbnRlbF9nbWJ1cy5oIGZyb20gaTkxNV9kcnYuaCBhbmQgcmVuYW1lIGlu
dGVsX2kyYy5jCgpMb3RzIG9mIHNtYWxsIGNoYW5nZXMgdGhhdCBsb29rIGdvb2QuClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
