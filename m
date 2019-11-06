Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E85F3660
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 18:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC3E6F76C;
	Thu,  7 Nov 2019 17:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Wed, 06 Nov 2019 20:47:00 UTC
Received: from us1mail02.teledyne.com (us1mail02.teledyne.com
 [140.165.202.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B512E6EE2F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 20:47:00 +0000 (UTC)
IronPort-SDR: TO+SCEyuDunoBCqZdby60567PXRjXhJ7+f2V8C9DTCG1VRbv5m/rXjlaa2NNQy98MtjNKHfcEI
 JUfHpySGtvxubCz9iyKxUflt78HDbY0tENxz0MyYctSLFQtKQchjzpnME0Sw/nxJOh4Yc7x09a
 e9/Oa6RF48RQq8pcMjlq6n/TjBjeTYXLUw9qQzpue08KUzuJTWX4BpD6Zr90m36GPHFBv1GMOq
 c3WX8NZbE3E7/ckdJTYsgDHNLkvxCO0C8IvFk46zeGrSdS4Izz4FXHgXO0WD5dA+rVu4ufpjUP
 ZjE=
IronPort-PHdr: =?us-ascii?q?9a23=3AJFD8LhGZ9qjk8SQdauhW5J1GYnF86YWxBRYc79?=
 =?us-ascii?q?8ds5kLTJ76psi9bnLW6fgltlLVR4KTs6sC17ON9fm5BidZvc7JmUtBWaQEbw?=
 =?us-ascii?q?UCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdFR?=
 =?us-ascii?q?rlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRu7oR/MusULg4ZuJbs9xx?=
 =?us-ascii?q?TVrnBVZ+lY2GRkKE6JkR3h/Mmw5plj8ypRu/Il6cFNVLjxcro7Q7JFEjkoKn?=
 =?us-ascii?q?g568L3uxbNSwuP/WYcXX4NkhVUGQjF7Qr1UYn3vyDnq+dywiiaPcnxTbApRT?=
 =?us-ascii?q?Sv6rpgRRH0hCsbMTMy7XragdJsgq1FvB2hpgR/w4/Kb4GTKPp+Zb7WcdcDSW?=
 =?us-ascii?q?ZcQspdSylND4WhZIUNEuUBJ/5VoYnjqVUTsRuwCwqiBO3txT9JmnD40qI13v?=
 =?us-ascii?q?89EQ7dwAAsA84CvGjWodjzKawcUfq1zK7NzTjbYf9Z1jD96IzVfRAku/6MW6?=
 =?us-ascii?q?p8etfWx0kuFAPFjk+fqY3hPz+by+8AtG+V7+tjVeKvkWEnqgVxriKgyccrjo?=
 =?us-ascii?q?nGm4cVxUrC9Shi3og6O9m4R1Bmbt+kFptfqTuWOJdxQsMnWmxlvjsxxLMBuZ?=
 =?us-ascii?q?6+ZicKyZInygbDa/OZd4iH/A/sVeaXIThmnn5qZLW/hxO0/EO9yeP8TtG53E?=
 =?us-ascii?q?tFoyZZiNXAq3EA2hzJ5sSZRfZw/l2t1DiT2wzL9+1JJV44mbDYJpMi2LI9kp?=
 =?us-ascii?q?UevV7eEiPulkX5kqybelkh9+Wt8evqZrTrppGZOoJwiQzxKKoul8m8DOgmLA?=
 =?us-ascii?q?cCQW2W9fqi2LL/8kD0RqhBgOcsnanDqp/aINwWpqu+AwBIzIku8w2/DzK60N?=
 =?us-ascii?q?QAmnkHMU5FdAqHj4f3P1HOJ+j1AvmijVixiTtkyOrIMLr8DJvMN3TNl6rscr?=
 =?us-ascii?q?dh50JB0gY9095R6JBOBr8fPv3zXlH+u8HYDx8/LQO42froCNJ41o8GWGKPBL?=
 =?us-ascii?q?GWML/KvFOV6e8jP/OAaJIUtTv9MfQp+fHjgH8jlVITYaWlxZ4XZ2q5HvRiLU?=
 =?us-ascii?q?WZe33sgtIZHGkNvwo+T+zqh0eDUT5XfXq9UKU85jUmB4KjF4jDQJuggKCf0y?=
 =?us-ascii?q?e/AJJZe2BHClaSHnvya4qEXPIMZDqIIsB9ijwESaShS4g52BG0rgD6zqBoLu?=
 =?us-ascii?q?7V+i0eupLszt116/fPmhwp9Dx0Cdid3H+JT21ugmwIQDo21rhloUNh0leDzb?=
 =?us-ascii?q?R4g/tAGNxI+vNJSBk1NYXcz+BgCNDyRwfBcc2TSFq8QdWmHCsxTtcww9IVYk?=
 =?us-ascii?q?Z9HcmigQ7H3yawH7AVkLmLDoQu8q3Ax3jxO9p9y3He2akgiVkmXtVANWm/iq?=
 =?us-ascii?q?5w+QjSCJXEk0GYl6axaaQcxzTB9GmZzWWQok5XTRB/Ub7GXXADYUvWtc715k?=
 =?us-ascii?q?TYT7+hWvwbNV57wMuLLqpMZdTsxX4OEO3qPd3aYmS+kmL2Dj6JwK+BaMzhfG?=
 =?us-ascii?q?BLjwvHD01R2T4U+XqDPA56TgKgoGLXDTgkXQbKYkDs+Oh67k28SkMxxgeiU0?=
 =?us-ascii?q?Bl2rak/BNTjvuZHaBAlokYsTss/m0nVG222MjbXp/Z/1I7JvdVfM897VFb1G?=
 =?us-ascii?q?nQqw16ONm6Irt/gkIFLF0lpFvgghNwDIgI0dMnqn8n1kJTEeqZyxsAElHQxp?=
 =?us-ascii?q?XsIvvSI2j28gqobvvz21Le2deSvJkI7Pg9olPLgAytG0Yz9Xgh2N5QgDOR?=
X-IPAS-Result: =?us-ascii?q?A2ERAABBL8Nd/x71pYxiAxoBAQEBAQEBAQEDAQEBAREBA?=
 =?us-ascii?q?QECAgEBAQGBawQBAQEBCwGBSiknBVkTWB0DBDUKhB+DRgOLAYJel36BLhSBX?=
 =?us-ascii?q?wgJAQEBAQEBAQEBBwEYCwoCAQEBgQODPAIXg3gkNQgOAgMLAQEBBAEBAQEBB?=
 =?us-ascii?q?QIBAQEBAmmEa0wMgjspAYFMgTNCAQEBAQMBERERKwwODAQCAQgNBAQBAQECA?=
 =?us-ascii?q?iMDAgICJgoUAQgIAQEECgQFCBMHgwGCdwECDKcMAoE4iGB1gTIag2GGSQkBg?=
 =?us-ascii?q?QQoAYUZiFM+gRFGgkw+gQ6BBIIAARIBIQUQCgsMAg2CSTKCLASQAY55jwYDB?=
 =?us-ascii?q?AOCJIcViHWFTYI8cosKAxCLIZZyjTuBI4JXAgQCBAUCDgEBBYFUAjYqPXFwg?=
 =?us-ascii?q?zwJRxGDJheBBAEIgkOKU3QBMHeOMYEiAYEOAQE?=
Received: from unknown (HELO US1-VPMSG-MBX01.TDY.Teledyne.com)
 ([140.165.245.30])
 by us1mail02.tdy.teledyne.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2019 12:39:51 -0800
Received: from US1-VPMSG-MBX04.TDY.Teledyne.com (140.165.245.33) by
 US1-VPMSG-MBX01.TDY.Teledyne.com (140.165.245.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 6 Nov 2019 14:39:25 -0600
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (140.165.245.200)
 by US1-VPMSG-MBX04.TDY.Teledyne.com (140.165.245.33) with Microsoft
 SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2 via Frontend Transport; Wed, 6 Nov 2019 14:39:25 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6RytvRnF7cTeDiq3u311vQhES+dwKUy+yknr3eLGna6uAKrMkwO9XUWOt+z597SSdbeRqPDZxb2M+yf6CMVxNk32FiUzYzZ5vvX0KgD1eg82voPhiqIqLmj5fI+n4dO8jJOoXIM/1U1biyED1aYnrMwpzbe92WR8PH5RUHzbh8cVExc/vBSX5S1ZE/5kf+AeTQ3smOYXUrjhpQ7qq2nWm+RKimUSNO9DrA/lXe8WdLFYEPRIwMBWVWDOQwLLlrwP6ZO6vtwFr145F/dodpFCo8eHcyQE/rXvf3nZm7RZmbxzaZtk6AITUsWA+RyauFrQLXjdd3LAJvS9LqklsxcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oz5Ult6ryBqrQ4Rnlgr2d7j3NIS9qTrSQNbBu3OioKg=;
 b=mykpoUlAZGEDTomOHi6vUf+/dFbeAK34Ra1QlcFY2/c5tULihL/8p0w6t+4AzOpXmuolghJdRSNlgUEKrivYJGjYorSQgbpjLqzxVKIHvc+ZojwSMNsLYI11mQ7P2f1u4oudngjXo0sZo953AaHqhLZqT57rLMnveNWN8/+ovoWhOc6UoIdTQ6e2JbhR7gfxruMhZRv2TIcJuq+M5Z6xwvsjJhbRKfKzvMvIc1OjMPIT5vfGAFW3uOVVn/2FREz87wM6raZD8xHxM6QRo0OUul8/BmriKGbJtU7U3nxPwXi9Ty7s43zHrqBXFdtBaxh3VXoBp0FNevuBlsByGwb1YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=teledyne.com; dmarc=pass action=none header.from=teledyne.com;
 dkim=pass header.d=teledyne.com; arc=none
Received: from BN8PR14MB3156.namprd14.prod.outlook.com (20.179.140.147) by
 BN8PR14MB3459.namprd14.prod.outlook.com (20.179.143.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 20:39:23 +0000
Received: from BN8PR14MB3156.namprd14.prod.outlook.com
 ([fe80::a96f:98af:82e2:22c4]) by BN8PR14MB3156.namprd14.prod.outlook.com
 ([fe80::a96f:98af:82e2:22c4%7]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 20:39:23 +0000
From: "Voldman, Mikhail" <Mikhail.Voldman@Teledyne.com>
To: Ramalingam C <ramalingam.c@intel.com>
Thread-Topic: i915 HDCP 2.2 TX encryption on Teledyne test instrument
Thread-Index: AdWTRw2BG0Bp65ShSKOnMlnbnuJPdAATIS4AACO6JPAAD49FAAAgVg4g
Date: Wed, 6 Nov 2019 20:39:23 +0000
Message-ID: <BN8PR14MB315620707DDCE8EFE15BE13485790@BN8PR14MB3156.namprd14.prod.outlook.com>
References: <BN8PR14MB3156745AD1ACA0DE7181E50E857F0@BN8PR14MB3156.namprd14.prod.outlook.com>
 <20191105044329.GA19142@intel.com>
 <BN8PR14MB3156BC64F3EB8DDAB2AC5295857E0@BN8PR14MB3156.namprd14.prod.outlook.com>
 <20191106051159.GA32360@intel.com>
In-Reply-To: <20191106051159.GA32360@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.94.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb646fdb-c60a-4eaa-20a9-08d762f9689b
x-ms-traffictypediagnostic: BN8PR14MB3459:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN8PR14MB3459AC5CF8273B0434FBF54285790@BN8PR14MB3459.namprd14.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(366004)(396003)(376002)(39860400002)(13464003)(54504004)(189003)(199004)(40764003)(6506007)(8676002)(305945005)(486006)(66476007)(53546011)(476003)(52536014)(33656002)(14454004)(102836004)(25786009)(64756008)(186003)(8936002)(66446008)(86362001)(6246003)(256004)(5660300002)(446003)(4326008)(5024004)(3846002)(2906002)(316002)(6916009)(66556008)(54906003)(81156014)(81166006)(26005)(76176011)(11346002)(7696005)(74316002)(229853002)(478600001)(76116006)(66946007)(66066001)(9686003)(6306002)(55016002)(99286004)(6116002)(71190400001)(71200400001)(7736002)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR14MB3459;
 H:BN8PR14MB3156.namprd14.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sp0O0qE9ETp+lYQ+MTqQfTWg9o+Hw4N5aIotlmcdKpel9ZVMj2y9qG9Y6X8C7jkWKzgvD17Gi2WGF4qKOryDeXcFu8I6miqAdAdB89dmlezcj5h0X3Zy84DgdKkPO+/fXs5mQW3efX8/3w1h0HlIyzDAnZvmLpwdn4SGzXufYtN8nqyQ8xK56z2dC7LJGGvlcgvrzGJQy1itDRQ6cyVMUwGl+BRNItIP/fdPb+UVy+rVUHpPE8+bTGjOEjtAEZYiuhbXTaBPI/j1C5ta08g9NlPSSo4/yMh0k6gXBJqQWNjTFG9bq7WsfbH1IHYtpPwdfp49D/ySDNrMUtgAHG6aXSmPhCgIhyjH73wy2NpGHDaXege/QDo7zSGvFI+MwT8SLMPA840YdoT83QjssBmFF6zUuH0jRur9fQW7YNGy+3p1JHuvaSguNuXz42nul2iXcD4yXTYHfr61SZJiX/UDTGJa6X0Rrear7QYiim/NPas=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eb646fdb-c60a-4eaa-20a9-08d762f9689b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 20:39:23.6051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e324592a-2653-45c7-9bfc-597c36917127
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: orf2ytxUFE6ZPEj2zz2o89/JKS0Km4uVPVhdysteM6ztXCvieQ3AVoqu2+i381aTOmH746dhFHHV1NGU/pTqL6+Cx4+zgfhkywEV6Buwt2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR14MB3459
X-OriginatorOrg: Teledyne.com
X-TM-AS-Product-Ver: SMEX-12.0.0.1727-8.200.1013-25026.001
X-TM-AS-Result: No--18.891100-8.000000-31
X-TM-AS-MatchedID: 150567-703789-703532-702617-703408-705271-703664-701270-3
 90448-700279-121155-704380-702102-703140-780014-187125-139006-702481-703208
 -106660-780048-871061-703061-702031-705249-139010-704704-184130-701559-7015
 89-780037-702719-703117-703173-390249-703812-702937-703115-187165-110462-70
 3215-703045-700135-702754-704706-704922-703325-704418-700353-700715-703958-
 700378-701478-701477-702251-105040-701708-700263-700845-139705-63-148004-14
 8007-148020-148046-148133-20043-24831-36048-42000-42003-63-190014
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-Mailman-Approved-At: Thu, 07 Nov 2019 17:56:50 +0000
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mikhail.Voldman@Teledyne.com; 
Subject: Re: [Intel-gfx] i915 HDCP 2.2 TX encryption on Teledyne test
 instrument
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Kurmi Suresh Kumar <suresh.kumar.kurmi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUmFtLA0KDQpDYW4geW91IHBvaW50IG1lIHRvIHRoZTogImFkZGl0aW9uYWwga2VybmVsIHBh
dGNoIGZvciB5b3VyIHByb2R1Y3QgdG8gc2V0IHRoZSBkZXNpcmVkIHN0YXRlIGFzIGRlZmF1bHQg
c3RhdGUgb2YgdGhlIHByb3BlcnR5IGF0IHRoZSBjcmVhdGlvbiIuDQoNCk1pa2hhaWwgVm9sZG1h
bg0KU3lzdGVtIEFyY2hpdGVjdA0KDQpUZWxlZHluZSBMZUNyb3ksIFByb3RvY29sIFNvbHV0aW9u
cyBHcm91cA0KMjExMSBCaWcgVGltYmVyIFJvYWQNCkVsZ2luLCBJTMKgIDYwMTIzDQpOb3RlIG5l
dyBlbWFpbCBhZGRyZXNzOsKgIG1pa2hhaWwudm9sZG1hbkB0ZWxlZHluZS5jb20NCjg0Ny04ODgt
MDQ1MCB4MTM2DQoNClNlbmQgbWUgYSBmaWxlIHNlY3VyZWx5DQoNCg0KLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCkZyb206IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4g
DQpTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciA1LCAyMDE5IDExOjEyIFBNDQpUbzogVm9sZG1hbiwg
TWlraGFpbCA8TWlraGFpbC5Wb2xkbWFuQFRlbGVkeW5lLmNvbT4NCkNjOiBLdXJtaSBTdXJlc2gg
S3VtYXIgPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBpbnRlbC1nZnggPGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+DQpTdWJqZWN0OiBSZTogaTkxNSBIRENQIDIuMiBUWCBl
bmNyeXB0aW9uIG9uIFRlbGVkeW5lIHRlc3QgaW5zdHJ1bWVudA0KDQotLS1FeHRlcm5hbCBFbWFp
bC0tLQ0KDQpNb3ZpbmcgdG8gI2ludGVsLWdmeA0KDQpIaSwNCg0KR2xhZCB0aGF0IEkgY291bGQg
aGVscCB5b3UhDQoNCk9uIDIwMTktMTEtMDUgYXQgMjE6NTY6MjggKzAwMDAsIFZvbGRtYW4sIE1p
a2hhaWwgd3JvdGU6DQo+IEhlbGxvIFJhbWFsaW5nYW0sDQo+IA0KPiBUaGFuayB5b3UgZm9yIHF1
aWNrIHJlc3BvbnNlLiANCj4gWW91ciBpbmZvcm1hdGlvbiBpcyB2ZXJ5IGhlbHBmdWwuIA0KPiBC
dXQgY2FuIHlvdSBlbGFib3JhdGU6DQo+IA0KPiBJbiB5b3VyIHByb2R1Y3QsIElmIHlvdSB3YW50
IHRvIGVuYWJsZSB0aGUgSERDUCBhbHdheXMgYmFzZWQgb24gdGhlIA0KPiBzaW5rIGNhcGFiaWxp
dHksIHNldCB0aGUgIkNvbnRlbnQgcHJvdGVjdGlvbiIgdG8gREVTSVJFRCBzdGF0ZSBhbG9uZyAN
Cj4gd2l0aCBkZXNpcmVkIGNvbnRlbnQgdHlwZS4gIFtNVl0gc2hvdWxkIEkgc2V0IERFU0lSRUQg
cHJvdGVjdGlvbiBsZXZlbCBhcyBEUk0gbWFzdGVyPw0KVGhpcyBuZWVkcyBhZGRpdGlvbmFsIGtl
cm5lbCBwYXRjaCBmb3IgeW91ciBwcm9kdWN0IHRvIHNldCB0aGUgZGVzaXJlZCBzdGF0ZSBhcyBk
ZWZhdWx0IHN0YXRlIG9mIHRoZSBwcm9wZXJ0eSBhdCB0aGUgY3JlYXRpb24uDQo+IA0KPiBBcyB0
aGVzZSBhcmUgcHJvcGVydGllcywgbm9uIERSTSBNYXN0ZXJzIGNhbiBvbmx5IHJlYWQgdGhlbS4g
Y2FuIHNldCANCj4gdGhlbS4gW01WXSBkbyB5b3UgbWVhbjogIiBub24gRFJNIE1hc3RlcnMgY2Fu
IG9ubHkgcmVhZCB0aGVtLCBidXQgIGNhbid0IHNldCB0aGVtLiINClllcy4NCj4gQ2FuIEkgdXNl
IE1FSSBpbnRlcmZhY2UgdG8gY29udHJvbCBIRENQPw0KTm90IG5lZWRlZCBpZiB5b3Ugc2V0IHRo
ZSBkZWZhdWx0IHN0YXRlIGFzIGRlc2lyZWQuDQotUmFtDQo+IA0KPiBNaWtoYWlsIFZvbGRtYW4N
Cj4gU3lzdGVtIEFyY2hpdGVjdA0KPiANCj4gVGVsZWR5bmUgTGVDcm95LCBQcm90b2NvbCBTb2x1
dGlvbnMgR3JvdXANCj4gMjExMSBCaWcgVGltYmVyIFJvYWQNCj4gRWxnaW4sIElMwqAgNjAxMjMN
Cj4gTm90ZSBuZXcgZW1haWwgYWRkcmVzczrCoCBtaWtoYWlsLnZvbGRtYW5AdGVsZWR5bmUuY29t
DQo+IDg0Ny04ODgtMDQ1MCB4MTM2DQo+IA0KPiBTZW5kIG1lIGEgZmlsZSBzZWN1cmVseQ0KPiAN
Cj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJhbWFsaW5nYW0gQyA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBOb3ZlbWJlciA0LCAyMDE5
IDEwOjQ0IFBNDQo+IFRvOiBWb2xkbWFuLCBNaWtoYWlsIDxNaWtoYWlsLlZvbGRtYW5AVGVsZWR5
bmUuY29tPg0KPiBDYzogS3VybWkgU3VyZXNoIEt1bWFyIDxzdXJlc2gua3VtYXIua3VybWlAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogaTkxNSBIRENQIDIuMiBUWCBlbmNyeXB0aW9uIG9uIFRl
bGVkeW5lIHRlc3QgaW5zdHJ1bWVudA0KPiANCj4gLS0tRXh0ZXJuYWwgRW1haWwtLS0NCj4gDQo+
IE9uIDIwMTktMTEtMDQgYXQgMjA6NDI6NDkgKzAwMDAsIFZvbGRtYW4sIE1pa2hhaWwgd3JvdGU6
DQo+ID4gSGVsbG8gUmFtYWxpbmdhbSwNCj4gPiANCj4gPiBXZSBleGNoYW5nZWQgbnVtYmVyIG9m
IGUtbWFpbHMgZmV3IG1vbnRocyBhZ28gcmVnYXJkaW5nIExpbnV4IGk5MTUgSERDUCAyLjIgZW5j
cnlwdGlvbiAgc3VwcG9ydCBpbiB0aGUgbmV3IFRlbGVkeW5lIHZpZGVvIHRlc3QgaW5zdHJ1bWVu
dC4NCj4gPiBUaGFua3MgZm9yIHlvdXIgaGVscCB3ZSB3ZXJlIGFibGUgdG8gY29udHJvbCBIRENQ
IDIuMiBlbmNyeXB0aW9uIGFzIERSTSBtYXN0ZXJzLg0KPiA+IA0KPiA+IFVuZm9ydHVuYXRlbHkg
b3VyIHByb2R1Y3QgcmVxdWlyZW1lbnQgc3BlY2lmaWVkIHRoYW4gd2UgbmVlZCB0byAgZW5hYmxl
IEhEQ1AgMi4yIGFsd2F5cyBpZiBhdHRhY2hlZCBtb25pdG9yIGNhcGFiaWxpdGllcyBzaG93cyBI
RENQIDIuMiBzdXBwb3J0Lg0KPiA+IEFsc28gaTkxNSBiYXNlZCBUWCByZXF1aXJlZCB0byBleGVj
dXRlIEhEQ1AgMi4yIHJlLWF1dGhlbnRpY2F0aW9uIGlmIFNpbmsgSFBEIGlzIGRldGVjdGVkLg0K
PiA+IA0KPiA+IElzIGN1cnJlbnQgSW50ZWwgaTkxNSBrZXJuZWwgZHJpdmVyIGltcGxlbWVudGF0
aW9uIGNhbiBzdXBwb3J0IGRlc2lyZWQgZnVuY3Rpb25hbGl0eT8gRG8geW91IGhhdmUgcGxhbnMg
dG8gc3VwcG9ydCB0aGlzPw0KPiANCj4gIkhEQ1AgYWx3YXlzIiB3aWxsIG5ldmVyIGJlIGFuIHVw
c3RyZWFtIHNvbHV0aW9uLiBhbHdheXMgdXNlcnNwYWNlIA0KPiBkcml2ZW4uDQo+IA0KPiBJbiB5
b3VyIHByb2R1Y3QsIElmIHlvdSB3YW50IHRvIGVuYWJsZSB0aGUgSERDUCBhbHdheXMgYmFzZWQg
b24gdGhlIA0KPiBzaW5rIGNhcGFiaWxpdHksIHNldCB0aGUgIkNvbnRlbnQgcHJvdGVjdGlvbiIg
dG8gREVTSVJFRCBzdGF0ZSBhbG9uZyANCj4gd2l0aCBkZXNpcmVkIGNvbnRlbnQgdHlwZS4NCj4g
DQo+IEFzIHRoZXNlIGFyZSBwcm9wZXJ0aWVzLCBub24gRFJNIE1hc3RlcnMgY2FuIG9ubHkgcmVh
ZCB0aGVtLiBjYW4gc2V0IA0KPiB0aGVtLg0KPiANCj4gSG9wZSB5b3UgYXJlIHVuYmxvY2tlZC4g
QWxsIHRoZSBiZXN0IQ0KPiANCj4gLVJhbQ0KPiA+IA0KPiA+IEFyZSBjdXJyZW50IGk5MTUgYWxs
b3cgY29udHJvbCBIRENQIGVuY3J5cHRpb24gYnkgTk9UIERSTSBtYXN0ZXIgYXBwbGljYXRpb24/
DQo+ID4gDQo+ID4gQW55IHN1Z2dlc3Rpb24gb3IgYWR2aWNlIGJ5IEludGVsIEhEQ1AgMi4yIGV4
cGVydHMgd2lsbCBiZSByZWFsbHkgYXBwcmVjaWF0ZWQuDQo+ID4gDQo+ID4gQmVzdCBSZWdhcmRz
LA0KPiA+IA0KPiA+IE1pa2hhaWwgVm9sZG1hbg0KPiA+IFN5c3RlbSBBcmNoaXRlY3QNCj4gPiBb
Y2lkOmltYWdlMDAxLmdpZkAwMUQyRDBBNy45MTkzMjBBMF0NCj4gPiBUZWxlZHluZSBMZUNyb3ks
IFByb3RvY29sIFNvbHV0aW9ucyBHcm91cA0KPiA+IDIxMTEgQmlnIFRpbWJlciBSb2FkDQo+ID4g
RWxnaW4sIElMICA2MDEyMw0KPiA+IE5vdGUgbmV3IGVtYWlsIGFkZHJlc3M6ICANCj4gPiBtaWto
YWlsLnZvbGRtYW5AdGVsZWR5bmUuY29tPG1haWx0bzptaWtoYWlsLnZvbGRtYW5AdGVsZWR5bmUu
Y29tPg0KPiA+IDg0Ny04ODgtMDQ1MCB4MTM2DQo+ID4gDQo+ID4gU2VuZCBtZSBhIGZpbGUgDQo+
ID4gc2VjdXJlbHk8aHR0cHM6Ly90cmFuc2ZlcmVhc3QudGVsZWR5bmUuY29tL2ZpbGVkcm9wL21p
a2hhaWwudm9sZG1hbkANCj4gPiB0ZWxlZHluZS5jb20+DQo+ID4gDQo+IA0KPiANCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
