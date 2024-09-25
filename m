Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C639851A4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 05:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309B310E0DB;
	Wed, 25 Sep 2024 03:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q2qhraXa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE77F10E0DB;
 Wed, 25 Sep 2024 03:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727236282; x=1758772282;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrPvot2KxbrfZl6Tf6bzK24yEWiigKjFG9tX6sSCMmU=;
 b=Q2qhraXaeYWAShMAu5LIKNk3hepCmq0x/8tVcQvxRh569NMuRPXNN23r
 Tnhmoy+0nLE9ydeeKkbipjF/7GkSGBPYO/N02AuH3DPZGNY2QMu418ETl
 aF8GbivYkU4tGP2LrwS0yhSLmd+4vmkEvfXc3XNf9AF4M4YDJDN8vbYFW
 AuhlKIhshACtzPZrdLZCDFMExEGr7IvaB3dXnbDlJhnqtcxd8FzYCR01W
 fiZv4nUpSBoYSMLHtzhrtK3qVLGWP3pO9HKrzJbVf9xpqHpNf6edcRVNU
 9wyqwGqJ4uo8r6tf82tSUk+j4GE4r5Y9vC9fWG71Eb2ku9LLjuMthU++m Q==;
X-CSE-ConnectionGUID: /2HZkytFTVWNSpLLCXFEbQ==
X-CSE-MsgGUID: fUo/sNgKTbiSOoQh+Nh1KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26131431"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="26131431"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 20:51:21 -0700
X-CSE-ConnectionGUID: PN6K4wtQRPyD8Tkikiu0kQ==
X-CSE-MsgGUID: KHt47DWnSlCoBDz702ptzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71514606"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 20:51:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 20:51:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 20:51:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 20:51:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 20:51:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZ41VYfikDZEJSMUg1UEdeMK12KpsXW/IrW5feNd39flWR6CpppQQB0BkZdjJb29UoHDL2TTRzRwwKJZ8oRMMRPG+sDwgrVer1F9I0qgfLL/McrpEgIeZbH9xh6uKKfSxQXfulqr8wyflx6C5cbw9MfXZqQPuo36ZQdz3cClhlVoQ7X+z3XbC8Lh+EuXpxgm74VuJ4UkkMWINuYWkr/TQEo//rz9ieIPHgeP+UqXd9r8lL2HmWEUpoOYzftYRi3Q0hsSi9rMhqGmDgP2MMITMWaPui4pLwTww3hEvf4FFJZQGXgBn+bxyeO4n9BaFVjPyEfLFFfAo1JKv0wMNExgMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35I2+8uK6WKQKqfEhm4m9Po+45Vhd23+Gzz/gH8QB4c=;
 b=MtM0BKdxBymwt5vtbK0I9ybEYgH9WvQoFFbvEUumvd4V8RZaGAbkydBVsrnWZ5BWED720t7uzkMkBDAgm73qnNh0bGIKwgYhgChZ5FTHDZ7h6mvgcCRzUhvIsYEqWhl7of52dXa2DEWL0XSUE8ExKI4saB8Tggj6Es53EDJUw2MON+ezMnw8SRc9x8tB1V4BzqrBimPm1OfvQA6OBzn0rwd7MLB+mqbBeLlwf1UdSjOVFe/otcKa89irSDE5cumabZGozJy3rY6utuMZUOmYnE5eO/WTmEu7+G3wW96z7VLfEzJnQN7gb1ftoPsaUHNmGRtfWJTnILir3HXnrvFUPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6308.namprd11.prod.outlook.com (2603:10b6:930:20::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Wed, 25 Sep
 2024 03:51:17 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 03:51:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before
 reading the FFE preset
Thread-Topic: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before
 reading the FFE preset
Thread-Index: AQHbDkpj5vaVRCFyhUuLnHD6D4Gk0rJmj6EAgAFPbxA=
Date: Wed, 25 Sep 2024 03:51:17 +0000
Message-ID: <IA0PR11MB730764C8A2E8453527F25CFABA692@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240924061358.1725306-1-arun.r.murthy@intel.com>
 <20240924061358.1725306-3-arun.r.murthy@intel.com> <871q195w77.fsf@intel.com>
In-Reply-To: <871q195w77.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY5PR11MB6308:EE_
x-ms-office365-filtering-correlation-id: a6bc2729-efc7-4f4a-0cb4-08dcdd154f4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?iO2zuOvIPD+o7AOK9OGvbjC8jOO0TmZTJ2nx4zWtu0/A8IbAjASNBHmFm94y?=
 =?us-ascii?Q?lCmUplBnsM+uDhBmyU/nicc/F5Lnfpi88HxzulgqK9nnisBPGaGK0/CmBRVn?=
 =?us-ascii?Q?PRgbukUYfTe0msE3XKGLNRECAc9Bi1Ddhf5LFj3Cs+j9jveajXciaO800XZq?=
 =?us-ascii?Q?rb/m9lad7mIf92k9lIJSC/hMiF74Wi7tQvQXfVgn7Pc8Qx8ZhT6Q5XAOE3XU?=
 =?us-ascii?Q?gg7uFOZluMsJJ5IdiRkTRT4E8MNlmM2/ZbhlMEpo7QYrCCOmQnvkx5xyF3Wi?=
 =?us-ascii?Q?nokduTC5GuospHOtprVsoDxOn5hPDmNiLE36mdJzSmDkL9ErA5YdSsX5cNjB?=
 =?us-ascii?Q?ciUmVo7RMhHgeooIQV9+bQoRb5QOsV1S/eC9KpXEiWwUuOlwJBYE3aDSPsEa?=
 =?us-ascii?Q?hEUs0V/Xw5gYz/K1GJfNqDrFtJod8lKfh7rYL7DTeoIxKf7IMy+mnX3i1Cad?=
 =?us-ascii?Q?gJcD/EY2rGbDrxI8WPAlTlaPrLSgYkaVd13slc3VZlaZNxh9eZN9Xekiveph?=
 =?us-ascii?Q?c4kqY/sLniDDGU+orepHa2hpwyXW1GZO5H4QQn/w/THs3U1ldyVfjsZh/Koy?=
 =?us-ascii?Q?kK1hBhXjyK9LlTjAUicGMzm4jSOmkaaILGtZFeJ9ssIMmQr9iFcNaON+ibOB?=
 =?us-ascii?Q?BGOYyj8C4iycg0T8DLI7CPGDccpdj8wGZSbRkcqrwOg9Uefem2cA5CP6Imba?=
 =?us-ascii?Q?sWplFOZL7uMZy0QixEle72iR5czjmac9HFPgT/ZgV/6v7DHwubc5lpA48zk0?=
 =?us-ascii?Q?68is5I8BN8KFeVBrdic06/LYjF4G9RkVTCku+wuGvuEYUAOeCwgsmbahd9yY?=
 =?us-ascii?Q?YTBsesS8eeEGQluiQGHS6wHGwS0X/J8msPW0E/MD1d6OMGEO3KFlvM+T1s5S?=
 =?us-ascii?Q?A3XFCxQn94zf44WD7UzQVj1rQrGTAfMbNvphG4tJN5mMlvSk6JzG8/D02c2S?=
 =?us-ascii?Q?qZZg8w1eYwWFiOHeZWCIhKt+XEuFOE2pQ7o7e8q14m407wEBuZ+Z4cIi6dS2?=
 =?us-ascii?Q?hLQYIzgCp0NOlTfQTIT7Lm9z3/2L7PcsMmaPVwVEQ7YwTPYUERvTg8e9ZNpF?=
 =?us-ascii?Q?1B6z2BC9AuRQbZXtPIIopJji/c/dZZuQZ2pGXOzZOck1y5xYosCCmR96JZ/q?=
 =?us-ascii?Q?N6t6EfAzBG9S8uv0S9riiFxQgp3qrsWwWpviAt1id5KU1Xcf1yM2eXJYr1EE?=
 =?us-ascii?Q?ZWPelByIbxCvUP54GpPV3AcjcwIIdzDq/55khXtL7K+WYh5gZNK+t9GR5f7Z?=
 =?us-ascii?Q?o1kxnNR5UmFHEAD+JWqxYM0msmLD9KJmMe4RDo+C1+3Y59WH3ivCQ3fKpu27?=
 =?us-ascii?Q?Xx0Hd5+YtldD3PtHb/HmIc7AtLaJz+7X6tlqFfifjsVOx849j7sipAg5bZdP?=
 =?us-ascii?Q?oDxbjVRhcHmmD8/Un9Y/+2YRZmtfw27q0mox7zoH8QE+mvZO/Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RKAp6TIPTH12px4aWe6q181et4G2Hoz/j9VKWgBB2SNcM5RVwdUl5GD3OT49?=
 =?us-ascii?Q?Rf0wP1jpRyaBhLWrRnKIYK8Uim4MfkDp3p+dw5olXczsD8aNidyxuUB3P2Um?=
 =?us-ascii?Q?dwTSu76gGIzKBKI3+i7GwhaGQwqvkqIhg3quU9Kx7hw9xmtxiGgLAe1nioot?=
 =?us-ascii?Q?Bl4HoHbtWJ2PbFkX9gXRrTw5VxdZzx7rWeqSCBGqmkTnCZqSE4lHvUGNmL0F?=
 =?us-ascii?Q?uYdEB2i61hguqH523chxzQSK3GQ7+zMIeVACZZnYAzUYAEyTWwJ61SbvEqFj?=
 =?us-ascii?Q?RidwCJbJQ0dR6GbrVFADTSO+Hkj7H1FyPcO8NpQNHJL5PaLnAlP6spJJo/HX?=
 =?us-ascii?Q?8AhEhmyiHw9W1i8JVITs5m0XoNWFazozv+IWJxizw+T9nW9nrXYufutt0YVb?=
 =?us-ascii?Q?bOdRvgARx/akkKiDHy5Nc5iWDgx1Duk6BZQeICLSqagarbk1h0aN7Zs9/G8v?=
 =?us-ascii?Q?M5NpRN8tVwwkPJDL2NNszTlKgllXAW7C0slUEqE2ZbpuNwtTpjDw3Obws+x5?=
 =?us-ascii?Q?PUJFouiG628rOwGOis/fqQUaetvnuzlkTQ530pFXvulLWP0xYoLw9oNVcN+C?=
 =?us-ascii?Q?sREV/Q1qrmA3EapW/CdSPTFf8bN9RgVF/5DyIBOio7cNHmbSvZ5Z0BGUHPOR?=
 =?us-ascii?Q?2MD2UqLNks5AS5v+yxbVGJasDfPDKF2KD0O4PwXTDYqhgXgYR6mOOoQ3kYSs?=
 =?us-ascii?Q?vhd1IWC+VbFB9Y08Rg6CHDR9lII4YJCa9pZTWMBOaKeZUDrjFL6Sa73F6WUM?=
 =?us-ascii?Q?qHt9ivZpAWuY8GaWdABxZL/hHgdGN5Mh/x88XcOOxJsvTLsWMZwMJw6KhX2E?=
 =?us-ascii?Q?QB8WkKEi15NjXgYrkgY4JD6O7lOJPLnxoxZQvzId43L5svoEoCxnq7jIMgwD?=
 =?us-ascii?Q?tpZSqMsOLp2l9/aVlrVdC6nRfKNlUJ/SLol8c99RWq/V0mzypUrSanku3cXt?=
 =?us-ascii?Q?2DitqI/yN3CdIg0brjkNy7FeLAH8ZtTXv+t1hJZoinlFYfdSzuYm3Ukue3lR?=
 =?us-ascii?Q?gePOGDSULfgGFl4kY5yB/gVAG/c9COin681RM1dO0UTmcTNN3SD48gFDsYdb?=
 =?us-ascii?Q?SeQdUaCPFubh/zmetaRxj45xeOjcOrgR6oWZllfCTHCAJgpKg2ob9UhCepPS?=
 =?us-ascii?Q?yHAZrMFBFEvAO+V4cRVet0pgqvwJLTkTDGE8dM9z4w3ooibVhgmYR9AoSvnc?=
 =?us-ascii?Q?oNVdv38xyclQB3b07xIfxyiMTdqMCnl9R0QkiJv8GQIuwIGmL/65B+2vQS2u?=
 =?us-ascii?Q?TY/XkRNdq6exLQZAvCRNkvvF0OaYgufQjfpwRHAsFWBury4ERvkkSrEYtDDY?=
 =?us-ascii?Q?epH65Da6WVmn8pGYnQi3HPmTHziwMFB18ELZ0PHN6nC1uoENLMMpJB97BPfr?=
 =?us-ascii?Q?JKMJMe3fYeHt/UCnx8LG8bnO7cWdvFTtoZ+yrKL/HGLZEMsCwzgdCjwARhzf?=
 =?us-ascii?Q?d4/kIp9TXgJLoyEk0+1pMJl9cj/+TzFmUyCAoc2mPJy1POSHFhNmNjawdkMR?=
 =?us-ascii?Q?9XhnOHQ/kjMlbYcLl2BTq7SGRdmcttfUX14v2+8ueQwIZf2PqVmHQUvoczdW?=
 =?us-ascii?Q?ZydM2ub73QumY5UqcuXNUJuVtDAWuroXPzPYiDovtqLLQ4JC5by0oUtjZ/FE?=
 =?us-ascii?Q?qLsWzyZ0TZLLlSPb7uuAryyHSuJIYYtKK9tuj0nn3oMc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6bc2729-efc7-4f4a-0cb4-08dcdd154f4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 03:51:17.4050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l6yCuF5jP7upZnEev97ekDDchIVsJg4Cyru+tmwiNNp4DT5vsOMg6EJAtlShij8VU/Ekc8xiZJDkKjbUGBtqRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6308
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

> > +		/*
> > +		 * During LT, Tx shall read DPCD 02216h before DPCD 00202h
> to 00207h and
> > +		 * 0200Ch through 0200Fh.
> > +		 */
>=20
> I really like comments that are actual helpful sentences. Why do I I need=
 to look
> up what 02216h and 00202h-00207h are? What's wrong with the original
> comment?
>=20
Original comment was wrong "read delay before reading link status"
In the updated comment will replace the registers with meaningful name.

Thanks and Regards,
Arun R Murthy
--------------------
