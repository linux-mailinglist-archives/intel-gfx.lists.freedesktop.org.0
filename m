Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E613B2107
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 21:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554B16E982;
	Wed, 23 Jun 2021 19:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4706E982
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 19:21:19 +0000 (UTC)
IronPort-SDR: FXrlFNz9wfmgougCy7QAB70/6ByVYOcl2fI6JUSWRHx0rX0prFJsWjoypJEOCSh0AInu2M23HD
 OZ23AbHCdjLw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207269651"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="207269651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 12:21:17 -0700
IronPort-SDR: sIPAIzOPGhaMWibfKROjNS5HwaZBKN3iegIX2mtucpHlkODDbXT1LH+vSdtocv3WG0DO5O9J57
 lAxt6xP4dzkQ==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="454760465"
Received: from unknown (HELO [10.237.72.175]) ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 12:21:14 -0700
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210616203158.118111-1-jose.souza@intel.com>
 <20210616203158.118111-3-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <ed92cc1d-846d-5a8b-127b-a9f802d188cc@intel.com>
Date: Wed, 23 Jun 2021 22:21:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210616203158.118111-3-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display/adl_p: Implement
 Wa_16011168373
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

TG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+CgpPbiA2LzE2LzIxIDExOjMxIFBNLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOgo+IEFub3RoZXIgV0EgdGhhdCBpcyByZXF1aXJlZCBmb3IgUFNSMi4KPiAK
PiBCU3BlYzogNTQzNjkKPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50
ZWwuY29tPgo+IENjOiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwg
MTUgKysrKysrKysrKysrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgIHwgIDggKysrKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IGM4
ZDU2Mzg3ZDkyMzMuLmU1MDg4MTY5MTFmYWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtMTExMiw2ICsxMTEyLDE0IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gICAJCWlu
dGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsIElHTk9SRV9QU1IyX0hXX1RSQUNL
SU5HLAo+ICAgCQkJICAgICBpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPwo+
ICAgCQkJICAgICBJR05PUkVfUFNSMl9IV19UUkFDS0lORyA6IDApOwo+ICsKPiArCS8qIFdhXzE2
MDExMTY4MzczOmFkbHAgKi8KPiArCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwg
U1RFUF9BMCwgU1RFUF9BMCkgJiYKPiArCSAgICBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkK
PiArCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsCj4gKwkJCSAgICAgVFJBTlNfU0VUX0NPTlRFWFRf
TEFURU5DWShpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLAo+ICsJCQkgICAgIFRSQU5TX1NFVF9D
T05URVhUX0xBVEVOQ1lfTUFTSywKPiArCQkJICAgICBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZ
X1ZBTFVFKDEpKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGJvb2wgcHNyX2ludGVycnVwdF9lcnJv
cl9jaGVjayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IEBAIC0xMjg5LDYgKzEyOTcsMTMg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCj4gICAJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsCj4g
ICAJCQkgICAgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLLCAwKTsKPiAgIAo+ICsJLyog
V2FfMTYwMTExNjgzNzM6YWRscCAqLwo+ICsJaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9w
cml2LCBTVEVQX0EwLCBTVEVQX0EwKSAmJgo+ICsJICAgIGludGVsX2RwLT5wc3IucHNyMl9lbmFi
bGVkKQo+ICsJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwKPiArCQkJICAgICBUUkFOU19TRVRfQ09O
VEVYVF9MQVRFTkNZKGludGVsX2RwLT5wc3IudHJhbnNjb2RlciksCj4gKwkJCSAgICAgVFJBTlNf
U0VUX0NPTlRFWFRfTEFURU5DWV9NQVNLLCAwKTsKPiArCj4gICAJLyogRGlzYWJsZSBQU1Igb24g
U2luayAqLwo+ICAgCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VO
X0NGRywgMCk7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCA0YTk4ZTQ5YzU4
ODEyLi41NjhlNWYxMDhlMmM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTEw
MzY4LDYgKzEwMzY4LDE0IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ICAgI2RlZmluZSBUUkFO
U19NU0FfTUlTQyh0cmFuKSBfTU1JT19UUkFOUzIodHJhbiwgX1RSQU5TQV9NU0FfTUlTQykKPiAg
IC8qIFNlZSBEUF9NU0FfTUlTQ18qIGZvciB0aGUgYml0IGRlZmluaXRpb25zICovCj4gICAKPiAr
I2RlZmluZSBfVFJBTlNfQV9TRVRfQ09OVEVYVF9MQVRFTkNZCQkweDYwMDdDCj4gKyNkZWZpbmUg
X1RSQU5TX0JfU0VUX0NPTlRFWFRfTEFURU5DWQkJMHg2MTA3Qwo+ICsjZGVmaW5lIF9UUkFOU19D
X1NFVF9DT05URVhUX0xBVEVOQ1kJCTB4NjIwN0MKPiArI2RlZmluZSBfVFJBTlNfRF9TRVRfQ09O
VEVYVF9MQVRFTkNZCQkweDYzMDdDCj4gKyNkZWZpbmUgVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5D
WSh0cmFuKQkJX01NSU9fVFJBTlMyKHRyYW4sIF9UUkFOU19BX1NFVF9DT05URVhUX0xBVEVOQ1kp
Cj4gKyNkZWZpbmUgIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1lfTUFTSwkJUkVHX0dFTk1BU0so
MTUsIDApCj4gKyNkZWZpbmUgIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1lfVkFMVUUoeCkJUkVH
X0ZJRUxEX1BSRVAoVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWV9NQVNLLCAoeCkpCj4gKwo+ICAg
LyogTENQTEwgQ29udHJvbCAqLwo+ICAgI2RlZmluZSBMQ1BMTF9DVEwJCQlfTU1JTygweDEzMDA0
MCkKPiAgICNkZWZpbmUgIExDUExMX1BMTF9ESVNBQkxFCQkoMSA8PCAzMSkKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
