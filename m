Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B5BD2BE7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 15:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9246EB4D;
	Thu, 10 Oct 2019 13:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF7616EB4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 13:58:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18791884-1500050 for multiple; Thu, 10 Oct 2019 14:58:09 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191010134849.9078-1-chris@chris-wilson.co.uk>
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
Message-ID: <157071588745.29611.7390894218720747310@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 10 Oct 2019 14:58:07 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Honour O_NONBLOCK before
 throttling execbuf submissions
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTAgMTQ6NDg6NDkpCj4gQ2hlY2sgdGhlIHVz
ZXIncyBmbGFncyBvbiB0aGUgc3RydWN0IGZpbGUgYmVmb3JlIGRlY2lkaW5nIHdoZXRoZXIgb3Ig
bm90Cj4gdG8gc3RhbGwgYmVmb3JlIHN1Ym1pdHRpbmcgYSByZXF1ZXN0LiBUaGlzIGFsbG93cyB1
cyB0byByZWFzb25hYmx5Cj4gY2hlYXBseSBob25vdXIgT19OT05CTE9DSyB3aXRob3V0IGNoZWNr
aW5nIGF0IG1vcmUgY3JpdGljYWwgcGhhc2VzCj4gZHVyaW5nIHJlcXVlc3Qgc3VibWlzc2lvbi4K
Ck9uZSBtaWdodCByZWFzb25hYmx5IGV4cGVjdCBwb2xsKFBPTExPVVQpIHRvIGJlIHN1cHBvcnRl
ZCBhcyB3ZWxsIGluCnRoaXMgY2FzZSA6fAoKQnJpbmcgb24gdWdwdS4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
