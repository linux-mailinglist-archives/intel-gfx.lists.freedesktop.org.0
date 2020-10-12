Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2086A28B081
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 10:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C636E22F;
	Mon, 12 Oct 2020 08:45:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3165D6E22F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 08:45:19 +0000 (UTC)
IronPort-SDR: 1ihjE/XTKYgKrfV1vlknid9ASOcHRmw7VQIzM/LTOIzhMTe7R2HPiNLF+iXptemIIgMdsPSJJF
 anKVFbEzKFdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="165765976"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="165765976"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 01:45:17 -0700
IronPort-SDR: dRqT+ZMfCQGeam5bOf0lovKBjTKZDVf3sJIcKcMjl1w0YRl6x9nU3ddhqLbiHDWO03k4U53lr/
 YOCXdKC8ds6w==
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="529872823"
Received: from ereuven9-mobl1.ger.corp.intel.com (HELO [10.252.38.175])
 ([10.252.38.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 01:45:15 -0700
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
 <e999e371-6d36-ffea-542f-a5f4b230b0ed@linux.intel.com>
 <c2af9a9d-1cae-b8f7-a0b3-880574060a23@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8bac9e91-36a0-c1d6-a887-4d60567ac75a@linux.intel.com>
Date: Mon, 12 Oct 2020 09:44:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c2af9a9d-1cae-b8f7-a0b3-880574060a23@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 0/7] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: Intel-gfx@lists.freedesktop.org, Ashok Raj <ashok.raj@intel.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI5LzA5LzIwMjAgMDE6MTEsIEx1IEJhb2x1IHdyb3RlOgo+IEhpIFR2cnRrbywKPiAKPiBP
biA5LzI4LzIwIDU6NDQgUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Pgo+PiBPbiAyNy8wOS8y
MDIwIDA3OjM0LCBMdSBCYW9sdSB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IFRoZSBwcmV2aW91cyBw
b3N0IG9mIHRoaXMgc2VyaWVzIGNvdWxkIGJlIGZvdW5kIGhlcmUuCj4+Pgo+Pj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMjAyMDA5MTIwMzIyMDAuMTE0ODktMS1iYW9sdS5s
dUBsaW51eC5pbnRlbC5jb20vIAo+Pj4KPj4+Cj4+PiBUaGlzIHZlcnNpb24gaW50cm9kdWNlIGEg
bmV3IHBhdGNoIFs0LzddIHRvIGZpeCBhbiBpc3N1ZSByZXBvcnRlZCBoZXJlLgo+Pj4KPj4+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzUxYTFiYWVjLTQ4ZDEtYzBhYy0xODFi
LTFmYmE5MmFhNDI4ZEBsaW51eC5pbnRlbC5jb20vIAo+Pj4KPj4+Cj4+PiBUaGVyZSBhcmVuJ3Qg
YW55IG90aGVyIGNoYW5nZXMuCj4+Pgo+Pj4gUGxlYXNlIGhlbHAgdG8gdGVzdCBhbmQgcmV2aWV3
Lgo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IGJhb2x1Cj4+Pgo+Pj4gTHUgQmFvbHUgKDMpOgo+
Pj4gwqDCoCBpb21tdTogQWRkIHF1aXJrIGZvciBJbnRlbCBncmFwaGljIGRldmljZXMgaW4gbWFw
X3NnCj4+Cj4+IFNpbmNlIEkgZG8gaGF2ZSBwYXRjaGVzIHRvIGZpeCBpOTE1IHRvIGhhbmRsZSB0
aGlzLCBkbyB3ZSB3YW50IHRvIAo+PiBjby1vcmRpbmF0ZSB0aGUgdHdvIGFuZCBhdm9pZCBoYXZp
bmcgdG8gYWRkIHRoaXMgcXVpcmsgYW5kIHRoZW4gbGF0ZXIgCj4+IHJlbW92ZSBpdD8gT3IgeW91
IHdhbnQgdG8gZ28gdGhlIHN0YWdlZCBhcHByb2FjaD8KPiAKPiBJIGhhdmUgbm8gcHJlZmVyZW5j
ZS4gSXQgZGVwZW5kcyBvbiB3aGljaCBwYXRjaCBnb2VzIGZpcnN0LiBMZXQgdGhlCj4gbWFpbnRh
aW5lcnMgaGVscCBoZXJlLgoKRllJIHdlIGhhdmUgbWVyZ2VkIHRoZSByZXF1aXJlZCBpOTE1IHBh
dGNoZXMgdG8gb3V0IHRyZWUgbGFzdCB3ZWVrIG9yIApzby4gSSAqdGhpbmsqIHRoaXMgbWVhbnMg
dGhleSB3aWxsIGdvIGludG8gNS4xMS4gU28gdGhlIGk5MTUgc3BlY2lmaWMgCndvcmthcm91bmQg
cGF0Y2ggd2lsbCBub3QgYmUgbmVlZGVkIGluIEludGVsIElPTU1VLgoKUmVnYXJkcywKClR2cnRr
bwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
