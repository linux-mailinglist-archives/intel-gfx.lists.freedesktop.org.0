Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D72EFC61
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:30:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C2B6E9E6;
	Tue,  5 Nov 2019 11:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E766E9E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 11:30:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 03:30:12 -0800
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="195789964"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.31.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 03:30:10 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191031111255.6416-1-chris@chris-wilson.co.uk>
References: <20191031111255.6416-1-chris@chris-wilson.co.uk>
Message-ID: <157295340775.9970.5869067832015421644@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 05 Nov 2019 13:30:07 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop inspection of execbuf flags
 during evict
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMzEgMTM6MTI6NTUpCj4gV2l0aCB0aGUgZ29h
bCBvZiByZW1vdmluZyB0aGUgc2VyaWFsaXNhdGlvbiBmcm9tIGFyb3VuZCBleGVjYnVmLCB3ZSB3
aWxsCj4gbm8gbG9uZ2VyIGhhdmUgdGhlIHByaXZpbGVnZSBvZiB0aGVyZSBiZWluZyBhIHNpbmds
ZSBleGVjYnVmIGluIGZsaWdodAo+IGF0IGFueSB0aW1lIGFuZCBzbyB3aWxsIG9ubHkgYmUgYWJs
ZSB0byBpbnNwZWN0IHRoZSB1c2VyJ3MgZmxhZ3Mgd2l0aGluCj4gdGhlIGNhcmVmdWxseSBjb250
cm9sbGVkIGV4ZWNidWYgY29udGV4dC4gaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoKSBpcwo+IHRo
ZSBvbmx5IHVzZXIgb3V0c2lkZSBvZiBleGVjYnVmIHRoYXQgY3VycmVudGx5IHBlZWtzIGF0IHRo
ZSBmbGFnIHRvCj4gY29udmVydCBhbiBvdmVybGFwcGluZyBzb2Z0cGlubmVkIHJlcXVlc3QgZnJv
bSBFTk9TUEMgdG8gRUlOVkFMLiBSZXRyYWN0Cj4gdGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0
IEVOT1NQQyBpZiB0aGUgbG9jYXRpb24gaXMgaW4gY3VycmVudCB1c2UsCj4gZWl0aGVyIGR1ZSB0
byB0aGlzIGV4ZWNidWYgb3IgYW5vdGhlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0aW5l
biA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJlZ2FyZHMsIEpvb25hcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
