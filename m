Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D64ED7C0102
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10D510E39E;
	Tue, 10 Oct 2023 16:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1B510E39E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 16:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696953746; x=1728489746;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r4Oz17Gi4gcVwNPF420a60EF+yuxKm/IkR1ThADVKKM=;
 b=RKO1iZVRNEXcN60Vkq+6F7eD9ZQTGw00EgMDjO0FtzebXVhAUF8bq13b
 mkFG5AmkGCA89pM6mPrv9xpNizz113rJK3JfdvCPzx8S4oQEto0BW6TVf
 1C5X5S2krhCOIYRCxBeRBFSFPAwBh9srhFEixJ36R3B2pq0WTdCu6j3hm
 8NGOtMZepcuagO/rR8JNkS3m1rOK5w7yBARQHxBHUdP8yMjAnpXMLWrmZ
 3ez3Qzh8SJnphXKf+jWLA46EB6TQa/J4VcP+1gSoAeF7Gw33YzBRzTGKz
 4EwLjn+npgqRzxVwAMVrtNjvi6Qow2QRHAkTXiKPGY4FBXdwWyNNf+f3e Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="388303127"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="388303127"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:01:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="823825819"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="823825819"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 09:01:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 09:01:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 09:01:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 09:01:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 09:01:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZDzcCeAM4Zti4SD6PvLUKBupoir5/rnMHd4WLWAKgprs2oy8m15mBoS7Xa8KIhW90so/lc4tTnznvqOmam4cPNEYfyjIO3m2S0Skwoz09BTN5R+VyB4STond55EiCfn/E9ETLPeaWIyt/0xDkHrW4T7H+LyR7OWu7yim+SPVLfN0s8cges5298tVSECNIyXn9JwmaSG2G1pb5d2zJoLLk+IZq2HcXY0ylawhQK3uO9wMjd5TzBAHjKOp0IVEC/1ayrLZOrFKSad27kUPGqym2SzKufwYRf8j5oLY07xaQkldwTW+yp7KgdYPeEJNUpuo2uoNGm8xihJjYNxQYlMkxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32UyMCMQkqHTXtPfAl5J+e3ONq+hg36Ku6D6Ev/6laM=;
 b=iEDF09Bxw8n5WHJGd0FAn5A+/0kSqkkLG+Z/4pwwVEVF+mFvKvTcGolcNFZEyahvoE3Gi2dktCSbsiE2H2FDxEF6jsQj4ceu/watcf1J2cvNuB598d5lI+0LKQBeaUPx4yqSD1/SuCRaICTz8UO/O/ua54G0Ksf8Y/2kLn5V/14zNjouTQKKNCWqfa9zfsH9ealQjaXihXcpEyDAmEv1k4NonG6lwhcTduVXJ9pWf4jNJHJLJF20a7XwJihw5812T/MtGwavaqjYFH6IBu62oq0sPtqRG508x5FNOxTq1ZHOE0cgLV5qi0igKi4wqgABeSmD4Ba7zcPxP1sstFglKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7362.namprd11.prod.outlook.com (2603:10b6:930:85::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.41; Tue, 10 Oct 2023 16:01:54 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 16:01:54 +0000
Date: Tue, 10 Oct 2023 09:01:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
 <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
X-ClientProxiedBy: SJ0PR03CA0297.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7362:EE_
X-MS-Office365-Filtering-Correlation-Id: a12b6055-e88a-44c7-ea4e-08dbc9aa38c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y9E5/kM7LlA4S82XZ7t6PBLpV90viyn6NWejRbRYVV6g80bDUNub7nyZ3aATY6i0u/bFPgXEg2AWvwxvGfACqGNX96CUWgxkahZyVi4ftRRJrbZ+5weY8PX8umFIt0i81jTVEMBfObw9mD+lQZaoUt/ZVH8OskpoaRt97Iq8C6Mw0tVsMzLxvzyvw0RVD73k3I/2jWO2Nhm4cA5/KSw5bZkQSdxdoGSQhbKxH91kqXS3OqK1WwSRa/YgU4IQsoSWAKll6yH7jDs67zNopXIZGNXo1QXg6lv8F/w47qmSF2oHaFIGnksHSTzLx3b1kGr8AFsQ1YoWnDEYDyQwMROno6JVeFKjrb3d5GANdp0gUXRknnaCn2ady/wdF5S3h2xCpZ7l5b2pnhiQ2B9hA3B7D/ALYePx2Tt2Wqu5ZY5qa9eCchNjGFQ1nEdViILznPXqPwPJhSWSOHgRPtaWlBvLY8gS17CH8AoDJqyWhnrerTx0y2fWJYkwC5BvXgtE+/ZbCvuwIq9FDM+PytVeWHgTxm+RC/+M8HsTe5BQYx5pWK5G34wWHogtEp3Y/Y9NAnfI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(376002)(136003)(346002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(6666004)(6486002)(966005)(478600001)(6506007)(6512007)(41300700001)(4326008)(82960400001)(38100700002)(86362001)(83380400001)(2906002)(8936002)(26005)(1076003)(66556008)(316002)(66476007)(66946007)(8676002)(5660300002)(33656002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1o+5tq2iy4whnMUSBBJtdPg6M5wFKbitILpMtjH5OEiudKBt6g69tvc0vYZ9?=
 =?us-ascii?Q?J2oZZq+pWoWC1WMuhCIIps7qxdNHTDVHDeTKTxja4kYiM7gKOs+kzdT8w076?=
 =?us-ascii?Q?cHKhdgjtU1hocBAEKFkBYIeunFaGtqoj7I4Hrc+r9ovclYw3zV5hT6XttX4W?=
 =?us-ascii?Q?xNswsi2YpTjuCfJyVd+6fHI7yBSp+j3cqAmiKw/P08D/fdAIFf2Yq3bMzoOI?=
 =?us-ascii?Q?MD0vDREBQmYd//vDeKYAlYxeWK5fEh/qSM3ggM4May8akyYyU/4bNLzGulLE?=
 =?us-ascii?Q?Z2aU286nv9Q2d+aC/atTMMgjWkkBU9tb2CLsEzgsScTIFAW5BwcbQoEXDnlF?=
 =?us-ascii?Q?cUSgZ/bVZHSCeGBe9hwQXu6qaouZethGkyh+5eitXtG6D5m96IGrCsHrbuZQ?=
 =?us-ascii?Q?juxc8rYcW9jXh7PpKEtSEbg8ar5GBXJNIeCXOoF8egREJQurLXOvki3t6gic?=
 =?us-ascii?Q?pWejSFPQ3nTjHDGePHx+AtlsIeSsGMN3D030dzUKoOpzJ29ra9hmT+KRZ/H9?=
 =?us-ascii?Q?ngk5IdRgZySpcEFX3TKNk0QBrgQdvSDEHp8Vi6WOsJ5d/w7GVTPsQbsxg+cy?=
 =?us-ascii?Q?1Fv4lUbvvfOJBRaiclQ2y3D+m/OkqqNhmcm0VA2xCMOxnbKURUii9RlFpsaj?=
 =?us-ascii?Q?mSLdKMGynXAEQAZ9OmvkQhEGhDQKYmbVq3gUn9bac0Y0EmHRjA39aE+2Y/uE?=
 =?us-ascii?Q?BiM41Nbr/1CyIei8RntG6z1hhJfOXcrcfOM2SEnzgjU46H/Gw+yf/QHlBzZT?=
 =?us-ascii?Q?8CxuNIXwqJ2ZJyqnp4Y3OjXAaPeV+S7SJB/17vyCPu2tSs16GSNY7BQhGR+I?=
 =?us-ascii?Q?IUnPdTa5qJoRyzVXTNI2wur06YQ4LQVFGYl3k20TPXqitqPNsHBf5F4/u04O?=
 =?us-ascii?Q?2iK5iYaKpnhXco2BISnSKaaiHCl6nYqEBzU84ONNzAIJu0SE0JysR/O3F7pm?=
 =?us-ascii?Q?FEDSJfDV+UmSnC1uDF6GhvQM4KL5SNfVooFGjWhFSNNGk+YH71dTWscyUXjr?=
 =?us-ascii?Q?DHSJhYkc6kJGalKZ51UAx0ThAIDWWaAmTN867g5Tcneqp6EQX9xHzsK0dWOk?=
 =?us-ascii?Q?DzUZSnKSdhcpF10FQBRUgi0COEUeSLltIoYCyzgAm5Obqj9x3d6ke+IbjswS?=
 =?us-ascii?Q?5YmlJIGQC8C14T8GNEOb/NO293BAMH43j3cNj4ZV3NxewVQMhIxcFkCfe7zi?=
 =?us-ascii?Q?CLKJtaO2E1g8Om9e655H6/ufg74jkYzTAbUMKTQue3AjtjWdl+Y45fSjU6Ou?=
 =?us-ascii?Q?3uDJSX8J0u53cu2GG+sKunp/zvYk78AXI9Vgr2wTCvSEFkxoz4Fw+28skaIo?=
 =?us-ascii?Q?r2bR8u00+S3Mg3eIuOl0lhKFiggk+14UN7s5YNhYlWGQLe8d2EWAzZPc8njD?=
 =?us-ascii?Q?/mUR9tkWXdgo7HInabAh+s+D6udVbbexEsgxHZ+ImE2Dr4T2rLDb18faQqs7?=
 =?us-ascii?Q?97i1gJ6n6seO2FbBbh8te/KLsrdTs1NJ+JJbdzvembP9tpIn25B7pApgHaZm?=
 =?us-ascii?Q?bv35LomU9QuXl243LZ91vFZMIhuu12C0tFJoXexd6M/NTQ67DCka/TVpKcOn?=
 =?us-ascii?Q?8WPf2n4Bv/cZo6hRy7wRBVVAqElCgT2Z5FhZ0qnWE5YRatlReus5iQj8E3hy?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a12b6055-e88a-44c7-ea4e-08dbc9aa38c0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 16:01:53.8079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lZ2l10zd/VB12BREmG6WJ09J1PEznL0qfcL1WDpsyovIiFOYF44YlpWwQbzzPgAMs4CzqbsFP9I5Ss7S2aZWN/QIm9RhEyq/3kKOx/rxAOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7362
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 10, 2023 at 05:11:54PM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> On Tue, Oct 10, 2023 at 06:58:27AM -0700, Matt Roper wrote:
> > On Mon, Oct 09, 2023 at 04:38:56PM -0700, Jonathan Cavitt wrote:
> > > FIXME: CAT errors are cropping up on MTL.  This removes them,
> > > but the real root cause must still be diagnosed.
> > 
> > Do you have a link to specific IGT test(s) that illustrate the CAT
> > errors so that we can ensure that they now appear fixed in CI?
> 
> this one:
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
> 
> Andi

Wait, now I'm confused.  That's a failure caused by a different patch
series (one that we won't be moving forward with).  The live@hugepages
test is always passing on drm-tip today:
https://intel-gfx-ci.01.org/tree/drm-tip/igt@i915_selftest@live@hugepages.html

Is there a test that's giving CAT errors on drm-tip itself (even
sporadically) that we can monitor to see the impact of Jonathan's patch
here?


Matt

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
