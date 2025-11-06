Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ED1C3ACAC
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 13:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57AE10E8B2;
	Thu,  6 Nov 2025 12:09:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIg/yXsU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D3210E8AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762430940; x=1793966940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+6rcrty+IN6UJT0YEmrYRUHoiMPdN6mC5VimVPLKiNU=;
 b=hIg/yXsUIYOlWCF41qnzaxbZuuUHxba49bmfATHTt307YTexcyfB9LJp
 pzXYE7JZgKYHjr4XICcaMiPIcqSahLRF02rBqGWLDs41ZIv83T6IMyvhP
 evq3y0UGgw875VlZjNFPWA2J9/DRXHdINeGgggj/oETla3QE06aQoY6Un
 6awQE9I4gfLQRjzuhMu++ghys0K3sxq/1HCIX78j+4pwsT6XbJblYEDN+
 ESaUcJdWbFOxXkgl9GD1z2ETCEIbkiy4Sy459mPmuCjl5jXA+aVg/ldZf
 H2dpIzkZTJRdNf4C0VWgakfE9mUstzoe+0vol45ltWwvHGrZZ4sGUOmsp g==;
X-CSE-ConnectionGUID: mWrLSobZRB6aQj3n2xpLUg==
X-CSE-MsgGUID: HynS1QVAQR2Cx1qaFp236A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75915945"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75915945"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:09:00 -0800
X-CSE-ConnectionGUID: /wGJ7I64TkyoZd5x7BcHXA==
X-CSE-MsgGUID: BXBtoyZcSlyK/tCTjbaikg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188186480"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:09:00 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:08:59 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 04:08:59 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.40) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:08:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k3R4Dnj19O4lViWKLvaR4jW4xForPvTKzQB25iYSgkZsTvAB+Vp4qTh+fc/dchsq4pWzjzfG4guVTgkj2GBnWXC3aWaXA1lJCbslrRUJb8xWh2r2zHY34Lf06Z4/85h3wG5fGEUji2HVqoet/vNaogBIIu5rbmW3VUErG0gWwBuBn/PoKR3MTRSoJ/ncqdtPCONb9aq2J7iPsXqWLIPWKAayLUWNsLhbzl7iajz9xgpxqzxvonCZfTJVGX6Kafpe9jx4zwvJan8lTAFwasMyVuMB47aEv4mnbJHu6WUJrVYl0mlp0beSLUtdeKwlItLLK3qJULvKg0TGrSitV5/o9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBnXv3qplTOxH+EUNGEwYBt9VRp4WYLIVK0rh9yH9wU=;
 b=LScrMHUq7gV8+wR52wqhEGc91IUvCZTKxVRpCdtqqBjvY/8qjTL1qc79KPBekn9cI2eTLD/pHugCjZg3/VKSDO0zDXHuRfTJB7u17pGYSxgMIIqpXXpANJXMigOlRDqikBaK7OCtTkgGyfPB1iq7r+BQCm1fJzhRmXY1E1yRP8DP/Ra54CSTS3DYTNRTDG8E1qPVTjFuUb3Nz2jY30rldaTH55dnYrg2+1dZxA0Ip5hC579O2ZvoAfK9ya9NJ8GWLmHvb4mSiN1FjXWAUD0aLqCGyx3lcpd0TDh76fDtyuptfzcqOA947nACaE2uthAw5R1qpRDLEJwlYGFR71qrWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA3PR11MB9135.namprd11.prod.outlook.com (2603:10b6:208:579::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Thu, 6 Nov
 2025 12:08:57 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 12:08:57 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v4 2/2] drm: Avoid undefined behavior on u16 multiplication in
 drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Date: Thu, 6 Nov 2025 12:08:45 +0000
Message-ID: <20251106120845.2821499-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251106120845.2821499-1-krzysztof.karas@intel.com>
References: <20251106120845.2821499-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0094.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::34) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA3PR11MB9135:EE_
X-MS-Office365-Filtering-Correlation-Id: ef3f5abf-1baa-4e9b-8e6a-08de1d2d4306
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jk/F1LfMuKSo1y7BUiWEWFc1BhHdNEQKL7IxfXuhxKNpsGurT8NTS97b/nBW?=
 =?us-ascii?Q?5gfuMCC0O78m7+6lY6x38QJyyE9EMneUw1Sqq7pJMbg4WeXUTCbePWFIOrcH?=
 =?us-ascii?Q?jaHXpMOCNcMG2EsGaWkX5jx+9ezeSjzvLJGjmL1QFmMS5zDfJV4m5T6zTtWy?=
 =?us-ascii?Q?UjLSDaqnMe2nZGKgYWpjVw9R+hcQaDWZkVZgMjMR3CoblxxSlHUZiLJtSNwg?=
 =?us-ascii?Q?c67bXJbXXQUHz6xBuBe3egFQjbea3beRQ98eAI5G62GRuujAOl+9q6je5fHa?=
 =?us-ascii?Q?HpgreBa8MwRPXwDzPiqnURVaRi1/gIbOk+uVayMb5RpWNXM1c/mlmX2CooYU?=
 =?us-ascii?Q?vfsb1R/WUxnyA4aZlcpG7JuPp0lutXZQoJ2hQrGVp6iqQNFBO1AF3Dx7ya65?=
 =?us-ascii?Q?MKbj7tpnCjirEjyWD6wBuDmL7jpdXR1RaLn0xGAtPx6x6G1gdUkoWFh9KLoO?=
 =?us-ascii?Q?uGvorJpVeo/NnLYXWip9SDoGr5T9pBvmy/EsE3CwOd4m5tzy4ICLdCScW70E?=
 =?us-ascii?Q?/7Pr3dLTBiMI3W3YniUep08qXo2Bbr/oVhUWlqVk5AOHQyZuIYG+c0NbqD4Q?=
 =?us-ascii?Q?zrqwIAOz7O82CWoFszouJYxjZm2OQjbQnX6s6pd5qK1cRqHvq6H5n46wxMkw?=
 =?us-ascii?Q?4xflogggDBtRmkOVc1OK9ezvOSRnytqDqLSNazfShquA1upBgng6zv10318z?=
 =?us-ascii?Q?K700I6nHyfNJWJC2a8pQ50SMTwhXN8xwY4dZQ1mO5BAr/PXY5D7+jZeVHOyi?=
 =?us-ascii?Q?vFp8jbtBAch51UqFt4JAVsmjy7R9u/04dDH0ftH0ENzeDtARSXkWAEfubZkK?=
 =?us-ascii?Q?5mWdZcOh11wgs263c69q+nmnENLv7VTfL0aMkj/WHGq+yXNDgDPEbZ7lDpH0?=
 =?us-ascii?Q?7APRiQKKPQ6VZTbC7s/+i1C3xM6yV8uzW4PjCQ2OgMGQva3pSZ78kZ9YfRTB?=
 =?us-ascii?Q?Ie76zDWdIR8Ed9ZLvflpWNHelPuLoOyG5mBkyKnBqwxOrslrophzdddXNeDU?=
 =?us-ascii?Q?leqbo0DslZWKRKv6HNjz40/I71TKsPWbyRWg4UOOQ5U8otwMFBVvo2VgjJf1?=
 =?us-ascii?Q?QnniHM2t7TD9ah2HKyP5Urev+3PI3GMjYdw7BrI2wH0GEFjdlaHYYqyLPsoT?=
 =?us-ascii?Q?jkOAkSaxZgQGNCLQLFGvmFPmS9r+VwVXwA4awruJNmPISj1vl8QpNbpF5enP?=
 =?us-ascii?Q?jV1rrf6PHXr7L6TI+lwvl+BgsSyrS3QJe826fMlSd4j+DRAJ3uoa1qTpdju7?=
 =?us-ascii?Q?ioaPt6qTcsFJg0KN1CQ0dR3yEmNaXiGfYJlbZuJhjLz7Pc6AHY3UCEmxf+fZ?=
 =?us-ascii?Q?fQrTmyWJepFjJi7j80xibKYOWk4q4FIZCJbeM8dVG5o7hfrLroQwpkDBOCqN?=
 =?us-ascii?Q?N1Kg1vrcLpOpCm/nEd5LKKbREo1vF1yxOmCQBC+m3CSuWIXVH7T4OipjQL9F?=
 =?us-ascii?Q?/UFD3exJqD4YtZkLVrAr2rrZn7Ff9PHA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0JSVrYMoTXrFn1hMpQe9nE6d2TdrKbdQXiHyhzO3YuZ3qtV54Ko2G8aoVF87?=
 =?us-ascii?Q?0VREP052QYjOcoA+mdV1CSNwX/WaDLx5cKFu2e/Kl8/rKSxbw2h5b1YkfXLP?=
 =?us-ascii?Q?5D+WMvdMgpTvkpeb9Rn5HUucWOngTK7pX0xt511viZ+iczQtI1s3P0MnpA4F?=
 =?us-ascii?Q?dYRj1DcQWLaWoXYk/KuvmeFExTGpzvrMqTHPgvAHd10ytRitf9z1Wygnrc6P?=
 =?us-ascii?Q?UnFK2k9Y6rr33bfJ8h+mIS7F6YrZ7MOZDTYZdPq+J7ZIXRXo+Dcua7MD7zrb?=
 =?us-ascii?Q?Dch1Yded+8CBf4p1GmSSDcWbo7hCm7cB8OZ6vfEGS2XV+d3FI+mJzEE1+yht?=
 =?us-ascii?Q?S+8P1F3mGhMa+nBYN94K5mo2zNTjJFtsU77iOpzUD0sgcVTHc6IaHi6Z2FoL?=
 =?us-ascii?Q?Etz6Dl1BZgN3VWlDxMGxB+0uQekmEXCkWj0NY0159rpcPWZxtfgd5V/3VYAj?=
 =?us-ascii?Q?+EpRU+5wzkukBsK200PYY3NY16RIniiCPPWr1CKMayicUqYXLdlvA6NLmF3P?=
 =?us-ascii?Q?cBbJKch6dnyDz8YXN5N3Ktbt9SwUEhdFA7Sv0LpaIscapPZDpr6oKqlhPlwg?=
 =?us-ascii?Q?ELVAA1O75IP3B3b6AstloTF0MhgN7DMRq2fuMFBb37/EFjHw9njD2tJ1w5Zd?=
 =?us-ascii?Q?HqRgB1R4MkAa+v9QoGOtTHaQWpU5adQJcXZpHZpjrKYHDW1LqW5PeemHHVsx?=
 =?us-ascii?Q?bKFELvtV6qVP/L3+IHDI40PDGPSXGL8/w6MAprhFEvEUTo1J2EnucKqjXtKA?=
 =?us-ascii?Q?piZMxttHNaGPnKZnGz/3CBJn8ifXpaMa3xVsRksuy1ZYJq37QqRh/dU6GCMb?=
 =?us-ascii?Q?4xtoues9dKNfFmAJfb/B9L1kHd0u6DZq1OmzkXOEennhWiLM7B0uMBeQdjsP?=
 =?us-ascii?Q?qqGpWXY0AX/zpTBjlbF4rMg1m0ovIuWqKlJoNsP+Vvt3BMjk/Ijz0j+vHybI?=
 =?us-ascii?Q?8oBD8vLVyI0txCd2bwjz2W2H5gR5HOYPyEtSd95RvW+FcaNq6dEGLPzBZ4KB?=
 =?us-ascii?Q?WVsrh+GVZ1/aFib3Na3TwmMtWSnA1G6+pUjpC48NV37/birk/MxMDDjraMrt?=
 =?us-ascii?Q?+JBGQePOw3B3Ym/I1Q13M4qCI9PdswBeiWVlyEf3VOQecf6g0DNaS1N1SmiB?=
 =?us-ascii?Q?cpchh/oZhzWPCOZP27x+LbKSuDmGhwNEtaReRR9lZr/YFyFMGHUhXP+RCx9p?=
 =?us-ascii?Q?5UtZswcLAQRRF9LqJGrUdItjRZisSajNCTfSjh4bCnJnIV9W1jumx/w0F/VM?=
 =?us-ascii?Q?DQecxeMmQLDwPemXCzjseo34pQNNesM+ewvQhu3/V1XVFhiDVFquTHWDt0K3?=
 =?us-ascii?Q?qdVj4cGvPvrmQ1HhvGPrLK1RE7Xidrm0xkk5VYvNU6zHr2HwsF4jhuac/5Pi?=
 =?us-ascii?Q?mI/ZoZUtOZa9tl+T2fusmMJ/m4YxJl2AMsJXZ2n8wmSVuPK38qJIuGUMDxNS?=
 =?us-ascii?Q?aHnGP72QIvfCgyNrOUW7VqJ+FkyJ2rX2oRFDnYPAOhWUdt/GkWbP+TPibV2S?=
 =?us-ascii?Q?x2/vVhqYcO+MA/2kKudXcIz03sBkzoRVHB/6mtCOEeHFvRjpNEFUsR52BQmL?=
 =?us-ascii?Q?vpI//F7eu8YH0qHTu7HHXqCKLMMEdE+M0f4RUc/CAib1Jq/OyGg2DLG4bNwf?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef3f5abf-1baa-4e9b-8e6a-08de1d2d4306
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 12:08:57.4335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MsIDhB2TDpAubf7ZUxKJFOigWM8W06YoQUn9v6dbdxMBDALrNsszQMMfT6uy/UwYG7fSVc7/4wT8x8z8reZ3bxsWBv3qt5SuHFfOj6Bd9k4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9135
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

vpos (int) field multiplied by crtc_htotal (u16) may cause
implicit promotion of the latter and overflow the result causing
undefined behavior.

Cast the u16 operand to (s32) type to avoid that.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v4:
* use s32 cast instead of int

Andi suggested using u32 type, but that breaks the test. The
values of delta_ns are visibly different when crtc_htotal is
cast to unsigned value. Here are a few before any changes:

delta_ns: 11229629
delta_ns: 11244444
delta_ns: -592592
delta_ns: -222222
delta_ns: 15985185
delta_ns: -562962
delta_ns: -548148
delta_ns: -400000
delta_ns: -592592
delta_ns: -607407
delta_ns: -592592
delta_ns: -577777

with cast to s32:

delta_ns: 5348148
delta_ns: 5362962
delta_ns: -592592
delta_ns: -162962
delta_ns: 15985185
delta_ns: -562962
delta_ns: -548148
delta_ns: -340740
delta_ns: -607407
delta_ns: -651851
delta_ns: -651851
delta_ns: -637037

with cast to u32:

delta_ns: 4607407
delta_ns: 4622222
delta_ns: -1143084231
delta_ns: -1142580527
delta_ns: 15985185
delta_ns: -1142995342
delta_ns: -1142980527
delta_ns: -1142832379
delta_ns: -1143084231
delta_ns: -1143069416
delta_ns: -1143069416
delta_ns: -1143069416

There is a jump for the negative values from 6 digits to 10.

 drivers/gpu/drm/drm_vblank.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 61e211fd3c9c..13c771d766be 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -791,7 +791,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	 * since start of scanout at first display scanline. delta_ns
 	 * can be negative if start of scanout hasn't happened yet.
 	 */
-	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
+	delta_ns = div_s64(1000000LL * (vpos * (s32)mode->crtc_htotal + hpos),
 			   mode->crtc_clock);
 
 	/* Subtract time delta from raw timestamp to get final
-- 
2.34.1

