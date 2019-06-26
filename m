Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79548574BC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 01:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA046E556;
	Wed, 26 Jun 2019 23:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13CE56E556
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 23:12:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 16:12:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="162435642"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jun 2019 16:12:19 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.202]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.70]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 16:12:18 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/28] drm/i915/tgl: Add new pll ids
Thread-Index: AQHVK39IOiThPBfeQEmm+PQxdLSTtaaukgCA
Date: Wed, 26 Jun 2019 23:12:18 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480E931B@ORSMSX108.amr.corp.intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-14-lucas.demarchi@intel.com>
In-Reply-To: <20190625175437.14840-14-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWVmOWJjMTQtZDUzZC00YzBkLWI2M2EtNTdkZDA0MzQxMjk3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRGFqcmtnSXR2YmlJTmd3V3UyVE5QT0hJQ281OFcxT2I3cnA5UkFDUWZOcnJYdDhQTW5DS05PeXVqVFJxSW5LciJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/28] drm/i915/tgl: Add new pll ids
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
THVjYXMgRGUgTWFyY2hpDQo+U2VudDogVHVlc2RheSwgSnVuZSAyNSwgMjAxOSAxMDo1NCBBTQ0K
PlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Q2M6IERlIE1hcmNoaSwgTHVj
YXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMTMvMjhdIGRybS9pOTE1L3RnbDogQWRkIG5ldyBwbGwgaWRzDQo+DQo+RnJvbTogVmFuZGl0
YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+DQo+QWRkIDIgbmV3IFBM
THMgZm9yIGFkZGl0aW9uYWwgVEMgcG9ydHMuIFRoZSBuYW1lcyBmb3IgdGhlIFBMTHMgb24gVEdM
IGNoYW5nZWQsDQo+YnV0IG1vc3QgcmVnaXN0ZXJzIHJlbWFpbmVkIHRoZSBzYW1lLCBsaWtlIE1H
UExMNV9FTkFCTEUsIE1HUExMNl9FTkFCTEUuDQo+U28gY29udGludWUgdG8gdXNlIHRoZSBuYW1l
IGZyb20gSUNMLg0KPg0KPkNjOiBNYWRoYXYgQ2hhdWhhbiA8bWFkaGF2LmNoYXVoYW5AaW50ZWwu
Y29tPg0KPkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+U2lnbmVk
LW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
DQpMb29rcyBnb29kLg0KDQpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPg0KPi0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmggfCAyMyArKysrKysrKysrKysrKystLS0tDQo+IDEgZmlsZSBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgNCj5iL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaA0KPmluZGV4IGQwNTcwNDE0ZjNkMS4u
Yjk0M2Y1ZTNmMTQzIDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuaA0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuaA0KPkBAIC0xMTAsMzUgKzExMCw0OCBAQCBlbnVtIGludGVsX2RwbGxfaWQg
ew0KPg0KPg0KPiAJLyoqDQo+LQkgKiBARFBMTF9JRF9JQ0xfRFBMTDA6IElDTCBjb21ibyBQSFkg
RFBMTDANCj4rCSAqIEBEUExMX0lEX0lDTF9EUExMMDogSUNML1RHTCBjb21ibyBQSFkgRFBMTDAN
Cj4gCSAqLw0KPiAJRFBMTF9JRF9JQ0xfRFBMTDAgPSAwLA0KPiAJLyoqDQo+LQkgKiBARFBMTF9J
RF9JQ0xfRFBMTDE6IElDTCBjb21ibyBQSFkgRFBMTDENCj4rCSAqIEBEUExMX0lEX0lDTF9EUExM
MTogSUNML1RHTCBjb21ibyBQSFkgRFBMTDENCj4gCSAqLw0KPiAJRFBMTF9JRF9JQ0xfRFBMTDEg
PSAxLA0KPiAJLyoqDQo+LQkgKiBARFBMTF9JRF9JQ0xfVEJUUExMOiBJQ0wgVEJUIFBMTA0KPisJ
ICogQERQTExfSURfSUNMX1RCVFBMTDogSUNML1RHTCBUQlQgUExMDQo+IAkgKi8NCj4gCURQTExf
SURfSUNMX1RCVFBMTCA9IDIsDQo+IAkvKioNCj4tCSAqIEBEUExMX0lEX0lDTF9NR1BMTDE6IElD
TCBNRyBQTEwgMSBwb3J0IDEgKEMpDQo+KwkgKiBARFBMTF9JRF9JQ0xfTUdQTEwxOiBJQ0wgTUcg
UExMIDEgcG9ydCAxIChDKSwNCj4rCSAqICAgICAgICAgICAgICAgICAgICAgIFRHTCBUQyBQTEwg
MSBwb3J0IDEgKFRDMSkNCj4gCSAqLw0KPiAJRFBMTF9JRF9JQ0xfTUdQTEwxID0gMywNCj4gCS8q
Kg0KPiAJICogQERQTExfSURfSUNMX01HUExMMjogSUNMIE1HIFBMTCAxIHBvcnQgMiAoRCkNCj4r
CSAqICAgICAgICAgICAgICAgICAgICAgIFRHTCBUQyBQTEwgMSBwb3J0IDIgKFRDMikNCj4gCSAq
Lw0KPiAJRFBMTF9JRF9JQ0xfTUdQTEwyID0gNCwNCj4gCS8qKg0KPiAJICogQERQTExfSURfSUNM
X01HUExMMzogSUNMIE1HIFBMTCAxIHBvcnQgMyAoRSkNCj4rCSAqICAgICAgICAgICAgICAgICAg
ICAgIFRHTCBUQyBQTEwgMSBwb3J0IDMgKFRDMykNCj4gCSAqLw0KPiAJRFBMTF9JRF9JQ0xfTUdQ
TEwzID0gNSwNCj4gCS8qKg0KPiAJICogQERQTExfSURfSUNMX01HUExMNDogSUNMIE1HIFBMTCAx
IHBvcnQgNCAoRikNCj4rCSAqICAgICAgICAgICAgICAgICAgICAgIFRHTCBUQyBQTEwgMSBwb3J0
IDQgKFRDNCkNCj4gCSAqLw0KPiAJRFBMTF9JRF9JQ0xfTUdQTEw0ID0gNiwNCj4rCS8qKg0KPisJ
ICogQERQTExfSURfVEdMX1RDUExMNTogVEdMIFRDIFBMTCBwb3J0IDUgKFRDNSkNCj4rCSAqLw0K
PisJRFBMTF9JRF9UR0xfTUdQTEw1ID0gNywNCj4rCS8qKg0KPisJICogQERQTExfSURfVEdMX1RD
UExMNjogVEdMIFRDIFBMTCBwb3J0IDYgKFRDNikNCj4rCSAqLw0KPisJRFBMTF9JRF9UR0xfTUdQ
TEw2ID0gOCwNCj4gfTsNCj4tI2RlZmluZSBJOTE1X05VTV9QTExTIDcNCj4rDQo+KyNkZWZpbmUg
STkxNV9OVU1fUExMUyA5DQo+DQo+IHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlIHsNCj4gCS8q
IGk5eHgsIHBjaCBwbGxzICovDQo+LS0NCj4yLjIxLjANCj4NCj5fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj5J
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
