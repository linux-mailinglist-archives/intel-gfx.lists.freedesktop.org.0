Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC5D10CDBA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 18:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712D86E86A;
	Thu, 28 Nov 2019 17:23:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0914B6E86A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 17:23:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 09:23:47 -0800
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203486953"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 28 Nov 2019 09:23:46 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191128161051.12753-1-tvrtko.ursulin@linux.intel.com>
 <157495798936.8489.15571641017234842307@skylake-alporthouse-com>
 <157495816250.8489.12919668392873215641@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <77cde594-5681-7c4a-5fdb-d21f18ca8fc1@linux.intel.com>
Date: Thu, 28 Nov 2019 17:23:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157495816250.8489.12919668392873215641@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Report frequency as zero
 while GPU is sleeping
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI4LzExLzIwMTkgMTY6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMS0yOCAxNjoxOTo0OSkKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0xMS0yOCAxNjoxMDo1MSkKPj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4+Pgo+Pj4gV2UgdXNlZCB0byByZXBvcnQgdGhlIG1pbmltdW0gcG9z
c2libGUgZnJlcXVlbmN5IGFzIGJvdGggcmVxdWVzdGVkIGFuZAo+Pj4gYWN0aXZlIHdoaWxlIEdQ
VSB3YXMgaW4gc2xlZXAgc3RhdGUuIFRoaXMgd2FzIGEgY29uc2VxdWVuY2Ugb2Ygc2FtcGxpbmcK
Pj4+IHRoZSB2YWx1ZSBmcm9tIHRoZSAiY3VycmVudCBmcmVxdWVuY3kiIGZpZWxkIGluIG91ciBz
b2Z0d2FyZSB0cmFja2luZy4KPj4+Cj4+PiBUaGlzIHdhcyBzdHJpY3RseSBzcGVha2luZyB3cm9u
ZywgYnV0IGdpdmVuIHRoYXQgdW50aWwgcmVjZW50bHkgdGhlCj4+PiBjdXJyZW50IGZyZXF1ZW5j
eSBpbiBzbGVlcGluZyBzdGF0ZSB1c2VkIHRvIGJlIGVxdWFsIHRvIG1pbmltdW0sIGl0IGRpZAo+
Pj4gbm90IHN0YW5kIG91dCBzdWZmaWNpZW50bHkgdG8gYmUgbm90aWNlZCBhcyBzdWNoLgo+Pj4K
Pj4+IEFmdGVyIHNvbWUgcmVjZW50IGNoYW5nZXMgaGF2ZSBtYWRlIHRoZSBjdXJyZW50IGZyZXF1
ZW5jeSBiZSByZXBvcnRlZAo+Pj4gYXMgbGFzdCBhY3RpdmUgYmVmb3JlIEdQVSB3ZW50IHRvIHNs
ZWVwLCBtZWFuaW5nIGJvdGggcmVxdWVzdGVkIGFuZCBhY3RpdmUKPj4+IGZyZXF1ZW5jaWVzIGNv
dWxkIGVuZCB1cCBiZWluZyByZXBvcnRlZCBhdCB0aGVpciBtYXhpbXVtIHZhbHVlcyBmb3IgdGhl
Cj4+PiBkdXJhdGlvbiBvZiB0aGUgR1BVIGlkbGUgc3RhdGUsIGl0IGJlY2FtZSBtdWNoIG1vcmUg
b2J2aW91cyB0aGF0IHRoaXMgZG9lcwo+Pj4gbm90IG1ha2Ugc2Vuc2UuCj4+Pgo+Pj4gVG8gZml4
IHRoaXMgd2Ugd2lsbCBub3cgc2FtcGxlIHRoZSBmcmVxdWVuY3kgY291bnRlcnMgb25seSB3aGVu
IHRoZSBHUFUgaXMKPj4+IGF3YWtlLiBBcyBhIGNvbnNlcXVlbmNlIHJlcG9ydGVkIGZyZXF1ZW5j
aWVzIGNvdWxkIGJlIHJlcG9ydGVkIGFzIGJlbG93Cj4+PiB0aGUgR1BVIHJlcG9ydGVkIG1pbmlt
dW0gYnV0IHRoYXQgc2hvdWxkIGJlIG11Y2ggbGVzcyBjb25mdXNpbmcgdGhhdCB0aGUKPj4+IGN1
cnJlbnQgc2l0dWF0aW9uLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Cj4+IEhtbS4gMC8wIHdoaWxlIG9mZiwgdGhhdCB3
aWxsIGJlIGEgYml0IG9mIGEgc2hvY2suCj4gCj4gVGhlcmUgaXMgYSBjb25zaXN0ZW5jeSBxdWVz
dGlvbiBvZiB3aGV0aGVyIHdlIHNob3VsZCBkbyB0aGUgc2FtZSB0aHJvdWdoCj4gdGhlIFtzZWNv
bmQgY2xhc3MgO10gc3lzZnMvIGludGVyZmFjZS4KCkkgYW0gbm90IHN1cmUgY3VyX2ZyZXEgZXZl
biBiZWxvbmdzIGluIHN5c2ZzLiBCdXQgSUdUL2k5MTVfcG1fcnBzIHNlZW1zIAp0byBiZSBkZXBl
bmRpbmcgb24gdGhlIGN1cnJlbnQgc2VtYW50aWNzLgoKQWN0X2ZyZXEgb24gdGhlIG90aGVyIGhh
bmQgaXMgYWx3YXlzIHJlYWRpbmcgdGhlIGh3IHJlZ2lzdGVyLiBTbyBzaG91bGQgCnByb2JhYmx5
IHN0YXkgbGlrZSB0aGF0LiBTaW5jZSBpdCBpcyBpbiBzeXNmcyBzbyBBQkkuCgpXaGVyZSB0aGlz
IGxlYXZlcyB0aGUgUE1VIEkgZG9uJ3Qga25vdy4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
