Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F409AF7644
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A3710E849;
	Thu,  3 Jul 2025 13:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eq5bzA5H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5C210E849;
 Thu,  3 Jul 2025 13:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751550954; x=1783086954;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KxrvHBw7y2NGNN/1NWQrKAp6qshEl/KSuJ0ivBwImp8=;
 b=eq5bzA5HjyM44Y/7UNjXa5Suj4DZbqunj5tWYDPD7RZIg2r6oOfzRY+b
 neEzDWh79F7CcKCQ7Xc1Pe7+fla8h9Si95f6w3+MEccitaIbSAAm55x8j
 bQE4zs2taqQTNr8tC0NuxPNICsZQEpdddIBb7xh4EWlswETQomyO3ESIi
 3AtdpZ5zXXZh3DBzLx9LwHWz1bgSc4tpSdoC3aWGNEHAC0hScFDZZi97y
 bWlX6S1+TlcG8FA39IySyLErmStz1aMwnMXf8WKUR0MU3med5Y6OWCSSb
 c2lN5cp4eFJXEi7wC0mVVnzfbp4pMgxfrFM2ObVE7+ybfJz5XAe53CqAL g==;
X-CSE-ConnectionGUID: YGJ7E6lYRyuYd0i2Pgxm/Q==
X-CSE-MsgGUID: vi37ovGHThafTgot6pe9dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53001440"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53001440"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:55:53 -0700
X-CSE-ConnectionGUID: lyJSRAGvQL24LniDbGv3ew==
X-CSE-MsgGUID: eost5WvHSlybtnbn8K83NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="158740033"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:55:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:55:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 06:55:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.45) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:55:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LZqIwDw7TpTuGrR/RMy5mvTVFR40FE2e7tFjvjKlIcx22CiYpvjgrG/2gZrpxOKz9BuYlom/uBAmKofxoTToUkYzd5SX4VV/PtdZsE9n8kpx40trfZw+/zXCrIuqP4g49lySfDkxOmz31ZTugZEsxOADi8STonoT/GUdC/G+9slbZHPUjpMsgdv7IRLQRopoptqrbF/GiJyoinvvpm3EeACXkFn1vrvCaRTdQtqKhhW1zkpvJGtr9/zQAj6E0HB6ushsli9n9kJYhzM10ZtqVep3vZflC+QLOU8UsuvaKE1xvGZaMIDSwOkIxgWEbRVtB89/Gf1FEe+yvNMUn20s4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t04EMdPPVGC57wj1Escdlrb753Oa8wMW7ju+rYl5dCU=;
 b=lcIvbLwrd6wVVQTv9Mdh03tECM78rrj/uKG7NdVp0C0WyLlUvEGFav6wrRDDTwBCF6GkNRQWY1eeZz2peXuQYpMFshBJiPd01HqwbQcGhnyiHU0jrqifuZ6BU70UsA8tyAaApc9/oe2qEGPB0N7ZBzKgfccNrPATsolOwEdaz1/4eRY/k3BvEZAZHM0P1pJG2vxFlZkXY+4LOmglP/rKobGGltVX+JhL8jsfzYCas45KokptJO72krTj3srV/MVfSN/rVefgT/3PqqFA+dVKRwGw7Qn21mF0qLAbcumlB+sqILkl5UhnmcCBmqOYh/VaOM11KHkixMXSBfzXwmE8NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB4791.namprd11.prod.outlook.com (2603:10b6:510:43::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Thu, 3 Jul
 2025 13:55:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 3 Jul 2025
 13:55:09 +0000
Date: Thu, 3 Jul 2025 08:55:07 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Message-ID: <cybzm346vxee26pw45xyezdh4m34cagd5iifdtqbymoourg5e5@2ay6gznj5m32>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com> <aGWpag7dGRUAVZfU@intel.com>
 <175154453451.3748.4465804540019858511@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <175154453451.3748.4465804540019858511@intel.com>
X-ClientProxiedBy: BYAPR02CA0037.namprd02.prod.outlook.com
 (2603:10b6:a03:54::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB4791:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ff53311-5d1b-4e3d-1fbb-08ddba393961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?rJmIO5uil2igKHbXddWbygEZw7TKFV95ZHgPrFzRvsxdZBl6hD5jrFvc5C?=
 =?iso-8859-1?Q?3rRmRqPoynK36RCGfzPYRZgk/nXKpSEmn91+erDDTeGc34FY1Vyo9KAaAS?=
 =?iso-8859-1?Q?RTF4a7VMoTxm5btvDxyAywJ9W02FbM3Yweogszg0LmC1/qDQtHcwDoegaf?=
 =?iso-8859-1?Q?d0fuVqOLoA60ELcO2jA3ip91kZCNH/Q1od5W/0LgLUFXDZPpGY3sAyPqfS?=
 =?iso-8859-1?Q?FfEIlXbmrm7lOk0H+6RreDJBKAmkvleRNjleNY997RSZSEapC4cDpzYixJ?=
 =?iso-8859-1?Q?0iVNKMtj/C+AlRPhe3xzK3GVkTP/nsHxJU9Pyfd11KxsH2Tobijxe53tVZ?=
 =?iso-8859-1?Q?4/PqWVEgGd36aJbFwu1kUG5XfeeDTzBaClJN0F7t3Yd5+hMKM625J/35lD?=
 =?iso-8859-1?Q?vGrejbXuqWUgvkgmrLzxIWkfhzV5Z6dVSGWxFxUxyarZB9+g+sP8HHP7Lp?=
 =?iso-8859-1?Q?3NW51uN+ikzSNUlMNmMvIac9aSem0309Z+PG5og2L+PxeKdHHh/pvcOeUK?=
 =?iso-8859-1?Q?U23lL5O2f7rRjuku1UpdXFqjJvfGl8ETOtObgP19hABxrwDNnRuT4Nj9XV?=
 =?iso-8859-1?Q?k1QBwJchRsyIxaXicLhX2OQN/lmizvMxNbfR0BPwYFk1JDQf5zuKvoLWNw?=
 =?iso-8859-1?Q?s2f5GgjP9HpLufd5hWvfTFA530trCI9oR+A12+KuZIf73U/7d7k7XSJ8ss?=
 =?iso-8859-1?Q?9+djYZd8vN/vJyWUqcQ3E9WMcaAhgtr5pgqGYTUz+CJRwviMueEgP22jBN?=
 =?iso-8859-1?Q?fVBz1Vy7Z6hGTBsnMZEdXK2GywE1vZCXCnmW9/W3EG0HffCODC8ACPVQDt?=
 =?iso-8859-1?Q?/8b8VAFxNYftxb70LEbJfZMdprD/zFI/VT7VQnuua0L3E/nOjA/Y8V0syH?=
 =?iso-8859-1?Q?XSBbr0KpTQRJTJLfhbKNIwiTKnFQMjeq+OuOdjB7sYVhfBtCetzvldDpbw?=
 =?iso-8859-1?Q?afRZ7r8R03OKehP7liQ1d4zGnsFWzxFBHdp6mk1QWPevMygbfgDbvgdcQP?=
 =?iso-8859-1?Q?L6Qj0HhnhAn4pZucXsb6IwelEuXFFU0Es57XCGITtuAyankTA30kcYqMIR?=
 =?iso-8859-1?Q?me9yJ95eU7DXgZUiiM/BFv4pU2hnRswzYxWrORHytMnOz0m414B5djitOd?=
 =?iso-8859-1?Q?d1EBt9jP1k4Mlz7tTF/wT23VIlFxQb6aliC30yWH9jyQShvJRtTT0S9mRH?=
 =?iso-8859-1?Q?k5n6T53vDRPdetsJ/cTDMYmmN7TOaUmDTnx1OMdHiJHJitB6ysuq0R7aKY?=
 =?iso-8859-1?Q?FMd86KhoZeAju67Fx2ugTES7jrqEu4JiDERP4O3hYiAU9FZX1RvAbG4l3w?=
 =?iso-8859-1?Q?q6YzepnmwbcApzfYaaqwTony2VXQ+mWUP/7gbhDfxewTLxfXwaI12LhKji?=
 =?iso-8859-1?Q?vYDCPRd/obxLspn+EFTtsh0uVbkPcEPXleJVqLeRRiwcwPOpDWDAccFs0c?=
 =?iso-8859-1?Q?6OGRmm+w0l3NSUT9hAkcAzMCaiOYCAKZqAbQAy1zQ8BWFqGxWfY0bzwIIL?=
 =?iso-8859-1?Q?c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?isppZ77eZ7XlzUwI6PoSFR7ukb4TikRhCiEAacbKwqtxLANAWdCZTLP+Q7?=
 =?iso-8859-1?Q?hr9fNdPxdcL5R76p76XxqEvoRKAaYCTGDRO/BIAJu4Z8cSqSSxc7PLpXmP?=
 =?iso-8859-1?Q?toqn/uzCY2egvMfMBSDKPaEta/vyTtmUL0eoIEyz/92j0quvvGMsL4Oap1?=
 =?iso-8859-1?Q?CQlN1Dwo0wNZrXDYeASJlSYQbfZM8/JuMGcH4kSFsUtDxh6mXUEoD6jJHP?=
 =?iso-8859-1?Q?6aq/oQ4R5CCb4l31kX7CR/ABU3DmwIqPqYVu4IVjIODRtuE88whpJ5wa1p?=
 =?iso-8859-1?Q?h9RFIM3la0KC7nzaI4mwvOUXRfRxSS5rCXZjp3y8Fl535EV4hSrWDWWS4/?=
 =?iso-8859-1?Q?2MFTl00DGU9Qaa5dx2WB+UttPoOmtSs+nj0tdqH/GcGi3dpFMMXFPPToG4?=
 =?iso-8859-1?Q?GbcaC4DFKrFtK5yOpPfX6hzhmEfXLR00uY+KNPYbAXw8KOqrIynedKG2mS?=
 =?iso-8859-1?Q?0nitpmdv7K2CYg+GtJIF7aP9y0puiyCACOPqXffFaFWM3uSh6HXVMU08Td?=
 =?iso-8859-1?Q?IVga6yuBUddUmyFfcwscEWBz65oOec+/DwDbIoydeKgKdO8AZGawHrk1oT?=
 =?iso-8859-1?Q?t4bcpn+udnHOldVfbHK4Y0qryQM44jhi73zwWiIwbSNMRxhj03YqRte1aj?=
 =?iso-8859-1?Q?hfRwN3TGujRHG+D8Tv39PTvCmVtfgWmmDkxrmS2shT+6cKMz5ex7SR+yye?=
 =?iso-8859-1?Q?z82YHf7ePU2SqGfVCUvYKCOz51ug5GKrwXebPJ2I0n2rI4mOz9CWl93zRz?=
 =?iso-8859-1?Q?d3kIo0Y2iZhe6VrQbjcYHUfnChpFETOTet14sjIvCD4DNNZr2xB9dvbqtp?=
 =?iso-8859-1?Q?dX0+yMYlUWZ1R97pGGGhMdnj9FCCesDe1IzYTORitU64NjbCRUImAS8oIr?=
 =?iso-8859-1?Q?Bd3cHREtUD53fgAZD4A25HPNYWT/ttGfTmWz6jdvhMtOhPuxlYaOh2682N?=
 =?iso-8859-1?Q?K984x/zC0IiNpF25RexQyK6ELWsdykExpFdr2QFe83dGdSgiI1CC5NM3c7?=
 =?iso-8859-1?Q?O3j/YGgXZgpVbvXAOp9/1IYvmgNQaiITLnKNIm6ryHWByzHzY3BEi4mpHW?=
 =?iso-8859-1?Q?8UdAADNYgOp7oOa/e1pOdDPrZa3HVfi5QPy8wm2BF/v6fZav2vIb17ImXe?=
 =?iso-8859-1?Q?e4xZkL/An/3JJjz4tFb7YfW3mFzcfEA0OQBoyRzCY1l7VxSfGe1Hdq/EF4?=
 =?iso-8859-1?Q?DAsaloWWNixgxFKhtrrZRNHHyHC0Kv9qXIkeo2X75hr1N7Ke+vEMVL2FVw?=
 =?iso-8859-1?Q?oK1zQGmyWSgW5nBitYU8N55ck2lee+EcJKU6690TUe0x3Xa7Ky7HQ1HhqM?=
 =?iso-8859-1?Q?P1KyauHUBVNyqcArm00WjaVNGlUC+BseQe4EGoXi9jFd25CR7tq+41+oup?=
 =?iso-8859-1?Q?qcmDZTPep4bg/JIs7aec6tIFtMRYqZEFxMb0QLWfXqABTV7WU1l6YEzr4T?=
 =?iso-8859-1?Q?g3JzGDP+zRPKQJxDuvCavQC/cOhmr4BAg7pGji6y2Sfs7gAHkoahlfLNT3?=
 =?iso-8859-1?Q?Cny5sVh/Je9xUds//HkNJ9qFtiFOQmAjEnAf7ks4mlEwYN9sH2AjafUZDb?=
 =?iso-8859-1?Q?AvtNMKeNlv0NfgxJUjyb3P0PeSB9/M0zwjWbHUYyE3veYsnLAGYdb4ctG3?=
 =?iso-8859-1?Q?eDYda6bSvVYQGmw3+NfM3jLU2rgUhme3HitOLU2dmVDcGalNRb8MVJ2Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ff53311-5d1b-4e3d-1fbb-08ddba393961
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 13:55:09.6753 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S9QMzJ+SkoVlVPSi8+R57Bt2y70PgBnx0Ks6yXSYI4uiC3MndM9ni4Rr2S+cLXz5WqVdxwlDhMMcqxqtRRAepdtz3gcftxCeO1x2yfLkkic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4791
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

On Thu, Jul 03, 2025 at 09:08:54AM -0300, Gustavo Sousa wrote:
>Quoting Ville Syrjälä (2025-07-02 18:49:30-03:00)
>>On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrjälä wrote:
>>> On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
>>> > On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrjälä wrote:
>>> > >On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>>> > >> Introduce a generic helper to check display workarounds using an enum.
>>> > >>
>>> > >> Convert Wa_16023588340 to use the new interface, simplifying WA checks
>>> > >> and making future additions easier.
>>> > >>
>>> > >> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>>> > >> macro. (Jani)
>>> > >>
>>> > >> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>> > >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> > >> ---
>>> > >>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>>> > >>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>> > >>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>> > >>  3 files changed, 25 insertions(+), 1 deletion(-)
>>> > >>
>>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > >> index f57280e9d041..f5e8d58d9a68 100644
>>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > >> @@ -3,6 +3,8 @@
>>> > >>   * Copyright © 2023 Intel Corporation
>>> > >>   */
>>> > >>
>>> > >> +#include "drm/drm_print.h"
>>> > >> +
>>> > >>  #include "i915_reg.h"
>>> > >>  #include "intel_de.h"
>>> > >>  #include "intel_display_core.h"
>>> > >> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
>>> > >>          else if (DISPLAY_VER(display) == 11)
>>> > >>                  gen11_display_wa_apply(display);
>>> > >>  }
>>> > >> +
>>> > >> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>>> > >> +{
>>> > >> +        switch (wa) {
>>> > >> +        case INTEL_DISPLAY_WA_16023588340:
>>> > >> +                return intel_display_needs_wa_16023588340(display);
>>> > >> +        default:
>>> > >> +                drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>>> > >> +                break;
>>> > >> +        }
>>> > >> +
>>> > >> +        return false;
>>> > >> +}
>>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > >> index babd9d16603d..146ee70d66f7 100644
>>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > >> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>>> > >>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>> > >>  #endif
>>> > >>
>>> > >> +enum intel_display_wa {
>>> > >> +        INTEL_DISPLAY_WA_16023588340,
>>> > >
>>> > >How is anyone supposed to keep track of these random numbers
>>> > >and what they mean?
>>> >
>>> > they mean there's a h/w workaround that requires that and this is the id
>>> > if you need to find more details about it or what platforms/IPs use
>>> > that.
>>>
>>> I don't want to go look up all the details in the common case.
>>> I just want to read the code and see that it generally makes
>>> sense without having to trawl through the spec/hsd for an
>>> hour every time.
>>>
>>> >
>>> > >
>>> > >The only time I want to see these numbers is if I really have to
>>> > >open the spec/hsd for it to double check some details. Othwerwise
>>> > >it just seems like pointless noise that makes it harder to follow
>>> > >the code/figure out what the heck is going on.
>>> >
>>> > what is the alternative? The current status quo checking by platform
>>> > and/or IP version, dissociated from the WA numbers?
>>>
>>> I find it easiest if everything is in one place. I think every
>>> w/a generally should have these:
>>> - which hardware is affected
>>> - what other runtime conditions are required to hit the issue
>>> - what is being done to avoid the issue
>>> - a short human readable explanation of the issue
>>> - the w/a number for looking up futher details
>>>
>>> Splitting it all up into random bits and pieces just means more
>>> jumping around all the time, which I find annoying at best.
>>
>>I suppose one could argue for a more formal thing for these three:
>>- which hardware is affected
>>- a short human readable explanation of the issue
>>- the w/a number for looking up futher details
>>
>>Might be still a real pain to deal with that due to having to jump
>>around, but at least it could be used to force people to document
>>each w/a a bit better.
>>
>>Basically anything that avoids having to wait for the spec/hsd to
>>load is a good thing in my book.
>>
>>There's also the question of what to do with duplicates, as in often
>>it seems the same issue is present on multiple platforms under different
>>w/a numbers.
>
>With regard to this last paragraph, in my experience, I have seen two
>types of situation:
>
>1. Usually we have a single w/a number that is shared accross different
>   platforms/IPs, which is what we call the lineage number in our
>   database. What happens sometimes is that people, by mistake, use the
>   platform specific ticket number instead of the w/a number.
>
>2. Another thing that happens sometimes is that we might have different
>   hw bugs that have the same workaround implementation. That is the
>   legitimate case of having our code mapping two or more w/a numbers to
>   the same implementation.

well... but this is the same mitigation for different bugs. They are not
duplicate bugs. It could be that the platforms affected are even
different. We should mark both as implemented to be able to cross check
what we have implemented in the drivers vs the list of workarounds.

Lucas De Marchi

>
>--
>Gustavo Sousa
