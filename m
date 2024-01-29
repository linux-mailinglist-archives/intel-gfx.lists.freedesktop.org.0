Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C285A8409CC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 16:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5034A10F15C;
	Mon, 29 Jan 2024 15:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B8510F0FB;
 Mon, 29 Jan 2024 15:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706541757; x=1738077757;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IeP0DrB/PGW9iWA6OaGW9zUqnzz7hFIEbC0/LFS1BQw=;
 b=Zi/M5IzEoqba7JjYVUjlzsjpXkVRv2wnCYwIgW9znnEt70dyPZLZr6rH
 5YoZX1vyxrA9CPcUzuGZ14hzO2GEYwNoSAKvYo2mMorVc2BZTENM41F6j
 Lmij98UdVkckFTQZXGXHUD+fJbciqI0uVLp7TK40YvBDbAvXIfO35FiKf
 ZafOx6txAiDM0ueJtLixny+/F1bg9Vu8kf+rV5uZ9lHcEzu3gX72VIVJz
 eDji3igcWsYkT8FcMV+naR/kTgk0U4SLfEtg7bBjoV4eYrUADf7dVNMQB
 emZ0dLms3+aiehNgGS3UMOzzupr5vwjeeEuisBp2mjyRIgS/KUrfkGBXy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="393415370"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="393415370"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 07:22:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="960913057"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="960913057"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 07:22:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:22:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 07:22:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 07:22:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dylx9ImBDkTQtoUGdr2M1WkU90xaD5Z1qzQe4EmVRtRQsuN/C4aV85RqLxhA804zkkRnyc6NIa8vuOF8leZbAnEg0BTNhaOu2QbkDZvsgt/M3Xl0TbsHe4SMdd9JOhND9CzeJB8BCtMD3FFLpX025NzOdEhXrdJzFAgC+43fK9CafaTqQjKvLSvZKMwDIK4ILXjijGfOb2bvnZ8Y22ZvNtL94wHTtYl4HIKZoExrcNMgexzriTjfDU3WLQKZtInN8RkbeInEbHiiXYktoOgO5qVxuUowvUWUVBLW10UfKwEADFRGdZGNtUhNbpvcZLkV3ONZv+slqp9ahyOVwnFiJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eA/4ZkZQ6zK9XaTAoXFNjFdOMxQ7WUl6f4gOXvMSrCE=;
 b=bYFltwm+4FfXlk0X8CJ87YrhuSJFIwsKe7apnezIquZizgC8G4huHYylvAJQH4F31hgaTWilDNqhRugsmOrpoSHhjFsHk0kpvq0mXFVLn3rDepIts2kVwP+j37bh+e0oVAGMZjiqPYmV5NzSYDYkEtig33D3Qmiz+Ls4S1/NoBsIDeyYH0j2p8l5iZAOLZSSn0RNHmCKzQ2MLhAkTfSmpkJRFc4R7xStE9m81d2b+5XZ4+8T9+MOkcPZomgivJCtzxkrSBrGUBsNTD0hpBIlgoeQGEhAZYBGjTAYraneLFxejZKDmTyklIpR3BViJWTPNY/ODBhDtDYyiYff74Lgyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5580.namprd11.prod.outlook.com (2603:10b6:510:e5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 15:22:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 15:22:30 +0000
Date: Mon, 29 Jan 2024 10:22:26 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: Re: [PATCH v2] drm/hwmon: Fix abi doc warnings
Message-ID: <ZbfCsl4xF4ymsSbm@intel.com>
References: <20240127165040.2348009-1-badal.nilawar@intel.com>
 <85ttmyczbz.wl-ashutosh.dixit@intel.com>
 <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
X-ClientProxiedBy: SJ0PR13CA0016.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB5580:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dd08a89-ad91-404b-4d86-08dc20de1bf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RkrjP9TCoAlJk93Xbq+PnJFntXB6gwA4p9VB/NAOuPjwFp6kYhjyB5xR8G81bHX0IW90/beM6fwHYIdcqaE4MgkovF6Hr4/OR3oOPe4fQt50sDNr8A631KTTKh680ieu+JdZMmEbyoM/mbcHMotNQ/pf8+Uuve6r1xPI3OdjU7LXhoI7hmYFJudGI8oRoVOBAqBVFKaA12YYFLi5UnNHeDw03xINbbPj2eyTuWX9dqD53V/C3TEgeFld1NZ7JhpKcjZC+ZHfIa/6Q5SBD8TSYkndUhwQupLKGeWrjE+NpNuYzveoa4CnT2FCUiTzofM+234g+c7TxavEfQeTNIgtVMIoBU22o9+CqTQCU5X6/i4/IETyy2ZRVCBZFN6wua2xeFv4y0wDooSjiPyEZkZe4XgPhymXTYDehiKMXtv2Fc4bhNnGfYNBV0LC7mr43CP8a4SrzY0naMXgCOvNDeziPtcIOevWZd0/7j7taTDobpnsY1o/Soz2NQCq8osnrgigeHQE0KC1DYZpUFlRujnF/vvtwN+eJoUn64CUO4Ehh2N4HZLdCLNhgh8F98AxqklvaF4WuTYOZf9eOXd+E8RRFw8UXaQvuR0ztWe0QagMdRZCP4ovlZdgvzTfnlfxRhhc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(230273577357003)(230173577357003)(186009)(64100799003)(451199024)(1800799012)(83380400001)(26005)(6512007)(6506007)(6666004)(36756003)(86362001)(82960400001)(8936002)(41300700001)(8676002)(4326008)(6862004)(5660300002)(44832011)(38100700002)(54906003)(66946007)(37006003)(2906002)(66556008)(6486002)(2616005)(6636002)(66476007)(316002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HIyGCiu+d1CP/D6fggpVU9e3yS9hxB8N258a3MSm+X6pqKgghi3R+Txq67KY?=
 =?us-ascii?Q?mowq/UWqKcesQoNLfekRloZMhb2T6z8FZPWB+/kIKF7z2h+D1GT16NBxYNU5?=
 =?us-ascii?Q?liLjQqtd1dfh9v6Vsm4wnKihoRSnBv6n8oN1JiO7bXpI458+3tYgh1bShyg5?=
 =?us-ascii?Q?A28585EbS50JtVTui7vFQnPo9Coe9u2HmghJlFED692JXS5XPF1299ttaUcd?=
 =?us-ascii?Q?wTgxG4LEFRscgd9XQZE8q7Ks26/8cGy315jiAaLvlzm7r+lLzzdMMbjdejPs?=
 =?us-ascii?Q?w795QCas9gfTyCTcerxW3J564+BbVSslzQJjJR8xBXeKIq0Usa96Vu7xxgNI?=
 =?us-ascii?Q?VYStoqyr4wpxR9yVlpKixAkeZIFI00krEOxTGQ2R9X3cdfzcVGNYIpyxPt1K?=
 =?us-ascii?Q?VWkcxl4Uxrt6VEUgQSPms9oWDRcB6Mz+zCC8eJ1b5ldoWbRwPVU4YMFAiwew?=
 =?us-ascii?Q?SV3QVQsBaFNEIpIwhfYOhtNWI6w67RZaVDETVqnae53fIa20mkec6BSpWjTd?=
 =?us-ascii?Q?Lgwe9b7aLdkbaB+cta9Ia4WAnK/yrYASdQX7iEELUHq5wOMNOrbu7h78XREd?=
 =?us-ascii?Q?aG9ZmVtNQ2lh/RbfxDqh11wRAz1CQx3ZgP72BraqeupzIfDeci0MU3huIKNM?=
 =?us-ascii?Q?14Qriu/gEt5zZS2X9oxNXH585ABCSDuvfX9ite5+6J807500Y0XM/zBGo0cU?=
 =?us-ascii?Q?iC2oAvbWZiJkp76+8KJV7wp3KCIwYOPhidSLj8GIIB8WjKzpJFb9l8aPZVDP?=
 =?us-ascii?Q?iOn3NpEfEJKlxDeySqcZA4TcJ4u9ytQTv1iu9IHs8EJkNbgbTbPueyWxdgCc?=
 =?us-ascii?Q?yi2q3an8qLKAI1zT1+JSzZP6y9Sj5WhujqUPUUBskVqjLFHgm6JOpEU/EPpY?=
 =?us-ascii?Q?w+oCM5lwlS4aA9M4Z0QdVIwhRx6FYYKLT0UBsqU2T03TLXggVoMmKyJ7l+Ij?=
 =?us-ascii?Q?pJEk1EV5u4Nv+VixBlh7kQwC8d0QSzsumSX4ExulcqPZeSoTJ3FJPrA8f/+Q?=
 =?us-ascii?Q?j4CXsoopZWAvdMdouNtRoyZhl0AuEZBI1+dY2dxqUmnSOtz+88Zc+j3R9JBU?=
 =?us-ascii?Q?+lEeEL32vYP2WPDymEun0fxWMlF9Jp7v+DfyEbPJQmkP+T7PJhC/61YiSn9C?=
 =?us-ascii?Q?ABKO2BdDPMWFH86thXIwHOy2x5JZSxV2/uZXdf84aAvpEYw3WfBqVcC+VZnm?=
 =?us-ascii?Q?lL5QPxfPOerQ0/Cl7g8SqAFXxfg/IeKeUtRlSq0tL2mfKckr2cFxEj+IUKia?=
 =?us-ascii?Q?j33TrXiW+c//77A9N9ZCR5UrhHuNVClx19zjn9j7w/TBVNZlI3si0ECGSs6u?=
 =?us-ascii?Q?gSK61hSFIYFRsPystXmEH+SnpIG+3WW3QERHFfWFa4e88UgOvltYkTottXDW?=
 =?us-ascii?Q?mtbskvuMSE7KniJLkhfAEk7EW0oIiXgLWMuJAaAYC/AVYWZvorAuIwt3ssNH?=
 =?us-ascii?Q?MlWlx3wr+/o0lX1gWtAXMbW1fTMJnkOVpWCvRl/zfwx+HMP9sYwTQMb2Ua3S?=
 =?us-ascii?Q?YuEQt0/0eP5dCW4qGpfagRRGPKyfBeMzrEbZd/Y2InFqcwEaeGSR9z+cS2CR?=
 =?us-ascii?Q?MDOIZUqAHj+Gci8wHBI8QddCCbAS1y1UtLKwH0Eo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd08a89-ad91-404b-4d86-08dc20de1bf0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 15:22:30.6063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7uPNfvP73n2V0jmnx02PvX2alUCoGVCQ3KsWSNdNrzGY8faMYI+zNE5ccfP4wZotqgkaT8klUt4Fexdb01J46Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5580
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 29, 2024 at 09:18:59AM -0600, Lucas De Marchi wrote:
> On Sat, Jan 27, 2024 at 12:10:08PM -0800, Ashutosh Dixit wrote:
> > On Sat, 27 Jan 2024 08:50:40 -0800, Badal Nilawar wrote:
> > > 
> > 
> > Hi Badal,
> > 
> > > This fixes warnings in xe, i915 hwmon docs
> > > 
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/curr1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:35  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:52
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/energy1_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:54  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:65
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/in0_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:46  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:0
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/power1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:22  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:39
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:0  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:8
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max_interval is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:62  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:30
> > > Warning: /sys/devices/.../hwmon/hwmon<i>/power1_rated_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:14  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:22
> > 
> > /snip/
> > 
> > > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > index 8d7d8f05f6cd..92fe7c5c5ac1 100644
> > > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > @@ -1,4 +1,4 @@
> > > -What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
> > 
> > Are the warnings happening because this path doesn't exist?
> > 
> > > +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/in0_input
> > 
> > So this I guess could also be
> > 
> > /sys/class/drm/card<n>/device/hwmon/hwmon<i>/in0_input?
> 
> no. the issue is not that it doesn't exist, but that the same path is
> documented in 2 different places. If the interface is exactly the same,
> there could be just 1 place to document it and then reuse the same file
> (without the module name). If the interfaces are not identical, then we
> should differentiate them like is done here.
> 
> +i915 maintainers
> 
> Are you ok with merging this through either xe or i915 trees
> instead of splitting the patch? My preference is the first option.

it won't conflict with anything we have on our side there, so
it can go with drm-xe-next.

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> also tested that this fixes the issue when building docs.
> 
> thanks
> Lucas De Marchi
> 
> > 
> > But no need to change, what you have is also a valid path. But maybe to
> > make clear:
> > 
> > /sys/bus/pci/drivers/i915/<device>/hwmon/hwmon<i>/in0_input
> > 
> > ?
> > 
> > But anyway...
> > 
> > Assuming you turned on the htmldoc build option, could reproduce this and
> > verified that this patch is fixing these warnings, this is:
> > 
> > Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
