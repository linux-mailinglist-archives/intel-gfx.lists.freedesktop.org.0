Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA9A8A5FFF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 03:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C58810EBB0;
	Tue, 16 Apr 2024 01:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ECDxCL0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E8110EBB0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 01:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713230006; x=1744766006;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Hv0LDJFHMkm00/d9L3uGoUZ1XtsHKDqpyytjtYj/3Hk=;
 b=ECDxCL0FL+GT9/c9d/s6rSmSYdql44Fob3a4zxLvz5KovOqgtegiMnjX
 fSZEUPm5GK1ozVZw9aJJzdnTYFIfEye6QBUP7hVW75rEWbW10YrzNqqT/
 FzNpYCiUS1FDOhc4nJwhdFHUBy2qtVi7Us0Y/wagD47R5EHFx/S5NdHcF
 uGxBZO9kePZ4xYnXeqnMCHPt9Qdx9FuD9sF9/ub9c8z2LxE81TzwBPiJm
 D9Yiydxv1iHdAYJtGQOMu7JZHAa/WKVBmzDao2XQtLTPeyj4F9neSZd56
 pYX1583Oc0AfOJ4Aw1Vf68Ex/KHTn//VXTTV+T59SdyXXDwtWS4CsF6sC A==;
X-CSE-ConnectionGUID: jnZk30SxQeuqcymfP2J/PQ==
X-CSE-MsgGUID: Tj1p/8enRhO37qXyl1pxrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19355397"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="19355397"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 18:13:26 -0700
X-CSE-ConnectionGUID: PVxA7DXlQkij5m+ZIbiY0Q==
X-CSE-MsgGUID: xa1HE1rHRcm2pYzjzK+Wjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="45378396"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 18:13:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 18:13:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 18:13:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 18:13:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzTXZtOvsCfsYmW8xpbQwM7dR97tpDsD5cUG35dFLUV6OQxEMRB86/TXCFBjKQ1aIaKZ2LJp1RsJOdoFeE6jfhVis3q/0zqLuL8W+u4N6OSzglnTsQIDix/qgAfdDTLiXEzxg8dctfe8BXZ8PreAhIDgtFfMsxcCESq28fThRPwl3Zeu6VIhdQRoWBB0emiZuPsU5fitC0MvbU0Gxi3c0Pxy3goODZdgNPa8JOkSvqqpgfCgTCfwTZMK6DIyilPxU9WWnTj5iDcA4Zi0FHYQm356HX5M3yKzjMKtJP1SjoibZ7mSOvbjRP99fGfVlGpwOQM3l7Xo0xY7HO+Ho6jjaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bqu6HTD5Zn1flOn7Dg6z/1tJqqwtRbfIcWOQ2W+nXho=;
 b=hImPbzAAU+LllHF7Mbo3exX70pUBKHgSjU0uUW77WP5RPkuQS+Ea1ejG7eukcah5ibLgDUfmCX6ii59cTJ7AyJ27ciQ4HJK1xKVjdxkDsq4kUxZw6vA2ljG7FESFJ+ZurCyyH5mdRlMxwsrTUV9IPsdbZ442NFLI8VM7HLo1jv0FrD3+DMDbnBu6O9+9PfmNDV/4RTGg4CruPJP42MBysgJGPJniYKJGA7gojAPuAv3QsPDzN4+nGmvi7LRkshDKSmnfG+lGCyV48NM1OCClWdonkeZ785LkgvEMMbQ3FKop5OShzjOw4LNN4CCaYG4xixO9KB8pXX0VWkNoZbEa8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by IA0PR11MB8377.namprd11.prod.outlook.com (2603:10b6:208:487::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 01:13:22 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 01:13:22 +0000
Date: Mon, 15 Apr 2024 21:13:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <janusz.krzysztofik@linux.intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fedi?= =?utf-8?Q?d?= & drm/i915: vendor and product id
 logging improvements (rev3)
Message-ID: <Zh3Qq7f7bfyMKsUn@intel.com>
References: <cover.1712655867.git.jani.nikula@intel.com>
 <171286159857.1341683.3160591903841939436@8e613ede5ea5>
 <87sezr3szy.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87sezr3szy.fsf@intel.com>
X-ClientProxiedBy: BYAPR01CA0027.prod.exchangelabs.com (2603:10b6:a02:80::40)
 To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|IA0PR11MB8377:EE_
X-MS-Office365-Filtering-Correlation-Id: 5059133b-a883-444e-4d52-08dc5db268b2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: neNhGp2MoMSTaoGa6r2acpCk/e56Jf+IA2mU8DSj9ELkKkO6wJKJU5xlwaRiS5UJc0pthI83LXe9/IaCQbtA4doMJrBhBUHz2dBiSGv0ZOops4wjwRHFA6SOzL7DFtWDvFcy++zWYRxScUaCYyxYdLIugc64CvlY1eHZvQf4ReGxJZgT0sxR7sqgYX0GwmQHzbLaYoHA4n+j59q7fT6yJhSNqbyMWGvKQaLv41i/3SlgYytJ2dl4PQ3qRsVV4PBZBA5NFgDrLtQdDLusmIZMluRxXgXxE+/E24ee4HZ4TU4pB8eaREuC87AnmdRbP/O8Ii+FLPEFWClzr0PT+x2k/luFVSNgQlC1vVdRNB2CI0qBXNp0fRZBtBQildZMX5NyONBXeuTLCbtgolo7nDP7AWGQivy/xSNSU9iYJpKVOws1KMEz14012qhqfvtyp8xKqYLscAQtLgOS0iXAzvig5pfyVlQQNlpA6UfugRHGrEeMrkZPjWOXrHSgHpF4XGLURqgeiiH0GAVV8UXQdAoFvpXOJQRqEkPDRlsO001Jb5XHuiCKh3BuSda3ZUsUDLXuG+eU3UHeeiSFW/o0mUhF1p/3zDvJiY4XcV1iGiaSSK9IqOHWicxN1fsYfzx9PYLr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h10lsUecYB9xEMAqV08oGsRS3xRuceT4OdDSVak48pEcsI5I4ia1za7ZnAYH?=
 =?us-ascii?Q?TYerTT19PC60lvmRlyK0iYiJgu+Ik/wC5zwDXgnGlYUUF1EqiSEmIEUkS6hV?=
 =?us-ascii?Q?H5lmtZqVCRYuqk7M2vjm81v8d6SsY8MJCOWGp7JlhmX4dRIx4FnF6otmvcFp?=
 =?us-ascii?Q?6+iHucySDmSY8NDRdhlvNyLykX3KjaOwbspKJCBrlWgDXa9CPnHdSiorguE0?=
 =?us-ascii?Q?lusBzJecTqgi16ezpvHbBri9NW+Qv9dC0+d56CEeQL8cSG0/biPkvi+e6Meo?=
 =?us-ascii?Q?rFAz6bXGI9yYLgeW6QF9I9XSRmiT18OowlH8om8nZ7x368r3tICO3cEdSz0v?=
 =?us-ascii?Q?fVAsoQRkSlkwuGufCGxCcUmMpuc9jkkcpjySDVAQ4bRl9RavbmDpoDXSCjtI?=
 =?us-ascii?Q?QiYLtP9WqnLLUvd/ZDF1SKGW37j2qHMOsDWuDK4kQZiVvxoxKSSDutMbtUuK?=
 =?us-ascii?Q?DSi7WVVs1L77TrvLUWhmcp76DQkQCayG6HUuzwr9J4hk7W+A+1EqL3t0bnzh?=
 =?us-ascii?Q?feWb0DIO/I8Nsi5MEBMeCbgXfvXQvAuNbO+pRkcXclAEX7+zqLCT/RPCPUSz?=
 =?us-ascii?Q?DpJegKV9LUbWgdbDx3ch4AfyeCENLbBijNlC9vDYJ479yf85xOu/x2o3w2iO?=
 =?us-ascii?Q?rnpgr9jDKEiUJDC+3v6TqLqp3xRk0PDDpIchGBQ67WWwJFN6Mf/g7MJ/jtAK?=
 =?us-ascii?Q?wGLoooLKCkRy5aCHaj2XmnUzH1z1qLuhg9Y4xm9Wmh5o/jMdXaWpu/p3V5+1?=
 =?us-ascii?Q?rdShA4Oj0CGSfER3KO5r4sUyn7nq7ntypiT2XrigjRi5EHn2sOmF1TUuaecZ?=
 =?us-ascii?Q?z0EVmXFrDQpSQx/phoHF/Z0568hv5aWawLVx0joGX89PXKgZLNIR1gxwpK4j?=
 =?us-ascii?Q?C/kUkXgeTXUdmRFojt0ZpTKGHyHgVf8uTBR2juF3WetvpnsiQMqoISKCFsLi?=
 =?us-ascii?Q?EFFPJaDPnoiIcLoZoJ3+kCAEOMN4pEvXamv1RNbY2lmx4ti6FF7ZkpRoWitc?=
 =?us-ascii?Q?YqGCzjXz+zbTBjxzzn5selGO/teTBS+wwiDBnazxmFq2nJT5wz8ETaXTGT7F?=
 =?us-ascii?Q?0lYfDSw2vj35mSF9uXCUL3TK87+2ciW/DORiHZxk3bdG9FW0N1aXyBluTCVF?=
 =?us-ascii?Q?Wkn4JPfE3pkeUOy3hAZGVnCtmWFZMEHdXJ9QHGPrLxZYhgRda6abzEih7Mhc?=
 =?us-ascii?Q?YhYQeQhABRfaAQBN1gpMKdy1mC7agWmNQEFuUcXlYevcSdj4vxUgEwZiV7Pk?=
 =?us-ascii?Q?XYPn3H0F6et9sbvadppdApd5UZSFBzohTSN072TEzlQFWrJ+DoUzvVyYSQTY?=
 =?us-ascii?Q?j9mkOMcGNpo8fhMO/lRrkWraa4ujlh7ielfBvl0zhCkjVKli1177xQaG4dWF?=
 =?us-ascii?Q?okzEX0WqSVQ9UXhle3QVQlO/NWdxxi1JJZv5msBSYeB8czmd28rabaYcmust?=
 =?us-ascii?Q?INmAnOgOoD2zXb40FaZi4Wsv1Z9wvJ214c6cGNFgXJdG/j/9CGgsJZS0RXtS?=
 =?us-ascii?Q?OKUbZpbzB9KX0jnzvHoym1FXgSQAAgic9grOKILLB8bF2qi8zyZ9hoVHgpks?=
 =?us-ascii?Q?QtgtqGEfcTJKtCLXvSuNxIWQn4XkNl9Nsf1a1iluQbNO1Y4Ktx4ZDrSR1NRY?=
 =?us-ascii?Q?1A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5059133b-a883-444e-4d52-08dc5db268b2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 01:13:22.4847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GhoF387Yy/mxyFf427t2MSM5LQ/9MXMXfzD6HXHWlaH2FA5k/NkoLeFKXSiRxSVDvJdvmaqxhLlIfJ3gX21YbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8377
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

On Fri, Apr 12, 2024 at 11:06:09AM +0300, Jani Nikula wrote:
> On Thu, 11 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> > == Series Details ==
> >
> > Series: drm/edid & drm/i915: vendor and product id logging improvements (rev3)
> > URL   : https://patchwork.freedesktop.org/series/131414/
> > State : failure
> 
> [snip]
> 
> > #### Possible regressions ####
> >
> >   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
> >     - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
> >
> >   * igt@kms_plane@pixel-format@pipe-a:
> >     - shard-tglu:         [PASS][2] -> [INCOMPLETE][3]
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/shard-tglu-8/igt@kms_plane@pixel-format@pipe-a.html
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-tglu-3/igt@kms_plane@pixel-format@pipe-a.html
> >     - shard-mtlp:         [PASS][4] -> [ABORT][5]
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/shard-mtlp-1/igt@kms_plane@pixel-format@pipe-a.html
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-mtlp-3/igt@kms_plane@pixel-format@pipe-a.html
> 
> I don't see how this could be an issue with this patch, but it looks
> serious:

yeap!

 likely this one:

https://gitlab.freedesktop.org/drm/intel/-/issues/10608

with a possible fix candidate from Janusz:

https://lore.kernel.org/all/20240415195310.165934-2-janusz.krzysztofik@linux.intel.com/

> 
> <7> [451.620816] [drm:eb_lookup_vmas [i915]] EINVAL at eb_validate_vma:510
> <4> [451.624224] ------------[ cut here ]------------
> <4> [451.624309] list_del corruption. prev->next should be ffff88810afbf3d0, but was ffff88810afbb410. (prev=ffff88810afbb410)
> <4> [451.624332] WARNING: CPU: 1 PID: 1374 at lib/list_debug.c:62 __list_del_entry_valid_or_report+0xb7/0xe0
> 
> etc.
> 
> BR,
> Jani.
> 
> >
> >   * igt@kms_sequence@queue-busy@pipe-c-hdmi-a-2:
> >     - shard-glk:          [PASS][6] -> [INCOMPLETE][7]
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/shard-glk5/igt@kms_sequence@queue-busy@pipe-c-hdmi-a-2.html
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-glk4/igt@kms_sequence@queue-busy@pipe-c-hdmi-a-2.html
> 
> -- 
> Jani Nikula, Intel
