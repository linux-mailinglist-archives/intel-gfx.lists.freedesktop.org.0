Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DHyGNPqHV2qWWQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:15:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 323B975E8B2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:15:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SQejL8Gu;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B406810F056;
	Wed, 15 Jul 2026 13:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBC910F04F;
 Wed, 15 Jul 2026 13:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121335; x=1815657335;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L57J+L2M6ArmiWwHTK5Vr55nh8Xs9ksb+YeAfWl/htA=;
 b=SQejL8GuxBGPCdmpUGRS/gp3+iZbs6jXDhLO6WpKPyY4qa84Ctrfig6n
 jdx456qmYPhrBzDbuUcPdqGeVg1nm2hFJ7iD8BRZm73IaatrbajRbsac4
 NL+o3bfsaVJQQyIzj9gPDS7Kz4jTiswjnp15aIF20kkdDK0WsviB5X7Bi
 8uKnBwMc4yl/4yOlPu2KMFAPY5BrlZMUFBMzhLYDjYdZZp283drm7T14k
 PDZkd77g4EmfWpeWCmZgC62Eab2BJ5NYwtn9YCW8T07zHSL/2nVhxVLDv
 GG4M/pdUOo1HaosXl9P9Vu5dKCOQq6/WvF/vkhMbUxdPapukEypS/3c1E w==;
X-CSE-ConnectionGUID: FG2jkSrESVydhHUh+zK97g==
X-CSE-MsgGUID: M6iohj4KTKW7hvkZJ1doXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="102180755"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="102180755"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:15:35 -0700
X-CSE-ConnectionGUID: UNGI0uv4Ry6eIm9+/0xfKA==
X-CSE-MsgGUID: KMRHsZ9KQHif73hJwcQtog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="255672212"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:15:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:15:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:15:35 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:15:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yYvZBgBqmmi59ZJ4IUdM/PusRAjK53R7WufP4oxZLszOsFGLQBIKTA/zD0wAKEmUQ3f8OnWpHeKGPpLq21tycYitaN+0if7/77PA+AxODJUqVlL9XxVhasCwmo/REMLB/06VmrQNu3zHHCb6nnZNEjNMcAsGt1HQ1BnBz+M1Z3+TqIb7y9SLenzpWWwyhPO5wezTFNtStn1196J8/Qa1YA/+xxynqbtWuZxW43vYykeyYrnOYBluiF5Y2P/qToLBKrCSdXecvMQodMX41/02c7lpS043tTk0xNbDpH0RJFavJGm7WVKosgXi50ATaGHAU2lzBFsW2x1CjNU6d4th2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wrSXcnSEAGWEc3itGA7MVSK7TuJ2htNojxriReg6xsw=;
 b=W8T6MJiyzuRfRKvj3ocesbvfCnrHOLt/aYXL9ircWyC/eKjFTsweo+mBonW3roIlwL4KMNluqHF6K8bLYpAmzLyVll5z55WRhHJgRXUCa5/L2KkopkapMJNEfeCCgMhdh1+IavoS/JeD0nSZkEbRKfRJtk3eBJwqqSaqDghsgz0flR7uJ692jac1nJ1tSGMJp1VzM1ejBmUWFulSrgQWEauyjj7mexdct+V1RgyAqpNb0Trxf+E40c8yzNGNU8MgPjVAlnQZvqH6d6XK+wr3dbBO1RJpXcCX6iQ1W7ZKgaFeRc1lIYuBFNdb98T+a0E3MplkvERr7OWP/e+pBD2PeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:22b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.12; Wed, 15 Jul
 2026 13:15:06 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:15:06 +0000
Message-ID: <f30656e5-8f98-4fdb-ad67-8b1f1a02f000@intel.com>
Date: Wed, 15 Jul 2026 18:44:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] drm/i915/vrr: Program CMRR enable/disable from
 transcoder timings
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0108.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::16) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SA1PR11MB5779:EE_
X-MS-Office365-Filtering-Correlation-Id: d4a41acf-b60e-4379-e858-08dee27316cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|10067099003|6133799003|11063799006|4143699003|56012099006|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: CNUryYZtNgZwyzE0MruSdLWXpmk9cIu5HcHzFXrHvIdZ34QX8m6831D2TrONzzVN9woVpSUotXJu+stRG5l93FNQ4gXHjb31eF8OKmRU4ZyXxS4ZSbAYR1qhlddhZLQ35CB2QT2q+uKvCeDlM3UJxR6Y6APhL7LKZpTDWiKU5Z220s18F7wn2BW5i5lDAgZGQx91UqNGmDROYkTiT3DM4PUJl7hV1UYSZnqTYU/CF3Jz/i3iwKuLQhZwVnn47+IIWM8Df31WaZmmgBESgCavY2zdnCLbTKE0gugKoXKBiCtQ3hKn/qSqBoU65tvXEqxPTIrkCmkGJ0rgg6bX7qdLzpLRelIqZF3cxuiTojdAgq++1WxAEMoJxKELQwT/sVB+uprviRR7mOzA7wq1JMVju8mZIb/Bt0iucSPjuvz8C+8/EwOFDqdChFE+XuL4Uwuiah4yRlYejJ/FkpumnkeOHKfmEN6z4ta46obJ9VvEUXKEREcIK06Uq3kpBv/WZvVB5cfgTSuT6LziClY8PmC00uqz0sukK9/KOk5iQr+ZP6doMw/KJfEKimMmkY1X3dtfBNPVHOOpWV6Qb9OJAL16qRLlJ5Dtb+sOZBkEdCJr8g0lr/R9K/E/iemnTTQsmUXiWIFZaM9elbZI7CtbqmkErMvPicBT85ln1fcjpVzgTWI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(10067099003)(6133799003)(11063799006)(4143699003)(56012099006)(3023799007)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3l2TW9WSnVSekExVzIxN2JBQzdOLzNRSkROWldjR2ZQcnRqamFyTzZxMzFG?=
 =?utf-8?B?OXlrOFFqTnIreU9wNU9HK1o3eWxrK2IrZ3F2bHZuOGtKY0RwdDM3MWw2Vjdn?=
 =?utf-8?B?cWpVSzNyb1JnWmp0cDkyOHFHZlN1em53SVJrSkFYaGk1WE43UEw5RG5sSmxC?=
 =?utf-8?B?Yk9DNnlZZFlHMTR5RzZaQjN5ODE5UkUxMWpsbG03THlNblNnalE4VklocThj?=
 =?utf-8?B?TENoUWdscGQ4cnpPVFJxRXJyaXVKUUgxNy8zN0F2eFd3T2VYYmY2dnl2NE5F?=
 =?utf-8?B?VHRVRzhyazEvR3RhenpKVUE0ektMMGVkWEorcWEyaVh1YWtMZ0VVZGFWcUZF?=
 =?utf-8?B?M3Mrb3AzU1dmNFB2TUZVZlVPR0lmbmZSSVZzTEJqZ2pvN0w2ak1vWVp6a0NU?=
 =?utf-8?B?SU4vb1NBTmJEbGJXUWtBTVdPUGdWSW9GSGlrZVBoNEYycEZScUtITENuV1hn?=
 =?utf-8?B?S3BwdGU3TC9ZL3pOaU5xMGJCZlF1OEd0dVNrWFE5L1dyekluOWJyUks1SjVZ?=
 =?utf-8?B?OHNvZ3F4VVdXSm9LNm5NYWVvOGtUekM3RmRIVkpXT0JhQ01mTU9KUkJuVSsr?=
 =?utf-8?B?bzJCYThQenN0dVUwU1ZhUmZZelU0WWNvNHhoRjQwa0hnays5SVJHdkRLSnc4?=
 =?utf-8?B?NEsrSE9yZEpRZmowUDdTUVhNVVh4a3NJZHpNUkVPWWRXS0kwamZOTmN6SGY2?=
 =?utf-8?B?aXZxZGNSZnFKK3o2OHlneWpvcncrMEZBSGg3OWI3SU9Ncjh6MmhwVm5TeFZV?=
 =?utf-8?B?SlRVM3E0U2Q2WVY2cHc1LzMxMUF0ZUg3NU1hUUx1Zm5haU1XQlcrT3BISFVI?=
 =?utf-8?B?WEl0b0FNRHNNaW5Tc0NmM05qako0TEZ2akNTc256UWVmK1hBSWEwVFN2MWJj?=
 =?utf-8?B?WjdTR1ppazVmemFBUExJdmVKYWpIMDdNdmxDTnFzUE54NUZaemtERTVkMVhJ?=
 =?utf-8?B?T3dCTmEyRnRCc3Q5L1k2eEF2UEtHd1FJem9WWmdDTy9QZHVHdXBRSkwyL2Qv?=
 =?utf-8?B?Q3JXRjlRUGtoaUlhQ2sycjA4QWR6MEdlTzNVcHNwNTUxV0E0T2JwMWxHYmE1?=
 =?utf-8?B?ZGt4QXB3dmMwcUdZcTRtbGgwYmNOcnA5YllUdngycmZpdFFqb3BicjhrN2NL?=
 =?utf-8?B?Q0ZVbzVlejkzKzEyT2tob1owR2xLVVhUOGlXTTRSdVR3ejhRbkR6Wk9maU1V?=
 =?utf-8?B?TmVOTS9LcEpPUHExeUYvV0QrWS9KREVQT3hDOGNnb1N0OEg5MGlwc2NhRzdk?=
 =?utf-8?B?UG8vb3Z6M2NBWS9WT2hvQWVHdllWSzF4SjFqUkVrd3hkeGVZR3hiODdEVE1V?=
 =?utf-8?B?UkdWZGY3aFpvOGxXcnVtWE8yZFJEMUpGdEs4cHBzemxlOER5Z0Y5bklwbHZM?=
 =?utf-8?B?UTVWR0kzdndqanFlQ3JwVE1KaGIvVFIxUXFQYWV5TWdyV3JkSGE3L1pIeHBn?=
 =?utf-8?B?VVhKWnNwU3lMOWZZOE95ckVodVV2U0NuTk44NjRETG0xSWF2QVpNcUlVWlpa?=
 =?utf-8?B?RVY3WUVIM0N2M1g4Vy9XNm1MQ2lmdG5tVE5SUER1YzVPVGk2WHdxLzZyVjdB?=
 =?utf-8?B?OFVSZ1kvd1U2YTNyTS9WUTEveFBEdmlPNTZMbU5LVUVlaHhUVUtTSXFSQjEr?=
 =?utf-8?B?Z3FucitnVGVvYU10alhQcTdHSkZlcXJ4RmtYYW9RdktUcmlxdzhCZlJ6d09h?=
 =?utf-8?B?dXB4ZGFDRGQ3Q2NyZGYwdFlTaHJyR05OdllEdHNVdTBheDY1ZndOQlVMS3BH?=
 =?utf-8?B?RHphTU5lamlEYTZNMjRXNmVocTJ5cGovNGkyaG5SZ2FmOFVoQ3JEQTU2RHVE?=
 =?utf-8?B?M3B5WVdOcEpjWTJ0SW01TzhJTnM5Y1YyZHJtRUUxd0d2eERoMHczMzlYVEpS?=
 =?utf-8?B?OGV2MFpyQi9Nd0VHUlVhM3NKQmdKNFNMNjBFVGpNZE0zYW9VOXFPNFArcnJx?=
 =?utf-8?B?WWFTNk9lMEMrVW1NT2NxZ1N5VW9ReDBHOGEzSTQvb0tnaFhWSHkySC8rVXJO?=
 =?utf-8?B?czh3WTFvanp3V0NuK3M3VVVuQUJvWENyelRlM0FnLzdFZ04vWHBpNHlYdWVk?=
 =?utf-8?B?aVFldTh2YWF5RUljeFZNbFdDSVpYV29tWUpxQ3lHNnE5Q1VsTyt6MXNVRkkv?=
 =?utf-8?B?SnVUdSs3S3Y0dGVmUGowM2RUYmEyTlFjWU5nVGNGWmtTYkF2dVAvNFpqa21a?=
 =?utf-8?B?TmZ5QXVsMjdFejVNakNhQVB0aGltWVlXN0VVYVgxRWlrRDEyOVFLd1YwOHNN?=
 =?utf-8?B?ZXdIWmNsUmdGTUp3M3FwTzIzMHA3ckN3RktsZUpFS2pWMi9GZTdGVnozaGhm?=
 =?utf-8?B?VWZ4TEszZmx5VEJNbGcyKzVPZUx0T2FmYThuaU4xWXlOb2U4SUc0cWxrQ1Ry?=
 =?utf-8?Q?R6lMOuDI4zuDqr+CfB5WANMnrhIQIcsoD90DG?=
X-Exchange-RoutingPolicyChecked: MSqkwL+4UCK36EfaGwoXHuDWMFp+DzOGvfySjCvC3ttMxzX22Upa2luYOFjMVKJW3Z3dSVRDF8b/gENU3bapKVqN7fjlA+6d2789oX875ddMopnYfeuS1mvXggnhAhTb7V2V7zfwRGSx9PeMXWRFJU1ALSn8UmLz+OJQUpa/UfXrYQc54J8yWPZ5xUAFuViEZ2F8sHYDYEs1IqkAIcT7odlE77c2aL5xv9KQZYJJmU1Lp2u1CIvS8D4A2zbrVvYgxxLGNr3Sll+Y87TLCl/WR8vbJdgeukQLVCRjysaftnbkh4A5QCSrtCPM0WJEOHxqhOpkTsI37HyytcXQf7rFBA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a41acf-b60e-4379-e858-08dee27316cf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:15:06.7027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U+fxNIlTfvpk0cP1mnkj8699vyPDZFrLLUdYFyLQbArudJdNkVVHzj1Bk75+ZFeI8hIKHiyQHMzAX8SKy782MQvaVLQMJxxit1uWNnXoZ70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2603:10b6:510:26f::13:received,10.18.126.92:received,10.1.192.143:received,10.18.126.91:received,52.101.52.48:received,198.175.65.10:received];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 323B975E8B2
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> Split the CMRR M/N register programming into intel_vrr_enable_cmrr()
> and intel_vrr_disable_cmrr(), and drive them from
> intel_vrr_set_transcoder_timings() based on crtc_state->cmrr.enable.

crtc_state->vrr.cmrr.enable

> 
> VRR_CTL_CMRR_ENABLE is not set explicitly, writing TRANS_CMRR_N_HI
> arms CMRR in hardware. Drop the now-unused cmrr_enable
> argument to intel_vrr_tg_enable().
> 
> No functional change intended for non-CMRR configurations.
> 
> --v2:
> - Commit message changes.
> - Added Simplified enable/disable sequence. (Chaitanya)
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Assisted-by: Claude:claude-opus-4-8
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 51 ++++++++++++++++++++----
>   1 file changed, 43 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 95c7b0c05ec3..52fe40fdbdb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -624,6 +624,34 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>   			VRR_CTL_PIPELINE_FULL_OVERRIDE;
>   }
>   
> +static void
> +intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> +		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> +	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
> +		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> +	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> +		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> +	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
> +		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> +}
> +
> +static void
> +intel_vrr_disable_cmrr(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder), 0);

TRANS_CMRR_N_HI should be the last register to be written.

> +}
> +
>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -662,6 +690,13 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
>   	intel_cmtg_set_vrr_timings(crtc_state);
>   
> +	if (HAS_CMRR(display)) {
> +		if (crtc_state->vrr.cmrr.enable)
> +			intel_vrr_enable_cmrr(crtc_state);
> +		else
> +			intel_vrr_disable_cmrr(crtc_state);
> +	}
> +

CMRR M/N now gets written twice. intel_vrr_set_transcoder_timings() 
calls intel_vrr_set_fixed_rr_timings() and then also calls 
intel_vrr_enable_cmrr(). Same values, so no functional breakage, but 
it's redundant


>   	if (!intel_vrr_always_use_vrr_tg(display))
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       trans_vrr_ctl(crtc_state));
> @@ -924,8 +959,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
>   
> -static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
> -				bool cmrr_enable)
> +static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -937,11 +971,12 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>   
>   	/*
> -	 * FIXME this might be broken as bspec seems to imply that
> -	 * even VRR_CTL_CMRR_ENABLE is armed by TRANS_CMRR_N_HI
> -	 * when enabling CMRR (but not when disabling CMRR?).
> +	 * This full TRANS_VRR_CTL write is the authoritative one, so it must
> +	 * carry VRR_CTL_CMRR_ENABLE when CMRR is in use. Writing TRANS_CMRR_N_HI
> +	 * arms the bit in hardware, but this later write would otherwise clear
> +	 * it again.
>   	 */
> -	if (cmrr_enable)
> +	if (crtc_state->vrr.cmrr.enable)
>   		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
> @@ -977,7 +1012,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_vrr_enable_dc_balancing(crtc_state);
>   
>   	if (!intel_vrr_always_use_vrr_tg(display))
> -		intel_vrr_tg_enable(crtc_state, crtc_state->vrr.cmrr.enable);
> +		intel_vrr_tg_enable(crtc_state);
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -1004,7 +1039,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	if (intel_vrr_always_use_vrr_tg(display))
> -		intel_vrr_tg_enable(crtc_state, false);
> +		intel_vrr_tg_enable(crtc_state);
>   }
>   
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *old_crtc_state)

