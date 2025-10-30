Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB1EC20520
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 14:48:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9101F10E98A;
	Thu, 30 Oct 2025 13:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4zbQYD7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F9510E984;
 Thu, 30 Oct 2025 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761832114; x=1793368114;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/7kTrAK3DaSOvBZa6gywg6AGZ3FPscU4OcGUddp0jbo=;
 b=d4zbQYD7cuh19M+Yhv5AaTJI+1jQN81b9FAapBZ+e+bbUELv+y0UJQD3
 cuHmKBTjgIiKuOs0KCAie/ZWn6rjd27LATro2N6p2lGY2+bpj7rhoVcYp
 G8TyIR9bYkys+nMPc0i4SKbm7lWJGkIx9T5pgcqAHOZ5t89mbGeSPs5/W
 9tgop7vdLL7w86dstE+UftainXg7WHUonKvNAEfG83guIaZSfi7LPzg45
 KMZ3Z8t/on37FSu221fY6THh454evezR9MngXbNVVbMFp5mw4x4MkIj3a
 vkBUp9qG51cAJDdD+opjYqnbZsw+eXkr+mFz8ygW1HMivQegb3rTq4p49 Q==;
X-CSE-ConnectionGUID: AImEnGiASGqTvtNB0ycdsw==
X-CSE-MsgGUID: POX1zjILTpSjgu2UQne+cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63882662"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63882662"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:48:33 -0700
X-CSE-ConnectionGUID: cjcsGJUJQF+ylWUek+5Dig==
X-CSE-MsgGUID: VoBaiUqgTB+8vX0bmHJX0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="216808806"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:48:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:48:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 06:48:32 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.33)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:48:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GjXRRBKEU49I+4LPF7SqcT/rE7W2cSyrNQ2k93fw6C7WpIVieuH2vKdEy4OdPQFjabJLEuqg7/Cz2MGFQFAPFcwn+Wrb0LcPfkCVlv7UGptfDFlDM2jFCe7jSX2L+02CSWv0yu6e0yEcqwnYq7ldG0VyCteE8DN2yPAfZU+DLRX/5VPpE4dFeuRHERC2dakfYbGkVPXqRo8SqlPH7CxxI8kNYmzozQtjeWeoEMyditH2K5V/7RPjw8n4OIxgGv9Sfb4/hKEdSKRu8b/GExlpWT1WXRdYl6tHNFo6VprPWK1Y6cSXTize2Up2tVq/nZqzmRy+khwMTik/+eShBSPNTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KFEGc959Q7miWnsU97TEwL58u4ZRHz/NjMNG1Ss7A0w=;
 b=Y/304czl85CBKXNnB41HEdW0z/jAhAaJlE95YWDZ4PQZ+Ql609w2Z1S5QqvMNMs4WdmSyUwF+vxkanNiDmpZThgyiZiFOsJzG6GcdaD1EVOG3aGVr0rKPjo3j2CPAGWktyT2AZLQr+Oln5LG+dOHWbzk+WW/uR3Yh59x02PdQtZR4tsgqTNnJfXxXlJ0npD4+3z18sazF+pXX6qdFEE+2QZf838UzlQJPpQIPY0kpfNr+l4sri8SoblDIb0+JZUQdUYP1kLyq/xVzqfcqD6UWOk0TldGzygb2h+uib+SIvk3NiMf8SZ7+Ijihf+SgKpmlmTZczI0X3eLYiDDuRGJFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 13:48:30 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 13:48:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aQKTXsWok4HaRCdv@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
 <aQKTXsWok4HaRCdv@intel.com>
Subject: Re: [PATCH v2 14/32] drm/i915/wm: Reorder adjust_wm_latency() for
 Xe3_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Oct 2025 10:48:26 -0300
Message-ID: <176183210613.3303.9074203441742899547@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0131.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM6PR11MB4754:EE_
X-MS-Office365-Filtering-Correlation-Id: 31c40a56-3500-4e28-6f29-08de17bb0270
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDRrKzJrY041YVhFazJOdzBtVmc3R05SNlQvQVJIWFNxSW5NcnhFeFhncHVz?=
 =?utf-8?B?b21BVWlJa0taSWQyWk92QmpYdTY0ZUE2MXZpUGxXb2VsWE0rTEFQYTRzeitk?=
 =?utf-8?B?TTlTQUpvS252Z1psQ09mMndOckpmOG5zUUlCanFXc0NnbXVHbjhnR2xWSC9F?=
 =?utf-8?B?cm9nZ2pKR3FuVC9UbDNuTm5BVjhwV254U0NyUHB6aVp3czIyNkMwbGIwMnpl?=
 =?utf-8?B?dk9GWkpSWU54ZWpsZzFyMi83cGdTQ2JBZDJ4ck1BclNqR0Fobm5sT3R2eGtr?=
 =?utf-8?B?SmVXREhleTIrOGs5QkpkVjlzTENEdWFWSmhRN2ljQjdvcGkwM2lDN1A0a2FW?=
 =?utf-8?B?WXFJSTVPcURnTFcyQnRhZ1p1R0trSnlFMEllbEFhL01BRnZ4UWt1RHRmeFZx?=
 =?utf-8?B?bm1LcWpJWlhFRE5XeUdVZm80R1FHOWlVNHJpb09udHJxejE2d3FJUVlreVZE?=
 =?utf-8?B?aVpEUTdMTmtwRGRua1JDRlBOQW53N3huNGJ0Q0E5NG5UZmpUbGdRWXhDbjZ0?=
 =?utf-8?B?NUxQazNxSStGZ1BZMXFQSERWOUx3MUwvSXFBZnJJaFdkVjdtNUhPVjFHT2Zq?=
 =?utf-8?B?TkVEYkZFR0FYZ0tqYUd2UkFKRFgwbWFNdFFIOTFsV256UGt1ZU1VeHZyQkxz?=
 =?utf-8?B?dWxVQkQvTGRqNEMzUFBBT1pKbi8rWkNsdVNzTVNwUHNzNnNvcXAxc1NuaGEy?=
 =?utf-8?B?cmJHVW5qd0VrcWRaTDFRbTNzQ1VEejJIMUVhckZvdFhqVW5Gd1hudTdWWEVp?=
 =?utf-8?B?WlNhbCtaQ2xMTEtUbS9NdnZOcE5SalFVN0x1UDgxRlIwMU0xbWhXUFVQN2Rq?=
 =?utf-8?B?TGRuaEp3Q2tBWGVoN25JbFQyTlF3Wm9HMHF6d0hnSHJ0NzJBeG51c3dyRU8z?=
 =?utf-8?B?YXJTbDRaZVJsbVBWTWxqRlRKTlUwQURsU0kwb2J6a0wxTVNPeENwYTFGSlFV?=
 =?utf-8?B?ZnhpT3d1TkkrdFNXbWpsTjJyRjY1d2Z1OUp1RW4vS1Exc1kvWEVKZ0l0OHNN?=
 =?utf-8?B?UDV2U2d2c3Z1aEFtYjNDVXVSVThjUnBKclYyRHdnY2ViV2xOVlBxbitvUXN0?=
 =?utf-8?B?ODZWUUxoOUFYM0JlSVFlL2N3SzZYOXFXdmY3VWo1R2Rkb2E2eWpCTjhQdkNm?=
 =?utf-8?B?M1JuUjRkT21YTjlBY3dibmNVUkgzQVZXL3plcnB0aVNIbjhaQlVwNHE3M3lx?=
 =?utf-8?B?YnFYNW5WSVBHb0ZpVnNmeVpWdjNwNlkrckpiay9MbnRLYjE2bjNsTUxBSURh?=
 =?utf-8?B?VUZCMUtFQUR3ZUsxc1lyaytaOFV1RHJNMWRrY1k4WHdsR2NoaXRSUnhFb1lC?=
 =?utf-8?B?dmhEbXh4bGlDdkkxR1ErTnhpcnBORFlOcW4wTE15eU5sOFFHbnNKU2E1dldP?=
 =?utf-8?B?aG9wZXpzS01XYVdxUTczZUZoTk9HSmxTazhaRWM2blpiTERNUGtCU09xeTJP?=
 =?utf-8?B?N1pqbVl3Tmx3anhLd2t5L0tlZnlRa1ZyL3hTbC9hWDRJRXBhNC93TFhLOVN6?=
 =?utf-8?B?Vnl4WVBRc2d1SVhZV3ZKempVbTREVFh6RUMwNFlpV0NKR1U2Y1h0dlpUTGRk?=
 =?utf-8?B?Y2dkKzVCVEI5SmRBWnkrWW1Zcm41VW92c1RzQXpnSHpSeGQ1VXpIeU9YTVVU?=
 =?utf-8?B?NjFkRE41Vk5pa3JBRjcvcWNabUh5eEJRNHczajVEbzI2RlZUSmo1TWJ3TC92?=
 =?utf-8?B?WHFZeFgyc1RLcnA5aFZ5UXZPaUc4RlVMRDNxT1hoamtES3BkSGdSM21xRWJ5?=
 =?utf-8?B?TkhWZnQrY3RET3RNZndPQjBZK3Z2Q0hzSldsb2pBZGFwM3lMY3ltSHpVZ2Fj?=
 =?utf-8?B?NzZHdEFCV3h2c3ZHaE5NVU10L1ZTZHprdE5zTTlYYWc0YkwzOWdPVnV6Z3lJ?=
 =?utf-8?B?eHdlVG9ES1RmNHRNeUswM1V6Y2F0N2FzdzRZTnl4dFhZQVlVMzBZNmNvRVk4?=
 =?utf-8?Q?dA3iaNs0n1KLVe6DJMTG+Li1AoXezIMd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2dQcUNRQzN2aUFYdXNDZ3Q5NjFkc2pxQ1NvWm9CSlZoMVRvalFLbEEzUFlG?=
 =?utf-8?B?YzFLSlhTd0M1R0ZraENYN0xFZVdveVIwa3JnRFVoSDYvNUcyM3BLcEczWEpT?=
 =?utf-8?B?d0FjdDBaWGRqcGxtdktaSVFqTDlyWW44NnA2L1UzZlFGWVNzNjJ3Ynp3Z3dL?=
 =?utf-8?B?dW5FQnd3QVhhWjFKZ2ZWSmo3UmZycVQrY0xjQjlqMlhZdUdCeWZNVzRlYVFO?=
 =?utf-8?B?L0JSdVVBZjIyblpwbW9aM3llY28wN2krK1ZSZjlJNGdIUDY3OGo5NVhvcUdt?=
 =?utf-8?B?WEMvYXhiemRxZG1ac3prek51bWdVQnAyaDJMeEdzNktKQk9abnkzWWZBUnBP?=
 =?utf-8?B?S3pESUVkTS80MjVkbDdHVmQrRXJJTmRXT2g4MGZtdVFJNXdwQUNCQTQ2Y0dP?=
 =?utf-8?B?MnpZR3gveWhjKzExcUZwZ2FiVDdQbzlSRnNHWjRxVU1DZW5yc0UySnk2RDZ3?=
 =?utf-8?B?d3NCNXlZWms3cnVrcnN3bUVmeEt3SU5MMUFpZmg0R0FYK2NuUTFoMXpBRTlU?=
 =?utf-8?B?Uk1RTnlJaVMzZnNzNmJobTlLUWtrbndYcHBRWlcvbm1LTW45UDM1WVM2RWdp?=
 =?utf-8?B?RHA5MDBrNFc1MzZPQWRNbmFRc1B0K1B4L3pZbzJrczFyYnVrQ0RZc3RYY2lq?=
 =?utf-8?B?QVBWd2piWVovUE5TdDNCL0RQbFUvZ0t3WDV1UXhvVlc5d2NtVTMzQ0REQ3Vw?=
 =?utf-8?B?bmlRMjdRVER5RHlkZTNYeVcyZFJQTWFSM2QveERSN0REblRubEpDSHFSRjNn?=
 =?utf-8?B?VXJTN0ZxMmFKL1crY3AzY01mTWk4UzdFU2tHaWZuc0tFK0ltVkFQckl4c1BK?=
 =?utf-8?B?WHJDanR3NS94RiszdDZIUUFvaGhuQm54TEZ1SHQxdXIwUVY0T25VOGpGK0VG?=
 =?utf-8?B?YXRHaE9TWWFkSStyUTBVMEVkQTFadWhka3lBNytMNVJnSDAyTGRKdGhoOTU4?=
 =?utf-8?B?T2ZRY01wcVJrdk95NThrckFSNTlwd0lzY29OeC9lblV1VDlGRElVRW1zVjVS?=
 =?utf-8?B?NTBOK0FlK0dVbytPY0QwZ2xQK3UyYTFubnRXeElnNTRpYjlHaWs2QVJUenhD?=
 =?utf-8?B?N29KRTB1ZjBISmVqZ2Rod0NiMWlLOXRwbjdSaU9qL0pvd1doWGlQMHh0OHdL?=
 =?utf-8?B?UGxtSVZMbzFab3cvRytJb0JldmZpU09TdEFva24rQlJraEVHV0VLVnF6M0Rr?=
 =?utf-8?B?d09lOE9UVXlwd1FmV2FhQjBZcXdaV1VEZVA3VU4vR3EwUEMrSHR3azRkQWxN?=
 =?utf-8?B?OHRrcEZsOXZ3Zk5aN3VSQnNaZ1o2K0FPa0VMOTFhVTZYazVKRFZ3SHR6WEVT?=
 =?utf-8?B?NlNua2Q5bnVBSm5hR0tydlo1UEVmeXl0UUF4Nk8vU1RlMHhaeHBaM1lvSjRD?=
 =?utf-8?B?QkppYUtWbXQyTVY5NU5GWmpXT3VZdm14SGtpZFg4THJlbjB0azFaME5GaHo0?=
 =?utf-8?B?RVR3UEF0bGIrNFBBZSs4WXRwazQzODgzci9uWlVYVHF3M1IvQkVqVC9KazMx?=
 =?utf-8?B?OFd6Y1Ewc244bGFwTTBvMUVwNmZmOGFyTTY4bWNkc3NISlpZdVUxaXZEWnRV?=
 =?utf-8?B?Q1RSUUZYM052MFE0UmFWQ01oZUxXZktyVUw3aExTVDUzaDNMOTBGZ25VWVFL?=
 =?utf-8?B?Tnl3SlIzNnA1OFdGNjlnZzZVd2RoVHJ0RXJGWFB6WUl6dlNyTHl3OVVxcG0v?=
 =?utf-8?B?WGprNDkxZXZVSTZGdDNLTVlHREVVVUtxRklzTU1NT1BoZ3RiSHl5bytHSEhT?=
 =?utf-8?B?dEM4SjU0OXgrZjZlb28xbCtHelg0M1QzWDlNanlaN05GQXZySmhiSlFVMGhn?=
 =?utf-8?B?RHJHeHZ0eHpUQUlnKy8wdUN5OU9jMm5ONi8yemM4bkFkVXRnOUlxUzdSQmRB?=
 =?utf-8?B?ZzVRcnR5ZWdiSlFndnNGQms5d083YWhlQUU3TFdNUTZkRTFEc1d5b2NIbllC?=
 =?utf-8?B?ZVM4eFdnMnJEemFqclhpZCs5SExtZnl4OFcwSmNVdjUxQlphRHFjNWxMREpI?=
 =?utf-8?B?Z01NWkNQNW54dWJpR3oyRTJmUklBSE5NVXAvcGFEalo4QWFVM1ZWV2hHZENa?=
 =?utf-8?B?MVpxK0Via0FSS3B5ODd6MjRwS21taVc3bTI5SlRGT0tjdzdhaVJFdkNobDMr?=
 =?utf-8?B?TDk4dWVXUXFZN2F5Mm5Pc3NKM1FrcDd2Z2JqSHJOcmh5b0J0S0I3dkNsUVN5?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31c40a56-3500-4e28-6f29-08de17bb0270
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 13:48:30.1899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CwbmwsbaHSmwkwbrxlIoiiF3I2XX5/hcgE5TdpTb/c4nH4PL3rKX8MptLTQaTgBNTC2F71e8xX5PURfNNslVHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-10-29 19:22:01-03:00)
>On Tue, Oct 21, 2025 at 09:28:39PM -0300, Gustavo Sousa wrote:
>> In an upcoming change related to Xe3p_LPD, we will need to (i) update
>> wm[0] in adjust_wm_latency() and (ii) do the same increase_wm_latency()
>> that is currently done when (wm[0] =3D=3D 0).
>>=20
>> Because make_wm_latency_monotonic() depends on wm[0], part (i) needs to
>> be done before it gets called.  In order to keep (i) and (ii) as a
>> contiguous logical sequence, let's reorder adjust_wm_latency(), making
>> make_wm_latency_monotonic() the last thing to be done.
>>=20
>> Also take this opportunity to simplify the code by doing the call to
>> increase_wm_latency() only once.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index c141d575009f..57260a2a765a 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3213,14 +3213,13 @@ static void
>>  adjust_wm_latency(struct intel_display *display)
>>  {
>>          u16 *wm =3D display->wm.skl_latency;
>> +        int inc =3D 0;
>> =20
>>          if (display->platform.dg2)
>>                  multiply_wm_latency(display, 2);
>> =20
>>          sanitize_wm_latency(display);
>> =20
>> -        make_wm_latency_monotonic(display);
>> -
>
>I was thinking that by doing this early we avoid potentially papering
>over our own bugs in the later adjustments. But Windows does appear to
>do this after the read latency adjustment.
>
>And it looks like Windows actually stopped doing this for xe3 and now
>it rejects non-monotonic values. And it also does that after the read
>latency adjustment.
>
>So I guess what we want to do is move this later, only call it for=20
>pre-xe3, and add another step after it to validate that the latencies
>are indeed monotonic.
>
>>          /*
>>           * WaWmMemoryReadLatency
>>           *
>> @@ -3229,7 +3228,7 @@ adjust_wm_latency(struct intel_display *display)
>>           * from the punit when level 0 response data is 0us.
>>           */
>>          if (wm[0] =3D=3D 0)
>> -                increase_wm_latency(display, wm_read_latency(display));
>> +                inc +=3D wm_read_latency(display);
>> =20
>>          /*
>>           * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
>> @@ -3238,7 +3237,12 @@ adjust_wm_latency(struct intel_display *display)
>>           * to avoid any underrun.
>>           */
>>          if (need_16gb_dimm_wa(display))
>> -                increase_wm_latency(display, 1);
>> +                inc +=3D 1;
>> +
>> +        if (inc)
>> +                increase_wm_latency(display, inc);
>
>I don't see that variable being helpful in any real way.
>Just makes the function more complicated for no good reason.

I liked the fact that we would be calling increase_wm_latency() only
once... Not a big deal though.

--
Gustavo Sousa

>It also has nothing to do with the rest of this patch.
>
>> +
>> +        make_wm_latency_monotonic(display);
>>  }
>> =20
>>  static void mtl_read_wm_latency(struct intel_display *display)
>>=20
>> --=20
>> 2.51.0
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
