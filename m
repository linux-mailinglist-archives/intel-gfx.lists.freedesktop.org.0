Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E59399B00
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 08:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A2E6E0C1;
	Thu,  3 Jun 2021 06:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B576E0C1;
 Thu,  3 Jun 2021 06:50:50 +0000 (UTC)
IronPort-SDR: Mfdty32Ug2ZzyOkkprZHKsYkM1MRWh4yWBv/v1DwTFH9WaYJtXU37jxr6AyRK1lMX3k9QoEd3A
 9LalA4OS6K3A==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="183659089"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="183659089"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 23:50:50 -0700
IronPort-SDR: vR8nVvCel3CvOx4zZtYEHj/v6cbbeM9EdnU1GVv0oLakefu8f7LhZZDyq0L71B6E7bSmTLwPEW
 rBlZ2fyk7+Dw==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="467852375"
Received: from slindbla-mobl1.ger.corp.intel.com (HELO [10.249.254.57])
 ([10.249.254.57])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 23:50:46 -0700
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
 <YLfQplT8H6PdCCLX@phenom.ffwll.local>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
Date: Thu, 3 Jun 2021 08:50:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <YLfQplT8H6PdCCLX@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] Merging TTM branches through the Intel tree?
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMi8yMSA4OjQwIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFdlZCwgSnVuIDAy
LCAyMDIxIGF0IDExOjQ4OjQxQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDAyLjA2LjIxIHVtIDExOjE2IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKToKPj4+
IE9uIDYvMi8yMSAxMDozMiBBTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBVZmYgSSdt
IGp1c3Qgd2FpdGluZyBmb3IgZmVlZGJhY2sgZnJvbSBQaGlsaXAgdG8gbWVyZ2UgYSBsYXJnZSBw
YXRjaAo+Pj4+IHNldCBmb3IgVFRNIHRocm91Z2ggZHJtLW1pc2MtbmV4dC4KPj4+Pgo+Pj4+IEkn
bSBwcmV0dHkgc3VyZSB3ZSB3aWxsIHJ1biBpbnRvIG1lcmdlIGNvbmZsaWN0cyBpZiB5b3UgdHJ5
IHRvIHB1c2gKPj4+PiB5b3VyIGNoYW5nZXMgdGhyb3VnaCB0aGUgSW50ZWwgdHJlZS4KPj4+Pgo+
Pj4+IENocmlzdGlhbi4KPj4+IE9LLCBzbyB3aGF0IHdvdWxkIGJlIHRoZSBiZXN0IGFwcHJvYWNo
IGhlcmU/LCBBZGRpbmcgdGhlIFRUTSBwYXRjaGVzIHRvCj4+PiBkcm0tbWlzYy1uZXh0IHdoZW4g
eW91ciBzZXQgaGFzIGxhbmRlZD8KPj4gSSB0aGluayBJIHdpbGwgc2VuZCBvdXQgb3V0IG15IHNl
dCB0byBNYXR0aGV3IG9uY2UgbW9yZSBmb3IgcmV2aWV3LCB0aGVuCj4+IHB1c2ggdGhlIGNvbW1v
biBUVE0gc3R1ZmYgdG8gZHJtLW1pc2MtbmV4dCBhcyBtdWNoIGFzIHBvc3NpYmxlLgo+Pgo+PiBU
aGVuIHlvdSBzaG91bGQgYmUgYWJsZSB0byBsYW5kIHlvdXIgc3R1ZmYgdG8gZHJtLW1pc2MtbmV4
dCBhbmQgcmViYXNlIG9uCj4+IHRoZSBlbmQgcmVzdWx0Lgo+Pgo+PiBKdXN0IG5lZWQgdG8gbm90
ZSB0byBEYXZpZCB0aGF0IGRybS1taXNjLW5leHQgc2hvdWxkIGJlIG1lcmdlZCB0byBkcm0tbmV4
dAo+PiBiZWZvcmUgdGhlIEludGVsIHBhdGNoZXMgZGVwZW5kaW5nIG9uIHRoYXQgc3R1ZmYgbGFu
ZCBhcyB3ZWxsLgo+IE90aGVyIG9wdGlvbiAoYmVjYXVzZSB0aGUgYmFja21lcmdlcyB0ZW5kIHRv
IGJlIHNsb3cpIGlzIGEgdG9waWMgYnJhbmNoLAo+IGFuZCB3ZSBqdXN0IGVhdC9yZXNvbHZlIHRo
ZSBjb25mbGljdHMgaW4gYm90aCBkcm0tbWlzYy1uZXh0IGFuZAo+IGRybS1pbnRlbC1ndC1uZXh0
IGluIHRoZSBtZXJnZSBjb21taXQuIElmIGl0J3Mgbm90IHRvbyBiYWQgKEkgaGF2ZW4ndAo+IGxv
b2tlZCBhdCB3aGF0IGV4YWN0bHkgd2UgbmVlZCBmb3IgdGhlIGk5MTUgc2lkZSBmcm9tIHR0bSBp
biBkZXRhaWwpLgo+Cj4gQnV0IGFsc28gb2Z0ZW4gZmlndXJpbmcgb3V0IHRoZSB0b3BpYyBicmFu
Y2ggbG9naXN0aWNzIHRha2VzIGxvbmdlciB0aGFuCj4ganVzdCBtZXJnaW5nIHRvIGRybS1taXNj
LW5leHQgYXMgdGhlIHBhdGNoZXMgZ2V0IHJlYWR5Lgo+IC1EYW5pZWwKCkRhbmllbDogU28gdGhl
IHRoaW5nIHdlIG5lZWQgdG8gZ2V0IGludG8gVFRNIGlzIHRoZSBpdGVyYXRvci1iYXNlZCAKbW92
ZV9tZW1jcHkgd2hpY2ggaXMgbW9yZSBhZGFwdGFibGUgdGhhbiB0aGUgY3VycmVudCBvbmUgYW5k
IG5lZWRlZCB0byAKc3VwcG9ydCBub24tbGluZWFyIGxtZW0gYnVmZmVycywgc29tZSBidWctZml4
ZXMgYW5kIG1pbm9yIGNoYW5nZXMgdG8gYmUgCmFibGUgdG8ga2VlcCBvdXIgc2hvcnQtdGVybS1w
aW5uaW5nIHdoaWxlIG9uIHRoZSBMUlUuIEEgbmVjZXNzYXJ5IGV2aWwuCgpDaHJpc3RpYW46IGl0
IGxvb2tzIGxpa2UgeW91IGhhdmUgbGFuZGVkIHNvbWUgVFRNIGNoYW5nZXMgYWxyZWFkeSwgaW4g
CnBhcnRpY3VsYXIgdGhlICZiby0+bWVtIC0+IGJvLT5yZXNvdXJjZSBjaGFuZ2Ugd2hpY2ggaXMg
dGhlIG1haW4gCmNvbmZsaWN0IEkgdGhpbmsuIElzIHRoZSAxMCBwYXRjaGVzIHNlbGYtYWxsb2Nh
dGlvbiBzZXJpZXMgdGhlIG1haW4gCnJlbWFpbmluZyBwYXJ0PyBUaGF0IHdpbGwgcHJvYmFibHkg
Y2F1c2Ugc29tZSBjb25mbGljdHMgd2l0aCBhbHJlYWR5IApwdXNoZWQgaTkxNSBUVE0gc2V0dXAg
Y29kZSwgYnV0IG90aGVyd2lzZSB3aWxsIG5vdCBjb25mbGljdCB3aXRoIHRoZSAKcmVzdCBvZiB0
aGUgVFRNIGNvZGUgSSB0aGluaywgd2hpY2ggc2hvdWxkIG1ha2UgaXQgcG9zc2libGUgdG8gYnJp
bmcgaW4gCm91ciBUVE0gY2hhbmdlcyBhZnRlciBjb25mbGljdCByZXNvbHV0aW9uIHdpdGggd2hh
dCB5b3UndmUgYWxyZWFkeSAKcHVzaGVkLiBUaGUgbWVtY3B5IGNvZGUgaXMgcHJldHR5IHNlbGYt
Y29udGFpbmVkLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
