Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B722278E2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E634389D46;
	Thu, 23 May 2019 09:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A5F89D40;
 Thu, 23 May 2019 09:09:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16651316-1500050 for multiple; Thu, 23 May 2019 10:09:49 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f386b249-b3a3-11b4-915d-d99c0d8a649d@linux.intel.com>
References: <20190523080649.29466-1-chris@chris-wilson.co.uk>
 <f386b249-b3a3-11b4-915d-d99c0d8a649d@linux.intel.com>
Message-ID: <155860258858.28319.3356284881218976685@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 10:09:48 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Improve static engine map for
 legacy
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAwOTo0NjowOCkKPiAKPiBPbiAyMy8w
NS8yMDE5IDA5OjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9leGVjdXRpb25fZW5naW5lMiBpbnRlbF9leGVjdXRpb25fZW5naW5lczJbXSA9IHsKPiA+IC0g
ICAgIHsgInJjczAiLCBJOTE1X0VOR0lORV9DTEFTU19SRU5ERVIsIDAgfSwKPiA+IC0gICAgIHsg
ImJjczAiLCBJOTE1X0VOR0lORV9DTEFTU19DT1BZLCAwIH0sCj4gPiAtICAgICB7ICJ2Y3MwIiwg
STkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDAgfSwKPiA+IC0gICAgIHsgInZjczEiLCBJOTE1X0VO
R0lORV9DTEFTU19WSURFTywgMSB9LAo+ID4gLSAgICAgeyAidmNzMiIsIEk5MTVfRU5HSU5FX0NM
QVNTX1ZJREVPLCAyIH0sCj4gPiAtICAgICB7ICJ2ZWNzMCIsIEk5MTVfRU5HSU5FX0NMQVNTX1ZJ
REVPX0VOSEFOQ0UsIDAgfSwKPiA+ICsgICAgIHsgInJjczAiLCBJOTE1X0VOR0lORV9DTEFTU19S
RU5ERVIsIDAsIEk5MTVfRVhFQ19SRU5ERVIgfSwKPiA+ICsgICAgIHsgImJjczAiLCBJOTE1X0VO
R0lORV9DTEFTU19DT1BZLCAwLCBJOTE1X0VYRUNfQkxUIH0sCj4gPiArICAgICB7ICJ2Y3MwIiwg
STkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDAsIEk5MTVfRVhFQ19CU0QgfCBJOTE1X0VYRUNfQlNE
X1JJTkcxIH0sCj4gCj4gZXhlY2J1ZiB3aWxsIHJlamVjdCB0aGlzIG9uIHNpbmdsZSB2Y3MgcGFy
dHMuIDooIEFtIEkgbm90IHNlZWluZyBzb21lIAo+IHBsYWNlIHdoZXJlIHlvdSBmdWRnZSBpdCBp
bnRvIGNvbXBsaWFuY2U/CgoKICAgICAgICBpZiAodXNlcl9yaW5nX2lkID09IEk5MTVfRVhFQ19C
U0QgJiYgSEFTX0VOR0lORShkZXZfcHJpdiwgVkNTMSkpIHsKICAgICAgICAgICAgICAgIHVuc2ln
bmVkIGludCBic2RfaWR4ID0gYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfQlNEX01BU0s7CgogICAg
ICAgICAgICAgICAgaWYgKGJzZF9pZHggPT0gSTkxNV9FWEVDX0JTRF9ERUZBVUxUKSB7CiAgICAg
ICAgICAgICAgICAgICAgICAgIGJzZF9pZHggPSBnZW44X2Rpc3BhdGNoX2JzZF9lbmdpbmUoZGV2
X3ByaXYsIGZpbGUpOwogICAgICAgICAgICAgICAgfSBlbHNlIGlmIChic2RfaWR4ID49IEk5MTVf
RVhFQ19CU0RfUklORzEgJiYKICAgICAgICAgICAgICAgICAgICAgICAgICAgYnNkX2lkeCA8PSBJ
OTE1X0VYRUNfQlNEX1JJTkcyKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGJzZF9pZHggPj49
IEk5MTVfRVhFQ19CU0RfU0hJRlQ7CiAgICAgICAgICAgICAgICAgICAgICAgIGJzZF9pZHgtLTsK
ICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJV
RygiZXhlY2J1ZiB3aXRoIHVua25vd24gYnNkIHJpbmc6ICV1XG4iLAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYnNkX2lkeCk7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biBOVUxMOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGVuZ2luZSA9IGRldl9w
cml2LT5lbmdpbmVbX1ZDUyhic2RfaWR4KV07CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAg
ICAgIGVuZ2luZSA9IGRldl9wcml2LT5lbmdpbmVbdXNlcl9yaW5nX21hcFt1c2VyX3JpbmdfaWRd
XTsKICAgICAgICB9CgpMb29rcyBvayB0byBtZS4uLiBJIHdhcyB0cnlpbmcgdG8gZG91YmxlIGNo
ZWNrIGJ1dCBkaWYgZGlkbid0IGJvb3Qgb24KYnN3LiBTaWdoLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
