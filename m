Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0E4B1E3BE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 09:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 068D310E1BE;
	Fri,  8 Aug 2025 07:45:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ppk3Tf20";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B9610E1BE;
 Fri,  8 Aug 2025 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754639123; x=1786175123;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FEdhllscbjyxRb/Sw/wItFCQgVRzAG4c0YU0vGBjZEM=;
 b=Ppk3Tf20mxY2IHuQHpeQUYSfuq0Zcw4bfdhgCz80sCeM32cf2hCh0a9U
 sAZPVXwEWUzqls2PyXLo1rdn6DJrRb1OppPabk3nL/1liDPuYPBg068AP
 M60MqPmSRE2h60JkCVsrPR7FxKDLj7atajID01Y7qJRjqgc5FPRc1DlRw
 vQSX1BcDwtaqXkzhNusnXSdNaMxnave/nSs8tsSh8QIM8cRg3FEZLiAt+
 HrFH9VdXAk8KkSqO/fFfcWrOVgU+dY7fil4hpNGk2lS5KvulE8XeiS7ef
 D/7qqSIe6xbLY8EEEvxH7LKMCIOv4ct8GDhWCEYlIUr+IA0L20hAFyj2b w==;
X-CSE-ConnectionGUID: GHnbRmnMRXOZUi6rcY3MNQ==
X-CSE-MsgGUID: q3SAcDgTQQGigPPPRLB35A==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56701069"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="56701069"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:45:22 -0700
X-CSE-ConnectionGUID: v6O11kBVQpSbF31swljlxQ==
X-CSE-MsgGUID: V2vDrnVTRSqv33AKuCBh5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="202437570"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:45:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 00:45:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 00:45:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.84) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 8 Aug 2025 00:45:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QmXd2JfLKc2rCzqdRPdAwtNMB+8ZbD88hHrHQo+SLUaEDWy+cAadWoRGfnNGt1xFFOlmQeroohyPLIubas5rgQMHMAb51eichMaez3M+WqrDX5iLkMqPHeMPxm0diCDqQx6d7AONT26HyFBCTWn3teoKb0d9IWMyAWz+zbvmEJmeO3G0KuZcaPLZYkIZYkiY/go9nZV3lvPV77ThS6Z8Mmgz5fCCwE8Q6uDH7+gu71jkFxk9DRFg0XwRggP4Jci6kY7q2SRGHKJZsbSkagRw70tcOIXLOVtJGttfF7QwH/zY083vfThfTSWyUHw6bzGLNEzpi+HJtNxkyId/JaPmTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FEdhllscbjyxRb/Sw/wItFCQgVRzAG4c0YU0vGBjZEM=;
 b=qEFtKYpUi4A8H8lM5meoFgiYr2aEmhfFpiFZ7BXbnhL7xi83hkEZAj1t/RPNSx+yuabqIVGI5zSPFFx+rmeMqahjk3h/oCn0JmQZ/mL7y4ncRA1u5yuQxULWg+uY4rCX5SJLd/mPRa3mAdeWFtRMLn61/ftUeRCtpHbGkFpz96pN56lWi1IMMxGVqrJm7WMmrgK33VYi4W6GiConsHl7I7AW1ZgTHpt/EcTj6cG/vuNKjVh3/WOLf6Eam6PekCtHqinoQxcWO0sB8zbMQ2cisnNAmdbj/42du2gc22yygjuSpolhO3A+zf/yYU7az/CFncQSx1RY03gmIPozN9MC3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL1PR11MB6004.namprd11.prod.outlook.com
 (2603:10b6:208:390::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Fri, 8 Aug
 2025 07:45:19 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 07:45:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 15/19] drm/i915/tc: Handle non-TC encoders when getting
 the pin assignment
Thread-Topic: [PATCH 15/19] drm/i915/tc: Handle non-TC encoders when getting
 the pin assignment
Thread-Index: AQHcBdytO+opv7y74UGQGiYzw9cA67RYZPaQ
Date: Fri, 8 Aug 2025 07:45:19 +0000
Message-ID: <DS4PPF69154114F14414CAD459221DB841EEF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-16-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL1PR11MB6004:EE_
x-ms-office365-filtering-correlation-id: fcc574d6-fbf3-4b34-8959-08ddd64f85ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dGNtS3lyUHNra04wNWlLRWp3bDhCcG4rbi9QUW1kNHc4US81ZjlwdWlvK2tJ?=
 =?utf-8?B?TnZmL3hkTFNTYWJEOUR4eW8rK1RFajRvREFsb1JCYXc5ZmFKVTZRNjNSdTln?=
 =?utf-8?B?U0R1TlVpc2hNcWFPS3IwVjJYcWU5anlJRWFoQVdwYjdlMVQ1TVl2MTNXY2Zt?=
 =?utf-8?B?cURROUQydHVMYkNza2NwYkJ2Tk5USjJwWnlVT2pEVG5hM3pLVXBDWGhLdlBJ?=
 =?utf-8?B?RzQwRFhrQ2x0bk9rOHhhc2JSb0tqQjEwNUNuV3Z5YnZST1hhUzdRTlFxY3k0?=
 =?utf-8?B?M01wYllOMjF6ZWdRcUluL3hhcHUzMzFJbURwZ0VXOXQ3anNYaEJIRVJoZ1Fm?=
 =?utf-8?B?b1prYUc4Tkc0NDYxbEV5dWhqTlp2U0dXVmdGdElRa0hpaW9FUEpuNDBDZ0x4?=
 =?utf-8?B?TzhqWkNvQXpnUW1wUVhmYjI3V3Bmb0dOaE9Ma1pYamFEWE5HTlJrR1B1aFg5?=
 =?utf-8?B?c1lpeDd5bWhrbWZwV1VDWlN5R1BUN1BiV2xkbGpRaW9LR2ZYYWNLYjNRRWI4?=
 =?utf-8?B?azl4SGRCZmNRb1RjS2FLRkh6Rlc0bDdvVHZ4S0loTkZSV080YW1oY2F6cmJJ?=
 =?utf-8?B?d25CZ2dIanFzeFBsbU8yMi9VVmpTS210ejJzYThROGk0WU90cFRidVUyekY1?=
 =?utf-8?B?aDA1Vk8vUzVZRXJnMnFjV21STG42ckNYOXhlM3ByeE1HQUMzc0J0dU1uMkxG?=
 =?utf-8?B?M1B5VUxEK1ZkbU5KVWFZNTE0dEU4OG9lYm0rSVlpNklvckx4VXZ3ZVBnTisx?=
 =?utf-8?B?RDhWRzVsZmRLRys5ZnN2TFkxM1FZWitQNUVJMGphMStPMTdOeExKMTB4UFcx?=
 =?utf-8?B?ckE4eUFsbG1HL2NsenhxYXl3Nk1sTmp2aSs5TGJVZ2ZabDUwY3AycHRraHVn?=
 =?utf-8?B?WGVyaFBkUFV0ZllEcTlRQ1ZXbXNzLytEOEliUjZnRjY0VzAwdEtkUTNSL3lz?=
 =?utf-8?B?S28zVEFGY3liL0dxWjRLS0EzV05zdjM4NzlZalNVaTZJQ242Zng5eHhZeUtX?=
 =?utf-8?B?cE9QelJ0VlcvdUUxd2FwcWd1ckNObkwzMml4M09RWnFOVWF6d2V4MzYzWC91?=
 =?utf-8?B?YmtBS0dvbnpnZzcxcHUyRHBXWGR6Wm9waE1WYnNlMmFvdjA2RWFGSHU3eTgy?=
 =?utf-8?B?TVlyZ2l5OC80UytCTUhBNTBQNzRhYzNKa1NVR1F6U1pkaFlNM3N5Uks3RCtV?=
 =?utf-8?B?ejliSEIvUXVGT3Q1THFWdi9DRjBycDROUzhkdXZ6c210cmk1QUdtLysxYkdn?=
 =?utf-8?B?UUlxSFloU0NXd3lJd3k1TVVxNUxVSGV5aitYczJUSlh2QUo1d1FNOFlJa1pz?=
 =?utf-8?B?b3pmL0RPeGFmWUR0WjJiaXhOeDBpUnhJb3dzTzI3OW1XSEFGa0oxbnN6WnNN?=
 =?utf-8?B?eGJDVlQxUkR0WWpzU1BEd3VMNkl0MytwdERGanRmZ2JHbVV3VUk1ZE9OZm8r?=
 =?utf-8?B?Q3oweFFjY0hNOHVjOFFzbjlLYStoTnZwSlRpZmQ2QkViSkFaWm1wUm1yVlFG?=
 =?utf-8?B?d2Y5UFR6NWNrUVVncUsvZ3pBWTNVdnFJTUVPcFY0YmhMbXAxVmJySXBtWVIw?=
 =?utf-8?B?dm5iQ0lrSEV2cGtDL1hrK0RlR2JIUHVXaCtZRjN3VTIzOTR2bldpU2puajlh?=
 =?utf-8?B?N3kzZDIzMmxob2FMVHJ3Mm5ab0tZWGIwS0tjNnEwdkNxc3g0WkRVcVJXa01t?=
 =?utf-8?B?d0c3b3kwY25MUlpLOHIzcElDbjBtcnNFeW1yZ1JicjhIcWVtV2czcnZyUU5u?=
 =?utf-8?B?YVJucENGVTREbngyenJHTFc1bWFFWFRYZUt1RzJ4a1lDZjZ2ZytXcFphdUli?=
 =?utf-8?B?NWU5MTNuQzBiN2RwelhyT1BuZ2JuNWpCMGh6TTJySjk0dHcwam9pUnZuNkZY?=
 =?utf-8?B?N1p5bkRhYm5VVXlETmxTTktQQmlZZCt5TlJKazkzUXRheDFVdzc1S1cyYWJ1?=
 =?utf-8?B?RnM3M1ZTVktJUjI2ankwRGpkaTZIRjhLN2VFMXBFZVIrZno3eE5YcVlTT0JL?=
 =?utf-8?B?Vjc2elMzQ2pBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3pBcFIrVnVJcGliK3g2R2dRSVA5ZnJXMkdhenJjeHFiay9lMGt6dml0WkVh?=
 =?utf-8?B?NXg0NEFWSWxINTFpdTBtbGx3U3Zsa2k2RS9rS1l0bkI1bjkrWTdtVzFhckN3?=
 =?utf-8?B?OVdlWkdpUksvU0lkajVIRGc1WmVnZ2NQMmJ0SlR0V3FHQ0Foc2szVFRxZUlz?=
 =?utf-8?B?UGZHQzdWL25tdEh1MVcxQStkN0pkVk1iQzdUd0s2UFl3NkVqKzA5RjlNcWZj?=
 =?utf-8?B?WVdseWpzWVZ2UmRPZmZEcVZIRFZSUVBBb1NtQktIMjhLTDZxNWxFZkkwVHc1?=
 =?utf-8?B?TXVIRTJubGJELzA0Mk90N2F4dk5zS3BEdnpXQ3BRRFE2YTh1ZCt3bW5yWW5T?=
 =?utf-8?B?ZXNtbFY2R2YydE16ZnNKZ1FBd1JUTThZWlJsNFhoVGEzUk9HS2xRZ3RPSzk5?=
 =?utf-8?B?N0E3KzVsd1lURmhnc2JHNWptcnVrR2M0ZVhLdExyU3dYbFJRQjFzbmQ3bTVo?=
 =?utf-8?B?SnZJMzlQSUF5L2xwamFQbjNGcW1KWDFJU3k0M210b1NKUGFhM2N3UHZzdXhP?=
 =?utf-8?B?R1VtTnpJZzQ4Z0FGTGtVdm54cnhqdkc1dUV2M0ZMOFRkSlp0ajdtMEJxMHZ5?=
 =?utf-8?B?N1RKOFJNRVJKWEpLa0ZNQW9ScFBMcWM0dTJYelNaQk5LS3JnazZoblV0QlFT?=
 =?utf-8?B?L1Zqc3U1Yk00NDZEU2xPNmZWUGhyMTd4a3Y3bS9mN0dKdlR2emlvenhDZHVR?=
 =?utf-8?B?Ty9RSXdtS0k1QldCYldSdjdaUVkyM0s1NlU4V2d4VGZ4bG1XL0dwWXVZbkFJ?=
 =?utf-8?B?QnErWkNTZmJJNUxKT2Y0ZjZCZjNJblQzYWxXc0xYSEFETzdqQXNJVTRQbnpD?=
 =?utf-8?B?M2lBR3A0ekdnTERtRktTcHppcXZEbisxV1F6b1QrU0JhZVQ1Uk00elZFZ1Ja?=
 =?utf-8?B?cTNKUG1BdjFvemhwc0lCUC93YjEyUWpXbi91cUh4L0hpb1lRQ2M0ckZYNWpR?=
 =?utf-8?B?czlKdVlkWk44SGl5eDhEQ25QMUt1YU5OcTYxKzJHRXk4SzhnMWtWZU9kNFdH?=
 =?utf-8?B?ZFpKNXpBQTQrNmNnejlWZUl2WGxvWUM0bTk5L2p5WlFJUlRPN3NHalRhb1pj?=
 =?utf-8?B?ZDdjZWJHUUJUVHkxR2tYZDIvTjlKZ1VmeWZiV0JWdjk2VTRBOGhCZDc0MElH?=
 =?utf-8?B?aHhBQzNQL1VUeVhCdHptTWM0MlB0eG9zRisvZitGVTRpdlRiMDE2VklmTHUr?=
 =?utf-8?B?S1kyTnlxUVpSWHJsR2lqUU1RN1F1ZUczVFhMRE44d2VVQzY3bWVkMkc1VldV?=
 =?utf-8?B?OWhoWHlFNkJnUnp5TGt2eWhIL3ZVUXYwS1h0cFJwb1plbllCeW9kZzVqdlU4?=
 =?utf-8?B?TGY0bFVlYnZZTjc2MmF4bEhwOWYvSWJQMFdtdi9tNVhDWm1sZHhpRXd4dkx0?=
 =?utf-8?B?Q21FT0w5WCttOEJwRks4cGV3T0lveHFZUk96L0tZRGRHbktvSDRob1Z6SEFK?=
 =?utf-8?B?cUVJQ00yVmdMZ2IyZHdaYlNQQXZYWmI0dG9BQk0xaTlqbGEyWXlTNXhGeW9z?=
 =?utf-8?B?UVh1K3N1a09Hb1JSdHhnc0tUMkxqSjVuRG1NSiswbEdoOWxpaVRWc3dxRHBk?=
 =?utf-8?B?V1pyM1FVWTZHMUdaQXh6TFVDc0VCQTVRaWdhZ1AyL2hEQWcwdGwwVld1dHhC?=
 =?utf-8?B?R2s4ZDQwbnRseFhUMWJBZDI3TW1YVWYvQmRlT25mY0lhUGRncENkcDkwVEl3?=
 =?utf-8?B?ZmVmQTMwODlPN2c1dDdub2xYSWp5QTcwRjNuL2x4RE4yMEQza3BMakhrc3E1?=
 =?utf-8?B?eUpjckEyL3ZSdnZwelIvZFRkT1EvRlJkV3BqbjFXOUhQSnVRNTRpMmZmdWhT?=
 =?utf-8?B?d05Ka2tLb1BBK3Vqc28zREo2OGlQM2lVbGlJNzdBVUZ3a0VJM0ljUnlwUlRw?=
 =?utf-8?B?YjUxNHYrSEplYUhnN3k2anV2c3pmUGExVlF6Tk5RVDZjOGVMMWNhc3JKWlB6?=
 =?utf-8?B?RkRiMGkvQzlza29zQUkvV2VHRjRHQkR1NytJQ292VmFXb3BBN3ZBWUY3Q0Yw?=
 =?utf-8?B?NnluMDBUZVhlc3FnQW5BSzBwcWRmOGZkZ0lLQnY1dUY3S1J4a1oyVzVPL2xv?=
 =?utf-8?B?TWNndW1vbGR5MVJ2TkRlZ0pXRW1FT0lMZHVYU1JmaXlEdFRxYzBHS0tTNG5m?=
 =?utf-8?Q?OCq6wqN+7Er6tkg0sJvn4gtUo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcc574d6-fbf3-4b34-8959-08ddd64f85ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 07:45:19.4007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8pTEPEQAWpaEfUlPKduzpwMEusxnRrIpTGMy8RvIkOcmWsgEkx6VIhIVAc21uJ2vdVaCOP5SpvqiOYdWvQ5iSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAxNS8xOV0gZHJtL2k5MTUvdGM6IEhhbmRsZSBub24tVEMgZW5jb2RlcnMgd2hl
biBnZXR0aW5nIHRoZSBwaW4gYXNzaWdubWVudA0KPiANCj4gRm9yIGNvbnNpc3RlbmN5LCBoYW5k
bGUgdGhlIGNhc2Ugd2hlcmUNCj4gaW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnQoKSBp
cyBjYWxsZWQgZm9yIGEgbm9uLVR5cGVDIGVuY29kZXIsIHJldHVybmluZyB0aGUgZGVmYXVsdCBO
T05FIHBpbiBhc3NpZ25tZW50IHZhbHVlLCBzaW1pbGFybHkNCj4gdG8gaG93IHRoaXMgaXMgZG9u
ZSBpbiBpbnRlbF90Y19wb3J0X21heF9sYW5lX2NvdW50KCkuDQo+IA0KDQpSZXZpZXdlZC1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMyArKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMN
Cj4gaW5kZXggNzdjNWEzNzQ1MGEyNi4uNTcxZDMxMWRjMDlkZiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtNDAwLDYgKzQwMCw5IEBAIGludGVs
X3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KSAgew0KPiAgCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGln
X3BvcnQpOw0KPiANCj4gKwlpZiAoIWludGVsX2VuY29kZXJfaXNfdGMoJmRpZ19wb3J0LT5iYXNl
KSkNCj4gKwkJcmV0dXJuIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX05PTkU7DQo+ICsNCj4gIAly
ZXR1cm4gZ2V0X3Bpbl9hc3NpZ25tZW50KHRjKTsNCj4gIH0NCj4gDQo+IC0tDQo+IDIuNDkuMQ0K
DQo=
