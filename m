Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA80CA5D0FB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 21:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6218210E696;
	Tue, 11 Mar 2025 20:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wd8OiHAn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5485410E696;
 Tue, 11 Mar 2025 20:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741726015; x=1773262015;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0E6naaSgEUPPSJwTHLGbh2mvaSPtD1APW+atBw5p/dw=;
 b=Wd8OiHAn4Tn5tD9yEtoxmZoFht9Lhu19x/bicP5aE66ZzDHoeL5x3tOM
 I6k74cDndXjCRhFtyWMZlT6IecjVsGa4kgeBUy3vixTt4OHz2Cym+RNv7
 irWJrMMqDaMBcEZMVRHALF7vIslfAAQ1YwTpZ5dXAmP9LbuSOm/HpecJV
 kT9+w4cCHf4hpDkK/Zv55PALFmBq/k4CbJElsbP9SyeZOQs3Gy5sR5HUz
 oZm1ZJB4Jl5SlXsR2XC1BLJbusj3dAxH+QWs7t4Nclnpv6Hy7xAnDXgaa
 ZxZKE21ZP/h0s8XPHEC/m50ijSPa5I44Q3ohIR96IwMDYKNHtLsBXuwQ/ w==;
X-CSE-ConnectionGUID: v0tbv1/HS96PcVEPzieWdQ==
X-CSE-MsgGUID: 6Rgy2IUHSvuDy4k1EHTjSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42914616"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42914616"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:46:55 -0700
X-CSE-ConnectionGUID: zsezUx3XS1S+kXhkJIwlSg==
X-CSE-MsgGUID: t1y9pLcOSyioR070H00xGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="151385943"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:46:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 13:46:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 13:46:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 13:46:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lbNgNPW6tz4ExC/G/6q1FjDFx0MOX8VTSZ4v3Vwx8nOvqV6TMJj3xwX58c+dqukk5QlSN+919becaY2xQgZlwHogcj8SRRseDZthzOPAm1YnblSeMuf//BclNm0INLHsKAPPnTAvmTpMKtQuUOFbk7evQTAWEXBfqYblBGlkgMGanMtC0Vo1Dha91DP2OJs7AHmxaFAeTwoprdoxvf5kIPmOjT4na/hEa/wr/J/L05SJp1vTMk/SFIMhJcJEC33sx585pelp4vpKSBE84QUYQEWLiJWRBLvX5xuxWHYYOPT6QTHsMmOFj40G6aDw/tcpqqBw1ofapRPyT78H7bSnpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YRicolt+P4pZmFZ7WbVJ0teV6KSxjkSkmwz9SFDTSvk=;
 b=eBn8iQchdVPVBbP3WL+d+o0b/05zqhdILf8Wfz184TWOMUanBAoPGHTFZF0jnYP6lhdRNu1vYgGCI7FnAU3Xp8C/ReHKaUyGLnte9x5swDoPbqMAqAynA+QVvexiMPCYAolKffrabrKQeAkQkUUkclyim4vlpjRUn/t6g1h8fnKtaSmiv9Jy1TcPXkwx8QBBPPdqa9hkieeON/2qN+mckCsVYdq1OjGgAQm0BZTTpnjhKZEVALBnzB7+yNFjSkWV7Mt7Q4Ew1KAOOVFZ2CVdaPG5OaC7JhaPNgCVDghVXOT4Amb368zwQaqb2iYbJNxDelpu+91hRPE/o/QcYoUvrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 20:46:20 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 20:46:19 +0000
Date: Tue, 11 Mar 2025 16:46:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 6/6] drm/xe/compat: remove intel_runtime_pm.h
Message-ID: <Z9ChGMufgAIFjwHt@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <d86c76bd309c30f287d5baf36513796f39bdf0e5.1741694400.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d86c76bd309c30f287d5baf36513796f39bdf0e5.1741694400.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0098.namprd04.prod.outlook.com
 (2603:10b6:303:83::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA2PR11MB4970:EE_
X-MS-Office365-Filtering-Correlation-Id: 94c1ccfc-77f7-4c8a-9cfe-08dd60ddc6d3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?01T+eYKVwLaZ2CnU+oCGlcCps6/fJtc/YncSXDaeIyc6jh3f0PBkTEsD88?=
 =?iso-8859-1?Q?9Wd/BXZr+SKuYkdMEbila866vjH9PF9Z/h1FngnArPY5KRCWOFO78vPMuD?=
 =?iso-8859-1?Q?0oqtNmC4mn7F5A9/zV6tajNKVw1hvg/xempuM3z8kouh4ZCoo5FHtinvBR?=
 =?iso-8859-1?Q?ICUw5fqLaqG6vJ5EKlvPy0WbBpopXN6e5hyw4r9EdSzBQYOGnlOqPBJv0Y?=
 =?iso-8859-1?Q?yT4CWEUGamQ/4jAjjuIL45m0HQ/Uh9gmGH95uDMG8Kx3awFQ8b6ctxmOpV?=
 =?iso-8859-1?Q?wdtTTe0pSXIw5ACjLTDxIkQn+MKwGq37L4O9zLEYrZM0k9nD6aSEGpMHMD?=
 =?iso-8859-1?Q?uOKL8nBBrbawp/+E0Vn26CKp2lz6U4Qv/TxfBPNKk8zUtez52AVuxA+P1D?=
 =?iso-8859-1?Q?CxCWvLVfzANPhNQjHg8HF3vvA4WGGTefDPdNUztlSPj+4ip3VTh/9WW/u6?=
 =?iso-8859-1?Q?c5Bh2brtDsmOfceCAvp8OVWRLMNr3Y2KKrZaobFPTEdhtFc4wq+lz1y3pC?=
 =?iso-8859-1?Q?/hi0aOUmuiTa8LzWRZEFMSEnEtqh1Kp1BEnSwSgHOGpqpaO0Rt8viIa0vZ?=
 =?iso-8859-1?Q?1+DOF3zpA2PnGDBxbPU0+Cnpa9agelmCpF9pxSQxtXxBpIeFyaCFVkgBLu?=
 =?iso-8859-1?Q?RmlJ+jXWYVHOlOXIkm57yce7ARnTKujfeZwULhQFMFwvuORC2JWcZo8vaD?=
 =?iso-8859-1?Q?9be/Xyy/bY5EDUOKcq1dxu0Lz+OMc/waaYsgz58rzkTp1VbdTPZGMAc8f9?=
 =?iso-8859-1?Q?8Lx+MPsTjlKK4Zmre6TjsBEOFvX//NiywMWyd8xrGuR180TV8cz0IZKU4a?=
 =?iso-8859-1?Q?fKmqftyjyn71zZ5b9YAshspx8PmZPB7qKSx2T6L/f/264QTHHw9IIMka6e?=
 =?iso-8859-1?Q?MkFUhhORR/z0Lcl6aEjs2l6IBoKiyl/FFClfxv9m6R3WGo+wYyX5F3oq8O?=
 =?iso-8859-1?Q?ho0VdarNQrE9w8OKvuisnOONL9xOBlFvBPCfZ0FO8skjfv2SFU57w9MDSG?=
 =?iso-8859-1?Q?LH3UbuYU4Fmvfc5yi6OLikmKNE30zAIb8YOymwWeWgvj6b7ZTzkNpQQO5v?=
 =?iso-8859-1?Q?DleCZS+/xdaiOXjfXmJ1FPflpC0Pnlj3NtFeUVT0ZuB52WesykP6IPAnQx?=
 =?iso-8859-1?Q?+n6TEt2LX5NW6E+uidkcgMyWT7mHZ4IBuke98K/wRAwnXMlR5kP+N33q0Q?=
 =?iso-8859-1?Q?fNljtYA5BfqzN9hyu/Tq9o/nXiMkoLSQaiVIcAgrop0lPl1fjFXWNkRzoK?=
 =?iso-8859-1?Q?f/3vwlEbf0dicQbV4Y29IdViVIYj7wkHSzoVdA4VWrOYYAliF26G6nDsex?=
 =?iso-8859-1?Q?uZugPZFRsRLQI52alx8/Rt2bpHYf80uOh6B00Gwc4wAjxng7p2gZLxO8wA?=
 =?iso-8859-1?Q?jBej5Ppqf8A3WvrxPIA7rj19huXEf6h7+XQN0wQgR+qSKyBK5We9FwLV2o?=
 =?iso-8859-1?Q?1AI7HCyTE0ZyaFeF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?dUUqeZ0TH4vcQhODAaaJaFbQ9gXteEoBpEZ02W2npYCEU8akqUrM5DEXlM?=
 =?iso-8859-1?Q?YG0hYbJ1Vqf9rJDOuarxICTGOJMGydRGevezxQszEPm38cZh5fk9QtBeZc?=
 =?iso-8859-1?Q?5Rf1qyWhsCkN8uIH/yiEDqaCufXFp12K7izPspN+vTvLzKv+fMNtqE6FVg?=
 =?iso-8859-1?Q?eraNP7TNAGkCxVG3FWjID0nn1sD8fNMYcZk+aKiPeIkFeaIMy6N30hLNWk?=
 =?iso-8859-1?Q?GuzRlqkvYLC0HVMG+GrVv6AiGYH3ZWAd7p1ygf5jqr7VNcPzCj+rKSXhZG?=
 =?iso-8859-1?Q?pPgeotU+dLtwFNS4vDPsjOqwx1BTK4JkTLb2u+QkmxpWyQ63NF8jAwOk77?=
 =?iso-8859-1?Q?uZePUbYdYjmPVxnTpKFsdDi/ZeenZQGmFIxA2aJZuf6G5asudREir1c/ZA?=
 =?iso-8859-1?Q?DT++MKvtzuYI4K9zhUgXZZ1tcHADi1ikhwEh+DrifDdMzE8D6JAQT8eaxA?=
 =?iso-8859-1?Q?HbhDJuqt0IxTD9aTRrs4jysTRsGDdz4RrUPms4nVudzAwuw3Z9qURkp199?=
 =?iso-8859-1?Q?3ZRQd9Q4D5l4si8GopZM6Pb7c3W9mH+gy00qIuk4qMuCesurlDKudq6qTP?=
 =?iso-8859-1?Q?UKB9TdZyTc1H97diwZftGTvXxuCzkIBwW0aGdm5d2UCAT3iDdcmE1SUMZ4?=
 =?iso-8859-1?Q?357D+cn3a4jIqdZtUPUOGHhOyuIcI2zVZ7fVYOSHAbT9/XdiYYvBC9vrQc?=
 =?iso-8859-1?Q?rM643aAzdrraJpbEXOLQzYoNk5nmhjHByKzNSAURTZVXm8ffGeZbblpIHf?=
 =?iso-8859-1?Q?HN0XFbEeEl37+XwNsoQsnGCx9ewsVQVQoeNCtAaze/0QDaVw3ylx6GFilN?=
 =?iso-8859-1?Q?SR5ziQ2kjNPLC4pGHNP6grsXOjxekk94IaoaxltejMNWgsrd/O6jR8gG6Z?=
 =?iso-8859-1?Q?jVe+5MHzsQGJnVSK2NHbHX89sGf1ZpTnJgrfRLwrwq4Y1AOX3qrWHO5LFx?=
 =?iso-8859-1?Q?Bn3sNBlMsqdx8LYlHQmXV949XLfivB2n5q89r7ffN+20i4JlfrMxEIfBtx?=
 =?iso-8859-1?Q?814AmLUHQmZfHr9gjAZdDHGns6YZJoDIeayP8Wwb0VtwotU6s+UiQc2miK?=
 =?iso-8859-1?Q?8Ru1BunD+K9MvD20XXUWjd12+RN3V4fMlPugEC7ReiKS0EP+U354a3ADUk?=
 =?iso-8859-1?Q?Zc6ntOv1f0ze5VIoJik1CS3Z4qJ85zRM/xq4mHdjMexL3JYw0fl3ynaUsm?=
 =?iso-8859-1?Q?Fs092a9/qOnJM2eytI/jxHJg2qJtBT619gVTTJdHMhGW0Cg5wz/FpWzvJK?=
 =?iso-8859-1?Q?iyXbGoY568kIQzDKhTJ3ffNsjDJcpfVOibGxgy6kji5dTqiK0l1Tp7FOli?=
 =?iso-8859-1?Q?hRPnE+yNXIa7WBtu3mrNe2KuY+ns6hse/cXE5cZtB30ol0LTCO0drG4Fzn?=
 =?iso-8859-1?Q?5FJpqMCEJ8o6ZIacCPMvdHsOFXz549X8ZYQVWchrtzEf+YttoDsL0X9hbf?=
 =?iso-8859-1?Q?ud2NEwmz9l8aQ+YUFPP4iCWABOLTJkLhetz2O8ARW/nn1S6/3aANbVP4l3?=
 =?iso-8859-1?Q?/9WcWRZcYiodUaLEuIBIzq3KoSywgta65F1GmA0NyeTjkVBKrmfOFoK8bA?=
 =?iso-8859-1?Q?yLeNeMfUKfgUs9qzJKh/oamL7YSNKxpbsTAzXn208atLrW3At1lL96WLaD?=
 =?iso-8859-1?Q?Jl1exfzqPN9hgHAiu+kW308kI/RNqeVrkuTCEhK8DqCjxOB9sNXNIhmg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c1ccfc-77f7-4c8a-9cfe-08dd60ddc6d3
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 20:46:19.8577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEotolOV1lskYkhAZ+WipKB18UgTqPavaIEyY4oq1N3AXm1w3Bu1cCHZ18ASQFGvkRCcwlZYj6D7NdC2zpxCfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
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

On Tue, Mar 11, 2025 at 02:05:40PM +0200, Jani Nikula wrote:
> Now that all display code has been converted to display specific runtime
> PM interfaces, there's no need for the compat header anymore.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 -
>  .../xe/compat-i915-headers/intel_runtime_pm.h | 76 -------------------
>  2 files changed, 77 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index dfec5108d2c3..f89bd5e3520d 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -13,7 +13,6 @@
>  #include <drm/drm_drv.h>
>  
>  #include "i915_utils.h"
> -#include "intel_runtime_pm.h"
>  #include "xe_device.h" /* for xe_device_has_flat_ccs() */
>  #include "xe_device_types.h"
>  
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> deleted file mode 100644
> index 274042bff1be..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> +++ /dev/null
> @@ -1,76 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#ifndef __INTEL_RUNTIME_PM_H__
> -#define __INTEL_RUNTIME_PM_H__
> -
> -#include "intel_wakeref.h"
> -#include "xe_device_types.h"
> -#include "xe_pm.h"
> -
> -#define intel_runtime_pm xe_runtime_pm
> -
> -static inline void disable_rpm_wakeref_asserts(void *rpm)
> -{
> -}
> -
> -static inline void enable_rpm_wakeref_asserts(void *rpm)
> -{
> -}
> -
> -static inline bool
> -intel_runtime_pm_suspended(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	return pm_runtime_suspended(xe->drm.dev);
> -}
> -
> -static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF : NULL;
> -}
> -
> -static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : NULL;
> -}
> -
> -static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	xe_pm_runtime_get_noresume(xe);
> -
> -	return INTEL_WAKEREF_DEF;
> -}
> -
> -static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	xe_pm_runtime_put(xe);
> -}
> -
> -static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
> -{
> -	if (wakeref)
> -		intel_runtime_pm_put_unchecked(pm);
> -}
> -
> -#define intel_runtime_pm_get_raw intel_runtime_pm_get
> -#define intel_runtime_pm_put_raw intel_runtime_pm_put
> -#define assert_rpm_wakelock_held(x) do { } while (0)
> -#define assert_rpm_raw_wakeref_held(x) do { } while (0)
> -
> -#define with_intel_runtime_pm(rpm, wf) \
> -	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
> -	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
> -
> -#endif
> -- 
> 2.39.5
> 
