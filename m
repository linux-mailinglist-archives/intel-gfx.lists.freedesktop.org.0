Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19F362B6B7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 10:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7CB10E455;
	Wed, 16 Nov 2022 09:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B02110E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 09:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668591594; x=1700127594;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IIq89L35jL8ryfGE/RI9u5LkwLRM+4hOE+iQy2qtHLM=;
 b=NU/rJuEH9ThgdRZJlA3Dql7cf32eQ9IhCo6smhmRF6chJRodgCnr6982
 18+LZarF7vNxtlJ9d8f31sAeuTveVNFxFjPDtw8lPdWgC6Zm3F1ld+zsU
 iCd7jj4x4KK3G1g/UaYD2DXlrxMBHacJnOKiuHEoVQUfBqtgSjrZInCb8
 JBl8ee/NM9XAGN5gu0so7Ke5e4XLWZDjvudFyNy2pguxMzdBRo0bXbap1
 UFPBPwEMMaS/zDBLUGHc9gZ/pfRZv4R7fvOayVmaCO4braEUEhD7l8lC/
 2vCkpKYvqZD6qwv4nzUzkXF6omfZz6fLZhQNEz4akTTjRuTK4JAA80YOK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="292205586"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="292205586"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 01:39:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="814023163"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="814023163"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 16 Nov 2022 01:39:53 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 01:39:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 01:39:53 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 01:39:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JphusT0Jbb30yydYZSqZ089JrwSLsFIFRoqmk3QM2onwK0CNBZS48531PmbP5nhgtFPx4a0Makn1exhW3gQa1M/byzgh7VJm0oviMfAixO2tzQiRa2ZW5IhlA6Bn8sX7GCEg86+zU1AQyj3xSSMwx51uXuWgrtg84mARL8qZUE0i5vmsB5+DtOXqphl4WtW7H0+Iw5Pe6QrfvHVsI3sQuWqzU0p/EoaQ399sDIywhIYaDOaApjEp4q4EPHohcOVev+UTii3fPo9gZM5URoD34r2h3yGzW5yblSmYui24ZSIH1r+Ckk7KJl2H4qrtVbkLSjmGLwiftu3FHX9esMqhJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ieZNEWbj/YOD+978Jl2wTlkhP7AYJfkLf9P11IQ6tz0=;
 b=Th2shVlF2ZimBpTllgPS0aWlTCecuwr0eJM3Ar4QBVy4oe63wnjaPGgMivg0RzXZrioAL0gHlOBh4PPd260cPkfSoNgRq3IenkTbZC5SppBz1tkSFn6vC8+OmrzniRSFrBaVeZDksvAqqGUev4J8AJpmZZabhuTOwbqXz15wh3amlDlYEHfgqFcmJMIhDmKEfatYuxs2P+j+fgdgFxBFsyzhP2WvmBlMN21J7ffdU9RulqLdT6C3OZhvnLT8fkWk8eUfZH58YtsPLZ0RP139i476NaizsBAM1YbBN+83UQQAmFoJBHM4SuTLWGxI9diVQzj5sKzr8Qw2EcTVFkl5/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by PH7PR11MB7147.namprd11.prod.outlook.com (2603:10b6:510:1ee::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 09:39:51 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd%9]) with mapi id 15.20.5813.019; Wed, 16 Nov 2022
 09:39:50 +0000
Message-ID: <62148f04-d9f9-82a7-5871-d5dae24ad818@intel.com>
Date: Wed, 16 Nov 2022 15:09:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0076.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::11) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|PH7PR11MB7147:EE_
X-MS-Office365-Filtering-Correlation-Id: 128df29b-6f8b-46b3-d37b-08dac7b681ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m4beQth/LBV5Z5plm5cauVCTULZYVlyq3bnUC5nr0Kh7ONZQ4NpmJsog9oD1Be2aV7EwadVZ10+lj3OAGLJOvLGQOrvYxPWpWDuzBDu1WYUHW9olKriu78m0lfWIEpgu3VFqEjCxGMHGz1CE3JCvEM0DMJEn08lkyjNbKhVpOFT6e4K7tCEYhqtVn3Rw8/Z4pSUymnaWtp3goaxDKE7ZX6E6NMcV2sRLEKciW4jkPxdk+zAIgn6KVNdj2rI/E6XqFxcOBwZ+TPWTfbInbpCH55q8i2qa5cCxQ8ihjDXS22E6XV5xTsnuOg/s+uKEibJByupR7hr+OS0ijMPPuoufdEwjB7b6YkiT8GUg1hvUErfPZg4x4/A/bCMN9mCo076DR7wA6kC0Tu9uypXeHdn5W4S/f4K419uK9ZSYpUAszX7AJGNyG/47T4FwvgubC4tElmtc0qo4pBQObusz/aOpPnoaA97mY2GQCbVTkhXL/5FpNT2IOSyuFlyCyeS/gbmJ2VOXeN04dkrnER+Gv3bzfmxIagXK4ythhcNxAlwPqCTY0EZ75TfQ1OQesrD5Sx6YI6TRVwOuhTxPkC6Ymq5I/k8Zsk0BLW2UfTNuZE4pdNlqNwiNjLHQrfvBJbUIwMazUKcRGY9KVzu8ufPa+Mi1C2TYJ03qKyxcL02qmR6VQfTbfHqNU8MVN8RxTUXNy3A+TyVpxx8SeVx+6ee5eNydRXfpKk5j2Us2FHibdsbhlPbyRv57MF74GHTYlx35ZXdWNXkfPivEV30LlXIUdD3LRLglS+RSMugVwOlE53egPZk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199015)(31686004)(36756003)(31696002)(86362001)(82960400001)(38100700002)(316002)(6506007)(53546011)(107886003)(6486002)(478600001)(6666004)(5660300002)(2616005)(8936002)(186003)(83380400001)(66476007)(2906002)(66556008)(66946007)(6512007)(26005)(41300700001)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cndacVhoQmRBTDJJYUVzczhycnhVODM4OXFndnlXeHBpTHAyL3hkR2hwWlcr?=
 =?utf-8?B?QmxNb3pOWlZQaG9laUhVNFoxbC9kZ2V4SGxkMXRYM3Z1YkVXT3dVdExxamJ6?=
 =?utf-8?B?Umd3eXU4QXNCNjJpcFlIWUwxL3NWUEgwZHkxSGIxVWsvZWszQTdEMGlrOHVr?=
 =?utf-8?B?eDA1QVZLVExjbTdrNVYwK3cwd0tkQ2JwQ1Nnam0yOWdMSmJsY2wvdHhHY3RP?=
 =?utf-8?B?WWtvZUQ1ZE5OQlVqTTkvenR2c3VPb2FmTVBvWUp6YjRWYnhJYlVhcjFnRFZC?=
 =?utf-8?B?L0QxcTl5OTdBNnlCQmRoME90MjJXM1lYN3hJdlFsQWNhMFJnMWJ3b1hHQ2xD?=
 =?utf-8?B?UEpnQjhtejV1VTc0U1YzR3E5RFc2SjR4NmEvWHVIcXUzVWlFOUJvVDRWU1hW?=
 =?utf-8?B?Nk9pdTVzblpOdlBkREhuVTFXL2lJYkRTbXZJSFBCR1E1QkNLZHFpV0t5RnFP?=
 =?utf-8?B?cTNWYW5qemZNajVNTmlrNFlNQjJsTERHTjV6VFU4UExPYmprbnVaYmRjYnNB?=
 =?utf-8?B?WVBoOUF5b2RNcjlZK0dpME5FWjk1MVNuSnlBSHpnbFErVURMR2RKMU41YnBU?=
 =?utf-8?B?NFc1OUpqSzhDU040dTdTM2dxaXlZNlZsaVVya0xCUHFXVUpSeUVlRDRXcHlX?=
 =?utf-8?B?Sk10aFRpVzVQOC9FRUU0TkdiKzZBNjV2WGtHUGtjUjRZbURNNDVPRXRkRkQv?=
 =?utf-8?B?YmhUajdoWVlnYVRTL3BiTHRUTDBGRzZmYWlhdGtVb0F4cXNOV21ZS3k3YlFM?=
 =?utf-8?B?OUZsK2RtTGduOEgrM0EvcjBIVkk0NjkvWGtXWnVLSi9XK1k5Y0FwN2o5aWJv?=
 =?utf-8?B?OW9UcUZMZTRpOTBzNG1tNW5xZEhiTEgrUlFIZlR3cjBWdzc2TWFLRDN2NEhI?=
 =?utf-8?B?ZmUwWXZNSklYdG9meVQ5TlJQYW1LeVRrY3g5UjNLSHhOQ2l2V1Uxa2ZLZ2x3?=
 =?utf-8?B?VXFuR0xMYnczbkxDYzVaQnRYSmtHWWxMdWlqWjlENjF6QWxTZHJkKzFJRHIx?=
 =?utf-8?B?NGFma1hGTXJodlUwbE5LK1Zmak44R2tYSFdzVm1Xekw2K0NHTEIwTnV2WVNo?=
 =?utf-8?B?RlFNdHAyTmRhU1pPU2g0RzEwZVRJbXNSYksweUhnVnVyZDFKQnQ4L2txYlIy?=
 =?utf-8?B?a2hPcTVLUmVDL0pVK2h2Ti85MnhydFNKSkdEbDM2alZvdGFSRjZqc0dvTndE?=
 =?utf-8?B?K2JyR0NoaHE0NHVtVXZMRkJTVFVDV3FsZkVNMVp2Rys0VzlKWDdLY2ZpN3lG?=
 =?utf-8?B?RGl5c0lza1N1Z1BlU0tzbUs5UGtaeUw4ZTExbzJSK1RZZTg3bXRVWjBZT1NC?=
 =?utf-8?B?UGVQdCs4dHltc0VFWW1JSE5xeXZRRmVVSE1LZUJXeFB3ZnArdWZnK05jaDhJ?=
 =?utf-8?B?dFJKRXYvUzFLd2VaSXQ0a2pFOXFGTEFiWm9MTUFjbGpLY2ZneDRaMEpjdTJ2?=
 =?utf-8?B?RDFxYkpTYTcyeXptRjhPTDRNTnhzSUN5bm1CWDVEcnBwNWRJbTVMaFdQUlEz?=
 =?utf-8?B?b0pLbjc1Q3pITktTOExSUkNJazJQejNQTDJXMjIrT21KeVBpSU1rUEl4Rm5Z?=
 =?utf-8?B?NlVsS3paK0ZDWlZDSkR2TWZSMFVtOVdZWmxaa0IxYkdpYUozSUpSUktNYjJK?=
 =?utf-8?B?d3dwZGptOVBVR3RkeGsyV1RReEdJdVNTOFVqUk1jSFFya1NKTzZFSHhzb1ZY?=
 =?utf-8?B?VVJoM2hzUWVSZHZUVHF0cmFtQmVmYnRBQjJhVEIybEFlTnNZUEowOVJkNlAr?=
 =?utf-8?B?OUJKQ0M3T1NoaHpzRmZCZTJGSTJSSnFvNUthMFFzWU0rU2xpdnBqZjhJZHB2?=
 =?utf-8?B?bXlzdWJyYXUwQlRORlRwM3IrYTVaQStsOXI1NUF1QXB1UUZrcjJxTmh2bXlq?=
 =?utf-8?B?R0NOTXQ4M20rVFpwV3ZWQmZ4b0R5RUhKdkxmN01xbitlNHUzMjhNZU11aTd4?=
 =?utf-8?B?Q1dFQllNaG04MS9JNXFMTFBITjFBdVFVTnY1TzhNamZBVWlnenJxalNGZzVU?=
 =?utf-8?B?QmJ1SGNkZ0hLZ1lETFJwNGdaZDJXS3FBcGJ5aFIxUmNWdkZFUU5zY0w0bitD?=
 =?utf-8?B?TjJuSnlyT2p6NHdHbHlXTFI0OTB1Rk9KcWxPdUs5RjJtZkQ5V3JBZnJQNkh2?=
 =?utf-8?B?b2FQeFZORTV6NkpzZ04xVWs4aVBRNXpCZmlyQ1hDajJRNXo0YXFUUmxKd3JG?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 128df29b-6f8b-46b3-d37b-08dac7b681ed
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2022 09:39:50.7605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MIS52Uveoy8k+V56n9fm69UWXL6AQhtcFM5QE4E8zlwqweSsVV5gSZo4UHzS7GXgM0Mzt4IStcDLKCbzMjiyGFMNMJXFteO3hmmcwecQDE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
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



On 15-11-2022 13:38, Himal Prasad Ghimiray wrote:
> Export lmem maximum memory bandwidth to the userspace via sysfs.
> 
> Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h   |  2 ++
>  drivers/gpu/drm/i915/i915_sysfs.c | 27 +++++++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c4921c9a60770..3ba1efa995ca9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6603,6 +6603,8 @@
>  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> +#define	  PCODE_MEMORY_CONFIG			0x70
> +#define	    MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
>  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 595e8b5749907..0a6efc300998b 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -37,7 +37,10 @@
>  
>  #include "i915_drv.h"
>  #include "i915_sysfs.h"
> +#include "i915_reg.h"
>  #include "intel_pm.h"
> +#include "intel_pcode.h"
> +
>  
>  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
>  {
> @@ -231,11 +234,35 @@ static void i915_setup_error_capture(struct device *kdev) {}
>  static void i915_teardown_error_capture(struct device *kdev) {}
>  #endif
>  

prelim naming shall not be used.

Thanks,
Aravind.
> +static ssize_t
> +prelim_lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute *attr, char *buff)
> +{
> +	struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
> +	u32 val;
> +	int err;
> +
> +	err = snb_pcode_read_p(&i915->uncore, PCODE_MEMORY_CONFIG,
> +			       MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> +			       0x0, &val);
> +	if (err)
> +		return err;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
> +static DEVICE_ATTR_RO(prelim_lmem_max_bw_Mbps);
> +
>  void i915_setup_sysfs(struct drm_i915_private *dev_priv)
>  {
>  	struct device *kdev = dev_priv->drm.primary->kdev;
>  	int ret;
>  
> +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
> +		ret = sysfs_create_file(&kdev->kobj, &dev_attr_prelim_lmem_max_bw_Mbps.attr);
> +		if (ret)
> +			drm_err(&dev_priv->drm, "Setting up sysfs to read max B/W failed\n");
> +	}
> +
>  	if (HAS_L3_DPF(dev_priv)) {
>  		ret = device_create_bin_file(kdev, &dpf_attrs);
>  		if (ret)
