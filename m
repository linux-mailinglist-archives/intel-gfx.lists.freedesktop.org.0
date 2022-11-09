Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAE36220B0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 01:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD3D10E548;
	Wed,  9 Nov 2022 00:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC4910E548
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 00:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667953476; x=1699489476;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=42uUAFq0CGqeWyqP6oN4rX7+WNeCwoIEBNK0u/vORYE=;
 b=G4/g2zV03UFlawTT7mXtMGJCKDSFDp6L6UKH9vvcY+2MNImbhraRVI7Q
 iPXNMV0fstMdwrwJkMUTbTshSkvOQcBXirC6sbp4P0RwsEK91gFW6TKPy
 VKUtS5rLRRRjrsoIziIjbkRvPwoOEsPQnEH+ju9hbqy4/2ucoWsnx/LWc
 jEAl9XOX3lIMFxCDmtJFGdSJroEAf3JavLv9f87VAVfSRGC2Kl5+ww4lH
 ISfiZOPXLW9BhNksT14x535HnIzl7sGCc0Ynhy/JZlZFQDTs7yMWTATUJ
 yDvk3sAtsFFQftfAM/3+kWhL5uWJmOlZ55Ri9HTxem1ZUjy0mHLIGPSUx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="309556646"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="309556646"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 16:24:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="881712424"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="881712424"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 08 Nov 2022 16:24:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 16:24:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 16:24:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 8 Nov 2022 16:24:35 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 8 Nov 2022 16:24:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=icPojM5CgCaasFHzeiACBQGjdbHO66wMRfU7RhdLQldgLWsRPZZiLjTOdVuwip7trDxnVeavJkzJA9E+secvj72Ckp8hwxRKgm6ZPo8yPDNpSwCrHDstb9OxFeeNHslZ966fSa5FgCyLE77fl6iSoUQkpwDnjk3NCVIPh/tyUA26XfCtllGcg6SZVJjmHosp0RjIYn53QSJWcNFyFEITB0qrYDDD2IDtZ/zKCpi1cOysDXDnrTex4uBfHKWkbNJIwTUGBDy5Dol+IQr/HWXRSMGYzXVsqAlhh0wuPQA/9Cw/4ucOv+LsKJFYZLAIZdrr8mdaIv5AULpb4RBDUtMRTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RnheahdcWiUjBIhDaHf3iUozUwQw8V5QbOFKnT4MPns=;
 b=akNL0fbnHPHXUlYgQfobEGfss+t6Fj/gTklHImiy1JR7+aOhYnZjI/4YzdYkRUPdIK3uZ1Z7Htp2Y7nnuz2DowJWhBC3Qf1Aat8Kg8V6ZfnkrYC05V9ppJ/kbMK+nbdr4CNqL7IKHE5ZnhXtW/a2YaS7REd44cMkVeQYparwvvnKJoVR3h9rN0tMgpXdb5vXc1qPcOEig20ZOjtacROk9p63WBYutiQETEbFCsgsiml/tDbGt6l7bE6gyc4+4KPeo1tGe961wRg6h4oJ2opg0T4HDRDdmsi4/5IT5lurB5xXZV6urgLgpQ9WFykZX/xXY17dkzV9CE0jgeS4W10xow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB4832.namprd11.prod.outlook.com (2603:10b6:a03:2dd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 00:24:32 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 00:24:32 +0000
Date: Tue, 8 Nov 2022 16:24:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Y2rzPj+6AR2PVjbi@mdroper-desk1.amr.corp.intel.com>
References: <20221104222642.815560-1-anusha.srivatsa@intel.com>
 <Y2rpZ/8Li/186jR1@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21662FF152C69CF61E943118F83F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY4PR1101MB21662FF152C69CF61E943118F83F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0364.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::9) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SJ0PR11MB4832:EE_
X-MS-Office365-Filtering-Correlation-Id: 026bb115-de48-48b9-8a5b-08dac1e8c5e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yo2hI+OGpOsnjVE5sjbksu1c/yu8n197Gtx49XwYPy72SQ1sK3HUKhtsRslNefxS5J+ZPSS0fp7drpWNRYsf1A8rSgcMMG2Kr/yb2EO/nGrzOqMycl19oyVJtfmi3HAZYfAo0GVq4khwI5kXidS+WRisxApBeK3Z7nHKTvVTLUSCcQvI55wbMqrjyvZ0SVKNzZC4cvwTS4i+5CVl1pueqVU8DQdcwExPCp1yWpg/dlsY5HT38SpWxEzT9t1usSfPIYVlte1PgTNeXHCPm0WcFuJKKJQRdGoT3Y6p7SyPisQxcu0zfGrgVFgAeYo+Dxn0xXrZLe9Kbs855WIaONIsxxbkWjiHCh5hbCfAyUQtK7jo4QwaBM+cQ5tmya6xiWAiucVbOTrj1Xr68ZhVLZMHPO/ANpn0fglx2PJ0y5g73WNLL/5Bi/cykqsUWDHHZZgGQGZAGmoymISI6v1HPrU+An5mRQ//i/MEHKamzfqIUNSt1QdSjGbM9x0rzI20q0IZ7BkxNNI2hXLu2PPIr0/eqAVJfdzUraZ0yez48numVrIvsChYp/KxEETVvBku0dhRWCl2L8kHJX4J8Haz6+DV2lc7nhquG39Jej8K2fc9FeaWc6ag0P2yjArJEM9Ops56KIlOqYKaxOHHZaT31zJrf8muqJ9d+OsYw5bsOxGKQDp8toVX5pI1SRgLhkQtgzxVaRJdty7LA17Dtt+jHjU9o00zQ8A+SN4F6Cve9LzU9saCYAALGQgZtNIOT22LPvfQHhtaVPeuCUgaXeia381VAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(366004)(39860400002)(396003)(376002)(451199015)(66574015)(83380400001)(66556008)(26005)(6512007)(38100700002)(186003)(8936002)(5660300002)(82960400001)(2906002)(6862004)(30864003)(6506007)(4326008)(53546011)(6486002)(478600001)(107886003)(66946007)(41300700001)(66476007)(54906003)(8676002)(316002)(86362001)(6636002)(17423001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?h32F8+sQ7oEz+vExSBkIZ9jUZVIIw7Ul5owoHw9JI+q7447a2qPe/JLeRz?=
 =?iso-8859-1?Q?HRJgYiyk3HG7dxSmV4oXd9cND5fi46I2IXGpv1+DG/h5ytY+4FrM5uYYIG?=
 =?iso-8859-1?Q?qICzzclv3otjv1pWY9t8vPutP8CClnXUBB0XtVcIM3pD2doODbn3xr+eO1?=
 =?iso-8859-1?Q?FNedxsISvXn7/srhWb6XSmVilWxagemQzbnQdLynt5KKvuRlt1H40bLs0G?=
 =?iso-8859-1?Q?CcxPn0JB/LSRTRR0Vk5tyxlYT5xTSmTtMUxNBRCUFWk7UoG5pE0kVGHtHa?=
 =?iso-8859-1?Q?ykiaJrBc925kaMjq4p1JskxDazsQ3ID2eCP3DVIH283vXT0ynav9g2tAYU?=
 =?iso-8859-1?Q?WS0df357Aa81f6VAGUIix+cKxPtrAiWXY+X1ZPDlLC3RFKh1lkzpgzy9IY?=
 =?iso-8859-1?Q?5c37EB0tt3WpfsPNz7gTDE0/OGMLhD9hRidlXTnGGIQ3GXfBRqKSrffI/Z?=
 =?iso-8859-1?Q?SABdybZ/Z6kMMxC1iWMEZWnt3xojovmeU/xHGSpEsXE/8cxSagV7x/t7HU?=
 =?iso-8859-1?Q?INichkAlzHAW/Hd3DIDCr1Ttg1Hyf05hVTWhG6u+AfccbPxktOUSX2ToXD?=
 =?iso-8859-1?Q?1ZmujylS9TRs4qSVUf+rMI7+I5N4+GOj/7sDdBM0k64UmtaMULRXQo6j2M?=
 =?iso-8859-1?Q?Rt8M4KxqNMnYZKc2jOOzoLsodCk/vq0emoT2MritBGdW9uw2y2yZkIcSBD?=
 =?iso-8859-1?Q?YAPwRDPbhh63N6r8EDXWaXff5amSXtRDakVYo0W8mzLlD61lCv+zOMqjtS?=
 =?iso-8859-1?Q?PdjVJElDwuuRxulKPq6yDEZrTDsfLlNjjC67SuMqsU19DWD5QvwAdjP+xo?=
 =?iso-8859-1?Q?QLLbplJOV5ItmIYYi0SN6WTmXW1fRKeS84agUJQ1tb1L6oKnyrWPgdenKS?=
 =?iso-8859-1?Q?o7j6jdBvjRsSHEsvvJnigMjiE57v4p7X76mFvY0GhqNd7DI4oFfaJJJ8+5?=
 =?iso-8859-1?Q?C19p6z0PrDYjmBcw72iq310otRWjTE2FBShFxUx+XiqHI2II/eRFHKsyTQ?=
 =?iso-8859-1?Q?UEeFOXgBYkOyBdnU6Wu6zNRsL6PCP8fBVlUgS3UG7QiJmsqkh3g9krqQ0Q?=
 =?iso-8859-1?Q?CoZWZiw76wToY/+4VDWDcQldX7qtYmILFEmwjvmKMcCgZtEh0ao8OB6F8y?=
 =?iso-8859-1?Q?Nhq6GZx7JfNpHTwrKihHay3AQ+bPHG4fSWH419ztRun4xDIm3IAEIN3xBr?=
 =?iso-8859-1?Q?bfs9i1gLfmbhz3AEKQqGCV/ZxkV0QEaxIKpGIgPqL2d8/NBEfGIxgOP7tV?=
 =?iso-8859-1?Q?ErQROzgLZ1ZNt2BoRd8Ilv/uR4L2pDBPWtHFVKgPJiWoAPBedV2aBj/mTn?=
 =?iso-8859-1?Q?Z7hLXPa1qkQbsIroQCixz8+r1XpyoYHVZX+NLmC48y5tbMxpaHUwoFJchy?=
 =?iso-8859-1?Q?EOIqB2j4K2uClLSg7qAlSjBif++yg4vOvgoztVk/Kor1iRiwxhKGqmW56k?=
 =?iso-8859-1?Q?+ZRc6pG7zRqoCoDQ2LR5sU9E0lrVkFMwNPEATc1dywgpHyYwJXCLoqNNCl?=
 =?iso-8859-1?Q?db/ccLaJEbNGst0TLNX0j/S5eGjSk8ca3+0P6XzB7f4QNoqkdgduxlwlPb?=
 =?iso-8859-1?Q?XGi6pImHS72FL5BF3lE4mM0ECGFniNPhgJUmqHwHhPi7kATtonHbrPkvsd?=
 =?iso-8859-1?Q?8zhi9Mq4I/fVkk9DWKsv+Ogxv7Wurp6GgPyRgITd9u2Gqagy/IjcqI9A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 026bb115-de48-48b9-8a5b-08dac1e8c5e6
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2022 00:24:32.5171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /mJ1obujbk75a36pFkNEck8sA1e7scqmRhPyX+mfqV9JbKTBnASe7ZgdnM7q3gCf5FAN9L/ED15xk4CnE7oW5C6PwYmjBDEVdeJ1FTezszk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4832
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 08, 2022 at 03:56:23PM -0800, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Tuesday, November 8, 2022 3:43 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> > <balasubramani.vivekanandan@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
> > squash when changing cdclk
> > 
> > On Fri, Nov 04, 2022 at 03:26:41PM -0700, Anusha Srivatsa wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > For MTL, changing cdclk from between certain frequencies has both
> > > squash and crawl. Use the current cdclk config and the new(desired)
> > > cdclk config to construtc a mid cdclk config.
> > > Set the cdclk twice:
> > > - Current cdclk -> mid cdclk
> > > - mid cdclk -> desired cdclk
> > >
> > > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > > modeset for platforms that support squash_crawl sequences(Ville)
> > >
> > > v3: Add checks for:
> > > - scenario where only slow clock is used and cdclk is actually 0
> > > (bringing up display).
> > > - PLLs are on before looking up the waveform.
> > > - Squash and crawl capability checks.(Ville)
> > >
> > > v4: Rebase
> > > - Move checks to be more consistent (Ville)
> > > - Add comments (Bala)
> > > v5:
> > > - Further small changes. Move checks around.
> > > - Make if-else better looking (Ville)
> > >
> > > v6: MTl should not follow PUnit mailbox communication as the rest of
> > > gen11+ platforms.(Anusha)
> > >
> > > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> > > Cc: Balasubramani Vivekanandan
> > <balasubramani.vivekanandan@intel.com>
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 161
> > > +++++++++++++++++----
> > >  1 file changed, 133 insertions(+), 28 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index eada931cb1c8..d1e0763513be 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1716,37 +1716,74 @@ static void dg2_cdclk_squash_program(struct
> > drm_i915_private *i915,
> > >  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);  }
> > >
> > > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > -			  const struct intel_cdclk_config *cdclk_config,
> > > -			  enum pipe pipe)
> > > +static int cdclk_squash_divider(u16 waveform) {
> > > +	return hweight16(waveform ?: 0xffff); }
> > > +
> > > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> > 
> > Bikeshed:  maybe name this "cdclk_compute_crawl_squash_midpoint" to
> > help clarify that we're just computing stuff here and not actually
> > programming the hardware in this function?
> > 
> > That naming would also help clarify why we're returning false if we crawl but
> > don't squash or vice versa (i.e., there's no midpoint in those cases).
> 
> Makes sense.
> 
> > > +				   const struct intel_cdclk_config
> > *old_cdclk_config,
> > > +				   const struct intel_cdclk_config
> > *new_cdclk_config,
> > > +				   struct intel_cdclk_config *mid_cdclk_config)
> > {
> > > +	u16 old_waveform, new_waveform, mid_waveform;
> > > +	int size = 16;
> > > +	int div = 2;
> > > +
> > > +	/* Return if both Squash and Crawl are not present */
> > > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > > +		return false;
> > > +
> > > +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config-
> > >cdclk);
> > > +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config-
> > >cdclk);
> > > +
> > > +	/* Return if Squash only or Crawl only is the desired action */
> > > +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
> > 
> > Isn't vco unsigned?  "== 0" should be fine here I think.
> 
> You mean the new_cdclk_config->vco right?

Both of them I think.  The vco field of intel_cdclk_config can't take on
negative values because it's defined as unsigned:

        struct intel_cdclk_config {
                unsigned int cdclk, vco, ref, bypass;
                u8 voltage_level;
        };
 
> > > +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> > > +	    old_waveform == new_waveform)
> > > +		return false;
> > > +
> > > +	*mid_cdclk_config = *new_cdclk_config;
> > > +
> > > +	/* Populate the mid_cdclk_config accordingly.
> > > +	 * - If moving to a higher cdclk, the desired action is squashing.
> > > +	 * The mid cdclk config should have the new (squash) waveform.
> > > +	 * - If moving to a lower cdclk, the desired action is crawling.
> > > +	 * The mid cdclk config should have the new vco.
> > > +	 */
> > > +
> > > +	if (cdclk_squash_divider(new_waveform) >
> > cdclk_squash_divider(old_waveform)) {
> > > +		mid_cdclk_config->vco = old_cdclk_config->vco;
> > > +		mid_waveform = new_waveform;
> > > +	} else {
> > > +		mid_cdclk_config->vco = new_cdclk_config->vco;
> > > +		mid_waveform = old_waveform;
> > > +	}
> > > +
> > > +	mid_cdclk_config->cdclk =
> > DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > > +						    mid_cdclk_config->vco, size
> > * div);
> > > +
> > > +	/* make sure the mid clock came out sane */
> > > +
> > > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > > +		    i915->display.cdclk.max_cdclk_freq);
> > > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> > mid_cdclk_config->cdclk) !=
> > > +		    mid_waveform);
> > > +
> > > +	return true;
> > > +}
> > > +
> > > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > +			   const struct intel_cdclk_config *cdclk_config,
> > > +			   enum pipe pipe)
> > >  {
> > >  	int cdclk = cdclk_config->cdclk;
> > >  	int vco = cdclk_config->vco;
> > >  	u32 val;
> > >  	u16 waveform;
> > >  	int clock;
> > > -	int ret;
> > > -
> > > -	/* Inform power controller of upcoming frequency change. */
> > > -	if (DISPLAY_VER(dev_priv) >= 11)
> > > -		ret = skl_pcode_request(&dev_priv->uncore,
> > SKL_PCODE_CDCLK_CONTROL,
> > > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > -					SKL_CDCLK_READY_FOR_CHANGE,
> > > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > -	else
> > > -		/*
> > > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > > -		 * timeouts; the 2ms used here is based on experiment.
> > > -		 */
> > > -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> > > -
> > HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > -					      0x80000000, 150, 2);
> > > -	if (ret) {
> > > -		drm_err(&dev_priv->drm,
> > > -			"Failed to inform PCU about cdclk change (err %d,
> > freq %d)\n",
> > > -			ret, cdclk);
> > > -		return;
> > > -	}
> > >
> > >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > > 0 && vco > 0) {
> > >  		if (dev_priv->display.cdclk.hw.vco != vco) @@ -1781,6
> > +1818,49 @@
> > > static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > >
> > >  	if (pipe != INVALID_PIPE)
> > >
> > 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > > pipe));
> > > +}
> > > +
> > > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > +			  const struct intel_cdclk_config *cdclk_config,
> > > +			  enum pipe pipe)
> > > +{
> > > +	struct intel_cdclk_config mid_cdclk_config;
> > > +	int cdclk = cdclk_config->cdclk;
> > > +	int ret;
> > > +
> > > +	/* Inform power controller of upcoming frequency change.
> > > +	 * MTL does not follow the PUnit mailbox communication, skip
> > > +	 * this for MTL.
> > > +	 */
> > > +	if (!IS_METEORLAKE(dev_priv)) {
> > 
> > Is there a reason to believe that we'll go back to using pcode again on future
> > platforms?  If not, then it would be preferable to use a version check here
> > like
> > 
> >         if (DISPLAY_VER(dev_priv) >= 14)
> > 
> > since we usually assume future platforms will follow the newest platform's
> > behavior.
> > 
> > It also might be best to flatten this out rather than using nested if's.
> > 
> >         int ret = 0;
> > 
> >         if (display >= 14) {
> >                 /* noop; Pcode not used for this */
> >         } else if (display >= 11) {
> >                 pcode_request...
> >         } else {
> >                 pcode_write_timeout...
> >         }
> That's is definitely neater.
> Does the rest of the patch look good?

Yeah, aside from the few minor things I noted, the rest of this patch
looks good to me.


Matt

> 
> Anusha 
> > Matt
> > 
> > > +		if (DISPLAY_VER(dev_priv) >= 11)
> > > +			ret = skl_pcode_request(&dev_priv->uncore,
> > SKL_PCODE_CDCLK_CONTROL,
> > > +
> > 	SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > +
> > 	SKL_CDCLK_READY_FOR_CHANGE,
> > > +
> > 	SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > +		else
> > > +			/*
> > > +			 * BSpec requires us to wait up to 150usec, but that
> > leads to
> > > +			 * timeouts; the 2ms used here is based on
> > experiment.
> > > +			 */
> > > +			ret = snb_pcode_write_timeout(&dev_priv->uncore,
> > > +
> > HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > +						      0x80000000, 150, 2);
> > > +		if (ret) {
> > > +			drm_err(&dev_priv->drm,
> > > +				"Failed to inform PCU about cdclk change (err
> > %d, freq %d)\n",
> > > +				ret, cdclk);
> > > +			return;
> > > +		}
> > > +	}
> > > +
> > > +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> > > +				   cdclk_config, &mid_cdclk_config)) {
> > > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > > +	} else {
> > > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > > +	}
> > >
> > >  	if (DISPLAY_VER(dev_priv) >= 11) {
> > >  		ret = snb_pcode_write(&dev_priv->uncore,
> > SKL_PCODE_CDCLK_CONTROL,
> > > @@ -1953,6 +2033,26 @@ void intel_cdclk_uninit_hw(struct
> > drm_i915_private *i915)
> > >  		skl_cdclk_uninit_hw(i915);
> > >  }
> > >
> > > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> > *i915,
> > > +					     const struct intel_cdclk_config *a,
> > > +					     const struct intel_cdclk_config *b) {
> > > +	u16 old_waveform;
> > > +	u16 new_waveform;
> > > +
> > > +	if (a->vco == 0 || b->vco == 0)
> > > +		return false;
> > > +
> > > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > > +		return false;
> > > +
> > > +	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> > > +	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> > > +
> > > +	return a->vco != b->vco &&
> > > +	       old_waveform != new_waveform; }
> > > +
> > >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> > >  				  const struct intel_cdclk_config *a,
> > >  				  const struct intel_cdclk_config *b) @@ -
> > 2759,9 +2859,14 @@ int
> > > intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> > >  			pipe = INVALID_PIPE;
> > >  	}
> > >
> > > -	if (intel_cdclk_can_squash(dev_priv,
> > > -				   &old_cdclk_state->actual,
> > > -				   &new_cdclk_state->actual)) {
> > > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > > +					     &old_cdclk_state->actual,
> > > +					     &new_cdclk_state->actual)) {
> > > +		drm_dbg_kms(&dev_priv->drm,
> > > +			    "Can change cdclk via crawling and squashing\n");
> > > +	} else if (intel_cdclk_can_squash(dev_priv,
> > > +					&old_cdclk_state->actual,
> > > +					&new_cdclk_state->actual)) {
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "Can change cdclk via squashing\n");
> > >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > > --
> > > 2.25.1
> > >
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
