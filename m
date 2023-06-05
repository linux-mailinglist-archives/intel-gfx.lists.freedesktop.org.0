Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB2772338B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 01:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102F410E0D0;
	Mon,  5 Jun 2023 23:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B70D10E0D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 23:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686006590; x=1717542590;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q6NqVNKDmDZlBMRtfQvmqwXmnVh7AViIYqlhtGWrsM4=;
 b=Tzm49RdFcCt/FeUfTOKDToR2FzTynqv/2HOWTwJCAs08+U/6cICiGPrR
 tWXv/R3bDrXbyJL7HbZfLbm8En/TvrxNFrhJj39myf9BaZJUgHkWTCIzQ
 +Mp2lq79xx+aywJ/YvFVEoAxBG36S6dINWVyiGh/mK5U4l9L5/r2itSWb
 hR99aSPh/tnpsBXH7afhun1Y+Q9lBd5AGXGaue0DS9ZfkvI/XOHU+072D
 NOZF3diqYvx9/bjALKPntBPEBZ0QXHh4A4Ndk+kOxM6220fvuHgaXbGeZ
 KpJmCXvDxhopez/xRMDjeiXQ3Lcq32vOMdXnSKK/J/NJopM5sr7ZY6iCc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="422333023"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="422333023"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 16:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="659292841"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="659292841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 05 Jun 2023 16:09:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 16:09:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 16:09:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 16:09:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DVlbBbwMfbIZhaFjJ/CtE0S8Di927DZo/bj5VRYCp0MgGTSzAiCi5PyZfHqOSeMHFAZ+IaIAQyi1w84b1cqJAAX1b/T1NspSVh2DLuVheuUHEyaj+mjmlTDOFYFT3HqCOZsnvXHGv5EYgkbsT1hsGat3SZBbr2SSzWWKfvHUu4pYI8EiyjvSPdqYgkNJk21GluuRY04CyMsstj9O6eOLCE6+14lQ3Yw62vQ/9YwaVf/wIuWujUZcIm4YqIZl2u7dBbevBDXj46tekdU04Qii6+ipmh+HKlzEtH+4yHMHhY79G8lY+O2X0ShsW+YQ5XYCVPjw1P12sWx3x4QW7+zjzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=guf3gOZl0dyqJUnGAdHySCQR/oA4dT3zZa3PCYh8FYs=;
 b=VZbIi1xGpn3/fnLuCWy0KpCYfTvGtEmkIQL72aeONS3NjvQAV7EOiY4+VSkOU5wyrQJgNkNjXTXqvBkpjJiR+ixf6j6rEI99T6Ffaq6rW3G8zQO9ytzAr6IpIxnkCWvea9DSoWL6IfWhzMqQTWch5rH0h3C/TEWzPK+3VlsIMnm0QIQhnBIJtyZte8gTbYgZ2t9iUUcZYBDLOPPxKxfOzu9M3rJl2vemDjlY1s912DTtG7+velOeF+29y2dkPjz3dMxXSVPifozTXxmCzjxnC2zj8C0bq1KdZjDUw7LDl/rAuLucP6XA+sdv5ZIQ5pRNm37Ad4AykICHQV3XvwNTsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL3PR11MB6387.namprd11.prod.outlook.com (2603:10b6:208:3b7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Mon, 5 Jun
 2023 23:09:47 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 23:09:47 +0000
Date: Mon, 5 Jun 2023 16:09:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230605230944.GV6953@mdroper-desk1.amr.corp.intel.com>
References: <20230601173804.557756-1-matthew.d.roper@intel.com>
 <168564316213.3435.14518020856766715012@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168564316213.3435.14518020856766715012@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR13CA0038.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::13) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL3PR11MB6387:EE_
X-MS-Office365-Filtering-Correlation-Id: c73b2e03-2400-4cca-9498-08db6619f4a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7rW6nJ3+SO0mRVI/A0yDsbhO6xxkG+s8Wgzh5pmzoKABL/0aJCaNkiKHLQxiJLDNgB7M3D4RgbTnRAQevSVh7X5HU5iokHzIkDmsHCtb5OiyZyMxmo89PUugo3jXUCQP8+Oy7UsUPitvWwE+odJZFseCktkLc9ys9GNjQZ4RrWnOeKFsEvIKNDz/eaQXSfM95nAHu+JG/t/HdYICfRjzK0fBAu/2+nLmesif3LnFp0WAWRT8TPBGpAmYAFnHU7Xh0YatjdnSc3kd3h/mWU9fTc3hxh8GP9BEFg8/tIxkb/20BOJJ9xrpym3wk/mR/9ZLylsHAVQTqKETja++M0OryRw0dSQQ9hIEP5MT4iGexq6vDXmUXgqk0Yrx+gBIK1qICB0WpTUUbynEyJgvkAB1pFf2dkLeTbX+i+IdGqx3BRsSEcW9x4Wcuwnfd8c3tvz9nQopUK/mOiY8pruZWVOZIzFdf0r9ocJbg+PbM1LZBJTDPofFEvCrQOk6ojx6zlsWTRhWVNIV089CqfBSPB+O42V6rNNxkEuDunjWDXLLoxcS/zcin+ecLgYw861aiKos
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(39860400002)(136003)(366004)(396003)(451199021)(1076003)(6512007)(6506007)(38100700002)(41300700001)(6486002)(6666004)(186003)(26005)(83380400001)(478600001)(4326008)(6636002)(66476007)(66556008)(82960400001)(316002)(66946007)(8676002)(6862004)(8936002)(5660300002)(2906002)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?atsDx+RBSf0ZY2JfwLkBixJkyKL85ggdPAxdSOrM6QQHEzAGVfvn2ibL4keH?=
 =?us-ascii?Q?s//T1fVnbts8ioLVnvHh9emDwvv7qmvPSuxjV5JGXFUn84TfMcv9O2GF+I8v?=
 =?us-ascii?Q?e8xeLtLwDbZQSDga2NSoks51S2lEjJnnx84Jp+RkHF23k4l7U+wZVZ8iThmV?=
 =?us-ascii?Q?fhOCFI+yyRL/gKJ4gO6Z93nfji28xYHUNPdmcBMvecL4k2GUeOfWcpLUvv2o?=
 =?us-ascii?Q?TSWdRV4a6tS3x56Hib0IKUlJ2AZkuZLVnyLiSs7uNUM/RmcGlJgkZhzTyfwo?=
 =?us-ascii?Q?HNCYmOyXqB/JhYee0RRgVQ5YOfrT9gMQulWIL6sZUtKE+1YR4QHbrQSCa52T?=
 =?us-ascii?Q?OFwaps0/gNxqMljzCYCQDcTF4erDafBNNndhSExsvOThFK8KhSL5SHRABF7c?=
 =?us-ascii?Q?1T/Xw4z4lfv26sGktG7P2dIBkI9TC34axYKRftjosezGqFfmkz1A8cYcdC4c?=
 =?us-ascii?Q?s7rorGki3aqaXz2mEeVgOCyEOH6xLfPGRWLtRIXA1qkCyuT8wgeu5xmINqq/?=
 =?us-ascii?Q?qR0RRAgq5h6qahlhSkpVclNtfqTzAU5u+qNNAaVjKG+6Hhfws9x9L7VpM9i1?=
 =?us-ascii?Q?V3CCasw2pBSQtwOHlVWBu7/yk92hs6FccouEfwjbPD3+wefaJjQZA3fWX1nd?=
 =?us-ascii?Q?xkkdPNoZCkjMK2qKltOiFYpEEFN3MlRek7dnOAuXJWkzT08FMUvEtDutdOOW?=
 =?us-ascii?Q?cKsePA22p2HkJAaPWNy0Tj7XkH3mW11B5LeewShYhMf/OpT4AVqEK0jfCxpr?=
 =?us-ascii?Q?nUnAKw/konLxufC/XPm3rJf1XFVtsQvbWnvf674SBj35JHCjw3EWkjVTAO6s?=
 =?us-ascii?Q?1ozeH3vlwORBYqpFRb11SGDa7q3eGgxpbu/B0MfClRsXSMhf/hN+mhbmoLwL?=
 =?us-ascii?Q?QefbfkdG4MyQCuMxn+ddh2sEZbpKuw2ZTx+Dpy2lVnYvQ7W8Glvej+NpsWk1?=
 =?us-ascii?Q?UCrQ2ByKLYYLuW/vUZPzG3Hg0yUaLIZRQGZrcrpiA7BDpi1vuRG+Yf1lEmY+?=
 =?us-ascii?Q?SYE6qV5KKrQjPWpKJYnZ8PRNkawMlFxmEZ7FlUfiV4JXTbgizFVMffB48rI0?=
 =?us-ascii?Q?hEU44eewR3sMVV4GwCBEb8LbnVobiL/rz81J/lqbj2dhpsBqyce83zhDY5Pw?=
 =?us-ascii?Q?DvJH8k3NN/0/eWCVDlaeKtUYYGaTQISfwFX6sO04IXDFcP0+9e74ZtGExovQ?=
 =?us-ascii?Q?h7g1OTMgC/5sNUbWYn0w9GFi+ETBn5+qgCtP/jKAI3A7FcNJHGHu/wlylcLm?=
 =?us-ascii?Q?0i1SnWfDfZtXf3IZHeOT2MYSMwW6M27756kH/QdKxwjOTVk23mUndjHwN+M0?=
 =?us-ascii?Q?ZvBvM45QJRF9NM/+TXI5vZs1m+9dq4Q212FyCZQV5pxNpCJE4ovLm7PoDJAT?=
 =?us-ascii?Q?yFQZxTN1/G+23ES2qwi2a+JM06E4QLxLzuEAhyXWqkUayueduIcflz3/XPCF?=
 =?us-ascii?Q?7JRbD8lU0+fiTN0Dc9Z4qjClKkidp0GAqV5UW0itJoQM60KXBdglvQ/Qdhai?=
 =?us-ascii?Q?rcp4yGRmyTcI4rntNRrdRbsQ9cMrSbhgA612aZBNQAZCBTQBCmJgefYR7pli?=
 =?us-ascii?Q?vxLR7G/+PujDelwPkCegD6MCKHswGgLIwWSH/s9L7CB2FV8ZoIfVL3/jJ+p3?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c73b2e03-2400-4cca-9498-08db6619f4a0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 23:09:46.9327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EBvgFSSQXvNACkOiCsrIxekk7dGu0dZYXPVP80M7U79RNtU+hme06LkQJyKlTcCQ6xlZ3r27n7cAvW6OMIb1mWvKjVMxSWqTbryaBymLAlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6387
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix error handling if driver
 creation fails during probe
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
Cc: intel-gfx@lists.freedesktop.org, Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 01, 2023 at 03:12:42PM -0300, Gustavo Sousa wrote:
> Quoting Matt Roper (2023-06-01 14:38:04-03:00)
> >If i915_driver_create() fails to create a valid 'i915' object, we
> >should just disable the PCI device and return immediately without trying
> >to call i915_probe_error() that relies on a valid i915 pointer.
> >
> >Fixes: 12e6f6dc78e4 ("drm/i915/display: Handle GMD_ID identification in display code")
> >Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> >Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Applied to drm-intel-next.  Thanks for the review.


Matt

> 
> >---
> > drivers/gpu/drm/i915/i915_driver.c | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> >index c3ab5c32d492..5c3fc57cc4fe 100644
> >--- a/drivers/gpu/drm/i915/i915_driver.c
> >+++ b/drivers/gpu/drm/i915/i915_driver.c
> >@@ -762,8 +762,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > 
> >         i915 = i915_driver_create(pdev, ent);
> >         if (IS_ERR(i915)) {
> >-                ret = PTR_ERR(i915);
> >-                goto out_pci_disable;
> >+                pci_disable_device(pdev);
> >+                return PTR_ERR(i915);
> >         }
> > 
> >         ret = i915_driver_early_probe(i915);
> >-- 
> >2.40.1
> >

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
