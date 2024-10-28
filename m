Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3799C9B3427
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:58:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B97A510E4DC;
	Mon, 28 Oct 2024 14:58:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eeDPiN/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9069110E4DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730127517; x=1761663517;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UgyiqqyORQ61M6Azekr9JSeFP/cKWCtziXVDAYDJTF8=;
 b=eeDPiN/KEOXY/m+GE3attiYh+Xlh8ls80kC+1sZ8h1wHmX5TobkjVdj0
 5xTzEg7j97ITfMYTiG/m/zmgjT33igC7V2G6maZQLkN6Uxa7schfxFqyt
 PPmoMEDPko0K59KFIz/UThzf1zJ7NwdJMUomPNVYC57omvzFgm2yORb+I
 ytN6KK3ZoSCE+3dMWSp/u5cDI4yvfWvN23BEkAwyFp/ZzANxAiprvHcZL
 yk9eFFrR7kmDZF0NytdtVhemxm9Hjvo3auobnGuHOIfYYrt5IR9QDf1q+
 TdG3awpNbCJtQ1DeY5A3rZdN+omBUxzt43etp2FctV+6PDuNoaL6YDAZu g==;
X-CSE-ConnectionGUID: 9YuEp2VHRlOOI+i7+YpvBA==
X-CSE-MsgGUID: ccVLVGNqQqKDHScXsN6MaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40264250"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40264250"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:58:33 -0700
X-CSE-ConnectionGUID: WF8//06PS2e/roBsKxFROg==
X-CSE-MsgGUID: GsPvnWIuSLCCHAPy7m2ZNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="119102094"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 07:58:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 07:58:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 07:58:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 07:58:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mVgWtyOWgarOuackEMKGVAOJKv+jqmMzz66blVl8akMhZU/t0v8QR/BHXqBFqRV4nZvXJgtoBg+i06itJyXMCxX1nc1amue2WHBdGcybTDU5ZkTCKHR+Cw378B6dzAnG8XhTgieBrkb8zRmVqFcTb0v2UuTrS3ZYmZB0CQNvbw7gD64O0/1U8sxSFKo+WpyVcyChnqgp2VUBO2ivhZOpx0Oxik1SbGc2zRnSw3GtV3HZ761HaIrkQAqGsdV+Cl6VI4Ua7rxCx20FDBAaDCWGJkrQEz8zwraRzUfd8AU6xqKGjQouZ5+Mvk23Vpibryv4K1umE05EgY2JVxrICNY0HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UgyiqqyORQ61M6Azekr9JSeFP/cKWCtziXVDAYDJTF8=;
 b=M9KHwdg1QHnY+zuOYX/dJ/4rp5po0kK/ktTbAGGrc7tqXqM22w2ON14SxES7xlMqxM1qnOxs6tKBfl4gahuiTT4cd8cHQN/+nzkjcnPmfW4Td2QqSArnELbdBeXqtwph2VqsddoBnPhy0DRFMe+A3FsiifKg6xLTtFLcRs5F98XqzuOl9rx1Okfhem47cvUuQdiEGJEkix5tLH5G2sVfC70EDA57mrzo8MdVLjTnMpowdbSW00aTbMJ2ObpTIGrNME+ckFid9Lr2UNexCR5nRurCwhPXpcaYP0Qjp2N4ULmD1+9Epx+yYuIIQHqRJfl3PSaxPyaiD6lz18FhNE6IUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB6424.namprd11.prod.outlook.com (2603:10b6:8:c4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.28; Mon, 28 Oct 2024 14:58:29 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.018; Mon, 28 Oct 2024
 14:58:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Index: AQHbKTpVTy+cAygmDEKTn3AmE2m0nLKcQFIAgAAAuyA=
Date: Mon, 28 Oct 2024 14:58:28 +0000
Message-ID: <MW4PR11MB7054CDD5356AE5D96C161750EF4A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
 <874j4wp99r.fsf@intel.com>
In-Reply-To: <874j4wp99r.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB6424:EE_
x-ms-office365-filtering-correlation-id: 1f5b4cc4-38de-4cc7-c579-08dcf760fb8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aktBTXFLYnN5SHRKbzRiMGVZUGdtTmVvU1N1TVpzUDdZNWRUSStBSmRvN1NY?=
 =?utf-8?B?SG1JSi9pdkpsQ0hhRGJFTktncjZndjc5Vi9FNFloZFBySURBNHpjUmh6YkVu?=
 =?utf-8?B?N21zWXIzU0F2M2NVSlU5MXVJVGVSL2NLcVhBQ1FGbURwQmcvZ0VVWnB4UFRr?=
 =?utf-8?B?enhEc1pXOTFpQlRSeHQrYWt4RmZ0T1g3elFaMVFhQm1WdUJEdXhhOE5HSnVH?=
 =?utf-8?B?ZHB1VU4wb2JFczMyRlBTVGVmYjh3MTRLS2RPSXZoTlpHTlN2QWp1SjExcVJM?=
 =?utf-8?B?YTN1U0l1L2t3MTB1eHJVcDV4aVFCMFdzMGpCN0M4YUlEK1E1eUs2aXlRY1ZK?=
 =?utf-8?B?YzhlK0paUi91Y0ZWaStvREladU9iR0d3d1I3YmcxSjZzT1ppbFBnVXhTMGZ2?=
 =?utf-8?B?UUtOQ0NPckZxSHVoc1RqVTlvMXpSS2tqa1Fka0szdVc3L050QnIzV1hxMzZJ?=
 =?utf-8?B?ajdMdk1NM0xJRXJaWmkyUDU5a21kT0lxTEJNbHFHSXRHWmNXdm5GQzlrT3R1?=
 =?utf-8?B?SFVOVHF3aVI3TWNrbitDVFNMTm9KWHNZY3pkMk1GYTRhdEZnNi9PbEFXZUht?=
 =?utf-8?B?UzZhZlcxWnNvd1R4MmRUSEwzVTVOY1dMUCt3OHBPQlJlcHVLdXZSMSthVzRy?=
 =?utf-8?B?T2taZXJDdWRkYzl1dFFqSkpkTUFMeS9Db2hWVnR1US9haUxuNWFBUDJjcGVW?=
 =?utf-8?B?bnM0N2Y5UmdjYmpQMUNvZGpmaGdLTCtVWUd0RWlKaGh0S09tekVPNUYyd2pp?=
 =?utf-8?B?UnFib01mSkVpU1NZOW9mZWpiL2piTVFLaGdkUEU5VEdQc0xMLzVtcWFlL1d5?=
 =?utf-8?B?cjFBRFRJbkNxbjB3YmFrVGVJU1pSM0E4NWNNVVFzS2pqSjdSL0czSTVqVHdm?=
 =?utf-8?B?QmpyZW5jUUYrQWVBZkxoS3I3KzdnL0FScXZEUmpkc0F6TGFDY2E5V1pFYTVm?=
 =?utf-8?B?dVA3Q1RMYnNVSm9XdUZlUy9wSGx6WFFxaVU2Q1VkV29heVVFYU12SitGV29v?=
 =?utf-8?B?S3RXK2Z2ckxPQjczWUdoZk5iTjg5TDY4b2w0Z3E1MGh5R2lvbFlIY0NMQk9P?=
 =?utf-8?B?N2lZRWpycGViTWc2Z1FUanpNUGxWcGhsdjhiR3FFc1gySHhXL29kUGFMQ3FW?=
 =?utf-8?B?VFV2ckhnbFFXVGFVaVFqc2hBS2o2Zy8zM1FnaUJwdFo0bXkwaHdISXZqZHRF?=
 =?utf-8?B?dlBZeFF5bVdYRTU5dXNCaXVwQzdPOVUxQUxUelFkNDBHZHUvOVNNWUlFTVBU?=
 =?utf-8?B?M1FRaGxteHpDaW9IVWtJZFU4VHpMc2ZIeWo1SUFGei9lMkV1YWVVcGZMaWZm?=
 =?utf-8?B?Q1d0QWkrbm9XaW1xWjk4amxaaXZHaFI3S29RVGRpMGhxSldsMXdUdFVZQ21C?=
 =?utf-8?B?YUlwUGtCTzROajFpSzdiYTUzRXhRcllBNUt0djZkLy9yQ0Y1WFNBeGdiTm93?=
 =?utf-8?B?OG9sL0xDbWdNMWtxcVNrenRHc3FER0JUa2FnQ3FvdlZLaHVrM3d4bHZGMm5w?=
 =?utf-8?B?L09xTjlLYXhYUFl6MkZxSC9sY0RvOUVTYVprNmVwSlVGejdrb3I2QzlHVUFn?=
 =?utf-8?B?Zm5IVGtGTXY3b2d4cjJVbkY3Z0h1cnpOUGM1bDdYcjNKajBWazIrTEsxRDVS?=
 =?utf-8?B?UmpvQkc5WTg3THlBZlpGeFlOVjR1RG5OOTl0WDRQUm9mOThlc1VCbmRNYlJK?=
 =?utf-8?B?Um1RMCtjcHFaRkVSSEZxSlc0VG9Va2FUZWh6NXZrSU5HMlMrUW5iZ3c3RkNh?=
 =?utf-8?B?V3NtRmpldmFjYlJ5b1ZzY0NDVkd1TEtmYW0rckJMbDlWZkVMWlhtZmJhTDVR?=
 =?utf-8?Q?2pAELqUFnvqb+3G1dPCAhIc5Wa4kPsvNYmG60=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzVJYnd6Wk5ZdzZqODZCUFdJd0dWViszMEFKM29sOVhFODhZekZrcGdYZE9V?=
 =?utf-8?B?dm1ieTlYSlJzQ3NMdTJkYXZwRnZBQUZlczhNcEpWUUNlMUhzRU5GbDBvbFdE?=
 =?utf-8?B?bmdnaVhhS1p0MU4zOUNnZFZGbW52TmlkWVNNRUYvWjhmL0VrOFRSa3lNMjdN?=
 =?utf-8?B?RmI2NjN2Si9SSldWeUgvS1RCMkxlVEhqT0hPUDRMTEFwZTZuZURncVdKMnF5?=
 =?utf-8?B?UTJHK2VTUmFhTUE1U1pNUFZLWDFIeXhHS3h2VzRFdGVpSXJZOVdmZ3htQ1RB?=
 =?utf-8?B?TEJ5TjFuK2U3ZUt3YkpoclI3ZlVrUC9MZURmMzFSaWM1Y2thRzdJcEgycmgy?=
 =?utf-8?B?K2p1MjEwSlE3RmwxQk5xVWY4UnExa0VHdkpsV2ZzTGs1b0NZbmdLMENqaEF2?=
 =?utf-8?B?aS9jZzlSa0hEak9ZWmhLNjBmdy9qb01pUXdkdEZVS3g4Q1NQbW5jNzdxYVNR?=
 =?utf-8?B?aTE3eDd1a3Y2VlNpT2srRjdqSDFXcUJTRnlqYnpUQ3NKNEEwWUxGNDFoSFhB?=
 =?utf-8?B?dzVJTDZpOE95MHQwUmdVK1JQTWtBNzE3djBldmZVWkpvRy9ldFFPaTJTREhr?=
 =?utf-8?B?TzkxY3JJdGRUbUZ6dzVVQlRmVllJYkVCNk5Bc04wd1VUWW9sY1I2UWtCMmlN?=
 =?utf-8?B?RVQxQXZRRVJhbmY2K1Nqblhhay9iMll6QVhFa2dIY3VQMGRaVy9US2pubjVZ?=
 =?utf-8?B?dVdWaGN6NHBoV25iSjhmZWowSjducE5WVzlpc0FDdTc5eWlxRjJPRTB4dzNP?=
 =?utf-8?B?N0xvV05COHNMZFA3REhUeUtIZkwzaGxXSExRaUlnZHhoeTRYSk0rWGkwRkRt?=
 =?utf-8?B?YVhUdCtBQ1YwdFJSMlh0M3NzN0ZVdThQalN5bU92ZzAxR0NIcHp1aGxZWTRl?=
 =?utf-8?B?RjdsM1BFS1U5engvSGlNbXFBaHo1d0VmTzF4Q29iUEdxMGhnNnJFTkpWNTEw?=
 =?utf-8?B?LzFHTTBlMHZHZ1BQa3NDRWV3UUpBUDE1eVFydUxNdk1UUG9uK01jaHBiRzVi?=
 =?utf-8?B?czR5NjdxU2FUNjZibG1XK1dCOWJjQkYvV2RSRjRBdUk1cjB6amE4eldPMVJD?=
 =?utf-8?B?S0dqTkNiZ2JDcWkwMzNqd2FLay9NSTNFZWFSZ1pqOTVGaExWcE1FMCt2a1Fv?=
 =?utf-8?B?T2JnR2NKNlhKVVkrUyt2QXJ2REF1V0Q3ejNXSmhid3pma1VjMHVka2IzQy9Z?=
 =?utf-8?B?Y1pob2FJdUJ6YXhzaWxXeStSSWRQSlQvVGFiNG9mTW5QdFNZWld6NThOQncz?=
 =?utf-8?B?NWd0K1pEcGNzOWVMSm1OMG5Bb1hkNnhyeTdPRVNRbzhjN2ZJS0ZSbHp2WEZo?=
 =?utf-8?B?L0hsUkpEcnB6ay9Ka3hhdzR5M2tSRFVDZVQ0b05uQXUxNUt3SG1PUWNBcFcv?=
 =?utf-8?B?Rms2amo1RHZoQXJwSE1FSlo4bWQ0azdpa2JPWnNLS1BvbTB1UTI1V3U1OGhY?=
 =?utf-8?B?cjVCb3BZTnBUNjZRM3FvRGJ0eWF5QUtsK2xJVndNRUlwREo0SEpoM2FwUU1H?=
 =?utf-8?B?NkxZcmIzalNma2lLdEZncDFiQjcrVURMUzE1TFlDdGF1RnB0djNwQ2FpQ3hF?=
 =?utf-8?B?SG9YUzQxYy9sYVJvWVE4WGJYNDBHYlhZSjVUT3VNek16N0V4bFlCaU1NUEVK?=
 =?utf-8?B?MzVZdUJRU3NtaDFmYktjRVY0RW1sTUlZcG9JZklLeTVLMEViSHBlcnRjUmox?=
 =?utf-8?B?NHR3cEg3dUFQSTV6bDlYYVp2bjlTeEoxVjZjaXBYVExtcTEycndZUmQ0OG9D?=
 =?utf-8?B?NktQLzVGaTZ5Z0NJczdMWFd2eldoUmpjankwRllleVNSM29EWTJCc29PL0V6?=
 =?utf-8?B?M0NGbzI5dnk0aTBwYnppWFBNNVNkeVR1OVRMNTVyQjFpeFUyTVo0R3FIdkl3?=
 =?utf-8?B?TmtvTU9icTVwTVk5WWpXbHlBYVRxOHNudmxrYW1Qak9NYmE2NFNpRDRaWW5J?=
 =?utf-8?B?OXRQaVRkVzl1cmdvWDhJUnBxNm5lZnViTG01S1BtNzY0NjJKQ2tiQm1DZ3U5?=
 =?utf-8?B?c2dQUHJMYStVVUJHWk5oVng4YWZhZmpnYlRHQ1REMnhUSWFhL1RuQUZBS0M2?=
 =?utf-8?B?d0VvLzN1c3JPNldhbTdETWxZWVc1WlU4dkkyYU1WeGR1NFJWTVd5ODk4SG91?=
 =?utf-8?Q?qkJIHijQZRce5//sUbqe2pZ4T?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f5b4cc4-38de-4cc7-c579-08dcf760fb8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 14:58:28.8747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HaxxSgYCrn1Q9rUgodj0AzrU+J/C+ItiXmGz2tFpjEQNTeQA15SfRXKfuOL40st4ZN6JS2j0idOO7rGgHzw/1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6424
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIDI4IE9jdG9iZXIgMjAyNCAx
Ni41NQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTb3VzYSwgR3VzdGF2byA8Z3VzdGF2by5z
b3VzYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUveGUzbHBkOiBQb3dlciByZXF1ZXN0IGFz
c2VydGluZy9kZWFzc2VydGluZw0KPiANCj4gT24gTW9uLCAyOCBPY3QgMjAyNCwgTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gVGhlcmUgaXMgYSBIVyBpc3N1
ZSB0aGF0IGFyaXNlcyB3aGVuIHRoZXJlIGFyZSByYWNlIGNvbmRpdGlvbnMgYmV0d2Vlbg0KPiA+
IFRDU1MgZW50ZXJpbmcvZXhpdGluZyBUQzcgb3IgVEMxMCBzdGF0ZXMgd2hpbGUgdGhlIGRyaXZl
ciBpcw0KPiA+IGFzc2VydGluZy9kZWFzc2VydGluZyBUQ1NTIHBvd2VyIHJlcXVlc3QuIEFzIGEg
d29ya2Fyb3VuZCwgRGlzcGxheQ0KPiA+IGRyaXZlciB3aWxsIGltcGxlbWVudCBhIG1haWxib3gg
c2VxdWVuY2UgdG8gZW5zdXJlIHRoYXQgdGhlIFRDU1MgaXMgaW4NCj4gPiBUQzAgd2hlbiBUQ1NT
IHBvd2VyIHJlcXVlc3QgaXMgYXNzZXJ0ZWQvZGVhc3NlcnRlZC4NCj4gPg0KPiA+IFRoZSBzZXF1
ZW5jZSBpcyB0aGUgZm9sbG93aW5nDQo+ID4NCj4gPiAxLiBSZWFkIG1haWxib3ggY29tbWFuZCBz
dGF0dXMgYW5kIHdhaXQgdW50aWwgcnVuL2J1c3kgYml0IGlzDQo+ID4gICAgY2xlYXINCj4gPiAy
LiBXcml0ZSBtYWlsYm94IGRhdGEgdmFsdWUgJzEnIGZvciBwb3dlciByZXF1ZXN0IGFzc2VydGlu
Zw0KPiA+ICAgIGFuZCAnMCcgZm9yIHBvd2VyIHJlcXVlc3QgZGVhc3NlcnRpbmcgMy4gV3JpdGUg
bWFpbGJveCBjb21tYW5kDQo+ID4gcnVuL2J1c3kgYml0IGFuZCBjb21tYW5kIHZhbHVlIHdpdGgg
MHgxIDQuIFJlYWQgbWFpbGJveCBjb21tYW5kIGFuZA0KPiA+IHdhaXQgdW50aWwgcnVuL2J1c3kg
Yml0IGlzIGNsZWFyDQo+ID4gICAgYmVmb3JlIGNvbnRpbnVpbmcgcG93ZXIgcmVxdWVzdC4NCj4g
Pg0KPiA+IHYyOiBSZW5hbWUgV0EgZnVuY3Rpb24gKEd1c3Rhdm8pDQo+ID4gICAgIExpbWl0IFdB
IG9ubHkgZm9yIFBUTCBwbGF0Zm9ybSB3aXRoIGEgVE9ETyBub3RlIChHdXN0YXZvKQ0KPiA+ICAg
ICBBZGQgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIGZvciBjbGFyaXR5IHdoZW4g
d3JpdGluZw0KPiA+ICAgICByZWdpc3RlciBkYXRhIChHdXN0YXZvKQ0KPiA+ICAgICBNb3ZlIHJl
Z2lzdGVyIGRlZnMgZnJvbSBpOTE1X3JlZy5oIHRvIGludGVsX2N4MF9waHlfcmVncy5oDQo+ID4g
KEd1c3Rhdm8pDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3gwX3BoeV9yZWdzLmggfCAgNyArKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jICAgICAgIHwgNDYgKysrKysrKysrKysrKysrKysrKw0KPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oDQo+ID4gaW5kZXgg
YWIzYWUxMTBiNjhmLi5lNDZjMDdjZDIwZTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4gPiBAQCAtMzYzLDQg
KzM2MywxMSBAQA0KPiA+ICAjZGVmaW5lIEhETUlfRElWX01BU0sJCVJFR19HRU5NQVNLMTYoMiwg
MCkNCj4gPiAgI2RlZmluZSBIRE1JX0RJVih2YWwpCQlSRUdfRklFTERfUFJFUDE2KEhETUlfRElW
X01BU0ssDQo+IHZhbCkNCj4gPg0KPiA+ICsjZGVmaW5lIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NN
RAkJX01NSU8oMHgxNjEzMDApDQo+ID4gKyNkZWZpbmUgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9D
TURfUlVOX0JVU1kJUkVHX0JJVCgzMSkNCj4gPiArI2RlZmluZSAgIFRDU1NfRElTUF9NQUlMQk9Y
X0lOX0NNRF9DTURfTUFTSwlSRUdfR0VOTUFTSyg3LCAwKQ0KPiA+ICsjZGVmaW5lICAgVENTU19E
SVNQX01BSUxCT1hfSU5fQ01EX0RBVEEoeCkNCj4gCVRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9S
VU5fQlVTWSB8IFwNCj4gPiArDQo+IAlSRUdfRklFTERfUFJFUChUQ1NTX0RJU1BfTUFJTEJPWF9J
Tl9DTURfQ01EX01BU0ssICh4KSkNCj4gPiArI2RlZmluZSBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9E
QVRBCQlfTU1JTygweDE2MTMwNCkNCj4gPiArDQo+ID4gICNlbmRpZiAvKiBfX0lOVEVMX0NYMF9S
RUdfREVGU19IX18gKi8gZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gPiBpbmRleCA2ZjJlZTdkYmM0M2IuLjkyNGMzZmYwNGViNiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiBAQCAtMTAxMyw2ICsx
MDEzLDQ1IEBAIHhlbHBkcF90Y19waHlfd2FpdF9mb3JfdGNzc19wb3dlcihzdHJ1Y3QNCj4gaW50
ZWxfdGNfcG9ydCAqdGMsIGJvb2wgZW5hYmxlZCkNCj4gPiAgCXJldHVybiB0cnVlOw0KPiA+ICB9
DQo+ID4NCj4gPiArc3RhdGljIGJvb2wgd2FfdGNzc19wb3dlcl9yZXF1ZXN0X2Fzc2VydChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICsqaTkxNSwNCj4gDQo+IFBsZWFzZSB1c2Ugc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgZm9yIG5ldyBjb2RlLg0KDQpPayBJIHdpbGwgc3dpdGNo
IHRvIHVzZSB0aGF0LiBUaGFua3MhDQoNCj4gDQo+ID4gKwkJCQkJIGJvb2wgZW5hYmxlKQ0KPiA+
ICt7DQo+ID4gKwkvKg0KPiA+ICsJICogTGltaXQgdG8gUFRMIG9ubHkNCj4gPiArCSAqIFRPRE86
IEFkZCBjaGVjayBmb3IgUElDQSBJUCBhbmQgdXNlIHRoYXQgaW5zdGVhZCBsaW1pdGluZyBXQSBm
b3INCj4gPiArCSAqIHBsYXRmb3JtDQo+ID4gKwkgKi8NCj4gPiArCWlmIChESVNQTEFZX1ZFUihp
OTE1KSAhPSAzMCkNCj4gDQo+IHMvaTkxNS9kaXNwbGF5Lw0KPiANCj4gPiArCQlyZXR1cm4gdHJ1
ZTsNCj4gPiArDQo+ID4gKwkvKiBjaGVjayBpZiBtYWlsYm94IGlzIHJ1bm5pbmcgYnVzeSAqLw0K
PiA+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFyKGk5MTUsIFRDU1NfRElTUF9NQUlMQk9Y
X0lOX0NNRCwNCj4gPiArCQkJCSAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1ks
DQo+IDEwKSkgew0KPiANCj4gcy9pOTE1L2Rpc3BsYXkvDQo+IA0KPiA+ICsJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sDQo+IA0KPiBkaXNwbGF5LT5kcm0NCj4gDQo+IERpdHRvIGJlbG93LCB0aGlz
IGZ1bmN0aW9uIGRvZXNuJ3QgbmVlZCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSBmb3IgYW55dGhp
bmcuDQo+IA0KPiA+ICsJCQkgICAgIlBvd2VyIHJlcXVlc3QgYXNzZXJ0IFdBIHRpbWVvdXQgd2Fp
dGluZyBmb3IgVENTUw0KPiBtYWlsYm94IHJ1bi9idXN5IGJpdCB0byBjbGVhclxuIik7DQo+ID4g
KwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmIChlbmFibGUpDQo+ID4g
KwkJaW50ZWxfZGVfd3JpdGUoaTkxNSwgVENTU19ESVNQX01BSUxCT1hfSU5fREFUQSwgMSk7DQo+
ID4gKwllbHNlDQo+ID4gKwkJaW50ZWxfZGVfd3JpdGUoaTkxNSwgVENTU19ESVNQX01BSUxCT1hf
SU5fREFUQSwgMCk7DQo+ID4gKw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoaTkxNSwgVENTU19ESVNQ
X01BSUxCT1hfSU5fQ01ELA0KPiA+ICsJCSAgICAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURf
UlVOX0JVU1kgfA0KPiA+ICsJCSAgICAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfREFUQSgw
eDEpKTsNCj4gPiArDQo+ID4gKwkvKiB3YWl0IHRvIGNsZWFyIG1haWxib3ggcnVubmluZyBidXN5
IGJpdCBiZWZvcmUgY29udGludWluZyAqLw0KPiA+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX2Ns
ZWFyKGk5MTUsIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRCwNCj4gPiArCQkJCSAgICBUQ1NTX0RJ
U1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1ksDQo+IDEwKSkgew0KPiA+ICsJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sDQo+ID4gKwkJCSAgICAiUG93ZXIgcmVxdWVzdCBhc3NlcnQgV0EgdGltZW91
dCB3YWl0aW5nIGZvciBUQ1NTDQo+IG1haWxib3ggcnVuL2J1c3kgYml0IHRvIGNsZWFyXG4iKTsN
Cj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIHRydWU7
DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lkIF9feGVscGRwX3RjX3BoeV9lbmFibGVf
dGNzc19wb3dlcihzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiA+ICp0YywgYm9vbCBlbmFibGUpICB7
DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOyBA
QCAtMTAyMiw2ICsxMDYxLDEzDQo+ID4gQEAgc3RhdGljIHZvaWQgX194ZWxwZHBfdGNfcGh5X2Vu
YWJsZV90Y3NzX3Bvd2VyKHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+ID4gKnRjLCBib29sIGVuYQ0K
PiA+DQo+ID4gIAlhc3NlcnRfdGNfY29sZF9ibG9ja2VkKHRjKTsNCj4gPg0KPiA+ICsJLyoNCj4g
PiArCSAqIEdmeCBkcml2ZXIgd29ya2Fyb3VuZCBmb3IgUFRMIHRjc3NfcnhkZXRlY3RfY2xrc3di
X3JlcS9hY2sNCj4gaGFuZHNoYWtlDQo+ID4gKwkgKiB2aW9sYXRpb24gd2hlbiBwd3dyZXE9IDAt
PjEgZHVyaW5nIFRDNy8xMCBlbnRyeQ0KPiA+ICsJICovDQo+ID4gKwlkcm1fV0FSTl9PTigmaTkx
NS0+ZHJtLA0KPiA+ICsJCSAgICAhd2FfdGNzc19wb3dlcl9yZXF1ZXN0X2Fzc2VydChpOTE1LCBl
bmFibGUpKTsNCj4gPiArDQo+ID4gIAl2YWwgPSBpbnRlbF9kZV9yZWFkKGk5MTUsIHJlZyk7DQo+
ID4gIAlpZiAoZW5hYmxlKQ0KPiA+ICAJCXZhbCB8PSBYRUxQRFBfVENTU19QT1dFUl9SRVFVRVNU
Ow0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsDQo=
