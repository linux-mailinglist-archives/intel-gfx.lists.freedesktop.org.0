Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 880FE43193
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 00:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA318925B;
	Wed, 12 Jun 2019 22:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10ED08925B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 22:14:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16882175-1500050 for multiple; Wed, 12 Jun 2019 23:14:05 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190612183748.7693-5-daniele.ceraolospurio@intel.com>
References: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
 <20190612183748.7693-5-daniele.ceraolospurio@intel.com>
Message-ID: <156037764521.10298.12343546015159675260@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 12 Jun 2019 23:14:05 +0100
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915: move and rename
 i915_runtime_pm
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTEyIDE5OjM3OjQzKQo+IEFz
c2VydHMgYXNpZGUsIGFsbCB0aGUgY29kZSB3b3JraW5nIG9uIHRoaXMgc3RydWN0dXJlIGlzIGlu
Cj4gaW50ZWxfcnVudGltZV9wbS5jIGFuZCB1c2VzIHRoZSBpbnRlbF8gcHJlZml4LCBzbyBtb3Zl
IHRoZQo+IHN0cnVjdHVyZSB0byBpbnRlbF9ydW50aW1lX3BtLmggYW5kIGFkb3B0IHRoZSBzYW1l
IHByZWZpeC4KPiAKPiBTaW5jZSBhbGwgdGhlIGFzc2VydHMgYXJlIG5vdyB3b3JraW5nIG9uIHRo
ZSBydW50aW1lX3BtIHN0cnVjdHVyZSwKPiBicmluZyB0aGVtIGFjcm9zcyBhcyB3ZWxsLgoKV2Fz
bid0IHBhdGNoIDEgYWxzbyBhIHJlbmFtZT8gT3IgYW0gSSBiZWluZyBzZW5pbGU/Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
