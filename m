Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 819D1276544
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023FC6EA32;
	Thu, 24 Sep 2020 00:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D4F6EA32
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:40:58 +0000 (UTC)
IronPort-SDR: F3DcPskiIIgFSAWdhhPwQmBT+AdFUfhNO4uYpFY5f8JZ0J4/J216BbBm690SZWP9QgY/7LiTaM
 hTUHOsH4jz/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="179133411"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="179133411"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:40:58 -0700
IronPort-SDR: sMbYIxWF0VjILO+wruK6TNDy2iwmtV7VLF+sfQSJIIffMQLYicCzc4dxJBYaxto/s/DM9XzkzF
 6M2PtBiRGX0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="413168998"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2020 17:40:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:40:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:40:57 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:40:57 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/14] drm/i915: Try to fix the SKL GT3/4 vs.
 GT3e/4e comments
Thread-Index: AQHWkgL2+R59G4YMMUe3iFFAyY2dN6l28mJw
Date: Thu, 24 Sep 2020 00:40:56 +0000
Message-ID: <6cc364203d81497f9b80a5a7cc4b777c@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Try to fix the SKL GT3/4
 vs. GT3e/4e comments
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDE2LCAyMDIwIDEwOjIxIEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNS8xNF0gZHJtL2k5MTU6IFRyeSB0byBmaXggdGhlIFNLTCBHVDMvNCB2cy4NCj4g
R1QzZS80ZSBjb21tZW50cw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEJ1bmNoIG9mIHRoZSBTS0wgU0tVcyBjdXJyZW50
bHkgZG9jdW1lbnRlZCBhcyBHVDMvNCBzZWVtIHRvIGFjdHVhbGx5IGJlDQo+IEdUM2UvNGUuIEZp
eCB1cCB0aGUgY29tbWVudHMuDQo+IA0KPiBDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9k
dGVsZUBnbWFpbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBpbmNsdWRlL2RybS9pOTE1
X3BjaWlkcy5oIHwgMTIgKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGluZGV4DQo+IGM5MDYwODhj
Y2ZmZS4uMzc5MmFiNWYyMGZmIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gQEAgLTM2MSwxOSArMzYx
LDE5IEBADQo+IA0KPiAgI2RlZmluZSBJTlRFTF9TS0xfVUxUX0dUM19JRFMoaW5mbykgXA0KPiAg
CUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTIzLCBpbmZvKSwgLyogVUxUIEdUMyAqLyBcDQo+IC0JSU5U
RUxfVkdBX0RFVklDRSgweDE5MjYsIGluZm8pLCAvKiBVTFQgR1QzICovIFwNCj4gLQlJTlRFTF9W
R0FfREVWSUNFKDB4MTkyNywgaW5mbykgIC8qIFVMVCBHVDMgKi8NCj4gKwlJTlRFTF9WR0FfREVW
SUNFKDB4MTkyNiwgaW5mbyksIC8qIFVMVCBHVDNlICovIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNF
KDB4MTkyNywgaW5mbykgIC8qIFVMVCBHVDNlICovDQo+IA0KPiAgI2RlZmluZSBJTlRFTF9TS0xf
R1QzX0lEUyhpbmZvKSBcDQo+ICAJSU5URUxfU0tMX1VMVF9HVDNfSURTKGluZm8pLCBcDQo+ICAJ
SU5URUxfVkdBX0RFVklDRSgweDE5MkEsIGluZm8pLCAvKiBTUlYgR1QzICovIFwNCj4gLQlJTlRF
TF9WR0FfREVWSUNFKDB4MTkyQiwgaW5mbyksIC8qIEhhbG8gR1QzICovIFwNCj4gLQlJTlRFTF9W
R0FfREVWSUNFKDB4MTkyRCwgaW5mbykgIC8qIFNSViBHVDMgKi8NCj4gKwlJTlRFTF9WR0FfREVW
SUNFKDB4MTkyQiwgaW5mbyksIC8qIEhhbG8gR1QzZSAqLyBcDQo+ICsJSU5URUxfVkdBX0RFVklD
RSgweDE5MkQsIGluZm8pICAvKiBTUlYgR1QzZSAqLw0KPiANCj4gICNkZWZpbmUgSU5URUxfU0tM
X0dUNF9JRFMoaW5mbykgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTMyLCBpbmZvKSwgLyog
RFQgR1Q0ICovIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4MTkzQiwgaW5mbyksIC8qIEhhbG8g
R1Q0ICovIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4MTkzRCwgaW5mbyksIC8qIFdLUyBHVDQg
Ki8gXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTNCLCBpbmZvKSwgLyogSGFsbyBHVDRlICov
IFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkzRCwgaW5mbyksIC8qIFdLUyBHVDRlICovIFwN
Cj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkzQSwgaW5mbykgIC8qIFNSViBHVDRlICovDQo+IA0K
PiAgI2RlZmluZSBJTlRFTF9TS0xfSURTKGluZm8pCSBcDQo+IC0tDQo+IDIuMjYuMg0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
