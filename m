Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D702B8FF31
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 11:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2970B6E294;
	Fri, 16 Aug 2019 09:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 509EB6E294
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 09:40:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18160520-1500050 for multiple; Fri, 16 Aug 2019 10:40:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816012343.36433-1-daniele.ceraolospurio@intel.com>
 <20190816012343.36433-5-daniele.ceraolospurio@intel.com>
 <875zmxfo6r.fsf@intel.com>
In-Reply-To: <875zmxfo6r.fsf@intel.com>
Message-ID: <156594840654.11610.7701104753301488078@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 10:40:06 +0100
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Dynamically allocate s0ix
 struct for VLV
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOC0xNiAxMDozNTowOCkKPiBPbiBUaHUsIDE1IEF1
ZyAyMDE5LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPiB3cm90ZToKPiA+IEBAIC0xNjIyLDcgKzE1NjAsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSB7Cj4gPiAgICAgICB1MzIgc3VzcGVuZF9jb3VudDsKPiA+ICAgICAgIGJvb2wgcG93
ZXJfZG9tYWluc19zdXNwZW5kZWQ7Cj4gPiAgICAgICBzdHJ1Y3QgaTkxNV9zdXNwZW5kX3NhdmVk
X3JlZ2lzdGVycyByZWdmaWxlOwo+ID4gLSAgICAgc3RydWN0IHZsdl9zMGl4X3N0YXRlIHZsdl9z
MGl4X3N0YXRlOwo+ID4gKyAgICAgdm9pZCAqczBpeF9zdGF0ZTsKPiAKPiBJJ2Qga2VlcCB0aGUg
dmx2XyBwcmVmaXggaW4gdGhlIG1lbWJlciBuYW1lLgoKQW5kIGZvcndhcmQgZGVjbCB0byBhdm9p
ZCBhIG5ha2VkIHZvaWQgKgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
