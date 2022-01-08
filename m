Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2394899DE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9956C10F3FC;
	Mon, 10 Jan 2022 13:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-HK2-obe.outbound.protection.outlook.com
 (mail-oln040092255063.outbound.protection.outlook.com [40.92.255.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E3510FE0B
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 09:59:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNrgd4uIsHLb8ZdsMa9itfHAkaE/6lUj7E3w6xUBLng49JbFF2s9e/4h/ZF41iT7PwaXnlXamrFCwU7wm4BaBvRvpyY9HUIO1v/4OB9PhEsyd00AvUxQDFCBsXVaHHWj1GnBIp05U4eVGuejJY7AT2KDYCSWfoL6IP6S+aggtaOzp85ic07hKm7ahDjAiaUH8hxsK6Iwgjq1SibBApVH7ufIqPWWWRB7g+AlASkCkZjsDlslkx2vbOhl/FRv1AAnnzQcV7Mxq3PEM+VAyCONOccSOofcLXBA+m7Dsou4cvOW7VSAyMoV+W2qXJqFNOusG1ZD/tJz5SJ05K+EfCqk1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nLAUOuIYeR0DnUKyvbhL5x1v58FU7rpNsQiH9jjajuA=;
 b=d0Ol9RZjc34U/oZM5Iy5s1HCz6W8SG/7Kw0e6+ivzwZ6tp9t1lBRNtuedwBNAXoqpu0qs9ELrnnLqQ7sNzkErx7UOT66m65TNhPo+JjymX5ZcqfVB2qecMzjs9uNkuoX9CagXc5PhhFf0Pj8iC558CjxAqkRVaXq4Axns+jPNB81SPngT/9F/v+KBUCU6fMBbWiVxueZFF5wnUcTqVbjqOldhRf1dwSlTMck6qr64KCf7mYLk5/iPR1T4ejffQ9BPWaz21VOJvQhWRS8VdcE0V/F06K2HEa9JjWJw984WKWkBmuNrdCLw8Va7eBdK2JW4vthAXyBNpjA3GmscJGrAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nLAUOuIYeR0DnUKyvbhL5x1v58FU7rpNsQiH9jjajuA=;
 b=Z9VL4z+tv8d1BGtfTyuNUr5SFwRltv/QWxmx+N1Iap66BwPFTaQcfzbaF0YSAd5S9r85IA60p3EnuW8kGtdd1IdgA9f5KE3p4X9kAHQIo47ryxGLXh75k0rxWB/f7c8zXFFdrfsfyTx+MykLFnwvzAWfBBo4/y73UkMh4B+U7gDqFkHA3XsAP/ls+xzkELQySeQh1vBG44Kv+FuTf1vAl5+FbyflGtS3oB5DzFMNM/nAVi/xXHNCYIWLce64MRUNwxF7S4ghNIwvALODodEr+RJVcyFf/yGOQ7NOdVhRZHXKgUI1m0BqBoorAp0bns+CeVAy6WfqFs3QYkRUdUjc0g==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by HK0PR03MB3361.apcprd03.prod.outlook.com (2603:1096:203:31::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.5; Sat, 8 Jan
 2022 09:59:27 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4867.006; Sat, 8 Jan 2022
 09:59:26 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: Orlando Chamberlain <redecorating@protonmail.com>
Thread-Topic: [PATCH] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYBE5G/QSI5yAchkqDOVM07m5d8qxY5DiA
Date: Sat, 8 Jan 2022 09:59:26 +0000
Message-ID: <AC748346-8777-4107-9E7D-526D5854F11B@outlook.com>
References: <20220108050812.6303-1-redecorating@protonmail.com>
In-Reply-To: <20220108050812.6303-1-redecorating@protonmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wls3eXB8ABmx6cSxQyL9qlGJW+DQIHeeXO5s6wd1ok5HCCAH1R6RXMhIDtHSvs3t]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27d100fc-24c8-4720-d08c-08d9d28d8e34
x-ms-exchange-slblob-mailprops: Gc2OTa7qnQ8p3C3z9N4moCNsUBQQutmdUvv/vlO5KRJxrdRWjh/OY7lYfp8TY+39twRVf20TAF1OnMtqrwl7Iq+OV4vE+9psbvBoiaA1K5XtNzdhRZyO5bBuxfoTXdw79jrsifrB1EtxyIzA26nD/0GRjQrQJCRptKZ9RdGJBpPfBo24571lkjOBEiAlin2sTsOBTEyg8a4p/fuIDwM28F2Rg0bmqw0+EdQok0K9Y2rfruuZJVdFsuM1ZrETTKAYU5vzArQ6+HIWg9Ho2CTyduPq6E6KLDGxcg4WlLR5jLbaIF5fG4T28VVsM4TZjzlmsXClbFjHtTtQkVJnGn7gjpbsAXQYYvXajqW5BPfoX8bnJa62+/FMMhzuAKnvBfgBTYAr6OgdRxWyWRTTFNqNi91gZoJrbwILLyd+phsdQrC97CsLQCQRQFjxYSfHPnVqtDh4oPdfFAqjih7dq7K5WF40RosSuiLWrWV3IEPR3vEUn89tYV1MEXhK1ARkEY9r020FjND+4RJpF/7GxkTUZK+5GyVZoCrTtVZwTMcIsQH1xAe85sI4rMrdix+1FXlg43Z+zqaueGBr/YtVzZX1UXDncJeotdJf9A2gPDy9SikPqWOAxswp6beWTp4Wpj0kVk1+Sd6BvYaopYBXKlA6Gd2UkTTaseJZG44yo1jGKTaVlkhhhaP9tA==
x-ms-traffictypediagnostic: HK0PR03MB3361:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: loZsJiCp67CgtyqEUVMyYlS5BxNiXYqAvbTegvpZFRSEdwie3eMUYEJlZjxBPYllrLW63TeZNJPSD0qT5FhLI1UT4PmL1SXgc2rDlYQSyfdoa73Vk6VTZdWaFW8OvCyMEEbsO6QxMhkjY93SaapUkXEMqLrOIs0X0vMj66XXRd6ui/4WUEwX4IsV627MOrnJjkcUHxUgijfNQSABfaHGUBWpW6LevHegihIYYp1SCpvqF2KVza1oPikPWFHbpUgmdevkApfU70b70LuMYpbttYl7cQkzGMeCXLqPrsiH8SbHRlysRFBSloGMcDNDBK3Bai0y/WcfmiYAb97vUDloaIdqxHUIjQW+H+PNCK8nnQfLiEFEgi3qecQcgAxHzMY1ZDjAu/8Skd1NI0a9aEPMWUJenBpwcXTgoTIVcu/ElUpDpl2H5Nw+7ODshaCOCL6HeOeKYeH6Kr/MuvVmMo0RzHQM7Bn2C63L0nttsaPL3pqCVagkGDbDPh5BkGbOIIi1HJaBLbmdQD1WvmgsiJoht95EXS8Dd2vooeP+g7nukSpd9U8Moop5nct8UoXXMOZ/l2ef7Qz7j9J6aO8DNpFKGQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gD2FsWqVyy8dUTFe33JZh0XHC8CMgTO4dcDu75vXh27kam7Xs+DB9m6j3EbJ?=
 =?us-ascii?Q?xdbpOJ6/75GM7rpU8zBZJ/3dfSxc4MD/2MXFLhjolCFO1IayYa0XmiNhQsC2?=
 =?us-ascii?Q?ZT7Fb2ksN8WH55DKudLfp5afKBhbHci1SoAIyd6sg7o+6QUMqCbJLfqtHU2W?=
 =?us-ascii?Q?75vGNZP8P1UdN1ekWfYTmTcDElpXoN6h9F8PHxqg8BDgXKDmW/Jpi9ygiywR?=
 =?us-ascii?Q?pE9kfli8UCSuaLhyFALmmImTGkDW/EstKgLZ1SLNNeWiQChpJ7q59dlALFCj?=
 =?us-ascii?Q?nlcCq9a7CM6ev5bK2FEMhF27Yb+qKv8N5weXbSCR9JJK7uu2CC9vJ1l1ldEt?=
 =?us-ascii?Q?o5cmzFN9Pl8PlBxHKnAR6CB+cvbiqcX0WpprLl2CU82OUw1gYjitb8ux9z5J?=
 =?us-ascii?Q?VZ8t3ZSGjjTNV3DjRtB4Jost+VHbGZ4rFjt5avmjMMZlEb7MeLSzAHB81LkW?=
 =?us-ascii?Q?o48p+CqmIkGSsuwaozJPzLJYIGPFydOwzyauEMHXot8JPEpSJHTXFpFwQGIw?=
 =?us-ascii?Q?7TAws8UOZPyTtOjM+1jIsFuAu27Gtl92injJXOCf63YFSOsHioV7kt1dDETa?=
 =?us-ascii?Q?6txCx3oDRj9cGrC4crjeNa+yoVT53rbl6X9R+8bMGUDfKVgQDvmbuyV63Wnh?=
 =?us-ascii?Q?DRL9K0vzwAuX3AbMQ8bjfSpeSqGcnO3Q9yNg+IyHoubRlCyQFeQSymkTjS39?=
 =?us-ascii?Q?dJEQTcVHEMmZ9PNShr2PDaqO7Kewh8wfqKJ2vBN1xsVwo1OHLePnaYzNIkfC?=
 =?us-ascii?Q?dya5OYveqpAxoFttyICX2XBeIPbPAA2A3BSwd8kwnTLw4UQIjiWYTN/Z+VaT?=
 =?us-ascii?Q?edsLd3gBS2Q3SBB2x0O+MANBJP2dWkqeiAJhSQ7agKsssNmhwZ+Bzm6mSXKy?=
 =?us-ascii?Q?kusZ9Cyw2e6u+mzMRQ8QamjfWngEsMeFlc+TIt5e1DdU+qPLkdOG98p7B4K4?=
 =?us-ascii?Q?bWe74stUf/YiGUEybVGRc2harfEYE87/5felTXAS564Ycz3ZZIWXemwjtorS?=
 =?us-ascii?Q?1nYoo0Rse2ENsPB/QL1KKCODBw=3D=3D?=
Content-Type: multipart/mixed;
 boundary="_002_AC748346877741079E7D526D5854F11Boutlookcom_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d100fc-24c8-4720-d08c-08d9d28d8e34
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2022 09:59:26.7058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR03MB3361
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard large BIOS framebuffers
 causing display corruption.
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
Cc: Aun-Ali Zaidi <admin@kodeit.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Aditya Garg <gargaditya08@live.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_002_AC748346877741079E7D526D5854F11Boutlookcom_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <17F02EA3DEB7EE478876DB2DB2C801C5@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable


I believe I forgot to add Aditya to the conversation. So, I am sending the =
patch as an attachment for those who want to test :)=

--_002_AC748346877741079E7D526D5854F11Boutlookcom_
Content-Type: application/octet-stream; name="0001-drm.patch"
Content-Description: 0001-drm.patch
Content-Disposition: attachment; filename="0001-drm.patch"; size=1218;
	creation-date="Sat, 08 Jan 2022 09:59:25 GMT";
	modification-date="Sat, 08 Jan 2022 09:59:25 GMT"
Content-ID: <34F95B4E1D087F4B83FB162DA4FBC392@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

RnJvbTogQXNoaXNoIEFyb3JhIDxhc2hpc2hhcm9yYS5saW51eEBvdXRsb29rLmNvbT4NCg0KT24g
Y2VydGFpbiA0ayBwYW5lbHMsIHRoZSBCSU9TIGZyYW1lYnVmZmVyIGlzIGxhcmdlciB0aGFuIHdo
YXQgcGFuZWwNCnJlcXVpcmVzIGNhdXNpbmcgZGlzcGxheSBjb3JydXB0aW9uLiBJbnRyb2R1Y2Ug
YSBjaGVjayBmb3IgdGhlIHNhbWUuDQoNClNpZ25lZC1vZmYtYnk6IEFzaGlzaCBBcm9yYSA8YXNo
aXNoYXJvcmEubGludXhAb3V0bG9vay5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA2ICsrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMNCmluZGV4IGFkYzNhODFiZS4uMGE2NDE4NGRmIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCkBAIC0xOTQsMTAgKzE5NCwxMCBA
QCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIs
DQogCWludCByZXQ7DQogDQogCWlmIChpbnRlbF9mYiAmJg0KLQkgICAgKHNpemVzLT5mYl93aWR0
aCA+IGludGVsX2ZiLT5iYXNlLndpZHRoIHx8DQotCSAgICAgc2l6ZXMtPmZiX2hlaWdodCA+IGlu
dGVsX2ZiLT5iYXNlLmhlaWdodCkpIHsNCisJICAgIChzaXplcy0+ZmJfd2lkdGggIT0gaW50ZWxf
ZmItPmJhc2Uud2lkdGggfHwNCisJICAgICBzaXplcy0+ZmJfaGVpZ2h0ICE9IGludGVsX2ZiLT5i
YXNlLmhlaWdodCkpIHsNCiAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KLQkJCSAgICAi
QklPUyBmYiB0b28gc21hbGwgKCVkeCVkKSwgd2UgcmVxdWlyZSAoJWR4JWQpLCINCisJCQkgICAg
IkJJT1MgZmIgbm90IHZhbGlkICglZHglZCksIHdlIHJlcXVpcmUgKCVkeCVkKSwiDQogCQkJICAg
ICIgcmVsZWFzaW5nIGl0XG4iLA0KIAkJCSAgICBpbnRlbF9mYi0+YmFzZS53aWR0aCwgaW50ZWxf
ZmItPmJhc2UuaGVpZ2h0LA0KIAkJCSAgICBzaXplcy0+ZmJfd2lkdGgsIHNpemVzLT5mYl9oZWln
aHQpOw0KLS0gDQoyLjI1LjENCg0K

--_002_AC748346877741079E7D526D5854F11Boutlookcom_--
