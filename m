Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E61EA266B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 20:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C835F6E139;
	Thu, 29 Aug 2019 18:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE6F6E139
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 18:49:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18309071-1500050 for multiple; Thu, 29 Aug 2019 19:49:33 +0100
MIME-Version: 1.0
To: Fernando Pacheco <fernando.pacheco@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190829174154.14675-1-fernando.pacheco@intel.com>
References: <20190829174154.14675-1-fernando.pacheco@intel.com>
Message-ID: <156710457147.12323.10483732461066292193@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 29 Aug 2019 19:49:31 +0100
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/uc: Extract common code from GuC
 stop/disable comm
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

UXVvdGluZyBGZXJuYW5kbyBQYWNoZWNvICgyMDE5LTA4LTI5IDE4OjQxOjUzKQo+IER1cmluZyBu
b3JtYWwgZHJpdmVyIHVubG9hZCB3ZSBhdHRlbXB0IHRvIGRpc2FibGUgR3VDIGNvbW11bmljYXRp
b24KPiB3aGlsZSBpdCBpcyBjdXJyZW50bHkgc3RvcHBlZC4gVGhpcyByZXN1bHRzIGluIGEgbm9w
J2QgY2FsbCB0bwo+IGludGVsX2d1Y19jdF9kaXNhYmxlIHdpdGhpbiBndWNfZGlzYWJsZV9jb21t
dW5pY2F0aW9uIGJlY2F1c2UKPiBzdG9wL2Rpc2FibGUgcmVseSBvbiB0aGUgc2FtZSBmbGFnIHRv
IHByZXZlbnQgZnVydGhlciBjb21tcyB3aXRoIENULgo+IAo+IFdlIGNhbiBhdm9pZCB0aGUgY2Fs
bCB0byBkaXNhYmxlIGFuZCBzdGlsbCBsZWF2ZSBjb21tdW5pY2F0aW9uIGluIGEKPiBzYXRpc2Zh
Y3Rvcnkgc3RhdGUgYnkgZXh0cmFjdGluZyBhIHNldCBvZiBzaGFyZWQgc3RlcHMgZnJvbSBzdG9w
L2Rpc2FibGUuCj4gVGhpcyBzZXQgY2FuIGluY2x1ZGUgZ3VjX2Rpc2FibGVfaW50ZXJydXB0cyBh
cyB3ZSBkbyBub3QgcmVxdWlyZSB0aGUKPiBzaW5nbGUgY2FsbGVyIG9mIGd1Y19zdG9wX2NvbW11
bmljYXRpb24gdG8gYmUgYXRvbWljOgo+ICJkcm0vaTkxNS9zZWxmdGVzdHM6IEZpeHVwIGF0b21p
YyByZXNldCBjaGVja2luZyIuCj4gCj4gVGhpcyBzaXR1YXRpb24gKHN0b3AgLT4gZGlzYWJsZSkg
b25seSBvY2N1cnMgZHVyaW5nIGludGVsX3VjX2ZpbmlfaHcsCj4gc28gZHVyaW5nIGZpbmksIGNh
bGwgZ3VjX2Rpc2FibGVfY29tbXVuaWNhdGlvbiBvbmx5IGlmIGN1cnJlbnRseSBlbmFibGVkLgo+
IFRoZSBzeW1tZXRyaWMgY2FsbHMgdG8gZW5hYmxlL2Rpc2FibGUgcmVtYWluIHVubW9kaWZpZWQg
Zm9yIGFsbCBvdGhlcgo+IHNjZW5hcmlvcy4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTQzCj4gU2lnbmVkLW9mZi1ieTogRmVy
bmFuZG8gUGFjaGVjbyA8ZmVybmFuZG8ucGFjaGVjb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KClRoYW5rcyBm
b3IgdGhlIGJ1Z2ZpeCBhbmQgcmV2aWV3LCBwdXNoZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
