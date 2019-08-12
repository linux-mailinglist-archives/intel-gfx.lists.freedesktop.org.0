Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 652268A87A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 22:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E746E5DD;
	Mon, 12 Aug 2019 20:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217896E5DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 20:38:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 13:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; d="scan'208";a="187556614"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 12 Aug 2019 13:38:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-6-chris@chris-wilson.co.uk>
 <156560667015.2301.4966068073571425460@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <fea59a24-656f-4bd3-77d4-8e00f17b84af@intel.com>
Date: Mon, 12 Aug 2019 13:38:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156560667015.2301.4966068073571425460@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/guc: Keep the engine awake
 until the tasklet is idle
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

CgpPbiA4LzEyLzE5IDM6NDQgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOC0xMiAxMDoxMDo0MykKPj4gRm9yIHRoZSBndWMsIHdlIG5lZWQgdG8g
a2VlcCB0aGUgZW5naW5lIGF3YWtlIChhbmQgbm90IHBhcmtlZCkgYW5kIG5vdAo+PiBqdXN0IHRo
ZSBndC4gSWYgd2UgbGV0IHRoZSBlbmdpbmUgcGFyaywgd2UgZGlzYWJsZSB0aGUgaXJxIGFuZCBz
dG9wCj4+IHByb2Nlc3NpbmcgdGhlIHRhc2tsZXQsIGxlYXZpbmcgc3RhdGUgb3V0c3RhbmRpbmcg
aW5zaWRlIHRoZSB0YXNrbGV0Lgo+Pgo+PiBUaGUgZG93bnNpZGUgaXMsIG9mIGNvdXJzZSwgd2Ug
bm93IGhhdmUgdG8gd2FpdCB1bnRpbCB0aGUgdGFza2xldCBpcyBydW4KPj4gYmVmb3JlIHdlIGNv
bnNpZGVyIHRoZSBlbmdpbmUgaWRsZS4KPiAKPiBGd2l3LCBiZWNhdXNlIG9mIHRoaXMgSSB0aGlu
ayBpdCBtYXkgYmUgcHJlZmVyYWJsZSB0byBrZWVwIHRvIHVzaW5nIEdUCj4gcG0gZm9yIHRoZSB0
YXNrbGV0OyBhbmQgYXBwbHkgRGFuaWVsZSdzIHBhdGNoIHRvIGtlZXAKPiBORUVEU19CUkVBRENS
VU1CX1RBU0tMRVQgc2V0ICh3aGljaCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gYW55d2F5IG5v
dwo+IHRoYXQgd2Ugc3RvcCBzd2l0Y2hpbmcgYmV0d2VlbiBzdWJtaXNzaW9uIG1vZGVzKS4KPiAt
Q2hyaXMKPiAKCkdpdmVuIHRoYXQgdGhlIEd1QyBzdWJtaXNzaW9uIGNvZGUgaXMgYWJvdXQgdG8g
dW5kZXJnbyBhIHJld29yayBJIApiZWxpZXZlIGl0J2QgYmUgYmV0dGVyIHRvIGtlZXAgdGhlIGZp
eCBjb250YWluZWQgdG8gdGhlIEd1QyBzaWRlIG9mIAp0aGluZ3MgZm9yIG5vdyBhbmQgYXZvaWQg
aW1wYWN0aW5nIHRoZSBtb3JlIGdlbmVyYWwgcmVxdWVzdCBwYXRocyAoaS5lLiAKcGF0Y2ggNCBp
biB0aGlzIHNlcmllcywgdW5sZXNzIHlvdSBzdGlsbCB3YW50IHRoYXQgZm9yIG90aGVyIHJlYXNv
bnMpLiAKSSdsbCBjbGVhbiB1cCBhbmQgc2VuZCB0aGUgb3RoZXIgcGF0Y2guCgpEYW5pZWxlCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
