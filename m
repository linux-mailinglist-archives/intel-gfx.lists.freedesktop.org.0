Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681D9B0668E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 21:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013D110E640;
	Tue, 15 Jul 2025 19:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J+iuspWP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2289C10E63F;
 Tue, 15 Jul 2025 19:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752606628; x=1784142628;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zU0Dwf4qmB7pASjxx5CsnZd2TbsMOHN1nnsinv2s6HI=;
 b=J+iuspWP6Sfq0d8XSTMsrDoFYd8w/hoRn5KLBgOJ6wWdz4fQml4RCLMy
 BezseNx+JsVOo1gPsgWTC6YsZ3zI/PAwFR0ftkfhej9nIaeC/FmtkeUK0
 uvmXCm5cJRuVXbPJ/DyHU24twk+IFhDd+zVjIkzv09BOJ42LtwcVQP41j
 ZFY+u0bL1OdyW4364COUnynjnkssfl6uSv3a5yNIkgGNDnijs0w8TV/wm
 1EshwIvvxFmgLAWvQzTpHNNUpXOa7ETqG66481cOblkmcLPX5rfwNPd8S
 FcQSYV7ySnXWdKnOtANxPnJtwb14FEUj55vWt8RiAwxhOzUszB7B9bltR A==;
X-CSE-ConnectionGUID: YYX0wwo7RUOwb85SCMM33A==
X-CSE-MsgGUID: RGYqirW/SgGWgMaERt+/Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="77372742"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="77372742"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:10:28 -0700
X-CSE-ConnectionGUID: iAaupWheThK2tfAqoZcPVQ==
X-CSE-MsgGUID: Euq73oaHTzOVLE5JD7sIKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="157852931"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:10:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:10:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 12:10:26 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:10:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TBZ7t2xHSWSkO8VhvurgJDZl1Bue6hCse9z4wWb66CYgY2Rew2xBIjzobTUf37ryyUveIBFjfBdwMu+cJj/iC9qIHfvhFgru7t4BJ1JZQcX+w0EcEctw7i8qgRn7HyLI2wwFxSDn3E0dHQIPYTF5ILCGIKoCeFQslhD6RJQqyfu0hWoSzceNnyGv1Qal5I2GL8Bix+fyCkfheSMUYQqMtCdkL44UgyXoD89xYEqnxkJ8RU7LPZFe0OMjH3Qdl9Tk3fI24BojSKKrZ7Hqrrdtrh3CTWkXWQpbyS0vcWv04P+1On+Or9DG/dlkdtwcsI7axY9WsIMxDAjuTuBiyes5sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oEU6jW+jxjcVVbhgwFvmciTdch5pVggoLCN1TtFj0O0=;
 b=XcE4R6yZLGtv63W6oNloK52x+xb26L+tqHo0VtSJk/TfB/ZnhG29Ksojwzc+nDgQNqNa4vUDoMUNANPH8KpTrh2qUwXSzCtPEA2qkRYwoGsoMIb1nujt7TCs+Yuj3v/hoQMtgnThmk6K0XVDEhEFsgVf6tN6Z1BuqGyvbHN0qEH3RdaYhh6XbszTLRUaWKaRyBSP51WFEy/LU2gXUXl2L5Wax8cm+E2uTyAbh85zFjNeeGPKfbI3wLmmERGl48BoNHSGIpQN6UiwWNFeZN1Nx5hPrgTcpc3nAkIlgpeXYyBqxhOIAWtdHZ/2mPb0WI+7jpBvywesnYkdJd6ix1/S2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Tue, 15 Jul
 2025 19:10:13 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.023; Tue, 15 Jul 2025
 19:10:13 +0000
Date: Tue, 15 Jul 2025 15:10:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 3/3] drm/i915/psr: Add enable_panel_replay module
 parameter
Message-ID: <aHankq6trYkIO7-P@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
 <20250715105509.4146806-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250715105509.4146806-4-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR03CA0276.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::11) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: d876215d-da9a-45c9-db40-08ddc3d339a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?p57r/n+wnULLP8GlYaLl89ud5muvdMamz/1YOoGW1YZcqPGnCiHY/kLdd1?=
 =?iso-8859-1?Q?fiMWHHwcRxb3deVRSJAoabLjuqiA+jy0LP/+Bz8boSyKV3ekAB13x/GwDl?=
 =?iso-8859-1?Q?wiy7TygWq+bs0fDX6eQxfB+UVGHPZboMkW0TdfEBWA5lqTm/nFB2WhTUse?=
 =?iso-8859-1?Q?4On6WWhl4L2dqjwPe1CbPuQf/oNkbJh5qhCT2rso4CJvAZbZgnzg8nIo1f?=
 =?iso-8859-1?Q?tuODOEDDaHN2tkZURpTSToU6Z/Pnq/rPxuFHqhL0d3fMT5ArEdolO4SjU2?=
 =?iso-8859-1?Q?ZlRSXBdMB50lFEcoouahID4VG31Reuo5v4LPIBg4ytjYj1OmVeWkxuadn7?=
 =?iso-8859-1?Q?/27fl0+pCCHsTFAMTzvOL3f55IOcES6veKFYwklio6bETf8GZjB5EPKoBm?=
 =?iso-8859-1?Q?0rDEcY+4U/4yXeZYZbikHq6ffNhgkL2jLU7by1lH803qWUMfsCpGy4gOWT?=
 =?iso-8859-1?Q?HcufykDx7z6QuaZ8D+S9sd+1jowjyNJHMyFDVFgblvv3x346zAE7MnST7L?=
 =?iso-8859-1?Q?8siG4PCL2xwZnTSQ1OJtQjgdXDXdeq+CeLCPCMRXWNsAL+aiSBIJFzaqGZ?=
 =?iso-8859-1?Q?Kz7cCizEQ+2BG8FU/mmTn1q6wW9DUc3uOtp7MMfZNZNJjpnRTGqw1caBR7?=
 =?iso-8859-1?Q?siHEBmePddEijYfDXLIG3+4lfDmw9w3TkejalBOdBj2xtGf2yaiEZn/MAK?=
 =?iso-8859-1?Q?zCRsEVunHKSC9ffNeWFJn9QinHcJgwgl0pdb9PGuse92XadoBxYm2u3UfQ?=
 =?iso-8859-1?Q?ovcKoJoO1bCTenJaVSrsDc4ihwWirl1NS0Ica42m4vW6iZ479oOZ8Zz8nK?=
 =?iso-8859-1?Q?ai/htdKf9CKvWvCFIZjj2BcxmOKOVKVGeN0ODhXroDoDgcnSh8x6WCN5oG?=
 =?iso-8859-1?Q?LeriBOlbAb0qyV7WyQ4DvPYrNkChlOYSy7Y3jnWgrF2kY6og0wvQJOl8xg?=
 =?iso-8859-1?Q?0cSa13YnIfcaI7uCvjK8oRogNMOZC2B4NAb4k2/ReGPxyowHwdJc+C9H3X?=
 =?iso-8859-1?Q?4DYtCewKMqXCgPKrX+RzgS6Uob7EGORRZbAeSClHd1QmdIAdfeFe72bGNH?=
 =?iso-8859-1?Q?kTKLTtBV0UJ1Csw7Aru5EGBMP8RcbqaOi30jP/6L+incsREYcB/YtlWJfk?=
 =?iso-8859-1?Q?qJ5e3LIFESM/WtW/Ih6SMf6K9/atJnbRM7dktoOtg+p3newE87+CpkWFuY?=
 =?iso-8859-1?Q?1g0CbKURzDJkMdGG7jDFcm6QpF4dCp9kQmvBWCDGr1ynMKvQwgHGeqjC/I?=
 =?iso-8859-1?Q?T4I3W0KP6tRJrW2Jiv4M9ZAYC3DHlZqcIQwnIcArRiNzLQaiXJM5JDTUaQ?=
 =?iso-8859-1?Q?uWYhoFKoedkwf6xkNNvtU7ufq5vBY3S6gi2Xx4WgCbiLLZuHQXMxOk5/M9?=
 =?iso-8859-1?Q?BurricrRwnTcciRZp4xOcq7i+3DbLHwdCTkwrH+19+ezZWNlpaIslPYeaa?=
 =?iso-8859-1?Q?XZIgUx+roajJnyRa1ROpqHtd+lzK1VLhTjEwofP7ItgdVCaKNw91srXBq7?=
 =?iso-8859-1?Q?w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Tm6zLSRAfS5+dHPRCAVdX/WoKPrOcCd0yWiZzdbd1cNVAJBh56pPBPt9Ps?=
 =?iso-8859-1?Q?VzBdKw6R/cCu0UfDaEKEKs+bL2tB49RabwwMKGc4sq1pNpajf6yXBcoQJm?=
 =?iso-8859-1?Q?1PxVCty7GphOez83sHSz3uYUiJcA/JYmLmOaZMYQ+0/6GgCijMWFmHqd/M?=
 =?iso-8859-1?Q?tcORjEI5wuEhTD7+T0s9ht4eWqoXa8qJvaDzlwnZ/0nPz4YhMB4IMTKJG+?=
 =?iso-8859-1?Q?2mXsLGB89Q3hS/qEXpanHLGjb8js2oynE3rNoLN1Ej77Tydd/jkQ5SbF9h?=
 =?iso-8859-1?Q?dbN0YkZ6OL5l9cN6LunMwBfWz+vYM0TGk7+ynUXb1ODiA0e0po0Mt61t7B?=
 =?iso-8859-1?Q?l53iePERRbUVAPLT/eXANYJ4YC6GUqCz6ypvRtIObaC1A0uhGELxIEZvMC?=
 =?iso-8859-1?Q?xGF6lR9jpkTbHPQc532ypDZF0KpFoGqn30TlB6TV2vvoKQwOHWZhbASVkw?=
 =?iso-8859-1?Q?RtijsfUwKBSUCmtYZc+a7OWYEuWeo80ceVF9HKDwf333sCHZiSKXMd2Mif?=
 =?iso-8859-1?Q?X5AgTXO8BhOU94nVhLjtQVNZfETIzU4ZJCB+AuC9uRqydr93aig+Cj2O/a?=
 =?iso-8859-1?Q?lhor0P7xr0QxrAW+9Qffpmo35hek//yyJMjSFpgnprKiTzx0o0uve6AYe4?=
 =?iso-8859-1?Q?Wz7UuDcKIh3/LAmtuzOcS6JXgy5GpR5QEQkQszMMVYsVhEeNho0LQWYTo3?=
 =?iso-8859-1?Q?VTgCx0PzGfyBHP1YjMTzq50nf61PRwj5ksPHGy9rtiLEwdf24Fm9LJfjHR?=
 =?iso-8859-1?Q?0M26qNp9fYq4MPkJfZbEY5i88jAjACv9Yi6mp0X7iy2MSeiGravOp/iHj1?=
 =?iso-8859-1?Q?QFH7Ct8/7vW8xoEH0m+nOzpEkuPvoxWbLOt9/2BQ2/obBErgz9p2YTCnn7?=
 =?iso-8859-1?Q?RV33R/fQM/lZIqL/krGXkExa/B+g70oAzJlLM7QdWeOGb2QnOylsp8KcuZ?=
 =?iso-8859-1?Q?JMNfmShq67DVxj3D4zyCh8KTHKogseJ1KDO8tXmkBk8Bv/cwoTerLm6jPx?=
 =?iso-8859-1?Q?cwnVLCl1iL5sySdTSWITQMKaB3PYBp/driWKGSucG035fxyjN3Aovfbh/A?=
 =?iso-8859-1?Q?ozOpRLov3ZXThzSFcDsMDzDfsV5ETmxSGzeF4TIEjURKZkrJt+dbodn+TD?=
 =?iso-8859-1?Q?88kIImuTjmFXgzFhelg3NRbzKrgwvaoR9p3Ae7wH5KTQN24a/9hAXEa/zQ?=
 =?iso-8859-1?Q?Uw3Icz4QWQtAHJ97oYXNHd7G+3Atf6CYAQ8WHLHXuWW/w33FE7IrNiV28A?=
 =?iso-8859-1?Q?+d8R/A+keasT/Ryd5yWeic4Sf03rrDnvkm9+28DYQLzhpP1ZeHMIbQoNXs?=
 =?iso-8859-1?Q?tnS1LIqiEYL1Iv88I3Ehns61zI6UG5bWgSM6GWseFz0yaeNq3UwcIQueoG?=
 =?iso-8859-1?Q?juJJ4JkQSfKUdbH2xC2nQvd1IiRc/KAHlqX3eO68jceV0GYIdFBLxk56iA?=
 =?iso-8859-1?Q?rrkLURezEHCBRo+IPGjtk2x6lgi2lJd4E5prhtcXi89zaZM/n8YP2SEjMP?=
 =?iso-8859-1?Q?+SxWiv7AIbZmCEUG1S4gL2qOjVunTPXRl8sWOWlDT0oAPgOJsKfsTrVMXO?=
 =?iso-8859-1?Q?A5DJJUL1AL7f06Ovuggo2isUKmRub70VlQZEey6uBprwR+ntelWm8cj+rN?=
 =?iso-8859-1?Q?j/dbwJ7Ks/FcgNx9F3OhKQ1SZVUlDOxDyfdBEyp7trWlcjD0MJOVWn5Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d876215d-da9a-45c9-db40-08ddc3d339a7
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 19:10:13.1360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iq0kXVa1s6FdkYz6t/jWRAYNimTNRBy0zVhvPJj+36DWeoGZ9MB6DYNXZcDC8MHdAbWcRcK++Y2EtlxpFPj/PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

On Tue, Jul 15, 2025 at 01:55:09PM +0300, Jouni Högander wrote:
> Add new module parameter enable_panel_replay. This can be used to
> enable/disable Panel Replay. 0=disabled, 1=enabled. -1=use per-chip default
> (default).
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_psr.c            | 5 ++++-
>  3 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 75316247ee8a..2aed110c5b09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -120,6 +120,9 @@ intel_display_param_named_unsafe(enable_psr, int, 0400,
>  	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
>  	"Default: -1 (use per-chip default)");
>  
> +intel_display_param_named_unsafe(enable_panel_replay, int, 0400,
> +	"Enable Panel Replay (0=disabled, 1=enabled). Default: -1 (use per-chip default)");
> +
>  intel_display_param_named(psr_safest_params, bool, 0400,
>  	"Replace PSR VBT parameters by the safest and not optimal ones. This "
>  	"is helpful to detect if PSR issues are related to bad values set in "
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> index 784e6bae8615..b01bc5700c52 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -46,6 +46,7 @@ struct drm_printer;
>  	param(bool, enable_dp_mst, true, 0600) \
>  	param(int, enable_fbc, -1, 0600) \
>  	param(int, enable_psr, -1, 0600) \
> +	param(int, enable_panel_replay, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
>  	param(bool, enable_psr2_sel_fetch, true, 0400) \
>  	param(int, enable_dmc_wl, -1, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ee1f9a240283..6bd3454bb00e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -259,7 +259,10 @@ static bool sel_update_global_enabled(struct intel_dp *intel_dp)
>  
>  static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
>  {
> -	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE) &&
> +		display->params.enable_panel_replay;
>  }
>  
>  static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
> -- 
> 2.43.0
> 
