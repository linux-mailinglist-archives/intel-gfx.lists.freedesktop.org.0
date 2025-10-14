Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAA9BD8B1E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 12:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD8910E5A6;
	Tue, 14 Oct 2025 10:15:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ink1sAlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EE110E5A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Oct 2025 10:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760436925; x=1791972925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y1RGFEWGPsWNnqLbKNbonNuYYUwlSUM4h6hO+zTO37Q=;
 b=Ink1sAlD9Upw8TfKNys3TYVknhhZPq4gCfYMdGzy8nhjHFvxChfFIWJ+
 /18UrA02SoYkGOojTwQe/FGeVgAklvq6ywJX0oT/G86HYi0B9SbK1VUy8
 wiWDTtLvzTCg9yuV2lCv2iqq5tnTti+A0T9vlLo3lIY1VkCuLkF3VX5Ha
 GLXc3+552/D671ocFOMkpx0ZlBGCG8keapIEbq4xT3qzCSCQfzGvLO51r
 1bodFoYa8iB12M6lCjnyYZ6PJounmMzWqGf7ubZH1PZPgCDSq5JfJg0xT
 iQ4q7IfBPfRrVUSZ3Iy0a7BMFJOfW2HH9qx56p6NCiMdk62jXumSmVDzG w==;
X-CSE-ConnectionGUID: xkZGFsMKQGqXZztwcHm7gQ==
X-CSE-MsgGUID: GT/ignyXQza+CnyA0THKeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62743338"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="62743338"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 03:15:24 -0700
X-CSE-ConnectionGUID: dde1kGdlTuaZjCUH3jte6A==
X-CSE-MsgGUID: KzoeSHgQTf2oBX0BG4wozw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="182296484"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 03:15:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 03:15:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 03:15:22 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 03:15:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=th863i2RRZGxs9fn8evyeFLBWA27q+Y9GE6exyCFAzSWUkTOKCuQMqldhFX2+qiPxu4g06NQK8hf7PlxtGfhcJU0vorGjC9wF1N399EqFd8QYysyOCR5Wz9Nn3kmrmmvni2wou0ChWeF+3HTUQ9ziyr/ge9E4gHNacVZph+aGLsJ4zeOKZobCvEPNv52RzIMEd8MYz7xb6L5MnB6ASBWT0rt6Ly7e0eOOvjChuB/goldJnP9gBgjbzKBe+xv487Qb0EBvY+WE4oQI2P5gNTfLnchdsQbwWPBfiKHTbi4j4uadHmz8tPiGU3cpJFdWhLLTSYo07oDkqEmoNDazc+cUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uBMvjzMH4a6gwTVsctA0kNqYzcMeky06vDvOr0kJc7U=;
 b=uCvVY8IlLuWdtaW+CuBYg2Ycumm1yoWvpSwfuDDeZ5Ek5GaP1Jxye66iwSNF7uGGJR9X7phg9DqroAgFnlRQoU3An8Nt6aLD4JVzsz2COPsQ/3dQ2dj/wAqF+tQdgPhEwEEFekw/dFa/+A0csiUH2pWPqCcwMeUTr9her1RJH3q1OXeNnqiUWg1V+tIP6sDxrnxVvLLaohd57C/cdlnA3km3sH5l66Pkm7E0np3TRCRfMz/kPzcyuWnyWuWiOdn17Gx2FUI4cgOvSve+Gw7b/JI2yGNBjMy7E/lDd8wcPL9A2y2qv4BHWswwAwVPO3BdqzimDG5iUliFOPhbA3Vi6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17)
 by CH3PR11MB8139.namprd11.prod.outlook.com (2603:10b6:610:157::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Tue, 14 Oct
 2025 10:15:16 +0000
Received: from CH0PR11MB5249.namprd11.prod.outlook.com
 ([fe80::a665:5444:d558:23c3]) by CH0PR11MB5249.namprd11.prod.outlook.com
 ([fe80::a665:5444:d558:23c3%3]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 10:15:16 +0000
From: "Poosa, Karthik" <karthik.poosa@intel.com>
To: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Thasleem, Mohammed"
 <mohammed.thasleem@intel.com>
Subject: RE: [PATCH] drm/xe/xe_debugfs: Exposure of G7 state residency
 counters through debugfs
Thread-Topic: [PATCH] drm/xe/xe_debugfs: Exposure of G7 state residency
 counters through debugfs
Thread-Index: AQHcOdu63gWPs8kIbEWGvyPXQp9JsrTBcFsw
Date: Tue, 14 Oct 2025 10:15:15 +0000
Message-ID: <CH0PR11MB524985708A7B8C12334C7C8EE5EBA@CH0PR11MB5249.namprd11.prod.outlook.com>
References: <20251010114352.179143-1-mohammed.thasleem@intel.com>
In-Reply-To: <20251010114352.179143-1-mohammed.thasleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5249:EE_|CH3PR11MB8139:EE_
x-ms-office365-filtering-correlation-id: 41f02e53-4fdf-4979-5785-08de0b0a91f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3tPCHixghahb9qQ/aCRtHPRZniFMl+rXrKYdtXh5g9kNf2NLNNYN8dOacUD9?=
 =?us-ascii?Q?y46S9olgAixWPdp0c9d3wj1mFSGnTnPGoNfQaeMnDPyzFeBtVDpfPsY7Smlc?=
 =?us-ascii?Q?B0r730SrJwM3yZH2ljEHPM/qE2ahSLsHBFbkmkQiDKbLW/j7IzFr58gu7FzI?=
 =?us-ascii?Q?nCWPbmxO1X3XY89VQh0RkKMmosE+No8r+htMoLnA4hUcDdnuaNmAUg9KRa88?=
 =?us-ascii?Q?wE3d91V5n9t4zkDZ1/TL5qGH5cGtUgR+k7ONhDWWod7ZLem6DrwdsURzyyuh?=
 =?us-ascii?Q?eGat2+4wtcz70xsbX95tzQ6ZL5M5vRqyBYhCQgd1HEENBL75VK/2OAIxkCXJ?=
 =?us-ascii?Q?55dKqHnehtWG2JN3uiWgZfyAlWqtT7jYrA0lPzg0X6W7Ar1QC+Uglq5tkWiu?=
 =?us-ascii?Q?8Dc8keVhWKVD+a8G/KTD010Rz3Rj2cqBCZt6s2+uFF2BUSQmf1dvrytLvzu9?=
 =?us-ascii?Q?XfqHdmf0CsdO2Fdc3JRGvTppfpqVmOsClrxacS7DaX//id7MMa3k/YlfFaXc?=
 =?us-ascii?Q?pt8MDS8HURDKLg6btH57kyjCftfED/p+nftto4eBXLD684dhqgIOgXk9/+O2?=
 =?us-ascii?Q?plKOJzWA2FRul/h1VsJY8UY3oGnRQ7FxpbyTWxuAlRxsAQ+kWbmDieSPXBkj?=
 =?us-ascii?Q?pBHYlunu/sJwAYTbvC2O4fM+0nq3xM+xXi8pC4iaqlu8ljdJhzxwPUqStkEt?=
 =?us-ascii?Q?XHvrLqcd9SaqjKAEG0SfWx31i6CeeLOIszVw8N6JD66l50QUei16TZ5X4TtC?=
 =?us-ascii?Q?X13pAA5W9VERTM+N1S+rWRYfdVnDT8DlWNflFaKe+MrJUH2MeVVpEQ1krol3?=
 =?us-ascii?Q?PD45coDG1PW/l7gPskJTp9wg3tzrNLyeN+lBxne3WDEEbKJwwFyVlXXK2yWL?=
 =?us-ascii?Q?QxNwvS16wYlJ5TZGP0mXKjW6ZC0oF183yxyZpAT2BGHpiRniDSq40XoJQtfC?=
 =?us-ascii?Q?TVU9G5Iiv8+BS30HHF0aDvw/1thDgRoC7txJYuCOEJPJ/BOFNqCNPR5XgTrQ?=
 =?us-ascii?Q?lSCQNEOTHlDQEHGB9blBMugS/iVaUO4P/7TkvIu99qLsclAVujdjoK96MtWt?=
 =?us-ascii?Q?JH4SG5gqL+Sg2AZdp31YLoyUbWxw61Z0cV49l0+zQe5AMoHXiz8yysVFe4Qg?=
 =?us-ascii?Q?cXEe3zKigcwylmAQdcqxqPMOaK/xRB/R2xhY558QOcqRV87q62lQRKt1Wkev?=
 =?us-ascii?Q?xWtjOqUYx/rhAlyB1cS+WKeXskuXwhmnZwXzqTZaISVBzvhafQKkUJRZed6g?=
 =?us-ascii?Q?9jWSpFp+Py00pWngqcrggduiHLib6qTjj9cEagH8gY65RX/8Nxu0YifjfarX?=
 =?us-ascii?Q?i6mXB9+PXHDIYbJLDgdq7ggNQlncbQByN3SJ6aSg6vw9xv+SH/by8S4aixeO?=
 =?us-ascii?Q?7GBqj24v0pheLevrulm0c3Z3N8iPP6jge0COsEkv8oimtm6AcX3h+9Cu/sZx?=
 =?us-ascii?Q?nQSgXamC3YqS6GlitbBuv8KHwyiK/NsE0Pfo4vo71HSyMUBOidYgA9sa4ZA5?=
 =?us-ascii?Q?XBvTahdrdPTRsRlRvi+uNa58B10u9cfpfxsi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5249.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V1XecXF+HBP/UB41xMiIspjqDKpHHu986qtOxX1kLas2V6E/fP4oA/qLJ/ZA?=
 =?us-ascii?Q?KfgLI8yaxHcOwi/zWX1rWEx7AS5QQLF+j82Y3TVlmEO0x4l7vKmi+5A0BUFr?=
 =?us-ascii?Q?oawI43jBncjnE/H8CNmkVCONW5v/Gnzvnqwa3F8WPU42+Ond/R+WhmRx/tB2?=
 =?us-ascii?Q?XYM6lVRXC87UXt5auQkZKbeJiaAZi+6AmKT2ZlHoQLneXag1O4xEjT0bQWZT?=
 =?us-ascii?Q?MZTJi8mfjFnVUt/x8VAbs0jUCjYS+FzcxVzXuzVYnHYSQJi64Ned7//X5ARI?=
 =?us-ascii?Q?ZuGuYONKsk1nWiCqPQcKK81I1mnIKh/lYy5JHAyGBjOSvcnDzWzYXjAkcGcv?=
 =?us-ascii?Q?pwViYHfw/t6FpJoYTF6/sv+zwsYwvIz372Fio90WjFQwP/x1yyFgStva4zvy?=
 =?us-ascii?Q?9SfnORLVgzOvxWXbrLRHSCXCxqG6sTZl7PAKwMN769c9NQUWgp0PPhb8zMzH?=
 =?us-ascii?Q?Y/SeSQ9N9jUAACN/7Gbd0wYJkT8yvDVWBcfNl0pYz+Hxi3i0VwiuRoIKd3aB?=
 =?us-ascii?Q?1TPF5jNPzXgkFVPXW/SQoTx3OlbggOKIVRYuJRjhGwpiww62zI5vvVgLv/0A?=
 =?us-ascii?Q?KMBulK2ulRhUjkPiC4TtxHSNjtEgODt8PeKljeYwwmV5pgbfU1jv3oFMDdvu?=
 =?us-ascii?Q?xRJCt0EKQR/oXxgCfNtoUa3whWmJlhopQ54Dgr38pY/uQfh4+eIZIuMlaqoH?=
 =?us-ascii?Q?oBeBwpGP5wThpVL+3K8lBSuYlOPx993q7B4Q1OMS2A0Cca+2SHvTwe8HCRZN?=
 =?us-ascii?Q?4QdltKocFgQDEju+ZGqBH1OwXUfo+Zs2JwZBLAEtbLNHOGDnoKTxHNAJ3yBs?=
 =?us-ascii?Q?7QKKvznVmAKiwcRrrM7TB5LAfbFiaXxd0nAVPpdK+gDSmeuzn4jkSIT+dD2e?=
 =?us-ascii?Q?UAx+bYP75UOaZRfucuQz6sxId3+5ridZaaALmrkzXQ6oBqQNN9y77jif1I4T?=
 =?us-ascii?Q?6uRTIrJfeGdT4L4YiYqr4CmUvb8s5V9z8rMrTTspcD+AuHZ8R/56wYrWj+47?=
 =?us-ascii?Q?zvaJAJfVwCqSn/GhGXIli3z7FzEAm2mHuW1RYJ9tcT0eeN0xEEW7QCFkhuo2?=
 =?us-ascii?Q?ctekMnb08dHBKDFCExYFzmMe/YiLOjQD/aXknNOwAL14Ugb0GVbX5ImwGLLG?=
 =?us-ascii?Q?04PcGD15NQB0GUrZ+97B1T+KC9/9EbKWj7R7QwLY15n0lcOqJq5dv0fyTnVO?=
 =?us-ascii?Q?WOQuxj91gjfTPjr5iDVIwDw634JKmxmWur0O6ucfp9/38N8AH+60hSJNQjjn?=
 =?us-ascii?Q?KZIZHv8SEx6GvBzhN+SF0F3ddYTpK1DmGrG+6sYeZf04i7Tf0PJBKyL5WzIO?=
 =?us-ascii?Q?MixmcBIDuzK43s2cEaER4Ej/2sItC2WZaaIbaqbFtcLztqEi+r2NJ9XXfyEp?=
 =?us-ascii?Q?gFZgiVFk5pMvafnYlNz/M1Gw3DbIU1ke2qMMV3Ia8cB0orQ9JvmxM13HbBFd?=
 =?us-ascii?Q?go8YvlTCIW6Qff2XzUxBbLT3ogX6oVEedwVWws5PPpu8A4PESBhipHgKT8RH?=
 =?us-ascii?Q?2fCHNG1DUHAK2GSXXamKxSAIknrYeYGf5J73aJd+Ai7jGP08vbd4SaICBllV?=
 =?us-ascii?Q?f1mx608+BcRS6SkBQ/nxa2ZmzgHT0sCzGil8EO69?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5249.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41f02e53-4fdf-4979-5785-08de0b0a91f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 10:15:15.9188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YeNtY+bFiW6zlYoW00gJJfJcm+ouKuHclmd/2I6+XPNdgIgA8CXW1ePValgB89TxZ7AYROU2PQ0GAM8vEuP3oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8139
X-OriginatorOrg: intel.com
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Moha=
mmed Thasleem
Sent: 10 October 2025 17:14
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Thasleem, Mohammed <mohamme=
d.thasleem@intel.com>
Subject: [PATCH] drm/xe/xe_debugfs: Exposure of G7 state residency counters=
 through debugfs
[Poosa, Karthik]  Title can be rephrased to - Expose G7 state residency cou=
nter through debugfs

Add G7 residency counter support to expose G7 package residency counter in =
debugfs alongside existing G2/G6/G8/G10 states for complete power state vis=
ibility.
[Poosa, Karthik] Commit message also can be shorted to - Add G7 package res=
idency counter in debugfs alongside existing G2/G6/G8/G10 states for comple=
te power state visibility.

Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_pmt.h | 1 +
 drivers/gpu/drm/xe/xe_debugfs.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_pmt.h b/drivers/gpu/drm/xe/regs/xe_=
pmt.h
index 264e9baf949c..0f79c0714454 100644
--- a/drivers/gpu/drm/xe/regs/xe_pmt.h
+++ b/drivers/gpu/drm/xe/regs/xe_pmt.h
@@ -24,6 +24,7 @@
 #define BMG_MODS_RESIDENCY_OFFSET		(0x4D0)
 #define BMG_G2_RESIDENCY_OFFSET		(0x530)
 #define BMG_G6_RESIDENCY_OFFSET		(0x538)
+#define BMG_G7_RESIDENCY_OFFSET		(0x4B0)
 #define BMG_G8_RESIDENCY_OFFSET		(0x540)
 #define BMG_G10_RESIDENCY_OFFSET		(0x548)
=20
diff --git a/drivers/gpu/drm/xe/xe_debugfs.c b/drivers/gpu/drm/xe/xe_debugf=
s.c index 34f622bef3e0..b3ca48bc90b7 100644
--- a/drivers/gpu/drm/xe/xe_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_debugfs.c
@@ -142,6 +142,7 @@ static int dgfx_pkg_residencies_show(struct seq_file *m=
, void *data)
 	} residencies[] =3D {
 		{BMG_G2_RESIDENCY_OFFSET, "Package G2"},
 		{BMG_G6_RESIDENCY_OFFSET, "Package G6"},
+		{BMG_G7_RESIDENCY_OFFSET, "Package G7"},
 		{BMG_G8_RESIDENCY_OFFSET, "Package G8"},
 		{BMG_G10_RESIDENCY_OFFSET, "Package G10"},
 		{BMG_MODS_RESIDENCY_OFFSET, "Package ModS"}
--
2.34.1
[Poosa, Karthik] Other than comments above, patch is fine.
