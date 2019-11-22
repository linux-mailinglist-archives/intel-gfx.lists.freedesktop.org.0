Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF09105D96
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 01:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBB46E202;
	Fri, 22 Nov 2019 00:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2281C6E202
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 00:19:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19293000-1500050 for multiple; Fri, 22 Nov 2019 00:19:33 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191122001627.541739-1-chris@chris-wilson.co.uk>
References: <20191122001627.541739-1-chris@chris-wilson.co.uk>
Message-ID: <157438196869.2524.9065916793907729947@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 22 Nov 2019 00:19:28 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add basic selftests for
 rc6
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjIgMDA6MTY6MjcpCj4gRnJvbTogQW5kaSBT
aHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gCj4gQWRkIHRocmVlIGJhc2ljIHRlc3RzIGZv
ciByYzYgcG93ZXIgc3RhdHVzOgo+IAo+IDEuIGxpdmVfcmM2X2Jhc2ljIC0gc2ltcGx5IGNoZWNr
cyBpZiByYzYgd29ya3Mgd2hlbiBpdCdzIGVuYWJsZWQKPiAgICBvciBzdG9wcyB3aGVuIGl0J3Mg
ZGlzYWJsZWQuCj4gCj4gMi4gbGl2ZV9yYzZfdGhyZXNob2xkIC0gcmM2IHNob3VsZCBub3Qgd29y
ayB3aGVuIHRoZSBldmFsdWF0aW9uCj4gICAgaW50ZXJ2YWwgaXMgbGVzcyB0aGFuIHRoZSB0aHJl
c2hvbGQgYW5kIHNob3VsZCB3b3JrIG90aGVyd2lzZS4KPiAKPiAzLiBsaXZlX3JjNl9idXN5IC0g
a2VlcHMgdGhlIGdwdSBidXN5IGFuZCB0aGVuIGdvZXMgaW4gaWRsZTsKPiAgICBjaGVja3MgdGhh
dCB3ZSBkb24ndCBmYWxsIGluIHJjNiB3aGVuIGJ1c3kgYW5kIHRoYXQgd2UgZG8gZmFsbAo+ICAg
IGluIHJjNiB3aGVuIGlkbGluZy4KCk9uZSB0ZXN0IHdvcnRoIGV4dGVuZGluZyBpcyBjaGVja2lu
ZyB0aGF0IGxpdmVfcmM2X2J1c3kgd29ya3MgYWZ0ZXIgYQpyZXNldCwgYm90aCBwZXItZW5naW5l
IGFuZCBkZXZpY2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
