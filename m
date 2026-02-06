Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AKcNkDyhWk+IgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 14:53:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D51EFE744
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 14:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4309110E776;
	Fri,  6 Feb 2026 13:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfetGa47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20C510E06D;
 Fri,  6 Feb 2026 13:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770385981; x=1801921981;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0/mmJQaerE/uBbUhfmyKgpNC6o88GsXwBJ9Wa41IxFk=;
 b=MfetGa47uhqrpUh/AxU2FtFXoGnyJhQFS3oGyuW7TKdwJq2O1eXLM8io
 6SvgWhVPxXagPm8W+1LY2A5/Ltbwrr+TSkQc1eWi4ckb+7WNofa/i1fSe
 3Oj4Pk3UpTQ7Tcj+sQ2qmxC+YUm9occ1mWGHcCGjnaR3bYcpmb5CJmKX7
 xaPl24xweL38v8OaWKp/eNE3p9aqmlZTvOWdXEvzUs3QGLiIw6yaQEB2M
 O326r/VIUT9Hrw4/HXCw+wPQn0DZZQinCZUNo2LYTqbn4mKHxEcnGCSYY
 C5uZtfQeko13xjYMwgr6QFOwoIjwNdTikIuXhpy7iyvNUWCKi6Nb4tw5u g==;
X-CSE-ConnectionGUID: kft8eQe2QR+ypRJTu0eEDg==
X-CSE-MsgGUID: QTjCn03NTJm/kMsTLl4hIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="89171272"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="89171272"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 05:53:00 -0800
X-CSE-ConnectionGUID: Ylc+zWRCTgmC/2ltbaUZnA==
X-CSE-MsgGUID: ZCYioQlKTH+MVdhe/Yk3+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215049569"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 05:53:00 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 05:52:59 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 05:52:59 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 05:52:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qp17U6aIjDJMUR3fjQbtYVdWKnoRycXwg8xRZ9/pAJirapKoQb/yOpJ3e8ONtkMOoK0+8hlq1l9HsYSvYfMPnHFeNNVWwQWJYCb86yNjjj7gAtcgn8V3o7gqXeF2JQX2/GNbZGZ0UstSnY4dvUj/jHq6h7SxjdVQcfLg9KotJlFaE5BnhjsfhGDR94qIH27/zc/ib2dw4rILmGv/yr+fZ7proAH8yYKFanT64UHey4di3trh6Fd6Bibtkjwa5axysZVvIwidomqad+NBQoPHx3C9W2niaidbYCfMdY2QWF/9mR3Bn0LgkSYpQVwRUUATnnuRjmOnqXCH8bXGRnapGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I0K2eKqOfC+k2iTW09OZ2ZcjdTvz78+Hs4iUFz5UqN4=;
 b=cXjWx/joikblX8LfjDrOm/4Duu6NNkqHbGOzyAP+KU5VHGH/A7h39kwGUpKxfRf2BMXUTqRG9V6PUNKriHt0hNbuDTqoHFcCD2xboaTDcoXwpc4iXv+gMDtReDXTInYOWA+a7b+mTqu5k1fPCCnY1MVgeCbdohjG98eUYMMfjejCUH4hJmzrzAhyjIrf70xOZ51tlI3Zl47TEFBz9XPgV/p7tk0cf+gDotFmwVe5F6fAyLh77H6prM+8tGHMyUEnre/LxIqS1yTBz673RwSIh/KoAA+NtKK35aDNsS1a0iHNuU+x6tWr3COXWt17ZTcDCjeG7j2qQfnRjjCMqpCtzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB8286.namprd11.prod.outlook.com (2603:10b6:510:1c6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 13:52:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Fri, 6 Feb 2026
 13:52:56 +0000
Message-ID: <9912112c-3414-4778-92eb-e89ae25b48b2@intel.com>
Date: Fri, 6 Feb 2026 19:22:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Verify valid pipe BPP range
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <20260206104227.290231-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260206104227.290231-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0189.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB8286:EE_
X-MS-Office365-Filtering-Correlation-Id: 25c5004c-c3a8-4bdf-96e9-08de658707ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S093ekdpc2tGMWZhWGQvQ0hQNHI5aTBFNEV6V2hUZTVudEorZ2VNSmQ1VmY3?=
 =?utf-8?B?YURHQ1VPV3dVSkcwOHJ3RnBBcG1SQkplL3dJWGdLVnQ0d1VwcFJ2SzBvemtG?=
 =?utf-8?B?NFlVWllhbUhBMi9LQ3gxU29WZnNFL0RGbUJnN1p6KzJmcGZ1ay9lMGs0dmpO?=
 =?utf-8?B?MTlDR1VZUnpnRlBuYXdlRjNjcjg3T0FscC9ETkhGV3NpNFcyUkpFQk9rRnB1?=
 =?utf-8?B?RjZjU0lGL2U1dXJoelp3Q2VlbHhsYkU1R2l0TWlvanBaMWNBNnc1NGR6d1Jt?=
 =?utf-8?B?YU92WHFjS0pxME9WZWZWV0plS1Bvdksrd0lvTzNybVZFTHExL0VzRyswalBO?=
 =?utf-8?B?TmxpMzhhWjh1eTMzeHVucUJFUitseDVnaCt1TnZuUXRHOGNYVytjbW1yemdk?=
 =?utf-8?B?WFdDVUwwQXJyalVVY04xNlZEZ2Q4SkxmQUlNK1IvdEF2WUVvcVlNRStGQnJZ?=
 =?utf-8?B?REk2Q1Q0Kzd3WlpFcHFlUnBHYlJiWFdOOWdVb0NGZFVseDF6S3dIS3NWVlZV?=
 =?utf-8?B?NjlPQTRsODRNVkhFZEppZzlqUDdDNDV4aHM5OHFQVTFsUjQvQWdUbjYzUSs2?=
 =?utf-8?B?T2xYTzNNNVJHVnRHRjd0cUVFWStuazhBNllZMmU5YzgxY0M2M1l4WWRmZzE4?=
 =?utf-8?B?UVFxTG91c1RseElxalBFeHh0OC9iZ2FITmh3cndRclZKSmtFemU5YXdyUWJn?=
 =?utf-8?B?bi9ISDBDV1JJRjJnVHYwWWd1eHY3Z1NwMTczL25ETU9jOU1FOFBCT25GTVJq?=
 =?utf-8?B?RGZJQVZEYWhYaWx4ei9NQVlWcWV5bjNRQkJVUXErNHZFYW1YbEQrR3ovMVda?=
 =?utf-8?B?S3RqcFdxUUl5OHAycjZscHV5MzJGL21qd1hoVEZKRHZvWWVFMlhwSmc3MENV?=
 =?utf-8?B?R3o1MlNEMkRHRW9zdTRQYjdHSFJqNjdSWlpEbW5SanVQUlRaaDVxZHBnWDJh?=
 =?utf-8?B?TGx2dlVLRVN1cXN6RlpFU015QVNkQk9lcDcrTFZXMGxXM1UrYXl5Q2hlb2Va?=
 =?utf-8?B?SmRJRjRhUWplVHdibWJwOHI0eFNFMEpoV2x4Szg0Ryt1Q1MyTHB6YU5EU2xX?=
 =?utf-8?B?eVNHVkJXZEdBMnVtZjhiUWRCSXhUZml3RGU5ek9kdVRMVXN4WU5TZnM3eXJE?=
 =?utf-8?B?MnBFckY0dlQ5MGYxZGZvTzhaYmFCcTBIaVVFMmhtNGJMazVLNHBsM1RmdjZw?=
 =?utf-8?B?emFtWlZuMnY0b1cyWkxOMm1SUHdSSVlNSjNyKzBRMnp2QUVqZXR3RHRmc0gw?=
 =?utf-8?B?TUlYbG1tQk1UWHkyMlJVblFIc2FINHRzMGRxYXZhdGc5Nkt2VGtPTTkrSjF6?=
 =?utf-8?B?LzdERVVJalIxR0RkeDdWdUFuK3V2Nk9zRzB2eFhoR2lERU04aWFqWGMwdXFC?=
 =?utf-8?B?bVJULytkbDkrd0s3dWdYM0RJVnhOemV3dFR2RWc1TVlvTWVyQllYblR5Y1BT?=
 =?utf-8?B?RGphd3hJUHJGQnE0elZ0T0QxTnVnUWRLeTdmK2IvTWxwWmwxZVg4L1U4Zi9a?=
 =?utf-8?B?V0pnVzM0enoyaHluS2EwSEt5RDgwV1VVTWJrVitZcFRnSjdQNCsyNlA4djlj?=
 =?utf-8?B?WklpUCtiQndzM09HSFk1V3MwazJUQ292TUx1eTJhc3dBTGY4L2hsa1hKUzdx?=
 =?utf-8?B?d1owb1JQZEZNc3JZaC91UmljTHdOZWRrU1VnUUJkUUFkQ0lmK21IWTJvY2t5?=
 =?utf-8?B?ZEdKYTdFdC80RlhyNU1JZFRjbmd0VmdXQ0pidFZnRUFFcnBBdzZwNS9SMllD?=
 =?utf-8?B?WTVKVUl6b1pyczAvLy9HN25NWnlCdUkzQjhZa1dYQlVQblRjMG5jdzlKeUdV?=
 =?utf-8?B?TXpQUDFwSXRBUFIvM2JrTlgraGdrMXh4Q2hoaUpIS3JpVHlPUkt1ZjVOaXpX?=
 =?utf-8?B?cFRpVGpTa2ZOS2hxbkNwd1BiaXdSWWpqMWhsdlErNzBWSjhXaWRmMmZ3bHZX?=
 =?utf-8?B?b1ZjS29hU1RZSUFMclQ2ZFVTSWZVNVgxdHZCSUIyZXIxbEY0VWR5Q3QvSkc0?=
 =?utf-8?B?SG5hSHF1Y21Ub0RVVVg0am5nK0RHSnBvVmQ4QnBlT3dteEd5S2VxZkV3UXhj?=
 =?utf-8?B?UFg3Mnd5NmhsZkcxTFFiRVpiRDQ1bSszTDhNUCtSdXVraitaOEhUby9YN3Ni?=
 =?utf-8?Q?lVnk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bCtqVmV0S0c2eThlUHJmcnF5SUxtQWxldzBvWE5UcEJ5T1RyOTNPS3hWUXIr?=
 =?utf-8?B?RGtyQmNoRk9ZV3JSOHpNRFRSUjJwT0JVQUdjOEYrZ2s5UXVQekNnOGRlN0tX?=
 =?utf-8?B?OTlENXRZVm9adGJBKysxRUJQbzkyS08xR2xBVXd3UlNyWE9oTUZqQmFBcXNi?=
 =?utf-8?B?dmk3NTl3TmJlUG00TkRiRkNhN1dFYk55OVQwT2kvSEh0NWZ6SEdkdFZ4L0Rj?=
 =?utf-8?B?KytXVDRCU2J1eWwrb1BnaVJxZkVTSXpMZXN3SDNPVDJLaGtZVGlXYkl2dVJj?=
 =?utf-8?B?VHdtLzlSVzU2bG9FUVNvUkNWOENKYjh2Y1pzOUJ0NFhwRmM5MVFVU09jdXRz?=
 =?utf-8?B?V0tFNEp4K2JoYTJoTnNQR01vWm9tRVV6K3dqV01jMEJ5Z2NpWmw0d0tmUXNx?=
 =?utf-8?B?VjNRRDBOSk1TVGh4NWJhUXE2YXVkZjJZTmdwZ2QxVHFZUm43akZsSlVyQTAv?=
 =?utf-8?B?RlcySUxFanVuVVdoZEdGMzFWLzVQSDEzWld4MWJZYWs5WWlMVFdLWmE0MUQz?=
 =?utf-8?B?cDlGVUcwYUFIK3ptdURQN1hqcndWdGFzRTZXRTFYcE9sSE1KWnBxazFnQ1FG?=
 =?utf-8?B?aHJkd1k0M0tuRUpsU2lCZ2pVbnlvMGpSajVIUEdCTjhnZUlsc0gxL1VVWkZL?=
 =?utf-8?B?d0dSUmhlRHJKdGN2OWp3Vm5RUm04UVdZcEl2OTgwWCtRa2t6dXE1d1BiRHpw?=
 =?utf-8?B?UVh2WEt6L2FuN05aa1dhT2RSWnpHVjJVRklucmlmMnczdktVTlk1K2NTSU5r?=
 =?utf-8?B?NUN6UnMrRUNmREtYNFlaV2R5Y0pTbm5KOHpLSDJTU1F1N0JFaXFWU0dJS2xM?=
 =?utf-8?B?V1hnazZGVyswVjRLc1MvSEF1OThtRGRTeGxCOWNuUGhzV3BwWkdxMnNHYUMv?=
 =?utf-8?B?WUtDRDVqc3RaeENXK3V1L083K2plbHZ2d3ExUDVxK1F3Y00zaG13dnN6Vksr?=
 =?utf-8?B?QWRia0hubW1CeldQQWFXV1RUWXVKNHB1K01CN3YyYnMzT3ZrRklZOFRGbXlB?=
 =?utf-8?B?OVFDK2Y0VlNlOEZTeFZmTldmejZMZE1JclNQNHJUMEFkNzMySC9lcVRiVzl0?=
 =?utf-8?B?VEdFTlJJZ1owN0llK1B1OGRZb3JsM1JzZXVJcXpmb3RTVGVFeGlBTTFpdThP?=
 =?utf-8?B?UVZmYmRxekFuMGdxSEI2cjExQnhqdkRjTDBDYWtKWk9ZOFRsWTRkUklMelhD?=
 =?utf-8?B?MFVSQUxoRjRJUVlmQUcvU2JhS2RuWDdIK0MvN1ZxTVgyV0NHMDloWUdOZ2NZ?=
 =?utf-8?B?QlJmOS96RTRaK3JBN2hYSGZpTmJXM01yeERHVERUTUEyUkRwTzFNY0tVdHdN?=
 =?utf-8?B?eFJrWkVsQzljZWVMMjVyVzBYamRvNmFMbCtqK2dGbGZjblZIU1JsTGZXOFRx?=
 =?utf-8?B?eGxXQkJsUi9pWDArNHlack9FQmQ2ck82OVR0WnFyMkRicXlmajA2bXA3a2Ny?=
 =?utf-8?B?Y05yUWxPakdIYzUyTE5FSGFod3hhdk9YcFl1Z1BjOHY2TE93bHVvMFFEVGFC?=
 =?utf-8?B?Z1E4bGxIdGxOcXdZcmhDMUl2MWxxODh3SzlNUVdoamYvcUhaT1lwRVlJODNs?=
 =?utf-8?B?a24wMU9aaDR4MVlGbkFQWkxkM0VSSTV1NDFaTlcxSDd1d0QxZ2ZVMUc4c2FJ?=
 =?utf-8?B?cXFBYnE1bDlDL3dhUHcydXRMRlFKdWw1NTZobTBRVUpCejE2UlcxQ2RKK21o?=
 =?utf-8?B?WFJYS053RVFxSVh6M0wxdGFFeFY1Ky82dUREeEdNM3BQRldGWml1anc1QUVJ?=
 =?utf-8?B?aWhpMjhpaTZvQ3Myb0dpTVFycjJLaU1rZitiL2dyaWVqckk1S0dJamRzWEth?=
 =?utf-8?B?VmwrUzdQRlM0VlJlcHl1MG1mYmlJM0FsTnYxdWFGRmtYUHdCa2FUTXpBNmxV?=
 =?utf-8?B?UjdZV0FKQXBUSFhRMEpnaW8rREdSSVRlQmovZ2NSc01XNXU4QkhYNE1jNkNh?=
 =?utf-8?B?RDJaUHJPbjdRRXZSZ0hXT1NKUUgzWUV2aXUxb0ptQXVEUU5XekpkVThXV21Q?=
 =?utf-8?B?VjlGQk4rbUZTTWpCaWN1Y0pScHlhYVphNjRLUm5qWFppczhCbHpTMEdrcVpB?=
 =?utf-8?B?TWIwRjVyZC9mMFkvdkF6UmhrbndWY1N4NTZTZmRjT0d4OE5OSzNOTFAyZXVl?=
 =?utf-8?B?ZHZHOExaUmRDbGRvZ3BwQ3Rod0J0MzZieFBHNkVMN1dzMnFqektBbWNCaUJV?=
 =?utf-8?B?NGZyQ00wMnNJb0w0Q29TOVFCejdXMGRib2NYZ2RLcGtvOWhCb3dPYmdhRzVM?=
 =?utf-8?B?OGMxd3pyUSt2dVkxbjBzN2FEUmJmWU5aR1UzeVRIcGFiM1NONUNzaE9vTzQv?=
 =?utf-8?B?b1M0a0Fmd2EybnJ3MHIxWGM2MTVRZkNEKyttUmEzR3NhcHQ2MUp1dDJPSlJN?=
 =?utf-8?Q?WtFLdf4ivLVWZ4Vs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c5004c-c3a8-4bdf-96e9-08de658707ed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 13:52:56.7822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /XW5QKJjtKHYQQ36wrAUKCDwtpMhZg+JonSVIutaMT375eD7/aTBGYs6iAG71H4HSwElUCm6FXoBXQPL23GDlMm2ZEOwjg6k87vFjeIPupA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8286
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
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3D51EFE744
X-Rspamd-Action: no action


On 2/6/2026 4:12 PM, Imre Deak wrote:
> Ensure that the pipe BPP range is valid after calculating the minimum
> and maximum pipe BPP values separately.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4d8f480cf803f..720787e86ff17 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2736,6 +2736,15 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   				    limits->pipe.min_bpp, limits->pipe.max_bpp);
>   	}
>   
> +	if (limits->pipe.min_bpp <= 0 ||
> +	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
> +		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] Invalid pipe bpp range: %d-%d\n",
> +			    connector->base.base.id, connector->base.name,
> +			    limits->pipe.min_bpp, limits->pipe.max_bpp);
> +
> +		return false;
> +	}
> +
>   	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
>   		return false;
>   
