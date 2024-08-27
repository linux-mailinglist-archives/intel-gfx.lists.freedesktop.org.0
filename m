Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998369609ED
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 14:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C2D10E2FF;
	Tue, 27 Aug 2024 12:20:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aiHRV33N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD8E10E2FE;
 Tue, 27 Aug 2024 12:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724761227; x=1756297227;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRS9LbpqmHAQ4kcOAKbTtuGFxKQ6jfJ4TNr8Bs+EcmU=;
 b=aiHRV33NxR0plJWG2xzNoxL498VHl6xS3g0ATUaRv5nW7sZ9bgKBdwyC
 1RTFzLyLnMiMp6HdXunyME8gx8uI1p7bzD8yW3HljFKdvQ3J+MKJJ3hBy
 CQEKBLJVGJKHiT1a00f5hNYBu66rhRItAixZzI7jnw8y2emFVqYYF3w4I
 upiBVEQIt+px6woa2JUfDDiarxxKVPgOw8y2ONk8v9YhL4FOW0TAaM8j/
 CZNlqUOVAU/4trqVR8c+IQX0TQYNBFT3FcgU8WMim3jsQRm2eiok/JJRx
 f3YesjAAJdvCyPHAcAb3kN3psF7r/7wY/VXGqY/Hw+F9JSAPON7LosCcn A==;
X-CSE-ConnectionGUID: WtLZynrUSji/Hm+hztsVUA==
X-CSE-MsgGUID: /BoSDs+5RK2JPAaOpxBYaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33893520"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="33893520"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 05:20:26 -0700
X-CSE-ConnectionGUID: AYlUVXnORR2PJn5gODsY9w==
X-CSE-MsgGUID: z6hXC9CURC2VgYYe4bWeNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="86043507"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 05:20:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 05:20:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 05:20:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 05:20:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 05:20:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nscRcPowSMsEVNPIXOC0B1g5LrNJ2Mu3S0eJLfFzC2q5atRMr9pn0ztLGcaHngBWHSqIiISB0AkBqpSVRyT5lIk/y9WW5EdN4XrpzeKHdnvpAWcQJOytfxThei/YJGJjYQFvWwWrdUsAAd3cWeFFB1xHu4e3YGDJfJdNtuELADD4OiWKMzcm3cL4Vb5CSJwovslRzY1WEi4MYjh+5Bfabj95Xe6v/2VJHcab6y0+YoBbwP8KB2vbpZ24Z/NLpauft4SxqYmqMTfv40xeLNu7gm+VGEVy+w5JlpNlQ/bNvOccyMUVAZS4UrjESrVtwnes3T8SwIPubp3n/GezevyEPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u/+/nE9oHCR2PmNS8wZ41AFmMXr9YQ9xJqvn0VsUZ58=;
 b=G5G1U6a29X1+WEaZXwt8FA8khsfWwzX/6+7xevG/M/hfQ93LlWmxq/4RJDOpYbAaEL4J0qlSrMLLpHJ6T4EhTs6koAlrUrEg00Rbi3xGRLdwFVVtMJw7lMr2/M/dA3EFdhw8ZYFwcUhkfwSx/HzPqnWnBeT4N6QO73BbhvKJeDZC0FZ1q5Tv9uaJKETyATPNmdu864QNt7COIa62Ke3UDSeAU3RSX0RFtZTSBTWF9G7zwNu9t7LOVC6klHqCUeewTRSpnJLKwpxixwECg7sOEQPgGoosRYhpnVXK4pZgvl622AbS5y5zUGQ8WBEP436FdAdk6yYPOECMtul2DxJzUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6929.namprd11.prod.outlook.com (2603:10b6:510:204::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 12:20:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 12:20:21 +0000
Message-ID: <ad020093-77e7-4f61-908e-43b42ff5d30f@intel.com>
Date: Tue, 27 Aug 2024 17:50:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] Consolidation of DSS Control in Separate Files
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <suraj.kandpal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <87ikvn1n08.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87ikvn1n08.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6929:EE_
X-MS-Office365-Filtering-Correlation-Id: 89b1e761-1341-410d-857e-08dcc6929f21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckNPZ0xxQ2gxQTRzL3JPRitnQnhCelFwRkFMRnFwZkZ4N1BWbEM0ZDFqRStO?=
 =?utf-8?B?TzRyYlphQzV2UE82a0I5M2FQeTE1ZXc0NG5sOVM0NUZoTHhxUW9UclBvMEpO?=
 =?utf-8?B?NTBpZWJjTDdlTi9ybStoVmJUelhMc2pHZWgxQjE1QWpkZVFOTG4xbGo3SmVH?=
 =?utf-8?B?Mi83SkxMdGtuUzJTTExSaCtNOGdBUUQ1V0ViSzRSR1dlQlhRN0NFTW1Db2NM?=
 =?utf-8?B?citHMkJ6U0NrWGVscnYxQ2RocEpvVmt2VC9RWVk2WDZSOTFMRjlHd25BdmJs?=
 =?utf-8?B?MzRwL3RlYTY2cDBzQUluZ3JEUkNrVVUwbTh4TXJON21IRzh3dno3czJ1cThD?=
 =?utf-8?B?cDNkOTUwdnB4RUdUVFFEU0VPNzVkenJ5em9wcWx5WnREbDJ3OGY0ZVN2c3Z6?=
 =?utf-8?B?c3MzV0NVQkpQREpndUd1Z08rWXdpNW9mSjQwaWpabU11UTRXMlRtM1pnZStU?=
 =?utf-8?B?WjluZ3BtWkViTTVDa2JEcWZxSnkzUStlV1RkVVg1a1dVWWZyRXVvbnZtQ2tV?=
 =?utf-8?B?OTFZWHYyc3h5Qk1zM1daOVZuTXJsT2NWb3N0eVNyVmRTVGxUZktadDVmd1kz?=
 =?utf-8?B?WlcxeFhlYTl2L2tTdldyQTVqbktpK1hRZjlmU1VHQ2dJYzgxRzhKQTJCU0FB?=
 =?utf-8?B?OG52cVVqZDBKWW8wYmhscWw3amVHL2dGQU5lUWlnNTRmYVNOQ0k3UU1SMUpQ?=
 =?utf-8?B?NVQvdkJtZnl6OStqWTlyaEJBVmpsRC8ybndUMTA5b1FTaVBCUWVydnZkNXJZ?=
 =?utf-8?B?czhucEJ3TGg1RHVHL3hZajhUQzlhcmZLVjZqeGtseDhPRnVqVGx3T0gwMDJB?=
 =?utf-8?B?eWxaN0F2ZWxLVlBTZWIrdWpkcWZ3dDdzcmVKa245S0x3eXhnTDc3SWVFNHl1?=
 =?utf-8?B?K1BIK09TMG9TOS8vSGRJS2ZBMFpSZ2VGbzFiUEVjT3pkc05Edng1T25Fbk9L?=
 =?utf-8?B?TGlkRFFjSVZhR3dwVDVqRzcyN3V4bHZyaWhaWHN0QzNWTWJTbmpnU1IyQ21j?=
 =?utf-8?B?ZTNpMFA0NXV4QVhMV1B1U3VjOXoyN0JOWjRtRFpsejlVRThEYmJnRjVVL2Ur?=
 =?utf-8?B?ckZiMXlyUm0xYXlrRTZGNW5MRWdJVnhkN1dVYXZ6OGJ2ZmlvM0V4WWhnbTlu?=
 =?utf-8?B?VmZnbXc4YXZiak44NHNZbVNmMXdLdVVnZUxSM3BzL3VjNkNCMzByeEJmaTJs?=
 =?utf-8?B?QWFZM0QvYkM0bWN3NHdoTTNBZS91MktJNk5rUnpkYWVkcW4rOVR5aVpNKy9r?=
 =?utf-8?B?eFh4VS9Cb1dwdWU1cFB4c2Y0VllXSlZ3VEE0ZDhhK0swYjRNRFI1SHFFK1FY?=
 =?utf-8?B?SGZZcGE2ZHExZ3FHMC9QajhDNXI4VWZwQXA4eWVheHBKM3FUN0RLa0hSdGp3?=
 =?utf-8?B?NzNtdzVwMzEvRHNFbFJ0NUhpdHNiL1FnaGtCbFVRUTVoTkx4Z2FYMW83a2JK?=
 =?utf-8?B?bE5yU0xsQmoyR0VuQW1yT3R4SXd1QlpLU25SMVNTMUFyZlZ3ZE5CQTh4b3ZS?=
 =?utf-8?B?c0c5amwxanZqK3I5VHczeE1LSTdDeEc3Mm5KL3hnWSt1NzdsRmdZN3R2eWpY?=
 =?utf-8?B?VjJOSXNxQlg0Z014M3ZmN3RXMG1hVWtZNC8yYlF0Wm1OWWhTLzRiMERjL0Ri?=
 =?utf-8?B?Ym9ScGM3Qk5xeWNOb3ExSk9QSEkxQi9hcWNMYUJpY2R6NkF0QVh1M29GbW1s?=
 =?utf-8?B?c1R6TDVXVlB3MVJUU1IvQXZIZWVOdy9pM0hvOFRUa2NIZmU4cTFiSCtxZlNn?=
 =?utf-8?B?cFpjdHI0d3dST2E1L1FTdVVCbTdiaEtRTVVoTjVuNjNxSkRvY2dCaElVZyt4?=
 =?utf-8?B?RHdPN3FpSlpneFI2QnJidz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG94QnFXSlBKWCtLTEc3eU1Lckl0djlIQTBBL3JZVG9zbEhiR2UwR3dFSXd1?=
 =?utf-8?B?cENwamxWcHlVT0I2MkdEWUpVcGFLU3Y2SGs2WW4wZ05ZcVNvd25BaFhGc0tj?=
 =?utf-8?B?SnBEODRabEtEOVVseVc2VkMyTElFZzhzNEdOWDU3bkVWbktrWU9iU3dxZkZm?=
 =?utf-8?B?Y0FXbzZXVXZuZlhDUEhXUFNUSTZQQnVyTlR5SDVLaDdjREM0Q3BTNkZGSy94?=
 =?utf-8?B?S2syUEkycG5weVJOVkdPTWZZOFhXdGwzSWJNZGJscWNzRVo3bTVNaGxLaW92?=
 =?utf-8?B?Q1BpUThRQTI2dUx5SEp6Y3owdjg4MkJWZW1xNVl4REZpYXFQY0U3bHhET0o4?=
 =?utf-8?B?Q1lrZE1tM1dXTXc0eHBjT3Bjb04zNU50UEpxVnoyVFVSeDkvbVhBRmVvV21M?=
 =?utf-8?B?Q0VIQVI0MDRiS1UyZkFmZURiVkhKNGd4OUZYS01weC8xMElSODAzckpVSmsw?=
 =?utf-8?B?RENLdzFNdnNLdlBGazIzSXNvR1gyMmtCODExeTNuZHVBNFNzWldQWHVDbUpH?=
 =?utf-8?B?YW5LK0RNbmVOQ2NWZENJanBreCsxbHM3eERDak5OSkE3Z09hQ0pVOEx2S3JE?=
 =?utf-8?B?Zy9FYlMwWVBBUm1zbFV6U21LTVZSaytmN214a3lvNi9IT0szOEI2YnBEbEJn?=
 =?utf-8?B?QXUyM29NS2FyL3RaUitOR0FuT2RKcTZ6QUI5enphUzd3NmhDckVhS0JqWTJ3?=
 =?utf-8?B?cWlpRzNnelhQKzZNRUgySk5TbmhyMzZGcW80SXBNalp3ZkhaUEdzZVliZ2xz?=
 =?utf-8?B?RUhzTkJjdW9GdE15MXpQM1JTWkpyRENHdjJuSFROTjhWemZNZG1XSkIzTW1E?=
 =?utf-8?B?dU1QQ01EeFhQckpvNjVpNGdlcmdZWG1vQ1YvSllobVo4ZnlIdyt0Vm83Mktn?=
 =?utf-8?B?RUg2TnBCWnFZT1VuQW5TYmUyZkZTaFM1bVZ3RituVDBaKzlBeWRBQnI1em94?=
 =?utf-8?B?WGhTb2ZwRXZMUDlrTjZVM1JuZVlyMWNBUFhGaXVEYWF3MzR2cVRwS1pwQmtJ?=
 =?utf-8?B?cm1TalN1dlRBRFBrQy84ZktEY0ViLzdIdWtDT2xZa1oyU2QzZmhUQVIrbk5C?=
 =?utf-8?B?RVkwVSt2VVhxTWdhbERMcTF0UXZLWVFROWRZa2JrTHRGMGZmMFp0cnA3NU9j?=
 =?utf-8?B?b3E2V2tWSk9ZNTY2VVQ1OFJNKzA4NXlKWmI3NkRwWnZpWGsyaXh0TGwzVGRM?=
 =?utf-8?B?aXg0Z0w2R3FWc1pIc3AzWmlNOEI1QUJiWTFjQkJERFJLRnpLYWFrSUJqSXdu?=
 =?utf-8?B?UEN2NFRsYzA2TjJCMG5OdnNpdU1IMGVweVhPOWxTVmFrN0hsbEd3Z2NhMlRD?=
 =?utf-8?B?Y2l6dFVnOTRJL2RmbTZURzZwRDZlL2xDWU5uNUExTjlXLzZWb1NBYzFRWHlB?=
 =?utf-8?B?YkVTeS9kVXdPN2dkWURRaHhLKytPZ2R0eFcxTklZZEx5MGkyY2Z1WS9yQ3Zo?=
 =?utf-8?B?b3Z5TWh4TThLZ3JjdXpaVlNESEhEdGoxM0J3UUI4eVoyaDNSNGJhNnE4eFNO?=
 =?utf-8?B?SXE4WEtwenNSSnI0aVpuWlZGZjc4TWYrZ2JHL016eWs1R2JRZHRRdm9WRVlo?=
 =?utf-8?B?VkFkcnBmSUxrbDhUTkpRWitpbzVuM3N4eHZVcmp4Zy93M1dvWU8vbTVvVGJz?=
 =?utf-8?B?M2NaaFNCaG9jZlNkZ1hoQXVYRkRMc2tLQ0RWTndhbGlKRllaWm9IZk1uWEI3?=
 =?utf-8?B?cXYzVXFkZUg2Q1FXU0RBSkE2M3BJWHV3ZTVDdENGU2RNeWNSNzUwMWM4SFhT?=
 =?utf-8?B?cDVSQUtreUdScitZSW01eVpZTEtSbjlTMlcybi9WRk1sOXFsR29jNURpMXNa?=
 =?utf-8?B?d2FwTGtwY3ROdXBKTFFaeDI4SElwWm02ckgrR3RzZWZjRXdQa1RZOXdZNUpG?=
 =?utf-8?B?eHRoNUpGa3lXUEVMSDd0RnQvMDBIZGRnWDY0VlQrY1NhR3hXdUNDa3RIU3dp?=
 =?utf-8?B?VVZQU0VFMWhmRS9IQlovS04xRVExT2lQa2RRdUI1aXdqYjc0b1g0ZjZpcnlV?=
 =?utf-8?B?N3JSNGNWamhJdDE2MjYyTTJkQ0lnS2RLZEN4VUFzLzdIOURIZHkzbi9XaE1h?=
 =?utf-8?B?dzgzTVJ6bU9OR2NTMUhDNE95dHdNdk1UbStqVytsbks4RXdrV0tONUx4MVY3?=
 =?utf-8?B?dnNKdDV3ckpaRnhoNFJ5SXNqK1dIaVA5NDRMNDFZRXY3Y2pHUU9Va1JPLy9r?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b1e761-1341-410d-857e-08dcc6929f21
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 12:20:21.8036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P6a+tBII8jM+eVl+w8aIVz+kx5BuhjXEAjb0nNetrVFE/wgZ4ihpbBHQ55Mq2MXZbd01AnzX9nL2JSTrbidxXvLIh/B3RNwM+rH+VLLIiFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6929
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


On 8/26/2024 6:04 PM, Jani Nikula wrote:
> On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Currently, DSS control is configured from various files; this change aims
>> to consolidate all DSS-related functionalities, such as display stream
>> splitting, joining, MSO configuration, and joining configuration,
>> into one place.
>>
>> A new file, intel_dss_regs.h, will store register information, while the
>> helpers to configure DSS and related stuff will be moved to intel_dss.c
>> with its corresponding header file intel_dss.h.
>> Along with this, the helpers related to retrieve information about the
>> pipe joiners are also moved from intel_display.c to intel_dss.
>>
>> Additionally, wherever possible, the drm_i915_private structure is
>> replaced with the new intel_display structure as part of ongoing efforts
>> to phase out the old structure.
> A bunch of nitpicks here and there, but overall I like the
> direction. Thanks for doing this.

Thanks Jani for the review comments and suggestions.

I agree to the changes and corrections suggested and will address them 
in next revision.


>
> I see that the dsi and mso stuff are just thrown in there instead of
> really "integrated" into anything, but I think that's fine as the first
> step.

I agree. I was thinking if we should have a separate struct intel_dss 
with members for different features, which we configure in 
compute_config phase and later write dss_ctl register at one place?

Same for reading and get_config. If it makes sense, perhaps can take it 
as a separate series.

>
> I think maybe we do want to have a separate file for joiner stuff like
> you suggested offline, maybe intel_joiner.[ch]? There's a whole lot of
> joiner stuff still left in intel_display.[ch] after this.
>
> Sooo... anything to do with DSS_CTL regs would go to intel_dss.[ch],
> anything to do with compression would go to intel_vdsc.[ch], and
> anything to do with joining would go to intel_joiner.[ch]?

Yes right. The new joiner file can house all the helpers for retrieving 
primary/secondary joiner_pipes along with helpers to modify src_size, 
timings etc.


Thanks again for the comments!

Regards,

Ankit

>
> Ville?
>
>
> BR,
> Jani.
>
>
>> Ankit Nautiyal (12):
>>    drm/i915/display: Move all DSS control registers to a new file
>>    drm/i915/ddi: Move all mso related helpers to a new file
>>    drm/i915/dss: Move to struct intel_display
>>    drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
>>    drm/i915/vdsc: Rename helper to check if the pipe supports dsc
>>    drm/i915/vdsc: Move all dss stuff in dss files
>>    drm/i915/display: Move dss stuff in intel_dss files
>>    drm/i915/display: Move helper to get joined pipe mask to intel_dss
>>    drm/i915/display: Move helpers for primary joiner to intel_dss
>>    drm/i915/display: Move helper to check for secondary joiner pipe
>>    drm/i915/display: Move helper to get all secondary pipes
>>    drm/i915/display: Move intel_joiner_num_pipes to intel dss
>>
>>   drivers/gpu/drm/i915/Makefile                 |   1 +
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  55 +---
>>   .../gpu/drm/i915/display/intel_atomic_plane.c |   3 +-
>>   .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>>   drivers/gpu/drm/i915/display/intel_ddi.c      |  94 +-----
>>   drivers/gpu/drm/i915/display/intel_display.c  | 158 +++------
>>   drivers/gpu/drm/i915/display/intel_display.h  |   4 -
>>   .../drm/i915/display/intel_display_debugfs.c  |   3 +-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |   7 +-
>>   drivers/gpu/drm/i915/display/intel_drrs.c     |   5 +-
>>   drivers/gpu/drm/i915/display/intel_dss.c      | 305 ++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dss.h      |  46 +++
>>   drivers/gpu/drm/i915/display/intel_dss_regs.h |  49 +++
>>   .../drm/i915/display/intel_modeset_setup.c    |  15 +-
>>   drivers/gpu/drm/i915/display/intel_vdsc.c     |  74 +----
>>   drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
>>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  38 ---
>>   drivers/gpu/drm/xe/Makefile                   |   1 +
>>   18 files changed, 497 insertions(+), 368 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h
