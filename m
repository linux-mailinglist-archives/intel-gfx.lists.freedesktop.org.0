Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C00CB92B2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6795110E8C5;
	Fri, 12 Dec 2025 15:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lgYY2r8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D465410E8C5;
 Fri, 12 Dec 2025 15:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765554113; x=1797090113;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ekYnHYC5lUtBUj2ZUx4ThDJj6T/TyTI+RgCsLL9TzjU=;
 b=lgYY2r8AJ/eDm9bkB1J/ytdVVfsoctSrbz19BPLbfX+v1tufxzwJvaCB
 1T73RoT58yOhvSJvJ2ng9MlOonW2O37MyA+mHGCqWw2QM5SMC3b3QZ7iW
 cK/RAMUsW/TH6y+wD5AQ0xuR9dpB2V+ry+4wOGG8EGVcfp+g88Zp+gnUP
 JgZC4/Cddp0HzxV0M01+vo2xvOpwEDY6rDaYml8Rj6dEaHSo1FC6ovX7G
 bHFiGkDty17rtn3MHUJ4HtkGkC0EUVqmXRLHyeulshBAJuTuhRQZxWQtf
 S45razMcvM6IysrmTa/+tVXY+56wVf7sDQfUpVTj4uS3j3wg/GJfVNAyM w==;
X-CSE-ConnectionGUID: L/+eolRsRyek3wDK04bEsA==
X-CSE-MsgGUID: aukCmuatQiyDkcTOWBoykQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78927852"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78927852"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:41:50 -0800
X-CSE-ConnectionGUID: nDxqkGKoRZycvV5v924AHA==
X-CSE-MsgGUID: dD7bmjhLQOOnNxLrC/lDnQ==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:41:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:41:49 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:41:49 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.54) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:41:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YcqPTXt5arJFi2j9JW8EaQUJL/5rN4MbjOhluyLAqyV2E7pyn1wE6GsgoOYcz/GGJRRm+DpBLiJcbe7ClXKO8k+fsAnu91NwDn/KqfHOZzJA06Y7GnaxOd3//zCPTMUGm3AnQVUdyGLCmbvG4g+Ier7ek2NCIEMjooN2/9zAd3ZXdvLcOGUPxXsppKHb/al6gC7+xh1oEQB6pH9nP3bCNlVfi5sfJhfy8Can9i+asTxXJMc+5ZvthWUJtssHpJuIMQBG6kkhGoQ+065YbmrDoMk2idh9Z8OVArxjpYN2PYQribulSJBeUT13c6id0qux26V23A8WgkEjGt5f93r60g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ekYnHYC5lUtBUj2ZUx4ThDJj6T/TyTI+RgCsLL9TzjU=;
 b=IsI5dNT7c44uKEWb1hcpXfyGcrQ1pFYjlrC4rzBoJOBdMpizvWgarsLUSc+VNvc+lgWYXdYnNApzC1dCgsXW3YnIjrCknnehWnzvpr8LtuVejVuZ340kuSSso47Blccz5m2bxcNyQ6HOKIoc2+/FRxb8FuLPFl9rdlvVBg6siVFCZtJLAdmMdzJjLsBSJTvpLk6js6vz+xuTmxTRCp5i79sZuKXR1AmMyk6vkfcU+CSq8zNLyRObUTsS+eYv+gOaFxbLNvLFskUPgKXCpKYoHnpyZkl+f+1aEgwMQhbguAKayGbT278FIgWD2u39vtPQrAUpZyCbotHPqbw3kMRYJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY5PR11MB6138.namprd11.prod.outlook.com (2603:10b6:930:2a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 15:41:46 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:41:46 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 14/50] drm/i915/dp: Factor out
 align_max_sink_dsc_input_bpp()
Thread-Topic: [PATCH 14/50] drm/i915/dp: Factor out
 align_max_sink_dsc_input_bpp()
Thread-Index: AQHcX8kIwBKD/6t4sk2oxGVjjhbMvrUePBAA
Date: Fri, 12 Dec 2025 15:41:46 +0000
Message-ID: <e3e00a9d22bfbac0eed4a08d487268bad1c94b21.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-15-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY5PR11MB6138:EE_
x-ms-office365-filtering-correlation-id: e756f2db-e5ca-4050-623a-08de3994f541
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?djFrNXFDc053VXV6bnQxTWtaOVo0VXk0OHdlelNqUHlCdk5NS0p5bkJ4cGE1?=
 =?utf-8?B?alVwV2tJOW1naXM1enljL25FeGVxZjBjQkpLSFdydkFaN1A2VmhiZHBMMXBt?=
 =?utf-8?B?MlJpZ3JmV25pRzlkU3hWOEZaTGtyYk1BZ3ozcnJmdTVzNFdTN0R2SlhVc1RS?=
 =?utf-8?B?ZzdVSHNIS0t5VXp1OExMSVJMZXVVV2NVT0plT2w2U0xWRS9kYXlLUXhZVm1m?=
 =?utf-8?B?NnRmTmFCL283K2I2WnZBZEltQ2xKY0tRbTlPRUszK1RQdlFXeWVhTjdnVHA3?=
 =?utf-8?B?Zk5tSENUb3RFbTd1eXJ0QWk3ZUprQzBxcXVodGdWVXdLTHlpc0lhQmZPZUdM?=
 =?utf-8?B?d0tZWW0xN0EzZldpWURXTWNjQjhZYnQ0L1pucFdKS29aUE13WW14VFBtZTBu?=
 =?utf-8?B?bU1WZ0VVNm9CZWgxSldQTlBKQWlnMXYvSUdUR3lPNm55OFd2UzFidjJ6TmFp?=
 =?utf-8?B?QVNWSTZtK1k2THgyWUgvUER4VUhMZzUySHNQYTA3M3dmR1pnOHNlTHZaK0o3?=
 =?utf-8?B?Q0NZd0VoYWFUOWFMemhhUWdWMm1oMEExQm1kVEo0SG1UZ3JObnZEeTJuaDNx?=
 =?utf-8?B?OFlVTDJkUXRJb0NRbnRGVE51elEyMFJjY3ZKa0FNcjJqNEFmUUtGNlFpcmRz?=
 =?utf-8?B?bUxZbTdOUjF2Rmt3NFNoV2xXNWIyMk9RUnlUYUpEVkdWMkVrUGpaN1h6SHhq?=
 =?utf-8?B?YXh3MS94MVlHTy9ZdWxYWG5nSFp3L2lPZk1MdHluMStRMkFENXZYMmpzSCs2?=
 =?utf-8?B?T3pFbDJ0UG5iZnFwVFhxajU2aWFnYUJtajYvemxibGU1K3JsQW5BcUgvWW93?=
 =?utf-8?B?YmxXMi9GZkJKQ3hJd1JCRmxIckhWRldsSjRabVllMjRQUzU1K2JKeXBwajNq?=
 =?utf-8?B?WitWMDBmNEZXRGRvZVU0ckpVNFR6a2lTOXh6ZGlpMEkwWTNiY2p2VHZLa2t4?=
 =?utf-8?B?Y1hJZXlCYWFKRHg1Mjd5Q1VEa2NWVmQ0RVROeE1wN2ttL1g3ZVo2WFVsZU1P?=
 =?utf-8?B?d0g4d3dXclJMWE1zMkxvUm1tYkxmT3doV0hTTEFRbm9tWE90V3RVR0ZoZU5n?=
 =?utf-8?B?Q1hzaGNEeDdKK2tkdzhuVmk1OGZpKzVnQzRQRms1R1B2M1R6SG5BYmQwdDBl?=
 =?utf-8?B?QUJRR3cxa0dKd0hyS295QTFIUGZJbml0K0xDV3FpOU4yeXI4S1Y3NHpUanl2?=
 =?utf-8?B?RDdjWFRBNDFFZGdGd0RJMnA0eU45QXJhM3NNQS9tYlplSzR6Qk5USytPbDF3?=
 =?utf-8?B?NkJWSCtDQ1dOMTJGN3JveHoxZHJwQVZwSUxBMzJzUC80V3NDOTZYKyt5bHRJ?=
 =?utf-8?B?SnY5dzV5aDZRMzdIMFV0WXkwL2JsOHhMVm5yU2dTVFY2bXBQUzRaVng5UW92?=
 =?utf-8?B?bWJESHN2aDRVb3NxUDR4WjhvTU9lek5EalZZcnUwRWZsM3R2b2pFMnFJREd3?=
 =?utf-8?B?aEJUUnpFQVlKSlFQaXNJbnJTeGhGcWVSSVNTWTVYNytQaWozM21QYjMzZXFU?=
 =?utf-8?B?d2RMZW1zK3NWdUFSMCtNb1J2bjFCd0VtcXp1RzFadllKdzIvYzRGZjdpSTVP?=
 =?utf-8?B?bWh0QVk3OGhiVVYzcTZKNlE4bUU3Tmt6eFNSZnI4QnZOc3Z0ckNvOWJFc25i?=
 =?utf-8?B?NzZqck16aml2UGEwOEhRZHcycW9JQUJJVmlLdm1ZRk9COW9SeFczT0NZRzkv?=
 =?utf-8?B?NWE3MFMrWFFKa0lDN1hPRXJMd2IzdEdFVk1BU2dBbEFUcWFmY1p5dEtSaG1C?=
 =?utf-8?B?dFBMb0pyMWEwZUkxYVM5UUV5K0IwekQxSVVxUXZ6V1NTNmU3bmpWZUc5Y1lM?=
 =?utf-8?B?NEZRME1wQm5Na0ZOUmhhLzJPVzJBY0xrYkVBRkFRT0hqNVFhK0VDSDJEdDJu?=
 =?utf-8?B?WEJmM3NvMy9OdTRoRmVxWVlHeXZiclZnWmhkbFlmbTd2MmM3MDRMelR0eGhJ?=
 =?utf-8?B?bU1INjd6cUhBdHBmL1dJYVNCQjl3YUtTSTV1Z01HdS9jNXVCVkdYNW50c2dO?=
 =?utf-8?B?N0JBdjUrQlBGZ1NaMmpKLzBrZ1BmZzNZbkxreU1KenBiTHhhYW04dmtGRC9N?=
 =?utf-8?Q?Mx2A7s?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEhnZ3ltcmhIMElEVTRWeW1rbHRTelJnandQQmRTcWUrLzZ3MjFRaHZqbkZv?=
 =?utf-8?B?cnp6ZG5jVHZ3cXd1S2NrMjkyUjlDZ21xcmQ4aER4dHpmZzIvSlpxTDhLY1Ez?=
 =?utf-8?B?NytidjRjUm9yNkdlVUxYc0tSU3RVZ2k0SlJpeVpiOG9DVmoxdmprSDVQbTlp?=
 =?utf-8?B?aU1oQjFwb0hiaUFmK3ZzbzZVUEFmQ1FtVW5vL29GK3hqK2NPaGZUaC9idnBr?=
 =?utf-8?B?elFoVERhZWRpSkRNUXhURWJ3NFNLSmRkUnRiRGFEbkl3end6RFl4VXFLRjFn?=
 =?utf-8?B?QUN5ckJxb2ZKQVV1VDloMzlPZmpud1ZtbnhKMHBpYXlydUVNMzdXUm1oNWlp?=
 =?utf-8?B?b0dVK2VhVDJmK0krOHU4SXhIb3dmUzViUVZ0UkoyRnpKZlNjU0NGT2l6ZzR1?=
 =?utf-8?B?YW9KWEtQSytlUGZDQTlmN0hDNDJLMnRxSkNMWHlxY3IxRElQVHZiYWR0Q0ht?=
 =?utf-8?B?SmJtcUJ5YjF3UCsrN2hrS05nOWhpQ0RSQ0dxZjhnQkExQ0VTRDRqY2xFNFZs?=
 =?utf-8?B?akxQZWkwYnZNMnRQU2R2OGV0MTRqUThDMkpVUjJYcDZSVkN4SXJ6cHVraG9X?=
 =?utf-8?B?QjBnMVRuMWZEc3RNWEUwbHc4SStZaG4zY3dUdGJWYlZYWUFXa0wvV0UxWkxN?=
 =?utf-8?B?K01HSG1OZENFQlNqaVRhclZ1M2Z0Y3pEUzc0NEtkN000T0FtL01PZ2NnZDNK?=
 =?utf-8?B?VXFEMGpvd3BsQUJ4U3Nvcytxbm5FTmdpL0c3cUdqMmttOXpMTUZ5ZTdiYUc4?=
 =?utf-8?B?ZDA2QTB0eGwrck5QYnl5NFZhajJRUzNVWTgyRG85cnI2S2xDdDk1VmtqU2FE?=
 =?utf-8?B?ZFA5SWI1Qzc4K2dQQlFXOHhTd3RpRVpGSHZwY2JtNGhZUVBKd3JZUkl2TWhu?=
 =?utf-8?B?dkxoeSszeGQvN0pXbWh3dmxUVjBNWFhUeElCaE16VXNxZmpmOUcyS2d1K2d1?=
 =?utf-8?B?czdLUWlqZHpUWTlwcmZhTnhTaEZSZGhVNVNSZG5tam1kQ1p4Z2wwZTNZQUl1?=
 =?utf-8?B?enhwRGZ1bkhPTDZXeGtHUVRXNXJPVEp5NVowYloxQ3d4Z3h0T3N2SlFxN3ZS?=
 =?utf-8?B?Z2FEWTJ5UE9HamU4R0g5d1hUK2VZWXRYb0J6YkpudUJtQlNkU2pwSEUyWHhK?=
 =?utf-8?B?MXNRVzExTkMxQnZ0MlZqaW5KNUgrRHpjSkZ3Q2tmaGVCblh6U3ZLZGRObGhw?=
 =?utf-8?B?ZUFTZ0tJdVlhZDRqWGlpUzlRZzQ1RTEvd09NZHZMcmI5QjVuUEtiUmpqS1lk?=
 =?utf-8?B?c2M4eDVkcTkxK2V3bTdYKzVwWm93a1liYlA4L1Y4d2JHS2RxcGE3YkthVmRJ?=
 =?utf-8?B?QW41d20vYzlnWXJiQ0RqeXlUeVI3RTNLbGxFbW0rYXVpTWttb2Vtc1VSOEpR?=
 =?utf-8?B?OVBMMVVNK2djTGQ2NWMzZVFCVlcrOXZiTVVYMHpxT2pTcEx4REFSQWFpTVdz?=
 =?utf-8?B?OTFTVnl1U25SNkYzb1pjQXZoS2hUYUdwVEFsR2txNEhKajBucytsV1lacWpt?=
 =?utf-8?B?UFdIclcxUGhrRmo0Y1lNazdmK0J3NXFrVlhQbnRCcjZuSE1zV1hMWVlrUEVq?=
 =?utf-8?B?Ym5mck9wWDcrV2lRSUhIb3NiU1pvbUYzNlc3MEpYdnhsKzZaRWtHSWdpYURl?=
 =?utf-8?B?Rk80RkJ2RWZCc1NneS9lWldXYVpnQ0FsS2UzZXJLdzk0dU5XQVAvOHk1VnBE?=
 =?utf-8?B?Zjk2UUlSSVRiOGNrN2JvdHBPb084TkluM3NHNXdYWUxEdmFwaDdiTnZGODVG?=
 =?utf-8?B?MkhHZ1pCVlRWVHdLZFJ5M0QrMkd6M2V3bTF5QTlZQUJKL0ZnTzd2QndBVkFK?=
 =?utf-8?B?RmYzNllobTUyVExoWHN4dUVDc1gyVDJVeXQyaEsrdlY5eGZMeEZkRXhPanlV?=
 =?utf-8?B?Nm5IMnNtMTN3VkJnVE5ETjIvOVdhVHBTdndEWTdtQVRMMW5FNUdRTE5zOGtq?=
 =?utf-8?B?Z0p3WlN1eWlPM1pONHlmUC85UjBJb3J2ck1CVDdOeDlORmlJSmE3aVlQNjN6?=
 =?utf-8?B?Wm5NZXZKUHlmZXUvZ3kxN2lGc1BKajJTT3hvMTBQRHNsa2VidWtHR1JUdGlt?=
 =?utf-8?B?QVZkckxLSWpmUWlkWTBNcHVOTlFhc3B3UFhaVzY1K0hMdFQ4Mk9tWG1jWmtn?=
 =?utf-8?B?R09zUkpoU016bzF6RVBVYVNwdWY3Q1RaSUt1ZnFzUDdWL3FlcFliTnhzUXZ4?=
 =?utf-8?Q?cj4fN6sctZJT15gBZYdqkqg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <28A5D769EC08A44181A0CBE8EA9EF064@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e756f2db-e5ca-4050-623a-08de3994f541
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:41:46.5349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QMc1XlbEgg7MxFzqi7iWtVdGktp5Rrmt2NfmcMQe2WfykqvuaFjutDmWTEFqUopmOqgIIVloHvmT1X2NuYf2OiRWL/ZNdlegzDA8uKywXo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6138
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZh
Y3RvciBvdXQgYWxpZ25fbWF4X3NpbmtfZHNjX2lucHV0X2JwcCgpLCBhbHNvIHVzZWQgbGF0ZXIg
Zm9yDQo+IGNvbXB1dGluZw0KPiB0aGUgbWF4aW11bSBEU0MgaW5wdXQgQlBQIGxpbWl0Lg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyOCArKysrKysr
KysrKysrKysrLS0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCAxMCBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGls
bGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDAwMGZjY2MzOWEyOTIuLmRjYjliYzEx
ZTY3N2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
QEAgLTE4OTMsMTIgKzE4OTMsMjcgQEAgaW50IGludGVsX2RwX2RzY19tYXhfc3JjX2lucHV0X2Jw
YyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gwqAJcmV0dXJuIGludGVsX2Rw
X2RzY19taW5fc3JjX2lucHV0X2JwYygpOw0KPiDCoH0NCj4gwqANCj4gK3N0YXRpYyBpbnQgYWxp
Z25fbWF4X3NpbmtfZHNjX2lucHV0X2JwcChjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+
ICpjb25uZWN0b3IsDQo+ICsJCQkJCWludCBtYXhfcGlwZV9icHApDQo+ICt7DQo+ICsJdTggZHNj
X2JwY1szXTsNCj4gKwlpbnQgbnVtX2JwYzsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCW51bV9icGMg
PSBkcm1fZHBfZHNjX3Npbmtfc3VwcG9ydGVkX2lucHV0X2JwY3MoY29ubmVjdG9yLQ0KPiA+ZHAu
ZHNjX2RwY2QsDQo+ICsJCQkJCQnCoMKgwqDCoMKgwqAgZHNjX2JwYyk7DQo+ICsJZm9yIChpID0g
MDsgaSA8IG51bV9icGM7IGkrKykgew0KPiArCQlpZiAoZHNjX2JwY1tpXSAqIDMgPD0gbWF4X3Bp
cGVfYnBwKQ0KPiArCQkJcmV0dXJuIGRzY19icGNbaV0gKiAzOw0KPiArCX0NCj4gKw0KPiArCXJl
dHVybiAwOw0KPiArfQ0KPiArDQo+IMKgaW50IGludGVsX2RwX2RzY19jb21wdXRlX21heF9icHAo
Y29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0KPiDCoAkJCQkgdTgg
bWF4X3JlcV9icGMpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gLQlpbnQgaSwgbnVtX2JwYzsNCj4gLQl1
OCBkc2NfYnBjWzNdID0ge307DQo+IMKgCWludCBkc2NfbWF4X2JwYzsNCj4gwqANCj4gwqAJZHNj
X21heF9icGMgPSBpbnRlbF9kcF9kc2NfbWF4X3NyY19pbnB1dF9icGMoZGlzcGxheSk7DQo+IEBA
IC0xOTA4LDE0ICsxOTIzLDcgQEAgaW50IGludGVsX2RwX2RzY19jb21wdXRlX21heF9icHAoY29u
c3Qgc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoA0KPiDCoAlkc2Nf
bWF4X2JwYyA9IG1pbihkc2NfbWF4X2JwYywgbWF4X3JlcV9icGMpOw0KPiDCoA0KPiAtCW51bV9i
cGMgPSBkcm1fZHBfZHNjX3Npbmtfc3VwcG9ydGVkX2lucHV0X2JwY3MoY29ubmVjdG9yLQ0KPiA+
ZHAuZHNjX2RwY2QsDQo+IC0JCQkJCQnCoMKgwqDCoMKgwqAgZHNjX2JwYyk7DQo+IC0JZm9yIChp
ID0gMDsgaSA8IG51bV9icGM7IGkrKykgew0KPiAtCQlpZiAoZHNjX21heF9icGMgPj0gZHNjX2Jw
Y1tpXSkNCj4gLQkJCXJldHVybiBkc2NfYnBjW2ldICogMzsNCj4gLQl9DQo+IC0NCj4gLQlyZXR1
cm4gMDsNCj4gKwlyZXR1cm4gYWxpZ25fbWF4X3NpbmtfZHNjX2lucHV0X2JwcChjb25uZWN0b3Is
IGRzY19tYXhfYnBjICoNCj4gMyk7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBpbnQgaW50ZWxf
ZHBfc291cmNlX2RzY192ZXJzaW9uX21pbm9yKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNw
bGF5KQ0KDQo=
