Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C60F4996E4E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 16:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F5C10E759;
	Wed,  9 Oct 2024 14:40:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2Um8KDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526D110E759
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 14:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728484846; x=1760020846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pyigSE1Wl2VX9CWKuUA4CmqHZDcsBglpYzgZ/2RLT48=;
 b=m2Um8KDtKStzT86e4cKvBdky77lRnfb57S6SMGNpC/gb7bh6CR0diKkf
 nL0rIEbHu1577VBRs2qlMJPOektkk1p/P+60X1ovd9DdHOFZFpZ6KNIxM
 8Wrk/qMyWPX2KY6OILFGs3erjtbK6bcd3Dtb8DvrBpVpaD7Ssl8q8XjX8
 NO7FVSzq2UKt/io4Fzevw2btyWRpjduwRoGSsE2us9h15SZXQE3yPUqWK
 A6tEQvXcYDBUEMJgOSBoHnvdcsbSCRP/IsjZ6NcbUf+JxWjyiXoyQZDMy
 lvvYMu+y1qBcoipB7wn8McwbtLXDrCdkjUZZRQH486YYrn3OXdvSioeXP Q==;
X-CSE-ConnectionGUID: UPAW0eEIQkS/rVLv/PqOfA==
X-CSE-MsgGUID: 38fn+jHYSemC6YoSPMYR1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27669153"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27669153"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:40:45 -0700
X-CSE-ConnectionGUID: Vzx9IuyBTOeGUhFlCfE01A==
X-CSE-MsgGUID: Ho629EdETf+FcLJ0+niFPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76589470"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 07:40:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 07:40:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 07:40:45 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 07:40:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OZZwqE9f35fRZq5rs3VrPHdxEDooolK0clqB09cZUEyv2SMOk+6TzvC6+9bgxzOfi1WG2a1x+dSEKDOYa/ScFL63FTEscq6YRot0SagzYd2tmLkBPj9b6eBTedZZY0YeWuGHEeXgrMCZjvMOpPgRSu5Mjwn/uQ9ZQmDwwyT/VccqDIJhBiBvr0NFh30/A8Bn9F9tpGXcTaNQPKgcxH/Pgd656OIpndQF0Zu3PMmC8WOpFBE1eHyQ6I7U81saKJjsnzZKiUnhGTUjMPbv9+7ayc8qn3EfF+qyWRXvTQwOBBZPLbLbpeXeqdjfzCP8Ie3rPwd1g46m8YMsURuZPzwxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pyigSE1Wl2VX9CWKuUA4CmqHZDcsBglpYzgZ/2RLT48=;
 b=KhISBS9VSNuDYwwiyE+OyNBdHT8ErlcZ879zmn9GqH7WAttJICpV0tW4p3SokpKrDaPdoC2h/Fqew2I13hovnfZmPdJpk6O7b3gIpl+xcPG/C2ug1QG8TdADUVJnDOh4fyE+3GOTVhjRzRwBNBl16/VFEnpinLyPxDqtYOQhXn2BFYIE1WrT0D2Zgt8PfxapMFtm3DsT9ywlY00fLhw8GfuYNSvwnazxm2R1vn4fnO/fUXTLU/44h9S8PnPjoCA1A5HzJq03Rvs3xbQblJefTml2fGLPKSWHYrUTz1k+s7kXjzVzpT51dZ3A437Kh4LWIDP53tmI304GuwB2zoLNQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS0PR11MB7312.namprd11.prod.outlook.com (2603:10b6:8:11f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.24; Wed, 9 Oct
 2024 14:40:38 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 14:40:38 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Hogander,
 Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel Replay
 vblank workaround
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel
 Replay vblank workaround
Thread-Index: AQHbGlE0l92u4d7fuE2sprghTIhCL7J+fKcg
Date: Wed, 9 Oct 2024 14:40:38 +0000
Message-ID: <CH0PR11MB54446FA494FB6E3410817FB1E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
In-Reply-To: <20241009134225.1322820-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS0PR11MB7312:EE_
x-ms-office365-filtering-correlation-id: 7dad6e45-254f-445e-b579-08dce8705784
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U3pxekJUUDJuUHRIdUVMa3ZtUUNjNFRoTlErTDVlMkZBenI4c0Q3WjlHWW9Q?=
 =?utf-8?B?SVhiOEFaN3F0bG53M09GbmNoNnpoUHhBMFhmcjlsZE5LSnhDY3hjdmw3RXA2?=
 =?utf-8?B?bXVncG1vdVA0TzE0Smk4K3NReXNKZDAxQ244REE4N2x4MDRqdTZ4OFg4enA3?=
 =?utf-8?B?Uko2TEY4MU9wRWRLSlZodW1lNmJDTmluYTA3dFVlQ2pMOWwyOGZhVmppLy9x?=
 =?utf-8?B?SUFnZ3pmNUs0Q1NMcGhMeEFJM0krYXlnOTNUYXhMVnhweTFRZEZEUC9PQkpT?=
 =?utf-8?B?TVBCVHVHbFRWRkdtUWVZU0dHVUVnNkdJeTZHWHJUenZhNE9uMkhxNmVDYkRK?=
 =?utf-8?B?dnhIYlVONEFwQUl3UWxOWVkxb1VrTE9NTFc1V0pxVERrUXJRQ1hmOCt2eTZF?=
 =?utf-8?B?NzNMWWhjR2J5bUV3cVhmV1c4T1lZOE5SamNhZFRkYU9ra3MvRllhZk51MFhG?=
 =?utf-8?B?bFRDQ0FWVmVVNDNIY0JBRWdLZTByajhGYjVVR0hWWUNpQTRsSmtxK1hVektF?=
 =?utf-8?B?bm1FbHFBQjdGNUd5Q1RPMGRoTk1XUm5sSWJWbmw1QWNyUXVwQXh3SFJISGtE?=
 =?utf-8?B?NGhoK2JWSWxqS0J0NnRiZnFHSUU2QXJVVTJoL0JlVnVLSWpzVG4xM0FuNnVH?=
 =?utf-8?B?YU8wQ2Fqc0ZjT2pVZTNHTm1DaWo5T0tHUDlGYURLZXBzbGxuT1pxaEIyMytF?=
 =?utf-8?B?Z3RPSW9SaGEvOEE1RUlWYzdaR1F6ZDRaL0JkKzlWSWtwK3IrNHhjU3NkbHVE?=
 =?utf-8?B?djd6dlRLN0NaVUFsR09MNjZQN2RscHhtckVKK1FkM1kwSDNzRlNCWGZzUk0z?=
 =?utf-8?B?YytCWkIxbng4QnhTMWh1blNvWG4rQUNQbzlCRXRxSWVNa3NGMmJLK0xvMi9M?=
 =?utf-8?B?QkJrdzdRSFpuTEUxMDlqSkNxRU82Q2Y3ZUlTMjJBM0JMbDI0ZVlIOFBZRVJP?=
 =?utf-8?B?Vno3eXlvU1NuR01PeThLWEhsWTVCazcyTHVITEVKV1NBeXhkZGx0MHBxMWY4?=
 =?utf-8?B?dnRxSzhWQUxQNW8rdUxGeXFpZVZmVERuWCtrbW1iT0ZnVUhlOWlwdTRkMnJ4?=
 =?utf-8?B?a1h2b0Q0ejZ6OTJSM3NPN1pCb0VtVURRZlJjSzY1ZEhrZmJaVVgyUUxJTVlq?=
 =?utf-8?B?bXMvVnR1R1k3VXloVnV6VTlZV0JneHFONVpQMTNreFU0bkVsN2t0b2ZDL1cx?=
 =?utf-8?B?NWd1Z0EwYTZaTVZCdE52MVBheVZ6MzM3NHFOYmN5SlhmNlQ0Y2ozN3JrREdB?=
 =?utf-8?B?RTNLOU45cUxLQmlYN2lqZVF1L3EzY29CWXBYbjM4K3Zva0J3TTBFQW51emE1?=
 =?utf-8?B?cnFCaUVpM2FORndWbVhxUytIOC81NmJzc3QrNVV5Zy91UFFRRmFlajd5YnNU?=
 =?utf-8?B?SkF0bVNWNlN2bEo2bysyZERtVlV2QnRSMzRPdTZiRjZuaGRrdnRZOW9iYUtE?=
 =?utf-8?B?VEMwSU5NK1BaOFhvNVpTTEtYbDdpVmcvWFZUYVZqOEI3c2hlcUhDcHFzSzJQ?=
 =?utf-8?B?eHFWLzhGSmF1QU4vbmlodFZsc3NZNEtMOHk4ak10aU5Ca0kzV0hnQnFDT0Nv?=
 =?utf-8?B?YklvdHQyRlpDRm0xNVIxVFFiMXlsNTZod0xiN05ud2lDYnE3UVhYMk5LYXBn?=
 =?utf-8?B?RGd1M1ZPUUw5TkZaeDZDd2RrZ3ozTm1KcCsyaGhhNWpkbzRlclpsSzRJTG5N?=
 =?utf-8?B?SDVrMk5MQ0s1RGh4ekl4RVN6R3pDSCtwWXp1aXRpSDFEQ29yZmtER3poTVpP?=
 =?utf-8?Q?jX4dRoxp4Sl8ZxzSz8Xf9HTygxRhjgbUo415qaa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXkrNTRTaDNPekxjT1h6RlE2TGFDSmVrNEVzaERUUHoyamFtNHNrNTJYb29x?=
 =?utf-8?B?aENUbHg3eW1mOWFRanlQeHJnYjh4VEJSOVZsRUFjMGxEQTZRdVRFZVJEUnBT?=
 =?utf-8?B?MTFGOXdVcmxGV1dkYWtjY1JTOUpqNEFRNVhnZWtJeHBqS29RQU1aVnpnaXNB?=
 =?utf-8?B?UURJVUpjaWI0RTVOMTZtNVptU016UjkxS3dFQkFZNWluYUFvckFtWXRWSGI3?=
 =?utf-8?B?bFdyTmNuL3NyRDJUeFExU3MxaXdJYmxZRFg1RkxTZ3NOQlVtbHhQeU9lMWgx?=
 =?utf-8?B?T05vY1o2aUUrWlI0N084ckdsN3l5ZGlYVkR6NGkwbVdzTld5QkpWNzYzRGVJ?=
 =?utf-8?B?b2luQ3dUbGMzRG5aS3YxZjRlcGxpWjZBOVBxL2syVWt3ZCsxc3ZYM3A0MHZU?=
 =?utf-8?B?MWdoc2x6c2Z5cXoyVjVWUW9YK0ZBc3FOQlp4clNRR0VtVmw4OTliUnhDMDgx?=
 =?utf-8?B?QzdETk9rSmVVL09pbm52REhyRi83VTI2MlVFRHU4U2xIeEhzclN3SUdPZTBV?=
 =?utf-8?B?UHozVVVJNXFPc0M5T1JnVUtiTkhxQ2EyUGVmYnBvekZmeUowaVBVQWNTNEtz?=
 =?utf-8?B?NzNmLzE2WGFRZXBTb1ptQi9ScTdmbTFHUWJ0RUN3QkhOV2o3SFdsQktaM0Uv?=
 =?utf-8?B?aEF6UHI4bEU3dkVMU3lhMXR2UXRiMHFOcVlINXg4QVM3WXdraXo4VXYvR1N6?=
 =?utf-8?B?L1FMaFYxVlhTVGJqUktFemY3bWt5Q1I4cE5YMk0wV2tkU2E1d2NLZTNmbTZL?=
 =?utf-8?B?dWRBc2JUV0R5bUpUdVVIOGxtZFpsTGVZQk5md280MkhkUXdnWXJRcWVjZWZ5?=
 =?utf-8?B?Qzk3S3dwcEYxdTdIWFdITGtrNm1taEw1bUYrVEhDTGQxbUlUUlJVaU1jQzFn?=
 =?utf-8?B?ZEFwVitpdk1uRVF4S1cvbFNuY0JRM1NrQm9iZkdHaDJnWXVUam0xdTJ2aWlZ?=
 =?utf-8?B?U2EzMXNzRTNXUWJtUm9YU3NacGpoOWFxbTRvcm9XaEczcHFwZU5OamJlZFdO?=
 =?utf-8?B?MVlpeWdVS0xLUkp4UUFteldHaXh0OWlsZDVRWHNBNTRZRGpSQm9mcS95NzNh?=
 =?utf-8?B?TjRQTGI5eXZHbWVhbFE2aDJNaXZRY2FyVkVTdW5uRDdQU1dFVHdTemJtVzRC?=
 =?utf-8?B?eTZpRTJDc3QzbjFxYVdZWVFRY1ljRzFpV1J3NTN4dVRCSjVyQ2VOaXhHbXM3?=
 =?utf-8?B?dk8xYkEwOTg2czRBZmVJcDUzMlNaM05ESVNWd2JEclFkd3g5blhXanZBTHZx?=
 =?utf-8?B?V0xCaUFkc1lTSEgvQ0dwV1A5eVg0S2V6K0FDbldIWkM1dngrNmwvMTJVb2NL?=
 =?utf-8?B?d1loOGZPVzhrRjM4M09CS01rYUpFZDhxZlZQd2xJU0gwcUdxclNEUnVFZTJn?=
 =?utf-8?B?VTh5MFdTK2NodndQWTlHMnA4UFplVXVIMWpZZG1QZHhheVhaMk5LT3hPclBC?=
 =?utf-8?B?bjRrZlRlVDNXdHN0ZkRBWUV5NmxyS2RWL0R6aWk2VzlxbWlJRnRMSHFyZkFh?=
 =?utf-8?B?Q24rcnJOSURUNlJ0U1lhamtXekpVbkl2WEFTaFRDRU5IWStXVWErcFpCL0Yx?=
 =?utf-8?B?KzA5UjAxbkNoQUtsUFZDVXBlTjBHcFhtWERLUzBoaUQxdkJ3dndIVEw5eTFl?=
 =?utf-8?B?SE5obWlUVkJuRVQ3dHJUVy9JUk5lVHBBeHlnZXZRYVowUDczME9zNEgvdk03?=
 =?utf-8?B?VHNOQ1hMVjA1a0tIeXRRYlBRVFlkVXZLajBpRGltbDFVVjh4Q290WnRjb1ZO?=
 =?utf-8?B?czFzbVVWWlVJOXhpdmdSM21GUUcyc0lnQnVLbWVWcHkyOGExTkhnVEtLSkdN?=
 =?utf-8?B?RFRCZW9SUlFOVVVNbXZXQWNFdURPdldDTmNuakoxbGtmaUtFYWRlM0U2R0lH?=
 =?utf-8?B?dlZXTXZFdFhJbXZCNWczYS9iNnNwMHZoN3Ewby9pTkdJR1NIZHRTL09JKzhW?=
 =?utf-8?B?S3BWR01UNlkwcnhCRE1mRmtTeW1wM1A2RVhCWFVTUXhLRVN6WnBnZWE3dTNR?=
 =?utf-8?B?V1NKbk5mRm14MFJYNVhuR05pMTF4QktPZzU2UVlMSHQ2aTBqRkdjN3lPVG9p?=
 =?utf-8?B?ZEUxNkRESzJQR3NPWjRxVmw2Tkx2MWlseDJONEVhcG1pYUJGRUxsallBNjJ2?=
 =?utf-8?B?WGJPVWlVNE5WZXpES1RGMWY0ZEtYb3FEZW8wOFRHR25hVDhrTW9hTG1oNkk3?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dad6e45-254f-445e-b579-08dce8705784
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 14:40:38.2020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pNJ0cFE7GSx9OvnlaNQNkuE47HdqUPS2AJfSLQIbSop2fOtwhszklSGhaCdrxPjgaCTiIXdrbn4D+VfYU1Pw3C73sGEmFH30EyNH6NbffjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7312
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkgSMO2Z2FuZGVy
DQpTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgOSwgMjAyNCA2OjQyIEFNDQpUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
OyBqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb207IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KU3ViamVjdDogW1BBVENIIHYyIDEvMl0gZHJtL2k5MTUvZGlzcGxh
eTogQWRkIG93biBjb3VudGVyIGZvciBQYW5lbCBSZXBsYXkgdmJsYW5rIHdvcmthcm91bmQNCj4g
DQo+IFdlIGFyZSBhYm91dCB0byBjaGFuZ2UgbWVhbmluZyBvZiB2YmxhbmtfZW5hYmxlZCB0byBm
aXggUGFuZWwgUmVwbGF5IHZibGFuaw0KPiB3b3JrYXJvdW5kLiBGb3Igc2FrZSBvZiBjbGFyaXR5
IHdlIG5lZWQgdG8gcmVuYW1lIGl0LiBWYmxhbmtfZW5hYmxlZCBpcw0KPiB1c2VkIGZvciBpOTE1
Z20vaTk0NWdtIHZibGFuayBpcnEgd29ya2Fyb3VuZCBhcyB3ZWxsIC0+IGluc3RlYWQgb2YgcmVu
YW1lDQo+IGFkZCBuZXcgY291bnRlciBuYW1lZCBhcyB2Ymxhbmtfd2FfcGlwZXMuDQo+IA0KPiB2
MjoNCj4gICAtIHMvdmJsYW5rX3dhX3BpcGVzL3ZibGFua193YV9udW1fcGlwZXMvDQo+ICAgLSB1
c2UgaW50IGFzIGEgdHlwZSBmb3IgdGhlIGNvdW50ZXINCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpMR1RNLg0KDQpSZXZp
ZXdlZC1ieTogSm9uYXRoYW4gQ2F2aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KLUpv
bmF0aGFuIENhdml0dA0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2NvcmUuaCB8IDIgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9pcnEuYyAgfCA4ICsrKystLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBpbmRleCA5ODJkZDk0
NjkxOTUuLjQ1Njk3YWYyNWZhOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IEBAIC00NTUsNiArNDU1LDggQEAgc3Ry
dWN0IGludGVsX2Rpc3BsYXkgew0KPiAgCQkvKiBGb3IgaTkxNWdtL2k5NDVnbSB2YmxhbmsgaXJx
IHdvcmthcm91bmQgKi8NCj4gIAkJdTggdmJsYW5rX2VuYWJsZWQ7DQo+ICANCj4gKwkJaW50IHZi
bGFua193YV9udW1fcGlwZXM7DQo+ICsNCj4gIAkJc3RydWN0IHdvcmtfc3RydWN0IHZibGFua19k
Y193b3JrOw0KPiAgDQo+ICAJCXUzMiBkZV9pcnFfbWFza1tJOTE1X01BWF9QSVBFU107DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJx
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4g
aW5kZXggYTQzNjdkZGM3YTQ0Li44MjI2ZWEyMThkNzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gQEAgLTE0MjQsNyAr
MTQyNCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rpc3BsYXlfdmJsYW5rX2RjX3dvcmsoc3RydWN0
IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0N
Cj4gIAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqZGlzcGxheSksIGlycS52YmxhbmtfZGNf
d29yayk7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpc3Bs
YXktPmRybSk7DQo+IC0JdTggdmJsYW5rX2VuYWJsZWQgPSBSRUFEX09OQ0UoZGlzcGxheS0+aXJx
LnZibGFua19lbmFibGVkKTsNCj4gKwlpbnQgdmJsYW5rX3dhX251bV9waXBlcyA9IFJFQURfT05D
RShkaXNwbGF5LT5pcnEudmJsYW5rX3dhX251bV9waXBlcyk7DQo+ICANCj4gIAkvKg0KPiAgCSAq
IE5PVEU6IGludGVsX2Rpc3BsYXlfcG93ZXJfc2V0X3RhcmdldF9kY19zdGF0ZSBpcyB1c2VkIG9u
bHkgYnkgUFNSDQo+IEBAIC0xNDMyLDcgKzE0MzIsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kaXNw
bGF5X3ZibGFua19kY193b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gIAkgKiBQU1Ig
Y29kZS4gSWYgREMzQ08gaXMgdGFrZW4gaW50byB1c2Ugd2UgbmVlZCB0YWtlIHRoYXQgaW50byBh
Y2NvdW50DQo+ICAJICogaGVyZSBhcyB3ZWxsLg0KPiAgCSAqLw0KPiAtCWludGVsX2Rpc3BsYXlf
cG93ZXJfc2V0X3RhcmdldF9kY19zdGF0ZShpOTE1LCB2YmxhbmtfZW5hYmxlZCA/IERDX1NUQVRF
X0RJU0FCTEUgOg0KPiArCWludGVsX2Rpc3BsYXlfcG93ZXJfc2V0X3RhcmdldF9kY19zdGF0ZShp
OTE1LCB2Ymxhbmtfd2FfbnVtX3BpcGVzID8gRENfU1RBVEVfRElTQUJMRSA6DQo+ICAJCQkJCQlE
Q19TVEFURV9FTl9VUFRPX0RDNik7DQo+ICB9DQo+ICANCj4gQEAgLTE0NDcsNyArMTQ0Nyw3IEBA
IGludCBiZHdfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjKQ0KPiAgCWlmIChn
ZW4xMV9kc2lfY29uZmlndXJlX3RlKGNydGMsIHRydWUpKQ0KPiAgCQlyZXR1cm4gMDsNCj4gIA0K
PiAtCWlmIChkaXNwbGF5LT5pcnEudmJsYW5rX2VuYWJsZWQrKyA9PSAwICYmIGNydGMtPmJsb2Nr
X2RjX2Zvcl92YmxhbmspDQo+ICsJaWYgKGRpc3BsYXktPmlycS52Ymxhbmtfd2FfbnVtX3BpcGVz
KysgPT0gMCAmJiBjcnRjLT5ibG9ja19kY19mb3JfdmJsYW5rKQ0KPiAgCQlzY2hlZHVsZV93b3Jr
KCZkaXNwbGF5LT5pcnEudmJsYW5rX2RjX3dvcmspOw0KPiAgDQo+ICAJc3Bpbl9sb2NrX2lycXNh
dmUoJmRldl9wcml2LT5pcnFfbG9jaywgaXJxZmxhZ3MpOw0KPiBAQCAtMTQ3OCw3ICsxNDc4LDcg
QEAgdm9pZCBiZHdfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRjICpfY3J0YykNCj4gIAli
ZHdfZGlzYWJsZV9waXBlX2lycShkZXZfcHJpdiwgcGlwZSwgR0VOOF9QSVBFX1ZCTEFOSyk7DQo+
ICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBpcnFmbGFncyk7
DQo+ICANCj4gLQlpZiAoLS1kaXNwbGF5LT5pcnEudmJsYW5rX2VuYWJsZWQgPT0gMCAmJiBjcnRj
LT5ibG9ja19kY19mb3JfdmJsYW5rKQ0KPiArCWlmICgtLWRpc3BsYXktPmlycS52Ymxhbmtfd2Ff
bnVtX3BpcGVzID09IDAgJiYgY3J0Yy0+YmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gIAkJc2NoZWR1
bGVfd29yaygmZGlzcGxheS0+aXJxLnZibGFua19kY193b3JrKTsNCj4gIH0NCj4gIA0KPiAtLSAN
Cj4gMi4zNC4xDQo+IA0KPiANCg==
