Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4605B106A0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 11:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BD489309;
	Wed,  1 May 2019 09:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4984F892CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 09:51:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16414232-1500050 for multiple; Wed, 01 May 2019 10:50:57 +0100
MIME-Version: 1.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190429170824.GI20006@intel.com>
References: <20190412065147.25144-1-chris@chris-wilson.co.uk>
 <20190429170824.GI20006@intel.com>
Message-ID: <155670425599.1726.13846179585536263512@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 01 May 2019 10:50:56 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Introduce struct class_instance
 for engines across the uAPI
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMDQtMjkgMTg6MDg6MjQpCj4gT24gRnJpLCBBcHIg
MTIsIDIwMTkgYXQgMDc6NTE6NDdBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gU1NF
VSByZXByb2dyYW1taW5nIG9mIHRoZSBjb250ZXh0IGludHJvZHVjZWQgdGhlIG5vdGlvbiBvZiBl
bmdpbmUgY2xhc3MKPiA+IGFuZCBpbnN0YW5jZSBmb3IgYSBmb3J3YXJkcyBjb21wYXRpYmxlIG1l
dGhvZCBvZiBkZXNjcmliaW5nIGFueSBlbmdpbmUKPiA+IGJleW9uZCB0aGUgb2xkIGV4ZWNidWYg
aW50ZXJmYWNlLiBXZSB3aXNoIHRvIGFkb3B0IHRoaXMgY2xhc3M6aW5zdGFuY2UKPiA+IGRlc2Ny
aXB0aW9uIGZvciBtb3JlIGludGVyZmFjZXMsIHNvIHB1bGwgaXQgb3V0IGludG8gYSBzZXBhcmF0
ZSB0eXBlIGZvcgo+ID4gdXNlcnNwYWNlIGNvbnZlbmllbmNlLgo+ID4gCj4gPiBSZWZlcmVuY2Vz
OiBlNDZjMmU5OWY2MDAgKCJkcm0vaTkxNTogRXhwb3NlIFJQQ1MgKFNTRVUpIGNvbmZpZ3VyYXRp
b24gdG8gdXNlcnNwYWNlIChHZW4xMSBvbmx5KSIpCj4gCj4gSSdtIGEgYml0IGNvbmZ1c2VkIGhl
cmUgaG93L3doeSB0aGlzIFJlZmVyZW5jZXMgYmVjb21lIGEgRml4ZXMuCgpJdCdzIHJlcXVpcmVk
IHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSBrZXJuZWwgd2FzIG5vdCByZWxlYXNlZCB3aXRoCmluY29t
cGF0aWJsZSBBQkkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
