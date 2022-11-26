Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B30263961C
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Nov 2022 14:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BDE10E05A;
	Sat, 26 Nov 2022 13:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2115.outbound.protection.outlook.com [40.107.22.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FCC10E05A
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Nov 2022 13:27:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W34ksDRzCE7MKyDrZN8zUZ5FnDVqUwurGm19L0iXiZfecSK7HlI5NkSNfi9S+2k1vXD7aeJyAtgnuc1pw5zt02K6mOuKLT69+OnXEddewVUxD4ivJc3Nm8GU23AReTMrCrmAhuNEnk1dRwYgqUGEXrhz7gqRWR11i8WW8+zpqV2jssaVxsmXztZ3tLoWlpSwfNGr8PmZ3+8aYBTt8hlAFXEQMld9bIIT0U97BNbrwKCHzBCF8fRj7/GEpTd5GNYf0R4c1fsA3MTeTVPAay9CTKo/P1bta/ppeMusaEbi+URwlas5JdfLRZYGLNS1xVWTKNxcNaZVW8SlYREuO2JrUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtV7EZ4FVm0lHyPJ150k7JrgxfgZK+CYOlkQa+uShFc=;
 b=It+oermZrfSz8aWKFTDvWxcf0J6hrIC/0/YaYOmGZaGtMEVfPTONA+QojL9yKXN4lywQVGRkbbmXHOfxiNXXnJEuUy1ye3DW0FVhHtAq1S1wYrvmNP5ytkwDbKqVQ5hD5hJlJczYDufuWg9JPW/RFqpyqMeO9V9fB55Tj3VtO7u8a840C4/xCktyS+wpAgLcaa+fRXZUiIEMzmyJRmV4BP1HploCwbOHlg7iidWN3Dbxe+EEuh0E1Nc7mIAiHi6u/SU3pTtIJ+RnP1mJr7fOKdKJrnqe0Mjrh9tV2PQHRILUvYzGtpQ0th6lLcCz1qB/+OevYDY3sBak3yxteExsyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aavamobile.com; dmarc=pass action=none
 header.from=aavamobile.com; dkim=pass header.d=aavamobile.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aavamobile.onmicrosoft.com; s=selector2-aavamobile-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jtV7EZ4FVm0lHyPJ150k7JrgxfgZK+CYOlkQa+uShFc=;
 b=Hk8HeKWRgRZiBRSoISp2lTe/HNBIxBG9Dq63+xpjwzcm4ujKViHTZzUbMF5V1UuiqN5k5Zf6OHj9U1owLa14zo+4PcR5vulNjthiY+FF+SBYbCKbRb/K0ahE002uR4+no/+uSo2TJGevxEVr8AO1NJE+paI1iSHdnEbITpiUWT4=
Received: from DBBPR09MB4665.eurprd09.prod.outlook.com (2603:10a6:10:205::22)
 by VI1PR09MB3917.eurprd09.prod.outlook.com (2603:10a6:800:126::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Sat, 26 Nov
 2022 13:27:14 +0000
Received: from DBBPR09MB4665.eurprd09.prod.outlook.com
 ([fe80::dcd9:e54e:75b7:5a7d]) by DBBPR09MB4665.eurprd09.prod.outlook.com
 ([fe80::dcd9:e54e:75b7:5a7d%7]) with mapi id 15.20.5857.021; Sat, 26 Nov 2022
 13:27:13 +0000
From: Mikko Kovanen <mikko.kovanen@aavamobile.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: fix VBT send packet port selection for
 dual link DSI
Thread-Index: AdkBmqfQPgUxeGZCRdWkt6rVWZHGZA==
Date: Sat, 26 Nov 2022 13:27:13 +0000
Message-ID: <DBBPR09MB466592B16885D99ABBF2393A91119@DBBPR09MB4665.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aavamobile.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DBBPR09MB4665:EE_|VI1PR09MB3917:EE_
x-ms-office365-filtering-correlation-id: 11cb8097-cf98-484c-1fda-08dacfb1edfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a0ATDuZYEbfVtDeKJ5sWuYdH9yy8K2RvDdESq/X9mNev/0FXB9YMAq80CBA5SKokLHhqxRh1hguwLExNkS+MeUSGoMvsqU10hZeACMypifpUH6t6OSTPBeJgWj0tFYoB7+hOWpV6yKvgK7U7B6oV7TgC8IqI67go6ofUYBqF0xahRpLIaHYuYjwAEI7Jbswi9QUlMLRTZSLsK+Ts5OGqZ92ewvUMr4FH0Sjj1sFutSHh1tYK2iW+Ze6DJGqxSFpChm3BW4l/Lx9R1a6XcJWmUiL/KpkTTyIxPzkz1ToxB1Kz4/gUcGvPMAMzkTg+fHEqBSHb/g4o/daYQSZWfdhYkK+15v6z32HKHC1GFkoJITMRFfDXmtJfLuecvzAtqda6HrlBUYUppuYjWgq0gkFvorg9hVH6R/qdsuxkRraub4ff3iz+UTj7ROAkmFZrZuP1YhMJeMJAJFoYzOhni/ylm5LGbuuEOVFdKTEYxD30HhHf/rhJhKNdrrL+qiOndQ43dcLdJgeqn1mIE82zQPtoRlt8BvzPfK5Q+bleSUbjA5dDWXAyBSsk9JWiy4Go3wBju/N6W9PJZwIpOmY7wOCgIjk6BDS+tbHzoCly6PdWmi/jR9hjc5KEEvmHnNGqE5WNWraEa5sOkoQyjLa8i5moYh1yRGyqo81mjYYxvQA55ujiyTdcr3uDHKReRRxun33PEqTZiynaYYeQW0OrOcn60Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR09MB4665.eurprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39830400003)(376002)(396003)(346002)(451199015)(66556008)(66946007)(38100700002)(8676002)(66446008)(66476007)(478600001)(64756008)(122000001)(71200400001)(7696005)(9686003)(6506007)(26005)(5660300002)(8936002)(55016003)(38070700005)(316002)(52536014)(44832011)(76116006)(6916009)(41300700001)(33656002)(186003)(83380400001)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TP3TyXLP8aTJi1C/etM9oXq3JIBc9aC+LRmy/bmEI4S5DuCcyvY1oT9HuM6Z?=
 =?us-ascii?Q?QpjsPfYJ1P4QhWch42vEb1B4vzlhiiS6r59q0Ta9PZxEMcy4J5NdsKNV1GBC?=
 =?us-ascii?Q?eqS3HRSr+SMjcUIqp6gMFRVH+uD5fbZAVx6kwST0EFnebic94YnHKBiwziNn?=
 =?us-ascii?Q?dLVJCGcScE0N1QCOgMA9yu6lyUdGWPZn1WoqtO2eYf/UvUX0P5O3wnitr+/N?=
 =?us-ascii?Q?E4wLoBCyus4cu9xo6LgQrekOJzE/BdhswysofAvqtjFauhC3e2N6BFGWh/3W?=
 =?us-ascii?Q?xn8OsPVqxhF3DASqQGKevm0QX8wQg0ooWRFx6ir/mcwRzDw6Cq1gU6NcJ9l5?=
 =?us-ascii?Q?aXRxiytIh+urPVxCUpr/d77AIvHS2bfOHJ56dvEFOxESlSKYhlSQv/6Skg9c?=
 =?us-ascii?Q?/CvWl/HPr5V7hJg0EieDYkasRT/GgTewKiUEaXoFFDV4Umw1opvTAqMXSGxo?=
 =?us-ascii?Q?jZNPVQZBjHNzJyoT9rYXFMYhWNX1F1ir2ICmtmFrAFhrySIPt6tnQl3mp/Zy?=
 =?us-ascii?Q?vknvDekoCUp6XMoBpef4KUVyeHF7F49Id5UYutnKnXBhTybBpkJJb3VPtFja?=
 =?us-ascii?Q?KejYAneuN4rMZxjrq9UqjWyvXh1TT2xhHtMYVQsXn7XkbMDW3Y3fKHBdqrcP?=
 =?us-ascii?Q?Y7uN/BDN5Iq5am1QOIkcq/HZPESYKLTkX5MWVgylFDR+qoJIPIR3+KYiibyR?=
 =?us-ascii?Q?/wUZhFEAk7VqSZRN0gJO6YnASQ5SJGU9yo3zj//GdOEnB7geoUnfN03NaO73?=
 =?us-ascii?Q?zWffMao849FcwvKYCUwrbeHFpiP1NDtMGVouarYPCjRDHVohysKKrmMjdUlE?=
 =?us-ascii?Q?mU5gE7+088t2kUF4nvlswlWM51Z77vSL+mb7Xwu4RUfR7N2UnMtshqnUtKlf?=
 =?us-ascii?Q?ZYAjxqU0ENn7Nri7gJqk60to0O/+/MReNnL/HHEa5ap9gdTFc+CzgoSJD0Fj?=
 =?us-ascii?Q?UW4CSY9ATG7BtrEW2KvQ/BeAheP6lEv/wED+xbE2ob0/qu3jO44RWEgFrqf+?=
 =?us-ascii?Q?WYDvcgAQrGmrCJqqeZRn29XyuF3SGbz1M0VjFyT4liziATwQQLFkt0AjNNpI?=
 =?us-ascii?Q?jyzm8vPhIAFSaGqJVorVIe5vCJWuNfu8bFUkZcUIiSm/YrpFueTkmt/UlaX2?=
 =?us-ascii?Q?ZfaiFzv10A1POO4hjW1lpzb1A1wGcbwsDCemJqFGwazAMM6DU9jsuDtPC+Fa?=
 =?us-ascii?Q?U6wtBFNpEQdgqCJKqxsH/3KQioF2QKuVLhMBIDCCVfdYsuHHZWWchovdx1zj?=
 =?us-ascii?Q?jl6Yi/bqwGqXSRBA+GP2jBxvqsc4NubyOKPb3TS1vwkXmwj072TI7Nh9tC3M?=
 =?us-ascii?Q?KLq2ocIRtSoh3i4LsX4KTzmGNRI9SCOFz01TZp+era92EogQFdWoaoQdIsqQ?=
 =?us-ascii?Q?dx8ATQmm++wlBwD8OwrouXm2B6n8Zj3f+RMNItMjZ8f9QLUOlAD/znqe/LT+?=
 =?us-ascii?Q?BVb56NW4Mo4NeurA2Lu/HyAsGw7A5SPLmiultj6e5Jh+GqqdDmTICeuFTGRU?=
 =?us-ascii?Q?ng8GFQ75Q3VDpA6qNkMZMHdm10WErzC7/UTa8PI9VvZrurSp5iXUSDRUIfrI?=
 =?us-ascii?Q?7STrf+GReQ0ZsyCkglRPPNVBximRDY9xCggvrU7ncv9NWWyRp442p0tribxP?=
 =?us-ascii?Q?IA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: aavamobile.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR09MB4665.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11cb8097-cf98-484c-1fda-08dacfb1edfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2022 13:27:13.4475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f89be375-dd3f-4314-b40f-dbdd01f05029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G2+6LU/M31IB2FoO90YSQoeepMolx5gw179OoNM9goYTB9ybJItz7D94Jl/GADBcAA4pzJHH5wlJd0ikWgKGyxc/x41KaJ1B6OY37BNd5sw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR09MB3917
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

