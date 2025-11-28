Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC657C92230
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6696B10E8F4;
	Fri, 28 Nov 2025 13:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZnyqDJ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C78510E172;
 Fri, 28 Nov 2025 13:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764336715; x=1795872715;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZZjyG00YQYcbVIJCb1zknGQbfc+y6fhSq9Nc7nfl6CI=;
 b=AZnyqDJ7vQkuE19O2+tqQVSlt2gyIct0TXweFtP28hkggmceyONT0sPC
 XsKLvWbdFGQTtUdfJmVWFjCSs4yoSz8Sg8MDb8daOzSeH65F4dh0MbzIQ
 4QOQrgHNxiGGKMK3qT0horjicNgv1RsL/2G5CDeezbmRbpaEUotPb5FF3
 JE6d9wqSGlXRadtc40KJIRa/OEM7KPldenEt7F5C1reWuYiqspdqQJrdI
 i3pGrnDT/wqQYGK6Jo+5qq5ns8/EIgETfPHaa+sO+zgLezNUb7e7LoC4/
 hl4VBh4LVrgXsrAsXzSaaFT7VLP6OCYUdR6rze8jlGBEXwkIbNaZOO3zH w==;
X-CSE-ConnectionGUID: ENLspMc4R0S3Dy63WM5t9g==
X-CSE-MsgGUID: jLEE3SwET62tOjMOVy8Qcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77057135"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="77057135"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:31:51 -0800
X-CSE-ConnectionGUID: fYtFFmbnQ7KYpfqoC45K+A==
X-CSE-MsgGUID: p+B+tLfYT9WoHU2QVlZFuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193671263"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:31:53 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:31:51 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:31:52 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:31:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F/0N/tIhl7sZoonW0P5Xyi+QhGike3VIGrBQdTer90tKdL0bkV/m6wN+oUp9qhNmhgnMPQ0UuUv9GCzga/TyO9KCZUy1RphFFDgPvjpJiYZq4Ht41hJSfrdsBhpmL7WAjN/y5s0GfixbW74evUSYYIwAjfMkY72xdMqLHQ9BagAX2VexM8nrvGBpBw+eoSUi94Eo/WWs9Ayh5it3wx0FcEX+6Rs5nfu6a8WfOrCkf8zxIyU4pThpxwv8BUL/T5b993okgrilo7+0jCQ5S3OMn7yrn2PP89wCQV8rd7dbBCuV/tedqHVvHqah51oWxV1JlaM3dP2IxUWOcOhtf53ILQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JUaVi4m+IRmOUScM3qZXcuqyYCIypctdHQ7o1dy1NG8=;
 b=HF6gr1ayujEKsVCUHAbpf0WjVrGmkuLyjKIpijen5whok31N+dpUA9dLMByKhrlSbs0kuAxFDDNw4CBeY8vb0vCUxNpx83lLJF1jwu9S5MgVu0pZZvU+dOLj6RALd9GXQYlqZV0OdFGhI7n+D+lwBdBKUJyx1iUSOpMfY4qxbjcGZox9bbkW3WClpyqDqE7it1IJcRLf+f8nkgRgQ/1sLcuYe/2h6G7MxA/v8egEh/41ope7DIDGamJ8bN7N+Akj+oOvcRu0jMXV2LAnWtkopFp9ZTq4Nvn3/NX6oaQUfZ4nmoooiNcLJCPfjvsDw7RHDRg+1wbVSUwRvO7KcISYCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 13:31:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:31:49 +0000
Message-ID: <6d8a89fd-2f43-40fe-a13d-508181afacc0@intel.com>
Date: Fri, 28 Nov 2025 19:01:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 08/17] drm/i915/vrr: Add function to reset DC balance
 accumulated params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0135.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: 78d7c325-0d68-4f30-5c30-08de2e827bc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTJKQ0ZzaCtaSGFOVytlNjBydGZ2T3FwZDhveDNQNFZ5b3NheXlGdG5FNFZw?=
 =?utf-8?B?bDBjSUV1NXhOVjRiNGpDQVI4Tnl6WGk5R2JNamdIeDZHb0VYNE5LNXJiR1Z3?=
 =?utf-8?B?NDFxRkRBRisvbHd3cmtKWlljRUJ3TlZGQWQwTmtnaXFVaDZWQTdTWlZsbWVV?=
 =?utf-8?B?TUY2SnZmU0ZUUGNreCtJV2hUbkhnaytaUWRmbWdHOHkwZE1BTnk1MmUxK2NV?=
 =?utf-8?B?MjFSWHZZT0MwL1p5c2RqSm1OYURqazBOb2hOZzFuc05OQ1lFOEdGS2tlQ0Mx?=
 =?utf-8?B?MFNSWjJhYkNrVW5NSGd6VXFSeUVJN1hZRnU3QTNOTlZyeEdSTlJISGlVZzJ4?=
 =?utf-8?B?aUI4bzJIVFNxeTVMc3IvUVFEbjd3S1dxcXZTVUh2K0thR1BVTWpaMHFFWlht?=
 =?utf-8?B?T3dndjJzMDhEWUZSeDdrYUpqbHVydTk1REVEcDN1cUtyNW9nN3dicHd6RE5w?=
 =?utf-8?B?Q0xEV2Qwc0M4enhNZEdrSVNTblFhQlhRUUpydW0wWUJqVFJGYmVHaXlVeUwz?=
 =?utf-8?B?bXMyZmZ6UTVncmpPaTVONSszeFkwMEtNam01bUVWa3lIS0dQM2J1VVZOT2U3?=
 =?utf-8?B?amttQlJDcVdseXRhTndld1NGNzFOckFsWFBvSVdjeUhQaC9DK2xlVWNkVGxZ?=
 =?utf-8?B?THkwWDJ3UDV3ZFVWUnEyZFhjblRkMzBZTUVaekhuWmlocDllcXRBUzZDdGds?=
 =?utf-8?B?ZTZWQTR0U0xtNktqT1FSKzRob2lQV2dsNktiWnJwUzFwQUJXS0FzcEZEZEww?=
 =?utf-8?B?VFZ3blh6K2pXaFd0QTgxcWVBWmdUZ0RLRDQ2YlhXRjE3SUI4Y09BcXp5ZlNL?=
 =?utf-8?B?VXBoekxtaHJKZUY1cmVnemRFNmhuM1pnUlNmdFUxZVh1MFZWeUxKM3VUaitT?=
 =?utf-8?B?alY4YkZkRnE3NFFQejdSUXg5V0NaSHRoSmZQLzdyVlZLdWpMUTRiU3lHYWlK?=
 =?utf-8?B?ZjllOE1mSUhVYUxmbmRxelpkWUxFeFRiQmtMRGhhV0w4N0xYRlN5WkdGaHlO?=
 =?utf-8?B?S1NzQjZDbHFQNERxL2JYRWo3VWJITEpkdXBnVFl2dkRMalpWWG54VkU3bExR?=
 =?utf-8?B?YUEzUU5YUVRKUGhoSGJZbVA5UXJUSlFtRDhab3RJR0plYkFoaVVRTVFaczNL?=
 =?utf-8?B?aisvcGRsYUg4RFZPSDdVdTQzcGdUdXZKYTR5aEVPSFlNbm1NTXJLQkVvVWMr?=
 =?utf-8?B?c0hSaFFUbTJ3NFhOZGR0Y2ZDVlRLS255anZ3dlF3NEsrQVNZUVBiU0V4N2Rm?=
 =?utf-8?B?a3M1TU9jN0JJeXhITDVxWTNkYklHdm05SVBtR2RzVWo1VHVXNGpGNFF0T2Fa?=
 =?utf-8?B?d0wySGxHb21CakpkSENTTGxtSFF5SWNLTmdIWmNYcndWWkhBMm1waE5aY3BN?=
 =?utf-8?B?Y09SMFFiK1d2WmVZVTVoNk5JZ20zYlllVHFYWWRldnZvUDEvOTNDa3M4cGMy?=
 =?utf-8?B?TE9TKzBDdm1mZTQ5M2d5ZmJ1aElNWTcvbURqdjBPQnVuUEtFY3UxYzV3RG5P?=
 =?utf-8?B?L2JNODBXVWpEQnRQL1EvcDZ4WDhDeE5WcWp3aG1hQmZDSDM1bnBzbjJ4N0FV?=
 =?utf-8?B?b3NMQmJ1N1pkWThuL0Z2L2ZlSFNjQ1MvMm8rV2Rmc2ovNjF4WEVHU2tuN3Ji?=
 =?utf-8?B?V05tNzdDRXd3aGExSGpmN3I0Vzh0U0ExNThuc2IyeVpZTXFiQWZsbW1tb0dr?=
 =?utf-8?B?Q2FwMksweWh2RCtXNDU1Q2RqQnkwUHpGZURETGQwbk5HUlF6VTBxeTgyU2hr?=
 =?utf-8?B?VnIvVnhBQW4zbVpUd0NIaE5yaVl6TmY4c1hINjFIWGIwSFRRTkVGWGtYbklk?=
 =?utf-8?B?MWtDSTZIMkpEUUovckZFSUJhclBCRVhxRTVYczdDQ2lPcjdsY2JGaUltQzQr?=
 =?utf-8?B?RHZVUXJXczBzMmVEZ01WN2s0dTU5a1J0ZGp1TERjU2U3MTFnK1c4QmJnK0wv?=
 =?utf-8?Q?m4bH167CoTZDzigT1F7f01/2QXAgwcx+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW4zRmx1NUROTHdkQU5sWXhFdW1ZUXJGcnh4d0RCM3EwWmx3bDduTmNlRkk1?=
 =?utf-8?B?MXpwaFE4V1RIVzVsU3A1WVVqRFl3N3M0eTkwZ1NGenJKZ1RRUXlJQkZ2NHds?=
 =?utf-8?B?MjdXUllvbUFRUEhJZHNJOTVVVFVCcDRHSUlsUlByazF4UHBhTEpDc2JmT2kr?=
 =?utf-8?B?N1dwZEVjYjBkWWF2MW0wL0dkK0FVZGoxamgzdklrUzkyTm42YmdHQkptSjRX?=
 =?utf-8?B?dVlZOGdySnVPMlljRDRFSDR1ZU5ic3g5WTNEWWJrMVBGak1jOEhTSVZ4WWNh?=
 =?utf-8?B?NjhPczd2U09mblJJWFRJdTZocWkrUnRvamVsN1E5RVFZTHdYZkplQ2pPRyto?=
 =?utf-8?B?eU93clFJZm95R2MxNnNCWmhROWIvZmNNU1RROGNadUM3a0ZFTmNHQXF3MVlt?=
 =?utf-8?B?Q0Z2YjdqUXBQWkdzRjU5ZFpkVlpFL285em53S0JSZU1kNmFhR2hsdHlaWnFl?=
 =?utf-8?B?SitKWG5Zcm9xRUpnWDlxS0VlaDJXN05XbDIxSGx1bFlHNHg2Yno2SXhvaXNw?=
 =?utf-8?B?dWxVcDFEY3orUkFLTzFkeFJGSEQ0MmJwaDNZMStUV2FJWU1uT28wVWpBTFZj?=
 =?utf-8?B?SlNRVVVnS0hZYzdyZWloeDFmcE5PRmhEeTBwWmNzaUFkajJnRXBHUGxRUXB3?=
 =?utf-8?B?SWVDbGJndlBxbWpKQ3NYTDdIUHFoUTN6aDE5d21GK2hCQ2VnRmZVNkRPRGlh?=
 =?utf-8?B?eUNMVmpBd2MwdGRLY0F0bkc0cUFGUXh2V2M1SEVCS3l3M2RSUTlGR1pjeWl3?=
 =?utf-8?B?VEFFUlRkM1RPeXFXNll2alYvdXoxNHlGRVcrNWRsZ21JcTRCc1NpQ0tsNUc1?=
 =?utf-8?B?Zm91SmZEV0orYVlSeW9JZDMvU0VBK2xIclVWUTRwTkNBZGdqQnY2TCtydThN?=
 =?utf-8?B?Y2dGbXZEWE5hUUUvSnRISEFZRXlEQ0lIUjRMdnVxbnQ0aGVqWEhYbGZ4eDdT?=
 =?utf-8?B?cUNNUFFvZGlzTW1oQVpvMDZqdkdsYzZseCt1ejlRL0ZyZnBaVUorVzQ2R1Vq?=
 =?utf-8?B?czFlZ25GcWdZb0ZDb1RNM3JYems0TjNRd1JmZWp1eE1MeGh2OWZma1pmOCtP?=
 =?utf-8?B?Sm44S1l0QWg5ZVJPbmRFZEZrK2hlUUJkeTJRYzZZdXFIL0cxZ1JWYXZ4RmJj?=
 =?utf-8?B?b1lFdm1lODZWaC9tVy83U0NDeUtxekk0b3BYRlV5SHVLOHM2aEsvQ0xrSk9v?=
 =?utf-8?B?SjVrdmRVYTRBYnZ0RysrbUpWOHU0M3hzU0hyTXhpNnBLcUNHV0ZFNGRPUUVa?=
 =?utf-8?B?Mm1FN3pQNTFVWUxEbm0rNEpsbzRHSnAwS0U4aTlkMnd4bExab0lZSFdiVGEv?=
 =?utf-8?B?d2NFL1VSb1VmaGtLZWZ1OC91dUZCRUhNV3FsRk9JRWdSa0FEUmExTUtwa2o1?=
 =?utf-8?B?NGNMdlkyY2k2MTRhK0dubEY5aWhPR0phNE5nMjYxNDZ0TzZOK2dETko3dzhF?=
 =?utf-8?B?ZWI0Y1c0QWt3UkNKR1ZQejFpaVFBWGtqVnhrbHNUN2ZnbHZmQVhiTzdtMXBU?=
 =?utf-8?B?WmdSRHZ6U01obmZUZEJxbjUxeU1BdWhHUzFpZDJiMEkyc09tQW05WU13WUFh?=
 =?utf-8?B?aTFnL05TNE51U1hZRmsza0VtdGMzcTdYODl0a3BDa1NQTWhmekNMdDBScmtE?=
 =?utf-8?B?RG8vc3JzWFA2REdyYlVWQ3V5UGpuWUY5cGlzZzRPOExyVitBc3hlRlozVXJl?=
 =?utf-8?B?MitBVUoxbmxyRG5ELzFpWVIzaTU0V1U3dy9jMkpscEdueVZEMW5FcG1ZOThM?=
 =?utf-8?B?dTFVZ1lsWVE1a01Fb0RqMm1wQXFsUG5DeXloTFZuOU1VdUw4eWNnaEZnVEVl?=
 =?utf-8?B?OTF0bUtwWGE3cjdaRWhRSENiZXBIUHNsd3NZRDVLQXBuOVpESmx1Tkl4aXU2?=
 =?utf-8?B?eXlYNzMyMk1IazZzTWJZaUlPMit5c2Q2LzVqWndaMmhXem9hYnM5OEkyV3F2?=
 =?utf-8?B?d0Y5QXlpQ0NuTlhiS2FldTYwN1Q4UG5IK0FhbFRTV0JUTnpicWtNTS9ORmFQ?=
 =?utf-8?B?S1hSSDBtMTc3anV2UHVRRHg4bEt1aFBjWHhRR2FneE5jMjI4YmROS3ZyZ0tS?=
 =?utf-8?B?YWhmek5mc0ZyZk5nWGQxME9CVEsvRTlxM2V5aDJFZ3JmNGh1SXlvaldjdlla?=
 =?utf-8?B?cXpzc21IS3J5blMyZGgwWUFPRUgxZE55ZWp2K2pZa2hjVUlMdTZqUks1eXIw?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78d7c325-0d68-4f30-5c30-08de2e827bc1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:31:49.3140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h+IV4vH3jhTWizMS3wmi3A1A4aF0kmFulwDoihU7G5JqUzg5SLYkkoyZ8tionYCVGLMISCPfRdZr8lDEm1170ECbyG4P1mAUPUjL0NJPSm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
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


On 11/27/2025 2:46 PM, Mitul Golani wrote:
> Add function which resets all accumulated DC Balance parameters
> whenever adaptive mode of VRR goes off. This helps to give a
> fresh start when VRR is re-enabled.
>
> --v2:
> - Typo, change crtc_state to old_crtc_state. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
>   3 files changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index db4f84cb8762..d41ab965c013 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1158,6 +1158,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>   
>   	if (intel_crtc_vrr_disabling(state, crtc)) {
>   		intel_vrr_disable(old_crtc_state);
> +		intel_vrr_dcb_reset(old_crtc_state, crtc);
>   		intel_crtc_update_active_timings(old_crtc_state, false);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 45e632e8a981..ff65c1167e1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -632,6 +632,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +void
> +intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
> +		    struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!old_crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 66fb9ad846f2..d40ed5504180 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -11,6 +11,7 @@
>   struct drm_connector_state;
>   struct intel_atomic_state;
>   struct intel_connector;
> +struct intel_crtc;
>   struct intel_crtc_state;
>   struct intel_dsb;
>   struct intel_display;
> @@ -39,6 +40,8 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
> +			 struct intel_crtc *crtc);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
