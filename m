Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3D721904
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 15:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE62897EE;
	Fri, 17 May 2019 13:19:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A25897EE;
 Fri, 17 May 2019 13:19:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16589590-1500050 for multiple; Fri, 17 May 2019 14:19:38 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f55f25ca-55c6-888b-d16c-b811961e5cd4@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-16-tvrtko.ursulin@linux.intel.com>
 <155809312278.12244.14543752945247172982@skylake-alporthouse-com>
 <f55f25ca-55c6-888b-d16c-b811961e5cd4@linux.intel.com>
Message-ID: <155809917613.12244.12633150819068335334@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 14:19:36 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 15/25] gem_wsim: Engine map
 load balance command
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAxMjo1MjozNikKPiAKPiBPbiAxNy8w
NS8yMDE5IDEyOjM4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTE3IDEyOjI1OjE2KQo+ID4+IEBAIC0xODQsMyArMTg2LDE5IEBAIEV4YW1w
bGU6Cj4gPj4gICBNLjEuVkNTCj4gPj4gICAKPiA+PiAgIFRoaXMgc2V0cyB1cCB0aGUgZW5naW5l
IG1hcCB0byBhbGwgYXZhaWxhYmxlIFZDUyBjbGFzcyBlbmdpbmVzLgo+ID4+ICsKPiA+PiArQ29u
dGV4dCBsb2FkIGJhbGFuY2luZwo+ID4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4gKwo+
ID4+ICtDb250ZXh0IGxvYWQgYmFsYW5jaW5nIChha2EgVmlydHVhbCBFbmdpbmUpIGlzIGFuIGk5
MTUgZmVhdHVyZSB3aGVyZSB0aGUgZHJpdmVyCj4gPj4gK3dpbGwgcGljayB0aGUgYmVzdCBlbmdp
bmUgKG1vc3QgaWRsZSkgdG8gc3VibWl0IHRvIGdpdmVuIHByZXZpb3VzbHkgY29uZmlndXJlZAo+
ID4gCj4gPiAibW9zdCBpZGxlIj8gQ3VycmVudGx5IHdlIHVzZSBmaXJzdCBpZGxlLCBha2EgZ3Jl
ZWR5IGJhbGFuY2luZy4KPiAKPiBXaGF0IGFib3V0ICJtb3N0IGlkbGUiIC0gaXMgaXQgYmFkIEVu
Z2xpc2g/IDopCgpObywgSSBmZWFyIGl0IGltcGxpZXMgYW4gb3B0aW1hbGl0eSB0aGF0IHdlIGNh
bid0IGRlbGl2ZXIuIDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
