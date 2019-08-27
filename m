Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BE29E47A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 11:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941B389907;
	Tue, 27 Aug 2019 09:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4EF89907
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 09:36:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 02:36:03 -0700
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="355716470"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 02:36:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Date: Tue, 27 Aug 2019 11:35:47 +0200
Message-ID: <29020717.Hl6jQjRASr@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <790a4a20-7517-fe54-177d-850b9beeb88e@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <7536805.yzB8ZXLclH@jkrzyszt-desk.ger.corp.intel.com>
 <790a4a20-7517-fe54-177d-850b9beeb88e@linux.intel.com>
MIME-Version: 1.0
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
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTHUsCgpPbiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMDoyOToxMiBBTSBDRVNUIEx1IEJh
b2x1IHdyb3RlOgo+IEhpIEphbnVzeiwKPiAKPiBPbiA4LzI2LzE5IDQ6MTUgUE0sIEphbnVzeiBL
cnp5c3p0b2ZpayB3cm90ZToKPiA+IEhpIEx1LAo+ID4gCj4gPiBPbiBGcmlkYXksIEF1Z3VzdCAy
MywgMjAxOSAzOjUxOjExIEFNIENFU1QgTHUgQmFvbHUgd3JvdGU6Cj4gPj4gSGksCj4gPj4KPiA+
PiBPbiA4LzIyLzE5IDEwOjI5IFBNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPj4+IFdo
ZW4gYSBwZXJmZWN0bHkgd29ya2luZyBpOTE1IGRldmljZSBpcyBob3QgdW5wbHVnZ2VkICh2aWEg
c3lzZnMpIGFuZAo+ID4+PiBob3QgcmUtcGx1Z2dlZCBhZ2FpbiwgaXRzIGRldi0+YXJjaGRhdGEu
aW9tbXUgZmllbGQgaXMgbm90IHBvcHVsYXRlZAo+ID4+PiBhZ2FpbiB3aXRoIGFuIElPTU1VIHBv
aW50ZXIuICBBcyBhIHJlc3VsdCwgdGhlIGRldmljZSBwcm9iZSBmYWlscyBvbgo+ID4+PiBETUEg
bWFwcGluZyBlcnJvciBkdXJpbmcgc2NyYXRjaCBwYWdlIHNldHVwLgo+ID4+Pgo+ID4+PiBJdCBs
b29rcyBsaWtlIHRoYXQgaGFwcGVucyBiZWNhdXNlIGRldmljZXMgYXJlIG5vdCBkZXRhY2hlZCBm
cm9tIHRoZWlyCj4gPj4+IE1NVUlPIGJ1cyBiZWZvcmUgdGhleSBhcmUgcmVtb3ZlZCBvbiBkZXZp
Y2UgdW5wbHVnLiAgVGhlbiwgd2hlbiBhbgo+ID4+PiBhbHJlYWR5IHJlZ2lzdGVyZWQgZGV2aWNl
L0lPTU1VIGFzc29jaWF0aW9uIGlzIGlkZW50aWZpZWQgYnkgdGhlCj4gPj4+IHJlaW5zdGFudGlh
dGVkIGRldmljZSdzIGJ1cyBhbmQgZnVuY3Rpb24gSURzIG9uIElPTU1VIGJ1cyByZS1hdHRhY2gK
PiA+Pj4gYXR0ZW1wdCwgdGhlIGRldmljZSdzIGFyY2hkYXRhIGlzIG5vdCBwb3B1bGF0ZWQgd2l0
aCBJT01NVSBpbmZvcm1hdGlvbgo+ID4+PiBhbmQgdGhlIGJhZCBoYXBwZW5zLgo+ID4+Pgo+ID4+
PiBJJ20gbm90IHN1cmUgaWYgdGhpcyBpcyBhIHByb3BlciBmaXggYnV0IGl0IHdvcmtzIGZvciBt
ZSBzbyBhdCBsZWFzdCBpdAo+ID4+PiBjb25maXJtcyBjb3JyZWN0bmVzcyBvZiBteSBhbmFseXNp
cyByZXN1bHRzLCBJIGJlbGlldmUuICBTbyBmYXIgSQo+ID4+PiBoYXZlbid0IGJlZW4gYWJsZSB0
byBpZGVudGlmeSBhIGdvb2QgcGxhY2Ugd2hlcmUgdGhlIHBvc3NpYmx5IG1pc3NpbmcKPiA+Pj4g
SU9NTVUgYnVzIGRldGFjaCBvbiBkZXZpY2UgdW5wbHVnIG9wZXJhdGlvbiBjb3VsZCBiZSBhZGRl
ZC4KPiA+Pgo+ID4+IFdoaWNoIGtlcm5lbCB2ZXJzaW9uIGFyZSB5b3UgdGVzdGluZyB3aXRoPyBE
b2VzIGl0IGNvbnRhaW4gYmVsb3cgY29tbWl0Pwo+ID4+Cj4gPj4gY29tbWl0IDQ1OGI3YzhlMGRk
ZTEyZDE0MGUzNDcyYjgwOTE5Y2JiOWFlNzkzZjQKPiA+PiBBdXRob3I6IEx1IEJhb2x1IDxiYW9s
dS5sdUBsaW51eC5pbnRlbC5jb20+Cj4gPj4gRGF0ZTogICBUaHUgQXVnIDEgMTE6MTQ6NTggMjAx
OSArMDgwMAo+ID4gCj4gPiBJIHdhcyB1c2luZyBhbiBpbnRlcm5hbCBicmFuY2ggYmFzZWQgb24g
ZHJtLXRpcCB3aGljaCBkaWRuJ3QgY29udGFpbiB0aGlzCj4gPiBjb21taXQgeWV0LiAgRm9ydHVu
YXRlbHkgaXQgaGFzIGJlZW4gYWxyZWFkeSBtZXJnZWQgaW50byBkcm0tdGlwIG92ZXIgbGFzdAo+
ID4gd2Vla2VuZCBhbmQgaGFzIGVmZmVjdGl2ZWx5IGZpeGVkIHRoZSBpc3N1ZS4KPiAKPiBUaGFu
a3MgZm9yIHRlc3RpbmcgdGhpcy4KCk15IHRlc3RpbmcgYXBwZWFyZWQgbm90IHN1ZmZpY2llbnRs
eSBleGhhdXN0aXZlLiBUaGUgZml4IGluZGVlZCByZXNvbHZlZCBteSAKaW5pdGlhbGx5IGRpc2Nv
dmVyZWQgaXNzdWUgb2Ygbm90IGJlaW5nIGFibGUgdG8gcmViaW5kIHRoZSBpOTE1IGRyaXZlciB0
byBhIApyZS1wbHVnZ2VkIGRldmljZSwgaG93ZXZlciBpdCBicm91Z2h0IGFub3RoZXIsIHByb2Jh
Ymx5IG1vcmUgc2VyaW91cyBwcm9ibGVtIAp0byBsaWdodC4KCldoZW4gYW4gb3BlbiBpOTE1IGRl
dmljZSBpcyBob3QgdW5wbHVnZ2VkLCBJT01NVSBidXMgbm90aWZpZXIgbm93IGNsZWFucyB1cCAK
SU9NTVUgaW5mbyBmb3IgdGhlIGRldmljZSBvbiBQQ0kgZGV2aWNlIHJlbW92ZSB3aGlsZSB0aGUg
aTkxNSBkcml2ZXIgaXMgc3RpbGwgCm5vdCByZWxlYXNlZCwga2VwdCBieSBvcGVuIGZpbGUgZGVz
Y3JpcHRvcnMuICBUaGVuLCBvbiBsYXN0IGRldmljZSBjbG9zZSwgCmNsZWFudXAgYXR0ZW1wdHMg
bGVhZCB0byBrZXJuZWwgcGFuaWMgcmFpc2VkIGZyb20gaW50ZWxfdW5tYXAoKSBvbiB1bnJlc29s
dmVkIApJT01NVSBkb21haW4uCgpXaXRoIGNvbW1pdCA0NThiN2M4ZTBkZGUgcmV2ZXJ0ZWQgYW5k
IG15IGZpeCBhcHBsaWVkLCBib3RoIGxhdGUgZGV2aWNlIGNsb3NlIAphbmQgZGV2aWNlIHJlLXBs
dWcgd29yayBmb3IgbWUuICBIb3dldmVyLCBJIGNhbiByZWFsaXplIHRoYXQncyBwcm9iYWJseSBz
dGlsbCAKbm90IGEgY29tcGxldGUgc29sdXRpb24sIHBvc3NpYmx5IG1pc3Npbmcgc29tZSBwcm90
ZWN0aW9uIGFnYWluc3QgcmV1c2Ugb2YgYSAKcmVtb3ZlZCBkZXZpY2Ugb3RoZXIgdGhhbiBmb3Ig
Y2xlYW51cC4gIElmIHlvdSB0aGluayB0aGF0J3MgdGhlIHJpZ2h0IHdheSB0byAKZ28sIEkgY2Fu
IHdvcmsgbW9yZSBvbiB0aGF0LgoKSSd2ZSBoYWQgYSBsb29rIGF0IG90aGVyIGRyaXZlcnMgYW5k
IGZvdW5kIEFNRCBpcyB1c2luZyBzb21laG93IHNpbWlsYXIgCmFwcHJvYWNoLiAgT24gdGhlIG90
aGVyIGhhbmQsIGxvb2tpbmcgYXQgdGhlIElPTU1VIGNvbW1vbiBjb2RlIEkgY291bGRuJ3QgCmlk
ZW50aWZ5IGFueSBhcnJhbmdlbWVudCB0aGF0IHdvdWxkIHN1cHBvcnQgZGVmZXJyZWQgZGV2aWNl
IGNsZWFudXAuCgpJZiB0aGF0IGFwcHJvYWNoIGlzIG5vdCBhY2NlcHRhYmxlIGZvciBJbnRlbCBJ
T01NVSwgcGxlYXNlIHN1Z2dlc3QgYSB3YXkgeW91J2QgCmxpa2UgdG8gaGF2ZSBpdCByZXNvbHZl
ZCBhbmQgSSBjYW4gdHJ5IHRvIGltcGxlbWVudCBpdC4KClRoYW5rcywKSmFudXN6Cgo+IEJlc3Qg
cmVnYXJkcywKPiBMdSBCYW9sdQo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
