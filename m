Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E4CC2E44F
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 23:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D6510E4CA;
	Mon,  3 Nov 2025 22:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAJuVnjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDA710E4CA;
 Mon,  3 Nov 2025 22:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762209037; x=1793745037;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=+6bTfWVIgeStan8cvBC64t1L3RWFktoSV0ZzAFxZO90=;
 b=GAJuVnjoDJLoTeXtxaymyg1JJsx2Hfki+d8xwFj0zNpRkbO9Z5ijOM9T
 /KsjY4vRrjWcTanL4fTGv4Byd7zxnXBIqqoHBvCUTlTaS+wz7vDv7VX+9
 /XhQ+4t1BDr2EdxoXvXXmqLybutVgpUwp4eX1qh/IWLTxMViE5Tc3AdNl
 iPdu5qtaHYxBSgMbR7KkhPMptuoe+/IbKrnZgEmI4/vRSKNfR4gjZGZ6C
 nZz07j9+zcJ1mojisi4DmSc3EScUn53c2+Veif/K574UovxuRuMIiutMl
 OoTP8WTe1Qf0aqr449tShsBTglMnjybxhQoxfVeRerSmx+HUH6Q3OKAHT A==;
X-CSE-ConnectionGUID: uaMFLHyTS5S7LsjPEwFMmg==
X-CSE-MsgGUID: +QpReJ5IQiSvD8K/ipBW+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="89757692"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="89757692"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 14:30:37 -0800
X-CSE-ConnectionGUID: uOSlnpAsQbSBLdqbptZmNg==
X-CSE-MsgGUID: 2x28Zd2cShKe2NuNA61STg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 14:30:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 14:30:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 14:30:36 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 14:30:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bK3BP5Z0YyCHniV9CZ3p8EDvYBB29FOmkAJQAmZ8mQebhi+dMZ+x2Q/UaLbWpBrxfG1L8QH2I/uyJYpLY5IfoO+6S4v/J5xyHFvHInUi72aCB7O+/34ysiXgyOvqonSBXFR6fIVtL/Fc/Pc/poVf3awpvCoVFyVVLCqq4ULamFpsJT5hFOTNU2oQNZsRox3cq0PxiN2xJlmGk4xB+QBAUOt85BZeXHynq7R0hG9i1lS+Xb82tmcLECjwiezGfS00XQpKesWZOwzK9CJkN/blujAAu4KMf8EWMM4SbUT06UKbtRofamslukJCZxyreRVHTLUz+6Y6LQ+BDNPlnJJM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=36cBvs4iY43wLBIy/Z5vV0dFbWhNxWYtDFM2EbpQGjM=;
 b=Hm0i8ZZJnek/UtHwCMLoP9TduVBUWnB3T03KDRy0xlbTmXMLWIslTyFSuAQlbT44Po50qTo7Q0+YFVeqpudPwaLO0Qaal/qcWsf4h3JcS4JQKGUQ6PZTuSOu4JuLh/EJbP9vMPz1S1etNeIFlQTXQ6+MRcLYaivotGE330N2OXPVb6gPWtB1PI8qRPSMf00om14A8xEktlThBKq3WjjsRHbwDQrJ/Wk2ZFa8VPZfQG4B4RNAiY6cKglTGarUdrsxndZWKxxkK5+txG9pHwVC32NTIL/09zqxdUpoZAu5FI6x8fqMS0kBR6z8ZY73DAHyvW/8OHFM4doXsmm5USnrgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM3PPF5EA507B64.namprd11.prod.outlook.com (2603:10b6:f:fc00::f25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 22:30:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 22:30:31 +0000
Date: Mon, 3 Nov 2025 14:30:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 17/29] drm/i915/xe3p_lpd: Log FBC-related debug info
 for PIPE underrun
Message-ID: <20251103223028.GA3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-17-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-17-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR03CA0188.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM3PPF5EA507B64:EE_
X-MS-Office365-Filtering-Correlation-Id: 56a4d16c-960b-4c29-f26d-08de1b289911
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?CY6k4tdgJ4QkkfqPQlatfyW7WMq0HoGjeCpmhG/69OswscEGMZiWHTiEKS?=
 =?iso-8859-1?Q?mHbV0iO3D1w0VZtRLBhgDdps0NWUWAT8OIbf8uXrgd7GbYwOhfSsqyIbqV?=
 =?iso-8859-1?Q?a4bjZsKPab04BoWdnQNbwkWFQURFc47y9+s8fvXYC3RXWM2JSFvIw1yY7z?=
 =?iso-8859-1?Q?qERsFMqd/gr0UYgKIY6ANrlKK49vLrgu5/g2qe9a78y6jmAMXCZbkH8Sui?=
 =?iso-8859-1?Q?vtH8ie+jyBYjUt6xyI+Qnkr2X0p3EKXspTUuOA8w4gGjrDtemDPsgZt2G3?=
 =?iso-8859-1?Q?75J99bKLzGIkOiWj/5Tyob8skBmyigc/sSjUapa/wA3FUZ0sXRJ9Ea6UuG?=
 =?iso-8859-1?Q?NiG8T0boNpJ4WgXzoYztlwxhaHvf/kzN6pjimqZe9x6ctRMKbK72ltnfjq?=
 =?iso-8859-1?Q?zQPzUisBjTt8UbiNPxLPhaM7/0eHPzrdhmcE/0x2OQZwcun0zCoM7UBK2f?=
 =?iso-8859-1?Q?hCHUHGp3wOpoQxLc9BawOJdR4B6V9wiFAgOv+3U437pxO9q36BO9/EwuZF?=
 =?iso-8859-1?Q?+rOEEXhrh6tB1nv1Fgr3dv6bNa9M1LrYXUT+b9JQ70gaFDmEo0agTSCC39?=
 =?iso-8859-1?Q?f62BjYs9lSq8qq7QZdDVnHHF0EdM13wXBiZLwuoKrIEfgk6bqFgJwds3+0?=
 =?iso-8859-1?Q?0jpH/BC0DbTjICgfSilWjMNlYQ4+gwe2YwUuCUMxZK3Vtn39TwAzq6q9Xo?=
 =?iso-8859-1?Q?Cdxa3EWd0p0xSxRmDPEd6YAN6RWyb+EBYNLZrP5MP/Rg+1lud1DnY08vwV?=
 =?iso-8859-1?Q?6dMChRxQYjCMls5vIG+OL9o+YA1qmJfv69j9fJAan+fIsDfUlIcU9T/AXX?=
 =?iso-8859-1?Q?ti55ty20egjjIXuAQAg79tsuQWde0DUFhqS9azYaz6zVBQyh8pmCAWtHXY?=
 =?iso-8859-1?Q?k9y5WpWtIN/OVBnJ4qh6LIFMI2JIM/ENwZJBUcOk3iW8sBH5jA2m/R0ndN?=
 =?iso-8859-1?Q?+Q+0x9UA9H/jOZlGxRGWKtS13bAHBMmQGAbv/cKa7nDLVLAN1Zpxf4Hs6z?=
 =?iso-8859-1?Q?yi8LdZG+fZG/SxHZPT/8h84eVa0q0hmjpsYaE8Y5fkv+gw5lIvPZ6ZUFM0?=
 =?iso-8859-1?Q?jfJ49hEcGiZAV4+kJwaSP7eh/1APP0Glknb6hTmqPU7sdAXa86t/aQ5L6t?=
 =?iso-8859-1?Q?p+hKS0h1EVDG8pUjDF3S09xjgPcD5yZFV1VkKGKdKJuDXhkcoViAU3hjIu?=
 =?iso-8859-1?Q?xoRH8VLGr+zvxUVSVynCGZ9yLeKgZ2IkWkmhctxW1yQtsGaEzN5xQSi20c?=
 =?iso-8859-1?Q?0O12ZNchazuitizdr0hqOy1985YCRn5ezWSnaN0GSdTNojZSCyTXy2jwjQ?=
 =?iso-8859-1?Q?/j63lPZGEp43O62JbRpnf85Az0dJwKbXYkAjeQKhlIgo+SN6fmeej5fJf7?=
 =?iso-8859-1?Q?yd6o1QtoDpZuKn7aC5BXcHF8RWMxQyQ6HY8i6Ya+RTQtADPZinN8XP4IwJ?=
 =?iso-8859-1?Q?66ZKcHaRxUWnnAx6fB9l7kxJTmeHKmOhXy0pTQesCmmxLF23k0yBQZXL0K?=
 =?iso-8859-1?Q?gMlpkFrmjnf7PoOOP5tj/u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VU+pC5LyftEdC1OnMcYAGqjerDDJ8gi/Z6rVfBoV3CyvctKXQ5tQ1JSRxr?=
 =?iso-8859-1?Q?DKeCJEadm0xx3G7BcIt60yvfAblerMw3biKLoh3Kz1mnJwHYeYy1E3fuHD?=
 =?iso-8859-1?Q?MgLcvC/enAZqE4/w7BCz9I9XeMn1mmwz+7z5S2A7tP3OUrJJ8/gVkVog58?=
 =?iso-8859-1?Q?2EFrcoCvJ1y8RhHWn9RAUea8OgNXsI5palFozyfYbUi3s1VXCMHUDxnGTH?=
 =?iso-8859-1?Q?4RjQ9RpKomXQwESzSuUgEegN7ooHB1qVpny5z7gq4YLCy7v4K6BesYIddh?=
 =?iso-8859-1?Q?3eNBawaZ/GlP+lH6PyYs6jNLaLp6iYgUKG+9gfxdGsu6UYJSWC0zei9oCc?=
 =?iso-8859-1?Q?oMKoyXVt2aG7jHStCnEPLGd4MoaeC8AmQyTuG/evdlKKbHzbrh3/av5VyR?=
 =?iso-8859-1?Q?p4WUhFOCs0BBMu07aB7ngXmDUMZjoTGFoJpHccUDPD86vHNq8imseDEkl5?=
 =?iso-8859-1?Q?Q9sBnwiYff+lSgiOWN1ORmbt/rDz8MNzedxJVEvv3/jpreAVXw83YaLiFJ?=
 =?iso-8859-1?Q?pYNj08ol5wh1mVvtwpnt1iuUdQvCjcTZ6JwM/Vd+uS9sfLs1j81RaYopkT?=
 =?iso-8859-1?Q?tmcwZadoUHEaU8qWHslUHCSqaEWhoSsBGhBayO966OjhKoBtffsoqLQ+we?=
 =?iso-8859-1?Q?6an5PKnI44JUv+yMWwdeRHY9/y0hSvMA9mayxA7QO2ykfdbXb2ExfRxJX+?=
 =?iso-8859-1?Q?qGebHXdM31eiQO7Mj0FXzfYQKuHVU/vpcGM+KqV8jpvEzFDabW0MXnMQCG?=
 =?iso-8859-1?Q?GYr/gRlQbmvelqjR8Hn9QJaQx67zllf1Bo74Qxoh5wwu0TbO4TB3c2hCQq?=
 =?iso-8859-1?Q?5lAu9DKqHYbx3NhRTmiqfAraCtDStvJt0+cPVmgi+Y8p1Ec0ADptN3k5I1?=
 =?iso-8859-1?Q?494oRNlloxUaK03kKMijGWc5gYSJTdk6kdHucg2cCK7ncXc4weCreu2H8D?=
 =?iso-8859-1?Q?z1yydA2n8ehfa5Z1yXS5rZ6hc+WyxGnEmybU/5qe5/OoK/s91Y491LXWgY?=
 =?iso-8859-1?Q?mF10JOK272c7P9UW91QvJPN1rn8rnrOfYOd9Eb7R1xVUf0S7yMdzBJ0Oi4?=
 =?iso-8859-1?Q?F5bf4JCgJVVcDCL/KxGP85STSBAjXIco5KQUmK72jgUY/bxEragfezrOhc?=
 =?iso-8859-1?Q?9aWTbMKhyP4kuIjLcHN28ryukKrACP6MvMP68Ch81LVomK7KSMf7QPdZOc?=
 =?iso-8859-1?Q?ZWHSJfDINawZBw8YOfiMEVkEO/FSiiNKtLrSxDjyqiNdEOzwuSKGBYGMow?=
 =?iso-8859-1?Q?VUqOYuGYXgZFiJrZ59FEehqIUcHQia30xXFzzewxdizQFkdr30Vaq7EeQT?=
 =?iso-8859-1?Q?UUZPvP0KtGv2VkqlNPb6DqRcQCMLt8pUsciDR/UwitALoF80pQfQLRfc1X?=
 =?iso-8859-1?Q?u7myE9A1D/bxzOTlbZMLhon9tgWgoHzWASXLr5q40wEsYYaocXci0A5Uk0?=
 =?iso-8859-1?Q?a10BKZjr/s2VCF1C0Ul6nX7L2iqggfnsfpvn4XVMkuQxVTZPnbhjQhhZQr?=
 =?iso-8859-1?Q?nWDAmbbMgPdXo8+RK6DpP/CNs1H9XPTBTDbDlag3Ouw7PYeF3KkngkA6rx?=
 =?iso-8859-1?Q?KJt5v8B8pMFIj/gEiEABEj0S5oRM1ORmH2cSPKvmQG47HXucuJLIs+ugof?=
 =?iso-8859-1?Q?E9J/sYgTzpRfUXRQ6jWsxWtGAXKMhntkdM+RdoBhIMNQtL8PJYcGFYHA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a4d16c-960b-4c29-f26d-08de1b289911
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 22:30:31.5499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CYM7jrNY1XF9oBNVT4zZ1rZNvTCqkQ2r6gsQJreh9FXv6Gp++f9QaBx7tuMO5RCeT6HPrXdSen651jc9b8B1PvvIXgXVd5PUv/W15hHV4OA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5EA507B64
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

On Mon, Nov 03, 2025 at 02:18:08PM -0300, Gustavo Sousa wrote:
> Xe3p_LPD added registers and bits to provide debug information at the
> time a FIFO underrun happens.  We have already handled most of them,
> with FBC being left out.  Let's handle it now.
> 
> For FBC, a bit was added to FBC_DEBUG_STATUS that indicates that the
> respective FBC was decompressing when a FIFO underrun happened.  Add the
> logic log that info.
> 
> Bspec: 69561
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c           | 45 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.h           |  2 +
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c |  1 +
>  4 files changed, 50 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index a1e3083022ee..24b72951ea3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -129,6 +129,11 @@ struct intel_fbc {
>  	const char *no_fbc_reason;
>  };
>  
> +static char fbc_name(enum intel_fbc_id fbc_id)
> +{
> +	return 'A' + fbc_id;
> +}
> +
>  /* plane stride in pixels */
>  static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
>  {
> @@ -2119,6 +2124,46 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
>  		__intel_fbc_handle_fifo_underrun_irq(fbc);
>  }
>  
> +static unsigned int pipe_to_fbc_mask(struct intel_display *display, enum pipe pipe)
> +{
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> +	struct intel_plane *plane;
> +	unsigned int mask = 0;
> +
> +	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
> +		if (plane->fbc)
> +			mask |= BIT(plane->fbc->id);
> +	}
> +
> +	return mask;
> +}

I notice that there's also a skl_fbc_id_for_pipe in
skl_universal_plane.c that relies on the current hardware design of one
FBC unit per pipe.  What you have here is a lot more general and
future-proof if the hardware someday starts allowing multiple units per
pipe.  I don't have strong feelings about whether the simple approach or
the future-proof approach is better, but we might want to consolidate to
a single function that can be used in both places so that there isn't
confusion about why there are two ways to do the same thing in different
parts of the driver.


Matt

> +
> +static void __intel_fbc_log_fifo_underrun(struct intel_fbc *fbc, enum pipe pipe)
> +{
> +	struct intel_display *display = fbc->display;
> +	u32 val;
> +
> +	val = intel_de_read(display, FBC_DEBUG_STATUS(fbc->id));
> +	if (val & FBC_UNDERRUN_DECMPR) {
> +		intel_de_write(display, FBC_DEBUG_STATUS(fbc->id), FBC_UNDERRUN_DECMPR);
> +		drm_err(display->drm, "Pipe %c FIFO underrun info: FBC %c decompressing\n",
> +			pipe_name(pipe), fbc_name(fbc->id));
> +	}
> +}
> +
> +void intel_fbc_log_fifo_underrun(struct intel_display *display, enum pipe pipe)
> +{
> +	struct intel_fbc *fbc;
> +	enum intel_fbc_id fbc_id;
> +	unsigned int fbc_mask;
> +
> +	fbc_mask = pipe_to_fbc_mask(display, pipe);
> +
> +	for_each_intel_fbc(display, fbc, fbc_id)
> +		if (fbc_mask & BIT(fbc_id))
> +			__intel_fbc_log_fifo_underrun(fbc, pipe);
> +}
> +
>  /*
>   * The DDX driver changes its behavior depending on the value it reads from
>   * i915.enable_fbc, so sanitize it by translating the default value into either
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index 91424563206a..d34282cbe971 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>  
>  enum fb_op_origin;
> +enum pipe;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -46,6 +47,7 @@ void intel_fbc_flush(struct intel_display *display,
>  		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
>  void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
> +void intel_fbc_log_fifo_underrun(struct intel_display *display, enum pipe pipe);
>  void intel_fbc_reset_underrun(struct intel_display *display);
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_fbc_debugfs_register(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> index b1d0161a3196..77d8321c4fb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> @@ -88,6 +88,8 @@
>  #define DPFC_FENCE_YOFF			_MMIO(0x3218)
>  #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
>  #define DPFC_CHICKEN			_MMIO(0x3224)
> +#define FBC_DEBUG_STATUS(fbc_id)	_MMIO_PIPE((fbc_id), 0x43220, 0x43260)
> +#define   FBC_UNDERRUN_DECMPR			REG_BIT(27)
>  #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
>  #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
>  #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 1da90c99f93f..d0dbc4faa3f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -403,6 +403,7 @@ static void xe3p_lpd_log_underrun(struct intel_display *display,
>  	u32 val;
>  
>  	process_underrun_dbg1(display, pipe);
> +	intel_fbc_log_fifo_underrun(display, pipe);
>  
>  	val = intel_de_read(display, UNDERRUN_DBG2(pipe));
>  	if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
