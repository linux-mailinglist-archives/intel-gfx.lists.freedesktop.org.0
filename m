Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E60E026F3D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FBE89ACD;
	Wed, 22 May 2019 19:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6087089ACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:55:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646110-1500050 for multiple; Wed, 22 May 2019 20:55:39 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522193203.23932-3-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
 <20190522193203.23932-3-michal.wajdeczko@intel.com>
Message-ID: <155855493843.28319.8741615198632366172@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 20:55:38 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915/selftests: Split
 igt_atomic_reset testcase
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjMxOjU2KQo+IFNwbGl0IGln
dF9hdG9taWNfcmVzZXQgc2VsZnRlc3RzIGludG8gc2VwYXJhdGUgZnVsbCAmIGVuZ2luZXMgcGFy
dHMsCj4gc28gd2UgY2FuIG1vdmUgZm9ybWVyIHRvIHRoZSBkZWRpY2F0ZWQgcmVzZXQgc2VsZnRl
c3RzIGZpbGUuCj4gCj4gV2hpbGUgaGVyZSBjaGFuZ2UgZW5naW5lcyB0ZXN0IHRvIGxvb3AgZmly
c3Qgb3ZlciBhdG9taWMgcGhhc2VzIGFuZAo+IHRoZW4gbG9vcCBvdmVyIGF2YWlsYWJsZSBlbmdp
bmVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoK
T2ssIGJ1dCByZW1pbmRzIG1lIHdlIG5lZWQgdG8gbW92ZSBhbGwgdGhlIHBlci1lbmdpbmUgcmVz
ZXRzIG92ZXIgZnJvbQpzZWxmdGVzdF9oYW5nY2hlY2suCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
