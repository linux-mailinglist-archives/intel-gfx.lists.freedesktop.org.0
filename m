Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E399AACFC0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6EE210E351;
	Tue,  6 May 2025 21:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZjE/f9hG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEEC10E351;
 Tue,  6 May 2025 21:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567623; x=1778103623;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=O3D5Qkt/Or8MCZuTtesdGJ214snhsMVjim1zf48y1Kg=;
 b=ZjE/f9hGId8uMdIW2I36E/04goj+QBkPsmHWvAmGfs7RQtRis9eROQbz
 pYDaYdzYoWdDmLpRHM5IlTabUgg5vMQ45fIbU/MNt6WZYbFBfYF1Pi5EE
 1/d7CIe6m8Lml9P0dxn6QOIlRQOdWN2+z88O7WaGnTy3d0kBBzFNkXUFR
 B+i9vdMSvCzH8ge/iRFjwgV0wfg1fd3ozyNx49Elf///ShyRILcMOFbU0
 9uXySAKGk8Z282RfcPXGD5bS3Z9ffWBNJeeS2wGRhho2rac807AdQ+jG8
 BUSJYq+t3fn3tsrxWQ/KDoLreuIb5vZxNpvXDA4000xXC3ujZbMabPGV1 g==;
X-CSE-ConnectionGUID: 9qPIr8qBRZ64DlwWFTXeZQ==
X-CSE-MsgGUID: 0P4z7oKsR6WW9y8Ni44SyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="52074283"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="52074283"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:40:23 -0700
X-CSE-ConnectionGUID: kYhF4GYyS9qsvd2uZYfeuA==
X-CSE-MsgGUID: bYfa3Pa+TuKGmcEqaq/3XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="172939439"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:40:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:40:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:40:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:40:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YPBd3550JLjVZ746Ft+b3dQWBKAGTesiUI9lSJ5U7g3jTw8ok1Wk0BHlokNvsuFUX/2zax9PWZTbvKqKL1lpkhn1DEsqOHf9xbDe73Da5KD+uv5NRF22pYQ9RHGTZ6R29WgZrkkiDtzhLIqBNR2E2Ow89sO+c9TTuo7kYLpgoSFBGmVwqf9rcrBthnh0Vq2ocVUEd8s6QEwgJYPRFOr+KqgfkfLnccWSk40Ca/8M5amX+vegK+DnzmXyEngmeu/1vUlaWbjMNECyRH2rZ0bAAu/ES4dlRNZw2I+u5JcVsQDcTre8hRlFZK1DKFL++9TzlWHt7/5Yv2I6oNqwiRGrSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wG7rXEanftNMjXHIJAdF83kNA3Dp+FX+sZG6XNduif8=;
 b=kes9vAVJcNfHVwS5ma0iXvFGOjS7HGiLX5rp8uTA+JztZVMRnUFIGnNKLcYW2Lyky03WWsg26MMssFqU5DITd0ZamoRZBkrpc/1kFcMwF9C0i87rqEoBeetLa30tx4bM33ZbOmqUI6yYQBi6HFPMIjKHqEd2t5M6EZrMdsxbFOeqZZFznwRhpN5k44rTeqrRPVGeiNhK2t+8+94jgX75mMh2kz75Wbgb4GttGgj606z1yztnoehPuilLjf6FWz0haW6df8orZWcCJUAcrO8b1rVelZGemeNCy02Z4jDO98V4Pl3iEJbfYRNFNwQBqDoxdXZb9uOVeOTUwmYBgfuQCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:40:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:40:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <11de06206ff10c27104b0ac3efda085bf4c1f1a6.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <11de06206ff10c27104b0ac3efda085bf4c1f1a6.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 4/8] drm/i915/irq: split out i915_display_irq_postinstall()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:39:57 -0300
Message-ID: <174656759730.1401.10917290790657625347@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0229.namprd04.prod.outlook.com
 (2603:10b6:303:87::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: c48ae4cc-5f0d-480e-0310-08dd8ce68e84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUpWZUZPQ08vRVhLZTdYWVAzSXFhQllMVGpRMnd4NndpMWZibWJpMzJRWXBk?=
 =?utf-8?B?S3pma245cVFuR2VvNW9PamwzUHlScm5NcitSbkZab1owTlZ4NjQyUWtYUnF1?=
 =?utf-8?B?bEg2OFBYaFh2TTUwTkVhc0tWNkN1WXM3VCsxK3ZhbjQyL29jampnMEZpRWhu?=
 =?utf-8?B?azZUamN6TzdzL2JQc3BpMEV6QmhVTWY1SkszcFlMNllPYkNMQ3Y4Mll6NXBK?=
 =?utf-8?B?Q0tsTjNoT2V5QVBGQVd6amtXenYxbktlUzgyNW1zWWFVTGIvQlNUU0lzL0dH?=
 =?utf-8?B?TCtUb0NxUUhXV3VienZsMmY3bTEyeGk5cklaQnNYVW5vb0REd3RkNGlGWGRO?=
 =?utf-8?B?aEZjWjlMRUQvZjhQYUxMSkFxSkV4Y2JmR3VnQkh3Z3puc1lucis3OG5zbjI0?=
 =?utf-8?B?OUpNa2tvSlk3b0c3b0JLSTJFTVozZzV4c2ZSa2t6dzR4NUh4OWorZDJOcEFu?=
 =?utf-8?B?T1FscUxsNGQvVW4yaVhWV0liclVHR3ZVZHlFQTBSdjlocmx5T1grbVlFRU5Y?=
 =?utf-8?B?cmgxcHZCR0xCcGhBU3oxVTZ1Z0RWYVB4ZXNpWVNsK3FGS0xhS00zSmx4VjBz?=
 =?utf-8?B?dVdadjVNaVc4SFZFMGxGenlsUlRWZVZ1TmRPRkZQdUF4Ymk1d3k0d0pHUDRh?=
 =?utf-8?B?RXY1NGpuWi9DWERVS0p5ZFZYcjBPWTZQYzkzQXR5c3RBY3hhMFp0MGJRZVRO?=
 =?utf-8?B?VnRGMmxHVGFHV0hzdTlJS0R1TERrRVdyNkpLM3Z5S1h6c3cybnZ4Z3dhTEtC?=
 =?utf-8?B?VnJMc1h6OHA1dnlLN3ZIWU16WjdnUG9BVCsxaXIwL3lyVjNKamxlK29uZWhK?=
 =?utf-8?B?WWdUcURQczFjaEFYQUFueGozbmF0UlV3RFhNUWZJK0FUZ3dVVGxlN09jSTJO?=
 =?utf-8?B?V0FtMFVOWVk4R1p3OS9SV1BEVE9CWUNVWTJ5eHJlY2YyVkRHNnBnTmRWSFBQ?=
 =?utf-8?B?K3FhYmNHZXVsL0dwSEluKzg5d0VRUlQ1Vzd2QWR2ZGZ1d0NIWkZLNzVIVWFr?=
 =?utf-8?B?QmhQTmtOaFBnZ0trTmNpT20vU01TS1dBZHM4blRlN2pFbkp3d2F6Q3J5dXhV?=
 =?utf-8?B?ZUVFRzlZV1hoSkRWVVdQZXVSYzVnYjE2MmRXTzlEcVp1RjRFODNjVFR6UjNy?=
 =?utf-8?B?NHpBSGZJQitjTmhmSFRzSFJZSy9MOGFaUXdONUN1M3ZRQjBoTzNxaWJoNUUw?=
 =?utf-8?B?enFzL3NOR3RPaTBSaGNpV0F2bUFVcVhSZWZ5SFgxMWpMSlNpZzFicktNai8y?=
 =?utf-8?B?aVp4US82ZFdqWitUellHUjJMcXpjYUljeXd4YUVnckUvZGFLcUpTZEVFcnBl?=
 =?utf-8?B?RUFuUkhaZjdHU2prekdoQjZ4WHNjcks0SUUrV0RKalNCRWxDbmcrMHExRVNv?=
 =?utf-8?B?WnBlK01aTU1sMnZOTHkyMUwrbVB3UGhOVzJaL1AyUHI1cHhmWG91SWZhbEd3?=
 =?utf-8?B?MUcrVlRkcUpObHE3d1NRZU91TkJ6VHUrRU42ZUU5aXdUMmlqZW56L0RMa1Ja?=
 =?utf-8?B?anA1Y1hvU29WbFNXcDhRa21xdlJ3UkFLa0VvaHNqNVBEVXdqZkhkTkZBbFFK?=
 =?utf-8?B?b3VXdG5QUjNPQlhSaUkwd1h4b0NvMUNlTkdHL05LQkw4aU1tRytrU3p6RGMv?=
 =?utf-8?B?SlpQUVMza3VBTXlhYS80dEhESmlHUEpjS2VLT0dpbHdrTzcxUzRkL0pYY2Fw?=
 =?utf-8?B?RUlWVXJYaFRBZTlhNXRiNlljNHRoL1MwRkNVTzdWdWFPKzFBYjhCN1ZFbEF0?=
 =?utf-8?B?TC91VjQ5V3FDTmVsNmZSSndLb1hhQzRCUEtHS2RnMjhRSnAyRlU2cTUzby9l?=
 =?utf-8?B?b1VHc1EzZjllaUxRanp5c2FPSzR1RURpdStPRHJSMEp4S0FWTXdxYXJzSFgx?=
 =?utf-8?B?WnJCT3AvcmtCL3loSkYrTWFKV0tRbTNpL1FPZStjQUFycVJjYjJKSzlWR0ht?=
 =?utf-8?Q?qN+kQSNCxNo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFBKUGJBOG1YYUpMUjd6SmIzNXlBMTNUejlvRGxITmZzMzhITmdJaWZVU1hm?=
 =?utf-8?B?Z1A4UTk3VElsWUZ6Y0xFNTlVbnNrZEhTc1hNZmJyNEdMS0xldjV6cGIxa1BR?=
 =?utf-8?B?eEdqMExwcmVFS21pTENIQVhpdUhSR1FyMkg4MnYzNS9BNllBbnlIMlhiTlA2?=
 =?utf-8?B?U3M0RjNudGtpZnBJZkRhcGg3WXF6WHZEcjIwRm8zOGttMklWY3BNUE0vNkJr?=
 =?utf-8?B?bXJwSmdIbkY5MWg0REZYdUV5M3hzWTducnFDVlFxZER0TURxWGg2dlpmZnE0?=
 =?utf-8?B?S1FaOXh0RHZNOUJaYUZ2RVM4a1R0N05MT3FrQWdlUjMxNjVtREE0UkFTZGI2?=
 =?utf-8?B?OTZiZVlqZWFUSXN4RGd4OC8yYkFwdDc1NTFZaENMbEZpZi9BYlRsSC9vZTJI?=
 =?utf-8?B?YTNYYVUvcDFiQWg5UUgvcEdjVk1VV1Z1MnZJcXgvVDVxb21UUmxJbWhJb3Av?=
 =?utf-8?B?SzVZTGZuZzFqUjZ3ODJBclVrMHN4WjEyeUxZcmhZUFNyRWh1RkpMVkUvQXpP?=
 =?utf-8?B?NlFBeUsxaXVSdjZBTDRmdWtON0RRd3RwNnNQc2NaYXdPNis1aEpxaldnUGFG?=
 =?utf-8?B?OVlia3VqNGhuWVRPbDFSSFJENTRhbWdZQTZDLzZodXBLUFpvRjVUNTRWeXBL?=
 =?utf-8?B?ZklBV1BtNDVFTXE3K2twb0pVU0w1ajNHd1hjcHhRNkZvSzhpZC9idFJpOXNP?=
 =?utf-8?B?cVNpc1huREVZNHpXdmt5cmc1d0JqZElncHBBb3AzSGlLK0NIajhuK1VNN1c5?=
 =?utf-8?B?dC96aFpkbWFWd2NHRWw3c3VwdFVkRHJlNFh4NXdNTHBKQUlhTmVabTlJVXI3?=
 =?utf-8?B?WEhuVFdPam1DNWQzd1VGZkNTaXYvZFUrdFRISVNIWlFoaGRJWjBMbmJtWitZ?=
 =?utf-8?B?SjVnWmhwZ1VBRGptYTNkdkF5SUM2cUlJQnFxam5FMmZyZnRrUUxuUmF3bndD?=
 =?utf-8?B?N09nZDVuK0s5WXVGZkhzRGdRclAxSHhLaEM5cTF4Ly9mNlM0RnhEK1hkN0ZL?=
 =?utf-8?B?aXRhRDA2S2pjaXJTSTJMNXlnTmlSLzArQTFRUU9nMUpab3hRZnlsQ1cwVzdm?=
 =?utf-8?B?b2Q3R2RrZlA2Znc4T3ZSYkhLMkc5NDAybkdrQ1pGZi91WTVWYWRPazJVdURi?=
 =?utf-8?B?blFEWENVa2NZRXM4WWlTK1BHWktRbFdPWnNmdytjZ2hDSVRjS3pNbmhobHZz?=
 =?utf-8?B?WW9IeXl6bjU2d1QwOTlFUnUwWFgvQ0N0QzRLQkwyeERNL3NrYk0zNXR1RUds?=
 =?utf-8?B?VnpOZXF4NWpTVzlGdGw3QWsyaUZlc2kzQXRDa2dRRDM2cDE1ZWkvV0NQaEZy?=
 =?utf-8?B?RnNtcUR2c3dPNEo2eUVRbXFkQnorQVljZGl5RnBsdXdJeUVhRlhpLys1MHNa?=
 =?utf-8?B?bEhya0lpQ1NnUXBSdE5NVCtESHYxQmRadFU2M3hsS29WRHJVVVFpSWwzdC9p?=
 =?utf-8?B?RCtXbk1aVFRGZEd4Sm51WnJXTVl1U29UbUJ4dFdCNkR2S245Zk1UWm8xSkl3?=
 =?utf-8?B?WkUybCtLZXJnblFVYmw1dndHSXBsWnB1UzRWMHlaYVJha0ZRandIKy95SnV4?=
 =?utf-8?B?RmhFMUltUmFrb29YUzk0N2t1R2tGVWNjeGhoNzBOeVo2ZFJCMEZpTk9lejFt?=
 =?utf-8?B?dTlRS0t4c0pGNDN5K2s1bXF2NGluc2x0QzBDNFdTRTRQV3ZldkFXV3dZSGtJ?=
 =?utf-8?B?dkltR0crR0xTakZCZG9aemFUdzNYMTQ0VkpVbXdML2JiclR0Z0VPN21KVGQr?=
 =?utf-8?B?YUQ2TUtYdzZEcUNCVENyTHNiZlplUGtVQ0JrVk0wRnkwMEtGVEJ4aFNGMVQ0?=
 =?utf-8?B?NEcwU3lyYk42M2lqTSswY3FCV3dVV29TeHY2SnRQVDRwY2JqRTBLbVk0aUY4?=
 =?utf-8?B?Smh6RytaczlzTVFwVGFaYUc0ZFE5eUw5M1VLS3Q5TkYySE5WUFRyUGxHc1h0?=
 =?utf-8?B?R3R1dVJMTjI4WWorclVDcEprTmRFc3dWTDRVbXVVWThSV0JNYzRkWUpBcFZp?=
 =?utf-8?B?NzNNVk42bFVJRDRGWVN6US9IMmdPcEJPMkxLeWxqM0dvZXpzR1N2OVZUSElN?=
 =?utf-8?B?SGpUWjlEMTN4ZnRuUlUyaWl3T2RraSt5cE1TcXhGaGs1ckUrVkR3T2Z5Wm1j?=
 =?utf-8?B?WEZyVStVejRnMTNrcHQyMkk3K1RISjFTSGt2amhmb1ltMXhoYVo2bStNa2g3?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c48ae4cc-5f0d-480e-0310-08dd8ce68e84
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:40:02.0163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tx4vCGcwQSt5ZxGWpC3FgBBVZIIPuz3fAxbEE9nOQbMyjTvv8XbbGJPtjAqdCE3aYW7YZhM1le4YoxaJkPJkpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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

Quoting Jani Nikula (2025-05-06 10:06:46-03:00)
>Split out i915_display_irq_postinstall() similar to other platforms.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++++++++++
> drivers/gpu/drm/i915/display/intel_display_irq.h |  1 +
> drivers/gpu/drm/i915/i915_irq.c                  |  9 +--------
> 3 files changed, 18 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index a0e08b8752e7..77cdd1ea5d00 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -1902,6 +1902,22 @@ void i9xx_display_irq_reset(struct intel_display *d=
isplay)
>         i9xx_pipestat_irq_reset(display);
> }
>=20
>+void i915_display_irq_postinstall(struct intel_display *display)
>+{
>+        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>+
>+        /*
>+         * Interrupt setup is already guaranteed to be single-threaded, t=
his is
>+         * just to make the assert_spin_locked check happy.
>+         */
>+        spin_lock_irq(&dev_priv->irq_lock);
>+        i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>+        i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>+        spin_unlock_irq(&dev_priv->irq_lock);
>+
>+        i915_enable_asle_pipestat(display);
>+}
>+
> static u32 vlv_error_mask(void)
> {
>         /* TODO enable other errors too? */
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gp=
u/drm/i915/display/intel_display_irq.h
>index 5422426c6843..8fdce804c9d7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>@@ -61,6 +61,7 @@ void vlv_display_irq_reset(struct intel_display *display=
);
> void gen8_display_irq_reset(struct intel_display *display);
> void gen11_display_irq_reset(struct intel_display *display);
>=20
>+void i915_display_irq_postinstall(struct intel_display *display);
> void vlv_display_irq_postinstall(struct intel_display *display);
> void ilk_de_irq_postinstall(struct intel_display *display);
> void gen8_de_irq_postinstall(struct intel_display *display);
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 19d8a7c29eac..30c78177ae0d 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -935,14 +935,7 @@ static void i915_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
>=20
>         gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_m=
ask);
>=20
>-        /* Interrupt setup is already guaranteed to be single-threaded, t=
his is
>-         * just to make the assert_spin_locked check happy. */
>-        spin_lock_irq(&dev_priv->irq_lock);
>-        i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>-        i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>-
>-        i915_enable_asle_pipestat(display);
>+        i915_display_irq_postinstall(display);
> }
>=20
> static irqreturn_t i915_irq_handler(int irq, void *arg)
>--=20
>2.39.5
>
