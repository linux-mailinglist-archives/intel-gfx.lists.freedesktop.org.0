Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F00A0B50B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 12:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8220110E645;
	Mon, 13 Jan 2025 11:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1Gn8dSK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4423310E645;
 Mon, 13 Jan 2025 11:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736766301; x=1768302301;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XlvGcYrvHJe2p0ey66M9zIxDMrGqaE8oeRKKm3+o+1A=;
 b=P1Gn8dSKKWun7gB37bjVjMkgjJXI/M/7P2KzgeJOGCMtmlV1E/OG1bxS
 3c4ckrv3UkO91n/+PbnOpss/vQyVYnDWc6GDGjdeS6C0p+NVDnV+P9C2D
 cjywFMG9DPLJONHxnOyqJTGaLqCDbgbk/EjmYcnIE3J1lNRp02/DRarYg
 b8f31xuNhYLTJuQqszv4HFlrAwfcz6zVNbdQSKj8LDMqrPaS+Bo39QsJO
 6Bh0IR8WK40FO549b7+AEJU3XY8K3/OSnllPo4MZJJSibk0gml/IKWaYv
 /qO9e4vQbB/WEnebanG1D2hCOICSLneaZm/u2IAAqWounbbTYx8CSfNXO A==;
X-CSE-ConnectionGUID: SzHQQiXPSyi+CDRoThOp8g==
X-CSE-MsgGUID: fS04mVhDSKqbK4N6PLdCHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="37251475"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37251475"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 03:05:01 -0800
X-CSE-ConnectionGUID: 88Xj+C24Tq2OCTeuTWXdtQ==
X-CSE-MsgGUID: kf0Ncep/TSavqzufedrtUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104254279"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 03:05:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 03:04:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 03:04:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 03:04:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mb0+06fb8KrXmXmyMq0vsT6DS0RcRjckOemDa6CxG0LsQrfcy+jwe7y+TdhyWKoubdzYnojX3q7fHXYy2mjj20R5QnpTnF3jGIbbUhvjoKxQSa/QwgWVa2M8F9EPHikb2Pu8+FfeTJ3diGomrsF61v/7ewT3oJF0SozptFfGtOWxwk6Uv1gPTsNqWvNgkwSbo+9Ignb3Vz1DQNkxUQZ9P8TB/voF19nFVWHtKD0xGFnMl0nHJxrEfRZseUvf3uvTd/vmidcm8bCpmF5tSi7+SBZUWrEeUd0aUvVx53MxpsEzXTn9VQWLJQA6qhegES9qz56NmG1JJnaGS9U3r7NPIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlvGcYrvHJe2p0ey66M9zIxDMrGqaE8oeRKKm3+o+1A=;
 b=VgTmp0cmfC7G6QBWowQnobQFKXAbF4uNnRYk+lxlOofDxtDFhLl/W0d6TcjzTfSX94EIwz8U0nOH0Kbe0LAg8lD+Y7GBDzBnOjgMaiWHh3/y7cx/LCuETxnVQc4drPc2j1k+VRzJ9P4ABDnU0ahQjofcfA5XuZ2141NuQguJEw67UKZKY3xCseVPO0nVTrwyss1+7NYqhD+Pe2k1PxXY1M1EDOZ8UpKB5R5vOarW0gfXJCbh/C78iAlFaO5eQzcnu4Larhyr96XjKuaCHSXy2HdUGXvlkBmh5P8P/Bl0IcoPBVLXAZEsZeCyIyKeTz10vcOQpyDj0zTUzFDaTE5lhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 11:04:56 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%7]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 11:04:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/psr: Add new function for writing sink panel
 replay enable bit
Thread-Topic: [PATCH 1/4] drm/i915/psr: Add new function for writing sink
 panel replay enable bit
Thread-Index: AQHbYoJMk9XL7ojbrkCfiizoPFOivbMUieKQ
Date: Mon, 13 Jan 2025 11:04:55 +0000
Message-ID: <MW4PR11MB70547D6C90DF134AD2B7FAD7EF1F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
 <20250109103532.2093356-2-jouni.hogander@intel.com>
In-Reply-To: <20250109103532.2093356-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB8285:EE_
x-ms-office365-filtering-correlation-id: 2eb8b3d9-f162-4f0d-f17d-08dd33c21cd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VXNWQ2NVMTBkb2NiOHlORHM1a0ZVN3Q1TG5BTlJncWlvU0RPRDRXcXFNQVZn?=
 =?utf-8?B?cmRRbUh2bkpvNGFFSnpwOXVoeUp6K3dNWVpCaFVMZ1JlVThqejdqLy9DQ042?=
 =?utf-8?B?V3lTanNkTEp2RS8rU0NFdWJxRW50NHVhMkhjYWJoKy9Cd3lON0JmSzdRaXhI?=
 =?utf-8?B?bmpxWkJRWEFRVTNNbW5qVWRPWk9CZUc0eUtmazRJWWNtdTk0aldvY0s5NXNF?=
 =?utf-8?B?eTdaYXVLMEdWSDl5MjJ3Y1BSUFV2ZVlMR1lIWTlzV3R5SmZ0YXAyVWc4R2t1?=
 =?utf-8?B?VEtIdzEvbTFKcXR2ckJwQlkwQkFyQ0tGcXZaZER4UjZ0TElKQnVBL0YyK25Z?=
 =?utf-8?B?QmxUNllHQ0FuTDI5Q2o5by9jMFBoVzViSTd6eGFvTnRMMzc3dVN3TXBxWUZm?=
 =?utf-8?B?a0NHazIraTdETm95MzV6dWtjeUhFS1o2eWN1Y2owMC9MUVNSS1U1bjVSbkVm?=
 =?utf-8?B?aGxST2lyZFlGdFpHYllDMTFCa29WTnBSTEJmOHEvMHR5Y2R1Slk2NkRodjYw?=
 =?utf-8?B?YTlkQldSRG5ZMWQxNGlhaUVCYnh5SEpoQUVtMjEydllnZlRjSHh0c0ZraXJ2?=
 =?utf-8?B?OWc4dEQ4MmVxamMzUzY5Ky8xbFlKbGs5V084Vm1KS1NuQUordGp1djdPTTRP?=
 =?utf-8?B?Rlg3UUc1OExBTzV4WjlYR1VvWlYrNWxxRTl5Q0lkTDQ3NTBNS0VYcnBORldW?=
 =?utf-8?B?RDdYWGlMVWxFZG14VVNLUi9xSTdEQ2FGMmtUNkE0Qy9EWitBakN2Q0dMU2pI?=
 =?utf-8?B?dEczcGlxMGJuSHNWWFpnZTVBVFpKUXNYalA3Ly9tRGNrSjBVQ29YbndGeGFt?=
 =?utf-8?B?c1dxQ3lLV2tQWHZOQjQwQ1ZaUXlVRjlwTGdtaXpYRXFURlpob0dUODcyZytD?=
 =?utf-8?B?WUU3eFdGMkJObVpHOWVXMjZNWFp6UEtLL3E4VVVnR1Blb1AvWHlJdEREeHIr?=
 =?utf-8?B?dUF5UzhtTGp4c3RhZGdkR3hYNmwxZ3ZOTGZFMWk0Rm1CRlFOUXFzRjhMdXR6?=
 =?utf-8?B?M2hiSXFEd2hsbytYUGRuakZ4eDdVOTRPYmtXd0hYQUp6a1N2bnpMQkVnSThm?=
 =?utf-8?B?Qk1QRGJjMytTVTJaTy8wbG9MNFJLdW9ETUZ1YTIrdERoejlzRmljSnVCNjBv?=
 =?utf-8?B?cUFUb0EvcVFEQzU3RVVSd1c4YVZnNU16akFUTVFudFllUndOV0RLVkNwZ2VI?=
 =?utf-8?B?UldKWE4yQXBpRzVXQ3BZekdWVmlaU3lLU1ROMm8rUFJidks4aWVNeWIvcVRO?=
 =?utf-8?B?YmdycHYwbE1MT0pUanhkMThxaCs3TUdZQlBmeElHVUF3bCtvODRSQWszOFZ4?=
 =?utf-8?B?VkVTZTBKcmRPTXF6R0YrZ00rUlFCYUVkcENQbllSbldqREFTeFRPdWlmVWIr?=
 =?utf-8?B?Q3pPUm9nSlNpN0pnTHVQcmFhQ3lkMVloOFF3ZkdLWlVyemJaSlBibHhSUXJH?=
 =?utf-8?B?WktPYWdEamtlQ0UrMDlsdnlRVmJsb1R0azVGQlZ5VWlHdURDdWpxQ01USi90?=
 =?utf-8?B?TDZSYjBiZG1YN3BBTzl6OFBXNmFpUmU3R0dUak1vSzRRR1BJZ0NKTHV5RC9D?=
 =?utf-8?B?ZmVmVW9yalE2UGN5RUFNakY5aVZSb3MxUDQvQ3N6cWVTTGRxa0NGK2VORTVh?=
 =?utf-8?B?OTlMRGJ0S1c4Q3BXQk41RVp3Y0RmWHh3cUJnb2xhQXFFa09lUWFsNmxHNHhz?=
 =?utf-8?B?ZUE5TllXdHZjTTZuZVh0cGdGaFFGOGZjeGlQWUFwRmVhM0NDMmo4c0FnWlAx?=
 =?utf-8?B?Z0VIeWg3SW0zdUlkTXZEMytiNGNrcEpQaXRXTUllUHFRTDVHZ1gzNklBa01Z?=
 =?utf-8?B?a044aVhNWUU0YXRRZ3hCdmErUXBWNmpzRVhncWppMG1CZEtEbUNqUUo5c0ZO?=
 =?utf-8?B?VHZZMEVaQkU3aTRENHF1TUg1eVprMzZpdm1ic3ZYeWFOVThSRUNtbjJYZWF2?=
 =?utf-8?Q?Ung2mF1n+jXDsYTG2wAGOgHme+fxL2Kp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFhUVk0vOFZMdHBTa05VMDhxaHBlSFlpSkU5aERjc3g2U0p4Y3FsTVVoVGhW?=
 =?utf-8?B?SnB3Tm0xb09hS2svRXJQM05kbWZPenFEN0dOVlpJMWp4U1FNVkphU0Vrc1Ry?=
 =?utf-8?B?SXo5bWdPOTkyMlpRelRHZEVyUng5aEJHNGpZMWZVTGxnbkVMeU5Tc3ZQck1v?=
 =?utf-8?B?dVFUYkExeFBFN2xuNmxON3p0dXQ5SDRENXlnT0xCTE1JQXdGcGdCdlZLdEY0?=
 =?utf-8?B?Z3I1OTJyL3FJWVhJUllnYm5ScW8xOGFFaklCVGFaRGIxdTlqRUZOa3ZxVUVu?=
 =?utf-8?B?OHBCWkZCSFBzSG5wU3h4bW9LMVFTb0x0NnQ2YWFZaG0rVEdQMlRpcncrMW05?=
 =?utf-8?B?MjhJeFZtNHZvTlhrR25ZSzRZaHArcUR4cTV2RENTajdjd05vaGhYaDZkUmh6?=
 =?utf-8?B?cnIzbFc0aGdTNmxqckRFaUZyNk0wMkpUTWN5a2kwMHZzeExWMURpeUViWkdK?=
 =?utf-8?B?ZkQzd282NGk0Z0hFaVRuN2c0NFgxdzFvczRDS293Z3BqbTlpUmNaR3FFVmhx?=
 =?utf-8?B?U3FJSE5UbFNnQmJzbkh2ZmZjd20vRjQ3enpoUllTVFZXeGxMME8zdG5ybVFR?=
 =?utf-8?B?UFhNSktUcHMzMXBReER6S2pRMEdZMXFDSWY1bFVTZXp2cGFrMnpISjcwRExu?=
 =?utf-8?B?ZVh0ZWdnMmd2eDJwRmRNcjF2ajQ0TjlmS2c3UjRscHY2NTlEcEExTjBVU0xy?=
 =?utf-8?B?QU9vaWgzRHpzMVcwQnVtbXV0RTJoeENyWlRHRk81OGxqM0ozcHQydFo3alIy?=
 =?utf-8?B?U3VoZ0J3R2NvcXJrdXU3ajQ4SHA4UlJkaVdxdmx5b3Y2cUhkclhtaGgxMjlY?=
 =?utf-8?B?NXU5cUNEWCt2RWN3ZWRGVEtSMlN6cmZuR1ZTSWdwUnRHM1NycVpJL1phSmNZ?=
 =?utf-8?B?L0NUcDBwbkE3SDBHWDVjRzAwazV5Tng3SjBBRzRieHNLNTZpRFF5YW9qQndB?=
 =?utf-8?B?ZVpCWnVFSUNtUExlQWxvMFJhWEZlYk1vWTlWa084MlNSOGxIUHArVW4wTW03?=
 =?utf-8?B?REtaVjczVjN6NWxjRzVGRDgrKzc0LzRTWUxNOXByR1dEdGhVTFQ4MDN1UVlp?=
 =?utf-8?B?SGtMaGdTM0JGdWJBOGMvTkJTMTNZa2pUTTdHN2c3TDQ2VXpBb243MW9SWVl2?=
 =?utf-8?B?VDNxbXFRSktkTHJienFTcGZaOUpKWncxa0lCN3lzTExHbHVsenJ6Z2JLeStC?=
 =?utf-8?B?eGo0VTB0bG4wcENMd1RGejM3RHpRMkNMZEUyMDlNcFRqcHFBTDhDbGJ2bWRm?=
 =?utf-8?B?VHZSVXJpOE9UcnVxS2R2UExNc3JjWFU4d1R1SGNOdnFwb2FhMzVKRzBub3ZD?=
 =?utf-8?B?WklaWGsxQ3RSNXNxMXg3b3haeWtGT3pURVBrTjRoWi9YUnpVOHJpaGlHL1la?=
 =?utf-8?B?NVUxZ2hMekFyZ3NFWUtMbW9RbkpEeDgzRk9lOWROWFgrTTd4OVRaSzBnM21D?=
 =?utf-8?B?Z09XVjJ4UWhsNnJYVlNlR3ZKcStXeVdJMXNobzdMQWo5QktrUmprT0dUMlox?=
 =?utf-8?B?V0JOTndaOHNJT2VmSWNnOXR5Q2xJQUNMVDEvVE45a3Q5aXl3Y004NFphNWNZ?=
 =?utf-8?B?V2RTUnJ6RkY5WVZTdXVKb0JuUDM2V2FuQjg0R3VmcDc3eVVSTHExaUh5V0kw?=
 =?utf-8?B?NFBwZjQ1dEw2QmQycFJ3RzZOQi9zbVJ3dXVEWEtJYjRINENEajVsNWhraUtn?=
 =?utf-8?B?QjUvSytkOVl3RWY1ZDB6WVJUSFprOTYzRXA2L0xvTVVMT2FVL2w0elNlR3hJ?=
 =?utf-8?B?UmtCaGh5aWdxR1c2M2N2cWxuTEJySHM2QUhGVWJJQW1vbTl0Q1YyUGRhVUpH?=
 =?utf-8?B?S3JVRHhiNDN4NnVBYkRnaUlnQjVqSDVvYkxYWFlHbXcwdnpKQWJPUDVFWGxm?=
 =?utf-8?B?dDREU3kvSzhKWktiTEQ3RlliSmZubzBDVTh3NWtwOGs0MUorL29meGJhczM4?=
 =?utf-8?B?ODE5cDNjT0E5NkV2V0FFMVVOajFwNjJOUjdsM29iNnFKbU0rWXl2MGlwNnVP?=
 =?utf-8?B?Q1F4dEpvZ2Y0SlR0R3hTU3d3ZE1wTzAxNXNLL2tLRkhaalViMFpSMm81VmY2?=
 =?utf-8?B?My9abW9jN0laeWRjaWN4dXhDdHZoS21pdDZ5SUFubTJPcmZiRVBJc1ZuZHlF?=
 =?utf-8?Q?0d7BPdLDKifzdqDIA2T47QXYk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb8b3d9-f162-4f0d-f17d-08dd33c21cd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 11:04:55.6979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mYd4g/SWonBsyHNPlr8c8/DJTBv31AS1ToSFcIxQ/pdsml2cDCbvfyz1w9QVl0iMDxgcX2mD/ZR0eW15m6Hx4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBUaHVyc2RheSwgOSBKYW51YXJ5IDIwMjUgMTIuMzUNCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSCAxLzRdIGRybS9pOTE1L3BzcjogQWRkIG5ldyBmdW5jdGlvbiBmb3Ig
d3JpdGluZyBzaW5rIHBhbmVsIHJlcGxheQ0KPiBlbmFibGUgYml0DQo+IA0KPiBBY2NvcmRpbmcg
dG8gRFAvZURQIHNwZWNpZmljYXRpb24gb25seSBEUF9QQU5FTF9SRVBMQVlfRU5BQkxFIGhhcyB0
byBiZSBzZXQNCj4gcHJpb3IgbGluayB0cmFpbmluZy4gRm9yIHRoaXMgcHVycG9zZSBhZGQgYSBu
ZXcgZnVuY3Rpb24gd2hpY2ggc2V0cyB0aGlzIGJpdCBvbiBzaW5rDQo+IHNpZGUgaWYgUGFuZWwg
UmVwbGF5IGlzIHN1cHBvcnRlZCBieSB0aGUgc2luayBhbmQgdGhlIHNvdXJjZS4NCj4gDQoNClJl
dmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsrKysr
KysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCB8IDEgKw0KPiAg
MiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA2NGMwMGE4YTY4NTAuLmU1OTJiYzAx
YzdmYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IEBAIC04MjcsNiArODI3LDEzIEBAIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1
eCwgRFBfU0VUX1BPV0VSLA0KPiBEUF9TRVRfUE9XRVJfRDApOyAgfQ0KPiANCj4gK3ZvaWQgaW50
ZWxfcHNyX3BhbmVsX3JlcGxheV9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KSB7DQo+ICsJaWYgKENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQ0KPiArCQlkcm1fZHBfZHBj
ZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIFBBTkVMX1JFUExBWV9DT05GSUcsDQo+ICsJCQkJICAg
RFBfUEFORUxfUkVQTEFZX0VOQUJMRSk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB1MzIgaW50ZWxf
cHNyMV9nZXRfdHBfdGltZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7IGRp
ZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCA5NTZi
ZTI2M2MwOWUuLjNiMjY0M2I4M2UwNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oDQo+IEBAIC0zMCw2ICszMCw3IEBAIGJvb2wgaW50ZWxfcHNyX25lZWRz
X2F1eF9pb19wb3dlcihzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwgIHZvaWQgaW50
ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsgIHZvaWQNCj4gaW50
ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCQkgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICt2b2lkIGludGVs
X3Bzcl9wYW5lbF9yZXBsYXlfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7
DQo+ICB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCQkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gIHZvaWQg
aW50ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiAtLQ0KPiAyLjM0LjENCg0K
