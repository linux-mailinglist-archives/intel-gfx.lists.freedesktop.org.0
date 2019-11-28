Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8C710C6A0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 11:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF9A6E796;
	Thu, 28 Nov 2019 10:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE786E796
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 10:27:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 02:27:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203395012"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 28 Nov 2019 02:27:19 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
 <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
 <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
 <32482b18-5ed5-fa38-c029-0b5c0e357ca2@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <11a95aa9-43c9-03fd-f274-458f40341b92@linux.intel.com>
Date: Thu, 28 Nov 2019 10:27:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <32482b18-5ed5-fa38-c029-0b5c0e357ca2@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: vipin.anand@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzExLzIwMTkgMTM6MTYsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDI2LzEx
LzIwMTkgMTE6MzEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+PiBPbiAyNi8xMS8yMDE5IDExOjA5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTI2IDEwOjUxOjIyKQo+Pj4+IFlvdSBtZW50aW9uZWQgeW91IGRpZCBzb21lIGV4cGVyaW1lbnQg
d2hlcmUgeW91IGRpZCBzb21ldGhpbmcgb24gCj4+Pj4gY29udGV4dAo+Pj4+IHBpbm5pbmcgYW5k
IHRoYXQgaXQgZGlkIG5vdCB3b3JrIHNvIHdlbGwuIEkgZG9uJ3Qga25vdyB3aGF0IHRoYXQgd2Fz
Cj4+Pj4gdGhvdWdoLiBJIGRvbid0IHRoaW5rIHRoYXQgd2FzIGV2ZXIgcG9zdGVkPwo+Pj4+Cj4+
Pj4gV2hhdCBJIGFtIHRoaW5raW5nIGlzIHRoaXM6IFlvdSBkcm9wIHRoZSB0aW1lciBhbHRvZ2V0
aGVyLiBJbnN0ZWFkIGluCj4+Pj4gX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZSB5b3UgbG9v
ayBhdCB5b3VyIGdlbV9jb250ZXh0LT5yZXFfY250IGFuZAo+Pj4+IGltcGxlbWVudCB5b3VyIGxv
Z2ljIHRoZXJlLgo+Pj4KPj4+IEkgbm90aWNlZCB0aGUgc2FtZSBub24tc2VxdWl0dXIuIEV4Y2Vw
dCBJIHdvdWxkIHB1c2ggdGhhdCBlaXRoZXIgdGhlCj4+PiBlbnRpcmUgbWVhc3VyZW1lbnQgYW5k
IGhlbmNlIHBhdGNoIHNlcmllcyBpcyBib2d1cyAoYmV5b25kIHRoZSBwYXRjaGVzCj4+PiB0aGVt
c2VsdmVzIGJlaW5nIHRyaXZpYWxseSBicm9rZW4sIHRlc3RlZCBtdWNoPyksIG9yIHRoYXQgaXQg
cmVhbGx5Cj4+PiBzaG91bGQgYmUgZG9uZSBmcm9tIGEgdGltZXIgYW5kIGFsc28gYWRqdXN0IHBp
bm5lZCBjb250ZXh0cyBhbGEKPj4+IHJlY29uZmlndXJlX3NzZXUuCj4+Cj4+IFllYWgsIGlmIGRv
aW5nIGl0IGF0IHBpbiB0aW1lIHdvdWxkIG5vdCBzaG93IHRoZSBwb3dlciBiZW5lZml0IHRoYXQg
Cj4+IHdvdWxkIG1lYW4gbG9va2luZyBhdCByZXFfY250IGF0IHBpbiB0aW1lIGRvZXMgbm90IHdv
cmssIHdoaWxlIGxvb2tpbmcgCj4+IGF0IGl0IGhhbGYgYSB0aW1lciBwZXJpb2QgYWdvLCBvbiBh
dmVyYWdlLCB3b3Jrcy4gV2hpY2ggd291bGQgYmUgdmVyeSAKPj4gaW50cmlndWluZy4gV2UnZCBw
cm9iYWJseSB3YW50IG5pY2UgZ3JhcGhzIGluIHRoaXMgY2FzZSBvdmVybGF5aW5nIAo+PiBwb3dl
ciwgcmVxdWVzdCBjb3VudHMsIHNlbGVjdGVkIEVVIGNvbmZpZywgZXRjLgo+IAo+IEFub3RoZXIg
dGhpbmcgdG8gdHJ5LCBpZiBzaW1wbGUgYnVja2V0aW5nIG9mIHJlcV9jbnQgdG8gbG9hZCBsZXZl
bCBhdCAKPiBwaW4gdGltZSB3aWxsIG5vdCB3b3JrLCBjb3VsZCBiZSBhIHRpbWUtd2VpZ2h0ZWQg
bW92aW5nIGF2ZXJhZ2Ugb2YgdGhlIAo+IHNhbWUgY291bnQsIGJ1dCBhbHNvIGRyaXZlbiBmcm9t
IGNvbnRleHQgcGlubmluZy4KCllldCBhbm90aGVyIGludGVyZXN0aW5nIGV4cGVyaW1lbnQgd291
bGQgYmUgdG8gdHJ5IGNvbnRleHQgYnVzeW5lc3MgCmluc3RlYWQgb2YgcmVxdWVzdCBjb3VudHMu
IENydWRlbHksIGxvb2sgYXQgY29udGV4dCdzIEdQVSBidXN5IHRpbWUgKEkgCmhhdmUgcGF0Y2hl
cyBmb3IgdGhpcykgcGVyIGV2YWx1YXRpb24gcGVyaW9kIGFuZCBjb25maWd1cmUgYWNjb3JkaW5n
bHkuCgpUaGlzIHNob3VsZCBiZSBhYmxlIHRvIHRyYWNrIGJldHRlciBpbiB0aGVvcnkgSSB0aGlu
aywgYnV0IHByb2JhYmx5IGhhcyAKaXQncyBvd24gcHJvYmxlbXMuIEhhcmQgdG8gc2F5IHdpdGhv
dXQgdHJ5aW5nIGFuZCBjb21wYXJpbmcuCgpJbXBsZW1lbnRhdGlvbiB3aXNlLCBhIGt0aHJlYWQg
cGVyaW9kaWNhbGx5IHJlY29uZmlndXJpbmcgY29udGV4dHMgd291bGQgCndvcmsgSSB0aGluay4g
TGlrZToKCmV2ZXJ5IHNlY29uZAogICBwZXIgY29udGV4dAogICAgIHF1ZXJ5IGNvbnRleHQgZW5n
aW5lIGJ1c3luZXNzCiAgICAgICBjYWxjdWxhdGUgcmVsYXRpdmUgYnVzeW5lc3MKICAgICAgICAg
cmUtY29uZmlndXJlIHNzZXUKCQkKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
