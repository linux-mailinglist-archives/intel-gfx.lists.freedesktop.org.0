Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6E3AE4DD5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 22:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B9110E453;
	Mon, 23 Jun 2025 20:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IllHw+gs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440AF10E452;
 Mon, 23 Jun 2025 20:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750709134; x=1782245134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lUTf2ZvtrVQ6+ik5f3NTPwxS2pynp5bFirAM68512FM=;
 b=IllHw+gsOBRIetqcvdZokRF1iJOTFzsFBAfhGTuoNmBhAZAHHoDWMFq+
 hABam/b0l2hu4SrHBO2H3FxS38AYmGsNhi5I4KIKpZWXayIxBcpGS0B8N
 Yev8dqk6eHbruWaSBLF0BXwRPSGl5bIYtGVLjd2AoWIRvpkeEkDMmHGOt
 6A4j8/EBg9kBpPq9Ih2sA5JdtBZqXRrzk1d2HQ7y4NgBaPqCbYZQlpdUa
 0VqGQorAp/JNd079OAOhpRcG2zOt3R6YJHhJ2uwLgKaB8m+5Uz6b4Mk63
 xM2ShKlj/6xaYkzBz4sS2LiRCobtSybPR3TTYupMXxVEclcsdEVpJG8wb w==;
X-CSE-ConnectionGUID: zVSRJG44TkO73PqGXbZrzA==
X-CSE-MsgGUID: Aytps6LBTjGba2uQ8HbU0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="63625945"
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="63625945"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 13:05:34 -0700
X-CSE-ConnectionGUID: RaB541L1QcGukYthIWN7Aw==
X-CSE-MsgGUID: 5BmSZaBJQsWIGQMhLtXSUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="152000107"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 13:05:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 13:05:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 13:05:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 13:05:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pJ9J96GxwFt6oXBH/7Ua2KYTUg/1/PiHz8pml3xWkXYXctVGMW9cM2ouZvyG9seCb6KSOAGu2DLvT6fUuPunaiII1DdPVYh0cjxIGua7DJ0TZvk0KIWRQy0w9LpDqw6713hZLFRyKLLvI4bX4xcH4JHGanXfWoz8m53tpaOK2US12/Nug+3rR0NxHOAAo0ZklGhOtOYipoZ7+BlrcxSSxANK4N1yILgvv2ZM/vI1HpDBL/b4A1O+H/KwoeR6YquUiWsJ5Mmdmlun86N1SXrOCGqB+xe/MY5Ce40o/WCsSYgPwDkcoqbnJ115JefKLfQ6AjbRG6At5Uea5KYxT5ht+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lUTf2ZvtrVQ6+ik5f3NTPwxS2pynp5bFirAM68512FM=;
 b=QpDusxkP+w+36GF7GJOtTpulmR0heIDVgpbUU52+IuU694IZVHBuF0RsKZz3TfklMHpCymxZvqKa++RrqINU96+YMoN8zTV2A90PlctY/yHGxdudDUlYhoCwdWb1zJxfBJjuEgRJoDYEEzn0rzsCLyeBpnkyknwLDsnrx42k0lnnLmHV24mMLCBp7jyRAkVVYntYxszfV6NJl7Kdxgq4bZA2Ud4xj+uEjKqzD6cjccMKTQJFoxo/DnT69uFRkhPBY8+SQ/5JUxFymLXfovFskj6UBflX8lNOD97KAyn+jqQNTN8baW9ZisO5qg1iTMJM1BA0onYVt2i39gMGrwcS5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW5PR11MB5762.namprd11.prod.outlook.com (2603:10b6:303:196::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Mon, 23 Jun
 2025 20:05:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 20:05:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 17/21] drm/i915/flipq: Implement Wa_18034343758
Thread-Topic: [PATCH v4 17/21] drm/i915/flipq: Implement Wa_18034343758
Thread-Index: AQHb2Uh6jrocWZlCjUaBLi/39bc0nLQRQa5w
Date: Mon, 23 Jun 2025 20:05:29 +0000
Message-ID: <DM4PR11MB636022FC299E01CD6BC02DF3F479A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-18-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-18-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW5PR11MB5762:EE_
x-ms-office365-filtering-correlation-id: 17455309-2f0a-4a3b-0e66-08ddb2914db1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aEEyZFdXZkFuNm9NT1VWYms3ckpUYml3aDBWbTJuRDFwbFZGVnpRNzN2NHRz?=
 =?utf-8?B?Y1Y0RzIzYWhDUDdvUy94MEdWNml4MDUrNlo4RG1CUXgzVzZjRmNzUXozdUdj?=
 =?utf-8?B?YlZUaC82bjF0TEVYQmk5bDNHdy9FZDE1c3pJR1hnVkxsWTJjVUhPRkhsbXNW?=
 =?utf-8?B?SXhmMHZwMW5NWWtCQk1sZnE5UTcxNWtieWdDeEZPRTBVZm1SOTkxQ0g0SlpF?=
 =?utf-8?B?MU1pMk5uQ0VRd1hlQlp5S1hWYjNGcituTXJuQlRKa2RUb1NNTEJoK3MwbWpj?=
 =?utf-8?B?TitiOFBwaUlsblVoeGw5NXkvYlpFbUVwVTVJR2I2bXpNeDBpZzFlcCtXRmFz?=
 =?utf-8?B?SUt2R0U0WGdhQVN5Ym95Q2xEV2tNZGxCK3hyQUtIWVpTcysxa1B0MnZ4MXBv?=
 =?utf-8?B?bkJVNjRIZExiQWZWSnVNY3U4ZHcwTVNsMEVtWnRkVWJ0VU5SNGhPZTdoeVNi?=
 =?utf-8?B?SzF4cVdUc1ZvZVBPanY2Vm8yTXI4NTR5OUZiUDVtZkFoQldmYUQrTnlyVUtM?=
 =?utf-8?B?ZG1iS1g5RFk2ekcwbnQ0ZEZXQUpINGkvL2dwM0lBa1JHWlNiZU05MUZDeWJL?=
 =?utf-8?B?RUF4dVNWWWdtMk1GaFUxdlBSRmxMSU9CRDFZMks3Y3pOaUdYQ2xySUErTEZE?=
 =?utf-8?B?aDV0OWdzSm95OTBlVkxtaCtVc3RYZUxGZXpHOFZZZGQ4ZUdrajZIWnh2Y0tK?=
 =?utf-8?B?aXNURGl4elQ2SmhkdzArS1YzV0ZsUFgwcUZQdEVlWFNOZTJZaUZrTlBmSlpL?=
 =?utf-8?B?MVVkWiswUVE0R1hBcHN6Rm02WVBabUZWVmlHNzZOZ3ZlNGFKNUhQYkNCNUZX?=
 =?utf-8?B?Lys4Y1BWM0oydDU0SXA4M2hnRXorNEs4eDRQS1FVbFNBMDYyKzV2QlFSSXYy?=
 =?utf-8?B?TFAyR3FrRXVsRzQwS0pYZ2RFeDJiUGs5eUo2RUhpZzVyQzF3UUEzMWVZL1VG?=
 =?utf-8?B?QzJ5cFZ6VnpEUG1ZWmNQSXd2MWovbkZHK2I4WFF0RWNwRzlqOHNtM0hVQjFF?=
 =?utf-8?B?bjRuUTc5NVRNbDczVm1lSm55ajd3dmgrRmlTcjZTWkV4cUR6RXMxMy9OTWtK?=
 =?utf-8?B?VmthVGRCM0ZVK1B1dml1bGlja2tyd21VYmFFcXplYjZVOGQ3VmZHSmt2eHRD?=
 =?utf-8?B?c3B3cU02N1dYc0ZkbkpkTndHTEx0d0Mvb1M4MFVZeGdLQnBTaGZyYXltR3Fq?=
 =?utf-8?B?cjNOeHd0dFoyQlE4T0I3b1dzMWxqR21ncWxUVFp0OVY2TkJraWIrZ0l3bWVF?=
 =?utf-8?B?MHdKVHlmM094U2JGZ2hMQ2FMRFBLMHpnQ2VVTHdhR1FibGRzUGY2WGdPeWY0?=
 =?utf-8?B?dUhBTG1GRlV5Z1R6UW9yWHdEMGR5dEU5N1c3YVNmcVlyRysvNFJJNGR0OGZZ?=
 =?utf-8?B?c082Mjh5Z0kyWE5weUdrTkh5ZlE3UmE2Z2orMDUwZ2pCbDB1OGZHWUcrd0JV?=
 =?utf-8?B?eW5lbUp0V3l2L3RTYU90bGFMTkZJaG5LRjBlWFloYTUrbHFSbkxHVWd6aU5k?=
 =?utf-8?B?NjQxNVdZTDV0d3Jnb2ZuUWtkaDhab25mL0duVGp3dzlrVzd6UFdITGlib3Ix?=
 =?utf-8?B?Z3owdXE0RVJGSGJ2OEJpdTExb21pbVZTVDRLYURXK2JreDBUb0VRRmNJY2hD?=
 =?utf-8?B?Y21SdUlMSHdIVTA1OVB2TVViN2RPcTUyL0RVMmFhNVl5dlRuaVR4bkx3cTF5?=
 =?utf-8?B?aDhIdnFCcDM1NFA4azBqNHp1WTM0N1lFcVpHUlNhcXZEZE1JTlN4eFlVbHdP?=
 =?utf-8?B?cXlGWHZCeldGbzU4SU1zRGpncmJPTlFieEk2R2pNc2lmMEVPUHZCUHkxSHBY?=
 =?utf-8?B?NjVGd3dpRnRzMWREV21keXZjdkg3akllUHhNd0pkMnhXVjdUblgxeHBpa2h1?=
 =?utf-8?B?bWlrM21IRFdjeEw5ejE2UTNUa2swOE1pUVhsUlBBbVJZS0dhWndoNlJGNVJZ?=
 =?utf-8?B?Q211WjJaYlgrSnhKVExKbDBtRkRwQXNrc3lKUEVBTkh5Z05RUWowNU0xVzVP?=
 =?utf-8?B?aW5wVUswQ3pBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yjh2cjJJaHZNQ3lBQ3dUM0twV3JFYXlPbXlDQUFGU3FNd21RbHVjMmNkejBZ?=
 =?utf-8?B?aUdORTlZMXduUlhqdlByUXBwWUdxV2pQMUowZk1ZRlJUc2FyVGxiVUMrWTlm?=
 =?utf-8?B?UlgwTGlUTllHdlZtTldwNyswb3FWNnhDcisrckRBS3ZiUU9oMVhRbkw2SW12?=
 =?utf-8?B?V1RhRzhOQXF3aC9lRlVYbDhlWmxhRzVuTHNYRVEwMldEbjVJNjBtYXdEUjEz?=
 =?utf-8?B?UE90U01LUjV4L2YrZkp5eGpseTNQem1NSzE0S0l0bHBvR0pibzV1djlZSlJj?=
 =?utf-8?B?ODVVSldwZmdmaytrUmZnTUV1VCtmcGpQMUI3MWZ6eHRkUFhSc29hSFowWXZp?=
 =?utf-8?B?L2ZvZndrTHFKeS9GL29qbGwwTXhjUzNEY25WalpmbkNOUHcrbk5OTk92M1pE?=
 =?utf-8?B?dDR0YkVyZThUU1RJQWVoMjBFVDNDNG42OFVqckYydHVXM2VoU2UxSUVReDJY?=
 =?utf-8?B?WnFERGxzV3ZQUU9nTEx0T3grMDJTSC94c2l3eDdBZllXVTgzZHF6NzVISWFn?=
 =?utf-8?B?anVDRHoxcGpQY1dGMEtyU2JwWWhFN0RtL3NBSGNFWkJ0bEFsUThRaHJ4RnFO?=
 =?utf-8?B?TjR0T2NLM2Rkam1DYUloOFJNN2NzeWNFTUZuMTZhU29vSUJlUHY2RTJBRU9W?=
 =?utf-8?B?VXJycnlKcE90MEora0dDWnhFaGpuMmZtblpIWnpmZEZwZEpCR3kzT3UvWEhk?=
 =?utf-8?B?WnRhTHg3WVJkSC9LR2gyV1hWZ2lqRTh6dGo0d3IrNTNramdnRm9yR1lQdDg5?=
 =?utf-8?B?bCtKa0xxMUFYQy8vc2Q3SWM3L0pjd0ZtcGxlY1NOemZoc2ROdlJBZTBTVzE1?=
 =?utf-8?B?SnIxUkpZQktIYmVsZGp6UzlzdXRqZjdmQ3NtL2NtRXFGMlYxMWFjZm4wR0li?=
 =?utf-8?B?aHNyZmxrUUs1eld1SkcyYUE0M3pWRzVyaUdqRmpva21TQ2F0TFJvWmpuN3Iv?=
 =?utf-8?B?bmQzRllEZFhoZE5rWVVsTE5vbmFtOW9TbTBqZ2dwdzJTMU44cDFCNEJib3di?=
 =?utf-8?B?Y3V1N2JPWHdlMG5RU0lnTE9wWkk0dS9lUTRvdTNoN0pSVmxLWmd0UE80enJS?=
 =?utf-8?B?YXJDV082blNqZ0tpVS9qTDA4T01KRFJONENSYnMwUS9oRW5RWWNQekYwMWE3?=
 =?utf-8?B?SlBBMDdLOXBDVlNGYkduejJyeW05N0NDWkgwbjBTNU5pV0M2cEhTZlhzdGc0?=
 =?utf-8?B?VjBiUnEzNFFJRzdlby9VNGRyMlpCYWxmZUFjT1pHZVQwdVZ2QXNBcGZUWlJU?=
 =?utf-8?B?V3Y4VnllNDhoQkpFUDJZNk4yUG56dW8zTlI1bFZZYlFWZGdvWWlrMUN5dkJH?=
 =?utf-8?B?OWZjbTRWdUt1OUlaYnIvY05MWms3YWZiY0MxUE9NL0x1MlBoYVN1ekN3dXln?=
 =?utf-8?B?YkxtTm5NUXYvS21qSmVNTS9kc3BhNWc5emcwNlZuWGgwMVBDRWJuOVpVbnZX?=
 =?utf-8?B?TlY1d1B0QmFqWHRmSjdZSnZjUDA0ai9TdXJrcWNFUTFFVEZOTGQ5OVUybTlS?=
 =?utf-8?B?QnJoZEgxNVhpbTk3dE41Z0ZEbTJPSC9yQi9IK0IrRC9mZWYvaVZwLzhFbXJm?=
 =?utf-8?B?OUUzQlJ3R2VDTEJNWklFdFZMQ3RvZjVGK1F6c1BQWitjNDc5SnY3TXFGRm81?=
 =?utf-8?B?MEhkcDVTOHZzZis2ZU9QWVFtVXFqSHh0UmtIY0hNb3l3K25xSXk2RkJ4Q09V?=
 =?utf-8?B?R0d2NEpHb3ZSOVpjSDI1b1dMMXJFd2ovU1FhSEtleHlvNkJ3NGR1R0NKbk9M?=
 =?utf-8?B?dXJBU1h5QjNGZXNGb2lnazhhZURSR0NVZWxzVlh0VnFJaEhVU0ZRMitYK3Z4?=
 =?utf-8?B?VG1DOHZEZnVmN1J3WWJrdzF5alVhUlptSWVPT0ZnT3pLUVJHcDg5S29QQjAx?=
 =?utf-8?B?ZVAwUm1aVVAvaHVPNEhhdkY3ZTRObDBuQkNSd0xpS2hGZ041T0VNbXFJdG9n?=
 =?utf-8?B?S1EzWFRKSmRBK1luS2tVRWZZMWNmamlSdEo1WWRuUlRRd1RacWNVdGlMQ2xx?=
 =?utf-8?B?NisvL0x4bEg3QmlIcVlhUkE1WU14VFVHVGwwVVo2UmVGQ3J3TUwzTHZ5c1ZB?=
 =?utf-8?B?L3FFZDhFVzZoLzVBc0wzQi9Hb0QzQ0dKTDNhTmNLTE4vTU4xMTMxdFFHQktN?=
 =?utf-8?Q?cNs/u+xF8b/PyBsnsg1IlTVig?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17455309-2f0a-4a3b-0e66-08ddb2914db1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2025 20:05:29.9505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Eq8o2Ci9fFxbh/mWX5SQqJ2PrVCfpbgYseDQXv9n3Tx8ufaNmFAEy2C0khGcSCfIjpmmSpQyK1O0mlYzBmivg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5762
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMTcvMjFdIGRybS9pOTE1L2ZsaXBxOiBJ
bXBsZW1lbnQgV2FfMTgwMzQzNDM3NTgNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBJbXBsZW1lbnQgdGhlIGRyaXZlciBz
aWRlIG9mIFdhXzE4MDM0MzQzNzU4LCB3aGljaCBpcyBzdXBwb3NlZCB0byBwcmV2ZW50IHRoZQ0K
PiBEU0IgYW5kIERNQyBmcm9tIGFjY2Vzc2luZyByZWdpc3RlcnMgaW4gcGFyYWxsZWwsIGFuZCB0
aHVzIHBvdGVudGlhbGx5IGNvcnJ1cHRpbmcNCj4gdGhlIHJlZ2lzdGVycyBkdWUgdG8gYSBoYXJk
d2FyZSBpc3N1ZSAod2hpY2ggc2hvdWxkIGJlIGZpeGVkIGluIFBUTC1CMCkuDQo+IA0KPiBUaGUg
dy9hIHNlcXVlbmNlIGdvZXMgYXMgZm9sbG93czoNCj4gRE1DIHN0YXJ0cyB0aGUgRFNCDQo+ICB8
ICAgICAgICAgICAgICAgICBcDQo+IERNQyBoYWx0cyBpdHNlbGYgICAgfCBEU0Igd2FpdHMgYSB3
aGlsZSBmb3IgRE1DIHRvIGhhdmUgdGltZSB0byBoYWx0DQo+ICAuICAgICAgICAgICAgICAgICAg
fCBEU0IgZXhlY3V0ZXMgbm9ybWFsbHkNCj4gIC4JCSAgICB8IERTQiB1bmhhbHRzIHRoZSBETUMg
YXQgdGhlIHZlcnkgZW5kDQo+ICAuICAgICAgICAgICAgIAkgICAvDQo+IERNQyByZXN1bWVzIGV4
ZWN1dGlvbg0KPiANCj4gdjI6IFBUTC1CMCsgZmlybXdhcmUgbm8gbG9uZ2VyIGhhcyB0aGUgdy9h
IHNpbmNlIHRoZSBodyBnb3QgZml4ZWQNCj4gdjM6IERvIHRoZSB3L2Egb24gYWxsIFBUTCBmb3Ig
bm93IHNpbmNlIHdlIG9ubHkgaGF2ZSB0aGUgQTAgZmlybXdhcmUNCj4gICAgIGJpbmFyaWVzIHdo
aWNoIGlzc3VlcyB0aGUgaGFsdCBpbnN0cnVjdGlvbnMgdW5jb25kaXRpb25hbGx5DQoNCkNoYW5n
ZXMgTG9vayBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICA4ICsrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jICAgfCAyNyArKysrKysrKysrKysrKysrKysrKw0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5oICAgfCAgMiArKw0KPiAg
MyBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAwNDQ5MmNiOTQ0NmEu
LjRiNjkxMjFlZDliNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gQEAgLTcyMzgsNiArNzIzOCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAl9DQo+IA0KPiAgCWlmIChuZXdfY3J0Y19zdGF0ZS0+dXNlX2ZsaXBxIHx8IG5ld19jcnRj
X3N0YXRlLT51c2VfZHNiKSB7DQo+ICsJCS8qIFdhXzE4MDM0MzQzNzU4ICovDQo+ICsJCWlmIChu
ZXdfY3J0Y19zdGF0ZS0+dXNlX2ZsaXBxKQ0KPiArCQkJaW50ZWxfZmxpcHFfd2FpdF9kbWNfaGFs
dChuZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbW1pdCwNCj4gY3J0Yyk7DQo+ICsNCj4gIAkJaWYgKGlu
dGVsX2NydGNfbmVlZHNfY29sb3JfdXBkYXRlKG5ld19jcnRjX3N0YXRlKSkNCj4gIAkJCWludGVs
X2NvbG9yX2NvbW1pdF9ub2FybShuZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbW1pdCwNCj4gIAkJCQkJ
CSBuZXdfY3J0Y19zdGF0ZSk7DQo+IEBAIC03MjY4LDYgKzcyNzIsMTAgQEAgc3RhdGljIHZvaWQg
aW50ZWxfYXRvbWljX2RzYl9maW5pc2goc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICAJCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSA5KQ0KPiAgCQkJc2tsX2RldGFj
aF9zY2FsZXJzKG5ld19jcnRjX3N0YXRlLT5kc2JfY29tbWl0LA0KPiAgCQkJCQkgICBuZXdfY3J0
Y19zdGF0ZSk7DQo+ICsNCj4gKwkJLyogV2FfMTgwMzQzNDM3NTggKi8NCj4gKwkJaWYgKG5ld19j
cnRjX3N0YXRlLT51c2VfZmxpcHEpDQo+ICsJCQlpbnRlbF9mbGlwcV91bmhhbHRfZG1jKG5ld19j
cnRjX3N0YXRlLT5kc2JfY29tbWl0LA0KPiBjcnRjKTsNCj4gIAl9DQo+IA0KPiAgCWlmIChpbnRl
bF9jb2xvcl91c2VzX2NoYWluZWRfZHNiKG5ld19jcnRjX3N0YXRlKSkNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBpbmRleCAyZjUxMDBjNDcwNTku
LjNhNWExZmRiODc2YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mbGlwcS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmxpcHEuYw0KPiBAQCAtMzg2LDMgKzM4NiwzMCBAQCB2b2lkIGludGVsX2ZsaXBxX2FkZChz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gDQo+ICAJaW50ZWxfZmxpcHFfc3dfZG1jX3dha2Uo
Y3J0Yyk7DQo+ICB9DQo+ICsNCj4gKy8qIFdhXzE4MDM0MzQzNzU4ICovDQo+ICtzdGF0aWMgYm9v
bCBuZWVkX2RtY19oYWx0X3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSB7DQo+ICsJ
LyoNCj4gKwkgKiBGSVhNRSBleGNsdWRlIFBUTC1CMCsgb25jZSB3ZSBoYXZlIGZpcm13YXJlDQo+
ICsJICogZm9yIGl0IHdpdGhvdXQgdGhlIGhhbHQgaW5zdHJ1Y3Rpb25zLg0KPiArCSAqLw0KPiAr
CXJldHVybiBESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCB8fA0KPiArCQlESVNQTEFZX1ZFUihk
aXNwbGF5KSA9PSAzMDsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9mbGlwcV93YWl0X2RtY19o
YWx0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgc3RydWN0IGludGVsX2NydGMNCj4gKypjcnRjKSB7
DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNy
dGMpOw0KPiArDQo+ICsJaWYgKG5lZWRfZG1jX2hhbHRfd2EoZGlzcGxheSkpDQo+ICsJCWludGVs
X2RzYl93YWl0X3VzZWMoZHNiLCAyKTsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9mbGlwcV91
bmhhbHRfZG1jKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgc3RydWN0IGludGVsX2NydGMNCj4gKypj
cnRjKSB7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KGNydGMpOw0KPiArDQo+ICsJaWYgKG5lZWRfZG1jX2hhbHRfd2EoZGlzcGxheSkpDQo+ICsJ
CWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBQSVBFRE1DX0NUTChjcnRjLT5waXBlKSwgMCk7IH0N
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuaA0KPiBpbmRl
eCAxOTVmZjBkZDgzZjUuLjJkNDM4NmExNjE5NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuaA0KPiBAQCAtMjksNSArMjksNyBAQCB2b2lkIGludGVs
X2ZsaXBxX2FkZChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJICAgICBlbnVtIGludGVs
X2RzYl9pZCBkc2JfaWQsDQo+ICAJCSAgICAgc3RydWN0IGludGVsX2RzYiAqZHNiKTsNCj4gIGlu
dCBpbnRlbF9mbGlwcV9leGVjX3RpbWVfdXMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkp
Ow0KPiArdm9pZCBpbnRlbF9mbGlwcV93YWl0X2RtY19oYWx0KHN0cnVjdCBpbnRlbF9kc2IgKmRz
Yiwgc3RydWN0IGludGVsX2NydGMNCj4gKypjcnRjKTsgdm9pZCBpbnRlbF9mbGlwcV91bmhhbHRf
ZG1jKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgc3RydWN0DQo+ICtpbnRlbF9jcnRjICpjcnRjKTsN
Cj4gDQo+ICAjZW5kaWYgLyogX19JTlRFTF9GTElQUV9IX18gKi8NCj4gLS0NCj4gMi40OS4wDQoN
Cg==
