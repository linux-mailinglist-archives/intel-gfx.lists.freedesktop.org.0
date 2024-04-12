Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5928A3251
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 17:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60A510F6DF;
	Fri, 12 Apr 2024 15:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTIDfJNR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E4B10F6DA;
 Fri, 12 Apr 2024 15:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712935451; x=1744471451;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=T4g2ft4VuixfDY9s0o1FcOEJt60+XLTncxLlmljXBSc=;
 b=XTIDfJNRfdcfLFvilmlJamta81HSx5h5AOl702fq2irAFvfXzaw0IGBk
 +6HfPaKgiO7xRVPrE0pPG/6o14hdz49EhnXGNj5PwIEDp6rvVxY2iJiuJ
 jrZincv0UAqwOUItS7hD9JcpKhFDADxDr7n3zsFKYvq/EpDzibS4wj1Ln
 Tb6I3QhCgiRPlgKGPJyqR39lKoMQtiFKcC+hfVOGCWoMMo3wY/QNi2j/+
 k7ZwA9Y/khYt7WomsA1k2oJr4pmSNbqvs7uH2+n2nYtv53Y5FxdinKmtp
 CWfYXzFrGuhjjxzMMJT6ZEQ6JCZnNAQ4Tq+qJA5kFB8qiy6+7x23YIb/M g==;
X-CSE-ConnectionGUID: uZNPxF4PSpGu1HxenGA6bA==
X-CSE-MsgGUID: 8frzJAjqQUu3wpeCEEseHQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8240542"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8240542"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:24:11 -0700
X-CSE-ConnectionGUID: +xMOaVS8TtiynxjvaBcH/w==
X-CSE-MsgGUID: 4kGx/krKRtOu0LvBahQY3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="26066121"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 08:24:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 08:24:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 08:24:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 08:24:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 08:24:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KCZb+J8rQIe28x+VGjHlFE8czQAUaHffw1DU11/27gF1M5H6+s2W3OWi5nyTnQBES5IFqf9myFOSaE29gYSIC91BgFwpV6jnlXlvUHU6y53YE4TT6NHh673udkwKd6DrZHs5MtuLNFdvu4y7nv4EDN6jVX42xCNMgKA8uflAtMH6hIE62mf9v3mRWrymIhNXpv3RYVBw65Y9u9CUaSQsIFy57qBymDe7ut0t7a9kavJX0hduaNfk2QlpEZON0iHjoq414QKOmX7ZgNyCl7hbom7e/HcRIQ0VCSNa8PjP/BU+bU7vngs17HhtkcBkZnxrXiKk4pq4Jy3dl1AOTIFidA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/aZX6/l0lRswoRz2Rdte6sYhZHWDE0UetLPew8EY48=;
 b=EppofDPsOvEPBy09EPzgrrppbtCux20WVoPpgdEx/XEvQ982cR3aUcTD0GO+HEJlPfgeNJTQhTTOQh7ueCzwn/dsId0Iusow0y38X/0JZo059VTf58R2qNu9F4c2CVJtNhvLgxwMBkmO9GWyIeF6aEKXXHkNbsZxP5GE1trYJZoXptPMv1UqI9XcCLcG4h6/rEVdRVVu2wzT4rs+L8qqHVdIn7P9bbEZdHh4tcDvnIT2H/iGuYGzgAueELgMTDZ8EZKqDa4tKVbEDifIgHHwj85JREuE9nHjxo/e3fAl0ezpKZDx127gToS/l1CVKr6R/Y7lIjPWmkQZ9J8yhvC2cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7733.namprd11.prod.outlook.com (2603:10b6:8:dc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 12 Apr
 2024 15:24:05 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Fri, 12 Apr 2024
 15:24:05 +0000
Date: Fri, 12 Apr 2024 08:24:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Balasubramani
 Vivekanandan" <balasubramani.vivekanandan@intel.com>
Subject: Re: [v2] drm/i915: Implement Audio WA_14020863754
Message-ID: <20240412152403.GG958162@mdroper-desk1.amr.corp.intel.com>
References: <20240410135046.933254-1-uma.shankar@intel.com>
 <20240411223635.GE6571@mdroper-desk1.amr.corp.intel.com>
 <DM4PR11MB6360A0C3ADA45F47E088D0AEF4042@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM4PR11MB6360A0C3ADA45F47E088D0AEF4042@DM4PR11MB6360.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR02CA0040.namprd02.prod.outlook.com
 (2603:10b6:a03:54::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7733:EE_
X-MS-Office365-Filtering-Correlation-Id: 80954238-157d-47ce-fb37-08dc5b049743
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wtBsIQ9CllLebOPMHpg4EJQCN9ZSyJHu/5EFxg4sERyfG03DwyptrWNNXeebEeUabNctMFtkqbzKPDP1Wl26PNAVYJCPSkmTBaxb9OavvJqLRGmUXM5RhuE8qCzfYUgc0jM978vpQH7FlMfyGe3teFBv3pPg4aB/DhN7/hewV/2LqqivHYy8VWZxbPwY6TUzAQB9D1FugdS8OKItsPphTwE2AUgq3Bk/n6TNnYLm/6NZRD7kDyds22h9eLWBQN/BMKguPYxNbxgTDoZUqn/xwIcjBJevqdpfvDXyA/T/E8Yy/2LC6KxiRVKegBmuLjY0cdQGyEFu7u2jbdXVjkP506wtG3vCYZZQnUY2I8Z6DjCAPzA2zYqSSAC8bLshUgBb6zFBBNzi+S66jL3wnx7B68m/IOgt1Sgy46dQAjtU/jI7PP2a9vZWlYWUeVXHuGmUbj1xdjnMka9JDoROVRVmW0e67H+6J4epkkGcK0TXfv1H6U5tucTn9YgdDirgBKNLtNk7ojc8q8BLBUavLMmD4wCE02S3zcgWzl1VFdxtwcXVGOW0RKoJv/7thAlkM2/FLLQ9+UeeD/Q06ewqE9p3nB6ppBKU6Dp0Wk9A/d3hmnMQBpoY71BGjrlXm3HsMY87nLqcpSAKSm2QUMb9c+A+yy83I0cb1xUyJ2xWBHq2QKs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kPoNn0tEkhCAdMZQz82QOXI2i/tplkulOV0UPR4N65mAYjWxs++3VckV3K1z?=
 =?us-ascii?Q?uDZqpYO88yL3w6tkkVX0saexgwXmq8YnBHgGHIiLjZngaLXzO6wrruE9PL6Q?=
 =?us-ascii?Q?xrGQgJ3f1d02a7/Ali7uYaPwNBFz7wJslnYUeFbBILOkmtgZM6OWlOB1GHw2?=
 =?us-ascii?Q?VPQb4sZWBKWEEdgeAJ+5FpTl0orcg+9ppgYdgZ74bdJmeYrhhE90fUpZnbbU?=
 =?us-ascii?Q?3t6pHUlZQcUiZBRut62JVC5trx9cXBR954Jmmx+QCRT46G3vLUR2Er7TfxBb?=
 =?us-ascii?Q?zx5vUd6L92LmRRR17Nm+6nA4XS/72FsaOdA4uj+aL/c5xD0KTHDFa8jO0Tsm?=
 =?us-ascii?Q?yc+lS+furVm2ePBS2JLRl20uYCCagbA2RclhY02VRwio7TcgBfKYWF8MpL4R?=
 =?us-ascii?Q?d2HMEe9NIMySUHatGRraqfq/vsonsmL9x5fBGHx8Zqg/5vvET0Ti14x1UzDn?=
 =?us-ascii?Q?HdosY1410FtSQnkKAuUiXOY6+UmYqhMfq7ujLoYgXy9XTqoNzeP2wLeyP1V/?=
 =?us-ascii?Q?JjSI3IA0jPy3OjdJGJbl9/QNQTchfcqihv6A+GXSwEV9vAZxS6zp8Fwn//wR?=
 =?us-ascii?Q?ifqDst57CjPtrKHZ90ZhuJNKt3LXIBZt4DY8VOAdA9B6fY+SUAjUSetybVCq?=
 =?us-ascii?Q?J02HG6asGnwci6bV2cZ2Bd20wwcbL9e5D5tR+GaLyfjNocvXsOEUyc1aRxit?=
 =?us-ascii?Q?ZbDnzi1vUeDGbu5JJsTqsvLuNk812GFBZDYdIpaFwqsiSpWEK5isQMSujGye?=
 =?us-ascii?Q?DnitkQoYg4LlSDVFlWfj8r6IbyvZhtOWiHoEHCPmiRW3LWWISZxlHlL9J/ED?=
 =?us-ascii?Q?8ds7BchtEVSOVo3hh/ui4AyH3AuMpv1BxQzAClNwdKdkFaI4b/Nn9yt4pKvV?=
 =?us-ascii?Q?1kx+edKWAKhb/mDHmuchXAW5uP0IYMsj1sSUhAlx4G4erEiS21fzQujjzEwp?=
 =?us-ascii?Q?T69gDxMxtglxx2vvSBT1rzZi5xzvt7ENXQZu/37DHuzPcMSoAAQVgB9Psz2e?=
 =?us-ascii?Q?TwSoOmB4HNfhpBZZy4yKRFsvUyS4zevYPmB7NglAj0UcFiFdCegt5htLMaUw?=
 =?us-ascii?Q?fi+suTqJNMnHg0Uk+cITmtxrYsdnU8I9G07wlST7CK5c78o0OG+uJKK3T27K?=
 =?us-ascii?Q?A7/HmbU/NoN3PyJA3MhbSm4NbnWfgJOuRJE0wIDHRIw6HsvRGQ1APNm5O39A?=
 =?us-ascii?Q?ZPf+aDsAeoEbf4FZ2Xe8r21GMUL9cNvSi2pY8zHwSiYQILIY1LgoM3fCImpz?=
 =?us-ascii?Q?UTu87ceFNpItghtIylbaNBYi28ab2CzkmpmQHWhmNUOGSe7hmNUHkPrE/f6O?=
 =?us-ascii?Q?2w1VfXrrsaRHUKApmpfcNXfUntEMacvlZSXDbkWYVqiBmCmyOJaaBTYAU5F/?=
 =?us-ascii?Q?z4WNWznmn4qEgJnvrX+hwMKsFHJRLyl6hES6YRalm2aUYqNPcmsvBpemIBLL?=
 =?us-ascii?Q?xRD4Lf3odwbdOWxVquzd+XACjlocuAxe+NzrZbHp2BvN94A3s+TZYRyYypwt?=
 =?us-ascii?Q?tBvExcIzFFEHWKXavx3/om9w1QdYH88uHhfkWNK7HCFFfbIY80s5UsL58glk?=
 =?us-ascii?Q?D9g1UkdMDqpymJH8lH58l+TYFrMDV9TSGYCtsWhd57Mf/JAlLEj4jFvAgMXj?=
 =?us-ascii?Q?wA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80954238-157d-47ce-fb37-08dc5b049743
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 15:24:05.7008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ddZOCSFsRso7YDlHQqZV7n+I+gFc/B87dzisfVTIR7tBIqCTuk62rxVmxIdPEqK5e+6f5Or/Rn3n2OzAq3+2ysiJjQcWqrmCc7XD/J0x2Wc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7733
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

On Fri, Apr 12, 2024 at 03:25:23AM -0700, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Friday, April 12, 2024 4:07 AM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Borah,
> > Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > jani.nikula@linux.intel.com
> > Subject: Re: [v2] drm/i915: Implement Audio WA_14020863754
> > 
> > On Wed, Apr 10, 2024 at 07:20:46PM +0530, Uma Shankar wrote:
> > > WA_14020863754: Corner case with Min Hblank Fix can cause audio hang
> > >
> > > Issue: Previously a fix was made to avoid issues with extremely small
> > > hblanks, called the "Min Hblank Fix". However, this can potentially
> > > cause an audio hang.
> > >
> > > Workaround :
> > > During "Audio Programming Sequence" Audio Enabling - When DP mode is
> > > enabled Set mmio offset 0x65F1C bit 18 = 1b, before step #1 "Enable
> > > audio Presence Detect"
> > >
> > > During "Audio Programming Sequence" Audio Disabling - When DP mode is
> > > enabled Clear mmio offset 0x65F1C bit 18 = 0b, after step #6 "Disable
> > > Audio PD (Presence Detect)"
> > > If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave =
> > > 1b)
> > >
> > > v2: Update the platform checks (Jani Nikula)
> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_audio.c      | 14 ++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
> > >  2 files changed, 17 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > > b/drivers/gpu/drm/i915/display/intel_audio.c
> > > index 07e0c73204f3..61df5115c970 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > > @@ -512,6 +512,13 @@ static void hsw_audio_codec_disable(struct
> > intel_encoder *encoder,
> > >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> > >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> > >
> > > +	/*
> > > +	 * WA_14020863754: Implement Audio Workaround
> > > +	 * Corner case with Min Hblank Fix can cause audio hang
> > > +	 */
> > > +	if (DISPLAY_VER(i915) >= 20)
> > 
> > The workaround is currently listed as applying to both Xe2_LPD (20.00) and
> > Xe2_HPD (14.01).  So we should match on those precise IP versions for now.
> > Future platforms and/or refreshes may or may not need this workaround and we
> > don't want to just assume the workaround will carry forward forever, so the
> > condition may get updated further as new platforms/IP versions are added to the
> > driver.
> 
> Hi Matt,
> Yes, agree to limit till platforms where we have visibility.
> 
> Should I just keep it for LNL and add BMG later once the PE changes get merged and the
> macros become available?

You should probably sync with Bala on that and see what he thinks.  I
suspect that changes here won't conflict with anything else in the BMG
enablement series, so it's probably okay to include 14.01 in the
condition right away, even before that series lands, but Bala would know
best.


Matt


> Also, will add the helper as you suggested.
> 
> Regards,
> Uma Shankar
> 
> > 
> > Matt
> > 
> > > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3,
> > CHICKEN3_SPARE18, 0);
> > > +
> > >  	mutex_unlock(&i915->display.audio.mutex);
> > >  }
> > >
> > > @@ -637,6 +644,13 @@ static void hsw_audio_codec_enable(struct
> > intel_encoder *encoder,
> > >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> > >  		enable_audio_dsc_wa(encoder, crtc_state);
> > >
> > > +	/*
> > > +	 * WA_14020863754: Implement Audio Workaround
> > > +	 * Corner case with Min Hblank Fix can cause audio hang
> > > +	 */
> > > +	if (DISPLAY_VER(i915) >= 20)
> > > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0,
> > CHICKEN3_SPARE18);
> > > +
> > >  	/* Enable audio presence detect */
> > >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> > >  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> > > diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > > index 616e7b1275c4..6f8d33299ecd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > > @@ -148,4 +148,7 @@
> > >  #define HBLANK_START_COUNT_96	4
> > >  #define HBLANK_START_COUNT_128	5
> > >
> > > +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> > > +#define  CHICKEN3_SPARE18		REG_BIT(18)
> > > +
> > >  #endif /* __INTEL_AUDIO_REGS_H__ */
> > > --
> > > 2.42.0
> > >
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
