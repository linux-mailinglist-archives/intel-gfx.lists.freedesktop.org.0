Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B7D8FF1BB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554C410E9F8;
	Thu,  6 Jun 2024 16:10:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/sJYeem";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE51710E9F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690227; x=1749226227;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=X0zOFFYe8fHpuuTQwZQC0WmnsNtuBD1kMOYKIxkyXoU=;
 b=Z/sJYeemJs4A1CL2GsfPr4OoFunpDRuK6W9bjQCB5RWJiqalXaLaYy5c
 H/CQb7MApVZe0ZImKaWQ4vqY9IFkupDisUdnW2smQhAmDwdnoRaboWbzv
 i5WtezHM+z2VGoR17nuOggtjlLbSD/G/yyZAmLpvvajOTD6MllcYPkb0Q
 5s3Uzv4k/YVIRi0+gkJLbZMN1v77vnHy+Qux+J6XpLerpx0ttiB/DY3tJ
 +5U65U3Y8R/9bRvYDAb4kNAXGqYTDzcKR5e+CiJPnjEWrzN5BF1TSEQ7j
 1LIc509ZxAJkqtOcAlAX+ukV50R9ylScjtVhGx+gMy2A+9Z8XHGo4IL72 Q==;
X-CSE-ConnectionGUID: C+qihdWwSe2vo6rUNDdJBw==
X-CSE-MsgGUID: pDM7hIOAROS3LX9l4Xv9Cg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525047"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14525047"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:10:27 -0700
X-CSE-ConnectionGUID: 7igZGffyQcOmFG63n0ZNPQ==
X-CSE-MsgGUID: IA1pfr4SSHSrcVZ4eqttBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38695629"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:10:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:10:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqxrQVpI1WJC/DFmL/CKhCzfNJmzletresfyvyjvERBg9LnIdesFAhvvUmIut7QKb2Tx+ZOVtTY0Zpc0t5DTCgnSZbhSLTxnHgdd9JGHbjVirKaOHYnh6zsKIrxSXGQre+Ytcjgpw531rPIYU6H/s/NAQR0JuiA14WLVLYV/Uu+kZWesO0gbDVH8PdZGdHcEtfz8naAd4AOxaxwL3ELZzkDofdyat9D/RA7Oyac2wORTgkzd9GDQtnjlZjUhIQfuWXGwDG9jhZsS2RAObZ09KyKTQtU3A2jiElAAWXWrLVggMPPnML6aLOFKT0r52lXUrDRzyG+dmk62lMBg+f+4ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PBNzUM6O0UEQErfAbsoz9aSSOh7nJTzMhLfZG/nYd5Y=;
 b=oXVVEHSbc71rFoTsVRkMZvYdB2lARwIgGPd2nC27I9XjPqo7N7iDjAE+VH7EGiy+iW1I2tS+W48YIkIelssu2nVSJWfAPP6FkdzwN7zYac070PeVi0wPwqD/X7lB+utq+0fUEkfjIn/+BHD+E/bM0+Ci7voNwUvwfxHkILcmGMk+yNZsn3wDO5mzR68Rv5jCHZw2pdAzq6cBI/r2npxAwNFIT6EoL5FCGxt25Cr/2x8HwIL25cG/4v1Eimldg+VAqvrpP66QeNpe9LXvRj2JOcPrmml0dHc9dJE/A6dzxuUFtayXjFjf6T8+KQrZxf85QoqboB8lC6BVS6U5hYJhDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:10:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:10:24 +0000
Date: Thu, 6 Jun 2024 12:10:21 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 48/65] drm/i915: pass dev_priv explicitly to _DSPBOFFSET
Message-ID: <ZmHfbfR5U7zb-Yup@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <8db09895ce17ce120da163d52bf78587da4d9359.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8db09895ce17ce120da163d52bf78587da4d9359.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::49) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: b2c37a20-df27-46cd-46ed-08dc86432c3e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?akpyZ7HzVf25kWZSUjYaehWI8pNQjS5ZwYcojjODcGfB/7Y34hLqZx+SEOGS?=
 =?us-ascii?Q?nUvwfrKDRPZsErJKu7CWvYnhQTzPPX3Mqkbo4fNJlNEtG4iOYSdZ5bRX2qs1?=
 =?us-ascii?Q?+/+pPD0uJNBgrkRxXxh1p9ZSXyoVx+LSLu6bhr0aymt5UQG3yoFdYDjk7lyB?=
 =?us-ascii?Q?n6XX/ilNJ4Q5rhAO/e54p8eGpZXKxg5S8gIXdr7KnoYEfW8ipguvpJJ6CNkE?=
 =?us-ascii?Q?9NxDySA3KiQX1TUU8DAxvHs7ZVxIqROdg4rOjB8LSKBMjHsJv3Uwc+2nmBdA?=
 =?us-ascii?Q?53Z7fQ+5+k0E79Sqp2Cs9Ia4Z3bH5XIYiodlbqXI95Kp6qGPbxrn0NyIIr5L?=
 =?us-ascii?Q?YQSuSdxiWIFDKd0lcul7wT7zZL0oDK2udHOi/n2EVxEKdzb4/9rwu1ia1kg6?=
 =?us-ascii?Q?EYPfFDdd5bHhmbkHVMr6qqlQtVE+NQQaYodDIGBcuXk5Iw45rw3suGgs457k?=
 =?us-ascii?Q?mFJptGQ6LKo6i8zpqLa+w58tUTEFmeprpQ4qGgOfxcXZyIAQu+qvHqOKGXFf?=
 =?us-ascii?Q?b4yHFXC5H7TqmWgfQD8E6cSE13Fmp/nI//5w8tKyXIEbf5rykcdk7sYLdYT8?=
 =?us-ascii?Q?MIx/aDpA+zb6AQs/43dnP6yMpJbBmY0t5cVEqHta5jeuXkMMBIQI0ekK2wpi?=
 =?us-ascii?Q?VbvMGv/fw/gRryiTtILFXI99n49Jgswu6FIOKVmo1jKAmyhyH30/5DHh2+6Y?=
 =?us-ascii?Q?HgZ4cqJjTClrLDUJxM4jmOYkEAD3YeEXhm3g1mRsqJVFx20tigqVxnqHjdTA?=
 =?us-ascii?Q?oMm2ZSE0w0eo+6OaAfv0kNweQP6S09XdR01uXBFaIE4lUzfpcApLFRlTZQFn?=
 =?us-ascii?Q?TqbyiM2bkZ6KuGMm5i6CZ2FM7Gidlf6BrAfUrgUJSVjkA1OZYjIjCQEpflCo?=
 =?us-ascii?Q?rHOSJWs+g3V7npArcfuKeCS0hmysaxRRYEpRAH3Bl6MAoF0Ccr4kaNNEZeFT?=
 =?us-ascii?Q?s92U6ktBcgZ2yuSxEJNfNog8XCIytDd8wL8wQka2LYamVy9kmBOWUggn8L35?=
 =?us-ascii?Q?Cy3yWnNKam59L3dOVI/ihJE3I5ZRz4KHqCkPbtV0VfNorvULbC8XJme+XaVu?=
 =?us-ascii?Q?J7tzuYfMmDukCPaCiINB2tbrvzZfDx0CMLvKPAzO8n31p14Q1gykWy87umTR?=
 =?us-ascii?Q?gMCzRo97rVyTLftPxlJQP7GbUI4330XzVXNzQhjw2hdMIS0FLdClx55UpNmi?=
 =?us-ascii?Q?LEavSiMRWGRdNv6qLYcAqq6hfqL1RuSInJ63IEJto4zxnMCOTRE6l1ZLCmHJ?=
 =?us-ascii?Q?QkBoOPc7JPiPVLhfaBHhXZ/br5AxQYAqtv8xFv7ccMuyAXfb2uR1r2ilUkp0?=
 =?us-ascii?Q?gzXTRAM4gWfOHf3j/cGjaCun?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eAfr3V+N5NO9mWH8gRZnq/FLF8fGrFxmKMbTcsPTqckrdErWcag1ldTbwIKx?=
 =?us-ascii?Q?wlS+9iS4+rURpqzvyIMNADJm72t+9HD7l6gaOe162wtvkh8CPrZ5iNsps8sc?=
 =?us-ascii?Q?P12hpmelJPR947r7jXHmdYdMuKIhZp5vofi6e22YfxDq83oAbmLfypHY+leu?=
 =?us-ascii?Q?cp5x/e74ErpUO7907EvHQp+kwtObc2nTo2EeNszs93IMTr07XmjX9udDhJEL?=
 =?us-ascii?Q?Gq4kxlUyEWJSLYs6M22qPoPH708O/Q+2+FyV4246r2vgptzb7G26uSe+bZ+i?=
 =?us-ascii?Q?hKoKcEUgCy97AAke0YjzTS33jqmAHPOG8svc9br47bLa9jBzWo5Leblv3Jsx?=
 =?us-ascii?Q?W8BiLBuV9873ntw5HQHmsBAb6O4GQHo0AJ9oskzxD703/z5CarUgz35L4E9z?=
 =?us-ascii?Q?htUQP+RDLrhQFzRFYm7MXVf5R7B3PqQN8cBWqmWH3QlrWadfx+TXHx6edtTg?=
 =?us-ascii?Q?+ojV3F3u2MUA+VYHyP9uEzEUCxQ9/g5sal5rheE9Pf6EaJYpMr4IwCXrxO4r?=
 =?us-ascii?Q?aMuNtNOARMQ3GjKn7sbTze0msMRSFdD2q+xR7/dGtApJtYLEOzZ/xYYug3xT?=
 =?us-ascii?Q?zeNawXB+EIcj63y6zQunStIZUlu93hcHHtaHPLGRM99aUpLkbFknvwJk5d6w?=
 =?us-ascii?Q?0vIeTplbdIr2wodKH1cE2lJUiQtAW0VPScqzG/nmoC0QDoGCF3DFEKHWg7+u?=
 =?us-ascii?Q?YwDkLZMti5Qtbx8riwfeS5+q+o41RWKwAL/AXj+jlEvwmzpE22p+OPWNxNxs?=
 =?us-ascii?Q?blgdquUZuaX983Ii47aFhnI/YJONUcRLscS3HPyZn/yAAUSXFOR+99PhjXuJ?=
 =?us-ascii?Q?5NYf9Pu/xasImdPZdoZcl/n/78XWGrhK/AXYoGwOgfnyMckkhdws1wxDHadd?=
 =?us-ascii?Q?mz93sD0vOySSdnjEjSq8zmS+kBLAA2Zud5/vuOTFzPZXDNY3j+hD7kP1TUmc?=
 =?us-ascii?Q?sT+pUngNUtbpAW1uofU1Iw7OkjYGZVPWv4m+scuNTu7Hxt7wVyRSdJcJ6Rlv?=
 =?us-ascii?Q?jgee5FvqM94yULiH6I0pnzQ6Zbgcl+WZjADM9n5B/sKXQpSKhrPddw4DrCKP?=
 =?us-ascii?Q?cCq9c4swLCBHO08EWLbBG6DH04mE407/8kspUPk57A4maKUhgvb2RTQel3F4?=
 =?us-ascii?Q?6i+Xj260WaXhHDpRHOdA/b82rt6kxILdQ5p0YvQvn/mfEX8VFCqThm4ltJtZ?=
 =?us-ascii?Q?vKNxG0yu0v4KMslBpbxYMcR5bbmNqm2fJPVU2ptc38t5Nknnn8SYE+TM1bsd?=
 =?us-ascii?Q?K7/4sXrCiUVDqWK0D1v2mrYbBWk1odhc4088nkBYTYXcrHXA1Im02QYwxJgO?=
 =?us-ascii?Q?89NPE9kQGla8V12CapvQBc3IK3y6hZtZElOZFrawkGuDueGQj65dDF/2dA15?=
 =?us-ascii?Q?wMkWJkTrxsdndhrbuR0A5M8nrazrKKYVaKOYVWBBEAAVNYSokd6mJ7ZXD65w?=
 =?us-ascii?Q?4bbtOR6RWHf2hX9fPRqz8QyFa1gMtORdtYsbUpZ6Ku63TY1u4w2gsaJj971v?=
 =?us-ascii?Q?ywLBVVV22IdbkX37h/63f5blUFL/mldhuqGKUL/ZgC6mfAhZPNHYY+dW4/i/?=
 =?us-ascii?Q?F+dDGu4tDoxYepKeMA+sMiqhc5dzN5dB6AWEzzlI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c37a20-df27-46cd-46ed-08dc86432c3e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:10:24.4732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pUTrBTucLo6lDTbTbcTnk+IMhdvA5xlpMgIBjFjjhJok839U6t55iEEboSzRrFKbkUjcWOEeYAAbKw0n3pHknQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:26:06PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBOFFSET register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7c4251f62411..03c7b55e1bd3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2315,7 +2315,7 @@
>  #define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
>  #define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
>  #define _DSPBTILEOFF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
> -#define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
> +#define _DSPBOFFSET(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
>  
>  /* ICL DSI 0 and 1 */
> -- 
> 2.39.2
> 
