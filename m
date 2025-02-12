Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B37BA32D3D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 18:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733FF10E930;
	Wed, 12 Feb 2025 17:19:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FmUPDfsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0293510E930;
 Wed, 12 Feb 2025 17:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739380771; x=1770916771;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=68GHrPIi5R56OujXX6cr/Ps8Qjyb9omWHGmMMHMLKSs=;
 b=FmUPDfsEkd3XodBsmp/4N3Ux3JaRixbnI6zNjw6UFxjSUf3YE5h5cBL9
 D0dYim0dTTmT6AAbz6PtYagJ0Dvmv3buwipBon4TrJPJh2cSyZEKKoCQJ
 j9UlVC8ER7szxWx+TQcN5fcT6pa76TAyFHzX3kYjM98HVsScpx/pP5gE7
 Q8WVdNY6pveT3gMifLFMcd/TclX7RueGmRbVtL5Vebr0g4zD+C/E/vuio
 6bSDATQY8ko+ajsZCwxsHri0bDj9vDfAanGGiSVsBM+Tu2iGhIhPrkspo
 P2J6B5lPyd3AZxVZyIF8SjPfSKiecA6LgsIyOugQeobCPdhJDoeGioB3J w==;
X-CSE-ConnectionGUID: mOInOyrcT3O5QPd22UIgoA==
X-CSE-MsgGUID: NxEz7lNXQmuhMzL/+Dmjeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="43819279"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="43819279"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:19:29 -0800
X-CSE-ConnectionGUID: tpj5FThaQYWEROuh4vvYIA==
X-CSE-MsgGUID: zNidfSPoQvmnpzVNiTh4Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="143831817"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 09:19:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 09:19:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 09:19:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 09:19:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lOBTLPW8AZI8xZWrNpXoVogRN7HTy8AUDnXkdShSu4g9gSCu0X58sMXuMA6IBJylbREdnHeKnPVOnBCr5C7dfjdsYabjuYykN1ZY0iUfobpw9O/eBqPun48L1FNV0YroQo8zSIM2LA/+n1YNEDggqSLl5QDAfRe0i+VZ8tGZoHnz37gdMGVFOyi8sOM/mwZMq/DhZfGJh/wjHlPkYdbpev4Bc6T/0VR7UU/xzGQYVi/I1KlswXTDay/2pje2EjIui9rpw0fLzKlq7ZDpsNPJKSK+GaJbccFowjUcgcmkaWfeCRKVca5g9hd1ALrjZRV1T9siV7U9wJzWYrD57Z4q9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1+Uvp+jUgiHrSDAqYme5s7PV0+rdubdFE+go+dQ8ANo=;
 b=TcYXwH9+Va2+kLFR09pDLJnERjP4VtxMy68vTifmTOKqQcR8DqefKiavacCZTVExOr5JGIT39u6zQCfE69LZeyFugbMt0KeDnr7RN0r6bbuCN/otJFDMvV8kp/gndPa+KG9IZokRyfkQ2CAxi5bqvG/5UYVueaoJAqXJMYE2U4Er2xAr4tJRKBMwyr3rSKlmiASwdPcz7w8Thm9qIlpV3NvNgmGXgowMY+0Sf+EQLqqCvac1UMoQL2b0lVP/GB2blLua+qUu3Nru/pscmEPLBHMsXnR0N5SJtgMtiP9I0KkiAv6Bk+SZJM4taI3q58sYmuCG9D0ADkEzHqzBXYbELQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Wed, 12 Feb
 2025 17:18:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 17:18:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87bjv7ytoe.fsf@intel.com>
References: <20250212132658.323640-1-gustavo.sousa@intel.com>
 <20250212132658.323640-3-gustavo.sousa@intel.com> <87bjv7ytoe.fsf@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Make POWER_DOMAIN_*() always result
 in enum intel_display_power_domain
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 12 Feb 2025 14:18:53 -0300
Message-ID: <173938073329.145254.3076239747392253077@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0301.namprd04.prod.outlook.com
 (2603:10b6:303:82::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 620ecee1-3b76-459e-1968-08dd4b8955a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YUdwazVCVzlJRVF4dy80YzJ1Ulk2OUJZMGExVDlnS2NLYkxXeWZNSXZuaGY3?=
 =?utf-8?B?bC9zOURRQzFYSWEyVFZ3Y0pINzhZOXR2V3RWM1hOOWVsM0dJUkhsY3R3Skt2?=
 =?utf-8?B?N3NWM29tSDZ6cWhqUk1OaHJkYmhITnZhRTBiVzAyVXRld0ozcFBicjB3bVlt?=
 =?utf-8?B?bGNLc1AwYkxsaVBjTE5wUkhEdmZKWDdDZWQvaFIwNTRSOVJuL0ltaEh4WjJZ?=
 =?utf-8?B?OGZlRzV4bFQrSXNNa1lrOTNITE1kTDFGV0I5L1ZiRkRpTlZvQzNvNW9Sa2Ix?=
 =?utf-8?B?ZExNUittTXFxR0M1aFRwYnV2R3dpVmt2R0xDeVorVm9GUW9ZNGZWVnpXRnRq?=
 =?utf-8?B?dkVOYW55NllsK0dnbUk2cGUwSVBPcTdON29sc3NGQlJyQjV6T1A2Mk5kY1B6?=
 =?utf-8?B?dUM1N2VVOCtsUkpwaEJTNHNBU1lzcW50TTVaczlYem5xaEE1RXREVHA4TFZM?=
 =?utf-8?B?ZWViZjdyWGIwbzNubnJWdGs1S1FSYmQvSEMrRTN2K3lBUlY5aytKbmlLZmd4?=
 =?utf-8?B?OHZWWW9FUjVOM3NZNGNId01KenNVTmZLODRwUWh6MHhGY2dOOStFU0JSaUc3?=
 =?utf-8?B?bWdZSzVkZ1VrdlE1SDg0R2hBYi9aSFlOSEZNeEhRV0tpeXlDamFPWjF2TVBE?=
 =?utf-8?B?SGdiaUVIS1BlM21sc3VhL29vSkxFNjk5eEJBa1pMRDZLK3VIZ1U0V0w3WnRB?=
 =?utf-8?B?V0lteUpmOHhINjJSblRjdjV2NDdKaDJmTlFXRy85YjNoVnRmVmJCeXdzTzFa?=
 =?utf-8?B?N0gyUktIUmxTTS9DQkNUcE80d3daUFFUVWNPNjJkYVgwcGJva3dRcXJSUzBL?=
 =?utf-8?B?R3MzdTlDRGZFTEsxN21SNGgyd0lMN2I0M2x6cW01eUJIRTlmUkdCUkwvMWVl?=
 =?utf-8?B?dWEzeU9PMGFtdnVpNXI1dGl1bnRiSXUvVUxlUjg4L2RkSVgydTRNcllrdnZK?=
 =?utf-8?B?K24vSzloUnhpeGdrY1lnSWRZekNpKzNoSTFsUGNPczNQdjVxOUtWUEFLWi8z?=
 =?utf-8?B?YWZ3SkhLN1pld0tuOU9XUFkvKzFLU0ltZ0FJYnRsVk00ci9uV0RBWVV4WTd0?=
 =?utf-8?B?cXdOa0psSnZDbkt2ZDdsOHVQdFAwekZ0L0gwTlNIc29MME5PQXlpa1JmNGho?=
 =?utf-8?B?SHFjcVpYWEZ0UFJhUTd3R0ppZ0FQNmd6QVJUTmdFdURFTnBzUzdxbFcwUXYr?=
 =?utf-8?B?OUVkSWZnNy95aUkvRTNidURaQ2RIUjRsNmY0UXAxZGloQXBtaHNvR2VDQ3l0?=
 =?utf-8?B?SlZIdXhMeERHNjFZZlAxVm9aUk5Wb2lUeVdERlpxQm9JbTZQM3k0eTFFT0Vr?=
 =?utf-8?B?bUJ4aG9TM0hDb2pCY3dTRkY1RzV5N0RTT25aYzJFRm4wMVRDbnBweGVpVzJ1?=
 =?utf-8?B?UzNiTUdHM0MvcVo5Si9QckQ1bitpOE1IT0NGTTE0RVFCaWNWM293ZDJ3Wlhj?=
 =?utf-8?B?T3p2Z29OTkZTNVB6WFY3ZEhMQXVhREVsQlJEOTVzM1prZ0o3Zkd1bFY3aE1y?=
 =?utf-8?B?NEFyaC9ZbGNiOThVcERyMXVxd2tBb2hoTm9mQm9CR1hvMzJTWnF4QzgrYk4v?=
 =?utf-8?B?UFlla2ZZL3BXVVdMUUgvUnJBSE85aWxlNnNUdmljUTFMY3lBdStsZXVZaGRt?=
 =?utf-8?B?NDBuQ0hhazBFVXlPNm4vL25TekpKdXhSUnUvUHoxYXZWcVJJeEpOcHBqRS9P?=
 =?utf-8?B?Ri9lN1BQMFNXME14Zzh1bThMekVURjluUmJkbmNzT2p3VVBBMldzWi8vSC8v?=
 =?utf-8?B?OXFJVmhyVjgwaFJ5N2JkNnZpS0FkdWdLdTVTaWpyRXY3VE5jK3JsQjFlK1lE?=
 =?utf-8?B?NHR0QlgyelFhak9CTWxDcTdUWmJZenhqVHhQUElZRk5rdTlWZ3dWU2VYV2xp?=
 =?utf-8?Q?6gkKMwXoqGcNw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekVVeXE0dVA0TzZRYUNPM2s2ck1ldFE3R09OMVZmYWlWVEJmSm5kMHFCNVBx?=
 =?utf-8?B?UWNicXArUVJOVEJ3Uzh5MW5HUjJRcVBBd2RSWGZTMEhCWUdmcS9qRVBoeWRC?=
 =?utf-8?B?TVBXSHFMSXdIOGQwTVZCN09CcUlQUTBsMXAzcGRkYUdmT2NOUjJVSEorelMx?=
 =?utf-8?B?M0FqRUYvWlQwOS9vOW9VR0VRcWxuQUFiUmQzdUZGTTBwR0ZxTmw3R0ZQd2FI?=
 =?utf-8?B?OWdKa0tvNXNhbFQrMDRkZFlNRmJ2NFhIb1FFU3JSZDd1SFJYSjlOTHZsZURN?=
 =?utf-8?B?TEZDbFZFdkdsZlJzVmVLeC9iME0zT3VEQU41UXhyUnAzOGVrSTJ2ZEo2bGpx?=
 =?utf-8?B?QVRESVk0OW1nUWZFbkl3S2JXck1zYkFZcXhJSThEckp1K2trT0hNTU9MZ3Jz?=
 =?utf-8?B?WmRXQWhFS0dqdjczVDl3dkRzTENPM2FWMUp4NTJ0eDBaeWZpTmNzelRSZWVl?=
 =?utf-8?B?KzBWZG9MaFZXRklOcDVDa0ozTDgxcDl3ekpScWxWREEwUXc2RzBUK3FHS2xq?=
 =?utf-8?B?MlgwMWVXMFNPNWs0a0lUTUROa1U2cldoM1BhTXhTZFMyVjhKY1hMOFgxVStm?=
 =?utf-8?B?dTRzc0dGb1pheXBiU2hCayttMW5XR0krUkJoU0xrczBIU2twdDh3TWREcGN4?=
 =?utf-8?B?SUxZNHJFVk14SDJ4eWU0aXFoRVBHS3ZpTTF6ZWR3QUdQS1ZVbzdTNE4wZGVH?=
 =?utf-8?B?QTBqcW1ubXhwVWFkM1V4RVhQSXRCZFhicHR0ejdidUg1bUxCWjRWdEpNZTRa?=
 =?utf-8?B?eFp6SWF3K1RsNUwvQWZHVE4xWU5HajRjSHd5NHprZ3hoQ2YwQ3JuQ1plcjMv?=
 =?utf-8?B?Nm0vNmJCeENFdEJPZkxoWUZYRGo5TjRQNVVTZTZOdjdidDZQMTJMUStmbmts?=
 =?utf-8?B?S0dOQUNwMkt6T0pwdkJTU1dvZlFuSEMvMEFDSTRIZ3MwOGhKUUxRVWp3a215?=
 =?utf-8?B?OE1YSVNKbXlkVXhNZlNIRldhUnY5UW15bmZOMTAzdi9qbFVrK1p5SzhMSEpw?=
 =?utf-8?B?em5WcHRKVlY1RGZqT3FXR2pqY05mVWpxNHBQcGY1ZXhvRkl2WTRacFY0cDd0?=
 =?utf-8?B?K05pZ0VTa3hSZlFlZEd0dnVUUk8vTWpqdXZPcnRsbWtYYjI1TUcxK1l3Tkl1?=
 =?utf-8?B?QWZxbTBkcHBrQkNwL3dzbGtSWUZhMWRoTWdYbm1TSEVqcXdZZXptNCtGSUtT?=
 =?utf-8?B?UU1FWDNiR0ZIbFh1MlA0Z0FpQXRHQmwwY2ZFV2NsMUd2WEtxSGN2RXp2My9j?=
 =?utf-8?B?Z2lsaVdlTlpvRUoxdDZ5SVh4cmRZZGVtaFplemlyZFgrRG5lUWY2eUMrYnhl?=
 =?utf-8?B?SVFzN2x5dXBhOFV1MGUzSm91ZzFCV3dsMy9uY0dSQ0k3am1VcTM1cDNFai9D?=
 =?utf-8?B?NHlhRCthM0tuRmhLNzdJaG9Tenl1L1lPWEVYWTlIRXV3S3ZnOHU1U1FmVmww?=
 =?utf-8?B?QjFYdUw1cVRROVFGUE00ZVdjOU5zcjhISHZNU3I0ZzIzNnhNdHZ5UUlpRzlX?=
 =?utf-8?B?OGJ1QS90djhNeGROTVFyVHVCMTUyY05yVlJLTUtZck8rTzA3bUx2SUttQ3lI?=
 =?utf-8?B?Y2I3WTdvNEFXSG0wb09lWkxVdngxWHY3VmZKOUVlUVhra1Brc2pOZFprOENK?=
 =?utf-8?B?VlZmcEdRWVpPdTVLRXpManRMNU1uOW1HeE5LYi90OGdDWHlxTURoOEhaSnlR?=
 =?utf-8?B?ZlhNc2QxQ2c0bVJPZU0wcWtNVnY5NnhKV25mK0xiUURXa1ZFOUhCNTh4cENw?=
 =?utf-8?B?WGdGTzRLVXF6dDJnSFlNYlJpa25hcE9mSXNLQkc4aFluNnRQQTIxV3N6M1M5?=
 =?utf-8?B?OWJ3QkFXcXRJOThFbzVvb1RzOGxtRlRVRnNaUk9hU1Jaa2RDNDh5TW5WUHNY?=
 =?utf-8?B?M2hnT2thQVNhNDVpOUNRTGM0RGZQSENlSHptV1dnRjc4SVZTMjVjdDZJYnRi?=
 =?utf-8?B?NTBPbUhIT3RKcjR1bjQyRWhnckVldnh2S0k2NUtya3B3Wjc2TTd5SG5hcksz?=
 =?utf-8?B?eHRvTllXWFlzNk9Vc3J3SE5peCtQeVdYa3ZLVGs3dG9sZmE3QkZxeWswZDln?=
 =?utf-8?B?U1BOSVdDZmxBeGllM29KOGhRbUZKRWtLdTdnYVdDT3VneCt0TW9Kd25SVExM?=
 =?utf-8?B?YXNKTXllZXJnZWVOYmNIc3VjVVZzZ2VMQVZOaUlNa3FEOFo3ZFIwbkIzU01C?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 620ecee1-3b76-459e-1968-08dd4b8955a5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 17:18:57.7278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uqNUXFcfVf/nGTn2xHJPs4JJcVtZo06AkL9Bt+LO5amkHHlLETkdNBy4TpVBqYpjNmLyz+6tydWB3edKlZIRNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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

Quoting Jani Nikula (2025-02-12 14:11:29-03:00)
>On Wed, 12 Feb 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> In the hope of contributing to type safety in our code, let's ensure
>> that the type returned by the POWER_DOMAIN_*() macros is always of type
>> enum intel_display_power_domain.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/driver=
s/gpu/drm/i915/display/intel_display_power.h
>> index 3caa3f517a32..ab4c9a1e7e02 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -117,12 +117,13 @@ enum intel_display_power_domain {
>>          POWER_DOMAIN_INVALID =3D POWER_DOMAIN_NUM,
>>  };
>> =20
>> -#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
>> +#define POWER_DOMAIN_PIPE(pipe) \
>> +        ((enum intel_display_power_domain)((int)(pipe) +  1 + POWER_DOM=
AIN_PIPE_A))
>                                                        ^^^^^^^
>
>What's with the +1?

Ughh... That's an ugly left over of something I was checking before.

Sorry about that!

--
Gustavo Sousa

>
>
>>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
>> -                ((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>> +        ((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_P=
IPE_PANEL_FITTER_A))
>>  #define POWER_DOMAIN_TRANSCODER(tran) \
>>          ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
>> -         (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
>> +         (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_T=
RANSCODER_A))
>> =20
>>  struct intel_power_domain_mask {
>>          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>
>--=20
>Jani Nikula, Intel
