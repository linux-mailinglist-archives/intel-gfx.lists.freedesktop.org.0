Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8468D8800DF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 16:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C8810FBB2;
	Tue, 19 Mar 2024 15:42:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nVhULFF2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D9710FB97;
 Tue, 19 Mar 2024 15:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710862931; x=1742398931;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gqwH1BbqkjM/8uW3aspdTH89dPF+Ptita66ClGukewk=;
 b=nVhULFF2jv/Ft892z4s1Jba1ISDFYxD84qvHvw8exOa+ey2UPn7NQxBf
 ZdZSigcJ68JSFjvyRxIV95+gnXbeQSQ1IjP/UDJa9Cd6li8IPxSs+w2OZ
 4pUmLiyw8Xy2112aHlTINJUPJoY8izQ2jQiWSyDhH6G4VAZKnzA6oo4DS
 GjNfFmULtV80QMAYl/FN3LeEI2CI0KK5Y+yLUQZDx9MfTnx9VkCKT68vw
 lwF4D/ZalZmII2vAr3MFnMeOjfZ9hNAQ2FIcCtXWpEEzleFCFi+ohxQL9
 nm7yHPUzZqKyChRQgOxI5H/lhKrz8LuhEnstbgxuOQ07UUIgulUe6LHCi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5579504"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5579504"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 08:42:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="18567012"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 08:42:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 08:42:09 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 08:42:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 08:42:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 08:42:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATyL1UfdZkfumWfJP7gp76VfE10Y4fMCtEcNPEVisaHQXsn1qn28HVIseyaCx1h/BGZbwkxwbWBwB/NNOeZ6GbTM1MXp0XV78FK9JRCTv6/rJo3jOO0u+IogW3rhcTspaMaXL5CCgwlg7AnOsixnw02pkJiwagmtV7oT63IM3zah9MJpDlMKR7Smn1aaWbrjpu4JMfGYQJxBY5oUZz4Guu3yhAjqWAdAVws87Z0jRKX89itkxoxyp+j7f0cbu+hOk9iGaWRBzdxmpb20uD18GBd6+slbXJx+E2ookd0XNhRGUmYfUNzBhb/3aD5VdL4fX8ZdQ2+7UIVBU/QF8bKFhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBfktrPpSAVM2RlfFxn+wsMIM7rQtN7iltdT3mjZ+7M=;
 b=CTQnoX5JQT2Sr23WNtV1OUVI75z/2o9DMMKE1qV67LbshnO0/KyIktA+WzHLTNbB2NY5u1xv9XiGExgWcsX1AcNqqlXDtnPHcDJJEYb6boTwBJTjzFCRCaxppW74wkuju3iyFGs/EacPnX6ou5AmfhIaLRqtwsBxpYTCHpDMkkiyzb4orA7ifDU7HBDlsVdB8g1t6OKq+tf46IDl81QBsB7UkW1Z0goOnpc1HT+ePIwDfM6xT8+tV6qL0DPhdgMO2YWKhxwF+4bfVPzja8r7NbepsbPq4mtOnH6WXbgfUlnHl/8dpFMBQU0QQN63gvk3PgwD5kdvpOOLTttezFXZ+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Tue, 19 Mar
 2024 15:42:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 15:42:07 +0000
Date: Tue, 19 Mar 2024 11:42:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Francois Dugast <francois.dugast@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/11] drm/xe: Introduce intel_runtime_pm_get_noresume at
 compat-i915-headers for display
Message-ID: <ZfmyS2GRDhl8Jdu6@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
 <20240314141021.161009-2-rodrigo.vivi@intel.com>
 <ZfM8EnZZOFpnPCMl@fdugast-desk.home>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZfM8EnZZOFpnPCMl@fdugast-desk.home>
X-ClientProxiedBy: SJ0PR05CA0054.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA2PR11MB4956:EE_
X-MS-Office365-Filtering-Correlation-Id: 86460d40-1440-4eeb-99f5-08dc482b2213
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1FQSOoi3fxjb8GhqoW2BzB4m9Hogt/pbTBFEaj1LLvnOrw3SFrYzuJa0GuU4OifPXu/RWQBU8cBCh0xkfUP2QjujCn7s/KB+XdNM4y+kGTQVQVJLZZRoMpVxm9jYkCAtIumLeCmQGr8fpfroylCiS+OErbU7whYGP4s/PgGW3Ox3R+ZxUDDTwfMqMTCPSJV+VWT5lqYXfK7iU6Y3X6g4vf+LNrhATwAmhk8CXIUKcCa73qclZHlmIg4AVbK7Fjifd+zmzScntpSUGeiPY2AM1Kk52sCZvYTXfxaef8+WAVJeJ8qmZ3QWDKWOq2K9C8jsKD6bQxOvJWdWy/DoYj9y4gcCebFRbS4q0Y1NY7M5ukl0AvbQRDFwaVQDYokTSUuCT9F9kTd5wNZL9XvZ7a1canUGrXQR8Hr9rnOxGKBBChsg5/zQhd+P0Of/1hurk98hBrFliAYmwlT5sMsU5Z4dMDR+cZcK09oSfDbqiKaQaZoSKeRoNt6vwD/Mkmdod62y2Al5uvT9A2hjOsCshUl+LoPWZAfip38NYaOBvy3D+fpHpeGUI6xNYZelcM3mLFB9/bap60wmIqA1cPnz1hc4GwvQOw0bXIeM8AYJTJBIW/9KHkgFSfb5TmmtR3kXzQuK8RshEqyfV8vbna37+AZqHZFzULOua5r33lplSliCpPo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jeL8q6RYX/T3qsXGX7m3q/LwvcXNpCGkzk8ZZzvAiATIX84bJ1reYM4oGEnJ?=
 =?us-ascii?Q?r1Lc+ZHjNypW+t4TFF1MR75w/cYVN1hXK0h29KmgWw3is6uEGXEg4wBglAaT?=
 =?us-ascii?Q?mMt6TJaowPcEz6WQjemevHe6zAFtiyBVGt9v/g5XTV31a5EnVs3VOso2W/II?=
 =?us-ascii?Q?U8oekMnL2KnUtZDWu3YnHjF8HwVa0lO+OrsFFVd96lQS8CcPePc0mQ2X4jI7?=
 =?us-ascii?Q?7HI1RKTc2nEVGZ4RJPRtth1p4A16CNtX5WmN7/crF/K/YQG4I4SWUOlddGIk?=
 =?us-ascii?Q?xWlbVHHdnnH2PO/VphvhtDEd/dE05IGSH75g9iQh/MwiR7cPWZDsKFIL1uOA?=
 =?us-ascii?Q?1XhiZcIKi/LvlOJbn3Gl3AJ3x/qLkbgQ7mYrceigCLULB/iZdCPsF+bdznaZ?=
 =?us-ascii?Q?c/rPE3c0ugWqgQu2J+XpX6h0GPXuoqNrxcqrfOTQQhrLSclWThGOuVcguMH1?=
 =?us-ascii?Q?9Fio+kIUqxrn0aLktUwSnqgrBWw5LnG7qnIVLeunsNqHWeRcs9fr7XXj460z?=
 =?us-ascii?Q?m6ddz9W3mMkJNQXJ2t43GjF1k4vTQG01DBWxekkD8SDPnecFBgz2wvqybIsG?=
 =?us-ascii?Q?gN/keGDOCOB2amR+V6+lx14l/8fQA7gntTu0rGzrAILElPB8W8DDa8ZUKFKJ?=
 =?us-ascii?Q?3ytwC9APf8SOJBY4rpXLGHOc0A9Bs6sgX2iiKf0F02iKfO5DCfZ1EQwHMQ0u?=
 =?us-ascii?Q?DwECXC6cESE4v2Mi6X3uWvuKtaGDAJ3qsQYp6sXr0RwofdqfVKvNa8KbFpT7?=
 =?us-ascii?Q?cdoQQ2GUSd/98zGI5adaa/KWnfmIHyGBQLFJI8RUk3Z+Gku/9XKl6zxfM3wv?=
 =?us-ascii?Q?mPzuwx7H8ks/4qoHl/Exn1h+WNzNhwfM8rfxeqoqa+YeUBTPctiQCigal4Cw?=
 =?us-ascii?Q?UZm6wL9553yQC7/dKSVVKfcmNcR2Kgken/3Wsw/+x/URv/Qb8nmhrsNwB8pi?=
 =?us-ascii?Q?xUIv05fOihHKzkr0vW4gpIONmzuFYlPA7YzR7uYqluHSJr8HWRSZsXRPCYs5?=
 =?us-ascii?Q?AB5/3L+zxRqwt8uRdXgcVFSqMZrcBdisaMGgRvncqrcQ1ExMuUaEcZpzLQV9?=
 =?us-ascii?Q?CrzlPpB48AMjhC6pbrFPjz+elgsOUXaR5RS0BOtqvMoW+mBHEikadV0FyiqX?=
 =?us-ascii?Q?M09qnFk+ChZdJ+23OI63oCFEu93X1bXpz6vh8vINHZoisJPIVsYvX2Sq4Rca?=
 =?us-ascii?Q?PHIdDF9nM05tnlpMgrhcQNqjVwfGPcg0kPZVIhMsHlohTcDD+laOJIralWG2?=
 =?us-ascii?Q?q8wjVNxsJ2zk6jADzK30D4CNEw6yFXoR12jTa0GqNuIt8x1UlJirBA+lAcrI?=
 =?us-ascii?Q?SOef1ujXZa9HWheS2PrYpmRlBH5Nphc3y6dK+wJTvDeAG5lsiR9JBRtkKphj?=
 =?us-ascii?Q?gPO3833Dluh8EuHH9D4NHr02uzwsK4yWvTqYNiVSea2b/UdYp727PJg/GvWj?=
 =?us-ascii?Q?zTormhJCR9DNhDUaa/Fd3HJLMwdD3hwdRPD2Oa75SKdFnru7T8RPQYHr33gb?=
 =?us-ascii?Q?ozgl2Vqpwf9bNKujx89fF1Ol6ui/4bSeDlnUzx5kns8FThdjD7Kb/CmUjyL6?=
 =?us-ascii?Q?XVuHbEcUQDeqBmfMH4WZ3dbvVJv+hBG6O57jGz49/sAKSxBY09lYYzM+PWJZ?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86460d40-1440-4eeb-99f5-08dc482b2213
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 15:42:07.5679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y6KzqN6aXQTm1iVt0f34py6kQSkBbrlQBEyAfqXlzVXl2PKVZQ0fye4hk2T/K318+IAViijz+xWLUbHbZ0uS5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
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

On Thu, Mar 14, 2024 at 07:04:02PM +0100, Francois Dugast wrote:
> Hi,
> 
> On Thu, Mar 14, 2024 at 10:10:12AM -0400, Rodrigo Vivi wrote:
> > The i915-display will start using the intel_runtime_pm_noresume.
> > So we need to add the compat header before it.
> 
> Or "So we need to add it to the compat header before"?
> 
> > 
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > index fef969112b1d..ecaaef3df4bf 100644
> > --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > @@ -176,6 +176,14 @@ static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_p
> >  	return xe_pm_runtime_get_if_in_use(xe);
> >  }
> >  
> > +static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
> > +{
> > +	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> > +
> > +	xe_pm_runtime_get_noresume(xe);
> > +	return true;
> > +}
> > +
> 
> LGTM but wondering if this and the next patch in the series should be
> combined in order to have at least one use of this new definition.

I preferred to keep separate because they are in different drivers and
because the compilation doesn't break without the user here.
(I just double checked that).

> 
> Either way:
> Reviewed-by: Francois Dugast <francois.dugast@intel.com>
> 
> Francois
> 
> >  static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
> >  {
> >  	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> > -- 
> > 2.44.0
> > 
