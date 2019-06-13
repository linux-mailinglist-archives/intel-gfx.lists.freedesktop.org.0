Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E10E0432E1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 08:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867E589296;
	Thu, 13 Jun 2019 06:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DEA89274
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 06:07:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16883536-1500050 for multiple; Thu, 13 Jun 2019 07:07:30 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190612162900.13777-1-lucas.demarchi@intel.com>
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
Message-ID: <156040604804.27443.9644179905271704766@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Jun 2019 07:07:28 +0100
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: globally replace dev_priv
 with i915
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDYtMTIgMTc6Mjk6MDApCj4gV2UgYXJlIHNs
b3dseSBjb252ZXJ0aW5nIGRldl9wcml2IHRvIGk5MTUgZXZlcnl3aGVyZSwgc3ByZWFkIGludG8K
PiBzbWFsbGVyIHNlcmllcy4gV2hpbGUgdGhpcyBpcyBnb29kIHRvIGF2b2lkIHVucmVsYXRlZCBi
cmVha2FnZXMgdG8gb3RoZXIKPiBpbmZsaWdodCBwYXRjaGVzLCBpdCdzIGJhZCBiZWNhdXNlIGlu
ZmxpZ2h0IHBhdGNoZXMgb24gbmVhcmJ5IHBhdGhzIGtlZXAKPiBicmVha2luZy4gUGFpcmVkIHdp
dGggb3RoZXIgY29kZSBtb3ZlcyBhbmQgcmVmYWN0b3JlcyB0aGlzIGlzIGJlY29taW5nIGEKPiBu
aWdodG1hcmUuCj4gCj4gTm93IHRoYXQgSTkxNV97UkVBRCxXUklURX0gYXJlIGdvbmUgYW5kIGlt
cGxpY2l0IGFjY2VzcyB0byBkZXZfcHJpdiBubwo+IGxvbmdlciBleGlzdHMgd2UgY2FuIHNpbXBs
eSBzZWQgYWxsIGZpbGVzIGFuZCBiZSBkb25lIHdpdGggdGhlCj4gY29udmVyc2lvbi4gVGhpcyB3
YXMgZ2VuZXJhdGVkIHdpdGggdGhlIGZvbGxvd2luZyBjb21tYW5kcyB3aXRoIG5vCj4gYWRkaXRp
b25hbCBmaXh1cHM6Cj4gCj4gICAgICAgICBnaXQgbHMtZmlsZXMgLS1mdWxsLW5hbWUgLXogLS0g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvIHwgXAo+ICAgICAgICAgICAgICAgICB4YXJncyAtMCBzZWQg
LWkgJ3MvXGJkZXZfcHJpdlxiL2k5MTUvZycKPiAKPiBBbnkgcGVuZGluZyBzZXJpZXMgY2FuIGFw
cGx5IHRoZSBzYW1lIHNlYXJjaCBhbmQgcmVwbGFjZSB3aGVuIHJlYmFzaW5nLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kdm9fY2g3MDE3LmMgICAgICAgICAgICAgfCAgICA2
ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2R2b19jaDd4eHguYyAgICAgICAgICAgICB8ICAg
MTAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZHZvX2l2Y2guYyAgICAgICAgICAgICAgIHwg
ICAxNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kdm9fbnMyNTAxLmMgICAgICAgICAgICAg
fCAgIDE0ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2R2b19zaWwxNjQuYyAgICAgICAgICAg
ICB8ICAgMTAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZHZvX3RmcDQxMC5jICAgICAgICAg
ICAgIHwgICAxMCArLQoKTm90aWNlIHRoYXQgdGhlIHZlcnkgc3RhcnQgb2YgdGhpcywgdGhlIGRl
dl9wcml2IGJhY2twb2ludGVycyBhcmUKbm90IGk5MTUuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
