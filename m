Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 956815236E1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 17:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C007410ED27;
	Wed, 11 May 2022 15:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA1B10ED27
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 15:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652282129; x=1683818129;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rW9akWqNAqQgXDqin33phEWNfHsMb00RlPpS/zd79so=;
 b=CeA8sD1u2+AG9SB0qUef03oFonf2aROFs7DCv5oCh79pPjpOMk2qSZqr
 C1YNz0ryHlwJjDqncr2q1r6+RbUGwq0jRW7tmWp099mTMBk7hecRsuVTx
 c2seO9LrmfFJfRsBJZ76dHj/pZOsulv2dRebB2wKAKqq8Ue9tqBKhFbdh
 vFS5euBvVXvIiu0xGPUwtj22Mcye9NqtwUPhXKnKVF40dbL3njny50efu
 7eS9/RXHvQS0OCwzKjhksYaEZnGstcSi47EGipcF9FhwX2eUfBm+0wHrA
 ZagX71QacP7+mTHL9T1DB+HlDOxqSCBfyIxXT8TVqgtY7cix2MnQ4ndY7 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="268563370"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="268563370"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="594180993"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 11 May 2022 08:15:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 08:15:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 11 May 2022 08:15:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 11 May 2022 08:15:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZtRLu8cKZEH+9awmfuUUbZ1yIlomnLzr5qqaXt1GberAZycDofcwZopRULdtCVZ6f+Vk/2Vf3FwOkgCRc2khkPS9HzP4wcLVWJ7OuEYL7yCJQQv8vtiUtCPffhOhQNeIPO6uS4dIteoYcGYTsWnNsXsfOdV7VPiuyXJdkErX+7AXK3H/q7XrmXutrfeUe9QCLnEBR1edbt///q+KLSQYF1k9cgiM4cXbuy9xiS1mzz4CeRMHh7YJV2eU54LU+Yp6fEzsmX4f8andoAy5vj0fUU9QdCRjuffm9NzjrY65QlCxWSenz3QIfPyYC1+G9iCYeQ+Y0olcroyMJ/HTwAbiYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5nHvr7fFvm8wZjeeW/NN0IXBpOoKULJpNMSOwVEGMw=;
 b=PrjWWJvzZvn27vtV2aRoQhhvqi7ZGFDI3d5lP3+JMoXIqH4jc3W6WEg0cSMgkgJeALlPcqjOPabUXYUnaf27ENnN8A9kmKhZTxm5nAU0GZUHF4Zs2xa4mJBg5JudWAF7z6E5aG9l8i1K4+g8nPyo/vH7ExJ0kyT9fHodbaFsQIsoF0MNYwkwbmD8CfCWWleYXcylJBxE+mPti7cAPIf2NbfmUwWTHlACIOx+n3ZUmK2CcmnOj0wWoK3H6pIIEPj6gamz1qhslrP0P3EnMJRgqTCd/22vRWxMpzqd1h8QaBfV6ECDPXEIrezKAzXsbhw1A5A9Lu8siNC15Wk3ZYzZYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by DM6PR11MB4705.namprd11.prod.outlook.com (2603:10b6:5:2a9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.22; Wed, 11 May
 2022 15:15:26 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::3d83:3af5:c95f:e062]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::3d83:3af5:c95f:e062%9]) with mapi id 15.20.5250.013; Wed, 11 May 2022
 15:15:26 +0000
Date: Wed, 11 May 2022 20:45:16 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <YnvTBPg4OZUe/hw9@bvivekan-mobl.gar.corp.intel.com>
References: <20220509064906.6152-1-siva.mullati@intel.com>
 <20220509064906.6152-2-siva.mullati@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220509064906.6152-2-siva.mullati@intel.com>
X-ClientProxiedBy: PN0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::21) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4b3261f4-6832-4456-ea49-08da33611392
X-MS-TrafficTypeDiagnostic: DM6PR11MB4705:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB4705AFEBA245DDB6877830FD9FC89@DM6PR11MB4705.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /PiGbmkg4c5pMKR+GucDrVuMQB9odizbO117at+KQUh6JejxtbCaDVgTj6prWGKsCl+kjZ75Gvt+TOCgCddkxn85eJp2yJ2ah3SUjLpnkbzjBuF47j9MidPOWRmng/vZ1zNFSs/ysbybgkgQN6a8iTdgUk315LuW4Qg/N7OgXwXOB2TSVv297KwmWmv0Pu4PaUaFfAEpTM5vmT2C/rifczyxUG/KvzurBDSbyDYtdVvGo0z4RBOj2gS31KhpudlY7P1z+s038vCAdwrWscwAl/dKwCdnZjKtaMKmqpKwtVFDZTaxcPsi6iruBKjUWgGeoDsS8/2MHUjFwwgjMa26CvqpoqoCtWgHi85fhYJeCx/tqUgKpZm5BwG812EdFMbKN3VqWEljg+u3MF51X4ravm/20V3VmOLeelgih0DS9HFtcZs9tPSKPKPDODlpXM8RZAp77vWQX+/SALMYACw6iOh0YfGJ1k5EI+QBw1RjSSzqk5yeTz2nn7eWaP/J8/5FNFOVQ+kdxMgwk42+hvyNjflEB7SV2zUBDwJLoKLcNtVhXug9fDpmIWpvwhwICOWpCYB+9bLi/p+O/v5gYbwVxdoRnH6UkHGpfb89DywvZ1ef0C7lIRtKp6eEijh76zIZuC8pS9nH8S6AQkqZsliRyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(44832011)(30864003)(82960400001)(2906002)(38100700002)(8936002)(5660300002)(4326008)(83380400001)(107886003)(508600001)(186003)(8676002)(66946007)(66476007)(66556008)(316002)(53546011)(6506007)(26005)(6512007)(6486002)(86362001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzhqT09hYjB2ZDA0YzlGQzJybWVYS1NuUktYd1VJVHcyd1ZLdlBiN2VGT2ZT?=
 =?utf-8?B?SG5OanRERkdNbTVoZXZvU1JGWkNFYWZ1MjJ2NTN0T0xDdEs1dGsrSmNwNnI3?=
 =?utf-8?B?YXUzNDRJVkFERk5yVzl4cGJ3WTRQWWJRazBoZkJOVkZPdDFqU3N0SXhnYllK?=
 =?utf-8?B?NEV2UUlVOFBndkdIR1A4YlJiWFZvQWI1VGR5aTMrR09rMmZjT25ick1HU3hV?=
 =?utf-8?B?clEvbXEvTmJHazNPbHZQQURwczdMdXlpRTFBditURnRkLzAwK2pocXdHSita?=
 =?utf-8?B?T21YNkNPcGdSQ3hCeW9oeGR3YjFxNzRXcFlGRHpuUWtaRDVkamJoNnUzeUpp?=
 =?utf-8?B?MmtBVUlUVDZoZE1HS3d0ZEdTd2tFSWJWaUYrdTYyK0M4Y3l1QUtQc2d2ZjBs?=
 =?utf-8?B?SUZraEc1bU42cFdhZTJxcndiN2dkQTZhK0lXQ1BKNXhWYSt6bTJmUE00Uk1F?=
 =?utf-8?B?TmJhc0Z3c0M3ZHZzd3ZISEZlSHNucVRZYzZ6aFo4MFhyb2hVOC92SjhlUmRh?=
 =?utf-8?B?czAxOG1DUFR4V3ZxNDBLMDI2czRNYnhmT2lvbEMxK3VEamE0WTlTOXRvcFRq?=
 =?utf-8?B?dDIyWkJjU0RNcXZRY1U5OUxNZFhPbVRET042NmdtUkYyYlVkV2NmamcrODF1?=
 =?utf-8?B?ellFUXlhcjFWQ3BQc0RBbWdhSlY5UGZQY1psYlg5L1NocjdDV1NhMzNvb01k?=
 =?utf-8?B?dVkrTzhlcXo5c21ZZll5Z2xOWGxPVmwxREMxeS9oMzUvMC8wb21jbjZlaHQr?=
 =?utf-8?B?VW5MMmFRM3drN2JzbWFKaWkwUUJTZXB5M3grOVhTYkM0SkhBSWJJQ25XUEZL?=
 =?utf-8?B?R1Z2MElJK2ZFaGRXZVJhaEdnbTR0M2RpTkkvMG5sWWFjM0hLNFFCazJ3R2ZJ?=
 =?utf-8?B?OEN3VWFKU1doQi9scmVybkhvc0o3T1B5a2h4ekorMFN1SWxoRndjdkJrUFls?=
 =?utf-8?B?UlJZellKN0IyQ2kvWkZYZlRmZjk4QTJCTGdJL0xFZjhnYjUzVFU2eG9aMXlp?=
 =?utf-8?B?Z3hNd2xYS0tBUk5kZHBENGFyaXBKeS9ucWtLNFdiOHNxbHpuOENIVkd0Ymxu?=
 =?utf-8?B?M1FaVVM2K3FhUnUwZnoweDJnazNBbkM5U09RMFJDSG9VWm9xSUhRUTU5cUtD?=
 =?utf-8?B?dmhVYVNBOGhzSTBoaVUrRWtBUWo3UjdlMHJsQnhGcnpZRVgxQmd0RFQzVmVK?=
 =?utf-8?B?SlQ3ZTFKWDJNYjhmWFFXTHpWanR3dERydEZYcEtWbCtwQis4dUFXTHQ0a3Jz?=
 =?utf-8?B?aEFhZkRRRFlRYnJSYTZ3MVRVT3c5VUloOHFLRjJ2QkNjMTVXUXhnRnpmY0pk?=
 =?utf-8?B?UkZ6TzljY28rdmtXM1FtREtDNXRVR2FSb1E3eTczZXl1YzZRNDhNZ0xoSjZX?=
 =?utf-8?B?MlN1N0cyMmdwcVFBUHc4dGNyT0xqWGFtNmtrVE5WbUR1M1lpR0VkVWNkdmZH?=
 =?utf-8?B?N1VlNXd1NFhpcmFENGtJaDlEWHdYZXhnVDh3SEdWczQ4eW5GZnlVRlQ2RURR?=
 =?utf-8?B?SFQ1cnZZSUduSzZ5RklYQnczb3UxMWpZa0hJQjhUbWpmNTYySUROcVhTdVNI?=
 =?utf-8?B?N3ZQalJaako2VWpXNTB5ZEM1Um45dkZMSHNyTkN6eVlCWkpjdFBHZkhIdDRB?=
 =?utf-8?B?anU5NGN0c3V0NU1NcE90Tk5TWE5mVENMYnBIS3ZPdGRnOFAySWVyNitTRXQ5?=
 =?utf-8?B?c3diQTRQOFRTNWFrcGhDM0pUS3dTOHpyOExyMm4zT3BLQWdtdzdnU25vVG96?=
 =?utf-8?B?cFJuUnRpN2lualEwZm45QWpZYm1keURaUC91MDA2SjdKMUlFKzNwbGp1TXhB?=
 =?utf-8?B?aVVVOWlaaUxtTzJDZTRWRThGZGlPbXBtd1ROUE12WmFNbTRyaVVvNFcyQXYv?=
 =?utf-8?B?WkNLczd0TDdnWDhMVXYrR0ZSZ1RiR2FibVdZL20yRklVVHQ0Vndrd2FGNHdn?=
 =?utf-8?B?MFBiQUtSQ2tGbjJhRjZ1bytYN1VucEhreUNENStyN2JESEM5YXg0NFhscFp0?=
 =?utf-8?B?bG1qb2JtK1JuZlg5VXhRKzdma1U0M1Z2eEtmVmlYMUttSDBqb0hUb3BIWExh?=
 =?utf-8?B?TDdZY0NHQTdEcEhPbU1qQnJhOGVGRHhWeEdWWWpiUGYzRUNxMnBGcUNyNVoy?=
 =?utf-8?B?MnFlOHlQclVmL3d3cWk3UkdVSlU4bXdWNys0NzVPeFVLV2VyaTF3NTFhT3Fj?=
 =?utf-8?B?T1VCc2svbTdlWHY4RXYwbitza3czZGw1WTBNb3FnVjRWVXgzWms2SkNFcmZl?=
 =?utf-8?B?YjRTdWpkaEw2eWg0Y2Qxc0NUSXM5b3JobmpqWVhBcVRPR1poTFpBeHBKUXdq?=
 =?utf-8?B?QlJzVURYd01BaGs3T0NQblc2SmdHd0NxUTh4dTJPVHRsczJoNnl2a2FJdDVC?=
 =?utf-8?Q?sS+cD+XeeChLuAz5YnjWxZilRicvGlPwfRuHM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b3261f4-6832-4456-ea49-08da33611392
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 15:15:26.1304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UZpZzwYTeHYguxanVQm7JP9wE46tQU81d2fyAtpFaEf6q4eKcYnNEFslUg/kqsfN/SwJXqs0korhMtliZl8ET1Zlqx5LP29tilyqyQEwTstuzHPfZc2SmQoQma2wo1y+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4705
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

On 09.05.2022 12:19, Mullati Siva wrote:
> From: Siva Mullati <siva.mullati@intel.com>
> 
> Convert CT commands and descriptors to use iosys_map rather
> than plain pointer and save it in the intel_guc_ct_buffer struct.
> This will help with ct_write and ct_read for cmd send and receive
> after the initialization by abstracting the IO vs system memory.
> 
> Signed-off-by: Siva Mullati <siva.mullati@intel.com>

Acked-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 195 +++++++++++++---------
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
>  2 files changed, 122 insertions(+), 82 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index f01325cd1b62..bd5b4312d968 100644
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
> @@ -291,8 +311,8 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>  int intel_guc_ct_enable(struct intel_guc_ct *ct)
>  {
>  	struct intel_guc *guc = ct_to_guc(ct);
> +	struct iosys_map blob_map;
>  	u32 base, desc, cmds, size;
> -	void *blob;
>  	int err;
>  
>  	GEM_BUG_ON(ct->enabled);
> @@ -302,9 +322,14 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
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
> @@ -314,15 +339,15 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
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
> @@ -371,31 +396,33 @@ static int ct_write(struct intel_guc_ct *ct,
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
> +	u32 desc_head = ct_desc_read(&ctb->desc_map, head);
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
> +	if (unlikely(desc_head >= size)) {
>  		CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
> -			 desc->head, size);
> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> +			 desc_head, size);
> +		status |= GUC_CTB_STATUS_OVERFLOW;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  #endif
> @@ -418,14 +445,15 @@ static int ct_write(struct intel_guc_ct *ct,
>  	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
>  		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
>  
> -	cmds[tail] = header;
> +	iosys_map_wr(&ctb->cmds_map, sizeof(u32) * tail, u32, header);
>  	tail = (tail + 1) % size;
>  
> -	cmds[tail] = hxg;
> +	iosys_map_wr(&ctb->cmds_map, sizeof(u32) * tail, u32, hxg);
>  	tail = (tail + 1) % size;
>  
>  	for (i = 1; i < len; i++) {
> -		cmds[tail] = action[i];
> +		iosys_map_wr(&ctb->cmds_map,
> +			     sizeof(u32) * tail, u32, action[i]);
>  		tail = (tail + 1) % size;
>  	}
>  	GEM_BUG_ON(tail > size);
> @@ -442,13 +470,13 @@ static int ct_write(struct intel_guc_ct *ct,
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
> +		 desc_head, ct_desc_read(&ctb->desc_map, tail), status);
>  	ctb->broken = true;
>  	return -EPIPE;
>  }
> @@ -499,20 +527,22 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
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
> @@ -549,18 +579,19 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
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
> @@ -803,11 +834,11 @@ static void ct_free_msg(struct ct_incoming_msg *msg)
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
> +	u32 desc_head = ct_desc_read(&ctb->desc_map, head);
>  	s32 available;
>  	unsigned int len;
>  	unsigned int i;
> @@ -816,23 +847,25 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
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
> +	if (unlikely(head != desc_head)) {
>  		CT_ERROR(ct, "Head was modified %u != %u\n",
> -			 desc->head, head);
> -		desc->status |= GUC_CTB_STATUS_MISMATCH;
> +			 desc_head, head);
> +		status |= GUC_CTB_STATUS_MISMATCH;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  #endif
>  	if (unlikely(tail >= size)) {
>  		CT_ERROR(ct, "Invalid tail offset %u >= %u)\n",
>  			 tail, size);
> -		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> +		status |= GUC_CTB_STATUS_OVERFLOW;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  
> @@ -849,7 +882,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
>  	GEM_BUG_ON(available < 0);
>  
> -	header = cmds[head];
> +	header = iosys_map_rd(&ctb->cmds_map, sizeof(u32) * head, u32);
>  	head = (head + 1) % size;
>  
>  	/* message len with header */
> @@ -857,11 +890,14 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
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
> +		status |= GUC_CTB_STATUS_UNDERFLOW;
> +		ct_desc_write(&ctb->desc_map, status, status);
>  		goto corrupted;
>  	}
>  
> @@ -869,17 +905,20 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	if (!*msg) {
>  		CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
>  			 4, &header,
> +			 4 * (head + available - 1 > size ? size - head :
> +			      available - 1), ((__px_vaddr(ct->vma->obj) +
> +			      CTB_RECV_CMDS_OFFSET) + (4 * head)),
>  			 4 * (head + available - 1 > size ?
> -			      size - head : available - 1), &cmds[head],
> -			 4 * (head + available - 1 > size ?
> -			      available - 1 - size + head : 0), &cmds[0]);
> +			      available - 1 - size + head : 0),
> +			      (__px_vaddr(ct->vma->obj) + CTB_RECV_CMDS_OFFSET));
>  		return available;
>  	}
>  
>  	(*msg)->msg[0] = header;
>  
>  	for (i = 1; i < len; i++) {
> -		(*msg)->msg[i] = cmds[head];
> +		(*msg)->msg[i] = iosys_map_rd(&ctb->cmds_map,
> +					      sizeof(u32) * head, u32);
>  		head = (head + 1) % size;
>  	}
>  	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
> @@ -888,13 +927,13 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
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
> +		 desc_head, ct_desc_read(&ctb->desc_map, tail), status);
>  	ctb->broken = true;
>  	return -EPIPE;
>  }
> @@ -1211,13 +1250,13 @@ void intel_guc_ct_print_info(struct intel_guc_ct *ct,
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
