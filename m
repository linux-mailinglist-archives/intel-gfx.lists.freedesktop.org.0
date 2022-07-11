Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F393C57051F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 16:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611678EA5F;
	Mon, 11 Jul 2022 14:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DC78EA5D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 14:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657548662; x=1689084662;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hw7IkqbRcbH9XyGoNXyjH/7v3/sWR8vTreGpII7ZS3g=;
 b=H+1DTC8x8ItxhNFM6/BKyo+uKQO/cuxdUrpIhR8eUY8SD1ftgGpDh82s
 z+w6gW1K6q8F+4CQilD6gGLOI/kYUKPDq/m8+WPReZU9mZ3pqYr3QN2pd
 /2U/CuWVvteGMxCWyfIaCyrtUZJWYwy5FMF+ubn5KPu4F2+u/irfbR2v9
 8kkhRTw7kYTDUwPlBjQIz2wrX8BqojamiEkE3rQ+96pUsCkXCEFDZmVtp
 hTEXxfFcVryJR8nuFyLjQJ3TRp51knJ+CEg9N4n9wowhkj6Pg5N2ArxqP
 o9MD74Hcy5Iac/8ctPuJbnap2aW/loKeuoZeD1nsHFY+WecYcyKf/lCJl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="265079578"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="265079578"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 07:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="697642659"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2022 07:11:02 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 07:11:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 07:11:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 07:11:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 07:11:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YAO9jhWXbiwpzKT9Ugrk4HNutuD/ohkd5WurETQfwZ+Je/JHEmr8GMuVS+iRv1BoggP9yPSL8YXIqRrfn6ajwrU/otlflIANjntMlaD0qygVgWXCkgu3sIAVF+VG5dWbl9EpvkDW7766FuO+3RU3Noent9drwMRZZb8JSfvjcqH6cTfVKGALiVounJYgX5hJCnhuAuIMLryejKZGHWWM3eMuCvQ50S2QDpNe06QA2DPaDcqo1XfSBj7KO7onjMgRyq8CiqIT1TLhU398XDlcT8kguaEX5R6KssZcysMBIzuYrgC//SrSUeO/qGqqsJOYWpfVhqNye0K4oiukUu1oIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cCWcos75E3As8c2Rcsjk8u32obZ/sGq4curakIE523A=;
 b=Cb+N9rNJxFYBh/nMc47QEi3i19hq7zzzh7lOb2VojtIpAAstjVv9jZ9fXywv3Kuff7KR5eOEyd+AuHlAEs7NBbobaR4RjqUdH45zZt8Cv5IRLwDmM60X/6kGJ6vi0n21NphhHakZB+XrawlRPjqNCQ5V13tsZo8zD0BIZEz5scKGSYxgYm6PK+iUjdvJgb/AKgWG+VaF0TlgUgOz1aGqe8CfUienQ/VZx7yUqlRxF7TmCj+r/pArK1dhAE8J7lypfx2wN5ccqqCnT3P5M3iJNio2rh99w3ZDH7vgSOc6IVloOTVAFEuPtsRB1jXF5h2r3h8LU3ko+lS5mzvE04zomQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB4874.namprd11.prod.outlook.com (2603:10b6:806:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 14:10:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 14:10:59 +0000
Date: Mon, 11 Jul 2022 10:10:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <Yswvb8I8P0psgfML@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
 <YshB2NJK2QF8WQkg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <YshB2NJK2QF8WQkg@intel.com>
X-ClientProxiedBy: BYAPR01CA0004.prod.exchangelabs.com (2603:10b6:a02:80::17)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1685de73-6257-4246-3e34-08da63472ddd
X-MS-TrafficTypeDiagnostic: SA2PR11MB4874:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c5DFPyQTObakd35e+tMZXbAE32VXK7g+VvQt3dmRNypbIP/U+90hX//x/wGs2fXKyxbtdxgP39qoh4clxNWMW+wWUl3rmzjuhjTPNwK2YlY3qWb3JDx9qY208nien6K1SQaLUzC28FMsEcaDtbRjqbVmiN1oEpI8vDDOlSPjPOdrfbd3KhpZYMj9c6ny471Eub8w6xscnjqg0zepgIWP5+2v4sajS8ksRc7jXCN0sFIwvY4+9C18F+X9I2w1Af94hqaruggcCtXFbqzCOs+rp+5GoWuhoh0FdLSvew3/0hVs1y2BAQbALfhIiXPtyrZ2amT0b2dCYAl3lUIgx82dM5RjOvWTxSZCCrPb1sOL3CgyZWnS1GBsgLRips7pQzfawa7IeisFdNbVQiXootjo0jaE82QYulrdmvel+dLOv4XLMD2E05eEEZlTB4b8NKBQAONUAMooxZqz2IMTWpwFblBl7MGCPxIgbs+qBFG7LGyrMtnkJ65MKJiQ+/aCSzDjislKkdURPLj4XcTbkSukI6vwd87940A50P2B5S1dIq/Qa7N9FipDHveHzMXl5EODx9MAE/KqLSI4SCqwr7o3FwKXnAmt9XymsATwE5hN534UYoZO1+7gyWTLw+2zjbxzgrD+dzXGC9fKO8MmQdDLiqQvfBrYhe0HXDMznCq0RHHmCrryay/N3mrVTm+eBoO0aQ52qE8IQXcyV05hDw3CV1MO9ji5AmGl/knpICgrMrjXAlSHh/nCoLazSrbtltdo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(346002)(136003)(396003)(2906002)(6486002)(6506007)(186003)(36756003)(83380400001)(86362001)(8936002)(44832011)(5660300002)(6862004)(4326008)(66946007)(66556008)(8676002)(66476007)(26005)(478600001)(6512007)(38100700002)(316002)(37006003)(6636002)(82960400001)(2616005)(6666004)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MD9Vv8zArxqGKt5xuAtENuCeJ0p0JUIt4uYumj6VLH1zgcfA5HmpnSFhSa2d?=
 =?us-ascii?Q?73TnNjfn3tRL9n741PTzASi9VuEvXfM1phy4ZbUGg4MD6MMzsjKAHg/vkxEU?=
 =?us-ascii?Q?to0DglGE2oLpJLUFLD5USZkN5UYgWnqxpNJgPrz/RPQWRM2EKIBhMa/dmUL9?=
 =?us-ascii?Q?4h/wlvoPkb4Md4UQdoTj8ftRppbJTuqUgHPEoTri6TELIHJtIKEmE8+Vdo/5?=
 =?us-ascii?Q?AMo+iEMs8B8kwmFF2GJwU0+FqpmMSxxoE/3E+M8i5ukzqxzpFwk4EcW6yFD7?=
 =?us-ascii?Q?UM/hlukR0gL9PjdGtXlu8n/prvFO4HUhdpytzW+QXGyM9XpmD8HrwwC5X3Uq?=
 =?us-ascii?Q?BYYqb06m1GZmrKqXTi3bRZPLTYzJ0cYbsVWNbPE1+4aMgFe4mAISrK+N+baa?=
 =?us-ascii?Q?7jmUUJi4Vtzt2HGu/qEHLeYfwXAhzw5eJfvqL67O6nLp9WvaLeH26lLgWSUY?=
 =?us-ascii?Q?afUWT4siKIb1rTCMHEdc3QlkgyhqCAKfurVt2j0FdteBl1Mb0cxBEMBqXhx6?=
 =?us-ascii?Q?YxVNq3OwuFRXvflv+zerCudjjLJsbHX3ckIoJ7VJxm7/kbcwhxOuEPT/KJHa?=
 =?us-ascii?Q?9e2u+6logDOZOYsxINrsRtqY4Hn5BWLcJDU0JCLA9lbjAkvSlDDI7az9xfG9?=
 =?us-ascii?Q?AumyronqVSUeFHALgbS2Os7Losp6QheROiD/0h6NfNLm2Dkb57TdipIjgGCu?=
 =?us-ascii?Q?k2T93Syh/8D5L9+GLPC5t12/3Pa2Vjb1tVGP+HMNoJLSykyszlzyceQODhi0?=
 =?us-ascii?Q?7byZ78hfX+2TY0QqbFz61TWn/6QmfOYUU4Txvcpdgui9nhK54tregBsAuJvy?=
 =?us-ascii?Q?Pt5y0VQz/UupJimtJ8l7+IaUUI0crXMDTlTcUIsbeg0unluok4Iw8BlNKiJD?=
 =?us-ascii?Q?y2D13eFkJ4KmX4QXo1IkWNTPY7zT1hR/oI4eM3xga02CAWgPq6zzNFXq2COQ?=
 =?us-ascii?Q?PTuSCopboZzLpKy5aTdjhILKkPOZ4di2Qscea/yfo9HAhcsIgM+0Ie2wAQxZ?=
 =?us-ascii?Q?CMEvboAusKlNyOUMrgl8+5W1wKOFK20uBb1+azJUyddPwsb/UdM+OtGuWFJ0?=
 =?us-ascii?Q?lAmOd0IVBNAE4BPDAbVPNvxNrGuHO3uBblnL7kD1p54Sf/n0UuEj/Aa6fYZl?=
 =?us-ascii?Q?5OPYOG577RCirzOkTRZ3Ef9Hlq5PBezUaDD4WC9cggxxWQ3n6PdPD6/wiynE?=
 =?us-ascii?Q?U+jAUhyN4HVyjVpVRv87oAzaBwJRPn/+TihEHxlqrv7pq8yBC26nYajg8nz4?=
 =?us-ascii?Q?4YO6k3350fLRr35ZwRta2s5AGOpjcaBZEbh2B3CPsziuPt182NRJVMQSa7y+?=
 =?us-ascii?Q?zNWq6P9CWpIb6TMQNFae8uQCLyYdZNUPKkHyDYNGSx5q+NcxGFU5X+dojGx+?=
 =?us-ascii?Q?5Vcbq+/FO8Jy+CfMun/+sXa/5jg707rMPwQ9D6j8LEE3WEQqg1DVNG6/vM2N?=
 =?us-ascii?Q?tRgkFpoe12QgQybsvritE4AIM43xkV6baEyRJO5mOngokY2DETh0Ekq0UEaG?=
 =?us-ascii?Q?vS+Ibgw9xMEpF6PiAeH1n+76zA8dt5OFuxt7DsrJoM26sojSCfPAM33YT0hn?=
 =?us-ascii?Q?OOA0uQDXj5KeeKNY1fFNf0DxQ8IftXVUVIeSoVzfYdK+fM/3AxprL+QCrVYW?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1685de73-6257-4246-3e34-08da63472ddd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 14:10:59.2148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qtddbsWzd+LKWG5Zp9jyJfdSOGI+ZCzd/YDBRMMv50Iu363OKDB3/GeHgmkAHwxIgJGa+gK8kACmcWB0aqpG7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Only kick the signal
 worker if there's been an update
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 08, 2022 at 10:40:24AM -0400, Rodrigo Vivi wrote:
> On Fri, Jul 08, 2022 at 04:20:13PM +0200, Karolina Drobnik wrote:
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > 
> > One impact of commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
> > dma_resv workaround") is that it stores many, many more fences. Whereas
> > adding an exclusive fence used to remove the shared fence list, that
> > list is now preserved and the write fences included into the list. Not
> > just a single write fence, but now a write/read fence per context. That
> > causes us to have to track more fences than before (albeit half of those
> > are redundant), and we trigger more interrupts for multi-engine
> > workloads.
> > 
> > As part of reducing the impact from handling more signaling, we observe
> > we only need to kick the signal worker after adding a fence iff we have
> 
> s/iff/if
> 
> > good cause to believe that there is work to be done in processing the
> > fence i.e. we either need to enable the interrupt or the request is
> > already complete but we don't know if we saw the interrupt and so need
> > to check signaling.
> > 
> > References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > index 9dc9dccf7b09..ecc990ec1b95 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > @@ -399,7 +399,8 @@ static void insert_breadcrumb(struct i915_request *rq)
> >  	 * the request as it may have completed and raised the interrupt as
> >  	 * we were attaching it into the lists.
> >  	 */
> > -	irq_work_queue(&b->irq_work);
> > +	if (!b->irq_armed || __i915_request_is_complete(rq))
> 
> would we need the READ_ONCE(irq_armed) ?
> would we need to use the irq_lock?

gentle ping on these questions here so maybe we can get this ready
for 5.20 still...

Thanks,
Rodrigo.

> 
> > +		irq_work_queue(&b->irq_work);
> >  }
> >  
> >  bool i915_request_enable_breadcrumb(struct i915_request *rq)
> > -- 
> > 2.25.1
> > 
