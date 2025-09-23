Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84597B95BA9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 13:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A9A10E063;
	Tue, 23 Sep 2025 11:47:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LaupzX48";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4DE10E063;
 Tue, 23 Sep 2025 11:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758628035; x=1790164035;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=7MaBk1ibTeYeNpCMuRvEJ6bXs5e+Y1K5oYD8TYvI5Xc=;
 b=LaupzX48o4LjEU7lHPoYKIuP/C8DVSWSTUPGx+0YSMLlpTd3MnSVzv58
 vBP6p6Z3jkrkD9xxLBCGdZWMDawL5N3eb79m34yow/pGk9CX4+Slc2bH1
 IAfsSivmfXEPwwmiyMXkWs+n7eDL98nZcDeEGs/jgV4QalAcModZnR2yy
 +5SMAigSZksnCsCwuZlgiq5BNZRGzTfQ5UtAdX43zHEcwC7KJPsEVHt23
 VbBlF5ahYiy0LSZpb/+SZQbf93b5FbowmPgBDOAbS42pEvMIE9pxZCUHv
 hBYeGdleAxbLveOtJkWydYvlbINZjgslgojjmOTYiGvu2WHKOLy1YLglc w==;
X-CSE-ConnectionGUID: EsA/41QWSwyQB5ABBmg9JQ==
X-CSE-MsgGUID: zL2o/nFnSiCl4oYUP1iOag==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60821045"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60821045"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 04:47:15 -0700
X-CSE-ConnectionGUID: 27s1tpMUS/KR+6jhV92Txw==
X-CSE-MsgGUID: gVRIwWpjTG+NsQlTgkTVDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="175874007"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 04:47:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 04:47:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 04:47:13 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 04:47:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BefYh1utesU+Sxx/Uo5LM4WNcto6nkcQcgJUEF4vc5FW0QYHDUeNxJsHPqDM1gZZRAXVR8ziH6akrghwFFmajfQvTN1zHESUh+YhUfWOv7sIl+YEn2Y5MKK0iL2Xrkk+I7nngNakVVuoVj13xX/uySp0RiEBJ7T6f9OTmpycL1vO6+sJzomGHA8skgbabQ/NCzX+fg49GV1vi+BUy8nRZOytxh9JR1F1Ih+O8lQpihfqOWF+PYPekHAziUuCNZu8hx1VQvvntd/i1+YVc7JzLQ34zfrsBO53BhxLGBSvWigiiBVMmDPYdOLtMXcL9nbpvI5/W1jDNIEo2/CaeMaYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zo6OqL7StHEXVPBElNNHEsNHNajezXLDygDqk4Yzy1A=;
 b=SBSrwitpkNENsX4hnmlXzW/13oBxXpHircBnwZAzQSnGDQ3G0efjqxyqCXJpFBhZ5sTBah+Ejk2qpG1bC8gbuwoWr24d2dW6PjjnBobb0FRwGz9HQ3avc1BlmS5rrpJwPlM5+EnuceRLhXjCRkuB4WWKYcV05EDgcJQ2lcqrWsNAIjj5eiWT55Tezn43LORKdlBLe2+SI+c3PvrjDVi/4WyC5juBoqiFnw5v18HGwKlRiFLoVmnYIcOmUtnNY5pXHc2HUsrvX4k/dLIJ0wxvkf1AOo7qdfvt8jvibjFDextEkeFdYDmOnQTm8P4v/0Sk47BtgvYInmJybGpBc3yQvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Tue, 23 Sep
 2025 11:47:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 11:47:08 +0000
Date: Tue, 23 Sep 2025 14:47:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/5] drm/i915/dp: Calculate DSC slice count based on
 per-slice peak throughput
Message-ID: <aNKItVCCSftFfbiW@ideak-desk>
References: <20250918211223.209674-1-imre.deak@intel.com>
 <20250918211223.209674-3-imre.deak@intel.com>
 <aNGk0M6Vix9CqLXt@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNGk0M6Vix9CqLXt@intel.com>
X-ClientProxiedBy: LO4P123CA0559.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:33b::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5039:EE_
X-MS-Office365-Filtering-Correlation-Id: b7b4d18d-f5b6-4a8f-08cd-08ddfa96ec9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?hOwiSe8z/dyqV2rFR007ff/AYgnPs93RZhuLjeXkeFZUNpXx8WlEMXZmB9?=
 =?iso-8859-1?Q?ZSbYHwT9vqkQKxLRt7MN4nvIbdF8vHfKDdmJGnkzTTS1yqaqs2brNBKn6I?=
 =?iso-8859-1?Q?qW06ve+Et3mJrS8rrdt6MlFPwXXnvT1rQCNahTSFYlbUFhHIaJG3/1ZoFi?=
 =?iso-8859-1?Q?bePorpsjIXuAdNk+nCVpDhpb867jynRSea12/KNh68XkUY7ZMzNEni9EEX?=
 =?iso-8859-1?Q?4JPyraVAdxylZ1OQNSSxggJveZOZtvZg/4DrUl/pU/K19lk/n5xFCMj5co?=
 =?iso-8859-1?Q?D3o/8LzJ2UwfZ7B6Nrb1rCMQ35JWy49gQur1AWQULl1uGpZnsPbYIsyLTG?=
 =?iso-8859-1?Q?e7rIGj0lDkNbVh7xn9lO7bGaZdhJh+iClRATdlxekc84WyRoQLd/GH8y6b?=
 =?iso-8859-1?Q?MK1EIDlxcnfYXTWHXBMYEs/2owmgae/ePNIfsQZTLrSfvM5DhCyQ1hk6x7?=
 =?iso-8859-1?Q?hBlN9kZlJ+cXTpxQt6R3yloJwAvabO2ugPqFBCsotNFsf3eAaoEfN7KGcY?=
 =?iso-8859-1?Q?lqZYi25sC6V7pPHQy2R64O/1yGgjj+LgWG8GqdzhNWpYMgY27YGr6Qb+EH?=
 =?iso-8859-1?Q?R0Z+pSgjVMzgf1Rj66EaRKvLOVC2kZQMBjmOVsZh/+jyRHh5dsMmhVkbdf?=
 =?iso-8859-1?Q?4nvsi6UUPHJ/Fnve8XHVejyO8HJ7eMJixx1t244ghY9qQIp/74VdOPRgNA?=
 =?iso-8859-1?Q?lpTmq+VjEL/QqVvNrrHWLGPaVkyAQky7z5Dsq/PiBuGto47r2HWshqT2Qp?=
 =?iso-8859-1?Q?7TI7c3Pv340xYu5WKHIqTsYDY10to4EOFF8b88wNyEZnoXbwEGl2SUd15F?=
 =?iso-8859-1?Q?UjCi5DaInMMANSUqOCHaE3uU/tEdCCgVBJcBd2H0dSEyN6IsYyTghp6hZa?=
 =?iso-8859-1?Q?jnQRxKNZTi/YkR7hZ2saaKKqkdpEwcRcgU/5ynVWIcJCpo1pSxpruehBgX?=
 =?iso-8859-1?Q?NGdbaThrMpJIwepYV+nwZPv9Yw6WbH6uCQOQanLOAs/F3XsRdsmZdmRNb9?=
 =?iso-8859-1?Q?FE3qVPtThXNw9CTtWtjYvLT5J4ksip9Su0M3o3YEYvaaRc6wcv2ij2kjiA?=
 =?iso-8859-1?Q?QmjpIHANRWupZ+c4iXfOu8t9e09rs+PdnLikL74woh5RZgur0y+/qAfdet?=
 =?iso-8859-1?Q?YrvsZ17+DzlBUQcRUG5OiOcfPWYfd11iEBKnMbizJX6X9Mu8UyBmdaiO4j?=
 =?iso-8859-1?Q?PKxUYd7hHT8hmWGlQjboi2cWwr/3u54nuEepPEe+1fwDxEszWlGWXihgn+?=
 =?iso-8859-1?Q?g5sxC+AmxEn4UMR8Ys6NzS8hM85Sb3Dgfo7ziYTm3TJitK9n4tgGkVbGcp?=
 =?iso-8859-1?Q?sONERcYqGONlgY1Q9Z81ooswT+SnfUrjNOC3oammaAeZR3jfEmhZgXKdgv?=
 =?iso-8859-1?Q?hnJDcG+K6V0/9koNbzpdK/B9t7H9gvFsa/S6nbquSBbhzv26yq/saRUmm+?=
 =?iso-8859-1?Q?y/U6EOc3Yc3c+8loRmEO7r9Ok8TNC9B1ci7RryKnLwJl3EbhDgy7GPzEl7?=
 =?iso-8859-1?Q?rNkJ9DDm107bZjAUxKjBjD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?z4oKdO6u38vStibyXLa61e7xGhAWd5P+EyoiQRysG3e8MVc7XwKy8oS/Y/?=
 =?iso-8859-1?Q?z2vbXj2SQrCEnbW+/2OSmgcFwr4L3BzlknZgKBmW0xqlRhPlNF3RVs04i0?=
 =?iso-8859-1?Q?MBujnZmEcssrAeTtmGkJSoSBWFUC0yGP/eHF5uCwMSFB0RoFM3L99t8um0?=
 =?iso-8859-1?Q?809lmkOrfpcLOBvi8uiuXEvPB1Ct61QbJ1f9+KN57kTQuolTzvXKcJlAEF?=
 =?iso-8859-1?Q?tA4gAkXScOQfcPl/4zvu+fuaDJLZNPXDxqoyaGE1D4WdfBOs1CTRwUqaSc?=
 =?iso-8859-1?Q?xulZfvI2YXwrOl4VUCGiB46NjQQvpY/70sbsgYBec++n/6Ag3nIULYoDoP?=
 =?iso-8859-1?Q?EKpVJwfjUAdXTdP6RZoYenv2jMmb8Bt0xj69kB7JZl0dHeCNah9hxL4fAP?=
 =?iso-8859-1?Q?KMIus9GLYK0haKnWZX3m78bd5IQ9Wga+raf9ybFwsRbReWx7A4VeZq7rRT?=
 =?iso-8859-1?Q?I8nB6vQVRvptsR8ofj/aStkqrbQrXIx2opDl56qinNrKtQdjtaPjg1orAk?=
 =?iso-8859-1?Q?b1DOrh2p3LRMg1m5tihafeianTmUZ5Wbrf8oVOu7xZmL9xeo0EQEUSuFfx?=
 =?iso-8859-1?Q?3LPHsuXP0c2Ka1stpvPpYwEcnp2a7dRJ1EwCJ4seXx5ims4Hk8EFGEGR6H?=
 =?iso-8859-1?Q?rU44gyEozpht3EdB4xnweFi9Y5Vg5lq6NU1W/K1XpVBRLhnGGSNqoym9fU?=
 =?iso-8859-1?Q?a1GLL/n7WMsZivNXG+79EaLs7g5A8FZMrwfwXPs9GShawfubfPbs9iTgOl?=
 =?iso-8859-1?Q?I6utFJl08k9kp1ALaTBWia6HboQQ+2zwzY45MBpNMN8jpQ+udKB3DfibJJ?=
 =?iso-8859-1?Q?A6GVJA5bDIomw9a2/+ClAVOHZ0Y+KYXAYinGnU1fMYrR+tsIaQ8mnDmqcM?=
 =?iso-8859-1?Q?ftj2H6/RIKSvePuWUze5aIamrv4qXvEUv9Cbb0WtPXV+UADw6m4IfP/67v?=
 =?iso-8859-1?Q?6I58SI0np6beUmJTKB7PcA9DUdKPUa52NRPIprFRQvOan8ycwJWfRPiJVq?=
 =?iso-8859-1?Q?FRe8K9iuV5sux9i+hQGFZ15kQaw3AujmLnOgtVfPWRxoxCy+5ORWKJnjfi?=
 =?iso-8859-1?Q?uxWrcUzgmzDPVQqqDxfPLNGMz7hXcxxfrmv+6nJhdylpqlZUm+wGuTItks?=
 =?iso-8859-1?Q?hBhNDBWGUMe41SpUwLMl1lamPKWgupImI92AkZLxcwmD5Y7nsBE7ImAbZz?=
 =?iso-8859-1?Q?CU2NnDotTEosltuLtVE4Y0qW2Vlp166vS08QwHNRWU9q+cmk4RfXJBO2N7?=
 =?iso-8859-1?Q?EDpc3m5dGgeJCnzNheUatf3uXQchNy9EsRoWF4zQBkxEgnvH6IDJbtXAFP?=
 =?iso-8859-1?Q?6Fprn6zvfv/AwybpnJgJ/xat8uYs4t7DS7c43H/SLdU/XLo16sTVl2UIIW?=
 =?iso-8859-1?Q?Q4anaBkvtSE4dLUPXqOzyZXFfrJY+pzjHI8culTgPqAa/ce+GZ7mH34LbZ?=
 =?iso-8859-1?Q?0RStPqHpZxEV8eehUnKK61i+U+zt9m1VZfqozGjzl1Wh6aS+Un+Z6pYn6C?=
 =?iso-8859-1?Q?gZYttYnkxqG48LS490Ti9SjSJ2hRzAWbzC8JkuyXhu0UADjZ9ci1E5ySGi?=
 =?iso-8859-1?Q?B5YXMCDTzhI52JFnVEz42xVyxcW1TCLH/rYWSuogU5+lsSJMKevM1xNdlf?=
 =?iso-8859-1?Q?UBi4MJ3A7zcud4UiorW5j9s6xIBUrk34AM2LA79sX1Hm/VmZtpA4b4/jNG?=
 =?iso-8859-1?Q?18rtX32P/cE/LItRoykhipaFIHrRNkT40IL9VSiS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b4d18d-f5b6-4a8f-08cd-08ddfa96ec9c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 11:47:08.0750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zfDhwOYmyZvaoyk7I3QegPO59QnR9+vfhWrl6/omJk34kKCjY18iaRgCsujVPseDjAcpaUWeoE6FcI20zaSTAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 22, 2025 at 10:34:40PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 19, 2025 at 12:12:20AM +0300, Imre Deak wrote:
> > Use the branch device's actual per-slice peak throughput to calculate
> > the minimum number of required DSC slices, falling back to the
> > hard-coded throughput values (as suggested by the DP Standard) if the
> > device's reported throughput value is 0.
> > 
> > For now use the minimum of the two throughput values, which is ok,
> > potentially resulting in a higher than required minimum slice count.
> > This doesn't change the current way of using the same minimum throughput
> > value regardless of the RGB/YUV output format used.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++----
> >  1 file changed, 41 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2eab591a8ef56..a963a58c87372 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1011,6 +1011,26 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
> >  	return bits_per_pixel;
> >  }
> >  
> > +static int dsc_per_slice_throughput(struct intel_display *display, int mode_clock, int bw_code)
> 
> s/bw_code/throughput_mode/ or something maybe to make it match the spec
> a bit better? "bw_code" is I think what we've been calling the
> LINK_BW_SET value.

Ok, will use throughput.

> 
> > +{
> > +	switch (bw_code) {
> > +	case 0:
> > +		if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
> > +			return DP_DSC_MAX_ENC_THROUGHPUT_0;
> > +		else
> > +			return DP_DSC_MAX_ENC_THROUGHPUT_1;
> 
> These look like some unhelpful single use defines. I'd get
> rid of them and just stick the actual numbers here.

Ok, agreed, will remove/inline the defines. The Standard actually
describes a 3rd range as well above 4800 MPixel/s, will add that too.

> > +	case 1:
> > +		return 340000;
> > +	case 2 ... 14:
> > +		return 400000 + 50000 * (bw_code - 2);
> > +	case 15:
> > +		return 170000;
> > +	default:
> > +		drm_err(display->drm, "Invalid DSC peak throughput code\n");
> 
> This whole thing looks like it belongs in some drm helper.
> Probably best to pass in struct drm_device from the start
> so that moving it over will later be easier.

Ok, agreed. Moved this now and the other DSC branch query functions in
this patchset to drm_dp_helper.c as in patch [1] in branch [2].

[1] https://github.com/ideak/linux/commit/7f7cab2746f4
[2] https://github.com/ideak/linux/commits/dsc-bpp-quirk

> 
> > +		return 340000;
> > +	}
> > +}
> > +
> >  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> >  				int mode_clock, int mode_hdisplay,
> >  				int num_joined_pipes)
> > @@ -1018,13 +1038,28 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> >  	struct intel_display *display = to_intel_display(connector);
> >  	u8 min_slice_count, i;
> >  	int max_slice_width;
> > +	int tp_rgb_yuv444;
> > +	int tp_yuv422_420;
> > +	u8 val;
> >  
> > -	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
> > -		min_slice_count = DIV_ROUND_UP(mode_clock,
> > -					       DP_DSC_MAX_ENC_THROUGHPUT_0);
> > -	else
> > -		min_slice_count = DIV_ROUND_UP(mode_clock,
> > -					       DP_DSC_MAX_ENC_THROUGHPUT_1);
> > +	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
> > +	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
> > +						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
> > +								val));
> > +	tp_yuv422_420 = dsc_per_slice_throughput(display, mode_clock,
> > +						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_1_MASK,
> > +								val));
> > +
> > +	/*
> > +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> > +	 * format of the output.
> > +	 * For now use the smaller of these, which is ok, potentially
> > +	 * resulting in a higher than required minimum slice count.
> > +	 * The RGB/YUV444 throughput value should be always either equal
> > +	 * or smaller than the YUV422/420 value, but let's not depend on
> > +	 * this assumption.
> > +	 */
> > +	min_slice_count = DIV_ROUND_UP(mode_clock, min(tp_rgb_yuv444, tp_yuv422_420));
> >  
> >  	/*
> >  	 * Due to some DSC engine BW limitations, we need to enable second
> > -- 
> > 2.49.1
> 
> -- 
> Ville Syrjälä
> Intel
