Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC7D548483
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 12:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74F5510E092;
	Mon, 13 Jun 2022 10:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BF110E092
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 10:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655116031; x=1686652031;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XonvWnKVrX3ysm607zObhz2xpfkUPSuI+G3Pb5GANgk=;
 b=c87lZLi9S1NMRp4VsiuKqv11Z8jcoaSbxSQI53ICdfIhR2QKh0DFvqxZ
 6Y+g7zIFNEiLVrs02ViuoJvN4HzznE0cXCHvrVGGlczMS1Xov8DVHNg+c
 ZlONCzX15Oz5ZvoJptrNt3kfmFlQ4oDUf18vmRFS078UR7EL13CSD1SnT
 VMejET9fKl/ArwqWS8mHdq0go8xxF5EJg/xK1wzvQsBKRdRAXzQnwQOM9
 ZlU94NMKU6NmuiU6Fyzez28krGaMTWzo/XsXbou6/IBMk7q0vU+PBCI0j
 siu6eCeJzRLReEonJ9Z36Syl985P8NRcaMbWS5w4v43XiaKvWgVRvU+Tq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10376"; a="278275427"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="278275427"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 03:27:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="557545387"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2022 03:27:10 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 03:27:10 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 03:27:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 03:27:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 03:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGjbDzrLKYni0oEBkPXkOs58QWQKsTN+cc8WqBUFHipx+MCmXibtKAv1cyfLGdjIlxsKNhD6YGpq31IsaYQ1GmJHDTEL2cl/syL7W1u6rt42cgBR5f1U0DphE3JqPfEslev61FWUYCLEYlPJzjjBMwI8Hh7cq7zzMD7ji3RbZuGyMXHBn1GMlVhhgk/X56GxIjcrLzrqBXeCZGRJ/hoj+uDvukEfHD/NN0tX0/u2qKllg5PtRv8RBRdRAze8thcGJ/aQ2gSB/SfhQ2HEoekpSpvzaKqct9v2nUihgrbz5ywxV2ywzxWwaLpEyloW/evTX96Pt8ohTPJC3EPMzSee7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlwp/81u1q3xTrsb2vl87d69zQX82wmxG5+FlnGAONA=;
 b=i2i6/5NaifYzZnDvX41RIKBBYF0s9exkj0nHo/2IdTTYjTS79nTphBWBu93UqsvMX5J/tnPbN89QaszzYVUEsFMTf/3w30FiUqAjUDh0lEOTmIguFwZQTJY5zoLQa/0Y4Je76t6GuKugEwVNnK8/amsQls5uw0ud+rjuxqpifN/6VC+S9dmsZpk/KdFzZQ7bFhnSzK4Y9NQ8354nOvuFXIiXMKGP28sCvtBPgX9arMXCkCzG8It/lLTKOL3MxM9JtTBaqNFZqERzXHmuxkOEQa3/I/23ce3DZw2+QcvKLlKfrCtqd23tdJSWE+z1i+QXrQGtIDyPURz+8+sXLVMt3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Mon, 13 Jun
 2022 10:27:08 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::a16f:9cf9:d8b2:cf2f]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::a16f:9cf9:d8b2:cf2f%4]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 10:27:08 +0000
Message-ID: <2ef2b285-f8d9-4f3e-b29c-48c26e8e9611@intel.com>
Date: Mon, 13 Jun 2022 15:56:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220606122656.31479-1-anshuman.gupta@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20220606122656.31479-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::20) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 268a054a-84e6-4f78-375e-08da4d274486
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB44518C1FF66A732D60E8CA19E5AB9@BY5PR11MB4451.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RsKBbgQ4qC/YYz/NpqesHOepN3goxT14w5GjavO/JmrXooKQedeI0D8jpjwSUwAQQjq8+f2x/ZUxRDuSooceRO9+60bthn5bgX/8vmi5g4tFcFxwrlNjbkkEuPumb1K7ro0nDqmONkMHdj6zGmyY/EU+efLPUOz4gpQNdfiOtwHp42hIduI8uyZTwtk1aDYuEke2LeK4adRldielOu0bHyBKtMqloyR/TDT4K0Q4ZStxHcxoZVxXlvTTQhoycUaHjmgSrJjUJTRkiy3ESGyA5ah24A3aWQ3b00H7Rv3S9ilQYwDAv+xl4x8fBe+Q9mK35JhFjaOo/PcaD+4+BMn0K4TWz2Mso2wJFeoCL74uxIW56zpF9zcj5uKcalFhfBjdNuKnaKeT0LO6tEnSaOuyormh/iK7+mp6QyBoGePDQ059FKv7GLcibo96kZm+cLepFEHPPSKIl4FqPOgJGD/2utZDk4mHh9HwDhcVKQcTtppOCbEPpskFk4QuDkDwci+GvmTLGcdL04fgZuKG4bxWu13Rg8A4EfBKWuyUKjUZRny+M6KyaM+MvgJ6wgBUnzR6g1ajMGspqHksS+Ev8rPXZPmztpDOQhKRmzK2FgQruWwjvyQDzuoBYxLb3YtJ8xkCNT/uUfWu5nk59H8WZd8IVrRfV2BS+jPBsY08GbWTt9Wcm9TuUcYQcAEr/ts6b2tInnI18LXKPJmuWuHYXroINyASgbllBbvbomc4Dt41YeANTuM/Ewk6uUhSRIr+pFWcyI3MQ8XL6zPKzuwT3ZuKj137jZfPqtPmFz4JXnvr2WM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(6666004)(31696002)(2906002)(107886003)(5660300002)(6512007)(8936002)(26005)(186003)(6506007)(53546011)(508600001)(86362001)(6486002)(2616005)(38100700002)(82960400001)(36756003)(316002)(66556008)(66476007)(31686004)(66946007)(8676002)(83380400001)(4326008)(42413004)(32563001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RU9RalA0ZmNjRTI2NFl4Tkg3OU1wTlYyUHk2SjNQY3UzOFQwSzVjT0JtYnJn?=
 =?utf-8?B?aDY5cXRSdzh6cjd0MkdqQ0pGYjU0dFM4a1hlVENvMUUyVG41bjUwVUpmRitN?=
 =?utf-8?B?VmRZWEN5T29KWk5GQVVZSTV1RXpZbFhuT2NETW9sSXhNTUZSaXFwWWVFWml2?=
 =?utf-8?B?VGw4bHZER3RzSEJvYjBmV3BYODhvZnorVXZtOCtnTjNMKzVITStTWTNBT2FS?=
 =?utf-8?B?MlhrZ2ZiTklQclNGN1RjaWV4ZUVvQkU2S0d4RHNDYk5OTkZ2Wm1oVmtDZjdH?=
 =?utf-8?B?SzhpS2NPSzhzQXdBU3RmLzIwMlEwNTdlVlc1bGhvZW8wOGR3U292R3NtY0g2?=
 =?utf-8?B?VlJsL2hBM2lsVTZKbHhiWGl0WXR2R3Jkc09JOTk4T2oxQUl4cFlSY3VaRDBq?=
 =?utf-8?B?ZEdvNzZGMmp2VUs3b3hySTFBRkVyOUJvZG5KeVlYSzhJeFh0SVVScW9HZmJu?=
 =?utf-8?B?a3dwVDd0bnJDNklBblVBNzNVdVZGUTdWc1RNUzFIUGkrZm9tZ0dVSUF1QU8x?=
 =?utf-8?B?ZUtnY3NhSXFJQU15dURya3hMU1B6S2xpWGY2a1F6MER0bTl3MFFyanBlTWNB?=
 =?utf-8?B?ZDE2YjU5Yi9FWUFVeU1icU9VVVBSQTNHTWJSRGx2K0ZST0wwMVZSbkJHTWZP?=
 =?utf-8?B?VG44a25zRmh0eGNWc1JVMDdSZkdaVXJJQURPeXgxNm9sdW1mSzdUSWNQa0Ev?=
 =?utf-8?B?TFV6VitwRFN2OHdlUldyQ1FJWnFkYnR0N1ZBS3pKMFl3M0o1cVphOXVNOFd5?=
 =?utf-8?B?a21jeUszRlF5RUhiZWpLNnVnMjcyMk81aDl3SzFEOG5EMVMxL0ZVdTFEQUxL?=
 =?utf-8?B?SmVNR1g3aVVZTGg4QlJwZEJsRHJZbWZvUmczcjBMQXBDRGUwTUV0OWI1emFs?=
 =?utf-8?B?VlJhaDJsdjFldUhSU3JTNzZrTWgvaUd5bkFoTWxSU2M4VkN5SGtwWjVJcENo?=
 =?utf-8?B?NFZYa25nS1g2Z2VjSDArZlBlUXpqLzZHT09vbmlQSGkwVFROQ200QzlRNld2?=
 =?utf-8?B?RnJ3M0pGMHNLN3BLVWo0NnRQZER2U1FlVUphQjVhQWM4bEdvcXpWdmVSVjZO?=
 =?utf-8?B?UDgvN2V2cGIwVC9GekwxOEQ0UFJ0b0Z3elI3RDJPYktOYnhuM2R0cFVLMDNM?=
 =?utf-8?B?YkFGM2xBTWtYQXdBbll0dzYrRGR4M0ZQKy9IVE91RnpBamJlemc0SVdEd0Fh?=
 =?utf-8?B?NG1ObVg2UHBFUjJ3MGlQTW1Jc2kva0tHSGltdnpHamIrUG1hTDNUU3NweEdG?=
 =?utf-8?B?TzNtYUhkMUoyK21vK3FldFQ4TG0vd3ZTdFZaVktVd2lldFdBVlVRaDlGS2Nr?=
 =?utf-8?B?bjhmd2pJN1BjOUt0TWVwdHNzdG5DWXo4cmp6dDM2NUtKSmJXMG1zdmhrV3I0?=
 =?utf-8?B?Y1ViUnZlMndEZit5L1ptZ2dzRnVtdzZUd2dNUys4Z3NaUjFQWHNoK3E3N2k3?=
 =?utf-8?B?bGY0a0szRUs1UnBFdXgxYzFodmxlZDlBMnZ6blF1TjloMStSWDNGd3N0djVs?=
 =?utf-8?B?QkFMQU1heitVZFg5dHYzZXZMZXVOSEVtdU1CL0t0T29xSHA1ZXZJamcrd200?=
 =?utf-8?B?Slp6ZGoraVI2Ry9TaUwycWRmTW1nRGd1QWR2NnM5VHVCRGlrNDJPb1F1UUky?=
 =?utf-8?B?N2o2RkJSSTZhYWUvUG1lRFRuWmJIdzZwaFFpcmI4TEFqd3dPbW9TT1ZMSUNB?=
 =?utf-8?B?cFBQMDVoTU9BSG81NGcwNm1hUzdUL0pXazJQaUNWNnlUR2htTk5DRkJRdWdt?=
 =?utf-8?B?ZlZvcEF2Q09CWitRdHRHVEM0S24yMnVLbk9xSFYwQWlJNG05NWZWMlRtYWl5?=
 =?utf-8?B?ZGhnTHhQeGZtaC83MEFuVFM4dis2d1dBQ2NGaFNiTGpXeVgxc2FKK0xXVWps?=
 =?utf-8?B?akpQeXBGWi9IZm1wMTcvMXVpK25XU1lEV3pmUWVCemhVT0RQWVpuYi9YVkdi?=
 =?utf-8?B?OTVuYW10dFdwcWpsdHRkdkNPMTZCZWRKc0w0aERzVUZaeGNqemMyKzFHUS9H?=
 =?utf-8?B?VXRrMDhkc3pwOWd1VzNFeG52S25PeXk5RW5DRTY2Z0NqWjZPcjV5dllRcEZE?=
 =?utf-8?B?RCtYSVNoeExGT1NqaUdQTHRJUm9rR0UxM254RzFHc3FTQWRLWlEreTZ3aHIx?=
 =?utf-8?B?MEtYUCtPMm1ZekZGdlZic2x5MWwyRkhKaHFOZ200NVRxWW1Na2R6S0FJR0Rr?=
 =?utf-8?B?Y0kyMUJ3SlNBQlJldktjZVBJRm5tdE9HNmJra2FWYmRKMUR6bXdqVmVCSEhO?=
 =?utf-8?B?UzZjVm9EWEJ5Y2RtLzFtVTdMWE1ub2NOY2k2YWlZL2t0SW0vOTdXd0lnckRV?=
 =?utf-8?B?ZzM1dW91TTAreloycFlXZktBeW50aUk1cEg0dUlmL1dvSm9vRldMNDlQOFFU?=
 =?utf-8?Q?PirhCbAVwaJtN92I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 268a054a-84e6-4f78-375e-08da4d274486
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 10:27:07.8492 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XlhTaosE7xEsa95KrSvJVXpagyYgf09ckLuHEEbO3P/AoZLPDlRs9ah4jeMwR0Aa/DwPFj/1oxN8pepXspJyLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4451
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Disable d3cold Correctly
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 06-06-2022 17:56, Anshuman Gupta wrote:
> Currently i915 disables d3cold for i915 pci dev.
> This blocks D3 for i915 gfx pci upstream bridge (VSP).
> Let's disable d3cold at gfx root port to make sure that
> i915 gfx VSP can transition to D3 to save some power.
> 
> Fixes: 1a085e23411d ("drm/i915: Disable D3Cold in s2idle and runtime pm")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 34 +++++++++++++-----------------
>   1 file changed, 15 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d26dcca7e654..86f9f0be76a6 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -546,6 +546,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
>   static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *root_pdev;
>   	int ret;
>   
>   	if (i915_inject_probe_failure(dev_priv))
> @@ -657,6 +658,15 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   
>   	intel_bw_init_hw(dev_priv);
>   
> +	/*
> +	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
> +	 * This should be totally removed when we handle the pci states properly
> +	 * on runtime PM and on s2idle cases.
> +	 */
> +	root_pdev = pcie_find_root_port(pdev);
> +	if (root_pdev)
> +		pci_d3cold_disable(root_pdev);
> +
>   	return 0;
>   
>   err_msi:
> @@ -680,11 +690,16 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *root_pdev;
>   
>   	i915_perf_fini(dev_priv);
>   
>   	if (pdev->msi_enabled)
>   		pci_disable_msi(pdev);
> +
> +	root_pdev = pcie_find_root_port(pdev);
> +	if (root_pdev)
> +		pci_d3cold_enable(root_pdev);
>   }
This looks good to me.

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

Regards,
Badal Nilawar
>   
>   /**
> @@ -1209,14 +1224,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>   		goto out;
>   	}
>   
> -	/*
> -	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
> -	 * This should be totally removed when we handle the pci states properly
> -	 * on runtime PM and on s2idle cases.
> -	 */
> -	if (suspend_to_idle(dev_priv))
> -		pci_d3cold_disable(pdev);
> -
>   	pci_disable_device(pdev);
>   	/*
>   	 * During hibernation on some platforms the BIOS may try to access
> @@ -1381,8 +1388,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
>   
>   	pci_set_master(pdev);
>   
> -	pci_d3cold_enable(pdev);
> -
>   	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	ret = vlv_resume_prepare(dev_priv, false);
> @@ -1559,7 +1564,6 @@ static int intel_runtime_suspend(struct device *kdev)
>   {
>   	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
>   	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>   	int ret;
>   
>   	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
> @@ -1605,12 +1609,6 @@ static int intel_runtime_suspend(struct device *kdev)
>   		drm_err(&dev_priv->drm,
>   			"Unclaimed access detected prior to suspending\n");
>   
> -	/*
> -	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
> -	 * This should be totally removed when we handle the pci states properly
> -	 * on runtime PM and on s2idle cases.
> -	 */
> -	pci_d3cold_disable(pdev);
>   	rpm->suspended = true;
>   
>   	/*
> @@ -1649,7 +1647,6 @@ static int intel_runtime_resume(struct device *kdev)
>   {
>   	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
>   	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>   	int ret;
>   
>   	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
> @@ -1662,7 +1659,6 @@ static int intel_runtime_resume(struct device *kdev)
>   
>   	intel_opregion_notify_adapter(dev_priv, PCI_D0);
>   	rpm->suspended = false;
> -	pci_d3cold_enable(pdev);
>   	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>   		drm_dbg(&dev_priv->drm,
>   			"Unclaimed access during suspend, bios?\n");
