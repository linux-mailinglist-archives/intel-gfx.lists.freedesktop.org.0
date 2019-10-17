Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B03D7DADE0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 15:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0886EA77;
	Thu, 17 Oct 2019 13:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAB86EA77
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 13:09:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 06:09:12 -0700
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="186482978"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 17 Oct 2019 06:09:11 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
 <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
 <ce725ae5-0414-deee-cf05-dd668ee4dc6e@linux.intel.com>
 <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dc529fe2-e3a8-6076-e8c7-a1c5bae40a63@linux.intel.com>
Date: Thu, 17 Oct 2019 14:09:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7d5a27a5-cda2-01fa-f1d7-91e7e1ffa807@intel.com>
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

Ck9uIDE3LzEwLzIwMTkgMTM6NTIsIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4gT24gMTAvMTcvMjAx
OSAyOjA1IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4gT24gMjIvMDgvMjAxOSAxMzowOSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIy
IDEzOjA1OjA2KQo+Pj4+IEhpLAo+Pj4+Cj4+Pj4KPj4+PiBPbiA4LzIxLzIwMTkgMTE6NDEgUE0s
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4gUXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4
LTIxIDA3OjMyOjIyKQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoCB2bWEgPSBpOTE1X2dlbV9vYmplY3Rf
Z2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLCAKPj4+Pj4+IFBJTl9NQVBQQUJMRSk7Cj4+Pj4+IE9u
bHkgdGhpcyAoY3VycmVudGx5KSBzdGlsbCByZXF1aXJlcyBzdHJ1Y3RfbXV0ZXgKPj4+Pgo+Pj4+
IFN1cmUgd2lsbCBhZGQuCj4+Pj4+Cj4+Pj4+IERvZXMgaXQgaGF2ZSB0byBtYXBwYWJsZT8gSXMg
dGhhdCB0aGUgSFcgY29uc3RyYWludD8KPj4+Pgo+Pj4+IFllcywgYXMgcGVyIEhXIGRlc2lnbiBu
ZWVkIGEgY3B1IG1hcHBlZCBidWZmZXIgdG8gd3JpdGUgb3Bjb2RlK2RhdGEgCj4+Pj4gZnJvbQo+
Pj4+IGRyaXZlci4KPj4+Cj4+PiBQSU5fTUFQUEFCTEUgcmVmZXJzIHRvIHRoZSBpb21lbSBhcGVy
dHVyZSBwb3J0aW9uIG9mIHRoZSBHbG9iYWwgR1RUIAo+Pj4gKGkuZS4KPj4+IHRoZSBsb3cgNjQt
NTEyTWlCKS4gWW91IG5ldmVyIHVzZSBhIEdHVFQgbW1hcCBmb3IgeW91ciBDUFUgYWNjZXNzLCBz
byAKPj4+IHRoZQo+Pj4gcGxhY2VtZW50IHNob3VsZCBiZSBlbnRpcmVseSBkaWN0YXRlZCBieSB0
aGUgRFNCIHJlcXVpcmVtZW50cy4gSWYgeW91Cj4+PiBkb24ndCBuZWVkIHRvIGJlIGluIHRoZSBs
b3cgcmVnaW9uLCBkb24ndCBmb3JjZSBpdCB0byBiZSwgc28gd2UgaGF2ZQo+Pj4gbGVzcyBjb25n
ZXN0aW9uIGZvciB0aGUgb2JqZWN0cyB0aGF0IGhhdmUgdG8gYmUgcGxhY2VkIGluIHRoYXQgcmVn
aW9uLgo+Pgo+PiBJIHdhcyBkb2luZyBhIG1pbmkgYXVkaXQgb2Ygd2hhdCB1c2VzIHRoZSBhcGVy
dHVyZSB0aGVzZSBkYXlzIGFuZCAKPj4gbm90aWNlZCB0aGlzIGNvZGUgaGFzIGJlZW4gbWVyZ2Vk
IGluIHRoZSBtZWFudGltZSwgYnV0IEFGQUlDUyB0aGlzIAo+PiBxdWVzdGlvbiBmcm9tIENocmlz
IGhhc24ndCBiZWVuIGFuc3dlcmVkPyBBdCBsZWFzdCBub3Qgb24gdGhlIG1haWxpbmcgCj4+IGxp
c3QuIFNvIGRvZXMgaXQgbmVlZCB0byBiZSBpbiB0aGUgYXBlcnR1cmUgcmVnaW9uIG9yIG5vdD8K
PiAKPiBIaSwKPiAKPiBCYXNlZCBvbiByZWNvbW1lbmRhdGlvbiBmcm9tIEgvdyB0ZWFtIHVzZWQg
UElOX01BUFBBQkxFLCBub3QgdmVyeSBzdXJlIAo+IGFib3V0IGludGVybmFsIGRldGFpbHMuCgpX
aGF0IGRpZCB0aGUgcmVjb21tZW5kYXRpb24gZXhhY3RseSBzYXk/IFRoYXQgaXQgaGFzIHRvIGJl
IGluIEdHVFQgb3IgCmFwZXJ0dXJlPwoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
