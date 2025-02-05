Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4787BA28D5E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 15:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D766210E7BC;
	Wed,  5 Feb 2025 14:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XB+QJ0BX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CA510E1C8;
 Wed,  5 Feb 2025 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738764053; x=1770300053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3jzwQLQKgPqZrB+va12TGovmMwnEblgDwr2uEdaWeI8=;
 b=XB+QJ0BXOPzgAkDzQl0xqpyscICNZ83SFvtXKgI/mO17tkwKEdUEZnIn
 P76lQpkU4SLd/+wQ3cSOtOpSUo5xQQ9iejN+yNrEMUg/OtmEePnI5AdNO
 XMp4AZoCUx1Tv4ZuCdpZPMQ8X6GJJFZl4Ailck72WgPp3svoD3QhI3H9j
 AvmBjPH4ffDzHRNDJsqr0nyP8gZNW3SsRgwkMVdYxVuoyno2709bpUEom
 rnqytnmeNQwDFWiYcIkAIuK3M2OBemfQEyzkuIAJxnJgAagbR06Ub6V+i
 aTSvUWzgLs6+8HPFF7Lb04EtZJlqbu2kQ5iNKS7sRJWzu7MnWcc/1FTQD w==;
X-CSE-ConnectionGUID: +skK1vn0TKCUSjGnhCVkHg==
X-CSE-MsgGUID: kYgmYVt0QVqqshusxR7Bqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26933009"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="26933009"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:00:53 -0800
X-CSE-ConnectionGUID: TevkFpRASnW2FzZ8AGFSVw==
X-CSE-MsgGUID: YqsHVDKMRXqC4QoTik9opA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116112369"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 06:00:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 06:00:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 06:00:51 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 06:00:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p8uCfZwGqDLTak9LlBMpvcvSKbsKqtgV9Wcqx44w8NqQNfus0r3xZuJjNUrgJdEigU4NSlBcLSL2tMo/W4CZEvuuqgJbkIL5307mrgcRtWAh0YM4rfBg1JBUH546Kf0TPBYnx9vOcyTsvKeCZKBn+fBrJ8+37R7TGpkM5eT2aHkGwPObZZwX1NZhVm0AyzjzKW8FOISLukmCgraw5QJTv3rKyJSS5g0fd+wKA3OhuM12dyo9CbK6BLmNa4f9+6PSO9OC35wpYhmfCOj44cNSBFSn4C/NOhdsSoCET2JOQkQKDZYGodZFbmpCsim0UoeEJxUtt1cbyvWC1x6i7pQ/dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jzwQLQKgPqZrB+va12TGovmMwnEblgDwr2uEdaWeI8=;
 b=kAq2Wr4eI3hHVcuVYJ3+fm+CrOY53i16DZfJ7WsQh/LZoP/UNWcIoNsM/oNpo+r+DXNYhoVqVxMW5zMhlGYvtiMRUurH+0t+1spLxipvt66WWJmfz5s2mMERTZDpgwApfXwyTbB/5hl9UXRmDzXivQvYSXXWxFf+G7cc3Vn97AsEcHxYoRuCX6qpON3aE9VLHEX1U5a2FDnZrMr8ICnrhTq6olZGcgVRtUwvygAREMNfN9MxrFe4SLBvjynNkkE+OHuMFs5HEc1IYqvsxLM6mhV70paShwcrKBSuOg0ofbPGNxlhKeEtiXZkR6L1uqW/Py2Mj9DPzn22vaiBo+TVlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SN7PR11MB6994.namprd11.prod.outlook.com (2603:10b6:806:2ad::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Wed, 5 Feb
 2025 14:00:43 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 14:00:43 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0?=
 =?utf-8?B?aW5nIHdpdGggWzEvM10gZHJtL2k5MTUvZGlzcGxheTogY29udmVydCBpbnRl?=
 =?utf-8?B?bF9kZGlfYnVmX3RyYW5zLmMgdG8gc3RydWN0IGludGVsX2Rpc3BsYXk=?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBzZXJpZXMgc3RhcnRpbmcg?=
 =?utf-8?B?d2l0aCBbMS8zXSBkcm0vaTkxNS9kaXNwbGF5OiBjb252ZXJ0IGludGVsX2Rk?=
 =?utf-8?B?aV9idWZfdHJhbnMuYyB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheQ==?=
Thread-Index: AQHbd6ikhtQigQsfJkuo4o+6S2NTirM4vgbw
Date: Wed, 5 Feb 2025 14:00:43 +0000
Message-ID: <CH0PR11MB54914A707D06C449CFFE4299EFF72@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250204134228.2934744-1-jani.nikula@intel.com>
 <173869320674.1009351.18173905047966742192@b555e5b46a47>
 <877c646bdy.fsf@intel.com>
In-Reply-To: <877c646bdy.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SN7PR11MB6994:EE_
x-ms-office365-filtering-correlation-id: 6c117e7a-b127-4326-7491-08dd45ed7b18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018|7053199007|13003099007;
x-microsoft-antispam-message-info: =?utf-8?B?WkJUUGlYeFphTm93bVozeGhlTm5hRGtvQmFZdm04cFFMNlRmcWpTTHlZQzNk?=
 =?utf-8?B?QWQ0aG9HeXFTc2M0bVhpcVJGVU84NWs0ZVNaeENxdzRROUJGOEtkalpUbU1J?=
 =?utf-8?B?WnhkK2MwdzhMaTNpdTF2cGNxbmFoR0JTcUxrZWZITkNGQjR2UlFnNllBdFpm?=
 =?utf-8?B?UFFXT1dxMzFSYnVQb0RrcFBWcC9sdXBNT25FQ2pJb092ajdKd0R4NWhMNktJ?=
 =?utf-8?B?TTkrTklqWGRNOWlLa3VlNVhOOStCNmZQZ21SM1BCRlRLREpaMk92UnBZdjVR?=
 =?utf-8?B?L0JIcTlicDhmSjBMQitWbjRuRjBLcVlLQUJVemI0THRxRTVGQUFxL3BHRmpz?=
 =?utf-8?B?eUloMGFWQnZrdXo5ZUlyTmhhQkZ3UXZSVXY1a21ROHdSVkpXWWdhbXlDRG0y?=
 =?utf-8?B?M0x3V3lFYURRb0VGOEN6blJVTUFJSjZqZ0dmUlNuekZLTTBZUjFNVTdYZkZh?=
 =?utf-8?B?WlA2NW1KdVZZdWxzQ3c4NDV0ekFpYVRwYkM1VThEVXBMeXhOWE1JVWg2ZUVF?=
 =?utf-8?B?SVdTV2kwS3JuS294QVZiamRkb3RDOGNJL3JwWno4Y0VsUmltVkp3Y2c1dUp6?=
 =?utf-8?B?bE01TUxjc1ovN1hRYTJNQlArVUtQVTJXSWFDSXRwUlRGTXZGOTlmZVZyekZv?=
 =?utf-8?B?clVEVVBEVVhEMWUwK2dNK3JFcUVnR1J1bjNadjJJdzNSRmZqZ0JMNGprSVhE?=
 =?utf-8?B?MDN1azJIYVlONEFRYzAyclFHTG5PWjNiUldlMXlHYm5ob2wzamJ4R1QvbFFX?=
 =?utf-8?B?V1hpYVlwOFRQNlVTREs5b3doaTNXcC8yWHhZUldtbHBndUxUNUx2UThZWlYz?=
 =?utf-8?B?bmE4cHIrblVNSWhwK0J5MFo5clM1bjgxMjN6SWttcGt1ZFM0YnhUY05lWFlt?=
 =?utf-8?B?blpOZnF4MmlXbW84VnJ4bnBlKy9HZlE4Z3JnNWpYazRwN1lUSUR6UVFuSlBN?=
 =?utf-8?B?TXA0NmJKbyt5ZXdpeGJWekJ0NjErUDBJenhQOU5FWXBmbzlERVRwNExQMHZ6?=
 =?utf-8?B?RTF1NmEyTk5VOTU0cDR5K0ZpSkhTSm1SV0M4Z1pnVWNIY3dDSHgyKytldC9w?=
 =?utf-8?B?OEd4a3pHR1V0bTFYRVV4bCtkWmdwZ2FoR2d4RitaekxPNkFIMXhXNmY4eHgw?=
 =?utf-8?B?N1FSa2hHY1I0a2doeXhSZllZR2FmTHRoWHlBUGJlTTgwVnRIMkZTQzhxZkpW?=
 =?utf-8?B?djlOc0MzOTRmcXhWUEZmdS9IWGkvQ2FiWVpIWHJ6anFNUXI1cFR4b0NCWHpT?=
 =?utf-8?B?cWIyTnRKeVUzU0FZYkF4TjV3bWdBN1lOL1dPdVZSTkFmZ3lKVTFxd3JVL2Z1?=
 =?utf-8?B?cW1qUlFuTFQvZFB0ZXRkcTZabHJJQXVQSEx1Sy9aemhrcTNhMzhKQWpHNFNM?=
 =?utf-8?B?dXVmdk5YQng1NVBFNHo3b1JlUU8yVm15ZkcxbzFCZnRPSVNPWmNDUnNjM0cr?=
 =?utf-8?B?Z05DN1QrSGdPNlFObXp6WGp2aEhPa3lRQ0dTUUdwS3JLbWVjVW5wRUx6ZllC?=
 =?utf-8?B?NW9KR0lidldFSU5oNTZoVnVodWIwN3BUdVFxR1pQNVk2d2JyQkFLcmd1TVM0?=
 =?utf-8?B?NnNJTUJlWU5zdXZQUFA0MGQ4TmVnRjZrbEQ1cUVhYjB3bGc5dytYd0pVYWg2?=
 =?utf-8?B?THFWKzFGVmdPUGRRcG9jbzJOVmQzcnIvQ05LNTBpMkc1empmbjZid3BoYjd6?=
 =?utf-8?B?cm94cmQ3bUhmYkxvUFFpY3dxc0pPNUJkNmhnVHQ0MGJ2T1YyT2p2UFhPZzd6?=
 =?utf-8?B?ejhITU1BczVKTVB3dUZXQncwMGFGcWJEeDNZWUF0QmxkaS9pODlCRGRxK0xQ?=
 =?utf-8?B?OXpkMldnMUNmMkFjeXY3cmllQUc0OTV1aFZ3dk92STFRK0JSWS80RlZldmFU?=
 =?utf-8?B?T0ttMWJkRm5va1ArM05CcHJ4S3A4YzFMTXBldjNwSExMOEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3RzTklndGovL1ZGZ2ViWnllSGVzK2g2bURDZjVlb3NzeDl2U2NVOEROaUY2?=
 =?utf-8?B?UWgrbWtZUTR6UXV4VGZXUysxWjI3WnkxeHVDdzkrMWRpZml6QSs1elB2eWh2?=
 =?utf-8?B?YzRYT3VsV0tkUDFZc1RLb2txRXYyUFY5VjVhVFVvWlNwd1JiSm9EWjVHQlpl?=
 =?utf-8?B?bis3NVVuU2E4VmRwZndjOGJaamZ6MEkvSkg1V2I2MEVrTzZrQ3hidVZRdnlY?=
 =?utf-8?B?aEZXUE96RmI4YWFYbFp0MVI4WjNNVi9Da3lueWlHSlNYdzFIenF5VXBXcFAy?=
 =?utf-8?B?STNjM2ZSQ3JlZ29OUzk1NHg0TmYrclNjZGFXSUZWV0pLSytMdTlTUUJoVlFm?=
 =?utf-8?B?R3BQUy9nejc2QnN4VDg4bnJlNlRWTVB6T0w1S3oxOGNaSGF2Nk5KdE1yZzhm?=
 =?utf-8?B?YlltanRQK1U0TGlaMVVxTVZDSTF2MEJSc2NuRk1ncWxieXl5a05jUWZOYlBS?=
 =?utf-8?B?S1lJWWhYcC93RnRqcnRQZSs1Y2ptdm5QOUtaZC9IN0hqaDdqeVhtelpvQzBR?=
 =?utf-8?B?enBsNlFjeGlzeEc2QzV5U0NJaWNrL29RWDhiMXJmNDFpM0NVdUt0MmQ1NVpj?=
 =?utf-8?B?ejkvTGttVUpOa1kwM1ptR0dIR1VWbys0UFE5SXpzZ3paMkhjUmEwcm9mM1p6?=
 =?utf-8?B?NkpweS9sdDlmQTNGZDhqTTlnMnk1MnlsNzFpSmF0bWVWUWU5V09HSTdSZ01S?=
 =?utf-8?B?TG9QOTlQanFydm55TWZ0UnpnVHVDVkxsYUc0R0hubko2MW90MjhyVm9kdS92?=
 =?utf-8?B?YjNHNkV4T2NJR0d6T0dpT1F2aGZ6bC83NVVzVmRtL1YrS2tmWDRwZDl0UVBG?=
 =?utf-8?B?OGtoVmNhN3E1ZE9Xdjg5emVnRndpMUNqVDBSSDBlZDJ5eHhEcWt4c2hQakNV?=
 =?utf-8?B?ZVRORU1CRXdTVzM4cEpCVHZyWUV5YmtrREFQVHlaYXpoWEdCNTNWQzJJRlI5?=
 =?utf-8?B?UzRqTHoxUG85ZlNqQnliVXg4bTJTVm1BdkRzTDUxRDdLUWZocE5BQVhuUHR3?=
 =?utf-8?B?bE81TlE4S0V0WmxNZGNXUmtENjVIN3RGK0xmOTZaOWJFa0N2QkZYQi9iTTJW?=
 =?utf-8?B?MXUvK09lSUtDSEhZT0RteFRQdlcrSk9Cd1hGVE42VmR4MWt2U2xMZGVmVGND?=
 =?utf-8?B?RHhqUVlUbG8xeXRIdUFyb0lrTFE0LzE5OURZOUh4U2xFWERsejR5dkpiTHJt?=
 =?utf-8?B?N1F5R1hCTXJoWXVHdWFTbmJCeWhRdlQzTi9Ed2dWOEFxRXBSaXY3bjZ2N045?=
 =?utf-8?B?NllEMFlwTFZFUnBNVVFUM055VWlzNlVzeFZPZlNaaTlYMGF4S0x0VjdhU0JH?=
 =?utf-8?B?MXFxeDl0VDFkWFNQd1VicjJTWVhONVpFR015ckRubE5kVkhFYnFSekxCa0Qx?=
 =?utf-8?B?amp4WDJnZ1lBajVVaDhzYnhNVnN0SDN3aE9BdG5vZFVrZ0EwU0JaVGZaNG0x?=
 =?utf-8?B?eUJZSDNhTWljUUJQOGJmYjl3ajF4dzBzZkowY2YzSWdheTFNZktObnhtY21u?=
 =?utf-8?B?VXduWTJxUnNaSEk3dXVhbWZKMTBDc295UTZtUFAxMk5iVUZhUUt3U0hlTHQv?=
 =?utf-8?B?Z1pjdjRyeXpZTzNKeElWTGhtLytiRVJUY1dGVTNkZHNEaVZCb1RzQ2Yxc0ha?=
 =?utf-8?B?N0Vma3Y0VFQ3OE9zd2FWSDJlVUJzemE5aVNHeENiNmcwZ3JBT2Y1dlFlSVhm?=
 =?utf-8?B?cnh1ZlExWHNPSTUvL2tOODEvR2RzeEJDSTQvb0VLREVEZktESVc2TTltL2dZ?=
 =?utf-8?B?RUN3SThJVldTRzFOV01pZ3Zjb2J1dThsRkszTzJPUCszMlVKMjVWem92YUx3?=
 =?utf-8?B?OHV2L1VTdjRwTmhxRjBZckM1QnM5SWFBZUVoeXc5eWYxL0F4UFhYR2pwdHoz?=
 =?utf-8?B?V1Z3MzY1RE1HYjVubFp3VWNVR0duSDgxNkJiSFNPclBiT0VmU1JvWktvR3B6?=
 =?utf-8?B?YzZmQ2o5VDVqK3RQeU1mWHBNWjkvZzVjM2JyMjFpOTcyMm5CVm4xbTlzV05r?=
 =?utf-8?B?QmlBOCtLWmM2Y3QzcGZJVWlBalYrckFPS2J3QzVzY1ZITS9odkZTRFh3Smwv?=
 =?utf-8?B?NGI2VkRJcUJxcHR3MHY3VzFmSU9rcm9SM2huUkJRVWhuTlB6K21tY2lPYkdt?=
 =?utf-8?B?emdyVzZyengzSGJEeVJNamYrK21vRXBMQ2NNRzVQUXBLMlB3ZDQrWkREb0ww?=
 =?utf-8?Q?knnUK7nWBlnxV2HfqJDcRT1AWB3xyZVuarStCkvDX5LT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c117e7a-b127-4326-7491-08dd45ed7b18
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 14:00:43.0927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wrQFQ77EFPfh0ecu7+oE7+rWOOzmP6oM1ppcQn44xsvDG3z/vt5HcRWLO9znPXjjx2BZA5Sgj91zMDk27M3+EbqXD+5v7eX7Xr/e5yHZcOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6994
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

SGksICAgIA0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDQzMTUv
IC0gUmUtcmVwb3J0ZWQuDQppOTE1LkNJLkJBVCAtIFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpS
YXZhbGkuDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEphbmkgTmlrdWxhDQpTZW50OiAwNSBGZWJydWFyeSAyMDI1IDE0OjAxDQpUbzogSTkxNS1jaS1p
bmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBzZXJpZXMg
c3RhcnRpbmcgd2l0aCBbMS8zXSBkcm0vaTkxNS9kaXNwbGF5OiBjb252ZXJ0IGludGVsX2RkaV9i
dWZfdHJhbnMuYyB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KDQpPbiBUdWUsIDA0IEZlYiAyMDI1
LCBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4g
PT0gU2VyaWVzIERldGFpbHMgPT0NCj4NCj4gU2VyaWVzOiBzZXJpZXMgc3RhcnRpbmcgd2l0aCBb
MS8zXSBkcm0vaTkxNS9kaXNwbGF5OiBjb252ZXJ0IGludGVsX2RkaV9idWZfdHJhbnMuYyB0byBz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvMTQ0MzE1Lw0KPiBTdGF0ZSA6IGZhaWx1cmUNCj4NCj4gPT0gU3VtbWFy
eSA9PQ0KPg0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNjA2MyAtPiBQYXRj
aHdvcmtfMTQ0MzE1djEgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCj4NCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+DQo+ICAgKipGQUlMVVJF
KioNCj4NCj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtf
MTQ0MzE1djEgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+
ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0
byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0MzE1
djEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWls
dXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4NCj4g
ICBFeHRlcm5hbCBVUkw6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDQzMTV2MS9pbmRleC5odG1sDQo+DQo+IFBhcnRpY2lwYXRpbmcgaG9z
dHMgKDQzIC0+IDQyKQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBN
aXNzaW5nICAgICgxKTogZmktc25iLTI1MjBtIA0KPg0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2Vz
IHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDQzMTV2MToNCj4N
Cj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMj
IyMNCj4NCj4gICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOg0KPiAgICAgLSBiYXQt
cnBscy00OiAgICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1bMl0NCj4gICAgWzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjA2My9iYXQtcnBscy00
L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MzE1djEvYmF0
LXJwbHMtNA0KPiAvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0KDQpQbGVhc2Ug
cmUtcmVwb3J0LiBXaGF0J3Mgd2l0aCB0aGUgbW9kdWxlIHJlbG9hZCBub3c/DQoNCkJSLA0KSmFu
aS4NCg0KPg0KPiAgIA0KPiBLbm93biBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tDQo+DQo+ICAgSGVy
ZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0NDMxNXYxIHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoNCj4NCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiAjIyMjIElz
c3VlcyBoaXQgIyMjIw0KPg0KPiAgICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2lu
Zy1jcmMtZnJhbWUtc2VxdWVuY2U6DQo+ICAgICAtIGJhdC1kZzItMTE6ICAgICAgICAgW1BBU1Nd
WzNdIC0+IFtTS0lQXVs0XSAoW2k5MTUjOTE5N10pICszIG90aGVyIHRlc3RzIHNraXANCj4gICAg
WzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjA2
My9iYXQtZGcyLTExL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLWZyYW1l
LXNlcXVlbmNlLmh0bWwNCj4gICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MzE1djEvYmF0LWRnMi0xMQ0KPiAvaWd0QGttc19w
aXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2UuaHRtbA0KPg0KPiAg
IA0KPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4NCj4gICAqIGlndEBkbWFidWZAYWxsLXRl
c3RzOg0KPiAgICAgLSBiYXQtYXBsLTE6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1XSAoW2k5MTUj
MTI5MDRdKSAtPiBbUEFTU11bNl0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFs1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYwNjMvYmF0LWFwbC0x
L2lndEBkbWFidWZAYWxsLXRlc3RzLmh0bWwNCj4gICAgWzZdOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MzE1djEvYmF0LWFwbC0xLw0K
PiBpZ3RAZG1hYnVmQGFsbC10ZXN0cy5odG1sDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQHdvcmthcm91bmRzOg0KPiAgICAgLSB7YmF0LW10bHAtOX06ICAgICAgIFtETUVTRy1GQUlM
XVs3XSAoW2k5MTUjMTIwNjFdKSAtPiBbUEFTU11bOF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAg
IFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYw
NjMvYmF0LW10bHAtOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4g
ICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ0MzE1djEvYmF0LW10bHAtOQ0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3Jr
YXJvdW5kcy5odG1sDQo+DQo+ICAgDQo+ICAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJl
c3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nDQo+ICAgICAgICAg
ICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlM
VVJFKS4NCj4NCj4gICBbaTkxNSMxMjA2MV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIwNjENCj4gICBbaTkxNSMxMjkwNF06IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MDQN
Cj4gICBbaTkxNSM5MTk3XTogDQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS9pc3N1ZXMvOTE5Nw0KPg0KPg0KPiBCdWlsZCBjaGFuZ2VzDQo+IC0tLS0t
LS0tLS0tLS0NCj4NCj4gICAqIExpbnV4OiBDSV9EUk1fMTYwNjMgLT4gUGF0Y2h3b3JrXzE0NDMx
NXYxDQo+DQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ICAgQ0lfRFJNXzE2MDYzOiAzNGYx
MTNlOWZlZjU0NjEzNGU0MDJlNzY1N2ZjNDdlOTJmYmE1OWRjIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzgyMjM6IGNjZmUwNDI3ODdiMDgyYzA2
NDAyZmY5YWYyNTdmODMzOGI4ZWRkNWUgQCBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+ICAgUGF0Y2h3b3JrXzE0NDMxNXYxOiAzNGYxMTNlOWZl
ZjU0NjEzNGU0MDJlNzY1N2ZjNDdlOTJmYmE1OWRjIEAgDQo+IGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPg0KPiA9PSBMb2dzID09DQo+DQo+IEZvciBtb3JlIGRl
dGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ0MzE1djEvaW5kZXguaHRtbA0KDQotLQ0KSmFuaSBOaWt1bGEsIEludGVsDQo=
