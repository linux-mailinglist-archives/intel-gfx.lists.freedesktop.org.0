Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D205AF7545
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37BB410E840;
	Thu,  3 Jul 2025 13:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MJVSgGlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB17E10E83B;
 Thu,  3 Jul 2025 13:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751548708; x=1783084708;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=pMmIckpLn8MWAWJnBd1m4+n/lMrFbMOzm5IbmmTS1BA=;
 b=MJVSgGlDJMHFJ+Nwr6c2qMLXxPioDrkgpphjMyM/W55Z3Jnvn/kBGK2s
 KI6zOM9x6cnQ3jgs1LSEk9q2xVdDUubflqEUW2XfIv+2+54QBh19Mx1XV
 vEgVXTlwbrB8bJh2XIdyzyXhqnQ6dtu8eM49Xjqfduufv2d3h2OSL4G4/
 VdGyZ/hDlfk25F50xIczXG3qRiBVYFwGCXpTemP8vyeSZipEAV0o8jOXM
 FdHbkLt0k1058ewMm3zARsou+AfoRqf6ofmbD0GZLCqFFpaTfod5LGhs3
 9d0qFoO4Wd9wJitNdc2YoIY7wpoSL4q12DX5orGJBcJIgYMiJ8IQE98+N w==;
X-CSE-ConnectionGUID: 1MpC3Vi9RrKKPEoW0feOCQ==
X-CSE-MsgGUID: 8uW+a1jLQkWKoSqEWpL8RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="57682942"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="57682942"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:18:27 -0700
X-CSE-ConnectionGUID: cckbPAsnSYubfoTq7FZT2Q==
X-CSE-MsgGUID: ux/n00jZTY2E+fCxOUylPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154009251"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:18:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:18:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 06:18:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.79)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:18:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s8b/ZoMHi9kqf7+piIhrUfAu4+DXoxLzIkoTsHX8P/0A/ZV0SA/+lG6pfDGHv2gW2lfK7+KzohEcda1076cDMl2/yQkxyygQrePXkAYiOTOUQuwSE4BAaAOeEMky3x1OFADxwMCqIlQaD2mfJK1TCDaUZkk1tQEBvHYigId0Uea3+yaHNPfWZXCmHBHLPVrV8fGKC0MCZOms4dnEmTE0yJ2e2zcLQaEqhPsFO+71FuKPswRI8cSCL8vGzL1s+CKRtZ5thAVYFQNG+AVlGz/13W+6sInhwocM0HdZcZV1NpX9QTHRl2lxPb8HOFy1j8QCj9CRdatw7glPvgPrJNvu/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vGgUWYsFBkimFCj2n2w2d7b+Css0KegbnkaHJVfXhko=;
 b=LBH1ZVZVS20gDS3lNlMRRGVIGC1WaZxTW8LJzJaabMUzgCqy18KKZq9kfHw8F0g8kAj6XQ5u9MbQFaATXOruRbyS/T6XpF71wkEnIE+PktpFvgrglkRNhlWbyeGZHGV6uNnWPDZ9gQ4j7Q2SVZR7o1JykL4eG4VDFrlZWydgtM8iQAqtL6uG1YqXjJf5u15Zz4Sej0SZi9/p72ly1XOHnORqnf0g9DLZHLRO8+yWSWBJVO8bDHb2VXl6QQvl6qSMfA83qv8v62ttzZ/SMemVvqH6RIdS+K4saRE6W3LYPmS1jzZHVyoG7JGHhCHymnog9HJ6HVAGklqvlJFPKs3vSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB8105.namprd11.prod.outlook.com (2603:10b6:510:254::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Thu, 3 Jul
 2025 13:18:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8901.021; Thu, 3 Jul 2025
 13:18:21 +0000
Date: Thu, 3 Jul 2025 16:18:16 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 19/20] drm/i915/dp: Ack only the handled device service
 IRQs
Message-ID: <aGaDGNMJ6Rn36nBL@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-20-imre.deak@intel.com>
 <5ab6dccb4abf62e8ca1ec606e9bda3f5337d8adb.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5ab6dccb4abf62e8ca1ec606e9bda3f5337d8adb.camel@coelho.fi>
X-ClientProxiedBy: DB7PR02CA0013.eurprd02.prod.outlook.com
 (2603:10a6:10:52::26) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB8105:EE_
X-MS-Office365-Filtering-Correlation-Id: 24bff5cc-14ca-4cb5-81b1-08ddba341546
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uTY+6DlIFpKkimtP+GTosZhxFLIwy6ZNIkCBCJkygkCY1Qi01vsvzN3DyKzl?=
 =?us-ascii?Q?eZEePhCUEi0SKhewi4Ivz+ZMk9ZNvMF4ypkD/ZUQnDi8UKN/duahzD4OYxrm?=
 =?us-ascii?Q?uJj5tUu/Onkod9Sj52XD7azVxO7Xa+B7OTAOipzrAD8pBlfcj4JXlEjgNiMF?=
 =?us-ascii?Q?iP9qlT+KGxGjPQhzvCnvrdH+w5USXo8mdZNMG3D+FNmo9rt8NHRDhiw9ykui?=
 =?us-ascii?Q?xbZRAGNlMciO+4PVEtuhZIF9marDk8maWuajBC4m36OqPpqoWHRgLf2kwwfI?=
 =?us-ascii?Q?zLXxTIVYuj5BOri1gvQ3h/bTx8GLJDdoS/vfisCpZa7/5hHxW6VvJc/rOJ3w?=
 =?us-ascii?Q?ISoaOmUBavxdiIaFFy/9c0Xp8LApy2JZt/ej2DIUCvVI8gjd4J9M4PRL3wRx?=
 =?us-ascii?Q?jkFOya5uVYQASaGlG1uiQBMMbBEB3/Lkf437Z2jBT1pbKunYvhSVFNA1FxUZ?=
 =?us-ascii?Q?HniRhH+/xc4DGkg8EQmqapsGr899Jp4Lr9Or1Po4QX4tGHOb2pdEwRrNokpN?=
 =?us-ascii?Q?vUBrYdK8OfixS0zXWERbhCn9vFIT2YDJ+qqlTZyBp+91p2ai8PnkvvYkIXzP?=
 =?us-ascii?Q?nGmU0n3mONd/NZpqzjlunFCDkIEpekUhVgNALXtQjKvMEQROYYT84m/hBLQX?=
 =?us-ascii?Q?PfmBw3fhw29cnlVGuwihpxlc3eudQ7jmjXatfCQ2gE72QC1XLArfBujW9cQO?=
 =?us-ascii?Q?LTIRgm6RxG9gceFeo0tNzlOgETW/F2y5sxtXYGV2EI3sjSl9YHaD3hObtA+Z?=
 =?us-ascii?Q?9CvI9XDoAxjxBV8/Xgco2/XcA07Oy6QHBZ8YMkFX3YTnP46HAxXwRCWRsfL9?=
 =?us-ascii?Q?l5geygg/6yaiXmHU1025KojsNDYkx8b0IYVXf//bmlq6/v55JzP3tEwU09k+?=
 =?us-ascii?Q?G0zVz5UDqMO12/17Pdww/c8XCOv91jAfMjAKFD59P089L751mQZGab7LrHrN?=
 =?us-ascii?Q?+sdE5M6bWELxAa19wEbF6+jtTkdv6f2cckyd4RfebUG7enlNtmPZndQhZnMd?=
 =?us-ascii?Q?WgMI9EhH05NzsKQz0zD4oEI69+fIG2t6+npKSkaOGrbdmtQb0XSzgJgCcvFR?=
 =?us-ascii?Q?5hgXW2uoSDljmQqzIloVqBG75A5OlpQWGTjbkWnfD0YP5f9WHlQXSuIzuqyy?=
 =?us-ascii?Q?eKoiALa1V96TgXM382hJ/iL+beOTTfWH/h/pvsro7VB/ARfzBzNunoeUcnDi?=
 =?us-ascii?Q?Y5InPtmJcKGtnb6W4fyK7UYRdmZ6jWfJ3FCcFr+t7k2GCv7clcUa5iHfKefh?=
 =?us-ascii?Q?mS4A6UX0/sXg9xtHsHgIGOK7qIT9a3wlm0ysVeX1rT+eb11LZFUK0X4gql3d?=
 =?us-ascii?Q?X+hCAF1ib4vGfFdGg4pEK5b0rhln+jxMjtVrhW+/CmVp4s4Rw+U2gsbtGxHd?=
 =?us-ascii?Q?H4hg2Xc252XRsuKsvQpkHQK9SBxc6kuus6FomdxRZVKassyOdQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QgKDR+yaVPIRX1E4VVjWEcqQFsI3Fx+vdR6bJc9UB9LbtYbPm6Bnw6kL5V5F?=
 =?us-ascii?Q?G83gTfHzSAlu+hsp4Tki1bv3E5/3dFvH6i1Dqd1iv5hO6LSMHk57jto5tI4a?=
 =?us-ascii?Q?H84jbGwoQ1o9XZ0+icBFt3+1fC6/fwAfaqXJikEeQJfWVCEMT6ULdSGadyz0?=
 =?us-ascii?Q?IF0TvddsBpsN8/u5hRZTfLlWYbw0woDl7P5L8Hjzq3NWa9OxprBWMUrQ5oLo?=
 =?us-ascii?Q?xSdKupxGU5xpOoDtTLnt6Dvq9cizuiys++dgDWXJ0aaOuLf+a2EIKq5L+jF3?=
 =?us-ascii?Q?GAlZtPccTZMpqUdPgbQ+wfrZCQIHEbbU3KnTAQoInFb1Aps9Xr73FIypSoHM?=
 =?us-ascii?Q?u99ZnofOIdfFB1oa3UJ5XG/za2Id5LSTMW9ZTncHSxJwnkQRdNDyB+v8xgmW?=
 =?us-ascii?Q?Cdu6bjPjfER76AAK2+BgMpQtMXK8erbJXTnmPp89hY8w4TbNTHX/dp0VpbaX?=
 =?us-ascii?Q?N5j4Bl8g1f1+ItJ6S2Apuxv3fdqhuHCS6ir99gHHc4n/2klyQ1YVDW3zRTOH?=
 =?us-ascii?Q?33zNd6wYC6dV+GjcsJZjN5Ln+qP54v+aJ9WurV5y0Wi5W+hGPDYl8WwEC8ws?=
 =?us-ascii?Q?DJ2gyGXHjMrDzqTpFW8xXLAtuYd8Fl1dUPuvjQ8YH7Ai1oJfOzyHp8fpFTaX?=
 =?us-ascii?Q?Vz600gAB6R1V9KA6VSXkiy8oOBHIFARmgaosuYw3z2/0BUjmZJ5AUKq9XOKs?=
 =?us-ascii?Q?wmIHEV/JvN4YoJfM/AuSapf13Rj8NI+kngJ02B/SYdhbl/lmuy0B2IFjYIN4?=
 =?us-ascii?Q?DqjWSSOf593LWQBcruBluHa8IjMYJjy6C44uRH9Ahm448IskXdIS+HFw1fpr?=
 =?us-ascii?Q?TKexd88bwWdmeCGz1fM5gHWztqFs4kLSFRNw2GCTF4YjzbHptQYpBiZxRmvh?=
 =?us-ascii?Q?onad8NZQXoMiGBsQ+ls3uUG+vNDftEWpGnO4+P0JcHJjMjOvyZPeve3dqnJk?=
 =?us-ascii?Q?epSdsJFxZtNIxCXrJBFgE8E/YB0P7xlHiorFksXmZiQelB5AdwsXsuz8vJDj?=
 =?us-ascii?Q?lkadXsO7ACI78rFDX1rP0PNh/vZqDsXlGxpnW6EAetTZgzBmhc+gP0kOM+W0?=
 =?us-ascii?Q?ywS+pexXJupC2Xuy6XUppy82SAq7KNFgrodPA94pmqkf2rO/MmvuOUtMmq2P?=
 =?us-ascii?Q?8i0a3Hc8+K1cBAtdbetdl9TrPtkS4u1H+JTzy+11ZPt+Wo6QcyrQaTxSUmvu?=
 =?us-ascii?Q?QumQ/MjrmW66/p+UYact7LXyTOshikdMMTnIkbC+T7w37a8EE6eQolu1/8uR?=
 =?us-ascii?Q?KXYXnDlmVGYFp+ZSHVotZ7VhbP6pLdpETzX6pglgaJIR4qfCPOTxaMnA4iTf?=
 =?us-ascii?Q?y6ejCYzGH1p41UmlHej9FU1ttcewT8kGcNRNYmHZEJmiTQu5edKr5JBqOuU3?=
 =?us-ascii?Q?SD1xYgJLwSeY42a4/MPCpo6jUB77i8kLI/VGZyKRvsmSGNB7OPO3kRpgDZDT?=
 =?us-ascii?Q?8Dc0uv121lt+01CdvzdTzo0hhwD3AHyfw42MS1B19evx1CGXpEtATT5oYduT?=
 =?us-ascii?Q?7cTwVLE3aW4XY7UKdJ/RgdL7zxVaACp2Pmlvqr5MKG8KK8kqBU/P7+dJQ3a4?=
 =?us-ascii?Q?fAeKxqQHEofuJMfqBIPDvobq130bPl0eAWRFkfJj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24bff5cc-14ca-4cb5-81b1-08ddba341546
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 13:18:21.5876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qm4Supf6QVJSB2yXYeoUdOYh2vBLTpWWc1eoXZkat/B1qGNxECtOfTvOOAFKIqNxVsZj/xwb7r0+R/x/nLDMFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8105
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

On Thu, Jul 03, 2025 at 04:14:51PM +0300, Luca Coelho wrote:
> On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> > 
> > Only those IRQs should be acked that are handled, however for SST all
> > IRQs triggered by the sink are acked. This can be a problem for flags
> > that are reserved/reading zero at a given moment, but become used for
> > some purpose - with a side-effect if set - in a future DPCD revision.
> > 
> > Fix the above by acking only those device service IRQs that will be
> > handled. While at it add asserts that only the known/acked device
> > service IRQs are handled both in the MST and SST case.
> > 
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 52249fa5c8a6d..6f67fac9724e1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4537,6 +4537,14 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
> >  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
> >  }
> >  
> > +#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST	(DP_AUTOMATED_TEST_REQUEST | \
> > +						 DP_CP_IRQ | \
> > +						 DP_SINK_SPECIFIC_IRQ)
> > +
> > +#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST	(DP_CP_IRQ | \
> > +						 DP_DOWN_REP_MSG_RDY | \
> > +						 DP_UP_REQ_MSG_RDY)
> > +
> >  static bool
> >  intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
> >  {
> > @@ -4628,6 +4636,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
> >  		    encoder->base.base.id, encoder->base.name,
> >  		    esi);
> >  
> > +	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
> > +
> >  	if (mem_is_zero(&esi[1], 3))
> >  		return true;
> >  
> > @@ -5172,6 +5182,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  		if (mem_is_zero(ack, sizeof(ack)))
> >  			break;
> >  
> > +		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
> > +
> >  		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
> >  			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
> >  
> > @@ -5456,6 +5468,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  
> > +	drm_WARN_ON(display->drm, irq_mask & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST);
> > +
> >  	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
> >  		intel_dp_test_request(intel_dp);
> >  
> 
> Evidently, this function is specific to SST irq.  Wouldn't it be better
> to have _sst in the name like in "intel_dp_check_mst_status()"? This
> function is probably in an earlier patch, though, so if handled it
> should be obviously be done there.

Yes, it used to be SST specific, but patch 18 reused it for MST as well.

> Otherwise:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
