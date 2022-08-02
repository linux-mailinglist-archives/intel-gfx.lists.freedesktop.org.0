Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F356588132
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 19:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BE39358B;
	Tue,  2 Aug 2022 17:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5363F935B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 17:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659461963; x=1690997963;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hKyXS7wZdNQBcAMF0uM1EZvulwFxZW1usLH3EFwG2JY=;
 b=OQx//0rba3d2AQfKZu4Zvxh7/RYvf6MW77UTZUd6rSOF0G/y7Hp2pvjd
 R6l3yW4GeIwhwCMonUdy0U0+ZDe3rpPqrE+BetB3EYU8RCwHcWwlsisKt
 FQLv5BnAqsLLkcOoGCx9zMdeAYwzGxp/cUOemMdiqd1krABVygsUYiLkj
 sKXimU4ElHUM9fYn+XrCd6VptfiQoRZj6oc6BSkamFWR90LBfu8q97GuL
 hNkpAg429FGWL1l35bn6XTrm145RNM3YGplWsaWxQVsqY+W609hoOrVbD
 5IeQErx2pAw++vlT8PuztKXC6aRi0ROJAUaikMiRIrdXzmXfZp0leWQlV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="269246294"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="269246294"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 10:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="728913830"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 10:39:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 10:39:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 10:39:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 10:39:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9Nd3kikoCeHBw+riCbLBox28ilgdm1zNh2/rJ+4gtE9Jfr/X0fixPNT5kqxINPE3RSZDu9zoIpWixPwbDLfkorjcsR5RF/OTXQAOvlU0QbtfBqgpWCB5gVl0TqJ1LnUqeEjAeUEV4McvaKAgrt27QGxhA32ovYlhIot0iI8H/FbK5je4mppk+i0gK0C/ckbpFaO1j8Sj0CJyoipiR5jw37ufP+c7pA5xVC1iNdY6nb2e6nWN3iMbR4PV1asvhTU239qwpAUu+zJf3YsNdLiKsIZz36B6Kw9rldhPucLaIkVmB+ay1eLxqYd4IN6a/6osPcl2Vv+jdi6MuLDWup1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sUKukfzz2i3vFU977dlOx4MvBh9dasjkWW8KLzLPu7Y=;
 b=X9fGsftGWPlDLQrFcYpjkgUD646ixToqlVDMLVeqzcW/bnnDemNmlKp9ug1+7QIkyOT7SyOa/zUyU/qfvylaj3E+i3QNmWyEoqGK/iY0rN69ocv1YKxseqC69bONRF9KOemBwpT3IYVkbBi2VX6OvWHrNufLoR9A/UzDNcqutQrgJOWKHD2VMQ76eGz6Vi6y1hQpY02Z+RcdDV8wriY1T/E48niX1k+mzSBM/pB0dO6ZKPaqj5gRzRBuGTGOK+i6q2bavYIQxe1H2AJo6aGfpcrlaTZXUFAd51GPnAua5Wya3zdGKYNx4Hxf0x3xeNANTfqDaIp2byAUuMa7qd0B7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM4PR11MB6336.namprd11.prod.outlook.com (2603:10b6:8:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.16; Tue, 2 Aug 2022 17:39:19 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 17:39:19 +0000
Date: Tue, 2 Aug 2022 10:39:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulhRYpnZjix6AXA@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-20-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220728013420.3750388-20-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0094.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::9) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a02e49b-d3a7-4c60-4e02-08da74adedf1
X-MS-TrafficTypeDiagnostic: DM4PR11MB6336:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bM3XatKZ/QinBKEvONUxMyCHV1KW4h9/aL+L31gG7W/l9iKpSKBZ9OeSFDlnzEPjgdGDDGKP6pmkwlmuYLwJyP24K2zQG6GXzJ5CpcAWBU4wtb9FGGKU85I5uWhTejDBBhZrQYO7p0FNCYTaRjKgFmgysrMMQcCSWaZqTgx1+kGV7TKlR5rgJ6U9HCJviiyKQ6LAau9UMpjGZwBra6i7VWPkwVV5WaifEWgSVvJkFZpxdOg82LLoSjvwQNMzLWYkTm5zctPVoqag60892k2lviE32eC0qN2FJgcuhRzX9paaTtUedWGeLxLcK2V08yv7kyjRvvfz1Q7LJJ84j60WklQVjPEkwFuc8LaiIQu8IPdEKVOC7VVeOkwv2jCpTsr725eNAff5Q4L3vL+TR+XOLRl9t7xB3bhMB+M7hQ1ebkSBvLRPyz/heKnzOC+ZqbPQrH2Dxch3Y2BCDfNvMDudfDEtE/ia4+DnAJxb49lz8W4EqiZ67xOFU6C4Rw9wTPJzz3E849O/rBKRkoQeBZo9VNshxE/Vqj5G7D30MLPPW+wraooO8oZErJ6G38ZcRlpcrDFCGM30laRpPmUp+MIvwEdssjQKvd2sfzqg06fBF+nBnypDjPOcoxlwSWEeBem6YpWn16Bb5xKeWKQhowFPVmcMT3jmH6pdFUQvqiahTga1NQwncTi5iir43LdLSvJM6dn2NHUsjS2gMR/tOWcW99UVK0yi9+1RwMVeeYHz2f5MzU7EH5OXBcd97eifyYWa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(136003)(376002)(346002)(366004)(186003)(26005)(6512007)(2906002)(6506007)(41300700001)(478600001)(83380400001)(38100700002)(86362001)(5660300002)(316002)(6486002)(6862004)(6636002)(8676002)(4326008)(66476007)(66556008)(66946007)(82960400001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0w+3UBq0aLI5NaWIcINntZY4NSs9/U9mcdsLV+k/nCc3gFm0b9WkY9qwx5?=
 =?iso-8859-1?Q?IVkjwHA68Gwsah8f2G+z8BzdsMrm/wkHgFJEEcdtnW4YuTBc4U91PgRWgF?=
 =?iso-8859-1?Q?4qIwhuvdH2L6Xs47JYCtFZLlPVlHbv8FqrgoChT06iPjFZ4opKY9dG0L+4?=
 =?iso-8859-1?Q?fMKb1xWvco6OMIt2D9a+7qt6u59DDEIvOBjuQBqdxBTN9KzhpUn05rjPwf?=
 =?iso-8859-1?Q?wxKRshBEceM6jetEDQat3WLaA94P3XVHSpNWaJv7s2MvZoiq/A8zUAdjPz?=
 =?iso-8859-1?Q?Ajbin8IHySoqJcmrNVd2V2sbMsaVnizQHUz0/mAUyGBNcmFTqOHZs2xBd1?=
 =?iso-8859-1?Q?Cu5hPnIQgIYnAEDsq4x1G8ZBJM93gkKXUl8k1nNs+HcNj1pqyFq5BGioVN?=
 =?iso-8859-1?Q?1bVWGN1ll78hAGJnPNGhxmHq0yFX/8/7qMIm3k9Re22OkcaEy3zPPr12zs?=
 =?iso-8859-1?Q?9IAXgMYvfHdhBZHYZ0IB1qyHsi41qvYidujHM1fzylDhLzDvXLwGwx2k4f?=
 =?iso-8859-1?Q?0F/3D71X0eCZ/wS4S5Rd+iScdlgnqCZsfEQ8z3lR8rgJl96fS932UENeAN?=
 =?iso-8859-1?Q?2eXggP4pxCKupZtJzqTpQFxBg+dUsKa12eD7Dpuhd9Dmk0Tzee0Tb6doR7?=
 =?iso-8859-1?Q?h6CNvOHS1M/xbxfEROfYkhuobCOxoboBfQdEqBMicjoHKtVaTakT1zC4sZ?=
 =?iso-8859-1?Q?XwLD2RDFP999c/V+c0aVShaSXJ2jY8fFrKVyCfVbd6KTxvQj7X2oa7NyqZ?=
 =?iso-8859-1?Q?Y67JPZJBFiys1wXYwRLsPMVRDudu4lqpgnoxW3kUrZH2XAUChNXprHQfLt?=
 =?iso-8859-1?Q?alQ3Q/sJ3JtqPDiqCVLWdj0g2sXLZTX/r1yW5v4dtqJdmV3duHl3yYh3o/?=
 =?iso-8859-1?Q?ADLGHiEFGc6NCG/CePl6OyYSmTVWjOvzLawVdE1sUBIt30K6hc2KyS6XJv?=
 =?iso-8859-1?Q?0kLwgGv2P+EtPLI4SvnF9gHxtQhYdTej/Feq+jITenz3a0WL+821bKNddU?=
 =?iso-8859-1?Q?R8woAP8VKTx2lYhLZciLIZwR5okfKD+a3BTpvjsgr3645ysUSxleXKBVps?=
 =?iso-8859-1?Q?cSb8MIBoZon6LQoaCsSQLG6qSNSVau7SOwr1kkWk+Wqs/91keVeuMi/+bB?=
 =?iso-8859-1?Q?UfQLgNbXErUoWHx66DxHWZEqC3esDdo6jAOvDAmmc38yJsbqsqPC22edGJ?=
 =?iso-8859-1?Q?63UwzLOUSe4ahdLQp4RLKAcgrDm/kS7nCxaPrAt2C7yVpW9oA20WrhGlm+?=
 =?iso-8859-1?Q?KmdCzQPF7avHOxfhLvagJqivLq3k8r6AV+1oZpfbe0ZIMGG/zkpMHV9PaO?=
 =?iso-8859-1?Q?LKbL8tvx9IpyXqPHMx07Djj0HhuYNj/1M8Fy3n1S0zocVmEs6Ix/Upc0qr?=
 =?iso-8859-1?Q?7tjgRPiBrHNOwkywXHfvOwBxE2fFTlYze0gIlQZmUV1iLmTPSndHdHb4Zq?=
 =?iso-8859-1?Q?PjxcwFYi2ofbOjgWZGjao9ajCqYo5jv5SaoJG/LXJ+ahG+gtwpO10cfh7Z?=
 =?iso-8859-1?Q?fHv9k7vPw0j9XvwkvbvZWvccGyaUpUBlbO4n7O2wdzvAaxAcLCBx7FxeSO?=
 =?iso-8859-1?Q?ne1Ztf8J10pIfA0vYn/FrZ2QuF/37J8eLYDrPZiG6XgIoVu/u91VnAeHnQ?=
 =?iso-8859-1?Q?3JZjhFlgCLsnUatjZWHSsZUxwev/6Zs/IDwYxu0buwvmP98KFWe2JJ9A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a02e49b-d3a7-4c60-4e02-08da74adedf1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 17:39:19.7774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kLk5LHr8D8XQOUgWyl1r3HjvK7XWETVsMFm9pbNKHHu7gkjGcBJdWCvZkunRc6rUxC2jx2bEp67gkPZw//mCM2jtYtw0rVQyQfGjNWQEkIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 19/23] drm/i915/display/mtl: Extend MBUS
 programming
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

On Wed, Jul 27, 2022 at 06:34:16PM -0700, Radhakrishna Sripada wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> Display version 14 also supports MBUS joining just like ADL-P
> and also it don't need MBUS initialization, so extending ADL-P

s/don't/doesn't/

Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> code paths to display version 14 and higher.
> 
> Bspec: 49213
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index ccc3f78b1607..c0bc5c30cef3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1101,7 +1101,7 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  	unsigned long abox_regs = INTEL_INFO(dev_priv)->display.abox_mask;
>  	u32 mask, val, i;
>  
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
>  		return;
>  
>  	mask = MBUS_ABOX_BT_CREDIT_POOL1_MASK |
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5767bbba2260..6a876cd53228 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1360,7 +1360,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
>  					      IS_ALDERLAKE_S(dev_priv))
>  
> -#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
> +#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
>  
>  #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
