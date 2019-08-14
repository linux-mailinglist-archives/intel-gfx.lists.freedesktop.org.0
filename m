Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713008DD98
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 20:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1A689EF7;
	Wed, 14 Aug 2019 18:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3597089EF7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 18:58:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18115079-1500050 for multiple; Wed, 14 Aug 2019 19:57:59 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190814184941.18355-1-daniel.vetter@ffwll.ch>
References: <20190814124933.19056-2-daniel.vetter@ffwll.ch>
 <20190814184941.18355-1-daniel.vetter@ffwll.ch>
Message-ID: <156580907713.2301.12392861013470996181@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 19:57:57 +0100
Subject: Re: [Intel-gfx] [PATCH] RFC: drm/i915: Switch obj->mm.lock lockdep
 annotations on its head
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTE0IDE5OjQ5OjQxKQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiBpbmRleCBkNDc0
YzZhYzQxMDAuLjFlYTNjM2M5NmE1YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiBAQCAtMTU3LDcgKzE1NywxNSBAQCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7Cj4gICAgICAgICB1bnNpZ25lZCBpbnQgcGluX2dsb2Jh
bDsKPiAgCj4gICAgICAgICBzdHJ1Y3Qgewo+IC0gICAgICAgICAgICAgICBzdHJ1Y3QgbXV0ZXgg
bG9jazsgLyogcHJvdGVjdHMgdGhlIHBhZ2VzIGFuZCB0aGVpciB1c2UgKi8KPiArICAgICAgICAg
ICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogUHJvdGVjdHMgdGhlIHBhZ2VzIGFuZCB0aGVp
ciB1c2UuCgoiVGhlaXIgdXNlIiBpcyBzdGlsbCBhIG1pc2xlYWRpbmcgc3VnZ2VzdCBvZiBtaW5l
LiBUaGlzIHNob3VsZCBiZQoicHJvdGVjdHMgdGhlIHBpbm5pbmcgb2YgcGFnZXMiLiBUaGUgY291
cGxlIG9mIG90aGVyIHRoaW5ncyBpdCBpcyB1c2VkCmZvciBhcmUgdGllZCB0byB0aGUgY29uY2Vw
dCBvZiB0aGUgcGFnZXMgYmVpbmcgcGlubmVkOyBmdXJ0aGVyIHVzZSBzaG91bGQKYmUgZGlzY291
cmFnZWQ7IGRpcmVjdCB1c2UgcHJvaGliaXRlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
