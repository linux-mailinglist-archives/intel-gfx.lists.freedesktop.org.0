Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2037EBD4CF3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 18:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3EA10E4A0;
	Mon, 13 Oct 2025 16:11:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyR+ahFH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D4B10E49B;
 Mon, 13 Oct 2025 16:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760371881; x=1791907881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LVw82wLqfeXufD5dMrH+yZNkcKcR2DI8uJtAmk/LWAc=;
 b=dyR+ahFHqDaTBwulRoAmlyVLU3CeDX7uUt8ULBp3K1jnVZQZ5G4jTv43
 gxIpdnapKljKkfIm6W3a+WC6XieNNqTObTMJc9f03R3sFfcvb06T1+gpd
 D4sQHrol3RzrOG9avabpK6SRBXMwuC1CDP7tXgL9JxfMSXZsoHp+PL7y/
 kbQocjrm2tP/qgoIlWa434Mq19C2maoREefi5U0XCihnbSqjGZ2MWeuGo
 qNqAVlSmUZeEYIXobvqjk7sh7xg+cdScZ6rcfWRNwv93Rh+IxHIwxHdsR
 pWjMtPPqhgqRYl+Cu2jy4My9M5EHW/HDNU/OLfvynQcyT5qVCw+maZiXd A==;
X-CSE-ConnectionGUID: 3rHU06qIRMW/UhOokHsF3w==
X-CSE-MsgGUID: dOzmjcfJS9WVKu6Yli/1kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="61721612"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="61721612"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:11:20 -0700
X-CSE-ConnectionGUID: tEUzTNKwR/Slx3dky+PKOw==
X-CSE-MsgGUID: Q+k+mOAxRTSWfHL7LvCXng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="181444250"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:11:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:11:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 09:11:19 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:11:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AxOnW7XxlUUFSkoo8lmXCb+1Eo236rd7Rm5VOqVaBjKJ6UXYAnq3VG5qJ7GFMUIWOykcpbqM8nm4ptRxJxEa/uYgHUAFyvmvNvwSeDoDx6jwJDw1tkJF99GmfvpnYLnmnp4CgAt3HK8nQL9JFKByuKFobaN2ZI4RcnC+r9VLhbgb5m43a2Is6neGMLX/UdC3/9OBK0ieAekrXFkQNd07ML+4HE9f3DRoK+AYpCmr36lvOYuGIUNDBFY6WQQQ2UarYjAHRnURWxYIgcYAIqY1FG9DfCRz5dkzcQ05JdFjc69z2sb3V6ZIswt/lLbiBoygL4PPlRO5r0CZyyAsdPCxHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LVw82wLqfeXufD5dMrH+yZNkcKcR2DI8uJtAmk/LWAc=;
 b=lQTdRXjvwE/jIGRM3v4h4TU0Km+z67Wf5PDnbUUwEuoS3rsmoHRkejsNQCW6cn0oNalL6WcfzY1Yn7OOZ57XqwGjJuPeOaObn3ODRBfzr6h7gFRbSaCBEc6Wx4D43UjaNGKOsJ9PVgSHz+3hRgmlBpi9O1cQjSPCXfer0EDc29BzB1adaXGcVn9nwfczTSLzIz6IyiLcWJeSTKvfGwIianOEFMukJcRo+eNbyxqNmBT9YzwRwHKCz0u6htfX801xmI+lBMyWF2TvJLm7QdJTvsy34MZyGg3LRi6Lm9FKcTkF6OuCc0UTWSUXZV5Im+1AyQEDW3BscLiSHYgrOqEwQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM6PR11MB4691.namprd11.prod.outlook.com (2603:10b6:5:2a6::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.12; Mon, 13 Oct 2025 16:11:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 16:11:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 02/11] drm/i915/cdclk: Add prefill helpers for CDCLK
Thread-Topic: [RFC][PATCH 02/11] drm/i915/cdclk: Add prefill helpers for CDCLK
Thread-Index: AQHcOIETtabkZQtMAE2tnUZ3k1bQA7TARVTQ
Date: Mon, 13 Oct 2025 16:11:17 +0000
Message-ID: <DM4PR11MB6360C50FCA9712F63D8B2D3BF4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM6PR11MB4691:EE_
x-ms-office365-filtering-correlation-id: 412bf1a2-e8a4-472a-e247-08de0a732404
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?QjlYYUhTcHlHSldsZ3k1cUNQd2hSWjc0NnVOaXpLdXUxK0RCd1NDT2ZhSTAx?=
 =?utf-8?B?c1Jhc3ovK1U4bU1Xb2hhNEorMEI2Q1h1THBBZGxQektpU3RFVkgrbGlzUlJT?=
 =?utf-8?B?NmRBclpYY3JkclZUQmhMdmtIUkxPdzFUM3ZFUmNhVDZZNGtFTGQ3Q01OR01p?=
 =?utf-8?B?Ujd5MzhLZ0hwWW9iMmtWaTh3THhBVEp1N245cDhDTzljUUZoZndxd2hya2E5?=
 =?utf-8?B?SitUekJVcHMzTmFQcGxTSWFWYUE2LzdqZ1VvU3R2QUlxY1JybGthQ2pkSnhI?=
 =?utf-8?B?eFdkRUtxNUx5NzY3WWNhalZQQkcvbVlBdFRNODVHcEhBenR5c3hHZEJINitI?=
 =?utf-8?B?MGtIQ01qUVhKdDhadVoxNDRlL0plTU8rcTlNNTNnVU1rVXJEbkpTK3Bvem9F?=
 =?utf-8?B?WS8vQzExQXlGRkp6UkF0a0dEbmc4elBwQ2JOb2pRbjRpOHZRTms3OUpSWVo0?=
 =?utf-8?B?TTFISUZ5eGlHbzE2N1MzN29nNFB5TGpNTnplSm9FbWdVeG82aU1KOVpyY3Jh?=
 =?utf-8?B?d2tZeWIvbXFxSjI1eDVsT1p3VUlRSjlZWnFvSjNKWTdJdzlFM2VLNFIyQ3Fm?=
 =?utf-8?B?bnFaa2kvcVZianZ3QXV4dWJTUk1ndUpNUEczbGRjYkp5cjFJdnZaQjJpUjJv?=
 =?utf-8?B?RzdMSUl2bEV6cmp0Y3JTYW9MdmxtM1E5MEFTRHFsRHRjQkhzeUREVVE5OFQ0?=
 =?utf-8?B?TmtSQnFGZmlaS01ZWWM2UGxrRmNQekxZd3hFUXVHNmhUcWQzdUp0b2w5QnRx?=
 =?utf-8?B?Y1BDZWJySGl5YkpheXFoWTlvKzU1dW9xUFFOalNycy9DaHN1cElvR3N6Y1E3?=
 =?utf-8?B?RnVVTXBvU28wb3lTY1hLVWRZejlEdDFVVDI5WHYyRnRKQi9LdENyNkpRcW9T?=
 =?utf-8?B?eHlpOVArZFNpeDIxQllJRnd2cFRxUDcyZVUrdU13YjRZYk1iemRxUHRRcmQ5?=
 =?utf-8?B?NWhXRWtJUkg2d3UxU1NwRDR0YXExOEV1QU41UFRRb1FIM2d3ZDFzeTFpVEdr?=
 =?utf-8?B?UTE4NlNFcXY2MUFNY0RWRnp0Y01pOFlxeHVCTjJ3OXhubUJieThvbTVZZDUy?=
 =?utf-8?B?eE85V3kybllqWitpTzNMZVFZdVNMV0pnMTFlYnUzZTRuL0tCUjJqNURmRHB4?=
 =?utf-8?B?TjlsQ1pvL21jYlcrNVJWMGM2TXRFanlBSHozVzN4ZVNhRVVidjFQdDNGVlFW?=
 =?utf-8?B?RitCTUdrYlBONmIvNTBSVGpETlkzUzdjTUM2Wm50WklGZWlTUno4aCtjam9p?=
 =?utf-8?B?aks5bUxLejAreVBVZW9xcHpvcEFUNnZJSk53YTE0RmcvOEVUa01PVUVVdzVo?=
 =?utf-8?B?TStzN0k0MjlZTHU1Y1FpQkxpbHNnWkV1c3N6enlIWUdzN3JxRnUyV0hNcVRm?=
 =?utf-8?B?cmxIN3V0bis0UVZaamVneEQ2T0tVQjl1c2pmRFBrZVkyYURWVzY4MGptTG9H?=
 =?utf-8?B?d05IdlRpdWg4MjZDaUsranNGZXdWNzJmL0diaGtsMGY3T1A0WWRtSCtMOEo5?=
 =?utf-8?B?N21CQkV6aE1BOUpDVDlENGRyNUVOdWs4L2Jncjk0U1pod2JIb1VJczR1SDdX?=
 =?utf-8?B?eExBNHB6cGtaTzJIendLdk55TlhPZUZkTFdzN2VabjVtekwrN1cxTkJ1OCtL?=
 =?utf-8?B?bkpMSk16MUJzVnp2L2FGMWY0U20xZmRzUnAxbWl1UGw0ck1rWWYvSUJHRFJ5?=
 =?utf-8?B?dEdOdXhMNjVOYXp2c3VpK1pkajdtaG1DdExCM0NSMllmdm00MTZ1NG5TQnNp?=
 =?utf-8?B?QnhkdDRLODh2L05CZEhGWlBrSHF6eWMvbDlJOW5tZFlQcnhXR2ZhcXp4Y2pt?=
 =?utf-8?B?NjBVUVB5WDd2VFBHaXdzYUNRT01EN2d5Q2hUN0ZUTHBqN0s0NldGSXh0dnJp?=
 =?utf-8?B?U2dySVhSajFNdHlhektlR2Q4eE9kUzhRK1htSkxPNFo0Sm9zWXNKcVNJNi9Y?=
 =?utf-8?B?czZzOGJPY0tKbUhuNG44VC9TMXBGZTE2OHVCMUU0VWN5LzhNbkphUEw0UnRT?=
 =?utf-8?B?TmE3Q1BnQ3ZyQUg2M1FoYjVibitsUFBtdWgxcmFENjBUb0EwMVNpOHQ4Nk5u?=
 =?utf-8?Q?bPtijB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0g2V0JaMUZBaE1wb0xLdU1GZjBTSERNUFhrZ3NuLzZ4QVl6OUt2by90c2w4?=
 =?utf-8?B?dWlLaXZkdS9VRUFDcTA4cTZ6R1VRK1F3S0d1cDJFY3FuZTdtZ0p3Qy9YS0ZO?=
 =?utf-8?B?M2lVNW5lWDlRZFdqUFRNbGlsbEtUVzRjSlZmSXhPL1dZbTIxVC82MDI3RnlV?=
 =?utf-8?B?dzJMazZNWFdXWnpxUnd1SnFWdHF6YXM3K1puejRWdU9kSVFiQ1NMMzAzS3E3?=
 =?utf-8?B?NnZIR0pKd2p5WkVHNEk5YnUzMWNzZ0xpTTgzaG1RZXBobXF5MFpNMkhaYjdW?=
 =?utf-8?B?bUNYejdMQzVEa0VvZDZyS2oxeDZPakU2L0Q0ZUlYNkI3SUdkMUttUnZLNmta?=
 =?utf-8?B?dGVja2g4dTBjMFEvaUJvM1NDazNmVXd6RFI0UmsxMERkdU5LSFhDc0VGb2JU?=
 =?utf-8?B?djVnSCtKYnhDS2t1TE44QVpMZnprQ3JTVDJmS1pCV2RCb0c2Q3dINURRaWZx?=
 =?utf-8?B?Umx4ME4wblRhZXp2QURmaFFQY1NVZXhJSW5XVjJZczRjYkR6dkE4SDF1TEcz?=
 =?utf-8?B?bnRZNnRGVEVPRnRxaStlc3dRZWFuKy9kVzEwR1p1Ky9zbmFmbk1aUDR0Nlky?=
 =?utf-8?B?ZklRTjRUSHh1MjNZSFdLR2kzMzEvY2xDczBpbU5OeFpVZnRJdjFhYjBMZWVo?=
 =?utf-8?B?VTkzVTV6MjFEcXZPMlZiaGtNa3haTGw0MXVJcGxnUThXTXY3Z0lrazJ5UFNq?=
 =?utf-8?B?TDZ3ZGxaR1RUUTh2SlZzY1FkZ1RFZFFxaFlra25mSGpCN0VYc043aUhHQkFq?=
 =?utf-8?B?OUVtdEVQNnhsRndMdlBtNlVqa3pUMHVmL0xJdmo0UzM2U2dFaXk1Vm1JaitH?=
 =?utf-8?B?SmNvelJBR2ptdXdMN3liVElOdXVOQ0RWZ25OdFZqSW9pNm4zNzhYbFZZb1JP?=
 =?utf-8?B?b0FDK2ZzNktjdHpzRlNYZEdYdWhGTWFsd2JJRitJc1ZLNTFvQ3kxNHVxSnk3?=
 =?utf-8?B?cjRraEtCUWRCL0lOa3FWNlRMRk0rNWhXM2loc1QwV2UyZFhVZ3NPQXRDT3Zm?=
 =?utf-8?B?Q253bGFnOFlWelc1MTVwOGRtcVgwOTRPK2o5N2M4RTlJSHFraVptcW5NYXNN?=
 =?utf-8?B?ajZLQ0Vqbjk3dEhZcU9aTEJCMjV4a013YmN6UFNoMlRmOXRLcStZUXNhOG9G?=
 =?utf-8?B?RU5ZcjYwRjc1cmRuckRqSko2Q1BCRmE4R3BOM25Ecms1c2x0cys0dUF2ZFJH?=
 =?utf-8?B?cSsvNy96OVhobzJQZ0phcXUrckRyNXVKRUhQb1FSbjhvYW9pd1FZV1c2NXZ5?=
 =?utf-8?B?UW43S3pnK1VBaS90Q3JjS3VXMDdOVVBxcHFZcEwrMVpaQUg5SklNK2JJbzhD?=
 =?utf-8?B?MURlY2hrVURDMFpIb1FsTmFCdjhHLzZ4dE05cUlQRHJ6ZnYvSXFLMXFtWnBo?=
 =?utf-8?B?VUdwa211aEx1TmdQVU4xcERBRGZBUnhRUkY3d3VMN2VoS3RhbkF4VjV6c054?=
 =?utf-8?B?T0FWTEtaOWhwSTZSa2ZWeVFLL1llcXlrTXFOSmlDUmcvQVF1OUppdE92Mllj?=
 =?utf-8?B?WExhT3ZSdGRCY1pYVmgrTTQvMGxLV05qcWw5L1dNcHBTYWlySzkza1g0RWlQ?=
 =?utf-8?B?ajFaTGhTaW5LM1I3Q2xudzRFalMzY1REKzhuOEhRbnI1c0R4UVhRS04vRjUv?=
 =?utf-8?B?VEYra1o3bTgxWXEwUjh3amNaWTRkRGtLTjN5c1hqS09wRUhIRW1UOEh2TkJX?=
 =?utf-8?B?MEtPUjZuL2kvdWtRWmZVWFhCWlhETGR5N1VOVXVCNUswYlM0bFcwOS9PaXRn?=
 =?utf-8?B?VEpNanJsTWQ4QmkrZmxIejloTVZuQnFmYWo0ZmMyTFNtbzNFcVR6WGdRc0gw?=
 =?utf-8?B?TkdNanlSSjhSTWd4Vmoyc05VL3hXQWxrVHkrV0dlR2RIUWtleTFaVFI3U1NF?=
 =?utf-8?B?d3NMQnVWVmhFRzBxTllyYXF2UTZyNUVkZ3NqRm9KS0RkN1Q0SGE0WHhhVFg4?=
 =?utf-8?B?b0MwMGROTmNsakxhV3FKWmRHajE1Zm9PMHZJMVk2VzdaVlJkdVZtRVN0Y085?=
 =?utf-8?B?RWw3Mm1qSXBPcGd3Q2lZWFBaeUgxL3hmUVViYXJ4cFFObHhVSlBjdExDUmo2?=
 =?utf-8?B?Z24wb3JieE53RGZ2SXRYSnlRN0ROdXF5cHgzanc1OWptOG1jZDlRcGlLSi80?=
 =?utf-8?Q?ZnZJ5rWJ485TGa4j80Z+3DWN2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 412bf1a2-e8a4-472a-e247-08de0a732404
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 16:11:17.4612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vWBWMRzbKl5vv9bdpUzCu42cgxdgBJlLGiPUJlCtbDw02QLDqPrWvsja3z8bXX+zvSVipF+adYIPN73xRoAcyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4691
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgOCwgMjAyNSAxMTo1NiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtSRkNdW1BBVENIIDAyLzExXSBkcm0vaTkxNS9j
ZGNsazogQWRkIHByZWZpbGwgaGVscGVycyBmb3IgQ0RDTEsNCj4gDQo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBZGQgaGVscGVy
cyB0byBjb21wdXRlIHRoZSBDRENMS2wgYWRqdXN0bWVudCBmYWN0b3IgZm9yIHByZWZpbGwgY2Fs
Y3VsYXRpb25zLiBUaGUNCj4gYWRqdXN0bWVudCBmYWN0b3IgaXMgYWx3YXlzIDw9IDEuMC4gVGhh
dCBpcywgYSBmYXN0ZXIgdGhhdCBzdHJpY3RseSBuZWNlc3NhcnkNCj4gQ0RDTEsgc3BlZWRzIHVw
IHRoZSBwaXBlIHByZWZpbGwuDQoNCk5pdDogVHlwbyBpbiBDRENMSyBhbmQgbGFzdCBsaW5lIGNh
biBiZSBjbGFyaWZpZWQgYmV0dGVyLg0KDQpPdmVyYWxsIGNoYW5nZXMgbG9vayBnb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4g
aW50ZWxfY2RjbGtfcHJlZmlsbF9hZGp1c3RtZW50X3dvcnN0KCkgZ2l2ZXMgb3V0IGEgd29yc3Qg
Y2FzZSBlc3RpbWF0ZSwgbWVhbnQgdG8NCj4gYmUgdXNlZCBkdXJpbmcgZ3VhcmRiYW5kIHNpemlu
Zy4gV2UgY2FuIGFjdHVhbGx5IGRvIGJldHRlciB0aGFuIDEuMCBoZXJlIGJlY2F1c2UNCj4gdGhl
IGFic29sdXRlIG1pbmltdW0gQ0RDTEsgaXMgbGltaXRlZCBieSB0aGUgZG90Y2xvY2suIFRoaXMg
d2lsbCBzdGlsbCBhbGxvdw0KPiBwbGFuZXMsIHBmaXQsIGV0Yy4gdG8gYmUgY2hhbmdlZCBhbnkg
d2hpY2ggd2F5IHdpdGhvdXQgaGF2aW5nIHRvIHJlc2l6ZSB0aGUNCj4gZ3VhcmRiYW5kIHlldCBh
Z2Fpbi4NCj4gDQo+IGludGVsX2NkY2xrX3ByZWZpbGxfYWRqdXN0bWVudCgpIGdpdmVzIG91dCBh
IHBvdGVudGlhbGx5IG1vcmUgb3B0aW1hbCB2YWx1ZSwgcHVyZWx5DQo+IGJhc2VkIG9uIHRoZSBm
aW5hbCBtaW5pbXVtIENEQ0xLIChhbHNvIGNvbnNpZGVyaW5nDQo+IHBsYW5lcy9wZml0L2V0Yy4p
IGZvciB0aGUgY3VycmVudCBwaXBlLiBXZSBjYW4ndCBhY3R1YWxseSBjaGVjayBhZ2FpbnN0IHRo
ZSBjdXJyZW50DQo+IENEQ0xLIGZyZXF1ZW5jeSBhcyB0aGF0IG1pZ2h0IGJlIG11Y2ggaGlnaGVy
IGR1ZSB0byBzb21lIG90aGVyIHBpcGUsIGFuZCBzYWlkDQo+IG90aGVyIHBpcGUgbWlnaHQgbGF0
ZXIgcmVkdWNlIHRoZSBDRENMSyBiZWxvdyB3aGF0IHRoZSBjdXJyZW50IHBpcGUgd291bGQgZmlu
ZA0KPiBhY2NlcHRhYmxlIChnaXZlbiB3aGljaCBXTSBsZXZlbHMgYXJlIGVuYWJsZWQpLiBJZS4g
d2UgZG9uJ3QgY29uc2lkZXIgYW55IGdsb2JhbA0KPiBjb25zdHJhaW50cyAob3RoZXIgcGlwZXMs
IGRidWYgYmFuZHdpZHRoLCBldGMpIG9uIHRoZSBtaW1pbXVtIENEQ0xLIGZyZXF1ZW5jeQ0KPiBo
ZXJlLg0KPiANCj4gVGhlIHJldHVybmVkIG51bWJlcnMgYXJlIGluIC4xNiBiaW5hcnkgZml4ZWQg
cG9pbnQuDQo+IA0KPiBUT0RPOiB0aGUgaW50ZWxfY2RjbGtfcHJlZmlsbF9hZGp1c3RtZW50X3dv
cnN0KCkgYXBwcm9hY2ggaGVyZQ0KPiAgICAgICBjYW4gcmVzdWx0IGluIGd1YXJkYmFuZCBjaGFu
Z2VzIGZvciBEUlJTLiBCdXQgSSdtIHRoaW5raW5nDQo+ICAgICAgIHRoYXQgaXMgZmluZSBzaW5j
ZSBNL04gY2hhbmdlcyB3aWxsIGFsd2F5cyBoYXBwZW4gb24gdGhlDQo+ICAgICAgIGxlZ2FjeSB0
aW1pbmcgZ2VuZXJhdG9yIHNvIGd1YXJkYmFuZCBkb2Vzbid0IGFjdHVhbGx5IG1hdHRlci4NCj4g
ICAgICAgTWF5IG5lZWQgdG8gdGhpbmsgYWJvdXQgdGhpcyBhIGJpdCBtb3JlIHRob3VnaC4uLg0K
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jIHwgODcgKysrKysrKysrKysrKysrKysrKysrLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmggfCAgNCArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDg5IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IGI1NGIxMDA2YWViMC4uNTk4NTkzZWFm
ZGY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+IEBAIC0yNzkxLDE2ICsyNzkxLDIwIEBAIHN0YXRpYyBpbnQgaW50ZWxfY2RjbGtfZ3VhcmRi
YW5kKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiAgCQlyZXR1cm4gOTA7DQo+
ICB9DQo+IA0KPiAtc3RhdGljIGludCBpbnRlbF9waXhlbF9yYXRlX3RvX2NkY2xrKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArc3RhdGljIGludCBfaW50ZWxf
cGl4ZWxfcmF0ZV90b19jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNy
dGNfc3RhdGUsIGludCBwaXhlbF9yYXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gIAlpbnQgcHBjID0g
aW50ZWxfY2RjbGtfcHBjKGRpc3BsYXksIGNydGNfc3RhdGUtPmRvdWJsZV93aWRlKTsNCj4gIAlp
bnQgZ3VhcmRiYW5kID0gaW50ZWxfY2RjbGtfZ3VhcmRiYW5kKGRpc3BsYXkpOw0KPiAtCWludCBw
aXhlbF9yYXRlID0gY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZTsNCj4gDQo+ICAJcmV0dXJuIERJVl9S
T1VORF9VUChwaXhlbF9yYXRlICogMTAwLCBndWFyZGJhbmQgKiBwcGMpOyAgfQ0KPiANCj4gK3N0
YXRpYyBpbnQgaW50ZWxfcGl4ZWxfcmF0ZV90b19jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlyZXR1cm4gX2ludGVsX3BpeGVsX3JhdGVf
dG9fY2RjbGsoY3J0Y19zdGF0ZSwgY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSk7DQo+ICt9DQo+ICsN
Cj4gIHN0YXRpYyBpbnQgaW50ZWxfcGxhbmVzX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gQEAgLTM5MTcsMyArMzky
MSw4MiBAQCB2b2lkIGludGVsX2NkY2xrX3JlYWRfaHcoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4g
KmRpc3BsYXkpDQo+ICAJY2RjbGtfc3RhdGUtPmFjdHVhbCA9IGRpc3BsYXktPmNkY2xrLmh3Ow0K
PiAgCWNkY2xrX3N0YXRlLT5sb2dpY2FsID0gZGlzcGxheS0+Y2RjbGsuaHc7ICB9DQo+ICsNCj4g
K3N0YXRpYyBpbnQgY2FsY19jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwgaW50DQo+ICttaW5fY2RjbGspIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPj0gMTAgfHwgZGlzcGxheS0+cGxhdGZvcm0uYnJveHRvbikgew0K
PiArCQlyZXR1cm4gYnh0X2NhbGNfY2RjbGsoZGlzcGxheSwgbWluX2NkY2xrKTsNCj4gKwl9IGVs
c2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDkpIHsNCj4gKwkJaW50IHZjbzsNCj4gKw0K
PiArCQl2Y28gPSBkaXNwbGF5LT5jZGNsay5za2xfcHJlZmVycmVkX3Zjb19mcmVxOw0KPiArCQlp
ZiAodmNvID09IDApDQo+ICsJCQl2Y28gPSA4MTAwMDAwOw0KPiArDQo+ICsJCXJldHVybiBza2xf
Y2FsY19jZGNsayhtaW5fY2RjbGssIHZjbyk7DQo+ICsJfSBlbHNlIGlmIChkaXNwbGF5LT5wbGF0
Zm9ybS5icm9hZHdlbGwpIHsNCj4gKwkJcmV0dXJuIGJkd19jYWxjX2NkY2xrKG1pbl9jZGNsayk7
DQo+ICsJfSBlbHNlIGlmIChkaXNwbGF5LT5wbGF0Zm9ybS5jaGVycnl2aWV3IHx8IGRpc3BsYXkt
PnBsYXRmb3JtLnZhbGxleXZpZXcpIHsNCj4gKwkJcmV0dXJuIHZsdl9jYWxjX2NkY2xrKGRpc3Bs
YXksIG1pbl9jZGNsayk7DQo+ICsJfSBlbHNlIHsNCj4gKwkJcmV0dXJuIGRpc3BsYXktPmNkY2xr
Lm1heF9jZGNsa19mcmVxOw0KPiArCX0NCj4gK30NCj4gKw0KPiArc3RhdGljIHVuc2lnbmVkIGlu
dCBfaW50ZWxfY2RjbGtfcHJlZmlsbF9hZGooY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKmNydGNfc3RhdGUsDQo+ICsJCQkJCSAgICAgaW50IGNsb2NrLCBpbnQgbWluX2NkY2xrKQ0K
PiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShjcnRjX3N0YXRlKTsNCj4gKwlpbnQgcHBjID0gaW50ZWxfY2RjbGtfcHBjKGRpc3BsYXksIGNy
dGNfc3RhdGUtPmRvdWJsZV93aWRlKTsNCj4gKwlpbnQgY2RjbGsgPSBjYWxjX2NkY2xrKGNydGNf
c3RhdGUsIG1pbl9jZGNsayk7DQo+ICsNCj4gKwlyZXR1cm4gbWluKDB4MTAwMDAsIERJVl9ST1VO
RF9VUF9VTEwoKHU2NCljbG9jayA8PCAxNiwgcHBjICoNCj4gY2RjbGspKTsNCj4gK30NCj4gKw0K
PiArdW5zaWduZWQgaW50IGludGVsX2NkY2xrX3ByZWZpbGxfYWRqdXN0bWVudChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkJICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jZGNsa19zdGF0ZQ0KPiAqY2RjbGtfc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4g
KwlpbnQgY2xvY2sgPSBjcnRjX3N0YXRlLT5ody5waXBlX21vZGUuY3J0Y19jbG9jazsNCj4gKwlp
bnQgbWluX2NkY2xrOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBPbmx5IGNvbnNpZGVyIHRoZSBjdXJy
ZW50IHBpcGUncyBtaW5pbXVtIGNkY2xrIGhlcmUgYXMgYSBzYWZlDQo+ICsJICogbG93ZXIgYm91
bmQuIFRoaXMgbXVzdCAqbm90KiBiZSBiYXNlZCBvbiB0aGUgYWN0dWFsL2xvZ2ljYWwgY2RjbGsN
Cj4gKwkgKiBmcmVxdWVuY3kgaGVyZSBhcyB0aGF0IG1heSBnZXQgcmVkdWNlZCBsYXRlciBkdWUg
dG8gZWcuIGEgbW9kZXNldA0KPiArCSAqIG9uIGEgZGlmZmVyZW50IHBpcGUsIGFuZCB0aGF0IHdv
dWxkIGNvbXBsZXRlbHkgaW52YWxpZGF0ZSB0aGUNCj4gKwkgKiBndWFyZGJhbmQgbGVuZ3RoIGNo
ZWNrcyB3ZSBkaWQgb24gdGhpcyBwaXBlIHByZXZpb3VzbHkuIFRoYXQNCj4gKwkgKiBjb3VsZCBs
ZWFkIHRvIHByZWZpbGwgZXhjZWVkaW5nIHRoZSBndWFyZGJhbmQgd2hpY2ggd291bGQgcmVzdWx0
DQo+ICsJICogaW4gdW5kZXJydW5zLg0KPiArCSAqLw0KPiArCW1pbl9jZGNsayA9IGludGVsX2Nk
Y2xrX21pbl9jZGNsayhjZGNsa19zdGF0ZSwgY3J0Yy0+cGlwZSk7DQo+ICsNCj4gKwlyZXR1cm4g
X2ludGVsX2NkY2xrX3ByZWZpbGxfYWRqKGNydGNfc3RhdGUsIGNsb2NrLCBtaW5fY2RjbGspOyB9
DQo+ICsNCj4gK3Vuc2lnbmVkIGludCBpbnRlbF9jZGNsa19wcmVmaWxsX2FkanVzdG1lbnRfd29y
c3QoY29uc3Qgc3RydWN0DQo+ICtpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJ
aW50IGNsb2NrID0gY3J0Y19zdGF0ZS0+aHcucGlwZV9tb2RlLmNydGNfY2xvY2s7DQo+ICsJaW50
IG1pbl9jZGNsazsNCj4gKw0KPiArCS8qDQo+ICsJICogRklYTUUgY291bGQgcGVyaGFwcyBjb25z
aWRlciBhIGZldyBtb3JlIG9mIHRoZSBmYWN0b3JzDQo+ICsJICogdGhhdCBnbyBpbnRvIGNkY2xr
X3N0YXRlLT5taW5fY2RjbGtbXSBoZXJlLiBOYW1lbHkgYW55dGhpbmcNCj4gKwkgKiB0aGF0IG9u
bHkgY2hhbmdlcyBkdXJpbmcgZnVsbCBtb2Rlc2V0cy4NCj4gKwkgKg0KPiArCSAqIFNob3VsZCBw
ZXJoYXBzIGp1c3QgY2FjaGUgdGhvc2UgaW50byBhIGNydGNfc3RhdGUtPm1pbl9jZGNsaw0KPiAr
CSAqIGF0IC5jb21wdXRlX2NvbmZpZygpIHRpbWUuIFRoZW4gd2UgY291bGQgYWxzbyBza2lwIHJl
Y29tcHV0aW5nDQo+ICsJICogdGhvc2UgcGFydHMgZHVyaW5nIGludGVsX2NkY2xrX2F0b21pY19j
aGVjaygpLg0KPiArCSAqDQo+ICsJICogRklYTUUgdGhpcyBhc3N1bWVzIDE6MSBzY2FsaW5nLCBi
dXQgdGhlIG90aGVyIF93b3JzdCgpIHN0dWZmDQo+ICsJICogYXNzdW1lcyBtYXggZG93bnNjYWxp
bmcsIHNvIHRoZSBmaW5hbCByZXN1bHQgd2lsbCBiZQ0KPiArCSAqIHVucmVhbGlzdGljYWxseSBi
YWQuIEZpZ3VyZSBvdXQgd2hlcmUgdGhlIGFjdHVhbCBtYXhpbXVtIHZhbHVlDQo+ICsJICogbGll
cyBhbmQgdXNlIHRoYXQgdG8gY29tcHV0ZSBhIG1vcmUgcmVhbGlzdGljIHdvcnN0IGNhc2UNCj4g
KwkgKiBlc3RpbWF0ZS4uLg0KPiArCSAqLw0KPiArCW1pbl9jZGNsayA9IF9pbnRlbF9waXhlbF9y
YXRlX3RvX2NkY2xrKGNydGNfc3RhdGUsIGNsb2NrKTsNCj4gKw0KPiArCXJldHVybiBfaW50ZWxf
Y2RjbGtfcHJlZmlsbF9hZGooY3J0Y19zdGF0ZSwgY2xvY2ssIG1pbl9jZGNsayk7IH0NCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiBpbmRleCBjYWNl
ZTU5OGFmMGUuLmQ5N2Y3MjVhMDE2MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuaA0KPiBAQCAtNjksNCArNjksOCBAQCBib29sIGludGVsX2NkY2xr
X3BtZGVtYW5kX25lZWRzX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSk7ICB2b2lkIGludGVsX2NkY2xrX2ZvcmNlX21pbl9jZGNsayhzdHJ1Y3QNCj4gaW50ZWxfY2Rj
bGtfc3RhdGUgKmNkY2xrX3N0YXRlLCBpbnQgZm9yY2VfbWluX2NkY2xrKTsgIHZvaWQNCj4gaW50
ZWxfY2RjbGtfcmVhZF9odyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+IA0KPiAr
dW5zaWduZWQgaW50IGludGVsX2NkY2xrX3ByZWZpbGxfYWRqdXN0bWVudChjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkJICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jZGNsa19zdGF0ZQ0KPiAqY2RjbGtfc3RhdGUpOyB1bnNpZ25lZCBpbnQNCj4gK2lu
dGVsX2NkY2xrX3ByZWZpbGxfYWRqdXN0bWVudF93b3JzdChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpOw0KPiArDQo+ICAjZW5kaWYgLyogX19JTlRFTF9DRENM
S19IX18gKi8NCj4gLS0NCj4gMi40OS4xDQoNCg==
