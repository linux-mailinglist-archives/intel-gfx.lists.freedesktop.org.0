Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EF2104DBB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 09:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221426EB99;
	Thu, 21 Nov 2019 08:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6516EB91;
 Thu, 21 Nov 2019 08:19:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 00:19:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="357718560"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 21 Nov 2019 00:19:54 -0800
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 Nov 2019 00:19:53 -0800
Received: from shsmsx108.ccr.corp.intel.com (10.239.4.97) by
 FMSMSX152.amr.corp.intel.com (10.18.125.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 Nov 2019 00:19:53 -0800
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.213]) by
 SHSMSX108.ccr.corp.intel.com ([169.254.8.41]) with mapi id 14.03.0439.000;
 Thu, 21 Nov 2019 16:19:52 +0800
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "igt-dev@lists.freedesktop.org"
 <igt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t v2] i915/pm_rps: install SIGTERM
 handler for load_helper process
Thread-Index: AQHVn2vl8CQGGEsOK0Srqkass8j5CKeTd6oAgAFc30D//+ZAAIAAjYcA
Date: Thu, 21 Nov 2019 08:19:51 +0000
Message-ID: <27240C0AC20F114CBF8149A2696CBE4A615D8F4E@SHSMSX101.ccr.corp.intel.com>
References: <20191120062912.10853-1-chuansheng.liu@intel.com>
 <157425303636.13839.5788530893723789852@skylake-alporthouse-com>
 <27240C0AC20F114CBF8149A2696CBE4A615D8A40@SHSMSX101.ccr.corp.intel.com>
 <157432242660.24852.16181781359342754810@skylake-alporthouse-com>
In-Reply-To: <157432242660.24852.16181781359342754810@skylake-alporthouse-com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjcxZWJhYzYtMDMwMy00NDE1LWFmOGYtMzgzOGVjMzIyNzBiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaG1ZU1ZqRHFzZXY4cWM3TkVjQ2RwWjVwTkFwK0VBTGdUMjJNRVJiZXlqeW5cL01lZ1F1ejdSRTJOXC9XVGs0b2dRIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/pm_rps: install SIGTERM
 handler for load_helper process
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAyMSwg
MjAxOSAzOjQ3IFBNDQo+IFRvOiBMaXUsIENodWFuc2hlbmcgPGNodWFuc2hlbmcubGl1QGludGVs
LmNvbT47DQo+IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
aS1nLXQgdjJdIGk5MTUvcG1fcnBzOiBpbnN0YWxsIFNJR1RFUk0gaGFuZGxlcg0KPiBmb3IgbG9h
ZF9oZWxwZXIgcHJvY2Vzcw0KPiANCj4gUXVvdGluZyBMaXUsIENodWFuc2hlbmcgKDIwMTktMTEt
MjEgMDE6MzQ6MjQpDQo+ID4gVGhhbmtzIGZvciByZXZpZXdpbmcgdGhlIHBhdGNoLCBwbGVhc2Ug
c2VlIGJlbG93IGNvbW1lbnRzLg0KPiA+DQo+ID4gPiA+IFNvIGhlcmUgd2UgaW5zdGFsbCB0aGUg
cHJvcGVyIGhhbmRsZXIgZm9yIHNpZ25hbCBTSUdURVJNIGluIHRoZQ0KPiA+ID4gPiBzaW1pbGFy
IHdheS4gV2l0aG91dCB0aGlzIHBhdGNoLCB0aGUgR1QgbWF5IGtlZXAgYnVzeSBhZnRlcg0KPiA+
ID4gPiBydW5uaW5nIHRoaXMgc3VidGVzdC4gRW5hYmxpbmcgcnBzIHNob3VsZCBiZSB0cmFja2Vk
IG9uIHRoZQ0KPiA+ID4gPiBvdGhlciBzaWRlLg0KPiA+ID4gPg0KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBDaHVhbnNoZW5nIExpdSA8Y2h1YW5zaGVuZy5saXVAaW50ZWwuY29tPg0KPiA+ID4gPiAt
LS0NCj4gPiA+ID4gIHRlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYyB8IDEgKw0KPiA+ID4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQg
YS90ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMgYi90ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMNCj4g
PiA+ID4gaW5kZXggZWY2MjdjMGIuLjhjNzFjMWExIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS90ZXN0
cy9pOTE1L2k5MTVfcG1fcnBzLmMNCj4gPiA+ID4gKysrIGIvdGVzdHMvaTkxNS9pOTE1X3BtX3Jw
cy5jDQo+ID4gPiA+IEBAIC0yNTIsNiArMjUyLDcgQEAgc3RhdGljIHZvaWQgbG9hZF9oZWxwZXJf
cnVuKGVudW0gbG9hZCBsb2FkKQ0KPiA+ID4gPg0KPiA+ID4gPiAgICAgICAgICAgICAgICAgc2ln
bmFsKFNJR1VTUjEsIGxvYWRfaGVscGVyX3NpZ25hbF9oYW5kbGVyKTsNCj4gPiA+ID4gICAgICAg
ICAgICAgICAgIHNpZ25hbChTSUdVU1IyLCBsb2FkX2hlbHBlcl9zaWduYWxfaGFuZGxlcik7DQo+
ID4gPiA+ICsgICAgICAgICAgICAgICBzaWduYWwoU0lHVEVSTSwgbG9hZF9oZWxwZXJfc2lnbmFs
X2hhbmRsZXIpOw0KPiA+ID4NCj4gPiA+IEkgZG9uJ3Qgc2VlIGFueSBiZWhhdmlvdXIgY2hhbmdl
cyB0byBpZ3QgdG8gY2F1c2UgaXQgdG8gc2VuZCBTSUdURVJNIG9uDQo+ID4gPiBleGl0X3N1YnRl
c3QuDQo+ID4NCj4gPiBZZXMsIGV4aXRfc3VidGVzdCgpIHdpbGwgbm90IHNlbmQgU0lHVEVSTSBv
dXQuIEJ1dCB3aGVuIG1haW4gcHJvY2VzcyBjYWxscw0KPiA+IGlndF9leGl0KCkgdG8gZXhpdCwg
aXQgaGl0cyB0aGUgYmVsb3cgYXNzZXJ0aW9uLCB0aGVuIGdvZXMgdG8gZmF0YWxfc2lnX2hhbmRs
ZXIoKQ0KPiB3aXRoIFNJR0FCT1JULg0KPiA+IChpOTE1X3BtX3JwczoxNjgwKSBpZ3RfY29yZS1D
UklUSUNBTDogRXhpdGluZyB3aXRoIHN0YXR1cyBjb2RlIDk4DQo+ID4gaTkxNV9wbV9ycHM6IC4u
L2xpYi9pZ3RfY29yZS5jOjE3NzU6IGlndF9leGl0OiBBc3NlcnRpb24gYHdhaXRwaWQoLTEsICZ0
bXAsDQo+IFdOT0hBTkcpID09IC0xICYmIGVycm5vID09IEVDSElMRCcgZmFpbGVkLg0KPiA+IFJl
Y2VpdmVkIHNpZ25hbCBTSUdBQlJULg0KPiANCj4gT2ssIGJ1dCB0aGF0J3Mgbm90IGEgaHVnZSBj
b25jZXJuLCBzaW5jZSB3ZSBhcmUgYWxyZWFkeSBpbiBhbiBlcnJvciBzdGF0ZS4NCj4gTXkgY29u
Y2VybiBpcyBmb3IgZml4aW5nIHdoYXRldmVyIGdvdCB1cyBpbnRvIHRoYXQgc3RhdGUuDQpBZ3Jl
ZS4gSW4gdGhpcyBjYXNlLCB3ZSBuZWVkIHRvIGVuYWJsZSBycHMgY29tcGxldGVseS4gSGVyZSBJ
IHdvdWxkIGxpa2UgdGhpcyBxdWljaw0KcGF0Y2ggdG8gdW5ibG9jayB0aGUgZm9sbG93aW5nIHRl
c3QgY2FzZXMuDQoNCldpdGhvdXQgdGhpcyBxdWljayBmaXgsIGl0IGNhbiBtaXNsZWFkIGd1eXMg
dG8gY2F0Y2ggdGhlIHJlYWwgcm9vdCBjYXVzZTopDQpXb3VsZCB5b3UgbWluZCB0byBnZXQgdGhp
cyBwYXRjaCBtZXJnZWQgYXQgZmlyc3Q/DQoNCj4gDQo+ID4gSW4gZmF0YWxfc2lnX2hhbmRsZXIo
KSwgdGhlIGluc3RhbGxlZCBleGl0IGhhbmRsZXIgZm9ya19oZWxwZXJfZXhpdF9oYW5kbGVyKCkN
Cj4gPiB3aWxsIHNlbmQgb3V0IHRoZSBTSUdURVJNIHRvIGFsbCBjaGlsZHJlbiBwcm9jZXNzLg0K
PiA+DQo+ID4gPg0KPiA+ID4gQnV0IHlvdSBtaWdodCBhcyB3ZWxsIGp1c3Qgcy9TSUdVU1IyL1NJ
R1RFUk0vIGZvciBjbGVhcmVyIGFuZCBjb21tb24NCj4gPiA+IGludGVudGlvbnMuDQo+ID4gRG9u
J3QgZ2V0IHlvdXIgcmVhbCBwb2ludCwgU0lHVVNSMSBpcyBmb3IgYWN0aXZlbHkgc3RvcHBpbmcg
bG9hZF9oZWxwZXIsDQo+IFNJR1VTUjIgaXMgZm9yDQo+ID4gc3dpdGNoaW5nIGhpZ2ggYW5kIGxv
dyBsb2FkLCB0aGUgU0lHVEVSTSBpcyBmb3IgcGFzc2l2ZWx5IGV4aXRpbmcuDQo+IA0KPiBJIHRo
aW5rIHRoZSBkZXNpZ24gb2YgaGF2aW5nIGEgcGVyc2lzdGVudCBoZWxwZXIgcHJvY2VzcyB0aGF0
IGxlYWtzDQo+IGJldHdlZW4gc3VidGVzdHMgaXMgYnJva2VuLiBUaGVuIHVzaW5nIHRocmVlIHNp
Z25hbHMgZm9yIGVzc2VudGlhbGx5IG9ubHkNCj4gMiBjb21tYW5kcyBpcyBhZXN0aGV0aWNhbGx5
IHVucGxlYXNpbmcuDQpZZXMsIHRvIGJlIGhvbmVzdCwgdGhlIG1haW4gcHJvY2VzcyBzaG91bGQg
bm90IHJlY2VpdmUgU0lHQUJSVCBhY2NvcmRpbmcNCnRvIHRoZSBpbml0aWFsIGNvZGUgaW50ZW50
aW9uLiBTaW5jZSB0aGUgY2hpbGRyZW4gcHJvY2Vzc2VzIHNob3VsZCBiZSBjbGVhbmVkDQp1cCwg
bm8gbWF0dGVyIGl0IGlzIGxvYWRfaGVscGVyIG9yIG90aGVyIGNyZWF0ZWQgY2hpbGRyZW4gcHJv
Y2Vzcy4NCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
