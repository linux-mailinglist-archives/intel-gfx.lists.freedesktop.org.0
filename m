Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 584D87D1974
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Oct 2023 01:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A0E10E109;
	Fri, 20 Oct 2023 23:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1EC10E109
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 23:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697843094; x=1729379094;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1Liy3AWG4voAFG0qH1aYSVFC+pzgZ5Frfl3jyGXyq/0=;
 b=BFA0facGYb0D6NsHlf0OagoJdGPrG6RMQ9wdGXLCSR7b6M4t7RZqjSTg
 7kkxg/ytzFgPc6OtsJgfaG1150fcFB7bifQxMRSjf52rJ1qxNlD1YvG9v
 QV9shzuDEjAw0mY2FIoWDSWcskLYwQvklsPw8iq+OELQ/milN1SWBBc/h
 /QT2Dhw7HkRGxNmCKVIUGBX7AkrC6eSFsqxks/VBMJUeG9Pf+HKmefVT3
 bnO0G69711c7cCxcxy+zgvo2BnlM122y8uSTEb8TgK/9xaUMVT/9QHUWZ
 94gGRYjS9c+MqfezXFzjnONzXq+tHv6Urbj0OZIsyw8xSURUufjt4a6Mf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="389441739"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="389441739"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 16:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="786924876"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="786924876"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 16:04:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 16:04:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 16:04:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 16:04:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 16:04:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dlf/hBXaOBdSAYhaepZKEGtckpPvYyNOSKCgMK5OmURoSTqPyEBiYmEj+w5y/edqDuqLBGvQzqMtMUqLtpknTKCLtaKLhLzYOJD3l4dsDsBnFTAgmu2gMrxYTXmrN/7clLvCVqZNsk0G7xDAw6zl3QrzlGEQW2SjS6XVRaVG1Yh260Urfsz/nAbwQEHpuxIVRf0iRx+Zrv2PqaJRrMgiFIv+lU3jL8n65CWAXxCB3J9U9vRxWrrpcrB6QUTudwvz+8LH/RL+KyjpQBHs4G3XCwObDpvDd5QamfOVZOrA2GFsBr3+U6tchNKl/FibukLKeL4bJwZ5J4/njXacmaxYcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqlfrgOt5xqrsSnKlcvdGKJYwPzDEEURbcPEEmkPW4A=;
 b=Z6eORQWvxbD1T8jc/q8DJK66c9qLrcNaoxalAUhsQabcJ8w1ymucDm+9ENbjeqsaKFASpBGyCGAZ9fUnUYBebQ63tEeln4iJ9ulgznxm6JdPYcWfdAx7/kGiQPZS6LX60CsFgfCjXGhf3XfWau3PN6EDqnhTMZAd8yq736IOEBfWPcf0sC6ozEa/fBqEEY4QiU63NUcKjT/xzcGlsEPxKrv9SyMdoLXOtQ42V0uQWNCdy6JDVnX5AZnghfb5JHejdB3dkowEsZSsStOQsZKGIxNiJBzRbV7d+27DN5TvOWm0zf/bTEaEfwiidhjJGIWOOLMoUDVwfvV1oVOWn/eHnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5357.namprd11.prod.outlook.com (2603:10b6:5:394::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.26; Fri, 20 Oct 2023 23:04:49 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6907.022; Fri, 20 Oct 2023
 23:04:49 +0000
Date: Fri, 20 Oct 2023 16:04:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20231020230446.GF1327160@mdroper-desk1.amr.corp.intel.com>
References: <cover.1695747484.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1695747484.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0019.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5357:EE_
X-MS-Office365-Filtering-Correlation-Id: fd6f8023-8a94-4a49-99ec-08dbd1c0f558
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dz+sOv7rh5/DwdP0WEfQrxAaHaf7Y5MSbrDT1hHrbfkJS/JFAh8rzh4W2xA8B3ejae6t3Xaf+C1e0eT1pwN281Z20NISZCSQQKQ+edCiYAZv+DoG8SdEzG8ROCgrfO/u8JRLGS0dSX+gTzhCEpzdxJIzOzPDqBdhkeqsKzMwXs0DbcbSmFW6x2T4Iuh3MiWyg+onDIafPERU6LorbEBt4nToLzC0HDW63cIQrBTJWYeMIhwVkvPw2LRC3+1STAGqhS5ghGqCrVfhMTAWPTY7gFcV49eWmjxxWOi0eN8kw750E8o99Xw6P1tDxH/5KzTxrkrA5beBHkKTFNAtZjPSVU2SVhyOvVFQEpbyn78TJGqRtoaLlYAGs0qXvosayI5oOlu2PwgiFzh3w349kX2WAkJRnsijVjQkhLGfVTRyuR93lt1uDV8sKD+txIoHosr1H3gnHRegSLRyrm5NHpLArIjoj2VlRMmtA6ZEboNhxXxuTNE0pc8xjP7Qd3xiLi6W9CMulNUCBMrBNHuDGZCjgqBjEsVQ++w35cHcW5+3Iu8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(346002)(366004)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(6862004)(84970400001)(86362001)(2906002)(6486002)(38100700002)(33656002)(6506007)(8936002)(8676002)(83380400001)(4326008)(41300700001)(5660300002)(316002)(82960400001)(66946007)(66476007)(66556008)(1076003)(6636002)(6512007)(26005)(478600001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mkSyEVV2OmocGVZypUNIt3/fnVEQthO+Ea54AAU/Vp0/i8Pc+LZjhDD5Kx3f?=
 =?us-ascii?Q?A2YDitrB/Qb2U9YeHMhE1PpDbXKna8szXZ6cRSdb9ZbcnfWqGXXJb2LiBIx/?=
 =?us-ascii?Q?l8kDSBTgfFnBZ+6P6ko/Nsm5zRI2O3DkrFwrpAJw5WzNUdgCpOPWgdxxqjMS?=
 =?us-ascii?Q?ud3QKJtRgZoNzd4apU/wC3402SD1rIQg5GHmlYbiVvlEwi8scwWEzPqV3uEU?=
 =?us-ascii?Q?sLtUfEtl5cUQ1hiIWYHg+Oc4JAuF1/YGqOgJq6RMBZDHiBDp9xlrOxORaCsy?=
 =?us-ascii?Q?nRL9KOifW/5MuwyOwfirsKw4fMFpI5TWo77uJv2SVgAsEsyT4ucCPylzqCyn?=
 =?us-ascii?Q?Npm+8suU6poe+CfA33b1l52EofWdgDwyTM9+tkFAkqIeAOpmRPV92Q4Zq4az?=
 =?us-ascii?Q?UbuOghfdpn2Caz6ILtXXNhGQFZz6En3ZHPap2eaNYJSlHrPih58AsD4ELGdE?=
 =?us-ascii?Q?B+nk+1dH8vG9W3KZvn3v8anRwYvbqwwCUSAk8tgvD9TC9sT7sIe8WpKjB3z0?=
 =?us-ascii?Q?j2fgn7ppizyCiAjw+k6bhvz1zPLD6AWXFp+MtCivZ/DkPHUzlq3XKxWdLw9N?=
 =?us-ascii?Q?fEtizG5QGWiASpHO0QGk92wmaheCM5//olK+ivsOYKALZ19o45ByXHvyQUXl?=
 =?us-ascii?Q?qSJ67SpJLJTN6gDBl6D1MEscee8bs2G4Nf0DVLJugXB8IUqfWyrgBZggG4o+?=
 =?us-ascii?Q?ox39Y2vvXUIoEaOCt5F0wH8nbhA6H189W0AG5Qf3kJg420uqEvAaWzTKSg1h?=
 =?us-ascii?Q?ERAZ2WMP6mgfH71Fsd+87Tpx7Vz0KbrhRlYPRzA4SbPdsPUhHf3jQCNQOb/B?=
 =?us-ascii?Q?CiVdCRcVs6Krcp8pzfW8dXq0u+A+29GS5fqAVRtiEcIngp2vZH0xnAMzrsf2?=
 =?us-ascii?Q?npVowh30N3W72Y+qtSEeqRMe8BTtNmtZuJmfNNEjvk619IE3VY5cj69ZZXpS?=
 =?us-ascii?Q?U3rwYAlxleqGPghsqeztvo9+wRXE2cWnFweq7ixOgOlVfHr4dvxoWjNbr2mD?=
 =?us-ascii?Q?zHLPbHDhkpZmUKGEJ44umF2EX3QrjEjl2nZEb56E6DB9qSn7BiuGDUSkrqh5?=
 =?us-ascii?Q?ccM0F0S1fmd3AAR0M2T4mFq495YyUj0jgy+pxdVdzRL7YNNs4OhsbjGAyDqT?=
 =?us-ascii?Q?C6BQjVM/ss8iVayynX/oNLkaM7cd8c2uSul5vrxIqb/GU5bPwCDit6lFpG0P?=
 =?us-ascii?Q?1bEqKMy5fXxbant3P/mVq+iXA6eE2h9bg2IuBzgAmET3jLpqIhCgz82kdZ/X?=
 =?us-ascii?Q?TRJmvdCoTp9lMF6dibWu1twdWElCAbEu72nX6VVeLPUYLmz+6R66qKqj+Nrm?=
 =?us-ascii?Q?3WK1LRuJkun6RIDqtiZyFBNz4F81QPZuywgmIwQM0+K0+DMzVO4avylgdMUT?=
 =?us-ascii?Q?cQoH8UQgotdLKLJCcFCZxqWHRVpHyMXiXnODUPjltumQeT6EWTl/NPetgbtL?=
 =?us-ascii?Q?d2MEkRtbmG1axCOqIYX2haqBM6mtVJ46jXK871BGjfC2gKC25y+LGtsLfbMU?=
 =?us-ascii?Q?BFSNito/uk2YwBQDwoHXf/ZY621jfJiFP2q2pcqDleMSFaSGPVwJoa0FAHG2?=
 =?us-ascii?Q?IZl8SdsoYG/uSgNOxvmW+hwApbZna9xOFBT+jbOrPUSnL+HPpzB6KOZQT9ic?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd6f8023-8a94-4a49-99ec-08dbd1c0f558
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 23:04:48.5272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l/XMwpi7AXXn63saO1fRgFTVgWfRujwO7fdKV5mQhzr7nAcqITjbMY4GkXMai4t+MUbVAzqJDiVDt5VcSOXBFYAkWUAS6ekG37QeOEjbf2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 0/3] drm/i915: split display from
 drm_i915_private and i915_drv.h
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 26, 2023 at 08:15:40PM +0300, Jani Nikula wrote:
> We've been gradually separating display code from the rest of the i915
> driver code over the past few years. We can't get much further than this
> without some more drastic changes.
> 
> One of them is separating struct drm_i915_private and struct
> intel_display almost completely. The former would remain for core driver
> code and gem, while the latter would be for display. Long term, i915
> display code would not include i915_drv.h, and would not have access to
> struct drm_i915_private definion.
> 
> For display code, struct drm_i915_private would be opaque, and for the
> rest of the driver, struct intel_display would be opaque.
> 
> Naturally, such separation helps the upcoming xe driver integration with
> i915 display code. It's basically a requirement if (and that's still an
> if) we decide to use aux-bus to have a i915.ko/xe.ko <->
> intel-display.ko split. Regardless of that, I think this is a big
> maintainability plus on its own too. The everything-includes-everything
> model is really a nightmare.
> 
> Here are some draft ideas how this could be started. It will be a lot of
> churn especially in the display code, but I believe the end result will
> be cleaner.

I'm guessing the plan is also to pass some kind of 'ops' callback
structure down to intel_display when initializing a new device that it
can use when it needs general functionality from the base driver
(runtime PM, lowest-level register access, various memory management
stuff, etc.)?

In general, I'm very much in favor of making intel_display
self-contained with no direct access to drm_i915_private / xe_device,
and no direct calls outside of the display code.  I've been hoping we'd
find the time to start moving in that direction.


Matt

> 
> BR,
> Jani.
> 
> 
> Jani Nikula (3):
>   drm/i915: rough ideas for further separating display code from the
>     rest
>   drm/i915/hdmi: drafting what struct intel_display usage would look
>     like
>   drm/i915: draft what feature test macros would look like
> 
>  .../gpu/drm/i915/display/intel_display_core.h    | 16 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_device.c  | 13 +++++++++++++
>  .../gpu/drm/i915/display/intel_display_device.h  |  4 ++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c        | 15 ++++++++++-----
>  drivers/gpu/drm/i915/i915_drv.h                  | 11 ++++++++++-
>  5 files changed, 53 insertions(+), 6 deletions(-)
> 
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
