Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 720981CCC9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 18:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A0D892B8;
	Tue, 14 May 2019 16:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E164A892B6;
 Tue, 14 May 2019 16:18:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 09:18:43 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga008.jf.intel.com with ESMTP; 14 May 2019 09:18:43 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 14 May 2019 09:18:42 -0700
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 14 May 2019 09:18:42 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.39]) with mapi id 14.03.0415.000;
 Tue, 14 May 2019 21:48:39 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v9 12/13] video/hdmi: Add Unpack function for DRM infoframe
Thread-Index: AQHVBcmuCSmtJcOJrEisR/9yV+KeGKZpIjSAgAGzYxA=
Date: Tue, 14 May 2019 16:18:39 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82025AD3@BGSMSX104.gar.corp.intel.com>
References: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
 <1557340733-9629-13-git-send-email-uma.shankar@intel.com>
 <20190513194935.GV24299@intel.com>
In-Reply-To: <20190513194935.GV24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjg1OWQ5ZDItZGVlNi00NTMwLWFiZjQtYmM3MmUwMzllN2Q4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiakZ0VTJucXcrVWsrdFJMTVgyaStnV25ucFJoXC85NUJyZVNSREtoTU1nVmc4T0tXUzhxN2NndUlLZmhiWFA0WWIifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v9 12/13] video/hdmi: Add Unpack function for DRM
 infoframe
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
Cc: "dcastagna@chromium.org" <dcastagna@chromium.org>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>, "Lankhorst,
 Maarten" <maarten.lankhorst@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IGRyaS1kZXZlbCBbbWFpbHRv
OmRyaS1kZXZlbC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mIFZp
bGxlDQo+U3lyasOkbMOkDQo+U2VudDogVHVlc2RheSwgTWF5IDE0LCAyMDE5IDE6MjAgQU0NCj5U
bzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+Q2M6IGRjYXN0YWduYUBj
aHJvbWl1bS5vcmc7IGpvbmFzQGt3aWJvby5zZTsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsNCj5lbWlsLmwudmVsaWtvdkBnbWFpbC5jb207IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7DQo+c2VhbnBhdWxAY2hyb21pdW0ub3JnOyBTeXJqYWxhLCBWaWxsZSA8dmlsbGUu
c3lyamFsYUBpbnRlbC5jb20+OyBMYW5raG9yc3QsIE1hYXJ0ZW4NCj48bWFhcnRlbi5sYW5raG9y
c3RAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFJlOiBbdjkgMTIvMTNdIHZpZGVvL2hkbWk6IEFkZCBV
bnBhY2sgZnVuY3Rpb24gZm9yIERSTSBpbmZvZnJhbWUNCj4NCj5PbiBUaHUsIE1heSAwOSwgMjAx
OSBhdCAxMjowODo1MkFNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4+IEFkZGVkIHVucGFj
ayBmdW5jdGlvbiBmb3IgRFJNIGluZm9mcmFtZSBmb3IgZHluYW1pYyByYW5nZSBhbmQNCj4+IG1h
c3RlcmluZyBpbmZvZnJhbWUgcmVhZG91dC4NCj4+DQo+PiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgZHJpdmVy
cy92aWRlby9oZG1pLmMgfCA1NA0KPj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKw0KPj4gIGluY2x1ZGUvbGludXgvaGRtaS5oIHwgIDEgKw0KPj4g
IDIgZmlsZXMgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3ZpZGVvL2hkbWkuYyBiL2RyaXZlcnMvdmlkZW8vaGRtaS5jIGluZGV4DQo+PiA3MTdl
ZDdmYi4uMTEwZDQwNSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvdmlkZW8vaGRtaS5jDQo+PiAr
KysgYi9kcml2ZXJzL3ZpZGVvL2hkbWkuYw0KPj4gQEAgLTE4MDEsNiArMTgwMSw1NyBAQCBzdGF0
aWMgaW50IGhkbWlfYXVkaW9faW5mb2ZyYW1lX3VucGFjayhzdHJ1Y3QNCj4+IGhkbWlfYXVkaW9f
aW5mb2ZyYW1lICpmcmFtZSwgIH0NCj4+DQo+PiAgLyoqDQo+PiArICogaGRtaV9kcm1faW5mb2Zy
YW1lX3VucGFjaygpIC0gdW5wYWNrIGJpbmFyeSBidWZmZXIgdG8gYSBIRE1JIERSTQ0KPj4gK2lu
Zm9mcmFtZQ0KPj4gKyAqIEBmcmFtZTogSERNSSBEUk0gaW5mb2ZyYW1lDQo+PiArICogQGJ1ZmZl
cjogc291cmNlIGJ1ZmZlcg0KPj4gKyAqIEBzaXplOiBzaXplIG9mIGJ1ZmZlcg0KPj4gKyAqDQo+
PiArICogVW5wYWNrcyB0aGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIGJpbmFyeSBAYnVmZmVy
IGludG8gYQ0KPj4gK3N0cnVjdHVyZWQNCj4+ICsgKiBAZnJhbWUgb2YgdGhlIEhETUkgRHluYW1p
YyBSYW5nZSBhbmQgTWFzdGVyaW5nIChEUk0pIGluZm9ybWF0aW9uIGZyYW1lLg0KPj4gKyAqIEFs
c28gdmVyaWZpZXMgdGhlIGNoZWNrc3VtIGFzIHJlcXVpcmVkIGJ5IHNlY3Rpb24gNS4zLjUgb2Yg
dGhlDQo+PiArSERNSSAxLjQNCj4+ICsgKiBzcGVjaWZpY2F0aW9uLg0KPj4gKyAqDQo+PiArICog
UmV0dXJucyAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUu
DQo+PiArICovDQo+PiArc3RhdGljIGludCBoZG1pX2RybV9pbmZvZnJhbWVfdW5wYWNrKHN0cnVj
dCBoZG1pX2RybV9pbmZvZnJhbWUgKmZyYW1lLA0KPj4gKwkJCQkgICAgIGNvbnN0IHZvaWQgKmJ1
ZmZlciwgc2l6ZV90IHNpemUpIHsNCj4+ICsJY29uc3QgdTggKnB0ciA9IGJ1ZmZlcjsNCj4+ICsJ
aW50IHJldDsNCj4+ICsNCj4+ICsJaWYgKHNpemUgPCBIRE1JX0lORk9GUkFNRV9TSVpFKERSTSkp
DQo+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4+ICsNCj4+ICsJaWYgKHB0clswXSAhPSBIRE1JX0lO
Rk9GUkFNRV9UWVBFX0RSTSB8fA0KPj4gKwkgICAgcHRyWzFdICE9IDEgfHwNCj4+ICsJICAgIHB0
clsyXSAhPSBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSkNCj4+ICsJCXJldHVybiAtRUlOVkFMOw0K
Pj4gKw0KPj4gKwlpZiAoaGRtaV9pbmZvZnJhbWVfY2hlY2tzdW0oYnVmZmVyLCBIRE1JX0lORk9G
UkFNRV9TSVpFKERSTSkpICE9IDApDQo+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4+ICsNCj4+ICsJ
cmV0ID0gaGRtaV9kcm1faW5mb2ZyYW1lX2luaXQoZnJhbWUpOw0KPj4gKwlpZiAocmV0KQ0KPj4g
KwkJcmV0dXJuIHJldDsNCj4+ICsNCj4+ICsJZnJhbWUtPmxlbmd0aCA9IHB0clsyXTsNCj4NCj5U
aGUgbGVuZ3RoIGhhbmRsaW5nIGlzIGluY29uc2lzdG5ldCBiZXR3ZWVuIHRoZSBjb21wdXRlIGFu
ZCByZWFkb3V0IHNpZGVzLiBJIHdvdWxkDQo+c3VnZ2VzdCBmb3Igbm93IGp1c3QgcHV0IHRoZSBs
ZW5ndGggaW5pdGlhbGl6YXRpb24gaW50byBoZG1pX2RybV9pbmZvZnJhbWVfaW5pdCgpIChhbmQN
Cj5yZW1vdmUgaXQgZnJvbSB0aGUgZHJtIGNvZGUpLCBhbmQgY2hlY2sgaXQgaW4gdGhlIGNoZWNr
X29ubHkoKS4gV2UgY2FuIHJldmlzaXQgaXQNCj5pZi93aGVuIG90aGVyIG1ldGFkYXRhIGZvcm1h
dHMgYmVjb21lIHJlbGV2YW50Lg0KDQpTdXJlLCB3aWxsIHVwZGF0ZSB0aGlzLg0KDQo+PiArCXB0
ciArPSBIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRTsNCj4+ICsNCj4+ICsJZnJhbWUtPmVvdGYg
PSBwdHJbMF0gJiAweDc7DQo+PiArCWZyYW1lLT5tZXRhZGF0YV90eXBlID0gcHRyWzFdICYgMHg3
Ow0KPj4gKw0KPj4gKwltZW1jcHkoJmZyYW1lLT5kaXNwbGF5X3ByaW1hcmllcywgJnB0clsyXSwg
MTIpOw0KPj4gKwltZW1jcHkoJmZyYW1lLT53aGl0ZV9wb2ludCwgJnB0clsxNF0sIDQpOw0KPg0K
PkVuZGlhbm5lc3MgZmFpbC4NCg0KT2ssIHdpbGwgZXhwbGljaXRseSBjb3B5IHRoZXNlLg0KDQo+
PiArDQo+PiArCWZyYW1lLT5tYXhfZGlzcGxheV9tYXN0ZXJpbmdfbHVtaW5hbmNlID0gKHB0clsx
OV0gPDwgOCkgfCBwdHJbMThdOw0KPj4gKwlmcmFtZS0+bWluX2Rpc3BsYXlfbWFzdGVyaW5nX2x1
bWluYW5jZSA9IChwdHJbMjFdIDw8IDgpIHwgcHRyWzIwXTsNCj4+ICsJZnJhbWUtPm1heF9jbGwg
PSAocHRyWzIzXSA8PCA4KSB8IHB0clsyMl07DQo+PiArCWZyYW1lLT5tYXhfZmFsbCA9IChwdHJb
MjVdIDw8IDgpIHwgcHRyWzI0XTsNCj4+ICsNCj4+ICsJcmV0dXJuIDA7DQo+PiArfQ0KPj4gKw0K
Pj4gKy8qKg0KPj4gICAqIGhkbWlfaW5mb2ZyYW1lX3VucGFjaygpIC0gdW5wYWNrIGJpbmFyeSBi
dWZmZXIgdG8gYSBIRE1JIGluZm9mcmFtZQ0KPj4gICAqIEBmcmFtZTogSERNSSBpbmZvZnJhbWUN
Cj4+ICAgKiBAYnVmZmVyOiBzb3VyY2UgYnVmZmVyDQo+PiBAQCAtMTgyNiw2ICsxODc3LDkgQEAg
aW50IGhkbWlfaW5mb2ZyYW1lX3VucGFjayh1bmlvbiBoZG1pX2luZm9mcmFtZQ0KPipmcmFtZSwN
Cj4+ICAJY2FzZSBIRE1JX0lORk9GUkFNRV9UWVBFX0FWSToNCj4+ICAJCXJldCA9IGhkbWlfYXZp
X2luZm9mcmFtZV91bnBhY2soJmZyYW1lLT5hdmksIGJ1ZmZlciwgc2l6ZSk7DQo+PiAgCQlicmVh
azsNCj4+ICsJY2FzZSBIRE1JX0lORk9GUkFNRV9UWVBFX0RSTToNCj4+ICsJCXJldCA9IGhkbWlf
ZHJtX2luZm9mcmFtZV91bnBhY2soJmZyYW1lLT5kcm0sIGJ1ZmZlciwgc2l6ZSk7DQo+PiArCQli
cmVhazsNCj4+ICAJY2FzZSBIRE1JX0lORk9GUkFNRV9UWVBFX1NQRDoNCj4+ICAJCXJldCA9IGhk
bWlfc3BkX2luZm9mcmFtZV91bnBhY2soJmZyYW1lLT5zcGQsIGJ1ZmZlciwgc2l6ZSk7DQo+PiAg
CQlicmVhazsNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2hkbWkuaCBiL2luY2x1ZGUv
bGludXgvaGRtaS5oIGluZGV4DQo+PiAzZDdmMTBmLi5lZTU1YmE1IDEwMDY0NA0KPj4gLS0tIGEv
aW5jbHVkZS9saW51eC9oZG1pLmgNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvaGRtaS5oDQo+PiBA
QCAtNTYsNiArNTYsNyBAQCBlbnVtIGhkbWlfaW5mb2ZyYW1lX3R5cGUgew0KPj4gICNkZWZpbmUg
SERNSV9BVklfSU5GT0ZSQU1FX1NJWkUgICAgMTMNCj4+ICAjZGVmaW5lIEhETUlfU1BEX0lORk9G
UkFNRV9TSVpFICAgIDI1DQo+PiAgI2RlZmluZSBIRE1JX0FVRElPX0lORk9GUkFNRV9TSVpFICAx
MA0KPj4gKyNkZWZpbmUgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUgICAgMjYNCj4+DQo+PiAgI2Rl
ZmluZSBIRE1JX0lORk9GUkFNRV9TSVpFKHR5cGUpCVwNCj4+ICAJKEhETUlfSU5GT0ZSQU1FX0hF
QURFUl9TSVpFICsgSERNSV8gIyMgdHlwZSAjIyBfSU5GT0ZSQU1FX1NJWkUpDQo+PiAtLQ0KPj4g
MS45LjENCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdA0KPj4gZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwNCj4NCj4tLQ0KPlZpbGxlIFN5cmrDpGzDpA0KPkludGVsDQo+X19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj5kcmktZGV2ZWwgbWFp
bGluZyBsaXN0DQo+ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
