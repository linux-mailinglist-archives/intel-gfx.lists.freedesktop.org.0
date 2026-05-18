Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKm0D0ncCmog8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:30:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FA2569BE5
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E023D10E2F3;
	Mon, 18 May 2026 09:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jh0RTprB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366E810E081;
 Mon, 18 May 2026 09:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779096647; x=1810632647;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XBxpxSli2CP5UjS9se2SUFStvhvnoDMMCAml38udazM=;
 b=Jh0RTprBU9JGZP2LWrcCg21QwxC7R7BdYHqpLUIAeZ/lIwF7KfT/vl9w
 /hYUBdfvwC5S7FKsmJQnBSiFOgR8ObR5IXFQ7ifd1dSzQ+zq8iQN2tIkJ
 jjR/gOV/o4bHkkuGVDfWjr0PJ3e+ASK/31O19OLSvlk8FFZ5GsUdavZA9
 XTm9wgmWGgSnOSfaLBz1lSD9a1m0JkQblvKbCwkCcAEZXZxT1KejUuU79
 UuLSbWO80Q9xSnRWFnOkLnOFrC0T+5GjbzwqOYowlkvHxZPuEAl7vgR4u
 8+0/IOJhLBOTjq13ohb/H3v4jCCfvElWBZ9lYc5WGbnJLLWpiQEBz3/ke w==;
X-CSE-ConnectionGUID: M3p91sTbSXa7Lzvmm54lFQ==
X-CSE-MsgGUID: Rbau84Z2SAKU5vaRRACQkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79913347"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="79913347"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:30:46 -0700
X-CSE-ConnectionGUID: nniTE2QORd2q7L+7/jd27Q==
X-CSE-MsgGUID: Z80wL1rdSd2yFZAvxV59GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="263159042"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:30:45 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 02:30:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 02:30:44 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 02:30:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HyGI4V37o3N+HWpUs+QL5eq3Vuoj0wmUym1kxZnyHyUnIUPek/BhHX5eeVvgp8tRa5u52lmcbMW0Mr9xrNyjyg2wLJZU11FsIg80qXTgs664KBGWXpoJs3UsMROofu2E9b7NixUOOa/rsY09aElKkfFDpJ3qMeiccyXBr2X3VRD26P7flCwkwLIW6eS+jXIV2MvIrPDTN980w3yyX9093LpbVc9Kr/cqtiEXfKK7+dbhseUP7olRehUXdC9VIjRRLyrDNe2CJgJUHO2nUnzAkP8QgAsYR1eZwzbmv52hnEpy1pB7rk4MfO6OZLCpw/U97ekF8FrE3oOE0JI2qpksNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaAbSBmbT6OI6jUGj/UXTc0FJunSBvl7DDFS7C3KTuE=;
 b=IAxVOM4wCVpjg785iodIScHoJOK7SgS5pmKZEF9HZeQ1+UMesx0aFNzAliOFZo9y90aTkqDcSmU+MOBtk+e/2quGjs6AcmIM6MNK2H9ZRR76Ny8e+PcxnvS4Uyqkm5z+rbDaPilqYaapD99H82q5tVnc3YqzZSqSajqRUApyGJFN37/cTOiDloaPeVg4n8LRQGQieLT+LQckjRO1MjTObs1kdFNPXkeIefM9z6vrHIFio/PgFgjELaFBxeSE4cXAt7SxDdVXHTMk8lyygOnc0hAsCj+s1KoMgdX7LsCIHa3nCTGyZguB6PI8gQWgWDCFzOILNwYXAQPVFdQVfOTTYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.13; Mon, 18 May
 2026 09:30:38 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.21.0025.023; Mon, 18 May 2026
 09:30:38 +0000
Message-ID: <a734e41d-3665-402b-a56a-43fd4f8819ff@intel.com>
Date: Mon, 18 May 2026 15:00:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/intel/display: Add support for pipe background color
 (v4)
To: Maarten Lankhorst <dev@lankhorst.se>, <intel-xe@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, Chandra Konduru
 <chandra.konduru@intel.com>, <dri-devel@lists.freedesktop.org>, Matt Roper
 <matthew.d.roper@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
References: <20260505200133.636584-2-dev@lankhorst.se>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260505200133.636584-2-dev@lankhorst.se>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0155.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::17) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|SN7PR11MB7592:EE_
X-MS-Office365-Filtering-Correlation-Id: 593f7b81-461f-4d43-63b7-08deb4c01eb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|3023799003|11063799003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: /ASx8uN7aIqJZ08MoQaJwn0qEnUlZELnK0js1bNA5AeflwHHGsf35h57ON55tQJQYqRL4WkejJvAWK2dkyZTOGqdWxXnhw13k2dVk5SlhJQRtVOzpZrJT+sY+tbG/dTf4arYjbMjKa6At79ls7YKonwvQa2/rUgbJBEHry7jgGyNd6msgrJMyHFL7DsGkoZ6PzVL4s9R3ED7m3Sb3xmKT4GbmEL709y5aVFNn6HfDsTFs4DJz4FwSuCtC4VfVlyllQ7IJqfKWv3RsxKuLse2xHE1NLe2zoYPDNAKH1tEwIM8sbqdSTEQJ51575NEgewg5lsrPs9UIbE0fqzIJMuvhKHvb3QWiHkyF1FH8cQv2fCvNcF92I5USQn2NggwuolGJj4BYP6H3uBT1uBvR8jtElNK+6eIbGtpt7jbRkpUJ62M196SfZzOQKrlF9B8bo28d9/cd4o3E5vrfpwLy2iNpcjtoxIXFRdNxm+zEjpjhaKiKhiNsomXF4/QGrmoeoscJgFpJaz90WSqq5Q7umuv+IuxRV8qAPhJNCCZSSHRXljXTv87smeBWcgIa/UoKU2cwf6LtywLANq/HVQs6WLKTPA4N9YrYvJY4P6EvHHPmKWUcTU3hZf6N64s7/QzVjmRQL6671PaQoHbegFpPgpjTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(3023799003)(11063799003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHFDd3UwYnpHM0xRRk1ieUZDSE0vMTU2SnhHVkxvalFCR2E1eWJMcGpTak1O?=
 =?utf-8?B?ZHRaTGU4S3MzQmJIWXZpRWNKY0lBZ2lWVE4wNUxFRzBoZVMxZnpjLzBzbXNz?=
 =?utf-8?B?QS9DMEpNQytzdys0OFQxQmR6cFVsUGRwSmgzYldodWNTcE96dkNEUDJVUzJI?=
 =?utf-8?B?NHo0REZYVllJejFGZHhNRkFkb3dKN2NHSDlYK2lHN01PQXZKYUdtU1ExTkRL?=
 =?utf-8?B?QkdLekRzTzhVNGt4RlBIQ2hodktKTlFJTmk0Wk5hTWg5Q0pIRTlsdHdHK1Q5?=
 =?utf-8?B?ZUFocWxzeFJmTUdINHBlYkxFeUhKRU5ST3Z0Y1h2VUNxRHJncVlxL29hc1o3?=
 =?utf-8?B?Y0drVHUzZWRBVkRwdUVXY1FOTTJ3T2hvZjU0NzR0bGUxdEc2cHM2VnJBZy9O?=
 =?utf-8?B?WncxSng1ZkFHd2lLck1IUVN0V1pIc1JnbTRqaGU5YnZqbk5oSTRvZS91QjFr?=
 =?utf-8?B?U2FIdWV6SEhNU2EwdmtmSVdYdVplbXp1Mm5Nc2RDeUZROC9SS24zRzFUREhC?=
 =?utf-8?B?aVU4akx4UEZSSWE4Y3dReTc4dDVsS0Zwc25aRDB3VXVPUDdUTWJRT0Npd1Qv?=
 =?utf-8?B?blpvMllFZktxaE5RK2dDR29FMnVidjQ3ejhwOGEvaElHem1kOWZQcllLb1ZT?=
 =?utf-8?B?b2piQ0xnaTF4RHN4THFzTlRmYXdnTjZwRm1SeFFKQlFYR2dydEVsZlA5enZI?=
 =?utf-8?B?MGpKeVB2RjRIbk5JSjNsYkNtR3NBYm8xeFlLaWhFeXRJUmMrVGtxUUQrRnN3?=
 =?utf-8?B?K1BWRjY4K1hSSVVaUEZpd2p4Z1pUcHQ1amhwNEgxSXB1ZWIvSGxVcStCanpB?=
 =?utf-8?B?bktqZHExejAxdVMxNzZkcFcrSmphbUpSaStTTW9SbzhtbkFYS2pEVUpjTGQy?=
 =?utf-8?B?YXQ1TjhZNGQ4TForbDdWeWdac2cweWJFc3h6Q3k5SHBsQWFnY3c4UkpWQ3Nh?=
 =?utf-8?B?UzhjY1JvekVRdURqZkkyTTdmTXY5cXpweTJhVk4yMGpnTHA4dlJORXdTbjY4?=
 =?utf-8?B?c2svSFhWTUcwcUZHeXFQRlZHN1RjY2l1YUdVczF2ZEVoVlRtcWEvaW5PQVB1?=
 =?utf-8?B?Q0hka2Q0NkNJZmZ3RUYxUU5nRHQwM0lNQUk3eEt3YUg4QVd4VVJic1VPZXZI?=
 =?utf-8?B?bm4wSlNoczA0TVhuLzRtSUpSMGxUTkVwSjhGZmJzVWdFck5ldTV6NmZVRDN1?=
 =?utf-8?B?VEhTL1lhOG9CdEpWVTBsMTV1NVZNemZ3THB4bHpuUU5XVDcvSWxHREtnM0dK?=
 =?utf-8?B?ODh6aTUyMWkzL0t0ak9tcXJvVnE4dTFwenB5bzlnc0k4VHkwZDJWTkl1NU5Q?=
 =?utf-8?B?bzVEUitYRFNUOEJJdVVrS2Z0N3NEVmE0MitDeDZHOWZhQUFoNEROcDFNVjMx?=
 =?utf-8?B?U3Nza1ZqV0JML3dLVmhXTEZkWCtKQzNVajFwaDBFMXo1SWw4TVVLSGoyZGtU?=
 =?utf-8?B?Y3J1VjRJbEVRQzhOeUh5MFgyS1Z2djhaZTVmVGtXVG4wbVc1OUFIN2Zta05v?=
 =?utf-8?B?aEFjWk5vdW1zY3Y1K0lBQXIycWtML2N6WCthZ1laS3gzMHdyK0NYYWk3aW9I?=
 =?utf-8?B?K2puUTVtMjVza2FpZkRkU1ZoYTRsOXRYTlhvR1lNTFI0S0p1bUUwLzc5cFVG?=
 =?utf-8?B?MXJDZlhGOUxuelVnWDI3a0ZaRWF6c2QxbmtlVnUybGVyNXZmU2orcjZOdm5h?=
 =?utf-8?B?TU9yV1ZsTGZFMFFWelpYd0ZJTW82dmlaWXZHb3hqd1lYbms1akprdG01SGhR?=
 =?utf-8?B?QmZ4L3ZnVzZoSllYNnhkYzlqZ2dZUzhGMDJGbzUxSmx0V2F3LzQ1WHpXNjI3?=
 =?utf-8?B?K1JVOVZITnk2WXM4K2xrTmZoaVBLZElEeE5xeGNNQ081ejRLTnlzZ2cyWndG?=
 =?utf-8?B?Y2IrQlZJeHI3VHdxZ25EL0xjVDZnYlg0ZlM4OExSTGZ6eC9mWis0U1p4Wnp1?=
 =?utf-8?B?R0VOYVdZaUczSmhheDdGMVBjSWEyWVVhNWRWNm5oajQzTndxQUUyYU5XSmVV?=
 =?utf-8?B?djhNUjBEUVBiM0JWR21BWGw3UEg3b1VQWjI2SW9RTFAvNzdEaHZ0NmpOMWRG?=
 =?utf-8?B?dGQ4dWJhSUpNQ2JGV0MzdnI3dGE4ME1uQ3gvVUFQLzBLQ3pjS25sNTBPeDAz?=
 =?utf-8?B?dEhwNkxyR3lLTlVlWSt3d3BIeTJ5V1J3d0RHNElmNzExQkxKNlJKYit5b3Z1?=
 =?utf-8?B?UWFPYkl6NmlQV3RIZTl5aEt1VTFBREFsTktvVExHZFMvWFZ1bFhhbDhwR1pM?=
 =?utf-8?B?UFUvR3d3cURZZEFyMG5EU1E3YnlJNU1tVVlPT2RicTVqaktJeUtPQXNlc0dk?=
 =?utf-8?B?eWpvcmFNdzQvbStqUk95MjJBZXoxN1UxNDNwRkJwQnZSMThlbnozM3E1MGhH?=
 =?utf-8?Q?hK+EXPJBGExtXhMs=3D?=
X-Exchange-RoutingPolicyChecked: tg/JPj16aXw+ZZDvwkju/UL+h1qONbCT9Qbr/t4xVbUs58TBEz6kW91ttA2rGFYLPBdzfzgAYzIGZd+F/dJIZ2nLX9pb9iWFj9qODWJC7EtVsO2F+nlG9KNnNTmI2G2N2d32TUE2pV9SFCUYphtxJeVvrP99b3AoFSeUjLGnLQ4xoh28ZUrSr6rQOhc6lG1f60VgfJzUWb3Q1ZX7wD6+BTaJqP5hZ7E0ydolgfQcCYdUH7IpphuQ78Ep1RfKQ69Qd880n1493vuyGOpHDtH6BneTj1A87gyMD2iNd/48+JpELU/Z6ZMmt33Yb5OzsuHv168Hodm2mjY6XM9mq/7hlw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 593f7b81-461f-4d43-63b7-08deb4c01eb5
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 09:30:38.6282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xr4eJ1a3yBZ7YllKugD9eMh1OALbflPSkFfBwC1eeQont8SXCX0XEeqnBkix1zhMtSsKW/kg0SA8HrgwqWd9FH/kh0hILeo8XCqzS24eFt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7592
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
X-Rspamd-Queue-Id: 67FA2569BE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim,patchwork.freedesktop.org:url,lists.freedesktop.org:email];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action



On 5/6/2026 1:31 AM, Maarten Lankhorst wrote:
> Gen9 platforms allow CRTC's to be programmed with a background/canvas
> color below the programmable planes.  Let's expose this as a property to
> allow userspace to program a desired value.
> 
> This patch is based on earlier work by Chandra Konduru and Matt Roper.
> Between 2018 and now, intel/display has changed so much that another
> rewrite was necessary.
> 
> v2:
>   - Set initial background color (black) via proper helper function (Bob)
>   - Fix debugfs output
>   - General rebasing
> v3 (Maarten):
>   - Rebase on top of recent changes.
> v4 (Maarten):
>   - Complete rewrite based on the solution that went upstream, and
>     on the new intel color management features.
> 
> Cc: Chandra Konduru <chandra.konduru@intel.com>
> Cc: dri-devel@lists.freedesktop.org
> Co-developed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
> Corresponding IGT: https://patchwork.freedesktop.org/series/166016/
> 
>   drivers/gpu/drm/i915/display/intel_color.c    | 47 ++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_color.h    |  3 ++
>   drivers/gpu/drm/i915/display/intel_crtc.c     |  4 ++
>   drivers/gpu/drm/i915/display/intel_display.c  |  5 ++
>   .../drm/i915/display/intel_display_debugfs.c  |  6 +++
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   .../drm/i915/display/intel_modeset_setup.c    |  2 +
>   7 files changed, 52 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 0531c60e5e5d5..2365cf06cd514 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1102,19 +1102,37 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 color;
>   
>   	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
>   	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
>   
> +	color = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
>   	if (DISPLAY_VER(display) < 35) {
> -		u32 tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
> -
> -		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
> +		if (color & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
>   			crtc_state->gamma_enable = true;
>   
> -		if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
> +		if (color & SKL_BOTTOM_COLOR_CSC_ENABLE)
>   			crtc_state->csc_enable = true;
>   	}
> +
> +	crtc_state->hw.background_color = color & GENMASK(29, 0);
> +}
> +
> +u32 intel_color_hw_background_color(u64 drm_background_color)
> +{
> +	return (DRM_ARGB64_GETR_BPC(drm_background_color, 10) << 20) |
> +	       (DRM_ARGB64_GETG_BPC(drm_background_color, 10) << 10) |
> +	       (DRM_ARGB64_GETB_BPC(drm_background_color, 10));
> +}
> +
> +u64 intel_color_drm_background_color(u32 hw_background_color)
> +{
> +	uint16_t r = (hw_background_color >> 20) & 0x3ff;
> +	uint16_t g = (hw_background_color >> 10) & 0x3ff;
> +	uint16_t b = hw_background_color & 0x3ff;
> +
> +	return DRM_ARGB64_PREP_BPC(0x3ff, r, g, b, 10);
>   }

nit:
Better names?

intel_color_background_color_drm_to_hw
intel_color_background_color_hw_to_drm

Stick to kernel types u16?

>   
>   static void skl_color_commit_arm(struct intel_dsb *dsb,
> @@ -1123,16 +1141,11 @@ static void skl_color_commit_arm(struct intel_dsb *dsb,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
> -	u32 val = 0;
> +	u32 val = crtc_state->hw.background_color;
>   
>   	if (crtc_state->has_psr)
>   		ilk_load_csc_matrix(dsb, crtc_state);
>   
> -	/*
> -	 * We don't (yet) allow userspace to control the pipe background color,
> -	 * so force it to black, but apply pipe gamma and CSC appropriately
> -	 * so that its handling will match how we program our planes.
> -	 */
>   	if (crtc_state->gamma_enable)
>   		val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
>   	if (crtc_state->csc_enable)
> @@ -1151,11 +1164,7 @@ static void icl_color_commit_arm(struct intel_dsb *dsb,
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
>   
> -	/*
> -	 * We don't (yet) allow userspace to control the pipe background color,
> -	 * so force it to black.
> -	 */
> -	intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), 0);
> +	intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), crtc_state->hw.background_color);
>   
>   	intel_de_write_dsb(display, dsb, GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
>   
> @@ -2107,9 +2116,15 @@ int intel_color_check(struct intel_atomic_state *state,
>   	 * May need to update pipe gamma enable bits
>   	 * when C8 planes are getting enabled/disabled.
>   	 */
> -	if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes)
> +	if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes ||
> +	    old_crtc_state->hw.background_color != new_crtc_state->hw.background_color)
>   		new_crtc_state->uapi.color_mgmt_changed = true;
>   
> +	if (DRM_ARGB64_GETA(new_crtc_state->uapi.background_color) != 0xffff) {
> +		drm_dbg_kms(display->drm, "New background not completely opaque\n");
> +		return -EINVAL;
> +	}
> +

can be within a old != new check, not to invoke it unconditionally.

>   	if (!intel_crtc_needs_color_update(new_crtc_state))
>   		return 0;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
> index c21b9bdf7bb8a..f2cbce57b63d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.h
> +++ b/drivers/gpu/drm/i915/display/intel_color.h
> @@ -47,4 +47,7 @@ void intel_color_plane_program_pipeline(struct intel_dsb *dsb,
>   void intel_color_plane_commit_arm(struct intel_dsb *dsb,
>   				  const struct intel_plane_state *plane_state);
>   bool intel_color_crtc_has_3dlut(struct intel_display *display, enum pipe pipe);
> +u32 intel_color_hw_background_color(u64 drm_background_color);
> +u64 intel_color_drm_background_color(u32 hw_background_color);
> +
>   #endif /* __INTEL_COLOR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 03de219f7a645..b7600cecafc85 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -7,6 +7,7 @@
>   #include <linux/slab.h>
>   
>   #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_blend.h>
>   #include <drm/drm_fourcc.h>
>   #include <drm/drm_plane.h>
>   #include <drm/drm_print.h>
> @@ -405,6 +406,9 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>   						BIT(DRM_SCALING_FILTER_DEFAULT) |
>   						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
>   
> +	if (DISPLAY_VER(display) >= 9)
> +		drm_crtc_attach_background_color_property(&crtc->base);
> +
>   	intel_color_crtc_init(crtc);
>   	intel_drrs_crtc_init(crtc);
>   	intel_crtc_crc_init(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2fa10f8582794..306908f20b5a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4505,6 +4505,8 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
>   				  crtc_state->uapi.gamma_lut);
>   	drm_property_replace_blob(&crtc_state->hw.ctm,
>   				  crtc_state->uapi.ctm);
> +	crtc_state->hw.background_color =
> +		intel_color_hw_background_color(crtc_state->uapi.background_color);
>   }
>   
>   static void
> @@ -4544,6 +4546,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>   				  primary_crtc_state->hw.gamma_lut);
>   	drm_property_replace_blob(&secondary_crtc_state->hw.ctm,
>   				  primary_crtc_state->hw.ctm);
> +	secondary_crtc_state->hw.background_color = primary_crtc_state->hw.background_color;
>   
>   	secondary_crtc_state->uapi.color_mgmt_changed = primary_crtc_state->uapi.color_mgmt_changed;
>   }
> @@ -5356,6 +5359,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		else
>   			PIPE_CONF_CHECK_X(csc_mode);
>   		PIPE_CONF_CHECK_BOOL(gamma_enable);
> +
> +		PIPE_CONF_CHECK_X(hw.background_color);
>   		PIPE_CONF_CHECK_BOOL(csc_enable);
>   		PIPE_CONF_CHECK_BOOL(wgc_enable);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 81bef000a4e3e..336ef29d0c5b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -572,6 +572,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>   
>   	intel_scaler_info(m, crtc);
>   
> +	if (DISPLAY_VER(display) >= 9) {
> +		u32 background = crtc_state->hw.background_color;
> +
> +		seq_printf(m, "\tbackground color (10bpc XRGB210101010): %08x\n", background);

Typo: XRGB2101010

==
Chaitanya

> +	}
> +
>   	if (crtc_state->joiner_pipes)
>   		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
>   			   crtc_state->joiner_pipes,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c819167618502..aa07be41648c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1034,6 +1034,7 @@ struct intel_crtc_state {
>   		/* logical state of LUTs */
>   		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
>   		struct drm_display_mode mode, pipe_mode, adjusted_mode;
> +		u32 background_color;
>   		enum drm_scaling_filter scaling_filter;
>   		u8 sharpness_strength;
>   	} hw;
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 4c646b1bd0ee0..d3b2433eae791 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -334,6 +334,8 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
>   	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
>   	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
>   	crtc_state->uapi.sharpness_strength = crtc_state->hw.sharpness_strength;
> +	crtc_state->uapi.background_color =
> +		intel_color_drm_background_color(crtc_state->hw.background_color);
>   
>   	if (DISPLAY_INFO(display)->color.degamma_lut_size) {
>   		/* assume 1:1 mapping */

