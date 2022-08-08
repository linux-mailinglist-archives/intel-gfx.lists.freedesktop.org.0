Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 175BA58BE9F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 03:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB0311B39D;
	Mon,  8 Aug 2022 01:07:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95CA11BAE8;
 Mon,  8 Aug 2022 01:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659920825; x=1691456825;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TM5yV9JIr0hC8c71uqFvk4VrM16+poQBoX1oaOuQkM0=;
 b=Gewq4ryKBvSaVh0rphCmYKsMRP2V6e94ZRFvAw17sEY33vHJyCT3paXE
 KmG2SDgbkB6b6L1wIdXGafZ9FphHT7BZgYZGGBDMZ+KxMoNapyQTTwHUN
 J6KhsJLbxX7as/qVE7qMhjxL1JBnx4dlJ12M8SYfuiluDPI6htTNcr7se
 Vj34eb1LZg55XXvwd4LYM5nmwaIvmSTOkxi/TrPGgQktW9MpjHJcK6qal
 7vwyAqmH7+1pzVVUaLo6r5lNXQXP3tFeZkCsNk7mqUfPHw3IhzfzmV2/H
 HBRbndO6fNNcWr6fsHn+qg2KA2NxSVz6FKpDZR5ZzJw3r2JsCP1uVUqEO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="354476051"
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="354476051"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2022 18:07:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="693570242"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Aug 2022 18:07:04 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Sun, 7 Aug 2022 18:07:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Sun, 7 Aug 2022 18:07:04 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Sun, 7 Aug 2022 18:07:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btXJYE/ZXUalMeq7+99cRFFyyFMntCuzCHXo4QKwNk4Z+/vHVgJ+vVIloptSWyWVL1a/8ncSAeRoCOgjpJoHQ1LnabpMYN+2lv70DSpeUvxyv2PDwY0ddkSPtBg2o0WJrryN7gho88A6uzM4CLdMOJaGgkgk203CQKhRXs3uTDh3xqLoCOV35CmEtgdbyaLllqfzFiv8VM4eMUwkXG4OdYTOFjVzoYBR+YZ+U//OlJRVKnfhQVWniHwWVbJiHT5Xm89C1R0kOqTdtbkyPiOIynSHC2RSlNu1RWZ1Bo0MY+vbF1TClwlCWBjMrjXmiDcs8vPP3vnRcq4XhrNhzCC6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHyZwk1Ikb6kpO8Sm9jZcSaIesC5GQlG0qt9+jYyvNE=;
 b=gXfbnA5HJZfZQfveVRGx0BQYdVNo8vuLDDGusFI/vtaRg0P2Ax/uVx/GrBLEc+Npisj6vz7O7UZorh8i21W/g/dNbkmOGpVyNV0nlvD0mbui9w0+FHlsU3pDFwZqOLt7UfXwFZhSSMpp0UO5Y5U6SRkJmXX4+O2lcbJ3w7ZUFuRe7Yu5rsyNmV8DOGSj1UctSS6CmMhox0WcaNUpc1tzLTF5QiJqRIhX7UdCr0X5M1mWcTAvC0ASjHlDxwrZEK+iIlDOqctEyiSmUCb+tM8cZCPYX4XZ7DcryOCaz/pBtF6unaxgoQI4Za7WEcEw5tz7ya3n8TCFxT42yWbsZguHBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6043.namprd11.prod.outlook.com (2603:10b6:8:62::8) by
 BYAPR11MB2807.namprd11.prod.outlook.com (2603:10b6:a02:c3::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.17; Mon, 8 Aug 2022 01:07:01 +0000
Received: from DM4PR11MB6043.namprd11.prod.outlook.com
 ([fe80::2dd1:3350:86d8:ed93]) by DM4PR11MB6043.namprd11.prod.outlook.com
 ([fe80::2dd1:3350:86d8:ed93%3]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 01:07:01 +0000
Date: Mon, 8 Aug 2022 06:37:14 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YvBhwvj+umyYqqry@ramaling-i9x>
References: <20220805131052.441896-1-matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220805131052.441896-1-matthew.auld@intel.com>
X-ClientProxiedBy: PN0PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::12) To DM4PR11MB6043.namprd11.prod.outlook.com
 (2603:10b6:8:62::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 408c84fd-c3a1-4380-5211-08da78da4ca2
X-MS-TrafficTypeDiagnostic: BYAPR11MB2807:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /P0o5ZL1NWNOq5sWQzlljpxrZTLj8LSnlC3Ay/m2PrV8QZIybT8aQpl3p1B2D++KQBagj6RmixnoW1Wb7YAGdlLK4Ah9Zh+OCXXqxLAgwfCaoIlutDD4TIXF12n3v7EJnswJHT93w2Y8/zHuV378rmi8JEOrLRBUSTB7mqX3uTbYA1zK8nuRvyFM3LxMxoG1jDD5c32WM4ThJLFuojFBsoWkfC+FUalL9DiU/1IHSKk/eD7Unmtcq6hQHThK/WnpxNSmX0zWnp60wUpt3KZvdjbHjJtZCOj+GReRADModE/XaT7tJsg3P0v3jym7NVRXrGhY2Hpnwr5xNbzafHKoTzjKK4V1lJk+c+xrr+pgEVwBnbgJzzzGyGzFWOKfRToVo8EmOluEMAZrafrsfk/5vG0yODEv/OruICw5Q+GQdLSY65eRgZRkf59Eq2qsRPC5zPwiR41DG3jzUCl/IBMBZUEnHPpO8OBUc11/JEYPZS2owxpnbo2j95eP3BQVe3KayBsKjeToY4g+/BxfYj5u7ynqMz+OvW6dZ5s3r6SPt7VCB7xkzKiYPc9S/P4JbmdPbLfSSC/nOw71QQms86+J+VdQlRGAARhYzwiYU+brpUP4yif/k810Mn8Td9dh990PiT9u9T9njZrtjTMreMR12Qg2pVBPwsFKu5emetyiKO1k55teiDi34S3Y0a20fvnYW6oa/89RlAc80t+jVTpuR2DHBOc0g2k/fEks0WrqtThnSup7jGqAzq3CINcMBnC8rnoUVqmHhpuq7WSNUS5UGbiTJOxJLbxTaVn1135lJgY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6043.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(39860400002)(376002)(136003)(396003)(366004)(346002)(41300700001)(53546011)(6506007)(6512007)(26005)(86362001)(6666004)(9686003)(38100700002)(82960400001)(83380400001)(66574015)(186003)(6862004)(8936002)(5660300002)(66556008)(66476007)(66946007)(2906002)(8676002)(4326008)(33716001)(6636002)(478600001)(6486002)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTV4VnptZ2NnUmI0R2NWSFdwRFhVTEFiM0ZrRTRFSlVEbEZKKzNjQVNmOGl3?=
 =?utf-8?B?eEZRa1Y1cGEyYjVSUDZlYVErbUF4bjlYaUFXcWlzUlREYTI3amo1M21GbjFi?=
 =?utf-8?B?UkNOZTI3eWo3QVFQZDhNVW9aRkJwSlFxaHFWeHZQYzZVUk1XUlBRaTBRQU95?=
 =?utf-8?B?ZnRTVUF6M1RBcVZuNm1IbTRGRUphdXdTZW53czZiLzR2dmhSMVpxQmJYRTI0?=
 =?utf-8?B?aENORE9lSThrSG1GTTlod1VNaVFkZXFuUjhEOU13eVA4UWdmRkJTZnBlWTFu?=
 =?utf-8?B?MXFGQUV4cW1hYUxXR0xUVUM5NGlxeXB2QUNMaEtGNitwQVFRTG9jc3FhU0dR?=
 =?utf-8?B?L2NXbThMdHR0MnVObVYyQUo4LzF2NHY0VHBpTHJDNDZnTHBscTI0SWx6Q1pF?=
 =?utf-8?B?R2R3SWlWbmFKa1hKczhFTUR5d0JVc3JxU2pNMjNveU1XVXpySmQ1bHdYTnpn?=
 =?utf-8?B?amI4b25nZ21PbG1PQ052Yll6ZXB4eW85bS9RbmMyclRpQllqWW4vbXVjNXJC?=
 =?utf-8?B?dHpEeDRhTVVWWlBsL3F4dGpEcEpWaU9obTQrWlNDdHFYRnZJMloyK1FheU84?=
 =?utf-8?B?UWw3OThZamxHU0h3MjFPY2NDenZBR05qSEhwRGJUeHdRbXRFUWJzUEp3bXhE?=
 =?utf-8?B?cFpaZnhDN1l6c3JybzZUZjlta1l3L3liRUc3T0RJemNqL3lFeVdsSnlsZTh5?=
 =?utf-8?B?TTZkQ2ZmUXVMU2JuL0IrTzJIN0pkdVVmWGxlNTkwZndOQXlNeWcyaGJLUlBY?=
 =?utf-8?B?MHVjZ0MyMWlUaFV4Sy8wY3pwdllIYUZLcngvR3h2NFZNQVlZMWJiVWxrVHQw?=
 =?utf-8?B?NC85UHNibm13TUlEczBqTkxaM1lpcDdLdjdtTms1NjMyNjJIZTNOYTkvcnF6?=
 =?utf-8?B?ZG4yTFVDenRCam8rdjJCQ2lHT05Nd3pxYnQxWEdhZTRoYjh6Y04rVHJhcjZI?=
 =?utf-8?B?YU9MN3lOWENyWFljeGtlcVhMeVQ1U29QZDVhMXBnWFBIUm84VW1yMzdocmhx?=
 =?utf-8?B?NE1YUDlmRjRLRytzb2hyOGpGb1F6SHdtcE5PSmRpMDgxeXdSYzBYOVZuMzdv?=
 =?utf-8?B?Z0hzSDhSb3hjaDEzNkgvUUI2SThQK3Y4NWMyTE9PSVNHaVJIaHYyRERGTVJj?=
 =?utf-8?B?YnBSQ0JSTEZEdWRqNTI4UFJrRHowTGY0bEQxdm91RjEzWUJSTS9GNHRFQ2tx?=
 =?utf-8?B?eThTdWpQb2RWNzM1QW85aTJqdXE0TnR6Wlloc3hpRGNUTFlSL3lETWVocUZa?=
 =?utf-8?B?ZE9xQkdYWGdPK0s5UmhJamhCYUxyU3plcFFwWC83cXVFNzZtWTUrRE9tVk5i?=
 =?utf-8?B?SUpBcFExN3ljeksxKzd1bDRxMHhuSWk4am82cldQNWIvQmpiUGJhbm96U1dR?=
 =?utf-8?B?OXVuTU03U0dPZ1hKRGNGMXBNdWx5VmMzMHZ2UE5wVFBJMmVvOTRGcG5yOXo2?=
 =?utf-8?B?K1pPVE1nUlRtSmNRdmJjRkFCUFAwWmtlaDgzQkVBNFAzTUJYNWMwdXNZSFFO?=
 =?utf-8?B?bDYrTmYrOWh0dUg1VE9lT0VGVS9XZGtDdTlURW1QSW5XdDh3VHZRUGpLMGpQ?=
 =?utf-8?B?WDFRcmsyUkpEZ1ZmVDc4VkZ4MmhlRGZVT2tWSVR5cSszVENRY1ppSnlDaXZP?=
 =?utf-8?B?TTlGL1dheHptOGVmVkhpYUYrVFJ4dXZxNThJdHVxNUFuQ1ZZdURCOFczQWln?=
 =?utf-8?B?OGJiR2FMRTNBT1llZThBa1lDdURhamZSVnNZMTZEaWVlcGhRYXlUNXFsUU8z?=
 =?utf-8?B?UEcrS3pPWTByVkRYbXo3d2dGVXYzeDNXaHMraGdiSWpsdjB4YjhvL0p5TXI5?=
 =?utf-8?B?M3RldDV0SlFDdGRRL0hielNCRm1kWWY2dXh1eE5QWTNWQ3pXczd6TXVRUk5J?=
 =?utf-8?B?MkZna1M5eVUyVXhlOGcyYkRnMGNWclhlUVRJbzBwZDA5TWNPSjBTcVFxY0ZF?=
 =?utf-8?B?N3l1czJPVVFtbFl6dFVDRmVyekZIblBxUk1HVUpMTWRGRWM4N1U5aHlyYmtn?=
 =?utf-8?B?YmpCVW9SbU53T1pRaU54ZTF5WS9NdmpCRW1qRC9xSndGeUloamMxK0FpU00y?=
 =?utf-8?B?SGFzcHhoL3FpZ3JlUkQra2ZDNjBYRVE5UXZjcUdwRUtTRFFjRVBDMXZPd29C?=
 =?utf-8?Q?TLcMZmcaDXh4nKxKT2AWcKK8q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 408c84fd-c3a1-4380-5211-08da78da4ca2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6043.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2022 01:07:01.1506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yb4Bhx/D5bmVps9GL/m5ecYiSLGub/W4BFGHR4npkExU7Z1WZIiOR6cvizQWk3vdzx9f47TuHqRCKmeC72TFmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2807
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_lmem_swapping: add some
 coverage for big objects
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
Cc: igt-dev@lists.freedesktop.org,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-08-05 at 14:10:52 +0100, Matthew Auld wrote:
> Everything we are testing here unfortunately fits within one packet (8M)
> which means we have zero coverage when we need to split the copy over
> multiple packets (including the aux CCS state).
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>  tests/i915/gem_lmem_swapping.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 1a4f4ca5..67e95cea 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -63,6 +63,7 @@ struct params {
>  #define TEST_ENGINES	(1 << 4)
>  #define TEST_MULTI	(1 << 5)
>  #define TEST_CCS	(1 << 6)
> +#define TEST_BIG	(1 << 7)
>  	unsigned int flags;
>  	unsigned int seed;
>  	bool oom_test;
> @@ -477,8 +478,8 @@ static void fill_params(int i915, struct params *params,
>  {
>  	const int swap_mb = /* For lmem, swap is total of smem + swap. */
>  		igt_get_total_ram_mb() + igt_get_total_swap_mb();
> -	const unsigned int size = 1 << 20;
>  	const int max_swap_pct = 75;
> +	unsigned int size;
Since we are extending, could we test for >2G too? Might catch if we ever break the obj size
support for >=2G in kernel. Like using int/uint instead of u64.

May be another test as TEST_HUGE!?

Otherwise looks good to me
Reveiwed-by: Ramalingam C<ramalingam.c@intel.com>

>  	/*
>  	 * In random mode, add 85% hard limit to use system memory.
>  	 * noticed that 88.8% can trigger OOM on some system.
> @@ -487,6 +488,17 @@ static void fill_params(int i915, struct params *params,
>  	int spill_mb;
>  	uint32_t handle;
>  
> +	size = 1 << 20;
> +	if (flags & TEST_BIG) {
> +		/*
> +		 * The kernel only copies in small chunks, so make sure we
> +		 * have some coverage where multiple packets are needed to copy
> +		 * the entire object.
> +		 */
> +		size = 1u << 26; /* 64M */
> +		size += 1u << 16; /* So we also exceed NUM_CCS_BLKS_PER_XFER */
> +	}
> +
>  	if (flags & TEST_RANDOM) {
>  		params->size.min = 4096;
>  		handle = create_bo(i915, &params->size.min, &region->region,
> @@ -733,6 +745,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  		unsigned int flags;
>  	} *test, tests[] = {
>  		{ "basic", 0 },
> +		{ "basic-big", TEST_BIG },
>  		{ "random", TEST_RANDOM },
>  		{ "random-engines", TEST_RANDOM | TEST_ENGINES },
>  		{ "heavy-random", TEST_RANDOM | TEST_HEAVY },
> @@ -746,6 +759,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  		{ "parallel-random-verify", TEST_PARALLEL | TEST_RANDOM | TEST_VERIFY },
>  		{ "parallel-multi", TEST_PARALLEL | TEST_RANDOM | TEST_VERIFY | TEST_ENGINES | TEST_MULTI },
>  		{ "verify-ccs", TEST_CCS },
> +		{ "verify-ccs-big", TEST_CCS | TEST_BIG },
>  		{ "verify-random-ccs", TEST_CCS | TEST_RANDOM },
>  		{ "heavy-verify-random-ccs", TEST_CCS | TEST_RANDOM | TEST_HEAVY },
>  		{ "heavy-verify-multi-ccs", TEST_CCS | TEST_RANDOM | TEST_HEAVY | TEST_ENGINES | TEST_MULTI },
> -- 
> 2.37.1
> 
