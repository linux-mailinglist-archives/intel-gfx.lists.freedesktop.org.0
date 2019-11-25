Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197FB108BBC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 11:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14AEF88E41;
	Mon, 25 Nov 2019 10:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012DB89C6A
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 10:32:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 02:32:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="206101632"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 25 Nov 2019 02:32:29 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 25 Nov 2019 02:32:28 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 02:32:26 -0800
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 Nov 2019 02:32:26 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.80]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.134]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 16:02:23 +0530
From: "Navik, Ankit P" <ankit.p.navik@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5 0/3] drm/i915: Context aware user
 agnostic EU/Slice/Sub-slice control within kernel
Thread-Index: AQHVo1s28iz/6sqEFUOQNSeGokSYEqebLkYAgACB5xA=
Date: Mon, 25 Nov 2019 10:32:23 +0000
Message-ID: <2F886D5F95ED3A47BC8C177EADCD1CC72844AAAC@BGSMSX104.gar.corp.intel.com>
References: <1574663945-31742-1-git-send-email-ankit.p.navik@intel.com>
 <157466977032.2314.3292181708267450194@skylake-alporthouse-com>
In-Reply-To: <157466977032.2314.3292181708267450194@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmI0NTFjOTItOTllNy00MWY3LTk5MTctNjFlZGY5ZTExMzY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSkZMMHBnUTJsOFRwYUNnajlCK3FmS3g1TlAwSHVXT1wvaThXb1JLRWF1dGUwQkFHVFNKdmVvWGdDcHhOV1wvTjZsIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 0/3] drm/i915: Context aware user
 agnostic EU/Slice/Sub-slice control within kernel
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
Cc: "Anand, Vipin" <vipin.anand@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjUsIDIw
MTkgMTo0NiBQTQ0KPiBUbzogTmF2aWssIEFua2l0IFAgPGFua2l0LnAubmF2aWtAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5hdmlrLCBBbmtp
dCBQIDxhbmtpdC5wLm5hdmlrQGludGVsLmNvbT47IEFuYW5kLCBWaXBpbg0KPiA8dmlwaW4uYW5h
bmRAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIHY1IDAvM10g
ZHJtL2k5MTU6IENvbnRleHQgYXdhcmUgdXNlciBhZ25vc3RpYw0KPiBFVS9TbGljZS9TdWItc2xp
Y2UgY29udHJvbCB3aXRoaW4ga2VybmVsDQo+IA0KPiBRdW90aW5nIEFua2l0IE5hdmlrICgyMDE5
LTExLTI1IDA2OjM5OjAyKQ0KPiA+IFRoaXMgcGF0Y2ggc2V0cyBpbXByb3ZlcyBHUFUgcG93ZXIg
Y29uc3VtcHRpb24gb24gTGludXgga2VybmVsIGJhc2VkDQo+ID4gT1Mgc3VjaCBhcyBDaHJvbWl1
bSBPUywgVWJ1bnR1LCBldGMuIEZvbGxvd2luZyBhcmUgdGhlIHBvd2VyIHNhdmluZ3MuDQo+IA0K
PiBUaGUgY29kZSBpcyBzdGlsbCBhcyBicm9rZW4gYXMgaXQgd2FzIHdoZW4gaXQgd2FzIGxhc3Qg
cG9zdGVkLg0KDQpJIHNhdywgQ0kgaXMgZmFpbGVkLiBMZXQgbWUgcmViYXNlIGFnYWluLiANCkl0
IHdvcmtzIGF0IG15IGVuZCBvbiA1LjQuMC1yYzIrLiANCg0KUmVnYXJkcywNCkFua2l0DQo+IC1D
aHJpcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
