Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90B9B076CC
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8E710E2AD;
	Wed, 16 Jul 2025 13:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dsn5QHjt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C47910E2AD;
 Wed, 16 Jul 2025 13:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752672152; x=1784208152;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EWxiB6e5ERBvgPqpoMR7b2ukCs+tOw3LoF/TRH/fSaY=;
 b=Dsn5QHjtruxhobWdnZQtOiHtxExtgYWNGUFwLjVXnemm+AmnMWTG+rpr
 lHyPLic7rI78pV6YEIdNBUJGz9wuSwQM/6oMa3QRYbP00DVS28n9tfVgi
 i2rOzrIBgUTiNuE/mhGwFUqiZAkOgATR2UnZGJsOe6ZSs7q90asOcL+9u
 OTBCjhXlWO8Jlo+118+7bjoggeTrNtOu5Ce7ssfzqH30/76lblYxQlqqR
 RN+ElezhAV8UZkiMeZ+/weo2aHeR5rpSJnXcmjFpHOTRVNo4Ks/N6zemG
 LAdE7QusdHO8ubtYoI1z+UCAZLCCgwtNqkcuJJuJQBThLXIoAZAxBhPDl g==;
X-CSE-ConnectionGUID: 3/4EQsszRmyxqrfVoANL1Q==
X-CSE-MsgGUID: xBv5n2bhTpCJRHG3aW8nvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="58585548"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="58585548"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:20:37 -0700
X-CSE-ConnectionGUID: zd22Y2UySYKplkqbjLcakA==
X-CSE-MsgGUID: YWAYtV55Q16l0WipK/ZFZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="157987694"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:20:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:20:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 06:20:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:20:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iZq7o0yUV2lInlgZ9ohAtLqYRNdXPJBXhaqiLC908SG1xf/2A+//yPX4Zh6Ze0p91/tyObUGM9k0/nb6Wufrt9dYO9unQPRR/zIyZU2Nwsy0oEfjMJw5vvSE8vxX6+iqDxQ3dTDC4gE1OyiRPXvZ70Bnx1kU9lpKb7kCOh76PL5+/dKSH08wM5B8gGcvBgTeP1uPorvIuOGJE5GXZTY4Ghhcz5lLxvYf7xWVB8S/HSLiMXBHhMqE5WKJ4PD+8nHheLc8gA0EEOfj0tv3QW3dql10/GZSdb3HBHUmdXarezWxWCt/2fpx3idyIpXX7gEHdzC838mYAaQ/p7OhPH72YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xLzhYDX6IdQv15huVAwkk4yZ7BeQM3BQ+p7NgNBDxY=;
 b=uJohBiA4y/W5OFP+ICJUZtD5LiEho2F1n5OtGNz5eK0/vL52QsvAktPRVxmLoPzFXMAXhx85VZn59R4hwKsSg1iYcl8+20DhZUk8U6EGKzWof7zXHpZvzCZujp1LOlCqMaQbvMBV3a83HY33YfEM78CGTcx1Lt9rp2VMdQJ+0O2jPETbWrM69VgKQSw4EPg267ux60T7/gxXmO2qv4t/S0yyOOliMv6/l3tm/GC1OpH7Pvi7Srbuf+d0NLx0uxxVllvAEjV1dRzt2TIYSklhKzYjS+5xFMNyjwORPoFGS98ht5eqkwHo//0eCfJJPmwE6w2+ALrK7PcpHH/J26IVJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4816.namprd11.prod.outlook.com (2603:10b6:a03:2ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.29; Wed, 16 Jul
 2025 13:20:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 13:20:34 +0000
Date: Wed, 16 Jul 2025 16:20:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/7] drm/i915/dp: Fix 2.7 Gbps DP_LINK_BW value on g4x
Message-ID: <aHenHJLCSVjYDUKp@ideak-desk>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
 <20250710201718.25310-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250710201718.25310-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: LO4P123CA0159.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:188::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4816:EE_
X-MS-Office365-Filtering-Correlation-Id: ef9957af-7a06-47b5-2413-08ddc46b8b85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?5TqpQG8Cnj2/ZGPD2zkIz4hw6xuHBHwgE0xgjUOQG70Gh6FTCMINMgTTwf?=
 =?iso-8859-1?Q?oKxuIyBh2t1jH+usIMQjXRzUCQklxHu9nyglBXrDNifn+xTLC1WQoSHwkw?=
 =?iso-8859-1?Q?vcU/feHcSZ8A5m8s1o1hQh2qVx7g3CYcdYn6Ix+BX0UphdWMiON8Ce4acF?=
 =?iso-8859-1?Q?HXEzlmKVdWaPeq/AifGKwKNgF3q9wAWEjyT5Xg9SkapcqmWarTm32DiaII?=
 =?iso-8859-1?Q?ZdU8JaTeYnEAt2svtlkv3nnqYNPJiKVdRDQ8kc3XZvftL/qtOT8bdlQF3r?=
 =?iso-8859-1?Q?c3NLXQCgwrVPkx0ZAbyJTVLYkCd5dRVJuvQWvY2eby3jUqT3GYWWEGqxJg?=
 =?iso-8859-1?Q?eCsofkoTIDPqcwZw5LpWa6UpKoCsoPZAPZY0PhKJSExomRhhNCH/LqHHCP?=
 =?iso-8859-1?Q?AeOUsQm/QT1+Exs9PjCWZONN9wUoOPrjtJMlgdQ5V1vXpH268wCHiba1x2?=
 =?iso-8859-1?Q?j45bbF9x0YFet6uHRpI7kIF8txCnaXa2juZ3VwD4R7CQ8otgLlx4VYG1Hj?=
 =?iso-8859-1?Q?ZT+QVUC06hOb6pjw6C98AlwUZjeFAQZ52RRnMrrzst/kNv8m/4GQPK8Hgv?=
 =?iso-8859-1?Q?Rb1G7MksW2wgKvYEfk9Aeum85EkoxZ9mhAIMxsVjbweHiSVfIyYiQ25wYH?=
 =?iso-8859-1?Q?smGDkzlYxhCRPPYY1h0BAmxgjwzUcf/NM6VSG5Smxy+mtkYW5VAKX7h/Us?=
 =?iso-8859-1?Q?i0kXg2Kx7XKpOsL2/sgITcxvB9nV/k7VBkH2P3rbo5XTwVyY0fB4YBLNwd?=
 =?iso-8859-1?Q?Ga7qLMn2+pjaGEBTnYj4sC2DnsqztWASYFjw8fRFfd6waec83wTsBxb+BW?=
 =?iso-8859-1?Q?bOLiHd2EI8KoW0FQqzgtachijdeWsarRMpXCBzOvX+hAYBCx+/AbpcSa0w?=
 =?iso-8859-1?Q?NmB1HA5+j5tqjL7RC18gZQXrws0FjOkkB5iKugLgrPYs+MQ9YN9dbYzV64?=
 =?iso-8859-1?Q?+977uthwsBfn89dSy1HHu+r7m8M6lE0tSdr0TKRRWX4d72VkzfOM8d+Q1T?=
 =?iso-8859-1?Q?h+3CLImrzctzlvzzB9y1wc8H6aOpjMH3MabSDEMRlCsX+eQnZDNX5ksiRX?=
 =?iso-8859-1?Q?pGoG3CqTEOrtVfz3hGA07wz2ou4uN/LwVvN59pOCOzyloA/DIx3428kfNz?=
 =?iso-8859-1?Q?B/mqT7qUtmOyXvQmLvdLGNkt2ZEYEkPFHR0pf1SZr1AXDSbqtVwl6kNJ2S?=
 =?iso-8859-1?Q?x+jloE1ecCrTSM4sK5HisHSajGc4PrHvJ1akVqzUsGSn7WbwfPocolQ6n7?=
 =?iso-8859-1?Q?O1rb7B9aDeSCikQo6J7n6q9YNfFLMDT+G3LRwNi2Map7O5f7mLpNVDansC?=
 =?iso-8859-1?Q?r5/AHK/v5JcfhEeBCxAwt7PWQ5ftLKuxBlp1hUR1P8A2UhdVBCtyQgMaF8?=
 =?iso-8859-1?Q?3oeVimKAapxBX1n9o6/8BwFq0Z3ZC1c3HiDXL/gN4N6VR3+1hAQ+zAyNYk?=
 =?iso-8859-1?Q?IPUpqNdJSCOTb1AumJFPg27NqJIlHmfgtSSBJg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?w9ThW0DQFXdewNsz81+qBUlchYG2ebUouOaOp7A3dC/VhQWgasH4INLtpM?=
 =?iso-8859-1?Q?URHpYtU2QmGHtqyfD+OqvA+9F9jx+ln2X4p3mOX1QEmsNLU6YfhTdA8er4?=
 =?iso-8859-1?Q?rn3YVVUWC8UJuS3tTYHuMaFtbeLFxfd+cCgoxnNQM86/ekuzTtdWEQSwrZ?=
 =?iso-8859-1?Q?ZIX5W0Aw20i8LV7gM+OwC+T4UGsNeBBLEqyJ8xdI8/8zdKRv2HOxgxxHQG?=
 =?iso-8859-1?Q?jgFpV+AFvtzYcUzwUD/+cdzbwcuuaWOIH9poaOlbMJ6kQtWQ/JL3ZUc5QX?=
 =?iso-8859-1?Q?/iyUgDg0SrGmnTHYGYcQqMX7zyiJhJNfTmvrypb6FIv/7jxQHFNC32TCtO?=
 =?iso-8859-1?Q?Z5VW/sETGPNiQThKPOTTUWtoIFdEfGjA4tuGFew0bRKPtsax1ACF46fhES?=
 =?iso-8859-1?Q?GLJG+wAyfXeD9wgJtX4lEP5RMLggnEnbeqkckeUVINHprXPKgyvSFEppNF?=
 =?iso-8859-1?Q?AIhz3fYumVPdv6QtfCqO1fETbHnZlMlb0cskyZRA9MNGSVPxCbWCl5NtKt?=
 =?iso-8859-1?Q?pDK6gPBnYcXWgXZrhZOWVzKxS3RSA3BHq06Dz9uvB6aN6bCmVQndb1mNnu?=
 =?iso-8859-1?Q?nlqNtkVjSrsYlakoC2jqn2xijRYLb6ASnGB6VYjDrnx9Zo3hYlFZVUk7Kl?=
 =?iso-8859-1?Q?ObvQuC5jnsKVlgjnsYmDF/Ux2OkCjZCqVmZmshFf+2R7sKXPN//mi+aAbM?=
 =?iso-8859-1?Q?KkiBp9XC6cVNc2+LWv8hA2Xfr5cVHLkEu8NYdYrAljTwWJnlnwjBHCg/sJ?=
 =?iso-8859-1?Q?tQwbPbSD+pT0EXLrbV2T3LdnMWY+rNgR3SEEI5xHRzxKIY3YHKKLF3IYb6?=
 =?iso-8859-1?Q?WUowSxv5z59DSoiJolfGg9ul5UlGMNS/ZiyzS8dGLhcOKHg7875MKEwOW0?=
 =?iso-8859-1?Q?YJd45qDKrnROKf9HEy6+HxwTIvkkQZ2C/2TC0lpYtSYggBoXaaEp12N3vs?=
 =?iso-8859-1?Q?tlp0DF6rREe88VxtTdECC28APxC84Ow2wKBYsly3fltgkKGt8Vj+m36Erw?=
 =?iso-8859-1?Q?Tgb8BMeJGKdDl6YUoAbCFGGChdLjEYetrlcn75FSQu3MBqLW/daR2EnNCr?=
 =?iso-8859-1?Q?Ju10xTWHTy8hkDVUNbt6VO2Aapg6LwAnhYRmFsnL9Vnj7ITQvEqaiUtcVK?=
 =?iso-8859-1?Q?k/iKWAwfSK03ogCWRy1Gg+DdyfZxySZaIjGiVZ96PnGbpyL7htKA/7HphH?=
 =?iso-8859-1?Q?MsYkp6q9yqH4zlRAcRvgv06V5VSvSDL1CZq5A5cfyXaAs64DYHbyBqWIOt?=
 =?iso-8859-1?Q?6ram0Wee89GsiWg3BCvmqF+4L5BoOTuhoP9x+4prF5ctkvP7YCobOUE9On?=
 =?iso-8859-1?Q?3QYwQA9cDjMz61u5yMkPIg4AZypgsmoenf4exRW7/aFIKRyzfoXFcaoERy?=
 =?iso-8859-1?Q?x0mUOe8hqnokP1vEwx0C5li1SWKfMDaF3B+vPn6tLceOan2ZCLpUlDffQN?=
 =?iso-8859-1?Q?IXJIHxBbrPCKRkSNtZ1tTFaWF8u5ijc+6itd4hYumh9x1SxlF3sl6c3VXS?=
 =?iso-8859-1?Q?i9tMjY4gNgMDDNpn2fNnveKGYm3HcZju8R+LkxnCwooVuh+8GwU23hUijz?=
 =?iso-8859-1?Q?DkoAr1u2O9M4AxNBuz9UmmTnrZ9ABQKzx81Z43ekEgi2WUHjakTzfKv+Rf?=
 =?iso-8859-1?Q?qavLWy00vbnDbg9++QhOr5+zu+XQ6bt6afhvIbHh3IO3fcTAYu8BEOlzpW?=
 =?iso-8859-1?Q?5NB9OqKiqOD7MZPSi0IeX1IrB9zBL9Sfsqf9uYoh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef9957af-7a06-47b5-2413-08ddc46b8b85
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 13:20:34.5781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kY1yQmIZxmzuiG9yISLJMf1y5E8GkxpBcb5gEd0shpzUDHqZ+mIJjIwC7w6TlhkY8Y2k0F7DU7dPkN+dXGZzRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4816
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 10, 2025 at 11:17:12PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On g4x we currently use the 96MHz non-SSC refclk, which can't actually
> generate an exact 2.7 Gbps link rate. In practice we end up with 2.688
> Gbps which seems to be close enough to actually work, but link training
> is currently failing due to miscalculating the DP_LINK_BW value (we
> calcualte it directly from port_clock which reflects the actual PLL
> outpout frequency).
> 
> Ideas how to fix this:
> - nudge port_clock back up to 270000 during PLL computation/readout
> - track port_clock and the nominal link rate separately so they might
>   differ a bit
> - switch to the 100MHz refclk, but that one should be SSC so perhaps
>   not something we want
> 
> While we ponder about a better solution apply some band aid to the
> immediate issue of miscalculated DP_LINK_BW value. With this
> I can again use 2.7 Gbps link rate on g4x.
> 
> Cc: stable@vger.kernel.org
> Fixes: 665a7b04092c ("drm/i915: Feed the DPLL output freq back into crtc_state")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

IIUC, port_clock for g4x is ref * m / n / p, where for DP the fixed
ref=96000 and m/n/p values from g4x_dpll are used.

Ftr, m = 135, n = 6, p = 8 would give port_clock = 270000, but there's
no intel_limit for DP, so can't know if these params are within range.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..7976fec88606 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1606,6 +1606,12 @@ int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	/* FIXME g4x can't generate an exact 2.7GHz with the 96MHz non-SSC refclk */
> +	if (display->platform.g4x && port_clock == 268800)
> +		port_clock = 270000;
> +
>  	/* eDP 1.4 rate select method. */
>  	if (intel_dp->use_rate_select) {
>  		*link_bw = 0;
> -- 
> 2.49.0
> 
