Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC26DB034
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 16:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71FC6EAAF;
	Thu, 17 Oct 2019 14:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44186EAAF
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 14:38:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 07:38:42 -0700
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="186505879"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 17 Oct 2019 07:38:41 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
 <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
 <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
 <dc529fe2-e3a8-6076-e8c7-a1c5bae40a63@linux.intel.com>
 <3bad55f1-d661-0f68-dab8-2879952f87e4@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <55b39daa-fae6-cb1d-0280-9677c57fd242@linux.intel.com>
Date: Thu, 17 Oct 2019 15:38:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3bad55f1-d661-0f68-dab8-2879952f87e4@intel.com>
Content-Language: en-US
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

Ck9uIDE3LzEwLzIwMTkgMTQ6NTMsIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4gT24gMTAvMTcvMjAx
OSA2OjM5IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4gT24gMTcvMTAvMjAxOSAxMzo1Miwg
QW5pbWVzaCBNYW5uYSB3cm90ZToKPj4+IE9uIDEwLzE3LzIwMTkgMjowNSBQTSwgVHZydGtvIFVy
c3VsaW4gd3JvdGU6Cj4+Pj4gT24gMjIvMDgvMjAxOSAxMzowOSwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+Pj4+PiBRdW90aW5nIEFuaW1lc2ggTWFubmEgKDIwMTktMDgtMjIgMTM6MDU6MDYpCj4+Pj4+
PiBIaSwKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gT24gOC8yMS8yMDE5IDExOjQxIFBNLCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4+Pj4gUXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIxIDA3
OjMyOjIyKQo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgIHZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0
X3BpbihvYmosIE5VTEwsIDAsIDAsIAo+Pj4+Pj4+PiBQSU5fTUFQUEFCTEUpOwo+Pj4+Pj4+IE9u
bHkgdGhpcyAoY3VycmVudGx5KSBzdGlsbCByZXF1aXJlcyBzdHJ1Y3RfbXV0ZXgKPj4+Pj4+Cj4+
Pj4+PiBTdXJlIHdpbGwgYWRkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRG9lcyBpdCBoYXZlIHRvIG1hcHBh
YmxlPyBJcyB0aGF0IHRoZSBIVyBjb25zdHJhaW50Pwo+Pj4+Pj4KPj4+Pj4+IFllcywgYXMgcGVy
IEhXIGRlc2lnbiBuZWVkIGEgY3B1IG1hcHBlZCBidWZmZXIgdG8gd3JpdGUgCj4+Pj4+PiBvcGNv
ZGUrZGF0YSBmcm9tCj4+Pj4+PiBkcml2ZXIuCj4+Pj4+Cj4+Pj4+IFBJTl9NQVBQQUJMRSByZWZl
cnMgdG8gdGhlIGlvbWVtIGFwZXJ0dXJlIHBvcnRpb24gb2YgdGhlIEdsb2JhbCBHVFQgCj4+Pj4+
IChpLmUuCj4+Pj4+IHRoZSBsb3cgNjQtNTEyTWlCKS4gWW91IG5ldmVyIHVzZSBhIEdHVFQgbW1h
cCBmb3IgeW91ciBDUFUgYWNjZXNzLCAKPj4+Pj4gc28gdGhlCj4+Pj4+IHBsYWNlbWVudCBzaG91
bGQgYmUgZW50aXJlbHkgZGljdGF0ZWQgYnkgdGhlIERTQiByZXF1aXJlbWVudHMuIElmIHlvdQo+
Pj4+PiBkb24ndCBuZWVkIHRvIGJlIGluIHRoZSBsb3cgcmVnaW9uLCBkb24ndCBmb3JjZSBpdCB0
byBiZSwgc28gd2UgaGF2ZQo+Pj4+PiBsZXNzIGNvbmdlc3Rpb24gZm9yIHRoZSBvYmplY3RzIHRo
YXQgaGF2ZSB0byBiZSBwbGFjZWQgaW4gdGhhdCByZWdpb24uCj4+Pj4KPj4+PiBJIHdhcyBkb2lu
ZyBhIG1pbmkgYXVkaXQgb2Ygd2hhdCB1c2VzIHRoZSBhcGVydHVyZSB0aGVzZSBkYXlzIGFuZCAK
Pj4+PiBub3RpY2VkIHRoaXMgY29kZSBoYXMgYmVlbiBtZXJnZWQgaW4gdGhlIG1lYW50aW1lLCBi
dXQgQUZBSUNTIHRoaXMgCj4+Pj4gcXVlc3Rpb24gZnJvbSBDaHJpcyBoYXNuJ3QgYmVlbiBhbnN3
ZXJlZD8gQXQgbGVhc3Qgbm90IG9uIHRoZSAKPj4+PiBtYWlsaW5nIGxpc3QuIFNvIGRvZXMgaXQg
bmVlZCB0byBiZSBpbiB0aGUgYXBlcnR1cmUgcmVnaW9uIG9yIG5vdD8KPj4+Cj4+PiBIaSwKPj4+
Cj4+PiBCYXNlZCBvbiByZWNvbW1lbmRhdGlvbiBmcm9tIEgvdyB0ZWFtIHVzZWQgUElOX01BUFBB
QkxFLCBub3QgdmVyeSAKPj4+IHN1cmUgYWJvdXQgaW50ZXJuYWwgZGV0YWlscy4KPj4KPj4gV2hh
dCBkaWQgdGhlIHJlY29tbWVuZGF0aW9uIGV4YWN0bHkgc2F5PyBUaGF0IGl0IGhhcyB0byBiZSBp
biBHR1RUIG9yIAo+PiBhcGVydHVyZT8KPiAKPiBJdCBzYWlkOgo+ICJHTU0gdG8gYWxsb2NhdGUg
YnVmZmVyIGZyb20gZ2xvYmFsIEdUVCwgZ2V0IENQVSBtYXBwZWQgYWRkcmVzcyBhcyB3ZWxsIAo+
IChub3Qgc3RvbGVuIG1lbW9yeSkgLi4uICIuCgpTbyBpdCdzIHBvc3NpYmxlIHlvdSBkb24ndCBu
ZWVkIFBJTl9NQVBQQUJMRS4KCkRvIHdlIGhhdmUgc29tZSB0ZXN0IGNvdmVyYWdlIGZvciB0aGlz
PyBJbiBvdGhlciB3b3JkcyBpZiBJIHNlbmQgYSBwYXRjaCAKd2hpY2ggcmVtb3ZlcyBpdCwgd2ls
bCB3ZSBrbm93IGlmIHRoZSBmZWF0dXJlIGlzIGhlYWx0aHk/CgpSZWdhcmRzLAoKVHZydGtvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
