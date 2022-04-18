Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36911504E34
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 11:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5564110F2DC;
	Mon, 18 Apr 2022 09:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBEA10F2DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 09:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650272921; x=1681808921;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZmF41XoEMbXS+MjTcdc3kuDiJl4a6cgoHewpXks/2Ec=;
 b=Npyof0YEMUA1v58NFm8guyD+aNjIZ8jQaILPW2jfFeFshOq/HsXro13v
 DFlndfvm79/COt+IS9vyzWTtolQKczoTYFQ7dLzaeSARf3zc17cr8P28V
 MqE0TN44sGG6HZlmRs7cVGY7j8KzTBagY/mAxn/+spQR4pXUqxCp5e2SF
 CMggKN38E754PNnXhD3/0R/s/OlzUcvs7v7So5xHaagiBe7sKXWJ7RxGg
 Xc0HPnnLSdqwDh43jQYtEu4KDCStOjPX1532okx5p8421AHty9ojrTcH9
 G6N+kO/qOvhOyXazlZtnI04p1EJKQXKXKPOvu2oL+wf8rPffnDDGqsLAn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="243417025"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="243417025"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 02:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="657187167"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 18 Apr 2022 02:08:40 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 02:08:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 02:08:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 02:08:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 02:08:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MuxskK7n6Mu6w4uNKPLVj9WD/pJjBvyLFZjI2mLVf8VwABGyYNgdWVf4ii01F17+Ng8dstsuf1k7yPZAbtx//0z9WjCjZNG73CFgt9gyCFnOWLRZh5LgqKWkQkTcVyEjsdmMb+hHyRA0YwgujlcT4wlARboyZSO/5pqLKdppxvCXdHqQ94NyuMJoWcy5HNvrMdOJ7H2nN4nk4jrE8gatyN46AUMv/Us2GhrJDjZzCmTuJcevEKDhJawE6xxcOfidlidhAY9OqMkRxMUzib0XxbtzEjxnkEObWt4Qf0wRV6vOifkMlYsCbYM0NEJWLewsDn4aNVlf56I4J0XNNc905Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XmBrB3YeeR6lQReiW4HGOOZucljG7TLbQO9AKLWIbv0=;
 b=fejCx/CbLimbdQ+qGgMv1wFTw70NI0A0Q80rvrN4wd4yZie/E02pa74q1Aw9BPeR+8A7XHCrkR0ApqFJKfDLJ1AV+q9QyzOsOt+sd5/inqzg0cfxgiFj8AJsLW5scD6VbDo9mKykhLEYSst9zOWlsS4W6Zhp2qxNcboD93ukp7lAInAec2o9V1bCWfYh26/V8H5/ifYDgd+sV/DkTO9pR72K+dAKwaT7eSAbk89z0Qr2tV9bGLyrtDWWxSWox8Q2K8p6CJVYLUpkhz8AzhgLdEDDJiMh/ydMx9sm8GQG9vW94Gur/VQ7LT9cpfEjBXBhhZGDrgmMxuI7aIgCjsJ03Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by BN8PR11MB3537.namprd11.prod.outlook.com (2603:10b6:408:87::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Mon, 18 Apr
 2022 09:08:33 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564%9]) with mapi id 15.20.5164.025; Mon, 18 Apr 2022
 09:08:33 +0000
Date: Mon, 18 Apr 2022 14:38:22 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <Yl0qhux7oVRSrz5X@bvivekan-mobl.gar.corp.intel.com>
References: <20220404093125.73327-1-siva.mullati@intel.com>
 <20220404093125.73327-2-siva.mullati@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220404093125.73327-2-siva.mullati@intel.com>
X-ClientProxiedBy: BMXPR01CA0084.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::24) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86ca7d73-9a57-4f65-2389-08da211b0330
X-MS-TrafficTypeDiagnostic: BN8PR11MB3537:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN8PR11MB3537F21F0FA4F0337AE7D2179FF39@BN8PR11MB3537.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2uQyXjbNu14XW9pxzIh5YFe8XvWL8Fc0L7cnubmS+WiyDY/J8epz5P2HoTvCQhTt0Z9w5CbPUcXACxVhhNanTMKfS/JfhGblxMS3WMnQJgCeiKAOsQPxu12vkWzSgjXQCvtx7GQuziy4XyLafwQuF4zF1nUhyaz+EAwktCosa6434HrVv55+Trsp6WTRzQy/KK2n+y1Ae5jcflD6p/fwapYnXepF4tlBvr3wTpLoboVqd7qXVWJYjq1zJqgvGT3OJABVvV/+dDd3w7lHZh7Bee/3joQ+P8ur8xpV4Q71G2aApNdOAJE7Q4wZyyo6ILBubO3uU/2B6ok6va1aN3nlJen08Ii2EkZUb5yJ4mXOH/r4tzx58Ahyi8Q4o0V3Ela/azUdlbAaTqy5z7ztSQ16Q2HxVc+bMUNdQH0VtCHeR0Ff8QDM60i4BeCPrd2anFL5XwogINsdfzgTPLZ0rnikb6KoEn1bSyvNV6Db/2ibyPXSPin4jT+I9EKV8xqYH3sUogG//2SMoodLbBFySY/hwFnyGPEzzbRsh10PMQVsxE/DbfMgvrzGX/pyGPRgGQP3F+mNCaXGvMw2cGRPurdhT0gqazdDxUslB27jriWQ6wDihNKujdlSNG60kNCdBNsA5JUBkZ9A7eLbxK0cA4PjQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(6666004)(86362001)(83380400001)(66946007)(316002)(186003)(30864003)(26005)(82960400001)(38100700002)(6486002)(107886003)(44832011)(4326008)(8676002)(66476007)(66556008)(508600001)(8936002)(6506007)(2906002)(6512007)(53546011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1NsT2F4ZWo5NSt5MFZ0a0NGalFPK1lGczdQVFBPYW4xSCtVdWFDWXU4NjAw?=
 =?utf-8?B?MGFLelVaL3ZxUVkyV0MweE50RHZUZ0JmYTVSQWRSVkY2dFdibjFCaUZHUUkx?=
 =?utf-8?B?V012RUJmRW1GcGZxaGdEU3J3Q1Q5ck5ZZTl0Zk1MQ21lS0xqMExJVSswS20v?=
 =?utf-8?B?QkVGMUM0SC9QY1RWaFAzWjVkVXF0anIwMGFPSnJNVmNTQTRFZG9LVmZwTnQ3?=
 =?utf-8?B?ZDRJMDYxUU1jRjUwU0ZNNTFmQVRIbnY1dnllWm5Mcy9KOXhaVm0yZ1IvOHQ1?=
 =?utf-8?B?RjhZVHFQWlVlRGk2TlZlRjhBbXQ4Y1llZVhnbC82Q0dYYlp2OTROd1czblFi?=
 =?utf-8?B?b0c0MzdZZDVzOU5PckhlWmgzVVZXekZLWVhrNVluN2haTi8wQzYyc2dvYUZy?=
 =?utf-8?B?Zk9MVUN5UWxTb0xjcEZTRkVHQjdJb0s0OGdsem9JSUpYejd0YUlDSGNVMDFU?=
 =?utf-8?B?RjdPbVp6ejdZdmFJU05Yd2c4U0tHSlY4OGxsRHEzMUJCajRuVWVnSWRPVmxz?=
 =?utf-8?B?anBHdlplVDNTbkM4b3cyU1FES201MnFhdmVxcEUrZVFHRVIyT2RieXdWUXhs?=
 =?utf-8?B?bVZlVG5CQnpLckltWEd3WTYvNnFIeDhETHp2eGdLZCtyMDlMT0RCYnlOTXNW?=
 =?utf-8?B?VmhnMGNEWHJ3alJZZHAxNTgwc2R6dmJrd0lxV3RPQldRVW9yZWZ5OEFTdjNl?=
 =?utf-8?B?VlRZYUwxajZGbjFvY2UrZm1nLzNQVXJPRWYxSmNINXk5TWlTeFhUdnFXcFNm?=
 =?utf-8?B?N1RFdmxFdEVzbVpDdHc1QkhNSjg3MTJ5VE4yRmEzcnIrTE0zaG13Ukh5TWpS?=
 =?utf-8?B?S0pOcmFyUUhUbVAxWTljcEdwcTdQZ28rWitNcDV0dm4xOXJINVprK1Jldnh5?=
 =?utf-8?B?bkNVQ3RtWlNwWTR3eGR3VWhFbXdDZ21mZ1ptY2RFeVlNWUtLUkNPaTUwb2xC?=
 =?utf-8?B?Q3QveldxUFVpamdWanJIU05ONWxQcjgxUThrOGRPQUdCcWFHVmVsQTZOTitm?=
 =?utf-8?B?dHMzTlF4UWpFcEJFd2xTZVArZzRLTHZXSHEwRDJJck1BWXRoOVVNWHFCVFNZ?=
 =?utf-8?B?M0ZvSXBsemdiRXVTZVhvdmxGQmd2UC9YY3FwQkxFQ0szcVJaQXlkMkVKVXpu?=
 =?utf-8?B?M3pITkczMEcwM3FtL25OQm41NlJSVjFzNS9jRXNxWXZLZWYwQ1BTaXlYeXFp?=
 =?utf-8?B?RExtTXRQVG4vZ3FuZmhSM0xUWUJrdko1Vjl0dmlDQzJna0tqZkFJNEczOHZV?=
 =?utf-8?B?WUlYMklVdnBSOXQ2OUlRNnpnazZSQ0Q0K25Ic3Fsa0pvRjc3WXJydHZTOW5o?=
 =?utf-8?B?VkdYRm90TmFDWlJ3UkpjVyt1NU9tZlhwNHQzU0xoVHhzK0FqZlRlQVdybTFQ?=
 =?utf-8?B?bVp4Vmw2NGtTNnFXV2NEQ0hNdDUyUnU4ZzU5azN5YlFKdDdjK0JobGVkWDFj?=
 =?utf-8?B?MGxYVE9wOVRtWG5mcEVLdFJyS0djTGkxSXhnMDJPaDZHWXR4TU9wOTdmT2t1?=
 =?utf-8?B?ci9IRUx6WGJqOVN0bFhYamRGMllrWldGTUhkUjVoQmQ3cEozeGZtWmVrWlpC?=
 =?utf-8?B?SWVsdmlNNU42RHQ3OFRLa1o0b2J4VEFtWlNPbDhHb2t6VSsxZVp1SHRtTDNY?=
 =?utf-8?B?VEdibFdXR2VvdzRzZDR2M2l6cXVkQzJocmdYckd1bk9JL043dEcyYnl3WUtz?=
 =?utf-8?B?WkljcU5tQk1kZ0lXOTFoYUJHQTBSWUhMV0lwanY2T214V0F3cURjYndzb3NG?=
 =?utf-8?B?WVcyNnpnQTNReER0VW9GMDh4WERQTXk4dE56b0puenZ3UVpWeVpqKzYvdGVl?=
 =?utf-8?B?Y1ZiOC9CZlA2RktUYUkrY2ZZdi9abjcrYUtZZlJJejBlOHcxUXNqK0VBMjJ2?=
 =?utf-8?B?ZmpRWE56MUkrQjZreFhhK3BRNlJLdi9VUGdSNjE1Ym1UdW5YYVlLVjlLc0Ey?=
 =?utf-8?B?SFEzdzVUbnFTVzNacHhWcEhtbkxVZ2VQZGpWaUU4elcvRkJSYlRQMWhQWFcr?=
 =?utf-8?B?cjR1am56MUQvQ3EwbFZ4cWlVUE5tQUdFZFlmaHdPZmxsUEdSdGhSVVltdWNZ?=
 =?utf-8?B?dWZNYndoVlU0MlBCdzhBMkgzTEwxQ2VaZ3h6ZGFONzB3RVllSU1aNEZEUGpH?=
 =?utf-8?B?anh1RUU2MHpVdEVHd2d4TFhPSUpGQ1psU0VGQmZ2VjBHd3pWTUZIVDNQZXJ5?=
 =?utf-8?B?REh3aEVmc29qcGVXNTVubGxhTkpKMC9DSWY2WVlLbUlJUDZyN1pqeVUyU2pS?=
 =?utf-8?B?TlpNLzBLSXlLRTRJYytIZUl3S0w4OUo4b1BCK01qT1BmZE9tN3pqY2V2TFdo?=
 =?utf-8?B?YWhqQlBxY1A1UFpMOWcrc0kxYkttd3hNbG1JNUswTkkreFJBUlM1bzlhbEhL?=
 =?utf-8?Q?snRoEZzkAvxUg7LI+jEbm0HnUg5lLSg2oeLff1teoNVuA?=
X-MS-Exchange-AntiSpam-MessageData-1: F+NEn+SFB/Q9ig==
X-MS-Exchange-CrossTenant-Network-Message-Id: 86ca7d73-9a57-4f65-2389-08da211b0330
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2022 09:08:32.9384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Thtxmo3FevyO/y0oPaB4pL1u6ApC3qCteiRqjz1rlbH3/EVoK0VVV2qnjYIiOVr7f5reMeOvBlUy2RmfF/ILIwTiqG2Kys2ql4QpURSQepXjNHT+s4YU7KKCg7dvNp2C
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3537
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
> +		status = ct_desc_read(&ctb->desc_map, status) |
> +			GUC_CTB_STATUS_OVERFLOW;
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
>  	tail = (tail + 1) % size;
>  
> -	cmds[tail] = hxg;
> +	iosys_map_wr(&ctb->cmds_map, 4 * tail, u32, hxg);
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
We cannot directly use the vaddr here as the cmds_map may contain system
memory or io memory address. You need to check the address type and use
the right member.
>  			 4 * (head + available - 1 > size ?
> -			      size - head : available - 1), &cmds[head],
> -			 4 * (head + available - 1 > size ?
> -			      available - 1 - size + head : 0), &cmds[0]);
> +			      available - 1 - size + head : 0), ctb->cmds_map.vaddr);
Also here.
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
