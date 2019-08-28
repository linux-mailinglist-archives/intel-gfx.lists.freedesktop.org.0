Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF7BA02AD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 15:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0C089A1A;
	Wed, 28 Aug 2019 13:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A267789A1A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 13:09:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18291133-1500050 for multiple; Wed, 28 Aug 2019 14:09:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190827120615.31390-1-chris@chris-wilson.co.uk>
 <877e6xxxn0.fsf@gaia.fi.intel.com>
In-Reply-To: <877e6xxxn0.fsf@gaia.fi.intel.com>
Message-ID: <156699776337.15406.14120621243868929918@skylake-alporthouse-com>
Date: Wed, 28 Aug 2019 14:09:23 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Flush the post-sync
 breadcrumb write harder
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTI4IDEzOjQ5OjU1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdWl0ZSByYXJlbHkg
d2Ugc2VlIHRoYXQgdGhlIENTIGNvbXBsZXRpb24gZXZlbnQgZmlyZXMgYmVmb3JlIHRoZQo+ID4g
YnJlYWRjcnVtYiBpcyBjb2hlcmVudCwgd2hpY2ggcHJlc3VtYWJseSBpcyBhIHJlc3VsdCBvZiB0
aGUgQ1NfU1RBTEwgbm90Cj4gPiB3YWl0aW5nIGZvciB0aGUgcG9zdC1zeW5jIG9wZXJhdGlvbi4g
VHJ5IGZvbGxvd2luZyBpbiBhIERDX0ZMVVNIIGludG8KPiA+IHRoZSBmb2xsb3dpbmcgcGlwZWNv
bnRyb2wgdG8gc2VlIGlmIHRoYXQgbWFrZXMgYW55IGRpZmZlcmVuY2UuCj4gPgo+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQWNrZWQt
Ynk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKWXVwLCB0
aGVyZSdzIG9ubHkgd2F5IHRvIGZpbmQgb3V0IGlmIHRoaXMgaGVscHMuLi4gVGEsCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
