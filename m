Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670CFE7268
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 14:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444AD6E85C;
	Mon, 28 Oct 2019 13:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98ED36E85C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 13:09:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18993416-1500050 for multiple; Mon, 28 Oct 2019 13:09:08 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191028125703.29872-1-michal.wajdeczko@intel.com>
References: <20191028125703.29872-1-michal.wajdeczko@intel.com>
Message-ID: <157226814562.32326.13807251276342582214@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 28 Oct 2019 13:09:05 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Use vfunc to check
 engine submission mode
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTEwLTI4IDEyOjU3OjAzKQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5oCj4gaW5kZXggOTlkYzU3NmE0ZTI1Li4yM2RkZTkwODMzNDkg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaAo+IEBAIC0xNDUsNCArMTQ1LDYg
QEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCj4gIGludGVsX3ZpcnR1YWxfZW5naW5lX2dldF9z
aWJsaW5nKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgc2libGluZyk7Cj4gIAo+ICtib29sIGludGVs
X2VuZ2luZV9pbl9leGVjbGlzdHNfc3VibWlzc2lvbl9tb2RlKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSk7CgpQbGFubmluZyB0byB1c2UgaXQgb3V0c2lkZT8gU2hvdWxkIHdlIGhhdmUg
YSBkZWRpY2F0ZWQgZmxhZyBmb3IgdGhlCnN1Ym1pc3Npb24gbW9kZT8KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
