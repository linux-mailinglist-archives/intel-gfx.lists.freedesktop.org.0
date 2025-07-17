Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB74EB08FB5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 16:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628AE10E83E;
	Thu, 17 Jul 2025 14:41:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EOkDCp1y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2F610E83E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 14:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752763302; x=1784299302;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+WXDf3B13JzPiCTM6OZspOyb9d/X1C6hac3c+w0n6pU=;
 b=EOkDCp1y9DBQxfIq1l78p2xyQIcF7a+dQOTaryjNtpfd+gOQ/pMP0V4I
 ZqV1HvxtqllhZSxfNWM3QX5qiIBhpnut9pPj1X8BZ69MB7mbAfvwAWSFS
 W3juFCvGDGVbGxuWBZGBO782g1hInM4zEGoQqCrc6CXFe+G/wj6ct87C2
 cz+2OgBkd8qplXslX5JZ5TSXR7YGDP3ehNq25+jTiyUjKj5qaxPqsTPqb
 0Oda/ypeqCrHvs33iONs5dztvLWW6FSq4A70d9JP19A21/Gb4qZ0zrpzN
 5TY52XTgfO0rfa1vl5XXXPsUPovUecKDLsya4J3/3GPljEvBRUjkx94S2 A==;
X-CSE-ConnectionGUID: 7g9uhBQLQG+h95ZijvBB5w==
X-CSE-MsgGUID: aerChhBIS7mP7BhDSSkJSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66490229"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="66490229"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:41:42 -0700
X-CSE-ConnectionGUID: WWlDow6mR6OCl2bZWwpg8A==
X-CSE-MsgGUID: CUvwDLcVT0iu4Hnb/XgXJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="157883765"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:41:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 07:41:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 07:41:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 07:41:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LXM0SMeluljufFY2qRUtXQOl0Z5cKnnIHja/FRzPFAEeTHHaFWQjeeLz9YfYdk5C4W9qAxFBVjyjj1g5di9iib4NaadbCDWjKrtpnQRUdO1Q49OlDrNYTMv7DvNNVqmkR/3Mcv+p8I3+4YhiBJd1J+niX/wkhsOEdgaYrF/8vJxPeiVUrJArdBHE/CbTZnlOv7yKE2BAoo+uHuUNGohLBdVt0MPG6P9D6DoetFLaVXFoFhMnTDdAUwXsJzVUtbWiJl54Mbq0nd3BJNbXxISO7gJY84ro/uzikNOZeksVbxZIoKb4nwz2HVCi6Rf3cXEf09Ox+3HpsHTneUX7zHW/vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/ttgyb9QlaveCFvsqN8boMGaheFo0tXcytTGVRt61o=;
 b=yzEVfGCvXevvo6/AtjcInWErGj+1a673b3JMWgdhi5/nETFecxACKKED+U0/rrN7P9DuG1QBAqCGAzyFyTya85AdN82Amgjpko0N12nQXHgdsV2sxB0gfZVfGK/eLjtR4AgL9/pY0W+EKN2YfdOuEbmvsnd2d5ESnwaCYQbg6j7q7PRIo0IAnoGEvSr/swfeXJd3kb37BngtaUj6hG3LCfoz3lyCvbjuulqw6f+7+nZVA0nymDatxq5VA2bi5Sy0shXbEy7PizUekYaeBe0CziXQwOmuEPnUlZgu+2U97m93H4aA1MnXlfQCYODBMUgBJruvE8HjW062jEgLrQTJSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ2PR11MB7546.namprd11.prod.outlook.com (2603:10b6:a03:4cc::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 14:41:33 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 14:41:32 +0000
Date: Thu, 17 Jul 2025 14:41:26 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <uzbz4g5cvqxz4jzxxpmjfradlmyedvmo35acwnzgfvlqrwpjsg@apwycjtbv3al>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-3-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-3-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA0P291CA0009.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::9)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ2PR11MB7546:EE_
X-MS-Office365-Filtering-Correlation-Id: 8615db55-5d5d-476b-3538-08ddc54005b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVRhQ3ZzNDlTSm5ubzVHS3ZBdG5wbVErZlpVdHFuUFhXNWhCY3FRTkkwdUhy?=
 =?utf-8?B?d3VhY01IUC9IWFh4SG5GTmI3bk1vUGdVbGU5QmwwYmI3K2JQWVM3YlQzTGNj?=
 =?utf-8?B?ZmowbGp6OFdIeUZPTC81MGtheGtOVWtzbjV2STFmdWNyMy9oS0UxcHp5N1hz?=
 =?utf-8?B?Rm1GY24xZ252YkN4TVlWeDhZZlM4dklTUFFIVkJ3N1JMQ2dwalhybEd5SWcy?=
 =?utf-8?B?WUlOclJOZ3B2NkNzcm9uZUxZRU1CYysvZ3UxZzRzYlNFWlczcTIrckdOUjRq?=
 =?utf-8?B?YTA4UDRCSFN4N1FvV3FiSGRNVi9Ydlk4UlFxTzNjdnhvdXJBUUY5YUU2Snpa?=
 =?utf-8?B?WjVwYVZtVzBtVys3ME1UZzZhc0JIVk92YVdObndHVE50dkhFMmtNR0FRdVBP?=
 =?utf-8?B?ZE5yR0xvVVBFWCtNVlI1WTRoU09OZ3pnWDBOSkxqRTg5SytRbFB3NnlYb0R6?=
 =?utf-8?B?TUR0d3IzRnFGdkVRRXFpdWlrK2huU3UzTlA3Y3ZYM1kxaWNUa2Z0cG5XZWJ0?=
 =?utf-8?B?RVU4Zjc5WkdsNUhFRDVidkJTZThxTG9oNWYzZHA5c296TEdyN0lVQ25JWUJN?=
 =?utf-8?B?Tm5xRkhBRFNTR0RTd21LVG4wdDIwRXdETnFmdmtPczk3SWY4VXJSZWhBamtY?=
 =?utf-8?B?ZU1nbWM0U2FDL3RnN2Fpckp5cHIwdytGSFJHWTVRVUwwWWUvM1dDWmpTckdj?=
 =?utf-8?B?ZFBXQ256Sy8xTkwvQzlXaWw2NlhUN2FwUStYR2ZpRmFTdmZyc0plc1I4anVY?=
 =?utf-8?B?NlpHbXd1bWkwMFlGMGdVRDkwSEtuUDlsTTNJbHFCMXNJZlFUT0hJUWRpOFh1?=
 =?utf-8?B?UStLNzNmdGpjc2hyMm9CT1k4M2xEeDF3SHpwR3o1OE9OeTNaSGVnY2NSc3Rx?=
 =?utf-8?B?MWJ0Z0c1ek9UQ1BRUnd3cFUyVjBTUnc4alMvTWx6TnpTLzUzanM4NXE0OUZr?=
 =?utf-8?B?ekJOcUVIR0FkbVRmdUdlb3E3UnZwcUNGTXpyWU1nM1ZuQmEyWnRlN3NFell4?=
 =?utf-8?B?WXBlNjBVeWtuWVJvNzNUZWhPczdML1kyUTVjNDJsUThjaFRzUGpXOFZRWXJm?=
 =?utf-8?B?OWh6blpmZWlhLzQvWksrZndpMDk0SFpySU44YzNGS3FBb3BBVnlobVQ5Rmpk?=
 =?utf-8?B?VjZjRGdvZ2s5cFNab2xtZXRoTDB6b09VdXVqNjN4OXFsU3o3VkloL0VnMElx?=
 =?utf-8?B?bTNpTFdUL3krODkrRVJoNngrRVhKamw3U3NLOXpEVTkwU0tGaWxiRzRZNDNq?=
 =?utf-8?B?WS92MllHaU9ZMFBpamcvZUNIL25Ea1psUlhqWVA1Rm5GK3BjZ2p4dkhwNWp5?=
 =?utf-8?B?UXFEOW5ua3FKQTFIdGd4US9selNKbkJjcEZYcUhZQzdBNFoxZzRHMDZzYXJn?=
 =?utf-8?B?TUlTOWpzWllzeDB5Z28wV1VyanZzcE56MzdHR3FIaTQwK1FsYXU1cFhmMEp5?=
 =?utf-8?B?MEd6ZnFwQ3VPcFhCR0U3and4UnROenh6RC9aeTZOemw2VmVGdVVLRTNzUVRJ?=
 =?utf-8?B?ZWJ6QnZZeWRHek9MNEdOWjZkUEZlYmFKSWtqd0hiWDdCclBoQzh1bUVYNDdw?=
 =?utf-8?B?bEdHdEgxNDFRK2s5RFJlYjlESHNoREYycmppYTNUdnkyKzYyVmlSNzJZazNv?=
 =?utf-8?B?di9uVUdmVjIrMGM4bHRxL3RqSVEyMklUMEhzU0YxbXRJalZ1Z1VQd3dLNE55?=
 =?utf-8?B?Tmh0Z3NrcnRXRXpleWlLa2hwZmFMbWRzY0VwMC9weldjRnhvam96cmJTTlF4?=
 =?utf-8?B?SnZndkNMRlF0MExaQ3FuZVk1emFhMWJ3SXUwRzJreWwremJETU1pZTh5VFdW?=
 =?utf-8?B?T3QwcjBSSUxPN29yR0ZYNWdsdi9JK0tZaDZEaE5YdThUQ3FwK0d5RGQ1Y3Jo?=
 =?utf-8?B?WFRtc0d6MCtlVG12YWdteXNwR0I4YVNTRWN4TUNVdlgvMVRZSldQVHBaUjRo?=
 =?utf-8?Q?rzvagFUJYag=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3k1TUtva3poQ2svVWtDdkNYZDNiS0U4RlJuRjFXTmJITE1hSlI5d0Q0WVNu?=
 =?utf-8?B?eXF6TElxT214UWpEUG9RVGV3bysweXkwYVVGOUM1eTVRckZrMzhqamdndHJO?=
 =?utf-8?B?aU1BNE1GSmpVTldheFhkRUhUOVNxdldPdDNSL2x2cFlhU2V4dzB0Q1BxaENN?=
 =?utf-8?B?L1FRc2Q1WGpPb253UkNHTnZLbHlUQ1hNZXloOHI3OTJjUDdTSUQ1Wm5pdXNM?=
 =?utf-8?B?ZDJaNWd6RWoxUmtteHVjLzczeHNkU211Wk5XUmdwaU42dnNVT3habnFLVk5P?=
 =?utf-8?B?ZzM3OUlUY1ArZkFxZzdKVlozS1FWV3lKNVQ0R29BejhEbjdkSU03eUF4c0NO?=
 =?utf-8?B?YnBMWG5MUmxnL0lwcFRlK2FKZC9WbW14U0NubnI0L1p2a2NqbGJyNUZMQklW?=
 =?utf-8?B?QW5xakdYenlkQ0ZTNFB0NnVLc3JCYTNIdWR5K3hhRDFTdTVsZzRGOGlCS0Jp?=
 =?utf-8?B?U3FwYW9SdFVtVFVYVWdtcWM3dEthYVZFRWFtQ3N3REZML2k5YSszRHVzRVhG?=
 =?utf-8?B?RllUeko2elJJNTJKeFJLdjN0aE1GNEpiQ1dlVUF3ZUZ2RTNBRHlCTlZsWW51?=
 =?utf-8?B?Zm50bHA2YmlMNnd5UVpwY2lEbUhid2w3TTBmUmF4bnRQNTRTb05VNklqV25V?=
 =?utf-8?B?ck1uV2k3bk5FRWxpanNzNVF3YkRhbUpIUzVPeThNT0UyeHlYK2k2ZkU3VFdD?=
 =?utf-8?B?a3M2cGVsc3N5bTRRZ3hGODdpanZFZWpVMzdjYXNlNDBiK1h4RHlzbjFwR2Fj?=
 =?utf-8?B?TlJJc0tpa2JTR0pGTElwT0pLVHR4U00yWm5RMVhxc0d3WFBQN0tRUHdFTjFh?=
 =?utf-8?B?VWw1ZGRDWDRpMW1WbnV5NzJKakZXQUVobVF5QVJUM0p1WTNobENDYVVGZU1a?=
 =?utf-8?B?cW1hTUovY1lDRVBBOHBNenZJU3hDUVVpdVhaRzVYQy9oanp0eTNIbXlVYUx5?=
 =?utf-8?B?MU9ZaW16eWNwQWRweWJqS0V6cmd3cEgzN2xyaUwvYW9JS09MRE1mcTRMOWdh?=
 =?utf-8?B?SGM2NWZ6L2dHRXAza2FmeExoK2NNODFkTmZ3ZDlVSzJwckZEdEw4ZnNveCtw?=
 =?utf-8?B?RHNYTW5LWWZ6MGNkbTF0cG4vbEpoQ0pPWStMNmlIN0pURFVzMU1VSCthM1hV?=
 =?utf-8?B?WWZnOTZzSDBJMWZpYWxweHFHYzVqRFFDMmZ6V3BieWIxaDBWOGY0VlBqOEJL?=
 =?utf-8?B?bDFpVWlMazRHamhvekFXM1ZJQXdpSkp5Qjg0c1JyNGsvMzZCSytqTDd0ZDNa?=
 =?utf-8?B?clRNU1JWSGk2R092dnZDMkhOUi9KeTNlMmJFcU1Lc1JzNGFjQjZUZFB6QmdE?=
 =?utf-8?B?K1ozTGk4VW1jNTJ1R1lwUURDaWs4b0kxOC9uQU5OUS82SkFmM3I0RDRmTFF2?=
 =?utf-8?B?N3ZNT09tdEdkbTRGWHc0aTQveElvOFBiKzhNRG9WVmZXMHFndSs0RFA0MjZV?=
 =?utf-8?B?K1pFdzI5cStJTnA3eEJQZUpsWkQyRGFQNzdiMVl3MGJOSjRZeEZFQmJ0U0NW?=
 =?utf-8?B?b2hMNWNWTnQxM3V3MVR1ZUFabTliRGtQYi9FVWxLUjU1b2t3L3g5dFNrTHl0?=
 =?utf-8?B?ZlhsZ25wRUdBRUE2bm5iMGtON0dMT1A3L2ZhaTZoYzdjZEdSRTRpeVVwT3VT?=
 =?utf-8?B?SzhzVVFuLzlKRHVFS0NOeWcrTWI2aE1HdXM5cnBrWDZtb1pORzZvYU02YzEw?=
 =?utf-8?B?R2g4YjVaRU8xSStDT20zWnQ3U21NYUVvTkQwRmh4RGZSVXAwdlB2d2EwUFdL?=
 =?utf-8?B?M1BMVkRSOGdLNUlTT0tpOElRKzU0K0xMZW1KMmJvSndKQmN5L1Q3ZzJ3NWlS?=
 =?utf-8?B?anQyWTVKZTRZVzJTMWxrT1pvdkUwdDBiYm1icDZwS01lZVgzQ2JhYXhuMUhW?=
 =?utf-8?B?VlFqcWk3ZXNUdTFqWFlLQjh3L3BpQlE4SmZZaTFqZ2hjdDFxWG00SHlLMTgy?=
 =?utf-8?B?dlNnVzUvMThMRHUxeUdha1BFRjMvVGE3UVRnRWJ0K1VJQUpjanI2c0trdzYx?=
 =?utf-8?B?VXZRS21za2luVm8vbnRsK1o5bXRSaHFHYzJsd09paEpGaEpwZi9QakpzMTk2?=
 =?utf-8?B?T2VnNzFIODg3RWxwem9GYzZ5RkVDZUFIRHNBaXg5VVBmSHAxNWZIVzBsNitx?=
 =?utf-8?B?NjJGaHpuU0p0M0dzVCsrYndOVC9xdmxBWkdnQXgwdmI5RzNqa1dtZjMrWUZF?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8615db55-5d5d-476b-3538-08ddc54005b5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 14:41:32.9312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MSwT/ZkN1e4l/0i4qlpMqeaeSLcoQPB+kcdhaKvAbhdF85Lz8oYdd4IU4bxedJ28cqmqfTxeorchRp27JtJXGHVMe9lxNZbV/ki6JUb2854=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7546
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

Hi Sebastian,

> According to the kernel coding style, if only one branch of a
> conditional statement is a single statement, braces should
> still be used in both branches.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
> v1 -> v2:
> 	- Add commit body.
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
