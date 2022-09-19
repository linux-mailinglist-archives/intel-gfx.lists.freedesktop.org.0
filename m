Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9A5BC9B1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 12:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9519910E600;
	Mon, 19 Sep 2022 10:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8AA10E601
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 10:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663584335; x=1695120335;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KBcpuZRFOQAgM69xxGeYZTe50Hwq+sTJEupGIJbyE2A=;
 b=UyKB7DmM9NJZPSdLpsrFpVYZMZqdxdVhiil5EGP2NyO0P9/r4YOdPB2z
 kqUuHF/FKNtfo6scbvXDKTu8NBbQ0W+PfhqEdUQMFI5h/X9orGhLE+xWU
 4z18zlg9J4g/lyD7K6XUcC+uCcfP8i2CURlGoAJ6CrZk2bgZTj5zgA6QS
 7usIi6QsjUoY+pUQyHTbLy90viin6kN/iuyvo5i52wcmuWyJblEj2IOcS
 XJmMeudtexiHsO0YHyczlc9CL+t0hfiqWrG0Efx7+0hHDMSWjOHB2o1MR
 yHVCe5sjevASbWKhC6GH5un7w6qzfWgiJCwG2nX+QVzvb+QljdMpWxgvO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="299357120"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="299357120"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 03:45:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="680801902"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 19 Sep 2022 03:45:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 03:45:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 03:45:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 19 Sep 2022 03:45:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 19 Sep 2022 03:45:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aLJKvYyQxX05zaVcuUy2NOTj/2H4mY55f6/yq/flIokR6sw+du6ZbOUg3o7sl5DWvpqDe46XMPVjqpZvSgxRHvosVNeiYusCIJ+A3Mqxu3Sa3x5jYqtZtV9Cos53zKtKnD6298935RRZ5g214/vBAMjKEzoHqpX7kZozCUPCRnilHpYlkJcCuT8QVUU3TgylqpL6Y5M7HJF28eOTzyu46HEpCZY51F3d1mBrcBuVrQDjuqDreFYAX6jzuWpQ8RHHFVpQSZu3DTvXii3DUq2bdxrzH+e7rX0n2Uz+0nWs0l5FKWVkjzLt+fv4t2CYlXwz8O7w8gKlPRtiEvjd/b4faA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tt4ncPVp/unccMAwXkHFloTDYzSRsaMUVrbSGhAtA9w=;
 b=hoQqyMRHBe84ZpOnPPQqgrVUwhqq+whbPFv/2y5SlVoQ6/BWEJ9DFtA6F0mLGgYp5QTt6rVmaWTYVGCLhGuzUFFx/mlwWberTOWrvWZdHpQWzqI9mb7RvrHl93JDQ9LyN5PD/d842Hqp7x0jSFFIaOqfghWRMOIpLbJ6tga/W/FEPc+tLjlkcpHhFpfS08vSxxartc3uSbsEZNx0dRYoN5/6Ia7ziI9A1wIHDhXXo8OrHhHjLGCLBQBumVyqJ/QUhookSLtXuug/VuNYRBG0JoOBx6MXEDehvPkt29lVtxSObTonBxJinR0GbwDjWJEaOpQK/pSs+gsuFHvDdUUYqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CH0PR11MB5706.namprd11.prod.outlook.com (2603:10b6:610:ed::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 10:45:32 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee%8]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 10:45:32 +0000
Message-ID: <dc03c996-4803-5c01-fc3e-d24aff04e16c@intel.com>
Date: Mon, 19 Sep 2022 16:15:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: <lakshminarayana.vudum@intel.com>
References: <20220916150054.807590-1-badal.nilawar@intel.com>
 <166335114018.18048.10796711608998995311@emeril.freedesktop.org>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <166335114018.18048.10796711608998995311@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0032.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::22) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CH0PR11MB5706:EE_
X-MS-Office365-Filtering-Correlation-Id: e8954f8a-b391-4f2a-a639-08da9a2c1349
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9+uRbDq3xHorwOelvErwIihPUexUUjwg8RcLC314GzUS6Xs2K9BoX0jKGpzZNH8oqzPWQUsE3pc/wKLPLi+GZN5/Zaj95LhlhC/KvMCOMjjNyxdfK/yMlKplEPQpKX1H9shTPb5I7vUwG5w+SzUfU6fAtb1f1I+esuURpMoJKE+yWJdCG1YjZKwTddWHD4P+z882QznVlugefjsAr0P4psihrGJtgmlzBfZopyU33xYYpes97inBSbG04HO+3wUMXBFTo5wX+wn+zQO7IduCq3pCcEQjJ6TxP/mL5hOj099oylOb+Ba4HZrOBGCF54fiB1h77Cexg1uvj+r6VAlX7uXQekSYqFcjRlWdavEFWjZ1di0i0IOpFI5cztw2G9zVAoyT8N/4ZiXRsADzAfd1t9POtm9NghBYJcmtL/cWmyKsT493JQE5uujPg8WlU7IOX+OR6tl26xm0y6N3etOjh+OtTRzoPkCAsnrBBbEcw9yzE5yTSBuBV5wIHUpCHOaGoVdFjTcMtYDy4/Po2i5VP0AI70ttn6sVpTlwrvEENRpa7ZNSmnohomgNmv9t6T6NFId/SmDXm8N0Jmr4ydS/VW7sIRTwjdu7mrmH6WGz8DIKa2b6tmoALQR3zhEYxcJrvxgbbU3WQGcOW3sIkavOnZ4m1x9JTtpWwtShu13kt6HQ1aDSAgxUl5XXsgJome814r/DsMGUpJeQ3kWBUhWruBYDeCKg+7kcOZFi8T5Nr5ii8z9r12y2K8jWNMenwenDgwoRorYIMJAgmDwLzkVE1SgyhTm7ljH29CEhEw+zPKdii1qzD1VJvp+TuwtsGTy9FH6W8vEcDp8+uAzR6FrEcA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(396003)(136003)(39860400002)(451199015)(186003)(38100700002)(2616005)(36756003)(66946007)(82960400001)(8936002)(66556008)(66476007)(83380400001)(2906002)(316002)(966005)(37006003)(41300700001)(86362001)(6636002)(6666004)(107886003)(31696002)(6486002)(4326008)(6506007)(6512007)(53546011)(26005)(478600001)(34206002)(31686004)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkdXQ1Y0MG5NdW80SFMyM3NKbWNjbElmdFVaY3NWNksrNGpNZjM5cmVsck1S?=
 =?utf-8?B?TFZLR1dBdW03ODhFRjRHNHE3bnVYZ0RjWkRmcnZqQ0pxK3dNSjhrczVQcVBk?=
 =?utf-8?B?OHNtUkR1UVlkczRzNXdUTFZWZVVRMEtoYWZFS1MwSk4rVXpEblFWOGVDL2d1?=
 =?utf-8?B?dEFwTFpsLzFBVHdaTnJFYjY4M3ZRc2tlMFpuNUVUcnl5VEV1QjdFQ2Z2c0Jq?=
 =?utf-8?B?NmNHQ2F5bTM4MDFmaDQ4Y3lrMjlZS1NDWVdkZ0dKb3lCeFppdXBPTjBFeGFs?=
 =?utf-8?B?amJpbnVIL0hxczU2ckZDOWIrTjcvMWFWZ1U2QjQ0YTZVNHdUeXB6T3ZlQzg0?=
 =?utf-8?B?RUU2bldxZTM4TGg5dTd5RnMxc2tWMDhZZmRwdmV3cGYrV1FXMG42dTNGcWs3?=
 =?utf-8?B?ZHpDeDZjb2M2cVF5ZEtxN2NQVUFOMlp6NUU3WnlhWUpsTjlZK0pLcHpFdUdT?=
 =?utf-8?B?UEVlQVJzNEoyN3ZEYnR6ZEVqN00xbWJTWnlCeVVCazVWNXJ4K1JQVFRxaDVW?=
 =?utf-8?B?Z3l1cURZTC9vMStzUGo3bUFyNXFzOEdIdkNDWHh3aWw1VVhPNU1WekVsLy9F?=
 =?utf-8?B?UXM3MmtQUjZ0T2FPbm15M2VFR3ZYTUJLbVZObVBHaE4veWswaDlDbE8xWC95?=
 =?utf-8?B?bFJmbEdyOWRDU29LTWdRZWtqWGNFWm1WWkJiZGp2VytOcDMrKyt0MGVibFBL?=
 =?utf-8?B?VEpQYmtyN0xPc0tQa2ttQ1JVS3F3Y21iaDZuRnRib3cvSUJJMi9oWFdXc2JX?=
 =?utf-8?B?SU1RVDhsbVk2SnQxdndXUWdjNnUrWXpPZ05jQTd1Mm5DZmtUQVkzS2VZK3ND?=
 =?utf-8?B?N3J4OVRiQXBFSWNZM01SUkZ1ME5lQ0NPWjMxYWw1VzFaNlNFeUlsNjRGakVU?=
 =?utf-8?B?M2tkN1dSSVBPeGtUd1ZZTlV3NUlnVG8rNVA4SFlhVkZlY2hVcFMvMTh4LzFa?=
 =?utf-8?B?OEpFUlZrVUpYUXJhVXl5ME55ODBVaGg5cWk4S3o0L0xsNkNvMjhuNXFnWStL?=
 =?utf-8?B?cWxya3BNWk5CdUw4NEhVbUFyaHRyWk4rMDIvaUhNbEFxNjV4MFIwSktMTCtD?=
 =?utf-8?B?ZGxuVlArREVxN012QTlMQ01jV3hFU0FiMjh0OWFib1NPL3pFQ1N5TEluVlcv?=
 =?utf-8?B?QnFCbFhzOWhpVitISmw0OHcxSkpXNHNQaG9PcXdmdHlsM2VQYnVNN0RHUXcv?=
 =?utf-8?B?N2JlQ2lYazQ0M2w4OHNnMmlPZ2pERFRLdTgrR2E5bWZ5TDFJZXM2UTh3ZjE0?=
 =?utf-8?B?OFBaV252cWd0TGw2YXpiRi9PR1pPL000YmszL08zSkREVkY5bUV0K254VDZO?=
 =?utf-8?B?RHFYV1RHQ2trdGdHUjQ0WnROMCsrZzZoZFI5cHBPbG51dHp4elJPTDFPRnYx?=
 =?utf-8?B?bE1TTGdaUjVLOWZtMkE3S1hJNTllL1Y3NmFxblUrZ3JHY1NZZjVIeVFtY2J2?=
 =?utf-8?B?aXl1OWpzNFArQkJsRmROK1JKQkxZSGhPaFBQRHRBRzRteDlWcnl3TmJDSEFE?=
 =?utf-8?B?KzlSTVFpTUJUallsd1J0NGlLL0V6UEFReEl6ZGtVL3lQSXF3d1pUbmlSRDZq?=
 =?utf-8?B?OVhjemw5dkR5MEpLaVB3eEluSmZrQnBYaVVlVW92Nmc3dFFiY1Y2RFZwR3Ax?=
 =?utf-8?B?NkNzOHcvSGtyZlFaMVROYlpkN2UwOWRLOWFUNkhxaGpZNGtvT2pmejF5Umxy?=
 =?utf-8?B?ZzhqOGJST3VSbjRlekNTOHJ4Wjl5UklTaS94dFJ2MXRDL0dKczVEQXdMS2pk?=
 =?utf-8?B?S3kxQ1dhTVpDd3lnYm1NbWNncG1RODJhd1hWSEFOWWtBOWx6VVRQVm1GS3RN?=
 =?utf-8?B?VERPaWpiVFhheXcwMDByLytKbStHK1FVTVNrL3BJZWNNK0kvejBGcGUvK1ow?=
 =?utf-8?B?VHV1MGU3TFAxY2pZT200SjR0MmpMbHRGUGZvbUJyTHUwZUNLZGYxVXFrR3g3?=
 =?utf-8?B?N2w4NlRHczUxWHZwcXJ5NjhVWmlZeERudHBjWmFuM2poUDA4MkdzTFNDbjdw?=
 =?utf-8?B?QnBlcVk1NXptREZMY2Rka290ZzI3cWUrazd3Zkl0Y3ZhbXZ0ZXQ5VEt2SFZh?=
 =?utf-8?B?MXNCTmQzaHVUY1FDMkcrbEpGcFpQdG8vRUROTTBiZmE0OUlLeUtsWDhPUW1L?=
 =?utf-8?B?ZTExRHcrNkc0N1I3WkhMWnkzVWpWZkprYUNocXo0TjQ2aXcvenIrSkp1Rk1s?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8954f8a-b391-4f2a-a639-08da9a2c1349
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 10:45:32.0584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: usIsfoNJ1er7qEwLVzlnB0fVwnpHeVsvOiwj2PVyCikWfKMRaP2p/E73uUgD7WvNCq22xkHt5grHFfgGdsquJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_HWMON_support_=28rev6=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting lakshminarayana.vudum@intel.com

On 16-09-2022 23:29, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Add HWMON support (rev6)
> *URL:*	https://patchwork.freedesktop.org/series/104278/ 
> <https://patchwork.freedesktop.org/series/104278/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12146 -> Patchwork_104278v6
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_104278v6 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_104278v6, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/index.html
> 
> 
>     Participating hosts (44 -> 39)
> 
> Additional (1): fi-kbl-guc
> Missing (6): fi-rkl-11600 fi-hsw-4200u bat-dg2-8 fi-icl-u2 fi-ctg-p8600 
> fi-bdw-samus
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_104278v6:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@debugfs_test@read_all_entries:
>       o fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/fi-pnv-d510/igt@debugfs_test@read_all_entries.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-pnv-d510/igt@debugfs_test@read_all_entries.html>
This issue is not related to my patch series. Looks like this patch is 
trying to handle it https://patchwork.freedesktop.org/series/108686/
It was reported initially here 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v4/fi-pnv-d510/igt@debugfs_test@read_all_entries.html#dmesg-warnings71 


Regards,
Badal
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_104278v6 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-hsw-4770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html> (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         fi-hsw-4770: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-hsw-4770/igt@runner@aborted.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312> / i915#5594 <https://gitlab.freedesktop.org/drm/intel/issues/5594> / i915#6246 <https://gitlab.freedesktop.org/drm/intel/issues/6246>)
> 
>       o
> 
>         fi-kbl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-kbl-guc/igt@runner@aborted.html> (i915#6219 <https://gitlab.freedesktop.org/drm/intel/issues/6219>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_module_load@reload:
> 
>       o {fi-tgl-mst}: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/fi-tgl-mst/igt@i915_module_load@reload.html> (i915#6596 <https://gitlab.freedesktop.org/drm/intel/issues/6596>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-tgl-mst/igt@i915_module_load@reload.html>
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
> 
>       o fi-bsw-kefka: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html> (i915#6298 <https://gitlab.freedesktop.org/drm/intel/issues/6298>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html>
> 
> 
>         Warnings
> 
>   * igt@runner@aborted:
>       o fi-pnv-d510: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/fi-pnv-d510/igt@runner@aborted.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2403 <https://gitlab.freedesktop.org/drm/intel/issues/2403> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v6/fi-pnv-d510/igt@runner@aborted.html> (i915#2403 <https://gitlab.freedesktop.org/drm/intel/issues/2403> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * IGT: IGT_6656 -> IGTPW_7782
>   * Linux: CI_DRM_12146 -> Patchwork_104278v6
> 
> CI-20190529: 20190529
> CI_DRM_12146: afdeadb1830054a87b9e2d765caa2f197321ca0c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGTPW_7782: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7782/index.html
> IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_104278v6: afdeadb1830054a87b9e2d765caa2f197321ca0c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> e0d313f9824e drm/i915/hwmon: Extend power/energy for XEHPSDV
> 838370702cd9 drm/i915/hwmon: Expose power1_max_interval
> 2ce87f02bcab drm/i915/hwmon: Expose card reactive critical power
> e854da3eb44c drm/i915/hwmon: Show device level energy usage
> 9bd6d1d4bb2d drm/i915/hwmon: Power PL1 limit and TDP setting
> 6be6b6797886 drm/i915/hwmon: Add HWMON current voltage support
> 36f18098a1aa drm/i915/hwmon: Add HWMON infrastructure
> 
