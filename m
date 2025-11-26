Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B47C880D8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:26:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D39210E0C7;
	Wed, 26 Nov 2025 04:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Onvg1Xqx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B43610E0C7;
 Wed, 26 Nov 2025 04:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764131170; x=1795667170;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ikbv0KiJY4vLWSu7QaPzXVG5zN10BT6JewWjmivpQak=;
 b=Onvg1Xqx48IDahiFlrH3dZMxLQqtczxGw4A0kwwqTLwnY9JCH8+O36PV
 0ZSMi8NsC7HrRTohXZqmzOEspbphC04G9xJOjoihbCGv5yHfUtbkvSK7P
 wN36Y8W4gYyCUde6b0C+ajWUgsuVwEW0yjjLPCnjkqr8lvDg5x1KFkgtj
 wrOZfMmDM0Px/CNcJd0GRivhqubvbViAXO0IWIzY/Of9POarv/nlKmxgN
 e4laSJ+6PtzpRR0aRaRl2iEecAMfnuOkcZE8b+cX0ijIy+a5w6Q5MuLpM
 OdR/o++zG1VdH8jnBm938CTzWCu1+2zboS76vXDSXeDE0QTcW1bt473qI Q==;
X-CSE-ConnectionGUID: eiuyJAGZS5m/WquEvmKATA==
X-CSE-MsgGUID: f2XCEGxmTTu8D4ocCsIlWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76780625"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="76780625"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:26:09 -0800
X-CSE-ConnectionGUID: At0YAB3uTs2LEs6J+oUUIw==
X-CSE-MsgGUID: M3S2KUm6Rfa9I6weXkRAHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192472268"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:26:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:26:08 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:26:08 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:26:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YM+fm0gKB0dBWJNjeSmxlYiw3RGeGyYdzLo/V+DZaHwP66/ittkKmk6H+YBfyBquQTKNAdN7cbAPcIzzsXynBIgJcTqkdTA4A50e/fR41OGS/mt3/CT5wI7I6FJBGydgZ76zTEqEhtfIV89ISd9NQb2ZKtZcm4bD88UWWrav1L6Db5LAym7uGoNycuTjE5s7yCklrFYOW7uTCAWiG8R+ZgyiGa7aQm2/2Voj06x0WzW7ya9QSiREqpzf8KZ+JnO7j5d1t2g5MVIc1IYyH95vYfhnWoVKyvt9N9CF8bfes6j3QaleRcVgWMeyV6/X2DHLrtT2xGfU93LD/BUFolOLeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uXDxmaJbf0p6lRycSnGZqp3pjz/0ud37MS0BTw1G61I=;
 b=GcSMx0eLkzZniPVnsdYELMWE1e1aKtd+nSijI5gvuuhe/jMJiXiLo3jMHtn6iwVtw/3cIwXxZ67tC6Vm4a7SspaN896+/cxLApI7y6qs70kiiaWkGEIeVjKwjuAAFLwPU8tY4zl1meCwOW8InnRFjK2JlpgJMppKVmk7InerZpl3UOsNJbgfilG7YpuWptC8MN+YExa/4TclBrEVB8kgHxnecDWX/vDtS+FLT/N4RmN3UjnLOdCKladB/ijFK/vQPHp5tcvsfk4uUdX32YY+gSNR/HGnKtfN/FAFpm4ZwNHKvlF4gdrBO7ZAFZHBrB1jOvZPuB4Iz29qHZ+AECoZXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 04:26:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:26:01 +0000
Message-ID: <fd0fb6d8-1fa3-47ed-b980-b6aea93dc078@intel.com>
Date: Wed, 26 Nov 2025 09:55:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/18] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0240.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7463:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d2296b5-1ff7-46d2-fbab-08de2ca3e788
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFhMTjE1RHNqeGxacWFaUHA0bjE1K3RhNEFpMkFMeGRvd1lkTUJLYTFtMTd1?=
 =?utf-8?B?OTU3UkVHWW5tNk5yVTZ2ZSt0aEN2Nm9Xc3R3YUdlZjNRMUZxWDNSdjRYQ2RW?=
 =?utf-8?B?L0RvTkVmRHI5QXgxd3JNYU5ZUDhyWWdzcFlkcU9JQk5nTFUrRVRVbTIvanh5?=
 =?utf-8?B?SkI3bVkyWWxiYkxla1EzZ0tFeHhBV1MzbWo2L2xPTFVNKzNHT0lzK0xsMGZs?=
 =?utf-8?B?QTBNYjB5eDE1SGhtcGNIZm1MamtTelpWMHk4eDdiSnh4MGd6WkgxTWdmOHZ2?=
 =?utf-8?B?a2RCWWhaZEZBN1F6UnkyWUdhMEx3TWd5UisxY3JydFd6Y2NvNDAzV0ZPaTJI?=
 =?utf-8?B?WWg3NzRlNExFYzJ5VkFVRy9xaXM0NFpMWGNPYWFxdEFGZzdndkFtRk1XbUdr?=
 =?utf-8?B?RTN6V3k2ejdXYjJScjJoTXlXYms4ZU1ZTFYxckY2MXNETitUK3d0ZWluVXpN?=
 =?utf-8?B?eFE4dmFpZ2FaZHBDTnR5Y2xSc1ZLc25NQ3A5ajZGT3BHQXNtUHVZLzh2WjdU?=
 =?utf-8?B?MVdlNFN5N2dheVBqdmw4aU56dndGR0R0ZUwvZUovZnVkOWw0NWFjWEpwNE91?=
 =?utf-8?B?Q3V1RVZLQU5rQmZnYno3Wit2Y2lGTjFMTXhnTFJuTEN4aDZOckdhTlBHbFor?=
 =?utf-8?B?V0Yza29OcFFPMVJrUnliNDBCM2dySmdpWDY4SFBZY21jb3FucEhzRzFMSUVu?=
 =?utf-8?B?a2RQZkZkVlpmOGxUb3g1UXlnekkyRDZrTkdvZEVUKzZMWnd1azM2Rm9nRUdI?=
 =?utf-8?B?SFFITVR0c1hjNGlPYTVhdlExOTd2dnFxMkZLY0VwUzZLVEFValVGdGp3MDFE?=
 =?utf-8?B?cGZhN21JdXNubVhCbHdLdHAwcnY0cWQ4ZmlUUnJuWUFuS1ZtOXVRMkFUOXRr?=
 =?utf-8?B?TCt5NFN3bnZWRWd2TXU0RGU1TEJWM1YxRk9HSFBtQWF5ZERTaGJ0OUo4WlBw?=
 =?utf-8?B?ckUra01pQU1LVDEvaUVBVVU0QzJWZVNydlNZb2NiOCtaM2RWTXFyUFk2TUY3?=
 =?utf-8?B?aUFsRDVCa29RcXl5ZnZjU21zdFdnN0pHODJNU2ZuVzhYak1TM281c1Q0OHlT?=
 =?utf-8?B?RnZkTE91dVpmdklCdGNGRGNpRkZvbU92Y2ZYeGNLdzV4SWo4eXIyZFhYYmhF?=
 =?utf-8?B?ejZMRStwa3pZUlMreG9RTWRieWNPQmJEYmFMYmFhRXZLcXRXdHZnRDNqRTVs?=
 =?utf-8?B?a0lOcVNYK2ZFSUV4YUJrbW5tOU52OTZxQ1kycXVGK2Y1SnZrNDNxRmdiZWlD?=
 =?utf-8?B?cHpHOHlUb2lzSSsvejk4OFovVHV2SVV6cWtpOTJ3MXJRL0tWam54SGxHbmtP?=
 =?utf-8?B?MHVKRndRWWRPakJGYS9icW9NVzdvN3lWNkFTRDM1SlBYT1BRVzFvSnlGVkxL?=
 =?utf-8?B?UVQxa245NXBXcWZhNC8wM1lUaE9ac0k4NDQwaU5BeTNiM2hmWjBjSmdRUzUv?=
 =?utf-8?B?L0NUenBxVTEzRk5BbkZ1SzhlZkRsTThVN0NWNkNOUWU1Z2podlpnY0czZFY4?=
 =?utf-8?B?eUZ4d2RoL0lCM2luMnNTN0lWMFZPaXkrUXA0WjRrL3NMVExNZEQ2WUh2Wjc0?=
 =?utf-8?B?dlN0MnJsRTJqbXVOUGZPL0c0OW5XWVFHQ0hIT0hrc055WmlMTDA0dE9QSlFS?=
 =?utf-8?B?UXI2VUZ4U2xhazJhSWlWc0FSUFcyRXhncWlBaHJ4RHpNR3NncVhtSEZEOXIz?=
 =?utf-8?B?ci9lc1o1d2wyUitzbnppTWZ2RDFMblJUdU9DVk92RmorZnZFdFloVG5sOEZl?=
 =?utf-8?B?VXU4cGN6Q05PNGw5VkZxRXU0TzBiV25rUWtRVGVwM2JBakpBeEVlOG1YMzhu?=
 =?utf-8?B?RnlzS3FGcVUwYmZWWEpNbEdtclpQcDRnc3g1UVhXc2p4dGVOcFlFdGlReUg0?=
 =?utf-8?B?bVVYNzcyMVVlQnNOMTdXSXA4d3J5U1hxTmh0VTZNOEgwdlg1M1U2N2dURmdN?=
 =?utf-8?Q?tZocNzKhmRINC4X3bdNKoTRibmvE+l1e?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXhVV0I0SVV5Z2N3MFgzdzErcmllNkpKVU93OTBxQW9ES1U2QlR2VVltd1l6?=
 =?utf-8?B?cjNrcWFkeXJlMkdlN3c2QmpybFBUWEhBVithc0I4SXowK0pBMG9TTEpkcGtX?=
 =?utf-8?B?UDJrZUJDOVJSY0daYmRMcXoxZ2hKcG1BQ0d1eGUxQnJhU0NISzFGUG45aVdB?=
 =?utf-8?B?VUt2TUxKN0c5TmJFV3FoWHF5NzM1NlhFTzJUVVlmRm1DRzcwTTZhZ2Q5QkRk?=
 =?utf-8?B?MG80aFIrKzVWRE9GbWg4L0pFaHoveWplRFY3b1JvaG9UQ3FzemhMRVdrREJq?=
 =?utf-8?B?c3NmY1EwTyt0Y245cTdRcDNwSmMyY0F4RW1TWkdyMlFaSG9mcENuTDBJMjk4?=
 =?utf-8?B?cFo3MEduQ0NNajh5Q3pqeHJWL2poTFI3VVd5c3poZk1VdU8yaTg2MjU3d1ZH?=
 =?utf-8?B?WmtzM0pQenAvMjM5ZHJnRzc3UmlQTEZUZEZ4UXFhN2luTHdUWGVwZHVtVktp?=
 =?utf-8?B?ajgvTVU3OThJMVdrRFY0UmdSZ2tGREQ2d05OckVzL1pqUXRsbHl6UVNYV2o5?=
 =?utf-8?B?eG40cW9Xd1JuZUZIQ25oR2dSYWcrQVJjZWkrY2VxdzU1Um16aVQ0K0NDY0k1?=
 =?utf-8?B?SXY4QU5LSkpDTWg4UlM1bnZCMVBiUk9rd2lvNUhnTkF2dDZIQU5tTjVTWTBp?=
 =?utf-8?B?bWVGRUF3N2NjVUM5Q0hIRi9GUVd1QW1pcmlJSVZPMXpjUzJOdDZaRllQZWRx?=
 =?utf-8?B?bWsrNDdVQ3Bxd241SHhCYVlodDdWTTluQmtPWVBGV1lHTDVvSU8xT2ZMQTVm?=
 =?utf-8?B?UVExd3hVRElnVDNjZXdVaUd1dXh5N2VVaDV4Z0lLTjJZYUZNMnFzVTM4Z2FG?=
 =?utf-8?B?SW1oSGg2YmVzUW40TktHclM4R2t2TEpHVjhhSnZNUnZUaHg1ZUFvc1NzRmhC?=
 =?utf-8?B?VFlyQSt4aDB5aTAzRFY3S3gyUk4zL3pzV0RMM0twaCtkRDFEaGFWY0o4MEQ4?=
 =?utf-8?B?Z0NOUzM2L1FVc1hiVURnVDJ3R2ZQb2hNUWplMW81dDdOWW5BakdBMVN5ZTBp?=
 =?utf-8?B?VVVCMzdqWlkvNExXaFdvZVpVYmM3UThWSXgrZ2l5T1JsR2FzMWNFQlhKRHBy?=
 =?utf-8?B?U1cxVFQ5eEZoakliRFNaU2FUSW5Gamk0Qk45dnBVVTVQVTFPSDVzSWdaQU83?=
 =?utf-8?B?dlo4MUFZVnZhQ05la0YrZ0JZRU9TWDZlQXVEOUlMc1h2K3U0MWdKRldSSTRv?=
 =?utf-8?B?NFdlc3p1ZzJKcDNzdVdIVEhZMHVRVHJDOXJvOTd2bkZ6NWRUdkIzdUZiaGFi?=
 =?utf-8?B?SUZBTi9pcElpZDFUOHlzaEgzMitTM1ZpeUJzUGZ5VWMrK3BKOEJMVHZmR2pD?=
 =?utf-8?B?NUMwNTlWRnNYWnpURmpFa1hBK1piSHJESFI5a1NObWErWktDdHl5MW42Mi8v?=
 =?utf-8?B?YjVLQ3EyYU1STEhuc0xTd2pMOThzOXcwd0QzaGpNSEdaYVYwbjFiQ2N0cW9E?=
 =?utf-8?B?NlJkWjZJOHhjaDJ0aGRBby9JSSt3VkpNUEd1Y0tRdHVaMWV0d0dDbUI5M1JJ?=
 =?utf-8?B?Tjl6SUNSdUJ0RDhrV3pXV1MrNnRPbXFrV2hwZDg5blRqYzJsUnNKaDdWTzJu?=
 =?utf-8?B?Rkhoc24zMjJkcXN1bUZUejRBWERvSmdXQnlCTE1XaWZDMkVTVHQrbGtEU0VP?=
 =?utf-8?B?TXFjSitQaEZnSDNTTisybEFObTBKUzlPcGcvY2Y0LzZiSnZoTkZZL0lzWXNW?=
 =?utf-8?B?T0pwWllUUzJqMjVDalRqaTZOckFFSnROTUs5RWp4NFZkSmV4aHV2L0ZEYSsr?=
 =?utf-8?B?QVF4L09tQXhCNjk1UDVtcmsrdzhCRmpuRU02SE1CZUhnUHo2VGQzMTRVTHc5?=
 =?utf-8?B?bUlYK0NkdU5YYzNOWklucFhObWZYdWFFRDlVTXp4TzZTSzdRdUxvdDFicFlE?=
 =?utf-8?B?L1dvVmJKUkt4dHJTV2ZIQkV4MzBpL0NMd2FnUUR3Z1FTc0hNVk9hUFF5cGFI?=
 =?utf-8?B?Q2tDd2IzUnNzNTV2cTRrRjdhcDVXaE9sc2ZZQmhISk9zdDhraDhQdWd2VmtB?=
 =?utf-8?B?VlhWNjJVc1lDUjZCc0luVGtSM2gvUngvdzZnWDV6N1ZOTmh6SXJFVXgxL3No?=
 =?utf-8?B?ZlpiR0Z0aUlsRFN4Mjl1elZrZzVkc2k2eHBLeDVMMXNSNU9qQ0d0VkRFMDhU?=
 =?utf-8?B?VjhMUDhXQkFEOURQSERjN3pUeG5vZFUzSWJnK2JDUE1XOVRCZ1dlU01ESEN4?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d2296b5-1ff7-46d2-fbab-08de2ca3e788
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:26:01.3747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2DWXqBHTW8ZtGlJOnXOjAu7CRk5xcF0YmX8Jfa6IHRp9GKpryzYG/v5sar6aCcGcMBrFLyHvS5l2v2WMOXFUqQVYeNTlv7fnZPOD8u5KGIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> --v3:
> - Write registers at compute config.
> - Update condition for write.
>
> --v4:
> - Address issue with state checker.
>
> --v5:
> - Initialise some more dc balance register while enabling VRR.
>
> --v6:
> - FLIPLINE_CFG need to be configure at last, as it is double buffer
> arming point.
>
> --v7:
> - Initialise and reset live value of vmax and vmin as well.
>
> --v8:
> - Add separate functions while writing hw registers. (Ankit)
>
> --v9:
> - Add DC Balance counter enable bit to this patch. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 76 ++++++++++++++++++++++++
>   1 file changed, 76 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 788e93cea29d..7634d6a7ccaf 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -767,6 +767,80 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
>   }
>   
> +static void
> +intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
> +		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder),
> +		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
> +		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder),
> +		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
> +		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder),
> +		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
> +		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
> +		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
> +		       crtc_state->vrr.dc_balance.vmin - 1);
> +	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
> +		       crtc_state->vrr.dc_balance.vmax - 1);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
> +		       crtc_state->vrr.dc_balance.max_increase);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
> +		       crtc_state->vrr.dc_balance.max_decrease);
> +	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
> +		       crtc_state->vrr.dc_balance.guardband);
> +	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
> +		       crtc_state->vrr.dc_balance.slope);
> +	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
> +		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
> +		       ADAPTIVE_SYNC_COUNTER_EN);
> +}
> +
> +static void
> +intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!old_crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
> +}
> +
>   static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   				bool cmrr_enable)
>   {
> @@ -786,6 +860,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   	if (cmrr_enable)
>   		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
> +	intel_vrr_enable_dc_balancing(crtc_state);
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);


DC balancing will come into picture when VRR is enabled. This should be 
called from intel_vrr_enable().

And the disabling function from - intel_vrr_disable().

Regards,

Ankit

>   }
>   
> @@ -802,6 +877,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   				       VRR_STATUS_VRR_EN_LIVE, 1000))
>   		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
>   
> +	intel_vrr_disable_dc_balancing(old_crtc_state);
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>   }
>   
