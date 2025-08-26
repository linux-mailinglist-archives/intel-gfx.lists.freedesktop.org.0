Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510ADB372BA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 20:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC13710E399;
	Tue, 26 Aug 2025 18:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NREVy528";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B560710E399
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 18:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756234691; x=1787770691;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=krru+YNAjuqnaN/YGXYkFU+HYBjHo+0VAegJBCT7g2w=;
 b=NREVy528zfrz8AHqi5SO+p8Q4gaKbCvisfLl5Nzd0KsgZ1eqaiUBYN4R
 PnNExL/oMLSvFPrw3wM7oc2VcAYLJauB7YJ460L65SvonTvuvL2AbGStc
 foMsw0fiWfcK3FTM2mhU6wDqtJ7KAZFS9udWL8y55C/UlN0TpDUMBFA1t
 a1IupOpOvUHLl51H4SHScPxgz4MlVfbGFJR/Aqf+JsKrhwpTW2fExKpdd
 vYPQveNDV87BW9jet5cM8/k8l+q1rbHhd9CVTs9slo+luTQRK6Q6L0TsM
 3jdIDPYzy9dd4GHi6vdbzpKEer3okzMDErnA4xRbmBrdqr6gur9UEx5xG g==;
X-CSE-ConnectionGUID: BiHZgtHGQOmTwve+WBTKLg==
X-CSE-MsgGUID: H2eEQfRVSI6Pj5wR3S4t6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58192504"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58192504"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:58:07 -0700
X-CSE-ConnectionGUID: HUUDur74ROaA9XcVtlJXgA==
X-CSE-MsgGUID: 3L33gvmTTzCAThVwTTeJ2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="170027525"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:58:06 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:58:06 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 11:58:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.76)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:58:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JBnGN8TiyBELTnRhvOK1mWeMUjLUVQfGvgbqB0pvLns4lwuX1AX9gdAMRKZ3x6YvZDixsI0wpmeJnhw3drnTjndgupqKdNwaN3LSp1vlcV99oB7DqcXn06c0A+flSgWGZ/h7BDwZCJ2KZXksaWcOf98FwJJVw4RjqkDkOBrIATtL75xJ8LuGowIvvuIzdGKzuBn+lYMZ/yr4YuWsUB6WVivnut69s/9Pj4JpIxxWa86qYgm1QTv0rbmbhU/MCTZmbKSXbj+dl3mWqbuP7Nfl4jmTNtoYyEPrFWcqdPbE/Uv2W5hMHzj3rZct0jFPvoLt0zbY1T57ACHEYiewNxagNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=370neofkgfPagkPdSPPVzL0RFdyyaCTcNw5gxYc+/Vo=;
 b=ZgfoHr6j+m3BH58xWbBArEdQKYqhuGSry0B84ik3M1Px1RpimTH+umnZt6+0FSzN5xsGMn26y+1TB2ly9/Gx1u49OlRlxQ8de3V9syVVtE3vqw5UvFthP1wgTS2MIPIZEwZVzDuxnzSieYRfaygoq230OEnfDwuuOfCB9KJmssLbj7eE71y3+PFViqt87UEOkMsUFNpg6OjKEW3A5R0CtyAAtUixyU1aoi5fJczVc/3mbaK/DfMhhqUqXw8xu2KF2e2/QWQGZwd39jQwXS+Vm4UjLGxKHNjKDV7MGoYDjPuovM59i7BvnM9xIEXG+xxZqwpkCN1OAMW5iqI3w9pZ+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by DM3PR11MB8684.namprd11.prod.outlook.com (2603:10b6:0:4a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 26 Aug
 2025 18:58:01 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::1a0f:84e3:d6cd:e51]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::1a0f:84e3:d6cd:e51%4]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 18:58:01 +0000
Date: Tue, 26 Aug 2025 11:57:58 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Harrison, John C" <john.c.harrison@intel.com>
Subject: Re: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock
 and prep
Message-ID: <aK4DtvLofXTF560w@lstrano-desk.jf.intel.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
 <20250826154352.90434-6-jonathan.cavitt@intel.com>
 <aK32/xgF+Lmvafj4@lstrano-desk.jf.intel.com>
 <CH0PR11MB544474E157B89A5A4D6F5B5AE539A@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CH0PR11MB544474E157B89A5A4D6F5B5AE539A@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR01CA0010.prod.exchangelabs.com (2603:10b6:a02:80::23)
 To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|DM3PR11MB8684:EE_
X-MS-Office365-Filtering-Correlation-Id: 25c374fb-e92c-47a2-d93b-08dde4d27aea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sVw++u8sj8ANbhzJ1/8Jfv/1E7HHfVciuRZYZCVyZ8FO2j/GIl+eKxVjk/kn?=
 =?us-ascii?Q?51xWt7hjqowt+c6DqnihWEMN8LNR0cgJC2uqAUVqcK1SJvK27BlLkrru8UXE?=
 =?us-ascii?Q?2OpJLLYNul72Z6sI1yF1zg+JR8B3L4dEY6vHNNPB/SrZNxMSZsgyB/YldTTb?=
 =?us-ascii?Q?q9YKij3k8oG8kWyQzGadcLGG/Dg9oXo0yziod5UKZ2iYom+9GzF3V+ocmJgb?=
 =?us-ascii?Q?MD7Wjjn5AkL0LrDRXVEWQkXluv/gouosqQxQUbbFYYhw1JzmYDTMt//IylnN?=
 =?us-ascii?Q?vb+bnrmHUq6mYS8N50v5n+DXdE3lzknn1OYsYSkE24PwWBmKtNprfK3PMKou?=
 =?us-ascii?Q?VOvm6Rnf4WiUBCPzR5e15r42BVaD24ClFxLAzrozBXcppYaPf2IvIJcBJY1i?=
 =?us-ascii?Q?HK4MQryTma4r43cmggtoOS2RiUUln19VxPshByH1I7VsWtMZpwpRd9ViQ72u?=
 =?us-ascii?Q?nzSD8ncqtLJ6fNgjLUHrHFg4PRBhKbS/o4rbm2dqZAX9SjJhrQ+P05tOKJ8s?=
 =?us-ascii?Q?Ta6qLu9facliOpsvoP4ggZgqIsKFe1ki4QGGjm6p1fpqDXgjdDN8wtsrXZT4?=
 =?us-ascii?Q?359AS49yCWcpV5lIg9WGVfUdTNHDHEql+IYasrVeiyV/hm8YCCRUnUqFpjuT?=
 =?us-ascii?Q?YtHRv/1cJ+I4wY/ILEBAtgfPz3p6+LY98ynKf0atuqxeFf2tVM89wUMWS8cn?=
 =?us-ascii?Q?7abcrYA6LJXR63yAdL94PvlWZHsLQS/YBUjpZjlp3GQk6cad8vQvrpYpLd3e?=
 =?us-ascii?Q?xljaGAhyYt0ocAA/WB1MjnR5UVApM7GivgVQ9PlcW2aC3yvMMjivrJC/ccal?=
 =?us-ascii?Q?t96EYTa/elLvrTTz0/br3o35RU8hzxnb6YSGfctJtiRS3qB5MC3fmLRfDpbQ?=
 =?us-ascii?Q?m11rpxspwV8TqJ3HRTbiyCwiBhs0kbju9h6uxpmBDFVMie4SHM5jcfxOBQM1?=
 =?us-ascii?Q?5KCGPaCWdKKjI9GY1hP/2a1gqiH1nC2S/Z8pn/Hmii4Z8geUBHGdmrcJ+ys/?=
 =?us-ascii?Q?56ZYAqnhd5/KWqHnr7N7DlJh6tf+fpdprFrg6gj0wS2vdcO31RSvx6AYX2kq?=
 =?us-ascii?Q?l+le0z0Q3ba0W6vGavFAgme+WTmCO0XVzYgyLEkU2KgaN38XL/fWHGXKSYW3?=
 =?us-ascii?Q?a0SPczh2C3YIDs4AFAbi1ns8+Vg/bB+hdKFV8zc98+V2JMhaYLjgSkJH7PQP?=
 =?us-ascii?Q?hFbGPX002NSER5yOgMkc6BbLzxph+B2G5zHU/o47Ww49iQAb2nXhJzcD/quF?=
 =?us-ascii?Q?2Yc1/Of9WGLgX1nhgUW/0z2D45yoMTLaujkSYWfbqXHL6bb3qSYbHOTFA1b8?=
 =?us-ascii?Q?aFKF9pKPcKTiYXmc9KfgZoLLT/3Dqw7VF/ZH5+QJ3OM4kHJL3C6RFq7hptXt?=
 =?us-ascii?Q?/etdwC68/i05ZAAx90DQQn7IximY1mOSraqzTj0YOcdUYd32Z0+03nfDyc9J?=
 =?us-ascii?Q?dRVO65EMN7Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y19e+XtSaV1bFyGHGJpg9CvekRP0+nMwtIU6YSpiqYcYoeL6gZNDt8r7SdPV?=
 =?us-ascii?Q?nArKhQX7LzFIhYonJ2jVZfy6rVDvChqP5bBWe1nLzVMItgUBl+4Ksk+lFgyE?=
 =?us-ascii?Q?lxlEg+dSYpjbRiWBiRKTqQgwWJIlzcWZ83Lw4WSfTMstw5O36f6vlVqE6zNI?=
 =?us-ascii?Q?S23Jgy1aGRtS5Wgzd9dZPI6BPX2a2G+7rsAXsvwqKSSRht/PHTfGFD0u/AoR?=
 =?us-ascii?Q?9fT016LUgPpK505HFlUTi6aCZdTR0L3uBNqAu9KkdiIlKgL0lPFu1TNOXAAV?=
 =?us-ascii?Q?DrisiBwt1T3dQDToXi2XlMre+VNMcZGJR+Xh0mLrdbn290I/XBIc59dOrzXL?=
 =?us-ascii?Q?MIv6x5yzrRK6fG4cn4OHdI7lIX3CoUX0Vx13Qy0yZxn7WZyCpb8PHvVR9tZe?=
 =?us-ascii?Q?L1uf36N9zPua0V2GOalChu/Jn/e/gTFBCgYN62x0VEe+Q8wYUNFwQaoZgf77?=
 =?us-ascii?Q?2ZLEgUj6iCqTjS4pm61MJcMSHHc8ouNO7vLEvBHtuS5W0z8/gYZ6dHAQsRts?=
 =?us-ascii?Q?lM6BiHgmios/tYZwxlHGkbsd/GB0++Rr9h8ZpX6OMNiHLJN4tydmY/26J3v9?=
 =?us-ascii?Q?TdktClqcwKBRu3y67nTyXRyP2+c2dYXEAu0mzicWzXgGxf1SUo18KwH1TSvG?=
 =?us-ascii?Q?QVJ9Mj1kBtY3H/pA2Z0SEgc5MTB8onsuQ25fAmwf7S8zs2tFqzSNXqPb0AKC?=
 =?us-ascii?Q?aTUiLGvG41LT4uaatlR2Y1YeP902vOlicReOZWwIn9JwNbvOA9FDpIqDqdXB?=
 =?us-ascii?Q?14Mh/AXt56BM+MC5NmIxVDpMn3CLXLdVKF6Y6lsOk4/tDWlvqlNmLCvelxpo?=
 =?us-ascii?Q?VTusLWvHESM/EaaJZyMbtn5WL6Z2KlkZ/CrStcubQwtCYS9Ft7pQve4SeahX?=
 =?us-ascii?Q?yvSd0FuB9SQAxo4o1DrDH/CrSLLBbTMJrttN1xv4gM/fN+2H2mi6xKLTeZIk?=
 =?us-ascii?Q?iVHZdAhYEK/tJUnr/4mGxjGROOhs+RT7sG5SzfMmEsM8YgJMlAqtDSkIL06x?=
 =?us-ascii?Q?cLtylF30pgaXYFGj3FwgI2SS4FIqsBmBGjWGUYLFuHz7/KFCuNNrK+hcgUXy?=
 =?us-ascii?Q?h20PE0Y6ivrEBnWqEn1AGbwemFBdBybi3s/sWjtuZt7GqkC6bl/CtVFPhm72?=
 =?us-ascii?Q?jiXSeAccORGcEsAHsdgaWuzdEHPh/A3ffwtOE1dRMw6136Z838DSoTGIIGme?=
 =?us-ascii?Q?rQIRSqqYoxo0zNoGXcngjies6pgotjclvqneEoLvUXT3Fq8ktYduxPZHTgoE?=
 =?us-ascii?Q?VZi0eGlhKQ+iewfBqTFbFMizlgwxQQH/RRhrJDDCwNcRX0xUGQV7e8T0N+xL?=
 =?us-ascii?Q?JxStBsWRthQ3sJaWiTQX6Toe1Bz/8PnKvUBmjO8KuScG9PeNfxMsmEzmXyaA?=
 =?us-ascii?Q?BMcf2Y7aSpYQcosu67NbsWdXN2H5lnTUz7Jq0Ax1cFH5daLubHbnNiSwcA2f?=
 =?us-ascii?Q?eUtuL4ObJY7KBaokN/op6eS8Dw44PLFh8ZiegAM//Qm2nMJP7ecadC0dj6Ij?=
 =?us-ascii?Q?mU705GtsXxGltwMN2kGuDU8QJGzqz9L80ozzgy1qWPsSjoMz4HucVhA8ulS3?=
 =?us-ascii?Q?3Mo+PxiSxXs0rYuVqGIpxwhtuE7wBNyEJEYJWXqVgfk3Rv+95gy0nkETR8tr?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c374fb-e92c-47a2-d93b-08dde4d27aea
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 18:58:01.5032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RzZRBoY2GVq3NBniv9CSU0PEGB4GTqMPrYvofftqzfjqXjOkenq4tLwXMaQLcFurHiiqIc72ok1NYTCfBgbhVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8684
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

On Tue, Aug 26, 2025 at 12:34:27PM -0600, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Brost, Matthew <matthew.brost@intel.com> 
> Sent: Tuesday, August 26, 2025 11:04 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Harrison, John C <john.c.harrison@intel.com>
> Subject: Re: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock and prep
> > 
> > On Tue, Aug 26, 2025 at 03:43:55PM +0000, Jonathan Cavitt wrote:
> > > Add error injection support to the function
> > > vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the function
> > > as noinline.
> > > 
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Cc: Matthew Brost <matthew.brost@intel.com>
> > > Cc: John Harrison <john.c.harrison@intel.com>
> > > ---
> > >  drivers/gpu/drm/xe/xe_vm.c | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> > > index 1a8841116e40..e527c90b8c33 100644
> > > --- a/drivers/gpu/drm/xe/xe_vm.c
> > > +++ b/drivers/gpu/drm/xe/xe_vm.c
> > > @@ -3201,9 +3201,10 @@ static int vm_bind_ioctl_ops_prefetch_ranges(struct xe_vm *vm, struct xe_vma_ops
> > >  	return 0;
> > >  }
> > >  
> > > -static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> > > -					   struct xe_vm *vm,
> > > -					   struct xe_vma_ops *vops)
> > > +static noinline int
> > 
> > Ideally in [1] we'd have something like this:
> > 
> > #ifdef CONFIG_FUNCTION_ERROR_INJECTION
> > #define error_injectable noinline
> > #else
> > #define error_injectable
> > #endif
> > 
> > That might take sometime to get through, but in the meantine can we
> > define something on the Xe side for this?
> > 
> > [1] https://elixir.bootlin.com/linux/v6.16.3/source/include/asm-generic/error-injection.h
> 
> In the short term, I think something like what's done with the xe_is_injection_active function
> in xe_guc_ct.c would work.  Let me try applying that.
> 

I would just add 'error_injectable' define like I suggest to common xe
header file.

We might be able to drop xe_is_injection_active too but perhaps there is
reason for injecting the error after setting the CT to broken. If there
is a reason for this, then keeping xe_is_injection_active makes sense.

> > 
> > > +vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> > > +				struct xe_vm *vm,
> > > +				struct xe_vma_ops *vops)
> > >  {
> > >  	struct xe_vma_op *op;
> > >  	int err;
> > > @@ -3220,6 +3221,7 @@ static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> > >  
> > >  	return 0;
> > >  }
> > > +ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_lock_and_prep, ERRNO);
> > >  
> > 
> > We absolutely need the same injection points which are removed in patch
> > #1 + an IGT with the same coverage. Please add similar points. VM binds
> 
> They're already present.
> 

No, see below.

> > are a deep software pipeline that can be unwound at any point of
> > failure. Different injection points trigger various unwind flows that
> > need to be tested. It took me a long time to get this right, is easy to
> > break, so we need good testing in place.
> 
> AFAICT, the test xe_vm@bind-array-conflict-error-inject test only exercises
> the vm_bind_ioctl_ops_lock_and_prep function.  I can add additional points
> to test in the test file if that's what is desired.

grep for 'TEST_VM_OPS_ERROR', those are the injection points. Internally
these points are iterated over on each injection. i.e.,
bind-array-conflict-error-inject runs a loop over each engine instance,
we have 4 injection points, we more than 4 engine instances, so all 4
points will be triggered by bind-array-conflict-error-inject. We need
similar coverage to this in the IGT (e.g., build a table of injection
points, pick the next injection pointer each iteration.

Matt 

> -Jonathan Cavitt
> 
> > 
> > Matt
> > 
> > >  static void op_trace(struct xe_vma_op *op)
> > >  {
> > > -- 
> > > 2.43.0
> > > 
> > 
