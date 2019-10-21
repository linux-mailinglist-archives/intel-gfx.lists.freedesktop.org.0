Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D46DE909
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 12:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726F589DEA;
	Mon, 21 Oct 2019 10:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B13C89DEA
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 10:11:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 03:11:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="372132582"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.113.28])
 ([10.66.113.28])
 by orsmga005.jf.intel.com with ESMTP; 21 Oct 2019 03:11:05 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
 <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
 <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
 <dc529fe2-e3a8-6076-e8c7-a1c5bae40a63@linux.intel.com>
 <3bad55f1-d661-0f68-dab8-2879952f87e4@intel.com>
 <55b39daa-fae6-cb1d-0280-9677c57fd242@linux.intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <998ad164-4eac-e5a9-50e9-99632d238c81@intel.com>
Date: Mon, 21 Oct 2019 15:41:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <55b39daa-fae6-cb1d-0280-9677c57fd242@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 02/15] drm/i915/dsb: DSB context creation.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8xNy8yMDE5IDg6MDggUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Cj4gT24gMTcv
MTAvMjAxOSAxNDo1MywgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4gT24gMTAvMTcvMjAxOSA2OjM5
IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+IE9uIDE3LzEwLzIwMTkgMTM6NTIsIEFuaW1l
c2ggTWFubmEgd3JvdGU6Cj4+Pj4gT24gMTAvMTcvMjAxOSAyOjA1IFBNLCBUdnJ0a28gVXJzdWxp
biB3cm90ZToKPj4+Pj4gT24gMjIvMDgvMjAxOSAxMzowOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+
Pj4+Pj4gUXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIyIDEzOjA1OjA2KQo+Pj4+Pj4+
IEhpLAo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiA4LzIxLzIwMTkgMTE6NDEgUE0sIENocmlz
IFdpbHNvbiB3cm90ZToKPj4+Pj4+Pj4gUXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIx
IDA3OjMyOjIyKQo+Pj4+Pj4+Pj4gKyAgICAgICB2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9w
aW4ob2JqLCBOVUxMLCAwLCAwLCAKPj4+Pj4+Pj4+IFBJTl9NQVBQQUJMRSk7Cj4+Pj4+Pj4+IE9u
bHkgdGhpcyAoY3VycmVudGx5KSBzdGlsbCByZXF1aXJlcyBzdHJ1Y3RfbXV0ZXgKPj4+Pj4+Pgo+
Pj4+Pj4+IFN1cmUgd2lsbCBhZGQuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IERvZXMgaXQgaGF2ZSB0byBt
YXBwYWJsZT8gSXMgdGhhdCB0aGUgSFcgY29uc3RyYWludD8KPj4+Pj4+Pgo+Pj4+Pj4+IFllcywg
YXMgcGVyIEhXIGRlc2lnbiBuZWVkIGEgY3B1IG1hcHBlZCBidWZmZXIgdG8gd3JpdGUgCj4+Pj4+
Pj4gb3Bjb2RlK2RhdGEgZnJvbQo+Pj4+Pj4+IGRyaXZlci4KPj4+Pj4+Cj4+Pj4+PiBQSU5fTUFQ
UEFCTEUgcmVmZXJzIHRvIHRoZSBpb21lbSBhcGVydHVyZSBwb3J0aW9uIG9mIHRoZSBHbG9iYWwg
Cj4+Pj4+PiBHVFQgKGkuZS4KPj4+Pj4+IHRoZSBsb3cgNjQtNTEyTWlCKS4gWW91IG5ldmVyIHVz
ZSBhIEdHVFQgbW1hcCBmb3IgeW91ciBDUFUgCj4+Pj4+PiBhY2Nlc3MsIHNvIHRoZQo+Pj4+Pj4g
cGxhY2VtZW50IHNob3VsZCBiZSBlbnRpcmVseSBkaWN0YXRlZCBieSB0aGUgRFNCIHJlcXVpcmVt
ZW50cy4gSWYgCj4+Pj4+PiB5b3UKPj4+Pj4+IGRvbid0IG5lZWQgdG8gYmUgaW4gdGhlIGxvdyBy
ZWdpb24sIGRvbid0IGZvcmNlIGl0IHRvIGJlLCBzbyB3ZSBoYXZlCj4+Pj4+PiBsZXNzIGNvbmdl
c3Rpb24gZm9yIHRoZSBvYmplY3RzIHRoYXQgaGF2ZSB0byBiZSBwbGFjZWQgaW4gdGhhdCAKPj4+
Pj4+IHJlZ2lvbi4KPj4+Pj4KPj4+Pj4gSSB3YXMgZG9pbmcgYSBtaW5pIGF1ZGl0IG9mIHdoYXQg
dXNlcyB0aGUgYXBlcnR1cmUgdGhlc2UgZGF5cyBhbmQgCj4+Pj4+IG5vdGljZWQgdGhpcyBjb2Rl
IGhhcyBiZWVuIG1lcmdlZCBpbiB0aGUgbWVhbnRpbWUsIGJ1dCBBRkFJQ1MgdGhpcyAKPj4+Pj4g
cXVlc3Rpb24gZnJvbSBDaHJpcyBoYXNuJ3QgYmVlbiBhbnN3ZXJlZD8gQXQgbGVhc3Qgbm90IG9u
IHRoZSAKPj4+Pj4gbWFpbGluZyBsaXN0LiBTbyBkb2VzIGl0IG5lZWQgdG8gYmUgaW4gdGhlIGFw
ZXJ0dXJlIHJlZ2lvbiBvciBub3Q/Cj4+Pj4KPj4+PiBIaSwKPj4+Pgo+Pj4+IEJhc2VkIG9uIHJl
Y29tbWVuZGF0aW9uIGZyb20gSC93IHRlYW0gdXNlZCBQSU5fTUFQUEFCTEUsIG5vdCB2ZXJ5IAo+
Pj4+IHN1cmUgYWJvdXQgaW50ZXJuYWwgZGV0YWlscy4KPj4+Cj4+PiBXaGF0IGRpZCB0aGUgcmVj
b21tZW5kYXRpb24gZXhhY3RseSBzYXk/IFRoYXQgaXQgaGFzIHRvIGJlIGluIEdHVFQgCj4+PiBv
ciBhcGVydHVyZT8KPj4KPj4gSXQgc2FpZDoKPj4gIkdNTSB0byBhbGxvY2F0ZSBidWZmZXIgZnJv
bSBnbG9iYWwgR1RULCBnZXQgQ1BVIG1hcHBlZCBhZGRyZXNzIGFzIAo+PiB3ZWxsIChub3Qgc3Rv
bGVuIG1lbW9yeSkgLi4uICIuCj4KPiBTbyBpdCdzIHBvc3NpYmxlIHlvdSBkb24ndCBuZWVkIFBJ
Tl9NQVBQQUJMRS4KCkFzIHBlciBJIHJlbWVtYmVyIGZyb20gaW5pdGlhbCBkaXNjdXNzaW9uIGZy
b20gaC93IHRlYW0gRFNCIGlzIG5vdCBjYWNoZSAKY29oZXJlbnQuIER1ZSB0byB0aGF0IHdlIGhh
dmUgdXNlZCBJOTE1X01BUF9XQyBkdXJpbmcgbWFwcGluZyB0aGUgYnVmZmVyIAphbmQgd2FudCB0
byBrZWVwIHRoZSBidWZmZXIgaW4gYXBlcnR1cmUgcmVnaW9uLgpDb3VsZCBub3QgZmluZCB0aGUg
ZGlzY3Vzc2lvbiB0aHJlYWQgYXMgaXQgd2FzIHF1aWV0IG9sZCBsaWtlIGFyb3VuZCAKaW5pdGlh
bCBlbmFibGVtZW50IG9mIERTQiBmZWF0dXJlLgoKPgo+Cj4gRG8gd2UgaGF2ZSBzb21lIHRlc3Qg
Y292ZXJhZ2UgZm9yIHRoaXM/IEluIG90aGVyIHdvcmRzIGlmIEkgc2VuZCBhIAo+IHBhdGNoIHdo
aWNoIHJlbW92ZXMgaXQsIHdpbGwgd2Uga25vdyBpZiB0aGUgZmVhdHVyZSBpcyBoZWFsdGh5PwoK
R2FtbWEgbHV0IHByb2dyYW1taW5nIGlzIGVuYWJsZWQgdGhyb3VnaCBEU0IuIGttc19jb2xvciBp
Z3QgaXMgaGF2aW5nIAp0aGUgY292ZXJhZ2UgZm9yIHRoaXMuCgpOb3Qgc3VyZSBjYWNoZSBjb2hl
cmVuY2UgaXNzdWUgaXMgZWFzaWx5IHJlcHJvZHVjaWJsZSBvciBub3QsIHdpbGwgZ28gCndpdGgg
ZXhwZXJ0J3Mgb3Bpbmlvbi4KClJlZ2FyZHMsCkFuaW1lc2gKCj4KPiBSZWdhcmRzLAo+Cj4gVHZy
dGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
