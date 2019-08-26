Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B74929CB88
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 10:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8C96E204;
	Mon, 26 Aug 2019 08:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627136E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 08:30:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 01:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="379573481"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga005.fm.intel.com with ESMTP; 26 Aug 2019 01:30:26 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <00f1a3a7-7ff6-e9a0-d9de-a177af6fd64b@linux.intel.com>
 <7536805.yzB8ZXLclH@jkrzyszt-desk.ger.corp.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <790a4a20-7517-fe54-177d-850b9beeb88e@linux.intel.com>
Date: Mon, 26 Aug 2019 16:29:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7536805.yzB8ZXLclH@jkrzyszt-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not
 populated on device hot re-plug
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 intel-gfx@lists.freedesktop.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFudXN6LAoKT24gOC8yNi8xOSA0OjE1IFBNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6
Cj4gSGkgTHUsCj4gCj4gT24gRnJpZGF5LCBBdWd1c3QgMjMsIDIwMTkgMzo1MToxMSBBTSBDRVNU
IEx1IEJhb2x1IHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gOC8yMi8xOSAxMDoyOSBQTSwgSmFudXN6
IEtyenlzenRvZmlrIHdyb3RlOgo+Pj4gV2hlbiBhIHBlcmZlY3RseSB3b3JraW5nIGk5MTUgZGV2
aWNlIGlzIGhvdCB1bnBsdWdnZWQgKHZpYSBzeXNmcykgYW5kCj4+PiBob3QgcmUtcGx1Z2dlZCBh
Z2FpbiwgaXRzIGRldi0+YXJjaGRhdGEuaW9tbXUgZmllbGQgaXMgbm90IHBvcHVsYXRlZAo+Pj4g
YWdhaW4gd2l0aCBhbiBJT01NVSBwb2ludGVyLiAgQXMgYSByZXN1bHQsIHRoZSBkZXZpY2UgcHJv
YmUgZmFpbHMgb24KPj4+IERNQSBtYXBwaW5nIGVycm9yIGR1cmluZyBzY3JhdGNoIHBhZ2Ugc2V0
dXAuCj4+Pgo+Pj4gSXQgbG9va3MgbGlrZSB0aGF0IGhhcHBlbnMgYmVjYXVzZSBkZXZpY2VzIGFy
ZSBub3QgZGV0YWNoZWQgZnJvbSB0aGVpcgo+Pj4gTU1VSU8gYnVzIGJlZm9yZSB0aGV5IGFyZSBy
ZW1vdmVkIG9uIGRldmljZSB1bnBsdWcuICBUaGVuLCB3aGVuIGFuCj4+PiBhbHJlYWR5IHJlZ2lz
dGVyZWQgZGV2aWNlL0lPTU1VIGFzc29jaWF0aW9uIGlzIGlkZW50aWZpZWQgYnkgdGhlCj4+PiBy
ZWluc3RhbnRpYXRlZCBkZXZpY2UncyBidXMgYW5kIGZ1bmN0aW9uIElEcyBvbiBJT01NVSBidXMg
cmUtYXR0YWNoCj4+PiBhdHRlbXB0LCB0aGUgZGV2aWNlJ3MgYXJjaGRhdGEgaXMgbm90IHBvcHVs
YXRlZCB3aXRoIElPTU1VIGluZm9ybWF0aW9uCj4+PiBhbmQgdGhlIGJhZCBoYXBwZW5zLgo+Pj4K
Pj4+IEknbSBub3Qgc3VyZSBpZiB0aGlzIGlzIGEgcHJvcGVyIGZpeCBidXQgaXQgd29ya3MgZm9y
IG1lIHNvIGF0IGxlYXN0IGl0Cj4+PiBjb25maXJtcyBjb3JyZWN0bmVzcyBvZiBteSBhbmFseXNp
cyByZXN1bHRzLCBJIGJlbGlldmUuICBTbyBmYXIgSQo+Pj4gaGF2ZW4ndCBiZWVuIGFibGUgdG8g
aWRlbnRpZnkgYSBnb29kIHBsYWNlIHdoZXJlIHRoZSBwb3NzaWJseSBtaXNzaW5nCj4+PiBJT01N
VSBidXMgZGV0YWNoIG9uIGRldmljZSB1bnBsdWcgb3BlcmF0aW9uIGNvdWxkIGJlIGFkZGVkLgo+
Pgo+PiBXaGljaCBrZXJuZWwgdmVyc2lvbiBhcmUgeW91IHRlc3Rpbmcgd2l0aD8gRG9lcyBpdCBj
b250YWluIGJlbG93IGNvbW1pdD8KPj4KPj4gY29tbWl0IDQ1OGI3YzhlMGRkZTEyZDE0MGUzNDcy
YjgwOTE5Y2JiOWFlNzkzZjQKPj4gQXV0aG9yOiBMdSBCYW9sdSA8YmFvbHUubHVAbGludXguaW50
ZWwuY29tPgo+PiBEYXRlOiAgIFRodSBBdWcgMSAxMToxNDo1OCAyMDE5ICswODAwCj4gCj4gSSB3
YXMgdXNpbmcgYW4gaW50ZXJuYWwgYnJhbmNoIGJhc2VkIG9uIGRybS10aXAgd2hpY2ggZGlkbid0
IGNvbnRhaW4gdGhpcwo+IGNvbW1pdCB5ZXQuICBGb3J0dW5hdGVseSBpdCBoYXMgYmVlbiBhbHJl
YWR5IG1lcmdlZCBpbnRvIGRybS10aXAgb3ZlciBsYXN0Cj4gd2Vla2VuZCBhbmQgaGFzIGVmZmVj
dGl2ZWx5IGZpeGVkIHRoZSBpc3N1ZS4KClRoYW5rcyBmb3IgdGVzdGluZyB0aGlzLgoKQmVzdCBy
ZWdhcmRzLApMdSBCYW9sdQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
