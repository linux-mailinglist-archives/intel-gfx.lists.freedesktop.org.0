Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E561EC0410
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 13:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D3D6EE75;
	Fri, 27 Sep 2019 11:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr740074.outbound.protection.outlook.com [40.107.74.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1846EE75
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 11:24:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XmqCI2nY/ujZKHX+kNkM+WoWfQD3tefnBCCkH+d+ptfTq1dl5IoQ/1aou67ZWWavde7TdoN0P/BavWH0KHaPwvYGyajvkb0ATSekhKOx7cSsrCCXSsYFsPy93Mtc5Z9bIX+v1hLUkr5CpKgjX5L74aTHz6/0yWyZrll8qc30P21X4kxOxfBFMbVoMCLlLe8gPnBb2K+HOEhec0wEVN7NiZ+WFzmY+5I0aCqsdhd92sVlO4RMHtuGvYZw4G73RW52E9FzZBs5TXhYmE8kF/XwyYE5/m9mYJNnsdxYQ6TVC73VjBZLyg5EsurzoVL04rfzdBT8K6UThOzwMeOtgztFag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whi76zG4QXaBf+0CuWTdsrr4phSrJg7TXoV6yz87M/c=;
 b=gpXNDuUAZbfKjig3RabWwQ+oEkh4dlGZygDk1PY7mRNWSJ0hPiyyiT0xq+UcEAktZiB2qy98S8ZWPtYhnf8obOf4UlB+g2kCabdypLdDn0f71fZ3KXFBplhWG7JxUtj68gbo0gKY+piGLpra1sktLU1hbKa6ZG9835/iBemNkPYfKQtcDNbSDzT+XAQWyPNjMpn6784wdNNsMWqlWfAw8++5BwTsHghszJv1u1Oa0QNRFFXztobrVK7x3sWigQL5AtpDedvhfwT02nEob3IUW1TTmGZ6Jt4xKVPh1DWwrZnPSxp5DvO0X3v7ZDxwzoInmLU9U0gTvs9za+TGDSmz6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (10.175.88.22) by
 DM5PR12MB2438.namprd12.prod.outlook.com (52.132.141.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Fri, 27 Sep 2019 11:24:28 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::9d43:b3d4:9ef:29fc]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::9d43:b3d4:9ef:29fc%8]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 11:24:28 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Anna Karas <anna.karas@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] doc: Update references to previously renamed files
Thread-Index: AQHVdSTjP1tUj2p48Ue9JN8T1T7EWac/YewA
Date: Fri, 27 Sep 2019 11:24:27 +0000
Message-ID: <1925bf70-f84a-0fec-d68d-fb0c5dc70e65@amd.com>
References: <20190926143244.29102-1-anna.karas@intel.com>
 <20190927111504.20136-1-anna.karas@intel.com>
In-Reply-To: <20190927111504.20136-1-anna.karas@intel.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: MR2P264CA0051.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:31::15) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59612e38-a0d4-47a4-8a34-08d7433d420a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR12MB2438; 
x-ms-traffictypediagnostic: DM5PR12MB2438:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR12MB2438E3A641E9A535F4C93A4F83810@DM5PR12MB2438.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(199004)(189003)(86362001)(2906002)(11346002)(6506007)(76176011)(2616005)(446003)(15650500001)(6486002)(966005)(65806001)(14454004)(256004)(14444005)(5660300002)(52116002)(66946007)(66446008)(66476007)(66556008)(64756008)(6306002)(6116002)(6436002)(31696002)(2501003)(229853002)(110136005)(65956001)(102836004)(478600001)(6246003)(186003)(71200400001)(25786009)(58126008)(316002)(305945005)(7736002)(46003)(81156014)(6512007)(99286004)(66574012)(476003)(386003)(31686004)(71190400001)(36756003)(486006)(8676002)(81166006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB2438;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SIBDacmya3w8yTwSWVz/8zawW4tro6kS6xi7QNxq02qDeo7G8sNNqrTGG/5Q8pw61M8XsEruQZ7tZsJYUHm3jA072Gjd0RcfeAySuikffwQMa6Iescyw3IsP7rBZB6iX1z5lXIg/bXhL397bEe993MJpmnUEpb8FQng5p3W0FEeMsV/jI9/K204vEaXizriwtl66VelMO6/MQFOXDILgzHyr+zpDVOW5dkLiK85IyNlhyuEgZVEAPXxQxn9J4YYrQVibCtiWB+h9FNf1SJs6fjdNGbeC8u8yKW10q7bIq2e+vZV/uZjONNKqZlIS4NCoE5ijBttRdlV2W5VtL6AlBAWboSLx9rvCvCA1TsEnCPIP/Dsjg+tS4bxEh4yWw4hC2GyvSrnT+NKQcXinaItEd3X8WAF2Sj7P/UWddKftOZrQkq0ZPDMWCXlIIt6kMBYrtVcvWATpGGLEUUkUjR31BA==
x-ms-exchange-transport-forked: True
Content-ID: <93D14E622F12184482BF5830B90DA194@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59612e38-a0d4-47a4-8a34-08d7433d420a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 11:24:27.8206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sHrXCKriHXDNh372XU+70ahNMvmNGBoLzBrTCrUkLUpLltRAehyUw3/X4fX6pVCu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2438
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whi76zG4QXaBf+0CuWTdsrr4phSrJg7TXoV6yz87M/c=;
 b=RxgXyI5erSF+yif5VCsQAyRDgvW8tIBBvWf9a2BvjI5YnlIimxywKYUndm5BR726/rrfAC5OmUrptl/qCID8K+rYuEZkC8XQchiek2tiUVgl3fYISF0Uj0pArVrP7vH/L1tn4ptqtM5z9DFRpYlXvpYY2zeoDaOyNoy9twS6QN8=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
Subject: Re: [Intel-gfx] [PATCH] doc: Update references to previously
 renamed files
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

QW0gMjcuMDkuMTkgdW0gMTM6MTUgc2NocmllYiBBbm5hIEthcmFzOg0KPiBVcGRhdGUgcmVmZXJl
bmNlcyB0byByZXNlcnZhdGlvbi5jIGFuZCByZXNlcnZhdGlvbi5oIHNpbmNlIHRoZXNlIGZpbGVz
DQo+IGhhdmUgYmVlbiByZW5hbWVkIHRvIGRtYS1yZXN2LmMgYW5kIGRtYS1yZXN2LmggcmVzcGVj
dGl2ZWx5Lg0KPg0KPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPiBMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzIz
NDAxLz9zZXJpZXM9NjUwMzcmcmV2PTENCj4gU2lnbmVkLW9mZi1ieTogQW5uYSBLYXJhcyA8YW5u
YS5rYXJhc0BpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCllvdSBzaG91bGQgYWxzbyBzZW5kIHRoYXQgdG8gYSBj
b3VwbGUgb2YgbW9yZSBtYWlsaW5nIGxpc3QsIG9ubHkgQ0NpbmcgDQppbnRlbC1nZnggaXMgbm90
IHJlYWxseSBhcHByb3ByaWF0ZSBmb3IgdGhhdCBjb2RlLg0KDQpMZWF2ZSBtZSBhIG5vdGUgd2hl
biB5b3UgbmVlZCB0byBnZXQgdGhpcyBjb21taXR0ZWQgdG8gZHJtLW1pc2MtZml4ZXMuDQoNClJl
Z2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gLS0tDQo+ICAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBp
L2RtYS1idWYucnN0IHwgNiArKystLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2
ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0
DQo+IGluZGV4IGI1NDFlOTdjN2FiMS4uYzc4ZGIyODUxOWY3IDEwMDY0NA0KPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
cml2ZXItYXBpL2RtYS1idWYucnN0DQo+IEBAIC0xMTgsMTMgKzExOCwxMyBAQCBLZXJuZWwgRnVu
Y3Rpb25zIGFuZCBTdHJ1Y3R1cmVzIFJlZmVyZW5jZQ0KPiAgIFJlc2VydmF0aW9uIE9iamVjdHMN
Cj4gICAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgDQo+IC0uLiBrZXJuZWwtZG9jOjogZHJpdmVy
cy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMNCj4gKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYw0KPiAgICAgIDpkb2M6IFJlc2VydmF0aW9uIE9iamVjdCBPdmVydmlldw0K
PiAgIA0KPiAtLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jDQo+
ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gICAgICA6ZXhw
b3J0Og0KPiAgIA0KPiAtLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24u
aA0KPiArLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KPiAgICAgIDpp
bnRlcm5hbDoNCj4gICANCj4gICBETUEgRmVuY2VzDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
