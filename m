Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6BAF591A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 15:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C47610E731;
	Wed,  2 Jul 2025 13:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIptLuws";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A8D10E71A;
 Wed,  2 Jul 2025 13:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751463053; x=1782999053;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7aPz5/lnJGkR0x5NdG8+qwfZ/VthtsHReZQP5Tf3Xlk=;
 b=IIptLuwsveXolb2Ps3JmEZyAfkxD+z5sjqe2/2kPqcn/+6/ofxnnzHWO
 k8h7u+/4w+9I0SRwVEER1SxV6CULFY0rpx0abkpO/IsACL4XY+hLiH4ar
 pFx3reYQxOV29BFT4VDXxJ2+zFwaaPn+TeWQapkFNcf3GoAqOPs8mVe8R
 2yWs4o8hiqlTE8gb5ffDxpU8gYjJNBrNkrFURfgW31MfxA4cPHyZ6saie
 Ls+1XgdnEnDW0SF0DErmolEhHwfBl0H8oIN9QycJ9BNT9B97DwK4qodPF
 lmUMo3I0LJn/dP38MURdTUWMgH75wstmFxmiv8awy7pVsrJF8YmuRSrDP Q==;
X-CSE-ConnectionGUID: JUGC3GYwTReX2zZtlW44Sg==
X-CSE-MsgGUID: ceVqT2dIQXGsS5a7TqtGgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="56378603"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="56378603"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 06:30:50 -0700
X-CSE-ConnectionGUID: B+70T7GGRiu28fiofgcQow==
X-CSE-MsgGUID: wRn0rIytSxWQfwDOk38M4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="153487303"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 06:30:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 06:30:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 06:30:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.81) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 06:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fcHA1sc4+2fHfT9dq3dkW7ANtvH1TQi/IMbiorZhCArHHgxnGuQdDWwsWXqyK8xlzazSg032LfrZIeSoK1bspgBnJVgrkPBvzCbwda5YPbuXWVjfb8sB1ebv9io9SYeI4b+u8kWE2DLO5JA2HhIjc3xKdmonAz/N1456zGBS51WgDPV2El/nsFOCivb++bOhm6XxQyBD3DW/kAvaBjDhlkzTdwOTqqfOJai2FeHqhBJW5GGJNoLix6TFIydxBROuPduug4QUlJmOeHuZTawpaXP/9R1/zd9U/Dr/m8jC6P03pi1yaHm+4Z1ojs0motq5a+SfVuDVw84ewiXvKSEbMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GwXLOZASgdwwCSXAJHxV+4BnZNQX+hgoPv4PVJ7cAFg=;
 b=yR4BOWRq5GhlhGLRcqE/3Dbe2+0Zk5oL4Hhwet+xx7XVn9CR+Hjet9Nb9dgLHA8ZwuGUf66Ea8syOTXrvMOEGzRFGGc/HRNP7Qhf+olA+1Va/p+F16Qg5+RzT73j/QfDFEJbPe6lQwCrTGBkLL0vAwTvG25U/dISF9JvtLvYY84OXb+n8fqMPyVYnnBkzTIC4Y7Zhlqqfm71h1qULEytv4mI47PnioBYuRDDrIukhcayJXgy5Qia5vA7uUQSIz8x/jRl9r4heAZwgdpgeb8p5D47+pw4ESAQKNFYbuBrKk3STdSYCeOJaOIEHTpuuMklzl10BZfnLf2DAmlx08xmJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB6447.namprd11.prod.outlook.com (2603:10b6:8:c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Wed, 2 Jul
 2025 13:30:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Wed, 2 Jul 2025
 13:30:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 2 Jul 2025 10:30:28 -0300
Message-ID: <175146302838.3748.9114348489206219151@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR2101CA0012.namprd21.prod.outlook.com
 (2603:10b6:302:1::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB6447:EE_
X-MS-Office365-Filtering-Correlation-Id: c82b29b7-084c-4e67-39ca-08ddb96c9ee8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LzdnRTZlQ2tzQ1Roc1RUVWtPZ2pNeGV0MlpSZmMzWkJucGw3clY4T3lWSFdN?=
 =?utf-8?B?NFk1WHZUVUYvZCsxekZJSnUrM0pwVHFNeU9Kc3U1WnJPcnVuZWdubW5tcmRz?=
 =?utf-8?B?alFkSy9WQ3pqSWlZbkxBZk9HYXRRSm9lWmtnOEFFMjIzUFg5b1cwUmpXd2lJ?=
 =?utf-8?B?bmdhbVh1YTdHNmR3am8zRVdKNElYRVFtQkxZQjhQNVhwczU2Z1EzdWo2TGs0?=
 =?utf-8?B?dDlDRmNLRkhSNHlsOUdPQWlGbTBXRnpYbEN4RngyTjdvdzdUQ0JkeENVSDlI?=
 =?utf-8?B?V01ac0RrdTk1U0xFQXRmVXZyWndQOXMrcXVqRVU1UituTUNTanJpbG5hUnpD?=
 =?utf-8?B?MU5FY1V5OHV2KzZnNGF3YmM4Yy9pRERoQmNxQXpFeTRxd1NUNmlJVDR1Q1px?=
 =?utf-8?B?WFpRaVowQ1Y5cXFqRFQyRUdtOXNvMHM5NmhLY29tZWVkcStlSFAvZC9qRnpZ?=
 =?utf-8?B?OGdZK1lRMUw1eXU2QjhhRWg2ck9tR2FvNGtvcS84aXA0WUU0bjFxbXRxenRT?=
 =?utf-8?B?ZU0wY1ZacWROQUZGNXorZkRjdHh1WTk0OU5GUDkyUnFIcUpuaUNteFBXUnRD?=
 =?utf-8?B?N1JRUW92NUlGdzVNMmZKNHpKU2lOR05HNk9lMG5yZ0thWUNSUnVFWmlpVEV0?=
 =?utf-8?B?WWtaQ2dpa20zSngxd29iMHdPcjZra1pNOTVvczN5bm5mSDU5UWhFLzdWbXRw?=
 =?utf-8?B?TEw5RDFMeENYN043TzRSc2VqQmFjME1Xc2lWMEtaQS9JaXFGM1V1c3NWZTQ0?=
 =?utf-8?B?K1JWTm5Qb1NPYjBLZFJOeFlFUm15c01FdmlZRHZhOXBENE1qb01wQUFwcE5p?=
 =?utf-8?B?azFaMVkvTnV1dmNyR1JvNldLME9JSGdpTGtEb0J1TDdxczQ5cGQweVZuN2RN?=
 =?utf-8?B?aGY1MEhQNHZIVk9mNjVPL1B6Y0VuWjZpNEU0VTQ0TlV4K0dmNzVWd2p4d0Rh?=
 =?utf-8?B?c0xTUkMrdW9OV2hEMkQ3alB4cHdOUkFvaW5EbG9CWjFMTWlaamNiWlFzKzdU?=
 =?utf-8?B?d0RrbHRwNmhOeUE3c0V2T0lWRzBGeFpDNGt3SDcxanN3dW9yRHBPNkxiUnJ2?=
 =?utf-8?B?OUF2VFc0dDNIYmpwalpad3g2bkMyVCsvQkZNVU9xcThSVkxhV3I0M1YwU1hU?=
 =?utf-8?B?TkVtV1g0WHE5M0ZQV2tDbUdsQVBlY0RsdkF2elArUWpZWGx3bEFLN053eVA3?=
 =?utf-8?B?b1hXL0R6ZTV3M2psVlNvSmdOQzFRdG5JZDJEeENJN24xb1NQZVNkV2U5dHFn?=
 =?utf-8?B?UmNhWFFXZ3lIMTdsVlF2VkQyaUFYMlFWeGxrdDUyR24xaE13M0pKL0FmKzlC?=
 =?utf-8?B?Nk1Ibk9sZ2NYK3VrOUVEd05TL1lxU1lFTGFaejJjd3NYNlFOZEFvVDd0aHBV?=
 =?utf-8?B?cEpDTzNsTG9GaXc1M21WcU9rSW0zVzRtaEwrUUlOSS9PWThya1dDeFdhVGFs?=
 =?utf-8?B?TnRCQXJKVS9zUUhtK3Z5bGJYamRkL2lHbUhWRmlrUlZZNE5WdnU2czhONFVF?=
 =?utf-8?B?V011WDNUWkNncjh3cEZOZFJxSVRscDBQY3B3U29HcytMemZRRGlhZ1hhdkls?=
 =?utf-8?B?NXdZTmtxY1NyU3BtRWRMSUZ2TkZyLzFDbnBvQ3kxK01wNVozV1FYUEFCQ3FT?=
 =?utf-8?B?bllmMkhrMDRJT2QzMEJQTXIwRmxYekN1Z1Y1NEF3RmtKNFJ6U3g2enBzYWNv?=
 =?utf-8?B?YXNrdGlSY081OXk2MGhSblYzcHJkZUpmSnhEN0NQVVBlMktweFRENldjTkN1?=
 =?utf-8?B?c3I4b0tzNmo4ejNSaVdUcWZGSzcwMStaUm1QcDJHTjlJSUdtbDRZOVZBRmtS?=
 =?utf-8?B?bERqWlQ1Z2FzR1FMUVpyVExrbzZNVDhXQjMza01ER2UrUmZHaTV1TVMvZTB5?=
 =?utf-8?B?YkUwRG55RnVYMGZWR2Z3Wjdxb2NJeTVTcE03ZXpOQnhEQ3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cE5EcS9heUxsZHlFeXN1NXdvdWNZWG9xd2ZXN1hoV3FpeWVkNHRSNytnOTlZ?=
 =?utf-8?B?YjRMdWlVTUxnMlc5U1dkaHJaM0Z2Rk5QcThPUUlFTTNYZXNFV0Z5QUkyRnhM?=
 =?utf-8?B?ZFZSbklDUS81M0RmbGNmMzArWVFVSm1PYUhBa2wybDh2U2I3SGswYmdmUVFC?=
 =?utf-8?B?MXZodTQ5TTZKT3FBOUVZOFMwOFFLTTFxZ1o3SDNjZVhxWm5wUGQyTXVFWFF3?=
 =?utf-8?B?TmcvTi9iTWtkOWpaNXRzeTdKZkprOWxXcTJ1T1FmVEdvUEtOcFBNV2hZUkZj?=
 =?utf-8?B?QkR1ZHZTV3BQSGJSTFNYTFUvOFZLU0dyVnY3ajJGMUVlK0prNytpc3BxOFlD?=
 =?utf-8?B?M09oR0FqQ1V0V3hESU9qWkRtNUk2S29YYWtweFQzNlZMTUpLV2tQVGVTdW1U?=
 =?utf-8?B?cCtPWThkZUU1dm9VZTF4RUhXSC9jblNsOUFOeGZqNHhjUlBwbVVpV1NQblpT?=
 =?utf-8?B?bU1WejFDaTlCQ21lMHlRa0pTTjRreHE4Q1pWSFg0U1N0TXljTkpjVlFJdFVS?=
 =?utf-8?B?QXFkK1VvclQ1K3NHMk5IK2RYd0ZpQmlqaGFMWGlZZlc4STk3bThOREdoUXJh?=
 =?utf-8?B?SDRmOTBoVzAvdXd5Q1UxZzl6eGNXOU9YWlVEM1VJMlI1U2pCUVZJK3lUbEQ5?=
 =?utf-8?B?bGxWY0F6dnJnMGh0Wml6eDQ5T3VOV0NzWUNZbERMRUlSelVncm81aXBCbUpO?=
 =?utf-8?B?TE1icjB6WDVLQ0dLSmJwVXQzSmpYTWxqcGNZaVFGZTVjcCtQZnUzZHZPL1hJ?=
 =?utf-8?B?cVgwSnAwOEFZYVBGZVBlazFoZ2pkdDc5c0ljRHJwazBHcU95SkpOL1BROXpy?=
 =?utf-8?B?Ums5aTA2akg2VXBYaDJtWi9zTVcvS3N0emxkSEtMc2k4RGxXeVJlUEc2ZklR?=
 =?utf-8?B?OGZRZXREU0JvUk4xU2VJTWR2dGgvbUw0N3luY2cvMHpCMW1kTGV6NW5UMFJO?=
 =?utf-8?B?WDlLaWlITEgyYWVWT2lCVlFxNlpnNzVBdEk4UWU5bWUrYlhZeHU3TUVQS1JM?=
 =?utf-8?B?MzBJa3dmRDNWQ2V2Rk5NejJpWDQ3M0dlUlNRMzRDLzlYcFF6T3FMVEJKR0Y4?=
 =?utf-8?B?VmR0SG91QkY1cjFMUnlPQ2JUa3VZa3NKR2gweUc3REJaZm5DRHdUei9NdjBp?=
 =?utf-8?B?YjVTRFNKQnJnMStLSmlzeWk5NCthK0cyTWtuQUliY0pyaElsT1lZSW1NbmFE?=
 =?utf-8?B?ZEZnd3JTWlBnRXhybHV6VTJ1ZEZwTDlvT3JYZU4rWlNMSFREeDFYQmRUQ1Nr?=
 =?utf-8?B?QVVhRTZFT1Zlb1FHN0RRS3BqZGFuanpTakpJZzN5S1NMWDE0Z3dzajR1NmZU?=
 =?utf-8?B?YlpHVG5oTHhNeWtwUHQ2WW4xK3p3Z2cyckdmQ093T2tZVjdNbEhwZlRSSWpZ?=
 =?utf-8?B?NVhCa2h1NjM2eFNYNnIzMEE3dFNCT0gvZFNHVXVLMnBONHFHM2RZSjIxWitr?=
 =?utf-8?B?dVdTamVyb0EyQk9aUWNmWlNGTkx4T1hYSXFzQ25wblFmTTdENU1JVXhIT3hP?=
 =?utf-8?B?bHdDYnVIS1FuWVlSVEFGTktROHo3WHlzSXFUT1JZNk5KNEprZlNhbk5JeTFk?=
 =?utf-8?B?ajZZVUcxV0RXMUxxd0lMUzF5NUphRmpzYkxZSTdaSEhJdXMyWkhFVzBaNUVR?=
 =?utf-8?B?c2IvNXQwaCtoR0dxV1Q1ZWNkcmwrelVsL1crVE96UTFUZmpkbThTUGROeG84?=
 =?utf-8?B?cEQ1a0szR2ZMaktKdlVGNFM5RmhkclgxRnZ1MWxUMlRjaDJkRkxGNk53RXVD?=
 =?utf-8?B?a2xIbVFLQlFJWW5BRE1mNVlMU0NzT0FaQ3JoRXd0aVJrWUpKbjhCUlhxaTQw?=
 =?utf-8?B?RnVhYkRsV0YrZWo0NlI5cHErLzBodloxaDVIV2dXWjQzbzloNllzMkpIdmRT?=
 =?utf-8?B?WDdvL3ZPVjgvUnhOZi9YTFoxRjhOQWRzWnF4MjMzR1hJRTJZRUFVL2NhTGZv?=
 =?utf-8?B?Z0licUs4eXZRZ3pWUkRJeS8rd0kwelJxank3d1hBUHBuMlBTZUhOMit3RWFu?=
 =?utf-8?B?VE1ZOGhjSm1nMEdhYS9zblZma3NOSFdQZ2J1akE4cVloRW9KLzRLZXJCbUdH?=
 =?utf-8?B?bXNxTjFYbDg2blpEWGhpSEtHdE1QVkwrcVNZc1JVVHdtQTdDMlJiNTZYbWNC?=
 =?utf-8?B?ZWlUL2VHdldkc1Rld2dZMVk1dHBhUjlIU0dsS1NKNVhTNzRLZ3VSNm9qZXVQ?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c82b29b7-084c-4e67-39ca-08ddb96c9ee8
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2025 13:30:33.2996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e4Rrtps0poSUjU7j6JzkaGTHrie2UOdyqTbK/0aLbOXpnMQft15xxebmQK1SNqYHdj9i46tioR/ECgfohuLs/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6447
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

Quoting Ankit Nautiyal (2025-07-02 05:46:18-03:00)
>Introduce a generic helper to check display workarounds using an enum.
>
>Convert Wa_16023588340 to use the new interface, simplifying WA checks
>and making future additions easier.
>
>v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>macro. (Jani)
>
>Suggested-by: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
> drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
> drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
> 3 files changed, 25 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index f57280e9d041..f5e8d58d9a68 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -3,6 +3,8 @@
>  * Copyright =C2=A9 2023 Intel Corporation
>  */
>=20
>+#include "drm/drm_print.h"
>+
> #include "i915_reg.h"
> #include "intel_de.h"
> #include "intel_display_core.h"
>@@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *displ=
ay)
>         else if (DISPLAY_VER(display) =3D=3D 11)
>                 gen11_display_wa_apply(display);
> }
>+
>+bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa)
>+{
>+        switch (wa) {
>+        case INTEL_DISPLAY_WA_16023588340:
>+                return intel_display_needs_wa_16023588340(display);
>+        default:
>+                drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);

Hm... I wonder how useful the message would be if we just show the enum
value. For example, if the next workaround that we added was
INTEL_DISPLAY_WA_99999999999 and we had it missing here, I think we
would get the following warning message:

    "Missing Wa number: 1"

Perhaps the enum identifier could be found in the callstack that is
presented with the warning, but I'm wondering if we could do better
here.

Not sure there is a good solution without requiring extra memory to map
each enum member to its corresponding the workaround number.

--
Gustavo Sousa

>+                break;
>+        }
>+
>+        return false;
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu=
/drm/i915/display/intel_display_wa.h
>index babd9d16603d..146ee70d66f7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(s=
truct intel_display *disp
> bool intel_display_needs_wa_16023588340(struct intel_display *display);
> #endif
>=20
>+enum intel_display_wa {
>+        INTEL_DISPLAY_WA_16023588340,
>+};
>+
>+bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa);
>+
>+#define intel_display_wa(__display, __wa) \
>+        __intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
>+
> #endif
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index 6e26cb4c5724..e2e03af520b2 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic=
_state *state,
>                 return 0;
>         }
>=20
>-        if (intel_display_needs_wa_16023588340(display)) {
>+        if (intel_display_wa(display, 16023588340)) {
>                 plane_state->no_fbc_reason =3D "Wa_16023588340";
>                 return 0;
>         }
>--=20
>2.45.2
>
