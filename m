Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F50FBE09F8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 22:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437F310E8E0;
	Wed, 15 Oct 2025 20:24:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UO8gvhpE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F9E10E8DE;
 Wed, 15 Oct 2025 20:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760559839; x=1792095839;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DeevYy3w5VvFzAygCNYri8K9Sfv4rs6Scm9L31o00PE=;
 b=UO8gvhpEUwvZsyFagyMQWjVqEifO0Ewa+3gvoaW3NhoD6GDJofbDEBdm
 CcI37S1si+pyR1r8mf/mLc52YiGTd5DBDU83v/KDoQMcZ1shCrONoS2xD
 gTKSvqXiysm8ul/w0B2iVODO37bY17Mq78N/bydpqRf/1goC+HGB2ay2t
 YV36XDK+Iwx4pdCal3A3cXAHieaM0jKefo4wHRfHODMYMYEcoMnKg9+w1
 iY6BQYJ9WBG30F7Bp6cTOhWGRlxBDJNYA7HuU+3U/N7baT7zQO9E+mtkx
 i77fITL67/g6ahlkjis9qXVltSAcyFVTfI3Qt+vY8wBqwJCeQVhJITPP2 w==;
X-CSE-ConnectionGUID: fFv3p9CaSjObkiAAkq/8cQ==
X-CSE-MsgGUID: kARlcTLPTwet45Qx2AQ8MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73024477"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="73024477"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 13:23:56 -0700
X-CSE-ConnectionGUID: PNygUrJhQdKknjcmLPKPdA==
X-CSE-MsgGUID: 4eG72TuVRKOra/BV6yiw3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="181939155"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 13:23:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 13:23:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 13:23:55 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.23) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 13:23:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nzCm5DAK2XJMx+spy2M3R+g5uXbWnkAzX+W7Xx+ibihJZVsHjRQUErvc5kvxzqKULJzvseXMntKabkv7ZV/b9t2sDZtbaFPB4xI5s1XcThi58uqQJVEs4yJd75FLCvtFFMaXTp3ab2MaC2tXp9gG7kz3M6bENv3wVxXnCdRThZJU1dEzYIcFfNOoWVTYYMnOhql0kksqjvTtQpInywBYubbvHOVZvc7wMA6umVG6nVjP8UhvDlHzvIN3WJvdociyBOpsiLvL58C+Vp6XEZTw5qvcu2gcrrJCENH6uBycYufl0s4gMZyoGin6GLeEYNbvsJiH2SAxcvo4b+4XOyZK9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xLd9NDhP7HvK+p/8mtmGZpp42YT4oO0aU0WyYqGzJo4=;
 b=ErwTWBPjQanQYepTUcxxb4iaQ4hLJdg3GVRCin1VC2Rf4KBXZZHqbQcAw9tiMWSGJtPk9ImLtVHq+qOaw0LrAo46NJ2wbgHF3KFSejToA5UsP0IFKtN7txiosNpVO+M2T/rgxTaGJPYTnwSMhOrtWLsRLyel99OaTd8MOHFxIZj3etfapndb5lF68dP/hhgdt9+QKkk5XtPkjNjwHhoqg6yn2XW0xdhP2zZ9k/mT5mMJ4dpgDO97F5c8XHu450ZRWuIKfZ6maQxbHphXEs4PoXmd60uIemENuZVrv87oWwmFXNRRWlWwJemFUB4h6315SFQ77D6ZEPoD7zpIvRJXXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by PH7PR11MB8012.namprd11.prod.outlook.com
 (2603:10b6:510:24b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Wed, 15 Oct
 2025 20:23:53 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 20:23:53 +0000
Date: Wed, 15 Oct 2025 13:23:47 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 08/32] drm/i915/xe3p_lpd: Support UINT16 formats
Message-ID: <aPAC08kpBieRb_CP@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-8-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-8-d2d1e26520aa@intel.com>
X-ClientProxiedBy: BY5PR20CA0020.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::33) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|PH7PR11MB8012:EE_
X-MS-Office365-Filtering-Correlation-Id: d04a7cc0-c2ed-43cc-eee1-08de0c28c27e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U2ZTZ0NrTkRvYmxHdVdpZUNPSUhPQjZwQWpFeDg0T3k3UnJmYmFxbHBmaXJP?=
 =?utf-8?B?THNrelV6bHdJbWpKT0JISEdwTTVaRWg5bkZjTTFBN1RreHc2ME1mMExpeGVw?=
 =?utf-8?B?aGlHbi8ycEFLWStad20wd0U1dGdBM01FUmhOdU5aZVhEbkJPbmFuQTRlMm8w?=
 =?utf-8?B?RlVQT2FBemJRNUlNK0lyTmF0U3NIZUNNa25uSzh3M2diaUJGMUl4MlFxaW1R?=
 =?utf-8?B?aDNXSStRcWlvNFlQUFZwdUl0S0EySEI4Yi9zRTJMNXdIaG82YUZQd0EzMG94?=
 =?utf-8?B?T3d5QzVyeURzSEduRytubUc4aUFjeTVxUTZiVjJ3bjJGQ0RjNHh3UEdkRjli?=
 =?utf-8?B?MldwVHlHZHpJSFZCOW5icDNEaUhwRjU4dytnSE9JbTBXSVlSODVxYmxZNjZq?=
 =?utf-8?B?NDg5SnBPY3lMWjhhMDJIeFMxQjhsWDJvY1U3amNyOEQ4VURYcWlHM281K3NW?=
 =?utf-8?B?d0hPM1I2M3l1OWROWkhET0lqY3U5VjVMb3hHQ3J6LzBrM2VmMDBBTW56d29r?=
 =?utf-8?B?aEswdThkY1B6OUQzZTNqZjB1MFl2TldmdUZVNEEwUkJVR0xjbjEwdndXdUpZ?=
 =?utf-8?B?T2VpMERrLytkQXZDRzNGWXIzR3Z0L3k5ZmRvbkFqMGJ2SW02OVhadFp0M1Jq?=
 =?utf-8?B?cWlsWDFJMll2U1FTS3RiSDY0YVV5YU14dmNtZ2ZEbzR2UFFwbndHSUpURnN3?=
 =?utf-8?B?K0lsV3RYYTRqWkhDVWI0MTcyOVZuTDF0MFhoWGRHaVV1Wko3aHV6TlgvdTBa?=
 =?utf-8?B?MzQzQTJ3VnpnNEhYajNOTW03TkYzWTdGVWFDdlJJZ3lWSERGRE9qSnlFd0xV?=
 =?utf-8?B?eE9rOUpLZ1JSWi9ydGJjNm1wREFUVHpnYVhjUlMrMDVEYVFRSCt2M0F4L1or?=
 =?utf-8?B?NVFEZ2dFK1NSQ3lnWmc1a0MxRHlSNHRhMTdrcVFkVTZjeGU2dGEvclBNU2xF?=
 =?utf-8?B?RGVCWkg1c1RhUlVVeTVMcy9ERE5ZKzJIcW9UK21zNFVhcmxETFE2ci9qMHNl?=
 =?utf-8?B?MVdoMm9RdisxdzZUa2ZpOVVLa1pMdGdzdktuTFlwK2dXK3lDNDdvRDB5NVJ1?=
 =?utf-8?B?QU9heHF0OXdXYUcrR1FDakh0TUh3QnRvZHozUnArY0FYS0k0ZjlGQ1dkYlY2?=
 =?utf-8?B?THovcWVnNTdZdG9LeHdXSy9XSEIvS1JtdEFXeTFmcHZQRmFKekxUc25FT21F?=
 =?utf-8?B?cUNkRjRWMUxJbmJYanRBTSszTXBNaGxpUDBzRExPUmtZNUVTZ0FjcWYrNUFm?=
 =?utf-8?B?S3BrZGlKdGNoZDVWaXZkcTJnLzBEeExlVjh4UDFML21uYWNxRkhWS2JQTkxj?=
 =?utf-8?B?VXpIeUdjaHh2WHptMjhGS0NWOVZxS0phUlFkR0hRL3EyTUNYd2RVVjdGRjlF?=
 =?utf-8?B?dnVrajNEUVBQY1JwbkdLVDl3bVltc0c0cUtNWHV3QTJQK3hrbUg3cUlNODdy?=
 =?utf-8?B?SlRRL0NaNndvYTFsYm9FUHRGUEFDODhwaVJVZFNjYzZtWVBUdnlSbVVpK0hX?=
 =?utf-8?B?RFhDN25MQ3k5ajVjczJnWjlaS3h3NVVJRnBSNk5hTWRQSFJ3S0tTMU9aWEZG?=
 =?utf-8?B?UzEzU2FjTXBjSUZyU2FNbHVZdEpaRDlaM2tDQkZOWFlRWkxvZXZYYkVSd3Nu?=
 =?utf-8?B?WkM4bXp0ZVIzK0xIaTJjTFdkWEpzRFNTL2J3WDh6ZE5YRnAwa3N5WEJnWDJv?=
 =?utf-8?B?dUE0Y2hnbHAwNmcwMklRdTVnRnlvTnIwRStrSUV6anVOc0V3MmU5SEQ5V0pY?=
 =?utf-8?B?S3lBU1g4cXhmZEtVT3V1UStud1MybE1zMkxLTG42TGNWdUFGTEdtMDF5dExM?=
 =?utf-8?B?QU9ZMTc2RTVPKzRsbXpNZGFoc2x4SWJ3ZG92aHVNTDFqazVJUlBETUxnTXh4?=
 =?utf-8?B?d0h1OGt2L1l6RjNPWXdlaWhEc1BLaE8wM2VtcklQWWxkWGNKT2FIc2hqbDU5?=
 =?utf-8?Q?HygnAvc2Dj8I5M7otZ+PdFzchybxD3D9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVpyYnE0cWVvbzBHZHpDK2ZidzlzU3pLN1BjOU1XMHRXajVKMkNGc3pQV2hr?=
 =?utf-8?B?bDVzWXJPekpYWEZkVGxzN2dRclYrdXZaNVU2TnhOR1Y5S245eHRITDJnanFi?=
 =?utf-8?B?ZjgxUU01UWRUbGt4V0ZERDhBK2tYejZPQmJ1S3pvQXVNV1JvdXl3dmhtdHM1?=
 =?utf-8?B?Wk5rNkdqMk5SbzVvYzc3SWNNd3JCSis1eHVOYTczYWtlUFlubDAwUkI2UEUw?=
 =?utf-8?B?UjNsVHRFd0I1L2FldS9uWFZuN2JnMTREZk1MK1g2cENSbGZVNGxXV1BVZUJM?=
 =?utf-8?B?WndDdFZHRWhsS3lHRXVhdElEbHBuUE5QL2RsVXNBZjRXdlhERmdXanVNZzZl?=
 =?utf-8?B?aTRWSjB0KzNtZlowTFYvNUdMaEsrVWF3enJYQkNJbm5mbVNkbU02L3RDRzB5?=
 =?utf-8?B?VmV1a01pY3FqU283ZWlzRk42Y2M4K0JSOGhNeHNVMkJPR2JNbTlnZjdhQmkv?=
 =?utf-8?B?K1kxcHRETHpPUWNDQTRsVjdBdHBDb01GcEFicVBUVUZrTWU5dlI1cFZxcnpM?=
 =?utf-8?B?MUZINHhEZzFQZEd3Wi9IcFdlanRhNmxqcHlOQ2lNbjJxQzlYZ3hWVVFNekdW?=
 =?utf-8?B?MnpOT1IzOFJwRG8vbURNYmpEWEZxcDkrYThuSjBtWWpiVnhreG9yQ3RtVUlC?=
 =?utf-8?B?NUtKeUY1NGd1bUlXbUZyNXQ1YlRRTXd4dTlHTHFKTk9LenhtbTh3amltRjZL?=
 =?utf-8?B?YTZrUUdGaGVFSC9qMloyNFFGQTdZTHBJdGVHV0Q5SFhXSlhqaE1FNUdPdFZv?=
 =?utf-8?B?WUtKa0RHdmpPY0NxbHBIWW1meTN5TkNMME90MEd4bWdOOUR0WXYrZkZCWGpN?=
 =?utf-8?B?THJxTkVrZ0Jwalk4eW1udGYxTHA3MG52TEdVd0hZQzlpaVhzcjJPSlVTUTFP?=
 =?utf-8?B?Tm04YlMvdXI2c2RVY0NXZWZtUDVtVkVoV0NTb0Frc1pvMEQycWtsMDJFK29D?=
 =?utf-8?B?QVQ5OE9XVmRXTThMYklKZTJocDVCY29pcDgrMEY5U3BTSFprOG5xS0JQcWk4?=
 =?utf-8?B?SHMxdklKMWlodVptcHg3aFRNUXR1SHh4YTN1bk5tcG5Ibi9NZTFiYzVwS3ZQ?=
 =?utf-8?B?STlWckRnc1Q1aUhpUGhsV1MrQzZQM1BTeGhvb1c1d1dwcmREbDFyV1pndWNZ?=
 =?utf-8?B?VUIvR1puUWFYNndKcVFJOTYydDlMemI2Y0FwZjh4ZkhTbE9CQWtncHk4VFdv?=
 =?utf-8?B?SXd2SXd3SXNwWmNCZytyUHkxaiswRDZ4Q0xYMlFBT0NjSThIOVU1clFPTExz?=
 =?utf-8?B?MFg3NCs2bUcxTXU2TkxnUVVYbTFXcE8wc2RwaXQvQlVQeVFSQit5NDhud29V?=
 =?utf-8?B?aStYd2JFT2wrT1AxaTRhNFFrQ09OYXNZblNuTC9KbktNOGhZYjBpZGpzd3BE?=
 =?utf-8?B?aXJkbFNRVDdKNE1zTlhSdUpiR0l3NlhKQXJCcEtqYzFTakhPOVFTamRSalFX?=
 =?utf-8?B?emMxUzNQb012Ty8ya1NWUCtpSjZVcUNmTTFFT2JXRkJwS1IzeVIrUVBpUWVz?=
 =?utf-8?B?RU05Y1ZCb0FqVTQ4NkpqRExyaVZLSEY0OWM3ZEM1M2VnQjFoa0dCMU43UnNK?=
 =?utf-8?B?cjVSYVdRQklrQklHWHREWmJ5NXgveDFTUWZVaGdXbG9BRGhlQkJ2d1ZNVGFu?=
 =?utf-8?B?REF6MGlvd3ZHMlhZSjJpbkcwZ2J5eHZhazJKSEpDNlFWeXBoNndPMTNkNnl6?=
 =?utf-8?B?RTN2VXltZTh6N0dnL1BJQThxOFB6U3VrcGRRMWxVamcwQmIrUzFuWjN4amlD?=
 =?utf-8?B?OEtjNEc4dEsyOWdYTVNzV0hHMkVETmVtUGJxQW9hZUMvbW1ZMTFjdlRTVk96?=
 =?utf-8?B?ZDJ3c0pkL3NWL3hpNkkwREQ3VlJ2RU1DNXNNSkxXcENTU0tjS2hzcjhFcUFQ?=
 =?utf-8?B?R1BxdTYvbHR2UW9WbC9tWGgxejNVMDVGNTlWN0pFbEIzWGduVU52MmJadW9L?=
 =?utf-8?B?bjgveWhiZE5jd21YRjlpMkNUcElqdjZRdTNIa2E1RjhZRGRaYmtJVWtmVkZZ?=
 =?utf-8?B?bXNEbkFmcUh3dTJSZTBYejZDUU9yVWUwRjAzRDZhN05EaVJaOUNEQ1lVMngr?=
 =?utf-8?B?MjNUbDhmZVpYWUxEQTNGWGtmNUJGWHZvMDdJWVFWR1g1bkg2ME94ZnZtYTcr?=
 =?utf-8?B?MkRyVWZ4UCtHdGkwV1lxSnpvKzZ5SlZTY1h5Y09CbC9mQkRPODk4bTZITnpn?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d04a7cc0-c2ed-43cc-eee1-08de0c28c27e
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 20:23:53.6389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X/ImbYnCbgvGRcrzqnh1DErkC9/Ubfknp/CF5NGjBVslkjC4tBh9hC0T7KNeEz/gx3CxDFw3UQkAs0TYY0iUu5N/1u0B8f+uMFUDNETB0p4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8012
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

On Wed, Oct 15, 2025 at 12:15:08AM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> Starting from display Xe3p_LPD, UINT16 formats are also supported. Add
> its corresponding PLANE_CTL bit and add the format in the necessary
> functions.
> 
> Bspec: 68904, 69853
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 96 +++++++++++++++-------
>  .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
>  2 files changed, 68 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 0319174adf95..530adff81b99 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -136,36 +136,47 @@ static const u32 icl_sdr_uv_plane_formats[] = {
>  	DRM_FORMAT_XVYU2101010,
>  };
>  
> +#define ICL_HDR_PLANE_FORMATS		\
> +	DRM_FORMAT_C8,			\
> +	DRM_FORMAT_RGB565,		\
> +	DRM_FORMAT_XRGB8888,		\
> +	DRM_FORMAT_XBGR8888,		\
> +	DRM_FORMAT_ARGB8888,		\
> +	DRM_FORMAT_ABGR8888,		\
> +	DRM_FORMAT_XRGB2101010,		\
> +	DRM_FORMAT_XBGR2101010,		\
> +	DRM_FORMAT_ARGB2101010,		\
> +	DRM_FORMAT_ABGR2101010,		\
> +	DRM_FORMAT_XRGB16161616F,	\
> +	DRM_FORMAT_XBGR16161616F,	\
> +	DRM_FORMAT_ARGB16161616F,	\
> +	DRM_FORMAT_ABGR16161616F,	\
> +	DRM_FORMAT_YUYV,		\
> +	DRM_FORMAT_YVYU,		\
> +	DRM_FORMAT_UYVY,		\
> +	DRM_FORMAT_VYUY,		\
> +	DRM_FORMAT_NV12,		\
> +	DRM_FORMAT_P010,		\
> +	DRM_FORMAT_P012,		\
> +	DRM_FORMAT_P016,		\
> +	DRM_FORMAT_Y210,		\
> +	DRM_FORMAT_Y212,		\
> +	DRM_FORMAT_Y216,		\
> +	DRM_FORMAT_XYUV8888,		\
> +	DRM_FORMAT_XVYU2101010,		\
> +	DRM_FORMAT_XVYU12_16161616,	\
> +	DRM_FORMAT_XVYU16161616
> +
>  static const u32 icl_hdr_plane_formats[] = {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_ARGB16161616F,
> -	DRM_FORMAT_ABGR16161616F,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
> +	ICL_HDR_PLANE_FORMATS,
> +};
> +
> +static const u32 xe3p_lpd_hdr_plane_formats[] = {
> +	ICL_HDR_PLANE_FORMATS,
> +	DRM_FORMAT_XRGB16161616,
> +	DRM_FORMAT_XBGR16161616,
> +	DRM_FORMAT_ARGB16161616,
> +	DRM_FORMAT_ABGR16161616,
>  };
>  
>  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> @@ -220,6 +231,18 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  			else
>  				return DRM_FORMAT_XRGB2101010;
>  		}
> +	case PLANE_CTL_FORMAT_XRGB_16161616:
> +		if (rgb_order) {
> +			if (alpha)
> +				return DRM_FORMAT_ABGR16161616;
> +			else
> +				return DRM_FORMAT_XBGR16161616;
> +		} else {
> +			if (alpha)
> +				return DRM_FORMAT_ARGB16161616;
> +			else
> +				return DRM_FORMAT_XRGB16161616;
> +		}
>  	case PLANE_CTL_FORMAT_XRGB_16161616F:
>  		if (rgb_order) {
>  			if (alpha)
> @@ -960,6 +983,12 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
>  	case DRM_FORMAT_XRGB2101010:
>  	case DRM_FORMAT_ARGB2101010:
>  		return PLANE_CTL_FORMAT_XRGB_2101010;
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +		return PLANE_CTL_FORMAT_XRGB_16161616 | PLANE_CTL_ORDER_RGBX;
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_ARGB16161616:
> +		return PLANE_CTL_FORMAT_XRGB_16161616;
>  	case DRM_FORMAT_XBGR16161616F:
>  	case DRM_FORMAT_ABGR16161616F:
>  		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
> @@ -2479,6 +2508,11 @@ static const u32 *icl_get_plane_formats(struct intel_display *display,
>  					int *num_formats)
>  {
>  	if (icl_is_hdr_plane(display, plane_id)) {
> +		if (DISPLAY_VER(display) >= 35) {
> +			*num_formats = ARRAY_SIZE(xe3p_lpd_hdr_plane_formats);
> +			return xe3p_lpd_hdr_plane_formats;
> +		}
> +
>  		*num_formats = ARRAY_SIZE(icl_hdr_plane_formats);
>  		return icl_hdr_plane_formats;
>  	} else if (icl_is_nv12_y_plane(display, plane_id)) {
> @@ -2637,6 +2671,10 @@ static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_RGB565:
>  	case DRM_FORMAT_XVYU2101010:
>  	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_ARGB16161616:
>  	case DRM_FORMAT_Y210:
>  	case DRM_FORMAT_Y212:
>  	case DRM_FORMAT_Y216:
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 479bb3f7f92b..84cf565bd653 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -64,6 +64,7 @@
>  #define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 7)
>  #define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 9)
>  #define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 11)
> +#define   PLANE_CTL_FORMAT_XRGB_16161616	REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 18)
>  #define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
>  #define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
>  #define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 1)
> 
> -- 
> 2.51.0
> 
