Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C10FE307F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF5E6E2E5;
	Thu, 24 Oct 2019 11:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1998B6E2D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:38:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18948684-1500050 for multiple; Thu, 24 Oct 2019 12:37:53 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191024110331.8935-1-mika.kuoppala@linux.intel.com>
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
 <20191024110331.8935-1-mika.kuoppala@linux.intel.com>
Message-ID: <157191707108.2725.12035547014609265414@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 24 Oct 2019 12:37:51 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Remove nonpriv flags when
 srm/lrm
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTI0IDEyOjAzOjMxKQo+IE9uIHRlc3Rpbmcg
dGhlIHdoaXRlbGlzdHMsIHVzaW5nIGFueSBvZiB0aGUgbm9ucHJpdgo+IGZsYWdzIHdoZW4gdHJ5
aW5nIHRvIGFjY2VzcyB0aGUgcmVnaXN0ZXIgb2Zmc2V0IHdpbGwgbGVhZAo+IHRvIGZhaWx1cmUu
Cj4gCj4gRGVmaW5lIGFkZHJlc3MgbWFzayB0byBnZXQgdGhlIG1taW8gb2Zmc2V0IGluIG9yZGVy
Cj4gdG8gZ3VhcmQgYWdhaW5zdCBhbnkgY3VycmVudCBhbmQgZnV0dXJlIGZsYWcgdXNhZ2UuCj4g
Cj4gdjI6IGFwcGx5IGFsc28gb24gc2NydWJfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzIChMaW9uZWwp
Cj4gCj4gQ2M6IFRhcGFuaSBQw6RsbGkgPHRhcGFuaS5wYWxsaUBpbnRlbC5jb20+Cj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
