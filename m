Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E7EAEF126
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 10:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4EB10E52F;
	Tue,  1 Jul 2025 08:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GioZ7IaS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F5910E52C;
 Tue,  1 Jul 2025 08:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751358746; x=1782894746;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Kf1vliZXYQCZTr/Q2hwtAqsh2hmTXo7eZihmhsdbKBk=;
 b=GioZ7IaSyZ77bDB4KbxY6KSJYSpDUWEUVxzoQXqcTj+aT6jELc1Hekzs
 e670BRwOlKMDCksx4y0Fu1+I6TFP/DzN4SoFAA6W33BLp+xV4z07b4RQH
 2tgiJ34UhVi2rDVugWmwEogmPdc1KlCZd64Vs7r2kv4xJg3TgCtyl2Qew
 2VDlEBIpTacBhmb1t/H8H8wn3lcYQnH+/cPP9kS6SqU6Epmg+LHfAJ0lK
 QCdjS1xt+M8JZkTKFAvryEkMaYPadHD//JipcxPig7Yt3/4OZWJbvHAmS
 nWVrLeKQS2N4nRQJ43Lj1thD6HTiBDJC5XZuDRyysxeWr3lbKvkUAbu7o g==;
X-CSE-ConnectionGUID: Jjz+UGEJQ0m8Qu11kXHM8w==
X-CSE-MsgGUID: i0INuUgwQOC0ysxYk2PfoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="53547948"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53547948"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:32:25 -0700
X-CSE-ConnectionGUID: jlAzSCZoT7GDRSh+PtsKnA==
X-CSE-MsgGUID: cFNk20FSQCaw66V5mZJXjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153096291"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:32:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 01:32:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 01:32:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.73)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 01:32:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wfsfRlsKVhQX0d/oT/+x33lgiBqqwWAPb+hCsuOXx4O4sV4i+WBKu47Qgc30FW7E3eh2nWasCmz7PdfzliX1LwVNyVLHFklwcz0u3ORwnqlFeVIfVLOuAAJ+YrG8WIvgd8oLV4UDFnSZ+Cn2W/VceZ40aTQG1tOKmy0zNLff+TDfXBkILq1ZLl0HR4hR1uc05b6LBHh2SJS3vsMrQJn31IIcMfGfT+butogZoptc9DVJ+Ab/TKVw264RyDd7Mdg4ORunksP6b7OaL+4IAm0rhBTX9vv5r1OTAAwzqTDp4zpSeVoLum9qIRFGneoiFG3LQprTdjFUcFd96tDtapDp3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCKSjraqUFGINTlACdHGl6y/x/wGIzuC/ArWCf3xrXY=;
 b=CYKY3ow/19oGyTg0jntxn1Dx50bxFjBnQ49MEBJW2x92jk+2d5qkwkrOP3oAgHc2rRmrmFqEfwmqn/A04YWMeBy5ePEExPEAqLfGgj4kyCz3EqV19GALTE5B4f1XYgfQ6aZ7cgJ5jwAv1PO32WfIFQsZmyp4enwUGENl5RuUzp1o6IfivHfD8vUm6I4WVRGX+NqQnj0astKD5xgEi+2qzfmg1xlyS37I0fzmJGTv5ZRuBK8XNat5vV5uCxZvtOmshDz9Sh9Y5XJbTJ0u/mD37eyAXtna9b+SXREpwCqg4r7fBYO+Sd8kgrKIKnIzR16G4tP5wD2sTuAcSig3RUxH4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPFACFC9C99E.namprd11.prod.outlook.com (2603:10b6:f:fc02::47)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.26; Tue, 1 Jul
 2025 08:32:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8901.018; Tue, 1 Jul 2025
 08:32:19 +0000
Date: Tue, 1 Jul 2025 11:32:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 04/20] drm/i915/dp: Handle a tunneling IRQ after acking it
Message-ID: <aGOdDXY7Z54zxtib@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-5-imre.deak@intel.com>
 <d6bbc8ebfc0e5948d271cca3e1dbe736b611e3e0.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d6bbc8ebfc0e5948d271cca3e1dbe736b611e3e0.camel@coelho.fi>
X-ClientProxiedBy: DU2PR04CA0226.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPFACFC9C99E:EE_
X-MS-Office365-Filtering-Correlation-Id: 04597390-a590-4eba-824d-08ddb879cacc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ef7ij85LY/hVuoWjH0DBEUcCuhkf8w9jRzHs/sg22pdiO4ooAUyCssZhIHOs?=
 =?us-ascii?Q?1k2S2UBaeoXnCNRST8yrgsOzwEl49gtqqudA2w1RCfBjV9iNMmAldFQNnNZR?=
 =?us-ascii?Q?rTSzMs6KCevbSIKZv0Un/P5B0p3M7ePvTV8y73SbW3ILqwz+AKIQMPlE0Neo?=
 =?us-ascii?Q?sYdtFxq3wQhNXwyr2aYXY1Ct3b/HZPd40bP8RAJGlPBWmeIdSe2NrM5ybnEE?=
 =?us-ascii?Q?+v9So0SePGcEERLa/RdqjbL0eQXtYMdOmnUcTfwxXLoazuh1EaUkGSUS0dVY?=
 =?us-ascii?Q?DNutBuF0OehT4TVH/J0ZtBnqe7TZfYC2XeHXnoAsl3+X4pUTBIWvN9np/hve?=
 =?us-ascii?Q?uXG+3jXWqapd6ppJuqFHoy81GPZOZzdyGmH1Twm1nuxlReoFvYk6+2qdv/Xk?=
 =?us-ascii?Q?vpGXXK4vkIybx/5wiPUM7KfQHs5zr3vfFXMBeBWzrMBJcquStno25SjCVCM7?=
 =?us-ascii?Q?I7HpR09rGu4RfQ3DVcaFEMyYDo3oVbG7LBhXx9oqyT724OAsXnnFfnXVsM4a?=
 =?us-ascii?Q?xkpLqZ5XqMONTJA+qyimcPaAGjBhCcP7YOHAMAiFv9lwHBU/WP+pfSu9+HXa?=
 =?us-ascii?Q?MK34k8keUWQzl1YWOoBp2s6DHLDEpKbh5dYXe6gKSYsmGFddBDTBYBLJ0KDA?=
 =?us-ascii?Q?Ptpb9FuFbtSovQfeR8ftb/8cgf2l06Kz3u6Sx1D07Y8dRXjzB1ij1Q1qoEs+?=
 =?us-ascii?Q?aV6IXv62di+vrOkjGZ16EVPki9aGc1rTzx7LKmCBudsbPtNhiu18Bk2QpdQe?=
 =?us-ascii?Q?oCFRSzrHL50NOQq24UMW7PeT4OZD5CTbGreE9N+Y7rvU0GeAJ85wMZfGndZf?=
 =?us-ascii?Q?PQF/tyG4wDVdxk6ta/6gXYZfpDsuT3xd4p9ldvBlajiAtt532PUvdh0eTW0g?=
 =?us-ascii?Q?xjsFiOSf+Xx0fxIQQxwNzpbTwDqYRO5OPyY2zEnq40CiIRDKGrhtGjyO3K5t?=
 =?us-ascii?Q?0e2gQAcVa6TVIYzo2L4wvPB4KSDAMPCG3i+QE/4JMp9iLyMHsj9J41Rc0D3z?=
 =?us-ascii?Q?00GbtbX5Q1Fqz8/QxIvDV0JYgohj6NotfwqxiKG8SgsAB0UOuLtVrKOkXCCL?=
 =?us-ascii?Q?vh53QXE3fxK4ABenR8ge7xfcAVfbcNCkCve568Cd5hnlkIA3iir9QBsck1YV?=
 =?us-ascii?Q?JoOG0gDD5hOlpufOFZymQqLJTQ3iKYdvw2IaFrz2d45xVoiCnQiwufmA4DWy?=
 =?us-ascii?Q?jFWHABtNqRj9Xe41xepcKXgVb13/tyUcm1ulmjmygCU8JtM+EiQfz+nOGQGN?=
 =?us-ascii?Q?V4aYHgH6cNeycCii8YC6OFKqcA/xtW/wUQSq2T+GMQWfQin8iyw0anqvJgk1?=
 =?us-ascii?Q?6KzI8wM98T7vRR4cp78hdEavRsTF+5e34Lf4QChU1f2HaSXuKikDTjqXbaxp?=
 =?us-ascii?Q?mFEoCbFQMgqHJNOaqgVhF4Fxcc2h45bbyPSwFUDjHjMBfQyh4A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r+bBZ1Te+rzjsgpLRvPq6lod5g6zyAFG7ZcEJwxDwGQ9gZUuOuISv0xi2dn/?=
 =?us-ascii?Q?mbI+X3/6469Wws6G5Rnn/Or2KQ+EXnVTL2thdKQCiRI/Uunj6KqVbxNS3GnP?=
 =?us-ascii?Q?CwsgmRrjPQ66/+I8gb8n/ZVOj8szwZkaDrON9ZrZxg1jrlHCWdqpnZd8sBk1?=
 =?us-ascii?Q?hKLt7REtI4G0oViDr8/IhMj16EEbSi6xuSrmGn69B3MgNfx7f/jbhqMWoWjx?=
 =?us-ascii?Q?2e0tHEs6gw1t45hLrzYSnoV6MaOQxUlzT7YAMjoO39Dv0hcrqtr++0AMkcJV?=
 =?us-ascii?Q?8ToWsnqpFfjCIE1T8F6vRevNzJFqXYe5sYvl68GOpYo7eDj8Udt6ZuNAy01N?=
 =?us-ascii?Q?puOGUz9FpRwJMRSaM5PnA9A9O9Pm7Mox2VZM05lOoweijs/qC0e7TnCHiiyu?=
 =?us-ascii?Q?U/Rg7zgyI1LHievoB+CBsf7g7ObisEGBsq+QQfznVUotDWpmtH6+MOor6C+l?=
 =?us-ascii?Q?B8F9TK7hSvfcr+a5uDHcDu/REOL2f1gaZoU/orrIZIWBuGOs54qfWV/LDiaW?=
 =?us-ascii?Q?TSriX2T1dSTENz6JhvShuQQac3ktF6zbZDGtLKA9FMJtGTO+e6qxtAqjxQaT?=
 =?us-ascii?Q?Bm40dffZe3kC+xQ40vt6BeJcVBjJwWqz73hYKAikJzpKdwH71wT6/Bjdf4PK?=
 =?us-ascii?Q?bWmBLyOyL62mjc50qLc7+F99SjkUSr9012P2VQ8JYF0fzJYnjoF39UN1lVaV?=
 =?us-ascii?Q?bM8fhBUYZoTwcu0DbUyb2U6QE+RmjaoZYV72w089eT9NWpneMEgtRsE6Xaks?=
 =?us-ascii?Q?HaoTS4Xe/5KNZ89O7RdHq99Z7MTacLNU9opZhbFMvCx39LLncBl5qPhI4tZW?=
 =?us-ascii?Q?VBxlOcPkPit5Qr3faCrxOq0GQuvlhRKAG2C6/faWvtvfY/uCRrEhP1+2eQ0s?=
 =?us-ascii?Q?SrCtTN+fvBYOKqaZfN7W9OQyAtB/Ln4Rho3VDjwrVmeCvZuaPe+u6+jQD/hr?=
 =?us-ascii?Q?JO8hs3PAbwFWjRg3ahi0CovfYSFxifQdMq7qGd2krcdJ2a6is5SzEp947IU8?=
 =?us-ascii?Q?FQqOHt+26dZfpHSzKdJZ+dJ9PZZznPl6wiDLNmeXRpupBuXbh61+VnVIrIYS?=
 =?us-ascii?Q?6U5qFh4HD5cKAwP4wSVCE5naYamJFYvNtVVe/RJEhpMJpk6JJzN0dC8lozvC?=
 =?us-ascii?Q?HG3ExCO3SPgTC9JGbS51rNbsYajkq08a76wZMlwc1Mr17o/SPhm5icvSiYXV?=
 =?us-ascii?Q?cVskm2iZMUmnAHgq7LH4AvB06lrCBhxhgRyopsUKUxEoHJFvSRQpyvY9Dki5?=
 =?us-ascii?Q?3dD/s4BT0dZLc3ODlyY/Qg0hlNu7wOIn4r0d4cZe6HOiy1QtX0gvBQ5euKQz?=
 =?us-ascii?Q?z/X534VRt5aOP0pGq3WupY4yCPxtr1lYufhX2EWfOvw430qGpRKLM1Uo8Mx4?=
 =?us-ascii?Q?VQU+FF4ygBR5KafQDTv3GebezhOWZ2tlsNHVBQl4r1XTTJNSe32K6tbY6hnd?=
 =?us-ascii?Q?0KGEoZMnome9YD2YCbxJgigvvnTPNfLNC7SrAYrvbjGrLwWCPCrsQdURJMMj?=
 =?us-ascii?Q?6mqHvErax4Ql6gRUPZWxg+GJBH4pjrFMsbnt729we5Ae7FvGWCo7kv+29YKG?=
 =?us-ascii?Q?4yqIxmG/Fj+/J8iP0WyQMqPEBole4+sshZqffLvc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04597390-a590-4eba-824d-08ddb879cacc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 08:32:19.1456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RXmuOKOWTaN2HluCpDI4RExAFd1+NYTy1f4vagUVcVMY6etcoJQa6ZmQowRl4HZt3k5HRfS7/QW7MhMFDJm8Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFACFC9C99E
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

On Tue, Jul 01, 2025 at 11:02:30AM +0300, Luca Coelho wrote:
> On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> > 
> > HPD IRQs in general should be handled after acking them. The
> > 
> > 1. Read IRQ register (read DP_DEVICE_SERVICE_IRQ_VECTOR,
> >    DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
> > 2. Handle IRQ
> > 3. Ack IRQ (write DP_DEVICE_SERVICE_IRQ_VECTOR,
> >    DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
> > 
> > sequence would miss a new interrupt triggered after 2. and before 3.,
> > since the flag set in the IRQ register for this interrupt would be
> > cleared in step 3.
> > 
> > Fix the above by handling the IRQ after acking it.
> > 
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++--------------
> >  1 file changed, 11 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 285cd9a5d4a7b..453416b9e9bec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5099,17 +5099,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  
> >  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> >  
> > -		ack[3] |= esi[3] & LINK_STATUS_CHANGED;
> > +		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
> >  
> >  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> >  
> > -		if (esi[3] & DP_TUNNELING_IRQ) {
> > -			if (drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> > -						     &intel_dp->aux))
> > -				reprobe_needed = true;
> > -			ack[3] |= DP_TUNNELING_IRQ;
> > -		}
> > -
> >  		if (mem_is_zero(ack, sizeof(ack)))
> >  			break;
> 
> What happens if we ack the interrupt, but end up not handling it, e.g.
> if mem_is_zero() returns true here?

This is an optimization in case of ack[] having no bits set (and also to
break from the loop acking->handling IRQs). I.e. if ack[] is zero the
AUX write to ack IRQs in intel_dp_ack_sink_irq_esi() can be skipped,
since no IRQ needs to be acked and then also no IRQ needs to be handled.

> >  
> > @@ -5121,6 +5114,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  
> >  		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
> >  			intel_dp_check_link_state(intel_dp);
> > +
> > +		if ((ack[3] & DP_TUNNELING_IRQ) &&
> > +		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
> > +			reprobe_needed = true;
> >  	}
> >  
> >  	return !reprobe_needed;
> > @@ -5423,18 +5420,18 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> >  			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
> >  		return false;
> >  
> > -	if ((val & DP_TUNNELING_IRQ) &&
> > -	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> > -				     &intel_dp->aux))
> > -		reprobe_needed = true;
> > -
> >  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
> >  			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
> > -		return reprobe_needed;
> > +		return false;
> >  
> >  	if (val & HDMI_LINK_STATUS_CHANGED)
> >  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> >  
> > +	if ((val & DP_TUNNELING_IRQ) &&
> > +	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> > +				     &intel_dp->aux))
> > +		reprobe_needed = true;
> > +
> >  	return reprobe_needed;
> >  }
> >  
> 
> --
> Cheers,
> Luca.
