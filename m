Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA53BCA71
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 16:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B746E131;
	Tue, 24 Sep 2019 14:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780059.outbound.protection.outlook.com [40.107.78.59])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29976E0EC;
 Tue, 24 Sep 2019 14:41:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJwf7niSnQiTRTqNkzHmsry+9Sn52t7WaUJGi5NaBT9MKeuE8SxQW8myNFEQz8akqL6G76HTFMlasTEq9HnNFZ9pu4NSDOXe+ad7rEH6yN3EgbLjzkDeWRXzMsu5vx+BoiXvM8paeLwyHIhrSyOzCcnPLFr54a0tddH9hQkCF/bNzhO2x6A64BwKwnImkeLeFdmekqpFlj6B9owuHJ0FwXfGzo7oFF8yXx1yTYzi1cFYo1Yh4CzXE1DefXXq1KiHJw4Hhlh2jjmb+5Xf6nBdiI1WUPiI83OlElRmZVQcf/ogO6EFgnBnDtsBbLBcLCO6itl9nXMH8PxOHPEEtlaeEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+SAvTnFu2EIxveZ3R+UpaoUA7/WdDwJYiDh1d0w1ea8=;
 b=lrrEHAZx+uwSAlSewBPRh8GxIW/sEM88Wh8EqP1XJOWrE08LQnugr9jg+QFSMSU1oHx9pCt0ylNgKwdR45vm8hM3WlFBVkONwN852akykEFIK/E89vbg65QSdcRBAb5LHRyAyAE+gKwXiVldNvAFE0IVkqOC0L+rmgUtBlpKvrhHSDI5Q90lSVuGPRrfAr8EF4/6xsZlR4YYZs+lMrAzDWW0ei/yRgAQ/lO1HjaoTcxpm4zd/NScZZpybBmpVKCg6XPEkGqzUZ1KFVK6tso5FlKLEGvs6NF03mShTt+N71fhS1X0xcv7e493dYkFp5dx9K2FPNknXa0mZ+pR6a4hnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1148.namprd12.prod.outlook.com (10.168.237.17) by
 DM5PR12MB1321.namprd12.prod.outlook.com (10.168.239.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Tue, 24 Sep 2019 14:41:48 +0000
Received: from DM5PR12MB1148.namprd12.prod.outlook.com
 ([fe80::a1b2:dc0c:729c:cfed]) by DM5PR12MB1148.namprd12.prod.outlook.com
 ([fe80::a1b2:dc0c:729c:cfed%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 14:41:48 +0000
From: "Lakha, Bhawanpreet" <Bhawanpreet.Lakha@amd.com>
To: Ramalingam C <ramalingam.c@intel.com>
Thread-Topic: [igt-dev] [PATCH] test/kms_content_protection: Use generic
 debugfs name for HDCP caps
Thread-Index: AQHVcjwE7MJR/a7iqU+RzWX9fd8vfKc6l8IAgABQJwA=
Date: Tue, 24 Sep 2019 14:41:48 +0000
Message-ID: <5b9d46f0-9fb2-e94a-2cbb-69d44a03577a@amd.com>
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
 <20190924095454.GE4019@platvala-desk.ger.corp.intel.com>
In-Reply-To: <20190924095454.GE4019@platvala-desk.ger.corp.intel.com>
Accept-Language: en-CA, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YTOPR0101CA0020.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:15::33) To DM5PR12MB1148.namprd12.prod.outlook.com
 (2603:10b6:3:74::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c9142de-b550-4a89-7f15-08d740fd5417
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1321; 
x-ms-traffictypediagnostic: DM5PR12MB1321:
x-microsoft-antispam-prvs: <DM5PR12MB1321405FC7985C7696E36A9FF9840@DM5PR12MB1321.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(39860400002)(346002)(396003)(199004)(189003)(31686004)(81156014)(86362001)(66476007)(5660300002)(14454004)(71200400001)(66556008)(486006)(7736002)(66946007)(71190400001)(305945005)(256004)(66446008)(64756008)(6486002)(6116002)(3846002)(316002)(2906002)(6436002)(6512007)(4744005)(102836004)(31696002)(76176011)(6246003)(6916009)(478600001)(476003)(36756003)(446003)(8936002)(81166006)(53546011)(229853002)(54906003)(25786009)(186003)(52116002)(66066001)(2616005)(8676002)(11346002)(99286004)(386003)(6506007)(26005)(4326008)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1321;
 H:DM5PR12MB1148.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W8MxqP6/9JS+Ao3Ljc/nD747wiNjzK1NM9hi33eEtEhJp6KbnUGRWviDHQhgjKGL8bHo3FuSAlQos1uQ8FrLSFym3WMnz4fG1U1sv5Tx+uzvfeU9yXNeiiizCnbhk0FfIXExiTxWvCiKY0R0vj/4kb6mKATL2272jJSeFy4/ZhqJC7EjAc3r1IqDFAlZKBAB1TV79xOmixd2yfC39RAJ4M7XG9Nh6fClMzb9oTeRgeDkIGAzUtBzQkZnCV01bwMBG/hHLQw9O1x5FFwNVI/w1S1jMSPcYxwg7Gk4oUJ2DCZ58xeSbwx6NDVfSUautI4MOZ3ZZYOLuyyvtQx4tKVcEbxXymnhFGe1ppmbwdjlUtoeWho7z5SZGYS6FhpiC85Ab1JNkvr4z5/z8pQY2s2+fsXCY1m5VozEnRW7+2gRjIE=
x-ms-exchange-transport-forked: True
Content-ID: <B3DF882D45FCDE4E8E6EF2BAFD887D65@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c9142de-b550-4a89-7f15-08d740fd5417
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 14:41:48.1472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F3GRce9h3izFte6agP9PgjT48/6/P0VHPAKbr6ja65ZcUlnUnd+wqEDD+ebrzWIy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1321
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+SAvTnFu2EIxveZ3R+UpaoUA7/WdDwJYiDh1d0w1ea8=;
 b=TeBgIccin0UIzZx0uxudOia2knpHbipRxKcplvoRU18pPO7beCTyFkL10aA42W97e3cLGUOCfAzJadParj+4Y2Qo4GB++8WxxToTzsUY8Hc3jc2hnSB5c8Y/smxgktNTDWij94XmBRve3u1m04BqFEHE84rvNeTr0Lu0yaXqFBM=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Bhawanpreet.Lakha@amd.com; 
Subject: Re: [Intel-gfx] [igt-dev] [PATCH] test/kms_content_protection: Use
 generic debugfs name for HDCP caps
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSB1c2VkIHRoZSB0ZXN0cyBmb3Igb3VyIGhkY3AgaW1wbGVtZW50YXRpb24uIEJ1dCBi
ZWNhdXNlIG9mIHRoZSANCm5hbWUgd2UgY2FuJ3QgdXNlIGl0IGFzIGlzLg0KDQoNCkJoYXdhbg0K
DQpPbiAyMDE5LTA5LTI0IDU6NTQgYS5tLiwgUGV0cmkgTGF0dmFsYSB3cm90ZToNCj4gT24gTW9u
LCBTZXAgMjMsIDIwMTkgYXQgMDI6MjM6MjVQTSAtMDQwMCwgQmhhd2FucHJlZXQgTGFraGEgd3Jv
dGU6DQo+PiBSZW5hbWUgImk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHkiIHRvICJoZGNwX3Npbmtf
Y2FwYWJpbGl0eSINCj4+DQo+PiBUaGUgY29udGVudCBwcm90ZWN0aW9uIHRlc3RzIG9ubHkgc3Rh
cnQgaWYgdGhpcyBkZWJ1Z2ZzIGVudHJ5IGV4aXN0cy4NCj4+IFNpbmNlIHRoZSBuYW1lIGlzIHNw
ZWNpZmljIHRvIGludGVsIGRyaXZlciB0aGVzZSB0ZXN0cyBjYW5ub3QgYmUgdXNlZCB3aXRoDQo+
PiBvdGhlciBkcml2ZXJzLg0KPj4NCj4+IFJlbW92ZSAiaTkxNSIgc28gdGhlIGRlYnVnZnMgbmFt
ZSBpcyBnZW5lcmljLg0KPiBJIGRvbid0IHNlZSBhbnkgZHJpdmVycyBjdXJyZW50bHkgdXNpbmcg
dGhlIG5hbWUNCj4gImhkY3Bfc2lua19jYXBhYmlsaXR5Ii4gSXMgdGhlIGNvbnRlbnQgb2YgdGhl
IGZpbGUgaW4gb3RoZXIgZHJpdmVycw0KPiB0aGUgc2FtZSBhcyBpOTE1J3M/DQo+DQo+IEFuZCBp
cyB0aGVyZSBhIHBsYW4gdG8gcmVuYW1lIGk5MTUncyBkZWJ1Z2ZzIGZpbGVuYW1lIHRvDQo+IGhk
Y3Bfc2lua19jYXBhYmlsaXR5PyBSYW0/DQo+DQo+IEFncmVlZCwgZm9yIGEgRFJJVkVSX0FOWS11
c2luZyB0ZXN0IGdlbmVyaWMgbmFtZXMgYXJlIHByZWZlcnJhYmxlLCBidXQNCj4gdGhpcyBuZWVk
cyBzb21lIGtpbmQgb2YgYSB0cmFuc2l0aW9uIHBsYW4uIElmIGk5MTUncyBmaWxlbmFtZSBpcw0K
PiBzdGF5aW5nIGFzIGlzLCBib3RoIG5hbWVzIG5lZWQgdG8gYmUgdHJpZWQuDQo+DQo+DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
