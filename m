Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD6FBDFE7E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B5610E8A0;
	Wed, 15 Oct 2025 17:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTT90e++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C564C10E8A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 17:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760549998; x=1792085998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DApSLXcOd5pBYg6JjPzGHvKX0si6e32mmZw1EZXYJm8=;
 b=gTT90e+++K+Axh8C73WHoNmoPpWIu4u/sGCqjBMwD+PCy08KSzQFmE+1
 J3bx6ScAoNqBlJCVPWuXhSOGdzVwORBqcPiVh0AfC9KzmJcfp1vtuuwzy
 p9bUckx4zofIf4wNLpCix5x6wXYFIOltp2MXEDZ7jwZOzSLktExAahn58
 KOQ6m8JoZ7aageaoNTskwFzDXNmb/YwnWBAdATe8leDrIOERGAIcxydkg
 Qb2820DJtXVIgsWxKmSNA+D+C1UI5lzMUbfHVtdBUxhwdP2Fq8CfwT30S
 qPMWvLUx+MXKKou+9FPJ4utRdM4wKnqh2oAW5j3Djc7qAf5K7J33XBuol w==;
X-CSE-ConnectionGUID: auZLbI4cS5CgZJTWib2NNQ==
X-CSE-MsgGUID: P4urKaA5QnCpfFZd4L75Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62633756"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62633756"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:39:57 -0700
X-CSE-ConnectionGUID: mfbjFHxuTnyvHPI18twb4g==
X-CSE-MsgGUID: sISfBgsIQ3ePmAs2UgQynw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:39:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:39:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:39:56 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:39:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bhHdZC808i8+VKa8YaAhGKyT5syGvS2zIGcDo9RqngPy0Fn9l2UMVnBKPnrywYRCzzV8lsoTOEk+7seybprMy1Na1bM/J00RU75Z2uBqKN2wA2snhHyG1/7iT64fBVf+Bdgk661JsNMEOupXD3veCChFUIPaBymUbVvrAXgHsZL/jC5UaEY0dohAcoDlFtMofFGFrjWBGScqjEsi1+CsM/H7tRvK+gZFDIrU+3Kjz4dtM0hWuHSGRtDfSO5pV6Mn9kfogocpnMdBqUzuq5joD5YFAJk3t3VBqShFqoUw2HCqMwpNzkdaMV3nAWCQDinl0rhzu4L/pJZr8/IE4LKlGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DApSLXcOd5pBYg6JjPzGHvKX0si6e32mmZw1EZXYJm8=;
 b=J8IaTHja88pVLnrWi9fPT1FN6v0U9jkgf/6zuABP6foXyTBIOxdc4FK2Fys+D1UJDtG4uhcOiUDJowjCMQ7YlbEuvzOz7I1DGHEQEQ+mY/4qWnnqTwsJYrANL0cWA+u3n1gdSXQeAcnbWwZEA6wShyQhvTxG1gURyRykLANdPTRBKfzbFuvgpD/WImntNYsCRVnrWCPXjWDpZqE7idLikXf96pwBtjadeo9ByvWJo2Dv1l73Qrw4RboGB4Cd3Lw/bWzXmXY0a30dZwwq3IqLf3YdQjBVVFKZXYQupJyR+IFt7EwhZ/GS28vInpyu76iTPNEFpk9sbgRw2Ur3+Le66A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5254.namprd11.prod.outlook.com (2603:10b6:208:313::16)
 by SJ5PPF92ECB6678.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::846) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 17:39:54 +0000
Received: from BL1PR11MB5254.namprd11.prod.outlook.com
 ([fe80::bf0c:ea27:d51f:1625]) by BL1PR11MB5254.namprd11.prod.outlook.com
 ([fe80::bf0c:ea27:d51f:1625%5]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:39:54 +0000
From: "Poosa, Karthik" <karthik.poosa@intel.com>
To: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Subject: RE: drm/xe/xe_debugfs: Expose G7 state residency counter through
 debugfs
Thread-Topic: drm/xe/xe_debugfs: Expose G7 state residency counter through
 debugfs
Thread-Index: AQHcPfj5URQVBdmwREq6bXDRhf6JV7TDeXpA
Date: Wed, 15 Oct 2025 17:39:54 +0000
Message-ID: <BL1PR11MB5254BD6EA299D5228E3F53BBE5E8A@BL1PR11MB5254.namprd11.prod.outlook.com>
References: <20251015195200.34440-1-mohammed.thasleem@intel.com>
 <BL1PR11MB52546274B01A3ACB1BA13B17E5E8A@BL1PR11MB5254.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB52546274B01A3ACB1BA13B17E5E8A@BL1PR11MB5254.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5254:EE_|SJ5PPF92ECB6678:EE_
x-ms-office365-filtering-correlation-id: 664e5abd-7789-47e6-3013-08de0c11da10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dVFuaVFRd3owWWsvSHJkTW5pKzlXVVdUQVZMdUlmdWpJKzdwYXBVKy9XY2dh?=
 =?utf-8?B?TnRqN0JabFBEL2prRmx4ODlrdlk3Y0N1WkN6bXUzZzl3Y3hTWlZJSzFlSENa?=
 =?utf-8?B?ZkRrQVZhempKZ1p2alB3VTU4TUJqNGVBL0V0TWNVYmRCaDUwaDZHcEExZDVC?=
 =?utf-8?B?ZDVvaDF2OUQyUUdjNkwySmFJemoyMGRuUlF5dXR4OWZQNnlwUU5Kc0ppeTBV?=
 =?utf-8?B?UUt5eDA1a25uZ3R5NExtZGZkYmthTlNINXVON2x6UGZmMVY4VDBuZldIT3Br?=
 =?utf-8?B?UVYrTHo4M284S3RCdnlmeWoxcjdvZDNIU2pKVUozSVZLTGF4akk4WGhSL3pv?=
 =?utf-8?B?a1ptQ0pZY1k1MkZJSkU5QjNoc21xWHcwcjRLeDFOWWZWQXhaaUhvZlZGMEpl?=
 =?utf-8?B?RjlRRmZhN2lZUkkyRUlWSnNPbkpQdk9JbFlMWXBCZU9GV2JSM1NSQWV3dkJR?=
 =?utf-8?B?Qk11MHhaWFFibmlEbUdBVm5KckxSaFFqN0ZyaUdNSUJPZzBnbUhRTlRpays4?=
 =?utf-8?B?RWZkMWJ2MEpuMUFxbWxhRnJERHcyc3V5d1BTM05kNXZ1RjF3Q1gvZFNFNSsz?=
 =?utf-8?B?VEJyVnZzVnVqQ2FBdkNHNkRMcDVzeHVYOVRPeGQxbWlmN1BVQ2plRVIwY093?=
 =?utf-8?B?aS9oSVRreDVNZzVJYmtROCszZXNQNjNpUEFGVzFBSHZ2czVuWU1jWVA4TTI0?=
 =?utf-8?B?RzcwS05ndWFqcFN4eU5VQ3Vid3hERnFRQXdHK2E3YUZ2ZDJEOTFVVURqYkxl?=
 =?utf-8?B?bHJMMm9TMTNlcGJYaGhqbkVReW8vMnkrUFhjN3NWTUluWDdwMjZ5TFhuVTNs?=
 =?utf-8?B?cEFiNmlFcFNZVGZJR0tjVWFITUJTcHVzOStXUm5ZYVpvU2tqa1FVaUxxL2c3?=
 =?utf-8?B?Nlpad0Yva2w2NEY1d0JuOWl3cGFiK1o4cllYaE9aTVo3ZDJUdWVYR2hVcGo1?=
 =?utf-8?B?NkRMeG1oU2NWbXhkVk0xZk1DcG05bEwwWk82eEJYS0psK1FGa0RlcW1ndEJX?=
 =?utf-8?B?OXcxekQ2SE00dHg5cGhKd1gwZlJZV0twQU5BM0E2YWtZaEV3Q3NnY3pkTDBX?=
 =?utf-8?B?RGxCS1RTRnVaME8wRmRIVDBFODZOOWwwNGlhaWJaMjU1aDRqTE9IOVhvYnJm?=
 =?utf-8?B?R0hFcDcyam43Zk90dXdud0g2dDFIbEE3eWFXekYrRERBQzJwOHlMVi9oTTN4?=
 =?utf-8?B?SThMOEpEMGdDcHQxWk5oRkJuUEtSNnhWMnMzcEUzWTV4bVBFZXVYSUU4cUNa?=
 =?utf-8?B?cExadVA0UUdLSE1BVHFseE91dGJjNmNHT0xGdFdHbUFDRTI5WGJYZEVNc2Ux?=
 =?utf-8?B?ZGJvTVlpbFZ4dUhCR0R4ZUJWcndFdXdPdUFnMUNObGM5L25ocTQvVXVzZ2xs?=
 =?utf-8?B?TWtUMEtleHhOcHdvRTlXWGlzNkdrN2lucHRjZ08vK0d6dXkvTU1TVWs4Qmd4?=
 =?utf-8?B?Wm9IZ1VmdjJ2L0JURDA3blJaK1hndzZ2dXhDV05GTm5YNnFjL0dGeUJFeGs4?=
 =?utf-8?B?dFpSZnFqYW4wcEozVjdwSEFhbm9mMEErYXN0bGlPQzBMam8vcUVPaEd6enVo?=
 =?utf-8?B?VmhBdDl2VVNTQW02TGptekJIR1oxcHJVVnBOdXVTeWtIY29yL2RMVFVxSFRF?=
 =?utf-8?B?TUNtMmFjd2xtZXlWSEhPMzVDdmxLbDRUREJoSTlXTWtuK09qbDZMVGRzZUxp?=
 =?utf-8?B?Lys2ZWF6U3NTczJBM1V1SUJaUC9FUU90SzJ4UjVEL1hwOTZlVHErVmh4RGww?=
 =?utf-8?B?Z3Q3MFZaN2pGS08xSHRkSS9jTDh3MTdkbGZJZ25KUkczZS8xTitpZWdiS0U4?=
 =?utf-8?B?dEVsdXp2azNyazVYUzlhZ0RTdHFhM0JxbnhWa2pOUGJjUGFZQmF3VmZNT29x?=
 =?utf-8?B?YWhpeit4OURybGZjRS9PdWl2OXp2ZGdkdXpKcHNxUzFOdW9iS0VxRldhU2hm?=
 =?utf-8?B?ZFJpUitKc3Q4cXJ6Z0wxejg0Nmg5aFJ0c01XYnZNQnRxSWVTYS81WTc2djZG?=
 =?utf-8?B?K2p0UjBmbVM3MTNFeEp6RUdFdmdyc2VkWVAwdzJkdXlpZUlzdUJ2elY2Mjcv?=
 =?utf-8?Q?lCX91Y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDdLaDNpc052ZU0xTWplV0ExQ1Bld0UxZkZoUHc5MFE3R2ZxTTNsSEZPMFRl?=
 =?utf-8?B?aUd0YmE2dnpSMk5QL2JFcUVyNmV4TXVOREFQUjBQcDY5WG92cGFGVWtYRmVr?=
 =?utf-8?B?STY2V09xQ2huZDJySFZEbHk1cGIvaXlFWC9mc1NBR0kyQUtuUmUzcnlOMzBV?=
 =?utf-8?B?cGpxQkcyemZ2UHF2aDFpanp6VmFUWkZOZkZtYkhZYkUxUm9sSFZFdmtwc201?=
 =?utf-8?B?WE9yWGptRDd6dEdzVDNSRjg5ZTdjMi9xWVZIMkxZZXhTT3lOVm5oTUR4UVZy?=
 =?utf-8?B?S3A4K1VpaDVsenI0S1ZWdGVHUUg0aWNpUDRlZWhRS0dLK0RsUVF1Q0JpblZv?=
 =?utf-8?B?c1BIUnRtOU1ONlNET0FJQXBOWjB6OGtBWHJNdkZPYTFGa2o4T2lib2V4MnRG?=
 =?utf-8?B?NTQ5YVlhMnprRi9uTzRQZ25hdmRwaml3YzI4ejlPSHk5UWh6MkphcGtXQnVZ?=
 =?utf-8?B?ZDE2L3M4UWdIaHZucTRIV01qQnFiMUhxdUpGcmZqRW04UWlQY1g4RFJrQWFh?=
 =?utf-8?B?U0xsRTlIZWRnQ3llbzNtM2RpWm84cENDZFhyTVFkU1NmZkdZZ3k2WEx3YVZS?=
 =?utf-8?B?bEdCYW9PS2MyRFdwRVhOaHcxUncxTUpNZjhuOUxVZytJMUNGUHdvZVljdEhh?=
 =?utf-8?B?djNkSU1CbHo0YU5MU1hEUVdTa01IazNPL3U3NHlhazFwVGh2L0Q4NEdObXhq?=
 =?utf-8?B?MFVlRTUwVi90SFg5QlpsSWlhdjJnTy92NU1vVDcwTmZnMXFPNEkwQ3lBbmhJ?=
 =?utf-8?B?azdoOTNKYkpKaVFKMFZvK2RsTTFXT0VMbXFGT0RlY25sQ3Q5WkozTklFZTRv?=
 =?utf-8?B?Vjc1aVZwOUI0VWE1dU1McTRsUURnZlF1N2ViY1NHK0t1RUtCZnNyOWgyMXRi?=
 =?utf-8?B?U3JtejNLVkVOY2RGREVHOS9vUTh0K1JGMDFEZkxoSjVSdVpLRHRiTVpoNTJR?=
 =?utf-8?B?dHBxK1FYN0ZHSzZId1ZJbDFBaVVIOEFZRnJyWlhjUFNjMW1qU1ZJby8vaElk?=
 =?utf-8?B?K3lmVzEydEVLUVVxcWp5R1pTdTNIdmhRS3N0alhPSWFxeUw0c2hPZ05KV0dI?=
 =?utf-8?B?NkdWeGFsdlhUYVlqeWY3cXI3MHdXQjg1bnlUbDErWVBpb3lSdWc1emFtRHBC?=
 =?utf-8?B?ZXNDMmZ6b2NlMlpXUlVYYXlvdEx4dGpPOWlVdnRieCtXOUdJUU5GUzZQL2xl?=
 =?utf-8?B?ZUxhMURqY3pBRGlwNGJLNnk3QXd4UGdjK0p6Vlh3UWJoTVQzK1N4SThVTm94?=
 =?utf-8?B?QUpoTXZjQnE3akdla1p2djFpTWFjM24xL1dqdVkxYUJkMmVnbEJFbXU3VmJM?=
 =?utf-8?B?dWM5RjRLM0ljbWpmM1FFbXZ4WnR1OUpoQjFpNm5ydmQ3L21qeVdRb3cySThK?=
 =?utf-8?B?bUhGbHBpN0wxb3AvTW81YWpPN3g0WnR6Zlo5SWU5LzR0cW96Q3RGNjZqdVIr?=
 =?utf-8?B?dVlJOWtTcmdLMk5QSTBldnZkcTRaUmpyMEd1ZERnN1pkL3hwdnZSS3FrMmh0?=
 =?utf-8?B?MEZjKzZwMVJ6MlVSaXp0VHlPd0FIYUIwUG1RYVVRLzAyQmxlVVRURzhOZCtx?=
 =?utf-8?B?TEtVZ0k4VGJoUzN3Y3BoSExkL3VzSFpyRTBNQXRBMHZUS29Pc3BhbC8vVjc2?=
 =?utf-8?B?NlFrenNHelBERjM3bWF2aVpzcmdpMExubmxTQ1hIS1lXbVNDYTQrSE1tMU1D?=
 =?utf-8?B?U05HbWFVa1pRZXlQa0M5cnJiUkFCTmZwQ01UeldwT25MelI2SjdIL2ZuczV6?=
 =?utf-8?B?OTJnZWhXSUNSS3poWk90WS9uc1RTcnhyM3E0MWpaYnZzYXRYeWVyNTU1dFhT?=
 =?utf-8?B?cU1XdG5tSGhCTU5qZkhKZTg4NTh1U3FxeGk2a3RTU1hDb09xZmthd3ZhSmJ6?=
 =?utf-8?B?WWFJVFU3WkVaRXA0ZGNueDljbnN6SDVoMjNJcVRrT2VYMDZlWDFnMHh5QWdI?=
 =?utf-8?B?WWFrTjhwcEdJMHhpNWhJWWpBa1huYnlJQ1RwV1dycWt2dHJJRmgyV0lxeVZV?=
 =?utf-8?B?cEpvbTNUSUtIeEMyZCtLYW9Lbjh6ZnFub1g0WVpSKzBiZW5GY0U1Kzd6SzZK?=
 =?utf-8?B?OGtJUWNVMHZqVHZFRDZnV2lDWmZGNVZkemhhOHpnY2Q0dUozYnhNR0NJZ2l2?=
 =?utf-8?Q?oLKZ859Giz8xO6EWOucoYTYlZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 664e5abd-7789-47e6-3013-08de0c11da10
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 17:39:54.5425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CxAsjckt78C0jm11GdjlzIa25TH47583Xuv4TiY0WQn3LA8T3HUEuBRKPz+fg+eTBlJSWYlbLxe45/i6vAp6Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF92ECB6678
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQb29zYSwgS2FydGhpaw0KPiBT
ZW50OiAxNSBPY3RvYmVyIDIwMjUgMjI6NTcNCj4gVG86ICdNb2hhbW1lZCBUaGFzbGVlbScgPG1v
aGFtbWVkLnRoYXNsZWVtQGludGVsLmNvbT47ICdpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZycgPGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+DQo+IENjOiAnYW5zaHVt
YW4uZ3VwdGFAaW50ZWwuY29tJyA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSRTogZHJtL3hlL3hlX2RlYnVnZnM6IEV4cG9zZSBHNyBzdGF0ZSByZXNpZGVuY3kgY291bnRl
ciB0aHJvdWdoDQo+IGRlYnVnZnMNCk1haWxpbmcgbGlzdCBpcyB3cm9uZywgdGhpcyBzaG91bGQg
Z28gdG8gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IA0KPiA+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogTW9oYW1tZWQgVGhhc2xlZW0gPG1vaGFtbWVkLnRo
YXNsZWVtQGludGVsLmNvbT4NCj4gPiBTZW50OiAxNiBPY3RvYmVyIDIwMjUgMDE6MjINCj4gPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb207IGthcnRoaWsucG9vc2FAaW50ZWwuY29tOyBNb2hhbW1lZA0KPiA+IFRoYXNs
ZWVtIDxtb2hhbW1lZC50aGFzbGVlbUBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogZHJtL3hlL3hl
X2RlYnVnZnM6IEV4cG9zZSBHNyBzdGF0ZSByZXNpZGVuY3kgY291bnRlciB0aHJvdWdoDQo+ID4g
ZGVidWdmcw0KPiA+DQo+ID4gQWRkIEc3IHBhY2thZ2UgcmVzaWRlbmN5IGNvdW50ZXIgaW4gZGVi
dWdmcyBhbG9uZ3NpZGUgZXhpc3RpbmcNCj4gPiBHMi9HNi9HOC9HMTAgc3RhdGVzIGZvciBjb21w
bGV0ZSBwb3dlciBzdGF0ZSB2aXNpYmlsaXR5Lg0KPiANCj4gQ2FuIHlvdSBjaGFuZ2UsDQo+IA0K
PiAxLiBBZGQgRzcgcGFja2FnZSByZXNpZGVuY3kgY291bnRlciAtPiBBZGQgRzcgcGFja2FnZSBz
dGF0ZSByZXNpZGVuY3kNCj4gY291bnRlciAyLiBHMi9HNi9HOC9HMTAgLT4gRzIsRzYsRzgsRzEw
DQo+IA0KPiA+DQo+ID4gdjI6IFVwZGF0ZSBjb21taXQgc3ViamVjdCBhbmQgZGVzY3JpcHRpb24u
IChLYXJ0aGlrKQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTW9oYW1tZWQgVGhhc2xlZW0gPG1v
aGFtbWVkLnRoYXNsZWVtQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L3hlL3JlZ3MveGVfcG10LmggfCAxICsNCj4gPiBkcml2ZXJzL2dwdS9kcm0veGUveGVfZGVidWdm
cy5jICB8IDEgKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9yZWdzL3hlX3BtdC5oDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0veGUvcmVncy94ZV9wbXQuaA0KPiA+IGluZGV4IDI2NGU5YmFmOTQ5Yy4u
MGY3OWMwNzE0NDU0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9yZWdzL3hl
X3BtdC5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3JlZ3MveGVfcG10LmgNCj4gPiBA
QCAtMjQsNiArMjQsNyBAQA0KPiA+ICAjZGVmaW5lIEJNR19NT0RTX1JFU0lERU5DWV9PRkZTRVQJ
CSgweDREMCkNCj4gPiAgI2RlZmluZSBCTUdfRzJfUkVTSURFTkNZX09GRlNFVAkJKDB4NTMwKQ0K
PiA+ICAjZGVmaW5lIEJNR19HNl9SRVNJREVOQ1lfT0ZGU0VUCQkoMHg1MzgpDQo+ID4gKyNkZWZp
bmUgQk1HX0c3X1JFU0lERU5DWV9PRkZTRVQJCSgweDRCMCkNCj4gPiAgI2RlZmluZSBCTUdfRzhf
UkVTSURFTkNZX09GRlNFVAkJKDB4NTQwKQ0KPiA+ICAjZGVmaW5lIEJNR19HMTBfUkVTSURFTkNZ
X09GRlNFVAkJKDB4NTQ4KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94
ZS94ZV9kZWJ1Z2ZzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9kZWJ1Z2ZzLmMgaW5k
ZXggZDY3ZTMyZWJiZTI5Li40MTdlNmRmOTVlMWMNCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0veGUveGVfZGVidWdmcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hl
L3hlX2RlYnVnZnMuYw0KPiA+IEBAIC0xNDIsNiArMTQyLDcgQEAgc3RhdGljIGludCBkZ2Z4X3Br
Z19yZXNpZGVuY2llc19zaG93KHN0cnVjdA0KPiA+IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0K
PiA+ICAJfSByZXNpZGVuY2llc1tdID0gew0KPiA+ICAJCXtCTUdfRzJfUkVTSURFTkNZX09GRlNF
VCwgIlBhY2thZ2UgRzIifSwNCj4gPiAgCQl7Qk1HX0c2X1JFU0lERU5DWV9PRkZTRVQsICJQYWNr
YWdlIEc2In0sDQo+ID4gKwkJe0JNR19HN19SRVNJREVOQ1lfT0ZGU0VULCAiUGFja2FnZSBHNyJ9
LA0KPiA+ICAJCXtCTUdfRzhfUkVTSURFTkNZX09GRlNFVCwgIlBhY2thZ2UgRzgifSwNCj4gPiAg
CQl7Qk1HX0cxMF9SRVNJREVOQ1lfT0ZGU0VULCAiUGFja2FnZSBHMTAifSwNCj4gPiAgCQl7Qk1H
X01PRFNfUkVTSURFTkNZX09GRlNFVCwgIlBhY2thZ2UgTW9kUyJ9DQo=
