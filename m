Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D93C4B7B6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302A210E4C8;
	Tue, 11 Nov 2025 04:50:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CpaAE5ml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E9910E4C8;
 Tue, 11 Nov 2025 04:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836641; x=1794372641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R+d3tFMF0Z0rJaoAXVcp+DV8eO4Ua1dWU7tXsjVXEoI=;
 b=CpaAE5mlZ75WxGpVusSXZGq1FVNeHEAS4c8r4I3bDgVMOiufIDTzhasg
 ZpDR6PSFZninQK6n8lX9PayTgBsba2ZFEa+r3YMvnfHyI1FmnrqWeZQ+/
 +NraeCayngyucoD8ixRHBwkOsLq70xaCQUfzHiofnjzP73LeYSOvscke/
 wmmszGEAR6VMdSayomIv48aXnYiAeGdUser6E2ooPdbh+js58F9B2AlJW
 CbhOJ5zMClgGmY2N89BOkdbCBMjnkdXeDbY/8A++A2chwtRsvER2SChS/
 CntWl5aXrZD+6HJgTe90cp5wf8UW7ZIAyL3iLMD5YjhanLdIItSPWiGlU A==;
X-CSE-ConnectionGUID: zRpADBfqTZ2j7gl+vKBgYA==
X-CSE-MsgGUID: IIR+AY38QaGaP+5QdvKHAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="87525119"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="87525119"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:50:41 -0800
X-CSE-ConnectionGUID: AQI/bzBHTnupm9hwo4UXaA==
X-CSE-MsgGUID: dbYEKV3NSoKwbjWHdCFoig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="226122632"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:50:40 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:50:39 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:50:39 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:50:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCui9fyHDpHfuf89cD3GXJ1BVunJ6vdGRsNkdFXM66ZGOWGFLfYamD7DOPsmWXX+8x3h6wT7WBdnH7Jwh69smkKmQfDfbcfwH3unlLd5mzVcHZMmPeDcRx/R4t/FyiKRV9/cvb1zvJ0/u+8pXlkqQDaM+PPyfES+zyZuwXI8aA2HH6/m4haO8JVwWcyMODk0y3AZf5KsCH94Vnjkq0Hv1nTQW+vapidZSGn9LCfl/S2O6ZbSsfak0kgc1lXYe6nexXEdF+TRrk7Vyrqd8eGKINmOyXZXj+uFf68XkbnOqRhMDV3Yq/YLzdcBEL+7d1WCXjjT/SBqDD6O+WCUHOKPaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+d3tFMF0Z0rJaoAXVcp+DV8eO4Ua1dWU7tXsjVXEoI=;
 b=DOpA97AmaNP+V97zUc/2ABh9tlXhOu4QapexM9Yh8vp8pRfCGZDQpypxjhMfm0x7orxdaLbIAMrHQ7O4trrCtiEU6Yv5WDgSaJT+zZV7Fjk6EkFNdDJZtLtxyz7N39xlyS1k4nRqDtExLhoUneykqucMY+FAbJ8NMIC5L1uEhwZH3qperlP6BSQDn/N3ifncK9bsMlIs3tEfcElbam+W19X28H8TQn/5Tzyh4Ikezggh2lVWnFBR8v55VbQrQ8FvNJlmmWn0he6vv7gRYtpDTdHJYEOkwitnYq6xLmf/z26EkVPgNKfT4pJptxYae4xpgUdfal11KzEyfkdh2M6aVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:50:36 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:50:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 16/16] drm/i915/dpio: Use the intel_de_wait_ms() out value
Thread-Topic: [PATCH 16/16] drm/i915/dpio: Use the intel_de_wait_ms() out value
Thread-Index: AQHcUmixOztGfnDrSkGIbQDy8bEkvrTs6HDw
Date: Tue, 11 Nov 2025 04:50:36 +0000
Message-ID: <IA3PR11MB89372DD9FEDB1AC8FABF579BE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: 66d2c181-929d-4971-9eeb-08de20dddaf7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?d3JBaXVjU0tzYVdBWlNqejRUOVgyWDZRdUZYa1UrcEFXMWFrMGtobytpeTY0?=
 =?utf-8?B?ckQ3cmZURnNqVDdnV0dqYld2dUl0VnZzTUpOcFd0SFQ0Q21BVzVLMm8xajNn?=
 =?utf-8?B?eFhadm9Db3ZrTzZzdHY4ZjUzbktjYmw1Si9hYnZoY0lEbXdDU05RaFJ5NGtQ?=
 =?utf-8?B?NmRwSkNoU0FmMG9yZHZ2Q2tURUlic3ZFdG5BOENxOGhqdGVHQzZDVHF6OUpi?=
 =?utf-8?B?QmdkTVd3QnpyN1J0eWo2RDZXcmhMSEZ1U2czZ2ErOHNHWC9TcUp2OGtQYjZk?=
 =?utf-8?B?V0hrV2l2RXN1S3lRSnlneXFHQ3FHdDBMMnhhS1c0TWQ5VVg1aHVWVGQxRTYr?=
 =?utf-8?B?ZTlRWHRaZ1RvOEFiTXZ4dUFjNjU2M1dYUlBDU1BuMCtzOGhGbTdqaFZtOTU2?=
 =?utf-8?B?OUN3TEc5WE9HNk9iV2xQTTNqOTkyR1dqTFZyaUNidFBPaHRSM3BvNTAwVHRz?=
 =?utf-8?B?dVI4ZHVZSCt5SmJPZzFOSXVPU0pFTmEyUXdKUFNORmprRTRYSHBMVlAvZisx?=
 =?utf-8?B?OU9HUkNYdTdnUmpJaERXdVg4WU5MdHIrS2VaeWRhK1IyWEJqYVZKWnl2OEV3?=
 =?utf-8?B?QnRDenZNbS8ybFBsZm54Yit3VnlNUDV5Y0hiOXJUZk5ocCtUc1BJb1FlanN3?=
 =?utf-8?B?NjFBY3I5aFRkb20xaTZMVkZvNjczRERCcVZyVGp2YWw2dEdZT3dycjIwTVph?=
 =?utf-8?B?YjU0VVgzb1dvdjdQZUgxbXQxMklqa0RZWTdueUswYm1mTFd5MzN1eDdxTjZr?=
 =?utf-8?B?R01nMmNUbDZoWGtPbTlSKzg1dVQyNDR1RWJiN3N5Tzd5L0FPdkJ4WVNSMVlL?=
 =?utf-8?B?TVJsNGhxYnh0S0ZUclROUi9PNjQ2eVV0NGNnMFZGY2drRXVpVElJdk5Ud1Ey?=
 =?utf-8?B?aDZTVlRlRGJkUDJER1phV1F4MlFQcGF4RmpMSmd6ZVRhNEFNVkVnQmdNbk5H?=
 =?utf-8?B?cU9vZ0Jpbkk3Y0p1UHBkc1ZDYzltSENSVG1jeTZpbGZHRHZhM0U0QVBlV3Ez?=
 =?utf-8?B?RzdDQ29jcDN0WGlNOWM4endDUXd4M2NGb2hVL3V0ekxOMk1rSkQySGtZNXgr?=
 =?utf-8?B?WFdPRTNnOHF1YkRodWYrOGdHdHQyUHlZcjFUMVRENWl2NEpFaG9Qei9lbzlW?=
 =?utf-8?B?ODJlNW85YjNyVEVsQjluYzQrWWdUK2YyYzVqZm9qMFZoVmFUSmF2czMxNzYy?=
 =?utf-8?B?WVdHSEY2YzVUd1ZvSC9RS0tnV1pySHk3UnJLMHVVMnI5N1V4amJpVEV3aGJm?=
 =?utf-8?B?NzE2bHBJOGVPSTlncWl4OG9KelVLaHlreEc4VW9qK1Zsa2U2WmIwdWM4ZHVm?=
 =?utf-8?B?SkxLMlRFQWl6S0lVM1AyTmlFZGtkemRXdytiOWFjY1ZESzBEVHBTSXlmM090?=
 =?utf-8?B?VFpNOXN3MnJxejluQTB2VE4rTHNOVVZuNXl1b25sWURlMTkrRnNXYmdUb0da?=
 =?utf-8?B?ZXBCekpsQ3N4WVBLTkx6cVMzeS9jTmp1VC9RRGY2aStuSW1UNXZ0R25PTGpF?=
 =?utf-8?B?VTFUdWRzdHc3QzZPOFFXUmNLVXA1bW9OSit4bktvbU5sYUpPVHZ0S25xc0l3?=
 =?utf-8?B?UngwNEV2M0d0M3RQdTZxOFN4R2JhL0VsaHcxWnFyT2dQdHBUc1RDbDh2R2h1?=
 =?utf-8?B?ODdnS1ZQeG8veG9neFVOaFRPekFMS0dseEhpZFkrbkFwb2tBQlpsV1pHWWpv?=
 =?utf-8?B?MHhnVEp4clZMUEY1Smg5d3hNTHBjL1hUMmJnWjBreFI4Slp0ZllZYUsvcHJv?=
 =?utf-8?B?Q2hsT2pkM20zUEtnSVFJZW9TYksvOFhDMCttanlFMlFUK3NPc0NDUEQ5WHBy?=
 =?utf-8?B?Z09BQXoyWVlMd2hWQkFUdFR5R0ZRS0RPbExlQnFHaXNVbnc1cEZOcVpnK2Jp?=
 =?utf-8?B?QVdxQ21uWkYyVzh3c1g5MXEzcUNsaE1JMHRwSFZkR2xHRUhodWExZytpUlhx?=
 =?utf-8?B?MFFESzE0Wjg1MkdrYngyV25xbEpVRmdmbm9JTldJK3BieVNqUjJyZHcwWm9k?=
 =?utf-8?B?UDBlNnJvYmtlVEdmTmVRNnduaGpTL3ErYjQ0ZlpoMHZVWDMyZjNkSkszQVV5?=
 =?utf-8?Q?J29jT3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0xoeSsyWElZOHB1TEZWcTh0OXN6UDV5Wk13TU0vMG5zZFZzY2dNZFl4aTFr?=
 =?utf-8?B?cnNHejBJdDFINGVzdjdQNVpWblBpY3NrK20wSnJNQmRFaVVLeHhSUW5za0M5?=
 =?utf-8?B?bU1NVm0wdmJMM2xmNDRBY1JzMVpjN1dwR3EzM3VvLzVDdzVTTWU1cUhKQ3Zj?=
 =?utf-8?B?dDBPYzdLOWwzZ0ZRbDR6RHBkSjZxUkpFamExSlpoVHNUeUVLYXF2OFVDV0Nm?=
 =?utf-8?B?NDVrbVFaWDV1VldZby8wRVkyZ1pveGpFaUVrQnBCTk1ZQ1l5VzNWaHRRSlJ6?=
 =?utf-8?B?TXlrSlFqTHVpNzloQUZ5enZuS0FYeHJWaktYOWhRbGM5SDVpaENCbXppeUhq?=
 =?utf-8?B?bzllMkxHWVdKaWFtaXFCTFh2QS84QVpFblN0OXV1YlMrMXFHNy96RE8vQ2F1?=
 =?utf-8?B?dDIwMWkvbnM3STA0VS9Na0FzdXhDcHUvOXJwSnl2QXloaDBRa2dUWmJLbUxa?=
 =?utf-8?B?eHFRb2JNSk4veVlXbnlrTEs1MkdVRmhYVzl0WUJRM1pXNitUVGszNnFKejBx?=
 =?utf-8?B?NVhlL0Y0ZmcvbUluZXJqL3VYa3VXNVBwRXNacnpMTmhIUzFIWWRTaUF6bm01?=
 =?utf-8?B?dysvZzkwMExqczZrQWhsMUkrWUM3aCt2NWxwSnhyWFgxSXlhZUlMTU1OR2FW?=
 =?utf-8?B?U1AydUdjWEdnWnlhREhUV1FsNkQ5YUpNbXdybEp6UkdxblJkTDVDMlFKOHdK?=
 =?utf-8?B?emlzSDRtUlcvNWxZQThQLzFzUllrNXlQM2pWWVpMdURRNVNMWEtKbldLV1d3?=
 =?utf-8?B?akh0cHZOTENoc25venl2WllTMkVMSzYyS2VSYlIwUnBIZWNET2ljd0NlbzF2?=
 =?utf-8?B?YVd4a081WmFVR0NndS9tTmFXSllyNTM5R0FabXgwVnJydmN5RUhKRzR3bkxX?=
 =?utf-8?B?Qk9mZENUOCtubHBNbG5EeSt6UU96eGYydjZZTmFpK0RKaFVOYWJBb29iczR4?=
 =?utf-8?B?N09aWnB1SU9XR3BlQWhoVHlLQlRRQWZQRGh0ZzF2eEZBSnpWcCtERlpFbW12?=
 =?utf-8?B?UWplSzJ3akNSdWNvbHZKV1YrQzFiTC9Uc3Y2enVNdVpXUERrdnJvWEpYdXNV?=
 =?utf-8?B?R3Q1eW9NZFhORSswYmdYUVBzbm0xenRuU0dFZzVTb3JtVUdSZkdiWk8rZzA0?=
 =?utf-8?B?NmFockRHZ2V2cElBbVVmcXRFMEpsZzVXREdBYmplWUR5ZVYzM1pWNStnVVNG?=
 =?utf-8?B?U3UvVGVxSnRTVzRoWFB1OWpqZ3lnT2hlR2NMdVd0N3lGbVZRelQrdkRzMlZN?=
 =?utf-8?B?Qm5nazlQeWRsMHBMTFFVMVg2WnhTNEdmK3lwYTA1ZEJEWXJaK0lPc3VrRndp?=
 =?utf-8?B?T3YzRk5kR2xGbUJrMDkxdktyTlBXMC9ldjRxSHZoT2MzU2NGK29mL2VwKzdF?=
 =?utf-8?B?Y3MzUTllamc1NGplRVkwMXpYZWFmT2Nra2I1ZVovOWdad01HUEQwdDJTN1Uy?=
 =?utf-8?B?Smd2ZExTNFFGV2NBSE1QTHkxK2tkUXlaVUxvN0NzR2ZnMyt3eHhVVi9xQmVw?=
 =?utf-8?B?Nm9WanM1ejBYWGZvMWI4S2xIL3FXdXgzYzlMbmlLRWpycFlyRUxqdEFDazVM?=
 =?utf-8?B?aStPejIva0x0RHRBUGRoczFSOGlTaEttZnAwNU4wV3FiNC92d25EcEVhVDVo?=
 =?utf-8?B?SWo3elA0Z05ocFRHMlNkOXV6NWNWQklySnRpTjdDSWRMYkZwSzlFWEFuRVNZ?=
 =?utf-8?B?dG9WTngxeVJwdmo1Z09VUEU2aHVucm1SUWJDamJDNmxWVlJDNGNaVlNYSnRy?=
 =?utf-8?B?SlZIVzRYZUJCS1pqZzBrNSttU3Fhc0h1UVUrMHNkcWVsNEo2eDY0YnpEWU5x?=
 =?utf-8?B?Ny9sUEhlK0UyN2tnL1R1M0REYlJGd28yYUxCc3lXVkEyZnZ5UWJJSGlZRkV6?=
 =?utf-8?B?MWhmNG44NXZMYlBpOHZCcW9NQStETDBGTjdteGJDaGJUamcxWWRCOGlaV3Bx?=
 =?utf-8?B?VkNaak91NnorOWZraE1DU2hVOU5vL2hEU05KcWRjbWE0cnk1TndYYnhTRVRW?=
 =?utf-8?B?bjdDZnpYTFREU1Jza29iL0ZqRUxLY01kVFRKMHNkYVEzbVMrbCtxUzNsMmtz?=
 =?utf-8?B?Y0k4YnNiQ3EzWVY3dmJFdHFScFBkaDdpL2lXVURlOGd6OTJENlhGbUJpYzhs?=
 =?utf-8?Q?SgykcBpvbnqQXKfC0E8piCnkk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66d2c181-929d-4971-9eeb-08de20dddaf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:50:36.6369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PZGPPT1o734MHNoJY1EaT8L0Pvk6f8I6R1jF1RoubZV0Gkku41rkrdkVTrolDiQnJWT3oQIJ9sWY2T2OTVf4Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTYvMTZdIGRybS9pOTE1L2RwaW86IFVzZSB0aGUgaW50ZWxfZGVf
d2FpdF9tcygpIG91dCB2YWx1ZQ0KPiANCg0KPiANCj4gVXRpbGl6ZSB0aGUgJ291dF92YWx1ZScg
b3V0cHV0IHBhcmFtZXRlciBvZiBpbnRlbF9kZV93YWl0X21zKCkgaXNudGVhZCBvZiByZS0NCj4g
cmVhZGlvbmcgdGhlIERQTEwvRFBJT19QSFlfU1RBVFVTIHJlZ2lzdGVyIGFmdGVyIHBvbGxpbmcg
aGFzIGZpbmlzaGVkLg0KDQoqIHJlLXJlYWRpbmcNCldpdGggdGhhdCBmaXhlZA0KDQpSZXZpZXdl
ZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGlvX3Bo
eS5jIHwgNiArKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGlvX3BoeS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGlvX3BoeS5jDQo+IGluZGV4IDdiN2EwNDYxZGEzNi4uODAyN2JhYjI5NTFiIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwaW9fcGh5LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGlvX3BoeS5jDQo+IEBA
IC0xMTczLDYgKzExNzMsNyBAQCB2b2lkIHZsdl93YWl0X3BvcnRfcmVhZHkoc3RydWN0IGludGVs
X2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiAgCXUzMiBwb3J0X21hc2s7DQo+ICAJaTkx
NV9yZWdfdCBkcGxsX3JlZzsNCj4gKwl1MzIgdmFsOw0KPiANCj4gIAlzd2l0Y2ggKGVuY29kZXIt
PnBvcnQpIHsNCj4gIAlkZWZhdWx0Og0KPiBAQCAtMTE5MywxMCArMTE5NCw5IEBAIHZvaWQgdmx2
X3dhaXRfcG9ydF9yZWFkeShzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJ
YnJlYWs7DQo+ICAJfQ0KPiANCj4gLQlpZiAoaW50ZWxfZGVfd2FpdF9tcyhkaXNwbGF5LCBkcGxs
X3JlZywgcG9ydF9tYXNrLCBleHBlY3RlZF9tYXNrLA0KPiAxMDAwLCBOVUxMKSkNCj4gKwlpZiAo
aW50ZWxfZGVfd2FpdF9tcyhkaXNwbGF5LCBkcGxsX3JlZywgcG9ydF9tYXNrLCBleHBlY3RlZF9t
YXNrLA0KPiArMTAwMCwgJnZhbCkpDQo+ICAJCWRybV9XQVJOKGRpc3BsYXktPmRybSwgMSwNCj4g
IAkJCSAidGltZWQgb3V0IHdhaXRpbmcgZm9yIFtFTkNPREVSOiVkOiVzXSBwb3J0IHJlYWR5Og0K
PiBnb3QgMHgleCwgZXhwZWN0ZWQgMHgleFxuIiwNCj4gIAkJCSBlbmNvZGVyLT5iYXNlLmJhc2Uu
aWQsIGVuY29kZXItPmJhc2UubmFtZSwNCj4gLQkJCSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIGRw
bGxfcmVnKSAmIHBvcnRfbWFzaywNCj4gLQkJCSBleHBlY3RlZF9tYXNrKTsNCj4gKwkJCSB2YWwg
JiBwb3J0X21hc2ssIGV4cGVjdGVkX21hc2spOw0KPiAgfQ0KPiAtLQ0KPiAyLjQ5LjENCg0K
