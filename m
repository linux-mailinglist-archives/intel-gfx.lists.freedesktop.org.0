Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C22739F79C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 02:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EB1289BEC;
	Wed, 28 Aug 2019 00:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AABD89BEC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 00:57:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 17:57:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="380223132"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga005.fm.intel.com with ESMTP; 27 Aug 2019 17:57:35 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <7536805.yzB8ZXLclH@jkrzyszt-desk.ger.corp.intel.com>
 <790a4a20-7517-fe54-177d-850b9beeb88e@linux.intel.com>
 <29020717.Hl6jQjRASr@jkrzyszt-desk.ger.corp.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <8f505c10-6256-c561-1aea-b3817388c5b2@linux.intel.com>
Date: Wed, 28 Aug 2019 08:56:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <29020717.Hl6jQjRASr@jkrzyszt-desk.ger.corp.intel.com>
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

SGkgSmFudXN6LAoKT24gOC8yNy8xOSA1OjM1IFBNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6
Cj4gSGkgTHUsCj4gCj4gT24gTW9uZGF5LCBBdWd1c3QgMjYsIDIwMTkgMTA6Mjk6MTIgQU0gQ0VT
VCBMdSBCYW9sdSB3cm90ZToKPj4gSGkgSmFudXN6LAo+Pgo+PiBPbiA4LzI2LzE5IDQ6MTUgUE0s
IEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPj4+IEhpIEx1LAo+Pj4KPj4+IE9uIEZyaWRheSwg
QXVndXN0IDIzLCAyMDE5IDM6NTE6MTEgQU0gQ0VTVCBMdSBCYW9sdSB3cm90ZToKPj4+PiBIaSwK
Pj4+Pgo+Pj4+IE9uIDgvMjIvMTkgMTA6MjkgUE0sIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToK
Pj4+Pj4gV2hlbiBhIHBlcmZlY3RseSB3b3JraW5nIGk5MTUgZGV2aWNlIGlzIGhvdCB1bnBsdWdn
ZWQgKHZpYSBzeXNmcykgYW5kCj4+Pj4+IGhvdCByZS1wbHVnZ2VkIGFnYWluLCBpdHMgZGV2LT5h
cmNoZGF0YS5pb21tdSBmaWVsZCBpcyBub3QgcG9wdWxhdGVkCj4+Pj4+IGFnYWluIHdpdGggYW4g
SU9NTVUgcG9pbnRlci4gIEFzIGEgcmVzdWx0LCB0aGUgZGV2aWNlIHByb2JlIGZhaWxzIG9uCj4+
Pj4+IERNQSBtYXBwaW5nIGVycm9yIGR1cmluZyBzY3JhdGNoIHBhZ2Ugc2V0dXAuCj4+Pj4+Cj4+
Pj4+IEl0IGxvb2tzIGxpa2UgdGhhdCBoYXBwZW5zIGJlY2F1c2UgZGV2aWNlcyBhcmUgbm90IGRl
dGFjaGVkIGZyb20gdGhlaXIKPj4+Pj4gTU1VSU8gYnVzIGJlZm9yZSB0aGV5IGFyZSByZW1vdmVk
IG9uIGRldmljZSB1bnBsdWcuICBUaGVuLCB3aGVuIGFuCj4+Pj4+IGFscmVhZHkgcmVnaXN0ZXJl
ZCBkZXZpY2UvSU9NTVUgYXNzb2NpYXRpb24gaXMgaWRlbnRpZmllZCBieSB0aGUKPj4+Pj4gcmVp
bnN0YW50aWF0ZWQgZGV2aWNlJ3MgYnVzIGFuZCBmdW5jdGlvbiBJRHMgb24gSU9NTVUgYnVzIHJl
LWF0dGFjaAo+Pj4+PiBhdHRlbXB0LCB0aGUgZGV2aWNlJ3MgYXJjaGRhdGEgaXMgbm90IHBvcHVs
YXRlZCB3aXRoIElPTU1VIGluZm9ybWF0aW9uCj4+Pj4+IGFuZCB0aGUgYmFkIGhhcHBlbnMuCj4+
Pj4+Cj4+Pj4+IEknbSBub3Qgc3VyZSBpZiB0aGlzIGlzIGEgcHJvcGVyIGZpeCBidXQgaXQgd29y
a3MgZm9yIG1lIHNvIGF0IGxlYXN0IGl0Cj4+Pj4+IGNvbmZpcm1zIGNvcnJlY3RuZXNzIG9mIG15
IGFuYWx5c2lzIHJlc3VsdHMsIEkgYmVsaWV2ZS4gIFNvIGZhciBJCj4+Pj4+IGhhdmVuJ3QgYmVl
biBhYmxlIHRvIGlkZW50aWZ5IGEgZ29vZCBwbGFjZSB3aGVyZSB0aGUgcG9zc2libHkgbWlzc2lu
Zwo+Pj4+PiBJT01NVSBidXMgZGV0YWNoIG9uIGRldmljZSB1bnBsdWcgb3BlcmF0aW9uIGNvdWxk
IGJlIGFkZGVkLgo+Pj4+Cj4+Pj4gV2hpY2gga2VybmVsIHZlcnNpb24gYXJlIHlvdSB0ZXN0aW5n
IHdpdGg/IERvZXMgaXQgY29udGFpbiBiZWxvdyBjb21taXQ/Cj4+Pj4KPj4+PiBjb21taXQgNDU4
YjdjOGUwZGRlMTJkMTQwZTM0NzJiODA5MTljYmI5YWU3OTNmNAo+Pj4+IEF1dGhvcjogTHUgQmFv
bHUgPGJhb2x1Lmx1QGxpbnV4LmludGVsLmNvbT4KPj4+PiBEYXRlOiAgIFRodSBBdWcgMSAxMTox
NDo1OCAyMDE5ICswODAwCj4+Pgo+Pj4gSSB3YXMgdXNpbmcgYW4gaW50ZXJuYWwgYnJhbmNoIGJh
c2VkIG9uIGRybS10aXAgd2hpY2ggZGlkbid0IGNvbnRhaW4gdGhpcwo+Pj4gY29tbWl0IHlldC4g
IEZvcnR1bmF0ZWx5IGl0IGhhcyBiZWVuIGFscmVhZHkgbWVyZ2VkIGludG8gZHJtLXRpcCBvdmVy
IGxhc3QKPj4+IHdlZWtlbmQgYW5kIGhhcyBlZmZlY3RpdmVseSBmaXhlZCB0aGUgaXNzdWUuCj4+
Cj4+IFRoYW5rcyBmb3IgdGVzdGluZyB0aGlzLgo+IAo+IE15IHRlc3RpbmcgYXBwZWFyZWQgbm90
IHN1ZmZpY2llbnRseSBleGhhdXN0aXZlLiBUaGUgZml4IGluZGVlZCByZXNvbHZlZCBteQo+IGlu
aXRpYWxseSBkaXNjb3ZlcmVkIGlzc3VlIG9mIG5vdCBiZWluZyBhYmxlIHRvIHJlYmluZCB0aGUg
aTkxNSBkcml2ZXIgdG8gYQo+IHJlLXBsdWdnZWQgZGV2aWNlLCBob3dldmVyIGl0IGJyb3VnaHQg
YW5vdGhlciwgcHJvYmFibHkgbW9yZSBzZXJpb3VzIHByb2JsZW0KPiB0byBsaWdodC4KPiAKPiBX
aGVuIGFuIG9wZW4gaTkxNSBkZXZpY2UgaXMgaG90IHVucGx1Z2dlZCwgSU9NTVUgYnVzIG5vdGlm
aWVyIG5vdyBjbGVhbnMgdXAKPiBJT01NVSBpbmZvIGZvciB0aGUgZGV2aWNlIG9uIFBDSSBkZXZp
Y2UgcmVtb3ZlIHdoaWxlIHRoZSBpOTE1IGRyaXZlciBpcyBzdGlsbAo+IG5vdCByZWxlYXNlZCwg
a2VwdCBieSBvcGVuIGZpbGUgZGVzY3JpcHRvcnMuICBUaGVuLCBvbiBsYXN0IGRldmljZSBjbG9z
ZSwKPiBjbGVhbnVwIGF0dGVtcHRzIGxlYWQgdG8ga2VybmVsIHBhbmljIHJhaXNlZCBmcm9tIGlu
dGVsX3VubWFwKCkgb24gdW5yZXNvbHZlZAo+IElPTU1VIGRvbWFpbi4KCldlIHNob3VsZCBhdm9p
ZCBrZXJuZWwgcGFuaWMgd2hlbiBhIGludGVsX3VubWFwKCkgaXMgY2FsbGVkIGFnYWluc3QKYSBu
b24tZXhpc3RlbnQgZG9tYWluLiBCdXQgd2Ugc2hvdWxkbid0IGV4cGVjdCB0aGUgSU9NTVUgZHJp
dmVyIG5vdApjbGVhbmluZyB1cCB0aGUgZG9tYWluIGluZm8gd2hlbiBhIGRldmljZSByZW1vdmUg
bm90aWZpY2F0aW9uIGNvbWVzIGFuZCAKd2FpdCB1bnRpbCBhbGwgZmlsZSBkZXNjcmlwdG9ycyBi
ZWluZyBjbG9zZWQsIHJpZ2h0PwoKQmVzdCByZWdhcmRzLApCYW9sdQoKPiAKPiBXaXRoIGNvbW1p
dCA0NThiN2M4ZTBkZGUgcmV2ZXJ0ZWQgYW5kIG15IGZpeCBhcHBsaWVkLCBib3RoIGxhdGUgZGV2
aWNlIGNsb3NlCj4gYW5kIGRldmljZSByZS1wbHVnIHdvcmsgZm9yIG1lLiAgSG93ZXZlciwgSSBj
YW4gcmVhbGl6ZSB0aGF0J3MgcHJvYmFibHkgc3RpbGwKPiBub3QgYSBjb21wbGV0ZSBzb2x1dGlv
biwgcG9zc2libHkgbWlzc2luZyBzb21lIHByb3RlY3Rpb24gYWdhaW5zdCByZXVzZSBvZiBhCj4g
cmVtb3ZlZCBkZXZpY2Ugb3RoZXIgdGhhbiBmb3IgY2xlYW51cC4gIElmIHlvdSB0aGluayB0aGF0
J3MgdGhlIHJpZ2h0IHdheSB0bwo+IGdvLCBJIGNhbiB3b3JrIG1vcmUgb24gdGhhdC4KPiAKPiBJ
J3ZlIGhhZCBhIGxvb2sgYXQgb3RoZXIgZHJpdmVycyBhbmQgZm91bmQgQU1EIGlzIHVzaW5nIHNv
bWVob3cgc2ltaWxhcgo+IGFwcHJvYWNoLiAgT24gdGhlIG90aGVyIGhhbmQsIGxvb2tpbmcgYXQg
dGhlIElPTU1VIGNvbW1vbiBjb2RlIEkgY291bGRuJ3QKPiBpZGVudGlmeSBhbnkgYXJyYW5nZW1l
bnQgdGhhdCB3b3VsZCBzdXBwb3J0IGRlZmVycmVkIGRldmljZSBjbGVhbnVwLgo+IAo+IElmIHRo
YXQgYXBwcm9hY2ggaXMgbm90IGFjY2VwdGFibGUgZm9yIEludGVsIElPTU1VLCBwbGVhc2Ugc3Vn
Z2VzdCBhIHdheSB5b3UnZAo+IGxpa2UgdG8gaGF2ZSBpdCByZXNvbHZlZCBhbmQgSSBjYW4gdHJ5
IHRvIGltcGxlbWVudCBpdC4KPiAKPiBUaGFua3MsCj4gSmFudXN6Cj4gCj4+IEJlc3QgcmVnYXJk
cywKPj4gTHUgQmFvbHUKPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
