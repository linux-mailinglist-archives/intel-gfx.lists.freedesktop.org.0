Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA84B14D8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 21:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BD56EDB5;
	Thu, 12 Sep 2019 19:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CEB6EDB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 19:43:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18469056-1500050 for multiple; Thu, 12 Sep 2019 20:43:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190912131800.12420-1-chris@chris-wilson.co.uk>
 <20190912132313.12751-1-chris@chris-wilson.co.uk>
 <750e1ffd-5c96-56fe-bd5e-72824f019680@intel.com>
In-Reply-To: <750e1ffd-5c96-56fe-bd5e-72824f019680@intel.com>
Message-ID: <156831739938.4926.12240921953207061133@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 20:43:19 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Disable preemption while
 being debugged
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTEyIDE5OjQ1OjI3KQo+IAo+
IAo+IE9uIDkvMTIvMTkgNjoyMyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gV2Ugc2VlIGZh
aWx1cmVzIHdoZXJlIHRoZSBjb250ZXh0IGNvbnRpbnVlcyBleGVjdXRpbmcgcGFzdCBhCj4gPiBw
cmVlbXB0aW9uIGV2ZW50LCBldmVudHVhbGx5IGxlYWRpbmcgdG8gc2l0dWF0aW9ucyB3aGVyZSBh
IHJlcXVlc3QgaGFzCj4gPiBleGVjdXRlZCBiZWZvcmUgd2UgaGF2ZSBldmVudCBzdWJtaXR0ZWQg
aXQgdG8gSFchIEl0IHNlZW1zIGxpa2UgdGdsIGlzCj4gCj4gQUZBSUsgb24gVEdMIHRoZSBDUyBj
YW4gZGV0ZWN0IHRhaWwgdXBkYXRlcyBpbiB0aGUgaW1hZ2Ugb2YgYSBydW5uaW5nIAo+IGNvbnRl
eHQgZXZlbiBpZiB0aGUgbHJjIGhhc24ndCBiZWVuIHJlc3VibWl0dGVkIHZpYSB0aGUgZWxzcC4g
Q291bGQgdGhhdCAKPiBiZSByZWxhdGVkIHRvIHRoZSBlYXJseSBleGVjdXRpb24gb2YgcmVxdWVz
dHM/IEkgaGF2ZW4ndCBsb29rZWQgYXQgdGhlIAo+IGZhaWx1cmUgbG9ncywgc28gZm9yZ2l2ZSBt
ZSBpZiBJJ20gY29tcGxldGVseSBvZmYtbWFyayA6KQoKV2Ugb25seSB1cGRhdGUgdGhlIENUWF9S
SU5HX1RBSUwganVzdCBwcmlvciB0byBbcmVdc3VibWl0dGluZyB0aGUKY29udGV4dC4gQnV0IGZ1
biBhbmQgZ2FtZXMgZW5zdWUgYXJvdW5kIHByZWVtcHRpb24gd2hlcmUgd2Ugb2Z0ZW4gaGF2ZQp0
byByZXdpbmQgdGhlIFJJTkdfVEFJTC4gU3RpbGwgd2Ugc2hvdWxkIG5ldmVyIHB1c2ggaXQgYmVo
aW5kClJJTkdfSEVBRCAoc28gbG9uZyBhcyBvdXIgc2VtYXBob3JlIGlzIHNvbGlkKSwgc28gaXQg
c2hvdWxkIG5ldmVyIGJlCmFibGUgdG8gZ28gcGFzdCBhbnkgb2YgdGhlIHByZXZpb3VzIFJJTkdf
VEFJTCB1cGRhdGVzIHdlIG1hZGUuCgpBdCB0aGUgbW9tZW50LCBJJ20ganVzdCBmb2N1c2luZyBv
biB0cmltbWluZyBiYWNrIHRoZSBmZWF0dXJlcyB1bnRpbCB3ZQpoYXZlIGEgc29saWQgcGxhdGZv
cm0gYW5kIHRoZW4gd2Ugd2lsbCBiZSBiZXR0ZXIgcGxhY2UgdG8gYmUgYWJsZSB0byBsb29rCmF0
IHdoYXQgaXMgZ29pbmcgd3JvbmcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
