Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A23B5C007B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 09:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87216EE99;
	Fri, 27 Sep 2019 07:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780071.outbound.protection.outlook.com [40.107.78.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3AB6EE99
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 07:55:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EyubStcDh5XRkJwzYqYt/zrS7L/iWJ5KLo5WVGMafSXSXq5wJQwHeUmZZ+UGixPOi2yK4GwN/x4VeesXogiwB/KZN1IT3aeSeBs+NyUbxDS0hEiGl1dZ0xwg3M6wrtCnUWRluOqMa3USBWE5aawsn0Byymne4Q7JWS6SSM65x5vzu52nX5GHL4jxV4wJEuCHO1sdUppkKszlqyZx6e/sRHOLKLUyGj4EZYc5KDG0EvzO+qSo7ZDXYKGohPUbxrlzu2y0MBDGNrIto5HDDcxnoj5DaA94keORWT6XQnCXQwCHvH1VD8zfM4gusNVZT18zXKchoAL5/ylfAdtj79UvwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v7AObjzSpEUpYI0o2vAGfIkVWwMrlWfvZgAca72t9Zw=;
 b=i1DAXjeXW3DyaO8bWgGYFXT9O9IOny5I3lL0ea01aetdM2bTrvY9x+BUdwFptcH50kqaLtnzRwAL2WCI7/kftusU2UquQCn1cHbPsUjIlISjVLyC5GuC/prcSmVEMNY8MJvNwf2Kz/1Dqd4NNg2BmgDekTi5BUzRUC2Ogw6QcwfDblFPqF1CwvObTZ2YyZbRq6e4q+t1H+tD92A5JXt5uEHYrd+ZM37wlokQ0KAFn3Z3Nrl5XJjZoo7jpOEWvx8fkaeRMrM9/RFx4AoucjUc5yl4pWVcgYJxctMLAWsXn/3TW16fxQx+nJlPzO29pxuGmnmPlxEAJ89HJEPyFss0mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (10.175.88.22) by
 DM5PR12MB1820.namprd12.prod.outlook.com (10.175.88.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 27 Sep 2019 07:55:55 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::9d43:b3d4:9ef:29fc]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::9d43:b3d4:9ef:29fc%8]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 07:55:55 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Anna Karas <anna.karas@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Update references to previously renamed files
Thread-Index: AQHVdHdW9Xk0vrmsmkuSg5A7o9+zVqc/KQWA
Date: Fri, 27 Sep 2019 07:55:55 +0000
Message-ID: <d81390cf-0a8f-b9e1-3eee-a20dfb9429e5@amd.com>
References: <20190926143244.29102-1-anna.karas@intel.com>
In-Reply-To: <20190926143244.29102-1-anna.karas@intel.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: AM3PR07CA0108.eurprd07.prod.outlook.com
 (2603:10a6:207:7::18) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b12ad2b-0440-4a9e-d94e-08d743202040
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DM5PR12MB1820:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR12MB182001D5FA2A180CC3729C6183810@DM5PR12MB1820.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(136003)(376002)(366004)(199004)(189003)(305945005)(2616005)(476003)(6116002)(71200400001)(966005)(14444005)(256004)(11346002)(65806001)(2906002)(486006)(478600001)(446003)(65956001)(6246003)(71190400001)(99286004)(86362001)(31696002)(66446008)(66556008)(14454004)(64756008)(66476007)(46003)(110136005)(7736002)(25786009)(66946007)(229853002)(6306002)(6512007)(386003)(6436002)(5660300002)(102836004)(58126008)(186003)(316002)(6486002)(6506007)(31686004)(8676002)(15650500001)(66574012)(8936002)(81166006)(81156014)(52116002)(36756003)(76176011)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1820;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4QVktLB/uYp0UtLug8zCkcVaaLWv8Uyg3q28phu6RZFvDrh/TYQ9UjLpUJiXPi2lOOQluyJDB3tBiVn+o9O+gZGHaD/saWXiGMEW2wHeOcMCvoqV2CPaygA297cR9MtStXu66i66iMcZHaBtNXEGdv85cvIgToZCHTn4UzKmmP5IuM7Tss7kHjRG2E3F04o8cbdjTkR5QA8xQC/DWwWu42MItUBCzERZyUUCp423h4JmOH+YDEOFMVlfNJaV4TQp5OarPCqMjPlb3qDxHCNmmA4A3rnWmaK3vdo/ZfyrWLaYdgO03CXo01A1k+jNnmD8p8QZRApp/ZRfzdNUpbFB8gm0qIM2orrDJ1A2z529MyT89HS+/idaJRU3zYMC5eoI3D15vlNfz7OdK+//EdjY3fD3ZL0vW9y9UA2IpgjAfiNYABNqZD6e4v1TpoTu448oGwJwAhIB1HQp48r+NDHqSQ==
x-ms-exchange-transport-forked: True
Content-ID: <3E63D240397DC042903221F3C8CC18B1@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b12ad2b-0440-4a9e-d94e-08d743202040
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 07:55:55.7378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HGz4Y8UPCaekXo8ry7QPQ1t5RjLMU4HkGMmKW2+l3C8LnxTdlS//cs9l75IMZzt+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1820
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v7AObjzSpEUpYI0o2vAGfIkVWwMrlWfvZgAca72t9Zw=;
 b=dNMueNL5CG37eorci1zqRwm4kSMskv+iS/7VZTWL/o1ckPv3shl47otQ3GH35FGe3LuOlUDLTOwTA52X/UmU+rENymP6xwAaaPmkQgcjdFqdE6/H8uQh7Ny2Mt2VNyTGQYrrg4MLyWB175YEJ7V4HxrPUPSt7kX3V+TLj6i2ewg=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update references to previously
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

QW0gMjYuMDkuMTkgdW0gMTY6MzIgc2NocmllYiBBbm5hIEthcmFzOg0KPiBVcGRhdGUgcmVmZXJl
bmNlcyB0byByZXNlcnZhdGlvbi5jIGFuZCByZXNlcnZhdGlvbi5oIHNpbmNlIHRoZXNlIGZpbGVz
DQo+IGhhdmUgYmVlbiByZW5hbWVkIHRvIGRtYS1yZXN2LmMgYW5kIGRtYS1yZXN2LmggcmVzcGVj
dGl2ZWx5Lg0KDQpUaGUgc3ViamVjdCBsaW5lIGlzIHdyb25nIHNpbmNlIHRoaXMgaXNuJ3QgYSBp
OTE1IHJlbGF0ZWQgcGF0Y2gsIGJ1dCANCmFwYXJ0IGZyb20gdGhhdCBpdCBsb29rcyBnb29kIHRv
IG1lLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IENjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IExpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9wYXRjaC8zMjM0MDEvP3Nlcmllcz02NTAzNyZyZXY9MQ0KPiBTaWduZWQt
b2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNvbT4NCj4gLS0tDQo+ICAgRG9j
dW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IHwgNiArKystLS0NCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9k
cml2ZXItYXBpL2RtYS1idWYucnN0DQo+IGluZGV4IGI1NDFlOTdjN2FiMS4uYzc4ZGIyODUxOWY3
IDEwMDY0NA0KPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQo+IEBAIC0xMTgsMTMg
KzExOCwxMyBAQCBLZXJuZWwgRnVuY3Rpb25zIGFuZCBTdHJ1Y3R1cmVzIFJlZmVyZW5jZQ0KPiAg
IFJlc2VydmF0aW9uIE9iamVjdHMNCj4gICAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgDQo+IC0u
LiBrZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMNCj4gKy4uIGtlcm5l
bC1kb2M6OiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KPiAgICAgIDpkb2M6IFJlc2VydmF0
aW9uIE9iamVjdCBPdmVydmlldw0KPiAgIA0KPiAtLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZG1h
LWJ1Zi9yZXNlcnZhdGlvbi5jDQo+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMNCj4gICAgICA6ZXhwb3J0Og0KPiAgIA0KPiAtLi4ga2VybmVsLWRvYzo6IGluY2x1
ZGUvbGludXgvcmVzZXJ2YXRpb24uaA0KPiArLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvbGludXgv
ZG1hLXJlc3YuaA0KPiAgICAgIDppbnRlcm5hbDoNCj4gICANCj4gICBETUEgRmVuY2VzDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
