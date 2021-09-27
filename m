Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1A8419768
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 17:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB37889E5A;
	Mon, 27 Sep 2021 15:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2040.outbound.protection.outlook.com [40.107.244.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0948289E5A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 15:12:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fO+H8rvCW6LOI4WQbFUYBIjBPE3IWEYlFa9LgKGsIzlvS8ABPtencHBZpy0W2VcWsa4MBcXkbgBLCKQRvNx3vCqF0k914QyZgZYDFZhvcRELvI2nDUZkk1nKpl8Q8un29TckbUIU/wx/RDWChTKJXXgmO/Vrsy2dWRiD+zFqqs9kOm6tFN87pHfV59y+N7CzMkyGM9dZZLI6aoraHqaoYgmKIJ8vJJmGnV8mJszPJ7t3ptf1Ewy5ep7Zx33b5JJaro9rUUfJgtZ1XVXR9XIzhyRB7BmSw46Rx5KseW3LQ6r7jUGdW7u/WecvW5eseBBfKPi3a9CFL0V/GcCElX5/cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=0nLBTz7qTOo6kskt9Lhaun1fkp4CyOZ3yj/ERHHzzSU=;
 b=YC8W1irMiLyLRU1jCXbEukQn64xqNSys0bYD9vshjaqETGX156JzJsLt4ifYQdVP2MscK1gckLSlWyo1nZ5rw0VvJsoB7ojGdta9Y2aCCS1uYyfab+6rNqEnmjoh8R0uOkAAG8lISjSWr4rk0y1PXIrj5szSnt9nM/AJri51MpUTBXaxvYMtyZz3Nsc4r4rLmB8Skkr9/87Clxa416FSOiOzD7Xq17x2SV9wlkRILW6fNZwJF/0fEaZCQxgyXoEFsqwra73TxAS158CWR03OkQIxQpfSvJP2ED2kNn5TdABwtVZp03fD9KqtigXar1mmamHBim+VeQOkdmgkGkopPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nLBTz7qTOo6kskt9Lhaun1fkp4CyOZ3yj/ERHHzzSU=;
 b=e8DrTEmmBe5wWtAu5Vnk+A3WniOV2uf5DYa2Oc6koFLmFPN9z2/AqXrLB1n29aOHHYbLDZI1NKUcWHWHNj8dUJvQOE428QekyvDMSNh1fPxYduh2Yr+TaHGIfVf+NwuOG3bKHkAPNGrYEQOFjUTwsjfCE3vdxE5lYqF20FfTQo0=
Authentication-Results: amd.com; dkim=none (message not signed)
 header.d=none;amd.com; dmarc=none action=none header.from=amd.com;
Received: from CO6PR12MB5427.namprd12.prod.outlook.com (2603:10b6:5:358::13)
 by CO6PR12MB5412.namprd12.prod.outlook.com (2603:10b6:5:35e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Mon, 27 Sep
 2021 15:12:14 +0000
Received: from CO6PR12MB5427.namprd12.prod.outlook.com
 ([fe80::d82f:e8c3:96ac:5465]) by CO6PR12MB5427.namprd12.prod.outlook.com
 ([fe80::d82f:e8c3:96ac:5465%9]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 15:12:14 +0000
Message-ID: <05088c79-1c1d-c583-69d8-c9434c1622ac@amd.com>
Date: Mon, 27 Sep 2021 11:12:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Content-Language: en-US
To: Fangzhi Zuo <Jerry.Zuo@amd.com>, intel-gfx@lists.freedesktop.org,
 jani.nikula@intel.com
Cc: Nicholas.Kazlauskas@amd.com, wayne.lin@amd.com
References: <20210927143856.2214981-1-Jerry.Zuo@amd.com>
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20210927143856.2214981-1-Jerry.Zuo@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YQBPR0101CA0145.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:e::18) To CO6PR12MB5427.namprd12.prod.outlook.com
 (2603:10b6:5:358::13)
MIME-Version: 1.0
Received: from [192.168.50.4] (198.200.67.104) by
 YQBPR0101CA0145.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01:e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend
 Transport; Mon, 27 Sep 2021 15:12:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68c11811-0fc7-48d5-87c0-08d981c92fe5
X-MS-TrafficTypeDiagnostic: CO6PR12MB5412:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO6PR12MB541256FE87AFAF7E7756B5228CA79@CO6PR12MB5412.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:499;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZZGvTplMm1YzX6auZxhtVpzNFyqPYzJC9eUZ8d6NJ2gm3AoHfirmNXmj0Z8e7Yv1UuMBW1m9qSyOQRjnp9e133SkIN6oYCe6Yn7JEtniaxIgN9H64EMwu5zdq4YaI3X3QB1FuC3ulYVp/SvGVn0ZBVhKh8y9bJT4W9lCBtPg0KAb0/xRvhdKOSxG0UtBItb0zTfi+9U+8KSVomUzoUL7gi4Mwv3bkLzpIZGF66lDFqKgRcgk0fUHv4DgcrJzz3qeS0GYnmenF7V74jJRMfM8nD7dcU70fki6ZyxrbEwf0ks58ieSUqWcpEOSfo+J+3Lw2NhwRt/K3+80JRS8mBdjhx4ShG0L45qAEnGu08/xZm9kj8h+hU2YA7PdfU4VYe8a7G65X2aULra4+p64c3WompGYHjQM0S3CYykAbWMWJrLvUQSNtEg7jpeT+9ZZovdZsOYXxX52lAJkmsAPU7CsaoZZ6DMd0jORoij7xVSLKnCycjiYURhFAtgJI5a+Q6h19fwOHk3kdyAuWhYVn/XTC8+F1PEvAr2f/Sx4gdkWXLN1XIPRWZeZXk/pePuQ3UqqsSBYmNrZG1qc0zOey11f2ZE7fPbHf+gLccxAvNukE0t9lGSrsPRVs8M9IXO5ZM06MKO5BNEnZ6NBfbrFsxQgwfT5C2pCRu7InfppFlbh4rjihEcvBm3GwUWkNpFCU3eeYHAgZneGXNcEMAC6UzzYrwQcHBbG6qgqEGjpMqiRRZI/gGeb3oAaMXaaa2BXCzY0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR12MB5427.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6486002)(66556008)(8936002)(186003)(8676002)(53546011)(4326008)(508600001)(2616005)(956004)(26005)(16576012)(44832011)(316002)(66946007)(5660300002)(66476007)(36756003)(38100700002)(86362001)(2906002)(31696002)(31686004)(83380400001)(21314003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aU91V0JVdktpNTM1RlFBOTErNUR5cklUeXpUSG9HRFZxU1VHclJJcm1IdUVP?=
 =?utf-8?B?cktvZUx4Z1JPNEJLVGVnQ2R1WXdFTXR3aVA4ZCtwd0FFVFl4UFNMdkw4Qlh2?=
 =?utf-8?B?RE1INnArUUd1WVV6eThiQngwYzl2UlhTajc1T0FmSjJ1L1orenk0V0k5VzRu?=
 =?utf-8?B?UjRYeXR6aGMzQXVDR2M5WHBiQUw5YWlRdk05MEs5MjVHOHZCRDVNc3JOUjJO?=
 =?utf-8?B?a1JBVG1sVWVMdkhQVUhtU3VhV1lhTG1sK2dDRW5acVpoTjJHcmdqNnNxTEg4?=
 =?utf-8?B?WFBMLzZTa1ZJVFVodVlBRWxqQmhIWWpkSjMxMjZGMGlMbUQyTTZtQzRkN0x5?=
 =?utf-8?B?VHhZeGNXMFJvdUhGc3BQZFB2UURGdWFGbFphVVB6dGhiZ0xGYTZqcEdzT2R1?=
 =?utf-8?B?YnJjUklrb2tWRE1MM0dpTkp6cHlCZlBMR0EwWjF6SUxuZ1RCTmNveG9tUlJq?=
 =?utf-8?B?SkFjZVRyMmFkdk1BdURFWnpWUVdqNG9oa2J5QXdBYkhJRXAxUG4yM1RNTXBw?=
 =?utf-8?B?bEFkY2FGcno5OFNib3pTQkMzMDlOVmNoWGpQbE5mYjlNamdrRkNldkljUk5O?=
 =?utf-8?B?YmpiRGNhSE5nQzlJK1VFMjlubnh4d1h1MzNjMEMvWFhUMWU3c0txOG53Mk9l?=
 =?utf-8?B?RFdwczBnKy92eVF3TjN2YTNOUVQ0WEsxaWNYcEFhRU5YQ2tUUHBudFk4WFRz?=
 =?utf-8?B?SERreG8xSkZsam5TdnRaTnZQTkpUNTZjenFpV1U4NUlMV3I0QmsxdkFLY3dq?=
 =?utf-8?B?b1VIMHBMRFpwSXVKMGlOcUFCR2FFQXg2Z1d1Ym5KMUhwWkoyQlNvelNISXBp?=
 =?utf-8?B?Yk8yVmhGZ1V4dFdmb080UmZwR0k0U3drbU1hdlYwN1o1eDFYc2JKZnArcW9i?=
 =?utf-8?B?UW92bzBPTUNGNkdEaFQ2S09aRmhPMXRKVWhPcFhkRFlzQWxkLy9Idmo2b1lF?=
 =?utf-8?B?aEoxN25jclJzdnlHeWxOdkNqMjlWNTVXdzBqN2RDRWx0cFhoWDJwMXZHeFY0?=
 =?utf-8?B?aGJPV2d5cDRUaENUY0hhZStDTDduNDhERiszWWczVEdvL21pWUVGcWJabXZa?=
 =?utf-8?B?M1VLZStLb1F3bE5LN3gyYzI0aG9DbGVLZlN5b0o4cWZ6RVkvSkh2bWJDWTdn?=
 =?utf-8?B?QVRXcmkwcTJ6QWhkVkhkYzNGdWJra1czUVcycnp4KzVZcFB4UCtOUlN2NTFT?=
 =?utf-8?B?enJEN2daeEE3dkd3dWZWbFZwMnlGQ3piU2dDUCsxdkI3eEpiaTNUTFZ2NHVJ?=
 =?utf-8?B?WHRiQXd1c1RCaDlVYU9EVlhCSGtXU0c0eDcvRkJyRlRqWFBwZXlBUkVvUS9H?=
 =?utf-8?B?dlF5NlNrck1HR0JYdUcrQ09zM2xwZzJMdENyTDNVSFpRL3hSaTE3b3ptdC9V?=
 =?utf-8?B?b1U3S3Qwam1BV0x5S1NMcjRjQzRWMmp6eG80QkJpTTRKMzhpYzhFQ3A1ZUZX?=
 =?utf-8?B?UUJTZ2FjMWROSVd2M0lvZWRtb2hJYUxaN2FseGtlbEw4SUczelFEbG5qODJS?=
 =?utf-8?B?Y0drYVJCRUprVVJFVjdycGhRVEhUemVBNTZFYk1EMFNpNkVvcDJrdGxobU0v?=
 =?utf-8?B?QUticTJsTUNKZXZYd1RDSnJPd1JXWW0vQlFVaWVpc25oSGNzdTZmU2RURHJ5?=
 =?utf-8?B?YVJYOWhtb0xXUWJibThJckZoeldzSVhGT1paQ3dBSElRL1RmbmY2ZU5JNmw1?=
 =?utf-8?B?dUFaWjk2clJxeFBMelBzMDlHYmNod0RnLzI2N0UrckliTE5lN1orcURGOUYv?=
 =?utf-8?Q?bfXUFFYGHMv5LlJd8d1WQU/HuxtGu0Zmmm5vCsW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c11811-0fc7-48d5-87c0-08d981c92fe5
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5427.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2021 15:12:14.4384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ZlA8jfAmRq2pS6XSGFSA0t6UWAFLemXNfJy3+QuzFwiETdiGJBBTLN3pkofJrjMbmVCFOA4IS0lkboWotq95Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5412
Subject: Re: [Intel-gfx] [PATCH] drm/dp: Add Additional DP2 Headers
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

On 2021-09-27 10:38, Fangzhi Zuo wrote:
> Include FEC, DSC, Link Training related headers.
> 
> Signed-off-by: Fangzhi Zuo <Jerry.Zuo@amd.com>

Please send this to dri-devel and amd-gfx as well.

> ---

The section after the '---' is not part of the commit
description. Please mention here that this patch is based
on top of the other DP2.0 header patches from Intel and
leave a link here, for context.

>  include/drm/drm_dp_helper.h | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 1d5b3dbb6e56..bfd8e3e0171d 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -453,6 +453,7 @@ struct drm_panel;
>  # define DP_FEC_UNCORR_BLK_ERROR_COUNT_CAP  (1 << 1)
>  # define DP_FEC_CORR_BLK_ERROR_COUNT_CAP    (1 << 2)
>  # define DP_FEC_BIT_ERROR_COUNT_CAP	    (1 << 3)
> +#define DP_FEC_CAPABILITY_1			0x091   /* 2.0 */
>  
>  /* DP-HDMI2.1 PCON DSC ENCODER SUPPORT */
>  #define DP_PCON_DSC_ENCODER_CAP_SIZE        0xC	/* 0x9E - 0x92 */
> @@ -537,6 +538,9 @@ struct drm_panel;
>  #define DP_DSC_BRANCH_OVERALL_THROUGHPUT_1  0x0a1
>  #define DP_DSC_BRANCH_MAX_LINE_WIDTH        0x0a2
>  
> +/* DFP Capability Extension */
> +#define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
> +
>  /* Link Configuration */
>  #define	DP_LINK_BW_SET		            0x100
>  # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
> @@ -688,6 +692,7 @@ struct drm_panel;
>  
>  #define DP_DSC_ENABLE                       0x160   /* DP 1.4 */
>  # define DP_DECOMPRESSION_EN                (1 << 0)
> +#define DP_DSC_CONFIGURATION				0x161	/* DP 2.0 */
>  
>  #define DP_PSR_EN_CFG				0x170   /* XXX 1.2? */
>  # define DP_PSR_ENABLE				BIT(0)
> @@ -743,6 +748,7 @@ struct drm_panel;
>  # define DP_RECEIVE_PORT_0_STATUS	    (1 << 0)
>  # define DP_RECEIVE_PORT_1_STATUS	    (1 << 1)
>  # define DP_STREAM_REGENERATION_STATUS      (1 << 2) /* 2.0 */
> +# define DP_INTRA_HOP_AUX_REPLY_INDICATION	(1 << 3) /* 2.0 */

Are you sure this is DP 2.0? The DP2.0 spec has 'RESERVED'
bits after the STREAM_REGENERATION_STATUS.

>  
>  #define DP_ADJUST_REQUEST_LANE0_1	    0x206
>  #define DP_ADJUST_REQUEST_LANE2_3	    0x207
> @@ -865,6 +871,8 @@ struct drm_panel;
>  # define DP_PHY_TEST_PATTERN_80BIT_CUSTOM   0x4
>  # define DP_PHY_TEST_PATTERN_CP2520         0x5
>  
> +#define DP_PHY_SQUARE_PATTERN				0x249
> +
>  #define DP_TEST_HBR2_SCRAMBLER_RESET        0x24A
>  #define DP_TEST_80BIT_CUSTOM_PATTERN_7_0    0x250
>  #define	DP_TEST_80BIT_CUSTOM_PATTERN_15_8   0x251
> @@ -1109,6 +1117,18 @@ struct drm_panel;
>  #define DP_128B132B_TRAINING_AUX_RD_INTERVAL   0x2216 /* 2.0 */
>  # define DP_128B132B_TRAINING_AUX_RD_INTERVAL_MASK 0x7f
>  
> +#define DP_TEST_264BIT_CUSTOM_PATTERN_7_0		0x2230
> +#define DP_TEST_264BIT_CUSTOM_PATTERN_263_256	0x2250
> +
> +/* DSC Extended Capability Branch Total DSC Resources */
> +#define DP_DSC_SUPPORT_AND_DECODER_COUNT			0x2260	/* 2.0 */

To align with the spec and make it easier to search this should be:
DP_DSC_SUPPORT_AND_DSC_DECODER_COUNT

> +#define DP_DSC_MAX_SLICE_COUNT_AND_AGGREGATION_0	0x2270	/* 2.0 */
> +# define DP_DSC_DECODER_0_MAXIMUM_SLICE_COUNT_MASK	(1 << 0)
> +# define DP_DSC_DECODER_0_AGGREGATION_SUPPORT_MASK	(0b111 << 1)
> +# define DP_DSC_DECODER_0_AGGREGATION_SUPPORT_SHIFT	1
> +# define DP_DSC_DECODER_COUNT_MASK			(0b111 << 5)
> +# define DP_DSC_DECODER_COUNT_SHIFT			5
> +

The spec seems to call these "DSC Decoder 1 Aggregation Support" and also
has a definition for "DSC Decoder 1 Maximum Slice Count"

Harry

>  /* Protocol Converter Extension */
>  /* HDMI CEC tunneling over AUX DP 1.3 section 5.3.3.3.1 DPCD 1.4+ */
>  #define DP_CEC_TUNNELING_CAPABILITY            0x3000
> 

