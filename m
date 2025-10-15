Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5EBE0B64
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 22:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B4E10E8F2;
	Wed, 15 Oct 2025 20:55:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EbFp3heI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5E010E8F2;
 Wed, 15 Oct 2025 20:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760561724; x=1792097724;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WNuT6uzC2sXvCkmf9F82YKLtiAmO56z42Ht2EiPO7Tk=;
 b=EbFp3heIXDXs6ISs87OZnbukhQ2Ghc0Dz3nuxKrnpjci70PAXAgN9l/6
 Ia8WhWYO5LyXWe30sfNTdp1QbWIvXYASuQBc8kJxQoCO4Rxf1ujdZw1DL
 W57SuHn8M8vFgEFxgDXRVy1E988wPOY4k6W0pErJLwrv8ff7b00YZJoyZ
 xBVya6yWjvHqE0HZHT9lT6rXuolbnLMcsz/tYnfD1TMDTWuLV14Kjlcxh
 scosg0+2wYaaXjPQfh5CIVmJT9JY1PnMyZFVYNHU31ws0U13QrQrE0ltH
 GzAdEk/Uo0T8c9A5bwRPHRsx//25osxWvXaN85rch/F2GyS1jRy9EDNHj g==;
X-CSE-ConnectionGUID: LKF1JkkITr+CIrT9QUGkDA==
X-CSE-MsgGUID: aauVVVDASsCoDgAxlPJjRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74088498"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="74088498"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 13:55:23 -0700
X-CSE-ConnectionGUID: IE1imYNvQMuxubIpzXzcIg==
X-CSE-MsgGUID: wKsqKRnJT4C3qsz6XU5p2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="182683284"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 13:55:23 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 13:55:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 13:55:22 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 13:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iIVMOWVJINtBMmw7LASgOjHJ4vLqmwui7vuudC8Xlse46A56O6OEXIWI3IW8YnEqGx1k9zMD0Kue3WLiFUOAEkXxi4kf8ZMrR+MkZ4GnsbUsQXFkoltONBhOr/UDblVeQ7IB1YIjEMBp20LqHh5tGTe7z4U8+hfTQQtvCgQTfmWKi1cfTx2KEZMywo2WYSNMUkzwNw1Ku4fS058SHzVYcNy3rgl8dAONd0ODgY5BRtO0GY2L54VT1PzYeHndTvE2hX6JWmoQTA+9CKWA3NdN7k0gckT2TFFdH+26fqcIFfpLeUyeKocVKQxdxhpEhFP6GVhXrWGRITZwSTebfScP9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ceZ38kmXuJlL20F5V9cFong9P+6mk1quac1ZfTuVjs=;
 b=bk/Q+j12zyZghB1m56q0JL4JZXgXkD0i6/zLn4I6NPjalygvjHapxifyx0SR4Lx6P/LHIsvmXE+9Jfc9UtIohxOMGsd970AlvexzTRBwO1zaC6q4G4ECEmFR1kCioT7v4eENIP12ujl2jx7gAjemCBjTk06KDv6hbLY8iMDe+bna0GABsAHV2OlnGxBpa92pVGW7zNbV7ho/bq0b2kw7BN3AWIgfybYY0Sdo6GukWvxIAy3mJzEFYFNFP21jwz0q3dJAGzH1Lun2zdO6+ja2afK8tw3syrbVt/ASQBuHkeoMxfLoGrnP1lR+aZtGvEd14hfCRkSHy+pb8MV9m7V7Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by SJ2PR11MB8422.namprd11.prod.outlook.com
 (2603:10b6:a03:542::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 20:55:17 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 20:55:12 +0000
Date: Wed, 15 Oct 2025 13:55:10 -0700
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
Message-ID: <aPAKLu6_XwL2O3Y7@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-8-d2d1e26520aa@intel.com>
 <aPAC08kpBieRb_CP@msatwood-mobl>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aPAC08kpBieRb_CP@msatwood-mobl>
X-ClientProxiedBy: SJ0PR03CA0161.namprd03.prod.outlook.com
 (2603:10b6:a03:338::16) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|SJ2PR11MB8422:EE_
X-MS-Office365-Filtering-Correlation-Id: 14c1c037-03f8-4561-60c5-08de0c2d226d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UE5NS2w1QTk5d3dXQ3ZsdjVKdkVkazJULzhQVmZYL3dIeEIwdFhHdjZ1cUVl?=
 =?utf-8?B?cm01blh0bEtya0krUmFPL0pTeFU4bFZpVFYvK0tQUXF5eEQ0aytNeDhSWlds?=
 =?utf-8?B?akFDZG9GUjEvdUl2OVNvWjhjWjExaE5TdVl3U3pHeXB6V2hFTlJQTXluWWpi?=
 =?utf-8?B?QVY1UExUY2txdWpJRURVbC9xNmFHNHlSWGp1a0pGWmNSZzBhTVovckNxaVZk?=
 =?utf-8?B?MlUzaE9aLzBzcXBzZVNYVm5KenFvTEdmSU1HdmlmY2piYkU1dmZhUFE2UEor?=
 =?utf-8?B?R0ZYTTZvc1B3SkQrWVU3YmZIRGFXWUdjSXJydDB4dHJ0ZzV0WFRxT0NkUmx3?=
 =?utf-8?B?TjJTb2RiTWFzRThydW5wOHJDL2xQWERPZGdQZlJnbXdsS2ZWd0U4NWQ1YTY3?=
 =?utf-8?B?U2xNVDM0Kzdpb1ZrL1BJb3FFSDE1U3BKL0xFaTlia21KOGVYOEtKRUQzdXdG?=
 =?utf-8?B?VFB3NUV3cTVRVzNySW1uL2ttYTlsSyt3Lzg1a3dYZU5HcTR6WitsL3kxUWhH?=
 =?utf-8?B?TEw0dHVMMTQ2cEhWelJJbzBLVC9JdFg1cUV6UWhPdWhoSHM0amRtVHJhbDFz?=
 =?utf-8?B?bWRRbTZ4dkpVWnE2eHBOa1U1VjdOb1Y5dzY0USt1clhuSG9CYktxWFRxQmNW?=
 =?utf-8?B?REwvRkdYUFEwN2VQc3BYaDdqaVRiWUQ4eEdCMVNLR05CMjZCT3k0Q2ljNnFG?=
 =?utf-8?B?ZC8weHpadFpMQ2JBYmU2RUNxVnVaMTNxT29vYTJVWStyUnBVMmNUWDZyTlR6?=
 =?utf-8?B?YWtOVlFmaW8wZnZzck4xU096MTF1OFcrM2NQNEQ3RmU5TmJ2SXdvZGErODhM?=
 =?utf-8?B?WjhVNE9oVTNmRmZQbENtdjEwM2I0U0ErbmJBSU1lRmVHS1dPTFFIVFlUYzBL?=
 =?utf-8?B?ajZjZTY4UTkyK0lxSWxiWmY3S2tBSTBtNEdyZWx1Wk82M21seDhBbXZBeHBD?=
 =?utf-8?B?MDdmczVMajNrMWQrSVViSGJPcHg5a1YyR3hiTlRlSTNVemYzbUFGNzhxZFJw?=
 =?utf-8?B?OWRuOVVkZW5hclVXYVpvMGMxZWFUdFcxV1BudkdBdlY4elZPWW0wbGlqbERS?=
 =?utf-8?B?SURZNjJBVSthdmVhNnhOWWh0ZlhuS2g2Ym5jcS9oSTJMUkQrTEtpNkZaSEcw?=
 =?utf-8?B?R01UWjIvdjQxYnM3R1k1dnJzb2lRMllLeW9RTUMrTDVXV004c2hYRHVOanJw?=
 =?utf-8?B?VFRIa083WG1MSmVKS1prdDg4elRLN3BvUnFRSFI5YkswRlNJdHdDVi9MaDN5?=
 =?utf-8?B?TEU2dUliWHJ1RUJZTmVUWlpBOFdBUVJUa3VMdnV0M1JOc21udEVaWU5QRVZv?=
 =?utf-8?B?emI5VUZvd0pRQkxUdUZzT0YxZlZsZkZyeDBuUjlEYjNpV254ZWN6Y0o5Q0dC?=
 =?utf-8?B?TU56L2xrSXljOUFMMnNiZVJST2VmQnlZUHU3WEV6Z1ZDazlpZ3RuNTlJeHV3?=
 =?utf-8?B?bzFKTWVCMDlsczNCNSsrRFFQangvUGxaWnNaTDZPTCtBYnp1dGtOWVgrUmkz?=
 =?utf-8?B?eFFyRHVIVjhvU1lyd2dNNUM3UmcrMDlkcFdiUWh0R2VZa0tCd09TRXZuMlc2?=
 =?utf-8?B?N3pBWjZmSzVPckVIc0daQVJEZVJqa3Y3cHIrcGR1TmZQdDhua3g2ZUlYUGFY?=
 =?utf-8?B?U2JZU0VIUGRWVHNnMC8zT3kzUEJoRU1RZkNoSlhBVnEwYzdFbVM2MUR4aUpV?=
 =?utf-8?B?T1ArZHpDRTc3S3M4aEZ3aEEvakdMRDVPSitjU05KZFNFRGIyMGh2dG01UGtG?=
 =?utf-8?B?Y3BROUNTYUdkTDFwYlp1emczTDNidEVlZDJiUEcvMHYyY2plQ3lwSG1vSk9v?=
 =?utf-8?B?ZSswK3QyWDRoVXVCTkhhbkpMV1FISGI0NG94N3UvWG5tVzh4TGMwZzkvRWtF?=
 =?utf-8?B?dmxJalp1dDJsV0ZWUWNMajgrb1ZJRC80Y3lJL211MXdoSmNUK2NVemVjSGdB?=
 =?utf-8?Q?mFX4g9BQtfx/W61wXsq6qA00kNFGozYx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnZHRnd3QktoUndSTXRjbFNXcE5sUGhIQ2Z0aDNaaEtyY2RrdmlpOXRtdmdt?=
 =?utf-8?B?RlZDY0R3MS8yOWUvYVh6b3hHV3VyMnhNU1FsWmlRaUpMWDEwSVBsMlNJZnBy?=
 =?utf-8?B?NnVNdityQk9uTnl1NDVIWjFrVlVranJhdXNPVGVIN3RQMG1YaW1SS1l4Vnhk?=
 =?utf-8?B?b1B6SUFqNDBtTmxTWXNSa1kwWjVSOHZqRjQ3Q3oxNzN1WFg3blZkS29lZDZQ?=
 =?utf-8?B?QXJ4VDhsU0RZRlV6bjBQTS9KSG1xZksyc2x4UjkxOHNsREMxejhzZ2pFUWVV?=
 =?utf-8?B?OTExWGY3YjdsK3hIZ214OUJyNFRKejBDVFA2aitKVzBJeVNqUEFnOGc0UnRh?=
 =?utf-8?B?clBZUkttRjdIME9zZWE0R3ZSYW12Tzd0Y1VXRzBTV3ZxbmU3ZkkzZ0lqUWpY?=
 =?utf-8?B?c0JHVWxvdWlac1FNNDFVY29ZcDFQMlRSSFpCaEhBaTFpZi94d25YWVRBMnAx?=
 =?utf-8?B?a0hscm9QRGJhTzR2U2x4MExrc0VlYzJDTi9CNGwwd0RUMDU2UDQ0d0xhdTZI?=
 =?utf-8?B?SThRTnZoN1VCVzJST3Rhc25rN3Q5ckE5WHJSbk9QNTNEazhBenFEQm9WOHdI?=
 =?utf-8?B?M0YxSlpKNlRSY2xjVWkrclpNbzB2QVBia1BkRDdPTDdPbGkydk1MczBPWC9R?=
 =?utf-8?B?VHBta2dxYWNSRDQrQjBwVW9sK21RdE8wdUJ6eEpiakxQalpnNmdtdTRveHVq?=
 =?utf-8?B?dlczSGpobThjUk91akhveTFZZW55RVlQSDdBZXZLUzNIY3NnNGtpbUZlRmVq?=
 =?utf-8?B?Z3ltYitmL2JRYWJNb3UvaFZXOHdQRG8wY2Vkby9mTFVENVZVbEdWeE12T3lo?=
 =?utf-8?B?UWFoaVE3R1pKcCt6MC9ua0IvL3Bza1RLVXBpMHlCRjlUTWloZ2liTGx4TnJ1?=
 =?utf-8?B?dUlHZ04rMWxaWFJQYVBLamVJbUxUMHlQayt4USt1bFVwaCtueUlpT0xwc3dD?=
 =?utf-8?B?Z2Fzemx2SmxWeHlXcU8xdEorYmRjbHc2S3J0MXp4UjJxeUtZRkdEQ3JBWTZa?=
 =?utf-8?B?cEhSdFRyUHJRdFByT0xESFRja2k1Tm1sWXI4M093aWR1aW1hbzh2YkZoWnVn?=
 =?utf-8?B?M2xoUlJRREZ4cUxMOW85aEIzN0tJaG0rb2pRTEtDOEgwZjFOb1RXVWdGNG5T?=
 =?utf-8?B?NndSWnhrRldMUllSM3h5MXpyRmd0a3ZBRmFVU1lIN3hoUENtUElzbkdHdlVm?=
 =?utf-8?B?Sk9RYmVjV2s2dkdwU1VkcGlzSGtoTDdPTnRtdVN2Tnl5aDlPYityU092TzlS?=
 =?utf-8?B?N1BmYkVXaWptenJ0Y0lOYzN5WGZ0WjlidjgrYzZZOVd6SVpYY2tuMVhuU01J?=
 =?utf-8?B?WFRFWUpOamhOUjZrMWluZVA3b1ZaSFllenpoSTByNEZMRjQzZ3Vzc3RZY0NK?=
 =?utf-8?B?OVhXb1hDTURSMENERlNZZStGdTBDWFZSTEZaQ0twWnZkV3FaR0JEV2VsS053?=
 =?utf-8?B?WUtjNHFjSWlyRTZ1T2ZxdFJhWVlrdXFOMjFkU1hQaUYrelNkRkcvNUY1bE5L?=
 =?utf-8?B?WXM0T2gzL2c4c25md1lqbnpEK1FPQ1hMYnFDZE92WlkrZHFUQy9lUk1XT1ky?=
 =?utf-8?B?aXprQjdZYmVBNnA3MzBCRnhoZ0ZISThPMW8wTmh3L3Fub1lKWE9pOXl5UEFn?=
 =?utf-8?B?cWJpUUo4dFVwTndYQnU2V3hMUkNDVlZzWVNEVG8wbFM1SSsxSjBuUVF3b0tR?=
 =?utf-8?B?ZERvY2NOR3VDQVdpRjgrTjM0bG9WWnBMaFVBUG1JY21vMG9OUmQzZ1lJMHlj?=
 =?utf-8?B?cForS00rRnNzQWVMdksvZThkME01MXMrS0V4WERITFZvTFpQVkIzY0JxMG9x?=
 =?utf-8?B?aUIxczByYk9PUUxoeWd3N3JjYTI0OVl1cHkzdHJmSEovRk1YUDc5V2IyaXlU?=
 =?utf-8?B?ZWpLVlJtN1hYNTNUTWxiZzRMN2pONzQxWEtUVjdQU2ROZ1IvYUZXQzUvdXBt?=
 =?utf-8?B?WTEvR1g2SVpyd1F3Q0RjWnFjMkRBSjNjbEZLQnhyNWJVbmM4WWdzc2luRmp0?=
 =?utf-8?B?aEkyaWN6ZTU2bFBYWUdaUzE0RlMyMVpCbWNuMEk3V0FkQ093bGVBY3Rhei9Y?=
 =?utf-8?B?T3FtcU5ZYkI3SzIxRDMxcjhnTFRPRUhHRGlGNXRIeEN2YWpxM3pMN055NXlF?=
 =?utf-8?B?NUpZZUdHWnZ5cTUrQmI3WW90S0RwTmdEWnA2ZjRsV2NBWjg1TVdGYUFqNmNn?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14c1c037-03f8-4561-60c5-08de0c2d226d
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 20:55:12.5371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SDfsNNEYlwxbGZmjU7aoYQQkgd5OIY8t1H+Rd12XlS5ZrOauVaV8sRskXOSo7Y/94zYQZjIO3VfRQLpIpIUIeUjbNdOdRzsIak0lFZ2fK+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8422
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

On Wed, Oct 15, 2025 at 01:23:53PM -0700, Matt Atwood wrote:
> On Wed, Oct 15, 2025 at 12:15:08AM -0300, Gustavo Sousa wrote:
> > From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > 
> > Starting from display Xe3p_LPD, UINT16 formats are also supported. Add
> > its corresponding PLANE_CTL bit and add the format in the necessary
> > functions.
> > 
> > Bspec: 68904, 69853
Sorry lets include the bspec 68911, review stands
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 96 +++++++++++++++-------
> >  .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
> >  2 files changed, 68 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 0319174adf95..530adff81b99 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -136,36 +136,47 @@ static const u32 icl_sdr_uv_plane_formats[] = {
> >  	DRM_FORMAT_XVYU2101010,
> >  };
> >  
> > +#define ICL_HDR_PLANE_FORMATS		\
> > +	DRM_FORMAT_C8,			\
> > +	DRM_FORMAT_RGB565,		\
> > +	DRM_FORMAT_XRGB8888,		\
> > +	DRM_FORMAT_XBGR8888,		\
> > +	DRM_FORMAT_ARGB8888,		\
> > +	DRM_FORMAT_ABGR8888,		\
> > +	DRM_FORMAT_XRGB2101010,		\
> > +	DRM_FORMAT_XBGR2101010,		\
> > +	DRM_FORMAT_ARGB2101010,		\
> > +	DRM_FORMAT_ABGR2101010,		\
> > +	DRM_FORMAT_XRGB16161616F,	\
> > +	DRM_FORMAT_XBGR16161616F,	\
> > +	DRM_FORMAT_ARGB16161616F,	\
> > +	DRM_FORMAT_ABGR16161616F,	\
> > +	DRM_FORMAT_YUYV,		\
> > +	DRM_FORMAT_YVYU,		\
> > +	DRM_FORMAT_UYVY,		\
> > +	DRM_FORMAT_VYUY,		\
> > +	DRM_FORMAT_NV12,		\
> > +	DRM_FORMAT_P010,		\
> > +	DRM_FORMAT_P012,		\
> > +	DRM_FORMAT_P016,		\
> > +	DRM_FORMAT_Y210,		\
> > +	DRM_FORMAT_Y212,		\
> > +	DRM_FORMAT_Y216,		\
> > +	DRM_FORMAT_XYUV8888,		\
> > +	DRM_FORMAT_XVYU2101010,		\
> > +	DRM_FORMAT_XVYU12_16161616,	\
> > +	DRM_FORMAT_XVYU16161616
> > +
> >  static const u32 icl_hdr_plane_formats[] = {
> > -	DRM_FORMAT_C8,
> > -	DRM_FORMAT_RGB565,
> > -	DRM_FORMAT_XRGB8888,
> > -	DRM_FORMAT_XBGR8888,
> > -	DRM_FORMAT_ARGB8888,
> > -	DRM_FORMAT_ABGR8888,
> > -	DRM_FORMAT_XRGB2101010,
> > -	DRM_FORMAT_XBGR2101010,
> > -	DRM_FORMAT_ARGB2101010,
> > -	DRM_FORMAT_ABGR2101010,
> > -	DRM_FORMAT_XRGB16161616F,
> > -	DRM_FORMAT_XBGR16161616F,
> > -	DRM_FORMAT_ARGB16161616F,
> > -	DRM_FORMAT_ABGR16161616F,
> > -	DRM_FORMAT_YUYV,
> > -	DRM_FORMAT_YVYU,
> > -	DRM_FORMAT_UYVY,
> > -	DRM_FORMAT_VYUY,
> > -	DRM_FORMAT_NV12,
> > -	DRM_FORMAT_P010,
> > -	DRM_FORMAT_P012,
> > -	DRM_FORMAT_P016,
> > -	DRM_FORMAT_Y210,
> > -	DRM_FORMAT_Y212,
> > -	DRM_FORMAT_Y216,
> > -	DRM_FORMAT_XYUV8888,
> > -	DRM_FORMAT_XVYU2101010,
> > -	DRM_FORMAT_XVYU12_16161616,
> > -	DRM_FORMAT_XVYU16161616,
> > +	ICL_HDR_PLANE_FORMATS,
> > +};
> > +
> > +static const u32 xe3p_lpd_hdr_plane_formats[] = {
> > +	ICL_HDR_PLANE_FORMATS,
> > +	DRM_FORMAT_XRGB16161616,
> > +	DRM_FORMAT_XBGR16161616,
> > +	DRM_FORMAT_ARGB16161616,
> > +	DRM_FORMAT_ABGR16161616,
> >  };
> >  
> >  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> > @@ -220,6 +231,18 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> >  			else
> >  				return DRM_FORMAT_XRGB2101010;
> >  		}
> > +	case PLANE_CTL_FORMAT_XRGB_16161616:
> > +		if (rgb_order) {
> > +			if (alpha)
> > +				return DRM_FORMAT_ABGR16161616;
> > +			else
> > +				return DRM_FORMAT_XBGR16161616;
> > +		} else {
> > +			if (alpha)
> > +				return DRM_FORMAT_ARGB16161616;
> > +			else
> > +				return DRM_FORMAT_XRGB16161616;
> > +		}
> >  	case PLANE_CTL_FORMAT_XRGB_16161616F:
> >  		if (rgb_order) {
> >  			if (alpha)
> > @@ -960,6 +983,12 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
> >  	case DRM_FORMAT_XRGB2101010:
> >  	case DRM_FORMAT_ARGB2101010:
> >  		return PLANE_CTL_FORMAT_XRGB_2101010;
> > +	case DRM_FORMAT_XBGR16161616:
> > +	case DRM_FORMAT_ABGR16161616:
> > +		return PLANE_CTL_FORMAT_XRGB_16161616 | PLANE_CTL_ORDER_RGBX;
> > +	case DRM_FORMAT_XRGB16161616:
> > +	case DRM_FORMAT_ARGB16161616:
> > +		return PLANE_CTL_FORMAT_XRGB_16161616;
> >  	case DRM_FORMAT_XBGR16161616F:
> >  	case DRM_FORMAT_ABGR16161616F:
> >  		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
> > @@ -2479,6 +2508,11 @@ static const u32 *icl_get_plane_formats(struct intel_display *display,
> >  					int *num_formats)
> >  {
> >  	if (icl_is_hdr_plane(display, plane_id)) {
> > +		if (DISPLAY_VER(display) >= 35) {
> > +			*num_formats = ARRAY_SIZE(xe3p_lpd_hdr_plane_formats);
> > +			return xe3p_lpd_hdr_plane_formats;
> > +		}
> > +
> >  		*num_formats = ARRAY_SIZE(icl_hdr_plane_formats);
> >  		return icl_hdr_plane_formats;
> >  	} else if (icl_is_nv12_y_plane(display, plane_id)) {
> > @@ -2637,6 +2671,10 @@ static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
> >  	case DRM_FORMAT_RGB565:
> >  	case DRM_FORMAT_XVYU2101010:
> >  	case DRM_FORMAT_C8:
> > +	case DRM_FORMAT_XBGR16161616:
> > +	case DRM_FORMAT_ABGR16161616:
> > +	case DRM_FORMAT_XRGB16161616:
> > +	case DRM_FORMAT_ARGB16161616:
> >  	case DRM_FORMAT_Y210:
> >  	case DRM_FORMAT_Y212:
> >  	case DRM_FORMAT_Y216:
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > index 479bb3f7f92b..84cf565bd653 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > @@ -64,6 +64,7 @@
> >  #define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 7)
> >  #define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 9)
> >  #define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 11)
> > +#define   PLANE_CTL_FORMAT_XRGB_16161616	REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 18)
> >  #define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
> >  #define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
> >  #define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 1)
> > 
> > -- 
> > 2.51.0
> > 
