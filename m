Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FBE70C25D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E56E10E35A;
	Mon, 22 May 2023 15:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB0610E35A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684769318; x=1716305318;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m8rGDlAPHcCiGRcMDdj6jsho0gyUtUS/Qrjpu+esi64=;
 b=ZvcwEObaRLYAvtCy7Ok5VZpATDhkv/YObPJ9KVSzE0FaFq2RE2KlUC/7
 I7oM3lomtJ7yaDPq3NXHW+Xg46KL9YWTk0y5LUYVT0G/ndozHTLPhl8du
 qoud7Mhyj/3HALZ9oKXD8W87MUs6cTcu4XhorreCngrvNx/iyo2E1khqi
 TUK1cH0OIPotKrH1FLzCTv0Rd77LueSyeo4O4Q2TwC/RjiAl1fKe9O7MK
 Lx0W7vcnL2vnbNMj1qgqsz/miPgc8yFEQh4ADsXmJYGjEXnKySCm2wAs3
 q/iZB1DiJ4wnfz5IGRuLcGZHvkQdr6zvHSXn9/bpJ7Ub07sA+Vx4PxXHt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="381184250"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381184250"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="827744038"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="827744038"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 22 May 2023 08:27:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:27:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:27:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:27:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:27:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8wT2VDB5+0MKPlDHGEJD4JgZMV3EZ5gIVkd3TRDt1zubBnnMzKTOcjypuIDNnNBOzfxbs/8cXQVSUt3a9OGTr8ZzHKvimCrgtBDUbcP8mP82fVkiVZE40NCTtGJIg/W3i6N/ieITHT1QLNqQTbbowyYYvtLcdwTTxsijtgxjqK3tnni018odu6Bno8GrrDbFXFKrft0QHf3Wv9FvQQ+UKXsiJEshwqpbaagZWZwuoNgMaBPo/6Tw0uHUzDWg8OsKKnGTbRPx6vG9adylIxlYYk+XW5g1L1timnw8mQ3sE/1a2J02b5gNfcSlwUXVBKW6LWQjTMUmcF4Yktpdfxilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RH/+0GPBSZpYBwtQxTL9P+kFQU0uPh52UUS9JrdGBUQ=;
 b=SAMM58n+QdaIlb2z9EOmdkWG7U7c6Mx36v8cBGBRXMFL0IeQS12qmaMHL9SxW2+7bB8LFy3zpct0wSvC+sYC8RyVtqJIIS6mnfVaRWVad04Z0oBWFlrbNUiF/TpZfIkMNKUWPzhO8ea5wq16GY9XJA32y05tZnbd2DX42oNZVZWGDps1PhuDzIo4fFHfnlZ2T2dyMIpugOzzARTNlOYwWm9YUNQv0walC02AZxeF5e2441+NS0usr5xx6mN0rHEdoPZASotWBE4OknTZDtDdkySUtqcnKnrKoH3aaaM/0f7pmQYC6yzmIhHwDRFSXT/0ETp89FHtQOThbPe/WFMgMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 PH0PR11MB5904.namprd11.prod.outlook.com (2603:10b6:510:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:27:45 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4ae6:750e:a237:4eb0]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4ae6:750e:a237:4eb0%3]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:27:44 +0000
Message-ID: <e9178773-94b4-95fb-a8bf-87d537614ef8@intel.com>
Date: Mon, 22 May 2023 08:27:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230519094918.1182044-1-suraj.kandpal@intel.com>
 <20230519094918.1182044-2-suraj.kandpal@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230519094918.1182044-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0042.namprd17.prod.outlook.com
 (2603:10b6:a03:167::19) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|PH0PR11MB5904:EE_
X-MS-Office365-Filtering-Correlation-Id: 378afcd4-5c06-4101-801c-08db5ad91707
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z2INrdLQ/q65isfD4LuE6QdNzC9MhGrMpHQ3eaP8/pFCwqVLR+mCFLq5emqX/XVbvmcrErWQTeQHr/LeMcMrVHSJ17PemP1hqFcu13ES76MLip3ke6XEKnTQH0MXXkSaTu2RqGEEl26QWQQQ9umCPPsq6AiYP8JH4OeQrRzTObqIMMXu2uWMtP1XO+hV6P1ZrycSn8NI9jWanuS5fBYB+RoPqu7fjnRJFcDG57N87/HQsLxAzhtpcD2X1EfM9eonB6v4kzzZlSmxhGxPfHK7dOiiwKvna74Xugkk4nhxw5aye2LC2gIE1gu04FGq6EaNa2cj3jCyiTE28H6e07pVrlqOCT1ERvUZy9k0KgLJvWPM9WS/Rc7FJ5W/e19fd04QnKgvpQDJ/4nd2kC+VN8akIg/wfRRuqJPJ0ckSXWIE4fcXA5ules++CvxpekgkgGGaZDpPOYdRQHE/qaSiza7r6SKGCfHZwdiqZYfXmItYtUSqCjOwZlSOZmMt1tx3R6AkA09Sd6mqctGuclyOerp3HaabaAqi/D+V4OTsJpK6nCat7cxFCdGPYymQgatE5s0Ra7hL9wYgqNdGwiM9Tm+VWKfQQJv/TAtOEFtcKjFFCGkOP/T3INqtjtXoWtdCnpaKNzGoBbJmpjq2J+JxDaoqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199021)(82960400001)(38100700002)(31696002)(86362001)(36756003)(107886003)(53546011)(6512007)(6506007)(8936002)(8676002)(2616005)(2906002)(186003)(31686004)(54906003)(478600001)(41300700001)(316002)(4326008)(26005)(5660300002)(6486002)(66476007)(66556008)(66946007)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWhiUGo0TlRmOW0ycTAzU1A3cUx0b3ZYbmNqZTNLWXNVa3RTSTNzTDYwUFVN?=
 =?utf-8?B?K3puODh6aEI2VnovRW1mR3V2T29Rc3JVVFYvbFFMNjFOeVpnazFxZnEzUFp3?=
 =?utf-8?B?S2x2VHdlRDBUNk9qY0xnQXJjY2ovSWlvMnhXTDNxTW1hWkNzd0V5UGdWYzdJ?=
 =?utf-8?B?NWlZRXRHWmViQjdnc2lwR2E0VnR0bktJTzRIeWNiTml2L0dPZSt4dTR3Rkxs?=
 =?utf-8?B?eVJFLzNMc01yZGJVTkxCNUUxY2VWV0gvSnNwdkxmYUJzcVF2OFVUeTJhOFlE?=
 =?utf-8?B?MHBLVjF6VitPMlVzWVJnSWl4ckhqK3FJNU9uMjEvSDVFMExvSlkwbUVwU1E0?=
 =?utf-8?B?bmc4a1U1U2R1ZUY0WStCbnlCK2pnK1BhTVU1Um5ERjR6VmF0M3cwVWJVcitI?=
 =?utf-8?B?U2VDdW91STNTMlBnSG1IMDJ5UXFMK0JJM0Jrb3ZzNDk4eEdBZGxFUzB2UHFk?=
 =?utf-8?B?OUxrOFZSZHRPZVFEVCtXb2plWitIbkgxdXdUNlhFb29zQm1BTVZWUDFPSzdC?=
 =?utf-8?B?Zks2UDBWTTNEeVlmcGY1LzQzMzE4VGFKK2ZUdVlLRk9rQmlKQjNaOUNSakpZ?=
 =?utf-8?B?QXZ3ZUd4Q25CYTNFUVlmaStORkN1MjFMdzJKc1U4SlNldllqK2ZZa1pGTVN3?=
 =?utf-8?B?cjdpUENIcXZ4akFsSmdEZkZTaGgvUU1Cd01jTFR0ZHl5TzFIQncrMUlCV0Zp?=
 =?utf-8?B?NFlZV0h3SGhMNDM5cyt1T3pKbWc0YTJPN1ZQY2E1ZlVBMDdoQ2JvS2RUMTIw?=
 =?utf-8?B?TWZ1RmRHWWtoWVRGWnJPT1VMNjczejdWQjFSaWgvdWdnZDl2QjNLS2JFTlFs?=
 =?utf-8?B?enFqWG5yUnMveEp2QzFBeVQ3MndPZkhsbnpBTk9yeEdQQ0h0MGhKRUJiOThS?=
 =?utf-8?B?OUhyUDFBZU01UElHZW5NdDBJbitPT0JzRTBlSXUydlE2L05oaUVoMy9ZYisy?=
 =?utf-8?B?bVFVbnlPL0xyQWJSWTlleE9KbitWYjNrQVVPQXlnT1B5cVkxNkNsTTJpL29B?=
 =?utf-8?B?SG9ZRWdqay9OSitIUU1JYlNmVG5JazlhNUJ2SUNWZEx6T1RLZ0MwL3NqRGZy?=
 =?utf-8?B?U0M5RTBMRmthNzYzeVJJamJ2MWNIN3Arc1pHQk5UNVhDcUN6S3JGV3BzbnFS?=
 =?utf-8?B?RjB3VEFNcE51cmFSUGtwK0RTLzh2aTdnaTJUUjZ3eklERWkyYmFnemsrYnZH?=
 =?utf-8?B?U3hLMlVRREk1TmVDSVJkbENPQ25Cd2FmVXY4M1BuM3FCcVV3WVJhOUFJakhp?=
 =?utf-8?B?aU83c2MzZHNDN2k0UzV0aS84eDNjNnp2dWF0NnhGNEdLSUozdmtQYk5ETUJP?=
 =?utf-8?B?UzRBNWx1RDhXajI2dG8zVDYvRE45SnRwMFdZYmQ0d1UrdURkd1FrQTZSb1BJ?=
 =?utf-8?B?Ni95ME85MWVIUXN3YTczVWtQVWFLVllvMHEyc2xmdG9PNUZKaTFlSWpHUEla?=
 =?utf-8?B?OVNBSmZPMFpyVEptQzNzb2NkWGZaaXRKQlVvQURiK1dOVS9ZTzlHK0R4RW5T?=
 =?utf-8?B?ZUlsZk5ydHZHakNISzM1Uk45L1Eva3ZhYkNvc0F2S0YzOHN1NjlYS2hOd2xK?=
 =?utf-8?B?MzF3Nm0vc0c1cWRCNGFaVk5WNUVJYlNWUlcxSmNoRFM3VTBENW9ObC9GMjJU?=
 =?utf-8?B?NFF4V3BsUkF2bDgvQnZXZXZJa3R6ODhVWkJtMXIrdHJyb3pDRXZXcnpJdTVr?=
 =?utf-8?B?c0lRMWswU2JOYkxpbis0enFHbDFjMWQvRnZoOWFHTkZkRko2a2NBbU5LQmow?=
 =?utf-8?B?cHNsN25BTWxIaFl0cG83Mmp5cnE1aEc4OUl5MmI3M2YvVUdHdnYwd0xidmor?=
 =?utf-8?B?RWVJeGI2WENxcHpLbktQQ1hGY1ppUGpiV0RRYU1HNDlSOStaM0h3QWpwY01H?=
 =?utf-8?B?UmZ5dUtMYm9meno2QXVoeFVUNGRUOHpzaHRJZTkwQXJpcEVSZjdyNjRMZU5h?=
 =?utf-8?B?OFI0S3lObHRDTDRPTlh0SHFJRDBtQ3ZkTytuSDlaS3VBVDV1T2dBSllEM1pY?=
 =?utf-8?B?MVRabnF6U2VrT0hhSDRpUGxGTndYeUdyREw4SzVBeTh0RGRrOUpxc0pJVnZo?=
 =?utf-8?B?ZE91ZElPQ1NqeE5hY2tSbEtqc1Q0bU51WUVSSDZIL0pTdlRPVFdLTVZqSFhw?=
 =?utf-8?B?aHZtK0lydkFZS1hhNndWRDVaN01oYjU3RnFlZ3hJbnZBcmhxeDI1L2F1RmNy?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 378afcd4-5c06-4101-801c-08db5ad91707
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:27:44.6432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i9iaVWlBdz2IKNj+TOM/iGwn454yRk/aqrkLA0dwKKdFoODWjYvHloh6tr8vWe2ec2OGNZs75Gy8su/6r8rgmTjwq/WiNf9dR1SLYl6kd5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5904
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create hdcp_gsc_message
 in and out
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 5/19/2023 2:49 AM, Suraj Kandpal wrote:
> Add hdcp_gsc_message_in and hdcp_gsc_message_out to help
> differenctiate the reply given by gsc to avoid any kind of
> message corruption due message structure reuse.
> hdcp_gsc_message_out will be filled in upcoming patches

Generic question on the approach: for both PXP and GSC proxy, we 
allocate a single multi-page object and use the first half for input and 
the second half output. This makes things simpler because we don't need 
to allocate, map and then cleanup 2 separate objects. Any reason not to 
follow a similar approach here?

Daniele

>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 41 +++++++++++++------
>   2 files changed, 31 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e36f88a39b86..ead16d341f5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -403,7 +403,8 @@ struct intel_display {
>   		 * reused when sending message to gsc cs.
>   		 * this is only populated post Meteorlake
>   		 */
> -		struct intel_hdcp_gsc_message *hdcp_message;
> +		struct intel_hdcp_gsc_message *hdcp_message_in;
> +		struct intel_hdcp_gsc_message *hdcp_message_out;
>   		/* Mutex to protect the above hdcp component related values. */
>   		struct mutex comp_mutex;
>   	} hdcp;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 7e52aea6aa17..be505b2d679e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -665,34 +665,51 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   
>   static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
>   {
> -	struct intel_hdcp_gsc_message *hdcp_message;
> +	struct intel_hdcp_gsc_message *hdcp_message_in, *hdcp_message_out;
>   	int ret;
>   
> -	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +	hdcp_message_in = kzalloc(sizeof(*hdcp_message_in), GFP_KERNEL);
>   
> -	if (!hdcp_message)
> +	if (!hdcp_message_in)
>   		return -ENOMEM;
>   
> +	hdcp_message_out = kzalloc(sizeof(*hdcp_message_out), GFP_KERNEL);
> +
> +	if (!hdcp_message_out)
> +		return -ENOMEM;
>   	/*
>   	 * NOTE: No need to lock the comp mutex here as it is already
>   	 * going to be taken before this function called
>   	 */
> -	i915->display.hdcp.hdcp_message = hdcp_message;
> -	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
> +	i915->display.hdcp.hdcp_message_in = hdcp_message_in;
> +	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message_in);
> +
> +	if (ret) {
> +		drm_err(&i915->drm, "Could not initialize hdcp_message_in\n");
> +		goto out;
> +	}
> +
> +	i915->display.hdcp.hdcp_message_out = hdcp_message_out;
> +	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message_out);
>   
>   	if (ret)
> -		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
> +		drm_err(&i915->drm, "Could not initialize hdcp_message_out\n");
>   
> +out:
>   	return ret;
>   }
>   
>   static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
>   {
> -	struct intel_hdcp_gsc_message *hdcp_message =
> -					i915->display.hdcp.hdcp_message;
> -
> -	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
> -	kfree(hdcp_message);
> +	struct intel_hdcp_gsc_message *hdcp_message_in =
> +					i915->display.hdcp.hdcp_message_in;
> +	struct intel_hdcp_gsc_message *hdcp_message_out =
> +					i915->display.hdcp.hdcp_message_out;
> +
> +	i915_vma_unpin_and_release(&hdcp_message_in->vma, I915_VMA_RELEASE_MAP);
> +	i915_vma_unpin_and_release(&hdcp_message_out->vma, I915_VMA_RELEASE_MAP);
> +	kfree(hdcp_message_in);
> +	kfree(hdcp_message_out);
>   }
>   
>   int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> @@ -782,7 +799,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
>   		return -ENOSPC;
>   
> -	hdcp_message = i915->display.hdcp.hdcp_message;
> +	hdcp_message = i915->display.hdcp.hdcp_message_in;
>   	header = hdcp_message->hdcp_cmd;
>   	addr = i915_ggtt_offset(hdcp_message->vma);
>   

