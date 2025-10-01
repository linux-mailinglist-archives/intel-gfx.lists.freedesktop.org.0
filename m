Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA849BB047E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F9610E6C2;
	Wed,  1 Oct 2025 12:09:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KllH1H1u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A92710E6C2;
 Wed,  1 Oct 2025 12:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320596; x=1790856596;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=vuZ7waluH/iPYEfkKSxYXbruAr8MgKzT6Uljid7RuoM=;
 b=KllH1H1udk3kYybLbCrzSLSrXsgJCefw/sD/ICbtlxYGSuzPCMXihIAt
 JznO/eR22Uf34sioiOcb/yFN84Dq7s03LNqQD8M/R6kx9lEt13lvSpCcT
 53AKeMjk0XwHvOG+XSx9GpTlmKrdKdgqZU+ZJ6BldAGuJsqbZskr3vvEe
 oh5HykljwNa/6iVRL2md+OUGRw4QJpuqXa1KZZ/f/WlwCOmmsbxuSwktU
 VDwacBtlVgD+BQKXpeO53TPjm6xVrL65EHXKdEmnI6DDeNLNgmsD30SLV
 WQan/CCb/6P/vEt2ScKZSLBAXca047sOGEHuOnM59cqwyHyTRBonq8KJo g==;
X-CSE-ConnectionGUID: nvAGvxsSTBeFCNp3aWw6/Q==
X-CSE-MsgGUID: 4TPAFSMpQX+9O0alZeS2oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61505186"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61505186"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:09:56 -0700
X-CSE-ConnectionGUID: 549zGH25QYidU4PJVoh5yg==
X-CSE-MsgGUID: VkuivJpoSqyk81k2f1wxXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="182797199"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:09:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:09:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 05:09:53 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.17) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QOzaY2vh5Kz8fWMP14Bf2Vk5pjt99HajO3wHmLaz64kF+VjD1nx77EBj5t4u2XDXD6o5LWbiGzeoYKXH0WPQK8Hfdne5OsF+MyRnXbZh6NvF47uwBtYdgqIAflTH391DSDssaCOZIoTIWzTq+ix4L+XukbKo/+qZGulXRRiBnb+4pCl04JNLU70i11dyqRo5z4euxYDCnniz3c7BNz+h6HAKgV8ZMv9ETFU2VHibu3T+DOQ/M7MtMlIHcaRi6XVwuItQi0Ka5hXiRu/BQTUKpJedOE/xenq3Bgk8/TTkP7xBDyhG/coVWsHRBIDgT5yhveOGaet2n3W8aZTT6Tk70w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HfVn7PjwJ87f0nSTva0EClFM08iHuf1WWF5d85361WI=;
 b=NQKOkrlTowEikt6eRw6VUptUqKK6ozBUgiD2wv3am1zl1wYWfZVjzBxAcJ6ePiY41CzkdN4ZIVIuuEqRfwKdro37wpN6JSNfgnYIEPkW/k9BWXM897GAZ2RHGOo2EWUxG8Dyq9aCDu/fc32tzn9LZXR5+0y7BrQnGoY2FIhGRpyyYtRnvSkuqOwIEr7/d/XkgDf9EKq4wCyjT4ExHhDYHKI/ZvTsQX/bbGYuxhOQhgciUd8pKctYtndpMNncfvLRUuW9H+dUe0hW8H6ycLvy0tzMv34gRMfQLnmjB3mnUEUdssK8RkGLNpogvPB4o+VXcwFb/wvG5hTZGzw66KQmHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Wed, 1 Oct
 2025 12:09:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 12:09:50 +0000
Date: Wed, 1 Oct 2025 15:09:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [RFC PATCH 15/39] drm/i915/display: Track the Cx0 PHY enabled
 lane count in the PLL state
Message-ID: <aN0aCANf6bMgW3Ft@ideak-desk>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-16-mika.kahola@intel.com>
 <dd6a361fd448b6629dadb4476b8d4d94ff93fe30@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dd6a361fd448b6629dadb4476b8d4d94ff93fe30@intel.com>
X-ClientProxiedBy: LO2P265CA0107.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB6077:EE_
X-MS-Office365-Filtering-Correlation-Id: b0399600-a57c-4981-a07a-08de00e36bb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q/kFbQqm8MIg+7KRmNcq3fOK2L6VNpBApPegvFr88xQR6lZhqfwZuUMugOz1?=
 =?us-ascii?Q?tgddRqGpJe83YRp6VRVQRx+f0CNsCZ5KVAJAjFJe5NPYqazDtymltf3MHyxS?=
 =?us-ascii?Q?VLA16Tfj6Q72flgBixW+z3b/bp6bN7Hq7llQ8C1kxPChVnSVgi+HLx0c5xGH?=
 =?us-ascii?Q?qVsayDUBJqncKDKNnY3ZZRlvoe+IbQs2C95KQ4tX+KirahbHdzve9cdwYBBd?=
 =?us-ascii?Q?OmFpFZR2Da4h/JdoXb87WfVqrRP3E9Y6MmfFLRBQx8SuXEIEGKVUWwckKtVg?=
 =?us-ascii?Q?x6wvQxisIyGzr9zTixH6ijuwKOJ+qQk1ha4Q51rvNY3mMo4uUHDQ83PW13BI?=
 =?us-ascii?Q?5HnO5E3xcip9T2Oaa7zwTAeJrzn3M+7HIVHFCgH+uAO9dML/28sp3v6rRVtr?=
 =?us-ascii?Q?3nQEr6pduCquk0+5gUls25Hd0Q6Hn/EohJlcOsUB8ySMyIx3NLb0RMSioTLx?=
 =?us-ascii?Q?bQpazjO75q6uXPol87WQQGLU/u79EV5qOHz8/YXDkQJgy6/mYrSUPjK0ssks?=
 =?us-ascii?Q?u1Y88MLrB6MXsvxJow1pal7ovsieY2NcRMUWlwnAFzzLBNh2O6nHemPaznTS?=
 =?us-ascii?Q?l0nXf/MkJbS7HdTXrJ6FXU6BVztxNvQfTZqbK1/RHQIO+Fjy80GAM/4xgBZ7?=
 =?us-ascii?Q?ytJl590a4+6bZtjrPK2pVhP9UK77wah9CG6MjwhkRgt4O/YU7CehcP3SiZcN?=
 =?us-ascii?Q?cjx7QKKp7bZ7Ofvp77t6lklKJC9p2ZEaiZxD2xmDYmMNhzqA+ypm+LmfnNPx?=
 =?us-ascii?Q?XG749XSAUzNBEHM64gkglfetlkZc95xatNzr+W/G75wRbOkut0birTL2BJQa?=
 =?us-ascii?Q?a5GrWaqSzUQlktzN3iexP2G+sCh9X00o+1rPk11NuHDC2y+kP0iTAK44OMAg?=
 =?us-ascii?Q?K4xVpjHFh795CiREXc5oyfCDo3ITo8ZFQ+CDzaVR+FFSVa+OI4QgtfHko41k?=
 =?us-ascii?Q?hsdElmePTkDxjlEzDXujDO5yLBTZz0UN4lBKV1RK+/m4YfZ5kTEn1hV9z07J?=
 =?us-ascii?Q?wr5Gx6inIPnrUqBWzpgXowEo4i92cOim5Z3k/LWmafNeSqwdybKbVvBr7DZo?=
 =?us-ascii?Q?cAlCise8fkgU9uUngk3SCRPtbNS4r+QqXcQeqecaU3ByRBGTXmUruOb7dLy6?=
 =?us-ascii?Q?VekoBVL48p8QPNK979xbF2NAyVictrp7NzV8rxcMEL14I5pjtLZMkZcyEBdi?=
 =?us-ascii?Q?JlG2gulx6YqlK5awE/GLFLU103oy1h4XDcL9wsN/n+XanspD3On+K/F4mv0n?=
 =?us-ascii?Q?CS6aMtN+7uh6YZ+++EfiJHbOPdwQZ7o93MdizyfWxOgWqokWysKNhFBqjl/Y?=
 =?us-ascii?Q?wvB15HlJdmLM0TS1ILzc+ItYyeq+tSiVqHB4Gw3mRo/Msf3gZWlr+2eRKrxz?=
 =?us-ascii?Q?hJvT6YUbgIh22sfBHy5KCkAkTW981MIZ/eIOA3txD6Qipr2SF95nZf76/75r?=
 =?us-ascii?Q?9rMeGA+79VLXVwCsOIFLRUBClvUhsl1F?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xKlXj9YmhhBvUshPCzjS5O9St0+VbTQtTHVJMXyh+xonCqVUtP0/0Xd/f/qt?=
 =?us-ascii?Q?6lPlCoFlazK7JEWQNH8wdgLpIcXRyqftlmjuBtmjNXsrqho9aoT00kc/O7am?=
 =?us-ascii?Q?mWaf3wrfSw/qh0QdAMRDso7nV6IhZfkPTQf+z1GZ2QUgXhKHhvo3hmdd7knx?=
 =?us-ascii?Q?klGLtIAeXKSZ6j2gxEjRjOjgNJFqO1i3FMJDQPHrPyDmOHg0duF+J0NE62Wf?=
 =?us-ascii?Q?xKY69N6c1eSMSDAGYA/PbJ5WhgRKdomQQn+l5vbM+2+G/r0yRM1DJLzk2Lw3?=
 =?us-ascii?Q?z9ZJqqdq8d8CuB/HTi8xPXYTME79rLE4k8MJVLkBxxmSCuFV6TK6ScjFZyDS?=
 =?us-ascii?Q?I3eTTXAPPMK5SR2Y796LZ5OB3ctjczvjtAOudN8G0LIkXtqXiux4jTppptDo?=
 =?us-ascii?Q?8KAuCEVTNGYPMEA9t77cnCjS6bb9KTOd711Wz22gg1IsAB2u0UhiPbPl/V99?=
 =?us-ascii?Q?gcofl1pwNOjl0A/ZJd+nYWapkdxWOFqtl9ePQa0Hssl0oLob6VB5t1ZFlKRU?=
 =?us-ascii?Q?isJnGiXFJAksStcANNssP4G0iXLr//FqvdLO+rNShhlIRPpeU0jVJ90XBRiI?=
 =?us-ascii?Q?F4In14i19lksWkIw8olwW8a9N2FL0HMWFpm3BqvO7GFZOTtHmU3PoUgzqafP?=
 =?us-ascii?Q?bsKrVS+G8efTnNbzlPJRrtLjegZaMpKwvZQZ3NTt5Was3xfy8LR0awzwVzvK?=
 =?us-ascii?Q?Nc6td1GEuuvlYO6XF/P27ji2pXnf/85pqrdtoPb84xk/2gE8LoI2aOJZShAv?=
 =?us-ascii?Q?AE8sq1uXsIxSRw9Kyn/2gOIe6fC+FinPX6I/LXeKpKeypkScPu/i6f338KjF?=
 =?us-ascii?Q?VY3hPb0GM6tGaR+rSp9R4zyMKaX+eI/W0Y7NeH7pCY8mNvX7Ya5OT6nFu7+y?=
 =?us-ascii?Q?MJohbz99dgVw002Qk5chicFuKzfxHoxjAWDYQ1jDlJnGdOS+CLog7e8mLbMw?=
 =?us-ascii?Q?qmlB4EFY9HsyIlsAdW0PkV70fwhEehvvdd9ljt4D2W+hivXyTjc7ukpjANkF?=
 =?us-ascii?Q?waPP/+NdCQuugPPnpUgMUZFSmLGXgPGm+cWkkUsd7PzXjX25ckzdml4D2hxA?=
 =?us-ascii?Q?HVFrC+4ZtFXkLuxYKHvnpYUkPFKA2RxLxB0nntfCZW31s3p2cKZJHuaYlBl4?=
 =?us-ascii?Q?6Y6T+9E/EO5ZtNS57vhP0oHenxdpZDZWNmOZ6Fg7Krpo4eDbuhORwSJ0L68b?=
 =?us-ascii?Q?Y74Fd5QgHvGgSQpXJrN1pP/zY+V9ZfJfwJ0JpgqJdnnLZ9imCbdz/808YFqK?=
 =?us-ascii?Q?718sSHgTQGxNvEsLfzFeC4LlQSiZs8vTl4gTH17ZgS6Zy/wulSuxWrcrYp6n?=
 =?us-ascii?Q?vfMZ/Z+dWAJcrgW04KVNPKzp+Aa73xvraGhSMz7qlrOUu9BJ6nGlJtEewPlk?=
 =?us-ascii?Q?7hfVLC3Zr/ZcIx213m9h4XtFoY6ELtz7MDw/gCJf0GvtUqCj+dlmaHy/S35L?=
 =?us-ascii?Q?ma48BzngGLyF6OVeL44cHINnN3i6GrgjFnwPsoN5KiVdF7Fr4z8vO/oM+9Nr?=
 =?us-ascii?Q?Aigb0wlCVM14SBvTX4EdvXoVI8QWhb+UqfA9dSoxWqdTSXShlbuDbq27RM6c?=
 =?us-ascii?Q?rNj1hBdJEmqMKKwm6+hObwIXxapfKAGtMK1qYX+pRnbUIioKa79FIK220Z+K?=
 =?us-ascii?Q?v45mTf3aTCjI6kKOfwddeiJp57MPoCw62fDD4SPeG47V?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0399600-a57c-4981-a07a-08de00e36bb1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 12:09:50.1017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zs9eja/z1jrYyacrkTA9QfsmzTTzGRrEaAZURkORk49tQja17dBi5jv1f1XxuDqMBFroSvoHIdEZMKdVvbNnaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
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

On Wed, Oct 01, 2025 at 12:13:59PM +0300, Jani Nikula wrote:
> On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> [...]
> > @@ -2157,6 +2161,37 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> >  	return tmpclk;
> >  }
> >  
> > +static int readout_enabled_lane_count(struct intel_encoder *encoder)
> > +{
> > +	struct intel_display *display = to_intel_display(encoder);
> > +	u8 enabled_tx_lane_count = 0;
> > +	int max_tx_lane_count;
> > +	int tx_lane;
> > +
> > +	/*
> > +	 * TODO: also check inactive TX lanes in all PHY lanes owned by the
> > +	 * display. For now checking only those PHY lane(s) which are owned
> > +	 * based on the active TX lane count (i.e.
> > +	 *   1,2 active TX lanes -> PHY lane#0
> > +	 *   3,4 active TX lanes -> PHY lane#0 and PHY lane#1).
> > +	 */
> > +	max_tx_lane_count = DDI_PORT_WIDTH_GET(intel_de_read(display, DDI_BUF_CTL(encoder->port)));
> 
> Hmm, feels slightly wrong to be touching DDI_BUF_CTL() here. I think
> it's already being used in too many places. But I'm not sure what the
> clean alternative should be either.

The ideal would be to read out the PHY lane #0,#1 ownership from the
PHY/PLL registers, however I haven't yet found a way for that.

The TCSS pin assignment could be used for this as well, but that
information may not be available by this time, since the HW resets the
corresponding register when the sink is disconnected.

> > +	if (!drm_WARN_ON(display->drm, max_tx_lane_count == 0))
> > +		max_tx_lane_count = roundup_pow_of_two(max_tx_lane_count);
> 
> So I don't want to see WARN and the happy day scenario mixed like this.
> 
> This is fine, and common:
> 
> 	if (WARN_ON(something that should not happen))
> 		handle_the_error_case();
> 
> But not:
> 
> 	if (!WARN_ON(something_that_should_not_happen))
> 		handle_the_normal_case();
> 
> Looks like this could be just:
> 	
> 	if (drm_WARN_ON(display->drm, max_tx_lane_count == 0))
> 		return 0;
> 
> 	max_tx_lane_count = roundup_pow_of_two(max_tx_lane_count);
> 
> And it reads like it should.

Yes, the early return is a good idea.

> > +
> > +	for (tx_lane = 0; tx_lane < max_tx_lane_count; tx_lane++) {
> > +		u8 phy_lane_mask = tx_lane < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
> > +		int tx = tx_lane % 2 + 1;
> > +		u8 val;
> > +
> > +		val = intel_cx0_read(encoder, phy_lane_mask, PHY_CX0_TX_CONTROL(tx, 2));
> > +		if (!(val & CONTROL2_DISABLE_SINGLE_TX))
> > +			enabled_tx_lane_count++;
> > +	}
> > +
> > +	return enabled_tx_lane_count;
> > +}
> > +
> >  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
> >  					  struct intel_cx0pll_state *cx0pll_state)
> >  {
> > @@ -2175,6 +2210,8 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
> >  	 */
> >  	intel_c10_msgbus_access_begin(encoder, lane);
> >  
> > +	cx0pll_state->lane_count = readout_enabled_lane_count(encoder);
> > +
> >  	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> >  		pll_state->pll[i] = intel_cx0_read(encoder, lane, PHY_C10_VDR_PLL(i));
> >  
> > @@ -2581,6 +2618,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> >  	int err = -ENOENT;
> >  
> >  	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
> > +	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
> >  
> >  	/* try computed C20 HDMI tables before using consolidated tables */
> >  	if (!is_dp)
> > @@ -2670,6 +2708,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> >  
> >  	wakeref = intel_cx0_phy_transaction_begin(encoder);
> >  
> > +	cx0pll_state->lane_count = readout_enabled_lane_count(encoder);
> > +
> >  	/* 1. Read VDR params and current context selection */
> >  	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
> >  
> > @@ -3107,7 +3147,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
> >  
> >  static void __intel_cx0pll_enable(struct intel_encoder *encoder,
> >  				  const struct intel_cx0pll_state *pll_state,
> > -				  bool is_dp, int port_clock, int lane_count)
> > +				  bool is_dp, int port_clock)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> >  	enum phy phy = intel_encoder_to_phy(encoder);
> > @@ -3149,7 +3189,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
> >  	 * 6. Program the enabled and disabled owned PHY lane
> >  	 * transmitters over message bus
> >  	 */
> > -	intel_cx0_program_phy_lane(encoder, lane_count, lane_reversal);
> > +	intel_cx0_program_phy_lane(encoder, pll_state->lane_count, lane_reversal);
> >  
> >  	/*
> >  	 * 7. Follow the Display Voltage Frequency Switching - Sequence
> > @@ -3192,7 +3232,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> >  {
> >  	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
> >  			      intel_crtc_has_dp_encoder(crtc_state),
> > -			      crtc_state->port_clock, crtc_state->lane_count);
> > +			      crtc_state->port_clock);
> >  }
> >  
> >  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
> > @@ -3723,6 +3763,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
> >  	for_each_intel_encoder(display->drm, encoder) {
> >  		struct intel_cx0pll_state pll_state = {};
> >  		int port_clock = 162000;
> > +		int lane_count = 4;
> >  
> >  		if (!intel_encoder_is_dig_port(encoder))
> >  			continue;
> > @@ -3735,7 +3776,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
> >  
> >  		if (intel_c10pll_calc_state_from_table(encoder,
> >  						       mtl_c10_edp_tables,
> > -						       true, port_clock,
> > +						       true, port_clock, lane_count,
> >  						       &pll_state) < 0) {
> >  			drm_WARN_ON(display->drm,
> >  				    "Unable to calc C10 state from the tables\n");
> > @@ -3746,7 +3787,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
> >  			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
> >  			    encoder->base.base.id, encoder->base.name);
> >  
> > -		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
> > +		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock);
> >  		intel_cx0pll_disable(encoder);
> >  	}
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 43c7200050e9..839b1a98534f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -267,6 +267,7 @@ struct intel_cx0pll_state {
> >  		struct intel_c10pll_state c10;
> >  		struct intel_c20pll_state c20;
> >  	};
> > +	int lane_count;
> >  	bool ssc_enabled;
> >  	bool use_c10;
> >  	bool tbt_mode;
> 
> -- 
> Jani Nikula, Intel
