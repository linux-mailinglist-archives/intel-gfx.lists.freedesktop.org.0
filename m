Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F913D101
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 01:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6456EB98;
	Thu, 16 Jan 2020 00:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E766B6EB98
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 00:19:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 16:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="273814216"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jan 2020 16:19:55 -0800
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jan 2020 16:19:46 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.125]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.171]) with mapi id 14.03.0439.000;
 Wed, 15 Jan 2020 16:19:46 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915: Use PIPE_CONF_CHECK_X() for
 sync_mode_slaves_mask
Thread-Index: AQHVy9czXxlBEstaGkqAZGgiFpa6qKfs87yA
Date: Thu, 16 Jan 2020 00:19:45 +0000
Message-ID: <2365e9449e3801ad906eb92d3506b0b6855c3374.camel@intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
 <20200115190813.17971-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200115190813.17971-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.13]
Content-ID: <94828E7C6572854EB53EBDFA56FD566B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Use PIPE_CONF_CHECK_X() for
 sync_mode_slaves_mask
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

T24gV2VkLCAyMDIwLTAxLTE1IGF0IDIxOjA4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gc3luY19tb2RlX3NsYXZlc19tYXNrIGlzIGEgYml0bWFzayBzbyB1c2UgUElQRV9DT05G
X0NIRUNLX1goKSBmb3IgaXQNCj4gc28gd2UgZ2V0IHRoZSBtaXNtYXRjaCBwcmludGVkIGluIGhl
eCBpbnN0ZWFkIG9mIGRlY2ltYWwuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNjRhMzc3
ZDYxY2UwLi45N2NmODQ1N2M5NTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xMzY5NSw3ICsxMzY5NSw3IEBAIGludGVsX3Bp
cGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmN1cnJl
bnRfY29uZmlnLA0KPiAgCVBJUEVfQ09ORl9DSEVDS19JTkZPRlJBTUUoaGRtaSk7DQo+ICAJUElQ
RV9DT05GX0NIRUNLX0lORk9GUkFNRShkcm0pOw0KPiAgDQo+IC0JUElQRV9DT05GX0NIRUNLX0ko
c3luY19tb2RlX3NsYXZlc19tYXNrKTsNCj4gKwlQSVBFX0NPTkZfQ0hFQ0tfWChzeW5jX21vZGVf
c2xhdmVzX21hc2spOw0KPiAgCVBJUEVfQ09ORl9DSEVDS19JKG1hc3Rlcl90cmFuc2NvZGVyKTsN
Cj4gIA0KPiAgCVBJUEVfQ09ORl9DSEVDS19JKGRzYy5jb21wcmVzc2lvbl9lbmFibGUpOw0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
