Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C33F97D53
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E1389467;
	Wed, 21 Aug 2019 14:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E7C89467
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:40:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 07:40:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="262514832"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2019 07:40:09 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 21 Aug 2019 15:40:09 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.73]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.87]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 15:40:09 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 39/40] drm/framebuffer/tgl: Format
 modifier for Intel Gen-12 media compression
Thread-Index: AQHVVN/aBjvtglyjIkmWZseKcOsStKcFoZSA
Date: Wed, 21 Aug 2019 14:40:08 +0000
Message-ID: <90330c4869fc1cc5db82b63b403c6a8d910d25bd.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-40-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-40-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.154]
Content-ID: <7ACED52F7B23754BA374A4E50BCC8E2F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 39/40] drm/framebuffer/tgl: Format
 modifier for Intel Gen-12 media compression
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwu
Y29tPg0KPiANCj4gR2VuLTEyIGRpc3BsYXkgY2FuIGRlY29tcHJlc3Mgc3VyZmFjZXMgY29tcHJl
c3NlZCBieSB0aGUgbWVkaWENCj4gZW5naW5lLCBhZGQNCj4gYSBuZXcgbW9kaWZpZXIgYXMgdGhl
IGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSBzdXJmYWNlIHdhcyBjb21wcmVzc2VkDQo+IGJ5DQo+
IHRoZSBtZWRpYSBvciByZW5kZXIgZW5naW5lLg0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IERoaW5ha2Fy
YW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+
ICBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCB8IDEwICsrKysrKysrKysNCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+IA0KPiANCg0KUmV2aWV3ZWQtYnk6IFN0YW5p
c2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
