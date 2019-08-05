Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01C813F6
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 10:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8486B8920C;
	Mon,  5 Aug 2019 08:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3BA6E2C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 08:09:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 01:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="373629369"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga006.fm.intel.com with ESMTP; 05 Aug 2019 01:09:23 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.164]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.82]) with mapi id 14.03.0439.000;
 Mon, 5 Aug 2019 09:09:22 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "patchwork@emeril.freedesktop.org" <patchwork@emeril.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9y?=
 =?utf-8?B?IGRybS9pOTE1OiBGaXggd3JvbmcgZXNjYXBlIGNsb2NrIGRpdmlzb3IgaW5p?=
 =?utf-8?Q?t_for_GLK_(rev3)?=
Thread-Index: AQHVOJAhT2JWvqscWEGYbQA0u6gLwqbsRXGAgAACgYA=
Date: Mon, 5 Aug 2019 08:09:21 +0000
Message-ID: <25f45ca4aa1fcbbaeee2d5ea78de5b69fe9bdee8.camel@intel.com>
References: <20190712081938.14185-1-stanislav.lisovskiy@intel.com>
 <20190712085932.29165.67395@emeril.freedesktop.org>
 <87ftmgkpps.fsf@intel.com>
In-Reply-To: <87ftmgkpps.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.154]
Content-ID: <3A5C07D6533BAB4BBF9E93C27FD2F410@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_wrong_escape_clock_divisor_init_for_GLK_=28?=
 =?utf-8?q?rev3=29?=
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

T24gTW9uLCAyMDE5LTA4LTA1IGF0IDEwOjU5ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAxMiBKdWwgMjAxOSwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNr
dG9wLm9yZz4NCj4gd3JvdGU6DQo+ID4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gPiANCj4gPiBT
ZXJpZXM6IGRybS9pOTE1OiBGaXggd3JvbmcgZXNjYXBlIGNsb2NrIGRpdmlzb3IgaW5pdCBmb3Ig
R0xLDQo+ID4gKHJldjMpDQo+ID4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzYzNTA1Lw0KPiA+IFN0YXRlIDogd2FybmluZw0KPiA+IA0KPiA+ID09IFN1
bW1hcnkgPT0NCj4gPiANCj4gPiAkIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwDQo+ID4g
YmNkNzg3MWFmMTNkIGRybS9pOTE1OiBGaXggd3JvbmcgZXNjYXBlIGNsb2NrIGRpdmlzb3IgaW5p
dCBmb3IgR0xLDQo+ID4gLTo0MzogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3Npbmcg
U2lnbmVkLW9mZi1ieTogbGluZSBieQ0KPiA+IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdTdGFuaXNs
YXYgTGlzb3Zza2l5IDwNCj4gPiBzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4nDQo+IA0K
PiBTdGFuLCBwbGVhc2UgcmVwbHkgdG8gdGhlIHBhdGNoIHdpdGggeW91ciBzaWduZWQtb2ZmLWJ5
IHRvIGxldCBtZQ0KPiBwdXNoDQo+ID4gdGhpcy4NCg0KTmVlZCB0byBmaXggdGhpcyBpbiBteSBn
aXQgY29tbWl0IHRlbXBsYXRlLi4NCg0KU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tp
eSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0K
PiANCj4gDQo+ID4gDQo+ID4gdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywg
MTAgbGluZXMgY2hlY2tlZA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiANCj4gDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
