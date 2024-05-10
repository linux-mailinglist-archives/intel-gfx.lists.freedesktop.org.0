Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228128C1C36
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F7710E30D;
	Fri, 10 May 2024 01:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CzaJRMvT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0982F10E30D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305814; x=1746841814;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tSQ24+2s+bcWs2If73ikF2i8itYIv0A5lj60a+ymbDU=;
 b=CzaJRMvTYuWCnjLmWGHRtlGkM05ljJz6TALHoTmqsGIYBAASNp/jOyvZ
 0tY5/7b/sLtlaorAIopA2rv9l35wKCt7qucyxh7TVGMSn+10TjkWEhh2Y
 70Gxex9kqmYb5uW51NF847/7L98YqzyE5bMMUet/zit+VkrRl2rwCGDXA
 iFcjywZAl04wCOw6pL92m2XUEE1oemI7EY+4FGqMcO0NaG6fO5/rgEoQj
 x7tGJikvk6xkUfPdiafV2NkUZfUb0TATLz0Lamnq+MVGln+gx5qvQz/D9
 mo8FwZktkXAuQJmYU+dReKa8skrmgpL9saHg7x7ThhG9ZYQve4OJArgHd w==;
X-CSE-ConnectionGUID: FBDKS9jAStO1UhlW59l0Pg==
X-CSE-MsgGUID: +p9lYojPRkyUQjC566KjUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11395029"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11395029"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:50:14 -0700
X-CSE-ConnectionGUID: lufBBTPcT1iqSG89/XgKEg==
X-CSE-MsgGUID: 23qXKKzkQyqB1eDEW5sgkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="60302807"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:50:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:50:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:50:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:50:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:50:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DqD8M/dPFdnJkFrgGZEkhrzEBDWgMyPPTcqyl+FN2WtTBg6zrL9xJFNSmC5VdReqnuIR3iyz/LTZO7fciVGFjX2XgNmfDIwQfoYHqZhX4dMeD+QjBUlzdmUg+dOVoM9ZdAWeD/l8kQaKhjaEoWNl2eQiAqiLZbdplyCRQacbQzgGNy8JaspRQ9AX6tmRtIxziORiT/vKx6qDmZ2liqtzG8+GXKKHLcI1aDtkQ7wP9nxpInSJ0RtYsEfHyE9XiTg5m73dE3ggi9141cNgVXt46djRlBLq15Vn+1JxU8OMa2wwaXwhjBmNMOUs6C+pPrkBrLn7yP3AfDbeaEl/zGE6lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZzbnKG1ry7oN62BolCBXWW8U+JUbeZtRJKUiaRmklKs=;
 b=GRi3ZwFq3Wc0hhhGw+vh25G1+1rQ2LO+2gEUW9G9CEc51yb9KtvSdpIzXBf3dRU5O1q5FrbGwllf+n2BG1c7WnT06HtUIsmbwqO6sF217dzpAldYQZi5v0HwupLKTmR1ppInBwVc5ZPLxAx/xAFm7XX1HT8PBQIDSmXaQMtXbyk8iZCw5nBzULy0Iu8SV7lBn0y8OepD/m6Rucx4GC4vgrNEUpazTbK8ZQSq6CcaiuckqbLyee2flFGsZtt1e+8enjPfz+ZO32s7b+aBrsNQDwndshKZs5Y6POiZwODwGyQaI8zRjBqUKAzKU1N0LxY4w+sXZm4DNUKWeLoTCuuSgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:50:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:50:10 +0000
Date: Thu, 9 May 2024 21:50:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_STATUS
Message-ID: <Zj19Tv9RGS4AV51T@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <57285c891b10d4827423c20563f2b4a2632e65c1.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <57285c891b10d4827423c20563f2b4a2632e65c1.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:303:8f::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d6da2f6-2aff-495f-dd20-08dc7093868c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6jM4CDNdAnm+s6BR2k8NH2Q/WAlSz+4mszrJvKHmOBzZDrhy7sM+Su948Qvz?=
 =?us-ascii?Q?pXjM9HffHhFzo4WAFn4huK7Thi5udc9Z3pIep4zhNSywFwBKo9GzipEr5bu9?=
 =?us-ascii?Q?vXEmRuCJJgNFisphH03WyQiAtv7x2nZ2s/ZDZqSpXRbuNkywJcbewZLsNl0z?=
 =?us-ascii?Q?G7WVM3SNIYHuNb/b/jXRCDpXjpxt77bQdhO9omXHBDrlF+oVUwn4WscBBjKH?=
 =?us-ascii?Q?EPo6nUECcinJbyQoFvm16SU6G/XnW/gW0VNlWDU13iyAIWkZ7soydD7M7YAn?=
 =?us-ascii?Q?4vaeGSYN4YeooX16z1SAPyDnlZ81Km21A5vSzsfG7nkYC3p37pBF1fi/G9YG?=
 =?us-ascii?Q?MVGi8ianXJVjKQoyphFIfzb4rH+4GfruZeONFAbQiEtGlzaoDoa24zWEZFew?=
 =?us-ascii?Q?zLWMI9tErbRSvrRWBRFScql7p5U8oZamjyPNSsMlFiwfWlJRjfI9frFpkcTY?=
 =?us-ascii?Q?6dCeWtKJrR7wdeAXpe49DfdZ5hzjJ/ygHpzqmHrjYy4/QUf0r/zBHdsQ9aoQ?=
 =?us-ascii?Q?txPP7R2osJtf89AhtSx9Pr9I4hWh5m8vp6T9onDqZCliCuXgeH7DlLSFAsqp?=
 =?us-ascii?Q?jlUZVPOUV/QB0VMGyZHhg348U7orkLes2vM5W8Q1KPEuVh6JFuC11+yoPAl4?=
 =?us-ascii?Q?ba1kqRElBUTejpjzIil7Du8CDeiHVX9eG8Gzdt5OkuBNAOc1Xik9NpJC5yFJ?=
 =?us-ascii?Q?ZpPCiFSv8Y/5+PvM2RpS3FL3aZ4i7oY7aViPhARUK0P+x4MNz0VwYJCFeL/O?=
 =?us-ascii?Q?0Yz6YZn9RfTGeOmW7yyNlT96wJH0+ceXsZJHYNuJCPzKxZ7MUwZ8s+GlMzg1?=
 =?us-ascii?Q?uHBETwsUs/C0i/q19lE42amUyjAwog1YMYpthWggBEkQDQPmSYlSmgdYEU8X?=
 =?us-ascii?Q?Ybenb4gPYe8D0Lb6s6wMXutzVPHZ6zCyy+aPtD1UWeJtqIvYEabNvOTcNIH8?=
 =?us-ascii?Q?iZYLaktpLyaRA39gB/wz9Nb2AxFaMRZAcGCWjNsClJCCc2O3GJMctM2j78PB?=
 =?us-ascii?Q?mioH/6c19S0GcmmBz5u5Bnh7HutJXORxxxxX6Sby1E+h1tqwABOJQ/kxAiIi?=
 =?us-ascii?Q?ITBRMM8+cluioBmgIAsRI1Bm3MG0wyJAW+uVm4sAgBs0rlOvBiUvg1a+xhC5?=
 =?us-ascii?Q?SJeax7tTEtd0XYqJd3dV749TqHoHtcwkZ9bPz9ZGeIdUthEX1nHmorKJnNs5?=
 =?us-ascii?Q?UYDCxooa9CMykepjeWWbRQLsteKtvzgr0wZEqYyPpYKw6cP07uJCAHk6U+SB?=
 =?us-ascii?Q?HHuTXKwf2vKAx/hty+MMlToh6lV43+jbTU9F2Cc1Gg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LeWeAL7QWk8cRFOrYz6ms6rIEIBsNZdddsZqBtHAOqXzhXwi6gENyCUn3oyv?=
 =?us-ascii?Q?KO6IcTeVw3mRBb54AgU5+H6oEx+b0DhKPX4wMTpN60VeFW5ByTzZHbbRjtKo?=
 =?us-ascii?Q?5pp9+gi2zKT32lh+RX8jiiXCqnopt0facQOc3MUr5wTPpC6OEnorwXPgFgE8?=
 =?us-ascii?Q?heLx+ezoS0L2CbixfZOE82aNl+mW/pYNFwKYbSWyZwMURTxfojmEf3YCRZ6l?=
 =?us-ascii?Q?GFt8x6H8S6Hk52/o3LrOih7kQ3TE0IR4i3rQ4C/sYtz+LFb3+hIP2yGkMatj?=
 =?us-ascii?Q?CypnSN7yeytIg+B19MqO222nFxKySlZCMWhICJ0FuxaeZwRjZ69yuSJHpK8r?=
 =?us-ascii?Q?sra+C6vmqb118G2P0rOMxdzf+zhcMv4t/ltRwAaPx0gDa2XwgMp83RV+9S9i?=
 =?us-ascii?Q?97NqKVqFOQ5hIfXSCv1wWkeW56mv95j8i4V5IBnhlMLnxXRWmne8BuU7azX3?=
 =?us-ascii?Q?TqhAlwl98ZyqueGrDHW98faImjxEtmw1onB2tFHkjm6mXC+KhC5U79nZGtC0?=
 =?us-ascii?Q?mPSfpXx4+ZUJSiSutdpNyIU751rUKEX0/zaeneFZkDaxi/Ka1zd843IQ7A7D?=
 =?us-ascii?Q?qpr+1LaFpFU/JWOBcq5SqMzETGHESr5AGqB4Q6v7Me1wFjv4nDi2OOSC4pzF?=
 =?us-ascii?Q?b7q/wN1U22yN2k9fq2MIlpF0nVTO91IiWS5oUXtkkoXsup3clW0hCDgQGZpc?=
 =?us-ascii?Q?TxAzOy8aBa2s4I+llGwoHny15BWdGUrooQ02sO/Xot3CbBRZxpXvDYMQlWzN?=
 =?us-ascii?Q?T7rr3cmjW1UYHDDDZ62+DAhZgG5W193d21/UaubyVnMpZVNQ8H+rbgx/bayh?=
 =?us-ascii?Q?6JmkkqIwFDFIKcX3s9e6LwX9rNkac8033ngwaYdK+F+aWXansdB5wAjdWwpm?=
 =?us-ascii?Q?XXDxX+wwv9HCVt1X1e50vVrrwfDifkInNn0BypADcioVkdh27XKI+Hvuj4pa?=
 =?us-ascii?Q?kf30R7It8xrEFO0RVAkRTov3PjomhFsuFiJL3rJk8azUm+c/YK3lE22SP2RP?=
 =?us-ascii?Q?vJKhPa3LDT5iezsblFV6OQ35gcFRPg0Qc4rNT3MSPdoZRF21qlms3j1cTUf6?=
 =?us-ascii?Q?E3v6z8TIWrLT3NHw3xdjsVINXGprDrNWYA8rKaPa8ZfQdRrmxi2ltttzpRdn?=
 =?us-ascii?Q?ifppjF8HD6kvib6fyQzb3ogW8hTNH2bhomIXRLLXUg8DCTp4yrU47Bf5rx5n?=
 =?us-ascii?Q?H061kPSClFFONCOITYYyKKX61gxfNwpToXOieZC3VIQIKDDQxvyvyp3IcATS?=
 =?us-ascii?Q?rWoPP4/0JNUBql+sTMaBv/8lE8YQKQoRR5GCSSJRqafsfx40xPBjg4JIRr+Y?=
 =?us-ascii?Q?E/8X43MXqpMdTjKtJEO56wyDReQZFAvcZn99c8SeqqQGSWw6tvqYDKaKn3Kd?=
 =?us-ascii?Q?WPtgBpC7YqIWnmIL1IQvrurDB1IO5gWrbDCeMlgsYiqvQaf+JMl8AqB4fSOe?=
 =?us-ascii?Q?p9Ok0uSJh8DOqhNhBvsyKFPGn4hRs3Vp/UXpGEqhqYhc8HpPR7hSwTIQVaXc?=
 =?us-ascii?Q?tkWaHT1Ci8VQscRbhA4tbbqPvKgjkKSnaIcsgx20dWon9ZQNJTS3qObfjRu6?=
 =?us-ascii?Q?DTE50JVYGZZEUMCH/H9ECWTDy3AkQbSKyh2WtaBMlqhDtY9vTyZ45lrfbxQC?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d6da2f6-2aff-495f-dd20-08dc7093868c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:50:10.1486 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +x09RvIA8CWngABekFmGUq0dQNdN06iSkZKwAEWh+JFtkA1psTVVacrmK06enFGflBXeN7y8Ew6QahP6zo/Gvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:51PM +0300, Jani Nikula wrote:
61;7600;1c> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_STATUS register macro.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index fd0f0794f6dc..05cbd6e4fc60 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -282,7 +282,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
>  		       trans_vrr_ctl(old_crtc_state));
> -	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
> +	intel_de_wait_for_clear(dev_priv,
> +				TRANS_VRR_STATUS(dev_priv, cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9739ef525e13..df43b9eb5374 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1271,7 +1271,7 @@
>  #define _TRANS_VRR_STATUS_B		0x6142C
>  #define _TRANS_VRR_STATUS_C		0x6242C
>  #define _TRANS_VRR_STATUS_D		0x6342C
> -#define TRANS_VRR_STATUS(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
> +#define TRANS_VRR_STATUS(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
>  #define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
>  #define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
>  #define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
> -- 
> 2.39.2
> 
