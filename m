Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4956B32A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 03:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0D96E1D7;
	Wed, 17 Jul 2019 01:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBD06E1D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 01:28:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 18:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,272,1559545200"; d="scan'208";a="319168737"
Received: from yswansox-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.37.172])
 by orsmga004.jf.intel.com with ESMTP; 16 Jul 2019 18:28:08 -0700
Date: Tue, 16 Jul 2019 18:28:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190717012805.cdrixoa36pmn7ek5@ldmartin-desk1>
References: <20190712210238.5622-1-lucas.demarchi@intel.com>
 <alpine.DEB.2.21.1907170046080.1767@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907170046080.1767@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] x86/gpu: add TGL stolen memory support
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
Cc: Michel Thierry <michel.thierry@intel.com>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMTcsIDIwMTkgYXQgMTI6NDY6NDJBTSArMDIwMCwgVGhvbWFzIEdsZWl4bmVy
IHdyb3RlOgo+T24gRnJpLCAxMiBKdWwgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+Cj4+
IEZyb206IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4+Cj4+IFJl
dXNlIEdlbjExIHN0b2xlbiBtZW1vcnkgY2hhbmdlcyBzaW5jZSBUaWdlciBMYWtlIHVzZXMgdGhl
IHNhbWUgQlNNCj4+IHJlZ2lzdGVyIChhbmQgZm9ybWF0KS4KPj4KPj4gQ2M6IFRob21hcyBHbGVp
eG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+PiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhh
dC5jb20+Cj4+IENjOiBCb3Jpc2xhdiBQZXRrb3YgPGJwQGFsaWVuOC5kZT4KPj4gQ2M6ICJILiBQ
ZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+Cj4+IENjOiB4ODZAa2VybmVsLm9yZwo+PiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+PiBT
aWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
Pj4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4g
LS0tCj4+ICBhcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgfCAxICsKPj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYva2VybmVs
L2Vhcmx5LXF1aXJrcy5jIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jCj4+IGluZGV4
IDZjNGYwMTU0MDgzMy4uNmY2YjFkMDRkYWRmIDEwMDY0NAo+PiAtLS0gYS9hcmNoL3g4Ni9rZXJu
ZWwvZWFybHktcXVpcmtzLmMKPj4gKysrIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5j
Cj4+IEBAIC01NDksNiArNTQ5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lk
IGludGVsX2Vhcmx5X2lkc1tdIF9faW5pdGNvbnN0ID0gewo+PiAgCUlOVEVMX0NOTF9JRFMoJmdl
bjlfZWFybHlfb3BzKSwKPj4gIAlJTlRFTF9JQ0xfMTFfSURTKCZnZW4xMV9lYXJseV9vcHMpLAo+
PiAgCUlOVEVMX0VITF9JRFMoJmdlbjExX2Vhcmx5X29wcyksCj4+ICsJSU5URUxfVEdMXzEyX0lE
UygmZ2VuMTFfZWFybHlfb3BzKSwKPgo+SG93IGV4YWN0bHkgaXMgdGhpcyBzdXBwb3NlZCB0byBi
dWlsZD8KPgoKVGhlIGRlZmluZSBmb3IgdGhpcyBuZXcgcGxhdGZvcm0gaXMgb24gZHJtLWludGVs
IHJlcG9zaXRvcnkuIEZvcgpwcmV2aW91cyBwbGF0Zm9ybXMgd2Ugd2FpdGVkIGZvciBhbiBhY2sg
YW5kIG1lcmdlZCB0aHJvdWdoIG91ciB0cmVlLgpJcyB0aGF0IG9rPwoKdGhhbmtzCkx1Y2FzIERl
IE1hcmNoaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
