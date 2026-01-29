Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIv8Ac/PemnU+gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 04:11:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB8FAB5A3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 04:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4091010E7B4;
	Thu, 29 Jan 2026 03:11:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nV+MdQ2E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 807BB10E7B2;
 Thu, 29 Jan 2026 03:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769656267; x=1801192267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wmL2yWd1tbu52uN2x3oILoPpkIN/LVSUGPEWnUH7u7Y=;
 b=nV+MdQ2E3rrv7URWUo83pQL12laZNRqM5TDbRn7++b++2kLOoil70AiT
 PAz90WFrc4BkGA/u52i2fCwbfn/l3I11sXNFJWNZUEvaDrVHF86ip5ylJ
 mw/5g+NH4Bo7nyDtgkTyMzI8Z6S3SK4744RCI6wEM+1xW3Qyfl37OxnGJ
 EIPR0UzfQDiT9qhgVZJo5WchlxxD2rhrK9RKKlNwE+fMAxdQ9+TLBwmMs
 PlMdwtmNpq6GadeG+4ZMknzYjuQhAAenViRac3PGMII23rEIpCO6DVyvs
 70aCoF/lxf/an9kAGH5tJ5dwMgwB2RzCXiwMvgU7a/vahwP5Ayzlr3qYY Q==;
X-CSE-ConnectionGUID: fz7KhFJ1RNuYHv9AyAGX/g==
X-CSE-MsgGUID: 8h8C+oNHS2Oj9Vo5VYqeAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93544551"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93544551"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 19:11:06 -0800
X-CSE-ConnectionGUID: mmkRcabRQWakdQN+EESbxg==
X-CSE-MsgGUID: 5683HDvgSn6BWr5TFHaf4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208679476"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 19:11:05 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 19:11:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 19:11:05 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 19:11:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DolN+aMLUN1O4uPNu8Ls4GEShO6Zegby0o8+kvXo7xoCIved/hrlLMLfoO6joVt5p/hrqDOyNsYtDIMD71Ossvgxe1kSAY995GWcO/mD1BHO+1plU/8ocXSKS8qurMqMmWb7yXJBqMxVnSq1EODOjSu4SxUl66xNp71Jd3R8eyAcoNM9SR2Jw+n6u9uNtKZMAaQ3as9+MYYv3ylOjJttjcSrVFQdE9ooRAgT6XZp6URXJorFCaFrv3kOuF7w/HDEbNUJk33ipq9KiSj/jinonQgkwuOak5wUW5SR1WO0oqqvqv8EZyGsO04hLR+OiFEmcf/N/BMnquF8v9ynXrmocA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o3IeqaxYpp0a8n7LXAZdktB0i54oC0U+iZtWVr0ehvI=;
 b=ty6dO3+3qaOoAURmF4N8rKV2XwuUvH2Q8GP1REzzp9h4AthlyWFCP7bCy7xqnCn9iZGbci14jJLiwv2eGN7V4Euhxfg9FZa1fZXSYsCfV+5A58ARmZqbijqOzroWN37OYEJIHQpBEyEbwCPwnNsCd3qcsY2lIPZ4dP3+nwKopqzG/cF0cVHtp8Rt/FzaipUte7XEaDR9jvelotueLW9RW+rItepF6VIKC/I9lPQJe6otEe0MC6yr0GAa0pTibjRAuy35nIb4O0l+CtZ8oWAou2vLKG1Up5ELX8fvDKkNwz3+6MLaFG5qoUd496kmegJfunMyTro1TK29EVOpkT0S7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB7645.namprd11.prod.outlook.com
 (2603:10b6:a03:4c6::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 29 Jan
 2026 03:11:01 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 03:11:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
Thread-Topic: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
Thread-Index: AQHckCqBn8uTyzWqIka23OQ3JApc17Vod87g
Date: Thu, 29 Jan 2026 03:11:01 +0000
Message-ID: <DM3PPF208195D8D3369479F89074B2A9E68E39EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260128074806.3324942-1-mika.kahola@intel.com>
In-Reply-To: <20260128074806.3324942-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB7645:EE_
x-ms-office365-filtering-correlation-id: 9ccf032d-21f1-46d1-725e-08de5ee4084e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?d3hxLMPwkXWvWaEPjI3zwi1P2Gk5oQohbQ30VZgk+iW1A3Tu2tOaeF72ZBku?=
 =?us-ascii?Q?GRNkYAK5f/0ELO1dATHnLIcYPWNRj59/mZRu3XPCfg8mh1ybiHG1xNLko2LO?=
 =?us-ascii?Q?jV+OvxMUWI3SZvu27ruF3St08oidGFLbs/SuOCGaauqWh//NmzLGTUnPwCb7?=
 =?us-ascii?Q?wiZ/L5TtPIEXIWrt1gfGgKCBTqdI7zkkMcwIdGjxGDoGhbhuRnAytsYXnz/N?=
 =?us-ascii?Q?4zzf5vZXBWaHLTcO+f47cmoHWfO6ThC0WIf/c2fM54HjhcXdsI0D2fLOZ6u/?=
 =?us-ascii?Q?lBGKxmuj/aCCrYjQsdVrQBpDPzh7U7PqIJUUbWtwqkmh6ZCbUDgQz2R6cXd7?=
 =?us-ascii?Q?hesGylC8foNBiGQZc75lk81xVMoO9m9v536H6rYTRdKBksGDx79z5uRtwwe4?=
 =?us-ascii?Q?yf4KrYtp1piVgXlYlHSwmljGCqAbfj4m+wp1x5TIV9dpcJDagCSwWle1ohiK?=
 =?us-ascii?Q?N6eoXVdwwJsTvKNIMjcszH0cSmFF+pl/Jm8fAcouRxp42Y9HRwGMUZmv50N/?=
 =?us-ascii?Q?xqBaYA3pdfRdL7bmiFN+714RZHZNTnTCbS0jP17t6aXLTIcO5meH/FIMVVZk?=
 =?us-ascii?Q?+QPRWO6Ga5tomHcNMLODwXVWcJgptxKJ086FnzBIyPS+ShfEGYV8BSe6+Dl3?=
 =?us-ascii?Q?i4r8phMJsm7Kvbps0GVeXg0+qY/ZeQn1QoUQbQ6Rjmhd9OZgb+m469MiXEBH?=
 =?us-ascii?Q?0g6q5jDOmp00CUgW6fmylwY4KVk3L5ljSglL3CP4mEDpt/1r4eh4riu2QKAf?=
 =?us-ascii?Q?c2yeArEXJ+rflqLIWLgULd+16LDI4Y7KLo+ksY2BNHxqO9oN7FeaNodSfH7Z?=
 =?us-ascii?Q?eGKvxOLB/IttHlIfL8a6TnSb/ClE6iHBcLOevi5BUC9b3iWpB5UD6K9t6/zV?=
 =?us-ascii?Q?M6cBDHQCKJOU4Bsp9W1PhhEL7NuXsmydLFLDet8JYJjceJqEMW42vEK2yRCd?=
 =?us-ascii?Q?KvB80CaqFsKgsRrHcmKYAuWv60aN/2Qddf4EjXyFfGgYsgMhTnVvB2IaTiXm?=
 =?us-ascii?Q?xLp2Dd0nzIOIuBfKNzBthOyjYfZgGToxjkluHlAuqGLE/SLgNnbtfjdBnfMA?=
 =?us-ascii?Q?wSLRQzXknAddLyOGH1pnB4WCnOJU/x5Rz5InkRrxecrGKgBVWfW2vbSUmi+q?=
 =?us-ascii?Q?Zcc24H5QZm+GteGrQPHyND7m3DOXmJ1MucJjfVwviumUGeYhfdAVTdgDiXGW?=
 =?us-ascii?Q?43HgvagC4UXJSLjL5yNng66Rnnk2aXNIHg71CBva8QYT7t6fa/MlWGTL8tC0?=
 =?us-ascii?Q?dNrmSAvdc8uw2mnCb5VWETABBOStHAI+VjtQ+/llJ/mn1OTr01B/bkxQnSX4?=
 =?us-ascii?Q?LJ/j3UKDFZJsw15+qIYZbBmDivIJJqjZdwvcOUsuSHmBqK4AQ+loRCqZIbJI?=
 =?us-ascii?Q?dWgIzHxv4XybKxEadz6QiSFoeUTnP2XnQmYnmAySp3kUI1cg57wiVdoYPZsW?=
 =?us-ascii?Q?r6p5WOTbCDmI7+ldJWvZtAt/M6NhYXmJXIVJA8Yvlbo6n6dcrDWmdWPMukgG?=
 =?us-ascii?Q?MhR/0oy5v8SJXUmd3snORtXb4FZ0UE8WERNIBZpmzxh0AsEbl6hy6+j149PW?=
 =?us-ascii?Q?vVLeWfCg/kFtLhxZDF4BrcOTD2Sr1aiaohjcPlM2hXs0pXMblK77Rmf+RTyv?=
 =?us-ascii?Q?HNT5iNsJK3JKQ5oenp+2gSc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XtWk89Nf8mywfRGWYV7ZWx4xC8aSCG/ftaz1TcQfXjYVczA31ShV1z4yfGfC?=
 =?us-ascii?Q?g17QZisYEFV66bXX9H0uji/XFe+zYYHeHlYWL4cJ6AcMDtZrPwclKJ64CBhZ?=
 =?us-ascii?Q?LQe6m8OxtbATDGw8cj0plprOiv7MofIfE4I9AJ1lmOlkkA+HwqD2G3NTFlyf?=
 =?us-ascii?Q?gI1FLQ3SRWbrtQWT8sP1Zm6EagmB2CpT5AIuHDNFOEzikVxp09NnGG6AbOi9?=
 =?us-ascii?Q?pKjW56fKtN5Olwb2QRsdVeahtOU7XLUDJCa0mpV4e1vBcMpydktK+p+QOlUg?=
 =?us-ascii?Q?O3nYKihbZ56YPQ86jVGz0/BU3Hzv54fH6DLi07LPePhDzFJwmA1fz274cE67?=
 =?us-ascii?Q?f3ukr3+5QQlt3gF3E9SYRKR6c21oZrWikYOL1nEMyAl5A6nQgn8Hp0/lmrtQ?=
 =?us-ascii?Q?ph8bOrWn4DymEVu+w8mgyB5yaKqmJNR72iQ1aIDLekKnxEipMQJFLIyp8ETf?=
 =?us-ascii?Q?2405B1slQXFVWD7G2MxEzw9aJpk++u5iF5r5tfwqozD7Y6SFxURLb6DR5C/f?=
 =?us-ascii?Q?Fs0hBMDTaiNXlMXfi7ETfViLo1FYDS0Fs8Gzci3XrRcfAJ6+zy0gItEycutf?=
 =?us-ascii?Q?KZgk5Y6YLYxn/iuh6RXrzYZvTGxZla4YISifR6k+V59s2861IzSJ2/t+S7uZ?=
 =?us-ascii?Q?bhgxlydu32lf6Y15aa/LRcFelCx0kNo6BL0Rx/H2xx048BbQthTCetEDZb1W?=
 =?us-ascii?Q?pwf65sARQlnxu1zwpUUERgIRBcrn8b9dgKKY8hONwcZkGkIpMCa+gLoMnIRi?=
 =?us-ascii?Q?hplE8RijwQbzCdW56Rwq3N0uA2Gofk06p3mR1P9z7dZ/ESapfWSDpMibEvEb?=
 =?us-ascii?Q?wCGN6IvYeXOu1hvFP50PWPiBdNiS24FCWjILr+wv7Axytg5Q/pEOsO3g0SLU?=
 =?us-ascii?Q?hEANsasjnIP8EyNbyw2fngrYvzXXW1uNjLJ2PJfEEDGza/8yYqxTCKpu750x?=
 =?us-ascii?Q?qCRwvvFWRfT6lb6xTwTZMRB9yFmrt1vx9blY7KoxLN24aB1ne1SoNkztrVlG?=
 =?us-ascii?Q?T98k6ORrbYj+OMz+nSJNyuJrrWntTIQ1jgKKknwpfIYM10cpXAZxMLdtlOtK?=
 =?us-ascii?Q?3pIWGJYuS5ZsFX8cNOew8dI2y7lulgRV91/XVYNC3kI2eDwNLFCCUT6q7nj2?=
 =?us-ascii?Q?AhU1mnZ1ZdFUI5bpq4uD8NQfwjtJBfUvx1dLQ16GdFBB7mzmoRMERYBeipfw?=
 =?us-ascii?Q?WeslIBrvGbkcQA3e5j6fWIYioOHqbtBm50FI7kO6C4le9gWzY6HpuE8LEZAk?=
 =?us-ascii?Q?DvO6z69UjM25q3Atm/+fmOGPbgTn2Lu0cVHc47GUwgyHZCfRHiXUmJIpudmS?=
 =?us-ascii?Q?HzZfMizPqj4R5a5e50Ujw/n8rVQTGC3XznJLikNFnuYqmA62Mo9CGQwCtLek?=
 =?us-ascii?Q?rPHO801a9HXp8KCT7C1MmWOJJnQofVYHv8kzV+/zIwGyzsEqWak8Uy7AAKkD?=
 =?us-ascii?Q?vOsVR5Z6ugbKsWJnwdvAFkZ4gjq+1ZPaKU0r1zLxlqhyFg6Cl5CSs+W05zbA?=
 =?us-ascii?Q?+SxHVdsdh/cGDIVcjzBJdpF6qDT+NowW99BAR/GIEEioOmVTVzm9D3I0MNYV?=
 =?us-ascii?Q?kooKCGXL4HwzqgSgnukH+iq6MHz88SYkjb+JlL5WlqN4iJtPbmeUCqvRdKwU?=
 =?us-ascii?Q?K1T5CFeYG7Ozhy9uOXNTtLTZIARuMwlPMgIUyD4sosPSdelvSzweUZjbjIZi?=
 =?us-ascii?Q?MhGYH0d8mBAkdZ/dQIHeWTE2rIBYKq9NAdSvmFNgvEBQL40qlMumWsncaY9t?=
 =?us-ascii?Q?H6iU7KzNYQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ccf032d-21f1-46d1-725e-08de5ee4084e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 03:11:01.7502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VKZqsSGHHM50BAVc2PbjMIn1uipU+kldvavPjKkZsfRRdSIkbooIibSQHiv1FJb5C2uUX8ch2sptHrHb7vS+Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7645
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3FB8FAB5A3
X-Rspamd-Action: no action

> Subject: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
> gating issue (22021048059)

You don't need to mention the WA no in the subject since you describe what =
you are doing in the patch

>=20
> Prevent display corruption observed after restart, hotplug, or unplug
> operations on Meteor Lake and newer platforms. The issue is caused by DSS
> clock gating affecting DSC logic when pipe power wells are disabled.
>=20
> Apply WA 22021048059 by disabling DSS clock gating for the affected pipes

Also no need to mention it here since you have mentioned the WA no. in the =
trailer

Regards,
Suraj Kandpal

> before turning off their power wells. This avoids DSC corruption on exter=
nal
> displays.
>=20
> WA: 22021048059
> BSpec: 690991, 666241
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 78 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_regs.h |  7 ++
>  .../gpu/drm/i915/display/intel_display_wa.c   |  2 +
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  4 files changed, 86 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 6f9bc6f9615e..1ef450f26879 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -14,10 +14,13 @@
>  #include "intel_crt.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_power_well.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dmc.h"
> @@ -194,6 +197,69 @@ int intel_power_well_refcount(struct
> i915_power_well *power_well)
>  	return power_well->count;
>  }
>=20
> +static void clock_gating_dss_enable_disable(struct intel_display *displa=
y,
> +					    u8 irq_pipe_mask,
> +					    bool disable)
> +{
> +	struct drm_printer p;
> +	enum pipe pipe;
> +
> +	switch (irq_pipe_mask) {
> +	case BIT(PIPE_A):
> +		pipe =3D PIPE_A;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_A_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_A_GATING_DISABLED, 0);
> +		break;
> +	case BIT(PIPE_B):
> +		pipe =3D PIPE_B;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_B_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_B_GATING_DISABLED, 0);
> +		break;
> +	case BIT(PIPE_C):
> +		pipe =3D PIPE_C;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_C_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_C_GATING_DISABLED, 0);
> +		break;
> +	case BIT(PIPE_D):
> +		pipe =3D PIPE_D;
> +
> +		if (disable)
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     0, DSS_PIPE_D_GATING_DISABLED);
> +		else
> +			intel_de_rmw(display, CLKGATE_DIS_DSSDSC,
> +				     DSS_PIPE_D_GATING_DISABLED, 0);
> +		break;
> +	default:
> +		MISSING_CASE(irq_pipe_mask);
> +		break;
> +	}
> +
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
> +	p =3D drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> +
> +	drm_printf(&p, "dss clock gating %sd on pipe %c (0x%.8x)\n",
> +		   str_enable_disable(!disable), pipe_name(pipe),
> +		   intel_de_read(display, CLKGATE_DIS_DSSDSC)); }
> +
>  /*
>   * Starting with Haswell, we have a "Power Down Well" that can be turned=
 off
>   * when not needed anymore. We have 4 registers that can request the
> power well @@ -203,15 +269,23 @@ int intel_power_well_refcount(struct
> i915_power_well *power_well)  static void
> hsw_power_well_post_enable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	if (irq_pipe_mask)
> +	if (irq_pipe_mask) {
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
> +
> +		if (intel_display_wa(display, 22021048059))
> +			clock_gating_dss_enable_disable(display,
> irq_pipe_mask, false);
> +	}
>  }
>=20
>  static void hsw_power_well_pre_disable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	if (irq_pipe_mask)
> +	if (irq_pipe_mask) {
> +		if (intel_display_wa(display, 22021048059))
> +			clock_gating_dss_enable_disable(display,
> irq_pipe_mask, true);
> +
>  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
> +	}
>  }
>=20
>  #define ICL_AUX_PW_TO_PHY(pw_idx)	\
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..9740f32ced24 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2211,6 +2211,13 @@
>  #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
>  #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
>=20
> +/* clock gating DSS DSC disable register */
> +#define CLKGATE_DIS_DSSDSC			_MMIO(0x46548)
> +#define   DSS_PIPE_D_GATING_DISABLED		REG_BIT(31)
> +#define   DSS_PIPE_C_GATING_DISABLED		REG_BIT(29)
> +#define   DSS_PIPE_B_GATING_DISABLED		REG_BIT(27)
> +#define   DSS_PIPE_A_GATING_DISABLED		REG_BIT(25)
> +
>  /* SKL Fuse Status */
>  enum skl_power_gate {
>  	SKL_PG0,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 86a6cc45b6ab..f8e14aa34dae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -84,6 +84,8 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  		return intel_display_needs_wa_16025573575(display);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +	case INTEL_DISPLAY_WA_22021048059:
> +		return DISPLAY_VER(display) >=3D 14;
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 40f989f19df1..767420d5f406 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -34,6 +34,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22014263786,
> +	INTEL_DISPLAY_WA_22021048059,
>  };
>=20
>  bool __intel_display_wa(struct intel_display *display, enum intel_displa=
y_wa
> wa, const char *name);
> --
> 2.43.0

