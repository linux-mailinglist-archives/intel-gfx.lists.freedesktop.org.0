Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083335AF478
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3040010EA60;
	Tue,  6 Sep 2022 19:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E1D10EA5C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662492925; x=1694028925;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s6ufOQrQmUvzhKTfXqh7CEdgv9x5CGl/+ELSrVqZHlg=;
 b=JgF9aPCWA0cYF9LGhAiNO8iLsx5n0Ux3jrJg1hWU2oB+n1y9ZhChAZ52
 X9jYOO50sFOZLTMnOKsb7DmXff42u1YB3HE3KgUHzihoG/g+CHQu7YQUY
 jH+W8HNRgLchcgjGHMvc57Ot6s8ClJgAvs7jVKxP3UMiPTuwaOfMhbSWh
 GIzhLP9JRZwiBnuEih14IeqLZGMwmSIYACp41lSKD1hIPXJmKme9WQoXb
 /+CwaW+sWZsgmp+2ATf8RuSBaKdKfjORXq4p0iAAd49Ra8z+I+w2WDbSy
 ZIc1I/BtFzYhnpzfSj2pLIawr6aKxRP5apsqNdKQSfHrAieFnfEPf3oiK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="295420922"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="295420922"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="610064096"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 06 Sep 2022 12:35:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:35:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:35:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:35:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:35:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PlEtqfXqnuKWxTaIXQCtJCk06Jc04ZV2OxN8mn0p3s4Qf5xq2TtCcliPzzvE/yVcsAc5JPiWQ60UYk1Y6s38RlhLkYxY4Vt/Gyb14U/31skimBuTwxLti7vXQVvEkEPAYqijIc3TVW6vJtW0Gzgm/TXDtOUtahQBnKlCGuF7XiB8FWBQuUmK3g+UHTDuUJidg3kcbRfUrRaPPqPrExUKUKMcZp1sLULaUMPMqswUcCMtfmgT01Q7uKoQ1flP4wx4fWIZSkiSRf2keUHX1LsXGL3e7x1/8PXrnFaBXT3PrRrJ0m4qXND/Czagv/mGXLI/mvhT33mG1VMkkWjGInn2Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bN7welu8Kyn9RBvLymosZThrOChy/rQyAagsECyhbtA=;
 b=h/2zfr4cFAoTsKMDnSUkhnBt/bx7lYU3WtJqEbWihtcfIm4NNbeEM7CkybSUtdbNT7w/iIEbuV5OZdQkfvJlR8Bd4KgLGP8big1kfWg8F6hgBRGzdS4kSZZta52kBqCmIzVdXkFxqGC7TON5mVgtLgWn/mQzT6+ixZkmoAYbhMLZAGvelkfXYoHiREO4Hy7fYN0d85dSwmhz956nt6S/dbKJ95xLEymFT+LKkxi0cQ2l3KgFgPV2qg99MWVGHZbp2onbzcrSQLTF1btXOEZBl3AvqKDsQpnuJQ+YpK9rz+WFL3AcSZExwedWtCDaoth9bzeRa4O60VJH5ysPWdZZaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BYAPR11MB3157.namprd11.prod.outlook.com (2603:10b6:a03:75::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.16; Tue, 6 Sep 2022 19:35:21 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:35:21 +0000
Message-ID: <7862e250-59b7-f966-820f-5e6ee7afc306@intel.com>
Date: Tue, 6 Sep 2022 22:35:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-3-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-3-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::8) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bcc3ac54-12e7-41b6-e3f9-08da903eef5f
X-MS-TrafficTypeDiagnostic: BYAPR11MB3157:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uq5P1kCikxNMi/pSf9g3VexW++FGgPSU5NemEgj8tIeHOh5HGYPTk3+iQL/COGGxHqzlgaepK9jhFHCOF2YfBortcxhClHJFmJyAjeBERf7RTDJC2dlhTz//8ai8tvcUhpasGCABo/zA19txDgxcMfLMhBtTLgzBusgQ8SxUboMy+io/M78s1qqdvpHfXYLuYOIP8v6PVmXxLkyY1qKawvPOJqluWHKS/PeNrvR8i6Ww9LCzbq8IhDcnI0YQyLxBQP2ya9LgN8NDY7MtWyNKiO2jphTk+23E7s/1qJeNpHGgVtiX0YoK9WanoRtespw5Js2wXafQ6YZavchbVuGxHX6A1ndewghdY6fQBXyvM/0k41P893aYjXyCVmQ0CTWtsKTKAhBGaJgijy0rneAeMZu28MCxZaGMfy9z+h10H+LlBoVkIFlcDsnfiDQQSmGD2+i0Upqfh2ahD59RP1iI9pBCxxCoabGEWqCQlEvYvyNcsZMo240m//bhrleVMMw15jyFy2/fqy1OXJlwQFVsh0oKjcUm2d3smLF9T8wILY0AqgES7MaozTojBAFFSSefSRnJ4iAn4hx2abQy0I0AR0PH6LXuJ6i2sxuc4CmTqxNzTmK0TGWMINrt1eXkHGTcJEJpn3CEPOKapqiYSMzyauBp/EwBiecFyTKQUzR8p6xftY2GLqrNaV5LmGhI7XDUKjUvOGMwVXMDAuTd98f+w8UsdMbsVU1MXquwNvM8NajWovxBP/86sgTypnvFQY3sLdmoHZRCzfChRlo8W6A+9E6SCyAPqfoKWDgezKA+KfDIyrOQt5dWq/y6dMAdh+SZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(396003)(136003)(39860400002)(366004)(186003)(2616005)(38100700002)(82960400001)(83380400001)(8936002)(5660300002)(66476007)(66556008)(66946007)(2906002)(6666004)(8676002)(478600001)(107886003)(6512007)(6506007)(26005)(41300700001)(31686004)(6486002)(53546011)(316002)(36756003)(4326008)(86362001)(31696002)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmJSb2FWazdaRXpqekUrTFBtTWlzN3hOejl5NlovNXoyWGJyVkI3TGhwTWtO?=
 =?utf-8?B?YkhVSzlaTkc3TkFUMUxtTlhlSlBTZ1RYZlU5SmdKRFFoamk0am9XbXBBaXNK?=
 =?utf-8?B?UnZySjR0VG03MUZoTnViWkd2SEphVXdsZFdIWng4aERidGRSMk4yTElzUnVW?=
 =?utf-8?B?eW0vdEtkdHBub2krV2JZcUVCUGxVS1Z1TVA2bm5mTGNkWXBnZ0RMQzVmOXIr?=
 =?utf-8?B?KzBMWjloSk1ZdkJ1T01IUjBqbkRoamNQcC8zdFI5V1NnNWRRWUVvMG9ROXky?=
 =?utf-8?B?cm5HRGhORkJZT2R4T1dkSnh3UTkxVWFrbkJPaVpTeVo3SW1WV3J1RUlhS1ZE?=
 =?utf-8?B?OG1WMEkvNE1SQW1BKzNIanVXQkZEcWYvL1RrZG5qL2RYbkhlTVhDK3ZiRi84?=
 =?utf-8?B?QUtrNndteGZJd21TbnYrczBhckpTNU90STNzK3hQZnNzMndxU1dGOXhoT0dT?=
 =?utf-8?B?M2dmQUlVNWlXWkpZVEhKR05BUEVyNmVpb0k3SmpUd3ZiWlZNSUV3dEtiSnB1?=
 =?utf-8?B?L21kaWMxWWN0R0lWT2pUeUxicmcwRFBXVXRQRG1RYUphL1dIRFRzWUpEcmNB?=
 =?utf-8?B?aUdhQ3ZFQ2NPNzlpajFyRitYelQ2eTFIQVFWL0VOK0tKM21uNHloVmdsZ1BI?=
 =?utf-8?B?ZkR5ZjdoaThlNTVZYlVHTk5td1RSU3JrRW5jNEhLb1IrZUcwMXNOSE45dmli?=
 =?utf-8?B?WVJFZzJ3UVYzVDM0ZTF2M2dGcXhCYUl5d1I1Zjl6VzF1aVd0OXcvZWE0bVJU?=
 =?utf-8?B?NTMxSkJ4K2Vzb2JlaXMxa1NJb2RZWlJEck9SY3RsYnlXbVRIcUE4Wkw5NE9u?=
 =?utf-8?B?d2g2bVJCQkN0VFIxclBxZTk2SDZQQ1dKbE1LL1hXUjBJM3NsSzF0eHZVdUZQ?=
 =?utf-8?B?REFpdGo1NHZHaDR6cnQwaE5ITlpZK0JFRE02Q2tvRXFNaHo5bk9JRS9nYjZF?=
 =?utf-8?B?ZWp0NURGNHZ3M3gvQnFBeEkwdUhTQWU0UE40UFN4REw0OTB3RDMrNGlpK0pv?=
 =?utf-8?B?VDJEZzNIS0EyOCtXNVpqRkVXUDc2eFVxUWdYaFZkRm1WclJ5U1hzZVMyWXY5?=
 =?utf-8?B?NDJFelowRnQrd05mT2FGc0JSUGlEQjRXSnQ2a0R3d2NxVUNqdzBBZlk2U2xn?=
 =?utf-8?B?K1J6OENOMU5iWEpXRVNzOFNHc2xHYzNjWG5ERHBLcjNvRkFpaGtUV2Vpd3NH?=
 =?utf-8?B?VzZRUjJnbmltMllvdzNUUi9EUEZGeDRQQVE2TkdXd1VSdWtWZUM1UXdLS1BQ?=
 =?utf-8?B?NVN2Nk5FSHRVNmFpVnFYWkJGTGJJOWdYaEJaSnRSUVBjQXllRndjVGQ4SHJJ?=
 =?utf-8?B?VVA0RWJVdngzMEwvR0k2VzFYN3B3NUFDRjAwd1VEeVVGZkVXU3g3enBWUlhI?=
 =?utf-8?B?S0FxaTZ0RTBmbjRIUDlLbk52V0tpcENRaVNuMHQ4dUlFNUc4bUQ3eCtuRlVp?=
 =?utf-8?B?Q2NmVkxQVSt2N3l1UTdWWFNKL2o5WjBYVkJmMkduL0sraUZLa2ZsOWx3cGNE?=
 =?utf-8?B?VTJWQzFlQjFUUUNZQ3EyMGZvdG5PbzdFR08xbTFTUHJTTmtUOVRlNk9KOWlT?=
 =?utf-8?B?b3BxY2xhM3UrS29DYm1QbVYwTlU4M2FrSkVvWTcrcTZES2JCM0E5dDh0SXZv?=
 =?utf-8?B?ZkNQZ2F0RnFQamIvTENFVXV5N3p6SElkWk5rOXNpeHUvbnUrYk40aEh5bWg0?=
 =?utf-8?B?OWtrSFRPSC9QTko1MzdJMVk4T3loUzFBejkwNHRGRDhIRmw4NGZEVDlONXND?=
 =?utf-8?B?Wmt3enYzUjhLM0Z5OWI4WDRyWWJpWXl1SWR6aWkyWWJ2cU1wTDQ5ejhTa1Rn?=
 =?utf-8?B?ZFRtTEQ1d1RPNkRDRm1vT3FFd0VZb1Q5Q1RsWmVPT2dOUlpKZGFjbnBEUXlp?=
 =?utf-8?B?ZWZ6SURiL0E3TlJkaUl2U2dwNWZXKzdUSElGL0dTOG9EczVkTTlpRUJPSGVz?=
 =?utf-8?B?ZHJINkFOSTBtVDRqdzhqTHZYZFZlaDQ1LzFwWnpDR2lpbjNOWko1b2F0Um1i?=
 =?utf-8?B?WnN4akF2cEV5N2FUcDU1WjdObkJLZkY2MlBmNSs0MFdXUWtIVFlXUjNHREhD?=
 =?utf-8?B?WkFrSVllQjEzVnZmUXBZeXhGWCtKYVphdFJiRmdvR0JBSlowalF5TVFXc1B1?=
 =?utf-8?B?RDJXSU8vd2h2RDJISW1CTU1qaFIraHBVei9Mc1F6YnRFUENVUURMb1pUeFk3?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc3ac54-12e7-41b6-e3f9-08da903eef5f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:35:20.7413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dTrRLB9BomZmJMWDF/jeCPF6CALaqgryumoLgfELraOh3JADQEsRHGZN32nBx7GJGeOOBbbJ6TKDdZp27Wu4CUsfp40J4DQ2E1EXpgpKFFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/19] drm/i915/perf: Add OA formats for DG2
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> Add new OA formats for DG2. Some of the newer OA formats are not
> multples of 64 bytes and are not powers of 2. For those formats, adjust
> hw_tail accordingly when checking for new reports.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramampa@intel.com>

Apart from the coding style issue :


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


> ---
>   drivers/gpu/drm/i915/i915_perf.c | 63 ++++++++++++++++++++------------
>   include/uapi/drm/i915_drm.h      |  6 +++
>   2 files changed, 46 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 735244a3aedd..c8331b549d31 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -306,7 +306,8 @@ static u32 i915_oa_max_sample_rate = 100000;
>   
>   /* XXX: beware if future OA HW adds new report formats that the current
>    * code assumes all reports have a power-of-two size and ~(size - 1) can
> - * be used as a mask to align the OA tail pointer.
> + * be used as a mask to align the OA tail pointer. In some of the
> + * formats, R is used to denote reserved field.
>    */
>   static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>   	[I915_OA_FORMAT_A13]	    = { 0, 64 },
> @@ -320,6 +321,10 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>   	[I915_OA_FORMAT_A12]		    = { 0, 64 },
>   	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
>   	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
> +	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
> +	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
> +	[I915_OAR_FORMAT_A36u64_B8_C8]		= { 1, 384 },
> +	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	= { 1, 448 },
>   };
>   
>   #define SAMPLE_OA_REPORT      (1<<0)
> @@ -467,6 +472,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   	bool pollin;
>   	u32 hw_tail;
>   	u64 now;
> +	u32 partial_report_size;
>   
>   	/* We have to consider the (unlikely) possibility that read() errors
>   	 * could result in an OA buffer reset which might reset the head and
> @@ -476,10 +482,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   
>   	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
>   
> -	/* The tail pointer increases in 64 byte increments,
> -	 * not in report_size steps...
> +	/* The tail pointer increases in 64 byte increments, whereas report
> +	 * sizes need not be integral multiples or 64 or powers of 2.
> +	 * Compute potentially partially landed report in the OA buffer
>   	 */
> -	hw_tail &= ~(report_size - 1);
> +	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
> +	partial_report_size %= report_size;
> +
> +	/* Subtract partial amount off the tail */
> +	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
> +				(stream->oa_buffer.vma->size - 1));
>   
>   	now = ktime_get_mono_fast_ns();
>   
> @@ -601,6 +613,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>   {
>   	int report_size = stream->oa_buffer.format_size;
>   	struct drm_i915_perf_record_header header;
> +	int report_size_partial;
> +	u8 *oa_buf_end;
>   
>   	header.type = DRM_I915_PERF_RECORD_SAMPLE;
>   	header.pad = 0;
> @@ -614,7 +628,19 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>   		return -EFAULT;
>   	buf += sizeof(header);
>   
> -	if (copy_to_user(buf, report, report_size))
> +	oa_buf_end = stream->oa_buffer.vaddr +
> +		     stream->oa_buffer.vma->size;
> +	report_size_partial = oa_buf_end - report;
> +
> +	if (report_size_partial < report_size) {
> +		if(copy_to_user(buf, report, report_size_partial))
> +			return -EFAULT;
> +		buf += report_size_partial;
> +
> +		if(copy_to_user(buf, stream->oa_buffer.vaddr,
> +				report_size - report_size_partial))
> +			return -EFAULT;

I think the coding style requires you to use if () not if()


Just a suggestion : you could make this code deal with the partial bit 
as the main bit of the function :


oa_buf_end = stream->oa_buffer.vaddr +
	     stream->oa_buffer.vma->size;

report_size_partial = oa_buf_end - report;

if (copy_to_user(buf, report, report_size_partial))
	return -EFAULT;
buf += report_size_partial;

if (report_size_partial < report_size &&
     copy_to_user(buf, stream->oa_buffer.vaddr,
		report_size - report_size_partial))
	return -EFAULT;
buf += report_size - report_size_partial;


> +	} else if (copy_to_user(buf, report, report_size))
>   		return -EFAULT;
>   
>   	(*offset) += header.size;
> @@ -684,8 +710,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>   	 * all a power of two).
>   	 */
>   	if (drm_WARN_ONCE(&uncore->i915->drm,
> -			  head > OA_BUFFER_SIZE || head % report_size ||
> -			  tail > OA_BUFFER_SIZE || tail % report_size,
> +			  head > stream->oa_buffer.vma->size ||
> +			  tail > stream->oa_buffer.vma->size,
>   			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
>   			  head, tail))
>   		return -EIO;
> @@ -699,22 +725,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>   		u32 ctx_id;
>   		u32 reason;
>   
> -		/*
> -		 * All the report sizes factor neatly into the buffer
> -		 * size so we never expect to see a report split
> -		 * between the beginning and end of the buffer.
> -		 *
> -		 * Given the initial alignment check a misalignment
> -		 * here would imply a driver bug that would result
> -		 * in an overrun.
> -		 */
> -		if (drm_WARN_ON(&uncore->i915->drm,
> -				(OA_BUFFER_SIZE - head) < report_size)) {
> -			drm_err(&uncore->i915->drm,
> -				"Spurious OA head ptr: non-integral report offset\n");
> -			break;
> -		}
> -
>   		/*
>   		 * The reason field includes flags identifying what
>   		 * triggered this specific report (mostly timer
> @@ -4513,6 +4523,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>   		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
>   		break;
>   
> +	case INTEL_DG2:
> +		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
> +		oa_format_add(perf, I915_OAR_FORMAT_A36u64_B8_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_A38u64_R2u64_B8_C8);
> +		break;
> +
>   	default:
>   		MISSING_CASE(platform);
>   	}
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 520ad2691a99..d20d723925b5 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2650,6 +2650,12 @@ enum drm_i915_oa_format {
>   	I915_OA_FORMAT_A12_B8_C8,
>   	I915_OA_FORMAT_A32u40_A4u32_B8_C8,
>   
> +	/* DG2 */
> +	I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
> +	I915_OA_FORMAT_A24u40_A14u32_B8_C8,
> +	I915_OAR_FORMAT_A36u64_B8_C8,
> +	I915_OA_FORMAT_A38u64_R2u64_B8_C8,
> +
>   	I915_OA_FORMAT_MAX	    /* non-ABI */
>   };
>   


