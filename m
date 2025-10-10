Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A6DBCBD39
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 08:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C244410E276;
	Fri, 10 Oct 2025 06:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WnN+LiIQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADF810E26C;
 Fri, 10 Oct 2025 06:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760079207; x=1791615207;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EWEZDEb7Q+raH1s7NQ+ALsNhgn1k59/mj64KWeWR4aA=;
 b=WnN+LiIQQF8oXqpiVd195SMISWZ9qy3hWtSs800IRpPyx79CgW2Hu7dQ
 TtMOmUb1LzLltdtP/DOhXLPI6tAvEjIohx+VT/Kutto+6kJqELXblgcos
 r6STblilfagICezBO5MvtIsPzcbPMIrq3f7Lw788n110FuE2iZ9li4T8I
 6RHL7HYFFoy0ahC+2zt6HEB65N7Ny0frbQQvvJY1P6fSa8ozMiNCFhARP
 WJB3RxMWjn8le1l9WaURNZhivjEQ/4SUGWDPDFPVxVY/BYvfyQnW3K1ju
 tiO1WSDCQaDIQHNQxLetccSvQiu+ftVqx0xYmO5Txwliyt4YtRtZVCh6j A==;
X-CSE-ConnectionGUID: D8dZi77UToa6WPU8ijN0AA==
X-CSE-MsgGUID: OGJrddV0TpmG/DA8Rz0Bkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79740085"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="79740085"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 23:53:26 -0700
X-CSE-ConnectionGUID: DrmOAIrPT0qwjent5qdX6w==
X-CSE-MsgGUID: OJ1qNxYmQ6ye6JR5WEw2VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211558587"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 23:53:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 23:53:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 23:53:25 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 23:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zTKvtCm/IZLCb5AlSdmQ/2n097W5rgplnqRDVz03C0GEErM9mlyqth4xq34LVrrDS99PzeJdoScAnuCa78/faEl4mXwDWb/2lRQhmu2p3jdTMn1hOSrXf2Zm07IF+ejSs9CdWNoLGcP3jGlagKICele6Xj1aMAt5uHPKQZGSW2GUA6Qf9nG6nGHhjGAMfFrghw3NgbNDSxwH3T3ZYZZqevmWCmJVKucSTugQMsEeKaVBGMa9inUZbhxYvKeZ6u+TQ4Afsv1y1l4FrXP57DqElZ7tTu5HzIyfCzkM4vNb1/gBoZjS0BU9UkOObq9V6QDU+y15e/3s3izm4FIKuPEyMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EWEZDEb7Q+raH1s7NQ+ALsNhgn1k59/mj64KWeWR4aA=;
 b=fvj8Kr0gbk8IOCeYZ+4lKYKjdSbgSK9p2Zlc6H0A6e0o1kf+OLlbqZvl1FIWWuL5UjYXbRy6v5QhRdG32PKunlq6SclgqYDxiHHKp1Kg8o+Q9SOwBuF5GjmDkACa7O/dIbv+ja9Et0g7L2SOLrmW2FQGx9jmgkhiQy+oGIlUsDEpcquQ0XSSqq2txH16p3fbV/K0A5ZJRU5ZYBBtva/Pqa5mic6I2hnmQuCoDNwZCrhB3ChDVq7Hpxya+3e9bGVVWQsJYCq7DQLg/wNK8i2U0xV1RZD5Lk86rHJlw6gManHmmNPXMgeJX4LFiQBieIM8O2S95j6+4pIl4Tg4sDAIcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.10; Fri, 10 Oct 2025 06:53:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9203.007; Fri, 10 Oct 2025
 06:53:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 5/8] drm/i915/display: Check if final vblank is sufficient
 for PSR features
Thread-Topic: [PATCH 5/8] drm/i915/display: Check if final vblank is
 sufficient for PSR features
Thread-Index: AQHcOP0lbZCK4PKidUauWcszezwyhrS68yCA
Date: Fri, 10 Oct 2025 06:53:17 +0000
Message-ID: <9178808c08ec3e7dd1e7bc7cd36d8b4f977a2711.camel@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251009090102.850344-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5116:EE_
x-ms-office365-filtering-correlation-id: 2f3914ca-6286-4cf5-55ec-08de07c9b103
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V0dIaGxyRzlzR3gyV25GeC9XczhJNnVDTmU0TUVidUJIM2JVRVJSQkRQTmxD?=
 =?utf-8?B?TnpWWndjRGtVWUVEZDNSdVhnV0lDWjlnUGx3UmxKUTRhSWgrZGtkeW9zRUo0?=
 =?utf-8?B?a2VDeCtnR2xTZlduYk5qUVBYcy9LT3NJc3RtV2w5NTY3NjFlTzhMd1VIOE5h?=
 =?utf-8?B?ZVFXNTZNcWxKU082QXN1VEo5eGFuZE4yVWxLUmVaSkNGU0RabWRVdkhrdWdE?=
 =?utf-8?B?NnZDSjVpQjlIcXZiMHFBNU54ckRuenhDZklzMUoxdlNhQXdBcEJwb0Q2TTRU?=
 =?utf-8?B?WTNKeVZYOEtEVklMWVlwVkxZVE81b0NucExlbGxsdFA1NHNNc1R3elFyUW1q?=
 =?utf-8?B?eWJicDNNVW4wVldTSWV2T2F6Y2tvdC95cFB2K2pZc2hEelc0U3lBejFmcXAr?=
 =?utf-8?B?VFNwdGt0bW93eUlLV2Zib1B3bUlFQVZjbko1S3hKMHZFYXVQdzlNWFFudThF?=
 =?utf-8?B?ZHg3RWZaMEtGVmVBUFplQUNCY0JJcjhXYzJlUXQyanZZNjIvQXZtS083cHBz?=
 =?utf-8?B?V1llZ3dFbVp4dGVFQjgwQjk2NFNUOTF5dlU4d3pJRXJJbzJTWVhzb0oyOHlN?=
 =?utf-8?B?MWVoQVBaM2Z6cjg1YnU5TU9pRHpXVzc2QTlWRmhoVlRSaE9QUkdncFRycGl6?=
 =?utf-8?B?dVJWbjRPRzh5WlBlT3FUbWhrZVhubVZQZVl2V2NYMUg1dnk4OHNQSXBpajZw?=
 =?utf-8?B?Z3ZOK0JQWlRucVFzTUR2OC8zWTkxS3UzSkM5ank5OVhZSFRTbDJZQnp4OUdx?=
 =?utf-8?B?VGFkbWVpZXZKWURhT1ZOWmpOTWFKQ2VDZWZ0UjdGQ3JIb2JNdlAxdm0vYnBI?=
 =?utf-8?B?Zit2ZUp2Vy9IQWRieDVjWDhZRzlpbkZwOC8wQmJ3elk1RFJJRG1QWVpyaDBY?=
 =?utf-8?B?YnV1RVhBM0JQcjQzM092TnhXTUw1U3VIWWtzcGdZbjRLRnROODZqaGhtQnBo?=
 =?utf-8?B?RnJtendYU1paYUpqQzZKS2FFTmtrbDAvNUR2c0trMGUrSHhTaGZzbzZlTnFD?=
 =?utf-8?B?eloybndVdnpXWCtaL3JNWWdVNldiclVSSHBnMVczY1phUjhuYXhhUlRIWGp3?=
 =?utf-8?B?QjFkVUVaY2p2di9hWkxKWkxrQ0VpbjZMUjkzVWxPNWNGbmNXejk1L2lLeGFJ?=
 =?utf-8?B?MHV3VmlnVFlQa2VQaFE3QmJsWklwbnMyRjFxcWFqYkNEOXRWU1VIdzEyY2py?=
 =?utf-8?B?RTAwOHNVamIxbTB2Slh0RnQ3NXFVTHNQRzE5bG44NXFNeDcxU1ZtZ2E2cWhB?=
 =?utf-8?B?cDg4dWRWZGFWN1I4TzdNc29ueUVnYXJXYjdTa0JBMHVpdFNRWlkzeHR5Y3Ru?=
 =?utf-8?B?SFRyQU1VQXB4S1RDbkY4WkVxMUFnc1hqVlRJbEIxalJ6aDNFUGNGWTJVaDgr?=
 =?utf-8?B?cHYzcEFpNFh4cW44WSt2WjBLVFBwcjZVaUZQdFY0YVBXZkRnRm5jNFk4dm1M?=
 =?utf-8?B?bWF5cFZZQTNNWWQ5VGxSZ2xlM0NQZnFTdHZWeTd0THEweFBrOGNaai9PazRh?=
 =?utf-8?B?L3pEM2F2QXlsa3FqWkRSbDBkYlNESnZZM2lMeEdSbDY1elhJeWhTV0FxQk0x?=
 =?utf-8?B?Q1dLTElwYWhqNkZwRDFVRTdheVVGbkptMHV4UW5FV3BUckZ3QVhadS9wcEp2?=
 =?utf-8?B?THdIYk0wNy9vL2FBMldMSmF1UCtRcHFlNzlUZ0toWVB2aVhKRnFheXFoakZF?=
 =?utf-8?B?OGdlVTVuSHlueFFnQzlEUkxQNjNCVTRGYUtINTltQllsTkhrODg0M3V1NWpS?=
 =?utf-8?B?VVFQd1plSEVKRXNOYTRPeUlhQ24wekJ4Y1dDV0M0ZU9LNmRYTGlidHY3dkZL?=
 =?utf-8?B?SXlISHZ6cEZISDlQcUh6eDhkclhGUnplNTN2bWxNVlR2MUhCVzNVSU15RjMy?=
 =?utf-8?B?U0wyVVlZS0pDTjIzOE5LYWxLdnp5VkczcU5VWS9YZGhxVmhmb1ZmUGhXNDRN?=
 =?utf-8?B?S0J3TlhYeHlZSmZHSFhuMGh2L0oxcGs0TG12aklEcERFS2xMSlFCVUxDdE9N?=
 =?utf-8?B?cFU0V0RwZm94TGVBWm84RnVVeXMrakN0VkxKNmx6dk5hWHprTjhyUkxjWjla?=
 =?utf-8?Q?qF65JD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUFsQVdNSVllWU1RNm0yM0lNSmZwV1JzcTg0OTNiQ3F5WWRnZkwyNkJYR0xD?=
 =?utf-8?B?bTZFcU5mOVRmMzFSd2kyeW9SWVNkK1FIVnpzd0FQUWt3b3BmQnpVQmFpUmpS?=
 =?utf-8?B?Y2lhSlA2SkhXUlRIaXp4UXJnUldOQVFIT1FBekpMcGJ5aXdCVU90dWpXZEpx?=
 =?utf-8?B?ZlFQYjZ5NHFDWkptdUZnM1F0d1BMbGRqZ0RtMjdqTW5tSjBLajJ6aGJNdHM5?=
 =?utf-8?B?RjVnaTZLb01sN1RXR3RlN3RMemR5M0dvMWJIMGhhMWIzT1JBTmlMMHdkTXky?=
 =?utf-8?B?eklpTkY1NS9hL2dzUnp5dm5naDhUQTR1R2FXaThsZGxEVUhnMys3YncxNVJP?=
 =?utf-8?B?VERaMW4xbVk0bXozNlByWTVzUkpVbzc3V1hxMXNBWkpXYUs4T1lsNHhGbFNn?=
 =?utf-8?B?cytwUXV2Wit5eitHKzdWaU9JTE1iSmZDMWNSQ2JIQjUzbXNCbG81QmhVTit6?=
 =?utf-8?B?cGI4a0pVcXZxeWQzU2ZDYmhjYk40OHZtNnI4NUcycFQranFycFZibTVQaHYw?=
 =?utf-8?B?OGppTWZuQk1obC8zbElncjFaV3dHL0haR3RjdUtncGdTNHlGYVNUWG1GSmU1?=
 =?utf-8?B?UnZXZ0c0Vy9PMFk0TlE1U0ZpNzZ5YkJTbUJtRWRPVG53MXUwaGZUWnp3VGg2?=
 =?utf-8?B?S0FLT2Y0S0VLcDBmakhWUExvUUVlbFE3RGpNRVQrMHVBZDV2NFI3NjliRmNG?=
 =?utf-8?B?NERSZVVIM0JNM2QvR2UwN041dHRUY3JCb0ZKbVNISHdXT3JUUExFdS8ybE9q?=
 =?utf-8?B?MFBraHVxVkVhTEJlK2VZSkExdGtEbms5bFVaMzdJYnZxa3pnZlJGcDlQaXp6?=
 =?utf-8?B?NWZCY01vS010di8vbDBlTGJXbkx0SFhCOFZ2R2JmYnZJOUFERkg2cHpWU2V6?=
 =?utf-8?B?RlN3WlRyeDJwN1dNZ3JTaVlMeFd3bndjUkNiZ3lCWkRrbHpoYlNWSFBZeHcr?=
 =?utf-8?B?ZHdyMUtKd01ReVMyaXNlVFJzbEhHRmkvSVNPYnQyUVNaY0NZSFE5Qjk1UE9W?=
 =?utf-8?B?Zk1NdTNzWGRGQVlkS1FqakdOcTJBM1E4NUlTM0w0WEt3bnJuQ1NXc3h3MUs2?=
 =?utf-8?B?ZHhlUEhyL2xHL2lBNUt6UDdwNjJFdlg5Ymx1OTZJc1hGYnZDRy84YXF0ckRF?=
 =?utf-8?B?YUdEUEphcGhsRzBna0RXd3VmOGNYMXFtbUdJY3c3SDBwQ0FTdEVHZlZlM3Zq?=
 =?utf-8?B?RjUweWJYUXRwdEE2K0gyVkZaMFduVTlINi9IcERTOHI2bm5sRjJvU0VvTWdJ?=
 =?utf-8?B?aTdDcmJVL1Q0THh5UWJGUjYyL0JmSmUzOWRNZGg5UW5zWnRsai9Wd2JXOEhx?=
 =?utf-8?B?Z3czbDdxeXhlUGVzb0gwNlIrakFGT0pHOTNySW1XZHVaeXVUYldUUmhnOE1a?=
 =?utf-8?B?RUVSU2ZVNlNZeTgvUGpKQjRUUXBkUjQyTjFtblJxb1k5V1ZBMTJYOXlvMjFP?=
 =?utf-8?B?VmhoMW4zZERDVW5JMDZIbUkyRjNkQVhSLzVWVUlweHNkNStjaDNqemJ2MUQ2?=
 =?utf-8?B?dHFGbU50QmdOcGlUM2FENDBYelBaS1llbEZ6ajhacWM3K3FqSGwycGRjTkZW?=
 =?utf-8?B?OFZacXR4dTdsMXFqbkIwWFVjVWM1MllEamp0TTF3TmZwTno0b2IyU3lSSXVa?=
 =?utf-8?B?VDFGSVpsUFltd3NaZUtXdVJ1T08yQlpvSSs2emlFb0VKUzRBZ2txWGd3WnZl?=
 =?utf-8?B?UlFqemV6YVpSZW5QcDkvcmFWWHd3M0puT290dDBKWHFXRVNQTG5pbk9oME5J?=
 =?utf-8?B?S3poYzE4c0FUQTdJRVpWUTdkMzVGcktmcXhNR0k4Q0F3SXFzNnIxTzdCTTVs?=
 =?utf-8?B?Mi9xcHltT3ovTjhvdEJ3U0c0WEJxZktWMDdxVkN6dVVrZmRUNWo5ZTlpTmw4?=
 =?utf-8?B?cmk5eUZGZzBROTBPS1RwdzF6dzM5R2piU3plaE96K3QwbksrRHFCbGJCek1D?=
 =?utf-8?B?L0dWUDlIM3Rib1ZxMTFtcXAvdk1tUityKytjeEJUNDc5VEJVSyt6U3dBem5Z?=
 =?utf-8?B?Rk5keFVVaVRYK3pqMDFtSlRrWjFDNzVvcEx2ZW9LQzJxWUhvbEhvaE1SV01z?=
 =?utf-8?B?bzRBa21qYXozbWNTenFGS1VDanVDWkNmc3JGS1FOMC83OVA3YzBJdVlTRDVo?=
 =?utf-8?B?TXJBK2QyWUtDWGdEckIrT00yK0Z4aHZRL2hhQWNYMTU2YVo5YXVJUHE0d0p2?=
 =?utf-8?B?aVVOMlNZVkx3YXd0bzhPTkdCeFFsZ0N2UmNXaXVPNUtoZUU3VlIwSEdwL1Qv?=
 =?utf-8?B?Z3cwcWlzYnN5YTk1enpTYWFmWXFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C51A3AF983283741A15E16FE522DA77D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f3914ca-6286-4cf5-55ec-08de07c9b103
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 06:53:17.2549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QXr3Njb+OPT0p1S0UqKP6oZrEkImyKKyXV4FycJP+6suGl59gsfY51cquE4ikU5sg08sRq0isvOvbKDgS+4CavBP47862zrGYUypNCDI83g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
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

T24gVGh1LCAyMDI1LTEwLTA5IGF0IDE0OjMwICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQ3VycmVudGx5LCB3YWtlIGxpbmUgbGF0ZW5jeSBjaGVja3MgcmVseSBvbiB0aGUgdmJsYW5r
IGxlbmd0aCwNCj4gd2hpY2ggZG9lcyBub3QgYWNjb3VudCBmb3IgZWl0aGVyIHRoZSBleHRyYSB2
YmxhbmsgZGVsYXkgZm9yIGljbC90Z2wNCj4gb3IgZm9yDQo+IHRoZSBvcHRpbWl6ZWQgZ3VhcmRi
YW5kIHdoaWNoIHdpbGwgY29tZSBpbnRvIHBpY3R1cmUgbGF0ZXIgYXQgc29tZQ0KPiBwb2ludC4N
Cj4gDQo+IEludHJvZHVjZSBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19sYXRlKCkgdG8gaGFuZGxl
IGxhdGUtc3RhZ2UNCj4gY29uZmlndXJhdGlvbiBjaGVja3MgZm9yIERQL2VEUCBmZWF0dXJlcy4g
Rm9yIG5vdywgaXQgdmFsaWRhdGVzDQo+IHdoZXRoZXIgdGhlDQo+IGZpbmFsIHZibGFuayAod2l0
aCBleHRyYSB2YmxhbmsgZGVsYXkpIG9yIGd1YXJkYmFuZCBpcyBzdWZmaWNpZW50IHRvDQo+IHN1
cHBvcnQgd2FrZSBsaW5lIGxhdGVuY2llcyByZXF1aXJlZCBieSBQYW5lbCBSZXBsYXkgYW5kIFBT
UjINCj4gc2VsZWN0aXZlDQo+IHVwZGF0ZS4NCj4gDQo+IENoZWNrIGlmIHZibGFuayBpcyBzdWZm
aWNpZW50IGZvciBQU1IgZmVhdHVyZXMsIGFuZCBkaXNhYmxlIHRoZW0gaWYNCj4gdGhlaXINCj4g
d2FrZSByZXF1aXJlbWVudHMgY2Fubm90IGJlIGFjY29tb2RhdGVkLg0KDQpOb3cgYXMgd2UgYXJl
IGFkZGluZyB0aGlzOiBDYW4ndCB3ZSBqdXN0IGRyb3AgY2hlY2tzIG1hZGUgZWFybGllciBhbmQN
CnJlbHkgb24gcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUgY2hlY2tpbmcgdGhlIHZibGFuaz8NCg0K
QlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0
aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IENjOiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHzCoCAzICsrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jwqAgfMKgIDkgKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmjCoCB8wqAgMyArKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA1MSArKysrKysrKysrKysrKysrKysrKy0tDQo+IC0tDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCB8wqAgMiArDQo+IMKgNSBmaWxlcyBj
aGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IGMwOWFhNzU5ZjRkNC4u
OTRjNTkzYmJlZGY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gQEAgLTQ1NjAsNiArNDU2MCw5IEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRpX2NvbXB1
dGVfY29uZmlnX2xhdGUoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKgCXN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBjb25uX3N0YXRlLT5jb25uZWN0b3I7DQo+
IMKgCXU4IHBvcnRfc3luY190cmFuc2NvZGVycyA9IDA7DQo+IMKgDQo+ICsJaWYgKGludGVsX2Ny
dGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpDQo+ICsJCWludGVsX2RwX2NvbXB1dGVfY29u
ZmlnX2xhdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gY29ubl9zdGF0ZSk7DQo+ICsNCj4gwqAJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiW0VOQ09ERVI6JWQ6JXNdIFtDUlRDOiVkOiVzXVxu
IiwNCj4gwqAJCcKgwqDCoCBlbmNvZGVyLT5iYXNlLmJhc2UuaWQsIGVuY29kZXItPmJhc2UubmFt
ZSwNCj4gwqAJCcKgwqDCoCBjcnRjX3N0YXRlLT51YXBpLmNydGMtPmJhc2UuaWQsIGNydGNfc3Rh
dGUtDQo+ID51YXBpLmNydGMtPm5hbWUpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGluZGV4IGE3MjNlODQ2MzIxZi4uZTQ4MWZmNGM0OTU5IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC02OTc5LDMgKzY5
NzksMTIgQEAgdm9pZCBpbnRlbF9kcF9tc3RfcmVzdW1lKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ICpkaXNwbGF5KQ0KPiDCoAkJfQ0KPiDCoAl9DQo+IMKgfQ0KPiArDQo+ICt2b2lkIGludGVsX2Rw
X2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJ
CQkJwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+ICsJCQkJwqAg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUpDQo+ICt7DQo+ICsJc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKw0K
PiArCWludGVsX3Bzcl9jb21wdXRlX2NvbmZpZ19sYXRlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsN
Cj4gK30NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBpbmRl
eCBiMzc5NDQzZTAyMTEuLjBkOTU3M2NhNDRjYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBAQCAtMjE4LDUgKzIxOCw4IEBAIGludCBpbnRlbF9kcF9j
b21wdXRlX21pbl9oYmxhbmsoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
DQo+IMKgaW50IGludGVsX2RwX2RzY19icHBfc3RlcF94MTYoY29uc3Qgc3RydWN0IGludGVsX2Nv
bm5lY3Rvcg0KPiAqY29ubmVjdG9yKTsNCj4gwqB2b2lkIGludGVsX2RwX2RwY2Rfc2V0X3Byb2Jl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGJvb2wNCj4gZm9yY2Vfb25fZXh0ZXJuYWwpOw0K
PiDCoGJvb2wgaW50ZWxfZHBfaW5faGRyX21vZGUoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jf
c3RhdGUNCj4gKmNvbm5fc3RhdGUpOw0KPiArdm9pZCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19s
YXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiArCQkJCcKgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiArCQkJCcKgIHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlDQo+ICpjb25uX3N0YXRlKTsNCj4gwqANCj4gwqAjZW5kaWYgLyogX19JTlRFTF9E
UF9IX18gKi8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IGluZGV4IDIxMmJkMjQ0YmVlZC4uZGNhYjQxMjdiMzk5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE0MDUsNiArMTQwNSwyMCBAQCBpbnQg
X2ludGVsX3Bzcl9taW5fc2V0X2NvbnRleHRfbGF0ZW5jeShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQ0KPiDCoAkJcmV0dXJuIDE7DQo+IMKgfQ0KPiDCoA0KPiAr
c3RhdGljIGJvb2wgX3dha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKGNvbnN0IHN0cnVjdA0KPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiArCQkJCQlpbnQgdmJsYW5rLA0KPiArCQkJ
CQlpbnQgd2FrZV9saW5lcykNCj4gK3sNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2Rw
X3ByaW9yX3NjYW5saW5lKQ0KPiArCQl2YmxhbmsgLT0gMTsNCj4gKw0KPiArCS8qIFZibGFuayA+
PSBQU1IyX0NUTCBCbG9jayBDb3VudCBOdW1iZXIgbWF4aW11bSBsaW5lIGNvdW50DQo+ICovDQo+
ICsJaWYgKHZibGFuayA8IHdha2VfbGluZXMpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAr
CXJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+IMKgc3RhdGljIGJvb2wgd2FrZV9saW5lc19maXRf
aW50b192Ymxhbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoMKgwqDC
oMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiDCoAkJ
CQnCoMKgwqDCoMKgwqAgYm9vbCBhdXhfbGVzcywNCj4gQEAgLTE0MjgsMTQgKzE0NDIsNyBAQCBz
dGF0aWMgYm9vbCB3YWtlX2xpbmVzX2ZpdF9pbnRvX3ZibGFuayhzdHJ1Y3QNCj4gaW50ZWxfZHAg
KmludGVsX2RwLA0KPiDCoAkJCQkJwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0
YXRlLmZhc3Rfd2FrZV9saW5lcykgOg0KPiDCoAkJCWNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9f
d2FrZV9saW5lczsNCj4gwqANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9y
X3NjYW5saW5lKQ0KPiAtCQl2YmxhbmsgLT0gMTsNCj4gLQ0KPiAtCS8qIFZibGFuayA+PSBQU1Iy
X0NUTCBCbG9jayBDb3VudCBOdW1iZXIgbWF4aW11bSBsaW5lIGNvdW50DQo+ICovDQo+IC0JaWYg
KHZibGFuayA8IHdha2VfbGluZXMpDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0KPiAtCXJldHVy
biB0cnVlOw0KPiArCXJldHVybiBfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY3J0Y19zdGF0
ZSwgdmJsYW5rLA0KPiB3YWtlX2xpbmVzKTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGJvb2wg
YWxwbV9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gQEAgLTQzNDYs
MyArNDM1MywzMSBAQCBib29sIGludGVsX3Bzcl9uZWVkc19hbHBtX2F1eF9sZXNzKHN0cnVjdA0K
PiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgew0KPiDCoAlyZXR1cm4gaW50ZWxfZHBfaXNfZWRw
KGludGVsX2RwKSAmJiBjcnRjX3N0YXRlLQ0KPiA+aGFzX3BhbmVsX3JlcGxheTsNCj4gwqB9DQo+
ICsNCj4gK3ZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gKwkJCQnCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRj
X3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsJaW50IHZibGFuayA9IGludGVsX2NydGNfdmJsYW5r
X2xlbmd0aChjcnRjX3N0YXRlKTsNCj4gKwlpbnQgYXV4X2xlc3Nfd2FrZV9saW5lcyA9IGNydGNf
c3RhdGUtDQo+ID5hbHBtX3N0YXRlLmF1eF9sZXNzX3dha2VfbGluZXM7DQo+ICsJaW50IHdha2Vf
bGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCj4gKwkJCSBwc3IyX2Jsb2NrX2Nv
dW50X2xpbmVzKGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmlvX3dha2VfbGluZXMsDQo+ICsJ
CQkJCQljcnRjX3N0YXRlLQ0KPiA+YWxwbV9zdGF0ZS5mYXN0X3dha2VfbGluZXMpIDoNCj4gKwkJ
CSBjcnRjX3N0YXRlLT5hbHBtX3N0YXRlLmlvX3dha2VfbGluZXM7DQo+ICsNCj4gKwlpZiAoaW50
ZWxfcHNyX25lZWRzX2FscG1fYXV4X2xlc3MoaW50ZWxfZHAsIGNydGNfc3RhdGUpICYmDQo+ICsJ
wqDCoMKgICFfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY3J0Y19zdGF0ZSwgdmJsYW5rLA0K
PiBhdXhfbGVzc193YWtlX2xpbmVzKSkgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0s
DQo+ICsJCQnCoMKgwqAgIkRpc2FibGluZyBQYW5lbCByZXBsYXk6IHZibGFuaw0KPiBpbnN1ZmZp
Y2llbnQgZm9yIHdha2VsaW5lcyA9ICVkXG4iLA0KPiArCQkJwqDCoMKgIGF1eF9sZXNzX3dha2Vf
bGluZXMpOw0KPiArCQljcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0gZmFsc2U7DQo+ICsJ
fQ0KPiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRlICYmDQo+ICsJwqDCoMKg
ICFfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY3J0Y19zdGF0ZSwgdmJsYW5rLA0KPiB3YWtl
X2xpbmVzKSkgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCQnCoMKgwqAg
IkRpc2FibGluZyBTZWxlY3RpdmUgVXBkYXRlOiB2YmxhbmsNCj4gaW5zdWZmaWNpZW50IGZvciB3
YWtlbGluZXMgPSAlZFxuIiwNCj4gKwkJCcKgwqDCoCB3YWtlX2xpbmVzKTsNCj4gKwkJY3J0Y19z
dGF0ZS0+aGFzX3NlbF91cGRhdGUgPSBmYWxzZTsNCj4gKwl9DQo+ICt9DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCA5MTQ3OTk2ZDZjOWUuLmIx
N2NlMzEyZGMzNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5oDQo+IEBAIC04Myw1ICs4Myw3IEBAIHZvaWQgaW50ZWxfcHNyX2RlYnVnZnNfcmVnaXN0ZXIo
c3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiDCoGJvb2wgaW50ZWxfcHNyX25l
ZWRzX2FscG0oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgY29uc3Qgc3RydWN0DQo+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiDCoGJvb2wgaW50ZWxfcHNyX25lZWRzX2FscG1f
YXV4X2xlc3Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoCBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+ICt2b2lkIGludGVsX3Bz
cl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICsJCQkJ
wqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgDQo+IMKg
I2VuZGlmIC8qIF9fSU5URUxfUFNSX0hfXyAqLw0KDQo=
