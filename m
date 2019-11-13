Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CCDFB0E8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 13:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0257E6E09A;
	Wed, 13 Nov 2019 12:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CBAD6E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 12:58:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 04:58:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="198434096"
Received: from tomaszli-mobl.ger.corp.intel.com (HELO [172.28.171.46])
 ([172.28.171.46])
 by orsmga008.jf.intel.com with ESMTP; 13 Nov 2019 04:58:33 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
References: <20191112224757.25116-1-matthew.d.roper@intel.com>
 <20191112224757.25116-2-matthew.d.roper@intel.com>
 <20191113010921.3saafyl6mo6ien5c@ldmartin-desk1>
From: "Lis, Tomasz" <tomasz.lis@intel.com>
Message-ID: <fa3d2488-bdcc-6d31-7cd2-4dd0be3cfb20@intel.com>
Date: Wed, 13 Nov 2019 13:58:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191113010921.3saafyl6mo6ien5c@ldmartin-desk1>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/tgl: MOCS table update
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
Cc: intel-gfx@lists.freedesktop.org,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTktMTEtMTMgMDI6MDksIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBPbiBUdWUsIE5v
diAxMiwgMjAxOSBhdCAwMjo0Nzo1N1BNIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOgo+PiBUaGUg
YnNwZWMgd2FzIGp1c3QgdXBkYXRlZCB3aXRoIGEgbWlub3IgY29ycmVjdGlvbiB0byBlbnRyeSA2
MSAoaXQKPj4gc2hvdWxkbid0IGhhdmUgaGFkIHRoZSBTQ0YgYml0IHNldCkuCj4+Cj4+IHYyOgo+
PiAtIEFkZCBhIE1PQ1NfRU5UUllfVU5VU0VEKCkgYW5kIHVzZSBpdCB0byBkZWNsYXJlIHRoZQo+
PiDCoCBleHBsaWNpdGx5LXJlc2VydmVkIE1PQ1MgZW50cmllcy4gKEx1Y2FzKQo+PiAtIE1vdmUg
dGhlIHdhcm5pbmcgc3VwcHJlc3Npb24gZnJvbSB0aGUgTWFrZWZpbGUgdG8gYSAjcHJhZ21hIHRo
YXQgb25seQo+PiDCoCBhZmZlY3RzIHRoZSBUR0wgdGFibGUuIChMdWNhcykKPj4KPj4gdjM6Cj4+
IC0gRW50cmllcyAxNiBhbmQgMTcgYXJlIGlkZW50aWNhbCB0byBJQ0wgbm93LCBzbyBubyBuZWVk
IHRvIGV4cGxpY2l0bHkKPj4gwqAgYWRqdXN0IHRoZW0gKG9yIG1lc3Mgd2l0aCBjb21waWxlciB3
YXJuaW5nIG92ZXJyaWRlcykuCj4+Cj4+IEJzcGVjOiA0NTEwMQo+PiBGaXhlczogMmRkZjk5MjE3
OWM0ICgiZHJtL2k5MTUvdGdsOiBEZWZpbmUgTU9DUyBlbnRyaWVzIGZvciBUaWdlcmxha2UiKQo+
PiBDYzogVG9tYXN6IExpcyA8dG9tYXN6Lmxpc0BpbnRlbC5jb20+Cj4+IENjOiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4gQ2M6IEZyYW5jaXNjbyBKZXJleiA8
ZnJhbmNpc2NvLmplcmV6LnBsYXRhQGludGVsLmNvbT4KPj4gQ2M6IEpvbiBCbG9vbWZpZWxkIDxq
b24uYmxvb21maWVsZEBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4KPgo+IFJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPgo+IEx1Y2FzIERlIE1hcmNoaQoKUmV2aWV3
ZWQtYnk6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwuY29tPgoKVG9tYXN6Cgo+Cj4+IC0t
LQo+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCAyICstCj4+IDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIAo+PiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+PiBpbmRleCAwNmUyYWRiZjI3YmUuLjJiOTc3OTkx
Yjc4NSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+PiBAQCAtMjYz
LDcgKzI2Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSAKPj4g
dGlnZXJsYWtlX21vY3NfdGFibGVbXSA9IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgTDNfMV9V
QyksCj4+IMKgwqDCoMKgLyogSFcgU3BlY2lhbCBDYXNlIChEaXNwbGF5YWJsZSkgKi8KPj4gwqDC
oMKgwqBNT0NTX0VOVFJZKDYxLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgTEVfMV9VQyB8IExF
X1RDXzFfTExDIHwgTEVfU0NGKDEpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgTEVfMV9VQyB8
IExFX1RDXzFfTExDLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBMM18zX1dCKSwKPj4gfTsKPj4K
Pj4gLS0gCj4+IDIuMjEuMAo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
