Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609F38B1434
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 22:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F1C113130;
	Wed, 24 Apr 2024 20:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QmJ9fuhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F6711355E;
 Wed, 24 Apr 2024 20:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713989515; x=1745525515;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=f94WMS4/l5ArwQ22g7EIg3tubN8ohCz7oLNvPEvV1WY=;
 b=QmJ9fuhgpx6XFPCiGkhfbYJhv1u2c3u+iNc3AtcPd0zW96noFwERLJxj
 n3xOMWsnZ+A1ieLCfT/tfX+eTxKQBeh7LLwkABOW3a9iRvzkmPm2il0zX
 ftlOU89Tve9DZ5fTkO8ylDZSk40OBCU/5r8qx+QVj9hOXmjJcvTND/2Jl
 gTKRKPowoEBzdqH4FNKLPkFL9mXyi5gVqtWFUqz0h2AsrQvl9xs62vQlO
 Wq1ES+WvMJE1J4aHzXksSbgdyukowxtc+IqsRwnIyHRC1ZC7sFChRcLNW
 xlockt0J/o414F4Y9VYB7mh1rq5j7uzsxb1EVcTytBHSeqMKyrL3r7oaA Q==;
X-CSE-ConnectionGUID: bDdai2U8TfK+ynsFW1laYg==
X-CSE-MsgGUID: QmO64UPWTym3fxlvQlgAiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="9494333"
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; 
   d="scan'208";a="9494333"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 13:11:54 -0700
X-CSE-ConnectionGUID: GjW6EdyHQw+cdX9BwgaPNQ==
X-CSE-MsgGUID: XXXSM/VXR/O99roGuQM1cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; d="scan'208";a="48077118"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 13:11:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 13:11:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 13:11:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 13:11:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 13:11:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UR04D1qkBdkdf7DZ3bXUq28JJsiVjqLoW8fU8TPhW5yK4FF4xV/1WRYv5mqr07MGUq0onwQx/4OBxkOMGmNjgJnAsWnt91Ncd4UBnTKL93LlVn0br5gEXYcwkp16KzrWFoIsNndmEqKI5nxIKKWnHsWgArrpIsGUmStAl39fwSvW4pqkecxEJ5UgDryk3A5z95J327A4vJijTbeFrQg8k9L2VVaAktaJo844OLd5IImy9HOg1Pw2uuiws8b2Ss3JmCHaBTjZiEm18BXSec9/8qvmobgF0/KRBV1hP5ZtWsMzEBjE/UbDKcNnfDCTjZcc/lvXQoyNBKJugciZLUEnEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwM7F0q4/9XTXJoGEeIk2jiGvblEPkSJ/xhhOgSUa0s=;
 b=ZX6JyHp7+O/kQLtUVI0qfLy7RCMqHxh5CvMGpaaR06NijdvapX8urcvLWLiJtd/4Bjv7JVrNV4KMiGHiHX9zXTEQoR0tIW4LvPd6HVi7CSh9/sSW4wXJIHTylRzxobEOEjU/ElNJW/yBrLCUitUdun69N4CbbcZ4aXaLc9aDKROVyx/GedtOMigoQwE6MAMNabOInBTyysgiqX6NSuIagC96w2eaONPdCbtfvKsvu0iSQwEcGlxKhe7z3o9rXQyS6TrTGmtLxDGBqt4X9FgwaJBIU9QS8dQMYj6hHVVZKruOIE9vGL8XBfOjg+Uq7G2b/OwsV7alhsjSoCB7TPS5ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.25; Wed, 24 Apr
 2024 20:11:46 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 20:11:45 +0000
Date: Wed, 24 Apr 2024 16:11:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@intel.com>
Subject: Re: [PATCHv3] drm/xe/display: use mul_u32_u32 for multiplying operands
Message-ID: <ZilnfeAdsh4eh-3h@intel.com>
References: <20240410024810.1707500-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240410024810.1707500-1-arun.r.murthy@intel.com>
X-ClientProxiedBy: BYAPR06CA0017.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: d308e873-a8ec-4fac-1728-08dc649ac386
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KN8w8drUa4hjT55x81/5isUPfaeoSYDiKv2jSeqUDsxhYlhDUPbdCzn1Pqj0?=
 =?us-ascii?Q?THqWTbjbMCdGmgcBDPLMvuXfECg4FnLlaaMknFSv2exQVk9AQgeCyCJFsfD5?=
 =?us-ascii?Q?qYM+MBKwb/W433etxZLiAbDJebcDQUimImEZmXrGlcDk7mO9b1hCyH3/Ek2b?=
 =?us-ascii?Q?wgjmls5C2c2XasTtb0jGvTdCzZwa7QFwFgTOIDlLpENSI7mT64dovx2eh7dJ?=
 =?us-ascii?Q?F6voiMOHi3mPEKYWC7KOdJ7JBA9SWzuSz8+fLYAOBrdGYZ5WJIeK7FHCqajx?=
 =?us-ascii?Q?MRkbCE8hpAUErNdIZCI5PRS39eg4nf/TTd+E/regFXpNoYj1sESlGDXGSxRk?=
 =?us-ascii?Q?4mT/9VDD92abxc0249YBYdKBFooorCsRaxf0Tyw14KIXNhnEE38v6Ru4rPhd?=
 =?us-ascii?Q?riOK92r5gboyGyervYGl1TToHyv6k01sLXW6XV0YO2QMh5pfGE0q+d9c0mqv?=
 =?us-ascii?Q?5dTCuEtcR9Xp4ybMzsbWAcOFzYMHE/16oNsDJ7mZvvokXbp+uqzy/JxyNkzH?=
 =?us-ascii?Q?KwlHV7fhBzt5F/45HA+Z3KrXfr6xPPVt88Ipiilu/cxRMh+WQv5sO8uEbmhC?=
 =?us-ascii?Q?KkQFiziWYWAdKPb9DIEFMFshkA4Rb0AFb0HkVdb9Iu2QxMa/pRd3Z4a46iK4?=
 =?us-ascii?Q?YUMXFEftDU1XdVqEJwx2SLu6w6f4twEW2vL+3tnVwztjKnk//M1yb3MqNMBs?=
 =?us-ascii?Q?YspqxWLiqGKBTVX6wTQ1WhP1deLu1DBlxqsIA5j6SIrtvdFs4B3RuX2J5mHA?=
 =?us-ascii?Q?7L1Tmw+Fxkjzt3lDSWm0l5Yg3PK4dU2K8ZebkNqm53EPfPSRZbuR/U2jBr+I?=
 =?us-ascii?Q?Yh9fSugR6pWJymQVzo8xnn3nuhj2zW2+aIIeMpTkmAt98w0EEDp6brlZOQ2Y?=
 =?us-ascii?Q?zoFGKaeE/dpfL+K7t3PHTp/Nv9jfM8Gl/ByfhSszDhqalJigOPPo+gi/pYmx?=
 =?us-ascii?Q?mxfMTYDIanK8c+yNWLg+w/W79TCyZnC6EkrUFpcDXjfLkHgvLNFiykAgWZAO?=
 =?us-ascii?Q?4XF/9S86gW5s/UBWtHXTo1jBUnxx1IVhkun/trV3WPEWBGuDVyl1mby8hCwM?=
 =?us-ascii?Q?vVzaAkKoZFOd7nWtBU4OwpUMbbRmjEkkTzgKqROVMvjKvoJxNzpRHtRET3P8?=
 =?us-ascii?Q?LG6WGKpg00tS09APv/ZGoi3w4hMrSdoa43bCf+ocDq0sI29P2wEnO4zqrvEY?=
 =?us-ascii?Q?QAYG2LJ5YluMnVwD3HdtS3QUQqo+l/HMXl1r0SOQabx7/xMIIenuYxfralTA?=
 =?us-ascii?Q?tK/BPXfp2qUBk2CxK0QluqEMoIEDdQ2/yK5Yy1Fiow=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GaIu+bZd6uz/e3thqe+eF8dX78w8JBmfnQEcoxGKCj6x5UlYcd2qCMvlSqad?=
 =?us-ascii?Q?QBop3j3+VxvNgLepphSkfNNpvQcFxT8S6UoDukZnV6soa9Suj36tKNoFIuZR?=
 =?us-ascii?Q?cUPLJET/lVTnr4s93eskP2kVEWItZY43vFLBhs7q+HuAn1qb0dgzK1ajlrDv?=
 =?us-ascii?Q?1K7zR8Ksi6DMEAZk7WmfsJbPowH9fCiLdeez152K9iXhl38h6iTJ7Sp4wL/N?=
 =?us-ascii?Q?EK8QoOuNfhziMUm79MrXBf5YimrCglYziIb8vMrxs+kzTQk5AtqjEJbyDEsR?=
 =?us-ascii?Q?emWSFXFz3Ace198wHFdSdA53De8jOP0zEg4aqvRbqPViGV5k8aX5ow0keaoO?=
 =?us-ascii?Q?Nc8/Qa0pjsZt/TPUAcDixfKl8Gv0u+DZDZdqPC9rPMXDyXzlNR7wtx9z53+O?=
 =?us-ascii?Q?F7DmePU8fQL3dJKC9da24/YTV0OflO/55R9F5xqSb6v20E3MXHxF7XZuevDm?=
 =?us-ascii?Q?IBEjFDEdMdmZhVtBaBRLllirmjHKkorf8KyJXRPQjJrCIFmGbQOQa4eTO4p3?=
 =?us-ascii?Q?YhGFvfkTdHqFNgN7Ql49VDSbICn5+9pUMAXkbge4roCAsCcuDdtlEX/9qhxf?=
 =?us-ascii?Q?3ofzYdp0WMuiRl+HwiAin7VM0Z/Itz0OM3vQ9Yevnnp8MbH5SAXFTJ46btSy?=
 =?us-ascii?Q?4jSw7pYfI9ORJawHA+AFb/7m0CsxnPqLGybMHfzKZcUFG+742erMPlx7gjvB?=
 =?us-ascii?Q?w0+f312hfsr/PLF8V1laL0y9c3LfwZQYOFmIIBeyYeqjS47XciJ49jd71n3Z?=
 =?us-ascii?Q?EoW81JJPKhIvcZnNhLewdx3xh41NTtO2b7Rbw5YyvH0RyxlUGUtIFMiCksuY?=
 =?us-ascii?Q?DzzJCETopHgRRDTPUc4JsEQ70y24NNgxyQCiaH0NCTF+q7UmTOhXlWsUzEVR?=
 =?us-ascii?Q?yJtSVMtNhmpskdV90kTfMm0hH2ec3H9Sqh9fT6yM4AMxIRdzWZrhydB/RLIP?=
 =?us-ascii?Q?Jwqw67h90zUpLM/ufVN0tkNFIkvXiHhBTBgphM8ivG9pA50x2PFFwD+PlRUb?=
 =?us-ascii?Q?aUw3ZfEDgdP8z3tSQFGalrV6UZPhZXaWeR+dPySGBR88+Wtx/+g8iktNMmK1?=
 =?us-ascii?Q?Snrf3JFopJ8+kXaeDcjq+0cVe7eZeZ8GTLWIGLoJL681cySIsjkN7wrQHsQe?=
 =?us-ascii?Q?EFyWujTuTkGYw1EyZgCzvofGfChlQkI2blATRdRM2Cg6MVxm0HgQQ+RJV89X?=
 =?us-ascii?Q?95m0+JbVoVf0eTnYR0S7/BMs6AmQV1VGGimQD9F5k7Ryh0+/LR7XLD9RmCMz?=
 =?us-ascii?Q?Uj+vVG81GhXz0F6cWKnjlrvJ0BIBuAv68XQWy0Wljh+ks44GSQ7ziG0S8Mb1?=
 =?us-ascii?Q?Qh6KGVmb94pFRBad5dk39C85+uxO2/zy7q+lgnK2QLtj8TgJ41dLpmF04j2l?=
 =?us-ascii?Q?Vim70Wja8FTqHOM3PUyCv0QZHWwrP7ArPNzqtp+nDkkfomzgYA5Cq0drxt4p?=
 =?us-ascii?Q?yvx+yD7evoBLPXdHe3H4HiDX3NT3UJFKNWelBuFLnXkXgODDTME2oyzx1MCH?=
 =?us-ascii?Q?Qg3ZDBb/aRxRzn+XK92+/I1np2OnSTannWpr+vLZh6tz7HHSfU40aq5R6KA6?=
 =?us-ascii?Q?Hp53LdmT+e5niCPq4TkNYbUn2ZlpbQ2LFD7RIOwv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d308e873-a8ec-4fac-1728-08dc649ac386
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2024 20:11:45.0833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zt4SGr6WUdv/LduTQZfVvBapzwwpKHBiJwgqTFYLpuZPQa7yDrSBayWpV2CFHmtDzrAcjuqpjhzS6qdchzxjKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

On Wed, Apr 10, 2024 at 08:18:10AM +0530, Arun R Murthy wrote:
> Use mul_u32_u32 to avoid potential overflow in multiplying two u32 and
> store the u64 result.
> 
> v2: remove u64 typecast and use mul_u32_u32 (Ville)
> v3: Reframe the commit message <Rodrigo>

I still believe that the message is not that clear tbh.
I mean, just by reading that without the understanding of the flow,
one might simply ask, how can you overflow a 64bit with a u32 times u32?

I was going to tweak that while pushing, but I got a conflict.

So it needs a rebase anyway, so probably making sure that it is
clear that compiler can use a u32 for storing the multiplication
before it moves the result to the u64 and that could overflow.
So, this cast forces the compiler to already use a u64 during
the multiplication, before the final store.

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 3a584bc3a0a3..c73054c09ae9 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
>  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>  
>  		for (row = 0; row < height; row++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
>  							      xe->pat.idx[XE_CACHE_NONE]);
>  
>  			iosys_map_wr(map, *dpt_ofs, u64, pte);
> @@ -61,8 +61,8 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
>  
>  		for (column = 0; column < width; column++) {
>  			iosys_map_wr(map, *dpt_ofs, u64,
> -				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> -				     xe->pat.idx[XE_CACHE_NONE]));
> +				     pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
> +						   xe->pat.idx[XE_CACHE_NONE]));
>  
>  			*dpt_ofs += 8;
>  			src_idx++;
> @@ -121,7 +121,7 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
>  		u32 x;
>  
>  		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
> +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(x, XE_PAGE_SIZE),
>  							      xe->pat.idx[XE_CACHE_NONE]);
>  
>  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
> @@ -167,7 +167,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
>  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>  
>  		for (row = 0; row < height; row++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
>  							      xe->pat.idx[XE_CACHE_NONE]);
>  
>  			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte);
> -- 
> 2.25.1
> 
