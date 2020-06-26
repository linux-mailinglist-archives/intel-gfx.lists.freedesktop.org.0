Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 323F920AE68
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 10:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CC06E4D0;
	Fri, 26 Jun 2020 08:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86156E4B6;
 Fri, 26 Jun 2020 08:27:01 +0000 (UTC)
IronPort-SDR: fC2eE8QvRIMfL34FfZ+Sm1n0K+i80bV5hHSX1s9/hXH54OwOgNQ2YQg0/46JDFMcj3e3NNstc2
 yFiTUDNnkLDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="230007808"
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="230007808"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:27:01 -0700
IronPort-SDR: JiW9xOASwi62zegx47bNaljVWbWqHFKo3GPdfV9gxt63CE/eDlxqy7ACEp014dKxCG1csmksNI
 IyNU0cOtSyfw==
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="453295983"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:27:00 -0700
Message-ID: <1ce855eb72b4bb1205734f46ca95bd770b7ced62.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: =?UTF-8?Q?Micha=C5=82?= Winiarski <michal@hardline.pl>, 
 igt-dev@lists.freedesktop.org
Date: Fri, 26 Jun 2020 10:26:58 +0200
In-Reply-To: <159311468453.202818.18055756190300144808@macragge.hardline.pl>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-7-janusz.krzysztofik@linux.intel.com>
 <159311468453.202818.18055756190300144808@macragge.hardline.pl>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 6/8]
 tests/core_hotunplug: Add 'GEM object' variant
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWljaGHFgiwKClRoYW5rcyBmb3IgcmV2aWV3LgoKT24gVGh1LCAyMDIwLTA2LTI1IGF0IDIx
OjUxICswMjAwLCBNaWNoYcWCIFdpbmlhcnNraSB3cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5
c3p0b2ZpayAoMjAyMC0wNi0yMiAxODo0NDoxMykKPiA+IEdFTSBvYmplY3RzIGJlbG9uZ2luZyB0
byB1c2VyIGZpbGUgZGVzY3JpcHRvcnMgc3RpbGwgb3BlbiBvbiBkZXZpY2UKPiA+IGhvdHVucGx1
ZyBtYXkgZXhoaWJpdCBzdGlsbCBtb3JlIGRyaXZlciBpc3N1ZXMuICBBZGQgYSBzdWJ0ZXN0IHRo
YXQKPiA+IGltcGxlbWVudHMgdGhpcyBzY2VuYXJpby4KPiA+IAo+ID4gdjI6IHJlYmFzZSBvbiB1
cHN0cmVhbQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVz
ei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICB0ZXN0cy9jb3JlX2hv
dHVucGx1Zy5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2Nv
cmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCj4gPiBpbmRleCAxOGE5NjM1
NjQuLmMzMGQ5OGE2OSAxMDA2NDQKPiA+IC0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+
ICsrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+IEBAIC0zNTYsNiArMzU2LDI5IEBAIHN0
YXRpYyB2b2lkIHZtX2hvdHVucGx1Z19sYXRlY2xvc2Uodm9pZCkKPiA+ICAgICAgICAgaGVhbHRo
Y2hlY2soKTsKPiA+ICB9Cj4gPiAgCj4gPiArc3RhdGljIHZvaWQgZ2VtX2hvdHVucGx1Z19sYXRl
Y2xvc2Uodm9pZCkKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBob3R1bnBsdWcgcHJpdjsKPiA+
ICsKPiA+ICsgICAgICAgcHJlcGFyZV9mb3JfcmVzY2FuKCZwcml2KTsKPiA+ICsKPiA+ICsgICAg
ICAgaWd0X3JlcXVpcmVfZ2VtKHByaXYuZmQuZHJtKTsKPiA+ICsKPiA+ICsgICAgICAgbG9jYWxf
ZGVidWcoImNyZWF0aW5nIGEgR0VNIHVzZXIgb2JqZWN0Iik7Cj4gPiArICAgICAgIGlndF9pZ25v
cmVfd2FybihnZW1fY3JlYXRlKHByaXYuZmQuZHJtLCA0MDk2KSk7Cj4gCj4gU2FtZSBhcyBwcmV2
aW91cyBvbmUuCj4gKG5vdGUgLSB3ZSBjb3VsZCBqdXN0IGNoZWNrIGZvciBwcm9wZXIgZXJyb3Ig
d2hlbiB3ZSBhdHRlbXB0IHRvIGNsb3NlIHRoaXMKPiBoYW5kbGUgYWZ0ZXIgdW5wbHVnLCBhbmQg
dGhlIHNhbWUgdGhpbmcgYXBwbGllcyB0byB0aGUgcHJldmlvdXMgb25lIHdpdGggdGhlIHZtKQoK
T2gsIG5vdyBJIHNlZSB3aGF0IHlvdSBtZWFudCBpbiBjYXNlIG9mIHRoZSBhZGRyZXNzIHNwYWNl
IHZhcmlhbnQuCgpJIHdhcyB0aGlua2luZyBhYm91dCB0aGF0LiAgV2UgbWF5IG5lZWQgYW5vdGhl
ciBzdWJ0ZXN0cywgb3IgYSBncm91cCBvZgpzdWJ0ZXN0cywgZm9yIGV4ZXJjaXNpbmcgdGhlIGRy
aXZlcidzIHNhZmV0eSBmcm9tIHBvc3QtaG90dW5wbHVnCmF0dGVtcHRzIHRvIHVzZSB0aGUgcmVt
b3ZlZCBkZXZpY2UsIG5vdCBvbmx5IHRvIGNsb3NlIGl0LiAgSSBkZWNpZGVkIHRvCnByb3ZpZGUg
dGhvc2UgdmFyaWFudHMgbGF0ZXIgYW5kIGNhbGwgdGhlbSAnaG90dW5wbHVnLWxhdGV1c2UqJy4K
Ckhvd2V2ZXIsIG5vdyBJIHNlZSB0aGF0IHdlIG1heSBwZXJmZWN0bHkgZXhlcmNpc2UgdGhlIGRy
aXZlcidzCnJlc2lzdGFuY2UgdG8gbGF0ZSB1c2Ugb2YgYWRkaXRpb25hbCB1c2VyIHJlc291cmNl
cyB3aGlsZSBoYXZpbmcgdGhvc2UKcmVzb3VyY2VzIGFscmVhZHkgY3JlYXRlZC4gIFRoZW4sIGxl
dCBtZSBleHRlbmQgYXBwbGljYWJsZSBtZW1iZXJzIG9mCnRoaXMgcGF0Y2ggc2VyaWVzIHdpdGgg
dGhvc2UgY2hlY2tzLgoKVGhhbmtzLApKYW51c3oKCj4gCj4gTEdUTSBvdGhlcndpc2UuCj4gCj4g
UmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNv
bT4KPiAKPiAtTWljaGHFggoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
