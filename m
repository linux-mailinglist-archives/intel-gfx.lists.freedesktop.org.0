Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 327F57DF27
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878556E6F2;
	Thu,  1 Aug 2019 15:31:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093C86E6F2
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:31:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 08:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="184276972"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 08:31:43 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190801141732.31335-1-tvrtko.ursulin@linux.intel.com>
 <20190801141732.31335-5-tvrtko.ursulin@linux.intel.com>
 <156467129926.6045.16909307069650415218@skylake-alporthouse-com>
 <6e776f39-efba-08bc-e96d-188cc88ebcb4@linux.intel.com>
 <156467284530.6045.16630954954029726609@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a1a990a9-3499-6101-ed4c-e1be0ca72a7b@linux.intel.com>
Date: Thu, 1 Aug 2019 16:31:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156467284530.6045.16630954954029726609@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/pmu: Support multiple GPUs
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

Ck9uIDAxLzA4LzIwMTkgMTY6MjAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA4LTAxIDE2OjEwOjE0KQo+Pgo+PiBPbiAwMS8wOC8yMDE5IDE1OjU0
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBXb3JrcyBmb3IgbWUsIEkgd29uZGVyIHdoYXQgUGV0
ZXJaIHdpbGwgc2F5Li4uCj4+Cj4+IEluIHdoYXQgc2Vuc2U/Cj4gCj4gSnVzdCB3b25kZXJpbmcg
aWYgaGUgaGFzIGEgcGxhbiBmb3IgaG90cGx1Z2dhYmxlIHBtdSBkZXZpY2VzLiBJIGNhbgo+IGNl
cnRhaW5seSBpbWFnaW5lIGhpcyBzdXJwcmlzZSBpbiB0aGUgZnV0dXJlIHdoZW4gaGUgZmluZHMg
YW4gYWRob2MKPiBzY2hlbWUgaW4gYSByYW5kb20gZHJpdmVyLgoKVGhlcmUgaXMgdGltZSB0byBy
dW4gdGhpcyBwYXN0IGhpbS4gSSdsbCBzZW5kIHNvbWV0aGluZyBvdXQuCgpSZWdhcmRzLAoKVHZy
dGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
