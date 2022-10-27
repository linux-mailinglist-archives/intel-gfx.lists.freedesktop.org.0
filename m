Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5976100DE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 20:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D32C10E6CE;
	Thu, 27 Oct 2022 18:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B17310E6CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 18:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666897083; x=1698433083;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l5LX/zKYuvh2Zy4WhIDbTqZtn8zTxchavvY3alhi/1k=;
 b=K4Tqp/vU0RiH193wrcGaP2Gwg1O2nvGM5Tu9IHLi4bbRf639YgvOge9O
 FTxURj+bghZgtmetftnHu37heqYhsQBj9ePAwqIp6eiW+kZ5IYQqadav6
 hDWPbaGoDbeBVZWPG2uHqpNagmkgGUyumh2X3p+fdwFDrNDrhvuRyDb8q
 vOlhtcdY+goH/3NKk83cEZ3RX8SSmTGEvtKIZ4PUlI8/LcePoUHjAJsZ4
 tC8Gx4YmnXVuY9SC8aYgC/e9wpU/mXF/zqw77uBuzuUcBA5Fvd72zTbrN
 YVuDYFZWESKkm3m1UA9InEoJmgAfGlKP7dgshXHOyM0IVSh+VnHEKddwd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295724352"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="295724352"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 11:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="737808504"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="737808504"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Oct 2022 11:58:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 11:58:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 11:58:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 11:58:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 11:58:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SMmjzFJjEcB42SBkdiSR7+sWV7vnMtRC/e+kjSgp4Gprr+x3SoWltjlfhk4l2r0gEgbhI5UtVWqju3ysx55QU/mVvzSZnKzHHuzcv3us2IZUlizk+BNvgiirmw5yKWzzHG8KkzYfOwYXP5GVDsopoOM3pQ//5QWBAATbu2Ka8i2/3i9dbawOl0VcFNeHa1c5QWJwmPA66ktX5DY6IquXoamccPVu87I+C9omemO6kguWvoq0M4lQrRHD/SsdH957PNaYQ4ptGxI7sXtG5QFZPMRp99N+bWyanKD+njPuCIViBvhKJeEwNh4WI1CPRUSW1uhonRarv97Z/MKwyMJ0wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RDs2uxY45GmVQ9YJa87pdN5miVJmjGQGi4lvaNByU3s=;
 b=Zbogadnw5ypWDI70zo+77mqCzomNur76JuqsQva7YPU23N5ypNw6diSJbVN34wEHqSkq4olMsyKL1ubIbYwzJSDJzlxnw/vAx83j03TxCSZTesBkmiC9lnP/Fmq6Ot447os4Ev+7t9VAs1/2LVeYnbWQlb8s3tYy8kxrMtUJ4mLpbK0mR0xwCF11270IOf55w/gQebxjFEPmMCFL75x6m91EGsNfmCrePkNoPeJfHyqPy/Va5fnGEi4vcueip/VByXbT64KAdxSodYqWDTXdBnYsn0X7C17oGeKdiksJ/7kFcT1xXI1iTrOcZ8so+gIcFLz8PryW/XHOCqE9OC2sYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 PH7PR11MB5862.namprd11.prod.outlook.com (2603:10b6:510:134::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.29; Thu, 27 Oct 2022 18:57:58 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::5da6:7b6e:4ff5:f7]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::5da6:7b6e:4ff5:f7%6]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 18:57:58 +0000
Message-ID: <091b4c86-9839-10ce-6008-62488ca31fe1@intel.com>
Date: Thu, 27 Oct 2022 21:57:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0152.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::6) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1562:EE_|PH7PR11MB5862:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c4db8f1-155d-48b6-f0b4-08dab84d2a02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WMjVSfNx13ePZZA0krzzKrKOJgOj0O3VbfW8CPUz0ruIAdo3ULUtmJ9KXO2XZtNZvzrG8IwFWPsZ73IU6RYF3/IcLyDF1vjfNv+w3Il6yOdXrZSxRqsgRgtsUeJdbaXnW0uj2D17p+zlMIwYxm4aJZlvavoqFdZlFBo7ouY87feXLHmx1TOxLKQuwbCH7+qqSqbuMvndxHnUH1jyzkoRCpqsB1cYo6Z4ee1AjWx9xwUz4mGHQV1UNhPRRUag1n1Ni2yG0KOZ1N0w5FDKxse9KWCDf4FBpuLfP027yFLRk/JDI5YaRzK2A59kIbZUytgYGlkewito/eyYYg1dkMSvDRFProxaRE8DOHbnMEx0JvkJUMcC9ZgwQpznK0ch99J6CHNdKORp/H/fzknDxUm1RSie31wfw/713ayldCsWy93ooBI5BzCw81E0SOsdIoUhkkYND2BKud8DPQNrXuJrjmKU3uvK/xlujN4MKvHoK0qn/nmqdMRjkJEB0hlpBy5/upuaeB+EcrEhTD94n4F/WBUbgbj/tlW+IyxdM2tWvdLZKze9Tdhtt1PARRqphQhsBghBVk/gNkGtXjKn0UnHVGVJJtxTRFOLEiz9S1sPqgLTKha7soFitYfGht1aQ3LTZJsxWmj+/lrjhknVegq4XcWgoq9UOj0KTDnRPXLO6PjZ9d6OXnFUc167N6PRcSKlXe+KZ7TwuzTgNIOgG++gFVNCnZRBqHgJngRBlJ8cNZDZxThFF7iMT9Pmy8DRWLVG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(136003)(366004)(39860400002)(451199015)(478600001)(966005)(6486002)(6506007)(316002)(66946007)(186003)(41300700001)(26005)(6512007)(66556008)(53546011)(8676002)(66476007)(8936002)(5660300002)(2906002)(2616005)(82960400001)(83380400001)(36756003)(31686004)(6666004)(38100700002)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVBPZ2FOU0d5akN2dzU3My9OYk00RFFGQkJnZW9RVnVjeTBQaFo3eHVDZ1A5?=
 =?utf-8?B?bCtSOER5ZmZ1YThrYWx4Q24vc1VEcC9XQ25ZaU5iRU0ycDVQRyt3K1V5d3c4?=
 =?utf-8?B?a01SdXJWTnlkNnorQmtiYzgrd2hOL1hMWFdXeUhBL1paTUJzR1NPdmk2VkMy?=
 =?utf-8?B?dlJwTzc2M1I5Ly9oRlZIT00zS2FCY3VDeGtTekFyRyticWNHTjBjZTJGaHBx?=
 =?utf-8?B?TkEzaVpnUlBCa0hyNXRIZHVTKzdQZkdaTm4rT1JFa0haUlVBcG1TanZlMHRV?=
 =?utf-8?B?WG5RNnZpSnNDL1hTRWJtYlU4NTBKa2lPNGI3dElCRHY2TDZTNlZvMXR6VDJ5?=
 =?utf-8?B?dG5Pb0Vyb2MrQzdJajYrRC8vYWh0d1puS3Yvd3Z5Z1duakFTZjQ5YzcwdlJr?=
 =?utf-8?B?YUVaU0VsWnFTb0lNWml5UW1odVJWZjlaMlFUVDFiZWo4WTZVczdNRjVwcENR?=
 =?utf-8?B?ZlBldlduV05FMmowQmZ3bmZVNmduRkt4U2hrZitJMmhSK1k4NDdhZHZhZ1pC?=
 =?utf-8?B?MnM5eDJTVERvclFSc2hlY1dYSW1uSGc4aXdYUHoyVDh3T1B4WForaHV6WEoz?=
 =?utf-8?B?elY1N1U2QzBmNE1sZG9aUmpSR0hSQ2lLSkN5bHJSOEtnRlZ1RmJDa0E4Z1NW?=
 =?utf-8?B?Tm41UWhhSHRSMXg2YkdxQU9iVGNWQmhyMzIvaGdsaGhKcXJUT1NIQUc5a1Jo?=
 =?utf-8?B?N0xuRGpydXIzeDVURWhpbjVGaXdNWXRtaGh1enU1bExtczk2S0t0YUQyRmhk?=
 =?utf-8?B?UGRJQWNZdE9QR0xYdGRVcmVTTXVJa1FjeUhIRkdyVm1BRFhMVVJKQk9mKzFP?=
 =?utf-8?B?RTdkUlBMU0VlWjlwYmNMeDZDS01CeGJNRHJ2WGRuanRMbnRLYlBCTlBDQ05B?=
 =?utf-8?B?eSswWnUwbmtpKzg3TllqdURlN3VaMnhENjk5R1ZoSW5vaXYzYkNXWWgvamVr?=
 =?utf-8?B?cXZidFoxSjRvSlFZYW5EZVp5T3VDYUpGenB1THRodmZIQlRIaGM1M1h6Mzc2?=
 =?utf-8?B?eFdtRkRXVG9HMEd2NHpHSktnSjAxdmx1eFpDNTVVTnV3azYzUlhRd0JMZjIx?=
 =?utf-8?B?eU9HdWdxTEtmdjVqUkMyZE52dnJNN0JUNXhiZUUvVnUxajdCVEkySldFbUYw?=
 =?utf-8?B?Q2R5TXkyeU5JMENnZUhYZVo5WVFXWHlJTUphVUNKSHJ4b3EwZWtPVXU4UUFU?=
 =?utf-8?B?TnVRenR2ZktKTndlSDQ1L0piOVNYR0s4OWpZWnRqblozNitYTkFsQ1BneTZ6?=
 =?utf-8?B?cm4wd1pVNEx0NzZJYU5VYTJBTHp0M1VtRWJsQnJzaGlXZnNWeEdRaSs2eW13?=
 =?utf-8?B?cy91aFpSYmtoanZMV092L045YkYyV2FyTHZrUDNkQ1F1UXh3RVY1dmRMTnli?=
 =?utf-8?B?SXpBYzduYm5iNFFMZTlqSUl1dzhjY2ZkaHVjTXY4a2JpSjhZU1I4UWNSdGdL?=
 =?utf-8?B?d09YaXpaaFlXZjQ2eTRmY0pvZk43QzZDNC9KQ3pManFrQ0x6UFBMS2lZeEFL?=
 =?utf-8?B?c0pGRmh3WHN6cC8wS2JnUndPbVBGUlZ2NWdNQlF0WHBJSkUxelAyMXp4VUhM?=
 =?utf-8?B?OXFJM1FUOGUzYXp3Um5EUWpYanlhR1AwOTdPMGVqRlVVWmdYNEl4V3ZrdXlS?=
 =?utf-8?B?dDRLalFqM3NoTlF5cERBQ3FsMCtQdC9LTUtTWks4YUhHTE0wcHlabUxaeHpL?=
 =?utf-8?B?VFdOdXltekw4Nm5jdGZxVVBmQjFDeXpaYWtrVEIrNDhTMm1ETTZaRHBpZGZo?=
 =?utf-8?B?NFVGOUdRNis5WXJLTmNRNzZzSVFNdWx5cy9ONEhVcU9lUGZZOHFKSEVVd2dy?=
 =?utf-8?B?b3RWU0JrdVNWZ1IrSzd4c0FEQlhkdGw3aE9LcFY0VndQdGVEMzA5NUIrSDBH?=
 =?utf-8?B?K2tYa3VkMUNGYng3RUw3bS9zSFZySnJBUmZ0N1R2TW5WTmlwdVpaY0VINkNl?=
 =?utf-8?B?aGpmaUZWMUw4Y1RrbERHL3Zkdll2TGs5Tms4QnBLNGlmOHBERDQrZTgvdm1o?=
 =?utf-8?B?YXE2M2ZpeDg0N3pnelVBdGRabmJYZStIN0s5Y2V3ZUhwT0lTWHppZVZMT0dO?=
 =?utf-8?B?Q0Z5NTF2Qkp1U3NyZUF1aHBPMlpoVVhkN0FNYzVVc0swU05JbkROQzkxRVNM?=
 =?utf-8?B?Uk9JT1Y5eHZoWnRHcDRsOGxOVG8xMnBwa0dFbFBSTU5rV2p4TUF0V25iWlFx?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c4db8f1-155d-48b6-f0b4-08dab84d2a02
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 18:57:58.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jgxRXBNzZ5x1+rSzpcwS6SV69BXkqefbEvsFgV/epkYFfkpPoNlH0LdwrS1Q3LggGnWc7qfy7AWA+YQ66LuOMaXobN4FiWSixz7I8gmYJjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5862
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 00/16] Add DG2 OA support
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

Thanks Umesh,

Is it looking good to land?
Looking forward to have this in Mesa upstream.

-Lionel

On 27/10/2022 01:20, Umesh Nerlige Ramappa wrote:
> Add OA format support for DG2 and various fixes for DG2.
>
> This series has 2 uapi changes listed below:
>
> 1) drm/i915/perf: Add OAG and OAR formats for DG2
>
> DG2 has new OA formats defined that can be selected by the
> user. The UMD changes that are consumed by GPUvis are:
> https://patchwork.freedesktop.org/patch/504456/?series=107633&rev=5
>
> Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/18893
>
> 2) drm/i915/perf: Apply Wa_18013179988
>
> DG2 has a bug where the OA timestamp does not tick at the CS timestamp
> frequency. Instead it ticks at a multiple that is determined from the
> CTC_SHIFT value in RPM_CONFIG. Since the timestamp is used by UMD to
> make sense of all the counters in the report, expose the OA timestamp
> frequency to the user. The interface is generic and applies to all
> platforms. On platforms where the bug is not present, this returns the
> CS timestamp frequency. UMD specific changes consumed by GPUvis are:
> https://patchwork.freedesktop.org/patch/504464/?series=107633&rev=5
>
> Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/18893
>
> v2:
> - Add review comments
> - Update uapi changes in cover letter
> - Drop patches for non-production platforms
> drm/i915/perf: Use helpers to process reports w.r.t. OA buffer size
> drm/i915/perf: Add Wa_16010703925:dg2
>
> - Drop 64-bit OA format changes for now
> drm/i915/perf: Parse 64bit report header formats correctly
> drm/i915/perf: Add Wa_1608133521:dg2
>
> v3:
> - Add review comments to patches 02, 04, 05, 14
> - Drop Acks
>
> v4:
> - Add review comments to patch 04
> - Update R-bs
> - Add MR links to patches 02 and 12
>
> v5:
> - Drop unrelated comment
> - Rebase and fix MCR reg write
> - On pre-gen12, EU flex config is saved/restored in the context image, so
>    save/restore EU flex config only for gen12.
>
> v6:
> - Fix checkpatch issues
>
> Test-with: 20221025200709.83314-1-umesh.nerlige.ramappa@intel.com
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
> Lionel Landwerlin (1):
>    drm/i915/perf: complete programming whitelisting for XEHPSDV
>
> Umesh Nerlige Ramappa (14):
>    drm/i915/perf: Fix OA filtering logic for GuC mode
>    drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
>    drm/i915/perf: Fix noa wait predication for DG2
>    drm/i915/perf: Determine gen12 oa ctx offset at runtime
>    drm/i915/perf: Enable bytes per clock reporting in OA
>    drm/i915/perf: Simply use stream->ctx
>    drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
>    drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
>    drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
>    drm/i915/perf: Store a pointer to oa_format in oa_buffer
>    drm/i915/perf: Add Wa_1508761755:dg2
>    drm/i915/perf: Apply Wa_18013179988
>    drm/i915/perf: Save/restore EU flex counters across reset
>    drm/i915/perf: Enable OA for DG2
>
> Vinay Belgaumkar (1):
>    drm/i915/guc: Support OA when Wa_16011777198 is enabled
>
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   1 +
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   4 +
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>   drivers/gpu/drm/i915/gt/intel_lrc.h           |   2 +
>   drivers/gpu/drm/i915/gt/intel_sseu.c          |   4 +-
>   .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   9 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  10 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  66 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   2 +
>   drivers/gpu/drm/i915/i915_drv.h               |   5 +
>   drivers/gpu/drm/i915/i915_getparam.c          |   3 +
>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>   drivers/gpu/drm/i915/i915_perf.c              | 576 ++++++++++++++----
>   drivers/gpu/drm/i915/i915_perf.h              |   2 +
>   drivers/gpu/drm/i915/i915_perf_oa_regs.h      |   6 +-
>   drivers/gpu/drm/i915/i915_perf_types.h        |  47 +-
>   drivers/gpu/drm/i915/intel_device_info.h      |   2 +
>   drivers/gpu/drm/i915/selftests/i915_perf.c    |  16 +-
>   include/uapi/drm/i915_drm.h                   |  10 +
>   20 files changed, 630 insertions(+), 141 deletions(-)
>

