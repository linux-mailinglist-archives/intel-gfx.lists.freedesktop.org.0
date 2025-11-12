Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA244C52BDF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 15:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C8010E16F;
	Wed, 12 Nov 2025 14:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VijRiMmx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B3510E16F
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Nov 2025 14:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762958281; x=1794494281;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GN9U8GK1R519Durv1Hs1xS7pBKu0/hxFZ15Q9DK652s=;
 b=VijRiMmxNKsNELTbklG94JX+3Ggyk1a7NlLXBgqGOI3AVCUJQQG3ycs1
 yXbVR+NTr3CrMIX9+JxIHq+nYDMMaaCG4QGarxS+5W5DKNmKDFcgjsCC0
 2774NweDTAgFI4oZfBzVc5mTLpIGA78PM1RA9+51e7Wf2rycuFuuZiRl0
 cQgCg6ZUj063Pg0H6d5yLPKhrJNxxZhM0AD2dMfmt6oyowyBS1TWJjL92
 lwIBUomm6D+RhQr5icv/bQ1Or/GNRKz3/5fCO0KodbSDSS9CyUvSSdTCY
 LeFQvBhDuLo3PopacXlmZSnqiCznjV2Sw1C1C15gq/nl5yyOlIIBvrrx+ w==;
X-CSE-ConnectionGUID: D+J3lb14Q6KSZAZzx8HIsQ==
X-CSE-MsgGUID: rrf96HPrS5OncbGEPzwtwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64926317"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="64926317"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 06:38:00 -0800
X-CSE-ConnectionGUID: uReDlznbRyieWJ0BZwW3GQ==
X-CSE-MsgGUID: beb2ifaeRZaf8o3/rjSHmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="188871293"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 06:38:00 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 06:38:00 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 06:38:00 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 06:38:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HFElvA+jNQ/C2O8aDoUYhEwXbt7HH5+Dn1cxg0hbc1zUVa4R0srm8bj/7rVhWjoA3cjwb+0dfTGhFDDmqQ/mg/ZZWONO6TKKyMpHMmWVWztccigWfOdQoE2+TSqwgizxcbKDngcW+OGmaMn3i8hfbCcc+LSnbkqD8OEs2gr9nnXvgMs0+CiBtaqnP8eeO6v8t2AnPOosq0sOLpeg0KENyD+oXNGJRnaZGg+87guOyMsfo51acQZ+W8wjfom4ElywY2MQJ05ye6Q9c9upKDNm0jHj2nTgOJb7Emv+ssOLVpI4zGf5UDEIqME4A6eGSU7YVO5lwPG8tbHQhfz/cNmWQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GkyEBhTz25JVVvee+7sYPHKVYDE3jctEeLR/m1DWJ14=;
 b=R7xuU/HhI3fmjCGFJP1yQXETtwhQJ72V1AcjkB18Vsc9FuFMlKAJjKJs4jlpiLB4SGVytNW5aE+wnsLhxDvtjctSB2ZxYCpwZo2PI8ZfUL4iGj9mfDpXQl21lHxHmSdshNcIcE8Ve3b0QgZFC+uE3+GmEYj4eecppLGzZ0pfPqrGRoBSt5QKi32Dbyr6h2wolst8u6RCDYtRLmGQoDwMAtMzM2kiIt0tfJdbw+sOGROmkWl/4eCDdRufOIfovG8AKrEV4goFcDZ1W9pD00kb4ZQvz/eEcdKc1StwBJRWH8LpC7xh3zafsCHnzjYNp3c1zfEu6wm0GUjiPPHSn+f6Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA3PR11MB9253.namprd11.prod.outlook.com (2603:10b6:208:571::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 14:37:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 14:37:58 +0000
Date: Wed, 12 Nov 2025 08:37:55 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, "andi.shyti@intel.com Jani Nikula"
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH] drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE
Message-ID: <xcpkhpdscppbj4sladrj6sbaa2pd3o5rl2n4gnz4at5jb6vkis@lmlga7fxeu4c>
References: <20251104111840.2110000-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20251104111840.2110000-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: BYAPR11CA0076.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA3PR11MB9253:EE_
X-MS-Office365-Filtering-Correlation-Id: 567f009f-0d2e-46d5-10d1-08de21f912b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gdz+7oZegORjkK5U+jGvCG9TCRhNHZGC0T7YgETduyQqtcLqPooRI95mpXnZ?=
 =?us-ascii?Q?Ro5wquUPpz2giRLB7a8RDXs0RW8i/3oAvcoVupL9/j0+KgUJeg69jN/8f81U?=
 =?us-ascii?Q?wt91aLzGtWbr6itgojo6CSd9k5sIv7HzidJZJllEWSFdqFreDOGfgoh9W4rZ?=
 =?us-ascii?Q?wk3kgfvdB4ehJB4XlARwPoHtJVVqnBOP/bjdR76yU9P/i8sa6pj2yHu28qZi?=
 =?us-ascii?Q?5v7Wc0dpWuscmsZRkUwF04thMcUJhkr0dL5pUyLsPNjZ+xnUnf8hG0/wcmSC?=
 =?us-ascii?Q?0a3v+F3h6NqKoUdV3QjclzvCovKFjN8ou1ORwlqF/xQBNABB4Y94LEEagZfx?=
 =?us-ascii?Q?hmlGLbXb74I4Oy+GJMIWL81x4iYShC4q5Du6heVNGF2/CMpY4tDzQaVJmoTw?=
 =?us-ascii?Q?jbNDbj+ZYmysMxlA9U9EJlMWilI+ciMBlW7RskhsnDB8Db4Bid0voiYCY5pa?=
 =?us-ascii?Q?wedT06HqajX/3ll/vTKPQVfTtESE61qqHUM1+fwmvpKkf0JuBCit/x1AeVQ4?=
 =?us-ascii?Q?PA+zBGZAmVj2ZCJfw8E6Kzh8sFJGVCoCuMQH/QxZalIaoHRJ9ReZAmWLDpHK?=
 =?us-ascii?Q?h8vk00b0FyNoUG321bow4/KptbovFJ/SJZv5zlM1k6pwY4QroXwteb59sH1i?=
 =?us-ascii?Q?yJRsiw6yvYheFHSzcD/NkOs8XuNEOSOEqCcMkQJBiT+w9abLPvBWNGGI82T2?=
 =?us-ascii?Q?uB1HFDtNw1SfWHLkL/8xXHsvdz5SImObqXbAkUh9KO7XcODuNlCbwogtLX5Q?=
 =?us-ascii?Q?O/p4J8f1/VQ4bmY6hUgI9XDd5kKpolGhwGw2MXqr29UnqWvR90Qb3XqegCgw?=
 =?us-ascii?Q?kxoqGSIg0wi+XhhTCUciB7N7HRKdOInrNieLlW+jOiQ2OkkT7vTM55/xQo45?=
 =?us-ascii?Q?L00tubtIFbQ4D9R4lGDCYmP+KYLeneZtQkIuUstEnr8m3SmtZPauPEpLxqkg?=
 =?us-ascii?Q?xIOaDXmaoH1yCybZdf1Rj6U1lYRNeUssNcbpr6nrvRf6gyS6+d4vq6ufJDhf?=
 =?us-ascii?Q?3a5wyp+aMY+BP48vLllxBB90/0R3QYGq/EWvU66oGNDX6T6mw6KFtbP9OOsZ?=
 =?us-ascii?Q?z5aG8tyVr/YbyQk7yAXqHDj368opcge2ixI40zH4F3z9up5GhlkB53dx8/m7?=
 =?us-ascii?Q?3lFFp+QXtuN/buvttDBrU+ndl9yHnNzYnlgbt6NeEj4dTRhW71czVuVConkt?=
 =?us-ascii?Q?dgPTbFUodVvIgK4vODBVLnin/jsGfAYGvOFpx8QzQROmWoW7IaCDLmW2v8La?=
 =?us-ascii?Q?IdakiVWDpZUaGFD31echFG8pJ2HAXwbvXONP/AybOeW81WdIhQyKysT72ONk?=
 =?us-ascii?Q?DYVI6c0ZgFHJZqg27oMj+7l7ILABNh+yTS16nbAKFFSjeMdEQ0ZkRZi/0jkw?=
 =?us-ascii?Q?tlMvwrtPiJkHRNybdcHQbq6xBFRE9Nayf+dmA3Uo9xRt0qcpXVEK0f5kaf78?=
 =?us-ascii?Q?NPR7P47RhxFhtMgBr33KB8Bc5tgoRsIx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AZT/KnaliQph+mLLguZmeErKJbP4ypdFcEc+esNv1cj8pBEakLQwhn4NYBW3?=
 =?us-ascii?Q?Wi8mWYbYHOX2697BgQt1fqyPnC7faIYlA8u3/JQl3J9PDGfou7QH528FQF/9?=
 =?us-ascii?Q?oOlVFtULE9vvzbPNlQa0uKZjj+5cfmgBwI9mAUXn0mdumTAwmV7hYExAZXEu?=
 =?us-ascii?Q?H5B4IkkMMbmHADhre4aRGRngHD6I+qhyz1tNCvZZW1sqXR6NnLGflvZkMM8E?=
 =?us-ascii?Q?aRBHrgW1xrTTJb3l59KZrRNKERltt13xEVtG2+mW0qsC02Lw7xt4ZTj3tCgO?=
 =?us-ascii?Q?PXKIFf99ECVqykSwS/cJCYVEKMDAyEuBpqavqWlqTe9VW+CSgyxVkjFgwv6o?=
 =?us-ascii?Q?z4VewoqbymrMiQRkmuVJ8LZyA5+Or0ueWsZxi8vvjejyki7oOVw1xn80ozl4?=
 =?us-ascii?Q?AZ1IkuI0LSK7/ukNWdw/9OcfKkuKKghbtuhkwS5lPc+lAA2tqVmqQqc4sCG+?=
 =?us-ascii?Q?gum9gfaNfPVU2QNDbNXsNEC1FvzbPRG5fvHAxUNE4yXccgfVeKkT3elKyVR6?=
 =?us-ascii?Q?kcKZFdzUP01jKsA0mpo4YhYhGO32gEPKmzmNpDuSAd9v4gUYnLpaog8JY5y2?=
 =?us-ascii?Q?yfEgY7NZqS4Bsja4VYqioMWjcF76I10ddFy7mgQdqR6yPXNcbkdvq+pJcM7F?=
 =?us-ascii?Q?kASHFTkgw5cZQC8qLt9/g8dbrKoyRmKAsAUFU8cN1gbbO9EK+EJwcQK4A+MP?=
 =?us-ascii?Q?72dM/kIP/+ZueUoRCC9FEfRBIcFs5O9xMLBiYH2PNrlsGaF/yd+HKz/p63ng?=
 =?us-ascii?Q?Hxq/220N2ycz8cSiYrj3GlQ/vM318y+4C8P1DIYRSn55tc3nBKRuMR1KWyn8?=
 =?us-ascii?Q?5XL77R/hzIv9upgBT4fxz+b+KmRR6nZo96m1fjNl8ryp7N8/UHrXHxBUkbLw?=
 =?us-ascii?Q?rdQvd/WmZFsmhLy53uKwgT0zVA5SsRR6cglsYKTYp8EhrHRQN0z9K2Jdoyqb?=
 =?us-ascii?Q?SRr8CugpBj1FcMrrpxeaAMCzv2l6plQ/gdFw4/WSNjt6PpR9zBj+b7fEheww?=
 =?us-ascii?Q?Bo648vLSYx8CXZRAzLAeN2ZJOysabqVQ0ZE9/UXndUWw2fqxjBKnDXji3eW6?=
 =?us-ascii?Q?m84Anx0b9CgRja/rLwaMzWtbfuI9Ev3aF7T4yPCyAvhObVtthHl8RTZ5/IGw?=
 =?us-ascii?Q?Nvo+LRyQXBuusUfJNvG5t1vYITdXzYg3EPGIWzk1dXDZmj6UV+/SO6ywqSt4?=
 =?us-ascii?Q?pz2AS8aOw1+tJXC3zvMPNmBYZconGRP5cpjzP2lFZTr6V/U+mS3hEfn1+8+k?=
 =?us-ascii?Q?J7p1ePcpKHuc8HeEaM3f4sHEcFhKy5wUIKqcqmTqwuojnU9gSF3EycPZcEko?=
 =?us-ascii?Q?WXRxEr9YrslYqNd5eAhaQ1FmmT1+uTK9J7xF+Y/7w1atJcmWiX5Q8RalkFu4?=
 =?us-ascii?Q?/1BQeA/3Rjs7cbdFYiiUB6UpasbJoxY5xAnULW2mwmsawz5PyutM6MTC+msO?=
 =?us-ascii?Q?tGp2fynKeAPQ3WWTkv4MaUsWtLpl3RYacWLfSgCEC1xKQAArZJNcGK31Hsz1?=
 =?us-ascii?Q?857vjEXAfM2zCDBUC61neVYX9QrloZ2qLy2HRiuwmvIJl3umSBXiO7EdXeac?=
 =?us-ascii?Q?Lv3vljIfUtXag6eqBjyR6khqlZqp2H9S/73IMdtKifD7CLXrFVdR+OH3CTh7?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 567f009f-0d2e-46d5-10d1-08de21f912b7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 14:37:58.0503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HTBGqbeG2eu9iKf+h9yuF0JWPnfzF10pDcD3+VmiENFZ1DhSUi8SPh0C2VWMgtDJSFSL6T2qEct2qgl8sHpPM0DlFn0ULiStpXGjlCOAGy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9253
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

On Tue, Nov 04, 2025 at 04:48:40PM +0530, Nitin Gote wrote:
>The register at offset 0xfd0 was incorrectly named MCFG_MCR_SELECTOR.
>According to the hardware specification (Bspec), this register is
>actually called STEER_SEMAPHORE.
>
>Rename the register definition and update its usage to
>match the official hardware documentation.
>
>No functional changes.
>
>Bspec: 67113

I'm looking at this since you asked me about a similar patch I merged in
xe. In xe it's a little bit different since we start official support at
Xe2 platforms.

>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>index 7421ed18d8d1..2282c1f16f44 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -62,8 +62,7 @@
> #define GMD_ID_GRAPHICS				_MMIO(0xd8c)
> #define GMD_ID_MEDIA				_MMIO(MTL_MEDIA_GSI_BASE + 0xd8c)
>
>-#define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
>-#define MTL_STEER_SEMAPHORE			_MMIO(0xfd0)
>+#define STEER_SEMAPHORE				_MMIO(0xfd0)


bspec 52127... before MTL this register was called MCRPKT_CTRL_MCFG
prefixing with the platform where it changed, for clarity, follows what
is done in i915.

I think calling it STEER_SEMAPHORE for all platforms would make it
clearer, but I'm not sure it's needed/desired. I will leave it to
maintainers to decide.

Lucas De Marchi


> #define MTL_MCR_SELECTOR			_MMIO(0xfd4)
> #define SF_MCR_SELECTOR				_MMIO(0xfd8)
> #define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index ece88c612e27..594730f221b8 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -1405,7 +1405,7 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
> 	 * we'll just steer to a hardcoded "2" since that value will work
> 	 * everywhere.
> 	 */
>-	__set_mcr_steering(wal, MCFG_MCR_SELECTOR, 0, 2);
>+	__set_mcr_steering(wal, STEER_SEMAPHORE, 0, 2);
> 	__set_mcr_steering(wal, SF_MCR_SELECTOR, 0, 2);
>
> 	/*
>-- 
>2.25.1
>
