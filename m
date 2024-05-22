Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EAE8CC77C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 21:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D574610EC94;
	Wed, 22 May 2024 19:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dK6pwKim";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA5210EC94;
 Wed, 22 May 2024 19:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716407338; x=1747943338;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ICyC/D6AAKPkdzSVclLIDo/+toW6VKXqKBarcYeyloI=;
 b=dK6pwKimtTWp+NseJTTnnxitlvqn7mWWzmcxRuN6GtsBi1fy8n6u2p3X
 Wwwihy2y3oZEK71N4F3KYsGi6GB8HkJbiI90mPYduj2w3tkSNI7hcvkeY
 XlrRHJlkBsu1QywgieX0hTtyaX56G5K2hn/KBO17p2kHuGG7ohfbdQ61l
 D0Fj/5kAFuoG3mTi5mTJerV9NCSz76dLe8yVU0nL8GgnGjqD3Kru8PfRt
 606He/SNVscrkbJqxdQJRxcATgS1mD98UjGWoz4ZXwSzx2dAmz/KDNLcX
 xz3qn3j8K68sOC0DBXh6qcTg3+KQJ0dhAbxJTZdSFTJXTiTzcq+60yfMT g==;
X-CSE-ConnectionGUID: Xt1RSwuMTsmsMQa5Reqdaw==
X-CSE-MsgGUID: Jr5f7b+uSzeiNo89MIiFfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23305761"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="23305761"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:48:57 -0700
X-CSE-ConnectionGUID: p7c1AgJ4TjG2s4HCghElDA==
X-CSE-MsgGUID: r6d/aXaQRFGDsOyNiwWfsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33305542"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 12:48:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:48:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:48:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 12:48:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 12:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLgsn88OpyX+OoYhNxOl41fcm037jx4HBc7aeSCWvsH7C9Mno4ZsyuQsHxfxadqUYx5DDGPKeR5BTWgY/kkqLC1XuRHAupPBtZlqiaSQeeL20qS497YqF4T1d6T2phOC9W/91xdnK+zU/oK9vgIIZrMR4oHAz22YOrCk/UrMZY1PRboxoK/++/CZ7IuLMb8n4VyDTPwTNHnRVgj82TU2GpZbthHNlRKSxrvsRX8g144lqY4Sp1qFTUhHi0Nsk27L2kniOd45Ku0c9fGB7xgtaZ4o78Z9A7de6BUjB0bt1pQlgQiYS0uhEBTjRjyRERJLeayzrJtg8dJkSzv1HI2u/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PliYUoqD9aVOxpgHioQIFV6/X+5AyL2l8LNrY2QdVA=;
 b=J/liZirfvNTrAxyU578Tm3bHXeSZ6CzrK5lw+S9+qjCMOaEVEw1tFWo9DpIjzIyxRtdRq13nC2U0MMY45b/BQAxWm4/gQhNxXpkTHSjBP0G+Hf3Kl9PSCuYrRmOGsaBcJR/QGJJcNyCBQEzqIkd0OpEvGGqEd5uECyyioJmMOqjfiZZNde1V/n7dtFEIJlyhtbWavt3hnmehTavHiy7p/Vsjx9Z2neX61JVZNyEnRB5Di6qrthGaFuucSsckJohELV0WRGs8kR4LRGb2+No7R4l8ClpiJ+U5S+v5PzGM4Fma2OzjBbBnTx1Gf4dw+pSuYzLgfh9d9TryFTseK9dDmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Wed, 22 May
 2024 19:48:55 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 19:48:55 +0000
Date: Wed, 22 May 2024 15:48:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 00/10] drm/i915: identify all platforms in display probe
Message-ID: <Zk5MIwpyPZsnVBOT@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <171640168863.10417.28066664900974969@gjsousa-mobl2>
 <87y181pubr.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87y181pubr.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0382.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA0PR11MB7185:EE_
X-MS-Office365-Filtering-Correlation-Id: a2f0542e-1b53-46eb-9d09-08dc7a983680
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8Y7RUPOikyP8tUw1nWuijPtp1aZ8oJSbR/6KbhGMIfwY8LH7ljc77P12OFvA?=
 =?us-ascii?Q?VTO7pnO5UzvQXC0LiMVx2f9hOeSMHJyBoCYji698kOaAp37Mou9ZeNbZFSup?=
 =?us-ascii?Q?HIrlU1y3k2FatznlG9CKxXjkC5lgiGI6xee5oPuyCPrkQCJLPZgROWk997AY?=
 =?us-ascii?Q?xeI27XUFlZPR75bBqgqn99R6BFtKiF0KvfinPcu7MtDfxuUb6SJ9/Jxs2LiG?=
 =?us-ascii?Q?1Q6kyAhSpE0cw8ogUeqtKZQj2/uZ/EgFPdtLwksGTyU2Hh8UP5XufYaSL1Aj?=
 =?us-ascii?Q?llr8ZK+eo2e4VuEc/02ee2naNCAEEDx4BNVZckZPZvfUl2MNlPm9biayZK5Z?=
 =?us-ascii?Q?OSKHDR7vcIuy4zWpNeTupWkxne8Tzd9UU6nPUToTty/qplQ6MtWL46Tqlonu?=
 =?us-ascii?Q?c/XUQWlBURD4QFv7W6UqBha8J7jCsnJB6Ko7LGXzZ/GxLtOZN7NepqCYfBsD?=
 =?us-ascii?Q?P/rQl/M+/hIw3PqIqIpWV2QUgC65nRrKxD1NwoG2bpl39PWIvfLMCKaLGU90?=
 =?us-ascii?Q?LP+Obdi/nBpBSLniUdn27uSBOnbDzc4ZKy3wSZFWXs1odF4l/ExTvBuSBjoP?=
 =?us-ascii?Q?qUdGKc9bbOiM71wqsGx1VLhp0p2kjJXEvvnYSZ7AdRXMVfjS8hb3bMppV9rH?=
 =?us-ascii?Q?yGWWqb6bX/nxW6X+QK7A8fTqto2y4yT+NG/+tzqOTdvsYEZgLVBxPawudLBY?=
 =?us-ascii?Q?uk74/TV/KAeKlGUmL65xEDSzCDq6UfT9ZrpZjkpHVrX6WS0MnZrss2V4hWOd?=
 =?us-ascii?Q?crAIm7ON2iAoH2SpQ5TwQBl00ryisBsMwB1VtOPr8GuXhduUQ5icB0FeFJwo?=
 =?us-ascii?Q?NJw3Dl9764pJlEtrRTkWQB2QuyW6H3T8f0ej+vmrTuDAw+w/hUtx6nJGR86x?=
 =?us-ascii?Q?6vAQcWC8nj+qX8iJXIy0sjNKoELobRccn9PhJeAufSlv3c/uxonsoL4Xnqit?=
 =?us-ascii?Q?tvl15W1J8nmTRKuTYx2xYTpAqZpbzLdWTfYom0P6hdkOxUPCc8sRfbDqJ4Zj?=
 =?us-ascii?Q?77fihNcrLXUqL8xJDvW2KHp1oM+VSPrlxRfFP2ag76t7QlxejKQn1FQ+EQmq?=
 =?us-ascii?Q?GFyBxswKOp6t3//mdiT4TjI1DT8h6GprtM+rHhsq/xwrfWiXlPipYakggQm4?=
 =?us-ascii?Q?L+ixSfFcCpLXzjgnKQHu1V5gipXX6RZ8p8C1xGvCmY9OwnUPEixvWbh/op+U?=
 =?us-ascii?Q?cXpi1nP1pgyzIFdjtlWYOt875eoSlXJJ4L2d4nl3bkeyCvBWjax/pqQXnsqh?=
 =?us-ascii?Q?16ucjyj/bdDlVEbU3tYOTAgu3oW+rarGJardfJtpig=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sJdXZbQ5aqYC60uqNby1326MkgVEAAYdkYa2QWB4dQ/45OLlmRq9hG3AS0WH?=
 =?us-ascii?Q?T7HToeS+XheGCNrY3+6BHl7ADnNVY1AYFfYb4F97rcuQH5LojlMgbjlrX+RN?=
 =?us-ascii?Q?qcDT/252muvNto1YVadxVkC6I9CpOAIv9tL72MQQkbJjXRP0H8CvDcdhrM5q?=
 =?us-ascii?Q?AV/+TFFLcJSiZtMzY16HXklxnjje51DG9YS88C92gkQTt76m29xFvz9SgOeL?=
 =?us-ascii?Q?rOguO60w8UZ+9I3T0cwZ41FWW+ustoOywsHr4/81ovT1PORr8ndE3MQ4dowY?=
 =?us-ascii?Q?eyyB5KNVeN531KJp5Gl/6VN4u8qX0Noc3b5owYtZXqcDQhRAE4ol0QemxrFv?=
 =?us-ascii?Q?g1W9LS9+OdMwydgep9kiykXxcQWF0p5QkSq3sLcF6JsylhFEecvhg8NGi602?=
 =?us-ascii?Q?3H3wrn7sZ2TKmO+a8OtaRnK+z+oZS9Ej1IfQSbS0aipCyx55sgj9aqDf8CH7?=
 =?us-ascii?Q?ex9QVloHT3OoXsqqHPux4e5803ocSHuGA5qcAH9Y9o69/v/nz70hECHhjDcf?=
 =?us-ascii?Q?eG+jjRA99nfaNaUEzxcA0+r9hWxh4hYffcjLmaob6PpqG7d1HEgyNU7134LH?=
 =?us-ascii?Q?zS5cR8YLoztIa+nbzWC7tpbXgXuCjL9ofIDrbOgXhxt2JROrsFrq3BT206hx?=
 =?us-ascii?Q?gdf0D0sFwq45BENBDWD/DwvV5NJFngKxSCbYRxP3wEthtuW31AVyS5Y02odT?=
 =?us-ascii?Q?tylAWmP7WbQKPngw4GZ5dTPlP4R1GYFKJxlhAcKfYak8k+bkvJXFvDEqKc1n?=
 =?us-ascii?Q?ITc3Q8hJuAwABMHyU3WI5ARMG2zcTj4DdLmLkmWa0kgh/0ZrVINh8kuLL0zl?=
 =?us-ascii?Q?CMv8xNl9l7lF61TtNzacT1I/s6JWbJlRG52UJ7MA7B+Nfao2yU0ugd5ut2Cl?=
 =?us-ascii?Q?3era2UdEKUZZ/Qi0GKmCaFA+Xz7q/IJP4iPOpwLbYIvL5NkHnMHqx6TUzYKr?=
 =?us-ascii?Q?yGzMwnM6gkhMdonYZzAg8ELcjo+GxET+i5hLrr2yjMQnYM6AwdZoXMRp1ILj?=
 =?us-ascii?Q?kB7qlDjfNoaTyWYjgnJ9qnrvnnrqBaBcQMR4En/3rDehHNMVvJtBoErhncq/?=
 =?us-ascii?Q?4MR8H5NO1tOlMFskRvBbA2uUOWXHqS85giq5nXJp1oam5J5/dq5DEG6Pnjtf?=
 =?us-ascii?Q?yhaPcCJ+rLIRfSrG3fQ6W90pEsCLhWtspRTIo1/AXdBuOrFxSWB4ZGdAq19b?=
 =?us-ascii?Q?oJp3PQCko2d6QlkIMzNPFoZA0SioxoACI9x2YQ9q5aNcD8Fl8u++mBxLWlUa?=
 =?us-ascii?Q?xLq7LHoxaFNZ+vnmQCZqdOXbw13IPFrsdgA8JXVn3pB814pC726quKLx83tk?=
 =?us-ascii?Q?1fKBKN6VCHq3U38VT/tAuEA9fenUzprg5okRc3a093o6zEcgL2Fzgp6r9X2I?=
 =?us-ascii?Q?GQggUpTIhw6Sw4A/g68qWXyKgMzimgS3/gS1lZ0wWY1sTA3qC0Sft6zCvK69?=
 =?us-ascii?Q?8XSfJV3LipatFRLNC2WLR7kGPoM36tWr0udqBTiZvaVStHChfYNgNEDX+DPs?=
 =?us-ascii?Q?nryFVRi/GcTyz0EAYe725Hy9xjVxVub68cqC6yvYYhRQH3xoaGlFjMrbtE1P?=
 =?us-ascii?Q?0rTCjTBcSsruW4XuZKprpnUL5SbEfpKWoGJkvPR/VjSN3JHYUStzuEnSluEA?=
 =?us-ascii?Q?OQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2f0542e-1b53-46eb-9d09-08dc7a983680
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 19:48:55.0027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MamobNmR6uS9UYgJRlv3oJobYTx7IJNfUoY/dZtHoq60Dub+lcNqMw4pUkarXoi3DYnmj7l5V1HEMTtlVjfTTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7185
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

On Wed, May 22, 2024 at 09:36:40PM +0300, Jani Nikula wrote:
> On Wed, 22 May 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Quoting Jani Nikula (2024-05-22 14:33:37-03:00)
> >>Add independent platform probe in display, in preparation for breaking
> >>free from i915 and xe code.
> >>
> >>Up next would be adding separate IS_<PLATFORM>() style macros to
> >>display. Not included here, because I couldn't come up with nice names
> >>yet. IS_DISPLAY_<PLATFORM>() is a bit verbose.
> >
> > Drive-by comment: At least for recent hardware, we can use
> > display-specific release names, e.g. IS_XE2LPD() for LNL's display,
> > since theoretically that display IP could be reused in a different
> > platform.
> 
> I think we should prefer the IP version checks over adding names like
> xe2lpd which IMO are hard to remember and associate with platforms or IP
> versions.

yeap, but perhaps we will need something like that anyway, because
the mix and match from different platforms using same IP block
or even the possibility of the same platform but different skus
using different IP blocks. :/

> 
> And we'll still need the platform checks for a plethora of old
> platforms.

What about DISP_<PLATFORM> ? or <PLATFORM>_DISP ?
or even DISPLAY_<PLATFORM> or <PLATFORM>_DISPLAY, but definitely
getting rid of the extra 'IS'...

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
