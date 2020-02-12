Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CEC15A070
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 06:23:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDA26E823;
	Wed, 12 Feb 2020 05:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050136E823
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 05:22:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 21:22:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="237609861"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 11 Feb 2020 21:22:58 -0800
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 21:22:58 -0800
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 FMSMSX161.amr.corp.intel.com (10.18.125.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 21:22:58 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.222]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.119]) with mapi id 14.03.0439.000;
 Wed, 12 Feb 2020 10:52:54 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Syrjala, Ville" <ville.syrjala@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: RFC: pipe writeback design for i915
Thread-Index: AQHV2AGSig8CWzHD3EGRX5itEX+xIagEPcOAgAAPtoCAEsgYEA==
Date: Wed, 12 Feb 2020 05:22:54 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F823E53A5@BGSMSX104.gar.corp.intel.com>
References: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
 <87pnez99ou.fsf@intel.com> <20200131115159.GM13686@intel.com>
In-Reply-To: <20200131115159.GM13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWRhNjRkODMtYWVhMC00YTMzLTkxYmEtNDNiOTI2OTNkNTA5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiM1lkUjRrMStFZVRURUhaSE1BVFFYTnpcL1ZCQjVsNElhbHpydVkraTNBMFlXV0VYYjhsMmFHakZLR0s5cmxZQVAifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] RFC: pipe writeback design for i915
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU3lyamFsYSwgVmlsbGUg
PHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEphbnVhcnkgMzEsIDIw
MjAgNToyMiBQTQ0KPiBUbzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gQ2M6IExheG1pbmFyYXlhbiBCaGFyYWRpeWEsIFBhbmthaiA8cGFua2FqLmxheG1pbmFy
YXlhbi5iaGFyYWRpeWFAaW50ZWwuY29tPjsNCj4gZGFuaWVsQGZmd2xsLmNoOyBEZWFrLCBJbXJl
IDxpbXJlLmRlYWtAaW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbw0KPiA8cm9kcmlnby52aXZpQGlu
dGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFNoYW5rYXIsIFVtYQ0K
PiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogUkZDOiBwaXBlIHdyaXRl
YmFjayBkZXNpZ24gZm9yIGk5MTUNCj4gDQo+IE9uIEZyaSwgSmFuIDMxLCAyMDIwIGF0IDEyOjU1
OjQ1UE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+IE9uIEZyaSwgMzEgSmFuIDIwMjAs
ICJCaGFyYWRpeWEsUGFua2FqIg0KPiA8cGFua2FqLmxheG1pbmFyYXlhbi5iaGFyYWRpeWFAaW50
ZWwuY29tPiB3cm90ZToNCj4gPiA+IEkgYW0gZXhwbG9yaW5nIHRoZSB3YXkgb2YgaW1wbGVtZW50
aW5nIHRoZSBwaXBlIHdyaXRlYmFjayBmZWF0dXJlIGluDQo+ID4gPiBpOTE1IGFuZCB3b3VsZCBs
aWtlIHRvIGdldCBlYXJseSBmZWVkYmFjayBvbiBkZXNpZ24uDQo+ID4gPg0KPiA+ID4gV2UgaGF2
ZSBhIFdpcmVsZXNzIGRpc3BsYXkoV0QpIHRyYW5zY29kZXIgd2hpY2ggY2FuIGJlIHVzZWQgZm9y
DQo+ID4gPiBjYXB0dXJpbmcgZGlzcGxheSBwaXBlIG91dHB1dCB0byBtZW1vcnkuIEl0IGlzIGdl
bmVyYWxseSBpbnRlbmRlZA0KPiA+ID4gZm9yIHdpcmVsZXNzIGRpc3BsYXksIGJ1dCBjYW4gYmUg
dXNlZCBmb3Igb3RoZXIgZnVuY3Rpb25zIHN1Y2ggYXMgaW4NCj4gPiA+IHZhbGlkYXRpb24gYXV0
b21hdGlvbiB3aGVyZSBjcmMgYmFzZWQgY29tcGFyaXNvbiBpcyBub3QgZmVhc2libGUuDQo+ID4N
Cj4gPiBJIHRoaW5rIHlvdSBzaG91bGQgcHJvYmFibHkgZXhwbG9yZSB0aGUgdXNlIGNhc2UgYW5k
IGRyaXZlci9pZ3QgaW1wYWN0DQo+ID4gZnVydGhlciBiZWZvcmUgZW1iYXJraW5nIG9uIHRoZSBp
bXBsZW1lbnRhdGlvbi4NCj4gPg0KPiA+IC0gSG93IG11Y2ggZG8geW91IG5lZWQgdG8gbW9kaWZ5
IGV4aXN0aW5nIGNvZGUgaW4ga2VybmVsIGFuZCBpZ3QgdG8gbWFrZQ0KPiA+ICAgdXNlIG9mIHdy
aXRlYmFjayBjb25uZWN0b3JzPw0KPiA+DQo+ID4gLSBXaGF0IGtpbmQgb2YgdGVzdCBjb3ZlcmFn
ZSBkbyB5b3UgZ2V0PyBQaXBlIENSQyBpcyB1c2VkIGluIGNvbm5lY3Rpb24NCj4gPiAgIHdpdGgg
dGhlIHBoeXNpY2FsIGVuY29kZXJzLiBJbiBjb250cmFzdCwgeW91IHdvbid0IGhhdmUgdGhhdCB3
aXRoIFdEDQo+ID4gICB0cmFuc2NvZGVycy4gKERlc2lnbiB3aXNlIEkgdGhpbmsgdGhpcyBtYXkg
bWVhbiB5b3UnbGwgYWxzbyBuZWVkDQo+ID4gICAid3JpdGViYWNrIGVuY29kZXJzIiwgaW5zdGVh
ZCBvZiB0cnlpbmcgdG8gcGx1ZyBpdCBpbnRvIGV4aXN0aW5nDQo+ID4gICBlbmNvZGVycy4pIFNv
IHlvdSdsbCBvbmx5IHRlc3QgdGhlIHBpcGUgc2lkZSBvZiB0aGluZ3MsIHdoaWNoIHJvdWdobHkN
Cj4gPiAgIGNvcnJlc3BvbmRzIHRvIHBpcGUgQ1JDIGNvdmVyYWdlIEkgZ3Vlc3MuIEkgZ3Vlc3Mg
aXQgY291bGQgc3BlZWQgdXANCj4gPiAgIHRoYXQgcGFydCBvZiB0ZXN0aW5nIGJlY2F1c2UgeW91
IGNhbiB0aGVuIHNraXAgdGhlIHBoeXNpY2FsDQo+ID4gICBjb25uZWN0b3JzLCBidXQgeW91IGRv
IGhhdmUgdG8gdGVzdCB0aGVtIGFsc28uIFNvIGl0J3Mgbm90IGEgcGFuYWNlYS4NCj4gDQo+IFRo
ZSBtYWluIGJlbmVmaXQgSSdtIGxvb2tpbmcgZm9yd2FyZCB0byBpcyBmb3IgcmV2ZXJzZSBlbmdp
bmVlcmluZy4NCj4gQXMgaW4gYW5zd3dlcmluZyB0aGUgYWdlIG9sZCBxdWVzdGlvbjogImxldCBt
ZSBzZWUgd3RmIHRoZSBodyBpcyBhY3R1YWxseSBkb2luZyB0bw0KPiBteSBwaXhlbHM/Ii4gSSB3
YW50IHRoaXMhDQoNClRoaXMgd2lsbCBiZSB1c2VmdWwgZXZlbiBmb3IgYWxsIGNvbG9yIHZhbGlk
YXRpb24gYW5kIHZhcmlvdXMgb3RoZXIgdGVzdHMgd2hlcmUgZHVlIHRvIHBpcGUgcHJlY2lzaW9u
DQphbmQgaW50ZXJwb2xhdGlvbiB3ZSBkb24ndCBoYXZlIGV4YWN0IG1hdGNoZXMgd3J0IGNyYydz
LiBDdXJyZW50bHkgQ2hhbWVsaXVtIGNvbWVzIGFzIGEgc2F2aW9yLA0KYnV0IHRoaXMgbGltaXRz
IHRvIGJvYXJkcyB3aGVyZSB3ZSBoYXZlIHRoaXMgZXh0ZXJuYWwgaGFyZHdhcmUuIFRoaXMgd2ls
bCBoZWxwIG1ha2UgdGhpbmdzDQpub3QgZGVwZW5kIG9uIGF2YWlsYWJpbGl0eSBvZiBDaGFtZWxp
dW0gaW4gQ0kuDQpGcm9tIElHVCBzaWRlLCBjaGFuZ2VzIHdpbGwgYmUgbmVlZGVkIHRvIGVuYWJs
ZSB0aGlzIGFuZCBtaWdyYXRlIHRoZSByZXNwZWN0aXZlIHRlc3RzLCBtYWtlIHRoZW0NCnVzZSB3
cml0ZWJhY2sgZHVtcHMgYW5kIGNvbXBhcmUuDQoNCkFub3RoZXIgYWR2YW50YWdlIHdpbGwgYmUg
ZGVmaW5pdGVseSBpbiBkZWJ1Z2dpbmcsIHJvb3QgY2F1c2luZyB0aGUgcmVhbCBjdWxwcml0cy4g
SWYgdGhpbmdzIGFyZSBnb2luZw0KYmFkIGF0IHBvcnQgb3IgcGlwZSBpdHNlbGYuIEluIGFsbCB0
aGlzLCB3ZSBkbyBnZXQgdGhlIHJlYWwgdGhpbmcgd29ya2luZyBpLmUuIGEgd2lyZWxlc3MgZGlz
cGxheSDwn5iKIChyZXN0IG9mIHRoZSBzdGFjaw0Kd2lsbCBuZWVkIHRvIGJlIGVuYWJsZWQgYnV0
IGRpc3BsYXkgc2lkZSB3ZSB3aWxsIGdldCBvdXIgc3R1ZmYgZW5hYmxlZCkNCg0KUmVnYXJkcywN
ClVtYSBTaGFua2FyDQoNCg0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
