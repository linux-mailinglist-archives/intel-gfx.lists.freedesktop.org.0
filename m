Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4E9AA4C4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 15:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B907C6E0D4;
	Thu,  5 Sep 2019 13:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80B346E0D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 13:40:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 06:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="267023184"
Received: from dkelle1-mobl.ger.corp.intel.com (HELO intel.intel)
 ([10.251.95.188])
 by orsmga001.jf.intel.com with ESMTP; 05 Sep 2019 06:40:53 -0700
Date: Thu, 5 Sep 2019 16:40:52 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20190905134052.GA6566@intel.intel>
References: <20190905113455.31703-1-mika.kuoppala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905113455.31703-1-mika.kuoppala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Register state context
 definition for Gen12
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
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMDI6MzQ6NTVQTSArMDMwMCwgTWlrYSBLdW9wcGFsYSB3
cm90ZToKPiBGcm9tOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+
IAo+IEdlbjEyIGhhcyBzdWJ0bGUgY2hhbmdlcyBpbiB0aGUgcmVnIHN0YXRlIGNvbnRleHQgb2Zm
c2V0cyAoc29tZSBmaWVsZHMKPiBhcmUgZ29uZSwgc29tZSBhcmUgaW4gYSBkaWZmZXJlbnQgbG9j
YXRpb24pLCBjb21wYXJlZCB0byBwcmV2aW91cyBHZW5zLgo+IAo+IFRoZSBzaW1wbGVzdCBhcHBy
b2FjaCBzZWVtcyB0byBiZSBrZWVwaW5nIEdlbjEyIChhbmQgZnV0dXJlIHBsYXRmb3JtKQo+IGNo
YW5nZXMgYXBhcnQgZnJvbSB0aGUgcHJldmlvdXMgZ2Vucywgd2hpbGUga2VlcGluZyB0aGUgcmVn
aXN0ZXJzIHRoYXQKPiBhcmUgY29udGlndW91cyBpbiBmdW5jdGlvbnMgd2UgY2FuIHJldXNlLgo+
IAo+IHYyOiBhbGlhcywgdmlydHVhbCBlbmdpbmUsIHJwY3MsIHBydW5lIHVudXNlZCByZWdzIChN
aWthKQo+IAo+IEJzcGVjOiA0NjI1NQo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4
LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVy
cnlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgoKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
