Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLWnBYiKgmlfWAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 00:53:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4384FDFDBA
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 00:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B73610E315;
	Tue,  3 Feb 2026 23:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvovkzgQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2780D10E315;
 Tue,  3 Feb 2026 23:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770162820; x=1801698820;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kvv49bKtU6RkI97G3l8AfZGCZXA2W6IltCTlwYw9By4=;
 b=BvovkzgQKrJrzMveHEfv2EfGRNvexCqop4NTSsmEEIXBj3tnTSHHZGZI
 /mqHP7ZbDjcROCmzNElItjH3JYcQajvr3IYUMDaqb6bp9OSIbPUBeb7cn
 bcD8kRfMEgeGtCFpgNUb3T13F+FEBU2STMN4hcdLwB9z5jh1Smq64LnQ3
 CFCfFA3j08D3M9m5OkWGyGFUS07P5T8ky2cWTal6HJ7Bc/LNliOSJeCuF
 7dpBAzjJp5U9gcVx54nA/y6Imjdnin0H6leZgP4DVPAVJd5EnZvIMwwfx
 i96adxmYKi6OcoCcCAFVWnhZptYRq8M4FSzarWNkuaDyPRTygqqgT45MC Q==;
X-CSE-ConnectionGUID: +1ys/P6tSWOnJrID2dkbrA==
X-CSE-MsgGUID: MSSlHVbQQ22DPCicwTh9BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71505785"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="71505785"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 15:53:39 -0800
X-CSE-ConnectionGUID: mjxmx/L7TyWKWo7v85HQdQ==
X-CSE-MsgGUID: wXDY05NJStCxTwgrndXxJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="210031455"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 15:53:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 15:53:39 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 15:53:39 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 15:53:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hZJWs1xaV6w3H9Qgj9tl7lx8fwCx9e4KBYBQ19TO/X2cEBIyhnnKBej0RzNdPwRQtlW3qJ6llDevrEj5dG4SGPPHH09XANCX5XAWdZuVuVUal0uY9aaaW9lRkqG4FL6dly522dGPw12om8n0xrYGMwINCRfXNTHA/3pk8tM6QA3ikTj1/A2iCcK5bIlafRtfAxrmU5zD2afNNH48J+XP5WRSIsXvnxclnL1oGb835fTuFe0mC6D9p/KbDi/55zvGY3jQ4fqbUpHZVdoeGnIQoA621Q69JQmhXyoZKmWXt5A1kGhXUdj8vH1ERZvPtw/m4f3109PDYrdDoH/YRAdvCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kYNoeo+ZYM4eY1A4UsPUTeKMuVd0QxQ366JcdP3O2+8=;
 b=RzEoe1EDWo6zd72tjPiMThuDIdenNbGHW/Y/XbHagD6GgBIW8YL+uzisdyXBGacJz+GD3i9bK9pLwSMrjCJbaLc8D1dhI2Oq3O7DxC9fgqfqzRZ9asvP5BZKgX48tEC/uvOxzumGpyE9vdssjUPBi4bno62Ce/deVqTwfbxlSqD4yIeJx8WzSu7yVXepACNiEFmRhiYD2nEo/PSadC2WrFbVyJRuAZ2k51bQtr8496nh+04X++rA/23zVXxOrPngpWaFamMYFggRNQ2cd5HQ9xPWQZCRmp0mtR2fyfwJhdh7VYlIBIaGxy7CurwW3jpA57uoOlxezZWoN9netPjt1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7036.namprd11.prod.outlook.com (2603:10b6:930:50::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Tue, 3 Feb
 2026 23:53:36 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 23:53:36 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 01/16] drm/xe/xe3p_lpg: Add support for graphics IP 35.10
In-Reply-To: <20260202233656.GO458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-1-653e4ff105dc@intel.com>
 <20260202221104.GI458797@mdroper-desk1.amr.corp.intel.com>
 <20260202233656.GO458797@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 3 Feb 2026 20:53:31 -0300
Message-ID: <87o6m575ac.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0012.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7036:EE_
X-MS-Office365-Filtering-Correlation-Id: e98126aa-a22b-48ab-dc2e-08de637f7244
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eLUtWGrXkTmI7Mw+M5/4cg6AScsfClAfP2HHxqruQDPG6NL4LB8D0rvAotrw?=
 =?us-ascii?Q?oYfziZ32U6ml8ksbZQUTSt4g58csgp3vcIKOl/grXjEunCdT759Z/8jp4Jco?=
 =?us-ascii?Q?JTppi98fGs37SoaCGQ689bv439wee9agMEmw5iatwEXJ0yEi4f5M7JcjuSdV?=
 =?us-ascii?Q?9jj4zAgDsO2aL72a4fFEnMyNYtqDzIKH6rKr2s9EQzoJ12dUckxpyemqshyK?=
 =?us-ascii?Q?0kP8NRmcd40NpgLxNX08M+Ow7g1rqOLh0WTJW/UjHoUWYHTkL67XYdaVo5am?=
 =?us-ascii?Q?9jSDH26NaHiLyx+/fWjOgdewzej8IBcussCtl/GRh6v0xKizVHH+r3zqnnZq?=
 =?us-ascii?Q?6wZTfXUy/lYUoOcdlVGPQ1ReNbh5MeTeiLJUBr3zVCGR4ODHI0HMCVEAQsDE?=
 =?us-ascii?Q?CRlFhIPyHfDK40uBfBiPKxNOA6VPaEL1PXFuk1oUHnN9a91AQy9oLrd55uKb?=
 =?us-ascii?Q?WMbVuGcGCWs5/kWE5Whv7LAzDE1ZA+8itT8O1wLrY9VAu3X2rQ5GIOJnwreO?=
 =?us-ascii?Q?nWUKLh5weKlU0ggeY8NVUbF4OrMs4d0uSgHv+2yX/4iuW0rKjIpYpeQ1SRmc?=
 =?us-ascii?Q?kZAhCR5JQDmcByOfMMU6KDjYa+4YJe0FIOesbuUvQs5qkaSNMK6MNL+50toY?=
 =?us-ascii?Q?13g5liMzlEz2QREFRwr9svS1IX4NkD6cb5WQz+sPLkLGg/Cbf1eKWiY0sFEA?=
 =?us-ascii?Q?Bbc2aOsjEdk/sfWqZBN0W77PknR2o/epW3cr1AtmuYoQul+zVSpXbOqNl53G?=
 =?us-ascii?Q?1DANlBhlDMx8qFBJrqRvXjDeXAiMbfB/j55nPG4MWMc23jJoM0PmwTLoQGVP?=
 =?us-ascii?Q?dDrfTFh+OcP05RDHA9TmuWxubH55GkLp0vcVklDS8KslKYk/nnqwaC8TXBvF?=
 =?us-ascii?Q?HZ7A+lK8TEpywMubwnEwDWvdBesilvScW7QYIA/dWa37rvKgtDSK2vfFYl2j?=
 =?us-ascii?Q?CuOTbW90E+cb/WQ4q4n8Q2SU59Yad+o3bpawYnzIS2M8+lDH1tSqpsVvWqdq?=
 =?us-ascii?Q?mEhhAXed2x42FHxcqLwOt4QRWhFwziM/3aOc/lkiBpZB/YTS0z3bwThojyOW?=
 =?us-ascii?Q?a0Sd3B1dBZ3ub17jqTdh9N60FRhuLHnzzzFtjvG8FFDVaLdC82iN4S4BgcHr?=
 =?us-ascii?Q?pu68+GTyclXDJ37IEzsJe1RQvqvBA56WEmOQ9V71NPzQyc29gFr3yGKm+gpd?=
 =?us-ascii?Q?tCalSM62Am/qAxozVnzokqbLq9hNaV6KmHnk67P5pDxQUB16VAg9nY8YubFh?=
 =?us-ascii?Q?x/25/+eGJpFxXOHy7mLjCIZVfp98Ddm8GffJwm+6H1xjwKxxxli6Opkovsep?=
 =?us-ascii?Q?bcDY4qwBRu9EK11SZZGva9sdBkSpM80hY8GpD2GKVV5VHWytXaxiP8E7ByrY?=
 =?us-ascii?Q?AY/wJDLzjeI8WkeHSP2BmyqKtrp/B86/FyaqkqLkUDsKvnAGIwMLykK5H0jy?=
 =?us-ascii?Q?7j/QP4qq0AcDhxE6/9nUY0fYJf9shgCN7e94no5JtG9vblrhCehBlPD6H6Zv?=
 =?us-ascii?Q?VE8wg51fP550066pNtyeak0HxIW75X4wxnP0pV2pFk0y5FQfsNjSLIb/Rtup?=
 =?us-ascii?Q?NiumI6LO3oqLmALBqC0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FeGEeiARDoT6yPR6KGP9KAbpU4MaSanigeGjORpazdjgspBedJj1nI8046Oy?=
 =?us-ascii?Q?HCZSc5fTGmZQzwVmcOh4sIgb9sL27u/BPDG/ImfvxGFzoRHuvUt9NDcSNUfc?=
 =?us-ascii?Q?hPAVhYhWsttvwLHnx/JD8Dwys7n1P1TClqXevJROWifKflcwP+/Cc3Ri911H?=
 =?us-ascii?Q?IQ9GVib80VyXVoP/tXPNBUpVy/M9hwkGXJOG5YsXcnPiO2AUFQD/dvhxTz0P?=
 =?us-ascii?Q?CAPbTG8PbXH+IhLXDpAHJfls8zY8CzG6VZao+P8rC9B9JycS0Qcaj0V9Fc6t?=
 =?us-ascii?Q?l08Wku7rPQSl8W1CcgZJzqbvZzouiDxdaVCqW9Lcr+ywlCoAyiVq5XqBWucW?=
 =?us-ascii?Q?I22uYiHHnh1bR04J1s1rGolAvNBHT2IxrG1Me+Cjr7xZEHIckcc4DvyOMYHp?=
 =?us-ascii?Q?VNhy//HOGArzZryv7jjiMBgwyexb3ofdSLPFnzk+fhPJhBfU59nfsC76YBsc?=
 =?us-ascii?Q?DZG6ZMF+oIj6YwNx5vrlt11LQgbyEKmJg0/XnRL/U4GuU3Icw11AVWBskwnW?=
 =?us-ascii?Q?hlF+qATBJmsq7Cwv5mTnGJJWkclBPCvY0sPeeByUsC259GngnpINX56rhthO?=
 =?us-ascii?Q?PtPBoX3cPpw8G4F8xFBWrFUAhp1yrxfTNGjz6UmQ37EM5IjqhyMyJGf5I3TV?=
 =?us-ascii?Q?cvvF/F4+66V2VBfx9ufS/OFedbfYu7Bk0CK6+CIfI8Zld6w6xM/ag+/SzGu1?=
 =?us-ascii?Q?DlajSfwEDm+chNL4YYKbmeaz2iL+6puxrXfdzzQmie8VBqnF8QDU+uMb7MI5?=
 =?us-ascii?Q?xw5KPnhYhz7GQmpJNJuMb/PcF12SRYVN7mqBPrzN9kX01Uw4RF5ZVwhOITUQ?=
 =?us-ascii?Q?47FZ0mcm5oTSeQ2A/oavxEni6K8aq1Gke9TgdloMJHzmcrjm4faxarLikSe9?=
 =?us-ascii?Q?tizytHJP7QdsGaoujT6Y2TzlRpoP1L+uY3RPd+uhS4vqSL57MmLycBeKIBHR?=
 =?us-ascii?Q?2TYZqXFex6h1/HNBxQdB2X2ukhHtH6IlX/37sOPaCTNfU5GMzxY+tznOwwEG?=
 =?us-ascii?Q?Pa3U8ED3Kn5n0iJc60Sq2kP3SUCgJr6B/T3CBlqSa7UwvOtxgt+cH60Wj8Cv?=
 =?us-ascii?Q?wELi16VwJWQ6Azy41u57OpKjTLS/dYDMlCzquroIR5paScyIO2cE1/VLaWvI?=
 =?us-ascii?Q?5c47ddcYoUw6BQ2W0oGtZNiopVQ3Z+/EYtf7nniAtx945aDZ2UzU+fySt1BV?=
 =?us-ascii?Q?1GdS63ZrysL5O1GTBL+phJDfcM5eYcSqGh5NRzdlKhDenhGMuGV8nYkl44Mq?=
 =?us-ascii?Q?N7lWJsb1qwDBxuc3Xut9AeShdqGBfjVJwog7gGonUgNpFUCKB+0bFi1es097?=
 =?us-ascii?Q?Wi0KxROESpzrSmKa2L9pV23OUgV9Evf87ZqZsod0lYdcDfjkhApA2fkAdqVQ?=
 =?us-ascii?Q?9x2lj/f0hSNJButLoVrMu8/eKC/pMM5bWSjaaDi6u/b28sdYlXRehO/qOiu2?=
 =?us-ascii?Q?Vrn8Kn+y0DCnQlOmPSXiPNA9pBtWcGXAQ7qm+2mjC445Q5QbSycXIESLbSWv?=
 =?us-ascii?Q?fRwFu2Lh9eug5yWUiqVhxlMeFRMFWK+83240vh2GvSkck1L0q1g+PYELG6qL?=
 =?us-ascii?Q?Pn4brnbK1U4LL12QbNFQ6Z8+xYs1nYu+qQ51pdcs9m+AbFq6VdqdwaJoIqMF?=
 =?us-ascii?Q?wj5/hUF8AuMqstgFd/s74T+8K5LwEEQZ90FJROPAUY0U6W295IzUm2B09X/6?=
 =?us-ascii?Q?YvVd1F0WlNlnQdoGpSmPVlCaXgKRw1ER37tDIQCHWfcPZaa/gorNhYvlPjjH?=
 =?us-ascii?Q?DFqvXloGJg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e98126aa-a22b-48ab-dc2e-08de637f7244
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 23:53:36.3847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QPGexBP1HmwIDH/trJM1oJgnlLoqeqI+EgeJBDIzScocTFGujKumNLn792pEEhrVuUvYKyKTPJLlMg7me584Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7036
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4384FDFDBA
X-Rspamd-Action: no action

Matt Roper <matthew.d.roper@intel.com> writes:

> On Mon, Feb 02, 2026 at 02:11:04PM -0800, Matt Roper wrote:
>> On Mon, Feb 02, 2026 at 06:43:07PM -0300, Gustavo Sousa wrote:
>> > From: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> > 
>> > Add graphics IP versions 35.10. Since there will be features enabled
>> > that are not present in graphics_xe2, already create a new
>> > graphics_xe3p, although currently it only enables the same features as
>> > graphics_xe2.
>> > 
>> > Here is a list of fields, associated Bspec references and eventual
>> > comments:
>> > 
>> >  .va_bits (Bspec 74198)
>> >  .vm_max_level (Bspec 59507)
>> >     The spec says "The PPGTT is always a 5-level structure even when the
>> >     virtual address space is less than 57 bits."
>> >  .vram_flags
>> >    - ~XE_VRAM_FLAGS_NEED64K
>> >      That limitation that does not exist for Xe3p_LPG.
>> 
>> These three aren't part of the graphics descriptor anymore, so they're
>> not relevant to this patch.
>> 
>> >  .hw_engine_mask (Bspec 60149)
>> >  .tile_gsm_size (Bspec 52961)
>> >     This is queried directly from the hardware.
>> 
>> I don't think this flag has ever existed, outside of some temporary
>> development patches that never moved forward.
>> 
>> >  .has_asid (Bspec 71132)
>> >  .has_atomic_enable_pte_bit (Bspec 59510, 74675)
>> >  .has_flat_ccs (Bspec 65255)
>> 
>> This one also isn't part of the graphics descriptor anymore.
>> 
>> >  .has_indirect_ring_state (Bspec 67296)
>> >  .has_range_tlb_inval (Bspec 71126)
>> >  .has_usm (Bspec 59651)
>> > 
>> 
>> We should probably add a reference for has_64bit_timestamp (bspec 60318)
>> since it's set in XE2_GFX_FEATURES.
>> 
>> Is there any reason not to go ahead and squash in
>> multi_queue_engine_class_mask from patch #12 here?
>> 
>> 
>> Matt
>> 
>> > Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/xe/xe_pci.c | 5 +++++
>> >  1 file changed, 5 insertions(+)
>> > 
>> > diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>> > index b5e8935fff1d..edca562462fa 100644
>> > --- a/drivers/gpu/drm/xe/xe_pci.c
>> > +++ b/drivers/gpu/drm/xe/xe_pci.c
>> > @@ -106,6 +106,10 @@ static const struct xe_graphics_desc graphics_xe2 = {
>> >  	XE2_GFX_FEATURES,
>> >  };
>> >  
>> > +static const struct xe_graphics_desc graphics_xe3p = {
>
> One more comment: we may want to name this "graphics_xe3p_lpg" to help
> distinguish it from graphics_xe3p_xpc below.

Incorporated all of the suggestions and they will be present in v2.

Thanks!

>
>
> Matt
>
>> > +	XE2_GFX_FEATURES,
>> > +};
>> > +
>> >  static const struct xe_graphics_desc graphics_xe3p_xpc = {
>> >  	XE2_GFX_FEATURES,
>> >  	.has_indirect_ring_state = 1,
>> > @@ -148,6 +152,7 @@ static const struct xe_ip graphics_ips[] = {
>> >  	{ 3003, "Xe3_LPG", &graphics_xe2 },
>> >  	{ 3004, "Xe3_LPG", &graphics_xe2 },
>> >  	{ 3005, "Xe3_LPG", &graphics_xe2 },
>> > +	{ 3510, "Xe3p_LPG", &graphics_xe3p },
>> >  	{ 3511, "Xe3p_XPC", &graphics_xe3p_xpc },
>> >  };
>> >  
>> > 
>> > -- 
>> > 2.52.0
>> > 
>> 
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
