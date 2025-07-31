Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C8EB171AA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1955710E479;
	Thu, 31 Jul 2025 13:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QpHnZjD6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7425810E475;
 Thu, 31 Jul 2025 13:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753966897; x=1785502897;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=NGP8T2qOCnjS7lSpjY5GkLhtFzr5+h4mIYN2MaJ8yc8=;
 b=QpHnZjD6wyXzO9qwjL4T1bwKRQ0rA988xIzNLHal4O9O94q9F/V58FoQ
 SUaFFjJeB98cvkloK4eRQp9hc+aliDTt7BaexAwXBETcjDu/9UaRaxxfJ
 /U6R/NnCXUqy0eQiK8YfdRHkaYVFodObS57zwcc1eq31hj8L0VItkv2Yt
 Ej9tZajfBfGq21qFGsCN1Hph01JeI4AiOnzKZSI4F+Bz5xkE28GgClpiu
 4sZuoZ2J7cClS/o8YDHTqv1T3FRg42R6a2KfA+Rx6O7ZkPlEmlUdSqHWV
 e0GGRO20ziC2NaTIT6BkPfZ5PkCucNBx+go51gUAuvo2/uMzoLxCs6E4z Q==;
X-CSE-ConnectionGUID: 8A9/TKG5SVmPRZdHIMAe6Q==
X-CSE-MsgGUID: F0+wohFxSwy5hBb3dc+L7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="60110082"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="60110082"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:01:31 -0700
X-CSE-ConnectionGUID: wlJxRTBGRRCUTYpCmIQ8ig==
X-CSE-MsgGUID: aUMSR8tUSXColpdknytrcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167438063"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:01:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:01:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 06:01:30 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:01:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G5BxoiS/uBeGXFtEUuGU5cw/EOUvRtA2rRbMNa/h/I7enRPrWu7ir2MMOmR0clJHhXFCQTS7BzCKCmaRtI4EbFWaZO3GhtBHEN/OXkHp1f+tyS3MAh++1tOE5pv6LcpOudqPkvJCrZrRJVKO2yvvA3Rr2ONYFkeeBycrNlswda9r5At8FBEca/xmTZY91plashfm+v9CVKAN8wB6+Ol1ABsDS2OV1Wt9YNYxLcyqxWtXrnF4fsvSZtcdR45MnoiEXNhryW+gMz4e/o8MqD98ziUfc00IwOJGxSBAey6/MGk6yJhlwgf2RXdPQz1uodRpBWrek3yfCu81ZEHXk9uodw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5//hMi8493biyb0D8zWnRa6Io3gz/LHsBSuzWGbhHRs=;
 b=xQcT9f9LLgTOJauKM0WXdf8F9OU/l+U02uQKv+46aaJHhmZzVsCQ6t18wmvYQ0Ilg4qe+cwbu5pV2N5InP24nvH/a9h65723iKuBSfqpdtdzvhK7cXLbbH/HbhTY8nlg8+GYzJD5BygupnZNmLNE/adsjrdkCSGP3QD2EPpO65Usr3mD5wgtTY7nfZQGR0s8wxwBIi90V4gtXSH/E4IGe6zEdp2QuWnkti/YcY3g51KsKmEs5B47jOCG0G9FRSbN22GnUSqTxVlwTb8yNUAw/1LR1eLVeQFCotOM6xpZiq3OgaAtK4XgFVEgYk/wXAsLWMHCFcIo9P1A1nj4pJUs3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5098.namprd11.prod.outlook.com (2603:10b6:806:11c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Thu, 31 Jul
 2025 13:00:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 13:00:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <232a554db6a327974c06f2491311b28f865467b9.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <232a554db6a327974c06f2491311b28f865467b9.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 2/7] drm/i915/ddi: use intel_de_wait_custom() instead
 of wait_for_us()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 10:00:55 -0300
Message-ID: <175396685525.2011.3239000262739473384@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0189.namprd04.prod.outlook.com
 (2603:10b6:303:86::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5098:EE_
X-MS-Office365-Filtering-Correlation-Id: 13f35923-4006-45a3-5e6b-08ddd0324bb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eldXVGZHR1hHZWpLbFM2YXFCRElhR3djMVR5SVRNVUdPYmNKZURXcENiYnA2?=
 =?utf-8?B?RklCWndjV3FmdHVXSDFVdlJwYmxNcGdMOU9weU5nRVo4bFZveldPcXNmNVZo?=
 =?utf-8?B?enFUTzk1bnFRSWFCcTJjQ3d4N3R3V0xwcVRDZVd1MWlIL28ySEswUzdwd1dM?=
 =?utf-8?B?RkhVUU1iWFNFTXlraUZvRXp1RW9mVWdkSlp6a1UvOHFyMW1aVzRNRU1IV0dD?=
 =?utf-8?B?eXpKbDJVd1NGeWd3MHJCTGFVVkFkNzBKbDFPU3B5TXdxN2FNNjJSdmZoWWJR?=
 =?utf-8?B?TXVVN2c0eGp3UVc4M2JTSVkraEhvcms4MGRHb25rNjZuWG1kUThIQ25RQWN1?=
 =?utf-8?B?TDJyTjBhTGRCTEVqckkvWEV3dG1HWm5Bb1QySUtNMUplK3dhdjZvZ1BNMi9a?=
 =?utf-8?B?d2FBbXBIbGNCQTdITEJ1dEoySUdvMDE4UmpLeXNzOW9Fd1V2K2ROTXp3c2FF?=
 =?utf-8?B?clo5dE5jZ0xCUnRuSlN6MjNWMW4wRlg4eXMrQkhmRVcrd1dRNmtLbmwvWGs0?=
 =?utf-8?B?WWRWa2p2VjkzVmJhZWxQakpGcFJUQk9FL0o4ZklaMjEyWUZaYXl0NDMzbUpI?=
 =?utf-8?B?RmRiVG1oUXp4eXVjVG9HdUQxbzBmRllUa0JRemcwbnVPT2RtWmRwU0tZRS8v?=
 =?utf-8?B?aUJTZllocWl2VWZIU2NnMVF2eEFjRXE1ZjZSdlN2SDAyalZQSlFEb3AxR1Ey?=
 =?utf-8?B?RVdQRW5tR0duOUN1UmY4VDVpeG5MMGp0TkFQV1RDNEVwdTljR2h5OVpTenpX?=
 =?utf-8?B?S2l3M2s4ZG1GNzl6bklhaUJTVldVN0ZQL284YlVUNWFwT2x6QUZFdSsvM0Fu?=
 =?utf-8?B?NGY2KzJDa0ZiTEFtdzVPYUxMQWRORE5ILzhtREREd0hSc3NiM2RsQnZmUi9u?=
 =?utf-8?B?eC9aVUN2M0pNWXVndndFNWtyK2xHM29JSzBwYTVUWTI2eXJESlgvaGVnc2xD?=
 =?utf-8?B?UWpIanpuN0l0blZLL3hISnJlSnoxRFBkYjlXSS8vU0ZuTHE0SjZRR3U3YThI?=
 =?utf-8?B?MHJ6MW9jUlVkUU1RZVVZcGpyUVBsYVp5WUcxeGthb1E4VHlvS0VCMnZMc1I3?=
 =?utf-8?B?VHU2aWF6SkRXOEtmSG82UHpZZEROelNJbVMxdUtZQVZEcTN0QStUN0F6ZFNP?=
 =?utf-8?B?Lys4MmtvS1FHVFlNU3JySzRVT0MzbHRXUGRjc2NZNXBrVUVTckRFRGtGcGFp?=
 =?utf-8?B?L3VINmhQcmwxMjROc29vYzFaOS8vYnVyM1A0eVJRcnVDN2JYQzFzTHJpcTR3?=
 =?utf-8?B?dWVNeHpIM3hDMWdnbWRkRlpYNWE3QkxFZU1aNW9yV0EzN0NETDB2VGxEeWRq?=
 =?utf-8?B?bEZwaGduSUlIaGJoL3ZLRkYva2wrNVUrTVRRN09ZVTIrOWN0R1Arclc3Z2xt?=
 =?utf-8?B?VHZSMXlsdDJLeE9JYW5PbFFJOXkycW5BU3hKQWl5QjBSY2pzelVHSHZiTlhL?=
 =?utf-8?B?NWNMamIrUm95b2JwNS9STU53VzJxeEVUVFpFdGJHSFNLMWpZRlR6YkdGNm9a?=
 =?utf-8?B?aGVocUpYQXEyVno5M2NweHYxWlprcnpaUTYyNlB4L0FTVThpV2dVVFhSV0Fi?=
 =?utf-8?B?amhBSit3Y1BLTlFucGpJK3l6bk9BcktBL1JjMVdFWjJzT29RSzM4bWVhcHdv?=
 =?utf-8?B?blJwVmg5UFFob3htNHBjY1JON2RQNUlpWXZTaXRjQ095TmlPcTdaaWErOUYw?=
 =?utf-8?B?QkpXSHozMmo2SjlBQkVNUlVUOVBQcEVLalpvamQrQXQzSndFcHJXTGpwczVT?=
 =?utf-8?B?OFhEOXdCODhqdEZnSzJRKzFYZ3luV3FCQlFEb3NKUnZSdCsyV2p2UWhyNURw?=
 =?utf-8?B?SXlOQjhhMEZpQ3RVa2d5QTkrMzdNeWtrRVB6SXA5dW02a0FNNmc5dEU3R25W?=
 =?utf-8?B?OEIrUlgwRGZQVVh2MG9Fc0hqRXp4eU1TMEp6YW9mcmZ2V3A3SXZjVmxTWHBF?=
 =?utf-8?Q?ooJgq7BtnUc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWZsYUdHSkhDQlFudU8ycjBFNE5CMEc1eDRrcnlkZ1RVR1BPMEg5MXdQZVg4?=
 =?utf-8?B?RVRIczNXc09TVmUxTWcvL3E5cDFxbEk4eUpkT2tqWnZLMEg5S3BmMkVNVmhl?=
 =?utf-8?B?eDlldWdDc05QcE1VRVZZZjgxenVnaWFEZmpHYjhWZzZoR0gyczNmcG9XNHFr?=
 =?utf-8?B?QnE4Um51TFBtV0M0UHoxNmhRVVErMG5oTW5leUxBdVlJYWhETWNteU5VNE9H?=
 =?utf-8?B?RHJ5d2ViTk9CT3lsajFZaHBzZmE3dXlzcVJjcDV1TlhnaUhacWNYTXdLaERM?=
 =?utf-8?B?YWdqZXVYdXFvL3RHekMvVUNkWnJXSHpmZ2JSaWh3SnNrY2cvMWRDQWY0M29m?=
 =?utf-8?B?c2o4QWtOOUViWFBFeDdnV1lLSzJvR0dJcUlnZzZnZUI4a1ExTm9CUHlYSUg4?=
 =?utf-8?B?Nnh0Tk9QRTFSQXVsbm1lTDhLWjNmeVlTNVpmdzU0TXRya09NbEtwWm1zaVZO?=
 =?utf-8?B?ODhSZE9UNGJvdS9PTWZCN3cvQllGTytXM1BaRU9ZUUYwN0JjYmZ1VHR2Vi8w?=
 =?utf-8?B?enlCUk90US8xV0VZaVl5QlJhWDJFMmsyMEp6eUdxTWZ6dzNja09NZTk3dllu?=
 =?utf-8?B?WWtwU0VhK2UxcWRtWjFUdE1Vd25VSXg3VHlXSk5QNzRKTjRYSVZnQ3ZXMkNQ?=
 =?utf-8?B?Tms3SHZHaWFDVGU2a04zRGlxMWl6cnRURzJwQjNuT0FZWnlVdUNmY2RZQUpF?=
 =?utf-8?B?SkszU081elMyUXplTG1HRThzT0tRMkQ0bSttS0RWKzVucG5FT3h5cW9kWFEz?=
 =?utf-8?B?WERlb1QrdVJackYzYXREUzZTRUUreGxuZjl6Z3QzMG1Xb3l6ZExhUS9oYy9U?=
 =?utf-8?B?cHFSY2x6UWRtOHBBRGNxVXZONmpWa1NtckZxUWp0U3c4WDlhOUlmZ2lQU2Fh?=
 =?utf-8?B?QisyWVN0UXFoZlN5aFZMZlg1NmFZR0F4dTBuamp1aHZRSytPQkRtV0xHaTZH?=
 =?utf-8?B?djhBdGwwZk9Mc1BYcnBKTzV0cG9PTVN2NnRTY1BJbGhzbHBJSkJxRzh5b3M4?=
 =?utf-8?B?MUFxRVJ0bDM3OTRFWFlwOU1obEI0NlBjWDlzYktrSWdYRmtpcjRDVE1WRTFa?=
 =?utf-8?B?bURTMkJsYUl4Nk5mTkFLOGxPYS9NSTZGSVVHNGEwaUp4WlRNaWh4K2hzZklq?=
 =?utf-8?B?TkpGWVl5VklvK2pYNVg2cHprYk1lakRLcUFBRVNZaTdhc0dhNG9qWlNZK3NH?=
 =?utf-8?B?OC9ZeXJmQmRRakorbS8zYmhrSFEvL3dLdkJXaWNBcWNZbTJiMDR6TC9VS09a?=
 =?utf-8?B?RmZ5U3NGZWRYTGM1RHRWdkFTRDVBQjdkTXIyTlY4WkRVd3hsVVBDakZMSDlR?=
 =?utf-8?B?bVkwcTV2cXAwZ3dremMvTGJmSVlPdmZuRnQvbHZJaUhWTEN3WVptVWhhYzU0?=
 =?utf-8?B?YUF0ejRnN0JWZFZsalZhdmpVRWYwN0prQlI0K05xZG94L3pMeFVsODRNSVlN?=
 =?utf-8?B?K0tOME9HUlI3dUd2VU50WEk3SGxvMG5FK09BUGp4aTd1NENBVVk3d1EwYVJa?=
 =?utf-8?B?YzBMa0NVamFGbUdUeWVGRnYxcnVKOStFVjNyUkRXVEUxVjVMYjBYMXViNFhY?=
 =?utf-8?B?TWtub2pYYnRvdkNVWEkyOXErUDF4MG9vb3BDa3RXVTNQQzNpRnBkbXJkZmVk?=
 =?utf-8?B?ZExMWmdiNVZGVUZCRFg0V0hRd1BaLzNxWEExT1AzT2ZDeHBHN1hZVXVWTnF3?=
 =?utf-8?B?aU5zU3lVbGwzQmh5K2dkMHJSU0JFTlN3ajgvd1Y5VVRTMEdHVEJpckNFR3dK?=
 =?utf-8?B?R2tVNGxjOXNVTWxEMWExdmIxaFpYVGNwS1JvaDJvc205eHdDK3RDc3hQTEw3?=
 =?utf-8?B?TllPcC9NeGxwdEtJWFUwKzU5RHNXZVZUQ21pcDlxM1lkeVFNcWV3QWhCWEg3?=
 =?utf-8?B?R3h3bVA1NHlxb0JuZENXY0JEc0UzdzBsd1BRU1N1cXc2TE5RblRjSjlMb3JN?=
 =?utf-8?B?b1k0MVczRXpsemxzQitmcWtVMlh4RGpMdXZ5dEhNOStuczVWM3FXTDBvT0Qr?=
 =?utf-8?B?V1E4aUp3UDRsSlR0cUtKanFaZEpNMUtDQ1pmd3NWNEJWS1Nhd21ZVERSdCtK?=
 =?utf-8?B?cmtPMDZCWUxJM04rejEwQk1tSThsZ2t1SXlPcUp4VHZpQVp3dElEU3UwaVNY?=
 =?utf-8?B?OEpXZFRuU1RRWmh4eGV0dUlZZTBQZjA3Y1hzSVFqejlSN0JGeUQrZFJEZGRU?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13f35923-4006-45a3-5e6b-08ddd0324bb4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 13:00:59.5763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4BTIkPYPLVzF3xHAfxa3pLP/qvIFGpra1LvqTW3/+O4qacMTDyZq4GzR8vamavqxwOcuB8Yn1oyEGKIBi0g1iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5098
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

Quoting Jani Nikula (2025-07-31 07:05:09-03:00)
>Prefer the register read specific wait function over i915 wait_for_us().
>
>v2: Wait for bits to clear in mtl_ddi_disable_d2d()
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++--
> 1 file changed, 12 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 0405396c7750..866ed3e46664 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -2561,6 +2561,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>         enum port port =3D encoder->port;
>         i915_reg_t reg;
>         u32 set_bits, wait_bits;
>+        int ret;
>=20
>         if (DISPLAY_VER(display) < 14)
>                 return;
>@@ -2576,7 +2577,11 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>         }
>=20
>         intel_de_rmw(display, reg, 0, set_bits);
>-        if (wait_for_us(intel_de_read(display, reg) & wait_bits, 100)) {
>+
>+        ret =3D intel_de_wait_custom(display, reg,
>+                                   wait_bits, wait_bits,
>+                                   100, 0, NULL);

Hm... Strictly speaking, in the previous version, we are waiting for the
register value with wait_bits mask applied to be any non-zero value.
But, since wait_bits is just a single bit, I think using
intel_de_wait_custom() works fine here.

Perhaps using plural in wait_bits was not precise?

Anyways,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>


>+        if (ret) {
>                 drm_err(display->drm, "Timeout waiting for D2D Link enabl=
e for DDI/PORT_BUF_CTL %c\n",
>                         port_name(port));
>         }
>@@ -3058,6 +3063,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
>         enum port port =3D encoder->port;
>         i915_reg_t reg;
>         u32 clr_bits, wait_bits;
>+        int ret;
>=20
>         if (DISPLAY_VER(display) < 14)
>                 return;
>@@ -3073,7 +3079,11 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
>         }
>=20
>         intel_de_rmw(display, reg, clr_bits, 0);
>-        if (wait_for_us(!(intel_de_read(display, reg) & wait_bits), 100))
>+
>+        ret =3D intel_de_wait_custom(display, reg,
>+                                   wait_bits, 0,
>+                                   100, 0, NULL);
>+        if (ret)
>                 drm_err(display->drm, "Timeout waiting for D2D Link disab=
le for DDI/PORT_BUF_CTL %c\n",
>                         port_name(port));
> }
>--=20
>2.39.5
>
