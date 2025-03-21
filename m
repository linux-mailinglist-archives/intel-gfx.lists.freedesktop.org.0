Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B8BA6C5E9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B085A10E103;
	Fri, 21 Mar 2025 22:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/kxxad4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C91110E071;
 Fri, 21 Mar 2025 22:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742595918; x=1774131918;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7X6/yTJVBAqBowqb98nrmzb/RL+KXtH2gqYkrGFq8s8=;
 b=a/kxxad4AkX8TAdPqMQzIRPn8GKLXCJ4VwYc9DjSCX1oMqcTe/uNJOh4
 TxFZbGjD2FUw6I3zbvW/Po6QMw1wHDlHx+kdoOF0GrkSIiV2f/bYmODMY
 tclEMR/6GYp2v5iZ5e5VmtO6vwcSgMVSN1m6ow9hu4ADIxu3EudT+NlUl
 QXq25PIpfxuF3XcNXtgfymBTYE1xrAkjDR/AJ6w7nRdOSBmpD/cRHehTn
 3SbZXXWX/H/HKyXevvdbve9Np+twEaLNLZBO81lkcHZHXNHrn9Y9oDElJ
 /YrezU+AKamkMnaJrwCJVV3M+pzsksIiPND+4ePZUSAIRe5CtfDTJVqu2 Q==;
X-CSE-ConnectionGUID: FP2RdMBmTvSqOIm4pjlIbQ==
X-CSE-MsgGUID: 6EMrVAu7SMms2lziabtiDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43040011"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43040011"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:25:18 -0700
X-CSE-ConnectionGUID: 17/zVbY/Si+9bvwPQJOt3g==
X-CSE-MsgGUID: fdHuz0EGTdy0FfVD/0FUfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128346152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2025 15:25:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Mar 2025 15:25:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Mar 2025 15:25:17 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 15:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GE7Jf5nNbKeMUVcrp/IL8JBbs++mdbmtXIp911WSqv33aeqM/cG5cOO1os/x9KfvBYtGvtA2AKcOHGRZvn1fhdPj5Osdj8+9RnssVqgjf3Ztdj6H4MhOXhMxBXYl2Gz/zjCZw4zCg7BZjoVY55tVP9EsilAhBCy2KQThMGIQ2DWovNdPtR9jxq4cQiLMbBVRJHcmV2SKRbyeRSqSlcirkvj7QkXR+35eRGY3TegXlniVjJX4csiF/8SMJO2T59KvkSCqNOFEMXfvhROablkVPkTIiFMWghjczlDY6s9EGi1f8JwLmftGOLeGqBIfqBPFWAn08nF2McKGuxWVqKqN6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yERprUNQpeA6K9QksZESzBKicTKSHYzScKHjFAUOCqU=;
 b=Hm+/wDMjN3L6WcaNZFteIdSEr/APBVjf7BPTqBTrC900gUIfLCz+2nJfp/lvgbtSqmqTIkNcrWjny/qg5ahUc0muaI6W+RkdI9F9MVbAKNnL6nnbwwGOH7aCxaaEzV9H/L++InJLN4QChS5aZddPSGVYHP7uZeKhRepEKu+QyzwEJX+RfbaadYr9Wg2dZb6JdYzJk+IYUw1lX7d2qVa8y9pwOs+bv7yjj101q/8fqs0bbyLOevM/pGAWeK+xKF17Xw1+RMFMx8UxclNLz0oZDIrZMncN5ZId074lxuNG5rzrT+1CZCcbMtBZ9eozRxPph1K+j3XPZP+ALPEQcRVmNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6238.namprd11.prod.outlook.com (2603:10b6:8:a8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Fri, 21 Mar
 2025 22:25:08 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8534.036; Fri, 21 Mar 2025
 22:25:08 +0000
Date: Fri, 21 Mar 2025 15:25:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/xe2hpd: Identify the memory type for SKUs with
 GDDR + ECC
Message-ID: <20250321222505.GG1439735@mdroper-desk1.amr.corp.intel.com>
References: <20250214215944.187407-1-vivek.kasireddy@intel.com>
 <q7jpiuuu65zrmhdwjs27o77yat3rtmreqgg6urkqp4l6fce4wy@7y64f5ga7has>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <q7jpiuuu65zrmhdwjs27o77yat3rtmreqgg6urkqp4l6fce4wy@7y64f5ga7has>
X-ClientProxiedBy: SJ0PR05CA0070.namprd05.prod.outlook.com
 (2603:10b6:a03:332::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6238:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a04a94a-579d-46eb-9114-08dd68c73c99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WsgN3lPczHVP/9TSUnvtx15pH3bboALxKX9RgQzVvO01/YYPxtnH16XefyEU?=
 =?us-ascii?Q?qtS7ZnGXahEhsCJYojbXa5Lf+jnp5tyEts4uvLHJebD6T7QV5bUTcXb5eHH5?=
 =?us-ascii?Q?L05CNAqu/FymyCcJuDdMMMJXGDqKSbEbhCjbfgjCEQccJpc6dSGHknwPSNnh?=
 =?us-ascii?Q?gRkEO6c8rGJvDmJjom8MdzEwxFv+fps1WI4uDGfokWEqf287GwnV6rdeCOgD?=
 =?us-ascii?Q?n1AMbR0G5xkaGN1sFsJUDesI2JVuc9PWhlyQ9yFmkIKHKq170P6s5Nwg7Pht?=
 =?us-ascii?Q?1NSx9q+rlewS3Hw4pDj0R2D3xe2QDTzbPZ4Amnj4x9ZxOjF2EH6V8zD0DFgd?=
 =?us-ascii?Q?kmoYNyyQWtzv7riSTLDtv7i887SIIc7QEPuPayfPsbp/fROIs09eDZISmY7W?=
 =?us-ascii?Q?wcMlQwYXg4Uls+OdBmPgyCQgEw0kox6LBU7CGFZRS0sOCa1NqO08CGOKLos0?=
 =?us-ascii?Q?HCaLymvAwk6+5a2Mzp9O7ekVEcPPTzyJza81Zf6o/kdlj3navS2zRqquSJOD?=
 =?us-ascii?Q?/dAezm7uK3uI8XMbEsEvY9Qq06D8COt3oDrBCsGpjW4VmJ2UEq3ywU1mp6Iv?=
 =?us-ascii?Q?SMLxf/KPhHS9jCmL4OAdeDLzhY9aoKYNBH2VQa9Es1Mfj/SyDVXHRybx2Bc4?=
 =?us-ascii?Q?QmgpnTq5/182UDF10NREez3TE3avv3gLceFZ/q4/g+ahpqgRFwHLxv6EWork?=
 =?us-ascii?Q?6RN1+dugERcthCoPEmVJ2vKbjWZDsIZrODLCUcpLsMdCOlX3CdKsWWcPZUrj?=
 =?us-ascii?Q?RmXV+jcte7w3jL9qWrX4X2GmR1WxLU1WTezjAn9GtGzMbSyGHf6ADm7Xdap9?=
 =?us-ascii?Q?iK97KmW6aoKk8HhBI8Ze5yd2IPoSzatQG2p0lRiNglTZn1jqTnQ1hf6AK3b/?=
 =?us-ascii?Q?4HJ4zn41YUDyz9ziYb1qzC/iLyY1Gfu7OgDTOzLo/OShBxScnCSPdSqCd4bf?=
 =?us-ascii?Q?S6BB46RPVsKl2ypdqRI58OnqonjYR9WWMRSfABOpytoO7WDPC+y2Dfd9uz3x?=
 =?us-ascii?Q?v8Qa9HjthiMSW8GRD2ZHzI35AUgqRV6D3CZpL5kAlCy8qHfxv5P5+7qSpG/H?=
 =?us-ascii?Q?XDj93qOxNXZ3Z4Qgd+ph+Um9UiiDu1dO5hCZQlnmOy+AxrQThj/+nxbl245I?=
 =?us-ascii?Q?SN0ZEhtDLel6Xe2C7lU5qmMt/ulTY7H8Gtx/tcbfEFormmBSH1rQX3qfgwxr?=
 =?us-ascii?Q?ySy9SVtqGLuDMPLzI2WvbPPkKn9inQlTDJ1Obvj+EE4nfvALy/RIHi2GGWzO?=
 =?us-ascii?Q?4Uoqhva0L7pjFokyZTBLJYjxAXAXJ3gyqMeqCWT/i/OqFDQoQk56HGBXQX/p?=
 =?us-ascii?Q?AgtMHOSUv0PwkhuEKQTzV5rCqeUEzfmJ/QasD8kFhRBIFb+bznM7TZxafWOa?=
 =?us-ascii?Q?OD/c7MVbMqT1M+VhrpGJVyID/G2L?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ykVmYOGM4bj3YhGNkFChytVh7rUnWx/BV54Q3czIFU7VCwl5iW8NS9kMjeMj?=
 =?us-ascii?Q?i1MIzZ+4L3usjQ+2V46X/a6P7NDXhPePegc97AObAjfMWw6b9HIF0MazvLV0?=
 =?us-ascii?Q?ix5sYQR3BdG3qeAfCX7PSxcnVTIfaOxLx39LLwHPZFh12Bc/D0VACmPFwWpX?=
 =?us-ascii?Q?Ec68O7rbrQtnoLhlYi3cbMa89elF0W10TVd+avrvRS6wMoDXtt8h5cqzSalc?=
 =?us-ascii?Q?u+k0xQcU+4RyNEDSaQ+2E3vDt0Pa0zZZMFaJQIpG4DLBNrUcSC5ISZ6fj1pd?=
 =?us-ascii?Q?ErVkw0jgGdpNUig4fCQO58T8vYMF4UZ0MUa3jqoj/EILtEN1++AZ/PXbJayW?=
 =?us-ascii?Q?ocEMZLH9pxi6br2OLX7leRqjfLxKzqnKbwIY7EjlNAvesxE2uJv8GWJaiLyX?=
 =?us-ascii?Q?4ZFPuV9LbtsZ91uSbo+pzl9r9hw3DM1Ahu+CywtUypETbol2m1pvcsaPXtIW?=
 =?us-ascii?Q?7/+zBbMlygz+6rK3xsRgOtC/pfsEe0uGF1cKUsiMq7K0MKZiHV1zV+6TNLN3?=
 =?us-ascii?Q?mVy0bqrUH0w+ru03ikAY6nftu6UmVNIR95lDdQJTHTPa9CvJzD1N4dQj08hH?=
 =?us-ascii?Q?+IeXIQjMewNf+0lHtBf0V5PSvXXw2ukps0NBVSOQCeTj7NIL5QoAUTxe4O/U?=
 =?us-ascii?Q?CcdZ6MIyztuThHV4tyU5UzadpppPSS549eZyeeDFvobSJCXC8iPjZesRtWVK?=
 =?us-ascii?Q?kQNkVq9i+Xhh+F4EbsPNcg+X4DELoDE8BmY0Y1AfvhqrPt0cfjdN/vcuR0Q2?=
 =?us-ascii?Q?tdx+TI8cuB+iO2zVq9T+CsNQXNfUaWzCl0OlrPeVYPZfgHOYiAQfbd/0qV/6?=
 =?us-ascii?Q?L/K1fUmXZiawfUdEMNYpcuLAsg6bJmvI7y8dL6TZaNFbORKkl3l1+wYh/Th+?=
 =?us-ascii?Q?U5XHXI6uK64//oZw2YirlgoycXFfCgSewB9m1MKwhrNeD5s+7kZisbgceaVQ?=
 =?us-ascii?Q?bIwZZvUcAUp0G+EgCE6Til0ImslD+CYUqDzhaUX/H1+7AEK/bcSeJ2JRqwEI?=
 =?us-ascii?Q?jaH7Z89xptNmx1fXR67Sg/uHDt+/xgBByuFQf7cpoUI3mPRYoitph8dAxqqg?=
 =?us-ascii?Q?Xy2/XjkVMkcNsW/scaQByGqfmMK06/yzZFG/DuFPk/VI0lVQQ1Ifo8UHuvpc?=
 =?us-ascii?Q?jmw+Vvm7rsYtCmYU3TWrR1OX9OZucH1ZYKECtFPRxmIP04qD2lDrXVFIE1Uz?=
 =?us-ascii?Q?QeFlCB6fN+jcko7PaxSxTvFxwIbSfSWkil+mYcL/6fbLsoxGTDpWjDSRVVAz?=
 =?us-ascii?Q?H8TlA8PeAPVykdN1Lv+iSLR1kiofVTu5eoh2nUfNds3EuPDikR0ABSnWG7DY?=
 =?us-ascii?Q?9oNjb0ZBpPyxvxjn29wn5pROYPZ4UZ8rzvsx0eS/sehaGSRb5VNWmQdflKfQ?=
 =?us-ascii?Q?47cKN1ByZ3wqXaw60ujoYiRSK3T7cuHDHVrGyTBTBUrYWQOk36rR82RebqCX?=
 =?us-ascii?Q?uuOh+C6zuHDfFpg9FdQx0zt4ceCCaMXFd0Vou8qXlAyS58aH4I8kmGskACGD?=
 =?us-ascii?Q?e4yZ1aOhxrKW45K8zOhPAvKT/xNc0eXvmRu2JicSg75lQ1kr6de3w01M9VQ+?=
 =?us-ascii?Q?g39kY6iTBiCjpm3I7UTjNGH6y/7IgQ1cawD7B51NPBjGIhk7sgJgF1/EiJtv?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a04a94a-579d-46eb-9114-08dd68c73c99
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 22:25:08.2429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /YbT76iXY5aFa115Z5m7BBpExZrRWN089CY4cP8+b8bKO97rWgd3mSEr8VL87/E4qkvRhuQnilUkN+nVpiAsa2BKnGrwf15uL4D62NnhfW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6238
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

On Fri, Mar 21, 2025 at 01:35:16AM -0500, Lucas De Marchi wrote:
> On Fri, Feb 14, 2025 at 01:59:44PM -0800, Vivek Kasireddy wrote:
> > Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
> > with ECC enabled. We need to identify this scenario and add a new
> > case in xelpdp_get_dram_info() to handle it. In addition, the
> > derating value needs to be adjusted accordingly to compensate for
> > the limited bandwidth.
> > 
> > Bspec: 64602
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > ---
> > drivers/gpu/drm/i915/display/intel_bw.c | 5 ++++-
> > drivers/gpu/drm/i915/i915_drv.h         | 1 +
> > drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
> > drivers/gpu/drm/xe/xe_device_types.h    | 1 +
> > 4 files changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 23edc81741de..b8a9651b74d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -244,6 +244,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
> > 			qi->deinterleave = 4;
> > 			break;
> > 		case INTEL_DRAM_GDDR:
> > +		case INTEL_DRAM_GDDR_ECC:
> > 			qi->channel_width = 32;
> > 			break;
> > 		default:
> > @@ -630,9 +631,11 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
> > 	for (i = 0; i < qi.num_points; i++) {
> > 		const struct intel_qgv_point *point = &qi.points[i];
> > 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
> > +		u8 derating = i915->dram_info.type == INTEL_DRAM_GDDR_ECC ?
> > +				45 : sa->derating;
> 
> looks wrong to leave the sa->derating with the wrong value and just
> patch it here.
> 
> By the time intel_bw_init_hw() is called, we already have i915->dram_info->type.
> So maybe it'd be better to fork a struct intel_sa_info for this case and
> have the correct derating consistently? Otherwise, at least moving this
> out of the loop would be appropriate IMO.
> 
> Matt, thoughts?

Yeah, I agree that creating a separate intel_sa_info structure with the
proper values for the ECC case might be the cleanest.


Matt

> 
> There was a small conflict due to the move to intel_display, but
> otherwise this commit still applies.
> 
> Lucas De Marchi
> 
> > 
> > 		i915->display.bw.max[0].deratedbw[i] =
> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
> > +			min(maxdebw, (100 - derating) * bw / 100);
> > 		i915->display.bw.max[0].peakbw[i] = bw;
> > 
> > 		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index ffc346379cc2..54538b6f85df 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -305,6 +305,7 @@ struct drm_i915_private {
> > 			INTEL_DRAM_DDR5,
> > 			INTEL_DRAM_LPDDR5,
> > 			INTEL_DRAM_GDDR,
> > +			INTEL_DRAM_GDDR_ECC,
> > 		} type;
> > 		u8 num_qgv_points;
> > 		u8 num_psf_gv_points;
> > diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> > index 9e310f4099f4..f60eedb0e92c 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> > @@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
> > 		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> > 		dram_info->type = INTEL_DRAM_GDDR;
> > 		break;
> > +	case 9:
> > +		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> > +		dram_info->type = INTEL_DRAM_GDDR_ECC;
> > +		break;
> > 	default:
> > 		MISSING_CASE(val);
> > 		return -EINVAL;
> > diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> > index 4656305dd45a..0921e957d784 100644
> > --- a/drivers/gpu/drm/xe/xe_device_types.h
> > +++ b/drivers/gpu/drm/xe/xe_device_types.h
> > @@ -575,6 +575,7 @@ struct xe_device {
> > 			INTEL_DRAM_DDR5,
> > 			INTEL_DRAM_LPDDR5,
> > 			INTEL_DRAM_GDDR,
> > +			INTEL_DRAM_GDDR_ECC,
> > 		} type;
> > 		u8 num_qgv_points;
> > 		u8 num_psf_gv_points;
> > -- 
> > 2.47.1
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
