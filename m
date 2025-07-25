Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E536B120AB
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 17:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DEF310E452;
	Fri, 25 Jul 2025 15:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/HryBx/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959A310E452
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jul 2025 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753456368; x=1784992368;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=negxGzPZ1Aozt3M6zwwsdwhbKq+4TtKDfsIijYijfGI=;
 b=D/HryBx/A+4o+kdkNTUvoSoPd+yXy6k7EV2YNZra09k/+RQIEG6YrOZI
 REAoMNvItMtV9VRNuMZpeO9Xk2+h/wpqwUX/PEhtb9rKNoEU8b6cxRghL
 JUiLIwn5gcSMWoJY8syJN7GRMvlWMnmAQ0WB56+P3CIMiCp+zzeN99JwR
 TN0jGJQ45jIoBFOOa8E2QqsV78b2TG+PasovmyW5i7YMDRs+0lNUK0hRD
 /KRQUAKzsLneTHDk+mAQHh7uR9Qiqh6guvqx/cPCXr+uJGsJJhqUocQYR
 Mvziby6r5ktgj4ju+yF0xIV0QgE36o0lhy5jVbpnKyZU/Hxf6LisKWB8u g==;
X-CSE-ConnectionGUID: v5tB3JImQmW96qoFMEhopg==
X-CSE-MsgGUID: I86Xd4spRGePihX9mzfvug==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="55732391"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55732391"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 08:12:48 -0700
X-CSE-ConnectionGUID: Ep1kWM/fSD2moe+2gkzlng==
X-CSE-MsgGUID: 1bQpk/woSPm/SnMTUqvb4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="165493872"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 08:12:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 08:12:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 08:12:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 08:12:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qHabOVCdPPj18VWHPPfCxLXulkU6LwUis206MWPCwnztOwpsU87ESeBD1yVneAIIvK6apm0befv0WzAJlPf2n+KX+wjKCeTJDc2TgqgNw/38gZr1LYIXv02gDPYuzsw/9GMldJRVYUUQ9lX4Us3iCWYqwKsNsD010j+Hid76CVU6QT6L1bZoU9v6xwF0dhT6qToaJabtzMd9vfF8QJQrWNyFf9jGZILpRLm4wtQtwjNQR2gBNDN3b8wZn3DSKpepDOouRBPkudMRJRiTGWUVg5ir96CQVngripRE1nlPoV8UL/5JnhGEW5g5oD5K0jVgog2nqCljCsWAO20s8vceLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WVwWFtTskTOGeaDAGC7EBXdkIU/Eqmnky8gtLYcRA94=;
 b=KzXxIHHuvU+YO63Fs7IkqYcbbjar5iFIfKJ55Ac5NfPUjgQeD/wojRzB9JjRKwjO+sBFtPSw5S0qK6zLWFNyGHdFoTysCBZppr3lZWELTYPJOHFnHOWlF3twwhXZceAbHiJraWCEzJmbpOxVowVjltRZQYg5IxBFyMojuL8tmQYFChczfom6taK/U1PDYM1xyAxnr33g1F7rNKnk73xpCwGxn/27p0aIDD80vOXMunBwwItn2w9hA1dG6K5iUJ/q5w6qxLypboBGjGV6vhupoZB58B9tqoeFiyMPcbgBnbvzyQUbjwtLAQJ/8DfmwJjU76N0DZXeLt7Di7hQAAwBnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6897.namprd11.prod.outlook.com (2603:10b6:806:2a5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 25 Jul
 2025 15:12:16 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8964.021; Fri, 25 Jul 2025
 15:12:16 +0000
Date: Fri, 25 Jul 2025 12:12:03 -0300
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Remove unused declarations of intel_io_*
Message-ID: <kwcvf7da4afbbaxgvswmig3krtvni2cj2i2av73gf5ohrnwmih@v6xsuxph2dxs>
References: <20250717-drop-unused-intel_io-declarations-v1-1-bdea2c749571@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250717-drop-unused-intel_io-declarations-v1-1-bdea2c749571@intel.com>
X-ClientProxiedBy: SJ0PR05CA0109.namprd05.prod.outlook.com
 (2603:10b6:a03:334::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6897:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c0c6932-c1b5-4ed9-0891-08ddcb8da431
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?gezZZ/JF/q4ZaF0XtBoiwXfQghGHKoCR2Rm+30fpJNKoy5v33/NkNddpGx?=
 =?iso-8859-1?Q?gozesS3vxcMC8AgWEnchkj7RdWn7b152ehGzNm9s+A6Hoti3OVJsMIu0qS?=
 =?iso-8859-1?Q?ts8MHdpdRI1Iml7EEPvWtFcinHVnzaZWKMPyaf6z0lyI6CkmeCfAJkvUKE?=
 =?iso-8859-1?Q?Ke6mdXXbZr/PN7nnTwD/B2atYbzpkeSXhdnzfs1QwRG+6VtG+B7xNcry+O?=
 =?iso-8859-1?Q?iHzwm4NJOFYnS4K7Oz0KWt/e48LRwOpSm7BAJDqT9GwPpLFA57wrwk2uAX?=
 =?iso-8859-1?Q?Nc9DaXilO9k3+mro5i2kJiid6gI7FC/vmLbyZhQJtG6Rzpct1TZxjiVngn?=
 =?iso-8859-1?Q?Bj5OwGwaMf5uqE0ezFOt8RX6CKLK11YYXrozYV2FLOsYEtHeRJOtSJulAu?=
 =?iso-8859-1?Q?lPca822JytZnJajGpfefKl8FmLQeK4/7EI0fBSyj/0cbbfrNqjRSoeH6A3?=
 =?iso-8859-1?Q?JtsUFfrZhjfhLSF8tMLfhy12vBI3oWmLRqZnuk1FpWEEXuB4ryZj1MTexM?=
 =?iso-8859-1?Q?kl542ymTPwNdh+A6o/IYsGKo0Wf/Un2+9+esxMUcT87PutKIoq+u6mx1HF?=
 =?iso-8859-1?Q?XLXOyOWtXlgvJEbWjZ/qXGk7XaVvJbzljDbP6+nsPMgH1qQdBCI3w8oD8S?=
 =?iso-8859-1?Q?X67Qfv1prGwtVCcX+pQKL4SmL+5rk5dVGkGRcyXbJvdZ2k91AbVgWz99BU?=
 =?iso-8859-1?Q?F6W14O8y+YTc0810wtyY9HrHhS+Q/4BsYKUr0qOgKtLrxvAULl8SEm94AN?=
 =?iso-8859-1?Q?KGulea54pcDrGkAeNoIJEzcdZFiBe/jzg9IPYWN6x1Bu+Pn7aLH3QWhOGa?=
 =?iso-8859-1?Q?9cou6V92TejlFAWyHkmtKBLnNMuhWAk7MczU+QlwqUOe/o08KyNSx8AdXw?=
 =?iso-8859-1?Q?j9CusryBxvFPxesU+CQqxTmdpASzzd1oTT/RL+ooNk7Bp2a6ek0l53Q9Ti?=
 =?iso-8859-1?Q?UVp6YMZ+XCwhPQZHW1U+oyQqgDpr6+3n6DzpZyPOK+8YDFSV6weS8VD+dZ?=
 =?iso-8859-1?Q?C+qla8qaeiRItEFL/7C5+AeVPgr0kK+fR7CMgHCK8ULMSaYWh31YUD142v?=
 =?iso-8859-1?Q?PyDfQyjgRlnxVUplG+C9RJCt+NJ2u2tVAd1BdzqQaUf1Y5Md0jEv+y8n5E?=
 =?iso-8859-1?Q?kv3Ap3kj4zFRC+RUBjj5+aFbJBYHFvJSbbc3AXtDxM/0on0R9duGVj+yZj?=
 =?iso-8859-1?Q?yt4pN0tS/rnIOhL1FNyA6Y0AFQk4dxjVlHbTiVkqqxJUV8+TaXcQd8fva+?=
 =?iso-8859-1?Q?NsdHTE3XPumO+snJqBEgissdaJT1LLZ0XEEmaqfavMeWdPV5mxyQU/Mn4S?=
 =?iso-8859-1?Q?dTRuUSxUM3Z40A1rHYoDArJqTMbQJfxJr37l4QNM5oBGj0hP1a/Cr9LkRs?=
 =?iso-8859-1?Q?5vG35RZ8H8TgKQoQEIC034NGGylHbnoxP+7CsndipLG5w09A7yRI5uMCPc?=
 =?iso-8859-1?Q?cZSyR+FD94tgYBF2PneIpMF575Gqb/eIyRtqytcbX5bkRjUU/J52llP4H+?=
 =?iso-8859-1?Q?o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pnff3ag7+wVc9fJxz7Id5vNi96S4Stf/gHA5OHhcxZUXScA8PKlAe7oD6W?=
 =?iso-8859-1?Q?bZZHOg7T/roqUjod2h7aBVBiQf2jZfkyXdP0GH/EAwkWqxM6tJ3cMO8HMR?=
 =?iso-8859-1?Q?Oy3+Bt+cBbAu4vkDZqoEquwTcConiGet67S06ZqSH2e/f5eSwp5AKI04qM?=
 =?iso-8859-1?Q?Y5Rc/daqXL8xNxO85QBNiCcWG3A7VzQ6yIs/NMz9BS/G0IYDX+JK2IMkp5?=
 =?iso-8859-1?Q?9pzU/FwhHs+q1LRr9P0h0W6N14mq4r8m4hXRF7kJJiQ/HK1+xYsusMV1Dy?=
 =?iso-8859-1?Q?7BPKGNMKP/kAkqF4FA8HplIlc4szy+jXs6P7f7vJMxTDjes69I6ZPm8qb/?=
 =?iso-8859-1?Q?+fP47SF4ZSEgC6eD03tyfKjWT+5MN3Ns47wRT1ulnNPMl2LU6syXPJySNf?=
 =?iso-8859-1?Q?HsMaHAkJvSDWklcJASVqXmuO/4nE87Go15toja4eqesX8syIk2dp0qPmCK?=
 =?iso-8859-1?Q?eScJvq2AXUS02YHLOaM5V4tzb6K+MBWx6Rdoa1JQd9hUnWJZwAd85UvUL1?=
 =?iso-8859-1?Q?EbpLnPJWf4MyxRUeNno3W3LA8P6y0PF4sVPmP3+bC+XlRdWsulngbnJMcl?=
 =?iso-8859-1?Q?Jls3QF/vPEIy60MqKGaxvCbkDHHaN4PUTRMzxrBBIq2/iWdHQXfGvT/ddp?=
 =?iso-8859-1?Q?TTqBBgpTnLq95UDaPYDFjCY/oTReG+W3/ll9kn3KoNhjCNfheTKww8M4Wa?=
 =?iso-8859-1?Q?cWJBlMMBhgIBb6W64hmOPkKOpNNIqMdTlur9D8uTnmNFngdgJ0XHF/fL4k?=
 =?iso-8859-1?Q?iMaGM+SGv+d3ES/oFgz5xvG2Ze6+YFSRW51GsqW6Jat70lJH7MIUGBUy9L?=
 =?iso-8859-1?Q?XcMwaz3bgBn5JrS1j6Jl8Udnnh+BOrntN3b0iv1o8qndAmz6ppIBIgdUcz?=
 =?iso-8859-1?Q?uq+scImIm29xLCeZ4E+ZoWUchQnQIIdYPErbbOoJgg/+mzrn3fWsIO56dU?=
 =?iso-8859-1?Q?QnvhZlvrxYzmDqAyA0FNvIaA3Adh08LYfGCFqyoqdAF00xb2+VQJrCWhB0?=
 =?iso-8859-1?Q?YHe+20yQK/RdT4JIWNpHj9GFy0oOQ1nNJFU6tIyezyGFTk9oNHGoCoJEQQ?=
 =?iso-8859-1?Q?Ci7Mxe96t3WIpcwKhgNN3X4TiQ+i5L7nvy8cdrAJJjfidrrJX31Cg1NGio?=
 =?iso-8859-1?Q?ssPQV/oR2hznntC6Re8F3rSDpCFSn50rf/F4JvPywARGcrFBUp6G3K+ZHH?=
 =?iso-8859-1?Q?sFtssS/ZePW1wqrlX8dderJxUFHbz/405MmbVEJmY+Xc/Ghmik6kD0hi0V?=
 =?iso-8859-1?Q?AuvK976AbAUgezTpr01yOs53UBA8eKxH06IA576PoD2Uli2sQ807JxZgmC?=
 =?iso-8859-1?Q?eqRkZMZ+nEHftUOb6Qu5G+YLtl+JlJJZl9qHgTwFMoqkPqzl1LEBkJ4Ukc?=
 =?iso-8859-1?Q?xXBLHY56BrHTHt9jZt2ttcbU7gNzOAnmPU6BsgK9e9hK2OOOpLmf08Ct40?=
 =?iso-8859-1?Q?sKGDRmMoDmPk/siOillOmuOM6inyH520Ra70My7tD9kK4qQqqg7UcPDd3i?=
 =?iso-8859-1?Q?nY07Fq6jTfekkAe4B5/ZwT3osxLVKOCzYd8wDMzEA1sxgbX0075tivZtr3?=
 =?iso-8859-1?Q?tXtrz8m0RmecStSWULNY/Ib0xtATvXDTuAJH3/HZViC7sTFzVINO+NazTj?=
 =?iso-8859-1?Q?ZbcldN1h9ZCarPbq2axG5r8e8KOR+0LnHX9YyHiEdKljWfu/xCYrrZlw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c0c6932-c1b5-4ed9-0891-08ddcb8da431
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 15:12:16.5494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zwkZy3KQxR13yhgO/j7vjQtBCAk9SzDPwbIX6uPXxWcV+ykKO1w/csWHPMRETd/xNH6DL6giVmC/6QdvfERildom1smcClni8HDOwZdb1+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6897
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

On Thu, Jul 17, 2025 at 05:59:15PM -0300, Gustavo Sousa wrote:
>Declarations for both intel_io_mmio_fw_write and intel_io_reg_write
>where added with commit 01389846f7d6 ("drm/i915: Plumb 'dsb' all way to

  were

>the plane hooks"), but they never got used. Let's remove them.
>
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Fixed the typo and pushed to drm-intel-next

thanks,
Lucas De Marchi
