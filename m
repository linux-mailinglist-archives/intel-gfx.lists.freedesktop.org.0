Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF50B1C6A0
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7289410E769;
	Wed,  6 Aug 2025 13:08:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXVqO08Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2264410E769
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754485685; x=1786021685;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=W30yY1Uo0T0segwVAtu3KjS554/XyfswHQOspGLx11I=;
 b=ZXVqO08Yuhf3aLz7R2glNY2xfQ2yCTwroHxBCjd3X9dsXD4ANjiwzKPW
 zgCMu84CYHuORZ5FWf9tEoXk1jS+w4LmhKf3SMgTCUxx9DBNwV2uN/rxB
 1F8VPxc7vYL1lsahbhviKxTpf0upyYQ3p9qg4feGVjB2GkgQkelVN9T8c
 wBLkS5UMZj1xAd1qSzT4kIHZ4jhQDkOPwY6q7RzmcFWwnApPVuIlm4T+g
 Jo3GLp8Wl2tGK9u2m7Kl0RJ6xWt/kJ8Cwf/I6k3QOU7sEhxBlPFPb93RY
 PgoN9+dwRYUzKSZ+1FfgEgTuKDcMk98WTBN3SGr7qkIcqngmbBNvf/4V+ A==;
X-CSE-ConnectionGUID: rleMG5SXSNqUlJ6gkh8OaQ==
X-CSE-MsgGUID: ClpFHpchTgWH9cR7TfJZCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56764252"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56764252"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:08:05 -0700
X-CSE-ConnectionGUID: LDp6Sr/8Rym6dEGw0V5G7w==
X-CSE-MsgGUID: BHjbOUbATLCd1wSS24JZPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="163987536"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:08:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 06:06:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 06:06:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.53)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 06:05:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZdU3XpXsv7kSE6jx+hNQTxDo0FaVRtSpxTq6mwfICP84qNGvuE/9BuHe1ayNBBs9bQH1aXjNV48A1y1RmRMGqMwSbO9cfp6Y0AT60Xubngvu6sCOFdWzvhAHnee+6n39g65vW1RuDMAg5OCAkJuL328hd/7jOvjnugf78ow1X9ZxOJST4AJVh6EIjKi5ZN9myUasqVnDgpDzofsLA6B/Rdlj9T/9ehCFfmGvcHGArOgdl8GLUZWykwFHTs7c+gmBd5ABid/JP0MmOeaK8+y6MsuP9hjcDwWxAsN6FdFO4hyKbBiEuoyJedlmGNUQYYYhI52cM3P4rJRhamkJeKwh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W30yY1Uo0T0segwVAtu3KjS554/XyfswHQOspGLx11I=;
 b=AV9hpQM7Tu7LQPVycWjYwb6065zdahIq3TciOkmenrd0IeHhW2bGRKN6ilIvkobL0RxxZEhHJ2N47pzTOTfs+P0WjuMY2Tu7hPe4v0AMR0kWa584H/s/UOYxSshHe98EVmk/uL7LX1w8EVusXSb+M+h6Thz5A+7e+g5kxObfnYDvTXoQejTeWi2Uz4wuMd8t9nbt0/fB96qfOh+B4uPYv9yeA7W9Mw65CExDa2odWnZY8u7V+MHtGrNINSjXxwEdZPXC8RMyECRnslYmyrgGI6hXvSFNzgseBHGEyexixtiisTm0eEGtB7U1VqvzOR1dQr2eSJDExQpZ1Lk2ITelHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Wed, 6 Aug
 2025 13:05:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 13:05:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/dsi: Fix overflow issue in pclk parsing
Thread-Topic: [PATCH] drm/i915/dsi: Fix overflow issue in pclk parsing
Thread-Index: AQHcBr08r4P6I26gY0WZOPCKXIg8arRViamAgAAH/ACAAAaQgA==
Date: Wed, 6 Aug 2025 13:05:57 +0000
Message-ID: <e16d0ba06f74b8f359cde9510f4f771693675dfb.camel@intel.com>
References: <20250806102727.2043589-1-jouni.hogander@intel.com>
 <c02246564c85265aae33d6206ea750c274901cf3@intel.com>
 <b71b5161c44e2ef73bd46917339bfe6f4e8864ac@intel.com>
In-Reply-To: <b71b5161c44e2ef73bd46917339bfe6f4e8864ac@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: be87cf0a-11d0-491d-b078-08ddd4e9fbb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?czE5cUVhRVZhczhzU1JZcFRVb0ltaVNtWkEzd25nV3c5ZW02Z2xBVWFGYThz?=
 =?utf-8?B?aC9Hb1d5YVZQeTNmWmUxNVJraENBQ1V6NHdjQktQZk1DWEdBUTg3RW5QR2sy?=
 =?utf-8?B?QW9WbXR4WnZHWklpMEg2TktCcUlvdGxBeFNxVnlqZXVhWkNHcHAvNG5heDUw?=
 =?utf-8?B?TjFRbzJmaXdsM2IyTHBsMFlKYnQ4VWpvWFppYW5DT2dwVHN6MjVyRDdiaVdn?=
 =?utf-8?B?M2FtNTNNOXYrbzhyeXB3YXNzTnBGOFFrc3luSjRVMENrRThKMGpXd0dkWm9s?=
 =?utf-8?B?QkQyd2wxT3BvRW9TNmNrNW13dllzWklaNjRNblNtVWpRNzVyTXFjdzR1d3Qz?=
 =?utf-8?B?K0FsRUxKeVZtd2xjMU1qQWtWbEkvQlJBclQ3dVZqYWVmWUdDaFgyU25NclZl?=
 =?utf-8?B?cXRUbSs0VnJNSXlIZStFamlkdmZTcmdscVBZYVpGY2dNQ1NBOHF6YzJOQ1Bq?=
 =?utf-8?B?aVQ1WlQ1WDVma2NaZDgxbU9QSkdRU29sL1hDckRpZEFUUkl5elJ6VXJ4YXVE?=
 =?utf-8?B?RFR6MmVUSXc4b0R6WTNzZXlWeTlvQUs3NGUrem8zbHNHVUdpeENEcVJhN1d3?=
 =?utf-8?B?STZzZEpZcTJzQUhnT3ROT0YyNis1d1JaeFJkcWlXUDVqNS95Ri9nR3E2bWtm?=
 =?utf-8?B?d0VONDdBYzRER3pHaTIxMVFpb2hFbGhlaXpTS2lXVUlmQTZJanl6WHdGR1F5?=
 =?utf-8?B?Uit6cWY5a2RyNWVXQUVBRU1DY0NvN3oxM3J1UllIb0VOdHlGcVJIRDBMUjdY?=
 =?utf-8?B?NVpvTDVlbktBSTdoR05CUnM1bmtoNzNPdkpUK0xsYjlIRjNMaiswekZKaFpq?=
 =?utf-8?B?QUpCK1BYR3g1SkpkaTFJZGtxeG9MbUk1MWFxQU9JK0FBemRtdnlaQXZJRGd1?=
 =?utf-8?B?YWVqQ1o3ODFvZ0h4T25nd3A4d1pTRVZhRDl5N2NuR2JCa2RkVHBySUZKM2M5?=
 =?utf-8?B?UzRuWXRTZTRvbkRQcWxkUWJGV0VyUGh3U1JtSXlQa2RGY0ZBaVFtOHlUbk9R?=
 =?utf-8?B?RkVVTVdzNTlwc2NmUzFmdGpxMFQ0dFNBZGJudjRYWTAwM0dVRUZHaWNKcVdr?=
 =?utf-8?B?T1NjR1RGN0RKUFpUbVJGNDEwL0J3ZEhYSzA2TlJRTE9NYTI3aVBENzlKSHlS?=
 =?utf-8?B?V0RLOXVxS0J5K1Z2a05ZQU84N0hSRDhJU1U2akg4VjNHU0F1bzkwZWJlNis3?=
 =?utf-8?B?bU9jeG9HeURWUmlaanZ3OC96czFMSktKbEhiTXRMUHZxeDhlQ1lZbXc0UXVl?=
 =?utf-8?B?czM2blRoVHRtRnp5Q3VRVE5Sb0czRFo2dEo1SmJncXEyaWoxckNYblk2Umx3?=
 =?utf-8?B?QkJuNFJLSlZqTGRGckRRcTlDY1ZkbWRHVTVyNlFUY3kzTzR0bmRzK3dUZFFZ?=
 =?utf-8?B?a3EwUWpzSUdMVXZZNmdrSk1xbmhjVmFTRjAyQS9kT2I2ZFBWVkh6dlFhcnIz?=
 =?utf-8?B?bDVFVk91d3BIaW55Q1pXVFNYWGRQL09xT003Mnd6ajJWcXVqZTR2dWxmMXZU?=
 =?utf-8?B?UGNkaWlwYlhidXA3L1RBbG9kZVB0dFVMeDI2c0p4dHQrQjZZbHdWMlRGc0dT?=
 =?utf-8?B?S3JJSXZNbWFxd2xpR1BSTHM4K0xoT0MrRDYxK1VEZHpnc0wwSFV0OVh0bnB6?=
 =?utf-8?B?YlhldjdPY0pnN21waDN0MWtoemlvQzhPWC8xZHZnYWw3c2lIek9jNEZPMmJz?=
 =?utf-8?B?Z1Y4eG1wRnhzU3BhNzQ3eE5oYjN1dmVvSFdvMUtVTmtFRVQ1S211KzZXSitG?=
 =?utf-8?B?aXRSZFpuTitDeVF1UXhqWllic2Z1NUpIVG0zTkpIdlNJRXEzWWtnUVVXclhM?=
 =?utf-8?B?bUNxUjEwdzlnOHlIODdoUWY0OG9XQ0pZN3hLcDM1NUhLUFhFOGpseC9oV29M?=
 =?utf-8?B?M0RVRE5tNStUeHhyQk5JNG9wZ0wyaEtaMmFsdVVSOTJYMWtxWUdoc045N2tH?=
 =?utf-8?B?cXVCSGs0UFlaamRjVmMzY0dpQ0Zvd0ZGMFZwZTRPNjRYY3RlVXRjT1E5SVRi?=
 =?utf-8?B?a1Z4b05xZ3B3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2FPQ1ZqcXplR2dtVC9nS1pwOEhwZ2ttZUZwd0kyMUNna2pFYzRuOW9nWURR?=
 =?utf-8?B?RUVwRjMyZG1ROTdwbXo1N2VWODdKMzZUYnR5NHJrMlhXTU9sdUFGTmYxUTFl?=
 =?utf-8?B?aU16WE9Rd1QyZVZEdkpBQVV3bllTUFEzbHNBQ0lmcjA3dVNMcEU4UEUxSmQ3?=
 =?utf-8?B?b0dnajk2MlluLzBMUUFETU0wK25MdlpoeTBxOGpIc0dqYkZqdzRDazlub0M2?=
 =?utf-8?B?cVlmb2pPbFdsVm1WaVRBRGl0b0lJbFBRZ0t6Vzg4NXlYWHRncE0zNFZFUDky?=
 =?utf-8?B?eVBJNWJKL2VyY2JxVHIwTmJZZnNxeFFmbG1lbGRyQmg4QnFMS3pST2I1eXlZ?=
 =?utf-8?B?Z01XeW5NVGpka28vSmtobzZMNDkyRlVEQmxUQ1B3OURMK0Y2ejlZSEt1K3Q5?=
 =?utf-8?B?eFphaXBVaG55YkJyOThuWDMweWxPajJtTWpXY2Z3RGZvc3lWUSsyTE5ZMHhI?=
 =?utf-8?B?ZXF4VlptWTdnQlV3c2t4SmlCREszTWVBcDhEUStic1BUaEdRWHZ2cHZzM2Ra?=
 =?utf-8?B?b0R6QjdiTmczM0x5UnlHZFAxajZUcFArM01FQ3RURThTUnE0QmxkM0ZFeEFH?=
 =?utf-8?B?NFMzMkYxT0FuYWh3OG9KTWJFMFNjanhwS3BpcXJCQmNhUEhsOEsrRDQrSitk?=
 =?utf-8?B?cFRvdDZBNnNIOWE0OXBvWnd0anpMSWFTaXVkbENEanJZcGZsaDVTODV4eklH?=
 =?utf-8?B?YytxbGFNd0NucG45TXZKbFYrSDJ5SHhNeVlTbkFPTi9ZWjcrcWNFZDJ3bnBp?=
 =?utf-8?B?VnNBeWM3ZXJ6RmVhSUNxbCtsQkovOW50OXBKdnVHVUY5eEN1ZUc1cWV5enFz?=
 =?utf-8?B?NXZCZzcrRVk4Y0x4cGNXK2NPaWxOSDcrS3p4dXd1MFpCWlE4V0t6R0F0R1Ur?=
 =?utf-8?B?UWd5RzhaOTJ1N3V4UGdQV3pYbElkeDlNOEg3SDMyNk9WQWkvTW9zdGJEVkZK?=
 =?utf-8?B?bG5MOUl3YnQzT214bWtyR0ZFSytweHJZcTdCZjlsMHA4eEgwMGlBOXFYRkhx?=
 =?utf-8?B?a3lmazdyQjVkWE1GdmdLSk9ZK3VJUG9taXhNVFlWU0VOSG1UaFZPMnRuTkJW?=
 =?utf-8?B?ZU8rWXRmbVJiSHFIOFVKVlRjcVhFOVJyVjl6aFhKaUhiNlRHa2ZiOXVYQ2k3?=
 =?utf-8?B?dDllNzVZeFk4OTBENWJMRmQxYWc5WDBxaEZMNmU3YXdNRXdERkVENmRGTmlY?=
 =?utf-8?B?eWp1TFBTcWdsNFpBck5ra083c3ZpRnZSOE5pQmI4eDJTTzh6MzBmeHM2NVJN?=
 =?utf-8?B?OXV4OVptWHVEaXd1YWpSd3B2RDI2dTE4NFMxOVdoYkhmZlIwSUMybm5zSmJk?=
 =?utf-8?B?MkNjU012Unl3bFM0TkxLWnVEMDRCOXp5Vk1PUlVWQmk3dUxqSHMwYW5Kcnd0?=
 =?utf-8?B?eEx4TGJYa29PelcwVzR0RTEzQnJ2UW5KTmNHVld6L1dCbXZxUlljL2ZjUmRk?=
 =?utf-8?B?eno4R3VXSmhBQUJQQXRWcXFGa083Mzg3UWE5L2t6UnpOUGkwY1E3bGxwUWJP?=
 =?utf-8?B?dkhUZm1LU3JPdmN5UU1IMlkzaVpESEl0WGQxYjAvU05yTHJQUWkydDlyRkRR?=
 =?utf-8?B?WFk2RlZrQVRaSmpnMGdlalp0QnB0UCtibnp0ZDNnSVlVdVh6NS9xV3E1VjNx?=
 =?utf-8?B?amVrUGZnbldPZklHNUtZdjVyZnN5cFUycTRmZ29aRHBtbzdIRUR2d05ZRklC?=
 =?utf-8?B?RjBMZWpUdTBxVjFPbmNmYnFrTlgzRFczbDZTWXdWenJDZ1dxSDJINFRkYzBv?=
 =?utf-8?B?SlN6T0pxaFpkdUhMWnN4MjFGS3ZTb0FaZS94VEpOOU1MZVMrT2tXVS9MSjZa?=
 =?utf-8?B?cmNVSFBqTXFya3dvN1VaNkNVQ1AxelB3TTZUeS9HVTJCejE2UUJwMUcwYitn?=
 =?utf-8?B?WjBuWkh0YWdYT2h0RmZWeW80Y0JOWGMxQUlKNXpFTnZzNlVIN2NMcGZFc2Ix?=
 =?utf-8?B?YzVJQlZ1aFR1dFo0bHhMUU41RjBOZy9IM3RTY2w2WUszRHViM21VTlVQMGUv?=
 =?utf-8?B?ZnB5NXFyWWVWayt0OWlCSDlRSkJESE9IU0w1VFBDeDB0Q2pqb3k4Ti8vOHpv?=
 =?utf-8?B?a2VCeWNHRTU1VkpDd3p6VGlCaW5ka25INkt3RmtMVDB5Y25tcVpReFVNU21m?=
 =?utf-8?B?OGs4QmhYc3lVNXgvdDV1N25EZmMwd3RpZ1dCc0RXZ2xWZm8zSXg0QThSVVZz?=
 =?utf-8?B?T3hJcThxcHVnamEvT0dnTFVGbytWaG1QSEx5K1VQMWdwT2dlRml4c3hMdDZo?=
 =?utf-8?B?NC9TcmpTSmJxYlhIcG5iZktPOG9RPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <237046591DC57147993DF8DA5D126F0E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be87cf0a-11d0-491d-b078-08ddd4e9fbb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 13:05:57.1451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g3QnQ6rMMx0xt9bvtb1pJmPGmoWXzraMcBgOOjE3D6OUOso9U1tVoARYqvRK+asnoIuacHRSALJbcyDcpbotCPcFGVGPqpvKucfMZvh7pXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
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

T24gV2VkLCAyMDI1LTA4LTA2IGF0IDE1OjQyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwNiBBdWcgMjAyNSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6DQo+ID4gT24gV2VkLCAwNiBBdWcgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gd3JvdGU6DQo+ID4gPiBQYXJzZWQgZGl2aWRl
ciBwIHdpbGwgb3ZlcmZsb3cgYW5kIGlzIGNvbnNpZGVyZWQgYmVpbmcgdmFsaWQNCj4gPiA+IGRp
dmlkZXIgaW4NCj4gPiA+IGNhc2UgcGxsX2N0bCA9PSAwLg0KPiA+ID4gDQo+ID4gPiBGaXggdGhp
cyBieSB1c2luZyBkbyB3aGlsZS4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jIHwgNCArKy0tDQo+ID4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4g
PiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9k
c2lfcGxsLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3Bs
bC5jDQo+ID4gPiBpbmRleCBiNTI0NjNmZGVjNDcuLmY1Njk4NWMzZGE1NCAxMDA2NDQNCj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYw0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jDQo+ID4gPiBA
QCAtMTQyLDEwICsxNDIsMTAgQEAgc3RhdGljIGludCB2bHZfZHNpX3BjbGsoc3RydWN0DQo+ID4g
PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gwqAJcGxsX2RpdiAmPSBEU0lfUExMX00x
X0RJVl9NQVNLOw0KPiA+ID4gwqAJcGxsX2RpdiA9IHBsbF9kaXYgPj4gRFNJX1BMTF9NMV9ESVZf
U0hJRlQ7DQo+ID4gPiDCoA0KPiA+ID4gLQl3aGlsZSAocGxsX2N0bCkgew0KPiA+ID4gKwlkbyB7
DQo+ID4gPiDCoAkJcGxsX2N0bCA9IHBsbF9jdGwgPj4gMTsNCj4gPiA+IMKgCQlwKys7DQo+ID4g
PiAtCX0NCj4gPiA+ICsJfSB3aGlsZSAocGxsX2N0bCk7DQo+ID4gPiDCoAlwLS07DQo+ID4gDQo+
ID4gQWx0ZXJuYXRpdmVseSwgdXNlIHAgPSBsZnMocGxsX2N0bCksIGNoZWNrIHRoZSByZXR1cm4g
dmFsdWUsIGFuZCBwLQ0KPiA+IC0NCj4gPiBhZnRlciB0aGF0Pw0KPiANCj4gU2hvdWxkIGJlIGZs
cygpLiAoRmluZCBsYXN0IHNldC4pDQoNClllcywgY2FuIGJlIGRvbmUgdGhhdCB3YXkgYXMgd2Vs
bC4gSSB3aWxsIGNoYW5nZSB0aGUgcGF0Y2guDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiANCj4gPiANCj4gPiANCj4gPiA+IMKgDQo+ID4gPiDCoAlpZiAoIXApIHsNCj4gDQoNCg==
