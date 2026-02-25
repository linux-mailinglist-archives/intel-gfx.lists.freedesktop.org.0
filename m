Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK2ZHw+XnmnXWQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 07:30:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E23361925FC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 07:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD44310E6B0;
	Wed, 25 Feb 2026 06:30:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLiYcOGk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00C510E212;
 Wed, 25 Feb 2026 06:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772001035; x=1803537035;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=6wWVqEhl7NlMrTe+Wea+ICjopiwuuk70DpbhNQYKpD8=;
 b=aLiYcOGkFcZZZ8eoGzfmL5vmmC1gFaPRHxHH0Dk9RD7BPQuVZ/Mizgx4
 oNPKyiyBUjkX1m2zDj7Hsse8mtIdqQ+PnZfkOn/FKtYvPi/ggghpppw48
 ONtR9uiCU5uEpAN2OCW7hGYW4xAm408dWTKwVO8pQ4u4zIdA/hHagJ0Tc
 yCZHiFCGiQl2XgrPOzGNV6l98F+r1Wb0XyMtk+Vq48uchn7AKWiL90Qzw
 3rC17JZ5YKuKYQc0x7sRM7Njtzdr/j13ABf5GNzUw2kZQzn+JtFTA6ic9
 l+O9cXgb9EfIKoKOnN/eBZ2+UyDRUkjwhEZMyhETnCN2XNeE8rILeNZdf Q==;
X-CSE-ConnectionGUID: 5LChb3MISMOSgsZhqJqRZQ==
X-CSE-MsgGUID: X9GLjkpRQeCMmnAFPvE/PA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73103062"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73103062"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 22:30:34 -0800
X-CSE-ConnectionGUID: miR7SzJvSfGbyZZ6qb6Dvw==
X-CSE-MsgGUID: 32H2//+rQ4+PYXPNRCtKVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="215245087"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 22:30:34 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 22:30:33 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 22:30:33 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 22:30:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pgmc7ZVn2mKEE41hxJqtDcrdt/xf1A1adl+xZNW8ohpvBF1lXzWh8/44Ttv0/nz3YIHrkE2zlTAKWiOZZwvMfG5LH6LiprF1ET9y1GObCl0UUl6CEz9U017OWBEY3M567r5W1Ok7fpgaipQjebipimlZ1bzScvzh70mxwrxM6tUwMzjFdKr5RHpv3E1CE+tgodX/xBc85gH6FE6vVkHP6kJrZNPyqVmIMDEO7OdYIbXAWkinLBqhFENYMFT21h2n7eC7FtBGTdKN41oOw8pTF5FWjjWprUALmkdRTWG7GV9TIjg+kb3/noL6ZMEkM4aW5soVSIfmAn3nLYQ+IJsaog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6wWVqEhl7NlMrTe+Wea+ICjopiwuuk70DpbhNQYKpD8=;
 b=ulxMMMku1HMiqZa8M110B6vcZiz0KxzUjdXToHhze/kNJsTlp9trz0tQGXdvJtnRLcXWvwWXwjfoj9qY8P07feRfefO5kOEb5gWAH509Lrc+M9c3NU7j9ZUmGa+U/exTeNPr6vGdfYZOOD2pI+iI0XAgMILWxjWs1+SCFTpZDta81q+329jVLb0WUswqjvGG/FAnpBzEPMgA3kSsXAlYt6y2wJr0mVCon7hZ6hPBKIh+x2XpHMbYEobgyRQ5qT/ATNbp4GPgCZXjoHMRM2yOiiNShAFwiuVFOUcstki0K6ZErlKP0LKgJRA0F2IPzKQbZP8dsUBbvj03FcxfpHrU6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6830.namprd11.prod.outlook.com (2603:10b6:510:22e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.16; Wed, 25 Feb 2026 06:30:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 06:30:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/5] drm/i915/psr: Add DSC_SU_PARAMETER_SET_0 registers
 for PSR configuration
Thread-Topic: [PATCH 2/5] drm/i915/psr: Add DSC_SU_PARAMETER_SET_0 registers
 for PSR configuration
Thread-Index: AQHcoaDQFuZeAVHBvk6stvARRqvQxbWS2UWAgAAj8AA=
Date: Wed, 25 Feb 2026 06:30:30 +0000
Message-ID: <9f985404857ad2b679807b6cbb36eea8bc732f59.camel@intel.com>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-3-jouni.hogander@intel.com>
 <af2b2ba4-05b9-4cb6-a01e-25c2132152fe@intel.com>
In-Reply-To: <af2b2ba4-05b9-4cb6-a01e-25c2132152fe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6830:EE_
x-ms-office365-filtering-correlation-id: b1ecde18-c1e2-40f3-8470-08de74375f84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UFVsZEc0Nk1hSXhJcy9UN1lFQmROeHVpYTFsSGh2d3V3Ri9JMUtYRmRZRk1w?=
 =?utf-8?B?bGc4MDFDMGs1ZzNsWW9xYVhidTZ2NEpQWHNKNk9naWxLWkloVzJjeG9JMnVR?=
 =?utf-8?B?OFlPNGk4RmwvTWpqQWVLUHpCeWNyM00zUUw2UnJoZlVrNEJLdjNmWGFpOTV5?=
 =?utf-8?B?YmI5ZUZxNDdwcUY2ZmtpNllWZGRvT2ptUWpXamJCNnZDb1hpL2tLMzUyR3pB?=
 =?utf-8?B?Z0FxWFhtVjNwVXBqVEU5Y2FtVk1qYTY3K3d6YnlHWmVvMGo2b2JGQmNaUXZt?=
 =?utf-8?B?ZUkvb1dRZllpRUF5RUdVbWFZZU5MQTNHSDZSL0IyK3pKaVJXWTZwVk16MlhK?=
 =?utf-8?B?TkZSNjZ4UEJ5U0VHUmlIZktNYzZKNTN6cktUeVlRUlRsY243RHdXZG5hWGxR?=
 =?utf-8?B?SGhLN0xtZEY3Q1BrK21Qemx3ZW5YQlkxNDhROWw0S3lXcXArWkdEeXh3S1NX?=
 =?utf-8?B?bWZ2b3Y3RzdqZWRSUC9hZ2V0V2c3ZUNENEp2cWlWNlJHL0Fma2szS0s4KzFX?=
 =?utf-8?B?ZHZjdE9nOFk2SVk1NVlBaUZxWENRMHpNUFIvOXV1bGVvTkxRNUFGTXpqTFlw?=
 =?utf-8?B?aTdYVnN0MldaR1Q0cjhma3NQRVUxK1lHNCs1N3l2dkVPUXA1UWc2Sms0d01D?=
 =?utf-8?B?VStqdGVnM3VITWtqT1NXWGVPK1I0QnBwSUhPdCtOM05KL2FhaGRnMHJad0d0?=
 =?utf-8?B?VUkyQWMwS2huZldCNHFqSjdQTkI4WnVSVzhUaUFOdFlNVVVOOTV3QnhzVUts?=
 =?utf-8?B?bG1xK2ZLTk5zZmI4Z0VUOTdHbkwyNHFWRlR4VkJBUzdnR3VjbWNzL25PR1Rm?=
 =?utf-8?B?YlpQSDJydVJ6dExvU2p2M0lYQU1Ub0xFTVR1bGZzQ082MnNVS0NXTGdERlky?=
 =?utf-8?B?WEZ2dkVDbUFrOVhoaExLSHlnOG8vWlRPYkl6M1ZSbkRpNHJhSHZUQjB4elF6?=
 =?utf-8?B?R0REZzErODY4blBsUUdLclB1N1M0cUp3RDUxaENBekdpaWJ2Q1NCK25zOTVx?=
 =?utf-8?B?T1FYWFY3aTZZOXlRdUJzekVXb2FQMks5Y3lpU1UxUk0xQnE3akprVzBmWExT?=
 =?utf-8?B?VTFvMit5alB1MVBKc3pNRzFXUmtFajg0djZwQlVPendRNXY0TXFrRVYzVHhP?=
 =?utf-8?B?UGVQMFY2MS9Pd1k2ZjJBVjF5L3E2Q0UyY1EzalRCWlh4eHY5T3UrRGJ4RDVJ?=
 =?utf-8?B?VXExOENrQ3lQOUJXcFZzWXF2dWhsWEdza1JyejhVVGlSUVYxeUozZzBqK3ZL?=
 =?utf-8?B?d1MwZjdYdjdtSTdFUTJCRUIzL0NlRXFyRG5sZmRIUjlWa2ZnYXBReVFKbmdp?=
 =?utf-8?B?UDc0UVhOMVVHN0tOWXNQQ2tMTlF1ODJKTGNYMDZPQ3VKVXl3TnBnMngzOHJm?=
 =?utf-8?B?aUJtbC92ZVBWOHBTN014WXdvQ1dmYUFSVUUyeVpIbjRzN3M5OXVlWDRYQTBk?=
 =?utf-8?B?c084OGlERVE2M3VHQXRYbXRoaE43K2MybVUrOFczRlRBZUFkbklleGlCRTlJ?=
 =?utf-8?B?aE91M05odGJMV1paSUg0Nm9PRC9SbUVPMHYvbXRGdU5HTUljQzMwellka0pI?=
 =?utf-8?B?UDlISWEzUCtaQmx6aWs1R2VYZ1N3b0FXbjRFZ0Qwc3Y0bkJuL285ZjVScEhT?=
 =?utf-8?B?NHZZakNXTFRnSS9WL0RQZ0VzWVUwczM1amxJYUt1dzFkVmF0bFhHMXV6MWd2?=
 =?utf-8?B?UmRNKzFSRU1WdGVQNmxnYlRKdHlEaVoyVE5lMy9XVDFvbDl3azF5ODFFWDdM?=
 =?utf-8?B?U2tIcFRvdGlvYlBLZzIrSDZWeklHRFk5dGtaU2Rya3FZS2xPcVQwNm5YZXNp?=
 =?utf-8?B?ejl2UEZzcStlL0N0RDhKZ1NIeXZoYWV0OFkrb0RRZVVUQ3U4WlZ5TmpPYVkx?=
 =?utf-8?B?ZzY2WGFlZWtDMjd2WU9FS0ptRnBncUt6bE5lK2cwS1o2SzF4aml1RWJRMmNT?=
 =?utf-8?B?MzN1L1FhME0xeVFjT1RxcEZvUU5BZHBnZDBPV0NzUjJsUzk5Uld1U002L0lO?=
 =?utf-8?B?Y3Axd25oM1ZwMXFTVEkyZTM4VG9PQVdQSEs5VHFGa29wYmpmVXZ2dnRDQXhh?=
 =?utf-8?B?MFZpeng4Y2ZOMWJYZyt3bUluQWNTM2JMdHNVRERXYnlQT2xRM2ROLy9jRFY5?=
 =?utf-8?B?cVpnVm4rUzFGK2JJdExKWXJ3WnlhQy8wbnBZbVh2cEpxZXhpcnc4SUppR3cx?=
 =?utf-8?Q?2CUUDFg8gcxNjmBZMykqbrI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2l3QVpWWkZGdFRWT3JwWjNONXRJZEFTb3I0QkRYS2hjQVRmNHNrNGM3UlFv?=
 =?utf-8?B?Nnh6TFB1Q2drQ3ByY1JQMVZLcmlLb1BwUGw5MHY2Mm5uNnpDTDJwNTlGMU1K?=
 =?utf-8?B?b3BFRTBLRHdDTWRWZ1dUM3FObUtPTUdKZnBBOUgxUkVUd3Y1S0QxWVRWQ2Zz?=
 =?utf-8?B?OGlHdGhObklMeFg4UTY2dWJjaTBYVncwbHRzN0lmOGdFbVhjN0F3UlFSTlJK?=
 =?utf-8?B?RVpxWm1xekdjMVBwYk5FaFBiV2tNUmdpbEFNN3IvcGRFaGQ3VXhRK1U1NnZo?=
 =?utf-8?B?ZUFEbFhJVVZ1aFZwRGJMcDE2Sm4rMHdxZUVoR29xNGdjVExyYzJINkZJWkQz?=
 =?utf-8?B?alNNUWl4bWRVY0JHYzZsdUdtTThZeTFiTmJUbzE3VHBJZWVmbUhiZEl2cFdr?=
 =?utf-8?B?WnFyUnU0VDhsRXl0QytqWmhZRXVwZ0pEMUV6clNHMzhybFBqMUlsemdHd2Q1?=
 =?utf-8?B?bHJuTVhNZTRINGxwNEQrMEsyMHN3RklHb3JjWDBzUzd6VDBuSWtKSG9QSWJx?=
 =?utf-8?B?TmQ1QU5nREE3NXAvWCtxSEpINndvTldWWTg0TmNtK1BEMCtjT1d6U0xYQjZk?=
 =?utf-8?B?R2JCZEtuYTdRK1BjUGIwdlZzMElsMlV6S1Y3YUpLd2I1NTdmbFRlMnQ3ZmhX?=
 =?utf-8?B?TTliMWZNOUNDV1NXSFdRQllZVXdZRTNhNDZOUUI0UEs2UnR0UCtkNWd0c2lE?=
 =?utf-8?B?MW5BWklWOVlQZmh3M09JU3VMWUpJTGF6WVBhRHRjZ1paUEZ1NVFmOHlrQ1hK?=
 =?utf-8?B?OTBVNEdOTStydm0wU2phUGNYanhUNGNpVUF3ODJwYjIwcUltVVJsTkd1OTZz?=
 =?utf-8?B?M3d3cHpSdjVGK1J5R1hsQlA1ZldtYys5QnZCWUdwd20rcmxKTHk2Unl5R000?=
 =?utf-8?B?UTlDd054bEp6VWlRazJkTnNydm9EcEI5QmYreGY0N3Y0M3h1dzlVL1Rxd3Ev?=
 =?utf-8?B?MHZ4aGZPazBCa05oSkViaUx6TEk2T2o3dWk2VE9PNWVjUytHcDNtbUFqL1R1?=
 =?utf-8?B?ZU52ZjlKVHZFYWxCSkNzYnZ3OFMzVThwcmxRNHJKNWtnYU1SbTZrZjZ1SHpp?=
 =?utf-8?B?VUZpN1RqZ2xrWk9BV0lGdHlBTGNnVDVWaGNzK1kydHphQ3FrcVI5YjVhVitT?=
 =?utf-8?B?REkwa0svRTUzTU1TRU9XMjNIS3NKOGxOQUZyMEpNTDFiUCswYitIOTVuYnhx?=
 =?utf-8?B?cFdkTlc2OFVwQ2F2dk1SSDJZTUhjeGlmazRsbHY5OGZlYklzMU5VTXFtaDgx?=
 =?utf-8?B?MUxNSm1SaWQ3UVQzZm1IY3VZUUkwVWxZMTFPOXA5ekJEcG94dzYya2NyVTdi?=
 =?utf-8?B?WksrSndYZnJKMUlvVVJleUtPNkRNYk4zWktIakdVZ1M2d3hONCsyNU42c1Z0?=
 =?utf-8?B?U01PL3M3bURPdC9XODA3aXQ5UFJUSWhmZHlTQkNVZGFJVnNLN2dxUDR1NE44?=
 =?utf-8?B?NjlTSGVwS20vWkM2VUpkSmVBL3JUSGp6UDFNSmNuNVFjdHlzK1M0T3ZzNyt2?=
 =?utf-8?B?SEh2NnRHZzU3bGxmc3R5dE9JcndLelc2cW1rRmpKeTNuZStXTExiZ2h5MFF0?=
 =?utf-8?B?aDFGZEovaW81T25SY3dwTTJoWG9sOEhPc1lqUjhja0FWelo5U3BQaUN5Zk1y?=
 =?utf-8?B?dnowT0p6ZUlRL25mR3NiVG1QZTlqcm5xeEpUeGdZNzZRaXZiSzA3SU9NTGox?=
 =?utf-8?B?eTVja2JhYWMwMGExdTZBOEova3pvc09Jam9ZcHFwQjlWbExQblovYzVSNWFS?=
 =?utf-8?B?RloyclQrS3FvZzNOYTRDNkpkeThaZlBhWUZUZlVpL0JmaXgrNkxEbEYxRTNo?=
 =?utf-8?B?TVduZHZqaDBBTVlEWGtZZlF5dm1BcHhlQ1lBTUptRW5GTFFxam5IMGU3TjU3?=
 =?utf-8?B?bklJVXNwLzEyUUpua09JZGJWRnRnVXk0UmlQSHVFRlFUMnRoWHVjVmFKTys5?=
 =?utf-8?B?YkdXa1YzZ3VaeFFuWXZJK1RLcHVsZ2pXekdJR2p6alRvSG5UcURxb3lIeHRw?=
 =?utf-8?B?bHdCb3g3WVBnSytEOXBqUTlBZk9wSnJiSVZKQ1llbDhhZFExcXFoV0dPZkZu?=
 =?utf-8?B?Q3Bnb1VyRDR0L1d0K0p5Qjh0UmRZZllFa2dNaXRpdUNjaCtSWm84a2k5TVI4?=
 =?utf-8?B?RmNLZGRSYnJqakFBb1p1cEpnR2JUYTVIc09JL1g1MmpVWVcwWEROSXJDVy9H?=
 =?utf-8?B?emN0M1VsR2xxUEtpamxpa1p3UEhDS05LMFZjd052Q0YxeEVLTEh0YTlCMVNq?=
 =?utf-8?B?dHBpVkN1M2duVWtPRHh4QmtNSEtqbUVnK1RxQVZjYkVJek1vZEJnd0VPNGht?=
 =?utf-8?B?bDQ1UVNpbWVTRFhzYVJTZTlXeVhxYmxXWTVVa2RmMG44Sk03eW9OWVVvMm9I?=
 =?utf-8?Q?EFmLmGfJbghjNeVX+pLQo3g17UR9Iwq93IG1ddU8ny7aV?=
x-ms-exchange-antispam-messagedata-1: BIGnSXZ16bIS2sptVkU7Cx6BkxvHlzYrMVg=
Content-Type: text/plain; charset="utf-8"
Content-ID: <70579A241F47624FA771FFF11A58479B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1ecde18-c1e2-40f3-8470-08de74375f84
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 06:30:30.7383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 30YyNYilnLKRn2ez2Ov4JbUqtbUH2wJrVaLGpYkv4LEryaPSbXi7u6uAmtQmFkKbI5k+eGnhtTws/q4argtgTW/aLjHkLVsCEvknP7gKS7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6830
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E23361925FC
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAyLTI1IGF0IDA5OjUxICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDIvMTkvMjAyNiA2OjM3IFBNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gQWRkIERTQ19TVV9QQVJBTUVURVJfU0VUXzBfRFNDMCBhbmQgRFNDX1NVX1BBUkFNRVRFUl9T
RVRfMF9EU0MxDQo+ID4gcmVnaXN0ZXINCj4gPiBkZWZpbml0aW9ucyBmb3IgU2VsZWN0aXZlIFVw
ZGF0ZSBFYXJseSBUcmFuc3BvcnQgY29uZmlndXJhdGlvbi4NCj4gPiANCj4gPiBCc3BlYzogNzE3
MDkNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzcl9yZWdzLmggfCAxMiArKysrKysrKysrKysNCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiA+IGluZGV4IDhhZmJmNWEzODMzNS4uM2QxNTIz
ZGVjZThiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyX3JlZ3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyX3JlZ3MuaA0KPiA+IEBAIC0yNjYsNiArMjY2LDE4IEBADQo+ID4gwqAgI2RlZmluZSBf
UElQRV9TUkNTWl9FUkxZX1RQVF9CCTB4NzEwNzQNCj4gPiDCoCAjZGVmaW5lIFBJUEVfU1JDU1pf
RVJMWV9UUFQocGlwZSkJX01NSU9fUElQRSgocGlwZSksDQo+ID4gX1BJUEVfU1JDU1pfRVJMWV9U
UFRfQSwgX1BJUEVfU1JDU1pfRVJMWV9UUFRfQikNCj4gPiDCoCANCj4gPiArI2RlZmluZSBfRFND
X1NVX1BBUkFNRVRFUl9TRVRfMF9EU0MwX0EJCTB4NzgwNjQNCj4gDQo+IA0KPiBJIHVuZGVyc3Rh
bmQgdGhlc2UgYXJlIG5lZWRlZCBmb3IgUFNSIFNVIHJlZ2lvbiwgYnV0IHRoZXNlIHNlZW0gdG8g
DQo+IGJlbG9uZyB0byBEU0MgcmVnaXN0ZXJzIGZpbGUgd2l0aCBvdGhlciBEU0MgcmVnaXN0ZXJz
Lg0KDQpJIGFsc28gY29uc2lkZXJlZCB0byBwbGFjZSBpdCB0aGVyZSBhbmQgZGVjaWRlZCB0aGlz
IHdvdWxkIGJlIG1vcmUNCmNsZWFyIGFzIEVhcmx5IFRyYW5zcG9ydCBzcGVjaWZpYyBhbmQgd3Jp
dHRlbiBvbmx5IGluIGludGVsX3Bzci5jLg0KUElQRV9TUkNTWl9FUkxZX1RQVCBpcyBoZXJlIGFz
IHdlbGwuIFlvdSBjYW4ndCBldmVuIGZpbmQgZGVmaW5pdGlvbiBpbg0KQnNlYyBEU0MgZG9jdW1l
bnRhdGlvbiAoc2VlIEJzcGVjIDY4OTEyKSBXZSBjYW4gY29uc2lkZXIgbW92aW5nIHRoZXNlDQps
YXRlciAoUElQRV9TUkNTWl9FUkxZX1RQVCBhbmQgRFNDX1NVX1BBUkFNRVRFUl9TRV8wKSBhdCBv
bmNlIGFuZCBtb3ZlDQpjb25maWd1cmF0aW9uIG9mIHRoZW0gZnJvbSBpbnRlbF9wc3IuYy4gVGhv
dWdodCBJJ20gbm90IHN1cmUgaWYgd2Ugd2FudA0KdG9kbyB0aGF0LiBXaGF0IGRvIHlvdSB0aGlu
az8NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBB
bmtpdA0KPiANCj4gPiArI2RlZmluZSBfRFNDX1NVX1BBUkFNRVRFUl9TRVRfMF9EU0MwX0IJCTB4
NzgyNjQNCj4gPiArI2RlZmluZSBEU0NfU1VfUEFSQU1FVEVSX1NFVF8wX0RTQzAocGlwZSkJX01N
SU9fUElQRSgocGlwZSksDQo+ID4gX0RTQ19TVV9QQVJBTUVURVJfU0VUXzBfRFNDMF9BLCBfRFND
X1NVX1BBUkFNRVRFUl9TRVRfMF9EU0MwX0IpDQo+ID4gKyNkZWZpbmXCoMKgDQo+ID4gRFNDX1NV
X1BBUkFNRVRFUl9TRVRfMF9TVV9TTElDRV9ST1dfUEVSX0ZSQU1FX01BU0sJUkVHX0dFTk1BU0so
MzEsIDIwKQ0KPiA+ICsjZGVmaW5lwqDCoA0KPiA+IERTQ19TVV9QQVJBTUVURVJfU0VUXzBfU1Vf
U0xJQ0VfUk9XX1BFUl9GUkFNRShyb3dzKQlSRUdfRklFTERfUFJFUChEU0NfU1VfUEFSQU1FVEVS
X1NFVF8wX1NVX1NMSUNFX1JPV19QRVJfRlJBTUVfTUFTSywocm93cykpDQo+ID4gKyNkZWZpbmXC
oMKgDQo+ID4gRFNDX1NVX1BBUkFNRVRFUl9TRVRfMF9TVV9QSUNfSEVJR0hUX01BU0sJCVJFR19H
RU5NQVNLKDE1LCAwKQ0KPiA+ICsjZGVmaW5lwqDCoA0KPiA+IERTQ19TVV9QQVJBTUVURVJfU0VU
XzBfU1VfUElDX0hFSUdIVChoKQkJUkVHX0ZJRUxEX1BSRVAoRFNDX1NVX1BBUkFNRVRFUl9TRVRf
MF9TVV9QSUNfSEVJR0hUX01BU0ssKGgpKQ0KPiA+ICsNCj4gPiArI2RlZmluZSBfRFNDX1NVX1BB
UkFNRVRFUl9TRVRfMF9EU0MxX0EJCTB4NzgxNjQNCj4gPiArI2RlZmluZSBfRFNDX1NVX1BBUkFN
RVRFUl9TRVRfMF9EU0MxX0IJCTB4NzgzNjQNCj4gPiArI2RlZmluZSBEU0NfU1VfUEFSQU1FVEVS
X1NFVF8wX0RTQzEocGlwZSkJX01NSU9fUElQRSgocGlwZSksDQo+ID4gX0RTQ19TVV9QQVJBTUVU
RVJfU0VUXzBfRFNDMV9BLCBfRFNDX1NVX1BBUkFNRVRFUl9TRVRfMF9EU0MxX0IpDQo+ID4gKw0K
PiA+IMKgICNkZWZpbmUgX1BSX0FMUE1fQ1RMX0EJMHg2MDk0OA0KPiA+IMKgICNkZWZpbmUgUFJf
QUxQTV9DVEwoZGV2X3ByaXYsIHRyYW4pCV9NTUlPX1RSQU5TMihkZXZfcHJpdiwNCj4gPiB0cmFu
LCBfUFJfQUxQTV9DVExfQSkNCj4gPiDCoCAjZGVmaW5lwqANCj4gPiBQUl9BTFBNX0NUTF9BTExP
V19MSU5LX09GRl9CRVRXRUVOX0FTX1NEUF9BTkRfU1UJQklUKDYpDQoNCg==
