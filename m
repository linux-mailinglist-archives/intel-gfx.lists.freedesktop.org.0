Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE9DB990C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 23:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F9C6E0D6;
	Fri, 20 Sep 2019 21:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B606E0D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 21:29:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18564547-1500050 for multiple; Fri, 20 Sep 2019 22:29:34 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
References: <20190918173121.183132-1-stuart.summers@intel.com>
 <9b3a76d3-f961-95d3-7396-8b638a1cc935@linux.intel.com>
 <794c7d3a4b88d6ff53dc186b342da99575510f86.camel@intel.com>
In-Reply-To: <794c7d3a4b88d6ff53dc186b342da99575510f86.camel@intel.com>
Message-ID: <156901497277.11001.11723215496577918349@skylake-alporthouse-com>
Date: Fri, 20 Sep 2019 22:29:32 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow set context SSEU on
 platforms after gen 11
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

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMDktMjAgMjI6MDk6NDYpCj4gT24gVGh1LCAy
MDE5LTA5LTE5IGF0IDA4OjAwICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+IE9uIDE4
LzA5LzIwMTkgMTg6MzEsIFN0dWFydCBTdW1tZXJzIHdyb3RlOgo+ID4gPiBCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNTU5Cj4gPiAKPiA+
IFVubGVzcyB0aGVyZSB3YXMgc29tZSBkaXNjdXNzaW9uIEkgbWlzc2VkIHdlIGNhbid0IGp1c3Qg
dHVybiBpdCBvbgo+ID4gdG8gCj4gPiB3b3JrIGFyb3VuZCBhIFNLSVAgaW4gSUdULiBGZWF0dXJl
IHdhcyBkZWxpYmVyYXRlbHkgbGltaXRlZCB0bwo+ID4gSWNlbGFrZSAKPiA+IGFuZCBldmVuIHRo
ZXJlIGp1c3QgdG8gYSBzdWItc2V0IG9mIHBvc3NpYmxlIGNvbmZpZ3VyYXRpb25zLgo+IAo+IE5v
IGNvbnZlcnNhdGlvbiB3YXMgbWlzc2VkLCBvciBhdCBsZWFzdCBub25lIEkgd2FzIGEgcGFydCBv
Zi4gSXMgdGhlcmUKPiBhIHJlYXNvbiB3ZSBkb24ndCBhbGxvdyB0aGlzIG9uIGZ1dHVyZSBwbGF0
Zm9ybXM/Cj4gCj4gV2UgZG8gY2xhaW0gcG93ZXJnYXRlIHN1cHBvcnQgb24gVEdMLCBzbyBJIGFz
c3VtZWQgaXQgd291bGQgYmUgZ29vZCB0bwo+IHRha2UgdGhpcyBwYXRoIG9uIHRoYXQgcGxhdGZv
cm0uIE1heWJlIEknbSBtaXN1bmRlcnN0YW5kaW5nIHNvbWV0aGluZwo+IGhlcmUgdGhvdWdoLgoK
VGhlIGN1cnJlbnQgaW50ZXJmYWNlIGlzIHB1cmVseSB0byB3b3JrIGFyb3VuZCBhIHNpbGljb24g
aXNzdWUgb24gaWNsLgpJdCB3YXMgbm90IGRldmVsb3BlZCBpbnRvIGEgZnVsbHkgcmVjb25maWd1
cmFibGUgc3NldSBpbnRlcmZhY2UgbW9zdGx5CmR1ZSB0byBhIGxhY2sgb2YgZGVtb25zdHJhYmxl
IG5lZWQgYW5kIGEgbGFjayBvZiBhcHByZWNpYXRpb24gb2YgdGhlCnRyYWRlb2ZmcyBiZXR3ZWVu
IGRpZmZlcmVudCBzeXN0ZW0gdXNlcnMgKGFsb25nIHdpdGggdGhlIGNsYWltIHRoYXQgdGhpcwpp
cyBhbGwgbWVhbnQgdG8gYmUgaGFuZGxlZCBieSBpbnN0cnVjdGlvbnMgaW4gdGhlIGNvbW1hbmQg
c3RyZWFtLi4uKS4KQW5vdGhlciB0ZWFtIGRpZCB0cnkgdG8gYXV0b2FkanVzdCBzc2V1IGJ1dCBh
bHNvIGRpZCBub3QgcHJvZHVjZSB0aGUKcmF0aW9uYWxlIG5vciBhdHRlbXB0IHRvIGludGVncmF0
ZSB3aXRoIHRoZSBleGlzdGluZyBjb2RlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
