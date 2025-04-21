Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD270A9512C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 14:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE2E10E392;
	Mon, 21 Apr 2025 12:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHgibz2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989B810E392;
 Mon, 21 Apr 2025 12:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745239413; x=1776775413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YSb2zWaIh6iMoPRZbPxk+5/mJuZqP84Ka2ac2K5IhC8=;
 b=gHgibz2Wi05ZqCrHsfRTwKpnjG55I+jsU5MhbpeFpgYYrTrzI6h2i/bh
 A+M9WU2Zy5wlUspic4AumsGR5uyHBwvhXLiR+pXvzaNWrQAGnOzpOmEFy
 9Gy46YtBdWeeFPjucxJYtUMPcHe0hMvC6VBiOjm0g1gZ/XAnQRzKukYsK
 TNZUVAxQiUqeYZDcVBjqnohqko9rStVGj+Yca8/wPuDjiw4nfkqI3+3FN
 VLFjnuP/FIGCirsRNYtRiu20ZnsD8s9GgQn9v5mGEdMA6T3TpucvfoR7V
 gzK+TOFPLhlLcWQbQ8N/i5e8/9GlXbtOn8dN783ttay27SDve5cmt/8hX Q==;
X-CSE-ConnectionGUID: cExjvtbARCuX1/4ahUId9A==
X-CSE-MsgGUID: eRQm5e0XRBmLdcVehdE1zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="46942869"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="46942869"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:43:32 -0700
X-CSE-ConnectionGUID: NUz/PanWT6OhGtIqG5iL+w==
X-CSE-MsgGUID: xPwr267QTa+0ZfKEXB2WYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="132589456"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:43:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 05:43:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 05:43:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 05:43:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BdfENrG2eLmI5NaxblDKMwFpi+i0m83MiamCSVr/BPDCl6zkASvQsSUeYEsiwvFIbGWhR0PzEJgkWgfS+WxujztDFWy382qwdD4dCnZ7cQmJSEQ0qbBrcsE/qK9p3PvqceefZIkZ44O0PRAgzFoSYXrFv8I9GNVilo4JaoAi2oJHkjcLbuA/1bipgsepyDDVLv60oEOv2t+LsU49s7JqOmJ/a/e7ek68AN5YXJoAvx9tExhIE44wzRNX3aBFJcanLM1kJvIzyDVVhcHCldkoTSopCrSf/1Aowil6YansTo8sQ3mVFTe9yuU890G5WDHix3GN3IZzDixqyGVKTwU9eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YSb2zWaIh6iMoPRZbPxk+5/mJuZqP84Ka2ac2K5IhC8=;
 b=mfQuwoqLPOoiwPnAr4fD5I0Dw7QkuXyRZwsXRIBnQiasDtv2UUFyTZJaP4N8piVlxgHvBlTyo+hIFJ/FqFsZBKlhJoN093uFkTMdidBojACA85WU7AVr9g7+9XVXxztnD42xsdKIb454Mk61F7sMIh6W0DSv1GKZwKRI2nFbnbI9shqslB5/8H11TuObU0lqRSxt5gkDa6L9JRMLy0dGeKTSG8KdxCuIL+i3UyBGoDSw6mSN2MGxHLp/oLHYyDCjJ93BjSDQYZXkbquPdWo19MPKHOkaJb8X6dXp7RJ/gQhtG+oFQrcvwCMo3jHR5rxYozGgqgXayVG6NzyXTSBk1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Mon, 21 Apr
 2025 12:43:27 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8655.033; Mon, 21 Apr 2025
 12:43:27 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 02/11] drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
Thread-Topic: [PATCH 02/11] drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
Thread-Index: AQHbqHeZwK8gLj+l2kqZev1Z2Qy/LrOuJFQQ
Date: Mon, 21 Apr 2025 12:43:27 +0000
Message-ID: <PH7PR11MB598124A0A6FAB28F6D14F7B4F9B82@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-3-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-3-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB4988:EE_
x-ms-office365-filtering-correlation-id: 1e548e4c-5e4b-457e-f080-08dd80d21cf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NlBycWVLZGdRWXBHdytkazJOVXdrQjF1bHBKNzlNNWxRK3c4SjZTWGQ0WFM3?=
 =?utf-8?B?SWtpYlNqS2JWMFVLVG5sMjQxR3JHQnpQWVJJU0FtNkx4MEo4TjJPVmZJY251?=
 =?utf-8?B?cEtIa2YvWnl4L3kwNlU5bkwyTG82UmhDR2lDbTJUZTg1QWN5N3ZnNk5VRDJR?=
 =?utf-8?B?Q3g2emh5bmFqSmZxanNIcTB4VVVTKzFhN3BzaDdOdkFkNlFSV0ViMWpzQjYv?=
 =?utf-8?B?Mm5NL2xJWFZMNXcxbmQreTdqM3lZSHpmRjRxbjdqS2tYVmQwOEJScUNMTXV6?=
 =?utf-8?B?SGZPbVdGZ0xGdDA2bUxmVWlhVU5kWE1Ga2VhMktGOWRaOTNlLzg1MVZaNHNo?=
 =?utf-8?B?aGxNLzRzZVlnZ05oU205Rjkzc2VtUUtwR250OXZLb1lRSy9Zc1ZMNGlJVDRC?=
 =?utf-8?B?N200RXBuUHRva29WeEdoZytyV045alNwRVpnWWphWXAwWDc4aVQ4Q2FUWnh6?=
 =?utf-8?B?NXlPbkh6NGFocVFkL0VTbS9XT3BBcUxGUDM3Y3B0ZDZwcGprNVliQi9JYUdl?=
 =?utf-8?B?bG0wVlhMQnJjSWJ6ZnI3U1FtelZ3VXdyRVcvQk1uMVJnZ3lnaFBYUUtZNWhW?=
 =?utf-8?B?S01ldmxFKzhqdlBsOWUwYko4RTVaLzNOZGNDUXh2VllxbEIzbkh6VjNBcjVo?=
 =?utf-8?B?RXdkM29WRjVrSENGTG1JaVUrOVZQajY4WXE2Qy9FNFhndXdhUTV3blkvaXJR?=
 =?utf-8?B?TER1a21FbnRQSjBid3RCeHFJVTJabnJhQmdGdCtkNlBmOVNQOXlKb1k4ODh6?=
 =?utf-8?B?YjQvbm4zUW81WEd1d1VXMlhKdjRNRTZoSm9LOVlrMEN4S0pyWlZoWVBORDNB?=
 =?utf-8?B?SlBFT3ZsVW1MWm9WVzczMDE1M296N1ZncCtQdWN2YVczZkJxK0Q3bHdxT1lz?=
 =?utf-8?B?Z0hONzVWVXg3ODBTa3UrOHFOVUh2ay9FelVXVnY0TEthTmt2SVdHTUlnRmta?=
 =?utf-8?B?bTRvOTVEU2VyVldxdVBFZm1yajQvRzVyN3lzYU5heDA3a3lCMFFnL3lDNytl?=
 =?utf-8?B?WDl3TkE4QVZpT3BjaFFTRUQvM1crTngvbkd2UWwwZFNwZTB5cXVPTG1LbVhh?=
 =?utf-8?B?N21XMml5N0tDVnljVXlKeTZnbk9nS1dBZTZZZ1dReUtlRmV5dVk5SkNaTjA0?=
 =?utf-8?B?Yi9WdTB4VHJHUkJzbmhKL3JEcHdVMlJodkVra2M0eGdxb05tbkNTdG9ubitE?=
 =?utf-8?B?ZFZMak03cDJFajlFSUd2azhWK1dTRkk1ZmR3b0FpME5qcmlVODllYWYzYWZU?=
 =?utf-8?B?THhlRG1qTWVmY3B4ZXBlUEI0QlkrZzhZZHJwVEYxcE5VdUdkamxxUW9mR2RP?=
 =?utf-8?B?aFhQNlQ1TGwwbHdUaFI3MEp0NE1nSTVtNE1taXcxREx0VTlUSU45SE9JOGlk?=
 =?utf-8?B?YThRSDJkUHhFVng3U0wxWGNUNitoZVBzc00zVlUrYlVtUTljUDRNNzlvVnd2?=
 =?utf-8?B?K3FLNEYxa3lWZGhiMjhmbnFoNXJOaVpPRVhVZndwem5vZnZxOHZVUUdpZnRq?=
 =?utf-8?B?OCtPbWZpMXJ4Z1BldFRGMVNpb2dJbzBpOWUwcE1BcVVBYlFwZHlyZ0FveVVz?=
 =?utf-8?B?RGV4RUZUZ3UxSFlJZEQvVmxsZVhEVWExb3lSRWVKZ3lyTituWm5obWdUNjQ5?=
 =?utf-8?B?dlpyNStYelJLTy9YMjhXZGx3dVMybjhnT1NxMC9xWU52S3B5bEEwaGhBYi9G?=
 =?utf-8?B?bC9CSVBWV1poeUIvSWdRUE5qNEYwRitIQkR6VFYrNG82dThsb3dVMURpL0dQ?=
 =?utf-8?B?VVpzUDRHbWE5eE1jbDcxRWxWVURZN29WK25oZmpYR1p5TnFmazBobWF1cXJz?=
 =?utf-8?B?dGNFeDMrc243MGpjUkY2NGxQTFl0Y0xRUEpkS3FIbjNOUm1KWEt1a25ucEsx?=
 =?utf-8?B?d1kxQnpxQzZKek1EMEFoMkhKS0RPQi9IY2RqbzZDQjR4Znk2SVNiRjd4R2Mv?=
 =?utf-8?B?Y2tDTGZkWDhKR1Rra1Nxc0prbEVzSzVsalFsdUdHSFhoTzR3V3dLWTBmVXYx?=
 =?utf-8?Q?2fIKXyXfooIAzBtu8f1mOnfTcfDYdQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bnNTd1FiV21UMXNCWUE1TDBBR1pZcC9Nbm9rNTkvc3lkRkJLSTdNeTFycTZQ?=
 =?utf-8?B?WmZPc3FZaHdDcGZQb0g2QWx5VkZsa2V4RU80TjRvK3h2VlFWRlhBKzhkbzRH?=
 =?utf-8?B?Ti8rZFZZb3FlVkhYd0VzOElKWk01NWVvbm5BL2k5aG5SY1dERUNWTHpBeHlL?=
 =?utf-8?B?NVl1eGVTYmtWVmRvUFEzMzZhc1BXMmZRV0tNaDcwaXRDWHE4Ni9oZ1hyQzVT?=
 =?utf-8?B?Um00dlc2WUZ3ZFN5WVV0QlRlNS92L1B5WlRWM0RNcTFlc3pnNmxRSndDbTdU?=
 =?utf-8?B?a0xOaHNWYWJTNFhsVC9lMTN2MjQyRDkzdm4wTjBZVEU4UFY5QWFvLzk1bzdL?=
 =?utf-8?B?Vm92TzhJWUVablVsNDU0bHd5Z1dTZmRvQ0VteWUxbndITDYrVUpEYUxSZG4z?=
 =?utf-8?B?QWQzQkIwS1dkVmNxcVJxYmRrcFUzWno2WGVmSUFlQ3B0dVBYWE5TRVhkcVdk?=
 =?utf-8?B?MS9GcWVWQzFUSk5kYlQ1NVNxODJyOTZsNTNWUDljODluUngwaGp4VXdYN29s?=
 =?utf-8?B?VnlZTHpFQ0IrV2Z1c2pMMlpTVDkvOE1LR0ZWa0E4UjlmYnlzQ09pamRsQWNM?=
 =?utf-8?B?ZkZuVEk4UGZHTE1rUjcrRzhhQ0FEeGIxWDZTLzF2RkVmeDc2Ly82d2xKeXN4?=
 =?utf-8?B?dE5yY0FnM05KR1h5bytRR0RkdktTTk1QSG9UZGhYTGRtZmFHdmQycUtGZnIz?=
 =?utf-8?B?aVRuUzBVTjNVNXRGUnBIczdjSGdkdC9YOW9ZUnRoaXhtc1hnSGZxdHF2UG9l?=
 =?utf-8?B?Wk1RYUpISlJEeEZ6aExGSHEwZ08vckxpcnhqY2ZlTVQ3OFJoNjRhWUtIUXJq?=
 =?utf-8?B?YVJFVmF1R0gwL3NCTVI4Ym5KZkRHN3R6RmVwRVB1NEdYNVc3RWZTMlZCYkFq?=
 =?utf-8?B?MUR2eW02cXczRklzelZ2TVRtS0FsOWluTjBLak9XMTBrbW1Ba3VtQjhGZHhH?=
 =?utf-8?B?aWdxV0M5Y1VwemptVXppdzN2Sld4Zys4RmNuYnV2bTIzU1NsWVpuNDdQSFlj?=
 =?utf-8?B?YVpwK3BaTHE1MURsQVRISE16c20yT2RncDVUMDJMUlAxaWhUa0g0N1lyVWto?=
 =?utf-8?B?RlZRdVdlSWJFb3FVc1hDK1h2MXd4K0UzZ1ovemN2VzVlZ0dNa2NJZzVIalVn?=
 =?utf-8?B?NXZxOXJ4dGMyUG5UdVBXTzhkL0lEMzhpMUVxaS80QWdBVitWUXpFemtZRGFt?=
 =?utf-8?B?L1JpSmlxYkdOV3FHeWhselpsM3ZMeXUycFhPSU50bHJIcmZZdG91eDczRXhD?=
 =?utf-8?B?emZvNTNTYVpQY2VudHB4ajc4VFlsN2UwbnNtQlpHTU1LQXR5NUEzV3pxZ3Jn?=
 =?utf-8?B?U1dnUmNUUm1HZ0k2aGNHR1cwOHhBRFVRZkh5ZytMb0F2UGNDRytTSDM3Qmxs?=
 =?utf-8?B?b25Ea05sWkxCZ080VVJVT0I3YTZMcDM0UWx6N3JTTXFWcWlHbzBHU1hrbVh6?=
 =?utf-8?B?OTY1b2QyR3dOQ2hNZ3EwRlVPNVF4MDhEdmlWTFF1UDF5VFhJTTR1Sm5aZXBF?=
 =?utf-8?B?T0NsNXBIOUJDR2VLL2RtU29mbHNiMVVaMVBLNmUxU2dVWXI0ZkxsaDRCYmQr?=
 =?utf-8?B?UTJvSE5RcG1mdU9QZUhEQ3M3VUtDY1JZUjM5WS9VeEpsa21NcDd3TWZ5OGdH?=
 =?utf-8?B?Y3FEb0tCait2dkl3ZXBOZnJ5Q2Z6bGtFcThyOWk2am43V1l3YzgrWHVPQkIw?=
 =?utf-8?B?TW5LaXF2aDdYN0FGdFIxbHY3MEo5NlpqL0xzelhsL2srWXorUENza1I4MzNJ?=
 =?utf-8?B?enBOMkh6L3cvOEVwWFNtS09KT2pFWjRwb3JVdHpQTGhRMGlKTUVUaDFuUTl1?=
 =?utf-8?B?eFhQVHdnS05OVVp3bWF6Vk9PZGF0eXBwYTBZeEN4QVpaRUkxcjE3YXRYQVdp?=
 =?utf-8?B?OU00d3M1REx3aUNGajRWSmdPT0pScm5zMTdPcDB5MXFKWTFhRWxBVCtkTGta?=
 =?utf-8?B?cHlQZ3NqdjVXSUdLLzFVckVTaDVVcXFobWdiVkNISTF4U1VvY2xiM2RmSUN3?=
 =?utf-8?B?WjM4QmJxbFVCSjJNb0JLNWduR2dpcnhyd2YvNFlBd1l6cmd2UkxkcGNLd2tw?=
 =?utf-8?B?dGh4RzVoZnJlUTUvWVppL3hYVWN3OWcxVWFEdXBleDh3czBRS2hpT0FFdUFE?=
 =?utf-8?Q?l/icL3EPZzwoa5biio4VJqC0I?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e548e4c-5e4b-457e-f080-08dd80d21cf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 12:43:27.3713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3aL8xIQQphq3bf8QtEByQajNlhMht4Rq2W08iSpcDQXHDY2NNwE6x7ca4Xl7N5gNwRG+xPuW0e+H+KvXP12EnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2Rh
eSwgQXByaWwgOCwgMjAyNSA0OjMwIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47
DQo+IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5j
b20+OyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCAwMi8xMV0gZHJtL2k5MTUvZHNiOiBFeHRyYWN0IGFzc2VydF9kc2JfdGFpbF9p
c19hbGlnbmVkKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBFeHRyYWN0IHRoZSBEU0IgdGFpbCBhbGlnbm1lbnQgY2hl
Y2tzIGludG8gaGVscGVyLiBXZSBhbHJlYWR5IGhhdmUgdHdvIHVzZXMNCj4gb2YgdGhpcywgYW5k
IHNvbyB3ZSdsbCBnZXQgYSB0aGlyZC4NCg0KVHlwbyBzb29uLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KT3Ro
ZXIgY2hhbmdlcyBMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KDQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIHwgMTkgKysrKysrKysrKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggYzE2NmUwMmI4YWYwLi4wOGUzYmJl
YTFhNjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiBAQCAtMjA0LDYgKzIwNCwxNSBAQCBzdGF0aWMgYm9vbCBhc3NlcnRfZHNiX2hhc19yb29tKHN0
cnVjdCBpbnRlbF9kc2INCj4gKmRzYikNCj4gIAkJCSBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMt
PmJhc2UubmFtZSwgZHNiLT5pZCk7ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgYXNzZXJ0X2RzYl90
YWlsX2lzX2FsaWduZWQoc3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ICsJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMtPmJhc2UuZGV2KTsNCj4gKw0KPiArCXJldHVybiAh
ZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLA0KPiArCQkJICAgICFJU19BTElHTkVEKGRzYi0+ZnJl
ZV9wb3MgKiA0LA0KPiBDQUNIRUxJTkVfQllURVMpKTsgfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBp
bnRlbF9kc2JfZHVtcChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+ICAJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+IEBAIC02MjEsMTAgKzYzMCwxMSBAQCBzdGF0aWMg
dm9pZCBfaW50ZWxfZHNiX2NoYWluKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIGRzYi0+aWQgPT0gY2hhaW5lZF9k
c2ItPmlkKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQl0YWlsID0gY2hhaW5lZF9kc2ItPmZyZWVf
cG9zICogNDsNCj4gLQlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAhSVNfQUxJR05FRCh0
YWlsLA0KPiBDQUNIRUxJTkVfQllURVMpKSkNCj4gKwlpZiAoIWFzc2VydF9kc2JfdGFpbF9pc19h
bGlnbmVkKGNoYWluZWRfZHNiKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gKwl0YWlsID0gY2hhaW5l
ZF9kc2ItPmZyZWVfcG9zICogNDsNCj4gKw0KPiAgCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBE
U0JfQ1RSTChwaXBlLCBjaGFpbmVkX2RzYi0+aWQpLA0KPiAgCQkJICAgIGN0cmwgfCBEU0JfRU5B
QkxFKTsNCj4gDQo+IEBAIC02OTUsMTAgKzcwNSwxMSBAQCBzdGF0aWMgdm9pZCBfaW50ZWxfZHNi
X2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiDQo+ICpkc2IsIHUzMiBjdHJsLA0KPiAgCWVudW0gcGlw
ZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gIAl1MzIgdGFpbDsNCj4gDQo+IC0JdGFpbCA9IGRzYi0+
ZnJlZV9wb3MgKiA0Ow0KPiAtCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFJU19BTElH
TkVEKHRhaWwsDQo+IENBQ0hFTElORV9CWVRFUykpKQ0KPiArCWlmICghYXNzZXJ0X2RzYl90YWls
X2lzX2FsaWduZWQoZHNiKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gKwl0YWlsID0gZHNiLT5mcmVl
X3BvcyAqIDQ7DQo+ICsNCj4gIAlpZiAoaXNfZHNiX2J1c3koZGlzcGxheSwgcGlwZSwgZHNiLT5p
ZCkpIHsNCj4gIAkJZHJtX2VycihkaXNwbGF5LT5kcm0sICJbQ1JUQzolZDolc10gRFNCICVkIGlz
IGJ1c3lcbiIsDQo+ICAJCQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgZHNi
LT5pZCk7DQo+IC0tDQo+IDIuMjUuMQ0KDQo=
