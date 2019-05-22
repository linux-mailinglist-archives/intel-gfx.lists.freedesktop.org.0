Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA6D270A1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 22:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD7D89BF1;
	Wed, 22 May 2019 20:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616BA89BF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 20:13:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646332-1500050 for multiple; Wed, 22 May 2019 21:13:45 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522190057.848-3-michal.wajdeczko@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
 <20190522190057.848-3-michal.wajdeczko@intel.com>
Message-ID: <155855602378.28319.14504255049114851811@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 21:13:43 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/huc: Check HuC firmware status
 only once
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjAwOjU2KQo+IER1cmluZyBk
cml2ZXIgbG9hZCB3ZSBjaGVja2VkIHRoYXQgSHVDIGZpcm13YXJlIHdhcyB2ZXJpZmllZCwgYW5k
IG9uY2UKPiB2ZXJpZmllZCBpdCBzdGF5cyB2ZXJpZmllZCwgc28gdGhlcmUgaXMgbm8gbmVlZCB0
byBjaGVjayB0aGF0IGFnYWluLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28g
PG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBDYzogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+CgpNYWtl
cyBzZW5zZSB0byBtZSBhcyBwdXJlbHkgYSBjb2RlIG1vbmtleS4KClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkkgd291bGQgbGlrZSBhIHNlY29u
ZCBvcGluaW9uIGZyb20gc29tZW9uZSB3aG8ga25vd3MgdGhlIGlubmFyZHMgb2YgdGhlCkh1QyB0
byBjb25maXJtIHRoYXQgaW5kZWVkIG9uY2UgdmVyaWZpZWQsIGl0IHJlbWFpbnMgdmVyaWZpZWQu
IEFuZCBpZiBpdApjYW4gY2hhbmdlLCB3ZSBuZWVkIHRvIHJlcG9ydCB0aGUgY2hhbmdlIGluIHN0
YXR1cyB0byB1c2Vyc3BhY2UgKG9yIHRoZXkKanVzdCBoYW5nIGFuZCB0aGUgZ3B1ICsgaHVjIGdl
dHMgcmVzZXQpLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
