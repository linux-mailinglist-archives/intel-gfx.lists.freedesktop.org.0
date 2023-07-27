Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B227E765BDA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 21:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6921110E5E9;
	Thu, 27 Jul 2023 19:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E2210E5E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 19:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690484724; x=1722020724;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BMvC+MhRIhnR2LGWfMyfAm0EbI1jPgGr35KS6slcln4=;
 b=cnTwadKH7faT0vk+JQJAjByY1VReuvxO0F5HFDMejc1MxZylorUzX129
 /qQtFMKnui0NZAUK4+OWpHXkiIYed+uw/pE7+/Wn39pIktkRFQWbe6aHq
 /+/0MYW+rbzCA3bL9R//+atQ+m7331HGJJx7JPAtPuy/F8F7d/dWUSBcJ
 JJ1bMXZJl57JrNpeWVMJAsgGmBMlvdb9Z+nCyOZdfk0G7cqYqUbkJ4xoJ
 QwbNaxcUaBd+KCJtmTs0lHH4mcSIeDx4xPnIpb0vEJnAVTFTIPX0fMUnu
 7bJnPRjyPWiIPdMIeBFsOTyFno6md19Kmpyr8TqYmNYvLnjssGZBnkdrv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="348017978"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="348017978"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 12:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="817216243"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="817216243"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jul 2023 12:05:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 12:05:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 12:05:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 12:05:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 12:05:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dS7kR4pMe7+MjXmMJdwjG4R1x4ANqzDbndfOFC4/siA6lwEV2jhfkfdkj36vWiaYWGGaLzLn2aqAt7HVwixTnuLNZ9C5d+VDL8ZxpLt+tAGIT/mMpZ8RbYm8a7WMCNt+nePiPHN4xiRxvbCgbGSNeMAW1DjXVDjXIi5CgJV1LOUFyr8OVPnTV83Pl5eXA5Cyi6cqnn6jHhziyfBVPqOlWa1EJCYpFyysWSUcVeT0rR/JfWrbj/QvCqGyYWVtWtkm+T+bSWHvmrb3ZWFuXIl27+16AbKP6fFSMonG6bHdR7XimRdZMBo/cTj+NeCv3MF6yM8XoWnjxb1gOnB4Ax6iIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JlmSOKOXle04G4OFQd7eUE+L+kTWqtn6BbWsHEGr1qk=;
 b=GRGqiXIe8qOp7Q6UtdAH+MLy6/coBUJmxHyc7cW1KN21NLgExDfO1jutG0ySi0Mdl3jA6g/psTSAHy0Txh1raB11iDoaTDBBIlz7t+rx9eU4EBdEkY3cczuQORZqXF0sCWiBE1BuSp7sqoEsFPliT9JUazzKNtne/u2Dq2H9C9mEplJGCd0IncZLVzHKPuB266kwFHn+x+aYygGNah7HyRuaW8yr1PH8LR0b2a7d3Q6E/pxr6OnQF7BsVEIonFxC9JLF5XIY5e4mPIZ36mhXdFl6UG86MSLr/KZTyPm0ZwokBYG45v23ItGIU7AGxZNtE+Rr4U15z5IszelYglFeRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB8720.namprd11.prod.outlook.com (2603:10b6:8:1aa::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.29; Thu, 27 Jul 2023 19:05:20 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 19:05:20 +0000
Date: Thu, 27 Jul 2023 12:05:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230727190517.GY138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-19-matthew.d.roper@intel.com>
 <srogjsfop3i62swm6uj76pnzred4e26xiixxb5cw3if6jlk3t6@3hiruhl7l7fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <srogjsfop3i62swm6uj76pnzred4e26xiixxb5cw3if6jlk3t6@3hiruhl7l7fi>
X-ClientProxiedBy: SJ0PR13CA0048.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB8720:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b719272-5c80-4701-583b-08db8ed46c1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: teiNHWE4BpZhvdA3H7uUfFbU030msUVLHbm+Fr5mmEwdbJtW6kvF8dDyJ6vZqZkwX7GhdpW0PwBELqyvqipsKdkg5hiXvS2k6uniXWYMwNhrf03+MoRx2t8t6PQA3DDcb7pDEqNw+dF6Bah1f6oRFsqwX4XYz3Zji3r8YxP7dpIEcN2G7jnaVkiiV00cC7u0tT+Trmmi7d5fAckguh6WR0FR4dl/6avU08KrbJ+pjsacvFlRj5FoDalRrCOcZjDRYGoK/ynM8KcQvEGFIJbp2hGUA1JUZmwVPBu+etHkiF7uM2vRV5am6vqFKMk/6WAvkDG/Xw+3KpCYI6xS2n7vjYjbOTYylsVcJPF3nxyHDmJwxO2d9ZKjDMPwXlTnC5E/pnRuesY0szUgrbDpEJOWY0pJjFhrHhrfc8fUhNK0DUZwFeurRsTWPCSA6xVINJsTNRdzFemgbyWv+DkB9UeLQ4tA6wmxT93yTyOGyCMo54BHzD6Mq6k3rbj8DHQJIaqD2Wu6wwVm9dughQjzg6X0qTvP6Xu54tSmuycXIUu4qG/f+5isGy1/rs1hfZOyxe+I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199021)(6512007)(86362001)(6666004)(6486002)(38100700002)(33656002)(83380400001)(186003)(82960400001)(1076003)(6506007)(26005)(66556008)(66476007)(4326008)(6636002)(66946007)(316002)(2906002)(5660300002)(41300700001)(8676002)(8936002)(6862004)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1fznbc6raDQNQaLs43EISRNQ0z6ZJs4PrlUxn+z5+J9tLFI9oNwbGYARRuRH?=
 =?us-ascii?Q?RV6QhRv8YwsR2Zi7wFbtHedODeQ7KNl8VmsTqz9dWwMjc+B23gQ9TrhMDqtX?=
 =?us-ascii?Q?JP8WjlyMztGDs/Q3gAwEDbhI+LsbsUj1+WScLXUWw2Q4+SUOu49DjxHHBG0Q?=
 =?us-ascii?Q?ncnplEZP5m7PI3nFZ2STB7wjyqoZj06VCzZtFpTvSWZaalyO4qMThHJ6Cmho?=
 =?us-ascii?Q?+1Q3X7G6uq/9yuMbfw8mgYlBOh6M5k6SYn8QAXlprLepfIhNLMC+PaqbNeXP?=
 =?us-ascii?Q?rZvzJkmxsBHVC1UwUcCw7GjjKbuOSuqt7H8gCntsip9a0JyZUBH99Y2WQlnY?=
 =?us-ascii?Q?p7pPzRcACGovZQa+8ZLpaSpC+BZsRCE6bQ9rTdDpyGtjX86MogAsEDCisUNq?=
 =?us-ascii?Q?hxTkL9oqdiNDRC59zANpnt8Ha32YcxrTwlFVIkovMXuzgyo2KLUVzD0xbLdE?=
 =?us-ascii?Q?0gGweiYeEOQL02epha9UpdpjPrdB0Q/uLFL7w+I4eTkGb88z19l/8zBCsJtZ?=
 =?us-ascii?Q?9ayaGTpV1O9Lk79ljNkqTRjCBCJR/FeDQBZA3OXkEA5oHx+7G2GRNapSIjhW?=
 =?us-ascii?Q?uhyqmWQsm2EP6WX8gaq8bEGzZ8qG5XwoMMcnfy+dAZvGYMK9A5WgFIhV3wAQ?=
 =?us-ascii?Q?BPtFIeUOvbMpYXy/f9DXnQGy3rYcIj9CAItYxpwcV8/XISmUn8Ppwz67taCf?=
 =?us-ascii?Q?ossGWJ2j9GNC4+crZAiyDaXdgwpRLDUXxmY7J7VpGPQiyeAjC4MtrNv35G0d?=
 =?us-ascii?Q?cqwkVXxjskhOztT6o0i9C86PH03J8YIXY/8+skmOwAnn82Iq0/rDdxwlhW0I?=
 =?us-ascii?Q?rygjqw6fufqLv3R9ycRpLmqU5PKVCY+a438mFHlyUwaQB1vjetSPqG5P3Rot?=
 =?us-ascii?Q?UIHDkEqdf4d1vpokRULXvn88LiqkyMYMzwfEc8HAZnusO+PuBcAMdlmICp17?=
 =?us-ascii?Q?CsRW9rLYtue6HoKBN3xZFIzYytdM/hoksC4M6H2WRaDOhpCvjdVFsWhKuU31?=
 =?us-ascii?Q?lOkVop3mFWH5qaghNatS4f75JpOTYDd2aviUYtJn7/bOBjYngmUmsj9uyx6N?=
 =?us-ascii?Q?ANQjh0VOyTwo0/tOyahfKO9Y07W7Qf1i8VTEP2G5ORwfeg77dGQeiYLViYen?=
 =?us-ascii?Q?pwu3Vv3IVhPNr4Gb1YutPmtm3E/mf5Gutdwx+6WCRDp4kOjMR5X5LjrKcYLT?=
 =?us-ascii?Q?RWT7k8Ukquce/kq4KLPRTG6ZEH73RyUSVPN0rKWpTBF7ISdwiGECUDlo2Ve7?=
 =?us-ascii?Q?TjwmEiLq3S6U1/k/M42SwFtktvEYE4TZiz4nV1boaMn/gChEXV/i69KGp9iu?=
 =?us-ascii?Q?xVmdGmwdyYLUDcZqwW5KKp6boibBsxgh6JRh4XOlwE/WIgonMAwwA9dRk0FV?=
 =?us-ascii?Q?swoOPOFpD7zXaMGWddM/XSC/vcf1h/4H7N7ZdZrkBfb2KxybvuAnQBsbeeHr?=
 =?us-ascii?Q?KJaFwlZ0JQHgYCoTPsDz8vqTn6k07dQ1i+11F8UX0f+sLwc2VyictoRotPJj?=
 =?us-ascii?Q?mcASipLOZQOuYw8hFKQBbF0UzglCEbXDZeg9Zy+J639j+QnxqlhY3fnJ49XD?=
 =?us-ascii?Q?edU9axbzCtorrC99/z5MEO2rEVQ5SJ+Vxr2zowBmiOlMw72LwfHDZZtlufjt?=
 =?us-ascii?Q?gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b719272-5c80-4701-583b-08db8ed46c1a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 19:05:20.4965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xKeT4Rexk8uya6WLl9e+57TwHFTEpUAmp+9Ua1vxnNm2+unnkq7PQLqHHo1yJizklhA5llgM1QYCwhSiiEIrrezlUy2JD9pdEsLgfc75+kY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8720
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/display: Eliminate
 IS_METEORLAKE checks
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

On Thu, Jul 27, 2023 at 03:38:46PM -0300, Lucas De Marchi wrote:
> On Mon, Jul 24, 2023 at 05:13:21PM -0700, Matt Roper wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> 
> for the phy checks what I have locally is:
> 
> > index 1b00ef2c6185..a42b3c4c0ed7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -31,7 +31,7 @@
> > 
> > bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
> > {
> > -	if (IS_METEORLAKE(i915) && (phy < PHY_C))
> > +	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
> 
> 	if (DISPLAY_VER(i915) >= 14 && !IS_DGFX(i915) && (phy < PHY_C))

Why the !IS_DGFX check?  We can assume the PHYs will remain the same for
future platforms in general (at least until a platform shows up and
requires a change), but I don't think there's any reason yet to assume
that only igpu's will inherit the behavior and dgpu's won't.

> 
> > 		return true;
> > 
> > 	return false;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 43cba98f7753..85efd77f491b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1767,7 +1767,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> > 	if (IS_DG2(dev_priv))
> > 		/* DG2's "TC1" output uses a SNPS PHY */
> > 		return false;
> > -	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
> > +	else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
> 
> 	else if (DISPLAY_VER(dev_priv) >= 13 && !IS_DGFX(dev_priv))

Same here.  This is probably fine if we switch the IS_DGFX to IS_DG2 to
exclude the single existing platform that we know doesn't follow this,
but I don't think we should assume the same will be true on future
dgpus.


Matt

> 
> > 		return phy >= PHY_F && phy <= PHY_I;
> > 	else if (IS_TIGERLAKE(dev_priv))
> > 		return phy >= PHY_D && phy <= PHY_I;
> 
> 
> would that be better or do you have something else in mind?
> 
> Lucas De Marchi
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
