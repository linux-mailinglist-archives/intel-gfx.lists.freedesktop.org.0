Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF843A0D55
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 09:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6AD6E212;
	Wed,  9 Jun 2021 07:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40A76E212
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 07:12:20 +0000 (UTC)
IronPort-SDR: z+wh0l06il9l9+IO5FPaVAggbsSNyTctNSLdrc6H2mXVCp0H8MF0s967D4u57Ii0AOWoC/o6q8
 AA6USBbCRl+w==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="290648241"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="290648241"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 00:12:20 -0700
IronPort-SDR: vKHPiKbCi1Uo3RctW09Q72a7rWhiGVkBH1+lpzhyswCuBhD8IEoOZyvct6cIxl0k5tnE5hTVIS
 nqmwYOzX7+mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="552580614"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2021 00:12:20 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 00:12:19 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 12:42:17 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Wed, 9 Jun 2021 12:42:17 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9y?=
 =?utf-8?B?IGRybS9pOTE1L2RzYzogRml4IGJpZ2pvaW5lciBjaGVjayBpbiBkc2NfZGlz?=
 =?utf-8?Q?able_(rev4)?=
Thread-Index: AQHXXCJVhEV6vCia1EWoxoZilM2l9KsLRAjg
Date: Wed, 9 Jun 2021 07:12:17 +0000
Message-ID: <ca64c965f88a46a3ab3fb69d74773522@intel.com>
References: <20210608040659.14131-1-vandita.kulkarni@intel.com>
 <162312804776.417.11261539495030542252@emeril.freedesktop.org>
In-Reply-To: <162312804776.417.11261539495030542252@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsc=3A_Fix_bigjoiner_check_in_dsc=5Fdisable_=28rev?=
 =?utf-8?q?4=29?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFJCIG1haWwgb24gcmV2IDMgZnJvbSBNYW5hc2kgTmF2YXJlIGNhbWUgaW4gYXMgYSBuZXcg
cGF0Y2ggcmV2NC4NCkFuZCBhbGwgdGhlIHRlc3RpbmcgaGFwcGVuZWQgb24gcmV2NC4NCkhlbmNl
IHRoZXNlIHdhcm5pbmdzLCB3aGljaCBhcmUgbm90IGFwcGxpY2FibGUgdG8gdGhlIGFjdHVhbCBw
YXRjaCBWMyAocmV2MykNCg0KVGhhbmtzLA0KVmFuZGl0YQ0KPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFBhdGNod29yaw0KPiBTZW50OiBUdWVzZGF5LCBK
dW5lIDgsIDIwMjEgMTA6MjQgQU0NCj4gVG86IE5hdmFyZSwgTWFuYXNpIEQgPG1hbmFzaS5kLm5h
dmFyZUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IFN1YmplY3Q6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5nIGZvciBk
cm0vaTkxNS9kc2M6IEZpeA0KPiBiaWdqb2luZXIgY2hlY2sgaW4gZHNjX2Rpc2FibGUgKHJldjQp
DQo+IA0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNS9kc2M6
IEZpeCBiaWdqb2luZXIgY2hlY2sgaW4gZHNjX2Rpc2FibGUgKHJldjQpDQo+IFVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MTAwNi8NCj4gU3RhdGUgOiB3
YXJuaW5nDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiAkIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwDQo+IGJmZDcwYTdkMWE0ZSBkcm0vaTkxNS9kc2M6IEZpeCBiaWdqb2luZXIgY2hl
Y2sgaW4gZHNjX2Rpc2FibGUNCj4gLTo2OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQ
b3NzaWJsZSB1bndyYXBwZWQgY29tbWl0DQo+IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVt
IDc1IGNoYXJzIHBlciBsaW5lKQ0KPiAjNjoNCj4gVGhpcyBjaGFuZ2UgdGFrZXMgY2FyZSBvZiBy
ZXNldHRpbmcgdGhlIGRzc19jdGwgcmVnaXN0ZXJzIGluIGNhc2Ugb2YNCj4gZHNjX2Rpc2FibGUs
IGJpZ2pvaW5lciBkaXNhYmxlIGFuZCBhbHNvIHVuY29tcHJlc3NlZCBqb2luZXIgZGlzYWJsZS4N
Cj4gDQo+IC06NDQ6IEVSUk9SOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2Zm
LWJ5OiBsaW5lIGJ5IG5vbWluYWwNCj4gcGF0Y2ggYXV0aG9yICciTmF2YXJlLCBNYW5hc2kgRCIg
PG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Jw0KPiANCj4gdG90YWw6IDEgZXJyb3JzLCAxIHdh
cm5pbmdzLCAwIGNoZWNrcywgMTggbGluZXMgY2hlY2tlZA0KPiANCj4gDQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
