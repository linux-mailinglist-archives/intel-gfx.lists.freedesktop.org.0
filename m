Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F360863A614
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB6B89E2A;
	Mon, 28 Nov 2022 10:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01on2091.outbound.protection.outlook.com [40.107.14.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765DB10E05A
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Nov 2022 13:00:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W4bkGr+NIGbzROmTCNKkiS758QigLP0BBviKrBnitWZIuFtxAdu/pnMPxnD38YMmrTkkFwPjYevq5+8bqQRmj8j+d47IufCvHwVIEouGSBEcgqmMkAkhhPeccGZSFEguV4hRDcvHm2uomduemxckp73j03xt6la+Vdd2fPLS+zzEhowlo+or8n7I2YoYZ4UVLeajXn4vYW5cG3iZbpyvcDI5CpV9hdryZKixHgwzfRz9qV9q/C5VwuwxOr+rGXDrQGd/HsWUkc9OiG6OXYGTO5nxbBi248YdYm8VK4nSRFcv0b1Wh+ELnKIUoNp+rS37xTzOqi/KpRxKkVStS7ChNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtV7EZ4FVm0lHyPJ150k7JrgxfgZK+CYOlkQa+uShFc=;
 b=OuIdnlUOi/shdGv1YBr0pOhhJ+Ox6Kla/sHmnhROY1+03sXGfnduBOfTfb5p8TXLYJIGo7xc7yQXqSCDdvsH/Qo+vv6DhvLFl1truDUog10wbTi/L+H6T1oUyu2mLeh/rOulpAeKcFH/JcdEtu/riWwDpeklNYKaUuyACfddA0O0YL3gqiWc6YrjVYi3TdKCOL35ydwWodyassbjEx7BgpIgP23IMRSbm4y0MM7CB2LqXzn6E+s1qBDNSvP17SEJE+RYzKwk3iqoVOmbiNcr8Xa6wAAYweS4rZjdSkH66zsd4/L/gbpbur6BYkiQAIM0HTZ8xju7qkNsLnhVyfW5uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aavamobile.com; dmarc=pass action=none
 header.from=aavamobile.com; dkim=pass header.d=aavamobile.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aavamobile.onmicrosoft.com; s=selector2-aavamobile-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jtV7EZ4FVm0lHyPJ150k7JrgxfgZK+CYOlkQa+uShFc=;
 b=qztP3cGZQ5iG4HOFi7yhaj0MP1qWTvWbWvan35ncqf77CwPJtn3ktSU0z1zWRlFCkfmE9tHdfWovDJMGD/pVA1nc3cnh2+mogKZq9ryuQV20DbyWKGYSuQIyCEXkob/eTT1q8Avpcc4NosDmCjRCYCwEde4osX8yYCIFdTXbrgQ=
Received: from DBBPR09MB4665.eurprd09.prod.outlook.com (2603:10a6:10:205::22)
 by AS8PR09MB4743.eurprd09.prod.outlook.com (2603:10a6:20b:29d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Sat, 26 Nov
 2022 13:00:49 +0000
Received: from DBBPR09MB4665.eurprd09.prod.outlook.com
 ([fe80::dcd9:e54e:75b7:5a7d]) by DBBPR09MB4665.eurprd09.prod.outlook.com
 ([fe80::dcd9:e54e:75b7:5a7d%7]) with mapi id 15.20.5857.021; Sat, 26 Nov 2022
 13:00:49 +0000
From: Mikko Kovanen <mikko.kovanen@aavamobile.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: fix VBT send packet port selection for
 dual link DSI
Thread-Index: AdkBlqIPuK8OUW2CT2yVmRZdqeyWYA==
Date: Sat, 26 Nov 2022 13:00:48 +0000
Message-ID: <DBBPR09MB4665BB10FB2848F91ACE4DC591119@DBBPR09MB4665.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aavamobile.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DBBPR09MB4665:EE_|AS8PR09MB4743:EE_
x-ms-office365-filtering-correlation-id: 9db6be6a-5809-47ef-412b-08dacfae3d8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4MRr5YFTioyIacUlAFmCbBrGBo1Cs129KfZlrde8t6JIMOV+eJrlx+DMLMseJeGzRLPM9wlUNl/FTMlT09jWokLwiiahOcKtE1GOr8DtPauLZB7uXBOWLVlaVoktQo9rPPlK7lGE+afO1oVAEdhpLZHYe2k0clCRiv27I4L8v0/wXYAsnfNEZ5teL0ug9vqLpAUXqZMN0VKJn34wAGfT4ASwJip3OliNnuaEbpgIoxFPghfDYQjockQZEq2Sz2n756C/IOq58+aKlKDA03HoPiEEcyfmEriDG5qlaZQ2yvrVek7Jxc/H1FuuSgYA/U/xnB+e+NjqYpUEvYQrv9UXE20ZDMkH1NM4G3YIEEEsriQfJWPEHaaYglSrvCZE1EhrnxpWDopOT82k2PppgINp2rJwmRJE5ti0YzpDaeyvgy+VBM2ecMcktX8faa/9b2uK7E/nt8vX5PEM2ZW1YUscOzQbSMTRXvtBeF6UhkO8gJRMTf+nR3IrYOUdA2v5FSmagyNU7/8rVZYiZNXgkovFtym9z8i+KtupCtdb5yYOUbBjg4zB3i9ke37cB/uQTamWcbsqjqg8UMDq9kGloFydqfpHw1ntt6qFV4DiIPQaDia5Zg+VfqbdDOZdDNNfdVcgNHAMZu9Tj/uFAxo58L+lAPa16Jc467C1VB1tHm/GrKcy8fioZ2bIH8LPLD0FKRT/HCWbMUt2d3hh6qBy/EAocg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR09MB4665.eurprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(366004)(376002)(39830400003)(451199015)(2906002)(44832011)(5660300002)(8936002)(66556008)(66946007)(66446008)(64756008)(66476007)(52536014)(316002)(8676002)(76116006)(41300700001)(478600001)(7696005)(6506007)(55016003)(26005)(186003)(9686003)(6916009)(71200400001)(122000001)(33656002)(38100700002)(38070700005)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aYLOybbRAeFO4ddfPvcqLieNjJLoPaPWzIXFZqFHE86CM68mBeHvUya2pwjo?=
 =?us-ascii?Q?GtrG1Hz8Q34o9XhV8qKdAXND/xp5eib6AeKnc5Fk2dGNhYYaB67Hnvnco0M8?=
 =?us-ascii?Q?NnzCLkFb/nAXt80pGh7fm3y8p7qudZHhTcaP8fL2eCw6pLZeBIgm7raT1Cef?=
 =?us-ascii?Q?tvc+gV2j3fQen1Yo6j7Kj8byTr0vbffd9qTUCOf/KRvhUfDVwiCZZ31oAZK+?=
 =?us-ascii?Q?UE2PWDRGqrKSYSrRUUNU7UNMKqSdxj10+s5nbae4vl/3FZO/JzUuyrjDDvPU?=
 =?us-ascii?Q?CnTVgbPNSsoIWtN+YWNbSXWdmzlSW9VN/VSWnSdmdPlQOPLcToaVryzs5UpD?=
 =?us-ascii?Q?DBfSz5ln7MN/W1UELhL3rT4qqK6mcxUQEuCF+t9OyphQkCJUnsPbH4ukSLKy?=
 =?us-ascii?Q?yXSPeZ8C1YYws6gBNdHfBkooB81j/rP3K0seGXXhssB9Qyyq6ipmLVH0V9BG?=
 =?us-ascii?Q?GxmDXBe/LPgS8G7QcsZZnETXySyaiEb5c7Z9MgHiKgV6scz4LtAEoI8XHefu?=
 =?us-ascii?Q?ZJoo9TQaT3rYKJVcd9DjSdStMbTrVnd1XnzQylN5U6Lrjzi2qCKoZtB4Sl9Q?=
 =?us-ascii?Q?CP8DQbZgQPJskX0Z06k6HeYXUQO+eAIVe9mUY4wsBRTHxG9yCOniNW9xNuCC?=
 =?us-ascii?Q?kTq52GALQRbvizuK0vutNhmENmxjgsK159h6PIeTfuE0+IB2wbscELNBOcFT?=
 =?us-ascii?Q?bD1xJqKP8NP+okWfyCu8JosUWN34eRpTKMDV5mbyvqbOpAt03UvmrDSVpkhS?=
 =?us-ascii?Q?vbUk9/4TX6u5/2FreQZ7mHBs7BioK1BVq+KrD9SppoKwnKKiXREMlnTLJSUE?=
 =?us-ascii?Q?9p9nFi/1Nn6AFxqBQR0Hpv7Z7EornksBr5OWsnyQxE41rAGh64dTUwDqOr0k?=
 =?us-ascii?Q?91JT3twgVezqnsJZlxe+DnHWb7lvW1Y8vz6AlYJCR41AJk/2Uzlc2yk6XR1M?=
 =?us-ascii?Q?Yi26YeAbJpc6AOP0rV+kgnrX/0Z/+OjWKgz6S493rvJa18TYWde4obcdm7Rv?=
 =?us-ascii?Q?68RXBznWKzXlc06shFZ3sQ2hO6JVueEk2xpggpxB9oiDkJGJLDHprtzNRh/0?=
 =?us-ascii?Q?dm0Ggn/qPGZ45WKl08f0orevRBXDjAa2thytPeMmZJ3TFbHuMmEFuMINfby4?=
 =?us-ascii?Q?o4idNKAwZudmZYua7EtTQ634oKgWloDN5tvRwUnOKrDXuNjQOmHpa83xLeD2?=
 =?us-ascii?Q?vH6/N13VA6HFkjYqYClOLO3d5XXaaOlyQzB7NJ4+W1WjBbtIS6JlZTHicmnR?=
 =?us-ascii?Q?xWCAUMUyFcbPhyzIJKYdRHcQQEJd8oE4MYltcXd5dCjq3x8p4l1Ub4iMTIr8?=
 =?us-ascii?Q?njSjdlJKVPyRsYi7eq/L9RRJeE5/ibakgi8tHImjkMfZqPneAzCGJS6XKPTW?=
 =?us-ascii?Q?ykzRyDOfIPgvm++J/fxXoSNj8y5Lo4fx2Y3gFumlIQL2rdl34GuhauiqJxA1?=
 =?us-ascii?Q?cML9vdUchawG+nWc+q+DyCAdK377dC3wCTfzFFHZihCZMXz00PPPhAvSO3cL?=
 =?us-ascii?Q?5axrAcqpu/22i7B8vxYSxcGhuboX4IYELT1lxeK8SA6Ko3S8s+34K/BEhQvg?=
 =?us-ascii?Q?60xBI6HeMQs0x4fNL8IDE8viznjudHA5hYNBlZUB1tN65ySFyaD+coWWN+e9?=
 =?us-ascii?Q?oA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: aavamobile.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR09MB4665.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9db6be6a-5809-47ef-412b-08dacfae3d8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2022 13:00:48.9582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f89be375-dd3f-4314-b40f-dbdd01f05029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UdNUpT+CPnfdVwlVF0SoXNm7tTwp9NQqmk5QcEuVCCTiKwkxJZtsn1ZbZrvaEL8GFgPf/mMCktRPsuQKV2upfUAQmfbapd3CraLQlEIxR/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR09MB4743
X-Mailman-Approved-At: Mon, 28 Nov 2022 10:27:58 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: fix VBT send packet port
 selection for dual link DSI
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_dsi->ports contains bitmask of enabled ports and correspondingly
logic for selecting port for VBT packet sending must use port specific
bitmask when deciding appropriate port.

Fixes: 08c59dde71b7 ("drm/i915/dsi: fix VBT send packet port selection for =
ICL+")
Cc: stable@vger.kernel.org
Signed-off-by: Mikko Kovanen <mikko.kovanen@aavamobile.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm=
/i915/display/intel_dsi_vbt.c
index 75e8cc4337c9..fce69fa446d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -137,9 +137,9 @@ static enum port intel_dsi_seq_port_to_port(struct inte=
l_dsi *intel_dsi,
 		return ffs(intel_dsi->ports) - 1;
=20
 	if (seq_port) {
-		if (intel_dsi->ports & PORT_B)
+		if (intel_dsi->ports & BIT(PORT_B))
 			return PORT_B;
-		else if (intel_dsi->ports & PORT_C)
+		else if (intel_dsi->ports & BIT(PORT_C))
 			return PORT_C;
 	}
=20
--=20
2.34.1

