Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C555E810D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 19:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844DC10E5C4;
	Fri, 23 Sep 2022 17:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52CC10E4A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 17:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663955204; x=1695491204;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KdxX0eJ3v0O7zOyASq1Np4Faqh3PidUt//Qc5K7qHpc=;
 b=SPoQUbEGsFYDmbVpqUdoZ4TVhgp4I4tI+9mtBJFjkWKdnho81wNOwq9g
 QwTdCkJBmeTquliKNmjZfg5lhiTVPWZbYQBHwnwLGBhDgxY28dLMb8mxp
 r/UstEyY+TgRqJ+Y/5NzQhr3ENwp/fETWJkCNVU+wFkcoj4IhVaBuix+M
 sqL69g9nSjgzLY4N+NQIl86dNX7+5gOW3wUW+NaFY5XoHV4rxQN7wWK+X
 VGtz7tzN0cZ5turz1NADctpepcHGSy0oM/v/4PIeR1C1uINcq1dgNPLqW
 WX3ORBSrTXi7YY2ytFrWH3q6rK8b3q07dicFhT+p/h0cINTVWIglY0iaq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="281011645"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="281011645"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 10:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="571453060"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2022 10:46:44 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 10:46:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 10:46:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 10:46:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 10:46:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=obKp2NTFGed9M6R8000LClZ+n+SBjc6RrJssFMoce6zaVGSk8aTECU52/QNsXv67n4bILPaKmTxZFUUqM1bwpWa+E8IJQZ9eaeWaDWT5YacYXf2a1dirC+j/eAidUbHsyW1IfaNS7CuIsPnAlACQgfFjbOjA8NhcMrNmUCQN8gaWlq9kV9s8SYMiZBHnRQ5PxA5nhik5bAMptHTzBz49kcON2yXBVq7B8xI52usQeVt2ch8Lavljaqsx7NoGT58PrQGqUkQwIBzSzz8XjGfBPSlhTu6JRIv/ULUtsGd6Xi0sNaBf0PKhYqsMiOf1RTiY8OZVt0iA0gxWlSSJhrhG3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qgUFGPF/e8y9A5EAE3OH7RjZsExBwXskpTwY2T5B+YQ=;
 b=lA7jOtoiPA1JKpED6JlfFyfp6cbaVRDFmECRnVcqLKLT1I3Y8j1OPubYuyq9E4OI9lb7HCOwZ/n/wXQjWoCiA6o7p4315qdnf9C9QufRlPwtfBu7u1YpQHy2FvzilP1FrMEdn6bEutyGQFUt7G0jayFCvWolrWcax5+YYV9/VBAKB7uJjSZC88+ugk6nIo0da/G+bTAk9DjFzsOp+TNDpVmOI/zE13r8CSftwLqOPLQRB80hFmBPRM3/mJnTOQi3h4O//wd0neucjtPuDshrQvc4OsfyYh59v4QIEURTg9AWlE+EPwwHwz87kxjWS0jznuC0FFaegjYVWc8toc59zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 17:46:41 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5654.020; Fri, 23 Sep
 2022 17:46:41 +0000
Date: Fri, 23 Sep 2022 10:46:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Yy3w/zen4zFU7iS+@mdroper-desk1.amr.corp.intel.com>
References: <20220920204359.103370-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220920204359.103370-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR13CA0014.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::19) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 2585f797-7613-4b59-6145-08da9d8b92ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ETF+nNuQ0+wowpEexB/g3Z7A0eZ6EVvoDG4GVOKm1ajF+lh5N1b9M8Z7typSMgVIweiEkEZnYJnsveAudujLKXOxL6N3OGkQB1HTVbmLkgJ7mx8FzvFI2SQ7rbbx3XU/5pa/EYjGCKTewjubR2bsiHUGta1Mg+iwJpBIpxsclXb1RgMz8QpyMuhjcDsIs9KS3lRwnC3V4/VYAuL5phjviYP6MVx/4IjmpQWJOzmTOBnhjn0WnN/IhyLUMbaJ4VbrIOnE+FV3W9sCiNwf7XOwq6yFHv1Bs3qrnCC98kU+MITd1Ky62fHG102f6wXlFE37+dT+LnEQg7oWp2xuKxsrfAnMgLmElJ0LFk/mqxbQP1i/XLceO6iAXGQsdHt91ONMSo0hbYwrWadPBK3oyJMDlxH5HJtuwPWhswFsCEpN1H9Yj/+mD5GiGnvfrzlS4WHOI58AthmBiVHLuoq9JWhiDkrVLPytkLs+gZLZWUZKMS+9suH6yWZx4NYXxDC5iohJ0wWtBWvenpzQX7D+Nk0tSxNbuIERSi4ecvIF/I2SrLHAmcPYf5nfwYhBXSJhxujXgG+i/HaRRmQu3U6wuSX1KOh8+KpLj8lhbfrewcUPYOdnynhTEO0/tLM9xu164h3dkkP6W9LYUPE2ZFnLLlxRchNmbZYMRJ4I25Op516jYZS0B7yes7qz/96B0KjZBSWF66ToDYC5Y9UKZf8i51BZgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(136003)(376002)(346002)(451199015)(478600001)(316002)(6486002)(66556008)(66476007)(66946007)(6636002)(8676002)(4326008)(2906002)(82960400001)(41300700001)(6512007)(6862004)(8936002)(5660300002)(6506007)(26005)(186003)(83380400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GJBn6DhsHbPUNT15x44XfNQ5Unk3/9IU8ia0NSTm1Er+s5525SnU44GYjG7z?=
 =?us-ascii?Q?B6Jp26SCyN5y54oSs3d5jxMx2ySCrtQ/6gkPwc4AR1EN03aPgg4GZ6sxdOVr?=
 =?us-ascii?Q?OxqVRHjUXDv7EtIMEWFU0wCLDs1ZY0z7yNPvDtkOCjv0gRGi2euUw36/uPl+?=
 =?us-ascii?Q?Vk+2nAcTUETEeEBSnuam2zSCKIX36A7UxbtBSAunsnJSuRW6GaLKhqSn/KqC?=
 =?us-ascii?Q?lkG0yCsL/RVxP0hUf5NdW3xW8EPYi66Itz48H49BD/O7lY86erw7nUAaJ0xM?=
 =?us-ascii?Q?scimlEAh5g0gzEPGOWHrBYUMVo+32BTCP7fLYr4IGr45mkkHbd9WsTGtkLWp?=
 =?us-ascii?Q?9/GioGJtBEpCsCEp5cCPZE2Ry8WKifBPZRhZ7viH1sNzfZNm3zljiom5uBwK?=
 =?us-ascii?Q?lZvzUJQFeeG0Wi+VECaW9XnzsyYzsUtyVDw7zST4qXmlIZkp862Yv2kKVVzP?=
 =?us-ascii?Q?bmz54LaHgwsAVanaKkIvXKJgfM1mpAXMF0xLbEx4c7zepkAXV3obkOlwH0Em?=
 =?us-ascii?Q?1L0aJq8Y79oQ4dMnfyDt+1HjajpLCDKRBumaQ32pFc4nqlboNA29Uth+Ud5N?=
 =?us-ascii?Q?UZCR4w/Ofi5wM+MJjuphZGUVZgaLvf1n6vcciZWGnzVDYDOLgNz8RMnb4Lh1?=
 =?us-ascii?Q?Gqp9P7PRY4XUTPpG7wjwTsKH8SGWsIoaxQbfDZmkc6makqMvj3RZREapSt6q?=
 =?us-ascii?Q?Gjjconz9rD90acpISKLnInRV4mDXjG+YYBEw0JQH9yLigJ0f06vn9SU+x3hA?=
 =?us-ascii?Q?4JflgDz1585uK4cvka32edaEoKWzilDGez11RlUumRWEA/e73C5spOO2YH/l?=
 =?us-ascii?Q?wsmbNFoUUP9kekMV5Qjye9zbHMzcO7CC8BD4c78hPjel3SYTEyc/TeMcGx6D?=
 =?us-ascii?Q?3LOlxSP3LhCXIuCz41DxZZaeIQmyGjXzMMfZe5vAqQWlVVBXNZlq34BfA7Oa?=
 =?us-ascii?Q?eJ+FHTXN7LJyGow8nJZZlE6V7GQ1/4P3waSj0/hFbkDT0g799dKzyVDezTIR?=
 =?us-ascii?Q?DD2D+mILMEeoM4JpbX/f736wpuY4+6YCiQRO4DIAIX+XtG5d38aKVh9aMyCz?=
 =?us-ascii?Q?VYKVIO1jnZ9QXyjmkbVqgL1Az+ghUuULF4T41zEGMO1SYTsjczp33bKIwtyU?=
 =?us-ascii?Q?nchbaoX3p82b3n4AxsQzwAqXXSMgUIJnnVX5XFlY5uHar5qDn/4bkmRgn1aT?=
 =?us-ascii?Q?S9BFR+zJ34iyM1kTyJSBIP/jPtrxXEnCivcqGZIVbQdwmORkf9LhBqhY91Fp?=
 =?us-ascii?Q?2OOds4+2crroIlsvr0oJMNImp5sbb1Vr+DP1JtotRQSUAaz+9oI6u7eF7UNE?=
 =?us-ascii?Q?C0BPfYGqBfnE/NH2aANVGSpfyE5wv8W31Iic9nFsn3wnyKnq96dYQ0B9ywAA?=
 =?us-ascii?Q?ZUUKdlhQ3f8QodSPIE8dhJIG39cSHzyClwpy37Unqv8BJYGkhobMSN/RGrJT?=
 =?us-ascii?Q?OPjxznXg9fRQWyrkBMxjPfvZw1Jy1MvEy3nei+J9mAHL+DgrjKQOc79s+Z7Y?=
 =?us-ascii?Q?zukYdzA4w4JmxKJUA6TLcDTI/NBvnteEwNOMJsnd9zxLbjOhgFp3EuipCjre?=
 =?us-ascii?Q?oXlh/mcugG1bjLq54Ypx/7ow7diOvZu+PUGKVT2KJGOdULd6kYF/3mf34L2E?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2585f797-7613-4b59-6145-08da9d8b92ae
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 17:46:41.5138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OCAjXtIcVq9ZTf0SKBe7D77RwMiifBBZ7EuhfEkEGhSvy6Gwt1w/AHJExPlF+DqUeQa0hs4XpzcBkINRPZtUi7FhQQ1x5aig0NkwKC1aIRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: introduce Wa_22015475538
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

On Tue, Sep 20, 2022 at 01:43:59PM -0700, Matt Atwood wrote:
> Wa_22015475538 applies to all DG2 (and ATSM) skus. The workaround
> implementation is identical to Wa_16011620976. LSC_CHICKEN_BIT_0_UDW is
> a general render register instead of rcs so adding this move to the
> proper wa init function.
> 
> bspec:54077
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6d2003d598e6..c16e9e3f0d6c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2108,9 +2108,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>  		/* Wa_14013392000:dg2_g11 */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
> -
> -		/* Wa_16011620976:dg2_g11 */
> -		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> @@ -2780,6 +2777,14 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
>  		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>  	}
> +
> +	if (IS_DG2(i915)) {
> +		/*
> +		 * Wa_16011620976:dg2_g11
> +		 * Wa_22015475538:dg2
> +		 */
> +		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
> +	}
>  }
>  
>  static void
> -- 
> 2.37.3
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
