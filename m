Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 058929EB2F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 16:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A47889C09;
	Tue, 27 Aug 2019 14:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C15188932A;
 Tue, 27 Aug 2019 14:37:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 07:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="331838405"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 27 Aug 2019 07:37:08 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 27 Aug 2019 07:37:07 -0700
Received: from hasmsx112.ger.corp.intel.com (10.184.198.40) by
 fmsmsx158.amr.corp.intel.com (10.18.116.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 27 Aug 2019 07:37:07 -0700
Received: from hasmsx108.ger.corp.intel.com ([169.254.9.203]) by
 HASMSX112.ger.corp.intel.com ([169.254.11.117]) with mapi id 14.03.0439.000;
 Tue, 27 Aug 2019 17:37:04 +0300
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "C, Ramalingam" <ramalingam.c@intel.com>
Thread-Topic: [PATCH v10 4/6] misc/mei/hdcp: Fill transcoder index in port info
Thread-Index: AQHVXMVgd7+Zhi1CTEGO7Os+S5YVJKcPBnzQ///V34CAADMuIA==
Date: Tue, 27 Aug 2019 14:37:04 +0000
Message-ID: <5B8DA87D05A7694D9FA63FD143655C1B9DCA5021@hasmsx108.ger.corp.intel.com>
References: <20190827105014.14181-1-ramalingam.c@intel.com>
 <20190827105014.14181-5-ramalingam.c@intel.com>
 <5B8DA87D05A7694D9FA63FD143655C1B9DCA4FBC@hasmsx108.ger.corp.intel.com>
 <20190827143120.GC5040@intel.com>
In-Reply-To: <20190827143120.GC5040@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjA0OTc1ZjgtNzA2ZS00YzIyLWJkNTYtOGFkMGVmZDY2ZTFhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ1wvVExwb3UwSTBOUlZIdVZBcG40Vnk5TE5ZWnVnQ29MZnI5aHg1NWgzbVJWQ0hwNW5zR1BBd1dhTSswdmtjeUkifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.184.70.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v10 4/6] misc/mei/hdcp: Fill transcoder
 index in port info
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+IA0KPiBPbiAyMDE5LTA4LTI3IGF0IDE5OjQ5OjE5ICswNTMwLCBXaW5rbGVyLCBUb21hcyB3
cm90ZToNCj4gPiA+IEZvciBnZW4xMisgcGxhdGZvcm0gd2UgbmVlZCB0byBwYXNzIHRoZSB0cmFu
c2NvZGVyIGluZm8gYXMgcGFydCBvZg0KPiA+ID4gdGhlIHBvcnQgaW5mbyBpbnRvIE1FIEZXLg0K
PiA+ID4NCj4gPiA+IFRoaXMgY2hhbmdlIGZpbGxzIHRoZSBwYXlsb2FkIGZvciBNRSBGVyBmcm9t
IGhkY3BfcG9ydF9kYXRhLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0g
QyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4NCj4gPiA+IEFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gUmV2aWV3ZWQtYnk6IFNoYXNoYW5rIFNoYXJt
YSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMv
bWlzYy9tZWkvaGRjcC9tZWlfaGRjcC5jIHwgMTEgKysrKysrKysrKysNCj4gPiA+IGRyaXZlcnMv
bWlzYy9tZWkvaGRjcC9tZWlfaGRjcC5oIHwgIDQgKysrLQ0KPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21pc2MvbWVpL2hkY3AvbWVpX2hkY3AuYw0KPiA+ID4gYi9kcml2ZXJzL21p
c2MvbWVpL2hkY3AvbWVpX2hkY3AuYw0KPiA+ID4gaW5kZXggMzYzOGM3N2ViYTI2Li45MzAyN2Zk
OTZjNzEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL21pc2MvbWVpL2hkY3AvbWVpX2hkY3Au
Yw0KPiA+ID4gKysrIGIvZHJpdmVycy9taXNjL21laS9oZGNwL21laV9oZGNwLmMNCj4gPiA+IEBA
IC01OCw2ICs1OCw3IEBAIG1laV9oZGNwX2luaXRpYXRlX3Nlc3Npb24oc3RydWN0IGRldmljZSAq
ZGV2LA0KPiA+ID4gc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhLA0KPiA+ID4NCj4gPiA+ICAJ
c2Vzc2lvbl9pbml0X2luLnBvcnQuaW50ZWdyYXRlZF9wb3J0X3R5cGUgPSBkYXRhLT5wb3J0X3R5
cGU7DQo+ID4gPiAgCXNlc3Npb25faW5pdF9pbi5wb3J0LnBoeXNpY2FsX3BvcnQgPSAodTgpZGF0
YS0+ZndfZGRpOw0KPiA+ID4gKwlzZXNzaW9uX2luaXRfaW4ucG9ydC5hdHRhY2hlZF90cmFuc2Nv
ZGVyID0gKHU4KWRhdGEtPmZ3X3RjOw0KPiA+ID4gIAlzZXNzaW9uX2luaXRfaW4ucHJvdG9jb2wg
PSBkYXRhLT5wcm90b2NvbDsNCj4gPiA+DQo+ID4gPiAgCWJ5dGUgPSBtZWlfY2xkZXZfc2VuZChj
bGRldiwgKHU4ICopJnNlc3Npb25faW5pdF9pbiwgQEAgLTEyNyw2DQo+ID4gPiArMTI4LDcgQEAg
bWVpX2hkY3BfdmVyaWZ5X3JlY2VpdmVyX2NlcnRfcHJlcGFyZV9rbShzdHJ1Y3QgZGV2aWNlDQo+
ID4gPiArKmRldiwNCj4gPiA+DQo+ID4gPiAgCXZlcmlmeV9yeGNlcnRfaW4ucG9ydC5pbnRlZ3Jh
dGVkX3BvcnRfdHlwZSA9IGRhdGEtPnBvcnRfdHlwZTsNCj4gPiA+ICAJdmVyaWZ5X3J4Y2VydF9p
bi5wb3J0LnBoeXNpY2FsX3BvcnQgPSAodTgpZGF0YS0+ZndfZGRpOw0KPiA+ID4gKwl2ZXJpZnlf
cnhjZXJ0X2luLnBvcnQuYXR0YWNoZWRfdHJhbnNjb2RlciA9ICh1OClkYXRhLT5md190YzsNCj4g
PiA+DQo+ID4gPiAgCXZlcmlmeV9yeGNlcnRfaW4uY2VydF9yeCA9IHJ4X2NlcnQtPmNlcnRfcng7
DQo+ID4gPiAgCW1lbWNweSh2ZXJpZnlfcnhjZXJ0X2luLnJfcngsICZyeF9jZXJ0LT5yX3J4LCBI
RENQXzJfMl9SUlhfTEVOKTsNCj4gPiA+IEBAIC0xOTcsNiArMTk5LDcgQEAgbWVpX2hkY3BfdmVy
aWZ5X2hwcmltZShzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ID4gPiBzdHJ1Y3QgaGRjcF9wb3J0X2Rh
dGEgKmRhdGEsDQo+ID4gPg0KPiA+ID4gIAlzZW5kX2hwcmltZV9pbi5wb3J0LmludGVncmF0ZWRf
cG9ydF90eXBlID0gZGF0YS0+cG9ydF90eXBlOw0KPiA+ID4gIAlzZW5kX2hwcmltZV9pbi5wb3J0
LnBoeXNpY2FsX3BvcnQgPSAodTgpZGF0YS0+ZndfZGRpOw0KPiA+ID4gKwlzZW5kX2hwcmltZV9p
bi5wb3J0LmF0dGFjaGVkX3RyYW5zY29kZXIgPSAodTgpZGF0YS0+ZndfdGM7DQo+ID4gPg0KPiA+
ID4gIAltZW1jcHkoc2VuZF9ocHJpbWVfaW4uaF9wcmltZSwgcnhfaHByaW1lLT5oX3ByaW1lLA0K
PiA+ID4gIAkgICAgICAgSERDUF8yXzJfSF9QUklNRV9MRU4pOw0KPiA+ID4gQEAgLTI1NCw2ICsy
NTcsNyBAQCBtZWlfaGRjcF9zdG9yZV9wYWlyaW5nX2luZm8oc3RydWN0IGRldmljZSAqZGV2LA0K
PiA+ID4gc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhLA0KPiA+ID4NCj4gPiA+ICAJcGFpcmlu
Z19pbmZvX2luLnBvcnQuaW50ZWdyYXRlZF9wb3J0X3R5cGUgPSBkYXRhLT5wb3J0X3R5cGU7DQo+
ID4gPiAgCXBhaXJpbmdfaW5mb19pbi5wb3J0LnBoeXNpY2FsX3BvcnQgPSAodTgpZGF0YS0+Zndf
ZGRpOw0KPiA+ID4gKwlwYWlyaW5nX2luZm9faW4ucG9ydC5hdHRhY2hlZF90cmFuc2NvZGVyID0g
KHU4KWRhdGEtPmZ3X3RjOw0KPiA+ID4NCj4gPiA+ICAJbWVtY3B5KHBhaXJpbmdfaW5mb19pbi5l
X2toX2ttLCBwYWlyaW5nX2luZm8tPmVfa2hfa20sDQo+ID4gPiAgCSAgICAgICBIRENQXzJfMl9F
X0tIX0tNX0xFTik7DQo+ID4gPiBAQCAtMzEyLDYgKzMxNiw3IEBAIG1laV9oZGNwX2luaXRpYXRl
X2xvY2FsaXR5X2NoZWNrKHN0cnVjdCBkZXZpY2UNCj4gPiA+ICpkZXYsDQo+ID4gPg0KPiA+ID4g
IAlsY19pbml0X2luLnBvcnQuaW50ZWdyYXRlZF9wb3J0X3R5cGUgPSBkYXRhLT5wb3J0X3R5cGU7
DQo+ID4gPiAgCWxjX2luaXRfaW4ucG9ydC5waHlzaWNhbF9wb3J0ID0gKHU4KWRhdGEtPmZ3X2Rk
aTsNCj4gPiA+ICsJbGNfaW5pdF9pbi5wb3J0LmF0dGFjaGVkX3RyYW5zY29kZXIgPSAodTgpZGF0
YS0+ZndfdGM7DQo+ID4gPg0KPiA+ID4gIAlieXRlID0gbWVpX2NsZGV2X3NlbmQoY2xkZXYsICh1
OCAqKSZsY19pbml0X2luLCBzaXplb2YobGNfaW5pdF9pbikpOw0KPiA+ID4gIAlpZiAoYnl0ZSA8
IDApIHsNCj4gPiA+IEBAIC0zNjcsNiArMzcyLDcgQEAgbWVpX2hkY3BfdmVyaWZ5X2xwcmltZShz
dHJ1Y3QgZGV2aWNlICpkZXYsDQo+ID4gPiBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEsDQo+
ID4gPg0KPiA+ID4gIAl2ZXJpZnlfbHByaW1lX2luLnBvcnQuaW50ZWdyYXRlZF9wb3J0X3R5cGUg
PSBkYXRhLT5wb3J0X3R5cGU7DQo+ID4gPiAgCXZlcmlmeV9scHJpbWVfaW4ucG9ydC5waHlzaWNh
bF9wb3J0ID0gKHU4KWRhdGEtPmZ3X2RkaTsNCj4gPiA+ICsJdmVyaWZ5X2xwcmltZV9pbi5wb3J0
LmF0dGFjaGVkX3RyYW5zY29kZXIgPSAodTgpZGF0YS0+ZndfdGM7DQo+ID4gPg0KPiA+ID4gIAlt
ZW1jcHkodmVyaWZ5X2xwcmltZV9pbi5sX3ByaW1lLCByeF9scHJpbWUtPmxfcHJpbWUsDQo+ID4g
PiAgCSAgICAgICBIRENQXzJfMl9MX1BSSU1FX0xFTik7DQo+ID4gPiBAQCAtNDI0LDYgKzQzMCw3
IEBAIHN0YXRpYyBpbnQgbWVpX2hkY3BfZ2V0X3Nlc3Npb25fa2V5KHN0cnVjdA0KPiA+ID4gZGV2
aWNlICpkZXYsDQo+ID4gPg0KPiA+ID4gIAlnZXRfc2tleV9pbi5wb3J0LmludGVncmF0ZWRfcG9y
dF90eXBlID0gZGF0YS0+cG9ydF90eXBlOw0KPiA+ID4gIAlnZXRfc2tleV9pbi5wb3J0LnBoeXNp
Y2FsX3BvcnQgPSAodTgpZGF0YS0+ZndfZGRpOw0KPiA+ID4gKwlnZXRfc2tleV9pbi5wb3J0LmF0
dGFjaGVkX3RyYW5zY29kZXIgPSAodTgpZGF0YS0+ZndfdGM7DQo+ID4gPg0KPiA+ID4gIAlieXRl
ID0gbWVpX2NsZGV2X3NlbmQoY2xkZXYsICh1OCAqKSZnZXRfc2tleV9pbiwgc2l6ZW9mKGdldF9z
a2V5X2luKSk7DQo+ID4gPiAgCWlmIChieXRlIDwgMCkgew0KPiA+ID4gQEAgLTQ4OCw2ICs0OTUs
NyBAQA0KPiBtZWlfaGRjcF9yZXBlYXRlcl9jaGVja19mbG93X3ByZXBhcmVfYWNrKHN0cnVjdA0K
PiA+ID4gZGV2aWNlICpkZXYsDQo+ID4gPg0KPiA+ID4gIAl2ZXJpZnlfcmVwZWF0ZXJfaW4ucG9y
dC5pbnRlZ3JhdGVkX3BvcnRfdHlwZSA9IGRhdGEtPnBvcnRfdHlwZTsNCj4gPiA+ICAJdmVyaWZ5
X3JlcGVhdGVyX2luLnBvcnQucGh5c2ljYWxfcG9ydCA9ICh1OClkYXRhLT5md19kZGk7DQo+ID4g
PiArCXZlcmlmeV9yZXBlYXRlcl9pbi5wb3J0LmF0dGFjaGVkX3RyYW5zY29kZXIgPSAodTgpZGF0
YS0+ZndfdGM7DQo+ID4gPg0KPiA+ID4gIAltZW1jcHkodmVyaWZ5X3JlcGVhdGVyX2luLnJ4X2lu
Zm8sIHJlcF90b3BvbG9neS0+cnhfaW5mbywNCj4gPiA+ICAJICAgICAgIEhEQ1BfMl8yX1JYSU5G
T19MRU4pOw0KPiA+ID4gQEAgLTU1OCw2ICs1NjYsNyBAQCBzdGF0aWMgaW50IG1laV9oZGNwX3Zl
cmlmeV9tcHJpbWUoc3RydWN0IGRldmljZQ0KPiA+ID4gKmRldiwNCj4gPiA+DQo+ID4gPiAgCXZl
cmlmeV9tcHJpbWVfaW4ucG9ydC5pbnRlZ3JhdGVkX3BvcnRfdHlwZSA9IGRhdGEtPnBvcnRfdHlw
ZTsNCj4gPiA+ICAJdmVyaWZ5X21wcmltZV9pbi5wb3J0LnBoeXNpY2FsX3BvcnQgPSAodTgpZGF0
YS0+ZndfZGRpOw0KPiA+ID4gKwl2ZXJpZnlfbXByaW1lX2luLnBvcnQuYXR0YWNoZWRfdHJhbnNj
b2RlciA9ICh1OClkYXRhLT5md190YzsNCj4gPiA+DQo+ID4gPiAgCW1lbWNweSh2ZXJpZnlfbXBy
aW1lX2luLm1fcHJpbWUsIHN0cmVhbV9yZWFkeS0+bV9wcmltZSwNCj4gPiA+ICAJICAgICAgIEhE
Q1BfMl8yX01QUklNRV9MRU4pOw0KPiA+ID4gQEAgLTYxOSw2ICs2MjgsNyBAQCBzdGF0aWMgaW50
IG1laV9oZGNwX2VuYWJsZV9hdXRoZW50aWNhdGlvbihzdHJ1Y3QNCj4gPiA+IGRldmljZSAqZGV2
LA0KPiA+ID4NCj4gPiA+ICAJZW5hYmxlX2F1dGhfaW4ucG9ydC5pbnRlZ3JhdGVkX3BvcnRfdHlw
ZSA9IGRhdGEtPnBvcnRfdHlwZTsNCj4gPiA+ICAJZW5hYmxlX2F1dGhfaW4ucG9ydC5waHlzaWNh
bF9wb3J0ID0gKHU4KWRhdGEtPmZ3X2RkaTsNCj4gPiA+ICsJZW5hYmxlX2F1dGhfaW4ucG9ydC5h
dHRhY2hlZF90cmFuc2NvZGVyID0gKHU4KWRhdGEtPmZ3X3RjOw0KPiA+ID4gIAllbmFibGVfYXV0
aF9pbi5zdHJlYW1fdHlwZSA9IGRhdGEtPnN0cmVhbXNbMF0uc3RyZWFtX3R5cGU7DQo+ID4gPg0K
PiA+ID4gIAlieXRlID0gbWVpX2NsZGV2X3NlbmQoY2xkZXYsICh1OCAqKSZlbmFibGVfYXV0aF9p
biwgQEAgLTY3Myw2DQo+ID4gPiArNjgzLDcgQEAgbWVpX2hkY3BfY2xvc2Vfc2Vzc2lvbihzdHJ1
Y3QgZGV2aWNlICpkZXYsIHN0cnVjdA0KPiA+ID4gK2hkY3BfcG9ydF9kYXRhDQo+ID4gPiAqZGF0
YSkNCj4gPiA+DQo+ID4gPiAgCXNlc3Npb25fY2xvc2VfaW4ucG9ydC5pbnRlZ3JhdGVkX3BvcnRf
dHlwZSA9IGRhdGEtPnBvcnRfdHlwZTsNCj4gPiA+ICAJc2Vzc2lvbl9jbG9zZV9pbi5wb3J0LnBo
eXNpY2FsX3BvcnQgPSAodTgpZGF0YS0+ZndfZGRpOw0KPiA+ID4gKwlzZXNzaW9uX2Nsb3NlX2lu
LnBvcnQuYXR0YWNoZWRfdHJhbnNjb2RlciA9ICh1OClkYXRhLT5md190YzsNCj4gPiA+DQo+ID4g
PiAgCWJ5dGUgPSBtZWlfY2xkZXZfc2VuZChjbGRldiwgKHU4ICopJnNlc3Npb25fY2xvc2VfaW4s
DQo+ID4gPiAgCQkJICAgICAgc2l6ZW9mKHNlc3Npb25fY2xvc2VfaW4pKTsgZGlmZiAtLWdpdA0K
PiA+ID4gYS9kcml2ZXJzL21pc2MvbWVpL2hkY3AvbWVpX2hkY3AuaA0KPiA+ID4gYi9kcml2ZXJz
L21pc2MvbWVpL2hkY3AvbWVpX2hkY3AuaA0KPiA+ID4gaW5kZXggZTYwMjgyZWIyZDQ4Li41OGU0
MzlkMmZjMWEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL21pc2MvbWVpL2hkY3AvbWVpX2hk
Y3AuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9taXNjL21laS9oZGNwL21laV9oZGNwLmgNCj4gPiA+
IEBAIC0xODQsOCArMTg0LDEwIEBAIHN0cnVjdCBoZGNwX2NtZF9ub19kYXRhIHsNCj4gPiA+ICAv
KiBVbmlxdWVseSBpZGVudGlmaWVzIHRoZSBoZGNwIHBvcnQgYmVpbmcgYWRkcmVzc2VkIGZvciBh
IGdpdmVuDQo+ID4gPiBjb21tYW5kLiAqLyBzdHJ1Y3QgaGRjcF9wb3J0X2lkIHsNCj4gPiA+ICAJ
dTgJaW50ZWdyYXRlZF9wb3J0X3R5cGU7DQo+ID4gPiArCS8qIFVzZWQgdW50aWwgR2VuMTEuNS4g
TXVzdCBiZSB6ZXJvIGZvciBHZW4xMS41KyAqLw0KPiA+IFdoYXQgYXJlIHlvdSByZWZlcmVuY2Ug
aGVyZSwgdGhlIG1lbWJlciBiZWxsb3cgb3IgYWJvdmU/IC0gIEl0IGlzIGJldHRlciB0bw0KPiBk
b2N1bWVudCBpdCBpbiB1c2luZyBrZG9jIQ0KPiA+IE5leHQsIHdoYXQgcGFydCBvZiB0aGUgY29k
ZSBpcyB2YWxpZGF0aW5nIHRoaXM/DQo+IFRoaXMgaXMgZG9jdW1lbnRhdGlvbiBmb3IgcGh5c2lj
YWxfcG9ydC4gQXMgdGhlc2Ugc3RydWN0dXJlcyBhcmUgTUUgRlcgQVBJDQo+IHBheWxvYWRzLCBp
IGRvbnQgdGhpbmsgd2UgbmVlZCBhIGtkb2Mgb24gaXQuIFBsZWFzZSBsZXQgbWUga25vdyBpZiB5
b3UgdGhpbmsNCj4gb3RoZXJ3aXNlLg0KSSBhc2tlZCBmb3Iga2RvYywgYmVjYXVzZSBpdCBpcyBu
b3QgY2xlYXIgZnJvbSB0aGUgY29tbWVudCB3aGF0IG1lbWJlciBhcmUgeW91IGNvbW1lbnRpbmcg
b24sDQpJbiBvdGhlciB3b3JkcyB0aGUgY29tbWVudCBpcyBsYWNraW5nIHRoZSBzdWJqZWN0LiAN
Cg0KPiANCj4gVGhpcyBpcyBjaGVja2VkIGF0IE1FIEZXIGFuZCByZXR1cm5lZCB3aXRoIEVSUk9S
IENvZGUuDQo+IEFuZCBhcyBvbmx5IEk5MTUga25vd3MgdGhlIEdFTiMsIGk5MTUgdGFrZXMgY2Fy
ZSBvZiB0aGUgZmlsbGluZyB0aGlzIG1lbWJlcg0KPiB3aXRoIFplcm8oSU5WQUxJRF9QT1JUKSwg
Zm9yIGdlbjEyKy4NCj4gDQo+ID4NCj4gPiA+ICAJdTgJcGh5c2ljYWxfcG9ydDsNCj4gPiA+IC0J
dTE2CXJlc2VydmVkOw0KPiA+DQo+ID4gPiArCXU4CWF0dGFjaGVkX3RyYW5zY29kZXI7DQo+ID4g
QWxzbyBoZXJlIG5lZWQgdGhlIGRvY3VtZW50YXRpb24NCj4gSW4gdGhpcyBmaWxlIHdlIGFyZSBu
b3QgZG9jdW1lbnRpbmcgZWFjaCBtZW1iZXIgb2YgdGhlIHN0cnVjdC4gSU1ITyB2YXJpYWJsZQ0K
PiBuYW1lIGlzIHNlbGYgZG9jdW1lbnRpbmcuDQo+IA0KPiBTaW5jZSB0aGVyZSB3YXMgYSBzcGVj
aWFsIGV4cGVjdGF0aW9uIG9uIHBoeXNpY2FsIHBvcnQgb24gZ2VuMTIrLCBJIGhhdmUgYWRkZWQN
Cj4gdGhlIGNvbW1lbnQuDQo+IA0KPiAtUmFtDQo+ID4gPiArCXU4CXJlc2VydmVkOw0KPiA+ID4g
IH0gX19wYWNrZWQ7DQo+ID4gPg0KPiA+ID4gIC8qDQo+ID4gPiAtLQ0KPiA+ID4gMi4yMC4xDQo+
ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
