Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D520B7CF20
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 22:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B036E30F;
	Wed, 31 Jul 2019 20:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6FC6E30F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 20:52:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17768943-1500050 for multiple; Wed, 31 Jul 2019 21:52:20 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190731143856.35460-4-michal.wajdeczko@intel.com>
References: <20190731143856.35460-1-michal.wajdeczko@intel.com>
 <20190731143856.35460-4-michal.wajdeczko@intel.com>
Message-ID: <156460633993.2512.16694908408654064935@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 21:52:19 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/guc: Use dedicated flag to
 track submission mode
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDE1OjM4OjU1KQo+IEluc3RlYWQg
b2YgcmVseWluZyBvbiBlbmFibGVfZ3VjIG1vZHBhcmFtIHRvIHJlcHJlc2VudCBhY3R1YWwKPiBH
dUMgc3VibWlzc2lvbiBtb2RlLCB1c2UgZGVkaWNhdGVkIGZsYWcgYW5kIGxvb2sgYXQgbW9kcGFy
YW0KPiBvbmx5IHRvIGNoZWNrIGlmIHN1Ym1pc3Npb24gd2FzIGV4cGxpY2l0bHkgZGlzYWJsZWQg
YnkgdGhlIHVzZXIuCj4gCj4gdjI6IHJlYmFzZWQsIHNpbXBsaWZpZWQgY29uZGl0aW9uIChDaHJp
cykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtv
QGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
