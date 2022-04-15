Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76480501F8E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FEF10E2BD;
	Fri, 15 Apr 2022 00:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E9C10E2BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649982174; x=1681518174;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5HU7N+DM0Hy8gK/bFCZROkdHNNlSIpzsc2KUcIIF/4A=;
 b=n4TXM48wFNObdvTPhEawDM2S9QVcNwCwafL/b0vh6yY4Hl1qYBVN5CKM
 UZgL4KnrVZrmrTEmxjnKXbxTVW/g72hOKsbugmjbZgiROV5tYrkO6qqRl
 e/rq6pxNMZD+PGmjTlXsHMy8QNNlOM7C4diezGqtX76WPf5TKMR3nQjwj
 RHchVrMvtNsGcgpZAsuDoZV/o4NiulhSzlntyDqtzzNe8d9Bo2gsRRav7
 kzQQX2WPZSofGThlc6zygUYmb3bE/YLIG5jkMLFo3eh2ttdRQ+7QYZdMm
 pepgZJ8NCG7o+avqp3XG8YzI5TmXeW8FqyhliC/UpHZ0szdc26ew19XXQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263239274"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="263239274"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="725573483"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2022 17:22:52 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 17:22:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 17:22:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 17:22:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FtCh9iXmAa8FH91UYB8Rq/5qEgkAfE1TmWmI8PIO7gZbNyXaJgNoXjPow6hVbXNdsJp5tAF8YN1n2Cg0y5xpGQ6kEUPGVN/v8gKzdYV+J6SxyNh+Thr8FGLb8Up2fiv1eHaiCpmP9HuarOt6K5cnmdbAvHBg/FbOIOcDRexLhSXoIGH9hkWOp1Qf+gYHQITiYfP8zhjRoOIMsUncidboFFfClMRpi9Cc+Xm/KntgX8j8ZdtCCxZhjY86TPuaVuobYP22tJUfcR1NBHU8bSGvkW5JXz6GrwmGrmU6nLOgR9d/ka0IewCu8njR3iMY6OjrWOhNykJdwhV6tizgeE5JZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+cHk5+2JZDMnKVx1rOduXUrIxQPbYbWAtMJg1fqfHQ=;
 b=Rf4BaPrpfs09KPJJipgl+BvMRsN648VP+sduk0Wn5b/3eEe7/bvbm1xJNG5R0JCh3RJq+UdMl4nWc9nYw1mLJiEy9/evEBOzZtP4fgyQbnaSAFIyhH9o8TZSM83nOWtUXcT9JNApF0fd/C1sXPIPaDmUsZo3eH6olfADmybmlYTxRVfvZ1yIjD4Cw4Q2sDZqYwlVWSBHxkNCJoebndubJTAC1aWComuSYJ6I5N1tF8sDBjUziGrpQTRoYuHJgjGu2Uou7Uhp+lxln0SzD8fGsOVJ7W1yI4n2o4ULGYhhlZJk5R/XtLSqCuU+rJqEb/j0zxxb194juEOL7UVx5Nxicg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR1101MB2356.namprd11.prod.outlook.com (2603:10b6:404:9c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Fri, 15 Apr
 2022 00:22:48 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 00:22:48 +0000
Message-ID: <538f45ef-341e-70d2-f723-b645b3919ddc@intel.com>
Date: Thu, 14 Apr 2022 17:22:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-GB
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>,
 <daniele.ceraolospurio@intel.com>, <vinay.belgaumkar@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
 <20220413192730.3608660-11-umesh.nerlige.ramappa@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220413192730.3608660-11-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0217.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::12) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9813022c-0268-46cf-7543-08da1e76122c
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2356:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR1101MB23569B2029FB22674980B08ABDEE9@BN6PR1101MB2356.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gO2VWx6tN9rsVRO4Gkqg9bKyX/Y/AG0COiCN225atiBm5ISiId1QCc2g+5eE+TPa2M1xSdN/9WwKnEbDbmLKvjbdtHRchlbiZTcgO8qY+WSTuxuN4e6oumKjbnKDvT7uBkEIyxPB1wqMYzLcigtzpM7T6a61Pdi27exdQGW35N2cKQ3EsDgR2u8AR9U2LrXiS8n9AUaS+UgPUXG91T1bFOtA1SmScuCsVZsmVJlkega/fA8pCfbHoBdz0PW7bcyZudayPryrufjk8gdHJOUPB1yNTVIrBnxAQAK99i3ORZ6CfxL0ymNccC6GMYCgM3YbTs4OJgBl83eBlzQdWY5wzYxAoYxafOsUjUQRpyO3MIPLwdBQwtNRwO9g5DVWtGImjSlBqtWGEj2Mwx1vJRk+PP1MUVZn8x2sA3/t1wnrN4Xkf15R8XOVlKphs1npW0IHR+LM0xXChRS4bjwVxw4Qr7qwW6LodfJkh2fVy587RMr56lJc+SYUwEauZfaD9UGWnr3Fqf488dP45HbafgTszUbNkEg1Th3Zv0Pp1M3/N2J0Balxd0AtjwbbE+BodDtTYgtjskhAcTDmGDFs7znS22gLn/4TK2CEMvZTNqLjaBaPXs4FN3ERREGtw6IC6jI4EWzaXYV0Z90eW7xWsp2rfe2cQHP3WNyhuZhiKPojJFCU4MyV4zgipXG4ev3LQAkDdab27B+5+LaoGqhYrJB2ymWcg4Jkt60MPz3Uzz0QzLo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(2616005)(66946007)(6506007)(2906002)(5660300002)(6636002)(86362001)(36756003)(31686004)(110136005)(316002)(508600001)(6486002)(31696002)(8936002)(186003)(26005)(8676002)(53546011)(82960400001)(66476007)(38100700002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3NhdjloRWgrR2swRzFZQnVEa2lMaU5KUmQrOGZJVUlCc1dVM25YTXQ2VTNU?=
 =?utf-8?B?OWY0VFRhdi9HS2lqZEdURFBPZ0RYa2NMK1RGNHdCZ0QwWWdUcmt2NTVoaWdD?=
 =?utf-8?B?VG9QcXFtSHVaRkpCTUpuVDNQdGtRSVlZSWs5bUNKVzE5djNXWHlDQXFLVHBz?=
 =?utf-8?B?QThiRWdjVmR0dDVhenVJdktRbHRvY3lBdDdMemhwMVBPOVBqV0RVRHFqZkFz?=
 =?utf-8?B?OWRyKzB4cTNMUk1WMGRqM2cxeGgrMk0vRDF3SXdwQVpGVG5iSzZMRjljZU42?=
 =?utf-8?B?SU9xWlFmd3MvWWtIdS9jY2JiaTZlL2FvUkNoaEJPaFVndkNhKzNGMWhPbCta?=
 =?utf-8?B?YkhNWk05VWl6QlR2TUUranQvOEM1YnZzQzRmR25reFJYcUFWRzUrWnluYUlZ?=
 =?utf-8?B?dWF5d3lYVFkzaUI0OUl1Y2dJZm1qRytYUWd5VXpad3ltUmlIQWp4NnplUDdo?=
 =?utf-8?B?aDF0TWtsVTV3R0l0NUV5NFVxQ3VKS0tZZlZGSnh3Qm5PdG93c2ltVE9qenF2?=
 =?utf-8?B?R2owcnB6RU1xWUl6MXF1Tmk4UGZGRGp1Y2ZrZm9HaFM3MnV6a2oweW9NL2Np?=
 =?utf-8?B?MzRkVzFDOGh3NFFuZXlYM0VnV1I3WTZ3N0NkYU5qZWxPVGt4Vm12UFFHVXky?=
 =?utf-8?B?SWZmVzdhL1c3S3hOMjJYaE5jOWtxUnJwTW5FRElLYkxNNVU2VXNqcUVmeklj?=
 =?utf-8?B?eENoaE8rckFhT1EwYzdmYnU2aTB5Sk1zS012WmcrS2JtejZhR25YRHFnaTd1?=
 =?utf-8?B?S0JDcHp4UU5mVGtObXRIczhWQkpQQWRpYlVZWjlhSGVGaGt4dlBMUkhjSmZi?=
 =?utf-8?B?b05lZWN3dEdzQUNXc0dRUnZGZHhhS1ZNZ2RYNU9QNS93TGRuY3daaHF6Q2Jv?=
 =?utf-8?B?Z2V1dm4wSVRKVnVzdHRQR0M5Zi9qM29YWlZCazVQWExMVXlEQldSTTlTSzZy?=
 =?utf-8?B?cWpFUnI5L0YwQTF4a3RaWFlRSFU2QXVJUFgxa3hjWjRpcThVRkswejR2TmY4?=
 =?utf-8?B?ZGJFRWduT3ZvT2lXNUxwdDB2Q095VkpIeC8vc29BRkU4ZmJHNHdVU0tEUk5L?=
 =?utf-8?B?R2tHU2tzb2pWNlhoMXRFS0pyZ2JZaWNLejUxWE1nV2VFd3oyck1VQmFVOUFC?=
 =?utf-8?B?UWtUcFpiNE9VWEFIaEJENWJ4ZEkzbjVHc2xSc3oxdGNyUEthZHdRS1Q4d1pS?=
 =?utf-8?B?a2NiRjJJRXAwNnkwVUswRWZDZHdUUEh2b3VTbGQra1pldjJETUd1NVVqUk93?=
 =?utf-8?B?bzhYdmFpYnU4ejdkMGZjdVNrZFA1eUdyd3NMelFtbWxWTzJML3NaU2xzNlc0?=
 =?utf-8?B?SktZZXN1aVd1ZHlnRmdlRjJJNnBCZEFXWXJmZUZqTU5SSitLRElMTDJ3bkdM?=
 =?utf-8?B?eElpcXQxaUU1OERzcFRCaG9lWnQyclJmNm9scjRGK3UrSDhTdGE4VXBOZkxG?=
 =?utf-8?B?UDlsd2drUGtlS25zZzM4cG1QNUliTkRYYkNIaHVUdkxYSlZHQjFicnVaOFZW?=
 =?utf-8?B?SHpoWDlQQ0lWa21oVVp5YlNsbVV6MmZxQStwMkFMTUZnVi8ycDkyblBVczll?=
 =?utf-8?B?N1JaeU4wNnp4VzI1eC9YZjQ4a2FRT1JnRFFSSTFycGZFQkZHWlBJOFFFMmlj?=
 =?utf-8?B?bCswUmJwV0N0amh4dStDZU93bkpFSlk3Q25TbFFTL0I1TnJLcVRXOGhIaXB5?=
 =?utf-8?B?c2xHeDV1M0IwajBaRHJ6U3ZlVUJTWHNqamx2M1B2d1hLTm9UZDNoejJUeFFn?=
 =?utf-8?B?V2FGUkRNMmZBM2ZZZlprZ2JlNmhTWGxtRzU0Mk1CUm5lNnkzaktSUWQrVG9x?=
 =?utf-8?B?eS9KS2ZMb2UrYUpIVzBmVWRqODhkeW5GaWJaVTlUNkl1ckNBc1VyTmx5ODJG?=
 =?utf-8?B?YmNlOE92ZmRQZlhXMTJxajBZZ2pIVVRGN0VITDNiUEVqY0d3RFplMi9YNFpF?=
 =?utf-8?B?ZVZiWTlXZy94M0FLRmQzTWJQM0FWN0RkMm94STN4Qk51Ujg2MVhVcWdickdu?=
 =?utf-8?B?TEEvUzk1cmE4cC9aYmY2bTROYy9FVVFoL1psUmhOemFIYjYvUmRiRUxrVk42?=
 =?utf-8?B?NlM4LzJSYVhUSWplQTFnWUZnemVGNURMcmZ2bnQrNHpVRWQxbEFyMjdwK1pX?=
 =?utf-8?B?bmtoeXJiaFM5VTZSd0ZoVWZiNkFIdC9DcHdsUU9acXlsU2U5MmhZWUVtaFJB?=
 =?utf-8?B?dXBtN3Vac2F6M2w5Ynp0QWNQeWRGa1ZzZFdhdDFmTEprS3hsYjcrd1VaVmMr?=
 =?utf-8?B?UFcrZERBN2pGUnRqRmxrek5tVXRwbGVRWDVHbjlFajliRGNjaVQyczQwaUpB?=
 =?utf-8?B?NmxkTDVkV0F6bEhKM01BWWsrd0ZCZ2hta0h1VFp5QlVXdU5KdWJyRENrN2pv?=
 =?utf-8?Q?46lX7+0oPNcE/JL8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9813022c-0268-46cf-7543-08da1e76122c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 00:22:48.7474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sAckufqlltcXOE6rOCtIJ9UiKyUsD8MEolUP97889BzzdoI+L1U1GWvOe+zChb+Rps4+RzYiRe12R207Onruz09oHVZKj4MhZMKg9Y3aLi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/dg2: Enable
 Wa_22012727170/Wa_22012727685
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

On 4/13/2022 12:27, Umesh Nerlige Ramappa wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> The above two workaronuds regarding context isolation are implemented
workaronuds -> workarounds

> by GuC. The KMD just needs to enable them.
>
> v2: Use dg2 stepping for ctx isolation WA (Umesh)
> v3: Rebase (Umesh)
> v4: Fix WA comments (Daniele)
> v5: Drop Wa_22012727685 for G10 as it is n/a
> v6: Undo v5 change since the G10 condition is needed
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 8 ++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
>   2 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 228070e31ef0..2c4ad4a65089 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -319,6 +319,14 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>   		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
>   
> +	/*
> +	 * Wa_22012727170:dg2_g10[a0-c0), dg2_g11[a0..)
> +	 * Wa_22012727685:dg2_g11[a0..)
> +	 */
> +	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> +	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_FOREVER))
> +		flags |= GUC_WA_CONTEXT_ISOLATION;
> +
>   	return flags;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index e389a3a041a2..42cb7a9a6199 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -101,6 +101,7 @@
>   #define   GUC_WA_GAM_CREDITS		BIT(10)
>   #define   GUC_WA_DUAL_QUEUE		BIT(11)
>   #define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
> +#define   GUC_WA_CONTEXT_ISOLATION	BIT(15)
>   #define   GUC_WA_PRE_PARSER		BIT(14)
>   #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
>   #define   GUC_WA_POLLCS			BIT(18)

