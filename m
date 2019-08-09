Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4251F88051
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 18:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A006EE64;
	Fri,  9 Aug 2019 16:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1127 seconds by postgrey-1.36 at gabe;
 Fri, 09 Aug 2019 13:02:56 UTC
Received: from m4a0039g.houston.softwaregrp.com
 (m4a0039g.houston.softwaregrp.com [15.124.2.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5E46ED4A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 13:02:56 +0000 (UTC)
Received: FROM m4a0039g.houston.softwaregrp.com (15.120.17.147) BY
 m4a0039g.houston.softwaregrp.com WITH ESMTP
 FOR intel-gfx@lists.freedesktop.org; Fri,  9 Aug 2019 13:02:46 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0335.microfocus.com (2002:f78:1193::f78:1193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 9 Aug 2019 12:41:44 +0000
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (15.124.8.14) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Fri, 9 Aug 2019 12:41:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SwKvO7/SIMg5MaGRVhPtNUCxOk+Mr7vfl0YhdHenyMTZqePo2w4tw0rTCEGBEabAA0zbzivhsZLx7P6oRnSSDZT8leoZ4WblstEMQ8Q6qJ+HvZj1THyrvvLAtyg3xsWFhxji5cial9NLjCz0lFefrqcowd7tJas9cR56vIu64cDUmlqJ55SyhumoCJYWrP2Xg185QK2/Q1hlDx3yv/ryDDCdmi7uqCduqcG447BAc/4HiIi1I7Ub+2KklXwx3RG8+p/rNu/kgUCaOsNfrNvCCEPTiPBXsPZlRFTmY+RD7jRAWQffLoqT9ORLVAyuDZazsXMLm+H4lSodD+zfqzC//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sYcvOwjg8cUJpSFkjmv9VmGrPz3s6iUiLi6iwIx3sng=;
 b=OSQGCh0d/VjaY8dtSzMtGuRwSUzENTn01UIFUYh90+eOyDGqXAPq53h5EgZuY4cuSOIF8ao+FuP/O14JPlF96J7D33ou039O7KH8SWxxTljxYxofcCCdAa+Api8sG5NHQKe7Sv+UaDb+mh77+zfhNroVm27THkQS/R/waakdVuDe1U2IjhQrEcDr8LZ8OgR+dohL+5eQ7vg9+zOCMbRfVVoLrOUutzzBc5k5QkfAXsJux4kWrFFW7S4M7hNEG4GWMjDvDSAFj+O3AeiA/PvOZdy1ba99eKs4RPztB3j4d75XDoUnqvuEfndxDfwPS5Q2Gxo9OZUEmjN1vqXzKSYymg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from CH2PR18MB3349.namprd18.prod.outlook.com (52.132.246.91) by
 CH2PR18MB3094.namprd18.prod.outlook.com (52.132.247.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 12:41:43 +0000
Received: from CH2PR18MB3349.namprd18.prod.outlook.com
 ([fe80::8818:7a86:93d7:561a]) by CH2PR18MB3349.namprd18.prod.outlook.com
 ([fe80::8818:7a86:93d7:561a%6]) with mapi id 15.20.2157.015; Fri, 9 Aug 2019
 12:41:42 +0000
From: Martin Wilck <Martin.Wilck@suse.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: 5.3-rc3: Frozen graphics with kcompactd migrating i915 pages
Thread-Index: AQHVTq/MWvioSNESukKKSJFs3b9mpA==
Date: Fri, 9 Aug 2019 12:41:42 +0000
Message-ID: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.218.227.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ac63d25-9da2-4e0a-7dbb-08d71cc6eeaa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR18MB3094; 
x-ms-traffictypediagnostic: CH2PR18MB3094:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR18MB3094FF0254A0470A4A0BC64AFCD60@CH2PR18MB3094.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(199004)(189003)(256004)(14444005)(6116002)(4326008)(3846002)(86362001)(66066001)(2501003)(478600001)(8936002)(966005)(71190400001)(99286004)(71200400001)(6512007)(6306002)(14454004)(316002)(25786009)(6486002)(6506007)(7736002)(6436002)(5640700003)(26005)(2906002)(102836004)(66556008)(53936002)(305945005)(8676002)(64756008)(66476007)(118296001)(91956017)(66946007)(76116006)(5660300002)(36756003)(486006)(6916009)(81166006)(2351001)(476003)(2616005)(81156014)(66446008)(186003)(10126625002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR18MB3094;
 H:CH2PR18MB3349.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HFXsEq3Rxuc/glnwt5TG6HqHdX/XL7+TP4+LH8gzL2UwuYRb0vwSyQGGZqEu9eJGO+yvqzyZlGLeVZU1AczFhR75Sg5/Qsi0u9yF9d++aPILketMg4prle/JQNpFv95fnK/8gYOAu2LgagzEbdJEUeb3VH8EenVPAhrQPCs7tfu8bIJoNGZKieFcuZIvcht1xejyNuxmU5UvFKQEObXSdKCrwsnDRmErbqi2hVSomsF5hNQNgWlr8CdT1WRTBp/9/Dz43G3zsdL3uxTRrpyp2ZYkYCLBF/05W1R9+hqhqyoO/YSyoc0+RZoodIjgklYNyPItHuzUaSRJxtB5dtWaQ5Fx6hvP4TMuf03FTRvkYUPwUU1gh9IIqgSOVcdq7nDpF0QL9Ts1E/DKHUd43GDIQywaUYOiYyb3V71LCMCkjiU=
x-ms-exchange-transport-forked: True
Content-ID: <6362FECD24F3944981FF0F6601AC15D0@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ac63d25-9da2-4e0a-7dbb-08d71cc6eeaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 12:41:42.8418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cSdgwa7fwWJmyN6jTOkt5LuczLqzzg2g6WCfc89fC1cUMBK82TB3FGVy//tQjaIGOGkWb/8BDL2riZJ0EuN6Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR18MB3094
X-OriginatorOrg: suse.com
X-Mailman-Approved-At: Fri, 09 Aug 2019 16:38:32 +0000
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Martin.Wilck@suse.com; 
Subject: [Intel-gfx] 5.3-rc3: Frozen graphics with kcompactd migrating i915
 pages
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBoYXBwZW5lZCB0byBtZSB0b2RheSwgcnVubmluZyBrZXJuZWwgNS4zLjAtcmMzLTEuZzU3
MTg2M2ItZGVmYXVsdA0KKDUuMy1yYzMgd2l0aCBqdXN0IGEgZmV3IHBhdGNoZXMgb24gdG9wKSwg
YWZ0ZXIgc3RhcnRpbmcgYSBLVk0gdmlydHVhbA0KbWFjaGluZS4gVGhlIFggc2NyZWVuIHdhcyBm
cm96ZW4uIFJlbW90ZSBsb2dpbiB2aWEgc3NoIHdhcyBzdGlsbA0KcG9zc2libGUsIHRodXMgSSB3
YXMgYWJsZSB0byByZXRyaWV2ZSBiYXNpYyBsb2dzLg0KDQpzeXNycS13IHNob3dlZCB0d28gYmxv
Y2tlZCBwcm9jZXNzZXMgKGtjb21wYWN0ZDAgYW5kIEtWTSkuIEFmdGVyIGENCm1pbnV0ZSwgdGhl
IHNhbWUgdHdvIHByb2Nlc3NlcyB3ZXJlIHN0aWxsIGJsb2NrZWQuIEtWTSBzZWVtcyB0byB0cnkg
dG8NCmFjcXVpcmUgYSBsb2NrIHRoYXQga2NvbXBhY3RkIGlzIGhvbGRpbmcuIGtjb21wYWN0ZCBp
cyB3YWl0aW5nIGZvciBJTw0KdG8gY29tcGxldGUgb24gcGFnZXMgb3duZWQgYnkgdGhlIGk5MTUg
ZHJpdmVyLg0KDQprY29tcGFjdGQgc3RhY2s6DQoNCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1
c2UuZGUga2VybmVsOiBzeXNycTogU2hvdyBCbG9ja2VkIFN0YXRlDQpBdWcgMDkgMTI6MTI6NDgg
YXBvbGxvbi5zdXNlLmRlDQprZXJuZWw6ICAgdGFzayAgICAgICAgICAgICAgICAgICAgICAgIFBD
IHN0YWNrICAgcGlkIGZhdGhlcg0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJu
ZWw6DQprY29tcGFjdGQwICAgICAgRCAgICAwICAgIDQzICAgICAgMiAweDgwMDA0MDAwDQpBdWcg
MDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogQ2FsbCBUcmFjZToNCkF1ZyAwOSAx
MjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgPyBfX3NjaGVkdWxlKzB4MmFmLzB4NmEw
DQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogIHNjaGVkdWxlKzB4MzMv
MHg5MA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICBpb19zY2hlZHVs
ZSsweDEyLzB4NDANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgX19s
b2NrX3BhZ2UrMHgxMjMvMHgyMDANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2Vy
bmVsOiAgPw0KZ2VuOF9wcGd0dF9jbGVhcl9wZHArMHhjMC8weDE0MCBbaTkxNV0NCkF1ZyAwOSAx
MjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgPw0KZmlsZV9mZGF0YXdhaXRfcmFuZ2Ur
MHgyMC8weDIwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogIHNldF9w
YWdlX2RpcnR5X2xvY2srMHg0OS8weDUwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRl
DQprZXJuZWw6ICBpOTE1X2dlbV91c2VycHRyX3B1dF9wYWdlcysweDEzZi8weDFjMCBbaTkxNV0N
CkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUNCmtlcm5lbDogIF9faTkxNV9nZW1fb2Jq
ZWN0X3B1dF9wYWdlcysweDVlLzB4YTAgW2k5MTVdDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5z
dXNlLmRlDQprZXJuZWw6ICB1c2VycHRyX21uX2ludmFsaWRhdGVfcmFuZ2Vfc3RhcnQrMHgxZmYv
MHgyMjAgW2k5MTVdDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlDQprZXJuZWw6ICBf
X21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KzB4NTcvMHhhMA0KQXVnIDA5IDEy
OjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICB0cnlfdG9fdW5tYXBfb25lKzB4YTBiLzB4
YWUwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogID8gX19tb2RfbHJ1
dmVjX3N0YXRlKzB4M2YvMHhmMA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJu
ZWw6ICBybWFwX3dhbGtfZmlsZSsweGYyLzB4MjUwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5z
dXNlLmRlIGtlcm5lbDogIHRyeV90b191bm1hcCsweGE2LzB4ZTANCkF1ZyAwOSAxMjoxMjo0OCBh
cG9sbG9uLnN1c2UuZGUga2VybmVsOiAgPyBwYWdlX3JlbW92ZV9ybWFwKzB4MjkwLzB4MjkwDQpB
dWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogID8gcGFnZV9ub3RfbWFwcGVk
KzB4MjAvMHgyMA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICA/IHBh
Z2VfZ2V0X2Fub25fdm1hKzB4ODAvMHg4MA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5k
ZSBrZXJuZWw6ICBtaWdyYXRlX3BhZ2VzKzB4OGNkLzB4YmMwDQpBdWcgMDkgMTI6MTI6NDggYXBv
bGxvbi5zdXNlLmRlIGtlcm5lbDogID8NCmZhc3RfaXNvbGF0ZV9mcmVlcGFnZXMrMHg2YjAvMHg2
YjANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgPyBtb3ZlX2ZyZWVs
aXN0X3RhaWwrMHhiMC8weGIwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5l
bDogIGNvbXBhY3Rfem9uZSsweDY2OS8weGM4MA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3Vz
ZS5kZSBrZXJuZWw6ICA/DQplbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHhiOC8weGJl
DQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogIGtjb21wYWN0ZF9kb193
b3JrKzB4MTIwLzB4MjkwDQoNCg0KS1ZNIHN0YWNrOg0KDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxv
bi5zdXNlLmRlIGtlcm5lbDogQ1BVIDAvS1ZNICAgICAgIEQgICAgMA0KMjUxODkgICAgICAxIDB4
MDAwMDAzMjANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiBDYWxsIFRy
YWNlOg0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICA/IF9fc2NoZWR1
bGUrMHgyYWYvMHg2YTANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAg
c2NoZWR1bGUrMHgzMy8weDkwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlDQprZXJu
ZWw6ICBzY2hlZHVsZV9wcmVlbXB0X2Rpc2FibGVkKzB4YS8weDEwDQpBdWcgMDkgMTI6MTI6NDgg
YXBvbGxvbi5zdXNlLmRlDQprZXJuZWw6ICBfX211dGV4X2xvY2suaXNyYS4wKzB4MTcyLzB4NGQw
DQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlDQprZXJuZWw6ICB1c2VycHRyX21uX2lu
dmFsaWRhdGVfcmFuZ2Vfc3RhcnQrMHgxYmYvMHgyMjAgW2k5MTVdDQpBdWcgMDkgMTI6MTI6NDgg
YXBvbGxvbi5zdXNlLmRlDQprZXJuZWw6ICBfX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3Jhbmdl
X3N0YXJ0KzB4NTcvMHhhMA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6
ICB0cnlfdG9fdW5tYXBfb25lKzB4YTBiLzB4YWUwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5z
dXNlLmRlIGtlcm5lbDogIHJtYXBfd2Fsa19maWxlKzB4ZjIvMHgyNTANCkF1ZyAwOSAxMjoxMjo0
OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgdHJ5X3RvX3VubWFwKzB4YTYvMHhlMA0KQXVnIDA5
IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICA/IHBhZ2VfcmVtb3ZlX3JtYXArMHgy
OTAvMHgyOTANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgPyBwYWdl
X25vdF9tYXBwZWQrMHgyMC8weDIwDQpBdWcgMDkgMTI6MTI6NDggYXBvbGxvbi5zdXNlLmRlIGtl
cm5lbDogID8gcGFnZV9nZXRfYW5vbl92bWErMHg4MC8weDgwDQpBdWcgMDkgMTI6MTI6NDggYXBv
bGxvbi5zdXNlLmRlIGtlcm5lbDogIG1pZ3JhdGVfcGFnZXMrMHg4Y2QvMHhiYzANCkF1ZyAwOSAx
MjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUga2VybmVsOiAgPw0KZmFzdF9pc29sYXRlX2ZyZWVwYWdl
cysweDZiMC8weDZiMA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICA/
IG1vdmVfZnJlZWxpc3RfdGFpbCsweGIwLzB4YjANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1
c2UuZGUga2VybmVsOiAgY29tcGFjdF96b25lKzB4NjY5LzB4YzgwDQpBdWcgMDkgMTI6MTI6NDgg
YXBvbGxvbi5zdXNlLmRlIGtlcm5lbDogIGNvbXBhY3Rfem9uZV9vcmRlcisweGM2LzB4ZjANCkF1
ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUNCmtlcm5lbDogIHRyeV90b19jb21wYWN0X3Bh
Z2VzKzB4Y2MvMHgyYTANCkF1ZyAwOSAxMjoxMjo0OCBhcG9sbG9uLnN1c2UuZGUNCmtlcm5lbDog
IF9fYWxsb2NfcGFnZXNfZGlyZWN0X2NvbXBhY3QrMHg3Yy8weDE1MA0KQXVnIDA5IDEyOjEyOjQ4
IGFwb2xsb24uc3VzZS5kZQ0Ka2VybmVsOiAgX19hbGxvY19wYWdlc19zbG93cGF0aCsweDFlZS8w
eGQwMA0KQXVnIDA5IDEyOjEyOjQ4IGFwb2xsb24uc3VzZS5kZSBrZXJuZWw6ICA/IHZteF92Y3B1
X2xvYWQrMHgxMDAvMHgxMjANCltrdm1faW50ZWxdDQoNCkZ1bGwgbG9ncyBjYW4gYmUgZm91bmQg
dW5kZXIgaHR0cHM6Ly9wYXN0ZWJpbi5jb20vS0o2dGNjajQNCkkgaGF2ZW4ndCB5ZXQgdHJpZWQg
aWYgdGhpcyBpcyByZXByb2R1Y2libGUuDQoNClJlZ2FyZHMNCk1hcnRpbg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
