Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKCGOHYDlGkX+gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:58:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402C8148EC4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0CD10E1E9;
	Tue, 17 Feb 2026 05:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/ebe9wS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F22410E1E9;
 Tue, 17 Feb 2026 05:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771307890; x=1802843890;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CEI9WNxokDFI+grrgl498M7SXKIhQSY9W1iubZc9Ru4=;
 b=C/ebe9wSw5ZNpt5DQgQngHKCGH4P2hPErlD0FUUxd9rRPl9QY47nuh1W
 JtMM1E99+tv2Rsy5oK4BmYTLYhbQEKAPcy/kJScz2RiNHM+QuO1/HeTnr
 ccV3XFgwrfCSzVtn/c5SHJqRtX1uOVG88xj/Eq+Fz1gLJmE60KKPxXP7V
 k6Qn1TEpTo2lEKItw7ygIo2gTy/4QLBVBn/VMgSfpa0Fq2FlANljKmIvL
 HmkumPTy5ZWPp6uTphS+Kj96pzjP/YzWOdiJCzeNflmhpJrJDxQz74++e
 5mV6zlakrACfbP1yDhXqOtpG7tCEklH5aMWrDcKkfHynAOU6k/qNxHk7d A==;
X-CSE-ConnectionGUID: eoCyg3/NTgWOulbAsDuXeA==
X-CSE-MsgGUID: quUozlU8TNyW56kf+lEDpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="72366400"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="72366400"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:58:10 -0800
X-CSE-ConnectionGUID: YvuwvwVNRTSlwGnu9LyyqA==
X-CSE-MsgGUID: UltJz7HTTeuAI688EW7CAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="213800926"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:58:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:58:09 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 21:58:09 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:58:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X5p2Euzj6nhsYpnlFRY5f6wFqfXvLNYI+wOa1nxe9jsF8BEe4XeZAW7SE1EYgMsascaFgQR0bgajPcR2RO5hECrg8ETqLI5Jvdp9oaOCeKDTDmPHVYtmV2JsRdaekXFP7k46pJ4uC5ff0xUYGBQySm8DbCQUPGltx0c2SX8tc7AAeci4UH6V0uvb+AZToR+DKPaQFnrJiD1BVksqk/twDmFJygEKSrAxra0Jw2giY9Q/+ut3CTazoWlqL7VPmbqxhv+mIexWNHOuYQDwGl1I1+XawI9xCXcXU/NyQEPfIT8B0Gm3mNG8AQ51hLM1vZL9lfTy6hFDVdD6W80fRKF8Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lfZjtwE8cm1p4ElqRu0hrpvanb2dXvac5KTvOJPOhpA=;
 b=AA8bdg8IG/Ab1QW/Lk+kncrKrH1KmtWDjZaO61zVohNqqzlHoCLxjjU/SsBoQNYKDz2oYzoJq98A4+9VB8eLjRh68QnViNYk1dU2y7OXC3LUYWn56p+e8QjwmUObVgG7rQn1ZS0YkiCZOc21BuzwoQQ4VBlHnJ7kBL4dJe8EajjZqn/L/IabLYLGmn/U2ZNtKLoECc/F8nNMiIQToAxT3T6MktrWICqQe5+iuWdNHJQklmaDp6TM0zpLqIesi3tMq3hkBQfZ2gNAKzvjsAqAR4GDErtG777cNL/K17VA6eA2IuX9ooq87nqcPykYkRvgFfLsK49z6iiqCwYcjU2MVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ1PR11MB6202.namprd11.prod.outlook.com
 (2603:10b6:a03:45b::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 05:57:58 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Tue, 17 Feb 2026
 05:57:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Rahul Bukte <rahul.bukte@sony.com>
Subject: RE: [PATCH] drm/i915/gt: Check set_default_submission() before
 deferencing
Thread-Topic: [PATCH] drm/i915/gt: Check set_default_submission() before
 deferencing
Thread-Index: AQHclMhlZcpM21+lXE2dgTWPaZw6dbWGewNg
Date: Tue, 17 Feb 2026 05:57:58 +0000
Message-ID: <DM3PPF208195D8D000253F905FADCA379F9E36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203044839.1555147-1-suraj.kandpal@intel.com>
In-Reply-To: <20260203044839.1555147-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ1PR11MB6202:EE_
x-ms-office365-filtering-correlation-id: e2d89a2a-353c-4173-acdb-08de6de9809f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?3FHVJr69kXq9d9o02XHvW9395D2fHCY20evCrzxOf+xY1Ga8kQ4dlW94P2a7?=
 =?us-ascii?Q?k8APwYawWuHQtX1Px/wPedw+VvPHHiLASWI1NTDJGgMX3mQQvfN74M4rvcjp?=
 =?us-ascii?Q?ltTBkqWrwVIC69sPysirGwT+ajN7fPcjNgbEiD5DsD1gKEga0CDmi9L40qqQ?=
 =?us-ascii?Q?nRx+gbgNZnTFzAwSueSGj82aQlXkQnogxx0IqPo7CfpWCcykq7v15a5MtBIi?=
 =?us-ascii?Q?eBsOFULUZy8twbtp63B2dKGlIxlJg8i5ih81Cl2CQcvOUlh+aSmHSUVc/Qax?=
 =?us-ascii?Q?dXRZHtduOYNl11NrmUIH5eiL1CHCwm9y8I7C3x9mfBfyIbvk/g84pD3pxWXr?=
 =?us-ascii?Q?FkKgAmRmhHymQkZtzcu0zSb/ujcXBagQK9Yv5EUe3sW825Snf/353ZDU5sV1?=
 =?us-ascii?Q?3IYHy06cr9Pnx/U6oA7bYdVHtRpcyDXNimMoGHqlapOg2W/h4xSPMkCCsdLb?=
 =?us-ascii?Q?4h9y/FzRaMxasAVTD7qiBjYFM7TNHcwGENbSP6j1LmTlMznSZSqSEo/9CjN4?=
 =?us-ascii?Q?tBBiGWO6qm1KsGR+AHwXWdn6A9NlVdgQ9OzY66K5Gadf3F0EYxu2W3yW22IR?=
 =?us-ascii?Q?zjQrwK0sDUPkVKluN3SI5oEfhOSCgdcx/MgOEgun/KvQOD9fRCOuEWmqiXXT?=
 =?us-ascii?Q?qGyaILWJ0uUA5ICxsAZPcwIFwtETQnJDvltQ6mC/7IeloR/VcZ0Isfbj0yY4?=
 =?us-ascii?Q?sTTb+Mbdteg7OIy8KN6OYS6jhw5x/ouW4Z9pErLmWktOhB+kNRv61D0b1Kml?=
 =?us-ascii?Q?xCQ+brAWBS79ah7HC/701IF2/DPlgPKYOGa5sknQeUtPA839/6XFHe7u/b3N?=
 =?us-ascii?Q?MQFYLgpfq6CoSmHqy7dJOYFwNVZYfwbw7WK9qkEquJuEmuG71v+hU2xHoYU7?=
 =?us-ascii?Q?XkczHD2PxVyA8+bFOK3KAeYNXso6d847pq95OB9yLz/xFeTraYLqahu9X60j?=
 =?us-ascii?Q?8O4YZMVpTNUbJBuhntv4ywEsJXyqLuYOeGp+KPCgH/QDPoifsuZlORjB8TXa?=
 =?us-ascii?Q?Xcgoj/xKQxXX/7PaHjix6mS0+NbBdtVpJmGZz+fANHU5KcFz5u5l20eGbpFc?=
 =?us-ascii?Q?GOn5ZOC44vmFM3ou9QaF0pfDMPNjZwZFaNPeuOr8gOcWCSesWMoxXCma07bY?=
 =?us-ascii?Q?wdMH4qmA9SeT5xpfGcEznuGmESO+c0t7csDIPVXI07ToHMbDGt9KD0vrqZBt?=
 =?us-ascii?Q?fZu5K/1R29h+L7V9PdNr2rd+QESEugGCs1PYs9mGE9wUJAR8lkB7R63c8yzm?=
 =?us-ascii?Q?wDmRMQahne8QoG47eefmPYRGCPRLb+heGoylaaQytksprSShw7OXN5Ya0AoW?=
 =?us-ascii?Q?VMu5psNvp8YFKXptD+/ERVDS+rA1PlVsrOSKwgbRRlYKbVUoEjDlXWWSvxec?=
 =?us-ascii?Q?w8pzKvnL1kcUWz1It3Hskxl3fplDmPowhH6ylzBqUbrpQt1JNYuU5dTHpuUV?=
 =?us-ascii?Q?/Q0fiCdXx5L186fBiyL9qEKT/cnN4rjKDUpG1odUxw6qSkV6G0i25srMWC9/?=
 =?us-ascii?Q?Jl1mNGl4YFMhE7/TvLeJce7hfTG0s/XRAGhk3ybvIZ5ve5wXOHeCduTy6uSC?=
 =?us-ascii?Q?miPpN1d1gw608LP2ME86tBmCGmRVtTlaA3xRH7L/XNW4L6Ntky9M1XZAKbzR?=
 =?us-ascii?Q?3qla36jJOHUELcRLQf+r66Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IGP0jFOXQ8/EmcOUSan6sQBumCsMJMqe9cqF3hu1ov2AB4R78FOmgW9fe2Ow?=
 =?us-ascii?Q?MgVqUIEH2+VhuV8XDXV4MuU1ALPv8xZTyfmmvzEWH+ia2B5e5tH+3QGgwlCX?=
 =?us-ascii?Q?Y2KdYxC6DdHMEDdnhdCNN4h1mQnqiBTTkhbE+V9H0IIxY10hmBZkSaahSOck?=
 =?us-ascii?Q?1TYIrJNpRvRN/xvc0sjRrC2NNi7qRUtq99u3oOdgI7MiTvbasaGrNiGHCiD+?=
 =?us-ascii?Q?n1xr7K1k2q8R3YqplQQqMJHqZrRKza1tO8VU2KaOKR38Wu0Jh6sYsGo2HhgP?=
 =?us-ascii?Q?b1Qf7AlcM7Lp1CLfpxAuYA3sTxBSolorcmkzmz/O2TRqZkexl5ZJ3SGSFpq+?=
 =?us-ascii?Q?T6wPep/qCeaERO2e41t4v+/7TpgwuNKBFTPwJoVnZYJeNgypn5Ca27x/gEI1?=
 =?us-ascii?Q?voW2tZ/ivQAb8pka8wiXQ5V0qvo2ujwHKbFUkwn5t5pNfFOcVULLDEuUol6q?=
 =?us-ascii?Q?FpPGajxR1ZoOy8aj5x4KObhc3nWiZyGxWBFZlZ8KInfN/IvmELY9/PRIRl66?=
 =?us-ascii?Q?+aiGBTee2hPcIvjfKl+p9MV8/InSpYjqabU7TPjkgTOUZ3ySfvsdHKg1Pwuk?=
 =?us-ascii?Q?xmqEf1UXfcqW994N4G/1GsqW1c56URxxA2LubsyNmXL67Sb+mpp64a/U/SyF?=
 =?us-ascii?Q?XsYXPMG5k3txCFjcVTxi2IoYzAj+7xpSAdJg9phWFNOE5M9nGGkriC2arad8?=
 =?us-ascii?Q?NSOBESwxgNT2ii/XuH+2NNVt102vbssGhhSTyyPBC22ro9mOMUhCxgex0iU2?=
 =?us-ascii?Q?4/2aGtnLl3P0LpbJwQ9Yt3nnDGDMty7vbbT3XPMR5x42wMHsXgBOxMSdpWCa?=
 =?us-ascii?Q?GO4x/fRw613cqfgSKxEpGBYW2285RPhC13IpU7/4Njm4aNBWkgONbrK/1ToG?=
 =?us-ascii?Q?w0WRDzevYmKtGY66GGaiH0UhzAD0+HgURFhqXRMoYUn4OK34YOfXtY9Ui8sP?=
 =?us-ascii?Q?uw318bLBBU9/Ig+ahFCWgrRN5wAg0rHBpm0izt5jfdDF83fWyNvz0wss3Vkw?=
 =?us-ascii?Q?ZsdXeCM7HJ8WSZoW0JfbJJRK2Y1dV0xJzmej6YOLNnMKw4D0/o4hygFTsjJ2?=
 =?us-ascii?Q?wwFdGDU177btpi3Pp/tCLki4XW40RnfJAlBwhhFDqoqOIX8cOHlkql5oZ3RA?=
 =?us-ascii?Q?NjrhjjqU+JXEXFo9YomSXMgXYpioOeXHJH27U9gSmrnFx6mxOOddOgl6niJU?=
 =?us-ascii?Q?rAs/kRxpd3dpmRf72Igs1mLuvI0ase+YIOX/84hwUuIIpkRYVOXF96zkYSe/?=
 =?us-ascii?Q?nXxrkP4GdLt1MMI5eBV3NLNxCRIIadEwQiFZm0koD2MiKTAc9y/XR4lPDHeH?=
 =?us-ascii?Q?oGqoz/olJGE+sEuDS3a8EmglJR9guSCN3yphBY/SRx7koC1zL7CViumAl/mz?=
 =?us-ascii?Q?JUllHh9bRKbeMZua9frVHu8rJqkgweyctToyxgUlO0ZuSNv25d7rRmNxEBsS?=
 =?us-ascii?Q?p/AVGPOkmPYSNGMfmuUVBxI8uC0G7mQrKEQW/kQaWUWZ/vYrQVR4ip14rhU9?=
 =?us-ascii?Q?pd+NQ4sMP2ZuDTedc2DdEQUD5bqsNjbpnKLL3fKPBYHeEuLkDZy9rFWpzmB2?=
 =?us-ascii?Q?fd5MFJdYrMUkMCeWZjKgQq84F1M0Cqtg0NuTL25ywhYuudFXk1NK7m7yu3uy?=
 =?us-ascii?Q?4g5jRIMewtmhV1BzrAvqtmZRvzcBi6O7hPPRs/rlHjwATR7x6kiXWufyfcyk?=
 =?us-ascii?Q?cluFug8I3V1q86RnZJ7tw2o/T3foTwLiDmSh7j/xnBSpoKQsWOrEjg1EEEZq?=
 =?us-ascii?Q?XNwseygW6g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2d89a2a-353c-4173-acdb-08de6de9809f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 05:57:58.5873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mJnp//KOBmmCSo09IoB71ZYev1ZC+VT0Z8so5iLD64RFlogWmFkFrBF7SOzxFUySXxB1HHF9b5pGIwqpyNvqTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sony.com:email,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 402C8148EC4
X-Rspamd-Action: no action

> Subject: [PATCH] drm/i915/gt: Check set_default_submission() before
> deferencing
>=20
> From: Rahul Bukte <rahul.bukte@sony.com>
>=20
> When the i915 driver firmware binaries are not present, the
> set_default_submission pointer is not set. This pointer is dereferenced d=
uring
> suspend anyways.
>=20
> Add a check to make sure it is set before dereferencing.
>=20
> [   23.289926] PM: suspend entry (deep)
> [   23.293558] Filesystems sync: 0.000 seconds
> [   23.298010] Freezing user space processes
> [   23.302771] Freezing user space processes completed (elapsed 0.000
> seconds)
> [   23.309766] OOM killer disabled.
> [   23.313027] Freezing remaining freezable tasks
> [   23.318540] Freezing remaining freezable tasks completed (elapsed 0.00=
1
> seconds)
> [   23.342038] serial 00:05: disabled
> [   23.345719] serial 00:02: disabled
> [   23.349342] serial 00:01: disabled
> [   23.353782] sd 0:0:0:0: [sda] Synchronizing SCSI cache
> [   23.358993] sd 1:0:0:0: [sdb] Synchronizing SCSI cache
> [   23.361635] ata1.00: Entering standby power mode
> [   23.368863] ata2.00: Entering standby power mode
> [   23.445187] BUG: kernel NULL pointer dereference, address:
> 0000000000000000
> [   23.452194] #PF: supervisor instruction fetch in kernel mode
> [   23.457896] #PF: error_code(0x0010) - not-present page
> [   23.463065] PGD 0 P4D 0
> [   23.465640] Oops: Oops: 0010 [#1] SMP NOPTI
> [   23.469869] CPU: 8 UID: 0 PID: 211 Comm: kworker/u48:18 Tainted: G S  =
    W
> 6.19.0-rc4-00020-gf0b9d8eb98df #10 PREEMPT(voluntary)
> [   23.482512] Tainted: [S]=3DCPU_OUT_OF_SPEC, [W]=3DWARN
> [   23.496511] Workqueue: async async_run_entry_fn
> [   23.501087] RIP: 0010:0x0
> [   23.503755] Code: Unable to access opcode bytes at 0xffffffffffffffd6.
> [   23.510324] RSP: 0018:ffffb4a60065fca8 EFLAGS: 00010246
> [   23.515592] RAX: 0000000000000000 RBX: ffff9f428290e000 RCX:
> 000000000000000f
> [   23.522765] RDX: 0000000000000000 RSI: 0000000000000282 RDI:
> ffff9f428290e000
> [   23.529937] RBP: ffff9f4282907070 R08: ffff9f4281130428 R09:
> 00000000ffffffff
> [   23.537111] R10: 0000000000000000 R11: 0000000000000001 R12:
> ffff9f42829070f8
> [   23.544284] R13: ffff9f4282906028 R14: ffff9f4282900000 R15:
> ffff9f4282906b68
> [   23.551457] FS:  0000000000000000(0000) GS:ffff9f466b2cf000(0000)
> knlGS:0000000000000000
> [   23.559588] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   23.565365] CR2: ffffffffffffffd6 CR3: 000000031c230001 CR4:
> 0000000000f70ef0
> [   23.572539] PKRU: 55555554
> [   23.575281] Call Trace:
> [   23.577770]  <TASK>
> [   23.579905]  intel_engines_reset_default_submission+0x42/0x60
> [   23.585695]  __intel_gt_unset_wedged+0x191/0x200
> [   23.590360]  intel_gt_unset_wedged+0x20/0x40
> [   23.594675]  gt_sanitize+0x15e/0x170
> [   23.598290]  i915_gem_suspend_late+0x6b/0x180
> [   23.602692]  i915_drm_suspend_late+0x35/0xf0
> [   23.607008]  ? __pfx_pci_pm_suspend_late+0x10/0x10
> [   23.611843]  dpm_run_callback+0x78/0x1c0
> [   23.615817]  device_suspend_late+0xde/0x2e0
> [   23.620037]  async_suspend_late+0x18/0x30
> [   23.624082]  async_run_entry_fn+0x25/0xa0
> [   23.628129]  process_one_work+0x15b/0x380
> [   23.632182]  worker_thread+0x2a5/0x3c0
> [   23.635973]  ? __pfx_worker_thread+0x10/0x10
> [   23.640279]  kthread+0xf6/0x1f0
> [   23.643464]  ? __pfx_kthread+0x10/0x10
> [   23.647263]  ? __pfx_kthread+0x10/0x10
> [   23.651045]  ret_from_fork+0x131/0x190
> [   23.654837]  ? __pfx_kthread+0x10/0x10
> [   23.658634]  ret_from_fork_asm+0x1a/0x30
> [   23.662597]  </TASK>
> [   23.664826] Modules linked in:
> [   23.667914] CR2: 0000000000000000
> [   23.671271] ------------[ cut here ]------------
>=20
> Signed-off-by: Rahul Bukte <rahul.bukte@sony.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the patch merged to din

Regards,
Suraj Kandpal

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 98a3a7a9de50..b9111c47bf3d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1967,7 +1967,8 @@ void intel_engines_reset_default_submission(struct
> intel_gt *gt)
>  		if (engine->sanitize)
>  			engine->sanitize(engine);
>=20
> -		engine->set_default_submission(engine);
> +		if (engine->set_default_submission)
> +			engine->set_default_submission(engine);
>  	}
>  }
>=20
> --
> 2.34.1

