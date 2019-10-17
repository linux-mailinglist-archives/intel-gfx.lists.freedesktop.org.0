Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D969DAD67
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 14:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608E66E491;
	Thu, 17 Oct 2019 12:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79476E491
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 12:52:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 05:52:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="279868006"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.113.28])
 ([10.66.113.28])
 by orsmga001.jf.intel.com with ESMTP; 17 Oct 2019 05:52:46 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
 <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
Date: Thu, 17 Oct 2019 18:22:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
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

CgpPbiAxMC8xNy8yMDE5IDI6MDUgUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Cj4gT24gMjIv
MDgvMjAxOSAxMzowOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIEFuaW1lc2ggTWFu
bmEgKDIwMTktMDgtMjIgMTM6MDU6MDYpCj4+PiBIaSwKPj4+Cj4+Pgo+Pj4gT24gOC8yMS8yMDE5
IDExOjQxIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+Pj4gUXVvdGluZyBBbmltZXNoIE1hbm5h
ICgyMDE5LTA4LTIxIDA3OjMyOjIyKQo+Pj4+PiArICAgICAgIHZtYSA9IGk5MTVfZ2VtX29iamVj
dF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIAo+Pj4+PiBQSU5fTUFQUEFCTEUpOwo+Pj4+IE9u
bHkgdGhpcyAoY3VycmVudGx5KSBzdGlsbCByZXF1aXJlcyBzdHJ1Y3RfbXV0ZXgKPj4+Cj4+PiBT
dXJlIHdpbGwgYWRkLgo+Pj4+Cj4+Pj4gRG9lcyBpdCBoYXZlIHRvIG1hcHBhYmxlPyBJcyB0aGF0
IHRoZSBIVyBjb25zdHJhaW50Pwo+Pj4KPj4+IFllcywgYXMgcGVyIEhXIGRlc2lnbiBuZWVkIGEg
Y3B1IG1hcHBlZCBidWZmZXIgdG8gd3JpdGUgb3Bjb2RlK2RhdGEgCj4+PiBmcm9tCj4+PiBkcml2
ZXIuCj4+Cj4+IFBJTl9NQVBQQUJMRSByZWZlcnMgdG8gdGhlIGlvbWVtIGFwZXJ0dXJlIHBvcnRp
b24gb2YgdGhlIEdsb2JhbCBHVFQgCj4+IChpLmUuCj4+IHRoZSBsb3cgNjQtNTEyTWlCKS4gWW91
IG5ldmVyIHVzZSBhIEdHVFQgbW1hcCBmb3IgeW91ciBDUFUgYWNjZXNzLCBzbyAKPj4gdGhlCj4+
IHBsYWNlbWVudCBzaG91bGQgYmUgZW50aXJlbHkgZGljdGF0ZWQgYnkgdGhlIERTQiByZXF1aXJl
bWVudHMuIElmIHlvdQo+PiBkb24ndCBuZWVkIHRvIGJlIGluIHRoZSBsb3cgcmVnaW9uLCBkb24n
dCBmb3JjZSBpdCB0byBiZSwgc28gd2UgaGF2ZQo+PiBsZXNzIGNvbmdlc3Rpb24gZm9yIHRoZSBv
YmplY3RzIHRoYXQgaGF2ZSB0byBiZSBwbGFjZWQgaW4gdGhhdCByZWdpb24uCj4KPiBJIHdhcyBk
b2luZyBhIG1pbmkgYXVkaXQgb2Ygd2hhdCB1c2VzIHRoZSBhcGVydHVyZSB0aGVzZSBkYXlzIGFu
ZCAKPiBub3RpY2VkIHRoaXMgY29kZSBoYXMgYmVlbiBtZXJnZWQgaW4gdGhlIG1lYW50aW1lLCBi
dXQgQUZBSUNTIHRoaXMgCj4gcXVlc3Rpb24gZnJvbSBDaHJpcyBoYXNuJ3QgYmVlbiBhbnN3ZXJl
ZD8gQXQgbGVhc3Qgbm90IG9uIHRoZSBtYWlsaW5nIAo+IGxpc3QuIFNvIGRvZXMgaXQgbmVlZCB0
byBiZSBpbiB0aGUgYXBlcnR1cmUgcmVnaW9uIG9yIG5vdD8KCkhpLAoKQmFzZWQgb24gcmVjb21t
ZW5kYXRpb24gZnJvbSBIL3cgdGVhbSB1c2VkIFBJTl9NQVBQQUJMRSwgbm90IHZlcnkgc3VyZSAK
YWJvdXQgaW50ZXJuYWwgZGV0YWlscy4KClJlZ2FyZHMsCkFuaW1lc2gKPgo+IFJlZ2FyZHMsCj4K
PiBUdnJ0a28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
