Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC51B5500F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50AE010EC48;
	Fri, 12 Sep 2025 13:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2pLd9mI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC0C10EC48
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685173; x=1789221173;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NlZFP9WFdEQoMBiNl0lBALZ02eyzszOhfIYHZgd8AM8=;
 b=Y2pLd9mIVEcy87lhH4N8I7XzJKmYp6zzqAfibB3yZt3jXf+VYGkkL5Mw
 t7DH+ftz47Ajd9hOwHXDqk8oXU9t05QFeI/51IfYqcI6jdvMX/NDhP2rl
 LNSZqRd9ez4q4Wdi1t48UuB7eDh12yxQAmxtN3bKIphmf7N77WfhG1m/w
 Q85SyVozNDe8wsChwwnWyGeazU2BK7g/2/Sz3vS2DOAV285orXfmzv4v6
 rjzSDpbGAKRe+0NMEafScZ8PFxkM8ujD6tU6UWdDDQHyeRGbSuGqJb7no
 LrTlNoeXnKxT129zhdKmYoM0odZBT/kvRwIijWW25Da0PMPdllMDiJVQC Q==;
X-CSE-ConnectionGUID: pQJjJV6/SP+ZQIuMWzS8sA==
X-CSE-MsgGUID: fZvZtJ6tSTGleU2803iu3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60093229"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60093229"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:52:53 -0700
X-CSE-ConnectionGUID: ZDYdEdEHQamPd3diB/pvIQ==
X-CSE-MsgGUID: /9TC9bQpTmy8X+1/DNBf5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174750121"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:52:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:52:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 06:52:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.80)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:52:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pcx1bWe2ZnA4eeT0Ig6qJ/xOxxK+QIlMl09yVdXTi/tRrbxGZCLLbHhakwzrmLvjyi9RvgGjTIq8L4Ba6o+dqyfoqZTRhWWO31euKh0ZBWO/ra7qPnl0UlUuZpnmhdBTmneDeOUtcc2qYMCvQwIYPTJRAy0DETSUYnpH9OvhX47DAHFEQ3JJjKc5SIwPORHU4jnFehFq5DbUePJ/5uZDqapqn9HS7E0QwGLm05Xtjir20xIY8GIS7jinELFZL9abbFod+9Zbrtn0FUQ1NvBzsVFWGlIceKJtaaSYTejWJA+C+uUhU7qkOC2bHUwKtGOk8Dc5unYwFqgd0IgIfAz4dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlZFP9WFdEQoMBiNl0lBALZ02eyzszOhfIYHZgd8AM8=;
 b=tIVA/QyWNm74gsGc+66Gh9rFZ9aX8J7rSaQQ4DqXYQxB7yYrqH+bzdHHpWMhU0xYsVTVvU08xuruoxLbCspy9wByrxmjx1AKvVKXXwZr0rkvL6/v3RwmZRqU5pBa7tBjsBFumsp9OvkQ5oMqsUQW12/qptJpNt2ehbf1Ym0O5DeCGVvMZ15nzB7TLjoIvbXCXcedmaH12OW6ZQLVMeiW0CWTVE6lziF1csCRRaHih9Wflxxh+1u44J55r4s2B/UNyl+Gs3+jSendLFtf00LzM+3JOaHbuLJWtazFYiM0YoRqZXNQfeEaOqNEkvbBZp6uv/Piy04JjPonQ0+iPHvGXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 12 Sep
 2025 13:52:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 13:52:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 3/6] drm/i915/pm: Move the hibernate+D3 quirk stuff
 into noirq() pm hooks
Thread-Topic: [PATCH v2 3/6] drm/i915/pm: Move the hibernate+D3 quirk stuff
 into noirq() pm hooks
Thread-Index: AQHbkr+6IAyKNBZL3Ey2os3+gTulu7SQs4uA
Date: Fri, 12 Sep 2025 13:52:48 +0000
Message-ID: <6598673d84da07de40e826ccaa6702b55b3adbfe.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: aaab6ed8-eea5-4601-1af7-08ddf203a8d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SVZuTDdhWWdLcHRzS3ppZGlkdHBjTUpRM2swd2VFUmpESjhIYUZ6Qloxb0xs?=
 =?utf-8?B?TzJRZmh1MWh3cFMwdEVOM3dFUEtHZEZRTVFDLzhISXBSeXovbysxVnpHZDlo?=
 =?utf-8?B?VTZCNFdjYzBKYXdpbGRpc3kwdHliVEF0ZHk1cEEwanNLa3JOZVoyU1RLcFgw?=
 =?utf-8?B?M2EyV3BGenJiVlp2VllkNUlxQVJ0UVpBQU5YQ1ZqWlNZZFhrR1RxNEFPVmxD?=
 =?utf-8?B?RGZIVkFmQ3R6KzJkREw1b1lCbS83VGJJcysyRkJYTGgySnpVdWJqYUJOdWxx?=
 =?utf-8?B?OTJkVDNma2NXeU1KeHcrTC9Id3U5dGhBMTRFYmk0dGVybjZsellqUS9DR0xF?=
 =?utf-8?B?b0Q4Q0dPYjRTSXdUYm5HRFhxTEdPV1hqaUh0NzdPaU04U0pZMFFMS3kxdWxM?=
 =?utf-8?B?blRnRmpHYU5rWTVtbFM1OHpYQVZxWkJTOWdkaXJtWmprWGd4cFFzekU4ZGZ5?=
 =?utf-8?B?ZktEYWtOekhzSk1NNEFZbXZIWllHUWlhdENHczlWQTdiU2ZDMDU1enhEYnNv?=
 =?utf-8?B?VG51MnVwRlhLYUpQR2E5MTlDVm9yWDRpNU5iMUNLczdQR1lISGhMRzNtbGxi?=
 =?utf-8?B?LzJwN3ZyZnFkZ3FiV2ZYQWtRalJZYTMyOWhIcGNScXkyZHBIdmdBUW5IZzRy?=
 =?utf-8?B?d2llcURzUzMvYlU2bUgvUThFemt3dTNvWjlnK0xwVUVJOCtLbVl2c2FoV1pa?=
 =?utf-8?B?REpLWFNseVprMHZLQ3Y3S1pIb1ZmbWlFeDFCNVdBWUUwV2EzRmdSQk5JZzdk?=
 =?utf-8?B?c053RlY4NHU3N2IzV2RVaDBMUzh3VDd3aWxrVkVxZ0J4akN5dGdFV1QreWNp?=
 =?utf-8?B?R2lRendIbkFpWTdueXV5UHBPRzIyY1BNcWpvUXhFY2x4aEUzQldpQnBVM3Zp?=
 =?utf-8?B?L1g2aWMveFZIaUdXMXN2a0RvcENVZ1Z1dXVXQTRJU05kWFhtVVpoYmZiSi9s?=
 =?utf-8?B?UlcrYmNHOGkyODdqOG5wN0IzVlliVUJhL1dZUlAvL1BCdDA5MlBra0F3Rk9j?=
 =?utf-8?B?NFpQTkFSbmcydmRVV3lveEtsZmxka3hINEFjNnJJdHZKNDVGT0tlZjhGVmw0?=
 =?utf-8?B?SWhSZVNmeFFXM3Z5NzZJT2U1bUcyeDJiQi8wcXQ2NHlLaWNObGNkWmdQNEdY?=
 =?utf-8?B?Rnp4czFOU0NJekhFcjJGalZkbUdaazBLTVZTcVJrSENNcVFrUDBXMmwzdVIz?=
 =?utf-8?B?YUI2Y256TFlTTlB5aXRUdXE5MDk3S0NxWTFPNWkxV2JQck9iNVV6R1VrV0h5?=
 =?utf-8?B?Y0JoejZGamVJSjBTRHpwQkFBR3Jhb0FmU3dVUUY1TmVwbmF2YmF2L1ZSZ1gy?=
 =?utf-8?B?QnR2KzRMcXVFbmFHUUtkbktxU0VZczBnQ0hIVDlTRmw5M08ycklWYkNyRGMz?=
 =?utf-8?B?cFAwSTB3bmhSZXA5aEJiY20wSGJhQXAzTCtOMS9QRjN1eVJwakd3Sk9yZmNp?=
 =?utf-8?B?a1NtTWQxUXE0dExPRlp2Umx0WjJYT3ZWbTYzbmdtVmJTWHVLQlRHcTFJRDhH?=
 =?utf-8?B?REUrYUJiQ0lzTjVrWXZidFBpSmlrOFdacmc5ZTJoTlcxRnZFYXZ6S3VRUExa?=
 =?utf-8?B?L3lsdGJuaWJ6OWJlS25SSU53aXA1c0pza3NPZjlUOGp5VklIaSt2Y05vY0h6?=
 =?utf-8?B?QUtPTHFGek8rWXB5bHdRWWZqRkV2bVgrbmVLL2tvcnlENDZQckRwN2JWTzJ2?=
 =?utf-8?B?Z3VZQUZUeGNqR3lVTFFDbE93RUlhT0tvUDlaSzIyRkd6c1poRjJBUDYwK28y?=
 =?utf-8?B?RVVsbVNPNDZjcm9KZkxDeDBKMjdYczJNUEIvbUtOR0JPdGFSb2dnNjVjNk1Z?=
 =?utf-8?B?Yjc4T0l2b3B5bmlGcGJiSDlqNlVCa1hrU1M4N1JuRUdKQW5EOUQ2NVd2QlJ1?=
 =?utf-8?B?RWR0YlU3NXU0QlJqWUVnajdKMnNGdXVRM29pZzNlbFBBSjZCZmk0eEh1UnNs?=
 =?utf-8?B?YWdSNXpCUjVOc0t0ZFhHMTI3eDFsVk5DK1NFb3NpVklXV3dOMjRCaFY5NFBX?=
 =?utf-8?B?WVRuQUhFeFJ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWJkNmVwVGZnQUxqYVM1aFVVQVZkSWljY0dPRjBJRkJZV0NzSUFzaTBIbjdl?=
 =?utf-8?B?WGdLTWhyY28wYjdoelJHb2NjM2llWTVLbCtWSXRiaE9ianlIMS8ycFNoUlJT?=
 =?utf-8?B?ajRTYkhVdGlrb3FwT29yMFR2SVVQVG00Zy9TWnk0K3Fna0JDS1g2UDRLbGIx?=
 =?utf-8?B?R2xWWHdEdlJwKzhIRFhFZWdiNVBaREFqV3hPK1ZYKzBGTnRmM29ISzFvaElH?=
 =?utf-8?B?ay9hUTEya0xWeDIrUm95cGhnSy9yRDRSdnV2MHdBblZKOWRlQWxxRlg0WXV2?=
 =?utf-8?B?K3FpRjZtM2dPOC91S1lKaXNKMkdiTDY5aTA2b1FScG5IQ1dYYnFWVTdmalEw?=
 =?utf-8?B?aXIyVnhIYW82Qy9YREJ2cUp3czlTTlVtNlJET0I5Nlgzdnk3S3VuQm4zK3VM?=
 =?utf-8?B?a2M3UW1iTERocWdWL2hlZUtiTFVqN3gwWnRqUE5ERVVudG8vQzlySE9wVW5C?=
 =?utf-8?B?SGJHSlMxU1c0MHBuRmlWUVllc0ROblIxbEpJdnFTb2VCRitzaW1Hd0l2c0VK?=
 =?utf-8?B?UDREL1hsSnlJak0zN2VEUEd3Qytyc2VzaVlXNXl3cEdMd2MyUUJZRXZ1N250?=
 =?utf-8?B?Ty8xb0VGNlpnTTk1WEk3a3JyRmc4TEFtSDI0VTFxdVJyUUdMa1d6QnZmeFJh?=
 =?utf-8?B?NmxIQXJROFFEalNmNit1L29vVTkzeHhoc2lyb3VubUJncjAweXAvTnR3dG53?=
 =?utf-8?B?VmVNYnJ0WTQ5S2k2WTF5L1JOWUVyT1JyallWVnlVMlRORU5NamowbWt4N1FT?=
 =?utf-8?B?MXJKK0RFT29QRjJWRXlHS0NMRUE4NFFhWkN1UUkyTFZpSEhKdEJiSzMwV3BV?=
 =?utf-8?B?MHJSNklmUnYzTVhGYmxCaXhETjRyM041dU9LTy9wYjRTVTd3TGZCd0FtMEJT?=
 =?utf-8?B?NDBzaXNnb1hDa3dGTThta0xGTTVwQTQ1VjkzZVpNV0NiQzlNSnZ4QkhSbkFi?=
 =?utf-8?B?OUd0R2M3ZjduenUxZ081U2wwc00vUU1MUm4rMmpCNkJjeUt5L3JZK0lTbmNC?=
 =?utf-8?B?YllISlV1YVlsRENhZDhEYXVaQzhtTVpaRkdHS3ZOWmdybzZyRVRFQklPR0N3?=
 =?utf-8?B?L3hXdWJCYnUwbzJ6T3hYMWNMQVk3clVyNGU1bVRHOTM4aVh0bEp0UXozMlFP?=
 =?utf-8?B?aWtxL1hNeTFGdDhsNWVmNG9wR2dqb0gwbTFXRkh4Q3J2RnByZElPSWV6UG16?=
 =?utf-8?B?b3IzSS82S1RvK0RXQlBSVlBxM3R1dXdRc29Xd2FTTHJ5aWtlMVA0OGVzcHln?=
 =?utf-8?B?Qm43MXpXTFhyTnF1cXFqbmZLWGdEOUcwVWZHUy9LZEs4b2xrVloyV1NMazBS?=
 =?utf-8?B?TFpLOFY1Z0EwMkZJaXZ6b1UyczF3OC9XOTdhNXpZZ00xaUFVYzBid2s0SnR5?=
 =?utf-8?B?eVFwbFlTWGMrcEgvUVhMYkNTeUtaZjB3UHJXMHYzdVU1aVJya0VkOThrTTVR?=
 =?utf-8?B?TmRaOW1ITVJ3eS8ySTJ3a1hNaXY1NlBlM2ZIcngxb0hlQjhnc0pFcy9sdWk1?=
 =?utf-8?B?YS9DUWFoZWx6aWpUTFAwQ01taTU0Vk56THFPaTBaalQxS29KQnFJTm1IQVQ1?=
 =?utf-8?B?MzRabzVjc1NxeEREZksxSkJQS2xwVVdlVFRzYTB3R3g0TGNJeXp6NHVBUTV2?=
 =?utf-8?B?ZTRXOGlHVC9UOVhES3U1ZFV0M0s0eHNGbWVidUNUUlZJcjNMVGVPcWJQUVl0?=
 =?utf-8?B?RnVvZDVaaVZxMEgyckk0R2lQOEVxU21nc2lPNSs0TXd6UTdCb3NyVE5ncnpj?=
 =?utf-8?B?TEdwWVhrS3B1Yjk4MXhhVzJzbk5XbVVFRDRUSXVrMXBRY2FqRUQxcTVqTHVs?=
 =?utf-8?B?bUtWUnFWZGJFNmdDS3ZFZUgyTWd6QXdQUWZFbnNjWmp6NUtXMnFKQzEyVTA2?=
 =?utf-8?B?dmJmMmszM0dWNnA4dFk5SkFqbVhjWXkzWjErUUpOU085a1E0ZjZYU1BabnBX?=
 =?utf-8?B?MkhmamdTSEFiTXZDR2hQR21TdkNTTVVEOWpwYUdRcnEzTnhtN0JlQ2VNRWVp?=
 =?utf-8?B?UEpQbGtZRXZLakVPV2NZZUFSY1I5QWdyOEY4VlRwWEdLOEs2M2IrQzU2NWN4?=
 =?utf-8?B?T2d0T3BhNW5qeE1KV2RpNWpNRXdIZ2VCTUdQVGVCSDY4SUlLaDBSUHFickQy?=
 =?utf-8?B?cXg4VkJIc0xlV2lMbWlYZUNZMjdvQnlGbGZYUTNHczdMNk9wNzN2YTNOc2Z4?=
 =?utf-8?B?TUpDRXJicmVqZ2pxb0dVMWxtMmJvem05QUMxdkR2c1NmNDFxRG9xS0FIbDZF?=
 =?utf-8?B?cUJNY1p6bHVqQzQxL1BxcjVjeFZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <07C7842F13580F44A6B7E015179F5951@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaab6ed8-eea5-4601-1af7-08ddf203a8d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 13:52:48.7679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wnzarr/OEoe87aDG3QJZ+uclT2UZsdl5Mffio6vamd6Ka/sWqzSTYk5bxGVII9MkQLxhFatUrrb+tlSD9YaI1lata44De46RkFzmXGmXZfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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

T24gVHVlLCAyMDI1LTAzLTExIGF0IDIxOjU2ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSWYgdGhlIGRyaXZlciBkb2Vzbid0IGNhbGwgcGNpX3NhdmVfc3RhdGUoKSBkcml2ZXJz
L3BjaSB3aWxsDQo+IG5vcm1hbGx5IHNhdmUrcG93ZXIgbWFuYWdlIHRoZSBkZXZpY2UgZnJvbSB0
aGUgX25vaXJxKCkgcG0gaG9va3MuDQo+IA0KPiBXZSBjYW4ndCBsZXQgdGhhdCBoYXBwZW4gYXMg
c29tZSBvbGQgQklPU2VzIGZhaWwgdG8gaGliZXJuYXRlDQo+IHdoZW4gdGhlIGRldmljZSBpcyBp
biBEMy4gSG93ZXZlciwgd2UgY2FuIGdldCB2ZXJ5IGNsb3NlIHRvDQo+IHRoZSBzdGFuZGFyZCBi
ZWhhdmlvdXIgYnkgZG9pbmcgb3VyIGV4cGxpY2l0IHBjaV9zYXZlX3N0YXRlKCkNCj4gYW5kIHBj
aV9zZXRfcG93ZXJfc3RhdGUoKSBzdHVmZiBmcm9tIGRyaXZlciBwcm92aWRlZCBfbm9pcnEoKQ0K
PiBob29rcy4NCj4gDQo+IFRoaXMgcmVzdWx0cyBpbiBhIGNoYW5nZSBvZiBiZWhhdmlvdXIgd2hl
cmUgd2Ugbm8gbG9uZ2VyIGdvDQo+IGludG8gRDMgYXQgdGhlIGVuZCBvZiBmcmVlemVfbGF0ZSwg
c28gd2hlbiBpdCBjb21lcyB0aW1lDQo+IHRvIHRoYXcoKSB3ZSdsbCBhbHJlYWR5IGJlIGluIEQw
LCBhbmQgdGh1cyB3ZSBjYW4gZHJvcCB0aGUNCj4gZXhwbGljaXQgcGNpX3NldF9wb3dlcl9zdGF0
ZShEMCkgY2FsbC4NCj4gDQo+IFByZXN1bWFibHkgc3dpdGNoZXJvbyBzdXNwZW5kIHdpbGwgd2Fu
dCB0byBnbyBpbnRvIEQzIHNvDQo+IGNhbGwgdGhlIF9ub2lycSgpIHN0dWZmIGZyb20gdGhlIHN3
aXRjaGVyb28gc3VzcGVuZCBob29rLA0KPiBhbmQgc2luY2Ugd2UgZHJvcHBlZCB0aGUgcGNpX3Nl
dF9wb3dlcl9zdGF0ZShEMCkgZnJvbQ0KPiByZXN1bWVfZWFybHkoKSB3ZSdsbCBuZWVkIHRvIGFk
ZCBvbmUgYmFjayBpbnRvIHRoZQ0KPiBzd2l0Y2hlcm9vIHJlc3VtZSBob29rLg0KPiANCj4gQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jIHwgNzYgKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25z
KCspLCAyNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RyaXZlci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIu
Yw0KPiBpbmRleCBlMDZmMjk1NjM4MmMuLjk5NTIwNWUyNGViZiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RyaXZlci5jDQo+IEBAIC0xMTI0LDYgKzExMjQsMjEgQEAgc3RhdGljIGludCBp
OTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0DQo+IGRybV9kZXZpY2UgKmRldiwgYm9vbCBoaWJl
cm5hdGlvbikNCj4gwqANCj4gwqAJcGNpX2Rpc2FibGVfZGV2aWNlKHBkZXYpOw0KPiDCoA0KPiAr
CXJldHVybiAwOw0KPiArDQo+ICtmYWlsOg0KPiArCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRz
KHJwbSk7DQo+ICsJaWYgKCFkZXZfcHJpdi0+dW5jb3JlLnVzZXJfZm9yY2V3YWtlX2NvdW50KQ0K
PiArCQlpbnRlbF9ydW50aW1lX3BtX2RyaXZlcl9yZWxlYXNlKHJwbSk7DQo+ICsNCj4gKwlyZXR1
cm4gcmV0Ow0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGk5MTVfZHJtX3N1c3BlbmRfbm9pcnEo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwgYm9vbA0KPiBoaWJlcm5hdGlvbikNCj4gK3sNCj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7DQo+ICsJc3Ry
dWN0IHBjaV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2KGRldl9wcml2LT5kcm0uZGV2KTsNCj4gKw0K
PiDCoAkvKg0KPiDCoAkgKiBEdXJpbmcgaGliZXJuYXRpb24gb24gc29tZSBwbGF0Zm9ybXMgdGhl
IEJJT1MgbWF5IHRyeSB0bw0KPiBhY2Nlc3MNCj4gwqAJICogdGhlIGRldmljZSBldmVuIHRob3Vn
aCBpdCdzIGFscmVhZHkgaW4gRDMgYW5kIGhhbmcgdGhlDQo+IG1hY2hpbmUuIFNvDQo+IEBAIC0x
MTQ0LDEzICsxMTU5LDYgQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0
DQo+IGRybV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5hdGlvbikNCj4gwqAJCXBjaV9zZXRfcG93
ZXJfc3RhdGUocGRldiwgUENJX0QzaG90KTsNCj4gwqANCj4gwqAJcmV0dXJuIDA7DQo+IC0NCj4g
LWZhaWw6DQo+IC0JZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMocnBtKTsNCj4gLQlpZiAoIWRl
dl9wcml2LT51bmNvcmUudXNlcl9mb3JjZXdha2VfY291bnQpDQo+IC0JCWludGVsX3J1bnRpbWVf
cG1fZHJpdmVyX3JlbGVhc2UocnBtKTsNCj4gLQ0KPiAtCXJldHVybiByZXQ7DQo+IMKgfQ0KPiDC
oA0KPiDCoGludCBpOTE1X2RyaXZlcl9zdXNwZW5kX3N3aXRjaGVyb28oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsDQo+IEBAIC0xMTY5LDcgKzExNzcsMTUgQEAgaW50IGk5MTVfZHJpdmVy
X3N1c3BlbmRfc3dpdGNoZXJvbyhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4g
wqAJaWYgKGVycm9yKQ0KPiDCoAkJcmV0dXJuIGVycm9yOw0KPiDCoA0KPiAtCXJldHVybiBpOTE1
X2RybV9zdXNwZW5kX2xhdGUoJmk5MTUtPmRybSwgZmFsc2UpOw0KPiArCWVycm9yID0gaTkxNV9k
cm1fc3VzcGVuZF9sYXRlKCZpOTE1LT5kcm0sIGZhbHNlKTsNCj4gKwlpZiAoZXJyb3IpDQo+ICsJ
CXJldHVybiBlcnJvcjsNCj4gKw0KPiArCWVycm9yID0gaTkxNV9kcm1fc3VzcGVuZF9ub2lycSgm
aTkxNS0+ZHJtLCBmYWxzZSk7DQo+ICsJaWYgKGVycm9yKQ0KPiArCQlyZXR1cm4gZXJyb3I7DQo+
ICsNCj4gKwlyZXR1cm4gMDsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGludCBpOTE1X2RybV9y
ZXN1bWUoc3RydWN0IGRybV9kZXZpY2UgKmRldikNCj4gQEAgLTEyNzcsMjMgKzEyOTMsNiBAQCBz
dGF0aWMgaW50IGk5MTVfZHJtX3Jlc3VtZV9lYXJseShzdHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2
KQ0KPiDCoAkgKiBzaW1pbGFyIHNvIHRoYXQgcG93ZXIgZG9tYWlucyBjYW4gYmUgZW1wbG95ZWQu
DQo+IMKgCSAqLw0KPiDCoA0KPiAtCS8qDQo+IC0JICogTm90ZSB0aGF0IHdlIG5lZWQgdG8gc2V0
IHRoZSBwb3dlciBzdGF0ZSBleHBsaWNpdGx5LA0KPiBzaW5jZSB3ZQ0KPiAtCSAqIHBvd2VyZWQg
b2ZmIHRoZSBkZXZpY2UgZHVyaW5nIGZyZWV6ZSBhbmQgdGhlIFBDSSBjb3JlDQo+IHdvbid0IHBv
d2VyDQo+IC0JICogaXQgYmFjayB1cCBmb3IgdXMgZHVyaW5nIHRoYXcuIFBvd2VyaW5nIG9mZiB0
aGUgZGV2aWNlDQo+IGR1cmluZw0KPiAtCSAqIGZyZWV6ZSBpcyBub3QgYSBoYXJkIHJlcXVpcmVt
ZW50IHRob3VnaCwgYW5kIGR1cmluZyB0aGUNCj4gLQkgKiBzdXNwZW5kL3Jlc3VtZSBwaGFzZXMg
dGhlIFBDSSBjb3JlIG1ha2VzIHN1cmUgd2UgZ2V0IGhlcmUNCj4gd2l0aCB0aGUNCj4gLQkgKiBk
ZXZpY2UgcG93ZXJlZCBvbi4gU28gaW4gY2FzZSB3ZSBjaGFuZ2Ugb3VyIGZyZWV6ZSBsb2dpYw0K
PiBhbmQga2VlcA0KPiAtCSAqIHRoZSBkZXZpY2UgcG93ZXJlZCB3ZSBjYW4gYWxzbyByZW1vdmUg
dGhlIGZvbGxvd2luZyBzZXQNCj4gcG93ZXIgc3RhdGUNCj4gLQkgKiBjYWxsLg0KPiAtCSAqLw0K
PiAtCXJldCA9IHBjaV9zZXRfcG93ZXJfc3RhdGUocGRldiwgUENJX0QwKTsNCj4gLQlpZiAocmV0
KSB7DQo+IC0JCWRybV9lcnIoJmRldl9wcml2LT5kcm0sDQo+IC0JCQkiZmFpbGVkIHRvIHNldCBQ
Q0kgRDAgcG93ZXIgc3RhdGUgKCVkKVxuIiwNCj4gcmV0KTsNCj4gLQkJcmV0dXJuIHJldDsNCj4g
LQl9DQo+IC0NCj4gwqAJLyoNCj4gwqAJICogTm90ZSB0aGF0IHBjaV9lbmFibGVfZGV2aWNlKCkg
Zmlyc3QgZW5hYmxlcyBhbnkgcGFyZW50DQo+IGJyaWRnZQ0KPiDCoAkgKiBkZXZpY2UgYW5kIG9u
bHkgdGhlbiBzZXRzIHRoZSBwb3dlciBzdGF0ZSBmb3IgdGhpcw0KPiBkZXZpY2UuIFRoZQ0KPiBA
QCAtMTMzMSwxMSArMTMzMCwxNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3Jlc3VtZV9lYXJseShz
dHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2KQ0KPiDCoA0KPiDCoGludCBpOTE1X2RyaXZlcl9yZXN1
bWVfc3dpdGNoZXJvbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqB7DQo+ICsJ
c3RydWN0IHBjaV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2KGk5MTUtPmRybS5kZXYpOw0KPiDCoAlp
bnQgcmV0Ow0KPiDCoA0KPiDCoAlpZiAoaTkxNS0+ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9PSBE
Uk1fU1dJVENIX1BPV0VSX09GRikNCj4gwqAJCXJldHVybiAwOw0KPiDCoA0KPiArCXJldCA9IHBj
aV9zZXRfcG93ZXJfc3RhdGUocGRldiwgUENJX0QwKTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1
cm4gcmV0Ow0KPiArDQo+IMKgCXJldCA9IGk5MTVfZHJtX3Jlc3VtZV9lYXJseSgmaTkxNS0+ZHJt
KTsNCj4gwqAJaWYgKHJldCkNCj4gwqAJCXJldHVybiByZXQ7DQo+IEBAIC0xMzkyLDYgKzEzOTYs
MTYgQEAgc3RhdGljIGludCBpOTE1X3BtX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZGV2aWNlDQo+ICpr
ZGV2KQ0KPiDCoAlyZXR1cm4gaTkxNV9kcm1fc3VzcGVuZF9sYXRlKCZpOTE1LT5kcm0sIGZhbHNl
KTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgaW50IGk5MTVfcG1fc3VzcGVuZF9ub2lycShzdHJ1
Y3QgZGV2aWNlICprZGV2KQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0ga2Rldl90b19pOTE1KGtkZXYpOw0KPiArDQo+ICsJaWYgKGk5MTUtPmRybS5zd2l0Y2hfcG93
ZXJfc3RhdGUgPT0gRFJNX1NXSVRDSF9QT1dFUl9PRkYpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+
ICsJcmV0dXJuIGk5MTVfZHJtX3N1c3BlbmRfbm9pcnEoJmk5MTUtPmRybSwgZmFsc2UpOw0KPiAr
fQ0KPiArDQo+IMKgc3RhdGljIGludCBpOTE1X3BtX3Bvd2Vyb2ZmX2xhdGUoc3RydWN0IGRldmlj
ZSAqa2RldikNCj4gwqB7DQo+IMKgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0ga2Rl
dl90b19pOTE1KGtkZXYpOw0KPiBAQCAtMTQwMiw2ICsxNDE2LDE2IEBAIHN0YXRpYyBpbnQgaTkx
NV9wbV9wb3dlcm9mZl9sYXRlKHN0cnVjdCBkZXZpY2UNCj4gKmtkZXYpDQo+IMKgCXJldHVybiBp
OTE1X2RybV9zdXNwZW5kX2xhdGUoJmk5MTUtPmRybSwgdHJ1ZSk7DQo+IMKgfQ0KPiDCoA0KPiAr
c3RhdGljIGludCBpOTE1X3BtX3Bvd2Vyb2ZmX25vaXJxKHN0cnVjdCBkZXZpY2UgKmtkZXYpDQo+
ICt7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBrZGV2X3RvX2k5MTUoa2Rl
dik7DQo+ICsNCj4gKwlpZiAoaTkxNS0+ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9PSBEUk1fU1dJ
VENIX1BPV0VSX09GRikNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlyZXR1cm4gaTkxNV9kcm1f
c3VzcGVuZF9ub2lycSgmaTkxNS0+ZHJtLCB0cnVlKTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBp
bnQgaTkxNV9wbV9yZXN1bWVfZWFybHkoc3RydWN0IGRldmljZSAqa2RldikNCj4gwqB7DQo+IMKg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0ga2Rldl90b19pOTE1KGtkZXYpOw0KPiBA
QCAtMTY2Nyw2ICsxNjkxLDcgQEAgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgaTkxNV9wbV9vcHMg
PSB7DQo+IMKgCS5wcmVwYXJlID0gaTkxNV9wbV9wcmVwYXJlLA0KPiDCoAkuc3VzcGVuZCA9IGk5
MTVfcG1fc3VzcGVuZCwNCj4gwqAJLnN1c3BlbmRfbGF0ZSA9IGk5MTVfcG1fc3VzcGVuZF9sYXRl
LA0KPiArCS5zdXNwZW5kX25vaXJxID0gaTkxNV9wbV9zdXNwZW5kX25vaXJxLA0KPiDCoAkucmVz
dW1lX2Vhcmx5ID0gaTkxNV9wbV9yZXN1bWVfZWFybHksDQo+IMKgCS5yZXN1bWUgPSBpOTE1X3Bt
X3Jlc3VtZSwNCj4gwqAJLmNvbXBsZXRlID0gaTkxNV9wbV9jb21wbGV0ZSwNCj4gQEAgLTE2OTIs
NiArMTcxNyw3IEBAIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGk5MTVfcG1fb3BzID0gew0KPiDC
oAkudGhhdyA9IGk5MTVfcG1fdGhhdywNCj4gwqAJLnBvd2Vyb2ZmID0gaTkxNV9wbV9zdXNwZW5k
LA0KPiDCoAkucG93ZXJvZmZfbGF0ZSA9IGk5MTVfcG1fcG93ZXJvZmZfbGF0ZSwNCj4gKwkucG93
ZXJvZmZfbm9pcnEgPSBpOTE1X3BtX3Bvd2Vyb2ZmX25vaXJxLA0KPiDCoAkucmVzdG9yZV9lYXJs
eSA9IGk5MTVfcG1fcmVzdG9yZV9lYXJseSwNCj4gwqAJLnJlc3RvcmUgPSBpOTE1X3BtX3Jlc3Rv
cmUsDQo+IMKgDQoNCg==
