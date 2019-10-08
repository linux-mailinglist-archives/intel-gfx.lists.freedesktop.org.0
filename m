Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E983DCF0D0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 04:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79256E03C;
	Tue,  8 Oct 2019 02:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4081F6E03C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 02:30:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 19:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="192457101"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga008.fm.intel.com with ESMTP; 07 Oct 2019 19:30:09 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <52fbfac9-c879-4b45-dd74-fafe62c2432b@linux.intel.com>
 <2674326.ZPvzKFr69O@jkrzyszt-desk.ger.corp.intel.com>
 <7739498.9tyZrNxj5X@jkrzyszt-desk.ger.corp.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <0131be21-0ae3-ac1e-6ee3-c256e3d2a38f@linux.intel.com>
Date: Tue, 8 Oct 2019 10:27:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7739498.9tyZrNxj5X@jkrzyszt-desk.ger.corp.intel.com>
Content-Language: en-US
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
 intel-gfx@lists.freedesktop.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAxMC8xLzE5IDExOjAxIFBNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gSGkg
QmFvbHUsCj4gCj4gT24gVHVlc2RheSwgU2VwdGVtYmVyIDMsIDIwMTkgOTo0MToyMyBBTSBDRVNU
IEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPj4gSGkgQmFvbHUsCj4+Cj4+IE9uIFR1ZXNkYXks
IFNlcHRlbWJlciAzLCAyMDE5IDM6Mjk6NDAgQU0gQ0VTVCBMdSBCYW9sdSB3cm90ZToKPj4+IEhp
IEphbnVzeiwKPj4+Cj4+PiBPbiA5LzIvMTkgNDozNyBQTSwgSmFudXN6IEtyenlzenRvZmlrIHdy
b3RlOgo+Pj4+PiBJIGFtIG5vdCBzYXlpbmcgdGhhdCBrZWVwaW5nIGRhdGEgaXMgbm90IGFjY2Vw
dGFibGUuIEkganVzdCB3YW50IHRvCj4+Pj4+IGNoZWNrIHdoZXRoZXIgdGhlcmUgYXJlIGFueSBv
dGhlciBzb2x1dGlvbnMuCj4+Pj4gVGhlbiByZXZlcnRpbmcgNDU4YjdjOGUwZGRlIGFuZCBhcHBs
eWluZyB0aGlzIHBhdGNoIHN0aWxsIHJlc29sdmVzIHRoZQo+PiBpc3N1ZQo+Pj4+IGZvciBtZS4g
IE5vIGVycm9ycyBhcHBlYXIgd2hlbiBtYXBwaW5ncyBhcmUgdW5tYXBwZWQgb24gZGV2aWNlIGNs
b3NlIGFmdGVyCj4+IHRoZQo+Pj4+IGRldmljZSBoYXMgYmVlbiByZW1vdmVkLCBhbmQgZG9tYWlu
IGluZm8gcHJlc2VydmVkIG9uIGRldmljZSByZW1vdmFsIGlzCj4+Pj4gc3VjY2Vzc2Z1bGx5IHJl
dXNlZCBvbiBkZXZpY2UgcmUtcGx1Zy4KPj4+Cj4+PiBUaGlzIHBhdGNoIGRvZXNuJ3QgbG9vayBn
b29kIHRvIG1lIGFsdGhvdWdoIEkgYWdyZWUgdGhhdCBrZWVwaW5nIGRhdGEgaXMKPj4+IGFjY2Vw
dGFibGUuCj4gCj4gQW55IHByb2dyZXNzIHdpdGggdGhhdD8gIFdoaWNoIG1haWxpbmcgbGlzdCBz
aG91bGQgSSB3YXRjaCBmb3IgdXBkYXRlcz9cCgpXZSBoYWQgYSBob2xpZGF5IGxhc3Qgd2Vlay4g
SSB3aWxsIGdvIGFoZWFkIHdpdGggcmVwcm9kdWNpbmcgaXQgbG9jYWxseS4KRmVlbCBmcmVlIHRv
IGxldCBtZSBrbm93IGlmIHlvdSBoYXZlIGFueSBuZXcgcHJvcG9zYWwuCgpCZXN0IHJlZ2FyZHMs
CkJhb2x1Cgo+IAo+IFRoYW5rcywKPiBKYW51c3oKPiAKPj4+IEl0IHVwZGF0ZXMgZGV2LT5hcmNo
ZGF0YS5pb21tdSwgYnV0IGxlYXZlcyB0aGUgaGFyZHdhcmUKPj4+IGNvbnRleHQvcGFzaWQgdGFi
bGUgdW5jaGFuZ2VkLiBUaGlzIG1pZ2h0IGNhdXNlIHByb2JsZW1zIHNvbWV3aGVyZS4KPj4+Cj4+
Pj4KPj4+PiBJcyB0aGVyZSBhbnl0aGluZyBlbHNlIEkgY2FuIGRvIHRvIGhlbHA/Cj4+Pgo+Pj4g
Q2FuIHlvdSBwbGVhc2UgdGVsbCBtZSBob3cgdG8gcmVwcm9kdWNlIHRoZSBwcm9ibGVtPwo+Pgo+
PiBUaGUgbW9zdCBzaW1wbGUgd2F5IHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUsIGFzc3VtaW5nIHRo
ZXJlIGFyZSBubyBub24tSW50ZWwKPj4gZ3JhcGhpY3MgYWRhcHRlcnMgaW5zdGFsbGVkLCBpcyB0
byBydW4gdGhlIGZvbGxvd2luZyBzaGVsbCBjb21tYW5kczoKPj4KPj4gIyEvYmluL3NoCj4+ICMg
bG9hZCBpOTE1IG1vZHVsZQo+PiBtb2Rwcm9iZSBpOTE1Cj4+ICMgb3BlbiBhbiBpOTE1IGRldmlj
ZSBhbmQga2VlcCBpdCBvcGVuIGluIGJhY2tncm91bmQKPj4gY2F0IC9kZXYvZHJpL2NhcmQwID4v
ZGV2L251bGwgJgo+PiBzbGVlcCAyCj4+ICMgc2ltdWxhdGUgZGV2aWNlIHVucGx1Zwo+PiBlY2hv
IDEgPi9zeXMvY2xhc3MvZHJtL2NhcmQwL2RldmljZS9yZW1vdmUKPj4gIyBtYWtlIHRoZSBiYWNr
Z3JvdW5kIHByb2Nlc3MgY2xvc2UgdGhlIGRldmljZSBvbiBleGl0Cj4+IGtpbGwgJCEKPj4KPj4g
VGhhbmtzLAo+PiBKYW51c3oKPj4KPj4KPj4+IEtlZXBpbmcgdGhlIHBlcgo+Pj4gZGV2aWNlIGRv
bWFpbiBpbmZvIHdoaWxlIGRldmljZSBpcyB1bnBsdWdnZWQgaXMgYSBiaXQgZGFuZ2Vyb3VzIGJl
Y2F1c2UKPj4+IGluZm8tPmRldiBtaWdodCBiZSBhIHdpbGQgcG9pbnRlci4gV2UgbmVlZCB0byB3
b3JrIG91dCBhIGNsZWFuIGZpeC4KPj4+Cj4+Pj4KPj4+PiBUaGFua3MsCj4+Pj4gSmFudXN6Cj4+
Pj4KPj4+Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+PiBCYW9sdQo+Pj4KPj4KPj4KPj4KPj4KPj4KPiAK
PiAKPiAKPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
