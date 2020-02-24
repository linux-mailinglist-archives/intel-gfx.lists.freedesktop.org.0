Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FF216A1B3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 10:17:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B9489012;
	Mon, 24 Feb 2020 09:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C12489012
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 09:17:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 01:17:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="284302430"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Feb 2020 01:17:18 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Feb 2020 01:17:18 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Feb 2020 01:17:18 -0800
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 24 Feb 2020 01:17:18 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.165]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.142]) with mapi id 14.03.0439.000;
 Mon, 24 Feb 2020 14:47:06 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Correctly terminate connector iteration
Thread-Index: AQHV6M2lJ03ZRSod5UWVq7HrCUzwV6gqE9Wg
Date: Mon, 24 Feb 2020 09:17:05 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F823EE2CE@BGSMSX104.gar.corp.intel.com>
References: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmJjMmUzYTUtYWQzMS00NmU3LWIzM2MtOWMyZjU3MWEyZTQ1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMWNsUENaa01aeDFnXC9xanpxYjZuWDcxMHo3NmcrcTZIQlo1eGwrajJTVjFZUXU3K2tkbTYwd05FXC9NbVE2NEc4In0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correctly terminate connector
 iteration
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkg
MjEsIDIwMjAgOToxMyBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogTmF2YXJlLCBNYW5hc2kgRCA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT47IFNoYW5r
YXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNTog
Q29ycmVjdGx5IHRlcm1pbmF0ZSBjb25uZWN0b3IgaXRlcmF0aW9uDQo+IA0KPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gT25lIHNo
b3VsZCB1c2UgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCkgcmF0aGVyIHRoYW4NCj4gZHJt
X2Nvbm5lY3Rvcl9saXN0X2l0ZXJfYmVnaW4oKSB0byB0ZXJtaW5hdGUgdGhlIGNvbm5lY3RvciBp
dGVyYXRpb24uDQoNClRoYW5rcyBWaWxsZSBmb3IgZml4aW5nIHRoaXMuDQpSZXZpZXdlZC1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBDYzogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC9pc3N1ZXMvMTI3OA0KPiBGaXhlczogZTI0YmNkMzRjMWRkICgiZHJtL2k5MTUv
ZHA6IEFkZCBhbGwgdGlsZWQgYW5kIHBvcnQgc3luYyBjb25ucyB0byBtb2Rlc2V0IikNCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAy
ICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDY2
MGI4YzMzM2FjLi43ZTgyODBmYzYyYmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gQEAgLTY2MjIsNyArNjYyMiw3IEBAIHN0YXRpYyBpbnQgaW50ZWxf
bW9kZXNldF90aWxlX2dyb3VwKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiAgCQlpZiAocmV0KQ0KPiAgCQkJYnJlYWs7DQo+ICAJfQ0KPiAtCWRybV9jb25uZWN0b3JfbGlz
dF9pdGVyX2JlZ2luKCZkZXZfcHJpdi0+ZHJtLCAmY29ubl9pdGVyKTsNCj4gKwlkcm1fY29ubmVj
dG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7DQo+IA0KPiAgCXJldHVybiByZXQ7DQo+ICB9
DQo+IC0tDQo+IDIuMjQuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
