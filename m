Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3155F60D2A8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 19:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C5E10E23C;
	Tue, 25 Oct 2022 17:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A52810E23C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 17:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666719776; x=1698255776;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pmewVas4azZICTTwdganbLxpqdbumQeBzwqKpgWFYao=;
 b=i5swDVlzmfywBRZDxnwoO4Z+dDcGRe0cLHZ7nt4NcDa6OMAteWCeAB9Q
 k3sYN8CRTb+W+cykTWBM9XS3LWwSCBj5cUtHmTcGY+Xe3sTfAxUbEy2zS
 ivOH34mkRgkflYpFrAB3cOYRvSDjelc1bpoiqso4z3hbxQiPdp4e7c2GY
 7ZjlVZdps69upBVPq1R2fmM6h2iN5/sI+7o2V9G76hdrM9eZQiTfOcpqB
 /x/8HqRdTrXjU7cW/48N2IF0Mgg5HIP9R1AmjofiCYu/OWz5g52kGDgmW
 fTJK/3/uipJhJ+H35TLHT0OL+8Zb0TeHjlTPwTIS3O0+4X8or31QwJssx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="291048872"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="291048872"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="960905883"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="960905883"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 25 Oct 2022 10:42:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:42:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:42:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 25 Oct 2022 10:42:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 25 Oct 2022 10:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1Oxiy+w16nZSjCkUwawfOqDkb/9CnylYiSpmtT4Po1sVmWDRnFBKAfT46f0oggEnzLZC9STYgmcVuaqIYZSAukLtRkyiM9evDErS01Dz8HymvceGOrxnEMdeLcF0jz3gwoduza/1isi8m70M7HyfW+88jUP2f18N8DeLnnFzRDTJGbjBIirQiQzBSUILwzN5GF+TfImh5g+N5gCgChwUICDzCYmlWlqIxPV4jR4nh5y1fDUOPBXLdSHHWQDdjgchhXdR4X8nNEKayIwhaVf76a0Z8m1LSX7+UDC8baWZxSxCkEohlt9LQPTQlGC39MzVGUNLdVlGElGjqUaP/1dNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKpd4Vp/Dsunhl84+nYqOr17EjmReiXFtGpjxxLcYJM=;
 b=jNFsQ0IBs7KkiNwvjc9OP+KZmgIBASlZS75P2zxBM6pu8Xe/NJ1F38c09BK2A2ypJwKKvgMEYcDN9ENDctZY2Y+I3QbXIR25ecc7I8SV5q2R5FXyJJA2MhalvbV/mwMwP1lD3MqkkiprPsIfj4Ex7Gx7PICjoqsWi5lzZpzVSSfTjGHG6dDjNvcIiZU4dQF5XMcWIBlXzEXxS8JoyPQKGTg5Qkhn0amoQviI7WvQDWpJd0KNORMIZiLO2lLBLq3paXoLUYBYC6+4aE2FmLkgBTKEYVDcQ+jBgXH4nsGD513qNeS3RX/w4/qwjeT4cWi9ivGAHWPsOEnLM53qShBjOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.26; Tue, 25 Oct 2022 17:42:45 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5746.021; Tue, 25 Oct 2022
 17:42:45 +0000
Date: Tue, 25 Oct 2022 23:12:31 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1ggB1WHAYqQc3Gy@bala-ubuntu>
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
 <20221021213948.516041-3-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021213948.516041-3-anusha.srivatsa@intel.com>
X-ClientProxiedBy: BM1PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::13) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH8PR11MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: 9972b740-5a2d-4da3-c940-08dab6b052f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 50NbHb5c1zEN8Dhc/sR0rl95rD70CVdGG2SXCKUOpBHhnzyUVA1/0pZDxK8xnYKfr7cerpLkmgvVQ3EpDj0P7sfbTccE4hayWT/Fw38D/5XR5T9OBFtVFrr20QN63NBFv0f6aK/Eyx6SCzPkj0h/5HnfyaiJmLS+8lRcF7FjiPLqZfrJUpsPiT7NRKWKdJP7ORYtVa77moc1vIEniqpK6UT3homSadNYHpftj/utsLL2Yu6MVd2vmURuf1KBuvpeFbifTn8BnaCem9I4QiB2tpXH256pKSESwveBc8SORbUJnivPEDtRP3jH9n3iM9FLAM6eCbjJRYzt319IrUZAJpcRH2cnbsPle9BKNuuO+oAGxAVikIWq+J0Inpig1dhXz961IthVCR6Quilm6PIrsGWB3YXGcZKIalibNMVcD+anEfjKCNM7bFHFElLA2q3MAxFFNtWEtC+ndctXUBnhFIbX3jmrsWBS+IiMobnHObW1IpWnMPSFBW5TlEdw0gSA73UtlDZelUMQ7n+XQefnPO4ycJd9IWdfxlGqBiHM5NfV9XxXv/xWki2Ji6iRRTmRQV/WdIbDp2qmVSGc1ym9HBOcTCG7UCfshl+qJA0kLdmYTdgECLMbEbJOIveXT59/dMmcLZk9TCDzFQtS//vEmeVsBgwf336Dx8eEs/OOJ6qHXu8cT9Xc4+3RQwn1nvO6kM+14xxn+C6J/o4mjgtcEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199015)(2906002)(5660300002)(8936002)(8676002)(41300700001)(4326008)(66556008)(86362001)(26005)(66946007)(316002)(53546011)(6512007)(9686003)(66476007)(44832011)(6506007)(82960400001)(66574015)(38100700002)(33716001)(83380400001)(186003)(478600001)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0w2U3Q1K1A0Tk1uWWtJaDZwdzhTdDNNaFBpNTArMTVFbXVaelhBZDNjR0hV?=
 =?utf-8?B?RVVQbnlacWlvbUdtOTd3TGR1Q1Y5dFZORG5XTTFJdXJvb0M2MFJHNlcraHZ4?=
 =?utf-8?B?OGZWVm5DWGUwaWhoL2Evc2xUNEZ2azhwWkthVUpXaHFVZG1oRnVtTVRiSVdO?=
 =?utf-8?B?NlUxdTA1dEdLQ1dQUXpuaHJ0anhrNE9McGN1Ym9Kb0U5SThqNTAvQ0VrYTJI?=
 =?utf-8?B?V1VVcml4OUczZ2FWeUxkTWR0Um9pKzdQcmJKVDh3MlMyUzFXOEIrZVZ3cm1u?=
 =?utf-8?B?ZkhLUm9wT2NLcmN0aVVPNXBZN0JiVlNLek11TXJZQTFFdENrNyt1M0d2WDhQ?=
 =?utf-8?B?dEFQUGVIa2sxOXNvVTRiLzVtdmQzOTVzazJhWXgzOTVmaDRsWnBvNWJmTXJT?=
 =?utf-8?B?dGhVd2Q4a1VGUmZBTGtiNzRwK3hMd00zZUtaVWxVRlJJMEJJWmc0ZXo4Y1ZZ?=
 =?utf-8?B?R2Y3eXVTWHZ3QUhkaGJyYzZTUytaZHJBbWc1aXdIdkhhTksrMzBOd1ZUeHVr?=
 =?utf-8?B?ZmlmRWtNRnZNMUVYU1JXT0FUekxsUDYyeHQyZStEWkVMYmVib2lVOGdScDNN?=
 =?utf-8?B?a0xuOFpGNEhCNHhuNE5CbldnS3c3YjF2TitwTThZTmNBQ3BMdDgyc2g0YWs1?=
 =?utf-8?B?bk5TTUZJdXNLajdscklYcFFrY3RCVmRhVy9UWG9sYm9CZE0xRGlqOHVlNnhj?=
 =?utf-8?B?elpUSkNHd0ZGcTd5UTU0ZWN3OENGakFyaDVNSkhZb0RWWFJZRmVIZU4zMWR3?=
 =?utf-8?B?Q2xiV2NsSmNPemFtVEk2UlBRRXdSVHhwWGFuSW1SOXh3ejR3THJHNkVmc0Rw?=
 =?utf-8?B?dU55dTZQNWw0MmcvaHh4MjczS0tXV2xEVzlWbVZJVEFaR2kzeFJkWExnbnBa?=
 =?utf-8?B?dWdvb2hxS1JEMm5RRmUwTms2aEpkeTFOSWVzeE1VMjVTZkNSeDYxRXd4bzR4?=
 =?utf-8?B?aGVwc1pxUVJsOGVpdFAxbFpRUU8vaVhBTnozWkdtcUZVRjA2MnAyZGoreldY?=
 =?utf-8?B?UXZXY04yZ0p0Rk9lMDM3OWhVOWNxSjcvQS9VS0xiWGlqMFlIcU5OdkM5bHIv?=
 =?utf-8?B?YmtkMzJQb0xTa2hhUzVWTHZSNThUcXlNSHVqL3k4MHlQd2hET3UraWxCN3N4?=
 =?utf-8?B?cVFGaHZUM3ROcG81cVg5NXNDM21UMGVuTndubEo1dk1MZnREUURLd3huRXNk?=
 =?utf-8?B?WmRDTHUza2NNejNYd2RiRDkvYTQ1VDBoODcvZDMyS1JoZU8zTkpOdXlwSXFs?=
 =?utf-8?B?OUVGVk5HUWNqcUk0aFhjSGZ2M244ZlZtZVFaSW1iejZDWnRUc1ZaL1V6dkRM?=
 =?utf-8?B?TEhMUmRYQ0tMMUNGL2Q3UHQ3cC94Y0lYY3RpNCt4Uk1EaGNGK3k3MkR1ZVZu?=
 =?utf-8?B?SmZHZWtVelN4bDBPT3llelhkbWIrdXMzaXVGRURPMmJGOGc5UWlPNWZUc1JD?=
 =?utf-8?B?dUd3NjBTbkIySEZQMFpvMURsWWg5bk5EZDdBZkRsQ211elJFLzg2MGVveXk0?=
 =?utf-8?B?eGFRZy91cDVsZjVKUFlyVzhCVi9DMjFROFVjMW4wQWxrNU9GMGc3T0Z3Ui9q?=
 =?utf-8?B?YTFQM1NjTUVCWmxsbjMycWRSc2QvTkd0UEVjVytQaHhUdUM0MElhcHA3ZjlI?=
 =?utf-8?B?a2FwMzV6R2llK3FZbVRwajBYbFNva09mMTJLNmNhU091SmZzZ0haQ3BoZURt?=
 =?utf-8?B?RE91UHhLMFZaSG0wS1RNQkxCaEdlbWVJeUxoMFg0SHdzSisxZkJDVUR0QzNy?=
 =?utf-8?B?NnFhb2QvRkpLR3lURG4rZng0M0d4L3RZMjdIeUpNWFpMWXFPTTc5YXBJd05P?=
 =?utf-8?B?bUhtamxzRkVsMkcxMXFybkxqUHFDYVdOemRTZm1YdVhtSDhPbTVNaS9CY0R2?=
 =?utf-8?B?bmpKbTgzSlpGUjhEZXc2aXQrZC9EY2s2VkNrK3FhVXhjaHNrV2tJZU9pbzJF?=
 =?utf-8?B?ZldqbEgwU2VxZllPeWw5dVZXMWxDVEh3OWNmTmpxTlUvSVNBQW9jM20xYW5W?=
 =?utf-8?B?Vk1LNFYrbDViSHczMFYrNEtzdXlKWCtXc3djaUoxVERxQnREWmhqSWpSaFcr?=
 =?utf-8?B?S3BobmF5UlU1MjVrak9XTWhQK1MzUUNLSXZqU01YNHFWMDA4M2todGRFVXIv?=
 =?utf-8?B?TkhPZ1crQXZoTEdNQjV5bGs3VGZDbFR5cG1lSVY4VExJMDZIRXN2b1kyNVQ2?=
 =?utf-8?Q?hbCKurJDVnkOUyUJm5exjhk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9972b740-5a2d-4da3-c940-08dab6b052f2
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 17:42:45.1144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8KCQu8AxgNBanhKqgs8nO9GRdqpwU37IqXUTcNcRLB/48b+9cFBpcg5yqbUWJlnzB1Y/WTMoIvm9hRKWpWCE+TTXF9yKK+df94VZN6U7lAIG8ypRatZq9M+Bk9Nmys/I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Introduce
 HAS_CDCLK_SQUASH macro
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

On 21.10.2022 14:39, Anusha Srivatsa wrote:
> Driver had discrepancy in how cdclk squash and crawl support
> were checked. Like crawl, add squash as a 1 bit feature flag
> to the display section of DG2.
> 
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++----------
>  drivers/gpu/drm/i915/i915_drv.h            |  1 +
>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>  4 files changed, 8 insertions(+), 10 deletions(-)

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0f5add2fc51b..45babbc6290f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1220,11 +1220,6 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>  
> -static bool has_cdclk_squash(struct drm_i915_private *i915)
> -{
> -	return IS_DG2(i915);
> -}
> -
>  struct intel_cdclk_vals {
>  	u32 cdclk;
>  	u16 refclk;
> @@ -1520,7 +1515,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	if (has_cdclk_squash(dev_priv))
> +	if (HAS_CDCLK_SQUASH(dev_priv))
>  		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
>  
>  	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
> @@ -1747,7 +1742,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (has_cdclk_squash(dev_priv)) {
> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
>  		u32 squash_ctl = 0;
>  
>  		if (waveform)
> @@ -1845,7 +1840,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	expected = skl_cdclk_decimal(cdclk);
>  
>  	/* Figure out what CD2X divider we should be using for this cdclk */
> -	if (has_cdclk_squash(dev_priv))
> +	if (HAS_CDCLK_SQUASH(dev_priv))
>  		clock = dev_priv->display.cdclk.hw.vco / 2;
>  	else
>  		clock = dev_priv->display.cdclk.hw.cdclk;
> @@ -1976,7 +1971,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (!has_cdclk_squash(dev_priv))
> +	if (!HAS_CDCLK_SQUASH(dev_priv))
>  		return false;
>  
>  	return a->cdclk != b->cdclk &&
> @@ -2028,7 +2023,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (has_cdclk_squash(dev_priv))
> +	if (HAS_CDCLK_SQUASH(dev_priv))
>  		return false;
>  
>  	return a->cdclk != b->cdclk &&
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d7b8eb9d4117..db51050e3ba2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -869,6 +869,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  
>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
> +#define HAS_CDCLK_SQUASH(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_squash)
>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 19bf5ef6a20d..a88e1439a426 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1064,6 +1064,7 @@ static const struct intel_device_info xehpsdv_info = {
>  	.has_guc_deprivilege = 1, \
>  	.has_heci_pxp = 1, \
>  	.has_media_ratio_mode = 1, \
> +	.display.has_cdclk_squash = 1, \
>  	.__runtime.platform_engine_mask = \
>  		BIT(RCS0) | BIT(BCS0) | \
>  		BIT(VECS0) | BIT(VECS1) | \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index cdf78728dcad..67d8759c802c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -180,6 +180,7 @@ enum intel_ppgtt_type {
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
>  	func(has_cdclk_crawl); \
> +	func(has_cdclk_squash); \
>  	func(has_ddi); \
>  	func(has_dp_mst); \
>  	func(has_dsb); \
> -- 
> 2.25.1
> 
