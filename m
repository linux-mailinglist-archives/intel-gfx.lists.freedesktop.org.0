Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD059877A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8649A6E9B5;
	Wed, 21 Aug 2019 22:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0DF6E9B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 22:41:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18220017-1500050 for multiple; Wed, 21 Aug 2019 23:41:47 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820230544.170010-11-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-11-stuart.summers@intel.com>
Message-ID: <156642730580.20466.17778554454513066700@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 23:41:45 +0100
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Add new function to copy
 subslices for a slice
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMSAwMDowNTo0MykKPiBBZGQgYSBuZXcg
ZnVuY3Rpb24gdG8gY29weSBzdWJzbGljZXMgZm9yIGEgc3BlY2lmaWVkIHNsaWNlCj4gYmV0d2Vl
biBpbnRlbF9zc2V1IHN0cnVjdHVyZXMgZm9yIHRoZSBwdXJwb3NlIG9mIGRldGVybWluaW5nCj4g
cG93ZXItZ2F0ZSBzdGF0dXMuCgpBbmQgc3Nfc3RyaWRlIGhhcHBlbnMgdG8gYmUgb25lIGluIGFs
bCBjYXNlcyBzbyBmYXI/CgpGb3Igb25lIGhzdyB2YXJpYW50LCBpdCBpcyAyIGlmIEkgYW0gbm90
IG1pc3Rha2VuLiBCdXQgdGhhdCBpc24ndApjb252ZXJ0ZWQuCgpDb3VsZCB5b3UgcGxlYXNlIGRy
b3AgYSBub3RlIHNheWluZyB0aGF0IHNzX3N0cmlkZSBpcyAxIQoKPiBTaWduZWQtb2ZmLWJ5OiBT
dHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
