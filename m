Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAB8A1E4F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 17:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C499D6E0D1;
	Thu, 29 Aug 2019 15:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C5A6E0D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 15:05:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 08:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,443,1559545200"; d="scan'208";a="197821431"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2019 08:05:27 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 08:05:27 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.122]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.73]) with mapi id 14.03.0439.000;
 Thu, 29 Aug 2019 08:05:26 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 29/36] drm/i915: Replace hangcheck by heartbeats
Thread-Index: AQHVXkF4/pKcnVXbXU6GZynMFcMUvqcSOaXA
Date: Thu, 29 Aug 2019 15:05:25 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3DDCD1@fmsmsx120.amr.corp.intel.com>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
 <20190829081150.10271-30-chris@chris-wilson.co.uk>
In-Reply-To: <20190829081150.10271-30-chris@chris-wilson.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTNkZTg5MTQtOWZkOC00MGE0LWFkNWMtNWZjMDU1YWVlZGNiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicWFUcWZMNkkzK0RTYU5DS2Q1ODZTNmNtc25PYjl0TDRYZko3R1pcL0tjOVNsMnJpQ3BkaXdRMWVzR0JiQzVsU1EifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 29/36] drm/i915: Replace hangcheck by
 heartbeats
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAyOSwgMjAxOSAx
OjEyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az47IEpvb25hcyBMYWh0aW5lbg0KPiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47IFVyc3VsaW4sIFR2cnRrbyA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPjsNCj4gQmxvb21maWVsZCwgSm9uIDxqb24uYmxvb21maWVsZEBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAyOS8zNl0gZHJtL2k5MTU6IFJlcGxhY2UgaGFu
Z2NoZWNrIGJ5IGhlYXJ0YmVhdHMNCj4gDQo+IFJlcGxhY2Ugc2FtcGxpbmcgdGhlIGVuZ2luZSBz
dGF0ZSBldmVyeSBzbyBvZnRlbiB3aXRoIGEgcGVyaW9kaWMNCj4gaGVhcnRiZWF0IHJlcXVlc3Qg
dG8gbWVhc3VyZSB0aGUgaGVhbHRoIG9mIGFuIGVuZ2luZS4gVGhpcyBpcyBjb3VwbGVkDQo+IHdp
dGggdGhlIGZvcmNlZC1wcmVlbXB0aW9uIHRvIGFsbG93IGxvbmcgcnVubmluZyByZXF1ZXN0cyB0
byBzdXJ2aXZlIHNvDQo+IGxvbmcgYXMgdGhleSBkbyBub3QgYmxvY2sgb3RoZXIgdXNlcnMuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4NCj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNv
bT4NCj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+IENj
OiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPg0KPiAtLS0NClJldmll
d2VkLWJ5OiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
