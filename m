Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEA4AE9BB7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38EFA10E897;
	Thu, 26 Jun 2025 10:44:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aaRw/uxB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4CB810E894;
 Thu, 26 Jun 2025 10:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750934647; x=1782470647;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=uIE2sFynWm4f9+3DC2LzUCz3Th77yqryNBPhYkCcuSk=;
 b=aaRw/uxByOK8i+qmk6SK2GSaTQuHtWE9R+gCvotOHag2ErggrrDTK9f+
 n54SuD+R+Kkg6Dslp8z3LDp2UKV8L8yIK597MCisx5KxMEqbBEO3LhTWe
 7xH7MxMChsIhyYBtGy4iH112jYuwjsvj+VNtK6pgrfM658sGbRssL2F4K
 s5bPOD0vLpluOpFGL5nfloGuScCM7Ez3wR8ka+1j+Md5A9y7r9GGHg37L
 /yF7OysrmxvjCANUqV2DoDX4wWy1sApM4uRe5IA3FZVkTcIblcqI4FNoy
 WPg+Q9J2pozRCoSJfwzrwurmCByRkpfTvIeEt/4U6e5gjgA2+B+35JMdG g==;
X-CSE-ConnectionGUID: DVL0iUq1RWq5NJMY00tOCg==
X-CSE-MsgGUID: Hqc+hEW8T3WMp+YTrboUOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="78661212"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="78661212"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:44:06 -0700
X-CSE-ConnectionGUID: q6y/nob+RgS4ZExNfZRvAw==
X-CSE-MsgGUID: /grbz193SjCrRDg0+kOHgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152109809"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:44:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 03:44:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 03:44:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 03:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sr00K5v+j9oWUROIJjplgAZXolMTHIB28xfLRdr3xHeZ8bQpduGZ8ksylTtP48bCDcKpcg1OEAkCuFMp1gigorNMBQwrkhgaJ/GHb4lu5QMI9SDn+y3cQTZdFsaDhVWCclE/YFcxhxmTgYZcpTayMxlxBTo9PvbVnk5blJTTXqsPJmnOz30hrP/tN8d8vbE/Ma7tJi5EmvuPgtxBRL8ACEnSI0zX+fmWwlZ585vLaFYUElCsijvBi/sPUaQdpOzSxghQeOfMIBX0dKvSupJt0nlOm8fL8VBZgOMWUBN9QviN2DihMwVO2WD8w9yviz/bA7tMBYBCeH5GDJP4+9Irfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ir1tV9Bh9rgpmK/J95CU0OOnX/lIXUBwzSAqzLSJAAs=;
 b=IhN5HUPAUOKT9o6Xsi+vO9y6ieG5lpSJrdRYB5K8OuKSfzUBk3sjrbjCzVQVzT78d7+JDHPHNagwvYXp6CYWGbztmvks+z90ZgpDTYQounO+ZrikP3uUttrPDnPdnZj/VC/RdiWfonrfe/F5Q1eXDx1zDE9D7oqxgAOERarm9BftYzgYEMsPsk1Nn+6LGqVURj+4Yc+lMDzzD0CwiXku/4wKDjYdrPmA6dTyShZKT81kf0N1FEio5c3ZylUmdXbh1ch0d+pyb5Ie9NYjAqlDGvjfz2FO9WgG4L2neC1ec7IKdB334kgam151L/19vBwler0LrfXk3WjvYA3NYdll6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CYXPR11MB8691.namprd11.prod.outlook.com (2603:10b6:930:d5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Thu, 26 Jun
 2025 10:44:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 10:44:04 +0000
Date: Thu, 26 Jun 2025 13:43:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
Message-ID: <aF0kbmZ34PeclKW_@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
 <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
 <aF0UbRD7DLIwZRYe@ideak-desk>
 <9ef664aa1e833ee6c3f97533da4a0d828a03f9f2@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9ef664aa1e833ee6c3f97533da4a0d828a03f9f2@intel.com>
X-ClientProxiedBy: LO4P265CA0021.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CYXPR11MB8691:EE_
X-MS-Office365-Filtering-Correlation-Id: 9229a026-4b77-4838-415b-08ddb49e5dcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bwmM1jpwVz50t6blIVMqxMu+ShnipCdVCzzwEw/LqxR+mJOoOipRuKS+0BxQ?=
 =?us-ascii?Q?OpCn2bn0Q+FJ3kH+txMPVYLIRD4eX9uXD3FSE5QFfuSaxJ/akt4r+iApm531?=
 =?us-ascii?Q?lBxLJ4faz1MMRSmJOXjeOa/dYbej8xe+MiEkhOwb8rEQeGUYJ4ABeUJoI/nR?=
 =?us-ascii?Q?V1kQBJxq7unNR8AMR4CnWaP9B/NBE2WE71i4ej0i1WRqgDFea+5XtYgdJ0WJ?=
 =?us-ascii?Q?LuYyX6ChgWaMMjkxGW6doIfwNbmtEScqKMWhvgtm5XbVGx6Wv7t+FyOYEfPK?=
 =?us-ascii?Q?ikt2YutAulyvvtAdJz/gGJ+L+Xyo3CXcmTRuKLmp1May/O2RQnsJ9eiZSElS?=
 =?us-ascii?Q?8T+uN4GquK9lCiCROoszppmfkde2Kp65xw/wyRYqr04MnRQFvPM0byUq4pIV?=
 =?us-ascii?Q?Qxqtp24sCJ5F6ZGVNMDD3yKLve/zDkPkkKmQCRk30mLWUg4tgwLK70pUUSvm?=
 =?us-ascii?Q?3F5jjHRi7InU3/tltslNG+niJH+bMmAeuSqp6obbu9uAt8zxRKgx05WxR80M?=
 =?us-ascii?Q?1aZ2Gl4hTU0RfK4UUoCRgDhWZ2Sd1gnF4Je+W9nf64uzdq4UovZMYdTb1XTc?=
 =?us-ascii?Q?u+ZC1UhVNGXOwYdy2Y4ZZheEESSf7JrgSY7IejMB+/96rTkWfNdwzVBhehpu?=
 =?us-ascii?Q?JSvYm60E8ydwHEoMUt5E/JDr9Qb8siRMgm0WOyEpPTrf1U9edF1cqVdIiDl7?=
 =?us-ascii?Q?4YGo+igfqbVPrat3tGX+5b+fgKYjGo+AuVg7KyR7If+uAGf1kPm3RYYMD7sM?=
 =?us-ascii?Q?wg/UOvZ+A3Kj8KjKL2or4wkWJMYJ+TyvuauQD8uZyDSqnrN3pCC/HUJsfDPT?=
 =?us-ascii?Q?oDZAcYU8JIulLwqW4HSqw++K5ToCVKdoOpzbKRo8gHH/h7yYtoZjnotg4v/+?=
 =?us-ascii?Q?/BeoCX4pSZjtO2+HAfOzLkmH85FfL/axtoLrxuBzpsSRkbyz43c56vErmGsE?=
 =?us-ascii?Q?ZMpreZils6Hc3PZDth3fthuEo+n+SFfpxBqVxDFrETRfMpxFmrFBZUrNLFdh?=
 =?us-ascii?Q?ce4AVTlYOYaEPSm9ZR/uXZpHt27PEIiWm+kYwGnq8y0tKZuBsHSazh0Iq2gy?=
 =?us-ascii?Q?XNH2hzTay1ByV+wNGcjpp6rhyXsQ3EKL4Np9MkA8urmyOSG2drMSkIW2hdmm?=
 =?us-ascii?Q?XHDnCAU8PULUDLpLNlsY6sdy3n/qhb0KpfiQkXOq9wRWsYxNmJ2hZGkT/lZB?=
 =?us-ascii?Q?pAjf3Fx6AcCsaU7E0nsXSVJt2xkpHouTUcIEvkFa/I9+kyQZDyOYJenKdriS?=
 =?us-ascii?Q?xGPz7VyD8bBMSUrIUajyv2pP0Jk/kJCmVMx+jKxnGFHG+a/NeFpZnFhlzREu?=
 =?us-ascii?Q?LmW4cgE7RjGyv/CC04pj6Z5Y7VYOpaDOGwuidCAja6nnjFH3vHBMn7Jz5S5l?=
 =?us-ascii?Q?8ZHRFjtna9Z1YICeOVqwej5J/C0UPfnikmoVWONAEfh2Dvkj+1B9Cg/kfS3Q?=
 =?us-ascii?Q?1/G5gE9dPP8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FA5gRT/IhHWbOP9ZRavEfhRILsCzereCJz4BeNabwF+YUP4jMWjSAijO+jEg?=
 =?us-ascii?Q?Ho2aw4UkmgRmoq8smpbkOn6VwNYVQAJC3kOrlNWMo7Z1txW6welTvEt2ZfYk?=
 =?us-ascii?Q?K1FHTnTJrYeihFeO5ix0UaVim53oaslmlnMAlYx6BAGcmw7LyxOmUxQd4/2b?=
 =?us-ascii?Q?XNmcplyaowvgN6S7lJY+L4xJaQvA+CxlWbxHTLg52UYg5abb9FosROkIhPea?=
 =?us-ascii?Q?zHpRiColFCx+Y3YJaMS+zZ/GxUxz7bWWzxCo1Z2bRMTRm1Q1K5BVL7D5IsBW?=
 =?us-ascii?Q?eyl/hQzhHr7k2lRmMpvgQ4CaiqrLWUO1MD/kmfjQ5W1JrvIHJu7JP16iw9+8?=
 =?us-ascii?Q?KA6++D+HXIzATHSGnuavvZ67oVXZGMtnObpZoVeg75mKdjWyOtIvOaR7Nl7L?=
 =?us-ascii?Q?wodYy8egKZgKbTs7+iBzxFY8ykAFd/cwYWUBg3iZUR6MZMBpF4AlcVXe5j2/?=
 =?us-ascii?Q?nBla3kx4Z2R+zSSh9wHP9Lnc4C1ttRZxUQArGhO5fJSfr/+mm1eFcYSoAZDM?=
 =?us-ascii?Q?KTeXCq3PsRfv/lWKAyh6DCuGaRlhLMxevp27d6hRbbHmLq/DO0JHhkp1rNxh?=
 =?us-ascii?Q?h4t1uZ/ymMs+adsiD8KMOB0g+gkiec2qDUUuEkejgaXlSdHPUEDNlcVytSdU?=
 =?us-ascii?Q?yHW5/t3satUMrllpiR4YO7F71ikaDi9ps+dBEOZVcolOtdery6edIM3IMLg6?=
 =?us-ascii?Q?Xu7+k1XBxqdZEsxTyMdB44ZytpZcZWrUmAFrUTv6z/1QRqAoX9OgzBuMGmhC?=
 =?us-ascii?Q?wHPrqlyfSibXkPsIaP4IE0sXZjeGn7JgSD2yBN/usjYxO1WqkcAdGfz22CZL?=
 =?us-ascii?Q?h1W3GdggptHVl3ImOTrGPIr5zodOpabVBYv6f6alBibgJBOBqw5mIAwjFsag?=
 =?us-ascii?Q?e8gX7J6jkl5dwiJO4kxxXQvugou2iG99VPSisa4biC60VMp3EV2Uf+MvMSwg?=
 =?us-ascii?Q?TzJ4B5mNGBIVghlu2kxnHSR96274YUF5ZyTwmA1Aon7YYg+lrcSs9zFkSlcB?=
 =?us-ascii?Q?s4KYJb/l9mnI3sdRlBhTCwOQ00alYV07m7WURX3zkABLoFUpj+o0EtFmdgdu?=
 =?us-ascii?Q?/Q9t2olhjeWkzUOmCobId1BnpFyFapjx+cM/fJXH5BlJ7iXrU1PtLmWCClA6?=
 =?us-ascii?Q?n9CUHInlSlOvPv5uH2p1vcOj+gUtZS+ieuQTLwi2L3C7IqeGaaWZOu5Ie2HQ?=
 =?us-ascii?Q?JbIaNPwL2y6xlpATPVebHyjpe/Q+uG1z/DxjW7aLr0FNSKwFVFB5I0GlLpej?=
 =?us-ascii?Q?Pb+XYb9b+c4A8gP1nY9Wlg5QmVHQY+GgbMA95s+rCTmQLLKeLroAfxbu5Weo?=
 =?us-ascii?Q?jajAuZqgI9aEPhIFQmMs2ekM0TQwswkhTNmvtVKQivnhCZnn8j0hBHgPzxwE?=
 =?us-ascii?Q?KWFjGp+UwyEyDVdENHAkwzna9oI7bGalrag60EthjCRqS5oFSfXGkawKMHoc?=
 =?us-ascii?Q?7N/4CnbcXRNLuAacH4D6Hw6heSv8FUSsN6FFw9MHOba+PBHIwqDbsg+3wQAD?=
 =?us-ascii?Q?fJT4NSa2/B0BbbRRFblFdBmx94rf9z8kpnt4Hr+ODhWUNLZ7Yp7ne1lI2BTS?=
 =?us-ascii?Q?uGDP4pvtb1Mkl3MPekagewuDE4ZAZPySUuOEBIrJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9229a026-4b77-4838-415b-08ddb49e5dcf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 10:44:03.9362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r8Wa1/onNwwHN1p069dHdCfFCbxUOlJGmiZPmxnsFP0XwVhsNR7Mbi2J0QG/cDDt6k1XzQTviOEF9nvnUXL4aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8691
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

On Thu, Jun 26, 2025 at 01:23:12PM +0300, Jani Nikula wrote:
> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Jun 26, 2025 at 12:12:11PM +0300, Jani Nikula wrote:
> >> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > From: Imre Deak <imre.deak@gmail.com>
> >> >
> >> > An AUX access failure during HPD IRQ handling should be handled by
> >> > falling back to a full connector detection, ensure that if the failure
> >> > happens while reading/acking a device service IRQ.
> >> >
> >> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
> >> >  1 file changed, 15 insertions(+), 6 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 7793a72983abd..7eb208d2c321b 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
> >> >  	intel_encoder_link_check_queue_work(encoder, 0);
> >> >  }
> >> >  
> >> > -static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >> > +static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >> 
> >> I don't think "check" is very intuitive in function names. Check
> >> something, but then what? Is it like an assert or does it do something
> >> active or what?
> >> 
> >> What does a boolean return from a check function mean?
> >> 
> >> It's not obvious to the reader at all.
> >
> > I agree, but in this patch I didn't want to change the function name.
> 
> Arguably adding a return value changes the meaning already...
> 
> >
> >> 
> >> >  {
> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> >  	u8 val;
> >> >  
> >> >  	if (drm_dp_dpcd_readb(&intel_dp->aux,
> >> > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
> >> > -		return;
> >> > +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
> >> > +		return true;
> >> 
> >> Looks like true means the check failed... while usually true for boolean
> >> functions means success.
> >
> > The function returns true as before if a full connector detection is needed.
> 
> But it didn't return anything before! And that meaning is not conveyed
> to the reader in *any* reasonable way!

This function is the counterpart of intel_dp_check_link_service_irq()
both functions having the same purpose, reading and handling HPD IRQs.
The latter one's return value is true if a reprobe is needed and this
patch doesn't change that, it keeps the two functions behave the same
way.

> The absolute minimum is to add a comment (mind you, kernel-doc is
> overkill) stating what the return value means.

The function name will change in a follow-up patch and I think that
doesn't require a comment on the return value.

> >> 
> >> >  
> >> > -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
> >> > +	if (!val)
> >> > +		return false;
> >> > +
> >> > +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
> >> > +		return true;
> >> >  
> >> >  	if (val & DP_AUTOMATED_TEST_REQUEST)
> >> >  		intel_dp_test_request(intel_dp);
> >> 
> >> Whoa, it's not a *check* function at all?! It actually *handles* the
> >> service irqs.
> >> 
> >> Can we rephrase the function name?
> >
> > I want to keep the function name in this patch. In the following patches
> > I will separate this part and rename it to
> > intel_dp_get_and_ack_device_service_irq(). 
> 
> Right, saw that now. But even for that function name the meaning of the
> return value is ambiguous.

All the get/ack IRQ functions in intel_dp.c return true for success.

> 
> BR,
> Jani.
> 
> >
> >
> >> int intel_dp_handle_device_service_irq() and int returns maybe?
> >> BR,
> >> Jani.
> >> 
> >> > @@ -5412,6 +5416,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >> >  
> >> >  	if (val & DP_SINK_SPECIFIC_IRQ)
> >> >  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
> >> > +
> >> > +	return false;
> >> >  }
> >> >  
> >> >  static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> >> > @@ -5476,8 +5482,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
> >> >  		/* No need to proceed if we are going to do full detect */
> >> >  		return false;
> >> >  
> >> > -	intel_dp_check_device_service_irq(intel_dp);
> >> > -	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
> >> > +	if (intel_dp_check_device_service_irq(intel_dp))
> >> > +		reprobe_needed = true;
> >> > +
> >> > +	if (intel_dp_check_link_service_irq(intel_dp))
> >> > +		reprobe_needed = true;
> >> >  
> >> >  	/* Handle CEC interrupts, if any */
> >> >  	drm_dp_cec_irq(&intel_dp->aux);
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
