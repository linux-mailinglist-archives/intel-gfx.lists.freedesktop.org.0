Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD3939DB0C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 13:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F616E3C4;
	Mon,  7 Jun 2021 11:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28A36E3C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 11:19:48 +0000 (UTC)
IronPort-SDR: MhocuHzEkqsQvC9IBqJdwpOupD50OFvTiuiF00DTah8QOfg0JHVXSf5xLshv1dBggI6h0Te0DU
 5etHQpidIZZg==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="265757686"
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="265757686"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 04:19:48 -0700
IronPort-SDR: IBbVdmaskRexLDkGgfeuYNmG+FVotisx6EME1CM/zWeZiDosEGgDsazMRLN9lLNkNyttyS5FOm
 GN2pPIOJ1nlQ==
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="401648256"
Received: from unknown (HELO [10.237.72.166]) ([10.237.72.166])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 04:19:46 -0700
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210514232247.144542-1-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <ca2b23cf-c8e1-4ce2-8102-311eac2a280c@intel.com>
Date: Mon, 7 Jun 2021 14:19:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514232247.144542-1-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: Fix fastsets
 involving PSR
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

UmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4K
Ck9uIDUvMTUvMjEgMjoyMiBBTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBDb21t
aXQgNzhiNzcyZTFhMDFmICgiZHJtL2k5MTUvZGlzcGxheTogRmlsbCBQU1Igc3RhdGUgZHVyaW5n
IGhhcmR3YXJlCj4gY29uZmlndXJhdGlvbiByZWFkIG91dCIpIGlzIG5vdCBhbGxvd2luZyBmYXN0
c2V0cyB0byBoYXBwZW4gd2hlbiBQU1IKPiBzdGF0ZXMgY2hhbmdlcyBidXQgUFNSIGlzIGEgZmVh
dHVyZSB0aGF0IGNhbiBiZSBlbmFibGVkIGFuZCBkaXNhYmxlZAo+IGR1cmluZyBmYXN0c2V0cy4K
PiAKPiBTbyBoZXJlIG1vdmluZyB0aGUgUFNSIHBpcGUgY29uZiBjaGVja3MgdG8gYSBibG9jayB0
aGF0IGlzIG9ubHkKPiBleGVjdXRlZCB3aGVuIGNoZWNraW5nIGlmIEhXIHN0YXRlIG1hdGNoZXMg
d2l0aCByZXF1ZXN0ZWQgc3RhdGUsIG5vdAo+IGR1cmluZyB0aGUgcGhhc2Ugd2hlcmUgaXQgY2hl
Y2tzIGlmIGZhc3RzZXQgaXMgcG9zc2libGUgb3Igbm90Lgo+IAo+IFRoZXJlIHN0aWxsIGEgc3Rh
dGUgbWlzbWF0Y2ggbm90IGFsbG93aW5nIGZhc3RzZXRzIGJldHdlZW4gc3RhdGVzCj4gdHVybmlu
ZyBvZmYgb3Igb24gUFNSIGJlY2F1c2Ugb2YgY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFibGUK
PiBCSVQoRFBfU0RQX1ZTQykgYnV0IGF0IGxlYXN0IGZvciBub3cgaXQgd2lsbCBhbGxvdyBhIGZh
c3RzZXQgYmV0d2Vlbgo+IFBTUjEgPC0+IFBTUjIsIHRoYXQgaXMgYSBjYXNlIGhlYXZpbGx5IHVz
ZWQgYnkgQ0kgZHVlIHRvIHBpcGUgQ1JDIG5vdAo+IHdvcmsgd2l0aCBQU1IyLCBidXQgdGhlIHJl
bWFuaW5nIGlzc3VlIHdpbGwgYmUgZml4ZWQgaW4gYSBmdXR1cmUgcGF0Y2guCj4gCj4gQ2M6IEd3
YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KPiBDYzogUmFkaGFrcmlz
aG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiBSZXBvcnRlZC1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBGaXhl
czogNzhiNzcyZTFhMDFmICgiZHJtL2k5MTUvZGlzcGxheTogRmlsbCBQU1Igc3RhdGUgZHVyaW5n
IGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24gcmVhZCBvdXQiKQo+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKy0tLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMGMy
YjE5NDAwNmY4Li41MWY0OTkyNzFjYzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC04NTQ4LDYgKzg1NDgsMTEgQEAgaW50ZWxfcGlw
ZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9j
b25maWcsCj4gICAJCWJwX2dhbW1hID0gaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNp
b24ocGlwZV9jb25maWcpOwo+ICAgCQlpZiAoYnBfZ2FtbWEpCj4gICAJCQlQSVBFX0NPTkZfQ0hF
Q0tfQ09MT1JfTFVUKGdhbW1hX21vZGUsIGh3LmdhbW1hX2x1dCwgYnBfZ2FtbWEpOwo+ICsKPiAr
CQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfcHNyKTsKPiArCQlQSVBFX0NPTkZfQ0hFQ0tfQk9P
TChoYXNfcHNyMik7Cj4gKwkJUElQRV9DT05GX0NIRUNLX0JPT0woZW5hYmxlX3BzcjJfc2VsX2Zl
dGNoKTsKPiArCQlQSVBFX0NPTkZfQ0hFQ0tfSShkYzNjb19leGl0bGluZSk7Cj4gICAJfQo+ICAg
Cj4gICAJUElQRV9DT05GX0NIRUNLX0JPT0woZG91YmxlX3dpZGUpOwo+IEBAIC04NjMxLDExICs4
NjM2LDYgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCj4gICAJUElQRV9DT05GX0NIRUNLX0kodnJyLmZsaXBs
aW5lKTsKPiAgIAlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIucGlwZWxpbmVfZnVsbCk7Cj4gICAKPiAt
CVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19wc3IpOwo+IC0JUElQRV9DT05GX0NIRUNLX0JPT0wo
aGFzX3BzcjIpOwo+IC0JUElQRV9DT05GX0NIRUNLX0JPT0woZW5hYmxlX3BzcjJfc2VsX2ZldGNo
KTsKPiAtCVBJUEVfQ09ORl9DSEVDS19JKGRjM2NvX2V4aXRsaW5lKTsKPiAtCj4gICAjdW5kZWYg
UElQRV9DT05GX0NIRUNLX1gKPiAgICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfSQo+ICAgI3VuZGVm
IFBJUEVfQ09ORl9DSEVDS19CT09MCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
