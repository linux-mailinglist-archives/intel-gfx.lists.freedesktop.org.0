Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4D3E3179
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0A86E26F;
	Thu, 24 Oct 2019 11:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4A56E26F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:52:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 04:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192161525"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga008.jf.intel.com with ESMTP; 24 Oct 2019 04:52:07 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 04:52:07 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 04:52:07 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 24 Oct 2019 04:52:06 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.237]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 17:22:04 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 2/7] drm/i915/dsi: Configure transcoder operation for
 command mode.
Thread-Index: AQHVgoLap893p+1nYEyr/xE54v3nbqdpXaYAgABfQ9A=
Date: Thu, 24 Oct 2019 11:52:03 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809890F3@BGSMSX108.gar.corp.intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-3-vandita.kulkarni@intel.com>
 <87h83ycr25.fsf@intel.com>
In-Reply-To: <87h83ycr25.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2ExOWYzMjUtMGIyNi00OWJhLWI4ZWQtZWRlNTRkNjllZGIzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJhS25RUGZzeTRkSGtFU2h1b01aUUtBU3hEdTdrdjh4XC9wWndlWkdVSnEwQjFJYVZhMDRqRm14cEtaZ3hJbWs3TyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/dsi: Configure transcoder
 operation for command mode.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMjQsIDIwMTkgNTowOCBQ
TQo+IFRvOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBp
bnRlbC0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47Cj4gS3Vs
a2FybmksIFZhbmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IFN1YmplY3Q6IFJl
OiBbUkZDIDIvN10gZHJtL2k5MTUvZHNpOiBDb25maWd1cmUgdHJhbnNjb2RlciBvcGVyYXRpb24g
Zm9yCj4gY29tbWFuZCBtb2RlLgo+IAo+IE9uIE1vbiwgMTQgT2N0IDIwMTksIFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPiB3cm90ZToKPiA+IENvbmZpZ3VyZSB0
aGUgdHJhbnNjb2RlciB0byBvcGVyYXRlIGluIFRFIEdBVEUgY29tbWFuZCBtb2RlIGFuZCAgdGFr
ZQo+ID4gVEUgZXZlbnRzIGZyb20gR1BJTy4KPiA+IEFsc28gZGlzYWJsZSB0aGUgcGVyaW9kaWMg
Y29tbWFuZCBtb2RlLCB0aGF0IEdPUCB3b3VsZCBoYXZlCj4gPiBwcm9ncmFtbWVkLgo+IAo+IERp
c2N1c3NpbmcgdGhpcyB3aXRoIFZpbGxlLCBpdCBqdXN0IG1pZ2h0IGJlIGEgZ29vZCBpZGVhIHRv
IGVuYWJsZSBjb21tYW5kCj4gbW9kZSAqd2l0aCogdGhlIHBlcmlvZGljIHVwZGF0ZSBmaXJzdC4g
SXQgZG9kZ2VzIGEgYnVuY2ggb2YgaXNzdWVzIHdydAo+IHZibGFua3MgYW5kIHNjYW5saW5lcywg
eWV0IG1vdmVzIHVzIGZvcndhcmQgd2l0aCBjb21tYW5kIG1vZGUuIFNvIGl0Cj4gbWlnaHQgYmUg
YSB2aWFibGUgaW50ZXJtZWRpYXRlIHN0ZXAuClRoYXQgd291bGQgbWVhbiBlbmFibGUgdmJsYW5r
IGFuZCBub3QgZ2V0IFRFLiBJIHdpbGwgY2hlY2sgd2l0aCB0aGlzLgoKVGhhbmtzLApWYW5kaXRh
Cj4gCj4gQlIsCj4gSmFuaS4KPiAKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGth
cm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgMzIKPiA+ICsrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+IGluZGV4IDZlMzk4YzMzYTUy
NC4uOGU2YzA5YTFkYjc4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNs
X2RzaS5jCj4gPiBAQCAtNzA0LDYgKzcwNCwxMCBAQCBnZW4xMV9kc2lfY29uZmlndXJlX3RyYW5z
Y29kZXIoc3RydWN0Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiA+ICAJCQkJdG1wIHw9IFZJ
REVPX01PREVfU1lOQ19QVUxTRTsKPiA+ICAJCQkJYnJlYWs7Cj4gPiAgCQkJfQo+ID4gKwkJfSBl
bHNlIHsKPiA+ICsJCQl0bXAgJj0gfk9QX01PREVfTUFTSzsKPiA+ICsJCQl0bXAgfD0gQ01EX01P
REVfVEVfR0FURTsKPiA+ICsJCQl0bXAgfD0gVEVfU09VUkNFX0dQSU87Cj4gPiAgCQl9Cj4gPgo+
ID4gIAkJSTkxNV9XUklURShEU0lfVFJBTlNfRlVOQ19DT05GKGRzaV90cmFucyksIHRtcCk7IEBA
IC0KPiA5NTMsNiArOTU3LDIyCj4gPiBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfdGlt
ZW91dHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gPiAgCX0KPiA+ICB9Cj4gPgo+
ID4gK3N0YXRpYyB2b2lkIGdlbjExX2RzaV9jb25maWdfdXRpbF9waW4oc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiA+ICsJc3RydWN0IGludGVsX2Rz
aSAqaW50ZWxfZHNpID0gZW5jX3RvX2ludGVsX2RzaSgmZW5jb2Rlci0+YmFzZSk7Cj4gPiArCXUz
MiB0bXA7Cj4gPiArCj4gPiArCS8qIHVzZWQgb25seSBhcyBURSBpL3AgZm9yIERTSTAgZm9yIGR1
YWwgbGluayBURSBpcyBmcm9tIHNsYXZlIERTSTEgKi8KPiA+ICsJaWYgKGlzX3ZpZF9tb2RlKGlu
dGVsX2RzaSkgfHwgKGludGVsX2RzaS0+ZHVhbF9saW5rKSkKPiA+ICsJCXJldHVybjsKPiA+ICsK
PiA+ICsJdG1wID0gSTkxNV9SRUFEKFVUSUxfUElOX0NUTCk7Cj4gPiArCXRtcCB8PSBJQ0xfVVRJ
TF9QSU5fRElSRUNUSU9OOwo+ID4gKwl0bXAgfD0gVVRJTF9QSU5fRU5BQkxFOwo+ID4gKwlJOTE1
X1dSSVRFKFVUSUxfUElOX0NUTCwgdG1wKTsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIHZvaWQK
PiA+ICBnZW4xMV9kc2lfZW5hYmxlX3BvcnRfYW5kX3BoeShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKPiA+ICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlw
ZV9jb25maWcpIEBAIC0KPiA5NzQsNiArOTk0LDkKPiA+IEBAIGdlbjExX2RzaV9lbmFibGVfcG9y
dF9hbmRfcGh5KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gIAkvKiBzZXR1cCBE
LVBIWSB0aW1pbmdzICovCj4gPiAgCWdlbjExX2RzaV9zZXR1cF9kcGh5X3RpbWluZ3MoZW5jb2Rl
cik7Cj4gPgo+ID4gKwkvKiBTaW5jZSB0cmFuc2NvZGVyIGlzIGNvbmZpZ3VyZWQgdG8gdGFrZSBl
dmVudHMgZnJvbSBHUElPICovCj4gPiArCWdlbjExX2RzaV9jb25maWdfdXRpbF9waW4oZW5jb2Rl
cik7Cj4gPiArCj4gPiAgCS8qIHN0ZXAgNGg6IHNldHVwIERTSSBwcm90b2NvbCB0aW1lb3V0cyAq
Lwo+ID4gIAlnZW4xMV9kc2lfc2V0dXBfdGltZW91dHMoZW5jb2Rlcik7Cj4gPgo+ID4gQEAgLTEx
MDQsNiArMTEyNywxNSBAQCBzdGF0aWMgdm9pZAo+IGdlbjExX2RzaV9kZWNvbmZpZ3VyZV90cmFu
Y29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gPiAgCWVudW0gdHJhbnNjb2Rl
ciBkc2lfdHJhbnM7Cj4gPiAgCXUzMiB0bXA7Cj4gPgo+ID4gKwkvKiBkaXNhYmxlIHBlcmlvZGlj
IHVwZGF0ZSBtb2RlICovCj4gPiArCWlmIChpc19jbWRfbW9kZShpbnRlbF9kc2kpKSB7Cj4gPiAr
CQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Cj4gPiArCQkJdG1w
ID0gSTkxNV9SRUFEKElDTF9EU0lfQ01EX0ZSTUNUTChwb3J0KSk7Cj4gPiArCQkJdG1wICY9IH5J
Q0xfUEVSSU9ESUNfRlJBTUVfVVBEQVRFX0VOQUJMRTsKPiA+ICsJCQlJOTE1X1dSSVRFKElDTF9E
U0lfQ01EX0ZSTUNUTChwb3J0KSwgdG1wKTsKPiA+ICsJCX0KPiA+ICsJfQo+ID4gKwo+ID4gIAkv
KiBwdXQgZHNpIGxpbmsgaW4gVUxQUyAqLwo+ID4gIAlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBp
bnRlbF9kc2ktPnBvcnRzKSB7Cj4gPiAgCQlkc2lfdHJhbnMgPSBkc2lfcG9ydF90b190cmFuc2Nv
ZGVyKHBvcnQpOwo+IAo+IC0tCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBo
aWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
