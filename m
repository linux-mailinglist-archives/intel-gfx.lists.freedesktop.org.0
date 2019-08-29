Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7824CA1461
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A7D89EFF;
	Thu, 29 Aug 2019 09:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0E089EFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:08:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:08:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="188491561"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Aug 2019 02:08:55 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.21]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.61]) with mapi id 14.03.0439.000;
 Thu, 29 Aug 2019 10:08:54 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: add port info to debugfs
Thread-Index: AQHVXb9JV9sKuGmIlECie++dF7x1RKcRxsgA
Date: Thu, 29 Aug 2019 09:08:54 +0000
Message-ID: <4673eb7efdc859a852caff9cf56e124c9a05029d.camel@intel.com>
References: <20190823094946.5708-1-simon.ser@intel.com>
 <20190828164013.GI7482@intel.com>
In-Reply-To: <20190828164013.GI7482@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.188]
Content-ID: <886197111F13B74F8A6F05C211E9DDF9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: add port info to debugfs
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
 "nanasi.d.navare@intel.com" <nanasi.d.navare@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA4LTI4IGF0IDE5OjQwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgQXVnIDIzLCAyMDE5IGF0IDEyOjQ5OjQ2UE0gKzAzMDAsIFNpbW9uIFNlciB3
cm90ZToNCj4gPiBUaGlzIHBhdGNoIGFkZHMgYSBsaW5lIHdpdGggdGhlIHBvcnQgbmFtZSB0byBj
b25uZWN0b3JzIGluDQo+ID4gZGVidWdmcy9pOTE1X2RlYnVnX2luZm8uIElmIHRoZSBwb3J0IGlz
IFR5cGUtQywgdGhlIFR5cGUtQyBwb3J0IG51bWJlciBpcw0KPiA+IHByaW50ZWQgdG9vLg0KPiA+
IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4NCj4g
PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+IENjOiBNYW5hc2kgTmF2
YXJlIDxuYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gDQo+ID4gUmVzZW5kaW5nIHYy
IHRvIHRoZSBjb3JyZWN0IG1haWxpbmcgbGlzdC4NCj4gPiANCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxMCArKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMNCj4gPiBpbmRleCBiMzkyMjZkN2Y4ZDIuLjRiYTUwOGM5NTRmOCAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+ID4gQEAgLTI1NTcsOSArMjU1NywxMSBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9sdmRzX2luZm8oc3RydWN0IHNlcV9maWxlICptLA0KPiA+ICBzdGF0
aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sDQo+ID4gIAkJ
CQkgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiAgew0KPiA+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsNCj4gPiAg
CXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5l
Y3Rvcihjb25uZWN0b3IpOw0KPiA+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29k
ZXIgPSBpbnRlbF9jb25uZWN0b3ItPmVuY29kZXI7DQo+ID4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqbW9kZTsNCj4gPiArCWVudW0gdGNfcG9ydCB0Y19wb3J0Ow0KPiA+IA0KPiA+ICAJc2Vx
X3ByaW50ZihtLCAiY29ubmVjdG9yICVkOiB0eXBlICVzLCBzdGF0dXM6ICVzXG4iLA0KPiA+ICAJ
CSAgIGNvbm5lY3Rvci0+YmFzZS5pZCwgY29ubmVjdG9yLT5uYW1lLA0KPiA+IEBAIC0yNTc4LDYg
KzI1ODAsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29ubmVjdG9yX2luZm8oc3RydWN0IHNlcV9m
aWxlICptLA0KPiA+ICAJaWYgKCFpbnRlbF9lbmNvZGVyKQ0KPiA+ICAJCXJldHVybjsNCj4gPiAN
Cj4gPiArCWlmIChpbnRlbF9lbmNvZGVyLT5wb3J0ICE9IFBPUlRfTk9ORSkgew0KPiA+ICsJCXNl
cV9wcmludGYobSwgIlx0cG9ydDogJWMiLCBwb3J0X25hbWUoaW50ZWxfZW5jb2Rlci0+cG9ydCkp
Ow0KPiA+ICsJCXRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIGludGVsX2VuY29kZXIt
PnBvcnQpOw0KPiA+ICsJCWlmICh0Y19wb3J0ICE9IFBPUlRfVENfTk9ORSkNCj4gPiArCQkJc2Vx
X3ByaW50ZihtLCAiL1RDIyVkIiwgdGNfcG9ydCArIDEpOw0KPiA+ICsJCXNlcV9wcmludGYobSwg
IlxuIik7DQo+IA0KPiBNYXliZSBqdXN0IHByaW50IGVuY29kZXItPm5hbWUgaW5zdGVhZD8NCg0K
SXQgc2VlbXMgdGhhdCBmb3IgRGlzcGxheVBvcnQgY29ubmVjdG9ycywgdGhlIGVuY29kZXItPm5h
bWUgd2lsbCBiZSBzZXQNCnRvICJEUCA8cG9ydCBuYW1lPiIuIFRoaXMgbWlzc2VzIHRoZSBUeXBl
LUMgcGFydCwgYW5kIHdlIGFscmVhZHkgZXhwb3NlDQp0aGUgY29ubmVjdG9yIHR5cGUuDQoNCj4g
PiArCX0NCj4gPiArDQo+ID4gIAlzd2l0Y2ggKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUpIHsN
Cj4gPiAgCWNhc2UgRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0Og0KPiA+ICAJY2FzZSBE
Uk1fTU9ERV9DT05ORUNUT1JfZURQOg0KPiA+IC0tDQo+ID4gMi4yMi4xDQo+ID4gDQo+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
