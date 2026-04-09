Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGV6Frld12kCNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:05:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29613C7730
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC6510E75D;
	Thu,  9 Apr 2026 08:05:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iEeFthuj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B2210E75D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775721909; x=1807257909;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0VfBqMMHdW/4WILvT/GdsAmYE/ju5Kux/6JY5U9GXqQ=;
 b=iEeFthujj2wyjOXdtyP5KHNUFpJRzTBHQWQFBto5LsQ3MSc/U6ZnE9m6
 BDzqM+LoZjhRaoeTCaiveW6XPXRGBPYDAiXMf/b7IB7j8divHE9r7VdCx
 RPdfD3zGpt90+CLUAxM1limXS0XHjeuflTYSX1tAq6Y4lDHRDhC8wPSls
 DZ9rpthFUbY2Q5eISWBdLhO+yFs6mqlVyfOguC1/3LMmQGALWmK6iwuTj
 05ZeUVw8iM/Cv/FrhMSpqp6SjPco3wxAmrn3fjaTVm+oNaE+65zlvAU45
 7ZZJ5qZcJgHaAWpyYoeYCEGbaTkXJDTbmLjxNF4NwhhASn3fg+FH7hA9J g==;
X-CSE-ConnectionGUID: 5/uTtJo+QZSLqIr0rgskSQ==
X-CSE-MsgGUID: XY7Q+Q+5QDShB887RrO52Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75757658"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="75757658"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:05:08 -0700
X-CSE-ConnectionGUID: ESPkje8SRNGZ0cLxBbecVQ==
X-CSE-MsgGUID: 0crDVSBYRJuGyGMo4wS0YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228941119"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:05:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:05:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 01:05:07 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:05:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LE7npbEU3TeiMPDMwhPB5SWpeD+NVvPAjN7G3Swm7Wt3UE49HJRE4Cd2vtjW1uQYI+IcBJnaTb2tQCXUfIjn3ZWhCBOW0lhcnfI8UVwaqAilP73fbu1s2JG32rUn34r+GfDBimNBVDUig+O/KSxFeDX4FqqwurBvrkM0RsGNCwT8ExOTMB5KL2yQA6ZeyJiFtbB9XohFlOrkUBYzw0193ZKTXxj3BU0AC0I3ikhtU6/J+77OktIb0oEQC4POzKMSNsZi48Gs6hkivK6BW04XRVpYkrMlKDpAhQZrzoBhqiDUAm5ixP7LFU1AtIhGHIBWn7L5DrCmkpWxJqnNysJhaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Of7y9lfTAbXopa3YjUpxFX9RTJwWkQiSa5U3xte8kg=;
 b=G6Gja4LluidA80lYHiqfZsWz67FiPJ8uF0ipzWC0pDOgtRKoxX1f6bDfLys87Cux7t+osp4l783amJRdT+DS6RhIvG9z1bov/GweJoSQUX6x5PmdwwqmJM/SdFnTxjyCUEGwJaEViNmZhj/c+XVAuOxgqAIxOOWZZywxbwB6Q96hxSEBchJC8xbJPOHu0Vyms4e7Ihy2urw4F2Hdh1Fx0SxcQoT9w/M+x7dycCDtFKEm2QsyEqomc8tB++bXDd6jVfefdsM7CXpvJYxQqFoTuyA7VfSduXFCtR9zphPjY1hlC7DsoSGkOmhizgHauA/XtKuyVIZB6DdZYn4qYUqv9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by CH0PR11MB5219.namprd11.prod.outlook.com (2603:10b6:610:e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 9 Apr
 2026 08:05:05 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5%7]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 08:05:05 +0000
Date: Thu, 9 Apr 2026 01:05:02 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Linus Torvalds <torvalds@linuxfoundation.org>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Dave Airlie
 <airlied@gmail.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, Yassine Mounir <sosohero200@gmail.com>,
 <g@web.codeaurora.org>, <gregkh@linuxfoundation.org>,
 <intel-gfx@lists.freedesktop.org>, <rodrigo.vivi@intel.com>,
 <security@kernel.org>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
Message-ID: <adddrlQojq8fo2iE@gsse-cloud1.jf.intel.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
 <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
X-ClientProxiedBy: BYAPR06CA0067.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::44) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|CH0PR11MB5219:EE_
X-MS-Office365-Filtering-Correlation-Id: e6628dd7-6652-466b-71b6-08de960eb56b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: tk4jscqw0i10tBlHi0Z85mLZ5c28r4OeEtdCV7cWvccJB2sSEqtRWfuM0HPJnkiJlowQtpzIuCDco/qKFyfSETR/zX38aXsQsvirdsR8RhJcxz3VfH3+QWqi9SlPEBVVqOcZe5FxQ1UOvpEYqmgT2RxKv0AbRYhpedakRENMcuud4xvmbPntKu7QRhw3lc5EdgK9dW9+7/gbrzTOJ9fJ+FZW5xJRAuEL53FXBWRw0UlwCTwyLWLaA8qZLM9bXocdkCjKMkIXLRe/wcNVeQvBGGRQKa1LpnizRcQHSILTeDW0fPvJylkUjgyiVl0Q9/ITwF3pFF2qpDSWxN6IUv5CN5pQx5Q5vNR4sQngv0ADThmVMuVJ35SvulJUT1NSLVmKLezyfqUFPby/mXBm8kkOhumvoNnV+MyjQHm4S46CeSClZIjwr9Ucy1fgazxm2avF2T1NzNtDP6yaAyUDI6Tt0irPZtH6Ma8/PiuyMPSoDJA2Rq0meLECIpbFgtg6J5tHxUoD5Dj6oYEzdyYBz8Gcc9bv21qFPzAP8YwZyMMIJbHj/J7daLNANKa4M+8neOqqrzAZgwD79RDlmOGnWXE2XMLj9RQ64yhU37+p8cjQvbLkfvXtpY318VmUw8yt8kvGxs5vav9DpeBuhUi5qNMaEUTjD41OKQix13946f4/Q1xZpZr3XXOR9IGvN5gbnMUG/Xvj3QolhRzUXGxyeL04xY9jf3QxLrMm1uWcm4N+/y4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWtNc0ppNUpydm9jc21VaThFUXZzQTVwcUVSbjBrc2dPUXQzSy82dnpQZGQ4?=
 =?utf-8?B?TWxVK2lhOG9NazNzd2xpOGxraE1vbVFZNm5MWVFmaExWSzNZOWtMZDU2S0NF?=
 =?utf-8?B?Mk9LQjhOd0VWVGRVbDc3NGhIeTFnWDQxNEczMFpNbytPUFBRMXBMVHNZTHdW?=
 =?utf-8?B?VFNHWDROZ1Mva1dablhjRVlIZUpyNXdXWElyZlJMZEZ6QXBkc2dvOG1aVUZ1?=
 =?utf-8?B?bHExSXZTVlRKZjJ3Rm5KQ29BS09BYmlFVnhBek41a1dpc0tXOTc0a29BblV0?=
 =?utf-8?B?bWV5Q01NVXZLRkZWL01KcmlwdGxsWWNNQzlGR0J2eXd2L04ySFJ6ZWsvQUd5?=
 =?utf-8?B?RE1CM28xYkc4RjJhUlFjNHIxcWhzRnB4MExwbStxS3pLNXZTVjdaUjZiN1dz?=
 =?utf-8?B?OVV5L0tvNG4vOUFyUUVhNVBPdExubHVPeEFQWms1QXN6VVVkSTFvWnlrRlpr?=
 =?utf-8?B?SlI0RmNjWDhYOG5IUzM0bVJ4QmpyanFxWFNCWlJyZ2srd1p0Yk9MY3doSmJZ?=
 =?utf-8?B?ZmltdjI5TmN6ekV6UTJFa094dXIwZy9tZEE3OThYMGlXVDZ0bUE1S1k0WHdl?=
 =?utf-8?B?anU5N3ZIaUdyNXcxaUdVSmgyUHJQYkxVcHJGMFdYNkRQUDFDN2RmTXhVZjRO?=
 =?utf-8?B?aWU2T3h0VzVBUURQYW9ZNnJVa2hHWERzczU3aGJMNDBuV3NCZ1c5U0ExWFhq?=
 =?utf-8?B?TnhiajdHL0VyaWFYaGxVMEFzMHdGeGg5SlhpQkZGdDE3cE9rUmtwa2NaNmlv?=
 =?utf-8?B?L2lJTTdwekVDTnd4aWpFTzZCM3lRdm1waitzRGs2dTNSTjcxYzRCaWtkZDMy?=
 =?utf-8?B?aUJZOU5Ic3VvK0FYa3lUWk1yZkdNeUZFUHc5RksyQXB0Ky9QaXJ6cmlidStj?=
 =?utf-8?B?a1QrcnhBRUx2L0Z5SXlQRmtHRkhWOVlsWDI3eTVZMTFYT2QwUWQreldvVlFx?=
 =?utf-8?B?NFNrc0E5Y3p2VzR3Q2FQbjIzUS9oV1BZc1lGMzB4UUJZVTQ0US9XSExiNHJa?=
 =?utf-8?B?ODhCZmxZWmlpaU1GVGM1bTAzVCtYelU5aDBaZmFQdUdvM0F3emYzdFQrKzk1?=
 =?utf-8?B?RGRzcGtBd240SHdadnVJb2w2TiszcWRDeTBGazB2Z2NsTHpRSEVMTU5nUUtp?=
 =?utf-8?B?NkdyVkZ1V3F5TGRSc3dUVGFOalpBR2wvWnNLT3dkTHNJK0tWSGxQcWZockRZ?=
 =?utf-8?B?cVovbVk2U0RpM2s1c0lVdTVDTEhhNHV4WDl2eG1Uemdydi9zLzFaUTZ2OW4v?=
 =?utf-8?B?d1hLQXZHUU5iemFnRVhTc0NuV043OTBqK2ZaUVZrS2QrZFhRSGp2Q3Y2MVQw?=
 =?utf-8?B?bGZFaHNYSkNZbVVuazFKUmJ5a1pKcFJ4ZWdxMitKWXhhNW9oTjNVQThnbzZt?=
 =?utf-8?B?TTRGQWk1UDJwdGNCcllyOHpBSEY5Tm9QMlJWM3NKbENudWhNeVFyRmtCUlhP?=
 =?utf-8?B?RTVPU2wwYUppSU8zNU5DeW54c2pMdlNiUUxIdVhyeWFhdXpsSC9vU1d5WVF5?=
 =?utf-8?B?RlprOWh6SmVRVDAyTllaaW81V1hUbll6dGdpS0dvQmtWRGloMHFLRGZJN2gx?=
 =?utf-8?B?WTVkTmNuY0N6aEFpRWxWNEhBVVEzeHBOd3lTTzQ0UUQ3ZDhQNnM2MXkvQXFa?=
 =?utf-8?B?N0VmK3pUMEhEdlNtT2FwcjVUQkNxanRPMUdRaGlla01CN2VMSGZHcno4Uk12?=
 =?utf-8?B?OXlBQ0ZhakE0TUkxSDUvaFFBdE5iTTZDOUFrcDVkSldZdlRreU9vVlZVVDVp?=
 =?utf-8?B?SlBsVlNRQnhVN05Hc0RmeThqc2hrTVhIdUIzc3pYVXJxQzVJZzViRmV1UDdZ?=
 =?utf-8?B?aTR4Qk45Z2hGS0h0QURnU2ZPNVcweUVXZTJLWWVTOG1aOTc4dFlZWm5jWHQz?=
 =?utf-8?B?THY4OG54NDdWR1NRNnhWV3NxZ3RFOWZIS0pKVjE4TTNWSWw5SlRVdzhKTXdX?=
 =?utf-8?B?Tm5nZ1hueXR4VTFXLzFDdkswbU9ldXpOZVV3aHVnMkNxY0lIaDdkZHJVYi9M?=
 =?utf-8?B?ZW1lQi82WC8xSXB0Uk8zdlUyRWRtL0pCV2VnVk1FV05pbnQ3L0VzZjczekNr?=
 =?utf-8?B?REsrMHZFL2k3VkpseksvWDRlWlc4cTkwYlFVU2VGN0tyalFGcDBZVFNkdnhX?=
 =?utf-8?B?NHhxWU9VYzA2YStGRGxFUTdPMjJ6MExtQllKZ01pVDVSV2tZanZxQndrR2kw?=
 =?utf-8?B?Nk94NlBGQUtOQUVYejhLaGlsbUMrYThWaDRpYjNCMFByZjZWR1E0ZDJzMXRB?=
 =?utf-8?B?UVdjay9oRTdnLzVrMnBneFNNRzdqYnRBUDR3MW5FTzI3a3ZRTEQyVUt0OHZk?=
 =?utf-8?B?L3dHbmNYSGJSc3hjV1NtaXNMQ3FnZURyK0NBWU1xUnE2VHIyYzVsQT09?=
X-Exchange-RoutingPolicyChecked: eCE86ejWs3HRSXQh9c8ooAeGL6EiuAsAkzgiY3swES6efPV+A932kOS2rucNsjTJuMTdmf/6rFxoLBkhphI7JJBy93ZkSuk/hGlkEE29AOCZlFTQzxXMkshljFslmVYME1l/iXNkLzYdP43mFHDi2eNdZVs3ENkI3Bwg3ZECJgYvfdiKvQCDSaDcji5pLQ4kD6odOyp58W11yaxaf1uzYvHSe8fv9IXNRXE1QLaoziJ3f/bRveXBcvcogC5uyyqJkDC6DyXO9o3gqVAcosEh6eHMyJjm3ogdGbIrc8wrz2HMx7KAkkCHDBYiy13PD3xL7Ii3DXZKchWDuOZRMNxBMw==
X-MS-Exchange-CrossTenant-Network-Message-Id: e6628dd7-6652-466b-71b6-08de960eb56b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 08:05:05.3495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jJ4dtP7FIgD0mYQ89cexvScgCcEV1IPSzFSOCQnLqe2yMjy5JjjBEESF4HJhrB+yOMjx64xkrD0QRxqxoi+s+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5219
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,gmail.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gsse-cloud1.jf.intel.com:mid];
	FORGED_SENDER(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A29613C7730
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 09:46:42AM -0700, Linus Torvalds wrote:
> On Tue, 7 Apr 2026 at 09:38, Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com> wrote:
> >
> > The big question is, what stance to take on a value of AI generated low
> > quality reproducer code which was accompanied by wall of AI slop which

The reproducers from what I've seen are complete slot.

> > caused hours of time get wasted on debunking the hallucinations?
> 
> I don't th8nk there are any good rules.
> 
> Some of the AI reports we get are great, with no slop in sight and
> finding really subtle and real bugs.
> 
> And others are very much not.

+1?

I dealt with some complete AI slop today reporting a hallucination.
It was a subtle reference-counting issue that, if well documented,
probably shouldn’t have been flagged. IMO, it’s an opportunity to clean
up the code or at least document why it works. Yes, annoying, even more
so if less actively maintained status—but in general it flags hand-wavy,
questionable code that needs an explanation.

Conversely, today on fresh code, Sashiko immediately flagged very
subtle, likely nearly impossible-to-hit issues, which I appreciated, and
closed.

> 
> In general, I don't think that's all that different from bug reports
> from actual humans ;^/

So yea, problably worth a look at reports unless want to orphan code.

Matt

> 
> So I'd suggest just fixing the bugs that are noticed, and giving
> credit appropriate to how good the report was.
> 
>            Linus
