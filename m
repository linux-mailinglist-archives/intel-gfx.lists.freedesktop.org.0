Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DABB5B1043
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 01:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A9010E164;
	Wed,  7 Sep 2022 23:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4AE10E164
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 23:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662592515; x=1694128515;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WMyI4u4s/tFH2V9ktPl2QEnIvX0exoCNrOE63ykrRB0=;
 b=RAp2jxmxI3Wm2craprzLNgw9YfRg8fH5D92twzpNZdPxdMApxq/SyyRD
 0XdCjXGd9dgB9aw0Rx6THGXfwAcgNAZLCN5VmvTzJDrBJOTWTuf1JYXO3
 qFkn9p/NuVclESXZmwSCghlyj48+jNAImgJtUgxza9487NhKgjUSJaAEE
 1OTznWGak6dHIAnCF2W+YuXKmHYFUieUUmgGrtCbKSLi80qUmiJ2D5ztJ
 L48jpkwbqPUot1J03YiHG8Aziu4VaFNZ4meRJftCAVYJEbu/gT6QtkBLg
 vKCQdmAIOnZ4x2LFg6jNIFPt7LWlYhqlc+v5dWeZuE/cKVZ2VVnISzVVM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297019485"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="297019485"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 16:15:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="591915720"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 07 Sep 2022 16:15:09 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 16:15:09 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 16:15:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 7 Sep 2022 16:15:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 7 Sep 2022 16:15:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0at9ffYLUaPJn4Hyp9yCzwIUXflPh2MkMNIv7iOk19B/9mxmwxK0+No7gZqeutbChYlRXkJNArNxsWsjn1bCbEpRc6U8cad0ppsWFnPRzVcrW35blnq6Wf8HBWcwJvdRv+AuFDFoD3msbLYvox/rl2L1FkMgG8ojL1qgzcYNdqfSbLnLNUtEmYdSb/89b+fPGiepfXjGDBu3tJxJtkuUY1sSfspFyzyHwgui6w2wgbSXQuvKOYGP6+1PAmEK1TxteQLdJ8VBqGXlGuRtS0kRbBJYQO4pLWqKAmxeyF3SPlbvP9+Gt7zSXkcy2t9Xs1RMR1ERtZchUL8x5t79woM9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16fTgN4oGYVQjpeuMiONVK8ji+E3JNgxh7xUIfTzbAY=;
 b=hQY6q5C5NttTfP7tuMMVj9Tn0y3mRPiJTNjBKJTDgoLv03tGXKiprTE8yBqz87r0TgAlpDsVaaJon2OMt7PWPq/+zv/ZHo4h++VdUx0ZQk/KopYGwYioYzsEPk6ZqjkRyOkapk5TWky7jz7SjYfj3byuJL0HX3r+VodRNpef3bk/zaZDBQhs3v6k8xpojsNCqhcmq8IpmLF1/GI6i8Or11Kp6hgP9lQaXUfHAd59knFoVkn7SonJGa8ElaY+n/mbL0ffRPnHkFUUwEkT2aoThS/MMzkHDXVDQ79+OlSXLloT3kC8Lh+hMZJ/EVc06s/9QbEUPiLx7kMiS/z7XvkyrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN6PR11MB3422.namprd11.prod.outlook.com (2603:10b6:805:da::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Wed, 7 Sep
 2022 23:15:04 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::211b:a022:39b6:5d2]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::211b:a022:39b6:5d2%5]) with mapi id 15.20.5588.018; Wed, 7 Sep 2022
 23:15:04 +0000
Date: Wed, 7 Sep 2022 16:15:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220907231502.2i6u6ckyu3umwwri@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220907202606.1640377-1-lucas.demarchi@intel.com>
 <YxkbDoro6AFffXNe@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <YxkbDoro6AFffXNe@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::34) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93fb7547-26ea-426f-63ee-08da9126cbcf
X-MS-TrafficTypeDiagnostic: SN6PR11MB3422:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: glllpuRbvLDJdU7E/S/nZXkWtq2w1hqCc9T+eZlwFJKftkVjblPgIub+ng50S1J2YiNtx5u0B6r/f1m8GOKPhizrJf7sCaORERmO8yI4gT9h7AvsqmkDz/nCRVg9ghQbP9yHTZbT3XHsp1Z740qV8OHQgTW3YR4d02myogsY5F2l6dJtKV19aEQrqmdYRF6wEcKKU95PccbbNx8/CImnAmQmQxVlK6fPYFFVe8JvAhefY7/mWMGToe7BmtuAignurt2oNxz1T/5J4Gw+NYdBt55DT9PkBg+AYKOrvcGU6Bf689scJmbLL6vON8alVC5nbTeADqTTNvHTL1WPDriydHDskTUMBPNB6qomVCXV9MVOufPJVTebLLfyPV8me6ZUb3a8U5/kg+gR6iCtg35eQgYn/xoGCGisoaOz6o8NlCx4E78BCx/G2rZj9VajbuKyCrborwrQEhSzT+xG1YWNRKlxrEtSRwpUwoW5cf22MDPDGxscGK4P99EUN6tkIC4dSD59qbxvY8lX487qaLgdm+V9F1SpMI4jRvZ56+SfAeQafCML05oCZkWS4rSqlm49aRmRjV4I5tO1drTh2dXDWMeAoDV2T4yggbLblMvIIN5zoKvJ5CanlkdsUc6Ny1By2zazsLurmyBIwEXMYLXwq4AFfyZMifUT0Vhzl9C0i0sNM8kq3RW8FXLU8QYyRwxpRGr1zm9y3STwWPtpfs3lrjamvBVambNUnaWMftWBY/T3PMYqELl+B9fuex0HQgdJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(136003)(396003)(366004)(376002)(186003)(8936002)(2906002)(1076003)(6862004)(83380400001)(5660300002)(4326008)(36756003)(66556008)(8676002)(54906003)(66476007)(316002)(86362001)(6486002)(478600001)(6512007)(41300700001)(38100700002)(82960400001)(6636002)(66946007)(6506007)(26005)(9686003)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?izq+tE0xWGLqCURh+kRiPqJh1Dvy9C8HnHeTRv3xBiMJQNSPA5Vl/GJi7jp2?=
 =?us-ascii?Q?QscpGSCNEvL6lB2uU3znYf8EYZM81Qs5Qyru1c0FVqks+k9cZFlSpET+M44n?=
 =?us-ascii?Q?NuTWUSQ46QDmSqYMA2l0fdONPiZNyY/3uu3uToCOd47h6ykyCaoVzzh6GmEb?=
 =?us-ascii?Q?j+pXZonwFA7nqBBwsQZpgNECFj2yqjPOGcu51w//5fzdnDOic1koattwQuVx?=
 =?us-ascii?Q?AxezGTlwxxk85RYzzboOaHNI1/ButYUgH7GpHlkA1uhS4fcvOdSx3HHfS0Ng?=
 =?us-ascii?Q?UkLuTKxV481eLpnsG7GIL4N699ZWbo+U2R1Mk002SeO6JUNFSUu5cYVuA1Z6?=
 =?us-ascii?Q?r06mG7NtPqaD+Ta2TqwupjLUwPifod2HOJkOP9izGwQtLwf2xrQmYMVW45t+?=
 =?us-ascii?Q?Df1pIPau9m5ugmqv+F4h9FlOe4fj/Xz4ap1qSii736ahkQiI1rHARJFK9PAJ?=
 =?us-ascii?Q?CfX6vign6f7RMGBwq904u07EC7ry67n//O/gewV9gCXPWxXEKcykUFmESbsA?=
 =?us-ascii?Q?qWIsMOi/KPJdNkZk3X/bciqodCuF0jTTkvVdpqMYM1aA1iD/OKEMDSD88eIk?=
 =?us-ascii?Q?HaAiA8PcKYQweCmbsWuAJFFPf85rW5sNnlCD8CzREEaRAkPtRd+VcOrrVpfc?=
 =?us-ascii?Q?AdLr0aQ8aeS8BA+BSw2UB5WWXbsbY+M80ZYnG1/Z4id6Dnkam879vbIFpCPy?=
 =?us-ascii?Q?E5ue27VfomGc+P00pvgG3bw4T+o6BHKiB9SAhQVEHj3Uq3XM2cf19rv4XTz2?=
 =?us-ascii?Q?jMl4hUJU8omhEszavCpUrQAPpuKr4vJbXGbQS4d7RuX5LjoUxpxFjPoUjUpY?=
 =?us-ascii?Q?IIBZcQAf6z9+8GI5gDA9A9L3ybU9qspUj/24b88NCNB5Ldcd4jTZfHj1Mtk4?=
 =?us-ascii?Q?cL6nZgZGmCMYA5oKV2dXz/vv7RECfJgX5qedpqzkwTxvucESZlhGpe7/CKGt?=
 =?us-ascii?Q?8TzAlOEc+QtPa2t/0XGnv1ACqiiaWCl2yXDEYpq+EBsYrL5SUmH68Ercm3ij?=
 =?us-ascii?Q?B9BLI2iZkZTehfRKwtzs1XrorS8aH+B0xg15AOnW2yr5AJgVvF+fVg98R3H4?=
 =?us-ascii?Q?rera6tOER7sateiQpgLHCYGkCTWNcsm2omcdrlA/zWqdGDAgkK5UUoPa2teA?=
 =?us-ascii?Q?hXoqtDyeAHNz9WZckjwsGXdYz+jkERP07PNP1agxakX3f0vDZ1oALnwoCcuR?=
 =?us-ascii?Q?mlW+i4fCKSoTXc8RmETgIHK/k+n4jmI7QMB911tRUuifxN+1r8sGnOFWmS1v?=
 =?us-ascii?Q?38ykDcknTWkCs3nZ19n6Pl0LZr++U6mnbOfKY7tvjNd0KXvIUs2YgYdPENef?=
 =?us-ascii?Q?D0OsIzPnkXx+ok1D1cVQYMWzx5/Wol+RKIyBW5Ks8Vb3/DA09v14rmHK0ybT?=
 =?us-ascii?Q?TQu/oeY8ZMGrLL9JZhaBRLY8D6/HIo1Fdgv5P7PIbkdc+JFz53In4j9jws1R?=
 =?us-ascii?Q?nL5nqvsaSxC9LxZKv7PzesoP4N+WaBRUlu2xlmfH6P2IK4P9oPMA2ZQbdxNQ?=
 =?us-ascii?Q?HB63+YAMhYF52ftSjLsB6nXWrATDEL6U6CFnoBDUby7kR79i8e3opFMDolRA?=
 =?us-ascii?Q?fUoxGfyGE5YH/JBrLuuOO4l5GU1SsjAi/YeG2q0acMPoJjy0xNbVxP9IKkoB?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93fb7547-26ea-426f-63ee-08da9126cbcf
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 23:15:04.2841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bXxsTK/UTorkeJqwRBxt9PaNzMZvqlW7+oBFjQafsnNWKa1bTx3gsdUPdQVwA+Yg1PsA9zR21dzVnYW4mHNLVFNR9/Plq5lzbI0f8NkIgnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3422
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/dg2: extend Wa_1409120013
 to DG2"
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

On Wed, Sep 07, 2022 at 03:28:30PM -0700, Matt Roper wrote:
>On Wed, Sep 07, 2022 at 01:26:06PM -0700, Lucas De Marchi wrote:
>> This reverts commit 487970e8bb776c989013bb59d6cbb22e45b9afc6.
>>
>> Updated bspec and workaround database note Wa_1409120013 is not needed
>> for DG2 (or any Display 13) platform.
>
>This should probably say "Xe_LPD" to use standard terminology.
>
>>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Matt Atwood <matthew.s.atwood@intel.com>
>> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>> index 210c1f78cc90..6ff0b80e69ac 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -7614,9 +7614,9 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>>
>>  static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>>  {
>> -	/* Wa_1409120013:tgl,rkl,adl-s,dg1,dg2 */
>> +	/* Wa_1409120013:tgl,rkl,adl-s,dg1 */
>
>When adding new workarounds lately I've been dropping the platform
>trailers since it's obvious enough from the next few lines of code (and
>it's easy for the comments to get out of sync with the code).  I'd be
>tempted to just shorten this to "/* Wa_1409120013 */" but up to you.
>
>>  	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>> -	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) || IS_DG2(dev_priv))
>> +	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))
>
>We could also go with
>
>        if (DISPLAY_VER(dev_priv) == 12)
>
>to simplify.

indeed, that is better. I will send a new version.

thanks
Lucas De Marchi

>
>Anway, both of the code suggestions are optional; up to you whether you
>think they're worth incorporating or not.
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>with the small commit message tweak.
>
>
>Matt
>
>>  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>>  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>>
>> --
>> 2.37.2
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
