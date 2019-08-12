Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FDE8A150
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 16:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557A489D66;
	Mon, 12 Aug 2019 14:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8672289D66
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 14:39:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 07:39:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="327374266"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 12 Aug 2019 07:39:34 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.122]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.93]) with mapi id 14.03.0439.000;
 Mon, 12 Aug 2019 07:39:34 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVTF3WOspWOWKwrUWKuzI5V+dLE6bz8rkAgAOrRvA=
Date: Mon, 12 Aug 2019 14:39:33 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3CB34B@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156539369892.3161.13486569463851107198@skylake-alporthouse-com>
In-Reply-To: <156539369892.3161.13486569463851107198@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTcyNTEwZWEtOTdmMS00MmUzLTgyNTMtYzJlYzMxMTQ4YTcyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSGhkdWdkeElrUkgxZXZvVlh0QWhiVmZVemp3T2p2enR4MmFVcnFlNklnN01JVHRyY3g0ZEJTSVNtRjZkUVRxSSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogRnJpZGF5LCBBdWd1c3QgOSwgMjAxOSA0OjM1
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBKb29uYXMg
TGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBXaW5pYXJza2ksIE1p
Y2hhbA0KPiA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+OyBCbG9vbWZpZWxkLCBKb24gPGpv
bi5ibG9vbWZpZWxkQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCA1LzVdIGRybS9p
OTE1OiBDYW5jZWwgbm9uLXBlcnNpc3RlbnQgY29udGV4dHMgb24gY2xvc2UNCj4gDQo+IFF1b3Rp
bmcgQ2hyaXMgV2lsc29uICgyMDE5LTA4LTA2IDE0OjQ3OjI1KQ0KPiA+IE5vcm1hbGx5LCB3ZSBy
ZWx5IG9uIG91ciBoYW5nY2hlY2sgdG8gcHJldmVudCBwZXJzaXN0ZW50IGJhdGNoZXMgZnJvbQ0K
PiA+IGhvZ2dpbmcgdGhlIEdQVS4gSG93ZXZlciwgaWYgdGhlIHVzZXIgZGlzYWJsZXMgaGFuZ2No
ZWNrLCB0aGlzIG1lY2hhbmlzbQ0KPiA+IGJyZWFrcyBkb3duLiBEZXNwaXRlIG91ciBpbnNpc3Rl
bmNlIHRoYXQgdGhpcyBpcyB1bnNhZmUsIHRoZSB1c2VycyBhcmUNCj4gPiBlcXVhbGx5IGluc2lz
dGVudCB0aGF0IHRoZXkgd2FudCB0byB1c2UgZW5kbGVzcyBiYXRjaGVzIGFuZCB3aWxsIGRpc2Fi
bGUNCj4gPiB0aGUgaGFuZ2NoZWNrIG1lY2hhbmlzbS4gV2UgYXJlIGxvb2tpbmcgYXJlIHBlcmhh
cHMgcmVwbGFjaW5nIGhhbmdjaGVjaw0KPiA+IHdpdGggYSBzb2Z0ZXIgbWVjaGFuaXNtLCB0aGF0
IHNlbmRzIGEgcHVsc2UgZG93biB0aGUgZW5naW5lIHRvIGNoZWNrIGlmDQo+ID4gaXQgaXMgd2Vs
bC4gV2UgY2FuIHVzZSB0aGUgc2FtZSBwcmVlbXB0aXZlIHB1bHNlIHRvIGZsdXNoIGFuIGFjdGl2
ZQ0KPiA+IHBlcnNpc3RlbnQgY29udGV4dCBvZmYgdGhlIEdQVSB1cG9uIGNvbnRleHQgY2xvc2Us
IHByZXZlbnRpbmcgcmVzb3VyY2VzDQo+ID4gYmVpbmcgbG9zdCBhbmQgdW5raWxsYWJsZSByZXF1
ZXN0cyByZW1haW5pbmcgb24gdGhlIEdQVSwgYWZ0ZXIgcHJvY2Vzcw0KPiA+IHRlcm1pbmF0aW9u
LiBUbyBhdm9pZCBjaGFuZ2luZyB0aGUgQUJJIGFuZCBhY2NpZGVudGFsbHkgYnJlYWtpbmcNCj4g
PiBleGlzdGluZyB1c2Vyc3BhY2UsIHdlIG1ha2UgdGhlIHBlcnNpc3RlbmNlIG9mIGEgY29udGV4
dCBleHBsaWNpdCBhbmQNCj4gPiBlbmFibGUgaXQgYnkgZGVmYXVsdC4gVXNlcnNwYWNlIGNhbiBv
cHQgb3V0IG9mIHBlcnNpc3RlbnQgbW9kZSAoZm9yY2luZw0KPiA+IHJlcXVlc3RzIHRvIGJlIGNh
bmNlbGxlZCB3aGVuIHRoZSBjb250ZXh0IGlzIGNsb3NlZCBieSBwcm9jZXNzDQo+ID4gdGVybWlu
YXRpb24gb3IgZXhwbGljaXRseSkgYnkgYSBjb250ZXh0IHBhcmFtZXRlciwgb3IgdG8gZmFjaWxp
dGF0ZQ0KPiA+IGV4aXN0aW5nIHVzZS1jYXNlcyBieSBkaXNhYmxpbmcgaGFuZ2NoZWNrIChpOTE1
LmVuYWJsZV9oYW5nY2hlY2s9MCkuDQo+ID4gKE5vdGUsIG9uZSBvZiB0aGUgb3V0Y29tZXMgZm9y
IHN1cHBvcnRpbmcgZW5kbGVzcyBtb2RlIHdpbGwgYmUgdGhlDQo+ID4gcmVtb3ZhbCBvZiBoYW5n
Y2hlY2tpbmcsIGF0IHdoaWNoIHBvaW50IG9wdGluZyBpbnRvIHBlcnNpc3RlbnQgbW9kZSB3aWxs
DQo+ID4gYmUgbWFuZGF0b3J5LCBvciBtYXliZSB0aGUgZGVmYXVsdC4pDQo+IA0KPiBGb3IgdGhl
IHJlY29yZCwgSSd2ZSBmaW5hbGx5IHJ1biBpbnRvIGV4YW1wbGVzIG9mIGRlc2t0b3AgY2xpZW50
cw0KPiBleGl0aW5nIGJlZm9yZSB0aGVpciByZW5kZXJpbmcgaXMgc2hvd24uIE5vIGxvbmdlciBo
eXBvdGhldGljYWwuDQo+IC1DaHJpcw0KDQpDYW4geW91IHNoYXJlIGFueSBkZXRhaWxzIC0gTWln
aHQgYmUgdXNlZnVsIGZvciB0ZXN0aW5nLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
