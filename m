Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C915039919B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 19:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CC16EE10;
	Wed,  2 Jun 2021 17:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0316EDFE;
 Wed,  2 Jun 2021 17:26:26 +0000 (UTC)
IronPort-SDR: LBD+9/qIzTTH2G/IJj2piDU1/1Bn4nwLbcZ9ZWeS9aiQmICqTiXAnnFNh2xFFWhXy3FAERyVQ5
 tAWLwMyUsKtw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="225137803"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="225137803"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 10:26:19 -0700
IronPort-SDR: KUFRNQXDD1R05k4vmLhCKg1eragC0zRUVZD2rxPeTkQgQWHfpMSNQcxX9YSHNSxjaYMaczbqbw
 1RJnC2gRHjXQ==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="399811505"
Received: from ibanaga-mobl.ger.corp.intel.com (HELO [10.249.254.50])
 ([10.249.254.50])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 10:26:18 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
 <20210601074654.3103-8-thomas.hellstrom@linux.intel.com>
 <87im2xrcqu.fsf@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <1aa312f7-2c02-c92b-7a71-335a6baea796@linux.intel.com>
Date: Wed, 2 Jun 2021 19:26:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <87im2xrcqu.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v9 07/15] drm: Add a prefetching
 memcpy_from_wc
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMS8yMSAyOjI3IFBNLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBPbiBUdWUsIDAxIEp1biAy
MDIxLCBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
IHdyb3RlOgo+PiBSZWFkaW5nIG91dCBvZiB3cml0ZS1jb21iaW5pbmcgbWFwcGVkIG1lbW9yeSBp
cyB0eXBpY2FsbHkgdmVyeSBzbG93Cj4+IHNpbmNlIHRoZSBDUFUgZG9lc24ndCBwcmVmZXRjaC4g
SG93ZXZlciBzb21lIGFyY2hzIGhhdmUgc3BlY2lhbAo+PiBpbnN0cnVjdGlvbnMgdG8gZG8gdGhp
cy4KPj4KPj4gU28gYWRkIGEgYmVzdC1lZmZvcnQgbWVtY3B5X2Zyb21fd2MgdGFraW5nIGRtYS1i
dWYtbWFwIHBvaW50ZXIKPj4gYXJndW1lbnRzIHRoYXQgYXR0ZW1wdHMgdG8gdXNlIGEgZmFzdCBw
cmVmZXRjaGluZyBtZW1jcHkgYW5kCj4+IG90aGVyd2lzZSBmYWxscyBiYWNrIHRvIG9yZGluYXJ5
IG1lbWNvcGllcywgdGFraW5nIHRoZSBpb21lbSB0YWdnaW5nCj4+IGludG8gYWNjb3VudC4KPj4K
Pj4gVGhlIGNvZGUgaXMgbGFyZ2VseSBjb3BpZWQgZnJvbSBpOTE1X21lbWNweV9mcm9tX3djLgo+
Pgo+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+PiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+PiBTdWdnZXN0ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxz
dHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+PiBBY2tlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+PiBBY2tlZC1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+PiAtLS0KPj4gdjc6Cj4+IC0gUGVyZm9ybSBh
IG1lbWNweSBldmVuIGlmIHdhcm5pbmcgd2l0aCBpbl9pbnRlcnJ1cHQoKS4gU3VnZ2VzdGVkIGJ5
Cj4+ICAgIENocmlzdGlhbiBLw7ZuaWcuCj4+IC0gRml4IGNvbXBpbGF0aW9uIGZhaWx1cmUgb24g
IVg4NiAoUmVwb3J0ZWQgYnkga2VybmVsIHRlc3Qgcm9ib3QKPj4gICAgbGtwQGludGVsLmNvbSkK
Pj4gdjg6Cj4+IC0gU2tpcCBrZXJuZWxkb2MgZm9yIGRybV9tZW1jcHlfaW5pdF9lYXJseSgpCj4+
IC0gRXhwb3J0IGRybV9tZW1jcHlfZnJvbV93YygpIGFsc28gZm9yIG5vbi14ODYuCj4+IC0tLQo+
PiAgIERvY3VtZW50YXRpb24vZ3B1L2RybS1tbS5yc3QgfCAgIDIgKy0KPj4gICBkcml2ZXJzL2dw
dS9kcm0vZHJtX2NhY2hlLmMgIHwgMTQ4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyAgICB8ICAgMiArCj4+ICAgaW5jbHVk
ZS9kcm0vZHJtX2NhY2hlLmggICAgICB8ICAgNyArKwo+PiAgIDQgZmlsZXMgY2hhbmdlZCwgMTU4
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZ3B1L2RybS1tbS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9kcm0tbW0ucnN0Cj4+IGlu
ZGV4IDIxYmU2ZGVhZGMxMi4uYzY2MDU4YzViY2U3IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2dwdS9kcm0tbW0ucnN0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2RybS1tbS5yc3QK
Pj4gQEAgLTQ2OSw3ICs0NjksNyBAQCBEUk0gTU0gUmFuZ2UgQWxsb2NhdG9yIEZ1bmN0aW9uIFJl
ZmVyZW5jZXMKPj4gICAuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2RybV9tbS5jCj4+
ICAgICAgOmV4cG9ydDoKPj4gICAKPj4gLURSTSBDYWNoZSBIYW5kbGluZwo+PiArRFJNIENhY2hl
IEhhbmRsaW5nIGFuZCBGYXN0IFdDIG1lbWNweSgpCj4+ICAgPT09PT09PT09PT09PT09PT09Cj4g
VGhlIHRpdGxlIHVuZGVybGluZSBuZWVkcyB0byBiZSBhcyBsb25nIGFzIHRoZSB0aXRsZS4KPgo+
IEJSLAo+IEphbmkuCgpUaGFua3MsIEphbmkuCgpJIHRoaW5rIERhbmllbCB3YXMgdHJ5aW5nIHRv
IHBvaW50IHRoaXMgb3V0IHRvIG1lIGFzIHdlbGwgd2l0aCBsaW1pdGVkIApzdWNjZXNzLiBJdCdz
IGZpeGVkIG5vdy4KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
