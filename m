Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE9CE204C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 18:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6ED6EB3F;
	Wed, 23 Oct 2019 16:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770059.outbound.protection.outlook.com [40.107.77.59])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A316EADD;
 Wed, 23 Oct 2019 14:18:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZDkb3WnAMgLB5y+BhdlEcFk4yIsmdT5odwEl3C48+3XRyeY3cggjg04+vpCSQXQapvBcJThsYljcyfknsyRUKPJAOSnsVE0mVUEyOlk1j84AW2rW9ziNKU0OzwS1VoHJj8Mv8Yr14DERHMZU3Ky/LJF/HtrXNvkkZFxvB1bQ7fihUNPBHeCfRXHrSVtkN7ioRpXCHU046qAgX3PKE5Iedn+Iv6qI1X1GJKS8xhlUDiglMvUWzYE+3l3RqEe95vqDeYEpgz2OehEVQYfiL3Ml2R1RCSkXkq3yXuFDJ/oR17+wq4h/DbXdCWyTNgv21nsa3vxFp6OqE0hTlSGzxUM+ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gVRXmmW1S/Nu67kuqk5f2Xwu01fIZp403BnUCMKSM1s=;
 b=NmeRAAxi4OpDANUcAvAUTHWD9ZWIwKExyLi5hIBvLB/sO4S4EeqH6ZnwebT5+3l1NPU5LLlSJjcIMSs3Vao98sxDi42HnHEMr2ex9eNK2NYmmBpmTe8e8CPcvE+JJmRv5TxKWqLyhitTFrGsg2MkqEM4Y3P3fS/OComC9z7ufhZJG/uOkyP1kcd3T2LYS775bnuHgw5cMF4bIHE1RnzPR7dSQmOqaSJAGYkxCnslF1ZLzyRrM+c3kAaHa/uV/LvShihhvy5brcYakBC4Kx9/gpv7Hhum3GJm/1AN2+v8WaCHVJepOCotq1c8C5SCsPa2SoQF8RCGVBsjcX0g1C2ElA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com (10.172.79.7) by
 CY4PR1201MB0182.namprd12.prod.outlook.com (10.172.76.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Wed, 23 Oct 2019 14:18:14 +0000
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::5471:f58b:733e:1a61]) by CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::5471:f58b:733e:1a61%7]) with mapi id 15.20.2367.025; Wed, 23 Oct 2019
 14:18:13 +0000
From: Harry Wentland <hwentlan@amd.com>
To: "Lakha, Bhawanpreet" <Bhawanpreet.Lakha@amd.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t v2] tests/kms_content_protection: check i915 and
 generic debugfs name for HDCP caps
Thread-Index: AQHViEfHEFl9dgkBOEm9sY1e6vDkk6doSNUA
Date: Wed, 23 Oct 2019 14:18:13 +0000
Message-ID: <618e6465-4132-5435-9ea7-b7a002da759b@amd.com>
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
 <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
In-Reply-To: <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.55.250]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
x-clientproxiedby: YTXPR0101CA0026.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::39) To CY4PR1201MB0230.namprd12.prod.outlook.com
 (2603:10b6:910:1e::7)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46672006-9b52-4314-ef9b-08d757c3d70a
x-ms-traffictypediagnostic: CY4PR1201MB0182:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB0182CE5631A7BF01E03BF8E28C6B0@CY4PR1201MB0182.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:337;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(189003)(199004)(2616005)(7736002)(6116002)(31686004)(11346002)(446003)(8936002)(71190400001)(450100002)(5660300002)(31696002)(52116002)(71200400001)(316002)(476003)(14444005)(256004)(486006)(25786009)(305945005)(3846002)(2906002)(76176011)(6436002)(66446008)(66946007)(229853002)(66476007)(36756003)(64756008)(66556008)(66066001)(8676002)(65956001)(6486002)(65806001)(478600001)(2501003)(386003)(110136005)(99286004)(6512007)(54906003)(53546011)(14454004)(26005)(81166006)(58126008)(186003)(81156014)(6246003)(102836004)(4001150100001)(4326008)(6506007)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1201MB0182;
 H:CY4PR1201MB0230.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a0K42ov7Ul9YnhngvPVXe9QuWlMsvMEVvZCasIQImGWwWYnxXEOctNsJaZpp/ZVtkVfxpveMTDX1/g60DwUxNYyBmCbk2ZuJkmtN9vZs/+M7+xMORQYqrqcYiWB8qF9nfrpMTcUtEAWn7Iq+rfzofOQFAjbJqMs3M7Dr6yhtQcwTB22mwjpWf0/j8ARcBltMNVE9WlNhQKJ/XYs2qqw4Ia3Xs8BtRjS1bpKpZzihjvykm3Y2WEl5Zawaoo4S6J3wAMKg78moMnuRtRI+ihPKng/lXCQYCSTTVex9XAUEItgwkL+cyJwsaFfWldVjKaEZnE1r7B6xyhtEAkvvLRGaSIK4MJXAg+ly+98gHGkSm6G2ztv0Hp0RWlirjZLROBJD91I9WAWMdHn5c67cPJGukworvSYVGGQfdqQWHyppIeDBP9veQBoHArIJ05Q7e190
Content-ID: <172C5ECADF130A45934F3A54F40D4604@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46672006-9b52-4314-ef9b-08d757c3d70a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 14:18:13.8120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o9Ym9jPiZfVw60enuh7JDudW5zPhJEES89VLodDiOTPJ8oteZRMLoWfy0HYOeJtHL9cxZIN3Kkkqj7CKO88NOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0182
X-Mailman-Approved-At: Wed, 23 Oct 2019 16:15:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gVRXmmW1S/Nu67kuqk5f2Xwu01fIZp403BnUCMKSM1s=;
 b=wD/gWRm+nNTuKS5EmYcoGpfu0+IRprVM8u2s7pTJ2i5fe6gObI/5ZMRS59Vipw62ItP6UhRWKoNDqgpNoiqEwo7+QZ7DgYYA2gm+gFML1thD+UMK0wlQUteDIC70omvZ2hSDBjQmsb5KsiwcN/JZTfEOw4MkEDLotB3MdFU7e48=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Harry.Wentland@amd.com; 
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/kms_content_protection:
 check i915 and generic debugfs name for HDCP caps
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wentland, Harry" <Harry.Wentland@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0yMSAzOjQyIHAubS4sIEJoYXdhbnByZWV0IExha2hhIHdyb3RlOg0KPiBUaGUg
Y29udGVudCBwcm90ZWN0aW9uIHRlc3RzIG9ubHkgc3RhcnQgaWYgdGhpcyBkZWJ1Z2ZzIGVudHJ5
IGV4aXN0cy4NCj4gU2luY2UgdGhlIG5hbWUgaXMgc3BlY2lmaWMgdG8gaW50ZWwgZHJpdmVyIHRo
ZXNlIHRlc3RzIGNhbm5vdCBiZSB1c2VkIHdpdGgNCj4gb3RoZXIgZHJpdmVycy4gU28gd2Ugc2hv
dWxkIGNoZWNrIGdlbmVyaWMgZGVidWdmcyBuYW1lIGFsc28NCj4gDQo+IHYyOiBDaGVjayBpOTE1
XyogaWYgZGV2aWNlIGlzIGk5MTUsIG90aGVyd2lzZSBjaGVjayB0aGUgZ2VuZXJpYyBuYW1lLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogQmhhd2FucHJlZXQgTGFraGEgPEJoYXdhbnByZWV0Lkxha2hh
QGFtZC5jb20+DQoNClJldmlld2VkLWJ5OiBIYXJyeSBXZW50bGFuZCA8aGFycnkud2VudGxhbmRA
YW1kLmNvbT4NCg0KSGFycnkNCg0KPiAtLS0NCj4gIHRlc3RzL2ttc19jb250ZW50X3Byb3RlY3Rp
b24uYyB8IDEyICsrKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdGVzdHMva21zX2NvbnRlbnRf
cHJvdGVjdGlvbi5jIGIvdGVzdHMva21zX2NvbnRlbnRfcHJvdGVjdGlvbi5jDQo+IGluZGV4IGU2
NzZiNjBiLi40MmZkYzQ1OSAxMDA2NDQNCj4gLS0tIGEvdGVzdHMva21zX2NvbnRlbnRfcHJvdGVj
dGlvbi5jDQo+ICsrKyBiL3Rlc3RzL2ttc19jb250ZW50X3Byb3RlY3Rpb24uYw0KPiBAQCAtNTU0
LDcgKzU1NCwxMSBAQCBzdGF0aWMgYm9vbCBzaW5rX2hkY3BfY2FwYWJsZShpZ3Rfb3V0cHV0X3Qg
Km91dHB1dCkNCj4gIAlpZiAoZmQgPCAwKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICANCj4gLQlk
ZWJ1Z2ZzX3JlYWQoZmQsICJpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5IiwgYnVmKTsNCj4gKwlp
ZiAoaXNfaTkxNV9kZXZpY2UoZGF0YS5kcm1fZmQpKQ0KPiArCQlkZWJ1Z2ZzX3JlYWQoZmQsICJp
OTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5IiwgYnVmKTsNCj4gKwllbHNlDQo+ICsJCWRlYnVnZnNf
cmVhZChmZCwgImhkY3Bfc2lua19jYXBhYmlsaXR5IiwgYnVmKTsNCj4gKw0KPiAgCWNsb3NlKGZk
KTsNCj4gIA0KPiAgCWlndF9kZWJ1ZygiU2luayBjYXBhYmlsaXR5OiAlc1xuIiwgYnVmKTsNCj4g
QEAgLTU3MSw3ICs1NzUsMTEgQEAgc3RhdGljIGJvb2wgc2lua19oZGNwMl9jYXBhYmxlKGlndF9v
dXRwdXRfdCAqb3V0cHV0KQ0KPiAgCWlmIChmZCA8IDApDQo+ICAJCXJldHVybiBmYWxzZTsNCj4g
IA0KPiAtCWRlYnVnZnNfcmVhZChmZCwgImk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHkiLCBidWYp
Ow0KPiArCWlmIChpc19pOTE1X2RldmljZShkYXRhLmRybV9mZCkpDQo+ICsJCWRlYnVnZnNfcmVh
ZChmZCwgImk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHkiLCBidWYpOw0KPiArCWVsc2UNCj4gKwkJ
ZGVidWdmc19yZWFkKGZkLCAiaGRjcF9zaW5rX2NhcGFiaWxpdHkiLCBidWYpOw0KPiArDQo+ICAJ
Y2xvc2UoZmQpOw0KPiAgDQo+ICAJaWd0X2RlYnVnKCJTaW5rIGNhcGFiaWxpdHk6ICVzXG4iLCBi
dWYpOw0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
