Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B776391590
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 12:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ED9A6EC76;
	Wed, 26 May 2021 10:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5EE6EC74;
 Wed, 26 May 2021 10:57:17 +0000 (UTC)
IronPort-SDR: rpFbnuQrTmyA0CbeiKXcmvBTFRK91pj4LeOWxVF4N5xsU0dkk/XKEjgAYMx5WKUeXwNywnvzVg
 Opr/OMbE6TLw==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="189813344"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="189813344"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 03:57:15 -0700
IronPort-SDR: pJ2gHag870nSMGLrLCdBNtvISN9zcIzJaTI44KClBYjvaHNLyPZpx440WSZt9Gusrfc/dvwuUa
 kLxydEt9P/ig==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="630675958"
Received: from pegilssx-mobl.ger.corp.intel.com ([10.249.254.205])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 03:57:12 -0700
Message-ID: <fbbb896e7e886e4d41b3a319c6aa7c5bb2e8ad4e.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthew
 Auld <matthew.william.auld@gmail.com>
Date: Wed, 26 May 2021 12:57:10 +0200
In-Reply-To: <9f8fe3af-6d49-f652-70bc-36a27007d821@amd.com>
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
 <20210521153253.518037-7-thomas.hellstrom@linux.intel.com>
 <CAM0jSHM9SOPKkvbzUgFacqURXY_QbKcJ=3K_8Tdh4jjxm0nA3Q@mail.gmail.com>
 <2cc9a60c-4360-40b6-8712-1e50b7bbfd03@linux.intel.com>
 <CAM0jSHNYJd0LQhy3J3LbXezGQ-=eTh5qZJbZJRkw28eNAC9dsQ@mail.gmail.com>
 <e355705ead458e2f7385752a601befe5956eddd6.camel@linux.intel.com>
 <e6ae9ee8-401c-8ebb-33a0-0cd630e4d174@amd.com>
 <bd385b56-7342-ba5d-38cd-2758cbdb1cf3@linux.intel.com>
 <9f8fe3af-6d49-f652-70bc-36a27007d821@amd.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 06/12] drm/ttm: Add a generic TTM memcpy
 move for page-based iomem
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA1LTI2IGF0IDEyOjQ1ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDI2LjA1LjIxIHVtIDA5OjM5IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4gPiBb
U05JUF0KPiA+ID4gPiBJIHRoaW5rIHRoZSBsb25nIHRlcm0gZ29hbCBpcyB0byB1c2UgbWVtcmVt
YXAgYWxsIG92ZXIgdGhlCj4gPiA+ID4gcGxhY2UsIHRvCj4gPiA+ID4ganVzdCBub3QgaGF2ZSB0
byBib3RoZXIgd2l0aCB0aGUgX19pb21lbSBhbm5vdGF0aW9uLiBCdXQgdG8gZG8KPiA+ID4gPiB0
aGF0IGlvLQo+ID4gPiA+IG1hcHBpbmcuaCBuZWVkcyB0byBzdXBwb3J0IG1lbXJlbWFwLiBCdXQg
Zm9yIG5vdyB3ZSBuZWVkIHRvIGJlCj4gPiA+ID4gc3RyaWN0Cj4gPiA+ID4gYWJvdXQgX19pb21l
bSB1bmxlc3Mgd2UncmUgaW4gYXJjaCBzcGVjaWZpYyBjb2RlLiBUaGF0J3Mgd2h5Cj4gPiA+ID4g
dGhhdAo+ID4gPiA+IGRtYV9idWZfbWFwIHRoaW5nIHdhcyBjcmVhdGVkLCBidXQgVFRNIG1lbWNw
eSB3YXMgbmV2ZXIgZnVsbHkKPiA+ID4gPiBhZGFwdGVkLgo+ID4gPiAKPiA+ID4gSSBkb24ndCB0
aGluayB0aGF0IHRoaXMgd2lsbCB3b3JrLiBfX2lvbWVtIGFubm90YXRpb24gaXMgdGhlcmUgCj4g
PiA+IGJlY2F1c2Ugd2UgaGF2ZSBhcmNoaXRlY3R1cmVzIHdoZXJlIHlvdSBuZWVkIHRvIHVzZSBz
cGVjaWFsIENQVSAKPiA+ID4gaW5zdHJ1Y3Rpb25zIGZvciBpb21lbSBhY2Nlc3MuCj4gPiA+IAo+
ID4gPiBUaGF0IHdvbid0IGdvIGF3YXkganVzdCBiZWNhdXNlIHdlIHVzZSBtZW1yZW1hcCgpLgo+
ID4gCj4gPiBUaGF0J3MgdHJ1ZSwgYnV0IGNhbiB3ZSBldmVyIHN1cHBvcnQgdGhvc2Ugd2l0aCBU
VE0sIGdpdmVuIHRoYXQgd2UgCj4gPiBhbGxvdyB1c2VyLXNwYWNlIG1tYXBpbmcgdGhhdCB0cmFu
c3BhcmVudGx5IG1heSBjaGFuZ2UgdG8gYW4gaW9tYXA/Cj4gPiBHaXZlbiB0aGF0LCBhbmQgd2hh
dCdzIHdyaXR0ZW4gaGVyZQo+ID4gCj4gPiAgCj4gPiBodHRwczovL25hbTExLnNhZmVsaW5rcy5w
cm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsd24ubmV0JTJGQXJ0aWNs
ZXMlMkY2NTM1ODUlMkYmYW1wO2RhdGE9MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQu
Y29tJTdDMWNkY2ZlOWQyMGU3NDAzMDhjOWUwOGQ5MjAxOTc4NWIlN0MzZGQ4OTYxZmU0ODg0ZTYw
OGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3NTc2MTE2MDM0NDkyNjU0JTdDVW5rbm93biU3
Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2
SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzEwMDAmYW1wO3NkYXRhPWUyQkZHUUpjRWx3Vnhydkhj
bkFMRFdzY0hON2Vybkxla0d2WEhxV0Jjd1klM0QmYW1wO3Jlc2VydmVkPTAKPiA+IMKgCj4gPiAK
PiA+IAo+ID4gVG8gbWUgaXQgc291bmRzIGxpa2UgaWYgYW4gYXJjaGl0ZWN0dXJlIGNhbid0IHN1
cHBvcnQgbWVtcmVtYXAsIHdlIAo+ID4gY2FuJ3Qgc3VwcG9ydCBpdCB3aXRoIFRUTSBlaXRoZXIu
Cj4gCj4gVGhhdCB3YXMgYWxzbyBteSBhcmd1bWVudCwgYnV0IHRoaXMgaXMgdW5mb3J0dW5hdGVs
eSBub3QgdHJ1ZS4KPiAKPiBXZSBhbHJlYWR5IGhhdmUgYXJjaGl0ZWN0dXJlcyB3aGVyZSB0aGUg
X19pb21lbSBhcHByb2FjaCBpcyBtYW5kYXRvcnkKPiBmb3Iga2VybmVsIG1hcHBpbmdzLCBidXQg
d29yayBmaW5lIGZvciB1c2Vyc3BhY2UgKGRvbid0IGFzayBtZSBob3cKPiB0aGF0IAo+IHdvcmtz
LCBpZGspLgoKVWdoLiA6LwoKPiAKPiBUaGF0J3MgdGhlIHJlYXNvbiB3aHkgd2UgaGFkIHRvIGZp
eCB0aGUgVVZEIGZpcm13YXJlIHVwbG9hZCBpbiB0aGUKPiBrZXJuZWw6Cj4gCj4gY29tbWl0IGJh
MGIyMjc1YTY3ODFiMmYzOTE5ZDkzMWQ2MzMyOWI1NTQ4ZjZkNWYKPiBBdXRob3I6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBEYXRlOsKgwqAgVHVlIEF1ZyAy
MyAxMTowMDoxNyAyMDE2ICswMjAwCj4gCj4gwqDCoMKgwqAgZHJtL2FtZGdwdTogdXNlIG1lbWNw
eV90by9mcm9taW8gZm9yIFVWRCBmdyB1cGxvYWQKPiAKPiA+IAo+ID4gSW4gYW55IGNhc2UgZm9y
IHRoaXMgcGFydGljdWxhciBwYXRjaCwgdG8gYXZvaWQgcG90ZW50aWFsCj4gPiByZWdyZXNzaW9u
cywgCj4gPiBPSyBpZiBJIGp1c3QgYWRkIGFuIGlvcmVtYXAoKSBpbiBjYXNlIHRoZSBtZW1yZW1h
cCBmYWlscz8KPiAKPiBXZWxsIGJlY2F1c2Ugb2YgdGhlIGlzc3VlcyBvdXRsaW5lZCBhYm92ZSBJ
IHdvdWxkIGFjdHVhbGx5IHByZWZlciBpZgo+IHdlIAo+IGNhbiBrZWVwIHRoZSBfX2lvbWVtIGFu
bm90YXRpb24gYXJvdW5kLgoKV2VsbCwgd2UnZCBkbyB0aGF0LiBTaW5jZSB3ZSB1c2UgdGhlIGRt
YV9idWZfbWFwIHVuY29uZGl0aW9uYWxseS4KClNvIHdoYXQgd291bGQgaGFwcGVuIGluIHRoZSBh
Ym92ZSBjYXNlLCB3b3VsZCBiZToKCi0gbWVtcmVtYXAgd291bGQgZmFpbC4gKE90aGVyd2lzZSBJ
J2QgYmUgdGVycmlibHkgY29uZnVzZWQpCi0gd2UgcmV0cnkgd2l0aCBpb3JlbWFwIGFuZCB0aGUg
ZG1hLWJ1Zi1tYXAgbWVtYmVyIGlzX2lvbWVtIHdvdWxkIHRodXMKYmUgc2V0Ci0gbWVtY3B5IHdv
dWxkIGRvIHRoZSByaWdodCB0aGluZywgYmFzZWQgb24gaXNfaW9tZW0uCgovVGhvbWFzCgo+IAo+
IENocmlzdGlhbi4KPiAKPiA+IAo+ID4gL1Rob21hcwo+ID4gCj4gPiAKPiA+ID4gCj4gPiA+IENo
cmlzdGlhbi4KPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gQXMgZm9yIGxpbWl0ZWQgYXJjaCBzdXBw
b3J0IGZvciBtZW1yZW1hcCBjYWNoZWQsIEl0IGxvb2tzIGxpa2UKPiA+ID4gPiB3ZSBvbmx5Cj4g
PiA+ID4gbmVlZCB0byBvciBpbiAiYmFja3VwIiBtYXBwaW5nIG1vZGVzIGluIHRoZSBtZW1yZW1h
cCBmbGFncywgYW5kCj4gPiA+ID4gd2UnZAo+ID4gPiA+IG1pbWljIHRoZSBwcmV2aW91cyBiZWhh
dmlvdXIuCj4gPiA+ID4gCj4gPiA+ID4gL1Rob21hcwo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+
ID4gPiAvVGhvbWFzCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gCj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
