Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6038FF1E3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54EA10E1BB;
	Thu,  6 Jun 2024 16:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAYIi5H4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5B110E1BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690414; x=1749226414;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MUMmqYQKQWYSYeLe7SGjp3TLwFiNiXEtkvXhPqNT8HA=;
 b=cAYIi5H4rZq64qWSPnQw/snVVv40cSmx/YPmEtoWLnsscf9AIJozHWlA
 49WFKTx5qs+0M2z7Rf49gfiWFB3L4/YXP4UUO66g/sGz9T9FeSFIK+/N9
 mqsbv3erfBB8N4DVyitza5obCH88x1LjV2rJ+maxQ4QbKsk8/QAsmqQHh
 grFPCFv2BUD1kZtktEjVOCWGSx1sZlra98mikZeyiOOL50v8PoYGBlASy
 XupBqfHKtixIBVfVGQzh2No6oj/zwAfj3B+18MHu0ELNiOvSzpZkns9w6
 QnJmsOe+QsKTiJQDNlyWpOu4D7qwgoSiCniZ4kWePn3WpG1QxKoarXWLy w==;
X-CSE-ConnectionGUID: L6PivO/+TyO47tv9pgVURg==
X-CSE-MsgGUID: Daw4Y6dzQVqKobPo7/ZaAQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525954"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14525954"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:13:27 -0700
X-CSE-ConnectionGUID: gpVujHpnTCO9yoJR+Kp8VA==
X-CSE-MsgGUID: BLoeEJcHSKqb8Za2NGR1VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38696874"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:13:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:13:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVP7STO4jZDzVTdYM0qqTKocZF4tE86hr+lHCeI7oBSiBIVoSqZ3Uf2bEIOBeYXwsFRQeqYtmVpUDqKjhZZJnpvEUOs0NXaetAKxiSDuT1Dl/jn1RPNvZi/pEMxuhqGsbkYWmhAw+UmGk14pPNqHAN6rM5j73V89Fav7KNsKq55ifGZHg2rqihClhN21sWId5Jg0u7pI8E2KUzPch05vVcSBY26DkgNEbO32F4bufrLMTa0G3iHlxaljll0POoYm6uPXrmKHk0Wo4TH+0NPUF73Pg6qb4yP0Fjnaxf3q40pLByFg7u8QtPhdz+prDUDJ6UxsRlxrbRYAwMlo4uyHXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L1IGOMLFn0hsIvCEJIGii7Ibd3iY8ymLgtq7UqrjviY=;
 b=Mh417ezegNcpqIIhnUPM7FZb5paS4LQhjAat1MMazUEnFnF5bb1M1Cwxw+oIQB8QRrzuHLVUXMenKHZ+Qskj4Ms2luvve9sTFuHMs5b8x3/RnAADHT9eWRXCW3w+KvEValGAtKMYmQWjd/FHocrfRGPXobjpaOtwwZrHWwsSn7sy9VZKAoJswVqeAm5l78g4xDJnV3nSX66LSMnIvXA0rZ9v8yQv/ZgM2Y0v4Ht8Jyw4Odu+qrwsd1GsNxeBSQoWamSgAGvoYklXPnn2ZnCqnu8Szw8LO6kMU30ooHFh0En6tymIP7GSJDUOmX/kCq47w2BjHWRlGYxW3L6rrlQbyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:13:21 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:13:21 +0000
Date: Thu, 6 Jun 2024 12:13:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 55/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_N1
Message-ID: <ZmHgH5yMZ6waWKwL@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <0960c3726a36999b38084dce6c3824882921c475.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0960c3726a36999b38084dce6c3824882921c475.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0044.namprd17.prod.outlook.com
 (2603:10b6:a03:167::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: a9c614bb-be91-46e4-64ae-08dc86439596
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0c1YuuRjqi+8A/gNQ/cawjGkCaO18hO5CRPGWzsVc9GIvmww3UfCL1bnI1mI?=
 =?us-ascii?Q?YUyUp2zCSCSHnKuIkGC66N397d7bulvMXxl55kYar9k4pnXextSDTeCGBxox?=
 =?us-ascii?Q?kGkL1g5t7Mmnp9Wi2Dnniy3k4x4iWRIsl9GJhq3oncmvRAdCGurkJVEe6eF5?=
 =?us-ascii?Q?xrQpy8SOSm3wNQzd895xFYdnzZUzVQ+SKctp05tRaT/xEc0pmI7tFCac3eQp?=
 =?us-ascii?Q?x2osl2HPoqWoRg2MOighQZ+APQ4NGXnrDM9fRaN7uBjpHbocK6n9FoxQkIMY?=
 =?us-ascii?Q?T245dOtjXNvYEUkZDdyIPBYicIHOkEX7kWk/42STl3SEuInYIFGPcDcgx/VA?=
 =?us-ascii?Q?ysNpkidYF5gP3riR5NMjV0GNkGmvwWTKRxlAuzvViyKjMNS7PG9jEPoGvwyx?=
 =?us-ascii?Q?1ykefTxSGNf7ZbahWz0CKPrM/cS1+LTdZa8XcGnPRnJThxFCqyLlu9EC77Ig?=
 =?us-ascii?Q?b/5RHte5feGMKftF7GhlA9z1ipvs9kUsy3TMcAsmDuXiIsAS27Pi5a9Doh8x?=
 =?us-ascii?Q?QuN+IkWUuyvmC1YIm3DlGA5K2Y0T/qvVzFNvY/DS8W1iWrIGPFke9B6fkJqd?=
 =?us-ascii?Q?4zCeWE/6AvgoIcsPJeBKIBV+64WvjqSe4cwgMrWr9yuG6akn3K3h+ApOwM+O?=
 =?us-ascii?Q?OhY7SGmQRRR7pXIuTl1WFzLoYt1ZMY0lZGH+STn2c0CUts369Ph+xWj0KDsh?=
 =?us-ascii?Q?tNNBF2J+SEPk7/Ri5vnoCDDDlDdy6t2pQP5N+fHI1CKoPHCnZmbMI7sH7y5P?=
 =?us-ascii?Q?yS7+ypiQA1bIdfVxc4CMuUYR6KNPyBiWW4ZFct1GDg/duiXpCafK6g7+oIoo?=
 =?us-ascii?Q?3xTLIIZrzffM/cn9JQoH+wJdFui7q9I5M5WH9ddjncYJLAcwjqz7Vnb4sLQG?=
 =?us-ascii?Q?2bbtTcG3uxdQQ2uqtCcS76/oxglnW+Kt9oClNIAKOOVYb64LQ9oe+0nQAmeh?=
 =?us-ascii?Q?EUAngTdt08aOZzfPy9XLw/HWINxn6IZhITSugbxSMlvsC+lGlxbFJn87g9KV?=
 =?us-ascii?Q?XcZb0MaM5A4Rn04WtnKP1d5yn5T6IgyebOSUj6y+AALk3uT2M8Wn92gp29GL?=
 =?us-ascii?Q?Jj/Dpp+OvIyZ0EKnI8CbSAinf0VxXUDPGnG50E6rfas+CQuzkywjjtgZiqao?=
 =?us-ascii?Q?PtUt36WVaa0o9OPJBlD4wSGcrQAHXDnURIsK3QUa9dcJvi5FB0FifIkRbvct?=
 =?us-ascii?Q?dzWinJ3u7v2K7n3sIWFZ4CsnPHWoWkhrexLkya8IVOACorqqQ0lnCoT3R0nL?=
 =?us-ascii?Q?CUo7GApVtzJVmneG1n7ocLtTwuRPMwbifCmaJKWcgkgxPsTxUDNqZAklb37d?=
 =?us-ascii?Q?XNlwx2Qxqok6FrQpZHIWh56w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ztXKGxAEhEgjcGdY9SLQLLdFJQy9S5VL0WQCb9zNpgeD2MJdgJ52imG8yi6C?=
 =?us-ascii?Q?unZZLapcpYC8Qhhl259xK8wrIfkP1M4s+N5VzaFIrtgQ2Q/uyQsX5COY5tyT?=
 =?us-ascii?Q?sE1FVT/zc+t1o+5jwsy42k8SdaKWLyh5FBZQ5PhLz4jEfBBuqDo3csxQCefG?=
 =?us-ascii?Q?joXgOsXijSyvc4msYJeBJRUMiAZfJtj3QgXO7iau8uxvISY6Ft1QTYszOT5L?=
 =?us-ascii?Q?t8NAZ6AoMR8vfVVAtT2L5eaylrkcaogKzuC2BYfVmIo3BwgLT7AaPKr40922?=
 =?us-ascii?Q?IBYUSPFFgPiALosEinwuIawDKJC50Ngd0TRVn34yzE5pGEbdPLx33sDCxNk/?=
 =?us-ascii?Q?lojYDJhfGeZwlQ4tX8mXZMv1oJQN6GeopLOIhrNHZ0dlmHGd5RqxiaR0TXVO?=
 =?us-ascii?Q?Aqe5eNXd9juoUtFrJPZeAjR1yITpLuMlrmKAp5Qhoi4ymDueCuqHTkCQktJu?=
 =?us-ascii?Q?n8829d4bjBs8cD7iNhcVA4uNBA9l5YanLB6q8vrItSn2l01sE3PrkRN/f9VL?=
 =?us-ascii?Q?xM5B/zBLhg0dmaZvoxGRfukG3Jllrm2KEhcdP0Nc561JCRr36nSj2Q1YpQp/?=
 =?us-ascii?Q?0KxHRprowy+xYwpebRR/ORs2n8uId1hz6mnu2GsJIYnvnWySPOOr+HTHWBce?=
 =?us-ascii?Q?WG1xZPreIb2iO5ew6uQjIuazUh4LVE8/fJW9BlLDW2WnkPvgeGTJzRBQbdv6?=
 =?us-ascii?Q?p+1LwPo2CbViyfNFVIWyM/tAdDlCJX0QlIagtrjzxEHnicKvY0mzluwUgsOk?=
 =?us-ascii?Q?UypQlt2OIlRmgnRCYwN78AGB9EJnePPAvIAuG/QT0n4US3JtLRemLWjpdwYM?=
 =?us-ascii?Q?nkmU3xQ19tvapDvdpeO4tj3+AONiUy1+l2cF1ZgDenj9EuOobcMONTunxih3?=
 =?us-ascii?Q?1XptJlgBURQeHnvCbJjO19Y/pR+whsRMsScwnYK2Gb1B495lbpV810jdNXS9?=
 =?us-ascii?Q?HvJvi4Ly8LOMnVzkUI+EzVriEwlhyI+8iZmGwDKTtM3HU6FNFo8sBAPMqKxa?=
 =?us-ascii?Q?5S+DE4CskNywEC+eQm68LCF0yH4IK0jGqNYTGKE/+9L3KpviPwUnDj5rAla4?=
 =?us-ascii?Q?kVaePaoWLhDPfcaCLlZFqlhiaLtH6Q4Tw8+EW3D9JP57T0fwCY61zllVD9Ig?=
 =?us-ascii?Q?0Fp65yh2DLstjU+DIY2/edwXoDh6weEqkh0WPkguq3Gzv02LJg/cGCAZEwJT?=
 =?us-ascii?Q?neN5mUkKFNViOveNVQZMX3t0w9+DuSo8MTkSkDQxBny9OaEwdsXxoPYQY7ED?=
 =?us-ascii?Q?eTZnGRnIklME4HxRXXbTHE7PKsExuFkU6iRZbpNbR2fWykoFSznQGQpWtLuu?=
 =?us-ascii?Q?0DWQbU3NzbXN8vRZ8HmE/DgF1wH6H9U7H6hn2ZJSYVvRWER2czIEg/VX0URW?=
 =?us-ascii?Q?vKyRJW6GLfGkNFs5ZiYFBqu/CMX/6fC+sFw4v94bn4euz4JRp0iljnwtM9TX?=
 =?us-ascii?Q?XaP368XFlyF42bhfei1Gjks0IGM5nV8wELfm5oNBD7C8Sc0p5IfZ9RabH4TZ?=
 =?us-ascii?Q?pqtav0IjaMGag1eQwL2fOzOE/X7vVvjMfY9fVoVnZQsaeWcKZkNrazZcDhx1?=
 =?us-ascii?Q?zTynuvZ13v25SJQZlaMpO1xCFrwpioO7UnFSYWHB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c614bb-be91-46e4-64ae-08dc86439596
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:13:21.3575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pl5iVyu4m1ExfZtm8SpLIKJFp1Fg7ZOOEBSROEthUpWjkgkBvRuWbd3Qjuf+WMkp3fGSIX4Han/ShcZuulplpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:13PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_LINK_N1 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/gvt/display.c           | 4 ++--
>  drivers/gpu/drm/i915/gvt/handlers.c          | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  5 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a3249d782a8b..eef317984564 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2644,7 +2644,7 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
>  			      PIPE_DATA_N1(dev_priv, transcoder),
>  			      PIPE_LINK_M1(dev_priv, transcoder),
> -			      PIPE_LINK_N1(transcoder));
> +			      PIPE_LINK_N1(dev_priv, transcoder));
>  	else
>  		intel_set_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
> @@ -3343,7 +3343,7 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
>  			      PIPE_DATA_N1(dev_priv, transcoder),
>  			      PIPE_LINK_M1(dev_priv, transcoder),
> -			      PIPE_LINK_N1(transcoder));
> +			      PIPE_LINK_N1(dev_priv, transcoder));
>  	else
>  		intel_get_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index eea956603cc8..95b4b76d3b45 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -265,7 +265,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
>  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
> -		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
> +		vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A)) = 0x80000;
>  
>  		/* Enable per-DDI/PORT vreg */
>  		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
> @@ -399,7 +399,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
>  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
> -		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
> +		vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A)) = 0x80000;
>  	}
>  
>  	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index ae5a3e2a5c50..f2af234769bf 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -674,7 +674,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
>  
>  	/* Get DP link symbol clock M/N */
>  	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A));
> -	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
> +	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A));
>  
>  	/* Get H/V total from transcoder timing */
>  	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a9f3c4a85318..ac9ef4bd176e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2384,7 +2384,7 @@
>  #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
>  #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
>  #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
> -#define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
> +#define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>  #define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
>  #define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
>  
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index c08b8e755377..00ce7147a9b6 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -271,7 +271,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
> +	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
> @@ -279,7 +279,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
> +	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
> @@ -287,7 +287,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
> +	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
> @@ -295,7 +295,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
> +	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
>  	MMIO_D(PF_CTL(PIPE_A));
> -- 
> 2.39.2
> 
