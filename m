Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF46A11B62
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 08:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D05C10E50A;
	Wed, 15 Jan 2025 07:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwMK9LkF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3E2410E503;
 Wed, 15 Jan 2025 07:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736927943; x=1768463943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jQhKT31lVSn7MSlMaMDSABp0Ydg4qT1SNJzqsdtQrZE=;
 b=lwMK9LkF4UvEOhF4hhFcMUq+HsAE5B8V6v6ljvYdCW6KQWEJgUcBj89P
 UjqxpiVLGsBIIEDtTUN0o+8xUrFy6vxH7ZBWMZBh/67iStYBFxkZypvRF
 PkBrKW9s94bP6MRNgrnpBpAFDZuQtVyca38a1BDcl0ED9o7wi3klICM0d
 alQ+LpP5PhtlcaTBaEyfal3r2FbpFBnJJsp15rtb3cIwIg2Hbf1UNHyjE
 7f4AWT4+AQGZd3ap1XjNzyX3sYrc9SaCD3JtWx0h/bPNa7xF1Iqy8VR9Q
 rVR6IO3VZc9BDOhgu1DYJw4onOWwOTtEPaMjLY2TLrRsKzpCYl4cMxMyn A==;
X-CSE-ConnectionGUID: j792mewqSNe1Dh0ZvIONcw==
X-CSE-MsgGUID: cALjN5uVS7+daYuNrKtyjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="48250276"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="48250276"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 23:59:02 -0800
X-CSE-ConnectionGUID: 9gbEyoS5TJ6TCB7gutGHOg==
X-CSE-MsgGUID: KMD2f9dWSR+lPnBA0EIz7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="104808252"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 23:59:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 23:59:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 23:59:02 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 23:59:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jZ7jviuQ0GyawCfrkpUZi4sePsAOq+0qUAd8hKJBKP2aFQHEuJAhoy6Av5WG6gM4r6zdY7q7QTtfM3Zn3+D48r43ng+9uRGozqMJKsWzO6LBDdkC26Rj8yMEoYgl3XtawK5pDYlqN4QHTRXZgT1NezK5Gzvey2wp1gPIeYPHmNOzPYEJfWd6hyi5GPR5ZbwK2qfLCW7oMQJEILiItwUD3oPcJ0Ffjy14bHLjG2qqObehBGB7neqjQGE5mtx//iimSvRi5gY1hDdPja2QKx46S7G2XlN/hqaQRdAKHMIwiWVewoN/INjG7aBesgyA8BZytvrD4sR6+j5V6zrxTKXUxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jQhKT31lVSn7MSlMaMDSABp0Ydg4qT1SNJzqsdtQrZE=;
 b=WiVJdpNDWPgzHPIlz+B1xG3XZahTHMeL3M1+50c4zw9zuvi2BQTaIW78dfaI1ihul7H2TBcOLLGnnpRn06El/2qpNnPHxDdw7WVdHFn+jSbmR1n133Y+8rRg4GkCpfpcXoSLWTzhHYuGCwC/z3jtI63EhmVS6XXxW/YWUabUmWcf66ISMtAfY9yItSsPC+0zt6xQXByVkdxGe8f723iPH0EnwmHW09GAAORS3bmZoDlIgtQWODTx8bSBA5Eiqg7dOWsUWr2lmurAoHfMF/YOnKIQsbCJeH009XpbWQ/vLPfkWVJS+RyjibC4YB3yZ8vs6Om/KEIkRsnJc+ck6Jek3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SJ0PR11MB6622.namprd11.prod.outlook.com (2603:10b6:a03:478::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 07:58:19 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 07:58:19 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 03/10] drm/i915/psr: Split setting sff and cff bits
 away from intel_psr_force_update
Thread-Topic: [PATCH v3 03/10] drm/i915/psr: Split setting sff and cff bits
 away from intel_psr_force_update
Thread-Index: AQHbYmiedObEErOkDUWFOfJstGoH+bMXgXWw
Date: Wed, 15 Jan 2025 07:58:19 +0000
Message-ID: <BL1PR11MB59796CF384567C7B3BDC98ECF9192@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-4-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SJ0PR11MB6622:EE_
x-ms-office365-filtering-correlation-id: abe7faa2-3e05-4880-b1d0-08dd353a6009
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UHE1Njl3bE5oWEpDakwrVGhUeG9Vakg2amR3L1ZBOHVUZ2dYc2hiZzJEUi90?=
 =?utf-8?B?eVhIWFNFS3ZvY0VLQTBlRW9FeXl0VE9mNk50ODk3ckpyOFJvSTcvemtFNTRO?=
 =?utf-8?B?VU15b0xuRTdpMzBsTlZMeEk0STBhdDIrOXJNME1aTlJUdnA2cE5aTWRGRWdT?=
 =?utf-8?B?NjNVR2hPSWFhTEUydjlVK2xCcnpHR25CdjJFZ0tuV24zTjF2ZFRpd2ZLWjdL?=
 =?utf-8?B?UVpraUVuRi9jWXRUdG5wOENmdW1rVnpxUEt2dmVSRVdRN0hVcVZmZFV4QkYr?=
 =?utf-8?B?d1JOdCtkdVd3amlXbWoyZ29yZnlyTG5kVG1rVUN3ZHNtR2taMTNLd3ZpQ2dt?=
 =?utf-8?B?VHhIc3ZVQmlkeWs4WjFRTkVzcitrMk5GVnRHTnpyd0JyL1JrdTFhVWJKanVy?=
 =?utf-8?B?cWlRa0JNb014ZktGUThQL09yVHNtL3RhVTFTUWh1dnJPUzQwTWpTOENSb3dR?=
 =?utf-8?B?NlNPd2toazgzTHhyOUlhTzJJR25yWG1uU1NaVElRUjRsbUpiOW52R3lnNW5n?=
 =?utf-8?B?aWJBOUQ4VGI1bkRoZERrOGY0b255S3pBWGMxME1zR0RwVDFodVQ3dnJaR1pP?=
 =?utf-8?B?MWhLbUE3Y1ZNUWVWaEg3bVNIRHRnRmd5MnlnVHIzT3hlU0VNMGNHekpuZ2hh?=
 =?utf-8?B?ZHA2L0NTbEtvZ2ZaSDdkV2g1bWk3S0V5Q2cxanMwV2hsMGptVExpRUNYOTZv?=
 =?utf-8?B?UUF0dzdqeENtL0JrOEs5UEp5VXU3WTQ1SUxhNmRZdWVPSVZkT1c2ZmN4UnBD?=
 =?utf-8?B?NlY2Qkt6UTdzblpodzJ2NVE4cENPYXgzS3c3a3dzOStOOVo1R1N1Nk1wV1FX?=
 =?utf-8?B?YXhYMzBqelhMdFEwSUhTU1RKcFlxN1BEOTN6dG1mdjFjSkxPTTFWT3ZsQ0NE?=
 =?utf-8?B?ZVZuYnZFMWxCSXI5TTVaYjUvaitLV3QxQlF1RlBDNWlQN2dlUWNtQ082VnZN?=
 =?utf-8?B?M0l4R3FXYS9YTWdyalo4NFhvTjdweDhENkgyTHplTlh4SVFlMGpWakJFL2F0?=
 =?utf-8?B?Qno4c3BNaysxUlkyaFBISDkyd0FjMDFYdlI5Nnd5ZDhQK3N2ekJyYzJSN0pp?=
 =?utf-8?B?WWprdG8rRXFQd1J5UFpOU3kreTNUUEY4MVkxMXc1c3gzQzZQRy8rTUJVYnMw?=
 =?utf-8?B?b2dBZStJb2Jxdm40VnJFTEdjZWJRQ1h1U1pXYWlHc25KdXhFcllOTTNVWGJz?=
 =?utf-8?B?Q1lkNEw2QS9Xclp3a0R5TGF6ZXNsZVd1NzRkYmxTWGtzdmFrblc5SllXaW9C?=
 =?utf-8?B?ZEh6S1ZyOG14K3ZjY254TGE2TkVMKzFxRjd0cGJlUUtGaTJuOUlYWE5JTXpN?=
 =?utf-8?B?cXJmSzRMMTNGdjNuamsxMjFoYmErRytLZThpcU4zZjNHRC96RmRhMWRPZzhN?=
 =?utf-8?B?YVlTcTlyNlFZVkcrL2xpUUxGbDJ0Vkg0a2V1ekRkMEJtcXkzeE1zeDVBaFRq?=
 =?utf-8?B?U1dLZU1IV0JkRVg4SXgyNnRHL3FUV3ZEZkc2SlZCVkEzbjNlVUI2Z0tnUFk0?=
 =?utf-8?B?bjY1ZTAyZUxrbEp1dlZhUHJFMXFtbDdtTjJaYSttNENaK1VJaXBrbnVQVGxD?=
 =?utf-8?B?Y3JGOEd3bnZOdkx6a0UwS0xRdS8xYXlmQ3pOZzZybEU0T0ZhNVBubWhFQkZU?=
 =?utf-8?B?QjFvbVFGb3NjL2F6QTcreExzamNvSnl3bEE3ZVorVE8wSDFDSzVDRzB1K0JX?=
 =?utf-8?B?OVJWbkd3RGc3ZmxVZi9CYkNlZzh3MzdEMzU4a0FFRUh4Ujd3N0F1bjdEVHQr?=
 =?utf-8?B?RXlERm1HT1hJZ0RzakJRWjFlbjZpYlF5eFFCSWMybXNTOHR2eW9PNjZwemk2?=
 =?utf-8?B?OWpNdmhaSmkycjFnZk9NOEpGTVZ2U2F2eFhaRXhsdnBWdGl0RE1ZTit3b1hs?=
 =?utf-8?B?Q2VGVVBVbG5HQ0NEMUw5cG9CMzEyaVlDWjdnNkw0OFlFZlZhb1I4c0RNL3lR?=
 =?utf-8?Q?Ld84scS7HmpP4bVi1hrlRDoElkg8WA1u?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlZwLy9RWmhMN1ZtTzcwbWpFR3lmbW4yUzJVOEVGWnM2UEN5YWV5eVRpQU5C?=
 =?utf-8?B?RTV5Q2JiZWF6UHp2eDRlQkFzaHJkVnA5STBvQ29NQTZWVU9LeFpYUFZ1TkIw?=
 =?utf-8?B?Y0FRSTZaaHorSFBhMm1oTDN2MGhIN3JoaWh0d1dzSktOYzZtRXFsM0FEa1B1?=
 =?utf-8?B?SFpITW5pV2xIRnZVOUVRbWlzTkMxQkwyaG8rNGxyWUZQUGFOMTJMMVVCMU5x?=
 =?utf-8?B?VWNEZzhFVTJlWEx2Y0Zjby9mVWtiYnk4WnMxNkI0STdSSTcydVRTOFJJOVVR?=
 =?utf-8?B?L2xnaEN4WnZSd3hHQmVMUXFNekVyc2J5ekhFMysxY0Jrc1E5cU5oSWdUWDVp?=
 =?utf-8?B?N3Evc1JrUXo0aUNjb2xwTXJlVVNpNm1JbzY2SjlqU3pmczdCUkNZVkZCNWY1?=
 =?utf-8?B?VkVjdFhQODFqRzJlUURTQkhuZmJxTUFhb1BQdjA2Z3JVSXp6THBabXdrcWU5?=
 =?utf-8?B?UHZZQmRoUWhXWFYyOWdjZjY3VVNVaTFrTEdkQmRxb0R5SXgxTXFKUmFwanUr?=
 =?utf-8?B?UjlLdEw4eVYvRmdicGJHM3UzMWxGOEF0UUs1S25ib1NDa3d2NDBIcnA1ZTFL?=
 =?utf-8?B?SlBVUlVkcnRWSnlpV0pyRjM1bWQxbG9Edk5Lb3ZWQVhaZDQxcVpmLzYzN2JZ?=
 =?utf-8?B?dnAxSzFHVlI2OHVDMTdoRUhDMWhBU0dFYnFhZUhUZ3N1MkNFNlNEZEVXcjlD?=
 =?utf-8?B?S3pyQ24wNEZlSDdpb1BLZVVxNEtSQ2lyaS9sMEJkR283dlkwdEhBRlk1M0xI?=
 =?utf-8?B?OW85OVYveitJbFJsVmRoeGxyUkdUWUk5UzZUV0cvcmtPVHVXLzk5NkhhM3Bq?=
 =?utf-8?B?VFUvNVA0eEtrQTdSdktQdWVxck5Dbld1UGVLVDlyWnowMlBkK2VyYmk1M3h1?=
 =?utf-8?B?SnZnRWJ5TG42WlN3WlA4TC92OFI0czVoQ2h1VzlGekQvQjlxZDRGeTBCYS85?=
 =?utf-8?B?TkExNndYcmFVaE9HMmpXVlhXbXErYXg5ODNmWlhJNTYzeHdhK0pkK05GMElR?=
 =?utf-8?B?WVBHYzFIb3B2MG1XNXVwWVNpL2hwYTV4bmdxZ25zRkozaXdPa1kvYzE4eVRW?=
 =?utf-8?B?anZxelhrME42SlYrend2bVR3WThRQ3BoZy91elcvdzJqbWo2cVROSHdDa0dU?=
 =?utf-8?B?WlRsRlpFVEVnaExEYUIrZzRJUXpkZllONlVwc3hSYjcxNVV6K3VCd0pLNklk?=
 =?utf-8?B?MHU0MytiVFBhR3NSaDMyU21IL2QzY2wvdmcrSVVVZkRQVWMxNXlCQ0hKRjVn?=
 =?utf-8?B?czFDcGtYdnh1MkhDSE5kd081em84VG5FdXZBVkpEV0NaRmVEOTFpYXFzWHM5?=
 =?utf-8?B?S2NsK0VWcHd1WnZGODNBK1hmZDcyS3ZKUE0zSUtvajR2cU1KTUM5VEdtenlN?=
 =?utf-8?B?Sm4yNDgzdTVqNjBDWVBma0xYMmdhRGtiOEFOeTVCdUh1cCs4NUh4R3RhUHVQ?=
 =?utf-8?B?Umt1ZUdMTmFLV2NXV2hQRnY3UVJiTnlPYXU5aDV0UzUxK1BlNllMa3lBVXk0?=
 =?utf-8?B?UTNVM2pvNTRMTU1YR1QzcjB2NEIwalIya3Vud3Bpd0ZvOFMwL1NoRVVXb05P?=
 =?utf-8?B?TTlzbjArbjBtVmtSWnRlK2xPcld6ODdsKytEMnYzK3Exb0M5c083YTlzcndt?=
 =?utf-8?B?ZWt1LytiOWNJdnhnWFlGd24yWEUvcjhUM3RLU1FtT3hwV2ZSTTFsN2J1dktE?=
 =?utf-8?B?Vkdnb1pGK0ZPRXRoN3NqUEFEK0VDdW91aVpzd2EzMEZNUEhHTGVyK2k1WnE1?=
 =?utf-8?B?NCsrZ2ZwVzlVQjVLdDArL2w3R3g1VmppbVVIS1BvaW53UWdiei9XbWtCa2M5?=
 =?utf-8?B?VTBnQzVVMzF6ZWJqdnBFZWtLQ04yRzNzWXk3Tk45ZzBUL0Y5L2ZhOUtuWlBR?=
 =?utf-8?B?alBpZkpSMGtGamFNcm1CZmw0VmdETFdid2Q4UHhiRjRhU1M1WmxXLzZrQ3la?=
 =?utf-8?B?L2tDTEZsaFF3c0EyNDY0Vzd0MERDemJ1RjRPR1VERkdLaGRlV0FDV1gyUnZI?=
 =?utf-8?B?TXRKNUltcGQwb3A1Nkg5VGZZV2VGRStPbS9YMnpmd2FuYVRHTnFTVkVDUW8w?=
 =?utf-8?B?aW9KQlRqM2wxTG92R3RjTHNwMXNKU216a05JbnVHbC9lbUsvakxQNytTaDJt?=
 =?utf-8?B?dkp0amsxcE1hN245S0ZFUUpNdklLT2dGSlU1Q2JtKzlLMktUY0NqSm9DOWQ2?=
 =?utf-8?B?Q2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abe7faa2-3e05-4880-b1d0-08dd353a6009
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 07:58:19.1833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H8gbprlDJs+4sb2jk0VR7N9GAdNwfcp+TcSjG6Fgco1dtw1dY9NZGvTMAu0uodli/EnPVJRq+4bgbxZHfZCPnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6622
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
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDksIDIwMjUgMTowMiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDAzLzEwXSBkcm0vaTkxNS9wc3I6IFNwbGl0IHNldHRp
bmcgc2ZmIGFuZCBjZmYgYml0cyBhd2F5DQo+IGZyb20gaW50ZWxfcHNyX2ZvcmNlX3VwZGF0ZQ0K
PiANCj4gVGhpcyBpcyBhIGNsZWFuLXVwIGFuZCBhIHByZXBhcmF0aW9uIGZvciBhZGRpbmcgb3du
IFNGRiBhbmQgQ0ZGIHJlZ2lzdGVycyBmb3INCj4gTHVuYXJMYWtlIG9ud2FyZHMuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCA4OCArKysrKysrKystLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMSBp
bnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA1NDExZDBkNmYzNjIuLmU2Zjk2YThiNGZi
MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBA
IC0yMzEzLDE1ICsyMzEzLDYgQEAgc3RhdGljIHUzMg0KPiBtYW5fdHJrX2N0bF9jb250aW51b3Nf
ZnVsbF9mcmFtZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgIHN0YXRpYyB2b2lkDQo+
IGludGVsX3Bzcl9mb3JjZV91cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxf
ZHApOw0KPiAtCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3Iu
dHJhbnNjb2RlcjsNCj4gLQ0KPiAtCWlmIChpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2Vu
YWJsZWQpDQo+IC0JCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+IC0JCQkgICAgICAgUFNSMl9N
QU5fVFJLX0NUTChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+IC0JCQkgICAgICAgbWFuX3Ry
a19jdGxfZW5hYmxlX2JpdF9nZXQoZGlzcGxheSkgfA0KPiAtCQkJICAgICAgIG1hbl90cmtfY3Rs
X3BhcnRpYWxfZnJhbWVfYml0X2dldChkaXNwbGF5KSB8DQo+IC0JCQkgICAgICAgbWFuX3Rya19j
dGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChkaXNwbGF5KSB8DQo+IC0JCQkgICAgICAgbWFu
X3Rya19jdGxfY29udGludW9zX2Z1bGxfZnJhbWUoZGlzcGxheSkpOw0KPiANCj4gIAkvKg0KPiAg
CSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNrbCsNCj4gQEAgLTMxMTksMzEgKzMxMTAsMzEgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0DQo+ICp3b3JrKQ0KPiAg
CW11dGV4X3VubG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMg
dm9pZCBfcHNyX2ludmFsaWRhdGVfaGFuZGxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ICtzdGF0aWMgdm9pZCBpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVfdXBkYXRlKHN0cnVj
dCBpbnRlbF9kcA0KPiArKmludGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICAJZW51bSB0cmFuc2Nv
ZGVyIGNwdV90cmFuc2NvZGVyID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0KPiANCj4gLQlp
ZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7DQo+IC0JCXUzMiB2YWw7
DQo+ICsJaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpDQo+ICsJCXJl
dHVybjsNCj4gDQo+IC0JCWlmIChpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFi
bGVkKSB7DQo+IC0JCQkvKiBTZW5kIG9uZSB1cGRhdGUgb3RoZXJ3aXNlIGxhZyBpcyBvYnNlcnZl
ZCBpbg0KPiBzY3JlZW4gKi8NCj4gLQkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+IC0JCQkJ
ICAgICAgIENVUlNVUkZMSVZFKGRpc3BsYXksIGludGVsX2RwLQ0KPiA+cHNyLnBpcGUpLA0KPiAt
CQkJCSAgICAgICAwKTsNCj4gLQkJCXJldHVybjsNCj4gKwlpbnRlbF9kZV93cml0ZShkaXNwbGF5
LA0KPiArCQkgICAgICAgUFNSMl9NQU5fVFJLX0NUTChkaXNwbGF5LCBjcHVfdHJhbnNjb2Rlciks
DQo+ICsJCSAgICAgICBtYW5fdHJrX2N0bF9lbmFibGVfYml0X2dldChkaXNwbGF5KSB8DQo+ICsJ
CSAgICAgICBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2JpdF9nZXQoZGlzcGxheSkgfA0KPiAr
CQkgICAgICAgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChkaXNwbGF5KSB8
DQo+ICsJCSAgICAgICBtYW5fdHJrX2N0bF9jb250aW51b3NfZnVsbF9mcmFtZShkaXNwbGF5KSk7
DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIF9wc3JfaW52YWxpZGF0ZV9oYW5kbGUoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkgew0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2Zl
dGNoX2VuYWJsZWQpIHsNCj4gKwkJaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2Nm
Zl9lbmFibGVkKSB7DQo+ICsJCQlpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFi
bGVkID0gdHJ1ZTsNCj4gKwkJCWludGVsX3Bzcl9jb25maWd1cmVfZnVsbF9mcmFtZV91cGRhdGUo
aW50ZWxfZHApOw0KPiAgCQl9DQo+IA0KPiAtCQl2YWwgPSBtYW5fdHJrX2N0bF9lbmFibGVfYml0
X2dldChkaXNwbGF5KSB8DQo+IC0JCSAgICAgIG1hbl90cmtfY3RsX3BhcnRpYWxfZnJhbWVfYml0
X2dldChkaXNwbGF5KSB8DQo+IC0JCSAgICAgIG1hbl90cmtfY3RsX2NvbnRpbnVvc19mdWxsX2Zy
YW1lKGRpc3BsYXkpOw0KPiAtCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiAtCQkJICAgICAg
IFBTUjJfTUFOX1RSS19DVEwoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLA0KPiAtCQkJICAgICAg
IHZhbCk7DQo+IC0JCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+IC0JCQkgICAgICAgQ1VSU1VS
RkxJVkUoZGlzcGxheSwgaW50ZWxfZHAtPnBzci5waXBlKSwgMCk7DQo+IC0JCWludGVsX2RwLT5w
c3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgPSB0cnVlOw0KPiArCQlpbnRlbF9wc3JfZm9y
Y2VfdXBkYXRlKGludGVsX2RwKTsNCj4gIAl9IGVsc2Ugew0KPiAgCQlpbnRlbF9wc3JfZXhpdChp
bnRlbF9kcCk7DQo+ICAJfQ0KPiBAQCAtMzIyNCw0NCArMzIxNSwyNyBAQCBzdGF0aWMgdm9pZCBf
cHNyX2ZsdXNoX2hhbmRsZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKSAgew0KPiAgCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7
DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaXNwbGF5
LT5kcm0pOw0KPiAtCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5w
c3IudHJhbnNjb2RlcjsNCj4gDQo+ICAJaWYgKGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hf
ZW5hYmxlZCkgew0KPiAgCQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5h
YmxlZCkgew0KPiAgCQkJLyogY2FuIHdlIHR1cm4gQ0ZGIG9mZj8gKi8NCj4gLQkJCWlmIChpbnRl
bF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9PSAwKSB7DQo+IC0JCQkJdTMyIHZhbCA9
DQo+IG1hbl90cmtfY3RsX2VuYWJsZV9iaXRfZ2V0KGRpc3BsYXkpIHwNCj4gLQ0KPiAJbWFuX3Ry
a19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRpc3BsYXkpIHwNCj4gLQ0KPiAJbWFuX3Rya19j
dGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChkaXNwbGF5KSB8DQo+IC0NCj4gCW1hbl90cmtf
Y3RsX2NvbnRpbnVvc19mdWxsX2ZyYW1lKGRpc3BsYXkpOw0KPiAtDQo+IC0JCQkJLyoNCj4gLQkJ
CQkgKiBTZXQgcHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgYXMgZmFsc2UgdG8NCj4gYWxsb3cg
c2VsZWN0aXZlDQo+IC0JCQkJICogdXBkYXRlcy4gU3RpbGwga2VlcCBjZmYgYml0IGVuYWJsZWQg
YXMgd2UNCj4gZG9uJ3QgaGF2ZSBwcm9wZXINCj4gLQkJCQkgKiBTVSBjb25maWd1cmF0aW9uIGlu
IGNhc2UgdXBkYXRlIGlzIHNlbnQgZm9yDQo+IGFueSByZWFzb24gYWZ0ZXINCj4gLQkJCQkgKiBz
ZmYgYml0IGdldHMgY2xlYXJlZCBieSB0aGUgSFcgb24gbmV4dA0KPiB2YmxhbmsuDQo+IC0JCQkJ
ICovDQo+IC0JCQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwNCj4gLQkJCQkJICAgICAgIFBTUjJf
TUFOX1RSS19DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiAtCQkJCQkgICAgICAg
dmFsKTsNCj4gLQkJCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiAtCQkJCQkgICAgICAgQ1VS
U1VSRkxJVkUoZGlzcGxheSwgaW50ZWxfZHAtDQo+ID5wc3IucGlwZSksDQo+IC0JCQkJCSAgICAg
ICAwKTsNCj4gKwkJCWlmIChpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9PSAw
KQ0KPiAgCQkJCWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgPQ0KPiBm
YWxzZTsNCj4gLQkJCX0NCj4gLQkJfSBlbHNlIHsNCj4gLQkJCS8qDQo+IC0JCQkgKiBjb250aW51
b3VzIGZ1bGwgZnJhbWUgaXMgZGlzYWJsZWQsIG9ubHkgYSBzaW5nbGUgZnVsbA0KPiAtCQkJICog
ZnJhbWUgaXMgcmVxdWlyZWQNCj4gLQkJCSAqLw0KPiAtCQkJaW50ZWxfcHNyX2ZvcmNlX3VwZGF0
ZShpbnRlbF9kcCk7DQo+ICAJCX0NCj4gLQl9IGVsc2Ugew0KPiAtCQlpbnRlbF9wc3JfZm9yY2Vf
dXBkYXRlKGludGVsX2RwKTsNCj4gDQo+IC0JCWlmICghaW50ZWxfZHAtPnBzci5hY3RpdmUgJiYg
IWludGVsX2RwLQ0KPiA+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cykNCj4gLQkJCXF1ZXVlX3dv
cmsoZGV2X3ByaXYtPnVub3JkZXJlZF93cSwgJmludGVsX2RwLQ0KPiA+cHNyLndvcmspOw0KPiAr
CQkvKg0KPiArCQkgKiBTdGlsbCBrZWVwIGNmZiBiaXQgZW5hYmxlZCBhcyB3ZSBkb24ndCBoYXZl
IHByb3BlciBTVQ0KPiArCQkgKiBjb25maWd1cmF0aW9uIGluIGNhc2UgdXBkYXRlIGlzIHNlbnQg
Zm9yIGFueSByZWFzb24gYWZ0ZXINCj4gKwkJICogc2ZmIGJpdCBnZXRzIGNsZWFyZWQgYnkgdGhl
IEhXIG9uIG5leHQgdmJsYW5rLg0KPiArCQkgKi8NCj4gKwkJaW50ZWxfcHNyX2NvbmZpZ3VyZV9m
dWxsX2ZyYW1lX3VwZGF0ZShpbnRlbF9kcCk7DQo+ICAJfQ0KPiArDQo+ICsJaW50ZWxfcHNyX2Zv
cmNlX3VwZGF0ZShpbnRlbF9kcCk7DQo+ICsNCj4gKwlpZiAoIWludGVsX2RwLT5wc3IucHNyMl9z
ZWxfZmV0Y2hfZW5hYmxlZCAmJiAhaW50ZWxfZHAtPnBzci5hY3RpdmUNCj4gJiYNCj4gKwkgICAg
IWludGVsX2RwLT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzKQ0KPiArCQlxdWV1ZV93b3JrKGRl
dl9wcml2LT51bm9yZGVyZWRfd3EsICZpbnRlbF9kcC0NCj4gPnBzci53b3JrKTsNCj4gIH0NCj4g
DQo+ICAvKioNCj4gLS0NCj4gMi40My4wDQoNCg==
