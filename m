Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0392CB371E4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 20:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FE410E39F;
	Tue, 26 Aug 2025 18:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JtFqmQzm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8A2B10E39F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 18:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756231436; x=1787767436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FzO0Xn11ODCqY5yoO9RLeemStGSLt9uFTXPPVwuC5lY=;
 b=JtFqmQzmE8uT0oq1T6euy8AmoTs6yxQIxNJoyu7XFZcl3qKaI2Z56MKN
 MmnRH0o03n4h/DZjwTX+9o1E8EGPVuIrhg9XkMQwlMoIwcfdT4iQ8VHEs
 +qSStriqkLvgYddo9E0301kqp4Z/1z+1sg413Lm8tgSnUstsWS4Hz3CYa
 mrYFNMckrKWo+ckRA/Wg3zNI0UX3g4lDu8ewSroTBKHVLWdMs8DBJTSug
 lhkmlQy902nOrjMzt1YaSOXC3h5bA8lCY7gBIQltM79Vk199+ehhbmrZw
 7a0Q7X7i0gsVpSX+4z/UVXcXouoMooodXgQVbkdNfAHPfSB6LaV6Te6BJ Q==;
X-CSE-ConnectionGUID: CqjWDK3iQ2aZiWY+8ovEaA==
X-CSE-MsgGUID: Zv84BuiaR5uL5gTd/ziZ9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58541323"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58541323"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:03:53 -0700
X-CSE-ConnectionGUID: W+nZEzTlRxKHr7/Ym+9fPA==
X-CSE-MsgGUID: JbFBvUysTTGiyEtNy4OOLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="193306019"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:03:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:03:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 11:03:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:03:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F7BIC3+gxcTtGvZMFXuxc2ai91TFwOwJD93ikoFi0//a5Q2VL+F950SC8ZheU4+rGCGAzy2lLYIBKBWKFHeDSTOUqOU5ymHh5J8GhOs+yoz3T6H3DFun3D+zwllhwcN7OJROdgs/tdVicFPYeYczixiWcSuWlBtV2I5bj2Y9bSK+8W6/EsCdMbhnyawv1F/+oKLOGabp59PjiVsZkjJiMNqbZSDtKsJCV88ZnBoV+EikCNQAOZqZXgScRWjwEvifD/YP1KOw4Nqg+gY9GIW02xW5hnWV/KgH86Fc4QJzZHeiNlBNGBVq/F7n7hWbUogQ6VTpIGVxuvdMq+7S4oOdpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wSvKVIklsvYOC/SS6cY6aKcvw75No+nbXmyOjy1YHLs=;
 b=qmOfEwp9/hCQtaP9tOzp0/NLQfATrdQ5/1kB3BKoox5r+yGHn/lCb80oAmXYJr4BwoXWp8tSqKxAF1dL5BRW9M0h/pDKYbMvctePkgu4TiXlKs6j/QNF0Fsw4xHv8xea6Qdm3m7YJ4fDBWG/haHZ5NOw7yK3NYEZSOfPS4SW9rMkZrrR1PjDWbN+ElkdQrrlNDQpNeAP+JsZp2nCa54S5bcG/A09FuJ5/XqEXvMH4M5R2elfZow7fGUUEwzk3JH9sqOAGzEl42VTggG8117N9k85NUecbIQyUPCIIXaD/KzD3ptF7eQVY5R1Vjhu/RBEC+V+CBjUAI2BI4cuFdEowQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 26 Aug
 2025 18:03:46 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::1a0f:84e3:d6cd:e51]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::1a0f:84e3:d6cd:e51%4]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 18:03:46 +0000
Date: Tue, 26 Aug 2025 11:03:43 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <john.c.harrison@intel.com>
Subject: Re: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock
 and prep
Message-ID: <aK32/xgF+Lmvafj4@lstrano-desk.jf.intel.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
 <20250826154352.90434-6-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250826154352.90434-6-jonathan.cavitt@intel.com>
X-ClientProxiedBy: BYAPR05CA0092.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::33) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|SJ0PR11MB5040:EE_
X-MS-Office365-Filtering-Correlation-Id: 76a3e8e0-f4c0-4d13-4d7a-08dde4cae68b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?F1oTWOv+5LqXA6VtL8IbarcGE7kLpNkVnd06qCf2K2PtGKfFgg1S6Psr7qrC?=
 =?us-ascii?Q?TgjaxC3NaqIdFWpogc7keEUZ1O70arIsp4iXxn+vRf/xQM7I2/nZvU20ZM2N?=
 =?us-ascii?Q?/H3EZDiIvKHtX1Wn7sND5Q9EQtVhBdbbUi5hx+hzg0C5sO+tDVbbrsRfnC7F?=
 =?us-ascii?Q?csmTFdXDt+lvpBaL5jQf6u84a/CdA64i/HxlMBcUkxuatVdmkOeepxeY9Eu8?=
 =?us-ascii?Q?EO6nfRibY5ilgAvme1IqC1IPaeogRT1hbvt1qlfNDfgoqn3/s/UJHYuatOt8?=
 =?us-ascii?Q?GDksmGYv+hCZ/9kIDWV0u6J7eILrcaz8DpoHygfAT9Aw1YHe+oDmmdZrc0rq?=
 =?us-ascii?Q?XDrUCbn+5LqfQU51rEhUiKShXABUIO62OI0jUJAltXdHx0uc2WQdDlpp5ipa?=
 =?us-ascii?Q?/5B2Xe2Pav7EoU4iHsydQSB0TpTYXMtSCCdQmjZClkpcr3CI5dsKaVPnjW5V?=
 =?us-ascii?Q?hBnEEllUAR0NLFq00rXHK/+N+GngeusyB4E1DNZ2SvOLpQFFbfcUXD3wF2d6?=
 =?us-ascii?Q?OB3BSU/PBJZ0BNzm/WX1urQ2qHrsv/JdkSep2SLAbx+2xBF4SEoFLdoaoDXC?=
 =?us-ascii?Q?0RkMql7+Wh7VGQh7nMslk/COg20KLBdi1z87e2XYhhBRsol/DyCyDOe7Y1H/?=
 =?us-ascii?Q?bbk8RvFgkncnzcp/ROuSqHQzXmbxS+z8Q11vIfsp3z6HfPDXR2Mp7qwBjBAz?=
 =?us-ascii?Q?DfXfbpVvbkMuAPAWq7GM3HBls7DLNhz1QIozJBMGgT1mQdEI0FYw1mEUEeQu?=
 =?us-ascii?Q?OZ0CpNu6SCcS89buQnB62Rrj9XElPSQ0USBIGY+B1+aQi1+HrWYM1ekH/zuR?=
 =?us-ascii?Q?/897C+rDG82IgRVLV1IqyefWKim6zxfUAMm+Iq5icvCSdF0bKSP4/znpUd1o?=
 =?us-ascii?Q?xTkFmCfcPHZJpm/7cUFoKt+gv2M6qI7SbhTBTJBZktCpVGkW00NHG7WKWlCt?=
 =?us-ascii?Q?kZ12MVEnM5uknaRAtp+/Q9X/DBydcmwn0SZ1hR2rsg7evqQOYuZdBYmWyjXL?=
 =?us-ascii?Q?V1Uu7BRkF6C9hukPO7b9q252RqmaMSNlrSqdT2VHsTj1OmcxEYV98JfLsuKs?=
 =?us-ascii?Q?BDRxxLPVEzOjJBzc2j4V5eabZddq9ARPkxURh4x32yXGIlVVbTtjIIjnIzk3?=
 =?us-ascii?Q?zc+aFT+FMVmLBaFXPeiHkjU6ppiRextO5gUbhVLpqpSvs790m50ggb0jwHbn?=
 =?us-ascii?Q?XcYNgmVcXnPrEhcT4CUhnMoh9XYHck/wB6cxyA/Uylv0OPsi7r8pYRFX2Q5L?=
 =?us-ascii?Q?39zkG+D+FfJFbc834pxbgS1pzTS8ZVtu7hZBwuvAtbyYJ+MgVKQoJUnBytsL?=
 =?us-ascii?Q?IZyKQyGuCbzEeym/6MrPSkdLOxp9DnYulMzRkOp2V7aIVu0GLrFRBLtjYO1x?=
 =?us-ascii?Q?uZNrJEjj3XaYlz/LK/uKQik1K821hZN3RxZ2TXf5GUoaJ6ucscqn4nFzv7M/?=
 =?us-ascii?Q?kWDHK1Q/Ui0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F/qTcfqpJsiSj2Nr7a8TtSdr7MmqKQKBhQfNDMyxq7bcXrHimkf+nBmThpH7?=
 =?us-ascii?Q?/iyc1a96QMA4LwI8b0CrTB2B7iCnB8h59u2nPszKclLK3S9UNNwDNnrZI3yD?=
 =?us-ascii?Q?NCpestK8aw5xyEl6RH4ASlC19hoAhC1fEJiu7ta5Tnx4Fkrf2poxBTd13rwk?=
 =?us-ascii?Q?D62fJg7QEc/TYsTszYUBdHKVDtj7vcAHB6UqWqRKLydLv75/q+3C12zwygQa?=
 =?us-ascii?Q?wc+y86FNN7KQRciPxHq1ItuHUHw5gM1t39QpCvzAHGWe0YyRGquzSkzp5SC9?=
 =?us-ascii?Q?vfgNMFnjZdiDrjd5FCLLH5oMop41tQ/8F3+gIHK3Jnsu3rGCn4PWwLPGuHsh?=
 =?us-ascii?Q?MG+6a8eXwNQRPSCMzXhKSkaSu0jL1V/EwP0X0q9y3JIkLZLbwKcIQ2TgYNCG?=
 =?us-ascii?Q?6iuzIWpjClKaO0N6M4JRkbEMr2hDiLlz3b0EuDhY11q+MOq6PSqCDTptHKPA?=
 =?us-ascii?Q?LfbayU/E4dmQ4VBLQJZ6FJcQar0YsfRZwoRxjftpD4wq9LxKEUG06NjliZX2?=
 =?us-ascii?Q?oXkEL4C4jdF17pKRtf7tcV18aEikbjcSRojgzEfVgYrYy4Kzl05Yb1S1XC2+?=
 =?us-ascii?Q?oUSWFvq/OR7thPx9KgKkF9QIfFxuuUNas1uLkPzNyZT8IEf9qvwf2M0P1GLb?=
 =?us-ascii?Q?NJrdqppGn2tn8k8SfOLX6p3lzHeDhPKLC+TJUHPZT34sPj7SPuOpkDzltNuy?=
 =?us-ascii?Q?K0QLZ0yAg5aINhVVEBqiZFT6+WDB6z3xzDO8bzokdc+B+LxxVGHmM+oz1/uV?=
 =?us-ascii?Q?ewWd5zImET0lrF++M8N7jqq5VuKiASFrJA924RhhKUZNFFTStjzJzOJEQ/TE?=
 =?us-ascii?Q?USvftjqn+12y2oj7tPclJk/JJOmnW6/bRqEpWJanlN6AHkLgzGyC0KPpXtGg?=
 =?us-ascii?Q?UJ8VtZxgsJkMH8Wib2oaDehs54FjfUWb9Ws2qXCTqApN4YZFCC0HLCk8ETln?=
 =?us-ascii?Q?0VHjDJdO9am8B1RQoirWlzaO2xPK5RYf4Kr039dozrYAtV9HJHMwJLIUTX2b?=
 =?us-ascii?Q?7/AIICM/JSecayxRQoTnbRkZLAZzqSLhUgsjc8UKWWlkvZjL/4T78JHazrkH?=
 =?us-ascii?Q?U06SI9HyVZw/s+tYNQ2g+7WWrcWMDaFYrcAgcf5AMkxBpWl6ThBbpdx5jzEQ?=
 =?us-ascii?Q?AFpQFV5nwT2bwNHdxFKRqcT8bmgJ7ecEAQoI+7+gOtBzsA55jchCADXqRQgy?=
 =?us-ascii?Q?Xd8XCaN0JEaZf6YJYjgWRCpJOFRSavKfP7Qia3UQL1mIaJuQOvZAR2W+ClUh?=
 =?us-ascii?Q?iDzhVprnKDI2n6PWqHMZKXo+fdRROAbwOtOAjdS+L9xMGkLAHA2S9yarNhD8?=
 =?us-ascii?Q?6iYwj12ivUWT/24mtZPHIz9ncQiBCr/SaeG09mZ/6LqnN1+w7C8pN/xKO2b7?=
 =?us-ascii?Q?DiUiEWeESBPEfX8+fbWMIJTYKqEVbaNm50EepRJUQNctgYyLtCTHRgLWaUog?=
 =?us-ascii?Q?S3e9QPiyvddAWQUh+N+4Te1nImQ3l5VN+oaEngewxaXaeJAwxypDCD1YzhUs?=
 =?us-ascii?Q?gsoFNEsiZaeoZOuM3pvzWm0iVqf1kh84+4nM/XGXkgakd0GPRPxgQNic9WHi?=
 =?us-ascii?Q?VoJcTqnUQtlJvFHeiscRvv+tKq3KTVU2EarEv1FVlXMAP7SwkkKygGabW9r8?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76a3e8e0-f4c0-4d13-4d7a-08dde4cae68b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 18:03:46.0532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8TEfAd+muWyerfqAnAiSX+VVfdKPPvygViTD34Xh2CCnlCSr+dRIsmBMC8pqdO1tkns8DImcbPZlElbVo/P84Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
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

On Tue, Aug 26, 2025 at 03:43:55PM +0000, Jonathan Cavitt wrote:
> Add error injection support to the function
> vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the function
> as noinline.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: John Harrison <john.c.harrison@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_vm.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> index 1a8841116e40..e527c90b8c33 100644
> --- a/drivers/gpu/drm/xe/xe_vm.c
> +++ b/drivers/gpu/drm/xe/xe_vm.c
> @@ -3201,9 +3201,10 @@ static int vm_bind_ioctl_ops_prefetch_ranges(struct xe_vm *vm, struct xe_vma_ops
>  	return 0;
>  }
>  
> -static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> -					   struct xe_vm *vm,
> -					   struct xe_vma_ops *vops)
> +static noinline int

Ideally in [1] we'd have something like this:

#ifdef CONFIG_FUNCTION_ERROR_INJECTION
#define error_injectable noinline
#else
#define error_injectable
#endif

That might take sometime to get through, but in the meantine can we
define something on the Xe side for this?

[1] https://elixir.bootlin.com/linux/v6.16.3/source/include/asm-generic/error-injection.h

> +vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> +				struct xe_vm *vm,
> +				struct xe_vma_ops *vops)
>  {
>  	struct xe_vma_op *op;
>  	int err;
> @@ -3220,6 +3221,7 @@ static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
>  
>  	return 0;
>  }
> +ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_lock_and_prep, ERRNO);
>  

We absolutely need the same injection points which are removed in patch
#1 + an IGT with the same coverage. Please add similar points. VM binds
are a deep software pipeline that can be unwound at any point of
failure. Different injection points trigger various unwind flows that
need to be tested. It took me a long time to get this right, is easy to
break, so we need good testing in place.

Matt

>  static void op_trace(struct xe_vma_op *op)
>  {
> -- 
> 2.43.0
> 
