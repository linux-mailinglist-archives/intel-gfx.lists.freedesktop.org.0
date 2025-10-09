Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F647BC810F
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 10:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFB710E970;
	Thu,  9 Oct 2025 08:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oe1urwrT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C5A10E3A5;
 Thu,  9 Oct 2025 08:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759999020; x=1791535020;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bZKy1ifOl99lj0/ztaxCA3jx3qhUvc2iwWAC6Kb2BR8=;
 b=Oe1urwrTvI9USiszYGV8Q4ojk0hiZrFCNwYjRyHi38oMvHLho/iWxYAp
 6LZfR81rVg8+keYSm97BqCaeip0KcMOFAoDpdGFXee/Mfb2LPBdT329IY
 ydQ+/uHUweER/ngULcV8f3OYFWOIDf1XV1T4lxZqafwHjgxdMrToTPvLo
 TaH5z1LTWajzAWpq/wGH/95pXRpcgM74+Far9SbcETjljxbOu3uj0+T3h
 F3EpRf8LbHXytyz01LvQaxPnV37vWQPXDvVA/ETh4W2+iHm1TZ1lb3QhG
 jMhjLaokgMKGnfqExFmHfkviDqKeg1mYQPE9KayN6DsoosMvI6dLS/Dlv A==;
X-CSE-ConnectionGUID: kecWaKfsTJS+BNkaFJME8w==
X-CSE-MsgGUID: j7TQC/IzStubZM6Nnrjp3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="61909626"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="61909626"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 01:37:00 -0700
X-CSE-ConnectionGUID: 8oNmxU/uSBit2DWeHHA5Rg==
X-CSE-MsgGUID: ZAB+tWKFQ2aecjiBL+v+TA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 01:37:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 01:36:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 01:36:59 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.34)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 01:36:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q421xt3fJ1t8QDx/kBL9bhQKrvR+Ia2FCa796t8HLsR5dfPLRWvHM425ZjBczAOXwDG24T2L0aRkzgMKDtugZ1w23XwHbcnHMma0dQaBdlV7pDzZ+AaqBDsrl/ehsAlf5PbsUZ1vi/Ef4NT2E3hZHrdZsxB/ALDwB9QAXXZCr3J2TJwcTK4Zw58lds3GItPfGwxF5ZPYR+OOIOKGMxENIwhMAixxiPVU5M3br/DDeyVQdmiFJ3r0R2AnHuEP+pi2NxjbznWBDp+ZopsEONQCY/BsFGGXVUp1gdmg8HEc5IF/LHFtEX59esymAqOAhWij9zVwVta3ZoCTWtNiGl7lng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yjzsGBd1BMD2y2DlTp50JSXP1V+j/Y24UByLbDcRue0=;
 b=rM+T+M5PS7HHLqjkO0DRqx0xGsVMcMHvjIqM2yLV/kPl+KGw/FMUPP7NlsenJbl9vVB109HkSMkOeQeJGj2iienY8E272ei2po7qOGmdglUv2Uu+VXg663b+MC9gDoqVVvIPkJzSwLMfjGfdxIBOycM31VMXZ1AQiC9rGVY8h+LiyhiZAKB9QW2Z2cXPsf+CX/7WiceO6VGxjh0rOde0WaOL25VGawrTtMdpgPIoTdx7XB2Ob7Y3DRa5UO4lNbvprVqB+vr/yk9DMZkSli8Oe5OTT+UXOhDLzkKvQ2B92f6eVYtDXTqNOQ6xo/zPQA8w/WD5l7cw6ecHNidZFhJDsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN0PR11MB6033.namprd11.prod.outlook.com (2603:10b6:208:374::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Thu, 9 Oct
 2025 08:36:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Thu, 9 Oct 2025
 08:36:56 +0000
Date: Thu, 9 Oct 2025 11:36:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/dp: Fix panel replay when DSC is enabled
Message-ID: <aOd0I3SO7COsP5mR@ideak-desk>
References: <20251008094108.88242-1-imre.deak@intel.com>
 <20251008094108.88242-3-imre.deak@intel.com>
 <c941203bde504fb3fd4d90a6f183f5579a56c87c.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c941203bde504fb3fd4d90a6f183f5579a56c87c.camel@intel.com>
X-ClientProxiedBy: DUZPR01CA0054.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN0PR11MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: 28cfef37-04f6-4ba7-81d9-08de070f014f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?XJSiDpHt8cmisd4veRLNc9WG2ZxhBetTaHWHA0sbT5nsbjvjQssrjJtHD6?=
 =?iso-8859-1?Q?T8JU7IOCoY1OiglZKGgb+V5UZL74SeJFgVtvKsNJ0idFNPjKcRaagxpzK3?=
 =?iso-8859-1?Q?sO5PHAXNsuet5BnPpR1ip4RQEO83wzKRvRup49pn3c86POzDy60Y3msKmP?=
 =?iso-8859-1?Q?SvDTOh1L2ZcIC2Peims106+daxmcV4/MB6JyYJ2djELbyZEjFY8M86Yxlj?=
 =?iso-8859-1?Q?U1+kzJ1hUyP/3Rn9wb/1HdJJcTzKe+FNJ4pYHpbifNC4fjvEDJ+4xZFW3I?=
 =?iso-8859-1?Q?FmT6W9bDtnbsifIcjjE56mcBNrzzFwH4Se+hTUIRyvGMRpb3SqAzef+Rkk?=
 =?iso-8859-1?Q?v9ITjGFC8ZraneXp8Cufjx3sqHhuTvkcbjQTuuNyxjoraDyvx32tz3/wNN?=
 =?iso-8859-1?Q?vU5ZEk7lASOxEEpQGHxfU22RqWtelNaznoV7+3K3/vmm9x3pzJJ2h1c9vC?=
 =?iso-8859-1?Q?WZFCpWVyKPN5RjcxhFIhAw3JUODNNchQEme6Hq2123eRcCsKdnl9y8ozP+?=
 =?iso-8859-1?Q?HmrxrG+71Ms4uweu0/TUXOsO35SuZvvDwQsIzqEDAb4I52JDsrADXo2C4a?=
 =?iso-8859-1?Q?IRiaIbXRVg5UXRIEqWe4wMsCQ/kmfJs72B6kNGK5n84nQ3Peo2o6JImHYX?=
 =?iso-8859-1?Q?TeHGCP3LKwn0SvQyCgTykhVtOE+HFMz+BMoFQsJa7K+6llcYOkl5GWKSHS?=
 =?iso-8859-1?Q?2idJiyCNUaUmGVYWrLWzQaqAuBrdkiuBB4uS2LtDYyzwBfUv+M3apwoVZG?=
 =?iso-8859-1?Q?3ySnZRAYCWqoSVIXOKk3ApYj2i7nU6q4ch16jF7cYeHquUw0ekLn9rR8Tj?=
 =?iso-8859-1?Q?22GhSxz4TaJr//X+38SiujagQAsuwTZntAlrfz1UTBGzTamEcajTvd6fpZ?=
 =?iso-8859-1?Q?AicNeY18WcIijmu9/G5pKNudVh6lWT/gx+8Z9OOquPgh1impJwih/S8oHr?=
 =?iso-8859-1?Q?AroX4WnejAmgQkGSYHrK9hSgbVN7hxZY4x7AoC1R+u4y9WcPNiW5iCvRPa?=
 =?iso-8859-1?Q?O8KPprMhvpt8SaLHle4axChp5e2pyHIimIoAZQQ2vkUekYLfkl6cjPD4N0?=
 =?iso-8859-1?Q?MBjRoX473WEfKA9ibj0kWcFMx9L+aYkvO+p/VkJ/RkI/JtFhq1aoXVEtlx?=
 =?iso-8859-1?Q?9UDN6GqTALJoe0JmljDT/Rp/svH3NQoDhiuq1YoFgfW+NPu2gzbsvVy38d?=
 =?iso-8859-1?Q?AQ3LnDlU5+3ym9ofeGfjbzER0vKZgYl1j+JSFPyk8sLhtmyurU46N5+nNh?=
 =?iso-8859-1?Q?Lb/LdS8X5btnFuqcEJKzxWkgD+NdmoWr2pNOhFj3dGHHYe12+vEdwzQ4w3?=
 =?iso-8859-1?Q?nNtbYhVHdyHoqYaGmvu8f5hlhB+OKjbZ3nWX9iLCJy9t+gGanMNb9Rb9+G?=
 =?iso-8859-1?Q?fLel2koYXqM6qEvZf9BmNlqB49UbLMNQXxRxRYfPFe/1kCB7OHWIAbjh7J?=
 =?iso-8859-1?Q?gmHrjOSCrP+yT1l7lf6hw4OdhCmEPMnJ+LEFFA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pE2RtCJY4e/oYIIYYXI8NuOQh+U2bPZlCpy1/gIeN+JOq3L66qYxG6/exK?=
 =?iso-8859-1?Q?eSRvfxGc61AuB50edLsBwgN6PLy8mM1aq1GLq8Oe0Xc1KdPlAl66oKVwxz?=
 =?iso-8859-1?Q?0cK4MlPKqbj0k9rbxeH2tlvhEA261tQmAYnRJfu4HhtRLd3BWVHQ+FlRlP?=
 =?iso-8859-1?Q?hcxRq7ecZ0ISVUfyGTCNhL2WBMjfeZBFx66qR31Si/3lzvDj8eB+0elbdg?=
 =?iso-8859-1?Q?hQ7Z1lUsSXYvsI6qRl76Hgev1DnHKcbezvMl4xZkMW44qvLNEntKK3u3Z4?=
 =?iso-8859-1?Q?WMtrHeKnBXIcd7pNFwRD1nNsi2f1Fx79xr0Iy72ZGjK3p2Qx26MHxZH99h?=
 =?iso-8859-1?Q?isxD2dHrPoidcWnxMgngTg7Apefdv74sfzRukovppK8GtCY05UYUQpNpbP?=
 =?iso-8859-1?Q?Y2+9ydxk9y9IK0mj9nc9o/wYPHXjfX4J+HwYEW+5i7vhyyrt7OSNmOxRAL?=
 =?iso-8859-1?Q?VlF2vzQAX9YP2uH2PyEY/BJVwS5SQzZItQ7bAQYNnlA2Nh19TOvvJuUi1G?=
 =?iso-8859-1?Q?UabRa7rlYjtAALz4l1CRhC00yX87ju1DqoBCvGrzt5BypV2YOTLJJCw7TI?=
 =?iso-8859-1?Q?zRlOF2p0IQN2I+Eh2c6hss1O9zpmUMlRDdjvtr5X/YVVWXxIB2Vcx5A9My?=
 =?iso-8859-1?Q?slCjdQZwimdERE/Vhine/frWQuMwxijgQGPw5v2ocmY4CRSR1NOlRlS7C4?=
 =?iso-8859-1?Q?S9ccDf1xALxxA+++BzKRKtwzmnun5n8iG+9RBmuYIbYA/MdozPGKA4ATlx?=
 =?iso-8859-1?Q?1W79/zqSi9BvoULaufr9+8E9cctJ83dVSUy/CGihu2ou3qevJShkmDnmJE?=
 =?iso-8859-1?Q?s91sg7uazUSldTPW0GbuwLX7h/sjKtRVfLPIw9+Im6sfbJ5kJXlOVYwW5m?=
 =?iso-8859-1?Q?iTb1V/ZwmGHSYErNowbpFeFAtMpS38HvDAsMISxImQuhnUc0tPnC1Zc11L?=
 =?iso-8859-1?Q?KyGO3z1km0+W3112wkf7lm3GwWQSxlSjJnuO3GqQwVHjmTTXs7FkN6mWyg?=
 =?iso-8859-1?Q?FNG7/4zvfktAEkeyjdFuhR4490YhcZ3E3D6yTQ5HVzRpEDp3YX/9aymeRB?=
 =?iso-8859-1?Q?1Et90YQZJw4kZl13Hd6V4THiI353LEuIb4PfLPyNzXGrPr8GyzA2jlFERC?=
 =?iso-8859-1?Q?PZscVhqyw/NOfKhQhFLJufy6ij0nq/MX6TwEU30khqGFI/NNzRLRzpZQ+2?=
 =?iso-8859-1?Q?sCmI6vSos2BTntUUWZefbGcynJKDHaHIV5nUSE8BrheHuxfw/Ai85PNbVE?=
 =?iso-8859-1?Q?Mq42vxQ/n5E+a+H8paThcJinsNT0pyphgqFx58xjZ2HFJLzdolF4eYtxMM?=
 =?iso-8859-1?Q?WB7ij1Z8SiXO45eSFgmHLkvlD2tZcwD/wt96mWc0l8vJ2NSC7ofAX3qnS6?=
 =?iso-8859-1?Q?W2af7NdP29sYR93C1wd7gQGOwbzQJ8s83I+IyhwwPTaJ3vhVlIvR+WuuaJ?=
 =?iso-8859-1?Q?/cZCe9dD2l4s2vPdGzSl9RNebt/OO9BuzWznGibM3JDXFEK2GyZuCra4vw?=
 =?iso-8859-1?Q?5pdXbqKcWpZCklT1bVeWqY3vg/LUcnbkpeqRcNkKZx3UKlGlGnQHfcdoqC?=
 =?iso-8859-1?Q?yKLC1eV2v8TnYnXQaCz4o/pgAd6rqF3hoJOP1ACmz0+K8NAvQBdJg1d752?=
 =?iso-8859-1?Q?RGT1BRTxjrFjvES7JqRXWIIlGJYtM1GNf44fREiGXsQchImqN5mnQRKeHC?=
 =?iso-8859-1?Q?SsFH/HRB54Hxe6k0xosJkI1xbkkXot4R3VbirVPm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cfef37-04f6-4ba7-81d9-08de070f014f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2025 08:36:56.3959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gB6yaEzI7ptvxnObhPPBwGWwLOPcwlYE4y06EvEgr4St6SJvds8NHi1SnounWUFmT1hwucSn2xOdzKiLXQ4fdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6033
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

On Thu, Oct 09, 2025 at 06:56:13AM +0300, Jouni Hogander wrote:
> On Wed, 2025-10-08 at 12:41 +0300, Imre Deak wrote:
> > Prevent enabling panel replay if the sink doesn't support this due to
> > DSC being enabled.
> > 
> > Panel replay has two modes, updating full frames or only selected
> > regions of the frame. If the sink doesn't support PR in full frame
> > update mode with DSC prevent PR completely if DSC is enabled. If the
> > sink doesn't support PR only in the selective update mode while DSC
> > is enabled, it will still support PR in the full frame update mode, so
> > only prevent selective updates in this case.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14869
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  9 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 93
> > ++++++++++++++++++-
> >  3 files changed, 99 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ca5a87772e93a..e0c5abab3b380 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -955,6 +955,12 @@ struct intel_csc_matrix {
> >  	u16 postoff[3];
> >  };
> >  
> > +enum intel_panel_replay_dsc_support {
> > +	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
> > +	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
> > +	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
> > +};
> > +
> 
> How about relying on pr_dpcd in _panel_replay_compute_config and
> intel_sel_update_config_valid with some helpers?

This cap depends on other conditions as well, besides the flag in
pr_dpcd[] so I think it should be determined once, already where all
those other conditions are checked as well, in
_panel_replay_init_dpcd(). The other sink panel replay/psr caps are also
decoded there, so it would be strange to not do this at the same place
for the panel replay DSC caps.

> >  struct intel_crtc_state {
> >  	/*
> >  	 * uapi (drm) state. This is the software state shown to
> > userspace.
> > @@ -1133,6 +1139,8 @@ struct intel_crtc_state {
> >  	bool has_panel_replay;
> >  	bool wm_level_disabled;
> >  	bool pkg_c_latency_used;
> > +	/* Only used for state verification. */
> > +	enum intel_panel_replay_dsc_support
> > panel_replay_dsc_support;
> >  	u32 dc3co_exitline;
> >  	u16 su_y_granularity;
> >  	u8 active_non_psr_pipes;
> > @@ -1691,6 +1699,7 @@ struct intel_psr {
> >  	bool source_panel_replay_support;
> >  	bool sink_panel_replay_support;
> >  	bool sink_panel_replay_su_support;
> > +	enum intel_panel_replay_dsc_support
> > sink_panel_replay_dsc_support;
> >  	bool panel_replay_enabled;
> >  	u32 dc3co_exitline;
> >  	u32 dc3co_exit_delay;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8a2fc1fcb5d04..116d7720f427b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6043,6 +6043,8 @@ intel_dp_detect(struct drm_connector
> > *_connector,
> >  		memset(connector->dp.dsc_dpcd, 0, sizeof(connector-
> > >dp.dsc_dpcd));
> >  		intel_dp->psr.sink_panel_replay_support = false;
> >  		intel_dp->psr.sink_panel_replay_su_support = false;
> > +		intel_dp->psr.sink_panel_replay_dsc_support =
> > +			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
> >  
> >  		intel_dp_mst_disconnect(intel_dp);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index f7115969b4c5e..080a86f8dc80b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -29,6 +29,7 @@
> >  #include <drm/drm_vblank.h>
> >  
> >  #include "i915_reg.h"
> > +#include "i915_utils.h"
> >  #include "intel_alpm.h"
> >  #include "intel_atomic.h"
> >  #include "intel_crtc.h"
> > @@ -50,6 +51,7 @@
> >  #include "intel_snps_phy.h"
> >  #include "intel_step.h"
> >  #include "intel_vblank.h"
> > +#include "intel_vdsc.h"
> >  #include "intel_vrr.h"
> >  #include "skl_universal_plane.h"
> >  
> > @@ -580,6 +582,44 @@ static void intel_dp_get_su_granularity(struct
> > intel_dp *intel_dp)
> >  	intel_dp->psr.su_y_granularity = y;
> >  }
> >  
> > +static enum intel_panel_replay_dsc_support
> > +compute_pr_dsc_support(struct intel_dp *intel_dp)
> > +{
> > +	u8 pr_dsc_mode;
> > +	u8 val;
> > +
> > +	val = intel_dp-
> > >pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
> > +	pr_dsc_mode =
> > REG_FIELD_GET8(DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK,
> > val);
> > +
> > +	switch (pr_dsc_mode) {
> > +	case DP_DSC_DECODE_CAPABILITY_IN_PR_FULL_FRAME_ONLY:
> > +		return INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY;
> > +	case DP_DSC_DECODE_CAPABILITY_IN_PR_SUPPORTED:
> > +		return INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE;
> > +	default:
> > +		MISSING_CASE(pr_dsc_mode);
> > +		fallthrough;
> > +	case DP_DSC_DECODE_CAPABILITY_IN_PR_NOT_SUPPORTED:
> > +	case DP_DSC_DECODE_CAPABILITY_IN_PR_RESERVED:
> > +		return INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
> > +	}
> > +}
> > +
> > +static const char *panel_replay_dsc_support_str(enum
> > intel_panel_replay_dsc_support dsc_support)
> > +{
> > +	switch (dsc_support) {
> > +	case INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED:
> > +		return "not supported";
> > +	case INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY:
> > +		return "full frame only";
> > +	case INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE:
> > +		return "selective update";
> > +	default:
> > +		MISSING_CASE(dsc_support);
> > +		return "n/a";
> > +	};
> > +}
> > +
> >  static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > @@ -615,10 +655,13 @@ static void _panel_replay_init_dpcd(struct
> > intel_dp *intel_dp)
> >  	    DP_PANEL_REPLAY_SU_SUPPORT)
> >  		intel_dp->psr.sink_panel_replay_su_support = true;
> >  
> > +	intel_dp->psr.sink_panel_replay_dsc_support =
> > compute_pr_dsc_support(intel_dp);
> > +
> >  	drm_dbg_kms(display->drm,
> > -		    "Panel replay %sis supported by panel\n",
> > +		    "Panel replay %sis supported by panel (in DSC
> > mode: %s)\n",
> >  		    intel_dp->psr.sink_panel_replay_su_support ?
> > -		    "selective_update " : "");
> > +		    "selective_update " : "",
> > +		    panel_replay_dsc_support_str(intel_dp-
> > >psr.sink_panel_replay_dsc_support));
> >  }
> >  
> >  static void _psr_init_dpcd(struct intel_dp *intel_dp)
> > @@ -1535,9 +1578,21 @@ static bool
> > intel_sel_update_config_valid(struct intel_dp *intel_dp,
> >  		goto unsupported;
> >  	}
> >  
> > -	if (crtc_state->has_panel_replay && (DISPLAY_VER(display) <
> > 14 ||
> > -					     !intel_dp-
> > >psr.sink_panel_replay_su_support))
> > -		goto unsupported;
> > +	if (crtc_state->has_panel_replay) {
> > +		if (DISPLAY_VER(display) < 14)
> > +			goto unsupported;
> > +
> > +		if (!intel_dp->psr.sink_panel_replay_su_support)
> > +			goto unsupported;
> > +
> > +		if (intel_dsc_is_enabled_on_link(crtc_state) &&
> > +		    intel_dp->psr.sink_panel_replay_dsc_support !=
> > +		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
> > +			drm_dbg_kms(display->drm,
> > +				    "Selective update with PR not
> > enabled because it's not
> 
> "Panel Replay" used everywhere else.

Okay, will change this.

> > supported with DSC\n");
> > +			goto unsupported;
> > +		}
> > +	}
> >  
> >  	if (crtc_state->crc_enabled) {
> >  		drm_dbg_kms(display->drm,
> > @@ -1614,6 +1669,14 @@ _panel_replay_compute_config(struct intel_dp
> > *intel_dp,
> >  		return false;
> >  	}
> >  
> > +	if (intel_dsc_is_enabled_on_link(crtc_state) &&
> > +	    intel_dp->psr.sink_panel_replay_dsc_support ==
> > +	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
> > +		drm_dbg_kms(display->drm,
> > +			    "Panel Replay not enabled because it's
> > not supported with DSC\n");
> > +		return false;
> > +	}
> > +
> >  	if (!intel_dp_is_edp(intel_dp))
> >  		return true;
> >  
> > @@ -1694,6 +1757,8 @@ void intel_psr_compute_config(struct intel_dp
> > *intel_dp,
> >  		return;
> >  	}
> >  
> > +	/* Only used for state verification. */
> > +	crtc_state->panel_replay_dsc_support = intel_dp-
> > >psr.sink_panel_replay_dsc_support;
> >  	crtc_state->has_panel_replay =
> > _panel_replay_compute_config(intel_dp,
> >  								   
> > crtc_state,
> >  								   
> > conn_state);
> > @@ -2951,6 +3016,20 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >  	}
> >  }
> >  
> > +static void
> > +verify_panel_replay_dsc_state(const struct intel_crtc_state
> > *crtc_state)
> > +{
> > +	struct intel_display *display =
> > to_intel_display(crtc_state);
> > +
> > +	if (!crtc_state->has_panel_replay)
> > +		return;
> > +
> > +	drm_WARN_ON(display->drm,
> > +		    intel_dsc_is_enabled_on_link(crtc_state) &&
> > +		    crtc_state->panel_replay_dsc_support ==
> > +		    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED);
> > +}
> > +
> >  void intel_psr_post_plane_update(struct intel_atomic_state *state,
> >  				 struct intel_crtc *crtc)
> >  {
> > @@ -2962,6 +3041,8 @@ void intel_psr_post_plane_update(struct
> > intel_atomic_state *state,
> >  	if (!crtc_state->has_psr)
> >  		return;
> >  
> > +	verify_panel_replay_dsc_state(crtc_state);
> 
> I'm not convinced adding this verify is valuable. There are so many
> restrictions taken into account in _compute_configs and I don't see why
> DSC would be somehow different. 

The panel replay in DSC mode setting depends on the DSC state, computed
separately wrt. the PSR/panel replay state and also depends on the state
computed for other CRTCs than what is tracked by crtc_state. I would
like to verify at this point - after everything is computed - that all
these states are as expected.

> Maybe our IGT tests should just take this into account?
>
> Also support parameter you added into crtc_state can be dropped if you
> leave this out.
> 
> > +
> >  	for_each_intel_encoder_mask_with_psr(state->base.dev,
> > encoder,
> >  					     crtc_state-
> > >uapi.encoder_mask) {
> >  		struct intel_dp *intel_dp =
> > enc_to_intel_dp(encoder);
> > @@ -3991,6 +4072,8 @@ static void intel_psr_sink_capability(struct
> > intel_dp *intel_dp,
> >  	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr-
> > >sink_panel_replay_support));
> >  	seq_printf(m, ", Panel Replay Selective Update = %s",
> >  		   str_yes_no(psr->sink_panel_replay_su_support));
> > +	seq_printf(m, ", PR DSC support = %s",
> 
> "Panel Replay" used everywhere else.
> 
> BR,
> 
> Jouni Högander
> 
> > +		   panel_replay_dsc_support_str(psr-
> > >sink_panel_replay_dsc_support));
> >  	if (intel_dp-
> > >pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> >  	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
> >  		seq_printf(m, " (Early Transport)");
> 
