Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB897A0428
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 14:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF17410E570;
	Thu, 14 Sep 2023 12:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E28110E570
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 12:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694695290; x=1726231290;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Nq86V0bHJZwLOsABFk9J+/RDI86jhSg3Ua+mcsC927w=;
 b=SXRnN9sIVbHBXktHWLf/LQ9h8KMkxFvH2dw2XRjrcVLvQKvGlLsul1n+
 Yd66O6Q1yA5JCvnzGcGyLZktAq4wOAZvebtryq3KlzXTOp0sbbiV3pm6a
 kS9RY9cBXEnZ7dUlGakamnQmXoRrIZ5+mXF4oFYwQHOJmq+Xczz/jbokB
 mVDsBJzj4OZyDsC6G1kmKYpLJhS1FPt+AeoM3ETzufu7ikYoiGhxRJOZq
 omWY+SfAUlXTiyj44aqMJVMDzH2lyNWh/NCJK4fToj4QfkGNclAYWVVh8
 Bwyp6GsytSgH7hAAurkymd+DJdyctGJky/rzmjHOq7dfpmekWz2I4cIDk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="369209671"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="369209671"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 05:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="834740643"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="834740643"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 05:41:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 05:41:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 05:41:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 05:41:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 05:41:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtTX4YFr11QM2siOV2nbeC5YQAcT/aPfQ7ItSzq99S8pHKk9LXkoJplXtRyDsOP+/Mh7TB50aBmj1u9CsT3HzKQcB/vMUnCqRsY+E+BRa0nL0+etKG/7n6/jAOXnlUBQjLiv/Phbyy7gtShbnCq2o9dDxPXg4VRgGVFNPnqJ0mSfWklviQuiaoExttEOBjO+vR5aS+P/WtlgRxXg/A+3A5GNznOAc7NCC3AKRdwmikwxtmYMWnuQJ7slXPRuU+YpPqClZWGKV1T7xNGGuP3Y4A7Jjnlpj4ci/rMSjN6HFp6v7VYZ9A+cIoc1GHtkyHCuGPImp9SHu4jajAv5qfs9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQQ7U7CnjLSnT1SAaRfcQxQ209BzrEIcvGiMeAsMEAs=;
 b=FcEh6Nq2WSAdfWNuS+s78oZm3EmrP/U+wO+oqy8JJZiovJEt+zwg8AG7pD4NAHAGpZNoigqSITlO+vUCuh39mcT5N+94cEA+VlpLB6nhDJSSmzxmgZm8KQVxxkwK/A6+OOg5t/hTGXNrA9IlEtT8g1R6QHuW7fsGlF7yLcDLcJR8hzD2fXaQCgSjUGG6DGXScCiDQl6la8drxzknES7tqLNXz0eOJiai9F9Wc2DDCACkOmDEdfwUVgJGYchAEvytcIM223eVAOhh7wAbeZE8m6+OP+xvwT995ngbVG1l6qxxjKEVy09X48BsBhkl5syzZAbdKvnTX017OMT44Iip+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 14 Sep
 2023 12:41:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Thu, 14 Sep 2023
 12:41:26 +0000
Date: Thu, 14 Sep 2023 08:41:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQL/ctvik2oJDns7@intel.com>
References: <cover.1694684044.git.jani.nikula@intel.com>
 <17e70eaf967bdfe99111cdbb3bcf6aa2f0b0e837.1694684044.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <17e70eaf967bdfe99111cdbb3bcf6aa2f0b0e837.1694684044.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0130.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: ae929ee7-d189-44c4-b2f8-08dbb51fe8dc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dv+NsVlyq97lPW3x9W2OLJPtsojKknPZEZwoALO9WEnYBwt5OU8QNyvzOd6+C5Mi1grCaIm5mKsfK+V5851uLmzD5p8sLtd51b/7h9katjLSxQBIpU9TJLYvnFraqGR0vD9w3jYT8Z47KZaod2DRla4t1r+nKqjGYEmIy/5oBccso1HTcVGysvwcx0TRWJzFrfGJ4en0HV53ZMdm2q19rk4bvrZGgqGrYMExYQ2F29+nt6HMLvezi/PsiaS/aSmaERE80NKE9ZaqJWk75/CdfErS9gJ08TeuXPsv8GXD38rJ8z19FPYNLM+9aB0YS7/No3m5TGncN3qke3GT5UUkBWxyEqfNHLXvDZuzvtMGC8fIC69n/saKQB3ZtQ7v9DDT3XLhLGiGxoelqVVh089CiSFRjYjIUtkQf06URMxoZYp4pKiqIeE8Enl1EocFs9BMth0f1ACAiC0oBUF46cnZjYNjbbpdItV13tg9UU4lY4Mq3kuir5kNrAA+cNT/aw3En/y4qxuLK3nta5Vh+sHzLQLsgoZhUtTam7/YFK5v+0f43nJGh5bKIdtFr6TGYkUC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199024)(1800799009)(186009)(6636002)(37006003)(316002)(66946007)(66476007)(66556008)(6506007)(6486002)(86362001)(41300700001)(6512007)(82960400001)(6666004)(4744005)(38100700002)(2906002)(478600001)(83380400001)(4326008)(8936002)(8676002)(6862004)(44832011)(5660300002)(2616005)(36756003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qKK3M3fM45XDoelSzdaUdQzJwJVNeolcIXb2V0x+ghQg/3wc7ziKexrxnRxk?=
 =?us-ascii?Q?QMO0xEXHIS4ShxTHCwzyA4abs7d5NjxIyfh+E04pU2TotMRObTybIYWyx0tB?=
 =?us-ascii?Q?f/k8U4VVJbIJ6RO14KQNBZ1jDNSpFWR8pEn1ugnn1uviJClVmCqfENb8SOlp?=
 =?us-ascii?Q?2Gc/fbLzWbJaulw5Wu3F4ny1brZZhIUZJhT/NO/4qa+bLGWVn4uPKU/fCYfH?=
 =?us-ascii?Q?qpo3tbPEjXGnN+87zqzI8/XQnLxV3CWtsvZB6yb9fcXqvGTLNWgnr5mByb7H?=
 =?us-ascii?Q?U5TYTNz6AkQummf9wwmPYkm/M55ttbPK2+sTZ/rwZQ2+lHeS4r1na3ND2mhy?=
 =?us-ascii?Q?WFe9ty6aFxBVgLEm3WXAEl+oZxcajTpDSH6Ib0ws2iyECRQ2KtI4iYsnWDHh?=
 =?us-ascii?Q?9W1NDGQfgqB/GygncZjjsQIQcM03WcHhjCFv6o2mln3Xyic2Y++3m/oKT77n?=
 =?us-ascii?Q?zt5D6AmSjqMnk6PB3nsduE8t5yVSypzikCBLkRM9wtTJ6XCVXEl2p6HHSFs7?=
 =?us-ascii?Q?+Rx2jc0hHkGExI+W0eDWbG/EGC/ZP50PVy9fWV7E6949lwFSvgg4a61v1wMk?=
 =?us-ascii?Q?CoRJyvWghAZ2TY3uUmWGbg91pdx0KQfMopkgOcoEriymAn8EDQbnmXMJ6K6D?=
 =?us-ascii?Q?0gZJwjvEJSvCDf0cq/GRQ6+jPfyFlkvhB/v+9KU/ZCyzI6gvbYQhiUEFrXZD?=
 =?us-ascii?Q?/FArA2xAK1iGuK+hGClVIPT/fRLA+3jIuA/YsvWT6tORoCYAGGY6wUiAER3J?=
 =?us-ascii?Q?FE6zcLnAKuikbK7vj3T3ic+jkQq23UydcAjUfVnUTb5+A2ZiV5vm5ujY+5lP?=
 =?us-ascii?Q?jzjSsC6czAQc9bJsKmo1HqXFmMLxsP8Fpbj7mOTmrwuw+YSVN1QvawrzP0bC?=
 =?us-ascii?Q?40OuKMdSToFsx4ssJgFzqQ1J+JYCOUechbXghmBLtThqhkdYlQ2Ej4CKPwFn?=
 =?us-ascii?Q?zx4PydMBBXS3fddhBIYCnPMNCg310AgLqUu9sRilLtQpixWV1geV/BN3vojO?=
 =?us-ascii?Q?e4vpyBUglOFdLMWnXpoTzy10S9krCiNi7gGNLvT/uvkHCgodbnvgfRmTPgk3?=
 =?us-ascii?Q?0nmSBDiBSfLOpxpM302VaOs3hrzY4SuYnP2LTFLKAqGLnOMnspHDFtKnYtP7?=
 =?us-ascii?Q?kgrQKedFEjGhOW+4SMBtK8iZWlo8qN1azeRN8XewFTJULeqrkFQ61n69qjj8?=
 =?us-ascii?Q?iW9f22Nzmzf5J5x+xrEbEIvK18Xxn65gOQ09iXKXB02iRJYkiaQ8d24knzln?=
 =?us-ascii?Q?uxgXncW/zI97iMes2aY/Ibld/o81jXOlZEPHMx6yTcH8s5mLO6tJzSF/Xe6E?=
 =?us-ascii?Q?FBIEPJK9i1MliT4PWkAMS9wOhYqgsYjKDS+g26laxd0mkPMrnCaZJUQL+3Zq?=
 =?us-ascii?Q?lzGifBknkwYTkNkMAzbAWEExYdlUA8lv1umUHFrH+r+cl69EMD8xNCSdmtLw?=
 =?us-ascii?Q?2WaPrbZvD182Ldj4S8a7+URE1/SSMQvXMAy8542j/pCRU/FQZEk2CA8qtofo?=
 =?us-ascii?Q?QFRifzHaCknOXCrZE/ViK51c4shILObpxVbDM/nOC32Y9xqjXpNt79Wr8M94?=
 =?us-ascii?Q?I77jWb8QglwOlO91rmHpA53eCtMY4OwTaP3/dUn0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae929ee7-d189-44c4-b2f8-08dbb51fe8dc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 12:41:26.1360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wqvw9gsfLLNZ15O/M2o4zAmjoXFzf7NHulTWLAjzLh41krINp9KNDuwiPzijVJu/82m/XQnLeXXfbp5UJ15N8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dpt: replace GEM_BUG_ON() with
 drm_WARN_ON()
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

On Thu, Sep 14, 2023 at 12:34:59PM +0300, Jani Nikula wrote:
> Avoid using GEM_BUG_ON() in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index fbfd8f959f17..48582b31b7f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -29,7 +29,7 @@ static inline struct i915_dpt *
>  i915_vm_to_dpt(struct i915_address_space *vm)
>  {
>  	BUILD_BUG_ON(offsetof(struct i915_dpt, vm));
> -	GEM_BUG_ON(!i915_is_dpt(vm));
> +	drm_WARN_ON(&vm->i915->drm, !i915_is_dpt(vm));
>  	return container_of(vm, struct i915_dpt, vm);
>  }
>  
> -- 
> 2.39.2
> 
