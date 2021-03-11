Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FAD336F9D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 11:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37D56E4D2;
	Thu, 11 Mar 2021 10:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330D76E4D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 10:12:26 +0000 (UTC)
IronPort-SDR: jEoSXOc1U8fKBjqF+0YknzdgnohWszDUiKSV/mCY72HYuxzn1vL4xoUMD+DV3UBw906OmTIpSz
 jpcsALDqgNBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="273684457"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="273684457"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 02:12:24 -0800
IronPort-SDR: ZUgRxFAUKgS29ihHS3n6mAHDGB221P+JbQmuO6VYVjK2xOQxHab2bzzDWYXMh7U6LS4M/ogTEJ
 VM/oeO1E1qIA==
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="509979619"
Received: from rbustenx-mobl1.ger.corp.intel.com (HELO [10.214.193.155])
 ([10.214.193.155])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 02:12:22 -0800
To: "Chiou, Cooper" <cooper.chiou@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
 <SA2PR11MB496960ABA0D7C5E2A53A2C099D939@SA2PR11MB4969.namprd11.prod.outlook.com>
 <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
 <SA2PR11MB496973C319344297FFECD50F9D909@SA2PR11MB4969.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d1489273-e092-0cff-d406-0a94bb7782bc@linux.intel.com>
Date: Thu, 11 Mar 2021 10:12:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <SA2PR11MB496973C319344297FFECD50F9D909@SA2PR11MB4969.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzAzLzIwMjEgMDE6MjcsIENoaW91LCBDb29wZXIgd3JvdGU6Cj4+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4+IEhpLAo+Pgo+PiBP
biAwOC8wMy8yMDIxIDE3OjMyLCBDaGlvdSwgQ29vcGVyIHdyb3RlOgo+Pj4gSSd2ZSB0ZXN0ZWQg
b24gR0xLLCBLQkwsIENGTCBJbnRlbCBOVUMgZGV2aWNlcyBhbmQgZ290IHRoZSBmb2xsb3dpbmcK
Pj4gcGVyZm9ybWFuY2UgcmVzdWx0cywgdGhlcmUgaXMgbm8gcGVyZm9ybWFuY2UgcmVncmVzc2lv
biBwZXIgbXkgdGVzdGluZy4KPj4+Cj4+PiBQYXRjaDogW3Y1XSBkcm0vaTkxNTogRW5hYmxlCj4+
PiBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lmaWNNbWlvUmVhZHMgZm9yIEdlbjkg
VGVzdCBzdWl0ZToKPj4+IHBob3Jvbml4LXRlc3Qtc3VpdGUuc3VwZXJ0dXhrYXJ0LjEwMjR4NzY4
LkZ1bGxzY3JlZW4uVWx0aW1hdGUuMS5HcmFuUGEKPj4+IHJhZGlzb0lzbGFuZC5mcmFtZXNfcGVy
X3NlY29uZAo+Pj4gS2VybmVsIHZlcnNpb246IDUuMTIuMC1yYzEgKGRybS10aXApCj4+Pgo+Pj4g
YS4gRGV2aWNlOiBJbnRlbCBOVUMga2l0IE5VQzdKWSBHZW1pbmkgTGFrZSBDZWxlcm9uIEo0MDA1
IEAyLjdHSHogKDIKPj4gQ29yZXMpCj4+PiAgICAgICBXaXRob3V0IHBhdGNoLCBmcHM9NTcuNDUK
Pj4+ICAgICAgIFdpdGggcGF0Y2gsIGZwcz01Ny40OQo+Pj4gYi4gRGV2aWNlOiBJbnRlbCBOVUMg
a2l0IE5VQzhCRUggQ29mZmVlIExha2UgQ29yZSBpMy04MTA5VSBAMy42R0h6KDQKPj4gQ29yZXMp
Cj4+PiAgICAgICBXaXRob3V0IHBhdGNoLCBmcHM9MTE3LjIzCj4+PiAgICAgICBXaXRoIHBhdGNo
LCBmcHM9MTE3LjI3Cj4+PiBjLiBEZXZpY2U6IEludGVsIE5VQyBraXQgTlVDN2kzQk5IIEthYnkg
TGFrZSBDb3JlIGkzLTcxMDBVIEAyLjRHSHooNAo+PiBDb3JlcykKPj4+ICAgICAgIFdpdGhvdXQg
cGF0Y2gsIGZwcz0xMTQuMDUKPj4+ICAgICAgIFdpdGggcGF0Y2gsIGZwcz0xMTQuMzQKPj4+Cj4+
PiBNZWFud2hpbGUsIEludGVsIGxrcCB0ZWFtIGhhcyB2YWxpZGF0ZWQgcGVyZm9ybWFuY2Ugb24g
bGtwLWtibC1udWMxIGFuZAo+PiBubyByZWdyZXNzaW9uLgo+Pj4gZjY5ZDAyZTM3YTg1NjQ1YSAg
ZDkxMjA5NmM0MGNkYzNiYzkzNjQ5NjY5NzEKPj4+IHRlc3RjYXNlL3Rlc3RwYXJhbXMvdGVzdGJv
eAo+Pj4gLS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgICAgICAgICAgICAlc3RkZGV2ICAgICAgY2hhbmdl
ICAgICAgICAgJXN0ZGRldgo+Pj4gICAgICAgICAgICAgICAgIFwgICAgICAgICAgfCAgICAgICAg
ICAgICAgICBcCj4+PiAgICAgICAgIDI5Ljc5ICAgICAgICAgICAgICAgICAgICAgICAyOS42Nwo+
Pj4gcGhvcm9uaXgtdGVzdC1zdWl0ZS9wZXJmb3JtYW5jZS10cnVlLUZ1bGxzY3JlZW4tVWx0aW1h
dGUtMS0KPj4gR3Jhbl9QYXJhZGlzb19Jc2xhbmRfX0FwcHJveGltYS1zdXBlcnR1eGthcnQtMS41
LjItdWNvZGU9MHhkZS9sa3Ata2JsLQo+PiBudWMxCj4+PiAgICAgICAgIDI5Ljc5ICAgICAgICAg
ICAgICAgICAgICAgICAyOS42NyAgICAgICAgR0VPLU1FQU4gcGhvcm9uaXgtdGVzdC0KPj4gc3Vp
dGUuc3VwZXJ0dXhrYXJ0LjEyODB4MTAyNC5GdWxsc2NyZWVuLlVsdGltYXRlLjEuR3JhblBhcmFk
aXNvSXNsYW5kLmZyYW0KPj4gZXNfcGVyX3NlY29uZAo+Pj4KPj4KPj4gQ0kgcmVzdWx0cyBhcmUg
Z3JlZW4gc28gdGhhdCBpcyBnb29kLgo+Pgo+PiBEbyB0aGUgbWFjaGluZXMgdXNlZCBmb3IgcGVy
Zm9ybWFuY2UgdGVzdGluZyBpbmNsdWRlIHVudXN1YWwgZnVzaW5nPwo+IFtDaGlvdSwgQ29vcGVy
XSBZZXMsIHRoaXMgcGVyZm9ybWFuY2UgdGVzdCBpbmNsdWRlZCBmdXNpbmcgc2t1IGFzIGZvbGxv
d2luZyBOVUMgR0xLIENlbGVyb24gTGludXggZGV2aWNlLAo+IEludGVsIE5VQyBraXQgTlVDN0pZ
IEdlbWluaSBMYWtlIENlbGVyb24gSjQwMDUgQDIuN0dIeiAoMiBDb3JlcykKPiAgICAgIFdpdGhv
dXQgcGF0Y2gsIGZwcz01Ny40NQo+ICAgICAgV2l0aCBwYXRjaCwgZnBzPTU3LjQ5CgpJIHdhcyBy
ZWZlcnJpbmcgdG8gdGhlIG9yaWdpbmFsIHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24gcmVwb3J0IHdo
aWNoIGNhbWUgCmZyb20gTEtQIHdoaWNoIHdhcyBvbiAiaTctNzU2N1UiIHNvIEthYnlsYWtlLiBD
YW4geW8gZmluZCBzdWNoIG1hY2hpbmUgCnRvIHRlc3Qgb24/Cgo+PiBXb3JyeWluZyB0aGluZyBp
cyB0aGF0IHdlIHdlcmUgbmV2ZXIgYWJsZSB0byByZXByb2R1Y2UgdGhlIHJlcG9ydGVkIHJlZ3Jl
c3Npb24gaW4gaG91c2UgZHVlIGxhY2sgb2YgaWRlbnRpY2FsIG1hY2hpbmUsIHJpZ2h0Pwo+IFtD
aGlvdSwgQ29vcGVyXSBZZXMsIGlmIGRldmljZSBpcyBjb3JlLWkzLzUvNyBHVDIsIHRoZW4gaGFu
ZyBpc3N1ZSBpc27igJl0IGFibGUgdG8gcmVwcm9kdWNlIGR1ZSB0byB0aGVyZSBpcyBubyBmdXNl
ZC9kaXNhYmxlZCBzdWJzbGljZTAuCj4gCj4gQnV0IFZQOCBodyBlbmNvZGluZyBHUFUgaGFuZyBp
c3N1ZSBjYW4gYmUgMTAwJSByZXByb2R1Y2VkIG9uIENNTC9LQkwgUGVudGl1bS9DZWxlcm9uIEdU
MSBza3UsCj4gZXhwbGFpbiByb290IGNhdXNlIGFzIHRoZSBmb2xsb3dpbmcsCj4gb24gQ2hyb21l
IENNTCBQZW50aXVtIDY0NTB1IEdUMSBza3UsIHdlIG9ic2VydmVkIHdoZW4gc3lzdGVtIGV4aXQg
UEM3IHBvd2VyIHN0YXRlLCBNR1NSKDB4RkRDKSBpcyByZXNldCB0byAweDEwMDAwMDAwLAo+IHJl
YWQgaXRzIHJlZyhmdXNlMjoweDkxMjApPTB4MDI5ODg0ODAgYml0IDIwLTIzPTEwMDEgbWVhbnMg
c3Vic2xpY2UwLzMgYXJlIGZ1c2VkIGRpc2FibGVkLCBpdCdzIGRlZmluZWQgaW4gYnNwZWMgYXMg
d2VsbC4KPiBvbiBDTUwgY29yZS1pNSBza3UsIHJlZyhmdXNlMik9MHgyMjg4OTE0MCBiaXQgMjAt
MjM9MTAwMCBvbmx5IHN1YnNsaWNlMyBpcyBmdXNlZC4KPiAKPiBzbyB3ZSBoYXZlIHRvIHNraXAg
dGhpcyAiZnVzZWQvZGlzYWJsZWQiIHN1YnNsaWNlIDAvMyBvbiBHVDEgc2t1IGluIGk5MTUsIHRo
ZW4gdXNlIHN1YmxpY2UgMSBvciAyIGFuZCByZS1wcm9ncmFtIDB4RkRDPTB4MTEwMDAwMDAgb3Ig
MHgxMjAwMDAwMAo+IHNpbmNlIHJlZ1sweGZkY109MHgxMDAwMDAwMCB0byB1c2Ugc3Vic2xpY2Uw
LCBidXQgc3VibGljZTAgaXMgZnVzZWQvZGlzYWJsZWQsIHNvIG9uY2UgZ28gdGhpcyBmdXNlZCBk
aXNhYmxlZCBzdWJzbGljZTAgdGhlbiBHUFUgaGFuZyBoYXBwZW5lZC4KPiAKPiBJbiBzb21lIE9F
TSBMaW51eCBwcm9qZWN0cywgdGhleSBvbmx5IGhhdmUgY29yZS1pIHNrdSBubyBQZW50aXVtL0Nl
bGVyb24gc2t1IGFzIEkga25ldyBhbmQgdnA4IGh3IGVuY29kaW5nIGlzIHJhcmUgdG8gdXNlIG9u
IFVidW50dSwKPiBhcyB0aGlzIHR3byByZWFzb25zIHRoZW4gTGludXggZGlkbid0IHJlcHJvZHVj
ZSB0aGlzIGZ1c2VkIHN1YnNsaWNlMCBncHUgaGFuZyBpc3N1ZSBiZWZvcmUsIGJ1dCBpdCBkb2Vz
IGhhcHBlbiBvbiBDaHJvbWUgcHJvamVjdHMuCgpVbmRlcnN0b29kIG9uIHRoZSBoYW5nIHBhcnQu
CgpSZWdhcmRzLAoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
