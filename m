Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1BA02B9
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 15:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243CF89B42;
	Wed, 28 Aug 2019 13:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B88D89B42
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 13:11:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 06:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="264641847"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2019 06:11:06 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 06:11:06 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 06:11:05 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.190]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 18:41:03 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 00/10] drm/i915: adding state checker for gamma lut
 value 
Thread-Index: AQHVW9icVRCe+f272Eypow6v0PP9jacQi3Uw
Date: Wed, 28 Aug 2019 13:11:02 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D374F@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWEwMGM2NDItOWRmNC00OTI3LThiYjctNWFlYTQ3YzJmN2FkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR2dXVUs5OVpFTGt2NzdQQUdnTTY3MGE2XC84a09BSG9WRitWVnVGVkdIYURrdWVROEdDWDl0NzFxaXYrYVpxcFgifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 00/10] drm/i915: adding state checker
 for gamma lut value
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFNoYXJtYSwgU3dhdGkyCj5TZW50
OiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMTo1NiBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNoYXJtYSwgU2hhc2hhbmsKPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsKPk5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7Cj52aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+OyBTaGFybWEsCj5Td2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+U3ViamVjdDog
W3Y4XVtQQVRDSCAwMC8xMF0gZHJtL2k5MTU6IGFkZGluZyBzdGF0ZSBjaGVja2VyIGZvciBnYW1t
YSBsdXQgdmFsdWUKClRoZSBzZXJpZXMgbmFtZSBpcyBjaGFuZ2VkICJ2YWx1ZSIgaW5zdGVhZCBv
ZiAidmFsdWVzIi4gVGhpcyBtYWtlcyBpdCBhIG5ldyBzZXJpZXMKZm9yIHBhdGNod29yay4gUGxl
YXNlIGZpeCB0aGF0IGluIHRoZSBuZXh0IHZlcnNpb24gYW5kIGxldHMgbWFpbnRhaW4gdGhlIG5h
bWUgd2hhdGV2ZXIKaGFzIGJlZW4gdGhlcmUgZnJvbSB0aGUgYmVnaW5uaW5nLgoKPkluIHRoaXMg
cGF0Y2ggc2VyaWVzLCBhZGRlZCBzdGF0ZSBjaGVja2VyIHRvIHZhbGlkYXRlIGdhbW1hICg4QklU
IGFuZCAxMEJJVCkuCj5UaGlzIHJlYWRzIGhhcmR3YXJlIHN0YXRlLCBhbmQgY29tcGFyZXMgdGhl
IG9yaWdpbmFsbHkgcmVxdWVzdGVkIHN0YXRlKHMvdykgdG8gdGhlCj5zdGF0ZSByZWFkIGZyb20g
dGhlIGhhcmR3YXJlLgo+VGhpcyBpcyBkb25lIGZvciBsZWdhY3ksIGk5NjUsIGlsaywgZ2xrIGFu
ZCB0aGVpciB2YXJpYW50IHBsYXRmb3Jtcy4KPgo+SW50ZW50aW9uYWxseSwgZXhjbHVkZWQgYmR3
IGFuZCBpdmIgc2luY2UgdGhleSBoYXZlIHNwaWx0IGdhbW1hIG1vZGU7IGZvciB3aGljaAo+ZGVn
YW1tYSByZWFkIG91dHMgYXJlIHJlcXVpcmVkICh3aGljaCBJIHRoaW5rIHNob3VsZG4ndCBiZSBp
bmNsdWRlZCBpbiB0aGlzIHBhdGNoCj5zZXJpZXMpLiBXaWxsIGluY2x1ZGUgYWZ0ZXIgZGVnYW1t
YSBzdGF0ZSBjaGVja2VyIGlzIGNvbXBsZXRlZC4KPgo+djE6IC1JbXBsZW1lbnRhdGlvbiBkb25l
IGZvciBsZWdhY3kgcGxhdGZvcm1zCj4gICAgIChyZW1vdmVkIGFsbCB0aGUgcGxhY2Vob2xkZXJz
KSAoSmFuaSkKPnYyOiAtUmVzdHJ1Y3R1cmVkIGNvZGUgYW5kIGNyZWF0ZWQgcGxhdGZvcm0gc3Bl
Y2lmaWMgcGF0Y2ggc2VyaWVzIGZvcgo+ICAgICBnYW1tYSB2YWxpZGF0aW9uCj52MzogLVJlYmFz
ZQo+djQ6IC1NaW5vciBjaGFuZ2VzLWZ1bmN0aW9uIG5hbWUgY2hhbmdlcyBtYWlubHkKPnY1OiAt
QWRkZWQgZGVnYW1tYSB2YWxpZGF0aW9uIChWaWxsZSkKPnY2OiAtUmVtb3ZlZCBkZWdhbW1hIGNo
YW5nZXMsIGRlYnVnZ2luZyB3YXMgYmVjb21pbmcgZGlmZmljdWx0Cj4gICAgLUFkZGVkIGZ1bmN0
aW9uIHRvIGFzc2lnbiBiaXRfcHJlY2lzaW9uIGZvciBnYW1tYS9kZWdhbW1hCj4gICAgIGx1dCB2
YWx1ZXMgL3BsYXRmb3JtCj4gICAgLUFkZGVkIGRlYnVnIGluZm8gaW50byBpbnRlbF9kdW1wX3Bp
cGVfY29uZmlnKCkgKEphbmkpCj52NzogLUFkZGVkIHBsYXRmb3JtIHNwZWNpZmljIGZ1bmN0aW9u
cyB0byBjb21wdXRlIGdhbW1hIGJpdCBwcmVjaXNpb24KPiAgICAgb24gdGhlIGJhc2lzIG9mIEdB
TU1BX01PREUgKFZpbGxlKQo+ICAgIC1Db3JyZWN0ZWQgY2hlY2twYXRjaCB3YXJuaW5ncwo+djg6
IC1SZXN0cnVjdHVyZWQgY29kZQo+ICAgIC1SZW1vdmVkIGJkdyBhbmQgaXZiIHBsYXRmb3JtIHN0
YXRlIGNoZWNrZXIKPgo+U3dhdGkgU2hhcm1hICgxMCk6Cj4gIGRybS9pOTE1L2Rpc3BsYXk6IEFk
ZCBmdW5jIHRvIGdldCBnYW1tYSBiaXQgcHJlY2lzaW9uCj4gIGRybS9pOTE1L2Rpc3BsYXk6IEFk
ZCBkZWJ1ZyBsb2cgZm9yIGNvbG9yIHBhcmFtZXRlcnMKPiAgZHJtL2k5MTUvZGlzcGxheTogQWRk
IGZ1bmMgdG8gY29tcGFyZSBody9zdyBnYW1tYSBsdXQKPiAgZHJtL2k5MTUvZGlzcGxheTogQWRk
IG1hY3JvIHRvIGNvbXBhcmUgZ2FtbWEgaHcvc3cgbHV0Cj4gIGRybS9pOTE1L2Rpc3BsYXk6IEV4
dHJhY3QgaTl4eF9yZWFkX2x1dHMoKQo+ICBkcm0vaTkxL2Rpc3BsYXk6IEV4dHJhY3QgaTk2NV9y
ZWFkX2x1dHMoKQo+ICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGNodl9yZWFkX2x1dHMoKQo+
ICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMoKQo+ICBkcm0vaTkxNS9k
aXNwbGF5OiBFeHRyYWN0IGdsa19yZWFkX2x1dHMoKQo+ICBGT1JfVEVTVElOR19PTkxZOiBQcmlu
dCByZ2IgdmFsdWVzIG9mIGh3IGFuZCBzdyBibG9icwo+Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jICAgfCAzNzAgKysrKysrKysrKysrKysrKysrKysrKysrKyst
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oICAgfCAgIDcgKwo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDM0ICsrKwo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgIDE1ICsrCj4g
NCBmaWxlcyBjaGFuZ2VkLCA0MjMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+LS0K
PjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
