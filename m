Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 415C4AE623
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 10:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 233486E897;
	Tue, 10 Sep 2019 08:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B496E895
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 08:58:42 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 01:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="189280248"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Sep 2019 01:58:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 11:58:38 +0300
Date: Tue, 10 Sep 2019 11:58:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190910085838.GC7482@intel.com>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190910073931.GY7482@intel.com>
 <156810436552.30942.9639859021370310826@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156810436552.30942.9639859021370310826@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Allow clobbering gpu
 resets if the display is off
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDk6MzI6NDVBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyasOkbMOkICgyMDE5LTA5LTEwIDA4OjM5OjMxKQo+ID4g
T24gTW9uLCBTZXAgMDksIDIwMTkgYXQgMTE6NTU6MzVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID4gPiBJZiB0aGUgZGlzcGxheSBpcyBpbmFjdGl2ZSwgd2UgbmVlZCBub3Qgd29ycnkg
YWJvdXQgdGhlIGdwdSByZXNldAo+ID4gPiBjbG9iYmVyaW5nIHRoZSBkaXNwbGF5IQo+ID4gPiAK
PiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
YyB8IDE4ICsrKysrKysrKysrKysrKysrLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmVzZXQuYwo+ID4gPiBpbmRleCBiOWQ4NGQ1MmU5ODYuLmZlNTcyOTZiNzkwYyAxMDA2
NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gPiA+IEBAIC03
LDYgKzcsNyBAQAo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+Cj4gPiA+ICAjaW5j
bHVkZSA8bGludXgvc3RvcF9tYWNoaW5lLmg+Cj4gPiA+ICAKPiA+ID4gKyNpbmNsdWRlICJkaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCIKPiA+ID4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCIKPiA+ID4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX292ZXJsYXkuaCIKPiA+
ID4gIAo+ID4gPiBAQCAtNzI5LDYgKzczMCwyMSBAQCBzdGF0aWMgdm9pZCBub3Bfc3VibWl0X3Jl
cXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKPiA+ID4gICAgICAgaW50ZWxfZW5n
aW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2luZSk7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gK3N0
YXRpYyBib29sIHJlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ID4g
PiArCj4gPiA+ICsgICAgIGlmICghSU5URUxfSU5GTyhpOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJz
X2Rpc3BsYXkpCj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gPiArCj4gPiA+
ICsgICAgIGZvcl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgY3J0Yykgewo+ID4gPiArICAg
ICAgICAgICAgIGlmIChjcnRjLT5hY3RpdmUpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gdHJ1ZTsKPiA+ID4gKyAgICAgfQo+ID4gCj4gPiBUaGlzIGZlZWxzIHJhY3kuIGNydGMt
PmFjdGl2ZSBnZXRzIHNldCBzb21ld2hlcmUgaW4gdGhlIG1pZGRsZSBvZiB0aGUKPiA+IG1vZGVz
ZXQsIHNvIGxvb2tzIGxpa2Ugbm93IHdlIGNvdWxkIGNsb2JiZXIgYWxsIHRoZSBzdHVmZiB3ZSd2
ZSBhbHJlYWR5Cj4gPiBzZXQgdXAgYmVmb3JlIGNydGMtPmFjdGl2ZSBnb3Qgc2V0Lgo+IAo+IFRo
ZSBxdWVzdGlvbiBpcywgZG9lcyBpdCBtYXR0ZXI/IEFmdGVyIHdlIHVud2VkZ2UsIHdlIGNsb2Ji
ZXIgYWdhaW4gZm9yCj4gcmVhbHouIE5vdCB0aGF0IHdlIGhhdmUgYW55dGhpbmcgZGVsaWJlcmF0
ZWx5IHRyeWluZyB0byByYWNlCj4gd2VkZ2UtdnMtbW9kZXNldChvbi9vZmYpLgoKTm90IHN1cmUu
IEJ1dCBJIHN1c3BlY3QgdGhlIGh3IG1pZ2h0IGRlY2lkZSB0byBoYW5nIHRoZSBib3ggaWYgZWcu
CnRoZSBQTEwgaXMgYm9ya2VkIHdoZW4gd2UgdG91Y2ggc29tZXRoaW5nIHRoYXQgcmVhbGx5IG5l
ZWRzIHRoZSBjbG9jay4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
