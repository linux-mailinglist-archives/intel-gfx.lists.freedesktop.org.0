Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D2C67ED05
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 19:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC3910E9BD;
	Fri, 27 Jan 2023 18:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A83310E9BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 18:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674842695; x=1706378695;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OwybboCce8oGP61lWlLdmRkinLOQg9BRs3yoMWzci9o=;
 b=X1cD88JX6xoypMNr5vpfvW6FUE+9aHbzjkMl5IBoZFTD0P2Ok6eDULjr
 iomuXDeCKrut5qjmHbbt0Bl4m/X8ocUacuuHExKpu4QPVU0aPNRUc3fRm
 6KgdhCgsm7U3cNd6rm0kKxni4xj6vU96bnpXZPXrk9bUOn6wzXV+tVUP8
 vIq8wmm/aN8+duy5UI4OkyWbPk6TNmz5Bwq5bK0oSv8+AQO6BjXOgncLX
 sSniEtQk5wd6OCYRqvQPS5KiHJCVLPRwwCLO4Bak/Snen6Tpfzj8g0cRd
 4rXZ/1nISwfKY0trgzHACYe/YK3cu4HDUWNWPVblmKwcdyh8awlm2ETSm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="389526176"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="389526176"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 10:04:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="640771611"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="640771611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 27 Jan 2023 10:04:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 10:04:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 10:04:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 10:04:53 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 10:04:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZbeNoH2xYvpuSSqYNAdwuXmW0KSCAqNgCSqcGTHvfzB37bqVzmzdOxJfVroEN3u3uaVgA5zAUjrcCbEgTE/fwx0x/HOLlJ8CGCpimgVBW7AV+EEzt6TmhI+MbQQHkoyLJdPTGzzF16a43qA2VpG2InkAm/jSzHNpL1uaX69Ur6txAl47aI+N8yhM+F3GrGVzCcApdbotiV45QvvLWvRdrtOTKlTrxELCGFJhIRlGlpeiY5GUablEjQkC/el1me/5qF3GB5iHX+rzR6gPB4j2p63orhU50MMSiHbITVenlTCLKeyhTziSkh7tJKjfjMGQfnRXFHM/Ju8f0n6IgmQ6aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwYqn5RQ50jojKXT/LKiQ8uNuipIPwB6rEeCu1hM6bg=;
 b=mL/njsl67xwqm2eTmO14ZCeEmWhrCe6TsQxNKiDbXzLP0Isr2P2ecWbjWbXwA0wOBM/6lT5i1TZT/PTCWIdBH0wP6GqpVO7S1X7k/OxW+dI3YfqSotXivYGOMZIikEpzCAUjsKQKVIPvomzZYG45m3fhTH0jYyRlNqx+Axr0xcEd5/bWMTkqX/KxPKv7Os2/wqlhlQiQh2sggWSi+zuPXMx6hwITSQ87eCgHBA3qTA7+rmAR5xH52yFAWTTBYs7Y35GrUgtGZH5+vET/LI+HBOCxRHEG9fHcPuzht4vgPEe2UkWaSyA+K32ukIPOWvVJvMNVmeQI4idI9PCzB3RNbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB7423.namprd11.prod.outlook.com (2603:10b6:510:282::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.17; Fri, 27 Jan 2023 18:04:46 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%4]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 18:04:46 +0000
Date: Fri, 27 Jan 2023 10:04:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Message-ID: <Y9QSO7SO+paPhXkc@mdroper-desk1.amr.corp.intel.com>
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
 <20230117074211.952125-2-chaitanya.kumar.borah@intel.com>
 <87mt686m1o.fsf@intel.com>
 <SJ1PR11MB612937723DC09B70E8A7F04FB9CC9@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB612937723DC09B70E8A7F04FB9CC9@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB7423:EE_
X-MS-Office365-Filtering-Correlation-Id: a89fdc63-4845-4c86-62eb-08db0090f920
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6PAc3LJ4Ws3W4aWuDL/sMMCKbwO2skauwafsyGwJgMyUsI74PyYYRsRV088cNnFXdkPafRnzew3TWFwGprAgd9voZcC0huATO1Hdvmg4TsfdjFJhkDa7COEsVNuAJYwf/1wfrr/Alufh69j3MG1qUbbPca5nNHzch6H+9z9m54zkZDke/Mi9jkWGmrMQGEuBSOl9vr3e6NWBUr+UCjwBFud1FSnnABB/Rxy7BSHd8HW7PIgIGhfKjWWCjaUue9RCyoUE+X1HiHQvsh07tP9Ix0NLOaJNCT5TDxrPg+BQbS23tQjUW4w1TaSrnXf/DwcBzJkVSSrA8QBeV8YKEiMRmtDxkYAa2mUiOwIerHs5aNi4SEeGsNCzGgwa1JuxehmeXlj6Un21C4Yy/0xFsQq5/6pZEadX7B1fyTrVUVbP/QnAt0ZRwBrw2qS9M9pp8VRq07/ZOuT2r5JuPOIuRGAXmC3S0+/ShPs5TWVmauzgOT8L2jyd/RDGpr2KtrDx1hl7gpNNtAuazrokGTIg/UMwrzxQOfyaPmwgGT6P2v4ydl2MqoZOgtQfsJ06N+1YHWcBOUjv8wvns2Jz0kYzqfxrdNI9MVlw1Ab2T1tCfdXEJ9IBQajdhdWeHwfbJoP1XJM+QVXR7Sti2p2xKKkb+taHdgHZezsXUfkMYRhwxsJiXyVG5he0RT/YI+rV15o0hklk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199018)(8936002)(6862004)(5660300002)(41300700001)(66556008)(2906002)(4326008)(8676002)(66946007)(66476007)(53546011)(6506007)(6486002)(186003)(6666004)(26005)(6512007)(83380400001)(86362001)(38100700002)(6636002)(316002)(82960400001)(478600001)(54906003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4KdqIL+ubYS7wh/stD+gOlagvP8Vho3lyJm3zMfQrHWNEAv4wjBJXMBFxJG8?=
 =?us-ascii?Q?RfTspmXYG/k69SjK2XrM/mO3F576Tgi997+HTUovdVqY74pjRHwQWAIWSsqG?=
 =?us-ascii?Q?wj4i5w29RFTw5EgU8FqLrZafyk+wUhvZOq+bI0K3SDZA6K6QMYUIRGlz8FwM?=
 =?us-ascii?Q?j8xTU3yD4JjTaoZfN2a6EhLUjpGwS2WoYyeNB8ASwPEoxNqXYvKYsumfe2Iq?=
 =?us-ascii?Q?PVXZmUjhOXwAwA4lI66WijzscPmibFfQfsD+WbdYGn9X0e9zSbzqfYFTzpVN?=
 =?us-ascii?Q?al3bAGCNvWNXWDwg2YY7wbXlu6GKvE4lg7F9rtR81dGKdeZ8tlr0Fja/ytMB?=
 =?us-ascii?Q?NPz6n3uezn/UHdOi7SPPSzuAVT3r5i6MWBRIwnQR1wasv4ENVGslhGX8TFIj?=
 =?us-ascii?Q?R6ZF0NQBoK6jA3YvgibnSM+Bbe7meGKr7nVx+DhGuFWW8GMZIivrTGmahFew?=
 =?us-ascii?Q?l7JE6F4K4Cr3qbek2J8Z6+GUsJOPy9Iryp0UKbwKBRggP4EZfBDqcJkBs0DL?=
 =?us-ascii?Q?0cn17EsAW49UuOhNCfoPkAcLNCJmZR21uXAgOJRKWNB0q0YMTyGem8pGXn6i?=
 =?us-ascii?Q?EWGk5G39DNsWBezwoa3VcBtpvwS7vEPtIEZ+4/NFPLwAG+FIROlDv5fkGOGW?=
 =?us-ascii?Q?Zr+BjvQbdlCA4lJnG+17UWkaN3BNOL7Ntei4KZGeAht58Av1oP6AwewAMYAa?=
 =?us-ascii?Q?wuTIFiYdIxKNM3otqK8QQUF3cAydCX0DhX6mJtPmyptrJWRTLt3nq9vYllX3?=
 =?us-ascii?Q?xs04QvZ5mk1V3Dv17Xy6Tl0HFiOcoKvbNfSvV4oVfCFzN4JpR6JMVGjDpj2L?=
 =?us-ascii?Q?sTl8m8PcJywQ+dD0Bq7SJpdxsV0dyVAAwaHyG2AlZ38ISNjzq9POVvdDQTjP?=
 =?us-ascii?Q?UCCx2KX7HKF9K0qa2AIYZGWSMI2uphLGwrgrP0yVTP+1GU45DUGwSvQhsbmD?=
 =?us-ascii?Q?vZ64TINehqJ053AD1xpa/oV5nHsrLvf0IVAHG4bDQBCudYLzflgWUKnyLGjY?=
 =?us-ascii?Q?daTdqUEIiUCP3S1b56Ea0O7h//IRSGYEpVLOD1tulO08qlq6T9ddNIJQlblD?=
 =?us-ascii?Q?5VrEJUDp65gtk7GmL9IJs/iox6TjlMp+C6fMl4WzAvoHoE7HvGCepuwueOOb?=
 =?us-ascii?Q?JANSWEqE2hwOqE8q8NDgusm554dN9nj8nFNVq9xW1pB5e1lPzoAUsAl20gZk?=
 =?us-ascii?Q?qQL03A4O8PVI1BrImWtwlXcabV+dY3HH4OMPXt7jdm82TGqPMNvbK6X/BgCT?=
 =?us-ascii?Q?Ja6PrSKjRU4NRvo7tEu5uyM69aXnjtA2WEc6oJj5mJSHtCrc18y2CbjP89VX?=
 =?us-ascii?Q?d/EpfL4OU7h/VQ7ZIgdPrIKeU3ppXPtK6JK7ZnW7G1wp+QYMr5+xcR3NvPZ9?=
 =?us-ascii?Q?BfjHNuZL/wNqW2ZQ1IQFe5GjNVi1rlv9UpjSVCZTqN0MmlKswurdCG9nxnpP?=
 =?us-ascii?Q?7iAlrJm/WRLV2lBvEFjSfWnPVrVLsbRACpfWTsXLJg75JmjqfayThUmTQNIQ?=
 =?us-ascii?Q?8I5O6w9g5AEQcqQ7KOgt/G+hlXPluXGbsszYr+nYjxECO5pSig0LR7bz4qZX?=
 =?us-ascii?Q?adchE1jyHsbBRZH46Qm492CZQ12bUdYObvz7kS96NseL7gCnWeDQYW3+LSsb?=
 =?us-ascii?Q?Kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a89fdc63-4845-4c86-62eb-08db0090f920
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2023 18:04:45.9559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: caPnOp0/rep9uFtWQcuO3+zAuTVEwHjznmlfksXCG+Dv07fN038ecDwUADGYgcr6k240/n3qBd4IqlQcPP+Of/oz/fgiTf6wLzsKzM/en4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7423
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U sub platform
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 27, 2023 at 01:34:31AM -0800, Borah, Chaitanya Kumar wrote:
> Hello Jani and Matt,
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Tuesday, January 24, 2023 8:02 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Syrjala, Ville
> > <ville.syrjala@intel.com>; Srivatsa, Anusha <anusha.srivatsa@intel.com>;
> > Roper, Matthew D <matthew.d.roper@intel.com>; Atwood, Matthew S
> > <matthew.s.atwood@intel.com>; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>
> > Subject: Re: [RFC 1/2] drm/i915: Add RPL-U sub platform
> > 
> > On Tue, 17 Jan 2023, Chaitanya Kumar Borah
> > <chaitanya.kumar.borah@intel.com> wrote:
> > > Separate out RPLU device ids and add them to both RPL and newly
> > > created RPL-U subplatforms.
> > >
> > > v2: (Matt)
> > >     - Sort PCI-IDs numerically
> > >     - Name the sub-platform to accurately depict what it is for
> > >     - Make RPL-U part of RPL subplatform
> > >
> > > v3: revert to RPL-U subplatform (Jani)
> > >
> > > Signed-off-by: Chaitanya Kumar Borah
> > <chaitanya.kumar.borah@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> > >  drivers/gpu/drm/i915/i915_pci.c          |  1 +
> > >  drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
> > > drivers/gpu/drm/i915/intel_device_info.h |  2 ++
> > >  include/drm/i915_pciids.h                | 11 +++++++----
> > >  5 files changed, 20 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index 48fd82722f12..c88e514728a0
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> > *i915,
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > INTEL_SUBPLATFORM_N)
> > > #define IS_ADLP_RPLP(dev_priv) \
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > INTEL_SUBPLATFORM_RPL)
> > > +#define IS_ADLP_RPLU(dev_priv) \
> > > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > INTEL_SUBPLATFORM_RPLU)
> > >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> > >  				    (INTEL_DEVID(dev_priv) & 0xFF00) ==
> > 0x0C00)  #define
> > > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > > b/drivers/gpu/drm/i915/i915_pci.c index 6cc65079b18d..e9f3b99b3e00
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] = {
> > >  	INTEL_DG1_IDS(&dg1_info),
> > >  	INTEL_RPLS_IDS(&adl_s_info),
> > >  	INTEL_RPLP_IDS(&adl_p_info),
> > > +	INTEL_RPLU_IDS(&adl_p_info),
> > 
> > You may want to drop this change, see later comment on how and why.
> > 
> > >  	INTEL_DG2_IDS(&dg2_info),
> > >  	INTEL_ATS_M_IDS(&ats_m_info),
> > >  	INTEL_MTL_IDS(&mtl_info),
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > > b/drivers/gpu/drm/i915/intel_device_info.c
> > > index 849baf6c3b3c..fec8bd116436 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] = {  static
> > > const u16 subplatform_rpl_ids[] = {
> > >  	INTEL_RPLS_IDS(0),
> > >  	INTEL_RPLP_IDS(0),
> > > +	INTEL_RPLU_IDS(0)
> > 
> > Please always include the trailing , at the end to make future changes easier.
> > (However, you may want to drop this change altogether, see later
> > comment.)
> > 
> > > +};
> > > +
> > > +static const u16 subplatform_rplu_ids[] = {
> > > +	INTEL_RPLU_IDS(0),
> > >  };
> > >
> > >  static const u16 subplatform_g10_ids[] = { @@ -268,6 +273,9 @@ static
> > > void intel_device_info_subplatform_init(struct drm_i915_private *i915)
> > >  	} else if (find_devid(devid, subplatform_rpl_ids,
> > >  			      ARRAY_SIZE(subplatform_rpl_ids))) {
> > >  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> > > +		if (find_devid(devid, subplatform_rplu_ids,
> > > +			       ARRAY_SIZE(subplatform_rplu_ids)))
> > > +			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
> > >  	} else if (find_devid(devid, subplatform_g10_ids,
> > >  			      ARRAY_SIZE(subplatform_g10_ids))) {
> > >  		mask = BIT(INTEL_SUBPLATFORM_G10);
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> > > b/drivers/gpu/drm/i915/intel_device_info.h
> > > index d588e5fd2eea..4a5cd337e4b5 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -127,6 +127,8 @@ enum intel_platform {
> > >   * bit set
> > >   */
> > >  #define INTEL_SUBPLATFORM_N    1
> > > +/* Sub Platform for RPL-U */
> > 
> > This comment really adds nothing, it's exactly the same as the macro name.
> > 
> 
> Ack.
> 
> > > +#define INTEL_SUBPLATFORM_RPLU  2
> > >
> > >  /* MTL */
> > >  #define INTEL_SUBPLATFORM_M	0
> > > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > > index 4a4c190f7698..758be5fb09a2 100644
> > > --- a/include/drm/i915_pciids.h
> > > +++ b/include/drm/i915_pciids.h
> > > @@ -684,14 +684,17 @@
> > >  	INTEL_VGA_DEVICE(0xA78A, info), \
> > >  	INTEL_VGA_DEVICE(0xA78B, info)
> > >
> > > +/* RPL-U */
> > > +#define INTEL_RPLU_IDS(info) \
> > > +	INTEL_VGA_DEVICE(0xA721, info), \
> > > +	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > +	INTEL_VGA_DEVICE(0xA7A9, info)
> > > +
> > >  /* RPL-P */
> > >  #define INTEL_RPLP_IDS(info) \
> > >  	INTEL_VGA_DEVICE(0xA720, info), \
> > > -	INTEL_VGA_DEVICE(0xA721, info), \
> > >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > > +	INTEL_VGA_DEVICE(0xA7A8, info)
> > 
> > Changing the INTEL_RPLP_IDS impacts arch/x86/kernel/early-quirks.c too. As
> > is, this drops the early quirks from RPL-U.
> > 
> 
> Yes I missed the early quirks part in this revision. Thank you Jani for pointing out.
> 
> > Your options are 1) modify early-quirks.c too, or 2) include RPL-U ids in RPL-P:
> > 
> >   #define INTEL_RPLP_IDS(info) \
> > +	INTEL_RPLU_IDS(info), \
> > -	INTEL_VGA_DEVICE(0xA721, info), \
> >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > +	INTEL_VGA_DEVICE(0xA7A8, info)
> > 
> > With option 2, you also don't need to add INTEL_RPLU_IDS separately to
> > subplatform_rpl_ids[] or pciidlist[].
> > 
> > I might lean towards option 2, but no strong opinions.
> > 
> 
> Thank you Jani for your suggestion. I am also inclined to the solution of adding RPLU IDs to RPLP platform.
> 
> To summarize, we would add the INTEL_RPLU_IDS(info) into INTEL_RPLP_IDS(info).  As Jani pointed out, with this, there is no need to add INTEL_RPLU_IDS separately to
> subplatform_rpl_ids[] or pciidlist[]. This also aligns with Bspec(55376) as RPL-U ids are listed under "RPL-P SKUs and Device IDs Info" 
> 
> @Matt: I remember, we had discussed a similar option in our communications. Do you have any strong opinion against it?

That sounds fine to me.

Thanks.


Matt

> 
> If not I would go ahead with this implementation.
> 
> Regards
> 
> Chaitanya
> 
> > 
> > BR,
> > Jani.
> > 
> > 
> > >
> > >  /* DG2 */
> > >  #define INTEL_DG2_G10_IDS(info) \
> > 
> > --
> > Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
