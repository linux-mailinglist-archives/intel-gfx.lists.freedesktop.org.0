Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF2F98767
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041DA6E9B0;
	Wed, 21 Aug 2019 22:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9DD6E9B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 22:32:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18219964-1500050 for multiple; Wed, 21 Aug 2019 23:32:08 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820230544.170010-7-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-7-stuart.summers@intel.com>
Message-ID: <156642672645.20466.13423593871824543206@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 23:32:06 +0100
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: Add function to set
 subslices
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMSAwMDowNTozOSkKPiBBZGQgYSBuZXcg
ZnVuY3Rpb24gdG8gc2V0IGEgc2V0IG9mIHN1YnNsaWNlcyBmb3IgYSBnaXZlbgo+IHNsaWNlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyAgICAgfCAg
NiArKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oICAgICB8ICAz
ICsrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMTggKysr
KysrKysrKystLS0tLS0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gaW5kZXgg
M2E1YzBmN2I1YTA4Li43OWE5YjVmMTg2ZjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5jCj4gQEAgLTMwLDYgKzMwLDEyIEBAIGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwo
Y29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUpCj4gICAgICAgICByZXR1cm4gdG90YWw7
Cj4gIH0KPiAgCj4gK3ZvaWQgaW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHN0cnVjdCBzc2V1X2Rl
dl9pbmZvICpzc2V1LCBpbnQgc2xpY2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dTggc3NfbWFzaykKPiArewo+ICsgICAgICAgc3NldS0+c3Vic2xpY2VfbWFza1tpXSA9IHNzX21h
c2sgJiAweGZmOwoKV2hhdCdzIGk/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
