Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SByBGoZ8HWoSbQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:35:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C511F61F533
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0204D10E7AA;
	Mon,  1 Jun 2026 12:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6uHi9cR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3255A10E11B;
 Mon,  1 Jun 2026 12:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780317314; x=1811853314;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ESIK5N+lZcnCt/ybLrm4JSA1G4YwcRFypgbiNEZm1Ck=;
 b=H6uHi9cRFY48h1kDdO9bfQOM4qv1BQCfn/zneHgZ7pjhfNODY4XOoI2V
 xz1V7r1AWcsdmovR38+ODhpUaY/XfVOucx2e76PUcQncj5ASp7Ux+9ctK
 uGIt/Hd8pXNkrLeho8DLJjOLZn/nz1xZ1AYOWSUCjf6t2tJT/AXr5aotq
 ww+BjDPm9xqqx3DCVpXUiGiTvHDUAwssHbLmDKJwjNpknvVcdg1ekkndh
 BVLNYkI1B1hCidx+6ST+onxxDZgY6olsmEPaM198XfbiO7wTo/tT2VLlL
 01qSrDcZTEaOhptTPOF0c2flNQapIbKCAPvY2S5RyfdmS3HmwDGLsqbw1 w==;
X-CSE-ConnectionGUID: zIiwZqOaTUyr+0fSoxsCQA==
X-CSE-MsgGUID: OxAUeyzAQlq+Sp/B9szONw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="91383248"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="91383248"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:35:14 -0700
X-CSE-ConnectionGUID: kIaUPYJtTv+dNeZE9QFX1g==
X-CSE-MsgGUID: f5qZ8dPQQYihZKayDbAA0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="242751511"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:35:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:35:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 05:35:13 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:35:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZEXVLE7PUTWeyaer/cjoFpmngJrHZazWuQ0gIupsB5ZDSqk+sd0Xz9TUSUKP5j5h/V/sDhzY6ZzkFCsvrGT3mLv6yPGn/fTswyLs69NG9ABJ3gA3QbroqaEJ4d5Co9K8EyDff1JezHnLzGHW8IttXJUFDrwh/w6Cz1c6SHHA2tZ2tUnEgwRechNZSd8qr6+D1TVvcW/Vw1VIMtGvfp+ea9oKKiVQbipYJLKBY09T4r49rjjxG0lLmvzvU8fSMTJbQwVi+yg3YxLzAnulGHxbVvtM3cvSrshtQ469CPHYDk4P3dsBdkI2p1DxqORzV5YTLVD2xCbG5pbrb5Pom75pbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=POfyOEaWnJvkmGVuLWs/LCO/3KscXpwxtYRt5FNppk0=;
 b=vPtsOxSrs4L8amj4GUk2GD0wSc9nmkXV7QjyEd9h9tv4lDJNUNBUiNRq5aK2AlS/OgI5FIhH3hC1/jD8eiLJkNYoFU70CA3ab3fPhmz/4UZhwtS0yGetwMYjs0dLk33vcUSR5rVxJCMrg/PqCCuGpDjhYpbalpuGTkJ2MtKYewjF0FJE59mZGfBibsj7nhzDWDviklLt9s+dWr3cMxmmgum+aIFQOOHRLqAYuMI7E/QG2vP9jqidkt+ExRMGxj3S+yAjb9iSbj78BzuByPiZAwdb065+jla1mLMUPN+QEd8B/tRMWvuwrl3d/qQokbXCh2bQlT0C6OzjnJCzO4L1Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SJ0PR11MB5166.namprd11.prod.outlook.com (2603:10b6:a03:2d8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 12:35:11 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.014; Mon, 1 Jun 2026
 12:35:11 +0000
Message-ID: <c8499b18-8bd4-482f-8d7a-62531f23459b@intel.com>
Date: Mon, 1 Jun 2026 18:05:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/13] drm/i915/display: Add helper to enable DC counter
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-13-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB80491B7B05DFB75A53755C7CF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB80491B7B05DFB75A53755C7CF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0009.namprd06.prod.outlook.com
 (2603:10b6:303:2a::14) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SJ0PR11MB5166:EE_
X-MS-Office365-Filtering-Correlation-Id: d9793aa1-bcb5-4eb4-fdd8-08debfda38c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: E11D/pnIA1Wo3ezLmxsSvCcvu7ez/wlZIMzqD2GtvfHwSqj9EOVp4a9pNNfDWoxsZLfb65FF0tOsupquMTFS3WMTk7N3odRE77CfcOqw9gNGWEerqNr06AA/j8aiJsKS5NAnnP7HOydmwYoXLydgovshBT2SiEBuZC+9gHo0MtOB/zVWHqmT8xOwLQZkpXOQH9gICBKlvCm+rsL3pfdUg0EcnEZMsINMjkXPLt3E156SG7/P9cFWlxSmlCHqJEyKurMdJglFBKQjxS/QLY3SWE7Vssdblxbjfb26cu4AF6I8lFzs1wYYoCRxEsdK1nCM4TALQ1N/gCf+GuqfoJx0r/huFNVVHP+8lf9nvznXD45hnxO218zYVHjtq1sl/riwEejWnwhz6Ta+NzpjBpzhaKYqRZ8qW/cmDDtqg90rjmMep7IHUPFObUqhDLwt8Snfv0JXDA+lOWvwlOIOQ9MLljIsCY3jSPZs2lj+7DbprketP9p9RPOw66kmrymmCPy2j60JmAL8svsM67JN9MN7B0Fv4yYY8GZX1izPEu5nETQPnpYUH0PJPVYW/SQjrtDjPQG5B866ztFgmpojs4c+ET6BRPtumY7rdSau9yXz2S+qzzG5EGeRYDKsYd4Uwi8hKvgy6VmgHNzqttHN4xEw4YqBbU0JVAtXJ9mawcZphiiQyH0exHolPTVdoYMEulLC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUVEU0xwSGpPYnl0ZEZ0dnpWMkF5eUplM3BqZ0lkY0htMW13MzFOS0RsTEFJ?=
 =?utf-8?B?WVR1cktXTjBaSlB2WWQvYU1Ua1dtcGJOczZPL3U3SHlZSVYySGxBd0sxT3pa?=
 =?utf-8?B?KzZMSVB3eUc4OUM3WUJJUi9tNlJXQkt4N0pHeFBvQ1Y0ZW5aaHpCVkwzUWJq?=
 =?utf-8?B?Y1hsenFKMkdFU0hLSEZCdi85bjNNbWhHNnIvdXN2NVhSWGlrWFN2T0FTZlZr?=
 =?utf-8?B?dmhsYUhFRUpwQk5aQ2NkbGYybXNMRnBYNkpwTFE5cG1DL2NKb2dvdDd5bExS?=
 =?utf-8?B?WE9EL3RPdjB6TG5oV0tncnNQTEN2YnF2VExKYmhZTU1HemEvRUVmRkg5TUFv?=
 =?utf-8?B?b25jOGxwQlkyazBWWkh1UEpScFZQd3cvTEpQMnhqUHZmNXRLS1JZdmZlWU5S?=
 =?utf-8?B?aUZoRU4xSElLWmZ2YTlCLyttRlZPUEl1QXVHUVVpMSswS2RqcXErdWxBek9S?=
 =?utf-8?B?SnVUR0M5UWd6OHZBckJLMlpUN1huaFdESkhHRzJMRllaQ1E2YWxFUzJ0RFND?=
 =?utf-8?B?VXFUM2phenl4em1pMCs4UHdRblVkOTZtUFVNalVFaTJOY08yRDVnQWZaWWVQ?=
 =?utf-8?B?TFhOazdmK25HK29YV0lXN3EyWUhLdFRreTUzeFNydXRIeWdUVENNT2UrVWNi?=
 =?utf-8?B?bTIreGtCNjZMckhPUVMzb29LdEtCYjA3M21jNEN0L0tYREw1ZlpqOEVyQlRq?=
 =?utf-8?B?eklSNkpiMUpOdWZhQ3FRc3I4Vm1vcGtzWHNMUUcwMko5REZDWHJHSGFHcHFJ?=
 =?utf-8?B?dGFYbW9DdHBha212WVVMT29ZU29KTERXSGpmYjVsYldVVTA2eW5rdDRzWXFx?=
 =?utf-8?B?R3hhT2UvL2U0UVlpTzFnbTdjaktNYmZnc2MvMzNjbHdidllULy9oSXZZc1NK?=
 =?utf-8?B?czY1MGVmZzJHNW0vaklTU2kzU01GTFRUSnRjWE1KNThocGZRRlRIbHh1eHEz?=
 =?utf-8?B?UTREZy9PNDVWemxUWG1lVk4vaXgrbVdCNjIrdndMSjBjZWNzOThkRjF3Q3Ex?=
 =?utf-8?B?YmNzTlIxcngwaWxuZkcyK0VQZVJOR1I4ZktQMEpsRCt0MDIxQjZFYUt2Z1Uv?=
 =?utf-8?B?V05kTGh4RjBoOEJYWk9wN2lQOGE3SG1rRkQ4RjFLZlowa2NpUmVqd0hUZmdK?=
 =?utf-8?B?SUw0TjZrcVloTW13QXVGS1JwR3VBRVdBVThkdTlyQWZFSzExQTBWcHBVT0lt?=
 =?utf-8?B?dGx2aWI1SVd6Q01UTFVVSU5weHpkbGY1RG1IdXFkTmxpQXVMT2FTd1BxNmV3?=
 =?utf-8?B?Wk9nZm9zdjV0RmpoMjBZdlA1MFphYUJrbUlXUjY2azlTYVZHSjNtQTdnamF6?=
 =?utf-8?B?eHV6U09JQ28zRzVUS2JxbzFzaXBENDRKMGRRbCtzQlBwVFQ1SjdsbEFaRVBv?=
 =?utf-8?B?cEovMnRoWjZlY0pwUXBIVll6d01IL3FsZWRlSjhHWXVIL3FBVXFDS0ZrNzFZ?=
 =?utf-8?B?N2tsbmlaRi9yZmpRQk13QmdxUittTzFVQkVQVENOSytVM0d1Wk5jSy9FYkJx?=
 =?utf-8?B?WmdaZGt1Ly9wKzNNOUFrMDJGN3Q0QUhSY2NTU2czYXh2c1VJdmR5VklQakxt?=
 =?utf-8?B?TXh3VHNBQnJHMXJZbnNYeVJNdkVtK1lrU1FCQ05pWnJjVVBVV0FUQkFIcTIx?=
 =?utf-8?B?cUFxdUNmUk1kdWhaOENTMW1NNDZwRmNnV2hJcmcvbGphU0U5WkVKc2pJTkFH?=
 =?utf-8?B?b1VVVVRrL1Y5QVpYSVF0d1k1QjBid1dENjYrSEZLMklMUGlieklaMFBDVEdL?=
 =?utf-8?B?ZDQrbTlqbW5Ha1RrNVBzeDRNUlNPelBvVzhTUm9nbGRpRktjb3VEcTlKM3RC?=
 =?utf-8?B?OVVUYm9raXlEcWJlQlo2bDlmMVpUcHVnN0VZUFQrTHhuMDA2UzVTQmxjbjZD?=
 =?utf-8?B?ZnNCcEMxckRtcWZHbm5lN3FwWjlza3RjQWN0eVJSaFd0REZkSlMvV3ZHNVd0?=
 =?utf-8?B?N3Y3Q0N0YUh5SU9EWm9CRmtGc2Q1aE0zdjkyUS9lLzE5TDlPOUFaZVJXd081?=
 =?utf-8?B?SGNMdmZ5S2ZKeXFsVFpGVjZnbFZ1YlJsSFkyQnByWGVkMjZScFEwZTZydFU2?=
 =?utf-8?B?SHVUSDA1d1J5ZVBhakpOV2k5aGZZVUM1eUQyY2gwbUIrR2pvRFgxdTJ0OVRF?=
 =?utf-8?B?cXdvd01MeGlJRmd0bnZTUFJvSC9VZWlqRXdIWXFTUEFLZ0pxRUEwTUJENEtU?=
 =?utf-8?B?Ui9ZRTZZblBUS2xHNi9Gdi9tSWVBSzVZR01XS0ViNlZNS2NRSllqY25vUHlr?=
 =?utf-8?B?NzIrVDlRVXFRNGFKYXZ3bm9EaDVjU3ZVMkFqYVU3M1ZVbm1UWk5LcWJqOXpH?=
 =?utf-8?B?bnhtZWdlbDBqVDZKRHJuMksrbDNRS29WMjlwTll4aHFkb0pRNjFaZzJIZmli?=
 =?utf-8?Q?p3vcpLzohSUMPAAwZQSuOqgNgtwZOQ2+Xl4TwbatRCSHH?=
X-MS-Exchange-AntiSpam-MessageData-1: W9i2h0OIHghhRg==
X-Exchange-RoutingPolicyChecked: CrIllz3bV4vz2Vev3HQ6RsaLUHMBuohUKXbSp934bghhXQCWBNgmE96+BzeoZJAP6ijFRs0EeCUN+6ba+YyYjZm2LafHt/Wpg4XglJFVt59738Vo6e2Sf7mzUJtSOFbtOTyjHjjjbiuLxuPZXqOwJ3Gw6u6XQSktvAqOfuopvoc+Ia5m6B487ZMytJCmjndhG8jYT4Ly+mLjMpC4vtoxY5BZgws00dJDWaDfBCpYuMWmWYuLBPDDyRYoIQBTwFHyis9aNfVsJ6UYcMaEj/Ow8c7xH2lrI6cyUBP2qosjxPf8OgkDD/tCdAiIrWjIMhLL30fFcWCQCAHBki/PWPjSfQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d9793aa1-bcb5-4eb4-fdd8-08debfda38c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 12:35:11.0714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zc8BQZrBESiW2O+vB8ZCJpXEDZn1Y1qdJ7KNisqqI+kP2TipRClOrHEFHCwM4ItUCbn3T7CooInmKNfh7iaLc9aQL32MJV0+P8sLebNyPu1Tr6dQLu2EuVQl0O5W+BuJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5166
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C511F61F533
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 01-06-2026 11:17, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, May 27, 2026 12:48 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH v4 12/13] drm/i915/display: Add helper to enable DC
>> counter
>>
>> Add xe3lpd_enable_dc_count() to enable the DC_COUNT_EN register.
>> Also define DC_STATE_DC3CO_RESIDENCY to read DC3CO residency.
>> Needed to retrieve DC residency for DC3CO.
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
>> drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 +
>>   drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
>>   drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +++
>>   4 files changed, 14 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 3ea080d0e21e..0e7e6a2b1547 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -866,6 +866,11 @@ void gen9_set_dc_state(struct intel_display *display,
>> u32 state)
>>   	power_domains->dc_state = val & mask;
>>   }
>>
>> +void xe3lpd_enable_dc_count(struct intel_display *display) {
>> +	intel_de_write(display, DC_COUNT_EN,
>> DC_COUNT_EN_COUNTER_ENABLE); }
>> +
>>   static void xe3lpd_enable_dc3co(struct intel_display *display)  {
>>   	drm_dbg_kms(display->drm, "Enabling DC3CO\n"); diff --git
>> a/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> b/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> index 8f5524da2d06..0ce64b894436 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> @@ -159,6 +159,7 @@ void gen9_set_dc_state(struct intel_display *display,
>> u32 state);  void gen9_disable_dc_states(struct intel_display *display);  void
>> bxt_enable_dc9(struct intel_display *display);  void bxt_disable_dc9(struct
>> intel_display *display);
>> +void xe3lpd_enable_dc_count(struct intel_display *display);
>>
>>   extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
>> extern const struct i915_power_well_ops chv_pipe_power_well_ops; diff --
>> git a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> index efd1a3e56f76..875cd06f2566 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -3084,6 +3084,11 @@ enum skl_power_gate {
>>   #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>>   #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
>>
>> +#define DC_COUNT_EN			_MMIO(0x457B4)
>> +#define DC_COUNT_EN_COUNTER_ENABLE	REG_BIT(31)
>> +
>> +#define DC_STATE_DC3CO_RESIDENCY	_MMIO(0x457B8)
>> +
>>   #define D_COMP_BDW			_MMIO(0x138144)
>>
>>   /* Pipe WM_LINETIME - watermark line time */ diff --git
>> a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 4785001644f5..a133785c815b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -941,6 +941,9 @@ void intel_dmc_load_program(struct intel_display
>> *display)
>>
>>   	gen9_set_dc_state_debugmask(display);
>>
>> +	if (DISPLAY_VER(display) >= 35)
> HAS_DC3CO() check instead of display ver?

The check is intentional.DC count is not tied only to DC3CO support,
so I used the display version check here.

>
> Regards,
> Animesh
>> +		xe3lpd_enable_dc_count(display);
>> +
>>   	pipedmc_clock_gating_wa(display, false);  }
>>
>> --
>> 2.43.0
