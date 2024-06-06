Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9488FF1B2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDDFA10E9F3;
	Thu,  6 Jun 2024 16:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YsbeQOOj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83DFD10E9F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690166; x=1749226166;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+2hqDedFLIUOBBIdxhAqbwA+6bBAGM9VJnFb89eS0t4=;
 b=YsbeQOOjCKllwGdl/1VcuC15ljf6xX7bMly57GQl5/1ROoZ+9EfTgZwd
 RXjTLuuBzuoKLVA9S7bHHbU53TMq/18VR5F6NrgTOzpcEhrbuQ7dHne5N
 3mMpjGsPKnLgXwxDak4cJ/Xb7iW4aMmyf5uesYGU87iXCS35mP4vEXD22
 hOo1gKgNog9upu6LiT662JcuhN2lafDwqH9nuk3oV8Ntsqux8yoAqIl2+
 w6Phm0sw6f3m8qLYYDe4YGUyrYS0kUpy2pn20G1nDakDAd/ebO8kgpNya
 oVgNChGvyNBRoEunW6JEkBsaXgt0NRc+CvSYnRNqQvydfMNWAlKMZOILk w==;
X-CSE-ConnectionGUID: sNXQcbMpTjWMk6iAvDunEQ==
X-CSE-MsgGUID: Jjl9IBh/SxG24p12QQxrNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14507304"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14507304"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:08:24 -0700
X-CSE-ConnectionGUID: cO7gxdIWTSWytsYwX+x2rg==
X-CSE-MsgGUID: r4BZFRtdTnyitDWCCJD8ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42447302"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:08:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:08:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MsDE6WQvQzYZsLQj1Y1A2cg9rxbkytvzuP8Cx6DuuHlst/cGM/Ds22lNrHPwaHUZqet1SzP8ZJQatsl9OViYcrPQB8y2DeDjxkuu79dwz9YGdR9xRJgTjvgclYp6zsMifUwe6vAVoDSJ0var08ZKm32MwGcSBzA7EMPm0CfSprIfFkd70dD8KStTfNZu7uO4RKua8d7n+rdUPY6b5UPwC/sJPunBESJACDiej/gSig+eW6vvC5iVIHlaagNiFU1spEA2Fk4CalNU0VDZvuBvjG/vGp9ld0FB19zu9UFaUh7OXCgZnz2hKfIfhe3NlpYLmndZbRJGOy3Wj+2v34d52g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xED2O3LBFyJalKoBN4q1LGNO9Ezyo5cCCtnGsSm1sLM=;
 b=eEvS+UQ3sH5L1UlIRUANTK0zdHsVwGWHjoiGyo6KDD6CZXKU1BAyGyi2Nl9bY9LNirveqHVCGbSyKVCjhUJ8HBphYSJLTGr1nKhD2ixipkUeC10Ou+uAIZAh1WY++dGB/nlhESJ8d6Zq9SOQ7D+lGkw0r1ceOjhH7fj1nl3SlEX4oRdjzPJF8Y9ZAiKNOZhTV/rKj1x57U7eCCAvP8Ssg9YBEMR7KcV4qwMVKzm6i5UtPlWiCOoDtCSjX7aa4MMOwSkphiYnstNFtb65zD+AXjOQYLT9Tx9f80wJk8pj3MbGsYC9YpBPFjL7pn05t6ttujaxrkcrvWXntO1EkU1CYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:08:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:08:19 +0000
Date: Thu, 6 Jun 2024 12:08:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 43/65] drm/i915: pass dev_priv explicitly to _DSPBSTRIDE
Message-ID: <ZmHe8FAlb_AOR3lV@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <f9232eb9c62e3daeb88f69374385e59e6395310d.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f9232eb9c62e3daeb88f69374385e59e6395310d.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0035.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::48) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: f1e67e71-8991-499a-ff86-08dc8642e1d2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WuE3wm9XFa7Fv75JyeLVyi/CHxITClIE7OeH5noi9iUGz6zagAra+fRKnFOE?=
 =?us-ascii?Q?kPGC5JwGI4FUc+/nG5C6DeNQyK1IF/iI0vqVE6tP3BXoXVHJJqX77Warxfyd?=
 =?us-ascii?Q?UA2jdIjflliszdAQh/1BJr4Sh9qFeM/mNuQPR/MIBqmpSQcyXvpd3GKWHSYM?=
 =?us-ascii?Q?aW3Tw/pANFx10L9UUGDSIuXmDNzIBfsbNM4GN9X7jieZ3P7KUAfcRs3iLexI?=
 =?us-ascii?Q?l49T5ybKGPOHFgW72WvNr+XE4klgFVet1zyqxdpDj98R6tt/qcni1lphLPsC?=
 =?us-ascii?Q?SEXKPFl4RsZzDIRCIWA4qq87bWOVJqOVJbnwWNuDZcumHAUqmJg+9BJRac+p?=
 =?us-ascii?Q?lt6+52usMh8moOpVH2sUgUU2YzrAK8QVZdNSn2U5zML4FY/IsxMCbowm87ev?=
 =?us-ascii?Q?p8jnDFezQzdunMOxzkDdCZbIQ3Dl4WGwEcxWtQCXzwRqy2yhYjOBO92t+P/V?=
 =?us-ascii?Q?hDy4Y/QR6OEiO2S6xSGugPW1SSYI2O7KtGDw+HWkDnKRc42uZnlonrcjAmuQ?=
 =?us-ascii?Q?G7rDgk4bC4Fdfim67mHUH3Se5a0D/Pa7cqdU/2vG2aANvk0TNM4tWgVgd2XZ?=
 =?us-ascii?Q?i3AOH+KVWCWSygM+/I01XlpVmZNsKBOKa9jMkgD2mUAzhfU5DHJhvyN6uTqR?=
 =?us-ascii?Q?DyduUcjjAo5nY6DAFJUe8ETDpoqw4JwEQ07NXUpnOR2O28VeV96r2CFG8it0?=
 =?us-ascii?Q?DkKcVr5dIumijAhSUdkd6HYWzcm1ymnw1bK1R0qRS8qWvCSWPYoiW5Ou36Hw?=
 =?us-ascii?Q?Qg6MLlLh5+Hi85u577DGZjkHvTrHU5qITSKT2JPCGlsiB+6gFvqfj0naRTMh?=
 =?us-ascii?Q?tPRGaVJ9DMicHRCztgrGKQCFEr9X2dqUBn3/fsnVY0q/t/MkQaDqJuFz5WVQ?=
 =?us-ascii?Q?DE2RhAKdcNRXiy+nbrgFgl9LAJneW4QIUi+P6IuOTz08obDT1mkklyRplNno?=
 =?us-ascii?Q?K6j+jI7c5fCN3HGbCPNO6OJJuHYLdHXWIrQQ77dcC5x2ZwEcjWU+OmNP3sa6?=
 =?us-ascii?Q?iC2n3UoWf3UUcr6CRxZYTICnTUoxvnCQwFFuUrfvD8v1PcEvFjXe5ecPVvbQ?=
 =?us-ascii?Q?ESENTxiLL1F72xs0QIc0BAcZax+y7QQWZ1YtYMuJnm6/NR3rmooMP9W8MAno?=
 =?us-ascii?Q?cAPglIg1le9pPkt7RAVHklkatplIxy7XUEBmltIllctb2VAxqEt2btFt3/O2?=
 =?us-ascii?Q?0/SWMSvl4uwxzmNdcxmoeoyg9+PHSORaRTONTMYeAZ0q18tst/9I2y4cM0cS?=
 =?us-ascii?Q?UtHIXCfvxeJmvpIHgbbLpYU5X/ixyQBf+OJLNvHX4l7C+42S2nnafSUHl8xq?=
 =?us-ascii?Q?zc0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oUJzwha8Un3DupZULYrD/RjJE0Q8SNJ+WRASEypYtw5zCumQmkt8BqyuEzw3?=
 =?us-ascii?Q?JnnX+d8xwDGv+FhVUjeQuAKzrg88YFNk3fKBDIPGh1lCiAVGvMBba2056Nuf?=
 =?us-ascii?Q?AlyfndMBrsWrKUGYAfffXmvVfJ+H+y2S0VEWNn4mNGsJ6d0t08tc+yU4YWFo?=
 =?us-ascii?Q?8sz3ILvXZvijV8WCGixGJSY+uUZ9/VL8EbA7koX/CzWAQsO8NuFxLmMDv86n?=
 =?us-ascii?Q?7pmMAzI+pU2pqlurozDs0gIZF5XMeb1Qa/Px2e1V9G1P9ApTwGp6rnTJKq4E?=
 =?us-ascii?Q?M6nKwSwcA4v3R/VD0dOV1WhEMMl/DNGJjXjgLjhhMUzRRc3LizU6Teqgjl76?=
 =?us-ascii?Q?41viuYzfoQFSxjZUGEU9P6pMD8dyGNCyyY3Ty665gxXbhzRKEu3qweflNVOp?=
 =?us-ascii?Q?mIrCYUooDsrH3ZTktt/YWttPVvZdcuKDmyZbhyOAPupYVshawfeFRpCPNDUH?=
 =?us-ascii?Q?Pa00l0Xf6nCxy8IwyRAGMhRIXEdmqZbkY9coZJuXOMuO24Mjmq7i5Sjc1ors?=
 =?us-ascii?Q?oINfTxJPiEEmArjSM25x/RPTo9GqfrM3dp55+J2HltGbM5YATNmNiG+vYlG8?=
 =?us-ascii?Q?0nKDtvWBS4OvNalhuFdT39fp1/BsOOJuz1zZEMFTUW1QAWptKN+RpLZqWp4Z?=
 =?us-ascii?Q?HRMy86P7yFtRKt4KGunh1FPvV5zr3z/b2fQ0JQbPHT2fyvjL87BJbN8QE71C?=
 =?us-ascii?Q?oUYq+7KrZyuSLGkekku0KDZ7Orc1i0/gkNZj+Abx1s79wHYbXWke/Tulke9k?=
 =?us-ascii?Q?ampNou7/q5/EYCXYEGqjyCXKz1Rg7qtB0uVrNa19mr+xwZoEH0bAYW9eZaDi?=
 =?us-ascii?Q?48yg7Brc2RjPTOAtWPygiJpb8Q+3R72lP9rZVtSLofDCZ33/kjBC6rjiP4AE?=
 =?us-ascii?Q?vgNg9eOyHuJeE1+0W4TksBljDKYOv+tjmEe9GL1+vE3d2vCM+t2t0n0IlKyv?=
 =?us-ascii?Q?FEKAj7D5kJJ1hl4r87rcSVaVAI4422cjkHoNYC+TsXzGIcFqaHl7Yn0U9sHE?=
 =?us-ascii?Q?d136rzA5DJKRojL4IsIgJlk6TaRoW9o7WslgS3j+j1GQpKXlhAwsIkAe4gtB?=
 =?us-ascii?Q?oGNovsdCEIu10dyVvKz2AF46z9/hJq1NLogon/MAP1L8v4D3m8DqjEdhcZiV?=
 =?us-ascii?Q?Q9Ll44O6CYNxhDqsBT61rhE4IVWRZkvfay6jdVlTvqF3iWAqHC/EnVwcLDLT?=
 =?us-ascii?Q?nWsc8Q1uxk/Y/+sHyuVq8UvJdfrXcce7oL69reXNFKvFzkbURVwo/dA5KbFA?=
 =?us-ascii?Q?Aw1Az6H2Sf1e/Zzqa/88Ug8LIX0IG6QzMk1VWjIxLn9ja8g1ECvhpj1YY4gw?=
 =?us-ascii?Q?GeBI8egaH6lhe7T9U3KkfHsCz/h2ymyznIY0jQhZcqkyNulNDa0otr2/8aAX?=
 =?us-ascii?Q?MUbhLpXD7F/ed6TCVfbCQP0JSuM+leXr6O15CCxIkgIFdUdzqswzycOvCvfz?=
 =?us-ascii?Q?So8HphL7EMU9qrY2UXajauoHxrRBWAcIHe/h3Fh5y7xCt6NBWT4dRnPoSFaX?=
 =?us-ascii?Q?CDm/x22XN/wc6l1eIA+95Od8x30kvZI3lCC+Qfod0AQxPz3UPzNoPnQ3i/vK?=
 =?us-ascii?Q?IffYwCf2f5h+ZZMxuQelnAbeYrqYxgPuG23iH+dT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1e67e71-8991-499a-ff86-08dc8642e1d2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:08:19.6146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RqeylhLRRUN2J14UjfGiBv4jyT+zxEaif7vza5V4qX4yAOtgnZgtegfJtt9SKfUeF/D8ESadXwg2tfJt3URhVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:26:01PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBSTRIDE register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index bcaa7c5b0c40..7fd2d5e07b48 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2310,7 +2310,7 @@
>  #define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
>  #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
>  #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
> -#define _DSPBSTRIDE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
> +#define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
>  #define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
>  #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
> -- 
> 2.39.2
> 
