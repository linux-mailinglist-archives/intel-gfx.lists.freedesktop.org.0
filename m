Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0D9A08CAF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 10:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213E110F035;
	Fri, 10 Jan 2025 09:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMsFmyW2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6298510F035;
 Fri, 10 Jan 2025 09:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736502463; x=1768038463;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b84f59A1g+RXv+0f/Tn3Y5bWdVJRl9vEKovnYvpWfhc=;
 b=MMsFmyW2U9ulK97psIL9DxavFTM4B4dByscNuVjgWN4G8sWWqoDjBdoR
 18uVmP2mIWyLHFRFCGdhNOtZj81v9Z+Cg25f+DsuVB9LxLQVzPIRVFN17
 ltsbiwQPMJVO8Ef/MfTop3Ia5tVUsTqQP4Ev6KkgIfLUmfc++/hG5K6tO
 cdjX8BUVKPgKB/fn5T918uCUa9V9ilyTaOiOKD84t7rK0oL4oTeS0J03G
 PuUJTayIxFNv47D+JeKYoXLpzlB6o+ON+lHRGPln0Ju/y6odgc/cHFvu/
 hF7gVjnCgoPXPJgl/etZ+E9BdXb65u+8ap5l0vDWVqqj4kXBun43+clNn A==;
X-CSE-ConnectionGUID: VUbOmaz7RGifOrkdbvUnIA==
X-CSE-MsgGUID: iD8C8UqvSu+6dRg9xZlMxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36077933"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36077933"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 01:47:41 -0800
X-CSE-ConnectionGUID: GR4zLP9oQYiu5za2cQyoiQ==
X-CSE-MsgGUID: +QWZUrroQUSHoxyM0lv0cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="134528445"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 01:47:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 01:47:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 01:47:40 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 01:47:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KWVemiTjDdEsSRFU/FYzmAzcV2f8IMpKYtkfriKnukH746lKaGXg2IwJt2hIkVLbZLKZTFG4QjSibLIDsBcEpbCkkmRSenm+voHuSpKePMNcdS76CKTzqVEnYWgkHChDXXSHktCJAodYj3aJt2bSeDsUilzQqZz2jBHHMd9xtHmKBlFz7Q3TvWo6kBTazayzphxtmO2wd1k783tQfh9FLaS/Q3KnuTM8Qegct2Tn26AcjBdk8AwRF+v9ryKXr2RSMjcbwNKTM6L27DXiwY9cDTZ1Rzzqg9/dJ7HwXWYvmm8fjz09H6iPnKQPcDN4vIUbCw983Ck40SIHVgHesji1zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b84f59A1g+RXv+0f/Tn3Y5bWdVJRl9vEKovnYvpWfhc=;
 b=FfEkfE4DFyiZ0wmjpFwaIeWGq+p6/btczYzfFF+A8opD+lrsc2JIE1B3/pAp5aLXff5KlLFFup2aZTxIfK3vUtFSVguvhpSFo55E305MUv8KSIb31VXwuJS0CwM9mjOIsuyUrX0qz+uCfTWLC6r07uMmQxQBE1P4RIDUJfkw65ixpQ42S/RmiqHdRHrfpldtVLp5I0VeDdPuKJ6BhWOabN/Z8Gg3XVqKw3J25vKnRN5dJCOQDj/7j7u5siXOXmOinGz81KOAGXip1XB1mIO09rfGsmDZWjI9WJqydnnieIzEva93lqwLTOi+oC4wAeocbW0+u/rB6ojze0twqVG0Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.21; Fri, 10 Jan
 2025 09:47:19 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 09:47:18 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvY3gw?=
 =?utf-8?B?X3BoeTogVXBkYXRlIEhETUkgVE1EUyBDMjAgYWxnb3JpdGhtIHZhbHVlIChy?=
 =?utf-8?Q?ev5)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9jeDBfcGh5?=
 =?utf-8?Q?:_Update_HDMI_TMDS_C20_algorithm_value_(rev5)?=
Thread-Index: AQHbYtWlF6cgj9FaXkGQPEXVfw3fS7MPwKDA
Date: Fri, 10 Jan 2025 09:47:18 +0000
Message-ID: <CH0PR11MB5491AFC09F792C4DEBB198CBEF1C2@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
 <173637863039.1439618.9500058240291734180@b555e5b46a47>
 <20250109203226.GA5109@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20250109203226.GA5109@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|PH7PR11MB5983:EE_
x-ms-office365-filtering-correlation-id: f54ace78-ac82-4d91-7a49-08dd315bc5cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?M05ZN1ZkOVg4S295ZitMellaakVTZDJXeElEcys4cDNRWUljWGtaQmhhc2pK?=
 =?utf-8?B?dlBrTEZHMEM0N1B3SlNkZ01iZU91ZUdhNldBRm1VeDJEdW5oQUdTbzJlOU1F?=
 =?utf-8?B?bTV6UkErTFhjakY3elhlOC9rbWY5NUUzLzlDZmNQaVlOSGVCcU8zR1NwN2do?=
 =?utf-8?B?cDIraXpsanNtbW9rVGlmaTNqSFdLMmh3aXRxb0FiMkc5bFZKcTFIakFjZFVI?=
 =?utf-8?B?SlF1SEZ5czBGY2YyZ0R0dkt5YUVBbmk1SThyTlh2WjZZdDk5dzhDVjZWVElr?=
 =?utf-8?B?VVBCdy9GQUFqZS9MZmNmeDlXMUdpdFhIYTBhTnpGT211RENvSFFvSkRQOG5O?=
 =?utf-8?B?YUZ3b1dhQm42ZEJjWFBCdE13blpBc1BVMWNSdUN3eDBFTUtQMldFVjBqcUQ3?=
 =?utf-8?B?UFNIY0FTZDViOFF5YloyRWZ0S3J6M1VvNjJzMWVOcitzdWgyU1hXVkRycUxR?=
 =?utf-8?B?VGRVRElMSzBwanp6Y2RSWFpkOGRLd0ZVbkxmMElSN3lBK1dSdGNoZlV0RWFl?=
 =?utf-8?B?Snd4T0hCaVU2bkxPMHdMeDFWaTNNS2ZzZDl3d1BKRXNHWDkyN2FZSHh2SkdS?=
 =?utf-8?B?KzRaRmcwVHFhNEJ3ZG9vUVp5Y25tbkxGbWdtd0VadndzdnNJVlp3YTM0OEg2?=
 =?utf-8?B?aDlOd1c3RDRWSjVCd1Vmc3Z6L2pQWEJzSG5JQ3RmRjBMVkxuUllJWmE4RXV2?=
 =?utf-8?B?bmxmOGtQbS9WNHdKOUc5c2x5VEFxamUrdWNBN20xbWpYNHFmQk9NVHFXcUlM?=
 =?utf-8?B?aTJmREtkc0Z2L1dMMWErd1cvbEVlWGtVYXRrNEJ5N0xlZFArU05KNlAwWENN?=
 =?utf-8?B?c05MT3hXazhGc2p6c3VldTM5TVRmS3Q3ek92VWdWQmtwbm5lVWFOUEQ5RHVY?=
 =?utf-8?B?ZER4dWNGcDRHeG5IcVVULzE1L1FuNG1pc2NqWU1mbElTbjFvN2dEeUhrNW5Z?=
 =?utf-8?B?MDVqNzE5ZllUZ2V4d3JTV09FSjFueFhCN21kTkpDR0lQWHU4REpOVkNHZTB3?=
 =?utf-8?B?Q3lKakhIelYxOHdsSlRPbG5SSXNXZjVnbmE2WHZJbzNucHBicjN5Nk5Gb2Mw?=
 =?utf-8?B?K2kvYkNMU3Z5cmI2MEtXMnJqVktXREczQXBsUTRaY1h2eWNPZEhjeUNxVXli?=
 =?utf-8?B?MCtZdlhFeDdaTWd6WHpPSzVuSSt6NGNnZCsxYjA5Mk54UHBpb1c2SjFub0NZ?=
 =?utf-8?B?VzFnYWUwNXNQbk1ROXdYZGNYWFBYQ01JNVJUcnFyY0RYbGRjck5lN0xPNmhQ?=
 =?utf-8?B?K1dyTHVYcVh6YzJ6TVBnM1FpQVdISFVhUWpObnRqOVQ2T0o0Wm1TdGNKZGdr?=
 =?utf-8?B?TmdjMVc1dys1QTBqR2N5YkZGc1g4OUZXMUtmYUpXMUdianJDQ096NldUL3JZ?=
 =?utf-8?B?d0ZrYkVXaVd5Q2VlMkRUa1dEcnVyYUdRVDU1MkdjS0d4dW9HS0djdnRnODh5?=
 =?utf-8?B?MW9ONTNwNmIwQmZaK20rcWVNR0x3enJxcHFTRFduK0cyRFVic3NwUHQrTE9P?=
 =?utf-8?B?TTBuUkJjRmZ2bEVGMXZiTVNNSmppenJ1TzFTVXZvVnVFZDl1dmtCYjkwWEov?=
 =?utf-8?B?M2ttWlRZS2VNc0xRdlhmNC92TXdzYm5KY05xREMwNC9JUnM0c20vSEdFVzVB?=
 =?utf-8?B?ZWtMK2RrOUxDV3J6VHg4VEVjTFhsZXVrMERDYTc2RzZyRDBBS3JoRjZFeUJC?=
 =?utf-8?B?cDB2d2s1TlNrWWVnWVpLc1FSMUhrQkVrSW1EWEhUbmJKYTlva3BoYzFEd1Bw?=
 =?utf-8?B?UEhuRGZma0hId08wMjhYYzM0RG56dFlnb04vWENPZzVoSGxXelFuTHhvUDQy?=
 =?utf-8?B?bG0vdVBQK1M5bWllOEhDWXFPWUdvdVlIcTgzci9CanJFQU1adURBbDZHakpn?=
 =?utf-8?B?TEZ2R0ZDMTN4WlVFLzZmL1ZNVlR3NWR3U3g4QjRsVHJydXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzN4RUEyMmxCUFp0VVMzbE1EanJ5MVVHMTZRRUZJSFE5ajYrU21MSXp5Q3U5?=
 =?utf-8?B?SWp2QlAvM1Vxb1lhUXFsckt4TlVvZ2s3czM5Nkc2SkdjWnVac3lHVjlKM0xH?=
 =?utf-8?B?Y2Znc2pleWdLczRnS28wNmR0WVBrOGFZK0l6R1dtb3NKdTlyWHBYVUhPeW1Y?=
 =?utf-8?B?OFQzVnplS2d5MFRCczRnRTllbW5iZ3d5Z3E2cm1wUmtIWUg0R01mbzlmUlRk?=
 =?utf-8?B?TVpqOHFUSTFwakQ4b1lCUVAzOHZmTVh4TVVlVit3UW5rdVFBaWk5YjNtenpT?=
 =?utf-8?B?TGhRQWlya3VkSnRPVlJSQTllOTRpd1lhUU9PaDRUWisyTmtTbWdsZzFZaEla?=
 =?utf-8?B?VU5ubmNYRVpvU3BSUCs3aFlvbHpiaVFZZ2lLMkFkYXJYdkpOeWxYeXFYMkp6?=
 =?utf-8?B?SnYybmRDYW9lU2FwdkR3MzlFK3EzZldSbjlEcVU2UDFYVm1TRWVaMW5GbjVi?=
 =?utf-8?B?c0M0NHB4RWg4aE43clZVV1cvMHA1RDZ4Vmt1TG5QenRnbkx1TGk0ZmRvRWF6?=
 =?utf-8?B?TGpqUXRybXBUSXRaZlRMMnVWMVI0RkZHNEpENFMxT2ZLMEczYjFJVk1oU1Q4?=
 =?utf-8?B?QlZSUUtaclBkZlJBSjZWUWZwVFNES01DSjZ2Q1VOSU90b0ROM0dqSjFPRTFM?=
 =?utf-8?B?ejc2cUFNemFQRExkQTd4SDF2T3FqV24vbkw4UXNuVXlkbFVpNXRkUHMrSHov?=
 =?utf-8?B?N1NsV2lmZnoyNkNHS2Q3SkRmdWZCcFpaY1NoSTl6R1ZwZ3lJMXNYdVU0MXY0?=
 =?utf-8?B?RG5sZHdyRHRtTDNobE1PMWNpUTArTWNEdHk0cithNGg1cUY1aVNLSnlXOHZ0?=
 =?utf-8?B?eXJJQnpaYTRKTVl1ejRiWXN3eExvN2FscW5XTGlNSzR3bDJWOVNCUTRUMTF3?=
 =?utf-8?B?UERvZ1Ixa3owczRDQ053SEh6a0RuYmZWd0pKOWN4bGRVaWZFWXVUT0oweWdY?=
 =?utf-8?B?dTNqZEErdFJMd3k0OFpWOUlwUmZGMmZDaGlEcVhDekhKUnQ4QUl1bjc2WmRC?=
 =?utf-8?B?UjlZNml1ZzNoQ0kwenJtZHM3cDQ0bnJIQ0dvZ094YnRYT2JBSGM0TUs4a214?=
 =?utf-8?B?TW1FSjVBelZPRDhXcXdTV01TTkpzT3BLeTV5b3U2SU8ySjh4Y0tyRi9PSkZY?=
 =?utf-8?B?blBMcG9CNGxEL1MxYnRJazlSQjhqSDJvV3plZE53dGQwSHVaemFwR3RIbUxV?=
 =?utf-8?B?VExkMERhRVlXVTZyMUxtV3Q2TWpoaXNnR0tYL1hNeTVUaWY3RExOSlNkVm16?=
 =?utf-8?B?a1B5N0h5dXU5b0p6dm1PTERzS3BjeW44UXRPdVZrSmJPa0RETjcrR2FzeSsy?=
 =?utf-8?B?U2RGcVh6Rnc5a3NnM29wczRURzdJQmZBb25FS2E4M3JFaUtTem1EdE1ndXhu?=
 =?utf-8?B?K3dCakRpOGMyT2U3TmI2MnBvU29XcnFZNisyaTZQUkVUSHppRmEyMkdqQTVi?=
 =?utf-8?B?bXdXTXQ2Qk9xbTdKV3hWUWR1SStteTZaVXJHWjIzY3VLekovZzNyR1c0WmxV?=
 =?utf-8?B?OTdXRFJTUUxTUXJ2cnlRVW1HQzJZRkdSbUhXeUF0UTVNWnI1SUNOb2RPRDhZ?=
 =?utf-8?B?djlSU0JIWDk4Z01zVmk3SDROUENEWStFdnZRbEtWNXZTclhucVpZT2NRbjI3?=
 =?utf-8?B?aEdrSlpValNFNzRENkdKUE5mRGtHa3lBRzBWS3JxQ1NVaUs1YTNCdFRRaThK?=
 =?utf-8?B?cmxXQmcxOGs2WkN5MHNNeUFmVkdkemE0QWV2V1REMHRoYWMveEtUTXJBMmph?=
 =?utf-8?B?Ny9SNC91c0tjU1ZqV3ErUXdjdTMwOGZMc0gxb1NtNldCWFFFV2dGZHc1NjAz?=
 =?utf-8?B?ellpcENyTGRIRVB6MGtySDMvL3pvN2tWYUx2S0xyYnFWaG16Rlk4dVFvNDdV?=
 =?utf-8?B?SUZWZlowNVdWcmJONWhUNDlDMzFLOG9IcW9rSnBnNnZpYzRhQ2NMcCtLWG9Y?=
 =?utf-8?B?UTVyVVBaaml6dG96ek9qOWlVbUhldDBUTlVUUWtjakJ4RDRCVWxwZDFMOEhS?=
 =?utf-8?B?MjM0YU1MOHhpWXBsbFBVLzNxVDJkSmgyQWlJZ0U5ZEZVcE5kOXM4L3puZG9L?=
 =?utf-8?B?MXJrbVI2MGF5QS9qdTBLQzNiTnpTeU4vQm0zb3dWSVpqWmtaeDl3N054bStQ?=
 =?utf-8?Q?yYV5oMtGUPq+sYHwgHGt9Q4ja?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f54ace78-ac82-4d91-7a49-08dd315bc5cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 09:47:18.6518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H9SLWaA/llX5ZJrRB8OOF8SDMkDKjj6N85xwNg4p4MwqSAAEACNcC9NWB5WrFSzsBH6wkICyNZbtxUQJbE26gBHoR/LTY3PdV8vM5wRvXJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5983
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxMjgwLyAt
IFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2
YWxpDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJhIDxp
OTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2Yg
TWF0dCBSb3Blcg0KU2VudDogMTAgSmFudWFyeSAyMDI1IDAyOjAyDQpUbzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IEJoYWRhbmUsIERueWFuZXNod2FyIDxkbnlhbmVzaHdh
ci5iaGFkYW5lQGludGVsLmNvbT47IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQpTdWJqZWN0OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9jeDBf
cGh5OiBVcGRhdGUgSERNSSBUTURTIEMyMCBhbGdvcml0aG0gdmFsdWUgKHJldjUpDQoNCk9uIFdl
ZCwgSmFuIDA4LCAyMDI1IGF0IDExOjIzOjUwUE0gLTAwMDAsIFBhdGNod29yayB3cm90ZToNCj4g
PT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmllczogZHJtL2k5MTUvY3gwX3BoeTogVXBk
YXRlIEhETUkgVE1EUyBDMjAgYWxnb3JpdGhtIHZhbHVlIChyZXY1KQ0KPiBVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxMjgwLw0KPiBTdGF0ZSA6IGZh
aWx1cmUNCj4gDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZy
b20gQ0lfRFJNXzE1OTI2IC0+IFBhdGNod29ya18xNDEyODB2NSANCj4gPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAt
LS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFu
Z2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDEyODB2NSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUN
Cj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRy
b2R1Y2VkIGluIFBhdGNod29ya18xNDEyODB2NSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFt
IChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiAg
IHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFs
c2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyODB2NS9pbmRleC5o
dG1sDQo+IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICgzOCAtPiAzNykNCj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIE1pc3NpbmcgICAgKDEpOiBmaS1zbmItMjUyMG0g
DQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+
ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9k
dWNlZCBpbiBQYXRjaHdvcmtfMTQxMjgwdjU6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+
IA0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQHJpbmdfc3VibWlzc2lvbjoNCj4gICAgIC0gZmktcG52LWQ1MTA6ICAgICAg
ICBbUEFTU11bMV0gLT4gW0FCT1JUXVsyXSArMSBvdGhlciB0ZXN0IGFib3J0DQo+ICAgIFsxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5MjYvZmkt
cG52LWQ1MTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByaW5nX3N1Ym1pc3Npb24uaHRtbA0KPiAg
ICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDEyODB2NS9maS1wbnYtZDUxDQo+IDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByaW5n
X3N1Ym1pc3Npb24uaHRtbA0KDQpIaSBDSSB0ZWFtLA0KDQpUaGlzIGxvY2tkZXAgc3BsYXQgYXBw
ZWFycyB0byBiZSBjb21pbmcgZnJvbSBmaWxlc3lzdGVtIC8gYmxvY2sgZGV2aWNlIGNvZGUgYW5k
IGlzbid0IGNhdXNlZCBieSB0aGlzIGk5MTUgcGF0Y2guDQoNClBsZWFzZSByZS1yZXBvcnQgdGhl
IHJlc3VsdHMgaGVyZSBzbyB0aGF0IHdlIGNhbiBnZXQgc2hhcmQgcmVzdWx0cy4NCg0KDQpNYXR0
DQoNCj4gDQo+ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVy
ZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MTI4MHY1IHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMg
SXNzdWVzIGhpdCAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6
DQo+ICAgICAtIGJhdC1kZzEtNzogICAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XSAoW2k5
MTUjMTM0MDFdKQ0KPiAgICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzE1OTI2L2JhdC1kZzEtNy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9h
ZC5odG1sDQo+ICAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQxMjgwdjUvYmF0LWRnMS03L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVs
b2FkLmh0bWwNCj4gICAgIC0gYmF0LXJwbHMtNDogICAgICAgICBbUEFTU11bNV0gLT4gW0ZBSUxd
WzZdIChbaTkxNSMxMzQwMV0pDQo+ICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5MjYvYmF0LXJwbHMtNC9pZ3RAaTkxNV9wbV9ycG1AbW9k
dWxlLXJlbG9hZC5odG1sDQo+ICAgIFs2XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4MHY1L2JhdC1ycGxzLTQNCj4gL2lndEBpOTE1
X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlOg0KPiAgICAgLSBiYXQtdHdsLTI6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbQUJPUlRdWzhd
IChbaTkxNSMxMjkxOV0gLyBbaTkxNSMxMzM5N10pDQo+ICAgIFs3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5MjYvYmF0LXR3bC0yL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICBbOF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyODB2NS9iYXQtdHdsLTIvDQo+IGlndEBp
OTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiANCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
Z3RfbW9jczoNCj4gICAgIC0gYmF0LXR3bC0yOiAgICAgICAgICBbUEFTU11bOV0gLT4gW0FCT1JU
XVsxMF0gKFtpOTE1IzEyOTE5XSkNCj4gICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTkyNi9iYXQtdHdsLTIvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUBndF9tb2NzLmh0bWwNCj4gICAgWzEwXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4MHY1L2JhdC10d2wtMi8NCj4gaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUBndF9tb2NzLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZToNCj4gICAgIC0gYmF0LWRnMi0x
MTogICAgICAgICBbUEFTU11bMTFdIC0+IFtTS0lQXVsxMl0gKFtpOTE1IzkxOTddKSArMyBvdGhl
ciB0ZXN0cyBza2lwDQo+ICAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzE1OTI2L2JhdC1kZzItMTEvaWd0QGttc19waXBlX2NyY19iYXNpY0Bu
b25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2UuaHRtbA0KPiAgICBbMTJdOiANCj4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgwdjUvYmF0
LWRnMi0xMQ0KPiAvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUt
c2VxdWVuY2UuaHRtbA0KPiANCj4gICANCj4gIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjDQo+IA0K
PiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gICAgIC0gYmF0LWFy
bGgtMzogICAgICAgICBbRE1FU0ctRkFJTF1bMTNdIChbaTkxNSMxMzM5M10pIC0+IFtQQVNTXVsx
NF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1OTI2L2JhdC1hcmxoLTMvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4MHY1L2JhdC1hcmxoLTMvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgICAtIGJhdC1tdGxwLTY6ICAg
ICAgICAgW0RNRVNHLUZBSUxdWzE1XSAoW2k5MTUjMTMzOTNdKSAtPiBbUEFTU11bMTZdICsxIG90
aGVyIHRlc3QgcGFzcw0KPiAgICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNTkyNi9iYXQtbXRscC02L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
d29ya2Fyb3VuZHMuaHRtbA0KPiAgICBbMTZdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgwdjUvYmF0LW10bHAtNg0KPiAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+IA0KPiAgIA0KPiAgIFtpOTE1IzEy
OTE5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lz
c3Vlcy8xMjkxOQ0KPiAgIFtpOTE1IzEzMzkzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzM5Mw0KPiAgIFtpOTE1IzEzMzk3XTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzM5
Nw0KPiAgIFtpOTE1IzEzNDAxXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
OTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzQwMQ0KPiAgIFtpOTE1IzkxOTddOiANCj4gaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85MTk3DQo+IA0K
PiANCj4gQnVpbGQgY2hhbmdlcw0KPiAtLS0tLS0tLS0tLS0tDQo+IA0KPiAgICogTGludXg6IENJ
X0RSTV8xNTkyNiAtPiBQYXRjaHdvcmtfMTQxMjgwdjUNCj4gDQo+ICAgQ0ktMjAxOTA1Mjk6IDIw
MTkwNTI5DQo+ICAgQ0lfRFJNXzE1OTI2OiAxZjFiZjhkMjQxODcyZWFjZmMxOGE4MzkzODYyMzAy
YjhhYTg0NDJkIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+
ICAgSUdUXzgxODI6IDg5MTFlZmYyYzZjMDZkMjkyOWM2MDcyZjNiYTcyZDJkOTkxOTg1ZWEgQCBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+ICAg
UGF0Y2h3b3JrXzE0MTI4MHY1OiAxZjFiZjhkMjQxODcyZWFjZmMxOGE4MzkzODYyMzAyYjhhYTg0
NDJkIEAgDQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAN
Cj4gPT0gTG9ncyA9PQ0KPiANCj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyODB2NS9pbmRleC5o
dG1sDQoNCi0tDQpNYXR0IFJvcGVyDQpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcg0KTGludXgg
R1BVIFBsYXRmb3JtIEVuYWJsZW1lbnQNCkludGVsIENvcnBvcmF0aW9uDQo=
