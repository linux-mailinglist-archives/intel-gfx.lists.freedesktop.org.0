Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF665E21F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 12:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C586E111;
	Wed,  3 Jul 2019 10:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3CE6E111
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 10:37:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 03:37:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="190992529"
Received: from cdsmith6-mobl2.ger.corp.intel.com (HELO [10.252.3.86])
 ([10.252.3.86])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2019 03:37:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <e732ce4b-0f50-20d9-ac91-4d53b5f9fb31@intel.com>
Date: Wed, 3 Jul 2019 11:37:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190703091726.11690-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915/gem: Free pages before
 rcu-freeing the object
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

T24gMDMvMDcvMjAxOSAxMDoxNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEFzIHdlIGhhdmUgZHJv
cHBlZCB0aGUgZmluYWwgcmVmZXJlbmNlIHRvIHRoZSBvYmplY3QsIHdlIGRvIG5vdCBuZWVkIHRv
Cj4gd2FpdCB1bnRpbCBhZnRlciB0aGUgcmN1IGdyYWNlIHBlcmlvZCB0byBkcm9wIGl0cyBwYWdl
cy4gV2Ugc3RpbGwgcmVxdWlyZQo+IHN0cnVjdF9tdXRleCB0byBjb21wbGV0ZWx5IHVuYmluZCB0
aGUgb2JqZWN0IHRvIHJlbGVhc2UgdGhlIHBhZ2VzLCBzbyB3ZQo+IHN0aWxsIG5lZWQgYSBmcmVl
LXdvcmtlciB0byBtYW5hZ2UgdGhhdCBmcm9tIHByb2Nlc3MgY29udGV4dC4gQnkKPiBzY2hlZHVs
aW5nIHRoZSByZWxlYXNlIG9mIHBhZ2VzIGJlZm9yZSB3YWl0aW5nIGZvciB0aGUgcmN1IHNob3Vs
ZCBtZWFuCj4gdGhhdCB3ZSBhcmUgbm90IHRyYXBwaW5nIHRob3NlIHBhZ2VzIGZyb20gYmV5b25k
IHRoZSByZWFjaCBvZiB0aGUKPiBzaHJpbmtlci4KPiAKPiB2MjogUGFzcyBhbG9uZyB0aGUgcmVx
dWVzdCB0byBza2lwIGlmIHRoZSB2bWEgaXMgYnVzeSB0byB0aGUgdW5kZXJseWluZwo+IHVuYmlu
ZCByb3V0aW5lLCB0byBhdm9pZCBjaGVja2luZyB0aGUgcmVzZXJ2YXRpb24gdW5kZXJuZWF0aCB0
aGUKPiBpOTE1LT5tbS5vYmpfbG9jayB3aGljaCBtYXkgYmUgdXNlZCBmcm9tIGluc2lkZSBpcnEg
Y29udGV4dC4KPiAKPiB2MzogRmxpcCB0aGUgYml0IGZvciB1bmJpbmRpbmcgd2hpbGUgYWN0aXZl
LCBmb3IgbGF0ZXIgY29udmVuaWVuY2UuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTAzNQo+IEZpeGVzOiBhOTM2MTVmOTAwYmQg
KCJkcm0vaTkxNTogVGhyb3cgYXdheSB0aGUgYWN0aXZlIG9iamVjdCByZXRpcmVtZW50IGNvbXBs
ZXhpdHkiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
