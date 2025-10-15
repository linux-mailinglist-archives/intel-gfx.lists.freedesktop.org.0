Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C83BDD433
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4848010E748;
	Wed, 15 Oct 2025 07:59:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfGyTAIa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288F310E749;
 Wed, 15 Oct 2025 07:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760515169; x=1792051169;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=l1GVBo68M5VV4L6ZD/b/gI9BHKVjj18dKKncFJkO0pg=;
 b=HfGyTAIaejlkvFSqHBlW+hSAPwrY55rHU9q0PHkseNbIxOazycLVAlUh
 6G3tnhBqHdZc1fWNKIRWTpXLGdGX6sqOywLZwQCJPKDcrx0AZmVVJVNZr
 7R26Ka5Id/1xMdWMxTsMPDtU3m0bRHSJppa17yc+cPxjzjNWwmP+7H7m1
 OK9l3/ggTSOZ+M4SGL+ohRT61IPxHAMIOFx0oXhgNHcaqGsD+d6K3JNtC
 gUsk84JFP0JBUccsfLCU8Ydzn9enuHyfU1a5RLV1KYuOdSPqQ784UPamd
 4IuoBGfIs/knFV7mq4CkMkJO5t/ZFDIcOtzpxCmv/xP6THkSO+Q+uEOHz w==;
X-CSE-ConnectionGUID: GSrCDlIlSKawGTNO9qWFeQ==
X-CSE-MsgGUID: WT7YcHYjQyuQ58n1jjDhpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66334726"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66334726"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:59:28 -0700
X-CSE-ConnectionGUID: wE4dEFH4QhGXOwlnwA9RkQ==
X-CSE-MsgGUID: yFczRBE7S7u7yGjGYLkrRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181238812"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:59:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 00:59:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 00:59:27 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 00:59:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IjuYPIrHrl9410rCBxFKtojzDoWHrqapzRhlFJHxiw/p8ATcZWPumqHhSlYnNbAzIEoem7CIGlzaV2dX6c1GVBsiIAe9a+0OxltEVxacMNIjdSpUXBDLuqApjqAVoEJk+U/pwiC56Cf+aOn5eEOilppP3DTOKMlC5Xmb2FMJwwsLocA2MUEtusKBu9j/g6t+wjXl8XL98nhxvSpEaQ00O0oV7XT0iUWD8hB87Mxi0KEOuBWkOnBhw8ZNrRdi1pc9lA3Bcltvj9S4oGLyLX6SONcd1Lz/cgKMarK9oi38Mmwog5MdgO5zZyc1pwbAzLl9MlVLMZDkrPDfK6yDVzyrGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l1GVBo68M5VV4L6ZD/b/gI9BHKVjj18dKKncFJkO0pg=;
 b=r9bDqY0YA2RaPjrVYlyaqvv+auIZgbKaR0ErAa8dIHh0QANqs/3gpk9SP+ogd2TIzItSlIZH1Jncaw39B9krOE2CFYYZCN/Mrx7duAaTF0XhSHGRjWLmmPkoRIOq9xTVnX93O/GJJ0YahBukQo1mmoV+CNbogq5L5akCHzg4KcxbbX9ZJAQ6O7CASUhqiN4kL+GXrAq5treDqZ5HhQXPf1sb8td6/Q4MtLtHG90UO+Qj/VWCGWCGBf1gN8NiQfdQwxHbIEjVaNmZlbzQrNM69ZgEGnYCveXPRAcjbwsuRZWoh7IiExiAhTtInb/XKhNUhAyo6Je5CPigkJa2Y2hZeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8123.namprd11.prod.outlook.com (2603:10b6:510:236::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.9; Wed, 15 Oct 2025 07:59:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 07:59:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 07/10] drm/i915/display: Introduce
 dp/psr_compute_config_late()
Thread-Topic: [PATCH 07/10] drm/i915/display: Introduce
 dp/psr_compute_config_late()
Thread-Index: AQHcPaZV1VqzkIyK7UKS5STdmY3GHrTC1/CA
Date: Wed, 15 Oct 2025 07:59:25 +0000
Message-ID: <29e8bf35563d3e9258996cca132142c22699d1e9.camel@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
 <20251015072217.1710717-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251015072217.1710717-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8123:EE_
x-ms-office365-filtering-correlation-id: 5f067d10-4c3f-41bb-834b-08de0bc0c211
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cTh1OFBOS01JQUJiYXpiWWoydzlhU0pIa1JEc213L3c4OHdocHNGVHBFK1ZC?=
 =?utf-8?B?Nk5MeGZUTi85cDhsYUhFU1pDTCtINlk4OTR1WnhOK1pLY3VBYmtFWnRKeWdm?=
 =?utf-8?B?akJsNkhpNXF3QjdWdDJZKzM1VERCejFHN212dFEwQjFHaE9Cb21GYkorSFFs?=
 =?utf-8?B?TXloQjgwaEI4TjVLYTd2clFaS0doNndoZUUzbjhNeC9UQWxmNldmeUQzbzZJ?=
 =?utf-8?B?ajYrYUV2WnBDdWd0QVlqMHhxY2pSbXI4VWY5WFE3NHg4aVoyVGdUOThlaGZo?=
 =?utf-8?B?cVVHZ1VZNzlkR1hhSUJQd0dVYk1VMm1RZmJQUWVBTWt2WTNGZncrbWFXTWNh?=
 =?utf-8?B?c1AzbGlueGRtZy83eFArWGpPOENjYkhrVUw1bVE4S3AwWEdTK1ArNFIrQXBF?=
 =?utf-8?B?RDIzNEhmSVpqeEtmYTV3eS9SaDIyVDc5U2EyTnhXK0pCdXpEYWR1Tm1iZnZT?=
 =?utf-8?B?WVV0OHpoWUZvNmgyL3ZaN3VOZ0wzZkJrQWRia3E0MmlGNE84OGdML29aZ2di?=
 =?utf-8?B?TEVsM0t3NUIvTk9jd1dxZTd1ajY3bFZUMWowSmlkR2FSN3R2UmcyUXNGdjFX?=
 =?utf-8?B?M1lLWHN5bDg3eHdmYksvTklINWFsWUhhRUlUN1RRRGMzckFLK3djb0NtQ1BT?=
 =?utf-8?B?aU1wdnJNbGNmVkQza3hHeU1FbkZrQlBGRGREVXk2N3N5Z2VNMS9LL1ZuM3V4?=
 =?utf-8?B?a0NnZmkyQ1VnYVp6UUpXalU0UXZjakxoU005S1Z6RGxTV0lHNHBJbjh0M2dp?=
 =?utf-8?B?eThvVEp1aE0rVlByWFNlbEFrZHBsZ28zUmdJZjROd05MelNVKzNnNkxHZ0du?=
 =?utf-8?B?bUhFRXNkczdXWWF5Mi93REpaS2t4RERZTjZvOE5qc2MzbHoyZERHT2FKWnlF?=
 =?utf-8?B?di9UWnN0L2traDZzK3I5UlBqcTlmQ3ppaGUvcTVTYTc0aFZXb1FCeXNNRFdj?=
 =?utf-8?B?MWtxeGhhbHZiWDk5TFRITlFyN0tBTkFFbWViZVdPV3V0Z0RMbncwUVNMb0ZK?=
 =?utf-8?B?Y1JFZGJCb2ZxT2gxK1M5bTgwaTlKSWZMMW9CL3EwR2psRHlacFZFaXN6ZlJh?=
 =?utf-8?B?NUlZOU91VFZnQ2tRWWhib0hhU2tidUZYZ2FBNlFvRExRS3RyUm1heGpPNlRj?=
 =?utf-8?B?VGdNbTUrcWZ0dXp0QmYvY0RCODdyMUkyYlMzbmdpUEtVTldDZWhiRHVOeHYx?=
 =?utf-8?B?bWY1RW9UUHVWdVppd2s3RlVYaUNzY2ZYdFptV25weEFpRS93V2dSdjJidkt4?=
 =?utf-8?B?T3h4dlBHQWJBbWgzbHZOVFN2dFV1UFZuY1BnNlZoWlhha3VhOG9YVUxyNWVo?=
 =?utf-8?B?SU5acGpkdE1PWVVvTFREcUUwRnFhRGpGMXdiYTZsZS9vcmpkb0QwRjBOQWRa?=
 =?utf-8?B?YTNNWVgzZmxodUZucTFxR09mYWZ2TTJEa3BuMXdHL21MZzkwRkdsVCtwdXN1?=
 =?utf-8?B?ZnlCYmxQS0tQeElFREE0WUtyaTI2SldydmpLSmhPV2VEOE5RcGJ5RjlXUUJt?=
 =?utf-8?B?OFVPOHlyNGRFTCtreGR2K3EraUNUd2J5ZklQbE1PTitXZHIyeFdNeEN5T1dW?=
 =?utf-8?B?c240TGgrTjA3ZlMrMlhSRjRYLzFXUk9nNkdYUWZOajBjSFRnaUxIcHUxZ1NX?=
 =?utf-8?B?bWZlRVN4VW4wakRmcVhadUpoQjFPN0lXdnVvaTdjL0NoNDhva2NYdi9jQ2Rh?=
 =?utf-8?B?MVBZT1IvTTdSUHpFb1h0bW12NWJjSm9HZ0o0ZjJOME5nZUlOdnZvdHRVV2g3?=
 =?utf-8?B?eXpGZ1J3MEdKYU15RVUycUdpN2l1S1lUVXFRUHRQcGNBS3U5QnhoWUFHak9K?=
 =?utf-8?B?NVBiTWNWdG5oUnhLcDNHL1hqUWRadjNpTmFGVGg0RUNwU2tIekpPb0hNM25U?=
 =?utf-8?B?TjZMRjBRWXpKNXNTY2FIR3dlMlJUNkc0VTlWejRMZXM3SmxLdVI4cFI4WWpN?=
 =?utf-8?B?QTRkeGhmbndtUHVGZ0NIMTNoaXM3UXJhY2pKeGMybW4xRnlIV2lkbFFkcmhW?=
 =?utf-8?B?WXVCSlNqTkdWYUY4cmNxanZmYnRjNzFtSERoam5ROEQ0QTNwWUwzSVZYdFVW?=
 =?utf-8?Q?BX47D4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUFsbVdubWpVVjNid3kzbkJDTGRMUERwN2lvYml0SkpCUU5IVUd1UEJURC9N?=
 =?utf-8?B?U3pQajZOM1RKc1FId1JTRTh1Z0pWVzhqNitDK3ZZWllRZytrVXJxKzI4cW9q?=
 =?utf-8?B?SERzdk9zaEVKU2k3OEFBOUZIbGtTaXRwSExxYjQxK2FBZFdZTVgzUEJpbWhn?=
 =?utf-8?B?dUh0MVZqK3ZLMWlVQ0drdWE3Y2Y3cDNHRE5zUXUxbzZBWEtraVcrb3k1NTFX?=
 =?utf-8?B?YlE1YWQwcStEcXhEdzFVZlpQbEt6MktET0NHdCtqRGtvb3AzdnV4OE1FTnZI?=
 =?utf-8?B?QlFTMU9CQWlZSVlQK3JES0U1blR2YWY4dUVBdEJLZGw5UGxIbzRQT3JGU1Zu?=
 =?utf-8?B?WnFocE15Qms1NjlGZEFiUm9oeHN1Y3ZudnRXTm1IeDJpM1B3SjhZajY3eStl?=
 =?utf-8?B?ZFl2OXhjOVpwSEd4TEQ2SFpKSThUS1BiOVdWZEhuMG41OG1ueFVGRW5OVEps?=
 =?utf-8?B?UHdWSkdHU2d2SnNzeFY3d0Y4UlllQno3c2FLRjErMVFtMVlDRXp2dXJubnlr?=
 =?utf-8?B?MW5pNmVkMUgxNE9XcVJER2crWDdyOEFpKy9xWXIzUnNlNnBxRG9oVlVoUDZ1?=
 =?utf-8?B?Qk9JOVZKVDA4TFFPRlpYNUhTVlZkbDFFd2Z0UkM3SUxSRGh5VC9OT0pEYXZo?=
 =?utf-8?B?TWJMWWdaMis0cUJwZVpLZE9WWmRFK3pDV2ViVTB6enhPbEJrMnhGOFZ6RjQ3?=
 =?utf-8?B?cnRGRWNmdk1Od3BtazdDVXRyT0JVaGYwa2xNb2N5VlF4SEpaSkVmSTFLTXlF?=
 =?utf-8?B?eFVLQms5N283cjJ1N2NTQ29SeTVMaGk1RWJMYXN0TnZJaTI4dXlmNTdoYklq?=
 =?utf-8?B?S0tNQWtLNVdTVWZES3pON3U5dmIwa0c3VkpJeUJrdzJ0M29FK3RwUklJSzYw?=
 =?utf-8?B?eU9WV2hzVk5STXpWeXdkL01NMDEwTytCSlozeThmeFVuRThISVJsZGVjM1ND?=
 =?utf-8?B?aUZPWHhTVzBieXpGMmRLYm0xMGlxQnhwWklCc2lYMlV4OWlVb0ZDaSszS1R6?=
 =?utf-8?B?QmtxcGFrUDBmYjIzeVpSaGVkQ0xzaWZkNXppdU41R2cxeEhLMEpnMWp4VXFD?=
 =?utf-8?B?QUt1OXBRWjFTNWVURTloVkp3TGNJdG1RR3ZzemU4MWkvdDBSU29uM1hYYjVV?=
 =?utf-8?B?Qk5vNDl5YzZUbDZudTBDVW9hcUdTRjNMK0dnZElxTzZ1cTZXUVpucWpzQnhs?=
 =?utf-8?B?Z3hYUzR4ZnVobEtqZXpSemNJUzFCcFpQQkUrWFBTU0FLc0lPVm1DR0RVVlZ6?=
 =?utf-8?B?RlZieG4yMUp5UWJGYzlXaHRHdStTU210TlB2NEQ2Qm5LL0xkMi9SbmFkWTFm?=
 =?utf-8?B?WmR5WjJrU0w4Nyt6MGpWTDlrbkZZYitPNE1nWDhlQWNZSFREOWlTOE01bnNT?=
 =?utf-8?B?RzF5a050TTFnZHBUdldNWkNncVJBMXBOZlZpUDNVTW5SZUJjWUtGUUp0QkU4?=
 =?utf-8?B?K1NObk4vUjhKcTh4a0o0WHBudVJIQ1Uyb1ZyNXl1M3ZDSEpjOEg2bmJIdytL?=
 =?utf-8?B?UWxIeGNOQUx2bDRGc1A5WTdnaHZiUlpmaVROR1hQclo2M0lIOE5pL2N6MzZB?=
 =?utf-8?B?RUtPbGNseVhCQ2RWLzJkQXQrcC9KKzFzUmdkakVINDhzdkNCbkR5M1hpMFll?=
 =?utf-8?B?TzkrV3d0Yk9LQ3dPZDFVWjdDUDN2K3ZoNEIzKzRTeGZjYzMyMC9henJCSUx0?=
 =?utf-8?B?ZDRjRzFEaFVoOHdDUHl5dUpzTG4wTzlKeVYxQllFUmR5SVAzN2tCeTB4TXBp?=
 =?utf-8?B?cGNYTmNkZlZkL0JvWTJ0ZlBnTHdEYnBiMzM0VVo0aE1hK1AzbUpaeHg1WUhL?=
 =?utf-8?B?S09JUGZieXpkUTQxV2M3YUt3bUllQlhRTG5ScGpvUWY3cndBdjNUVzVDS3kr?=
 =?utf-8?B?WlJadFhFYkYwZDd1QW1BQmdTb1g5dmE0TzE3alJQVWhtaWtVbk91WjJ2S0U4?=
 =?utf-8?B?UzVYMVpwSGVJcnorRzBWOHZacUJKaEh1RGNzSWRvS0JFR1p3cEkyTXVyOURy?=
 =?utf-8?B?SXoyY3JnRWRiSTdRdlFHTUhwbVVUanEzR1ljY0FBcDc4NW1PT0owSUN5TmN0?=
 =?utf-8?B?K2VxaEJZaVc0azJCQ3E0anVzQlk2UWd6R0ppUjVDY1RieUlKK1QwOE1lY0R4?=
 =?utf-8?B?YS9yRm9DdjU3eXE5dU1pY1d3N2lSTWNNVm9VU0RIcEZVZU1GMTR6RjF2WGt1?=
 =?utf-8?B?anE3SjFuakZqOTlQSU43NE01NjdoOGlCR3BPUDBPRzVCalJWdTJpMWFvK2l4?=
 =?utf-8?B?bUE5Mkp4Zjd1KzBOTElXM1M3dm13PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F93369132DF9314AB0DF145CB2CAEE15@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f067d10-4c3f-41bb-834b-08de0bc0c211
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 07:59:25.0166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +EdRiSR1kDJFTpRdbm30mUifHJZ4DSfMdKlI9zdTlPl3xV671JI7MNFlwdy8/zUhs+G6iXRj+k1PHmCFdciHfPzfchCqpOh5m3krVwzSMgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8123
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDEyOjUyICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gSW50cm9kdWNlIGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xhdGUoKSB0byBoYW5kbGUgbGF0
ZS1zdGFnZQ0KPiBjb25maWd1cmF0aW9uIGNoZWNrcyBmb3IgRFAvZURQIGZlYXR1cmVzLiBGb3Ig
bm93LCBpdCBwYXZlcyBwYXRoIGZvcg0KPiBwc3JfY29tcHV0ZV9jb25maWdfbGF0ZSgpIHRvIGhh
bmRsZSBwc3IgcGFyYW1ldGVycyB0aGF0IG5lZWQgdG8gYmUNCj4gY29tcHV0ZWQgbGF0ZS4NCj4g
DQo+IE1vdmUgdGhlIGhhbmRsaW5nIG9mIHBzcl9mbGFnIGZvciBXYV8xODAzNzgxODg3NiBhbmQg
c2V0dGluZyBvZiBub24tDQo+IHBzcg0KPiBwaXBlcyB0byBpbnRlbF9wc3JfY29tcHV0ZV9jb25m
aWdfbGF0ZSgpIGFzIHRoZXNlIGFyZSB0aGUgbGFzdCB0aGluZ3MNCj4gdG8gYmUgY29uZmlndXJl
ZCBmb3IgUFNSIGZlYXR1cmVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwg
PGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfMKgIDMgKysrDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqAgfMKgIDkgKysrKysrKysrDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5owqAgfMKgIDMgKysrDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDI0ICsrKysrKysrKysrKysrKy0tLS0t
LS0NCj4gLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHzC
oCAyICsrDQo+IMKgNSBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IGluZGV4IGMwOWFhNzU5ZjRkNC4uOTRjNTkzYmJlZGY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTQ1NjAsNiArNDU2MCw5IEBAIHN0YXRp
YyBpbnQgaW50ZWxfZGRpX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0DQo+IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+IMKgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBjb25u
X3N0YXRlLT5jb25uZWN0b3I7DQo+IMKgCXU4IHBvcnRfc3luY190cmFuc2NvZGVycyA9IDA7DQo+
IMKgDQo+ICsJaWYgKGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpDQo+ICsJ
CWludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xhdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gY29u
bl9zdGF0ZSk7DQo+ICsNCj4gwqAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiW0VOQ09ERVI6
JWQ6JXNdIFtDUlRDOiVkOiVzXVxuIiwNCj4gwqAJCcKgwqDCoCBlbmNvZGVyLT5iYXNlLmJhc2Uu
aWQsIGVuY29kZXItPmJhc2UubmFtZSwNCj4gwqAJCcKgwqDCoCBjcnRjX3N0YXRlLT51YXBpLmNy
dGMtPmJhc2UuaWQsIGNydGNfc3RhdGUtDQo+ID51YXBpLmNydGMtPm5hbWUpOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGE3MjNlODQ2MzIxZi4u
ZTQ4MWZmNGM0OTU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IEBAIC02OTc5LDMgKzY5NzksMTIgQEAgdm9pZCBpbnRlbF9kcF9tc3RfcmVzdW1lKHN0
cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiDCoAkJfQ0KPiDCoAl9DQo+IMKgfQ0K
PiArDQo+ICt2b2lkIGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ICsJCQkJwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNy
dGNfc3RhdGUsDQo+ICsJCQkJwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5f
c3RhdGUpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRl
bF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCWludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gK30NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuaA0KPiBpbmRleCBiMzc5NDQzZTAyMTEuLjBkOTU3M2NhNDRjYiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBAQCAtMjE4LDUgKzIx
OCw4IEBAIGludCBpbnRlbF9kcF9jb21wdXRlX21pbl9oYmxhbmsoc3RydWN0DQo+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgaW50IGludGVsX2RwX2RzY19icHBfc3RlcF94MTYo
Y29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yKTsNCj4gwqB2b2lkIGlu
dGVsX2RwX2RwY2Rfc2V0X3Byb2JlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGJvb2wNCj4g
Zm9yY2Vfb25fZXh0ZXJuYWwpOw0KPiDCoGJvb2wgaW50ZWxfZHBfaW5faGRyX21vZGUoY29uc3Qg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUpOw0KPiArdm9pZCBpbnRl
bF9kcF9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiArCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiArCQkJ
CcKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpjb25uX3N0YXRlKTsNCj4gwqANCj4g
wqAjZW5kaWYgLyogX19JTlRFTF9EUF9IX18gKi8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGU5N2RjZmE3NjczYy4uMzgzZTZkYzFlZDYzIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE3
ODUsMTUgKzE3ODUsNiBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiDCoAljcnRjX3N0YXRl
LT5oYXNfc2VsX3VwZGF0ZSA9DQo+IGludGVsX3NlbF91cGRhdGVfY29uZmlnX3ZhbGlkKGludGVs
X2RwLCBjcnRjX3N0YXRlKTsNCj4gLQ0KPiAtCS8qIFdhXzE4MDM3ODE4ODc2ICovDQo+IC0JaWYg
KGludGVsX3Bzcl9uZWVkc193YV8xODAzNzgxODg3NihpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsN
Cj4gLQkJY3J0Y19zdGF0ZS0+aGFzX3BzciA9IGZhbHNlOw0KPiAtCQlkcm1fZGJnX2ttcyhkaXNw
bGF5LT5kcm0sDQo+IC0JCQnCoMKgwqAgIlBTUiBkaXNhYmxlZCB0byB3b3JrYXJvdW5kIFBTUiBG
U00gaGFuZw0KPiBpc3N1ZVxuIik7DQo+IC0JfQ0KPiAtDQo+IC0JaW50ZWxfcHNyX3NldF9ub25f
cHNyX3BpcGVzKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gwqB9DQo+IMKgDQo+IMKgdm9pZCBp
bnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gQEAg
LTQzNTUsMyArNDM0NiwxOCBAQCBib29sIGludGVsX3Bzcl9uZWVkc19hbHBtX2F1eF9sZXNzKHN0
cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgew0KPiDCoAlyZXR1cm4gaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSAmJiBjcnRjX3N0YXRlLQ0KPiA+aGFzX3BhbmVsX3JlcGxheTsNCj4g
wqB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQnCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ICpjcnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsNCj4gKwkvKiBXYV8xODAzNzgxODg3NiAq
Lw0KPiArCWlmIChpbnRlbF9wc3JfbmVlZHNfd2FfMTgwMzc4MTg4NzYoaW50ZWxfZHAsIGNydGNf
c3RhdGUpKSB7DQo+ICsJCWNydGNfc3RhdGUtPmhhc19wc3IgPSBmYWxzZTsNCj4gKwkJZHJtX2Ri
Z19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJwqDCoMKgICJQU1IgZGlzYWJsZWQgdG8gd29ya2Fy
b3VuZCBQU1IgRlNNIGhhbmcNCj4gaXNzdWVcbiIpOw0KPiArCX0NCj4gKw0KPiArCWludGVsX3Bz
cl9zZXRfbm9uX3Bzcl9waXBlcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ICt9DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCA5MTQ3OTk2ZDZj
OWUuLmIxN2NlMzEyZGMzNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5oDQo+IEBAIC04Myw1ICs4Myw3IEBAIHZvaWQgaW50ZWxfcHNyX2RlYnVnZnNfcmVn
aXN0ZXIoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiDCoGJvb2wgaW50ZWxf
cHNyX25lZWRzX2FscG0oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgY29uc3Qgc3RydWN0DQo+
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiDCoGJvb2wgaW50ZWxfcHNyX25lZWRz
X2FscG1fYXV4X2xlc3Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoCBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+ICt2b2lkIGlu
dGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ICsJCQkJwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKg
DQo+IMKgI2VuZGlmIC8qIF9fSU5URUxfUFNSX0hfXyAqLw0KDQo=
