Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BB8995F87
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 08:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984A310E646;
	Wed,  9 Oct 2024 06:14:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWI1ZW1f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7D810E13E;
 Wed,  9 Oct 2024 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728454448; x=1759990448;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YVN6u7b1+wX7/8LRJ4Ty8fU0uqQ6KDqY0O1kxvHVjmk=;
 b=PWI1ZW1finaj2pK1c06g6L1GSUWfnVYX/XIdtoy7LkT174LC6KA5Ya9a
 i8Xtsofi3NRvH3l/H/rY4rAQZB2zYBRqj6Y0Spxz9WThfTEqX8zO+5nPd
 Yn+Qoaw9uWDC4NRuXrRjx9pOw/PfMEIFIWC8OSLr5JZMiNcgZTAy00eSR
 rn4Lo/cUR5cu1KnBgCEUdLPyCY/driks1wpRT4ankvMVvQJwEbjSzaoi0
 Crfmk+mGxFAiYzr/V2EUxeXdRHIhcfQCbVawSNwgN+jiB9M1fwsFcgFf1
 Xsit0Yhx1r00ibAwmfYtLzajZ4cjeqn6M8DQBrCxPOV+dJhHQrwSoqGGQ w==;
X-CSE-ConnectionGUID: 8rlD//qgQBqHF4C78XoLgw==
X-CSE-MsgGUID: lsaN+JXwSz+sjLcxko9Lrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27891867"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27891867"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 23:14:08 -0700
X-CSE-ConnectionGUID: ep4+qsbwQ+KjVrJ7RgZGyA==
X-CSE-MsgGUID: Pt1DSW3XRVqQgC6eJc7TOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76564989"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 23:14:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 23:14:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 23:14:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 23:14:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 23:14:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agCMgCwg6vreT8V9Nbikegy6VQN0ATDWJ4Z93s7MbJgDyNvZJDdIVQfsFKMe4WP3dB18T5e3HZQtChdQq1y6e5V/4J5Jwuu5w2EK73ma4fqM9Ew1Xqk/+Qz9qVJ8JOiA5UHtIL8fzbTtCDcyDblGwlYJwGk08Vd82MQ3hJolbAkgCZTDmUWyxEDlOVO36utDSvgW4REKshv7HGVciMTqbjTLBMR+dWUK6E0NrZlqzRCT74qu3DqVIqecPPCqGvbjBfYkpWKYMsIWxLQmoinoQhFiqp7F6y1vc1zw+2lKjB1DZUZUH4lq0UF6Owdej/ZIuFudufOZF8FdNpQMGOccNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7kdA2eu3uAoG6aIKgriTeFUjqhMeV1HghQrQwUHRi0=;
 b=mvQG3tAs+PThvEMPtPg9zYgsMOcddznyfiqFCkjWcB2BTg9GTv/MUgnV705xWgkZsBNpxRxcgfl8Fwqq8TCjOylbczGmMO4K6cNlHs4kZSuLOED9EZ7ZX+ntj7s9y771bREP6xpbQeI7YBBvKz81G9Hzvxyuaj1lrfpD0YKj3CBzTVsDHkmNF+GUjsBk4diZF9Hm2KoZ1RQd2ATnDdyumkoAouan6got+hWfsdQHY8dlzwxEeIu0xHfwEYQZHBimsTP2++THGFHqqdp96JL6vLtCWpjt0/oGlmXENFfzTOYovg1pzzKWriNEt8JHNwZ3929ltQt0RqnRVfqnfVvLIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by PH7PR11MB6607.namprd11.prod.outlook.com (2603:10b6:510:1b2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Wed, 9 Oct
 2024 06:14:03 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%3]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 06:14:02 +0000
Message-ID: <af7bfac4-fd94-4b50-9e81-4a701697ac67@intel.com>
Date: Wed, 9 Oct 2024 11:43:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] drm/i915/xe3lpd: Add new bit range of MAX swing
 setup
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-9-matthew.s.atwood@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20241008223741.82790-9-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0157.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::27) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|PH7PR11MB6607:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b91f15f-a502-4f6c-571c-08dce82991f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUhYcDdSZGlac0xjMEJlT2d4dTN0S0tyVlBBY2ZaSzNVTC8ydEsySHc2Nld3?=
 =?utf-8?B?ejBRUzIwNThsSFFNY2YwWXR1bkxqdjlwaU9jVkE5UW1FOXErTjBBWXVNRkhz?=
 =?utf-8?B?Ri9vU1JwcTRBOUpoTjE4OWt4NUxMS0M0YkI3SXpBUC9MRU9KaTgyTUtZQUhJ?=
 =?utf-8?B?V0ExZGpYSnRFcFZyd3lBblBRVjA2OFBtYkxqdjJNaUNvY0FhZGZ5YldjSjdr?=
 =?utf-8?B?SjQ0QVEzNkloUG1XaDY4eDVqVU5KNjUySXJXTWw5bUFMNGsrazJ1RVM4M1FJ?=
 =?utf-8?B?bVU5SVptVWlYaS82R3pmZWIwMTBWMi9uVC9IVmwxRTJIQnNzVWlRRnM0dDVw?=
 =?utf-8?B?dUJoTkNiS1k4V2lTUnFITC9vV0QyRGFQNGtqNXV6TWNpMFBhZTE0bWhPUUJF?=
 =?utf-8?B?UW5kdG9MeFNDRzlvS3Q2UGJqZXpOQzdRSEpUaG5lR0JvZS9ycDFTR0xwU3Rv?=
 =?utf-8?B?SkxZVERFN1c0M2VEWlQ4c3YxdVVhVXViVk12cDkydUpod1F1WFVsUHRNNUZU?=
 =?utf-8?B?T2ZyZjFoMS9JbVUzZlpkYzlTYWw3MEdZb0VFV3ZkMlM5dXVBbTF2V1VkY0F3?=
 =?utf-8?B?aC9CWW5FaUhuN3NDMkFQdVpEb1VSNjBDTW9ab2VuTnVicWNYTE9KTFdPVU1U?=
 =?utf-8?B?ak4vYjB3bFVxV2YzYzczK1lEVnB5dGNXVTNDSnBMTVhpVmhxT3dLTktqRFNy?=
 =?utf-8?B?ak1YcHRzdTJwK1pmY1MzQ0huZEFDNy9pQkVuMEtKK3pweHVsT1lPa3R1QXhu?=
 =?utf-8?B?QW51RzdzRE1aZy90dFVYaVE1QnZOUENLYjBqRlprRE41S09UNXFYU2QyV01P?=
 =?utf-8?B?VExaSXdHWVVtaEdjQ25vd25Kcmk1QkhqaXBmNGc3b1VDNnBSWGo4OSsyNWM4?=
 =?utf-8?B?dUxKTHA3MDBwOTE5czF4cEhsQ25JZjFEZkJrS3VFenhxSk5LVlJ4STRXK3lM?=
 =?utf-8?B?a21iN1oycUtOT1VMUjcvTlVRUzhxZFRSWTF5U0dLaG5DOWRrZzhGNnNEZnF5?=
 =?utf-8?B?aEo5cVZSNUY3d1R2R2xHMlM2cTJxbDZnU1ZNMnFUM2p1Q1ViTUZ5ZURMM092?=
 =?utf-8?B?V1JPQXoxOW44L296SmtoMjFCd1dpWFNIT0Qwa1VVZ0V2TFZ4bHhwYmp5c0cv?=
 =?utf-8?B?V1BzUS9wREwvRERTcTlPd0RlbDJQcE94WW1WdTJwSlhCeGd6OXRDQStzN0N4?=
 =?utf-8?B?VHZhcDd5UzIyS2w1UVVlWlBHc2xleUtiZkJ0RHhBdFRXWlUxWjJyeThSU0dx?=
 =?utf-8?B?alZQV2t1ZGFYajV2bHFMalByWTdJU3FDUHBTUE9jVEV5NzlFenY2cERKOHlj?=
 =?utf-8?B?dktGeVpqZGtNYUJUZW4xbTR0c2g3MWJtdllMTVhKdDRYMkdTbEVpRnpoVCth?=
 =?utf-8?B?bHV0R2ZYR1cweExXYklkWEhGaGYvV0UyZFdpVFE2QUlML2k4aW54aEtQUjJs?=
 =?utf-8?B?clR3anlQSTFWWEtWVkZLUkRFV2svSGZNRldyK1VoRzRST1RPRXVaMHJnLzFQ?=
 =?utf-8?B?aU9TbWRBUHFFRWVsdkk3amx1RFN6emZKOXEramtsbW92dEpIbStWM0dSTTA2?=
 =?utf-8?B?alhsdUNHSjZLZmZacUVKeXVvUFNsVitsMHNDcG9Yall2SERiVE9FcG50ZzVL?=
 =?utf-8?B?WDAzT25iRTVLNkwySmF2ZDRSN1FiVXdiR1ZWZGxuMjB2aDBUWll4eDFxT096?=
 =?utf-8?B?OXZpTlM1dXJacW1aMUR5STFmakZ6VUdQS0NyaFlwVExVQ2d0aHE1VDZ3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3FQQURybWJpYVkvSFFWUjdLS3RYQmhsNFZQL09WUXRvanIvR1ROUEt0WEZP?=
 =?utf-8?B?YUt1TExGNVIvcXBJUFFKeXdBdWhCc3dFRGlEcW0rWUJoRWhMTnJmKzJkQk1i?=
 =?utf-8?B?K29hVHpvcGhMeHNzRHB2TDlkRis3RHoxUlVCSnRPK0xBL2xIbkVvaGM5M25m?=
 =?utf-8?B?aDYyWVhwT0phMlVReVg0dlBlNnd3aGNkNWxveFpPdy9lcEYxTWdCSjNzTUtL?=
 =?utf-8?B?a1RWVldYOUN5SmRYQzE5eXZtMUNjb0oxNUJ6aFdPLzZDRVA5VGRXdWxtNDE5?=
 =?utf-8?B?cU9hN055eUswNkNDbzU2VTBlaURzZDROQzZ5aVRNS1hpVnhqTC92b1hPL2xG?=
 =?utf-8?B?T0pIWmlKZ1QrTWsrM1M3VEUrYk9OaUZWcTYvMWwwdVZ6bkVIUCsvNjBZQWVZ?=
 =?utf-8?B?OWJzczdXSy9lQXZTZXo4UDI0U1pyYUhkeW02cXZuTUhFYWdwdkU0VkpvK01k?=
 =?utf-8?B?UjFUT3JDSlI0Y09VbjA5MUFqWEVuMCs2d3U3U21IQ3JGaFpYWmZORGpzdTQ1?=
 =?utf-8?B?VzlubytabWxOVkh3bVdWTys2Y0JzQ09VSEdiZnU1anZ1V2F2RkpvdnBrQXF5?=
 =?utf-8?B?OFAyV2t5Qko1ZjBJRjNCSFJCZlpUYjE2UGZMN1RFTnA3WmdwQ1lST0dFaFNL?=
 =?utf-8?B?KzdTdFNvL3pZVGdpMHovZE9hSHRwc3lxZEtBaFdiRmJXMUpCUUtic0NxWlEv?=
 =?utf-8?B?NWJ0SzBzVkt1bWlYTUQrU0h5T1pEYi9GUDZRVi9kTVRFelJnSjBYOHg1b3d3?=
 =?utf-8?B?eENySDFnRlE5Szc5ajR1YW9QWm15ZEl0TG13dWoxMjdWd0dtQW5lNGJUMXIx?=
 =?utf-8?B?UWo2N1ZHdmR2dCtkdkcxcjlCdzFNVmV3aExNdHc5V0JjY3hQTnlUWjhUT2hy?=
 =?utf-8?B?Vm42MHF4bStENnNLb1FQZU5GUlRQeGFqb3BBMHcyR25JenZNT0s3TzZoMis4?=
 =?utf-8?B?VlB3TlkyMnVkdTlKRmtGL1ZGaDljcXAyakZKalVzMkloVjROajRZQWRBREQw?=
 =?utf-8?B?RWtCbGdYWU5jbWtpemFMbUFmY0E1SDl6NzIrMkp1STFrNXZCUEJydURZYjA5?=
 =?utf-8?B?amFYSnRORTZkK1ZjS3RrMUx2eHdvSm1iQXc0YXluajhYMk9sM0lOMHc2K3k0?=
 =?utf-8?B?cGtTQXVydXZyZGIyTm1KV0pSL1VNZkdmaEU2anNTLytCZDYydTlHWmtKRE9l?=
 =?utf-8?B?Zlo2dXZMOHJNa2doNTB2eDJWVnR0TTBGbEFpU2VFYjNHRC9PVDJhemFPUkNh?=
 =?utf-8?B?SlZYMDM3ZVZOakJLb3FycmVGR2Nsb0VranBhODJxeUthYnA2VEpjekRKUHdE?=
 =?utf-8?B?OS9xelZRaEhIaTd6d21taUVxUDFDZ0RTelZBa2paOWNHSCt6YjBCQksrcmtG?=
 =?utf-8?B?eDVIMTNLY1NXOHIweHkvb2lFQXVsUmN0RlpvQStSY0tWSThzUjhGWUJoaEh0?=
 =?utf-8?B?bWRpY2t5Sm1acHJ5R1R6ZE1sSWJVNW9Vekc4VTlTeW55a0F0Sk9hOWNtK1Ju?=
 =?utf-8?B?M1V4NnIwSHd1NHBieHdoZ3lzZUdjMkVma3BKVmlxVnVweEh6T3BvT0kwSWFY?=
 =?utf-8?B?MEg3eEIyelZSS2RYRDRVZmVBTU1jdDhhNHVvSnMyekdzbG9zd3MwSHk0TU9R?=
 =?utf-8?B?bEpmZUZ0cGRQdkRna0lRWXl3VlN2Z092dFhtMVRvMkg0MjNXUUhNZ1FLVGNp?=
 =?utf-8?B?YXcwZ1AyS3VOQm5NWithUEtKVytEK1FXYUswMEplTjhucXFwbEFMdkxGUmQ4?=
 =?utf-8?B?b2R4WGtuTFMveGlxYmFVRi9tY0hTSFZoMWI2elVxUFpRU2REd1pHbUl1Ull0?=
 =?utf-8?B?dWhrWktrZXpwcDBRT3dML1cvcExMZkJ2b05GWGxBcE0zNEQxL3M1Y212dnNR?=
 =?utf-8?B?WkQzZXFFMnpUL1kzOXIzYjBvL3FkUHZWbmNQTWRMbFFZWCtNOXZVWm9hM2lY?=
 =?utf-8?B?cHFrazVBTmgrZE83ajhOdm9QNGdKTWFMMWtsSEhTdTFXS1lUdnMxc3k2VWpQ?=
 =?utf-8?B?eFhoZXk4d1M0WGNqajJ4OFhIZ1FnVGMyYW1ZNWQvY29nVjJGekdZZmhMWVd6?=
 =?utf-8?B?VUV6clY2U3BvL21xdUhKNWJja0JZNGtnUTNZUm1lYWZzZUdUaithQ0NDUHM3?=
 =?utf-8?B?ajhvY21hUUVrcXRxcEtxUUd4ejBvV0ZEZ3NwNnhjZUJObnJrNkt1cmpLUHU2?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b91f15f-a502-4f6c-571c-08dce82991f6
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 06:14:02.2879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j2qVQ24E0EomS5DMJTYlmYIMxxEt2+HOpqY/Wwa1k4N2i9M63LtC4yh+gLq1rFZo3h8go3b5CM4PFfcUY3lgeRjvXqtR5jLuxEsTZLehU+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6607
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


On 10/9/2024 4:07, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL
> register for DISPLAY_VER >= 30.
>
> Bspec: 70277
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>   drivers/gpu/drm/i915/display/intel_alpm.c     | 2 +-
>   drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 +++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 55f3ae1e68c9..100ce776a203 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -334,7 +334,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>   		intel_de_write(display,
>   			       PORT_ALPM_CTL(port),
>   			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
> -			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
> +			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, 15) |
>   			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
>   			       PORT_ALPM_CTL_SILENCE_PERIOD(
>   				       intel_dp->alpm_parameters.silence_period_sym_clocks));
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 0841242543ca..046e400704e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -299,7 +299,9 @@
>   #define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
>   #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
>   #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> +#define  PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(25, 20)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, val)	(DISPLAY_VER(display) >= 30 ? REG_FIELD_PREP(PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val) :\
> +							 REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val))
>   #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
>   #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
>   #define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)

-- 
-shekhar

