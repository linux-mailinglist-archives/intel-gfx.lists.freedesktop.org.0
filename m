Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B78E131A123
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 16:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74726E3BB;
	Fri, 12 Feb 2021 15:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A537A6E3BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 15:10:56 +0000 (UTC)
IronPort-SDR: ALIvP6fVK+uf9/kDp1KG/bLP07PwUK/uaE4uQyoh8eqZjDuX7/PQ2HxWSmqMSN5fRN3ukfJCCc
 sSbtks0/1IQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="178921339"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="178921339"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 07:10:48 -0800
IronPort-SDR: 8a8/g7G/0WCZTbx1aygRuNuMuJ9kXLfT4mW1KPlouEUczxxh2c6V4MHbgBntAaAV4laD0gyo5F
 dfQtExyXuggw==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="360435364"
Received: from adithyav-mobl.amr.corp.intel.com (HELO [10.209.163.41])
 ([10.209.163.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 07:10:47 -0800
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <47b7ce5c-a758-90b3-ff65-7870d7205576@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8b07434c-5cfe-4a37-e664-72f424dbc7a2@intel.com>
Date: Fri, 12 Feb 2021 07:10:45 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <47b7ce5c-a758-90b3-ff65-7870d7205576@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 00/14] Introduce Intel PXP
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
Cc: Gaurav Kumar <kumar.gaurav@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIvMTIvMjAyMSA1OjIzIEFNLCBMaW9uZWwgTGFuZHdlcmxpbiB3cm90ZToKPiBJIGp1c3Qg
Z2F2ZSBhIHRyeSB0byB0aGlzIG5ldyBpdGVyYXRpb24gYW5kIGl0J3MgYXBwYXJlbnRseSBmYWls
aW5nIHRvIAo+IGVuYWJsZSBQWFAgb24gYSBtYWNoaW5lIHdpdGggdGhpcyBwY2lJRCA6IDB4OWE2
OC4KPgoKV2hhdCBlcnJvciBhcmUgeW91IHNlZWluZz8KCkRhbmllbGUKCj4gLUxpb25lbAo+Cj4g
T24gMDYvMDIvMjAyMSAwNDowOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4gUFhQ
IChQcm90ZWN0ZWQgWGUgUGF0aCkgaXMgYW4gaTkxNSBjb21wb25lbnQsIGF2YWlsYWJsZSBvbgo+
PiBHRU4xMissIHRoYXQgaGVscHMgdG8gZXN0YWJsaXNoIHRoZSBoYXJkd2FyZSBwcm90ZWN0ZWQg
c2Vzc2lvbgo+PiBhbmQgbWFuYWdlIHRoZSBzdGF0dXMgb2YgdGhlIGFsaXZlIHNvZnR3YXJlIHNl
c3Npb24sIGFzIHdlbGwKPj4gYXMgaXRzIGxpZmUgY3ljbGUuCj4+Cj4+IEknbSB0YWtpbmcgb3Zl
ciB0aGlzIHNlcmllcyBmcm9tIFNlYW4uIEkndmUgc2lnbmlmaWNhbnRseSByZXdvcmtlZCB0aGUK
Pj4gY29kZSBzaW5jZSBoaXMgbGFzdCByZXZpc2lvbmkgWzFdLCBpbmNsdWRpbmcgYSBkaWZmZXJl
bnQgcGF0Y2ggc3BsaXQsIHNvCj4+IEkndmUgcmVzZXQgdGhlIHNlcmllcyByZXZpc2lvbiBjb3Vu
dC4gSSBiZWxpZXZlIEkndmUgYWRkcmVzc2VkIG1vc3Qgb2YKPj4gdGhlIHBlbmRpbmcgY29tbWVu
dHMsIGJ1dCBwbGVhc2UgcG9pbnQgb3V0IGF5dGhpbmcgSSd2ZSBtaXNzZWQuCj4+Cj4+IFN0aWxs
IFJGQyBmb3IgMiByZWFzb25zOgo+PiAtIG11dGV4IHVzYWdlIG5lZWRzIGEgYml0IG1vcmUgcmV3
b3JraW5nCj4+IC0gdmVyeSBsaWdodGx5IHRlc3RlZAo+Pgo+PiBbMV0gaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84NDYyMC8KPj4KPj4gQ2M6IEh1YW5nIFNlYW4gWiA8
c2Vhbi56Lmh1YW5nQGludGVsLmNvbT4KPj4gQ2M6IEdhdXJhdiBLdW1hciA8a3VtYXIuZ2F1cmF2
QGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+Pgo+PiBBbnNo
dW1hbiBHdXB0YSAoMSk6Cj4+IMKgwqAgZHJtL2k5MTUvcHhwOiBBZGQgcGxhbmUgZGVjcnlwdGlv
biBzdXBwb3J0Cj4+Cj4+IEJvbW11IEtyaXNobmFpYWggKDIpOgo+PiDCoMKgIGRybS9pOTE1L3Vh
cGk6IGludHJvZHVjZSBkcm1faTkxNV9nZW1fY3JlYXRlX2V4dAo+PiDCoMKgIGRybS9pOTE1L3B4
cDogVXNlciBpbnRlcmZhY2UgZm9yIFByb3RlY3RlZCBidWZmZXIKPj4KPj4gRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyAoNSk6Cj4+IMKgwqAgZHJtL2k5MTUvcHhwOiBEZWZpbmUgUFhQIGNvbXBvbmVu
dCBpbnRlcmZhY2UKPj4gwqDCoCBkcm0vaTkxNS9weHA6IGRlZmluZSBQWFAgZGV2aWNlIGZsYWcg
YW5kIGtjb25maWcKPj4gwqDCoCBkcm0vaTkxNS9weHA6IGFsbG9jYXRlIGEgdmNzIGNvbnRleHQg
Zm9yIHB4cCB1c2FnZQo+PiDCoMKgIGRybS9pOTE1L3B4cDogc2V0IEtDUiByZWcgaW5pdCBkdXJp
bmcgdGhlIGJvb3QgdGltZQo+PiDCoMKgIGRybS9pOTE1L3B4cDogZW5hYmxlIFBYUCBmb3IgaW50
ZWdyYXRlZCBHZW4xMgo+Pgo+PiBIdWFuZywgU2VhbiBaICg1KToKPj4gwqDCoCBkcm0vaTkxNS9w
eHA6IEltcGxlbWVudCBmdW5jcyB0byBjcmVhdGUgdGhlIFRFRSBjaGFubmVsCj4+IMKgwqAgZHJt
L2k5MTUvcHhwOiBDcmVhdGUgdGhlIGFyYml0cmFyeSBzZXNzaW9uIGFmdGVyIGJvb3QKPj4gwqDC
oCBkcm0vaTkxNS9weHA6IEltcGxlbWVudCBhcmIgc2Vzc2lvbiB0ZWFyZG93bgo+PiDCoMKgIGRy
bS9pOTE1L3B4cDogSW1wbGVtZW50IFBYUCBpcnEgaGFuZGxlcgo+PiDCoMKgIGRybS9pOTE1L3B4
cDogRW5hYmxlIFBYUCBwb3dlciBtYW5hZ2VtZW50Cj4+Cj4+IFZpdGFseSBMdWJhcnQgKDEpOgo+
PiDCoMKgIG1laTogcHhwOiBleHBvcnQgcGF2cCBjbGllbnQgdG8gbWUgY2xpZW50IGJ1cwo+Pgo+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgMTEgKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDkgKwo+PiDCoCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jwqDCoCB8wqAgMjEgKy0KPj4gwqAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuY8KgwqAgfMKgIDM0ICsrKwo+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5owqDCoCB8wqDC
oCA2ICsKPj4gwqAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5o
IHzCoMKgIDEgKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRl
LmPCoMKgwqAgfMKgIDY4ICsrKysrLQo+PiDCoCAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmPCoMKgwqAgfMKgwqAgOSArCj4+IMKgIC4uLi9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5owqAgfMKgwqAgNSArCj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDUgKwo+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuY8KgwqDCoMKgwqDCoMKgIHzC
oMKgIDcgKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoCA2ICsKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfdHlwZXMuaMKgwqDCoMKgwqAgfMKgwqAgMyArCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDcgKy0KPj4gwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgIDEwICsKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuY8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKwo+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5owqDCoMKgwqDCoCB8wqDCoCAx
ICsKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jwqDCoMKgwqDCoMKg
wqDCoMKgIHwgMTA3ICsrKysrKysrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHAuaMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNTQgKysrKwo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5jwqDCoMKgwqDCoCB8IDIyNyArKysrKysrKysrKysr
KysrKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5owqDCoMKg
wqDCoCB8wqAgMTUgKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9p
cnEuY8KgwqDCoMKgwqAgfCAxNDcgKysrKysrKysrKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvcHhwL2ludGVsX3B4cF9pcnEuaMKgwqDCoMKgwqAgfMKgIDMzICsrKwo+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3BtLmPCoMKgwqDCoMKgwqAgfMKgIDk0ICsrKysr
KysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9wbS5owqDCoMKgwqDC
oMKgIHzCoCAzNiArKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9z
ZXNzaW9uLmPCoCB8IDEyMyArKysrKysrKysrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4
cC9pbnRlbF9weHBfc2Vzc2lvbi5owqAgfMKgIDE3ICsrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3B4cC9pbnRlbF9weHBfdGVlLmPCoMKgwqDCoMKgIHwgMjAwICsrKysrKysrKysrKysrKwo+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5owqDCoMKgwqDCoCB8
wqAgMTcgKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90eXBlcy5o
wqDCoMKgIHzCoCAyOSArKysKPj4gwqAgZHJpdmVycy9taXNjL21laS9LY29uZmlnwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKwo+PiDCoCBkcml2ZXJz
L21pc2MvbWVpL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoCAxICsKPj4gwqAgZHJpdmVycy9taXNjL21laS9weHAvS2NvbmZpZ8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEzICsKPj4gwqAgZHJpdmVycy9taXNjL21laS9w
eHAvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA3ICsKPj4g
wqAgZHJpdmVycy9taXNjL21laS9weHAvbWVpX3B4cC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwgMjMwICsrKysrKysrKysrKysrKysrKwo+PiDCoCBkcml2ZXJzL21pc2MvbWVpL3B4
cC9tZWlfcHhwLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDE4ICsrCj4+IMKg
IGluY2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgIDEgKwo+PiDCoCBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNl
LmjCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQ1ICsrKysKPj4gwqAgaW5jbHVkZS91YXBpL2RybS9p
OTE1X2RybS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA3MCArKysr
KysKPj4gwqAgNDAgZmlsZXMgY2hhbmdlZCwgMTY4NSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2lu
dGVsX3B4cC5jCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9w
eHAvaW50ZWxfcHhwLmgKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3B4cC9pbnRlbF9weHBfY21kLmMKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmgKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfaXJxLmMKPj4gwqAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfaXJxLmgKPj4gwqAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfcG0u
Ywo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVs
X3B4cF9wbS5oCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9w
eHAvaW50ZWxfcHhwX3Nlc3Npb24uYwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9zZXNzaW9uLmgKPj4gwqAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMKPj4gwqAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmgKPj4g
wqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBf
dHlwZXMuaAo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9taXNjL21laS9weHAvS2Nv
bmZpZwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9taXNjL21laS9weHAvTWFrZWZp
bGUKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAu
Ywo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9taXNjL21laS9weHAvbWVpX3B4cC5o
Cj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJm
YWNlLmgKPj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
