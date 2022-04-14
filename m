Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FBB500CD6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 14:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B4FD10FDE9;
	Thu, 14 Apr 2022 12:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C183010FDE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649938325; x=1681474325;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wwqsHBGpDm36t3vNFp+ebdtlR9iRkP9j1iDqwyEczu8=;
 b=PVCapHAvqWwgYWR/BzmOgL030gG6Rsq7MOUpA5fw6BF28hKFjZltJdIs
 6RzDdKJ/zHXVVQNi8YR3k4Zx2shfcoqKGCnJz2+ePGjFu0psNuGdgEUbX
 bSO5Sft7Xh4MPwVTNsRSmjFfHDRTVaG8LRyOWMhmAOVR1EGDqX9BkOKl3
 oHyWMPKAeu4WKdo+czUgQDc57EwO+PwhVJ2esGbMnBd5eMzUcVOcS95Ml
 OWCh2Y9yOvvnCDvqwU3sCndiuVc19/npDIEH3bCiB2bQ6OnWsRkqB1cEn
 2xFWExdWpDDz5F5MCSQHi9LJWCvYeCgQ8CldjvbTsKsaOjNWlOSR4htwl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323359357"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="323359357"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 05:12:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="527374609"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2022 05:12:04 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 05:12:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 05:12:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 05:12:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbkN/FlwIDuiPNxCdpi8PrHvPTbMg/UoqKo0DotIjq7E2mcTy58MEWbmaSZ8KJitnNkuOQPO6DHLlmtxsB2vMqsTOTa4tMLz0EyL3GPz/sa+lqyd8ULbKHUyjdZOYzToJ47EQigpxzVvlEzj6NyJY6wC6K4iglSKqdKIceZc3x7QYleKFfqLdng7JWBZaROCFM0wX0+Lji6CPBhBUVXxVfVcTw0jcZj8UOSjkqCt4pa3UBiMX+HVNS6dwphqp8NVrPMGat6s+m4LgoPf48f/rZqrfWV4oNOPil8t2pVkMvGprJhC+ln+4iTmCUTxsRB4wyAWUt4416Df355UggRBJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQKP2fKon9LRNEHYcESrFD/sKacUs0oilU9RADL41vU=;
 b=XAa9BXKgSlEYbNybTx3qDoUZiyXs5i4SlbG9vgW9Fl+IO9MgOPYZe6XVAO8L80l3FTWUYPwYf4+HsKOoiBcPQZMM6sG5FzeRdDNOO+pfHGi3qt4QbhEwUh1vRScH7VW0l7LTAjxEFy4kdjbNlv+9bYcaFBm+oA1UBvn7FzWShMZiNwf7UXxWgNC9TtKdRMQg/x8BYYpeC1iXH+leACT11KqcC2UMaDBUgHAtYGzw/pzdh4LHmMD6M4hMBkcscisjCPCmBv+qoCU9sy0I0Tb8cNyaHe2K2I9rK3faeWHA/5W0+sESdqbYSldPIBoCr6mjKsiqiK50gNNh+IXJGHPYMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by BY5PR11MB3926.namprd11.prod.outlook.com (2603:10b6:a03:184::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Thu, 14 Apr
 2022 12:12:02 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564%9]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 12:12:02 +0000
Date: Thu, 14 Apr 2022 17:41:48 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <YlgPhO3vNE9BHRGD@bvivekan-mobl.gar.corp.intel.com>
References: <20220404093125.73327-1-siva.mullati@intel.com>
 <20220404093125.73327-2-siva.mullati@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220404093125.73327-2-siva.mullati@intel.com>
X-ClientProxiedBy: PN2PR01CA0008.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::13) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 775499f4-e16b-4dba-95e7-08da1e0ffb70
X-MS-TrafficTypeDiagnostic: BY5PR11MB3926:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB3926B825E62AC080053C47899FEF9@BY5PR11MB3926.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KVsmM0AzdEuJXXXc8slV8Ts3i7NPBLdqxbihUSAgtb/VxG6Fe24z5YHRlr4X7caIIoDlpLcZSTXWJ4B+q7WbVLHPq+uODxM0wYbtehXykkF/lDLxmriJFVqotZ2qT0JuyzfytOXng1dejXhTr/b/IE8bUe00YhmN1hMta63Qsn1U+P+sC+pDrKX7YC0HD1RNc6b3Xk4NTHlYy8AEeBckP2rxayei/kTj4j79S7EjZBAjekpkOX9BFCGgiAC2yXJ8Y24E8PY0Ztx7JY2dF0X7mN+CYGPdCtoOQivgVsurUdzhNdGUziLyqA+WMonqMb3FVbKlrDpM7lQVp1rcNgi19WAa4RTNqLcpAHJ0mZTCGrrww8D/3F+hV80hyo+KWYR4OfYwt2a0sBmc61BiH6O4HKbj4YQgNMzEn/CdOxllTeSFDiWdtzfPaEKy/HoHKeaZERwG62+K1d93dUwT+v0fr2fhawgQJ7A4LnBXJyQrwNd5YhbKH2aISgiE48Oxa7SeYYq76vXcSx4UtQ61DInNVDuBapgiho1wrFjR2TCFlPQGnrNX42BVAfU/Zd1q/JRQTXkLyvgCT1tJVv3VUjC9a4beT7LjQkYMfYFWIiizVtxK4l/lrkSNvZwHCkr7JQseJm58q6zi3i33DxwGh1dVKA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(44832011)(83380400001)(508600001)(6506007)(6512007)(6666004)(2906002)(186003)(26005)(30864003)(5660300002)(4326008)(8936002)(86362001)(53546011)(66946007)(66476007)(38100700002)(8676002)(107886003)(82960400001)(66556008)(316002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2VIaHlRQWIzTUo0NVdRTHVPRzRWMHhwcy9DVk1qUGRyQjRmRkQ5ZjRoUUFI?=
 =?utf-8?B?ZkVvdTNwcFpTTTNaWnFoMEVGTjlnMi9UU09XSVplTXdQc2ppL01xUUJPakJV?=
 =?utf-8?B?bHRpQlBkaWVQSkJzVVdNUzU0ZE8xck8zOHl3eloxdDdOengwZXFZQzRNSnRv?=
 =?utf-8?B?V1Vtcmw5aXZSOHlrY3AzaGhmMXN5c2dOTzVSbGdyUnpDVFpSYW1QbTYrTlEy?=
 =?utf-8?B?NFRpS3k5RDhGUUtSbEpNaThQRWpzZG00QWlFS0R2MUNtS1ZJd21JaXpkaGxs?=
 =?utf-8?B?YVNzaWxPdi8ybmxDUGt6c1dVRDF2VlJQczR2cUh0azdCOGw0OE90dDJtZXBX?=
 =?utf-8?B?YWdydmdHeVhWck4xUForZmo1Tnc2M2o2RHR6aUhrQ0JpRnhMcW9RSERmU2p2?=
 =?utf-8?B?V0ppL3FFRjlKMHhzSncyZWEyb1Rjb2VPNHVMTmhnbEZHOUpWMS9WRDV2UHFX?=
 =?utf-8?B?Ukdqamc4TGsxUWtnWmE4ZFJvaUtFSXA1ZFJMSGNpallHY0RvOFRCVkRUV0E2?=
 =?utf-8?B?eUdvbWFQV3BUbER5amd6d3Q0N2d5TXdUOGJVc3RUNSs1WXhZQW54RUs0VGZE?=
 =?utf-8?B?eENxeFQzS1hsenZhdDlnclA0dUtXZDJXQlRwbWRDd2lhVHYxNERUMllFUzd3?=
 =?utf-8?B?VXFMbzhmSFJkQkdhSC84VkErWkpucWJUa0lUSzNoRHlEMStsbkdoUmpPTnNo?=
 =?utf-8?B?TzVwUWZFTG1BcXgrd2JHZllDWjU5QzBkMkJ0RGo3ekY2SGt0OHo5MWZ4cjB3?=
 =?utf-8?B?b1RNQmttZTIwTjZBSjFuQ0pyUUlnY2M4a3JDZ2VMNFdrcjlUcnV3Z3pBOElh?=
 =?utf-8?B?ZWdoSWNDYy9QcFFpRWtqeElzNnRCbmdUMDNkUWxiN3NieVcxNFV3bk1mK0Q4?=
 =?utf-8?B?SzdaR1Q5VXdKNUV5RnpOZUR1REFWSFo3bEZiaVNPa25kcDFIQmQvaTNUaUN3?=
 =?utf-8?B?TUYrVlJMTG9CZDBVeVdIbWE3SWgwQ1hMVFVjOHE0VkJRNFRxYTcxcXN6blRt?=
 =?utf-8?B?bHAwZ1BBOUtqOWxIUDNYTXFPRDhPc2hRYVZDZ2IrY1dWRGpjdEsraUs5K2No?=
 =?utf-8?B?eS8zOXAvYSthQ2FOYVRyNGc2dzNxbU14cXhOSXRCbW0rWHNhdSs3eVhKbnRV?=
 =?utf-8?B?S1J0TzBsNEtabndFaEU4UitaRDBuVzBaSmJRUkYvUFMwVlhUOWE3TllGOWNK?=
 =?utf-8?B?bEpETlVwVGFHb3hINlpVeXNnanQ4M29CaW9ZbjhNNTUrWTNrcnd6Y0lPRlds?=
 =?utf-8?B?eGh0RUovbmFJQ1VRdTc1QjJNQ015emlyYzROME9MNi80bkhQTEZYY1ZOYXc5?=
 =?utf-8?B?YnZKa1AyVGdnNzJQbXc3d2E2NlJaL0s2WHNScVZsb2oycVRaRmNrY2NKbEdn?=
 =?utf-8?B?Zkd5RHJMMkpDb0tYaXdkRjlLdTZJdTdPdnlyZXREaDVXcXNYOE5Ic2lzYjZX?=
 =?utf-8?B?eGFpTDl6b3hycUY5Vk9wSGxPMUNpZStTY3A4cGdvQXVIcGJ2cGQ5bEZyMDVN?=
 =?utf-8?B?b0NVVExBSGgyc3MwOSswVTEyOEN3a0RBR0FVTHRKV25TUFdaRGhyVGxXbE5T?=
 =?utf-8?B?R200UHMxdG14ZnF3WUo4TGt6NFBtdnhaN1hOeXVOS3h3ZldsY2VuQjQ1aWFs?=
 =?utf-8?B?QnNTZDh2Zll4RjdaSG5SSEJDR2hRcnVlSW5zd21wN2RQZU5EVGtodVFpVUMz?=
 =?utf-8?B?OFVRR1gveVRQeXpCcWI4MDNOYkR3VDdhYlVqSEpsbVQvWStSSFcyWmNVbWcw?=
 =?utf-8?B?cnRhdGJYVXUySHpseWZtVjMxQjZDZXQ5c2lmQnJkYVB2NWFGWXhuNjQwcmtI?=
 =?utf-8?B?c2tieUVwb3UvYmRHcVR6QnRnSGdnQVVpWDRubHlxeE53MkZPdityRExKOVlU?=
 =?utf-8?B?NmRTUlJIQkhqYnV2V3B2YUhUZW5RdGUwcDVJWlpDcjhQS3VJQytaOXJTWXhX?=
 =?utf-8?B?Rm1sNEhXVndOZEovOERDcEZJNE5YeEFoSW15Y0ZpcjR4K29XZGh1eDlXN29T?=
 =?utf-8?B?cHNiVnptQTdha2lQRTREYzBTTnZXUTh4SitSbC9PTjBLaFRWWEJTNWdwWUlG?=
 =?utf-8?B?TDZaQXhuc1B2ZGRUeVRQcjNQaDhBdHpFNjNEUDArVld3c2ZKYmVKN2FuT1M1?=
 =?utf-8?B?bFZZbzVkdHhHWXBBN3FuNWJmdTdvcWRUTmdUTDFVNEpxZndaNE9QQWZ0dktR?=
 =?utf-8?B?MERyK3huMk42YXo2cjNtWTkrT1l1YTNiem5TZnVyaFExTTFJbjhFaXdjQW4v?=
 =?utf-8?B?RjJPMVMxQi85K0R6VW5YbnQ3dVJHdDI3OHZGQjFyejROeFpVWGl6dzJlSm5C?=
 =?utf-8?B?WTNvczEwN2pidFk5SEh1TFUyc25jMElXOWpPK2dPNVVLcEg1Z0JTdlZPcHhh?=
 =?utf-8?Q?dZfL8T7JNcthsuF34NCxUoTycANh47kcBl7YGh1oK7loc?=
X-MS-Exchange-AntiSpam-MessageData-1: LYlzs8XTOKAmVw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 775499f4-e16b-4dba-95e7-08da1e0ffb70
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 12:12:01.9710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4+WO5yAM6JJONcbxaheTwswuesYTm8DJaZERObVrrNOlG+hYBcZEoFMUbzf0zv16SARhLyJ4ANqENUg7M2JrigWDzT/5AULC6Zj2zovuNI4kVWKhiUbsGYsgemVyRJNu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert ct buffer to
 iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04.04.2022 15:01, Mullati Siva wrote:
> From: Siva Mullati <siva.mullati@intel.com>
> 
> Convert CT commands and descriptors to use iosys_map rather
> than plain pointer and save it in the intel_guc_ct_buffer struct.
> This will help with ct_write and ct_read for cmd send and receive
> after the initialization by abstracting the IO vs system memory.
> 
> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 200 +++++++++++++---------
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
>  2 files changed, 127 insertions(+), 82 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index f01325cd1b62..64568dc90b05 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -44,6 +44,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>  #define CT_PROBE_ERROR(_ct, _fmt, ...) \
>  	i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
>  
> +#define ct_desc_read(desc_map_, field_) \
> +	iosys_map_rd_field(desc_map_, 0, struct guc_ct_buffer_desc, field_)
> +#define ct_desc_write(desc_map_, field_, val_) \
> +	iosys_map_wr_field(desc_map_, 0, struct guc_ct_buffer_desc, field_, val_)
> +
Did you try to make the change Lucas mentioned in his comment on rev0,
to pass `struct guc_ct_buffer_desc *` as first argument to the above
macros? Was it not feasible?

>  /**
>   * DOC: CTB Blob
>   *
> @@ -76,6 +81,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>  #define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)
>  #define G2H_ROOM_BUFFER_SIZE	(CTB_G2H_BUFFER_SIZE / 4)
>  
> +#define CTB_SEND_DESC_OFFSET	0u
> +#define CTB_RECV_DESC_OFFSET	(CTB_DESC_SIZE)
> +#define CTB_SEND_CMDS_OFFSET	(2 * CTB_DESC_SIZE)
> +#define CTB_RECV_CMDS_OFFSET	(2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE)
> +
>  struct ct_request {
>  	struct list_head link;
>  	u32 fence;
> @@ -113,9 +123,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>  	init_waitqueue_head(&ct->wq);
>  }
>  
> -static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
> +static void guc_ct_buffer_desc_init(struct iosys_map *desc)
>  {
> -	memset(desc, 0, sizeof(*desc));
> +	iosys_map_memset(desc, 0, 0, sizeof(struct guc_ct_buffer_desc));
>  }
>  
>  static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
> @@ -128,17 +138,18 @@ static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>  	space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
>  	atomic_set(&ctb->space, space);
>  
> -	guc_ct_buffer_desc_init(ctb->desc);
> +	guc_ct_buffer_desc_init(&ctb->desc_map);
>  }
>  
>  static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
> -			       struct guc_ct_buffer_desc *desc,
> -			       u32 *cmds, u32 size_in_bytes, u32 resv_space)
> +			       struct iosys_map *desc,
> +			       struct iosys_map *cmds,
> +			       u32 size_in_bytes, u32 resv_space)
>  {
>  	GEM_BUG_ON(size_in_bytes % 4);
>  
> -	ctb->desc = desc;
> -	ctb->cmds = cmds;
> +	ctb->desc_map = *desc;
> +	ctb->cmds_map = *cmds;
>  	ctb->size = size_in_bytes / 4;
>  	ctb->resv_space = resv_space / 4;
>  
> @@ -218,12 +229,13 @@ static int ct_register_buffer(struct intel_guc_ct *ct, bool send,
>  int intel_guc_ct_init(struct intel_guc_ct *ct)
>  {
>  	struct intel_guc *guc = ct_to_guc(ct);
> -	struct guc_ct_buffer_desc *desc;
> +	struct iosys_map blob_map;
> +	struct iosys_map desc_map;
> +	struct iosys_map cmds_map;
>  	u32 blob_size;
>  	u32 cmds_size;
>  	u32 resv_space;
>  	void *blob;
> -	u32 *cmds;
>  	int err;
>  
>  	err = i915_inject_probe_error(guc_to_gt(guc)->i915, -ENXIO);
> @@ -242,27 +254,35 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>  
>  	CT_DEBUG(ct, "base=%#x size=%u\n", intel_guc_ggtt_offset(guc, ct->vma), blob_size);
>  
> -	/* store pointers to desc and cmds for send ctb */
> -	desc = blob;
> -	cmds = blob + 2 * CTB_DESC_SIZE;
> +	if (i915_gem_object_is_lmem(ct->vma->obj))
> +		iosys_map_set_vaddr_iomem(&blob_map,
> +					  (void __iomem *)blob);
> +	else
> +		iosys_map_set_vaddr(&blob_map, blob);
> +
> +	/* store sysmap to desc_map and cmds_map for send ctb */
> +	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_DESC_OFFSET);
> +	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_SEND_CMDS_OFFSET);
>  	cmds_size = CTB_H2G_BUFFER_SIZE;
>  	resv_space = 0;
> -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "send",
> -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
> -		 resv_space);
> +	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "send",
> +		 CTB_SEND_DESC_OFFSET, (u32)CTB_SEND_CMDS_OFFSET,
> +		 cmds_size, resv_space);
>  
> -	guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size, resv_space);
> +	guc_ct_buffer_init(&ct->ctbs.send,
> +			   &desc_map, &cmds_map, cmds_size, resv_space);
>  
> -	/* store pointers to desc and cmds for recv ctb */
> -	desc = blob + CTB_DESC_SIZE;
> -	cmds = blob + 2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE;
> +	/* store sysmap to desc_map and cmds_map for recv ctb */
> +	desc_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_DESC_OFFSET);
> +	cmds_map = IOSYS_MAP_INIT_OFFSET(&blob_map, CTB_RECV_CMDS_OFFSET);
>  	cmds_size = CTB_G2H_BUFFER_SIZE;
>  	resv_space = G2H_ROOM_BUFFER_SIZE;
> -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "recv",
> -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
> -		 resv_space);
> +	CT_DEBUG(ct, "%s desc %#x cmds %#x size %u/%u\n", "recv",
> +		 (u32)CTB_RECV_DESC_OFFSET, (u32)CTB_RECV_CMDS_OFFSET,
> +		 cmds_size, resv_space);
>  
> -	guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size, resv_space);
> +	guc_ct_buffer_init(&ct->ctbs.recv,
> +			   &desc_map, &cmds_map, cmds_size, resv_space);
>  
>  	return 0;
>  }
> @@ -279,6 +299,10 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>  
>  	tasklet_kill(&ct->receive_tasklet);
>  	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
> +	iosys_map_clear(&ct->ctbs.send.desc_map);
> +	iosys_map_clear(&ct->ctbs.send.cmds_map);
> +	iosys_map_clear(&ct->ctbs.recv.desc_map);
> +	iosys_map_clear(&ct->ctbs.recv.cmds_map);
I think there is no need of clearing the iosys_map when were are zeroing
the complete structure area below.
>  	memset(ct, 0, sizeof(*ct));
>  }
>  
> @@ -291,8 +315,8 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>  int intel_guc_ct_enable(struct intel_guc_ct *ct)
>  {
>  	struct intel_guc *guc = ct_to_guc(ct);
> +	struct iosys_map blob_map;
>  	u32 base, desc, cmds, size;
> -	void *blob;
>  	int err;
>  
>  	GEM_BUG_ON(ct->enabled);
> @@ -302,9 +326,14 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>  	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(ct->vma->obj));
>  	base = intel_guc_ggtt_offset(guc, ct->vma);
>  
> +	if (i915_gem_object_is_lmem(ct->vma->obj))
> +		iosys_map_set_vaddr_iomem(&blob_map, (void __iomem *)
> +					  __px_vaddr(ct->vma->obj));
> +	else
> +		iosys_map_set_vaddr(&blob_map, __px_vaddr(ct->vma->obj));
> +
>  	/* blob should start with send descriptor */
> -	blob = __px_vaddr(ct->vma->obj);
> -	GEM_BUG_ON(blob != ct->ctbs.send.desc);
> +	GEM_BUG_ON(!iosys_map_is_equal(&blob_map, &ct->ctbs.send.desc_map));
>  
>  	/* (re)initialize descriptors */
>  	guc_ct_buffer_reset(&ct->ctbs.send);
> @@ -314,15 +343,15 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>  	 * Register both CT buffers starting with RECV buffer.
>  	 * Descriptors are in first half of the blob.
>  	 */
> -	desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
> -	cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
> +	desc = base + CTB_RECV_DESC_OFFSET;
> +	cmds = base + CTB_RECV_CMDS_OFFSET;
>  	size = ct->ctbs.recv.size * 4;
>  	err = ct_register_buffer(ct, false, desc, cmds, size);
>  	if (unlikely(err))
>  		goto err_out;
>  
> -	desc = base + ptrdiff(ct->ctbs.send.desc, blob);
> -	cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
> +	desc = base + CTB_SEND_DESC_OFFSET;
> +	cmds = base + CTB_SEND_CMDS_OFFSET;
>  	size = ct->ctbs.send.size * 4;
>  	err = ct_register_buffer(ct, true, desc, cmds, size);
>  	if (unlikely(err))
> @@ -371,31 +400,33 @@ static int ct_write(struct intel_guc_ct *ct,
>  		    u32 fence, u32 flags)
>  {
>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> -	struct guc_ct_buffer_desc *desc = ctb->desc;
>  	u32 tail = ctb->tail;
>  	u32 size = ctb->size;
>  	u32 header;
>  	u32 hxg;
>  	u32 type;
> -	u32 *cmds = ctb->cmds;
> +	u32 status = ct_desc_read(&ctb->desc_map, status);
>  	unsigned int i;
>  
> -	if (unlikely(desc->status))
> +	if (unlikely(status))
>  		goto corrupted;
>  
>  	GEM_BUG_ON(tail > size);
>  
>  #ifdef CONFIG_DRM_I915_DEBUG_GUC
> -	if (unlikely(tail != READ_ONCE(desc->tail))) {
> +	if (unlikely(tail != ct_desc_read(&ctb->desc_map, tail))) {
>  		CT_ERROR(ct, "Tail was modified %u != %u\n",
> -			 desc->tail, tail);
> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
> +			 ct_desc_read(&ctb->desc_map, tail), tail);
> +		status |= GUC_CTB_STATUS_MISMATCH;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
> -	if (unlikely(READ_ONCE(desc->head) >= size)) {
> +	if (unlikely(ct_desc_read(&ctb->desc_map, head) >= size)) {
>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
> -			 desc->head, size);
> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> +			 ct_desc_read(&ctb->desc_map, head), size);
Can we avoid reading the head from ctb->desc_map twice? Since each
iosys_map read translates to memcpy, it is better to avoid repeating if
we can cache from the earlier read.
> +		status = ct_desc_read(&ctb->desc_map, status) |
> +			GUC_CTB_STATUS_OVERFLOW;
Same here, can we avoid reading status since we already have it read. We
can do the same like how it is done for the GUC_CTB_STATUS_MISMATCH case.
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  #endif
> @@ -418,14 +449,14 @@ static int ct_write(struct intel_guc_ct *ct,
>  	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
>  		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
>  
> -	cmds[tail] = header;
> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, header);
I prefer not to use the MAGIC number. My suggestion is to use
sizeof(tail) since we need the offset in bytes.
>  	tail = (tail + 1) % size;
>  
> -	cmds[tail] = hxg;
> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, hxg);
MAGIC number again. There are numerous places in the patch, where
numbers are used. I prefer to remove it.
>  	tail = (tail + 1) % size;
>  
>  	for (i = 1; i < len; i++) {
> -		cmds[tail] = action[i];
> +		iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, action[i]);
>  		tail = (tail + 1) % size;
>  	}
>  	GEM_BUG_ON(tail > size);
> @@ -442,13 +473,14 @@ static int ct_write(struct intel_guc_ct *ct,
>  	atomic_sub(len + GUC_CTB_HDR_LEN, &ctb->space);
>  
>  	/* now update descriptor */
> -	WRITE_ONCE(desc->tail, tail);
> +	ct_desc_write(&ctb->desc_map, tail, tail);
>  
>  	return 0;
>  
>  corrupted:
>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
> -		 desc->head, desc->tail, desc->status);
> +		 ct_desc_read(&ctb->desc_map, head), ct_desc_read(&ctb->desc_map, tail),
> +		 ct_desc_read(&ctb->desc_map, status));
>  	ctb->broken = true;
>  	return -EPIPE;
>  }
> @@ -499,20 +531,22 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
>  	bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
>  
>  	if (unlikely(ret)) {
> -		struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
> -		struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
> -
>  		CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
>  			 ktime_ms_delta(ktime_get(), ct->stall_time),
> -			 send->status, recv->status);
> +			 ct_desc_read(&ct->ctbs.send.desc_map, status),
> +			 ct_desc_read(&ct->ctbs.recv.desc_map, status));
>  		CT_ERROR(ct, "H2G Space: %u (Bytes)\n",
>  			 atomic_read(&ct->ctbs.send.space) * 4);
> -		CT_ERROR(ct, "Head: %u (Dwords)\n", ct->ctbs.send.desc->head);
> -		CT_ERROR(ct, "Tail: %u (Dwords)\n", ct->ctbs.send.desc->tail);
> +		CT_ERROR(ct, "Head: %u (Dwords)\n",
> +			 ct_desc_read(&ct->ctbs.send.desc_map, head));
> +		CT_ERROR(ct, "Tail: %u (Dwords)\n",
> +			 ct_desc_read(&ct->ctbs.send.desc_map, tail));
>  		CT_ERROR(ct, "G2H Space: %u (Bytes)\n",
>  			 atomic_read(&ct->ctbs.recv.space) * 4);
> -		CT_ERROR(ct, "Head: %u\n (Dwords)", ct->ctbs.recv.desc->head);
> -		CT_ERROR(ct, "Tail: %u\n (Dwords)", ct->ctbs.recv.desc->tail);
> +		CT_ERROR(ct, "Head: %u\n (Dwords)",
> +			 ct_desc_read(&ct->ctbs.recv.desc_map, head));
> +		CT_ERROR(ct, "Tail: %u\n (Dwords)",
> +			 ct_desc_read(&ct->ctbs.recv.desc_map, tail));
>  
>  		ct->ctbs.send.broken = true;
>  	}
> @@ -549,18 +583,19 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
>  static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
>  {
>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> -	struct guc_ct_buffer_desc *desc = ctb->desc;
>  	u32 head;
>  	u32 space;
> +	u32 status = ct_desc_read(&ctb->desc_map, status);
>  
>  	if (atomic_read(&ctb->space) >= len_dw)
>  		return true;
>  
> -	head = READ_ONCE(desc->head);
> +	head = ct_desc_read(&ctb->desc_map, head);
>  	if (unlikely(head > ctb->size)) {
>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
>  			 head, ctb->size);
> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> +		status |= GUC_CTB_STATUS_OVERFLOW;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		ctb->broken = true;
>  		return false;
>  	}
> @@ -803,11 +838,10 @@ static void ct_free_msg(struct ct_incoming_msg *msg)
>  static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  {
>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
> -	struct guc_ct_buffer_desc *desc = ctb->desc;
>  	u32 head = ctb->head;
> -	u32 tail = READ_ONCE(desc->tail);
> +	u32 tail = ct_desc_read(&ctb->desc_map, tail);
>  	u32 size = ctb->size;
> -	u32 *cmds = ctb->cmds;
> +	u32 status = ct_desc_read(&ctb->desc_map, status);
>  	s32 available;
>  	unsigned int len;
>  	unsigned int i;
> @@ -816,23 +850,26 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	if (unlikely(ctb->broken))
>  		return -EPIPE;
>  
> -	if (unlikely(desc->status))
> +	if (unlikely(status))
>  		goto corrupted;
>  
>  	GEM_BUG_ON(head > size);
>  
>  #ifdef CONFIG_DRM_I915_DEBUG_GUC
> -	if (unlikely(head != READ_ONCE(desc->head))) {
> +	if (unlikely(head != ct_desc_read(&ctb->desc_map, head))) {
>  		CT_ERROR(ct, "Head was modified %u != %u\n",
> -			 desc->head, head);
> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
> +			 ct_desc_read(&ctb->desc_map, head), head);
head read twice here as well.
> +		status |= GUC_CTB_STATUS_MISMATCH;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  #endif
>  	if (unlikely(tail >= size)) {
>  		CT_ERROR(ct, "Invalid tail offset %u >= %u)\n",
>  			 tail, size);
> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> +		status = ct_desc_read(&ctb->desc_map, status) |
> +			GUC_CTB_STATUS_OVERFLOW;
No need to read the status again as we already have it cached.
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  
> @@ -849,7 +886,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
>  	GEM_BUG_ON(available < 0);
>  
> -	header = cmds[head];
> +	header = iosys_map_rd(&ctb->cmds_map, (4 * head), u32);
MAGIC numbers
>  	head = (head + 1) % size;
>  
>  	/* message len with header */
> @@ -857,11 +894,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	if (unlikely(len > (u32)available)) {
>  		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
>  			 4, &header,
> +			 4 * (head + available - 1 > size ? size - head :
> +			      available - 1), ((__px_vaddr(ct->vma->obj) +
> +			      CTB_RECV_CMDS_OFFSET) + (4 * head)),
>  			 4 * (head + available - 1 > size ?
> -			      size - head : available - 1), &cmds[head],
> -			 4 * (head + available - 1 > size ?
> -			      available - 1 - size + head : 0), &cmds[0]);
> -		desc->status |= GUC_CTB_STATUS_UNDERFLOW;
> +			      available - 1 - size + head : 0),
> +			      (__px_vaddr(ct->vma->obj) + CTB_RECV_CMDS_OFFSET));
> +		status = ct_desc_read(&ctb->desc_map, status) |
> +			GUC_CTB_STATUS_UNDERFLOW;
No need to read status again

Regards,
Bala
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  
> @@ -869,17 +910,18 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	if (!*msg) {
>  		CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
>  			 4, &header,
> +			 4 * (head + available - 1 > size ? size - head :
> +			      available - 1), (ctb->cmds_map.vaddr + (4 * head)),
>  			 4 * (head + available - 1 > size ?
> -			      size - head : available - 1), &cmds[head],
> -			 4 * (head + available - 1 > size ?
> -			      available - 1 - size + head : 0), &cmds[0]);
> +			      available - 1 - size + head : 0), ctb->cmds_map.vaddr);
>  		return available;
>  	}
>  
>  	(*msg)->msg[0] = header;
>  
>  	for (i = 1; i < len; i++) {
> -		(*msg)->msg[i] = cmds[head];
> +		(*msg)->msg[i] = iosys_map_rd(&ctb->cmds_map,
> +					      (4 * head), u32);
>  		head = (head + 1) % size;
>  	}
>  	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
> @@ -888,13 +930,15 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	ctb->head = head;
>  
>  	/* now update descriptor */
> -	WRITE_ONCE(desc->head, head);
> +	ct_desc_write(&ctb->desc_map, head, head);
>  
>  	return available - len;
>  
>  corrupted:
>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
> -		 desc->head, desc->tail, desc->status);
> +		 ct_desc_read(&ctb->desc_map, head),
> +		 ct_desc_read(&ctb->desc_map, tail),
> +		 ct_desc_read(&ctb->desc_map, status));
>  	ctb->broken = true;
>  	return -EPIPE;
>  }
> @@ -1211,13 +1255,13 @@ void intel_guc_ct_print_info(struct intel_guc_ct *ct,
>  	drm_printf(p, "H2G Space: %u\n",
>  		   atomic_read(&ct->ctbs.send.space) * 4);
>  	drm_printf(p, "Head: %u\n",
> -		   ct->ctbs.send.desc->head);
> +		   ct_desc_read(&ct->ctbs.send.desc_map, head));
>  	drm_printf(p, "Tail: %u\n",
> -		   ct->ctbs.send.desc->tail);
> +		   ct_desc_read(&ct->ctbs.send.desc_map, tail));
>  	drm_printf(p, "G2H Space: %u\n",
>  		   atomic_read(&ct->ctbs.recv.space) * 4);
>  	drm_printf(p, "Head: %u\n",
> -		   ct->ctbs.recv.desc->head);
> +		   ct_desc_read(&ct->ctbs.recv.desc_map, head));
>  	drm_printf(p, "Tail: %u\n",
> -		   ct->ctbs.recv.desc->tail);
> +		   ct_desc_read(&ct->ctbs.recv.desc_map, tail));
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index f709a19c7e21..867fe13fb47d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -7,6 +7,7 @@
>  #define _INTEL_GUC_CT_H_
>  
>  #include <linux/interrupt.h>
> +#include <linux/iosys-map.h>
>  #include <linux/spinlock.h>
>  #include <linux/workqueue.h>
>  #include <linux/ktime.h>
> @@ -32,8 +33,8 @@ struct drm_printer;
>   * holds the commands.
>   *
>   * @lock: protects access to the commands buffer and buffer descriptor
> - * @desc: pointer to the buffer descriptor
> - * @cmds: pointer to the commands buffer
> + * @desc: iosys map to the buffer descriptor
> + * @cmds: iosys map to the commands buffer
>   * @size: size of the commands buffer in dwords
>   * @resv_space: reserved space in buffer in dwords
>   * @head: local shadow copy of head in dwords
> @@ -43,8 +44,8 @@ struct drm_printer;
>   */
>  struct intel_guc_ct_buffer {
>  	spinlock_t lock;
> -	struct guc_ct_buffer_desc *desc;
> -	u32 *cmds;
> +	struct iosys_map desc_map;
> +	struct iosys_map cmds_map;
>  	u32 size;
>  	u32 resv_space;
>  	u32 tail;
> -- 
> 2.33.0
> 
