Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7FB50FF0A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 15:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF59210E2FD;
	Tue, 26 Apr 2022 13:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2069.outbound.protection.outlook.com [40.107.236.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0BB10E2FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 13:28:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LH61DYSZFpY7R7QP1MKFri4lcnCplsucBOais+3elWoqS+KewJGCPIzNTDiCNgMVVOg8o1dTQlx4ONzEwu1vCvzCwW0m9b/H873nUicPL+8JG5gRSP8MoufLH6f6gsZVrWqlUFazM6YM4+NPjJ9ptuoae+ToR0rSxqaJw09QQi8Z9wAXDDfbXeggS26fNNR/+i13E7KYfODOBjxZ9r6Md4/E2X03EcLiVxmuq4ig8P2w8+SYfBeAQX/KXJt/3213vwfXJJKsg55j3RemZ/Ul1Glg5S4HTpiqP0+9BTUaEMKFC3oB6dYUoRLqTxzlTEck42CKNikywM8dMBmn66/Urw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tzHHs1FJ/kZhHJQt3YR305KuV1WdDFxzyNZtAv48NM8=;
 b=JDmIE5IXCVjzSXmtv310d4jLKGUBtY4o7RNZdcSKrLbuAF/C4vr6Xu/jtZCKX6YgEPk6jWyDU8E8870PKy8jxz1dvBBtRb4ZuDCDx9jTjew3YVgvlV9Uwml2qzLpSzBQtE2Odr/+YJPDGty1OZoKIKqccx/CQlruttYeVjKT22lmTyGmthPwzzpgPwn/CohLy9x+WYcieDFQt8V6C2lsCsHeI6Z2TRoEmga+x/RjrGlkkhPsEtc3ZdkqRPaJceM7cYFjQEwey6nOHxto13y3ng+TCPaHhq7vSrH1oybghLQcXUSqpbFHKxnaNSpPi0l+GpDTUEg+Poe63DN1padDPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tzHHs1FJ/kZhHJQt3YR305KuV1WdDFxzyNZtAv48NM8=;
 b=3kz2cjUojtFZja8V0RJmkyuCXM/f5/uXJIoTw/cn1RROyVn6JNJOw1RiMpzL2ROiwW6QPUVqJUs1buuPjjZQJ26t7KnZWBpcl0bgsbjytrHOK1QTx52JLlLZ9/qiRhp8kqtx13AioL//djSf1fSSPApOQ2y2+TticCyOL1IICjc=
Received: from BN9PR12MB5145.namprd12.prod.outlook.com (2603:10b6:408:136::20)
 by CH0PR12MB5313.namprd12.prod.outlook.com (2603:10b6:610:d4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21; Tue, 26 Apr
 2022 13:28:23 +0000
Received: from BN9PR12MB5145.namprd12.prod.outlook.com
 ([fe80::2498:9bac:cf07:b7ec]) by BN9PR12MB5145.namprd12.prod.outlook.com
 ([fe80::2498:9bac:cf07:b7ec%4]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 13:28:23 +0000
From: "Zhang, Dingchen (David)" <Dingchen.Zhang@amd.com>
To: "Latvala, Petri" <petri.latvala@intel.com>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: False-positive of CI issue w/ AMDGPU patch set
Thread-Index: AQHYWOD5GSmgX3OMYkO52XyW8YHuEq0BFZ0wgADNabCAAE4V0w==
Date: Tue, 26 Apr 2022 13:28:23 +0000
Message-ID: <BN9PR12MB5145812B3B65A777F12784438DFB9@BN9PR12MB5145.namprd12.prod.outlook.com>
References: <BN9PR12MB51451DD500285CEAF5ECEF988DF89@BN9PR12MB5145.namprd12.prod.outlook.com>
 <c96cdcbd2aa849eeb2d8d7fd1a8fb33d@intel.com>
 <30f6dd89636041458c36ced18d894b2f@intel.com>
In-Reply-To: <30f6dd89636041458c36ced18d894b2f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Enabled=True;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_SetDate=2022-04-26T13:28:22.683Z;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Name=AMD
 Official Use
 Only; MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_ContentBits=0;
 MSIP_Label_88914ebd-7e6c-4e12-a031-a9906be2db14_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61d04b4d-a423-4bd3-9965-08da2788a330
x-ms-traffictypediagnostic: CH0PR12MB5313:EE_
x-microsoft-antispam-prvs: <CH0PR12MB53135B262757B71773425BE08DFB9@CH0PR12MB5313.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mibGZIP3xUvORYltEuCmmkRaZbrXtokg1JNHY81llER2JVwRR4+H048YVWamo3wHEb5usjuUbIxp8XSyR5NqhgW8aqGkZAnVnEQurshfwcoFnLf3NQzq2ELmIES42dmucKmGzTtg76uq/R5cD5qDoR76I0vjmZBdQGMXZ75CH6x4cMn4NwWU6qqiehU93aJunbK9EaqhO5pHlWyKiaKHmYz4Ji/D7OYBVpIJXNUs+aCFC4xGHQN4scFp7OLpAcmp16Q1iVfk/UUVFlQKrahdNa00XFxWuubX/CYXBhlAHIxOxlZJXolhYti0V+vZ8WW1HUg8CPiXb638fTimipwui+avTm6C8hTBAeRfNU0/jkvB+FKeJpolBnMqdxQu/xe+ai7yyVRSev1dXpekVHEDR0UpZ7wnr9/gc3Qa6q4StZOqCGgXik004y9L4Qdr6iNlHd5R1RSrNn6GoaMI4+ppcd9ItA2Xwvna5A2RrkpQXf+YRSnT72yzMbLDNCiVb3xRimWuChU4wl8+PPW0sYSPAnq6T1zlk3uQPtbxhc3gNxmvucrcHWm/F8wRQHXzRXMsZsbwAYsvXM0ShUSjxsc70fRj6qOXLiivUFSgZmKcKzoRs8VRBw9wGOpWlasWFez85RXmc1BpkWUpglKDJWy3FZk5igySQJ8yXuF4/Or4BSK1w8gCvsGnh5FbKZ2mBV/O4DyYdHKuD47TaOHGtGRTSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR12MB5145.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(186003)(26005)(9686003)(86362001)(5660300002)(52536014)(8936002)(83380400001)(122000001)(38070700005)(66446008)(66476007)(166002)(4326008)(8676002)(2906002)(38100700002)(91956017)(64756008)(66556008)(76116006)(99936003)(66946007)(6506007)(7696005)(508600001)(71200400001)(53546011)(19627235002)(19627405001)(966005)(33656002)(54906003)(55016003)(316002)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?VeBCK2Ii7JHnwNgfA5UtTQfwdozIfMxVrnlMIy3uzqWSacRpH2q21591?=
 =?Windows-1252?Q?EsJqxLU1a9kknUgCUwpgCnwgPrVERq7+PLCbwwdUp6O4iqe1LZcfGjg9?=
 =?Windows-1252?Q?cVVet/hPMOcZe1fB3Hbi7vI9vUFGyBtkOAnsXrP5WYekaFxryZ4ODDk8?=
 =?Windows-1252?Q?2uDF+nCNYLGTNDwdMKdYXVrtzrPJfzckXovOt/rg/nOIy3+yXCSQiOZL?=
 =?Windows-1252?Q?QRN3P71+gcgZEZZMOw2AzPYTxVQR6BUKfSOG9TJLvXcPfvfNUCXWBXYH?=
 =?Windows-1252?Q?54k0P9mYFoKae0x/ZNwM8Tiq8t+xsnYyU01cCKRvlu5gT8mCEjpzhT6V?=
 =?Windows-1252?Q?dykGCa55kvzZZFZ1m5WU1T1N+NUvY5ZF0EBQkHFNmZrb4UrJUj5r5pP1?=
 =?Windows-1252?Q?VYfcJn/K3fGGoRHZ1AE4zmdX9YmX2L5vWskcIRLAn0XujsCCw6CkLXBT?=
 =?Windows-1252?Q?GoTEo3Ks4IKGQwQ5ysqyIVHBa+DEeeiP+oElxTS2KVprGQgfDKZgzxxq?=
 =?Windows-1252?Q?KH2hl3/7aTHDaYnq1/xRVEY2qS+cCwIwwiF1n+yYVSdvO7XtIMynVe+R?=
 =?Windows-1252?Q?w1iHayEl1AKiU22xQrIrR+IUv8c4b8RwVVYKzcnghjQdhnGax+w5XN5R?=
 =?Windows-1252?Q?amTR+H98oBE/YqrNBEOmL7CY7irudtW+b9UnxBD1ziSsuAE4xIgnGd8L?=
 =?Windows-1252?Q?DK93FMdzidFjCavIOd4Sx4/7PdCcW0/ifJOXXOMkBlF4NEPv4lgVdFuY?=
 =?Windows-1252?Q?d/7ZUY3anvA5XXru4JzJxZSmyBRJwSWu+gkbsRjCnt6BDpM/iIa1K9HA?=
 =?Windows-1252?Q?wFpnHnhTOMdaaws3oyq7SXxUWYbYvLaPTZV9PdJXx/gkXfzkNVSUGfWC?=
 =?Windows-1252?Q?47xLcHn+g4eEvUQqtcFbCG4U+li1B246+Pv+5jbo+AVpasAxis1XFuxn?=
 =?Windows-1252?Q?0XHS/6zfm43YKw7Q2AewKz1I0T7HRxpL9mKwveC4hjRgkYAudgMruXl6?=
 =?Windows-1252?Q?U+fZe3uMWckBoW1+BoZOAb+6FHV2GnFHtDn3Nr3funOoaApUHcEAxoDM?=
 =?Windows-1252?Q?wbW/yZX2lBKTWLzJZxrTZJLk0Cmva5M5xvkhwUfBf+Yb+7fJKXisVCCI?=
 =?Windows-1252?Q?18AtTAOq4BlXPtXLcBdVTWCrk5h0btvbnlVM3mt38bVG2H8kpgvAY3zv?=
 =?Windows-1252?Q?Q33VMPM5LTbgab2x50dYIOmCraDWP53Jr5ns776/lY0KEwK+a6IxhDNp?=
 =?Windows-1252?Q?gIIa1zNIAH70bMkNSWqBrG0f7H175cHLtFnzfPSsK35UdXDE+y5Q49oz?=
 =?Windows-1252?Q?LTp23lFVxReJs5t4OLyp9WY6DgieGmWhTwsuQEZk54IGPF/IE9IxjcvE?=
 =?Windows-1252?Q?vTDrJ+1GGjguGXRnriQ+PPpzsxo1alczA6VdsaB1ZJgC0utgAGFOiNzN?=
 =?Windows-1252?Q?E9FW/zNThGu7+NJSU1rAUEwvS440ngdSbQw4flUsRdHZPv8f/s3g+9CG?=
 =?Windows-1252?Q?2Pmc0ew4aAfI2Oe47aaKo1oNq9VgIvDSRD3AQpvovjUJXqk1+n4kprt1?=
 =?Windows-1252?Q?HRNo80h2hNv4gBVHytbmLf6DHmNthkqYc4718ypgW5nFW2Iib0/C23pC?=
 =?Windows-1252?Q?CWTdQKaPIFIUU9G1oW8s9Iq7MQeirAn+bjCNLXXabksjUQnt3uBwR2Xo?=
 =?Windows-1252?Q?OAgNmBwZ1SWsRk9zON+B91GS5+Zee5jWv+ZNPmkojoknmc5k3xcjb3hF?=
 =?Windows-1252?Q?xZSqzixg3MyW9BjfeS5ZKhUhGs7pubnWsQr3q++8OLlpKiEaofT4yk6Q?=
 =?Windows-1252?Q?xVHHqFsMPkgUeu3x56oy3uk+40kkm7bh28IZgOLf+2/gP3U/?=
Content-Type: multipart/related;
 boundary="_004_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_";
 type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR12MB5145.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d04b4d-a423-4bd3-9965-08da2788a330
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2022 13:28:23.2771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /hD9L0q6zbe1DQuQBY1vFsTKUpBY5N4tf332DxI8RJjrG+nTZNbm4oMhFtb7CcZ4ayEVK8J0uxONqeaxaphMJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5313
Subject: Re: [Intel-gfx] False-positive of CI issue w/ AMDGPU patch set
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
Cc: "Pillai, Aurabindo" <Aurabindo.Pillai@amd.com>, "Siqueira,
 Rodrigo" <Rodrigo.Siqueira@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_004_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_
Content-Type: multipart/alternative;
	boundary="_000_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_"

--_000_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

[AMD Official Use Only]

Thanks Lakshmi and Petri.
________________________________
From: Latvala, Petri <petri.latvala@intel.com>
Sent: Tuesday, April 26, 2022 4:49 AM
To: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>; Zhang, Dingch=
en (David) <Dingchen.Zhang@amd.com>; intel-gfx@lists.freedesktop.org <intel=
-gfx@lists.freedesktop.org>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com>; Pillai, Aurabindo <Aurabi=
ndo.Pillai@amd.com>
Subject: RE: False-positive of CI issue w/ AMDGPU patch set


[AMD Official Use Only]


No action can be taken, and the pipeline issue can be ignored.



https://patchwork.freedesktop.org/series/102992/<https://nam11.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fpatchwork.freedesktop.org%2Fserie=
s%2F102992%2F&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e202d1948ba0=
0b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63786559996566=
4285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3Ds42C7Gx44eJOkyLR5aoL8nlHNz8L9s=
rCihT2gQFRW1A%3D&reserved=3D0> is looking for review / acks for this issue =
btw=85



Petri





From: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>
Sent: Tuesday, 26 April 2022 0.25
To: Zhang, Dingchen (David) <Dingchen.Zhang@amd.com>; intel-gfx@lists.freed=
esktop.org; Latvala, Petri <petri.latvala@intel.com>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com>; Pillai, Aurabindo <Aurabi=
ndo.Pillai@amd.com>
Subject: RE: False-positive of CI issue w/ AMDGPU patch set



I am not sure if I can take any action here. @Latvala, Petri<mailto:petri.l=
atvala@intel.com> Any inputs?



Lakshmi.



From: Zhang, Dingchen (David) <Dingchen.Zhang@amd.com<mailto:Dingchen.Zhang=
@amd.com>>
Sent: Monday, April 25, 2022 1:16 PM
To: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com<mailto:lakshmin=
arayana.vudum@intel.com>>
Cc: Siqueira, Rodrigo <Rodrigo.Siqueira@amd.com<mailto:Rodrigo.Siqueira@amd=
.com>>; Pillai, Aurabindo <Aurabindo.Pillai@amd.com<mailto:Aurabindo.Pillai=
@amd.com>>
Subject: False-positive of CI issue w/ AMDGPU patch set



[AMD Official Use Only]



Hi Lakshminarayana,



Could you help clear the CI pipeline issue of below patch w/ the ARMHF fail=
ure, which is a false-positive that is uncorrelated to the amdgpu patch set=
?

https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071<https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.freede=
sktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%2Fpipelines%2F569071&data=3D05%7C01%7C=
Dingchen.Zhang%40amd.com%7C86f30e202d1948ba00b408da27623190%7C3dd8961fe4884=
e608e11a82d994e183d%7C0%7C0%7C637865599965664285%7CUnknown%7CTWFpbGZsb3d8ey=
JWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%=
7C%7C&sdata=3DHl4%2B6syG6ySFsqzsMIeQmLqpPX3bCmYc8Jrtz5e2S3c%3D&reserved=3D0=
>

[Image removed by sender.]<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%2Fpip=
elines%2F569071&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e202d1948b=
a00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637865599965=
664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6=
Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DHl4%2B6syG6ySFsqzsMIeQmLqpPX=
3bCmYc8Jrtz5e2S3c%3D&reserved=3D0>

Pipeline =B7 gfx-ci / igt-ci-tags<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2F=
-%2Fpipelines%2F569071&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e20=
2d1948ba00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63786=
5599965664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DHl4%2B6syG6ySFsqzsMIe=
QmLqpPX3bCmYc8Jrtz5e2S3c%3D&reserved=3D0>

CI tags for IGT GPU tools. WARNING: This repo's master branch will not be u=
pdated. Use https://gitlab.freedesktop.org/drm/igt-gpu-tools<https://nam11.=
safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.or=
g%2Fdrm%2Figt-gpu-tools&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e2=
02d1948ba00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6378=
65599965664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIi=
LCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3Dr86ydthi6%2FVR7k%2F%=
2FFlzuX5yYrmwAa9IbwVnimTK1evU%3D&reserved=3D0> for this purpose.

gitlab.freedesktop.org



https://patchwork.freedesktop.org/series/102886/<https://nam11.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fpatchwork.freedesktop.org%2Fserie=
s%2F102886%2F&data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e202d1948ba0=
0b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63786559996566=
4285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D3NDDEVgfh8U0Nv7rjHhLkjUT9NeRkf=
ENAzm2ROTpZbQ%3D&reserved=3D0>



Thanks

David

--_000_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<p style=3D"font-family:Arial;font-size:10pt;color:#0000FF;margin:5pt;" ali=
gn=3D"Left">
[AMD Official Use Only]<br>
</p>
<br>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks Lakshmi and Petri.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Latvala, Petri &lt;pe=
tri.latvala@intel.com&gt;<br>
<b>Sent:</b> Tuesday, April 26, 2022 4:49 AM<br>
<b>To:</b> Vudum, Lakshminarayana &lt;lakshminarayana.vudum@intel.com&gt;; =
Zhang, Dingchen (David) &lt;Dingchen.Zhang@amd.com&gt;; intel-gfx@lists.fre=
edesktop.org &lt;intel-gfx@lists.freedesktop.org&gt;<br>
<b>Cc:</b> Siqueira, Rodrigo &lt;Rodrigo.Siqueira@amd.com&gt;; Pillai, Aura=
bindo &lt;Aurabindo.Pillai@amd.com&gt;<br>
<b>Subject:</b> RE: False-positive of CI issue w/ AMDGPU patch set</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:"Segoe UI"}
@font-face
	{font-family:"Segoe UI Light"}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
span.x_EmailStyle22
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break=
-word">
<p align=3D"Left" style=3D"font-family:Arial; font-size:10pt; color:#0000FF=
; margin:5pt">
[AMD Official Use Only]<br>
</p>
<br>
<div>
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"">No action can be taken, and the p=
ipeline issue can be ignored.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D""><a href=3D"https://nam11.safelink=
s.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpatchwork.freedesktop.org%2Fs=
eries%2F102992%2F&amp;data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e202=
d1948ba00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637865=
599965664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLC=
JBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3Ds42C7Gx44eJOkyLR5a=
oL8nlHNz8L9srCihT2gQFRW1A%3D&amp;reserved=3D0" originalsrc=3D"https://patch=
work.freedesktop.org/series/102992/" shash=3D"SuF7Dec7C2Zq7nNrHemOeh2dbzDVR=
3+dd/SVFhGOK8NTUkE5jjnUyOLFwKxDFI//4kW5sPMH5Gy7jYQQALl8WI2fA4BoGQFx/GBS0LCy=
Crg3liC5DGprfx6448W13gBLopWY6vPNbvgcPBxBd3s0h0N0CMhgklBJfAuAzbisl9k=3D">htt=
ps://patchwork.freedesktop.org/series/102992/</a>
 is looking for review / acks for this issue btw=85</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Petri</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Vudum, Lakshminarayana &lt;lakshminarayana.vudum@intel.com&gt;
<br>
<b>Sent:</b> Tuesday, 26 April 2022 0.25<br>
<b>To:</b> Zhang, Dingchen (David) &lt;Dingchen.Zhang@amd.com&gt;; intel-gf=
x@lists.freedesktop.org; Latvala, Petri &lt;petri.latvala@intel.com&gt;<br>
<b>Cc:</b> Siqueira, Rodrigo &lt;Rodrigo.Siqueira@amd.com&gt;; Pillai, Aura=
bindo &lt;Aurabindo.Pillai@amd.com&gt;<br>
<b>Subject:</b> RE: False-positive of CI issue w/ AMDGPU patch set</span></=
p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">I am not sure if I can take a=
ny action here.
<a id=3D"OWAAM57EF498B3D784C4BA5D0D08AE4B9E703" href=3D"mailto:petri.latval=
a@intel.com">
<span style=3D"font-family:&quot;Calibri&quot;,sans-serif; text-decoration:=
none">@Latvala, Petri</span></a> Any inputs?</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Lakshmi.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Zhang, Dingchen (David) &lt;<a href=3D"mailto:Dingchen.Zhang@am=
d.com">Dingchen.Zhang@amd.com</a>&gt;
<br>
<b>Sent:</b> Monday, April 25, 2022 1:16 PM<br>
<b>To:</b> Vudum, Lakshminarayana &lt;<a href=3D"mailto:lakshminarayana.vud=
um@intel.com">lakshminarayana.vudum@intel.com</a>&gt;<br>
<b>Cc:</b> Siqueira, Rodrigo &lt;<a href=3D"mailto:Rodrigo.Siqueira@amd.com=
">Rodrigo.Siqueira@amd.com</a>&gt;; Pillai, Aurabindo &lt;<a href=3D"mailto=
:Aurabindo.Pillai@amd.com">Aurabindo.Pillai@amd.com</a>&gt;<br>
<b>Subject:</b> False-positive of CI issue w/ AMDGPU patch set</span></p>
</div>
</div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p style=3D"margin:5.0pt"><span lang=3D"EN-US" style=3D"font-size:10.0pt; f=
ont-family:&quot;Arial&quot;,sans-serif; color:blue">[AMD Official Use Only=
]</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black">Hi&nbsp;Lakshminarayana,</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black">Could you help clear the CI pipeline issue of below patch w/ the=
 ARMHF failure, which is a false-positive that is uncorrelated to the amdgp=
u patch set?</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black"><a href=3D"https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%2F-%2Fpipeli=
nes%2F569071&amp;data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e202d1948=
ba00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63786559996=
5664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI=
6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DHl4%2B6syG6ySFsqzsMIeQm=
LqpPX3bCmYc8Jrtz5e2S3c%3D&amp;reserved=3D0" originalsrc=3D"https://gitlab.f=
reedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071" shash=3D"w3gjMZ6OasYm=
IMh6Hw7fmNgekyCnZWsycojVoaHfgiYvkpq6dOPdlhtDQMWHRsEzQFZoOzlsxx9ZaAWl/d/vymd=
mGb1qjO2R4D8wO9oYfONH7vUYqI5CS3SQyjYYHMaLOq7ohmevWoRP0uUAhltfdEes10IIDPCiGr=
S79Kg39Ng=3D">https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines=
/569071</a></span></p>
</div>
<div>
<div id=3D"LPBorder_GTaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9pZ=
3QtY2ktdGFncy8tL3BpcGVsaW5lcy81NjkwNzE." style=3D"margin-top:12.0pt; margin=
-bottom:12.0pt; min-width:424px">
<table class=3D"x_MsoNormalTable" border=3D"1" cellpadding=3D"0" width=3D"1=
00%" style=3D"width:100.0%; border:solid #C8C8C8 1.0pt">
<tbody>
<tr>
<td valign=3D"top" style=3D"border:none; padding:9.0pt 27.0pt 9.0pt 9.0pt">
<div id=3D"LPImageContainer535359" style=3D"margin-right:9.0pt; overflow:hi=
dden">
<p class=3D"x_MsoNormal"><a href=3D"https://nam11.safelinks.protection.outl=
ook.com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt-ci-tags%=
2F-%2Fpipelines%2F569071&amp;data=3D05%7C01%7CDingchen.Zhang%40amd.com%7C86=
f30e202d1948ba00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7=
C637865599965664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2l=
uMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DHl4%2B6syG6=
ySFsqzsMIeQmLqpPX3bCmYc8Jrtz5e2S3c%3D&amp;reserved=3D0" originalsrc=3D"http=
s://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071" shash=3D"=
w3gjMZ6OasYmIMh6Hw7fmNgekyCnZWsycojVoaHfgiYvkpq6dOPdlhtDQMWHRsEzQFZoOzlsxx9=
ZaAWl/d/vymdmGb1qjO2R4D8wO9oYfONH7vUYqI5CS3SQyjYYHMaLOq7ohmevWoRP0uUAhltfdE=
es10IIDPCiGrS79Kg39Ng=3D" target=3D"_blank"><span style=3D"border:solid win=
dowtext 1.0pt; padding:0cm; text-decoration:none"><img border=3D"0" width=
=3D"160" height=3D"160" id=3D"LPThumbnailImageId535359" alt=3D"Image remove=
d by sender." style=3D"width:1.6666in; height:1.6666in" data-outlook-trace=
=3D"F:1|T:1" src=3D"cid:image001.jpg@01D85963.B5BE94B0"></span></a></p>
</div>
</td>
<td width=3D"100%" valign=3D"top" style=3D"width:100.0%; border:none; paddi=
ng:9.0pt 27.0pt 9.0pt 9.0pt">
<div id=3D"LPTitle535359" style=3D"margin-right:6.0pt; margin-bottom:9.0pt"=
>
<p class=3D"x_MsoNormal"><span style=3D"font-size:16.0pt; font-family:&quot=
;Segoe UI Light&quot;,sans-serif"><a href=3D"https://nam11.safelinks.protec=
tion.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.freedesktop.org%2Fgfx-ci%2Figt=
-ci-tags%2F-%2Fpipelines%2F569071&amp;data=3D05%7C01%7CDingchen.Zhang%40amd=
.com%7C86f30e202d1948ba00b408da27623190%7C3dd8961fe4884e608e11a82d994e183d%=
7C0%7C0%7C637865599965664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLC=
JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DHl=
4%2B6syG6ySFsqzsMIeQmLqpPX3bCmYc8Jrtz5e2S3c%3D&amp;reserved=3D0" originalsr=
c=3D"https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/-/pipelines/569071" =
shash=3D"w3gjMZ6OasYmIMh6Hw7fmNgekyCnZWsycojVoaHfgiYvkpq6dOPdlhtDQMWHRsEzQF=
ZoOzlsxx9ZaAWl/d/vymdmGb1qjO2R4D8wO9oYfONH7vUYqI5CS3SQyjYYHMaLOq7ohmevWoRP0=
uUAhltfdEes10IIDPCiGrS79Kg39Ng=3D" target=3D"_blank"><span style=3D"text-de=
coration:none">Pipeline
 =B7 gfx-ci / igt-ci-tags</span></a></span></p>
</div>
<div id=3D"LPDescription535359" style=3D"margin-right:6.0pt; margin-bottom:=
9.0pt; max-height:100px; overflow:hidden">
<p class=3D"x_MsoNormal"><span style=3D"font-size:10.5pt; font-family:&quot=
;Segoe UI&quot;,sans-serif; color:#666666">CI tags for IGT GPU tools. WARNI=
NG: This repo's master branch will not be updated. Use
<a href=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fgitlab.freedesktop.org%2Fdrm%2Figt-gpu-tools&amp;data=3D05%7C01%7CDingc=
hen.Zhang%40amd.com%7C86f30e202d1948ba00b408da27623190%7C3dd8961fe4884e608e=
11a82d994e183d%7C0%7C0%7C637865599965664285%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C=
&amp;sdata=3Dr86ydthi6%2FVR7k%2F%2FFlzuX5yYrmwAa9IbwVnimTK1evU%3D&amp;reser=
ved=3D0" originalsrc=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools" s=
hash=3D"IGceKl+BqkeNImFpF0Gnh5FcjH8PaLKudEaYWM0yCbzBLBohesuGrkAESFIIXkj6+AQ=
iYqEmHMlyYZhwxgJM4gsf4j5KgxWVLylv1zbR0zo9Y5gLZpNOTuTOydI71uoQXi8ofxoldqpfw7=
CcGNEutc7mNLb7hi9sSqz72BTpPks=3D">
https://gitlab.freedesktop.org/drm/igt-gpu-tools</a> for this purpose.</spa=
n></p>
</div>
<div id=3D"LPMetadata535359">
<p class=3D"x_MsoNormal"><span style=3D"font-size:10.5pt; font-family:&quot=
;Segoe UI&quot;,sans-serif; color:#A6A6A6">gitlab.freedesktop.org</span></p=
>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black"><a href=3D"https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fpatchwork.freedesktop.org%2Fseries%2F102886%2F&amp;data=3D=
05%7C01%7CDingchen.Zhang%40amd.com%7C86f30e202d1948ba00b408da27623190%7C3dd=
8961fe4884e608e11a82d994e183d%7C0%7C0%7C637865599965664285%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C3000%7C%7C%7C&amp;sdata=3D3NDDEVgfh8U0Nv7rjHhLkjUT9NeRkfENAzm2ROTpZbQ%3D&=
amp;reserved=3D0" originalsrc=3D"https://patchwork.freedesktop.org/series/1=
02886/" shash=3D"nxfI6V9PXAqmW6PxgcO8mgDYGfNKecgZ7xujWE6PWMWd4bHXf6tOFnV0H0=
UsIu28uw2WHAaaUQsIBE5Sq+B0yBiacy3gdwFEQMVoeZol+jK0DL1aX7CR8lRDu4Q3dxfMLa6Zi=
NZHOYaypaZPAfhOD7DisYkxJXOznCMw7b+TIOc=3D">https://patchwork.freedesktop.or=
g/series/102886/</a></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black">Thanks</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; co=
lor:black">David&nbsp;</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_--

--_004_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=823;
	creation-date="Tue, 26 Apr 2022 08:49:43 GMT";
	modification-date="Tue, 26 Apr 2022 13:27:53 GMT"
Content-ID: <image001.jpg@01D85963.B5BE94B0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKA
CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK
KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo
ooAKKKKACiiigAooooAKKKKACiiigD//2Q==

--_004_BN9PR12MB5145812B3B65A777F12784438DFB9BN9PR12MB5145namp_--
