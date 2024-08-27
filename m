Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94351960D3B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 16:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BDD10E305;
	Tue, 27 Aug 2024 14:11:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQ5W/1FQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA3910E305
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 14:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724767889; x=1756303889;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aorPyqlSKqpHyzkTMs1XsBsnbXuDPohWQdwIO1I3kDI=;
 b=CQ5W/1FQ852SqPBGesv8XlpS1M+zs+Z+rT0I5l2WEpVDiPTbeLiDUekP
 xGQbP82As25sUNpVHsEL9R040rIlQcuygLyAxURGIlb1KfmdHX+6WkiUG
 wGY+0qnwdJ/eQ2V7/rdNXi/YfkrKLvzwhY0QenoYGmfYGm8Vh+Y7Q9ni3
 Yv3Q6KT5cBw1QhlMTbqnxn5gz+XEwt0ounSJk8tbMkLQeDCvn6YxWt4Ev
 Coeo/iP3qYeF3JbilnmKm2n41c95p+qmQ+vW7zX/KJO9IQcGIXWPh29qF
 BwV3EZf3N6OL1MkXF96/CXD0FMTraBC0qdpwL54kznYOHr9vw24SKtMmV A==;
X-CSE-ConnectionGUID: DKSpLPsKTs6X4A9Y01NLUw==
X-CSE-MsgGUID: 58/gayEER4eqCXQ5U8XzTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="40720048"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40720048"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 07:11:28 -0700
X-CSE-ConnectionGUID: O00iHSOoTp6nshQ8Rsmd2A==
X-CSE-MsgGUID: 4jNrlWoUT/KX0tA21/6zJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93615022"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 07:11:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 07:11:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 07:11:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 07:11:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 07:11:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HrKngH6awibM0FQZs4GRwhMj34MZwrZJhWhIeSCjosCIZoTlkPeskkX+iD8U9MOvF+9Qr2C96LVtwbhfW4I/fIyBi+ECROw7B6S9kgfxvEU8/iheqst5JMo65sDk2oYDrI3K0l4zgs2lB4wwPLA0jR0euIjUfiJ2NzjWe1pdfZqzfmGd32WOJ7Dc8RbLsmHGU6xatTkv4NF6iNk4TPuda+U7c/mxzgwLu4QNEJyEy1Q81wf7CHw3hW2WSLbZAVL/Cpuj6T7mvIXHN6pIojVgG0U3iwQEOfkyC8hqrornPdxIxLWGqNsSvax9H/YAYIN/B39YGrkKIyQqcO8fQr5Dvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aorPyqlSKqpHyzkTMs1XsBsnbXuDPohWQdwIO1I3kDI=;
 b=JWgOqHDbB0T/xZu8VWtfmTWs6Ms42POzOrKiXIMI/wftaM6ENdbx1s4vp0uGhOXZFNxQUrH5FAh9Oa1OcKxJem7k9VySaOBnsa+6Mo/7We2D9/FxSCd6LcBHnhrE9CZqfdA//JZD0DcqwXv4Xtt46RjqCvBq7k8J6CV/lxGkCVmUTvuxPmTgT7NDifpdZghTq1xgMLY3hFaofWLzqc9lvb5s2QRsn1nNkuzXBdifBzk07NSa2tw8a26MjyOnH+CwBs+Y00mxy4Mxk45UFjhcoFrVJwyfKXbEVuIpU4oIOf1V6LxokPoOZJz/w5csHYe1GyaarUUh8Gn9YBvVTJeJww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6189.namprd11.prod.outlook.com (2603:10b6:8:ae::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Tue, 27 Aug
 2024 14:10:58 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 14:10:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 03/14] drm/i915/dsb: Hook up DSB error interrupts
Thread-Topic: [PATCH v2 03/14] drm/i915/dsb: Hook up DSB error interrupts
Thread-Index: AQHaxwfeciS89z8DZ0e+oTpcyssU57I7hz3A
Date: Tue, 27 Aug 2024 14:10:56 +0000
Message-ID: <PH7PR11MB5981853950E33BF342AC43ABF9942@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-4-ville.syrjala@linux.intel.com>
 <20240625135852.13431-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240625135852.13431-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6189:EE_
x-ms-office365-filtering-correlation-id: db3434bc-3e53-4fe4-15e0-08dcc6a211a9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RkkzRWNuYVBEWDcvdzZGTEZJYUVCM2huMmcvY2dTVFNETy9KQ0I5VERzMWhN?=
 =?utf-8?B?cmQ0U2NVdjV3eHVvV2MwOUNKb05QYnpRTjgxRWNiWWRrdlNkaVNCaWM3UWRT?=
 =?utf-8?B?ODhRZ1NZWUg5VFlwcWxFTnhWU2Z3RGtTWFhVaUdlSmoyQXJzY0N2b3BkSzJE?=
 =?utf-8?B?NWdCSEFLdUhwVEdDOGRBRHlzZStlWURRSU56WGJpVXVIMlFaOGQ5N2dmeWpi?=
 =?utf-8?B?ZTgwaUx5alBBN3R2RStCMllNcEs0ZFV3UVRsK2RQZldENHlFaXhoUkd5L3Fl?=
 =?utf-8?B?R2FPYkc0cE1maC85NG5DbFdmTTBubTV5MWhqSGo0bEVsWTdMMzM2eGpCNjky?=
 =?utf-8?B?UkNpY01LRU9Lc2FFUjRXYU9rMnZKL3kzMkRIR2hJZ2RGUmpHaktXaEpFZi9H?=
 =?utf-8?B?VWcwMEhBQ0JkeEhSTkNxenB3MDFmd1lvTlk4ZnJEWCs0SVd0WnhLVjBHLzVU?=
 =?utf-8?B?b0FCRlRJTW5RNzAyNkdBTFVOSmZzRDJNWlJONzJCdEZ6aE5sSDdQUDBaRllp?=
 =?utf-8?B?NWI0NHAxZFRLYWJ0TURXVVAxTHhGUW5BTE9Na0xQay9yMWVPckdCeGRoQjFt?=
 =?utf-8?B?dTROTUNBY3c5bHRrcnM4Snp1a2ZGK3ZKNk1iLzBZSGx1UDVpWEZad1B1ajV6?=
 =?utf-8?B?aWpFaVdZRkg2QTY3Mm9lUkVqT0pNQncrbHhUSGZzalBzNGhSem8reEVMLzVj?=
 =?utf-8?B?aXg1c1BMdlgvSGhIQlZrMzRhTHNnMWZqYU1lTkY0TS9VdDVVSVNoL1hpeFpH?=
 =?utf-8?B?T1FhaCtKQXZFano5V1ZGTUQ1STdkY3BXR1Ard0RCYm4yeVM4TGovNFVuMWRN?=
 =?utf-8?B?cndESnBXTWQwV0dIMTh5SEZYODhPSFM2cytyL05LUXZDb1NKT1JLRVdKUDVl?=
 =?utf-8?B?RHRRS2F3OHNDUVIrMGZ4RVl4UWVoaWROZEpZK3F2TTY0aldSRlh5Wmt6UVN0?=
 =?utf-8?B?bGlxRHpvT3RDQ0tVRW83ZjhUdC9TaURkM0ZKUm9hNDNqNklBQzN2eldLcFFl?=
 =?utf-8?B?T0xIOEdwSkYyNENJNWN3bHNhUjJuaXY2bTBtS2RHZGZuMmlOUlZTZEk0UktZ?=
 =?utf-8?B?VnV2MjBlaHdhQ0w3WjF0MTRxMmJldERVTWtyLzF2THZNamZUM2ZjREdadGNH?=
 =?utf-8?B?RXRQNjF6cDVnRFVDU3Axb1NzR3hCNlk5MVNGK3ZtOE44OTllS3dwd0M4OWpk?=
 =?utf-8?B?RzEwU1FOZlUxMkxsNnVKYmdUaGZCMi9OODZaczhmMHRxQmpseHRjSFE0WWZx?=
 =?utf-8?B?eUJ4S0pUUllORzF6QVpRdWRXN2g1eEZqb3h2UEpzWlU1UXc3dXdPMnVhWFEx?=
 =?utf-8?B?ak9IdG1aRmtMY28xQUpjd2k3ZS9NaVZqNjVxVE4xTHdwVmpOeUtuYmZ0Tzcr?=
 =?utf-8?B?R3g0SkNSbFVHTWxKTU5VbisyaEZ1bC9NSkhBZUVZSktCZ2MrbURYZStnNmcv?=
 =?utf-8?B?SjJZR1VoWGhzd2VOWFNadWV6Skl6QTY1UVZZTDF4elVIYlltMzZyQnFHMVo5?=
 =?utf-8?B?QU1nTFRoMjJHTHFsdnZ5WWZPUnJxY1d3YkRMcmQrcVU1ZnR0WlNQb1JPYWZT?=
 =?utf-8?B?WStLYVQ1L0p6NEgwRmgzUElmZVlTTEFVeDJGdmQ1cEFKazRnV2VnQUNxck1M?=
 =?utf-8?B?b0w1Si9RK2p2dFRHR0hYekxjUTk3d0xiaUxQa1FIRzZrOTk4ODJWajk2Y0hC?=
 =?utf-8?B?MWNYVWFBeG5VZFI1Q3lxY09mb2lrb3lyMUU3MTBrT25tby83bXREYU5KUWt6?=
 =?utf-8?B?OXR3QSs2RkZmNGIrSG1ZWjl3bkwwdEJhMzlBQ1FHVDNvbmFwU21tdWZMMlF4?=
 =?utf-8?B?ekVkOEVGZTN3UDB0Z2VxMVBTWm1NTW5nZ2RUNDVmUmU2NlBwVVFpZlF0UktW?=
 =?utf-8?B?emIzU3lBZUVUSG1nRDV1WXQwVjk2Z0NCUXFuSitYYkNjaUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V09RclhKSTY4SVE4WUR5YnVBeWV5MTJYRU5SbnRXZW9DUHhZT3FYMHA5ZXVt?=
 =?utf-8?B?UWs0YnBaeXJFTHJXL0ZjKzMvQ2RCRVdjL09HTUZQU0duTUhCWk5aOThhZEVm?=
 =?utf-8?B?YjNxRzlaY1pLYi9qYUVuZzNtdDlDbHRFY242ZER2eWgzdnA4MzRpUWJiQy9O?=
 =?utf-8?B?di9sbVJBell3bTJER1RzZEkwcHdKNDRqRm80TE5qOFNuQU5Ra3U0dDBwVWxY?=
 =?utf-8?B?NjE0OVM4Z2ZvczBhaEVxYlJuL05JUmJYZXZIeWE5bVZEbi9zY3VyNTFHYnNR?=
 =?utf-8?B?cWZsNERVVkdXVEJBN1R3L1VjS3MvUHcrcFlyKzZReFRIVnR6NkNlS09TSmFi?=
 =?utf-8?B?TUQ2SU1IUGZtRjVjTVVPSlZRazIzNE5pcnpka2JURGFtSU9OMmlPb0pLUHhK?=
 =?utf-8?B?QlU1YUhXNGJzdVJSeTg4cmZ0MzNlMEFpR1FrNnNvWmUrMHhSUEJyNDc1UVpO?=
 =?utf-8?B?Z1lIbmNEdU1UaVBTblBzb0VFUVRTc0Y3UjU2M1pabVhSMXd1QjJ6Y29tbE12?=
 =?utf-8?B?K0d4RjEwbXRyQWJBUFpLTE5leFRZY0h4elZ6bGFLLy9vY1NtbVcvVjZJU3Yv?=
 =?utf-8?B?aHl6S21Ocloxc3Zra3BDWDFrSGpkTHhzQzdvMGpTVW1ERmZIY3FMenNzdWFi?=
 =?utf-8?B?aTJHZGpjQno1T1V6YkxxTE9ESWpTNE51d1hnMm9pR1dEbHI1aDVlOTl5MDB2?=
 =?utf-8?B?MlhBN0F0WjVyY0wzdThXM3BiN2NVWWJXOUJQeVo4cXFGd1hrRW14ZHV1Z2lz?=
 =?utf-8?B?Y0hhQzRPNlFqeE15U3oxTGpwcy92UG9MTnY1cDR0YW9URFVYMVJORldRZUxu?=
 =?utf-8?B?UklWNmtGWFJ1bDNKZXVjakorQWZaL2hURWM4em9PVFhDaGRzbEpHbm9NWUlQ?=
 =?utf-8?B?V0UyVDRlVzZiZ2R5LzNEVlMyUmI0ejk2QWhINHluNndqL3FHMm1RUFhvVDQ2?=
 =?utf-8?B?YXVzRk9Qb21xMkJqOGIzS1pyY3pVckdEMzVFTWdBMlBRWjN1bld1dHFXSzR0?=
 =?utf-8?B?dGk1aU9pNzdiOTJvaGUyN1U1c2FoQU5nU1BjcFJEM3g5VWZyTDd1TTJ0Q204?=
 =?utf-8?B?aGM3amNmNDg4TkRwZjBLdGR2dFM2Z3ZuMlRKeFI3NkJqU0k2NXEwZXl1aGJE?=
 =?utf-8?B?SXp1Z29NVWg5NDBNdTB2Wk1vRDdsNkJ3V2l3L0ZXdnBUdFVwUjN6cHB0TEpm?=
 =?utf-8?B?dDRhT1NOeXVMM3g5SGF4U1pvYzNyMTdmSGh3UEUwTFZzUXdrSkhIM2liK2ZB?=
 =?utf-8?B?eUZwVTlHeXV6dlVhcS80V2k4ZEkxeXJWYytOdVp4OXptUkoySUloWG1YMWIx?=
 =?utf-8?B?ZmszVkhNVHByMGtJZzQ2WVhVT1VvZmsySWM5SE9Nc29MV0VJY1JNNzdyNFhK?=
 =?utf-8?B?T1RqaTYza21wNE5uTktaQ0ZtWGZ5WWtDS1A1SWhsWUVhWkhTanhleTRlTEdv?=
 =?utf-8?B?NTgwaytrMkc2ckZSbWJBYmNoTi93VWRLcVBLR3lkUGVwYTBuN2RYdHBORVBw?=
 =?utf-8?B?aDZHVkpkRW9KSEFuaGk5SThoUThLRUo5UlI0MjFabEttWUlGeWtlL3FwRENJ?=
 =?utf-8?B?cEVWYmxYa2FNRFhuN2hwMDMxb2dsT1h2ek9zdVN2aVViaWtiRUtDL3JXcjJu?=
 =?utf-8?B?aTV1NWdXOUlxRE9TRlBNeWplT2VHRGpnQnNXM0p2MjhtQmF2d2R0Si9GZG5C?=
 =?utf-8?B?d2JGYktWSk04M0FlS2tSN1puZVVVMUl4QVVmS2hOc2FwRGtETHZnVmx4L2lJ?=
 =?utf-8?B?MU9oaEFWMUJvcER0RWRqbVoyWFk1SzVXZytCdUE3NUVma281SWVwVUp5QjdZ?=
 =?utf-8?B?ODZLVnJQNHlEQ0UrZmJPNFIxWXpuaWdWQkZZRXUvVFNNTVpZUk5XV1RSZVV3?=
 =?utf-8?B?bm9Hd3REWFBIQXFMdU1uWFZOS2ZESkprYVNReTZ5TzQ1OEJ0Ykx4RG1DcHZ0?=
 =?utf-8?B?Wk54QkVJaFY0R2grYzBIQTg1MGM2YUs3bnVHZDM4N1dDdm1zY3BwMVlyZzR6?=
 =?utf-8?B?ZHRsODMrZWxHcW1tWFlGV3A4ZHJzRE0rYUpDaGJ0MWRweXhya3d1V1RhcmFB?=
 =?utf-8?B?WnFXdWhTS0JEUnMydlJxbXB6QlJJV1liZWh2RFFMWkw5Q3hRaWVScFEwOVJI?=
 =?utf-8?Q?2R/BZ9kg+gzM9EeDc5Tnm4cI3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db3434bc-3e53-4fe4-15e0-08dcc6a211a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 14:10:56.2459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sW7O4YgEAUFDDfYK4Yv4hwtE/d/F9nT17ZmMLKQEntXQCn+Erdq1wbpx7fmgtlYVUwCTGo4CaRwpl7X9Z+Pvaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6189
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgNzoyOSBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAwMy8xNF0gZHJtL2k5MTUv
ZHNiOiBIb29rIHVwIERTQiBlcnJvciBpbnRlcnJ1cHRzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gRW5hYmxlIGFsbCBE
U0IgZXJyb3IvZmF1bHQgaW50ZXJydXB0cyBzbyB0aGF0IHdlIGNhbiBzZWUgaWYgYW55dGhpbmcg
Z29lcw0KPiB0ZXJyaWJseSB3cm9uZy4NCj4gDQo+IHYyOiBQYXNzIGludGVsX2Rpc3BsYXkgdG8g
RElTUExBWV9WRVIoKSAoSmFuaSkNCj4gICAgIERyb3AgZXh0cmEgJy8nIGZyb20gZHJtX2Vycigp
IGZvciBjb25zaXN0ZW5jeQ0KPiANCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9pcnEuYyAgfCAxNyArKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDU2ICsrKysrKysrKysrKysrKysrKysNCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggICAgICB8ICA2ICsrDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgNCArKw0K
PiAgNCBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGluZGV4IDUy
MTliYTI5NWM3NC4uNzE2OWRiOTg0NjUxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBAIC0xNCw2ICsxNCw3IEBADQo+
ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90cmFjZS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfdHlwZXMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCINCj4gKyNpbmNsdWRl
ICJpbnRlbF9kc2IuaCINCj4gICNpbmNsdWRlICJpbnRlbF9mZGlfcmVncy5oIg0KPiAgI2luY2x1
ZGUgImludGVsX2ZpZm9fdW5kZXJydW4uaCINCj4gICNpbmNsdWRlICJpbnRlbF9nbWJ1cy5oIg0K
PiBAQCAtMTE0Myw2ICsxMTQ0LDE3IEBAIHZvaWQgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QN
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQ0KPiANCj4gIAkJ
aW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLA0KPiBHRU44X0RFX1BJUEVfSUlS
KHBpcGUpLCBpaXIpOw0KPiANCj4gKwkJaWYgKEhBU19EU0IoZGV2X3ByaXYpKSB7DQo+ICsJCQlp
ZiAoaWlyICYgR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMCkpDQo+ICsJCQkJaW50ZWxfZHNiX2ly
cV9oYW5kbGVyKCZkZXZfcHJpdi0+ZGlzcGxheSwNCj4gcGlwZSwgSU5URUxfRFNCXzApOw0KPiAr
DQo+ICsJCQlpZiAoaWlyICYgR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMSkpDQo+ICsJCQkJaW50
ZWxfZHNiX2lycV9oYW5kbGVyKCZkZXZfcHJpdi0+ZGlzcGxheSwNCj4gcGlwZSwgSU5URUxfRFNC
XzEpOw0KPiArDQo+ICsJCQlpZiAoaWlyICYgR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMikpDQo+
ICsJCQkJaW50ZWxfZHNiX2lycV9oYW5kbGVyKCZkZXZfcHJpdi0+ZGlzcGxheSwNCj4gcGlwZSwg
SU5URUxfRFNCXzIpOw0KPiArCQl9DQo+ICsNCj4gIAkJaWYgKGlpciAmIEdFTjhfUElQRV9WQkxB
TkspDQo+ICAJCQlpbnRlbF9oYW5kbGVfdmJsYW5rKGRldl9wcml2LCBwaXBlKTsNCj4gDQo+IEBA
IC0xNzE4LDYgKzE3MzAsMTEgQEAgdm9pZCBnZW44X2RlX2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QN
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCQlkZV9wb3J0X21hc2tlZCB8PSBE
U0kwX1RFIHwgRFNJMV9URTsNCj4gIAl9DQo+IA0KPiArCWlmIChIQVNfRFNCKGRldl9wcml2KSkN
Cj4gKwkJZGVfcGlwZV9tYXNrZWQgfD0gR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMCkgfA0KPiAr
CQkJR0VOMTJfRFNCX0lOVChJTlRFTF9EU0JfMSkgfA0KPiArCQkJR0VOMTJfRFNCX0lOVChJTlRF
TF9EU0JfMik7DQo+ICsNCj4gIAlkZV9waXBlX2VuYWJsZXMgPSBkZV9waXBlX21hc2tlZCB8DQo+
ICAJCUdFTjhfUElQRV9WQkxBTksgfA0KPiAgCQlnZW44X2RlX3BpcGVfdW5kZXJydW5fbWFzayhk
ZXZfcHJpdikgfCBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMN
Cj4gaW5kZXggMmFiMzc2NWY2YzA2Li4zNDUzOTg5NzI4YWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMzM5LDYgKzMzOSw0MCBAQCBzdGF0
aWMgdTMyIGRzYl9jaGlja2VuKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgCQlyZXR1cm4g
RFNCX1NLSVBfV0FJVFNfRU47DQo+ICB9DQo+IA0KPiArc3RhdGljIHUzMiBkc2JfZXJyb3JfaW50
X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgew0KPiArCXUzMiBlcnJvcnM7
DQo+ICsNCj4gKwllcnJvcnMgPSBEU0JfR1RUX0ZBVUxUX0lOVF9TVEFUVVMgfA0KPiArCQlEU0Jf
UlNQVElNRU9VVF9JTlRfU1RBVFVTIHwNCj4gKwkJRFNCX1BPTExfRVJSX0lOVF9TVEFUVVM7DQo+
ICsNCj4gKwkvKg0KPiArCSAqIEFsbCB0aGUgbm9uLWV4aXN0aW5nIHN0YXR1cyBiaXRzIG9wZXJh
dGUgYXMNCj4gKwkgKiBub3JtYWwgci93IGJpdHMsIHNvIGFueSBhdHRlbXB0IHRvIGNsZWFyIHRo
ZW0NCj4gKwkgKiB3aWxsIGp1c3QgZW5kIHVwIHNldHRpbmcgdGhlbS4gTmV2ZXIgZG8gdGhhdCBz
bw0KPiArCSAqIHdlIHdvbid0IG1pc3Rha2UgdGhlbSBmb3IgYWN0dWFsIGVycm9yIGludGVycnVw
dHMuDQo+ICsJICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiArCQll
cnJvcnMgfD0gRFNCX0FUU19GQVVMVF9JTlRfU1RBVFVTOw0KPiArDQo+ICsJcmV0dXJuIGVycm9y
czsNCj4gK30NCj4gKw0KPiArc3RhdGljIHUzMiBkc2JfZXJyb3JfaW50X2VuKHN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5KSB7DQo+ICsJdTMyIGVycm9yczsNCj4gKw0KPiArCWVycm9ycyA9
IERTQl9HVFRfRkFVTFRfSU5UX0VOIHwNCj4gKwkJRFNCX1JTUFRJTUVPVVRfSU5UX0VOIHwNCj4g
KwkJRFNCX1BPTExfRVJSX0lOVF9FTjsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5
KSA+PSAxNCkNCj4gKwkJZXJyb3JzIHw9IERTQl9BVFNfRkFVTFRfSU5UX0VOOw0KPiArDQo+ICsJ
cmV0dXJuIGVycm9yczsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21t
aXQoc3RydWN0IGludGVsX2RzYiAqZHNiLCB1MzIgY3RybCwNCj4gIAkJCSAgICAgIGludCBkZXdh
a2Vfc2NhbmxpbmUpDQo+ICB7DQo+IEBAIC0zNjMsNiArMzk3LDEwIEBAIHN0YXRpYyB2b2lkIF9p
bnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gdTMyIGN0cmwsDQo+ICAJ
aW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNCX0NISUNLRU4ocGlwZSwgZHNiLT5pZCksDQo+
ICAJCQkgIGRzYl9jaGlja2VuKGNydGMpKTsNCj4gDQo+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGlz
cGxheSwgRFNCX0lOVEVSUlVQVChwaXBlLCBkc2ItPmlkKSwNCj4gKwkJCSAgZHNiX2Vycm9yX2lu
dF9zdGF0dXMoZGlzcGxheSkgfA0KPiBEU0JfUFJPR19JTlRfU1RBVFVTIHwNCj4gKwkJCSAgZHNi
X2Vycm9yX2ludF9lbihkaXNwbGF5KSk7DQo+ICsNCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkaXNw
bGF5LCBEU0JfSEVBRChwaXBlLCBkc2ItPmlkKSwNCj4gIAkJCSAgaW50ZWxfZHNiX2J1ZmZlcl9n
Z3R0X29mZnNldCgmZHNiLT5kc2JfYnVmKSk7DQo+IA0KPiBAQCAtNDMwLDYgKzQ2OCw5IEBAIHZv
aWQgaW50ZWxfZHNiX3dhaXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiAgCWRzYi0+ZnJlZV9w
b3MgPSAwOw0KPiAgCWRzYi0+aW5zX3N0YXJ0X29mZnNldCA9IDA7DQo+ICAJaW50ZWxfZGVfd3Jp
dGVfZncoZGlzcGxheSwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCksIDApOw0KPiArDQo+ICsJaW50
ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNCX0lOVEVSUlVQVChwaXBlLCBkc2ItPmlkKSwNCj4g
KwkJCSAgZHNiX2Vycm9yX2ludF9zdGF0dXMoZGlzcGxheSkgfA0KPiBEU0JfUFJPR19JTlRfU1RB
VFVTKTsNCj4gIH0NCj4gDQo+ICAvKioNCj4gQEAgLTUxMywzICs1NTQsMTggQEAgdm9pZCBpbnRl
bF9kc2JfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+ICAJaW50ZWxfZHNiX2J1ZmZl
cl9jbGVhbnVwKCZkc2ItPmRzYl9idWYpOw0KPiAgCWtmcmVlKGRzYik7DQo+ICB9DQo+ICsNCj4g
K3ZvaWQgaW50ZWxfZHNiX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiArCQkJICAgZW51bSBwaXBlIHBpcGUsIGVudW0gaW50ZWxfZHNiX2lkIGRzYl9pZCkgew0K
PiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gaW50ZWxfY3J0Y19mb3JfcGlwZSh0b19pOTE1
KGRpc3BsYXktPmRybSksDQo+IHBpcGUpOw0KPiArCXUzMiB0bXAsIGVycm9yczsNCj4gKw0KPiAr
CXRtcCA9IGludGVsX2RlX3JlYWRfZncoZGlzcGxheSwgRFNCX0lOVEVSUlVQVChwaXBlLCBkc2Jf
aWQpKTsNCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LCBEU0JfSU5URVJSVVBUKHBpcGUs
IGRzYl9pZCksIHRtcCk7DQo+ICsNCj4gKwllcnJvcnMgPSB0bXAgJiBkc2JfZXJyb3JfaW50X3N0
YXR1cyhkaXNwbGF5KTsNCj4gKwlpZiAoZXJyb3JzKQ0KPiArCQlkcm1fZXJyKGRpc3BsYXktPmRy
bSwgIltDUlRDOiVkOiVzXSBEU0IgJWQgZXJyb3INCj4gaW50ZXJydXB0OiAweCV4XG4iLA0KPiAr
CQkJY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsIGRzYl9pZCwgZXJyb3JzKTsN
Cj4gfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gaW5k
ZXggYmI0Mjc0OWYyZWE0Li44NGZjMmY4NDM0ZDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBAQCAtMTMsOCArMTMsMTEgQEANCj4gIHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGU7DQo+ICBzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlOw0KPiArc3RydWN0IGludGVsX2Rpc3BsYXk7DQo+ICBzdHJ1Y3QgaW50ZWxf
ZHNiOw0KPiANCj4gK2VudW0gcGlwZTsNCj4gKw0KPiAgZW51bSBpbnRlbF9kc2JfaWQgew0KPiAg
CUlOVEVMX0RTQl8wLA0KPiAgCUlOVEVMX0RTQl8xLA0KPiBAQCAtNDEsNCArNDQsNyBAQCB2b2lk
IGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCQkgICAgICBib29s
IHdhaXRfZm9yX3ZibGFuayk7DQo+ICB2b2lkIGludGVsX2RzYl93YWl0KHN0cnVjdCBpbnRlbF9k
c2IgKmRzYik7DQo+IA0KPiArdm9pZCBpbnRlbF9kc2JfaXJxX2hhbmRsZXIoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkgICBlbnVtIHBpcGUgcGlwZSwgZW51bSBpbnRlbF9k
c2JfaWQgZHNiX2lkKTsNCj4gKw0KPiAgI2VuZGlmDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBpbmRleCAwZTNkNzkyMjdlM2MuLjQ5YTk3NjFjYTMxMw0KPiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+IEBAIC0yNTE1LDYgKzI1MTUsMTAgQEANCj4gICNkZWZpbmUgIEdFTjEx
X1BJUEVfUExBTkU3X0ZMSVBfRE9ORQlSRUdfQklUKDE4KSAvKiBpY2wvdGdsICovDQo+ICAjZGVm
aW5lICBHRU4xMV9QSVBFX1BMQU5FNl9GTElQX0RPTkUJUkVHX0JJVCgxNykgLyogaWNsL3RnbCAq
Lw0KPiAgI2RlZmluZSAgR0VOMTFfUElQRV9QTEFORTVfRkxJUF9ET05FCVJFR19CSVQoMTYpIC8q
IGljbCsgKi8NCj4gKyNkZWZpbmUgIEdFTjEyX0RTQl8yX0lOVAkJUkVHX0JJVCgxNSkgLyogdGds
KyAqLw0KPiArI2RlZmluZSAgR0VOMTJfRFNCXzFfSU5UCQlSRUdfQklUKDE0KSAvKiB0Z2wrICov
DQo+ICsjZGVmaW5lICBHRU4xMl9EU0JfMF9JTlQJCVJFR19CSVQoMTMpIC8qIHRnbCsgKi8NCj4g
KyNkZWZpbmUgIEdFTjEyX0RTQl9JTlQoZHNiX2lkKQkJUkVHX0JJVCgxMyArIChkc2JfaWQpKQ0K
PiAgI2RlZmluZSAgR0VOOV9QSVBFX0NVUlNPUl9GQVVMVAkJUkVHX0JJVCgxMSkgLyogc2tsKyAq
Lw0KPiAgI2RlZmluZSAgR0VOOV9QSVBFX1BMQU5FNF9GQVVMVAkJUkVHX0JJVCgxMCkgLyogc2ts
KyAqLw0KPiAgI2RlZmluZSAgR0VOOF9QSVBFX0NVUlNPUl9GQVVMVAkJUkVHX0JJVCgxMCkgLyog
YmR3ICovDQo+IC0tDQo+IDIuNDQuMg0KDQo=
