Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBGbAkq3BWpZaAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 13:51:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9485413BF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 13:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32EE10E1E8;
	Thu, 14 May 2026 11:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aOlWrdhE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E2810E1E8;
 Thu, 14 May 2026 11:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778759495; x=1810295495;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OZgKbQEHoW6dckN0sPqICR5TxWOWADoordvS2fOiNV4=;
 b=aOlWrdhElS/hbLpvFr6FTaqyadkTt+1Fp75YJHJREAWFJas1beZZVHXR
 e36LtlaQsHOXf0BFUsI5sLTR69AJXb4n3o4kncuyZsO+Oor+Hl7WsbjTx
 9nwrWpWaip31YMfdkTnNRyFIZ72zKXqQeEXGDv7yCKBz2e5KpZHVkEVPv
 M5TmbWUzCKwG9da4ef3TVJJMkpXTwHbxelv0Y5xpArVK55pB3q1Ut3Km3
 x3T8CFX6mrpOSCc9cPqCHCNWp1bTdoV/mZEY6tIi/ichuSyGQopC7qgSl
 v3ETuaDEino6O5ip4dEGEG1+wBjq9psRzmLghvO4cgXwBE/6g3hx7NmJG w==;
X-CSE-ConnectionGUID: MQXokdjRQKmY+fVsh4S9lg==
X-CSE-MsgGUID: I1jFVNxfRnu3yczpV1KKKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="67228132"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="67228132"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 04:51:34 -0700
X-CSE-ConnectionGUID: TbsezfTOR1mdTm/tdl5yGg==
X-CSE-MsgGUID: l0EtLlv4Qa68fk4qoGmDrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="243336853"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 04:51:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 04:51:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 04:51:33 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.67)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 04:51:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrTJ8kwfv+9SVL0RUXdmNGiA62qCN0uOSnIG124mQseQduj2ONIVKrrDpQ0j/Rl3iCL0IN0bDntsTyeOccgHvgx6c3k2dtwPKXjFxnJGwn/0r9zNZorkqUx+3nUjL4MYvrGBbVcK4dFhzBLfpaQot85mJ6+M4O+18aTV7Co6ar/b7AvRd3Vuc5rSrW2X2tRhsdA/NyJ5CdPkpiq1HsBozZvHY+Fr3wROd3OKOax2YNxPykor4kARWc6QeXU5KAQkvyOHH4VyrlVzGqEO0QVjTM821LaPhjarU4CkTD7L9COiuUi55C5c3pg7SgifcUyZo4iICj4cVVaOLtG4Qch8NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jzm+tbG6hJorRkvnf5jSioo0+v/8bPf/1QjQuUgUSJQ=;
 b=Ss7pCd1vHi6GoB97jMAmQbd6MCMYeBvFFX/cT3RXcUl/9sS1QsgkUiSx1+7BhbCYcmiDBu9b03tQ9JZ/52ruXc7JV+/hVjdozgHE+Jj6V6FEj8RiXsZVE5ZH8S5LHM2us0GtG7KJlxeIMD91+F7qfPCXUJ1cnWKU2N6S703gJOyRklUzwZydvXRTPOEjVdkolNtTP7vCh1eHLek7s3Vjd/C6mn36Xj2OMc94aXkWU1LmQ3YIqUE68DNjWug781KdWFVvVfuxEEo4723uD46nBgPXjd24Mz5S6EZ2P/WiF3k86E4X29fVHRux4Zr5UVa14zMQ265aja6ezAhBE/GNkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPFF330187AB.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::860) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 11:51:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 11:51:29 +0000
Message-ID: <c914295e-fa39-41ca-8159-c134301fd234@intel.com>
Date: Thu, 14 May 2026 17:21:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] drm/i915/dp: Adaptive Sync SDP readback fixes
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
CC: <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0247.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:223::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPFF330187AB:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f38347a-8807-4a6d-17d4-08deb1af2252
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: VFrbUC6L9JoFj3txb03Zyji1jiy4PWadEJFrG8F8Y4sy2Xr5xpzwMCRPnm++ibJR6teCbyG0h5BQsMoPXdHSRIiNYP+cBcbQcn5mWPz+bh78fJC9i9vP/++GxxNJHjZ8HXI3Lc0lv6M9izaoP+jRfUi6rbxEeRsw0Bcaevc4L4Vh6JjLJMwnsAKHF3yT1vi8cmp9xnX4bWMHg0TQQKpNMBwor9t9FSsNiONq+umxIO2xpHeqjFw7EhcewwuiOgpmcmaqPiXV9v2frNeNJAEyqXK9Ce/aJuHRgzeM2ZXodUJNe9TeSE/L9KPnEMF6IB7fKUeed+fnaRNoipCnlvrLMdm3qmtodjAByHQ3NcTAZFr6/JLwWiohxxVQZgSR3q0nONZU5u0FruTnmd3f7uugQy/M9Bgzck4GIkurDRmK2ukpczK+ARqa2on8uCvn7JZxv2PzRG0AJTjNr/ltTChtGbjMhqx4szFkhHc8iAKjZbpjw6kWwF8Xy6P8v3cTc+mO1mKiJM8GE8U+qPOBv+duyxguBeqaM7jJIbbIE2ccCZsxEZNINi3ztCDMTiqVjIgZW8IcoraAYZEvKy8+juFFqXu8ZlALQyH60JyxZZgzQcVyW9aNtIpNzW7M+AQ+G0f+sL6AyOjZSBb3Qohv8dXcsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjFhRWYxdnAxMkZ1Ulcxdlg4Skc2VUd2NlpocFlKa0g2Z3JhR2ZGYlAwQUlQ?=
 =?utf-8?B?ZHMyYzBjOG8vKzNmZ0FrL0ZyZEdnZDdlZGNDa3JnZy9oY0prMEFpb1ZBS1I5?=
 =?utf-8?B?THBINVk3cGI4R0FBdVczSjI4bWxDMCtJNVNQOHFvY1RMMFNWV1Y5MmdLd1Rr?=
 =?utf-8?B?TERLNERrWHhkK2owV2hMUHZ1ODVFOWk4eHBESGJPMjBaRzhwM3dxUHJYRC94?=
 =?utf-8?B?RlpVSjFMNnU3SFJudEdIczdtYStVUk13VXBMQ0dONmQwRmFPcUdmRGFTcXF0?=
 =?utf-8?B?dzlIOHdyNlMzQWowZnphZVZpcjZselo4bDBrU1ZJWk1qNXl0Zy9SSjZkOGgz?=
 =?utf-8?B?aDdSSHJzSE1Ta2toU1hzK1laZnpMZmV1MUtQdDNIZWVLSGU0ekJxSWRTUlJa?=
 =?utf-8?B?cWV4T3N6NTBja0N1TWpKbWcwVnoyL1VEYlBINjF6dm1UeVNNbjl2RGU3RFpi?=
 =?utf-8?B?RUVucDNzMDhxak5SRy9yUDBIWFJCRUxjdm9OWnlPdTFRWlpqRjNJOTl4RUxl?=
 =?utf-8?B?MVhSMnM0RUZJUXpQTkRxUGViN0o5VDdjQnllNkF3VlpMbHE4VSs4L1Z2Mjdm?=
 =?utf-8?B?bms0M3l5TE1aZE8zNkJiU0VySW5KVmVlOWsyS1k5cU9kWmkrYkJVUEhJZ1RU?=
 =?utf-8?B?VFgzNzEwcmpQOUZZMS90aFViZ3ZmWS9uYURuZG5OZnpHT3dkQzkzbERFY0kx?=
 =?utf-8?B?ZnVwVzVGYVVZUUx4NUxSOXJOVUJmaU1oMTZXZmM4L05FWngrVDNRSTJiSjlY?=
 =?utf-8?B?UXQ2ODBMRXNnM09xNkxOYjQ0S1JGdUR5TlE4VWpLOHU2ZWpYb3RFYzFqYmpk?=
 =?utf-8?B?b3hxekwyUUZGdTAyVGorbU9KOC90bnExbWE0aVF1cDUya0g3YVk4cXFpdzUv?=
 =?utf-8?B?a0YrRFVmVnd4Z3ZwVXJYMTg2R1dmK1ppbUJVNFJORDIxbXZnWE1tWXFVWDhQ?=
 =?utf-8?B?VjJROXJ3RHJLcUtSMk8xdkZEdWhtOCtHOWw3ZU5pbG05MVN4MEg4azZJdWt2?=
 =?utf-8?B?WXhkWWVNV2p2ZVI1cmlOUEVWUHZVWU5JdVh0cHZHeTBRSmdpOTkyaklqclll?=
 =?utf-8?B?alZzZDJaUGJkMGh6ZmVmeVRRSHdCUE0wUUVUd3QwR2lja1plSmhENUdtT3Av?=
 =?utf-8?B?WlZLd1kvWVBlOXM2Y0JKK1ZvQ1EwSVE0QmxFVi9hZlJmU3BuM2IzTzNYZ0FU?=
 =?utf-8?B?N2N1dzBMNHFIRHh0UEFRK08xTS9tNVIvRTR4d2NHLzZWazhiZ0Q4eUo1bm1l?=
 =?utf-8?B?NzVhYWZKNjdtRHBFQTBMVFNVSVJrazIxS3pnQjUwNkpEc3l6czExaG5DeVg0?=
 =?utf-8?B?b1VDSm1vamYrL3QxL1RLcnBNTlo4WlhJbkVzdHBzSklQdlhYSkpvM3B0ajdJ?=
 =?utf-8?B?S1pkUC9YSm9KMW5uMXBBNkE0SlNuOUR5cGRKVDhEYTd6RzFtZzRYSmNGY0lY?=
 =?utf-8?B?T2JGWTZLa3JlMEo5MTdVTmhPSG03azYvN3ZuMW1sSEN4UUlnZXRxTUwranZw?=
 =?utf-8?B?Z29ZeTU0UVkwNHZ5ZGlEK3ZCNElJWEtVRDJ5UnIyWEJWaHlPTG9oVWt1ZFg4?=
 =?utf-8?B?MStsVFI2N0ZmdFU2SjdTTGJkN1lTSW1GbVpmOUwrbnBMUUNqT1g1ckFoS0cw?=
 =?utf-8?B?RDkyeXpaZUNuTVM0d3gwK3lveHpXLzZKbXkvVzd0NFZ6cVcyeWhXb3AvRnNQ?=
 =?utf-8?B?REhjQkpqcDNiRHMvUVRXMkViVG5rcHJlTjl0OVFzVFZmMVViQTl0N3EwRDkw?=
 =?utf-8?B?anZHWk9mQlhaWXFZU0cvMVhUWjZYZFVCN2ZxM2FqZ0J6djgySEVSUVRMc3Yw?=
 =?utf-8?B?dUZWdnUvYWdiWHdzalRqYldHYkRNUExDR3hUSFY1OXZaWitXVUFRNWNxY25V?=
 =?utf-8?B?UTlDdTdYQXdrZEFUT3dnaU5zQ1VTTWhHcEdkZEQxT0RIajNDQXVVOFl0cm9V?=
 =?utf-8?B?RFBZUG01a0NkRGZKQitteHpCdkcxQkIySTVUR1NMSUlIRWdSYUI2a3FhS0Rt?=
 =?utf-8?B?dkR1Y2tkeGgySWdqZURrMmhhZ0taU2RuOUt6UWo5ZEE1czhVbmxnVitVR1E3?=
 =?utf-8?B?akVKWFlMRlJjMU1xa0ZjbXRreWFrdDRQejl4QU1nZjJsOGNoajg5T0VxcERO?=
 =?utf-8?B?ek9wQWl3TzY2bUV5ZFBkOENWQk41NlIwR0RnSExRVFNoSXFMTXFFQUdTdmcv?=
 =?utf-8?B?RTU2YkJLd0VGVzFvZkRFbkhpbStSUUVUVTlqSDBETEFLc0JQSzdFRGhWZ0py?=
 =?utf-8?B?dFl3OEorOHhCb0x2dTlrRlF5Sk1lazNUTzFYZ3RqYnFzV0tSd0J1NzFaWlA1?=
 =?utf-8?B?VTk4aE94V1J6dUJnNWlaKzJwcFY3b2VzQ0NKYW9UUjl3ZWZCRTZKTWs3T3Mr?=
 =?utf-8?Q?9/XHZ/ww+dkeVmPk=3D?=
X-Exchange-RoutingPolicyChecked: dZal6trfBqiovMcPaToT6ddxVbDgbYeT+nrUwKyIhCDxZkftv785rgEsCnm0697q7eW2VLwD/DZa0oRSxSuKE9nTlvKARubsxQpBzjtLvlMKWXXlMEOLYlioap9owIxKjxU5NmUAr1Zt3lA5sYpPC48DTLWFGsaiDY5AuK3fiashYGXmkZ50Oe5pq9altA+KPEyo/x2qoKsLKXjf8XK+/6sTaPxMkKySEele+qTBGVc28cnzuUvWNX0S4dMmphfhKm2rRUdQXEt6DSR5Ib/dqVCQbBAYfj3PI2WPjPyd2AU96APQeu4i6Dd1Lo9T4lbt1B8dTBXKLLxnY63WEoID6g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f38347a-8807-4a6d-17d4-08deb1af2252
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 11:51:29.2643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HuQQyYHCAPgo2PEow+PUhr3R/ucM3BcXOalcSe5FmFsvRDnJWBWB3eP5sdYAQx0lTyVCCVx4JXglaRa+EDd4W2VH/h0VAqkWudKasfeetCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFF330187AB
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
X-Rspamd-Queue-Id: BD9485413BF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 5/11/2026 6:02 PM, Ankit Nautiyal wrote:
> This series is a spin-off from the original series [1] addressing AS SDP
> handling for Panel Replay and VRR.
>
> It fixes target_rr readback and improves overall Adaptive Sync SDP
> readback handling.
>
> Split out for easier review and merging.
>
> [1] https://patchwork.freedesktop.org/series/164512/

Hi Jani,

This series is reviewed and is ready to be merged, but one of the patch 
in the series depends on:
59e5e15fef9c ("drm/dp: Rename and relocate AS SDP payload field masks")

which was recently merged in drm-next, so it doesn’t apply cleanly on 
current drm-intel-next.

Would it be possible to get a backmerge from drm-next into 
drm-intel-next to bring this in?

In hindsight, I realize that in such cases where there is a dependency 
on drm patches,
I should have included them in a single series and asked for ack to 
merge via drm-intel-next.

I'll take care of this going forward.

Thanks & Regards,
Ankit



>
> Ankit Nautiyal (4):
>    drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
>    drm/i915/dp: Use revision field of AS SDP data structure
>    drm/i915/dp: Set sdp_type in AS SDP unpack
>    drm/i915/dp: Include all relevant AS SDP fields in comparison
>
>   drivers/gpu/drm/i915/display/intel_display.c |  6 +++++-
>   drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++++-----
>   2 files changed, 10 insertions(+), 6 deletions(-)
>
