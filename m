Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973E64858
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBB46E0E1;
	Wed, 10 Jul 2019 14:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02B66E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:29:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17200687-1500050 for multiple; Wed, 10 Jul 2019 15:28:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-7-chris@chris-wilson.co.uk>
 <87muhmq8g7.fsf@gaia.fi.intel.com>
In-Reply-To: <87muhmq8g7.fsf@gaia.fi.intel.com>
Message-ID: <156276893621.4055.4215367273715686623@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 15:28:56 +0100
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915/gtt: Convert vm->scratch
 into an array
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE1OjE4OjMyKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiAtICAgICBpZiAoaTkxNV92
bV9pc180bHZsKHZtKSkgewo+ID4gLSAgICAgICAgICAgICBpZiAodW5saWtlbHkoc2V0dXBfcGFn
ZV9kbWEodm0sICZ2bS0+c2NyYXRjaF9wZHApKSkgewo+ID4gLSAgICAgICAgICAgICAgICAgICAg
IHJldCA9IC1FTk9NRU07Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgZ290byBmcmVlX3BkOwo+
ID4gLSAgICAgICAgICAgICB9Cj4gPiAtICAgICAgICAgICAgIGZpbGxfcGFnZV9kbWEoJnZtLT5z
Y3JhdGNoX3BkcCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICBnZW44X3BkZV9lbmNv
ZGUodm0tPnNjcmF0Y2hfcGRwLmRhZGRyLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBJOTE1X0NBQ0hFX0xMQykpOwo+ID4gKyAgICAgICAgICAgICBmaWxs
X3B4KCZ2bS0+c2NyYXRjaFtpXSwgdm0tPnNjcmF0Y2hbaSAtIDFdLmVuY29kZSk7Cj4gPiArICAg
ICAgICAgICAgIHZtLT5zY3JhdGNoW2ldLmVuY29kZSA9Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgZ2VuOF9wZGVfZW5jb2RlKHB4X2RtYSgmdm0tPnNjcmF0Y2hbaV0pLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X0NBQ0hFX0xMQyk7Cj4gCj4gT2suIFRo
ZSBuZXcgY29kZSBtYWtlcyBwZXJmZWN0IHNlbnNlIGhlcmUuCj4gCj4gQW5kIHdpdGggaXQgY29u
ZnVzaW9uIGFyaXNlczogaG93IGRpZCB3ZSBtYW5hZ2UKPiB0byBnZXQgdGhlIG9sZCBjb2RlIHdv
cmsgd2l0aCBwZHAgZW5jb2RpbmcgcG9pbnRpbmcgdG8gaXRzZWxmPwoKV2hhdCB0aGUuLi4uIFlv
dSdyZSByaWdodC4gVGhhdCBtdXN0IGhhdmUgY2F1c2VkIHNvbWUgZnVua3kgR1BVIGhhbmdzIGlm
CnBlb3BsZSB0cmllZCB0byBhY2Nlc3Mgc29tZXRoaW5nIGZhciBvdXRzaWRlIG9mIHRoZWlyIHNl
dC4KCkhtbSwgeW91IGtub3cgdGhhdCdzIGV4YWN0bHkgd2hhdCBsaXZlX2NvbnRleHRzL3ZtX2lz
b2xhdGlvbiB0cmllcy4gV2VsbAppdCB0cmllcyB0byB3cml0ZSBpbnRvIHJhbmRvbSBpbnZhbGlk
IGFkZHJlc3NlcyBhbmQgc2VlIGlmIHRoZSB3cml0ZXMKYWZmZWN0IHNjcmF0Y2ggb2YgYW5vdGhl
ciBjb250ZXh0LiBEaWQgSSBjaG9vc2UgcmFuZG9tbHkgY2FyZWZ1bGx5CmVub3VnaD8gSG1tLiBv
ZmZzZXQgJj0gLXNpemVvZih1MzIpOyBJcyB0aGVyZSBhIGRhbmdlciB0aGVyZSB0aGF0J3Mgb25s
eQp1MzIgYW5kIG5vdCB1NjQuIE1heWJlLiBCdXQgb3RoZXJ3aXNlIGl0IGxvb2tzIGxpa2UgaXQg
c2hvdWxkIGJlIHBpY2tpbmcKYSBwcm5nIG92ZXIgdGhlIHdob2xlIHZtLT50b3RhbCBhbmQgc28g
c2hvdWxkIGJlIHRyaXBwaW5nIG92ZXIgdGhlCnJlY3Vyc2lvbiA6fAotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
