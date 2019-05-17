Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 196D521D32
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 20:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6FC3898E4;
	Fri, 17 May 2019 18:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38079898E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 18:20:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16593142-1500050 for multiple; Fri, 17 May 2019 19:20:01 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517162227.6436-4-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-4-michal.wajdeczko@intel.com>
Message-ID: <155811719984.1890.14256012803239351657@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 19:19:59 +0100
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/uc: Skip GuC HW unwinding if
 GuC is already dead
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE3OjIyOjIzKQo+IFdlIHNob3Vs
ZCBub3QgYXR0ZW1wdCB0byB1bndpbmQgR3VDIGhhcmR3YXJlL2Zpcm13YXJlIHNldHVwCj4gaWYg
d2UgYWxyZWFkeSBoYXZlIHNhbml0aXplZCBHdUMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91Yy5jIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+IGluZGV4IDAxNjgzZDEwNzM0OC4uOWQ4
NmNkODMxZWE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4gQEAgLTQ2NSw2ICs0NjUs
OSBAQCB2b2lkIGludGVsX3VjX2ZpbmlfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4gIAo+ICAgICAgICAgR0VNX0JVR19PTighSEFTX0dVQyhpOTE1KSk7Cj4gIAo+ICsgICAgICAg
aWYgKCFpbnRlbF9ndWNfaXNfYWxpdmUoZ3VjKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+
ICsKClNvbWV0aGluZyBlbHNlIGFsb25nIHRoZXNlIGxpbmVzIHdvdWxkIGJlIGF2b2lkaW5nCgpo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA2MjIKCkkgcHJl
c3VtZSB5b3UgY2FuIHRoaW5rIG9mIHNvbWV0aGluZyBhIGJpdCBtb3JlIHByZWNpc2UgdG8gc2tp
cCBndWMKc2VsZnRlc3RzIGlmIGd1YyBpbml0aWFsaXNhdGlvbiBmYWlsZWQuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
