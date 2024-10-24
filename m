Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 914029AF54D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D0310E9A5;
	Thu, 24 Oct 2024 22:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MY9O2RvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A7B10E3DD;
 Thu, 24 Oct 2024 22:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729808500; x=1761344500;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xP7Q4O680yXAS3vWliADDFA4xdHGwtFPrQDQEXHlFz0=;
 b=MY9O2RvQx7Wcu5rTa2UBw1YZuXpehmXvtLG+nel0lmUeqmHN+SyTcx2I
 wiGQ44i10nESI+cobAoMu5cI+uUmR4M4GdNx/7mEetBXx46iA7YHBwRLb
 j48njOcnKZU313tTovUz2opoise3jhZKFBAIJpi0VElrSBk6uLaJUvhIJ
 TzAemT3vdkt5dLtmMJjnS+U/CqsftnWSkq9nwDrezcibbjoeTWG6YhjNt
 9PbdSHZyV/RXasbppLfx4/79YUX7Si816tYrDGha7eylGCG6gktyxOY9B
 Z0e/s/rzGs/ffkNLoo5q90a/6r5lkirHzYuWdGBrnh4j2yFwkyQWLQcXz A==;
X-CSE-ConnectionGUID: k3ga19QWSwaIzLichca/hw==
X-CSE-MsgGUID: vMIRPgpQQE+8d2P6hVbJ6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="33270635"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="33270635"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:21:39 -0700
X-CSE-ConnectionGUID: zGx0jehjRXiuBu7pPH8k9w==
X-CSE-MsgGUID: HrsE+zu5QPSuFAL+BE664Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="81032867"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 15:21:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 15:21:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 15:21:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 15:21:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yrs233eOSwKg48zafArzMLZRzXuG+aILGDczGKcdXV+Ztt3o+IrCIWIwJMCp8mFs1TRh4pkLJzzxCnpnyhgs5nkPOmivpG3oM9hzx1Bk1DeYvUWIQ1FSyzTwxqocO/XkUD/O4ZbfEQpRkSnOVm1xILyfzBUPCMWSnjqp2nirqe2A01/OWb6rM733TFCGtZVEWMcZeXtfpG2ZU3WLtBqXc8j1RganKLhDiUSmBgZg9VWc1ezuuKtXMm4KEHjeoYeud1qPVzAagKF1SQU7f28VVsQ+IS8kshD6m4sPfdkiAnlDY49B6wfohEeQIJBL1XOd+tSm3tKDYGufTDkNP8r/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8y92J7n56aNvRFl/IjLgnHjFtahhSVPOPl43BPwd4k8=;
 b=ns/YB/yIZkmGA/+O5A5YxemmR1DghsR86eeO1pXxEeRLCPgNGC+UaXCTS265uj8bP7e0XBsz4mz/IVVnX1kH0XWba2Nb23H61V6nMkp+fYdV/N5YfVue6Qt30RiggnBaKGDXeDUrnigmhGz1zGaTZgbvm0I8jEu5TWzUt0HMRtHtpMT3Qoa2vCdSCBVKetNXITqVssJVwNsBs70YIBvp170Uwc6vAnw/ORe+vL4BybrTDefAFKfYAIYNC1N5naqdgKndvPeVajaKQ14ZcbKSPC+QVq4SYDLSXitwbsQw1TfBV8ODUqaBICnATTLPwpKDG2da6zexkxbPTn+4IlPXMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYYPR11MB8406.namprd11.prod.outlook.com (2603:10b6:930:ba::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Thu, 24 Oct
 2024 22:21:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 22:21:31 +0000
Date: Thu, 24 Oct 2024 15:21:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Message-ID: <20241024222127.GR4891@mdroper-desk1.amr.corp.intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
 <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <20241024191854.GM5725@mdroper-desk1.amr.corp.intel.com>
 <fc292e32fac2e9f36a474d9c2b3f2bb009a40f73.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fc292e32fac2e9f36a474d9c2b3f2bb009a40f73.camel@intel.com>
X-ClientProxiedBy: SJ0PR03CA0261.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYYPR11MB8406:EE_
X-MS-Office365-Filtering-Correlation-Id: a572754f-e405-4aa2-c01a-08dcf47a3618
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yAL9X9huOK6LS9hliQGH/5by0QvIfz03611Ka7P0QO6iEZLmBMPZa5JWk+pW?=
 =?us-ascii?Q?RwyveVxaeOcoGyEOD0nc1q9EAyuiO7/Da9dR1fp4gq81qTf8jaHsV8tI1O06?=
 =?us-ascii?Q?XuG0KDE9WOzBe0vHbV8eEa6Au6/EKctjEqtnoe8cPuySJGssplmeqNFz3BsY?=
 =?us-ascii?Q?oObPMdxu13XwRxVgF3i2+BRax6JzkAXgkXizrYCL/MclScE8Y/UGjfMCzzTp?=
 =?us-ascii?Q?U+2NFAl4YKvApkewBPXs3qKP3S2e+EPOlQFnxg7OI7JlMKmw5jUa5LNKbJAh?=
 =?us-ascii?Q?UEoIGyU9oEdoDs+6VpTi9c/wb8LeTvGpHLe0Xf/AJTD1N6sdf0qNh3pKlf8s?=
 =?us-ascii?Q?GK5v80K6xw1Ql171A3Iw6fKKLKtWeD+WY1JyiWVfe2bDwIQP7U1fivJG3onu?=
 =?us-ascii?Q?HRGeIxd0Qa/fnMTUXQ5ciHAhSNfkEA82jt7auPXalWaymFPdCy1i4F7S1QAO?=
 =?us-ascii?Q?pPrIqw8gSMbyLmpbbalpSMTWxoYpoBWd195hItSWeQHzlL+Wn3gxoSVSWylq?=
 =?us-ascii?Q?8BwwH9CHcNDbIVLOudLRXbMUZd0I58ldwaL46/t3qJ8P5qaF+dHbWrRxYUSM?=
 =?us-ascii?Q?Uk5bfj60l6I3fMWM2NwrfyWdwLqysKKAQAmMdrFTSbt4MGu96q9FxME7nrpl?=
 =?us-ascii?Q?maiseWLt43KLPnnP9qWzGzUcoUHGXb8PVr7kJesF8AcGpp99nG7m8gqcZUXM?=
 =?us-ascii?Q?d+wod5p2p3ydOaYM6LcodavcjUuekv6yJML7Q7zjZTij4bla+dOJmFt3kpTr?=
 =?us-ascii?Q?Mr/JOCUhKO12DiVQt9Y7bYCd2vKZPht6o4ot8pbCNWDw6GJTGnlmc7Ebk/a0?=
 =?us-ascii?Q?8A3jFahU51yUP5jdX/nNl0PRSIgsSuSq8AfrxOMoRJVsTBobWDH2u8zg/tQN?=
 =?us-ascii?Q?Eu6GQSvVvCfZatr5ixGTKG0FJPE+dMVupQSq2mR9j+7O91PWMwoJPpI9vD2P?=
 =?us-ascii?Q?k2g/GJr7b9ZlBX0lbveMCVhc3caoeMjiV7n8L0hozLK1aVhZy2iE1ZUM/UMx?=
 =?us-ascii?Q?dupIdti3d/uAhZsZlSh/nTgPfzAVBlOuc8qvyKIX9ZK2ZMN4a3oStH2GkDeM?=
 =?us-ascii?Q?7Fvlx/5A5DMB8fO89fHOUAVP69m1GLiqf+7Nc2U7dBBV2Vzl2wXPdZ2hfvXw?=
 =?us-ascii?Q?uMl149152w7uIJIMqownO1rqkOOA5zTa87/wQK95f4eatreNmRKuuvTUOw3f?=
 =?us-ascii?Q?cCSUTUKNSDkwd9iiVTtKREA0rKMcgQxz6YttuLWWyeg3BLe7JwzFtkUywB1/?=
 =?us-ascii?Q?ub/WnYZ1SlR3kFRE+JM2ARjIG70DMgNL6KKrYJrSgJQ+e6qpzw6IEhDYek0G?=
 =?us-ascii?Q?J+cvmUxjtZcjXSJtXZU+pJ7t?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BCndpLIEegQM5RuyZHkQXExBudS1fK5LRxCQ6NRZMLwpFHBeunYcHW1NXrm0?=
 =?us-ascii?Q?sjxFE5aAS7sNED/ZTOptJtYukcNnST/zHW5APTCb1JVBOdynxHmn6KXqmf+1?=
 =?us-ascii?Q?fmW0w47TvWwsOPGw0D+EyjHmTey1ozsY0qwztneXWpq02/jOWDn2QO6Ih+e1?=
 =?us-ascii?Q?LnAEZCSeylEpd2TKpDXqWNZIERPfyyTxPlvTrVvmyxBHLcJ5d97qxKRYQlOx?=
 =?us-ascii?Q?lHjopXImjebYOsOJF/UgkmYqo3jIGrht423RtPNfslWkOYcke6gS4Z0Jp/VZ?=
 =?us-ascii?Q?jCxjtu+RKxhWh0iH86JLbOiXw0MignywGfjl41OAR9jqFlY8yoRHgwv17NBO?=
 =?us-ascii?Q?1yKRx6bN6vPA/jYi6P7VGLNn4+NSxv5tFMZi44DYcKl4D0HsXs8zTqMlRUse?=
 =?us-ascii?Q?BbN+hxjdbYjnLm6atYZm/8c5Mz26WAWCjArYXnRQfly50iWtZzFRFNIERALy?=
 =?us-ascii?Q?/Ax5DCs3pIRdLW+PsOQ/9wCN8dyEbtMjauihpnE+knDqYTnbNPk0W8OkcYw5?=
 =?us-ascii?Q?zWANWT4riQZt+gnbDHIyaSnk+Z1AxtnWNxrt415Jv4YBTfMKgGhZBiL5YSxL?=
 =?us-ascii?Q?zE1ynaIKpVvC8dZpYpJSEOfAUbFKPRLdapAiX0oDxgKw3bI4JRbI+poTiMTB?=
 =?us-ascii?Q?cghF7tmJjQ2d1oF6hd0gHlJt76ImLMK77ihhiVek+BxBom+93i1bJBEUdbhc?=
 =?us-ascii?Q?5Inbddh8JXFEP8CrixfJ73vI56gLHdxn6T8Mfd67Fqcc4+nkrm49knEetKXD?=
 =?us-ascii?Q?KoJ3cX/9qqW7aO6dPzmGMWukUwfpZW8ZkNYDPWCJEIDmX6kkE7f0of+kT1NW?=
 =?us-ascii?Q?d6yJldsrodaR1ODX64b67T0bQydhPBYspNCED1SkPhdKOZ1QIacAUHKz9x47?=
 =?us-ascii?Q?Ls1tYiAUKYPA9SMAPxc+dEDplZ4khTzlCVqDS76I5BvAsrpJSMA34NDT/Glf?=
 =?us-ascii?Q?260F3zNppZ0psZXBI3ZfJacfsKkUo+EPWW03vX5diXMI9iJMOZ279g8IaQ5W?=
 =?us-ascii?Q?EArSYR3MUsai7H11q6rRazq2j3QxuvdvH60G23xhoxTiP/onZLGe2HqVP2Ti?=
 =?us-ascii?Q?pUWbb2iPma3FQCRQM13TzhGM6S87j775+mHByfnT6tJ887b6svHrWqjyi4kR?=
 =?us-ascii?Q?YvAOR74HSDMNSJJkhyGHmdT+xlnbM14tFpdR9t+4Wbwkvn/ke62uT3EZlKTP?=
 =?us-ascii?Q?JVxukNp+dkSJi1Oh7g8OZYJKZEzp7lG2TCtP7fMResG/2qD3cTGcq1ZfZbxu?=
 =?us-ascii?Q?rM7REl1jFuOj2SeoxFkh7dplxEUK/Ly8ZBjau8FZyCyrKvoOrMW14Rner7uL?=
 =?us-ascii?Q?+L5tecBTmmj2RoAGoV9nhNuXiBFPU0oOY43CIR9WqB7Glh0RNRkdv/KqJdZ7?=
 =?us-ascii?Q?0hu7HCH3IgYsR2SYRyUBf65Nr1SJjF1OpKZI8Hva5Lwiv/bsTw0QWqIOumAY?=
 =?us-ascii?Q?OGD58kA0tuM8M/rIJ08hzCGWUnyP832BWXQsCNg7O+KOIQdRxCnWJE8GZscq?=
 =?us-ascii?Q?U1IsJK+4gMu+YLNCeECFVrV86/P7ebwz1GI0AU6hoTErvqYiKIwraqAm+bE+?=
 =?us-ascii?Q?6jqYKNeFGBFIl/w2vasFP5QfucQguXSHNl4S0u1HsW6sPAi8vr00feHbcbmK?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a572754f-e405-4aa2-c01a-08dcf47a3618
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 22:21:31.2185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hcdMAzJWdwVWMwwNIAeeolQ9ZIwY2Tx9w02bQznGXCTRe1zMCl+CV/xen5llZZ54Yd7WekPGfEn0CoEmfxcECNT4iGznXfQDLzmDcBmH/40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8406
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

On Thu, Oct 24, 2024 at 10:15:11PM +0000, Taylor, Clinton A wrote:
> On Thu, 2024-10-24 at 12:18 -0700, Matt Roper wrote:
> > On Thu, Oct 24, 2024 at 06:08:46AM +0000, Kahola, Mika wrote:
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Clint
> > > > Taylor
> > > > Sent: Thursday, 24 October 2024 0.47
> > > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > > Subject: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
> > > > transaction
> > > > 
> > > > C10 phy timeouts occur on xe3lpd if the c10 bus is reset every transaction.
> > > > Starting with xe3lpd this is bus reset not necessary
> > > > 
> > > 
> > > This C10/C20 bus reset was originally placed as a workaround to prevent bus timeouts.
> > > These timeouts were fixed elsewhere and therefore these are unnecessary lines.
> > 
> > I'm a bit confused by the patch / explanation here.  Before this patch
> > we did the reset on all platforms, unconditionally.  The code change
> > below is removing the reset from the existing platforms (MTL/ARL and
> > Xe2) but keeping it only on the new Xe3 platforms.
> > 
> > If the timeout mystery was solved and these resets are no longer needed,
> > shouldn't we be removing the line completely rather than making it
> > conditional to the new platforms?  Or do we have now have new,
> > unexplained failures specifically on Xe3 that requires that we bring
> > back this hack at the same time we're removing it from the older
> > platforms?
> > 
> I reversed the conditional when splitting the c10 patches. Will correct and send a new
> series.

Okay, even if the condition got reversed by accident, I'm still unclear
on whether we truly still need this on pre-Xe3 platforms or not.  Based
on Mika's explanation is sounds like maybe these lines should simply be
getting removed completely, and that that's independent of the Xe3 work
going on?  We can see what he thinks tomorrow.


Matt

> 
> -Clint
> 
> > 
> > Matt
> > 
> > > Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> > > 
> > > > Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
> > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > index c1357bdb8a3b..a8966a7a9927 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > @@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder
> > > > *encoder,
> > > >  	 * down and let the message bus to end up
> > > >  	 * in a known state
> > > >  	 */
> > > > -	intel_cx0_bus_reset(encoder, lane);
> > > > +	if ((DISPLAY_VER(i915) >= 30))
> > > > +		intel_cx0_bus_reset(encoder, lane);
> > > > 
> > > >  	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);  } @@ -
> > > > 313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder
> > > > *encoder,
> > > >  	 * down and let the message bus to end up
> > > >  	 * in a known state
> > > >  	 */
> > > > -	intel_cx0_bus_reset(encoder, lane);
> > > > +	if ((DISPLAY_VER(i915) >= 30))
> > > > +		intel_cx0_bus_reset(encoder, lane);
> > > > 
> > > >  	return 0;
> > > >  }
> > > > --
> > > > 2.25.1

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
