Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBAE9ACD30
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E783910E7FD;
	Wed, 23 Oct 2024 14:48:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6K44sfg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9288310E7FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 14:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729694899; x=1761230899;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zLHif9EWH+rzulfhmg5lRBlqw64yBo1GiG562H7krXU=;
 b=X6K44sfg/nek5it5kpi7tO1AToaLzPRdztMZ9/2cJ5hrYpJ+Ln1Rnggf
 yiWkrndgjQ1tNXS7hqPkIxT1spkbhXRAZRDVoi+7O/aqyWWRE6dNgvBK3
 UzMU+0KiF0Bo6y0U8/ogq6ojiORhwZaFzzL9rQzXaT+nf5Pu+A4KQ1Zdn
 DNDLFqQvAquipmZ0b+Q2HjVAC+ObMBw6Z7uBvgfh5hMIQsnKNA5h6K8RA
 RN1yox/4fqr7AbxJy09ZqwuSa7zaR8nUXtNUCOBebGjLwdIq0xlmLrvHp
 XITUZgldx4DLhJCJAmk5g1y0xE7SRvF/dyAV7BHfxsm4GGUCigSYo5y19 A==;
X-CSE-ConnectionGUID: DEUak/xlTqGfU2UuLXsYKg==
X-CSE-MsgGUID: MH4Qa/1rTN2p1lHKUjSbfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29184487"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29184487"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:48:19 -0700
X-CSE-ConnectionGUID: evMDwYxGSLug2ZxNFriuNQ==
X-CSE-MsgGUID: JtUHqb8lTGu9nNA4XpmA/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="85344394"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 07:48:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 07:48:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 07:48:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 07:48:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mbWi7su63XI6ZjkkltXZXkpx68IT4O7e0oIne+Y7ho6Z4+vQ78CkuAEz3s31uPtP7cznn5Ai6YUFGVf/5OmAnUDngBbvvixBFaCqvaI+WtstmyF7B/qb12RL2DcQiLs8TxJvs9H6myyAe1fVwoDBA594DJzQAixPyX85Fp/+tZo8wzcPMjye0B4f5PkDurdIy28bt7YixcuSGLj2QixmfSfusyTAEWLzk9qvZ4IXeR7KCEasYjYTLYF/Ibsr/1LAPTF1Id8GfO12B7i4Mvu9Vlz5PVIefF5iJR3gLlT6jou4ZbWSncR/qfZK670fEt488rFMLQeYESFiH6hbnI95iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/7rxZWmNJD/Nkdm5fPoIpaDan3YfgpPW1SbLLQbA2s=;
 b=raIcODFVVfDTRYnYI0EK2cgLM9u2q+XnAidi36LSLT6x36pUGc51nH1p9Q04imJLUU9onimPajJbBcHK7vqa77ZPPSGA3fD9o5vg1ywtedU1zlrWaFe2tOMDnTY5wYYM+DzPp/fSQ/EAtOeUjxvDRIEmHZNAr3zKuQbUICpIpWn+DA+RH5hyG1+dEDcMteH18wGsfbu69D3o28/rxl0vvDHUdwsG4VCmQEc70NsamdTbOoKRbXpRrkMZKn09/wKQLnDdea4FLRzJ8AOxv2j7GOo0bC+uHAZq0xK+vGr+BHfamqdDlm8qT2B7ONVAuW/G1HLNoiTIj9sVboqEsRva/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BL3PR11MB6529.namprd11.prod.outlook.com (2603:10b6:208:38c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 14:48:07 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 14:48:07 +0000
Date: Wed, 23 Oct 2024 10:48:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Message-ID: <ZxkMo6BVeb7xvhs2@intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
 <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com>
X-ClientProxiedBy: MW4PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:303:b4::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BL3PR11MB6529:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c463327-f3b8-47f2-bf33-08dcf371b4ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zfz9O3N+Nl8V3Jr1zZH46/vxwhKbHTzgNTqWjxuE/0aEyvI+OGOKEJHh3gfa?=
 =?us-ascii?Q?s0K+/hq0PRdlv5FDSWYzY3QRkY4g/Ft38d2tfof49Zr167dTf2i9qP2rMdRV?=
 =?us-ascii?Q?QqS+7O4yxlmmgqrJE4Cch6Do1CB/ETVGQF/FmO7ICAICse1sPzazUZUpja7n?=
 =?us-ascii?Q?yDFvB/w9Jg2cHS4xtUbOAF2Dd/q3vwx4MjGH9aSE2iUGNz5XB1k/YrDqPI7J?=
 =?us-ascii?Q?ehAN6RLbrYsiYrwg8Kk/RjvFhEorXEHUGJ79Q9YGl8gZ28icDhPDkVVbbqT1?=
 =?us-ascii?Q?yykFj0pNeZ5MhEpiHjQG361hecknc7GfT0kOLEYOQiGazPTmbJkHrrfNkDp0?=
 =?us-ascii?Q?9JyccWTf/iXWgT1nTQkZh36OdyrO9c/vuN64caloCCvmuKJzp9u/cTJNSTHo?=
 =?us-ascii?Q?boPvOe+t0SACGDbQifKENAnNj2VSqSfic8MQW5AWcXw0Axy9NB1/9xvz+8ZW?=
 =?us-ascii?Q?0FjUpLCcmSwGjUemkv6HJ/jdBDAwwUYPK3vjDmH2VDk/63xcnEohe0uf8t3s?=
 =?us-ascii?Q?2oOEiaLWw0p1PDc1Ub23dMy+eNqTb/KDIZ1oVrG0p1vY5Wg6i9j6DycI1ku9?=
 =?us-ascii?Q?LKh9/0W8xP6y6UDr2ZYV8b5qvZ+1XyhEasMPr147hQ/QG3atE2a3osb16ZrY?=
 =?us-ascii?Q?rIaFhWI5+9P/qMgyHMk3nWqrnsLKyz/bSQ4ktmWrMGik0sGNbWqZGp0TVJwC?=
 =?us-ascii?Q?LWzKLLMJwkNw1IM3zpxknXHLBDH6SGSgcdfIUX2g6U5YNw6ksHUAABs+68UH?=
 =?us-ascii?Q?BVTguV2pH/eoal4g93RY7cJ2wVgQrFKbmwbTszSNp1WR/8ZSWJDtIcm5awcf?=
 =?us-ascii?Q?3qWkbdkSwB0CVWeZ6S7uaZSKt98DopWqV+O/S2crgtLyxyYXT+hGBzRPz2GY?=
 =?us-ascii?Q?u+VHmWvSk3aTnAEofBnOe1u3mkseckV2tS/kJo2qdRVe8yEWMLywpxnDZGvM?=
 =?us-ascii?Q?l2PRQJULnsFOw1ZdOnmZhuTpaXdba8hlXHqjedbBk/pVR8uPXyBgHfufuUEf?=
 =?us-ascii?Q?hN0JTiNOto7KAuI6gpj33OG6rvf6H82dA+mZJIELJP99yKhluDwDrNmoqGG4?=
 =?us-ascii?Q?jPo1St42MsBlhN4rwrxP9JlJPybiDNZ6W5LKVorOVcEau19d6Z7bJ4mpmbSS?=
 =?us-ascii?Q?w4nq2RFxI1PA30pgtXNL9uZzTYnmZAxqp85OWuTpMJxD8G+MKHvXZTh567lb?=
 =?us-ascii?Q?OWcbeNh8v/JdyHZ3LXPwUvTc43As20JQCdUvxSzg2N95mibDqJxCv2TE7Hyv?=
 =?us-ascii?Q?DyygmXSjjPhwsA/9680Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uiecasXAEOe1TzMwk8Q0Ji4TqXzep1Ejn/1WDm7n/FH5EGh6RU4MLNPDKn+H?=
 =?us-ascii?Q?wcoafxHa79b60w7W+U7ob48nccvADXpV6DbSM1Rz7GRczAcmMDXdvFqXa7J6?=
 =?us-ascii?Q?YivYG0v2JzG7yzdSUbK/Xg2DCuCBvhRqZdqTjQZZDH6rRb7s+hsTThAONmJD?=
 =?us-ascii?Q?jIypA6HzcO2b/834iyQz43grmyIZHAisSnLAFAz5R+qZG553QucWrz7dib6T?=
 =?us-ascii?Q?UaJjQ6xjZ/1+6rmYExyTr/KIqgLzFF0nEfnuQMI9TI9WHby25CaZlhJRiHjc?=
 =?us-ascii?Q?C51y0v44p2rDSWgzaOrbcBivHiR6zB5ITpyH1jpefsoU7aWL0zbzat/0PJT0?=
 =?us-ascii?Q?BpbJ2HsfpCPOe7rdKfY/lBIpxc/636vSEeKgxZvKYv4paMz7xTGUmjJ4vXUe?=
 =?us-ascii?Q?GmGV8TOh2PcWvqT/g2cRO0dYfNETJS31PbIa4bkAjlJiLzG+1o2P61DkoNzu?=
 =?us-ascii?Q?+61d8iTPzpskChmCMxMBcTOn3XK4eK5FpaqybdlFvFa7YvTw/Q4XjqsUhoSW?=
 =?us-ascii?Q?zLLUnK5PrJal/IpIoQ6OBP+NduFMkYIuFnboB0ijmQZF1SA7G08lS9bkJnGI?=
 =?us-ascii?Q?YcecuOIp8MYJJBiwRNgc+mvD1nsgW9mGouG3ldfH1sgifhSNDr28w0uafz4j?=
 =?us-ascii?Q?yQ1QNgSNXVyYwouDUp9lnBK4v7w7YjKkGHD7KSgx6CLKItJFddaXZt6ereyT?=
 =?us-ascii?Q?HODxDcruhJDR8yCOTKGt0KN91zZWIupgnj2butX04DiYRLRjt4Xvz43A/7Gc?=
 =?us-ascii?Q?TwxaiMQdI0hsanscUAF4RmpbLVUNDVSroYzHJMBf9uXzwNIsTNEfVcVRgUX4?=
 =?us-ascii?Q?TWSG545Cx3tMnKnN5sO4nQ0h5qQjAco+gpiLZdeSiYHrlzeuPrXWm/rGBY2C?=
 =?us-ascii?Q?Mn2bqr4fyWuFDYHpz7NdeGYRxi5pBsAnT4xtTMy0DNePy1n1WFgmJ/7mm1Ke?=
 =?us-ascii?Q?kTX8Z+eMYEYXvrVmuEUdlO9yRdzlkR4gnA1lQqlC++2o0BxjiwWLJK49v+s7?=
 =?us-ascii?Q?/yRZm4h9MtZhGBGZEp39wv3C78+iZGo9BeJyvNqogSRzwhBQgw2qEQZ6Hru+?=
 =?us-ascii?Q?nk5LdAgFXKfXQA/7DUPP5VFYUQ2aKnU7mJG3PyvxuUtFihSxil14R6PEYou+?=
 =?us-ascii?Q?R1ea7SsULoq0RoC8XtUuqzX0vVhgn78NCBWlyG+RMYx/4EPqFT725elnUmrk?=
 =?us-ascii?Q?QbPsJwv2vp3LUfgJl66sdf1Rr9hZwtW0kmdY/YOK9vugxKjC6xeksLCG9s4X?=
 =?us-ascii?Q?zdoTbKvrAdcBphLID1uPbphspxFFmCa3YqL7Wa0Ct/UAAVVu5G7K293cc25q?=
 =?us-ascii?Q?xtJ5Ili/wxlv1vvkooa+Zz2bcZTmDbN0vdY9osO1LEY/HIsg+f1U6hRV8hFR?=
 =?us-ascii?Q?l9t/NLpkR80xCYcXbw7AoQ3EPcmAc6oeH44wgG6wAGmLTY1GTGwtLWXZ+QmL?=
 =?us-ascii?Q?BKG9O4RbYMCSzDQkF+5LPCl3+GmaVePxrqtJ4y3RczK9eFtylGVpYGWmCAvy?=
 =?us-ascii?Q?VufvDA8rqalVWMKAAFgw6rWAJyMg1sZ4LfbBeJDh0/t//yOcNH8hDa09DPlZ?=
 =?us-ascii?Q?ICeQYJXsNNteqva9XHd6SLi9+RSZTJDaf4lQkwfr7ATXiWCpe60gvniM5KSY?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c463327-f3b8-47f2-bf33-08dcf371b4ed
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:48:07.5695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e+E7gbvvh3iYHvrqcP4P/7POZ6B1wuJaWmSp5utpPHHxXAZnWcY75SHt4ULp77TiKEHFpZ9YsbyqyZJZT8dq9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6529
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

On Wed, Oct 23, 2024 at 11:03:57AM +0530, Nilawar, Badal wrote:
> 
> 
> On 22-10-2024 22:39, Rodrigo Vivi wrote:
> > On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
> > > Hi Badal,
> > > 
> > > On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
> > > > Encountering forcewake errors related to render power gating;
> > > 
> > > Can you please expand your explanation here?
> > 
> > yeap. More explanation please. All platforms? really?
> 
> We are seeing Render forcewake timeouts on ADLP, ADLM, ADLN, TWL, DG1, rpl.

Is this a regression? or a new issue?

Is this happening with Xe on these platforms? or i915 only?

> Issue disappears after disabling RPG. Instead of fully disabling RPG I am
> disabling it during active submissions i.e. during unpark.
> For MTL and ARL RPG is already disabled permanently.

uhm. Interesting. Why that is disabled on these platforms? perhaps we should be
doing the same for all GuC enabled platforms?

> 
> Impact of doing this change should be performance improvement so kept for
> all platform otherwise I will add platform check.

it could cause power consumption and battery life regressions. Better to filter
per platform.

> 
> This is the issue https://gitlab.freedesktop.org/drm/intel/issues/9413. Will
> add it in commit message.

Next time please include the relevant links in the commit msg.

Thanks a lot for the info and for working on this,
Rodrigo.

> 
> Regards,
> Badal
> 
> > 
> > > 
> > > > therefore, disable it during workload execution.
> > > 
> > > ... and here.
> > > 
> > > > Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/gt/intel_rc6.c       | 18 +++++++++++++++++-
> > > >   drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
> > > >   2 files changed, 18 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > index c864d101faf9..459394ab5258 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > @@ -140,6 +140,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
> > > >   					      VDN_MFX_POWERGATE_ENABLE(i));
> > > >   	}
> > > > +	rc6->pg_enable = pg_enable;
> > > 
> > > this looks borderline racy, it's fine only because this function
> > > is called during resume which normally runs in atomic context.
> > > 
> > > >   	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
> > > >   }
> > > > @@ -572,8 +573,11 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
> > > >   	intel_guc_rc_disable(gt_to_guc(gt));
> > > >   	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> > > > -	if (GRAPHICS_VER(i915) >= 9)
> > > > +	if (GRAPHICS_VER(i915) >= 9) {
> > > > +		rc6->pg_enable = 0;
> > > >   		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
> > > > +	}
> > > > +
> > > >   	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
> > > >   	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
> > > >   	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> > > > @@ -687,6 +691,15 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
> > > >   	/* Restore HW timers for automatic RC6 entry while busy */
> > > >   	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
> > > > +
> > > > +	/*
> > > > +	 * Seeing render forcewake timeouts during active submissions so disable render PG
> > > > +	 * while workloads are under execution.
> > > 
> > > Can you please improve this sentence? If I never new about the
> > > issue I would be a bit confused.
> > > 
> > > > +	 * FIXME Remove this change once real cause of render force wake timeout is fixed
> > > > +	 */
> > > > +	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)
> > > 
> > > is this supposed to be "pg_enable == GEN9_RENDER_PG_ENABLE" or
> > > "pg_enable & GEN9_RENDER_PG_ENABLE" ?
> > > 
> > > Andi
> 
