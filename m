Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2D828228
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 18:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF3A6E027;
	Thu, 23 May 2019 16:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6559C6E027
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 16:09:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16657631-1500050 for multiple; Thu, 23 May 2019 17:08:53 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z182fdwvxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
 <20190522193203.23932-9-michal.wajdeczko@intel.com>
 <155855561367.28319.14191658465315815163@skylake-alporthouse-com>
 <op.z182fdwvxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <155862773316.28319.1466322067350637228@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 17:08:53 +0100
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/uc: Stop talking with GuC
 when resetting
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIzIDE2OjUzOjI3KQo+IE9uIFdlZCwg
MjIgTWF5IDIwMTkgMjI6MDY6NTMgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDUtMjIgMjA6MzI6MDIpCj4gPj4gS25vd2luZyB0aGF0IEd1QyB3aWxsIGJlIHJlc2V0IHNv
b24sIHdlIG1heSBzdG9wIGFsbCBjb21tdW5pY2F0aW9uCj4gPj4gaW1tZWRpYXRlbHkgd2l0aG91
dCBkb2luZyBncmFjZWZ1bCBjbGVhbnVwIGFzIGl0IGlzIG5vdCBuZWVkZWQuCj4gPgo+ID4gVGhl
IGRpZmZlcmVuY2UgYmV0d2VlbiBzdG9wIGFuZCBkaXNhYmxlIGlzIHRoYXQgaXQgYXZvaWRzIHRo
ZQo+ID4gc2VyaWFsaXNhdGlvbiwgcmlnaHQ/IElzIHRoaXMgcGF0Y2ggc3RpbGwgcmVxdWlyZWQg
LS0gZG8gd2Ugc3RpbGwKPiA+IG5lZWQgdGhlIGNvbXBsaWNhdGlvbiBpbiB0d28gc2ltaWxhciBi
dXQgc3VidGx5IGRpZmZlcmVudCBwYXRocz8KPiAKPiBUaGlzIHBhdGNoIGhlbHBzIHVzIGNhcHR1
cmUgYW55IHVud2FudGVkL3VuZXhwZWN0ZWQgYXR0ZW1wdHMgdG8gdGFsawo+IHdpdGggR3VDIGFm
dGVyIHdlIGRlY2lkZWQgdG8gcmVzZXQgaXQuIFdlIG5lZWQgJ2Rpc2FibGUnIHBhcnQgYXMgY3Vy
cmVudAo+IGFuZCB1cGNvbWluZyBmaXJtd2FyZSBzdGlsbCBleHBlY3RzIHVzIHRvIGRvIGdyYWNl
ZnVsIGNsZWFudXAuIFRoaXMgbWF5Cj4gYmUgY2hhbmdlZCBpbiB0aGUgZnV0dXJlIHJlbGVhc2Vz
LiBBbmQgd2UgY2FuIHVzZSAnZGlzYWJsZScgYXMgdGhpcyB3aWxsCj4gYnJlYWsgYXRvbWljX3Jl
c2V0IHRlc3RzLgoKUGxlYXNlIHByb21vdGUgdGhhdCB0byB0aGUgY29tbWl0bXNnIDopCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
