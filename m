Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DF0855479
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 22:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C1C10E144;
	Wed, 14 Feb 2024 21:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKzRCiEY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB70410E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 21:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707944568; x=1739480568;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ga2SPbExoB0MH8ZCInSmcQDsmSKZjSrXjgM96M+fTgg=;
 b=mKzRCiEYQWhYJiS7bWZKpYBNLx1te7xcHR7j+5FV9J/zWut97/HEPrPM
 3n8ef5lnOAF0QvXGx2jp+xX620tReWY01aFygrMuKcMv6XFjfEM2FH/3w
 9VZyf79FMKLGerpEu1hPAgo3AFsod+fysgCLUQWA8x2sCSNXTDHJBHHan
 lcDOw+hc+s+F/OHlTx3BV2LLCJj2OrQzrYBar5rlu+U2hRGj5a4IkIGw7
 LhGfJ1DBzxPqSMKWng+kYqSh2CvLo76y1Q9VdjzhDknUlPycDlWP/9Ynn
 XF7qJrHvgX7Mnt1CqRF0jhxHjSPw6ndw2qqKlq43DUcoEQYGkSYnMPjc0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1887872"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="1887872"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 13:02:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="34130075"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 13:02:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 13:02:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 13:02:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 13:02:31 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 13:02:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCmRegN+a2aIzhADhfWGYu4rEtKfrza8FK64fs4l8tA0/ZBJzMrwCrEoJDPUqzIUheFeqFBxeQns7fnFh66OyNIesS38MxPlG359a47TwNexQWGAHbvEp6JWEJ9ca440BfHADY253ArNkNOg1uHl0kLYI17idtFswOM9RfaI0Yis6cKoaKF0ZfczgpNtfXpBrdVsiGoTTgHQud6hvkwEcXoZWSIfSyOmFZrNoY63CAxA7IX7p4P2u4XRBeNTy7b2L+tWP76IiKw9vyHkdtf8TYc7t5DiVqju8z3iHwq58sryND/P785z8eF42QItLYMuf4MIgaOq3dpvfTI9q9Fokw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aC8LJRJMZCVeF7EKwbTf3ev4yeBPI/gS3Vkpt3yKysI=;
 b=gTX7Kfgs6yv1Ln2gb9PB1EsQ8d3wruwtFnh5ZN/s1xiDaobOya9bYFBThKMCawwnYgK6/TXDbx26gKKpAnvAvehKM3fNdKlnysXLLI0Dq2Eq61E3S/mC468Ng9MrpM02JVneXH7vDRY0xbDwAaEBumlevc3oGc+hDO89Pmiv7MfKBjZ8k4MWK+pAxlK4COo1zHhHnhZCTAF0whXqGCrMuHca5oXwIoxWQXF1Zrev4oRKSzuw/yo5RwPQDx+72XOQYRqEDXCBRAN38yCeJdmAwFekuE82UuDJE9kcdhspTyauIebtYAFdtbEjIorYZMkGaVgqOME0fxurd8z9SgTB6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB5000.namprd11.prod.outlook.com (2603:10b6:510:41::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Wed, 14 Feb
 2024 21:02:29 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::e8bb:5354:3889:6092]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::e8bb:5354:3889:6092%3]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 21:02:29 +0000
Date: Wed, 14 Feb 2024 13:02:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Update ADL-N PCI IDs
Message-ID: <20240214210227.GD5347@mdroper-desk1.amr.corp.intel.com>
References: <20240214144629.106702-2-gustavo.sousa@intel.com>
 <IA1PR11MB6266F88D19883164CBF08FC2E24E2@IA1PR11MB6266.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA1PR11MB6266F88D19883164CBF08FC2E24E2@IA1PR11MB6266.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0012.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB5000:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b402d08-c56c-4672-f9bb-08dc2da04135
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S5daxzrIj20LZdpN59XfAmpDb81IqrzE5g8dgyQA/t4K2f2OOWDgJXkHoADx7EKHCcxnJCu3nJVkYr5Buk3NMdaMrZ5t2p5EyjiqRVH/iasl4GtOPOxG0KcoS/zNxIvx9LnJGHQqAHtsuAUnH4oLkaNxbkwth3PmkKnkQGEaF+Z2/g/Lg3+vlqQ8mfEsU3N4qefTOl90I3D2QhE5y1PRLmK/u13yQbBZermVMtVpmYmzr71+nxMc15FZoWKKcI7DgHXuYBhLw8Hcz5R9izBSP8I1GC1dR5TSRxENOvTxw9n2Kb01g1kqZv8n3Cq6SD5ZMJCASAX7akMnSEBN1xZcK+Z88AGraJHqZ1fn7DobRhprIupatTTXNBcrw17JqIiCNQ1o6tllsqq3HZTg0JLA6ldrLIxCGS9BSn75Rl7dIy8fyLi/+ilaSt46b2D5RrJGtSepV18CjoWmz8mEhjzNBCfmoBoNOD7BamHoPVhvMPrifT+J2np54v2gnP0zULCAkGeLG5udqMMS7GjWBc+6SJutBYlM635wkgSPS/HG4MrqtTpgR5tnRbMuMfWrAXFE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(136003)(39860400002)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(5660300002)(2906002)(15650500001)(6486002)(53546011)(54906003)(316002)(478600001)(6512007)(6506007)(6636002)(1076003)(26005)(66476007)(66556008)(66946007)(6862004)(8936002)(4326008)(8676002)(41300700001)(83380400001)(86362001)(33656002)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G+lElWN69ogNmidBRlXv/jMcsX8mCtskQZR30Tc0mAAN0hw1+2ZwxTgmMxY5?=
 =?us-ascii?Q?4CamzrY41RfaWqkCVOh1Pa6sWK/qOgeV2USOtiFrOovWhOjTRBnWkIn+Bu+h?=
 =?us-ascii?Q?LMHmliVcyRl7Dlnb1FmkAc+l4ywMCkrzGj2Q4QP8yc49LgvcTOt5YhBeWsC2?=
 =?us-ascii?Q?P8poRAtVn7R04vvd7tjdgn8WGreo9U6gQ7CNfJdS377FpLCNkU6r3PAXjqeE?=
 =?us-ascii?Q?+/Jk+3v7ZVkPhS5VOfiFRsLg++69AmeYrK0EOWthYa0VRYpjgCTUl3073Y+9?=
 =?us-ascii?Q?DNsKZo3vSGycKGfqaiGjq/nPmaV1RBgSL3q3tjwlH8CsVTEOLyKa4UOZ161e?=
 =?us-ascii?Q?aOkaMToMYbt/0+GSs2CvIEvFiFNWz+Y6oWpyChZU4T0dzC/JWD5LpwSNLP4n?=
 =?us-ascii?Q?WXpUxo/AD1X+afUtf4ZPglRlppOZf7myQjajjahcmkQ8QxXdnqRKM3Wzy5eA?=
 =?us-ascii?Q?KAjHuk1vg9cWqKxqW76f5RkW09EkEONv0BH+WXyokZh1Czbxg50GmB6lBtdW?=
 =?us-ascii?Q?jL7IqiYQU65jETFeJeUsobzmJTUpcN7qzKTJls8xkHyd/xygU2UaTH2RC3l7?=
 =?us-ascii?Q?ES7TWbzqpE9uaN3UOSpXbRH68hoLW8iQaqQ/F458DrgBgADZJI4v8qqhc7Z0?=
 =?us-ascii?Q?KPaYPtbnNlEViy0e6iVFKcXYiJGjTlSGKrAROT7Qr6W4Jmfyxzaip4H+1crv?=
 =?us-ascii?Q?hOzw8tjYGcl2RuFWC3eTa67mO8+vbEqtyjtTVovsh4PBt/uubE/jN8JwDh5J?=
 =?us-ascii?Q?0Vm/ArbjiYD7kGPBi60FlNlvTrW/qol4poOLWRStwBS2xgA8uw6sWVjOk2HH?=
 =?us-ascii?Q?RNb43Lz6/MDF3cmKdemLFsNwd2zuqDlzTKJlM2/YlPo3aXjtumXH0o0A0oQr?=
 =?us-ascii?Q?iC9rTrjIUgbM9MwN/O62X5xYr+eB7VljdRGGrtA+e4xOUnW4aVKVo83Cl569?=
 =?us-ascii?Q?lgKGMbZSgTdBJpRyD04ZawO42Fs0mTso9UlBkrKHixx/tGBJWFAazwQd49jr?=
 =?us-ascii?Q?dV0eYrzZ28DmFF18Jfu6d32fTykCQtKxg3/ijFnYeYpSKFPi98BKhT7U7ip3?=
 =?us-ascii?Q?mtrEYwe7vBOU4XzZ9eap0w74JkL3XOmIf9iUkuKgh72Wraj0bQL/25/de/M2?=
 =?us-ascii?Q?YsvEiXnB6y7tuXQ0znHYQniN6R0DrfuZSlzLUWaexCx5WOfAJlcWJkAinC5X?=
 =?us-ascii?Q?q4ff23rPx9J5y/oc+dWNHDSjYJmbmvIdQrvZcw6hnIYh88Ss8MQYVcl8Jo2l?=
 =?us-ascii?Q?mCHox3EZ0SAPqI1nXK0tFd2bzZS8CGUcZIl/Q4xanML4fOJotbSv97m9uUNy?=
 =?us-ascii?Q?rCx7VH5iSdGVdi40Ui3hORFyuBMbboQGEMR5YIff/AXumyJ9xx6tyKPC9aHX?=
 =?us-ascii?Q?F3JcvjB5DWNLdEW7TI6aP5ocsiAxAsCJoOI3u+lxqd4y8KzOQzQs1T00dePM?=
 =?us-ascii?Q?HFJ1iT5PPV/RmT9MIMx5wtCWxw/2g4iRcA0SxTbmP4RNIDWqME2tnGuqFs3w?=
 =?us-ascii?Q?O6I8pEYeUdAUJu4icUB7IsJALD/0v6n+CaMKsPzDKl0Y/IebXxyqFKsw1YF3?=
 =?us-ascii?Q?eQZglkUdiljWQqqDmTd/aIMUtaiQbsVfagTPCuvWEPhwhM6AZjpKfSD8jyhN?=
 =?us-ascii?Q?sQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b402d08-c56c-4672-f9bb-08dc2da04135
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 21:02:29.3740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hxA8fvza2UlSOLPTvLxNgwbaWKFGlSFZNRXXqeZ15bWITgV51dxia3UgkX0lv574gVzUUUTHow9SzwmwYUmyiwpOuME5IK0HJNEqdNyFJC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5000
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

On Wed, Feb 14, 2024 at 03:05:42PM +0000, Bhadane, Dnyaneshwar wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Gustavo Sousa
> > Sent: Wednesday, February 14, 2024 8:17 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH] drm/i915: Update ADL-N PCI IDs
> > 
> > Extend the list of ADL-N PCI IDs to contain two new entries.
> > 
> > Bspec: 68397
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Looks good to me,
> Thanks for the patch.
> 
> Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
> Dnyaneshwar
> > ---
> >  include/drm/i915_pciids.h | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > 07779a11758e..28a96aa1e08f 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -672,7 +672,9 @@
> >  #define INTEL_ADLN_IDS(info) \
> >  	INTEL_VGA_DEVICE(0x46D0, info), \
> >  	INTEL_VGA_DEVICE(0x46D1, info), \
> > -	INTEL_VGA_DEVICE(0x46D2, info)
> > +	INTEL_VGA_DEVICE(0x46D2, info), \
> > +	INTEL_VGA_DEVICE(0x46D3, info), \
> > +	INTEL_VGA_DEVICE(0x46D4, info)
> > 
> >  /* RPL-S */
> >  #define INTEL_RPLS_IDS(info) \
> > --
> > 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
