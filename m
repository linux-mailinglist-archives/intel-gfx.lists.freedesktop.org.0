Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CF7AD6C9
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 12:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4B6892C8;
	Mon,  9 Sep 2019 10:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9BC892C8;
 Mon,  9 Sep 2019 10:25:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 03:25:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="268032999"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 09 Sep 2019 03:25:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2019 13:25:03 +0300
Date: Mon, 9 Sep 2019 13:25:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Message-ID: <20190909102503.GV7482@intel.com>
References: <20190903091235.32304-1-gwan-gyeong.mun@intel.com>
 <20190903091235.32304-4-gwan-gyeong.mun@intel.com>
 <CAKb7Uvi4aO-im=cBi_xy8QoDhUXsJmuxcL8ewOrMvFbky9Je0g@mail.gmail.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821DC31F@BGSMSX104.gar.corp.intel.com>
 <20190906114255.GS7482@intel.com>
 <CAKb7UvjdjrVtueEDM+eij0LvCrdAbwzUyNpbPde=AZ-7Dega2A@mail.gmail.com>
 <23376377793be0aecd14e08f6cbda7f699a5c761.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23376377793be0aecd14e08f6cbda7f699a5c761.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 3/7] drm: Add DisplayPort colorspace
 property
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "imirkin@alum.mit.edu" <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBTZXAgMDcsIDIwMTkgYXQgMTE6MTk6NTVQTSArMDAwMCwgTXVuLCBHd2FuLWd5ZW9u
ZyB3cm90ZToKPiBPbiBGcmksIDIwMTktMDktMDYgYXQgMDk6MjQgLTA0MDAsIElsaWEgTWlya2lu
IHdyb3RlOgo+ID4gT24gRnJpLCBTZXAgNiwgMjAxOSBhdCA3OjQzIEFNIFZpbGxlIFN5cmrDpGzD
pAo+ID4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPiA+ID4gT24gRnJp
LCBTZXAgMDYsIDIwMTkgYXQgMTE6MzE6NTVBTSArMDAwMCwgU2hhbmthciwgVW1hIHdyb3RlOgo+
ID4gPiA+IAo+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiA+IEZy
b206IElsaWEgTWlya2luIDxpbWlya2luQGFsdW0ubWl0LmVkdT4KPiA+ID4gPiA+IFNlbnQ6IFR1
ZXNkYXksIFNlcHRlbWJlciAzLCAyMDE5IDY6MTIgUE0KPiA+ID4gPiA+IFRvOiBNdW4sIEd3YW4t
Z3llb25nIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+ID4gPiA+ID4gQ2M6IEludGVsIEdy
YXBoaWNzIERldmVsb3BtZW50IDxpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+
ID4gPiA+OyBTaGFua2FyLCBVbWEKPiA+ID4gPiA+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBk
cmktZGV2ZWwgPAo+ID4gPiA+ID4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4KPiA+
ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjQgMy83XSBkcm06IEFkZCBEaXNwbGF5UG9ydCBj
b2xvcnNwYWNlCj4gPiA+ID4gPiBwcm9wZXJ0eQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTbyBob3cg
d291bGQgdGhpcyB3b3JrIHdpdGggYSBEUCsrIGNvbm5lY3Rvcj8gU2hvdWxkIGl0IGxpc3QKPiA+
ID4gPiA+IHRoZSBIRE1JIG9yIERQCj4gPiA+ID4gPiBwcm9wZXJ0aWVzPyBPciBkbyB3ZSBuZWVk
IGEgY3VzdG9tIHByb3BlcnR5IGNoZWNrZXIgd2hpY2ggaXMKPiA+ID4gPiA+IGF3YXJlIG9mIHdo
YXQgaXMKPiA+ID4gPiA+IGN1cnJlbnRseSBwbHVnZ2VkIGluIHRvIHZhbGlkYXRlIHRoZSB2YWx1
ZXM/Cj4gPiA+ID4gCj4gPiA+ID4gQUZBSVUgRm9yIERQKysgY2FzZXMsIHdlIGRldGVjdCB3aGF0
IGtpbmQgb2Ygc2luayBpdHMgZHJpdmluZyBEUAo+ID4gPiA+IG9yIEhETUkgKHdpdGggYSBwYXNz
aXZlIGRvbmdsZSkuCj4gPiA+ID4gQmFzZWQgb24gdGhlIHR5cGUgb2Ygc2luayBkZXRlY3RlZCwg
d2Ugc2hvdWxkIGV4cG9zZSBEUCBvciBIRE1JCj4gPiA+ID4gY29sb3JzcGFjZXMgdG8gdXNlcnNw
YWNlLgo+ID4gPiAKPiA+ID4gRm9yIGk5MTUgRFAgY29ubmVjdG9yIGFsd2F5cyBkcml2ZXMgRFAg
bW9kZSwgSERNSSBjb25uZWN0b3IgYWx3YXlzCj4gPiA+IGRyaXZlcwo+ID4gPiBIRE1JIG1vZGUs
IGV2ZW4gd2hlbiB0aGUgcGh5c2ljYWwgY29ubmVjdG9yIGlzIERQKysuCj4gPiAKPiA+IFJpZ2h0
LCBpOTE1IGNyZWF0ZXMgMiBjb25uZWN0b3JzLCB3aGlsZSBub3V2ZWF1LCByYWRlb24sIGFuZCBh
bWRncHUKPiA+IGNyZWF0ZSAxIGNvbm5lY3RvciAobm90IHN1cmUgYWJvdXQgb3RoZXIgZHJpdmVy
cykgZm9yIGEgc2luZ2xlCj4gPiBwaHlzaWNhbCBEUCsrIHNvY2tldC4gU2luY2Ugd2Ugc3VwcGx5
IHRoZSBsaXN0IG9mIHZhbGlkIHZhbHVlcyBhdCB0aGUKPiA+IHRpbWUgb2YgY3JlYXRpbmcgdGhl
IGNvbm5lY3Rvciwgd2UgY2FuJ3Qga25vdyBhdCB0aGF0IHBvaW50IHdoZXRoZXIKPiA+IGluCj4g
PiB0aGUgZnV0dXJlIGEgSERNSSBvciBEUCB3aWxsIGJlIHBsdWdnZWQgaW50byBpdC4KPiA+IAo+
ID4gICAtaWxpYQo+IElsaWEsIGRvZXMgaXQgbWVhbiB0aGF0IHRoZSBkcm1fY29ubmVjdG9yIHR5
cGUgaXMKPiBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBvcnQgYW5kIHByb3RvY29sIGlzIERQ
KysgbW9kZT8KPiAKPiBBbmQgVmlsbGUgYW5kIFVtYSwgIHdoZW4gd2UgYXJlIHVzZWluZyBkcCBh
Y3RpdmUgZG9uZ2xlIChEUCB0byBIRE1JCj4gZG9uZ2xlIGFuZCBEUCBicmFuY2ggZGV2aWNlIGlz
IEhETUkpIHNob3VsZCB3ZSBleHBvc2UgSERNSSBjb2xvcnNwYWNlPwoKV2Ugc3RpbGwgc2V0IGl0
IHVwIHZpYSBEUCBNU0EvVlNDIG5vPyBJbiB0aGF0IGNhc2UgaXQgc2hvdWxkIGZvbGxvdyB0aGUK
RFAgc3BlYyBJIHRoaW5rLiBMU1BDT04gaXMgcHJvYmFibHkgZGlmZmVyZW50IGJlY2F1c2Ugd2Ug
bWFudWFsbHkgZ2VuZXJhdGUKdGhlIEFWSSBpbmZvZnJhbWUgZm9yIGl0LiBCdXQgSSdtIG5vdCBz
dXJlIGhvdyB3ZSdyZSBnb2luZyB0byByZWNvbmNpbGUKdGhhdCB3aXRoIHRoZSBEUCBzdHVmZiB3
ZSBhbHNvIHNldCB1cCBmb3IgaXQuCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
