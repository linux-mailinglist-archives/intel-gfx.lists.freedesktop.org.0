Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B1F96BD36
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 14:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB9A10E7AF;
	Wed,  4 Sep 2024 12:55:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eT1KrqTA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7368410E7AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 12:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725454556; x=1756990556;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RxSD6BQCMSnyDVyZiUn5qaIQTqKYJ+Otm8hIDfGO3q4=;
 b=eT1KrqTAz075X/TPiOKHfo8+gJ9sWsDxlw0GVxWSmWVP/FbiBJfT+eWE
 /YuG355fWNFwXHR3zuYD0ZwZc6CoVG0ZApp0Lm8msBwJZ4XfDSx4G6enZ
 rTaYsvfzxvkat2bzGc/Pw1ZAV/eod7mlTk+5lF+/HL84m+cNtZEQKBbaM
 lr/3fQm0H67/BRLGMZtDA4dJxYAbsVqX7QMl5mVFXsAmnp8qivzJ1MuDN
 uoLBw7uL93/k0j6AvniahRWdi1TXqqhgPZu6XmAA39Lj53/8q8d+VJ311
 xQ5hpjD8mbrj5pWoIL7IzCUoUI6Zfbey19JICquT+7bc+Q3SKYE1/i3gR A==;
X-CSE-ConnectionGUID: OWtyL9KPQtuSnJ02IFxvSA==
X-CSE-MsgGUID: RSddgQiXT4mVxJCcjnwrGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23675232"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23675232"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:55:55 -0700
X-CSE-ConnectionGUID: v+iQifL9TvSE2WRinRsN5g==
X-CSE-MsgGUID: 9SBbrarhQR226gCIu7winA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="95994466"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 05:55:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:55:54 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:55:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 05:55:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 05:55:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=azXqjmsIUXLnT3WpNAbuZVKmcBu2XPAJz7XivgLPPliAJ20zY2+hpy7NTqmlMmvxLV5Dr6Y7Y1Rsoiv8OOiKJn0T8a4x+niA1pnAGCcyxJkxKwy2AkA4d6SOZ1HQVshEQfRSINt0l+5XS6vDxYKNmiWS1SsKb+c1py1KPa3K2rXaXt+1DtJFXLaY3F1dvwfqbuzxmUA4o/ZnNw8FqGenSGmQ7XTX4jvS6XxQEYdmGpkiLhdJClUi7/UkWS2ek1enXOeYVvfv+sViEyQ+5zuxq/2TAI1RXycupaZtQxf0YQQ/PaspWF0d5gd3eRKkxmvUw3rUVBJHleGi7FLArVwx/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z1Dwkvh2pLn2YG92uoudSsTv/KnrOgQDI8XJibvJ4uk=;
 b=r30oBLAu/qc3a4eJxiEe4c9kiC4dbwu0PYg3kW+/rPeQdKNibbZNYzBgeMMQcxTNat/YJvhu2/2/zBrzBVZ30gZA0NP6pLjRkusZhhufn2o9UjNEZQTma5G4pGxZk7JH70ZRZ9O7nvXUgW7fNPq1U4T3zxUir6qm1xNui+XJeYI6b2R1zPfjFsHic0G6Df/DfSpK7dLYBpp2wGBJUwxkeSouPD2HfeTwBZGXKKUUD3+ulPxgfddxKwtYFRVbXwHZFRtoScgNb9NgPu8Y9WKe5A6mL7cGIP0ErmpZicZGbbuF/6gRKLCL727S3pp0VXkhh4p+upP8F4i9U60U6X4asQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6689.namprd11.prod.outlook.com (2603:10b6:303:1e9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Wed, 4 Sep
 2024 12:55:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 12:55:50 +0000
Message-ID: <31020c97-8ae2-42ab-992e-e786ec19dbf5@intel.com>
Date: Wed, 4 Sep 2024 18:25:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] drm/i915/vrr: Compute vrr vsync if platforms
 support it
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-7-ankit.k.nautiyal@intel.com>
 <ZtcE5CS-TwWxcgxV@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtcE5CS-TwWxcgxV@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0149.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6689:EE_
X-MS-Office365-Filtering-Correlation-Id: 11a3168d-dcb3-47e6-97d3-08dccce0e740
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk9MbnZZYTFEakM1ZTFWSTBVVndpWkc1NW14WGZKYVB6dzhvd3M1QWZNdkR4?=
 =?utf-8?B?SWdqOUxLV3JEenVReHpJa0pmbjJCNnRBclp0MlRLU3pia2o3Mk1rSjNheXhH?=
 =?utf-8?B?V2JPOWI4dEJXUGJydGJ6Q1dzN1h2dnRFd3E2V0R0YWhkb1JZTm41amhVTUwz?=
 =?utf-8?B?UWJUTUZJdS9oMW9XWVlUN1dXbUg1SVNlanNLZis5NHVZZ0JZNm1GUGZ5ei9K?=
 =?utf-8?B?Y3JjcHpXcyt0bGF4bXJ2ak1IOVdUeFc3aTVCamZJN1czZEFFbzZ0YmUrTTF3?=
 =?utf-8?B?VmZNVmZ5MkcvTHpiejZJQkU0T1Y4akJjbzgvTDFOY1ZaMU5PRVg2WVdpb2VB?=
 =?utf-8?B?VHRrMzJYYks0ZlRBUzM4M0hUSTU0SVJWbm9FRlZLbkxrK3U5NlNFanVlWXAv?=
 =?utf-8?B?OVVDTmtuenVISStZOUcrRENXcUJOc04yRnZ1WHkvMTVjYkRVdjhQbjFaWUlM?=
 =?utf-8?B?S3hQM1Y0NHAveU95ZTNsUEZOclFHK3RQL1o3N2ltMlM5R05NL0cvYitSdEcv?=
 =?utf-8?B?UmVpS0V3cWNvS2ZGRDlaQjdEUUV6V0FvRlJXRzZwT1p6eDNNbFlaMjRzWXNm?=
 =?utf-8?B?Vk9wWWFUUlgwWEtlTmx6cVlvVW1iNXQ1YTRqWThLRFJHN1BoQ01LcW9QaC8y?=
 =?utf-8?B?U08wazN4QTlxc2ozWEhIQWtiQXdlZHpKQ1VHaXllSG1BUVlkVWZvcG5ZRTF2?=
 =?utf-8?B?QUIwSDZ6aDA0c09pRllnUDFWNzY0NUtEeUxwTlBneENITVdUbWEyQVVtTnM2?=
 =?utf-8?B?dkV6eUxoUVUrWXZMeHgxOE0xMXV2dUdYUlBzMFFrODJkNlVROUFkd3UxSVFB?=
 =?utf-8?B?Q3FLSm1weHlZeHh6c0F2aUo5cURlZjdwWUVLdlUvcnVkNDk0MkdDczZyQ2Q2?=
 =?utf-8?B?SnZWdWxsSkdVRnR6cEVjNnZTWWVxeWtHTzROcC9Cb1QzQndaWW5mK3luYURq?=
 =?utf-8?B?Y1NXeG1abWg1UHNCQ3VMTll1MiszTEJWdWRMQVZ3OXYwVSs4WHN6S3pvZW9s?=
 =?utf-8?B?RlRVYkNEaDVWRFVnUDdxYUYyb2xmaHZNcGpUQU0zV3BsSVBydHJtdmZsZDEz?=
 =?utf-8?B?RHI3amx2bnFrMitjWEtQMVo3VEFMSXBXUWh2VVZxcnNiRHJLelpIcDBiYmwx?=
 =?utf-8?B?cWNBS2l3QlVwS3R4Z2F0UjhVOGJxZ05wMmloSkdRTGZ3T2ZLcy9Yb0FmQ0N1?=
 =?utf-8?B?MkxITWt0N2I4OHd3NjBpRFJnWUJmRHpkNTI2OVU3MCs3RXRNWlN5dkNBb1c5?=
 =?utf-8?B?eGlGR2xLQnRJZ0xJWlRBbTY1aXR2UHV5S01LVnpkMmVpV0ErY3Z0OFZMNGxn?=
 =?utf-8?B?RUNTRUNIcU9EajFCWWh0WWRGUUM4TjEreEc0S0NCRzFjUlhGcmxvRzJ4UVpZ?=
 =?utf-8?B?MU9jeHA5R3kvWlo2K1Y2MUpLTnJsVk93amV5NnJFY0FzN2J6Y0xqbzNiQ1R5?=
 =?utf-8?B?dXhLbDRQU1FCYzMvTk1LQ3QrUEwyTFVLSEs4WGxwNFpDVlVhdVJYbmx3M2lD?=
 =?utf-8?B?MUpkOVN5dTNkTmdxaVk4RU1XbHdKODFjdkNuK21oZ0JoeThobFhhZ2pYeVZx?=
 =?utf-8?B?VXN0UGNuN3FiL3o3d05KSTBSNmpWRHNBT1dFTnU1eXRPUldvZmhCcVpsQkpy?=
 =?utf-8?B?YTI3V1hnM3NDdTk0bzJQbjVIdzVUZGZoS2ZuSDBNTjZMczZkWG1ndTNZYWJq?=
 =?utf-8?B?S0cwNHZvL2xtb1phSk12K1lqaytJT1E4QnUrdFU5aW90Q0tWSEJWd1hlSHhR?=
 =?utf-8?B?T0ViYUpLSVFlaWQ0c2hzQzluVkE1K3ZhMi82cFV2cGFvY0ZkQVBpaUJ2V0VB?=
 =?utf-8?B?VWlTOHNmc1Zwc2UwdkozQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFJkeGFIZTdGSndZbnE2ZUpJYTVlQTI0QkRGelJkM0w3UlBOMWNma2RrMXhW?=
 =?utf-8?B?T3lqU1BoRHBGNmZWUTMvTDV2Z3BTQzEzb3IyN0FMdDVpWjFGQXhZV05EOHBF?=
 =?utf-8?B?bDFRdnJDa3pNY1c1bVptdEl2Q1Qza1lnbWMwWk9vZUZja3JyM2N5ZHNhcDhi?=
 =?utf-8?B?cG41V2NnRnlmYzdWNkRWN2ZneVFUYkJJd2xSRDN0T0kzdCt5NzJ2R2pQdmtX?=
 =?utf-8?B?L0ZscFIzd1p4RktldUUzUkpDcUpHZVRVbHM3ZUpJNjhxRVFNMml0b0pqWFdB?=
 =?utf-8?B?eHJOb0paSDFiRzEzZnVzNzVOUnI5TFFMOFRxSVd3UGlLek9Fdm42RFVicnhl?=
 =?utf-8?B?Y3ZNam1NY1MybnBsRkx4aTE4MGZ5cS9tdnBZUHBtWWE5c0hCWThGRm5PMDVi?=
 =?utf-8?B?bkpJU3dwU2hmb3hjZEFWdDZSQjJ3VE9XNVRiNzFjQUtwNjRZTkNHcWx1VjND?=
 =?utf-8?B?S0VvemprSmllbHZHNnZ4TlFaMWpLdHhCQWV4N01SWHBtTDBrQVQvckFhUFJQ?=
 =?utf-8?B?Wnl4SUZ1dVIvaTEyWlUzMzVsaVpYdmlJOS9UWmNxUnU4SWpJR0w5YjdUblpY?=
 =?utf-8?B?TkZGeFJ6N0VjVWo4aHFJVDVkR1dsRXRXVXJFOUxLQ1ZCUDNLcEZYVVBOWFZE?=
 =?utf-8?B?OXJVTnhua2hDWkc3Mi9lc0d1dkt0RkJGaGtmcG1EcXBwVFdjV2Rxd1luczVD?=
 =?utf-8?B?eWlESGJEMkJ5T3A1cWpPMjhyVnlteEpTYXNrMlEzK214V2Q2NzJnMzVWNThO?=
 =?utf-8?B?OUQyUlVHV2p5cjYrRlpTcVBSMUxFU3VGODJRVVFZZzdTaDkvSU1NQ3NSNUNi?=
 =?utf-8?B?bWFqMHBSWWFuTzEwdjUzU3JWbTY2VWszWVczWGprbXhSZ3lsWHFTcE1ocHd5?=
 =?utf-8?B?amwwQ3FVZjlzemp5TFVIZms2bzNvZlFENkcrczB1RVNJeFZEdUFRS3ZSQXpF?=
 =?utf-8?B?bUQrSlZtLzBQMTloTWF3MjdxTmhrWmU1UnlsWkFJSmZLbVZuMC9VY003Tjli?=
 =?utf-8?B?S01GUmFSeHhtT2JwS0dWOCtxSUFScGpLSGdZRWdXYkFqNmZPbGtQT1RXZlFp?=
 =?utf-8?B?VWNWRFFBTUl2NDBIMm5MQkUzVVhIcEFTTFZBU0ZYUk9tbzhnNHFEK0RtMDFL?=
 =?utf-8?B?dFlnVTg5U2EranhOcDBBQjBKWkpTOFpza3RmbTNkcE1wbnUvWVM0V0xDbU5s?=
 =?utf-8?B?TmR3SVdPUEJKNXVUZk1STjYyc201czBnZ3h1L2M0RHp1Ump2b2xJc0lIQVQw?=
 =?utf-8?B?K3RGMFR5eXJKT1VSb1ZvUFNjSU1QVFhWMjBVOXRKZTQrM2NlRW5Rd0NZODBu?=
 =?utf-8?B?Tm5ZWGRmMG5NWXNyd2JvUTRTeWlDT0VPcWVMc3FZQ2Z3emZVRXk4OEZlbDA3?=
 =?utf-8?B?VFdiZFRPcHVoOE5xbjJOYVpFT1dQWkNOZUpkUU1OclRJUnhteDBOeXhheHVH?=
 =?utf-8?B?eHh6eDZJU1Y0djYwVEsxUW1ZNk9ZZEsxUVZXQTNISWhOMjU0RndtTWcwbk4y?=
 =?utf-8?B?cEVQRzhRRzZkMTBSV3dxMitJTDBwQW5kKzI2WGdTVVY1MFJKaXpYN3hGSlRj?=
 =?utf-8?B?OG1NWkR2WU5HZmpzcnVycHpLcXRtdnp6QVEyWk94cGlBbHZMVTJFOTBKM3hH?=
 =?utf-8?B?MWY1M0dwMHRKRDBOcUN2OHJKNGp5S3hjZXgyYVRMemkvbDM3R2NhRGlQV2lN?=
 =?utf-8?B?UFZVd2hXZ21OcEFQNVkrMXFudU0yRU5qVlRxUWNTd3pMT0o2eHFKQUp2WEJ6?=
 =?utf-8?B?ZWFwSnRtZUJGZmM1N1BZWHlMbGtMblFyNkQvNDQ3Tm5BVmVMUTU3cjN3NWxh?=
 =?utf-8?B?NTN1Mks1QjNGeWlsNlJjeXhnbnFFUnRaaWl2c3VBeGJFL0Y0NUdsblhmSEZC?=
 =?utf-8?B?ZzZWN1NLeHBoTVVBT2pUaVlGUktWTmx6cDM2dHp3RFhxS05SZFRzeUdDdThM?=
 =?utf-8?B?Y0ViZm05U0xnNjhOdytDdjU3YXFiRGhGRzBrSi9aYzRBMnBiTWwxdG9ldTZV?=
 =?utf-8?B?dkQ5MlFvUXVLWmhJTmlCT21mK05BeVpxQTN1UmxCRWo1YzF6aGQ2K2VlSk5P?=
 =?utf-8?B?RHlucXpvZ1ZqWHZObkp4RjYyZGpYbUV0UkoxVkJkUVhPV1FmTDVMZGd3alpu?=
 =?utf-8?B?Tjl1cFBqZG12bkhOMENGWTJwODFMN2pSWW84dlBCWVRvTm9zSldkUWF2dnUz?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a3168d-dcb3-47e6-97d3-08dccce0e740
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 12:55:50.7873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XStShXhokFaqj+w9Ki3vaAm6tr8rvOTxiY5CqC6SZgzCQJMnDePycpLTp7XfiS2c7dg9BddAsjTvg0aMMFvOKyGH5/k5UpioRvH9thjvl1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6689
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


On 9/3/2024 6:15 PM, Ville Syrjälä wrote:
> On Mon, Sep 02, 2024 at 01:36:27PM +0530, Ankit Nautiyal wrote:
>> Previously, TRANS_VRR_VSYNC was exclusively used for panels with
>> adaptive-sync SDP support in VRR scenarios. However, to drive fixed refresh
>> rates using the VRR Timing generator, we now need to program
>> TRANS_VRR_VSYNC regardless of adaptive sync SDP support. Therefore, let's
>> remove the adaptive sync SDP check and program TRANS_VRR_VSYNC for
>> platforms where VRR timing generator is used.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 9a51f5bac307..03af50b9f9eb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -231,7 +231,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   	}
>>   
>> -	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
>> +	if (HAS_AS_SDP(display) && crtc_state->vrr.enable) {
> That vrr.enable check should be nuked as well. We are supposed to
> compute the full state whether VRR is actually enabled or not.

Hmm. We are trying to move to VRR TG from LNL+ so for these platform 
vrr.enable will always be set.
For older platforms where vrr.enable is not set, whether enabling 
TRANS_VRR_VSYNC can cause any issue?
If this is set and TRANS_VRR_CTL is disable, then perhaps it wont have 
any effect.

Regards,

Ankit


>
>>   		crtc_state->vrr.vsync_start =
>>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>>   			 crtc_state->hw.adjusted_mode.vsync_start);
>> -- 
>> 2.45.2
