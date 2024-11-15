Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111719CDA75
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 09:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547AA10E3B8;
	Fri, 15 Nov 2024 08:29:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOjX6wVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD2610E3B6;
 Fri, 15 Nov 2024 08:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731659358; x=1763195358;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uTAYZH6Dj4zFJvOg2Zg9jey50Pk/BYq9mxkEoRJ+kww=;
 b=LOjX6wVGkClwJYiRfvjhvgbdnUGmbDPimIslJSPWfCAB88YYcMNYzfBY
 75R7CE0D+2qd00xj4Z7HKXuYF4jx6TEQR83S6/qO9JVSoDk9CDhONKnc4
 kHcfxrxl6fgbDCAUFTzQkDf7+1/vBu42d5i7sZIzvViB5Jlw42fw/EKOO
 lYVj+ndIRiUNZ06j7aOmQEvvNaxg9y02gWU4RO8eEmh89CInhtRcNWCzr
 9f918xBud71hcqcghM2aV4mO1l+n0ixwNngBqPVKyKVI/DHe4Nq4ehRjr
 seonyAIqpyhCU5TTrEY0gmAAE8vrq9tDXlMJqOw+L2w4gFVzBZWbToPCc w==;
X-CSE-ConnectionGUID: r5yxv7hySWCKDYFym+Wn4A==
X-CSE-MsgGUID: jRVgHSAcRnKGj/7rDND8wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="49088773"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="49088773"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 00:28:58 -0800
X-CSE-ConnectionGUID: 7JOGRsMwSdW64ualNrwOGQ==
X-CSE-MsgGUID: otcxy9n9QDKNiibnuGALVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="88240101"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 00:28:57 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 00:28:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 00:28:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 00:28:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E8GFuc980v1XZfvw5Xj7gdh6bnIUnFQronSJG/X7xU0L/LfQv0rvdv2KNIACQZGvbi+cVSm+O931TLMgjCacjyf+kLYQ9XFoRd4pRfXyT9YecfDf7GiYdAGoBgeSl+xMTqAiC91gYddHMbzSBXYm7fhFx3dkSUVd+NqE7/oouH2d2/2Da3mIZyNrocYH06t4ZBVyUz9GkQgo5v+IAwccp0msZ4c0C4idOAVQwtwLrqoGEe4q55n5P0+Ja42Z2guiVYJ0Ad4O9qUlEzh98vFGzRJkMzFCynoR6MYFJW3Y+Vt7JsWrMtdDUEjPxqD+MaARaaBfCtUhE1dsw70nmqd3ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tA5cnY//Ysqx1SailvOH4hqk+R5BXaXqcpjmjTzvuQg=;
 b=IJWXJpJFNmJn1pQL0iNzmdm8pdcbljekc++5VG5cwJke+1UKWeDkGwRVsyIg9sKukCDcuYEgB9uijsZBJw7a9+cX1EAOWzieFkXp+Udikff19OFcJ4IpapvAhyNOAn6ceIkdqkC0kMQalHx6Z1iwBq+hNQx/GvEGNqRA84aHUXCyaa/bBGHmQNyWPzLwmdBi/UzJk+RYtsSJfMI7D5lM3u++TMtSNil2x6iuqoh98czC0/v70Rx9kEznDsJCzzU/L3n1Zgh0lxshZYsxlQu/CaDvWA/gDXkyhI6WHZvKv9D7IQTV+mzt3lGroaoXhezbhKqhmkVg7gccJDVcFSHh1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6483.namprd11.prod.outlook.com (2603:10b6:208:3be::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 08:28:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 08:28:50 +0000
Message-ID: <ba1b96fc-c653-4646-9ef9-995a0a294b2b@intel.com>
Date: Fri, 15 Nov 2024 13:58:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@linux.intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-8-ankit.k.nautiyal@intel.com>
 <ZxEGQ-uIl_KMGCr7@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZxEGQ-uIl_KMGCr7@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PEPF000001B3.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::5) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6483:EE_
X-MS-Office365-Filtering-Correlation-Id: b70746e7-3e9d-44d2-6182-08dd054f87d9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGJ3dFNtekFOUHlHMVVYclI3cXJrNjdOOGNMWWxCNGFvNmt5Rm9Ya1NEUjBW?=
 =?utf-8?B?NDNBbDd1Z1dHcWo2Z1NMM2ZUMWNlaUJ2U3lWeVA2Ty9QOU5xYVhDQXRhT0VE?=
 =?utf-8?B?NzJBMnppR09XZTdMMG5FNWsrajFpVWl0VTUwMmdvajJleVRtSS9wMnh0QXJq?=
 =?utf-8?B?VHE2RUhGRmxpalgwKzdDVkZjVHBaemgzeVFJMFppTWYzV1VtRHNOYUtjTXRu?=
 =?utf-8?B?bTVVc1VER0hTdHkwd0FSbTBtRHJMVWhrNmRuR0gwM3JWbUZGZ2RMZXRqMjB2?=
 =?utf-8?B?dXI5RHVLWVd3NGlEOWNFanR3dEJEeDdIaVFzQ2FKV2Q1bDBGb2xBSXRhTlZl?=
 =?utf-8?B?THJJSktZNWpQeEdIaFltNDRIUjZQR0JWcDRiNEZBbG9kYVJLVXV1bDB5YTl5?=
 =?utf-8?B?ZDdoWTlMUk5PaEtJNGJENkZyeDkyQXZHZE5HTGZORmZRNm5yNWg4R0tVcFdt?=
 =?utf-8?B?NlFZN3N2aEZHOHlVeit0djUxUmQvS2x4UHpGc1FrdkFxbTkzVE1WL3dJWmpo?=
 =?utf-8?B?M0dPcGh2dW9lWVU2NUVjQzRXQ0d6am1PNDVoMEpjaUgxWjgrdWV5T1I5M0o3?=
 =?utf-8?B?QkpOV1Bsd3NPcWhJUkE4Q1dFdDA1V0xSSExCaFhsTFIyTU9uUXZBY0NoeEpT?=
 =?utf-8?B?Sk00Nkh4RjlhWEN3MXdKN1ovWEFXeER3QlliSW1tTE5VRkw0UnhNRFFUZ1V6?=
 =?utf-8?B?VGRuK1A2OXR0d0FMNjJIdzZCcGk4V2hKZjRnNVhBMS9VeW9GaThnS0xtSS9r?=
 =?utf-8?B?dmoxbVBVbDc1R0s4Y01DL3RQYXB3ZHZFRVZaLzBYbVJTdnJHWXd3V2tBb0Ur?=
 =?utf-8?B?VGp3VDhJa0hpZm9GcnY5NWQ0dnlIdjFKNDFWRWZQdVBMQjBPblZheng5RmV2?=
 =?utf-8?B?M1I1Q3g2d1pKODVFZEp6NkF6VlVmK3VrYm1tSXkySFNJUTRDNnVibkhXeUJ5?=
 =?utf-8?B?a1hHSndqdWNnQjZUL0JUYlJtZE5rNmV4QnhOT0I4a2FBN1F5WndWZXNCVkpI?=
 =?utf-8?B?bDNhdFAyS08xa2FGT21yaHlkcE1XcENlWmZQYUdlNmo2TDBuZHRMZXV1elZQ?=
 =?utf-8?B?NU00cHZuMy9YL0d6RG1Da29HSENieFN3VHZSa04vODJXTTRZcmxYWk5oUXAz?=
 =?utf-8?B?NDVJd2ttQkxGdWpKMVpPcm1FVWtoTS9idkRxWFdCLzdqUGJsWXJNMzN4SERT?=
 =?utf-8?B?SjRyU3JTMGQxMG1QTGtva3FOMTlCbHhFYitTNm5FOVdWT0pHMTQzemYwMjdQ?=
 =?utf-8?B?NGw0b3FRZktvMC9RYTRTb3lCM1hKd0tGaENUY0kyQy9UamlRRmVwLys1cUNL?=
 =?utf-8?B?MFdSbVg2eHAzbkEvY1ZyQkRyUndlTVR3Um0vVjJEdFlHQ3IzTWRwWkxqSVlB?=
 =?utf-8?B?RkdSMEQ2S0xwNkRYVHdtM2Zpd01JbG40ak1SSDZlSFZNcnpYVnVKMmpKajFJ?=
 =?utf-8?B?blMxWEhHdXJlTndUVU95TGZ6SVhJSExMYlZyR1lrVm5adVJQdXNBb3BRM2po?=
 =?utf-8?B?UU5CeUFxVXlub2dZaVppWWdZZlUrUm5xanh0REh6YjZwUzZjVEluREJGMmJD?=
 =?utf-8?B?RFNpQXFSRjZ4bTJOdGlhVmw0ZG5GMDV3MkpHaEkydGhoQXRtQUN4dkJ4bE5r?=
 =?utf-8?B?UDhxQ1cxZHZpN3FBR3FVWW9jUlZJenJyUTRLL2hPeGI1Q2twSHYxelBBaUJw?=
 =?utf-8?B?WUdQMFQ5YXlRMElzS3pCc2FLZ25VRDJBNk9PbTFwZnJTNXFsRWFYOUlZRVJK?=
 =?utf-8?Q?aqBFHvg5JUI6jTFAJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW5wV2dLSXBsQXEzT2xYeXEyNmFENFV5bVhpT2t4L2pDYmpvREhKMkhTdjkv?=
 =?utf-8?B?WFVvVDRpUkZkeEcwMUh3Z0YwVFZ6N1V1eDRqK2QwS2RlSWFubENKY01uSEVO?=
 =?utf-8?B?WWpMdGgvTUhWUmdybW5nQU1iWFlRVmVFdHRya09CYlhnM1daMnVTOUFEUzIv?=
 =?utf-8?B?ZUdQU3h4Q2NiZ1gyTm40emNHcEh0NnhWSlVWY3hpMkxwa09hQVhNNjhCMlVy?=
 =?utf-8?B?TGtNUjdzR0N1dzMzd2V1NzFPM3dSOEc2c0UydDF0NDVBdFh4cFB1ZmNQWW10?=
 =?utf-8?B?bGFkV2MySXpLZnBmVVZlN2g4bHVEdlhxYzNrVkw3MFFmajZUU2h6ZjdVYnRo?=
 =?utf-8?B?N00yclo2NDFYRDlPY1ptR1FrUFYxSkp4UkhwNUlPYmZaa3VFenQ4Z3FUbUtJ?=
 =?utf-8?B?ejBvVmg1UzIvVVBJTjVzU29tVTBqTlhvQ0Y3Z2hsWXRBUjY0alJ6SFlOcUQ5?=
 =?utf-8?B?RHoxS1drb0VZeWtFVlgxNW5zMjF6a3VnaGZ5YlpveE93TW9yY0FEb29kUEFI?=
 =?utf-8?B?RXB6QWVjS1ZKODRIczJLME1XRXlHNy85Uk1CZkUxdXpmSFFsTjl2OE5uSXNq?=
 =?utf-8?B?eVV6T2hHREZWVU1yVzU2NmlEQlkvZGJ5N3FJeC9UK3VKRXlJRlVzQW9BcWJT?=
 =?utf-8?B?Z0FJN0xGWXRjQ2dYcTdDUVV6dlNIeG5ZdDZpa1NWeTBXNE1BNzNZWjc2RVNP?=
 =?utf-8?B?ZVUyWDRaWnpsK3YzNVlJODhQN2pKeVJkdGM1WmRKVG8xVEZ5VWVOY3VHSHF3?=
 =?utf-8?B?T2oyS1ZnMkw3TlVHTVZYbjZmaHpCUDJQUjF0UGJEZjNFQW9naXArZk9vc25J?=
 =?utf-8?B?SHFYbHVCVHJMQmd0NThEL2JDeTQ0VXNYZUdJNXY2dHE1RHBPL2ZWdWVKbnp4?=
 =?utf-8?B?d0d3M3QwQ0xOSHlyamRjYkRyVnNjQ2JiZnZQeE5wdDhmNjl3UnVFcm5rUi91?=
 =?utf-8?B?RWJwUHBja3BNMk5OWmk4RjVLWjlZbW9FRkFFNGZLYWxxZU5GVmRHRTM5Y0tX?=
 =?utf-8?B?b1JsbjR6aW04UVlGQUd4VG1YYU45VmN4WGdGcnRud3ROOEpCdnVYUXFKWmd4?=
 =?utf-8?B?bG9FVUtIaDBRSlNNU2F1R2VzSkRJMTlaOEx5NnNza2ZLQ0paQVd4elZFSE1j?=
 =?utf-8?B?amM3NDZodUFZZ0VEZ1ZxWkdMZ3VXSk45R0NrYUVzalMxVkgxY3BkV2RjWTR4?=
 =?utf-8?B?NGVOSW96KzFBVVhPcS9FTHRLWGREZHpIc0RMUmt3RWFzL0E4c0dWMDhYVDg3?=
 =?utf-8?B?SjJ2WkRORHZSYXRzSCs1bHZDaUZmbTMyem9UV1JrQjI5c0lEK1pWOHhlV1hT?=
 =?utf-8?B?dDJzc2JBdEczdmtDQ09hWHRsWFVYMit3K2U4cUVqbGptL3BUc3JtMWNDQlpB?=
 =?utf-8?B?SFRaYUdhWmliWExkazl3OUlIeDFJeFEvRktOeG01d3BvNWhKUDl2V0paQWdr?=
 =?utf-8?B?VDNvSWhsaDdFL0s5YWsvWGZaTGk0VHFyYjBJNGp6Z1pPdDlqdm5VdkNkblNh?=
 =?utf-8?B?cHRnOW1BZWJwR3ExR0VsKzNvQThXYkJTM0VRTXZLSTN2TGE0cjBUazdQSHVF?=
 =?utf-8?B?U3laZzJDeWNuNmdMckUrY2FzL2U4ajIxaWxYSjJ1WEVIdUxkWm1yd3AvOERk?=
 =?utf-8?B?Ui9YNmtwYklKVWgwZjdOOFlaSXVZS0F2MncyUjRRd0g3SXJyaVdKRkNIajds?=
 =?utf-8?B?M0hEUXIvNzRxWW5LM216SDc3UFlPaW5DWkw4SWJjQVJtZkdqejVFZDh6TXNC?=
 =?utf-8?B?OWU4TnZGSTVsVmNuNVpKdjRUZExXUC94RzNyTW8yRnpPbEROVGZ0dFRISWtH?=
 =?utf-8?B?NVZTbGhBaUl6UnNnbElBanc2MlVjMlJtMHlpYlVweGtqNE9WNkR4ZE5UV0F3?=
 =?utf-8?B?RVJ4T3MzcnJOR25QcEsrbFNUdzU2aEtuNDNnQmR0ZmttbzlkVW1ZTFlYck80?=
 =?utf-8?B?dWtLb3FPSUhtQ3FWK1kvdjZOYkJWNjl6a211dXpqa3ZXZk5ZVXRNNmlLbDQw?=
 =?utf-8?B?ejQrWkJlVTNYOU1ub1crUDVtRWF4WjZNRG9zTHJJNnJvblB0L2dRTm90czFY?=
 =?utf-8?B?eTVhYlhnWW9xTXh2ZVhDWTJvT1JOa2R0cmFKSnUxODRsbFc1V0JxN01peTJp?=
 =?utf-8?B?VXg5aTlLS3pPTFZObkN6UjJQOVc0blV4WVZ5N3YzWlFSS25CL2lwN3hGdVhN?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b70746e7-3e9d-44d2-6182-08dd054f87d9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 08:28:49.9740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yzYAqEaavyJwtucDJuVOtqYkZH1IK7T7pcA7Q2k2RBu+FLHwEIdH/iWlf1IvdlhRi8tZt3klDDNHeGSWj8HyWF4pWJIBAyJMf6kuASjH4Fs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6483
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


On 10/17/2024 6:12 PM, Imre Deak wrote:
> On Thu, Oct 03, 2024 at 04:13:43PM +0530, Ankit Nautiyal wrote:
>> The helper intel_dp_compute_config_link_bpp_limits is the correct place
>> to set the DSC link limits. Move the code to this function and remove
>> the #TODO item.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 64 +++++++++++++------------
>>   drivers/gpu/drm/i915/display/intel_dp.h |  4 +-
>>   2 files changed, 35 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 02009ae03840..bfc31b3af864 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1958,7 +1958,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>>   
>>   static
>>   u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
>> -					    struct intel_crtc_state *pipe_config,
>> +					    const struct intel_crtc_state *pipe_config,
>>   					    int bpc)
>>   {
>>   	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
>> @@ -1983,7 +1983,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
>>   	return 0;
>>   }
>>   
>> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
>> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config)
>>   {
>>   	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
>>   	switch (pipe_config->output_format) {
>> @@ -2001,7 +2001,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
>>   }
>>   
>>   int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
>> -					 struct intel_crtc_state *pipe_config,
>> +					 const struct intel_crtc_state *pipe_config,
>>   					 int bpc)
>>   {
>>   	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
>> @@ -2130,21 +2130,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>>   {
>>   	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>> +	int dsc_min_bpp;
>> +	int dsc_max_bpp;
>>   	int dsc_joiner_max_bpp;
>>   	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>>   
>> -	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
>> -	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
>> -	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
>> -	dsc_min_bpp = max(dsc_min_bpp, fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
>> +	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
>>   
>> -	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
>> -	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
>> -								pipe_config,
>> -								pipe_bpp / 3);
>> -	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>> +	dsc_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
>> +							   pipe_config,
>> +							   pipe_bpp / 3);
>>   
>>   	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
>>   								adjusted_mode->hdisplay,
>> @@ -2255,8 +2250,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   	struct intel_connector *connector =
>>   		to_intel_connector(conn_state->connector);
>>   	int pipe_bpp, forced_bpp;
>> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>> +	int dsc_min_bpp;
>> +	int dsc_max_bpp;
>>   
>>   	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>>   
>> @@ -2276,16 +2271,12 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   	pipe_config->port_clock = limits->max_rate;
>>   	pipe_config->lane_count = limits->max_lane_count;
>>   
>> -	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
>> -	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
>> -	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
>> -	dsc_min_bpp = max(dsc_min_bpp, fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
>> +	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
>> +
>> +	dsc_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
>> +							   pipe_config,
>> +							   pipe_bpp / 3);
>>   
>> -	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
>> -	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
>> -								pipe_config,
>> -								pipe_bpp / 3);
>> -	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>>   	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
>>   
>>   	/* Compressed BPP should be less than the Input DSC bpp */
>> @@ -2428,6 +2419,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>>   		&crtc_state->hw.adjusted_mode;
>>   	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> +	struct intel_connector *connector = intel_dp->attached_connector;
> This would use the wrong (root) connector for MST.

Right, will need to pass the correct connector from MST.

Thanks again for spotting the issue.

Will change this in next version.


Regards,

Ankit


>
>>   	int max_link_bpp_x16;
>>   
>>   	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
>> @@ -2441,12 +2433,22 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>>   
>>   		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
>>   	} else {
>> -		/*
>> -		 * TODO: set the DSC link limits already here, atm these are
>> -		 * initialized only later in intel_edp_dsc_compute_pipe_bpp() /
>> -		 * intel_dp_dsc_compute_pipe_bpp()
>> -		 */
>> -		limits->link.min_bpp_x16 = 0;
>> +		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>> +		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>> +
>> +		dsc_src_min_bpp = dsc_src_min_compressed_bpp();
>> +		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
>> +		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
>> +		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
>> +
>> +		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
>> +		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
>> +									crtc_state,
>> +									limits->pipe.max_bpp / 3);
>> +		dsc_max_bpp = dsc_sink_max_bpp ?
>> +			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>> +
>> +		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
>>   	}
>>   
>>   	limits->link.max_bpp_x16 = max_link_bpp_x16;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 8bd0bb4ec0e1..d4ca00ba49b4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -145,9 +145,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>>   					enum intel_output_format output_format,
>>   					u32 pipe_bpp,
>>   					u32 timeslots);
>> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
>> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config);
>>   int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
>> -					 struct intel_crtc_state *pipe_config,
>> +					 const struct intel_crtc_state *pipe_config,
>>   					 int bpc);
>>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>>   				int mode_clock, int mode_hdisplay,
>> -- 
>> 2.45.2
>>
