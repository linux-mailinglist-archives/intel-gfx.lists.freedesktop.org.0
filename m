Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F3B2DEA8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 15:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF87C89668;
	Wed, 29 May 2019 13:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40E36E32A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 13:40:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 06:40:27 -0700
X-ExtLoop1: 1
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga001.jf.intel.com with ESMTP; 29 May 2019 06:40:28 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.166]) by
 IRSMSX154.ger.corp.intel.com ([169.254.12.120]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 14:39:23 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2ZXJ0?=
 =?utf-8?Q?_"drm/i915:_Expand_subslice_mask"?=
Thread-Index: AQHVFhMPFlXc2L1v8k6TRcHu/oPCvKaCG1Lg
Date: Wed, 29 May 2019 13:38:56 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D076709987@IRSMSX106.ger.corp.intel.com>
References: <20190529082150.31526-1-jani.nikula@intel.com>
 <20190529113820.29223.37851@emeril.freedesktop.org>
In-Reply-To: <20190529113820.29223.37851@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGNhNzk3YTAtOTA0MS00ZGYwLTliNmMtMzVlNTViMDExZWU3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYlJPWmQ3TVFXQmI1c04xOWtQN0tndCtTYVpMNFZuOGs5WldYSEJlMkFRY2dcL2lNR0RSUWtqZFFQcURmT0MrZGEifQ==
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915=3A_Expand_subslice_mask=22?=
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

SGksDQpEZWNpc2lvbnMgaGVyZT8gDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogSW50ZWwtZ2Z4IFttYWlsdG86aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnXSBPbiBCZWhhbGYgT2YNCj4gUGF0Y2h3b3JrDQo+IFNlbnQ6IGtlc2tpdmlpa2tvIDI5
LiB0b3Vrb2t1dXRhIDIwMTkgMTQuMzgNCj4gVG86IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtZ2Z4XSDinJMgRmkuQ0kuQkFUOiBzdWNjZXNzIGZvciBSZXZlcnQgImRybS9p
OTE1OiBFeHBhbmQgc3Vic2xpY2UgbWFzayINCj4gDQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+
IA0KPiBTZXJpZXM6IFJldmVydCAiZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrIg0KPiBV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEyOTMvDQo+
IFN0YXRlIDogc3VjY2Vzcw0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAt
IGNoYW5nZXMgZnJvbSBDSV9EUk1fNjE2MCAtPiBQYXRjaHdvcmtfMTMxMjMNCj4gPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFy
eQ0KPiAtLS0tLS0tDQo+IA0KPiAgICoqU1VDQ0VTUyoqDQo+IA0KPiAgIE5vIHJlZ3Jlc3Npb25z
IGZvdW5kLg0KPiANCj4gICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTIzLw0KPiANCj4gS25vd24gaXNzdWVzDQo+IC0t
LS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTMxMjMgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiANCj4gIyMjIElHVCBjaGFu
Z2VzICMjIw0KPiANCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2NvbnRleHRzOg0KPiAgICAgLSBmaS1iZHctZ3Z0ZHZtOiAgICAgIFtQQVNT
XVsxXSAtPiBbRE1FU0ctRkFJTF1bMl0gKFtmZG8jMTEwMjM1XSkNCj4gICAgWzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTYwL2ZpLWJkdy0NCj4g
Z3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHMuaHRtbA0KPiAgICBbMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTIzL2Zp
LWJkdy0NCj4gZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHMuaHRtbA0KPiAN
Cj4gDQo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPiANCj4gICAqIGlndEBnZW1fZXhlY19z
dXNwZW5kQGJhc2ljLXM0LWRldmljZXM6DQo+ICAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgW0lO
Q09NUExFVEVdWzNdIChbZmRvIzEwNzcxOF0pIC0+IFtQQVNTXVs0XQ0KPiAgICBbM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNjAvZmktYmxiLQ0K
PiBlNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwNCj4gICAg
WzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzEyMy9maS1ibGItDQo+IGU2ODUwL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmlj
ZXMuaHRtbA0KPiANCj4gICAqIGlndEBrbXNfY2hhbWVsaXVtQGRwLWNyYy1mYXN0Og0KPiAgICAg
LSBmaS1jbWwtdTI6ICAgICAgICAgIFtGQUlMXVs1XSAoW2ZkbyMxMTA2MjddKSAtPiBbUEFTU11b
Nl0NCj4gICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MTYwL2ZpLWNtbC0NCj4gdTIvaWd0QGttc19jaGFtZWxpdW1AZHAtY3JjLWZhc3QuaHRt
bA0KPiAgICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMTIzL2ZpLWNtbC0NCj4gdTIvaWd0QGttc19jaGFtZWxpdW1AZHAtY3JjLWZhc3Qu
aHRtbA0KPiANCj4gDQo+ICAgW2ZkbyMxMDc3MThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTgNCj4gICBbZmRvIzExMDIzNV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDIzNQ0KPiAgIFtmZG8jMTEwNjI3
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNjI3DQo+
IA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDcgLT4gNDYpDQo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBBZGRpdGlvbmFsICg1KTogZmktaWNsLXUyIGZpLWlj
bC11MyBmaS1pY2wteSBmaS1pY2wtZ3VjIGZpLWljbC1kc2kNClNlZW1zIHRvIGJvb3QuIEFyZSB3
ZSB3YWl0aW5nIHNoYXJkcyBvciA/IA0KDQo+ICAgTWlzc2luZyAgICAoNik6IGZpLWtibC1zb3Jh
a2EgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWJ5dC1jbGFwcGVy
DQo+IGZpLWJkdy1zYW11cw0KPiANCj4gDQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0t
LQ0KPiANCj4gICAqIExpbnV4OiBDSV9EUk1fNjE2MCAtPiBQYXRjaHdvcmtfMTMxMjMNCj4gDQo+
ICAgQ0lfRFJNXzYxNjA6IDQzOTA1YzI2ZDRmZDE1Y2JhODkwZTYyZjI3MWJlZmMwZWNhOGRlNGMg
QA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gICBJR1Rf
NTAyMzogMGNiOTI1ZTdmMTQ1YmEyNTM1OTI0ZDlhMjk4YTYyZDc1NzcwN2UyYSBADQo+IGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scw0KPiAgIFBh
dGNod29ya18xMzEyMzogMmVjMDJmNDcyYmY4NGIyMzRmY2ExZDZhN2VlMGM3YjkxNGM4NDJlMCBA
DQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiANCj4gDQo+
ID09IExpbnV4IGNvbW1pdHMgPT0NCj4gDQo+IDJlYzAyZjQ3MmJmOCBSZXZlcnQgImRybS9pOTE1
OiBFeHBhbmQgc3Vic2xpY2UgbWFzayINCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3Jl
IGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzEyMy8NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
