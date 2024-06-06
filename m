Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A42F8FEFC4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196B110E99A;
	Thu,  6 Jun 2024 15:01:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z28m0QcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6186210E998
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717686080; x=1749222080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bZbaUp2urOvLtH6SaDu4xR+ZSmJJDl0BukUQQXi24mU=;
 b=Z28m0QcQPCD4ptdieJuI4/gkwssDMH0QEZzIoDz30c2WhMzHRPTCPnPq
 omy1yO3VCIgLyckZTkHHHpF6I9C6IQyfITRFR0gjsA29eM09N3mDi7N+r
 dnvDOAznFRizXI+qS81pmZqOyZYlUL/KzEtzTQS+aYQFy/r/SDXKrJNyq
 FCUKJiAyWgAl0nMiMq0Y6U/SIt3u7qGc6js2EnRs+GCuOh54FJ8+4QxV8
 w/0Jcy1iwdVII4UdPgOHYxFssaRY5O7eEZ834Qgs0NXxPegBCsWVO5MS4
 IGUsmHMjFOQpTSyTB0tUO9LVpXbpmURNMkw616NULB2FnpsLm7vcESEff w==;
X-CSE-ConnectionGUID: mIMk2ClyS0K97d0KZOzEXg==
X-CSE-MsgGUID: E6hKa6NFSoW39KaG/ywDdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18206356"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18206356"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:01:19 -0700
X-CSE-ConnectionGUID: 9rTMiFtBRciZlZYVAE8PfQ==
X-CSE-MsgGUID: liVx2Eg+TfuaYGMeVPoPYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42430062"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:01:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:01:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:01:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:01:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:01:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCc+kZG2f91fxnhuAwXmYqZwCeDZqQRBnGy7369ztAXuslNuFX4iep1iUsWfAir2bKGcpfg65J1/9lolcmI/S/uC0t4GNLhr3l/GyEQHU8YD/69Vmh6NxI9jul5e+HAM+GK2PSV6U25kZuVL8RBomxR4isUvmkLB9Y/Hp0QvuBxiMflDJGGHKQ30I9Y4v98FgKRixU+CPJK5HVw1qQq71RBp/NtFeSGiil7STaUa7DfQ1UFc4YsdOrFTrGmxXZLvi09ubeKj2HtCjSUW1gefGJ++1T75UPG5gM9Ex1jSjgt4WD7K3tDVR3PKQ1/x2/HAzPRchs/m48gcdQMMKNyuSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZbaUp2urOvLtH6SaDu4xR+ZSmJJDl0BukUQQXi24mU=;
 b=gwrSl0OZ6KbhZXN+d3iYlJl3RV4x2i6gDdCobuTvHnn4aipwmFuWcqY8AcwsocbJRIj2H8q+Edg1F1QIddwV2dxOPbybvWYCd57XAxF65Qf54iUGUCLgzGVos/zZWCcGhOUYbbsNisBVzROWXPAn7BhjI0sXKZZJL8pE/tymiroBNn+ag3NRAU/Vb2odWg4LRylQk/AcYYzey+JUW96HVVbsrn5kNr2iGVLOklFGyW76ZZC19HzNQ2o5H5DJYRBeNVGFRbCZItCU/LM5eCpqa0ITFpR5BoHioxVcuHxpOt2BFXU8+qbxRLIxsgP7TY7Hz4ImWszqwan0xqaEYOEfJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:01:13 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 15:01:13 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 09/26] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Thread-Topic: [PATCH v6 09/26] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Thread-Index: AQHatzLe5io5eQzQoEGhZCdHC5Pj/LG61jIQ
Date: Thu, 6 Jun 2024 15:01:13 +0000
Message-ID: <PH7PR11MB59810BBEA315C0968934A982F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-10-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-10-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW3PR11MB4746:EE_
x-ms-office365-filtering-correlation-id: aa1dcf7e-2f05-4358-6bfe-08dc86398249
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bTcwbFg1WDFsdWdnMlRTZHRyTzRxZm82cnMwcWh5Y0R2OWhYcmNKZFo3cVFi?=
 =?utf-8?B?WDU2NmFiTmxJQklYUitNUFhrUUxzdC8rbS9DbHorWVpVNkJBWVozbVRSTFpj?=
 =?utf-8?B?T245VlNmK1o0V28xVVRkL2NQb3IzMHplUXh1OWZMZ0FJV1hRMi9MRURpb3F0?=
 =?utf-8?B?K3pKZURQOUtnbWpQcC8yY2FiMGtTOERzMHV6RkJFbjB0ckVCUHV2NEVxa0ZN?=
 =?utf-8?B?eGNlNkgvYkxYbVlKNG8yS2MvSFlPZ3B2NDhMUytXQmlacnVGUmJuYmh5cmNp?=
 =?utf-8?B?Uk04WkF0YnhGRUswTGVwN0I2Vkkwd0FHeGE0WjJDL2ZxbDlBZEhIRlhMNHNM?=
 =?utf-8?B?SFY0UVNPUUxjUzdRYnVFYnREWmQvZ204V2lrN2xmSTNRTGRIUGhSY2hiTy9k?=
 =?utf-8?B?eGVOTkFDVlR6bmpTSWJoQWhxaGpFdVYyN3ZUaXpqRkZ6NkZuQU1wMmM4MGx5?=
 =?utf-8?B?THQwQmx1QURSM1hzc25FR1hpZDhxSjQzL2IxOWQzQStLTGJUTEJwdERtN2hH?=
 =?utf-8?B?RmdXOUxBdU5Gb1RaeGcwcC80TitVZjRPYXN3Q3VHNlp4SnFXU0JUSHRCdEtW?=
 =?utf-8?B?K21QWFc4WTArRGxKQW96d3JIM3R4dTZGelJKL3RtRFZITTJHY09QbmZXZDM4?=
 =?utf-8?B?Z0FjdXpaRDVJUEdJd2hCT2FNQ0E5N3R4d2FCL3VzanJIV3Nkdyt2NDYwNnRF?=
 =?utf-8?B?eHJOZ0VkN3hjY2RsdzdnUDVFUDk5cTFmekNBZGdUd0ZFTWZ5RnFIeEM4bmYv?=
 =?utf-8?B?MGkzQWRZVjA2Z2lCM1FzNjYwU0NBVjMxZUdBa3dwcktIWEZPamZxbi9rZkU2?=
 =?utf-8?B?UzhlRjcxVDYrZndMdUx6T3RnTDVYdDVDVFZRclB1UUVYaGRXTzh0UnE4ajNM?=
 =?utf-8?B?VjdJSExRTkU4SERnL04zS2pCWVZuWk04YkZDYmwwNVRZNEt6Ty9RQVVrdnlQ?=
 =?utf-8?B?cG1RNlV2RW8xempOdU0yOEFqck1xSG1FYmk3QWVWbG5HV29Pb1JqREJXNG1O?=
 =?utf-8?B?YUNGQzIxcWhiTHNwSWFEbjFqaThWWS8ySVpDSkcyczZhNEZNeEg2YWdPdTda?=
 =?utf-8?B?SFNGSmhPZGoxRFVBTDU2eDJURjAyTVAxeHlMbG9JTVVQd0Q5NW1JYVR4VGpJ?=
 =?utf-8?B?U3JEL21lcjFMVG54MW9WYk1IaFJuMVlTdE8zOU13ZS9naDZpbnV5NFVwalpy?=
 =?utf-8?B?ZnZoNkIxZ3FWaVoySG1NN2N3MHd4Rkp5d3VIRjYzdGt5NnJEMEViV2Zpb3Ru?=
 =?utf-8?B?RHcya1N1bVpyeTBsRGpoZmhuZitXbVRmdzdCUjRmUjRYc1daV0JVTjk4REg1?=
 =?utf-8?B?M1NoRUc1M0lna1FKdWM4QWlxb2t0UlF4UWZ1K1NKUko4S1lMbUwrbkEvSzRR?=
 =?utf-8?B?YU45b3VHdGdKOFJucnMrRHBoR3g5OHpSOWFrMGlISzh0a0Zxd0k3WE8zM1Jo?=
 =?utf-8?B?TlpYUGdYRGZXOGVHUXptdC9IWkRJeWVvc3JGamY2V0dPR3AwYndrcTNrUElM?=
 =?utf-8?B?SXdtb3F5dE5EVVFnVm5vRFVsTC9ReXF1ZHViNVV0VDRTSTNzdGc0UHJHMWd1?=
 =?utf-8?B?Y0RrVGVMNEwvVE1RaWNoWU5wK29Nd3VsUGVVUk1ZMkxFVWZPekxHdm1RcEZM?=
 =?utf-8?B?VkExS3NRNnhtdEVrKzE5am0zcEVvdHRZU01SbGs0UWVoME5ycnlsQmdjNXZZ?=
 =?utf-8?B?djNtcStNaW41cVJtYUpDaW1teTIvSGxJZ0tmNVNTUFVyQ3lmcHlKb293VWdK?=
 =?utf-8?B?QVRHOXY1NmR0VktwQ2hwVEhBb1Z2MGxVbGxmSW80dHNQSFNoVk5RV1A3RnV5?=
 =?utf-8?Q?lvBugNgkryDso5MG4/z5eoCIU3MJwA/WD7QTc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWVUbzBjUWIvOFJoQVZFY0xITkJZT0Q1MXZlVWkvdDJNZGUzQ3FqL1ZjQW00?=
 =?utf-8?B?UjVBRXltd3F1UTYwQUtoVnFNYUlEWEZCbjdUbmIwclJ0dzRra082YkhjNXlL?=
 =?utf-8?B?S1UzVjgvS2FXenlPOVpHNzg3TmQzRmdoOFRBWjhUQnkzVVZ1NVlETlJFNk9y?=
 =?utf-8?B?cjBCSVVQeWZLRWtrTFdnOGVQaGhOOXcvSzg0cmk5L1hldGUzYnJ3VmM4ZXNJ?=
 =?utf-8?B?RmJPK2Z0emtzYWtjcm9hTWgvTkloVmVtVVN5VFA1bU5nRXZ0T3JJaWM1M2dS?=
 =?utf-8?B?cmpRYytsMXY4VXc2Nm9EZjEvMjdiUEJwcy9aN01CbVpFYXlUdEdnby9EakJt?=
 =?utf-8?B?SGdVT2hZN3J6UFN4Ym9hOEZ3WmNiaUpMa0k5dFgzcUhSN2s3TGl3OWhYZzU2?=
 =?utf-8?B?ZTVqV1B6L1E5c3pkSnpRYTZwU2xGS01jUUg5MTI0UTViUEFDUUtiaEsvdVRp?=
 =?utf-8?B?TkpWK0I1ZzJqR25hRFovT2VqNXNPVGFYdXE4cGV5T1ViSGhpZzEycFBvem45?=
 =?utf-8?B?b0JhZkh2blFlOEpFOEh6U1JManpCOURSMWttSEJUYlhuWSticDVkdWVPQlQy?=
 =?utf-8?B?MzNFL2JVZTB2MlhZdEFvUWxHYjJtZTFpOTYySHNYc3ZsSVFDelprK3F0Ulhq?=
 =?utf-8?B?REoxMDhiaWxnWnhiVG9pbVBLOCtjQ0drQjdmRWNvQmJMNFU0eDMzdW9FdWxu?=
 =?utf-8?B?MmJvdzBkb2dXYmYvelBVN0NrMzk4bjhlSk4rUE5haCtRV0hVVVA1ZUFoM0c1?=
 =?utf-8?B?bXBrZk5TYURJRCtKKzhydlhCN1Izdy9xUXhtTzNQUkNDR1JaRVFmUC9DdVdE?=
 =?utf-8?B?ZDA1SHVaY0xZd0RrTnA0aHNEckNGYlVVYlVKalBIM0hlV1BYUjZMbVU1anhL?=
 =?utf-8?B?cURoQjd0TTVYOHZOZ0tYVjA3OEkrRndsaS81MEJ0Tm9QcE16OStJTnJnN0E3?=
 =?utf-8?B?Wmx2Vng0MFBKMVlsdW9VM2s1SHYwTnI4cnR6UkpodVQzZWZ3ZWxqWW1UME9G?=
 =?utf-8?B?NDF0UDBXUEFjM1BFajk4M05yZ3dub0Z5RHJUbFV0RHdlMElBUm9sK2lXeUU1?=
 =?utf-8?B?NHg0VUc2dElmNW1xUnZmd0NxZkNmbE95RG8vV04rc3RCUkxEOFZmWGNVNUtv?=
 =?utf-8?B?Z3czV0lzcHN3ZzB6VTAvc1RtUEYwMGNzNHFzUENxVG94cUxuRktFLy9KY0k4?=
 =?utf-8?B?ZlhQMjJNa3NqVXpPZmZvYXprTHEwSWc4clUweGtEc0t3eDFrOFZ3L294R0c0?=
 =?utf-8?B?TVFzODdmUHhEZzBHcjdSV3dmYkRuTXJ3SEtmMWFjc3ZTYTQ3TzBSSzNyaHpE?=
 =?utf-8?B?cjdLb0g4UklORXR3R29lT0RqRzJ3L0J3TGZhalFuRm9XNDZpaFc5VVpZUGNT?=
 =?utf-8?B?L0dWSWw0eld0NGZxblZTTjNMdnhDc29PMHc4YWNkeDdZMHlxaDNMdS9MUHBV?=
 =?utf-8?B?WXg1NzdOQlIvaFp3WXFCWDZBVmJIN280a1NEbmFMdFFmQTdzc0wzc1BsZy9o?=
 =?utf-8?B?UnZKMDB1M2JDYk03RmY4azAxaXdOTW1WMmVkL0hSdjVpTWZkTEhJWVlhVzNw?=
 =?utf-8?B?V0gwdFNIY2FKdHcvMzVTSHFWTFRVZUtlZlozdkNFTjNlMmNTZUVtdm9LUnIz?=
 =?utf-8?B?bmVFQXdXWm9iTlo2M0c5UjEzOVd6WnFuVEI1cG5kVFNHOVVlcy91bHh6VFlm?=
 =?utf-8?B?RnZVK2wvVER1VlcrNVVYQVlZUk0vTVBrTk1WMjQwUm4zR2V5QjZ4TERjMUow?=
 =?utf-8?B?Q1hPS3IxQStKKzl4aWJTMmEvNW5xSnpIbHA2TE95dUNtMlRQaU85dFc4Uld5?=
 =?utf-8?B?dEY4b0RsWUtCcDZpQ0Evckp0Y3BpeGJrUDhKWHpaQ2hmQzAzSWxyUlVvaVFY?=
 =?utf-8?B?ekcyQldnLzR1Y29maUxNMDc5UmRsR3ByeGNnOUZRMWxBR0xleWJlNnF3dGtE?=
 =?utf-8?B?dDllUVZrblNZYWdyZWowRFB6ZFhwNzhUN0lNeGIzMFlwcUNTcHM0REM5SUxO?=
 =?utf-8?B?VkVaaGRDTUM0Qis5RXZvazlnVFhpcERaTEc0ZFp5TzNVR1ZHVW5YdXJ2TEVW?=
 =?utf-8?B?WCtIU3EvUW1CRnROUDhRM2JpUnRmQ1hpMU9BUG1qemtkMHRYNVRKRzRMZld0?=
 =?utf-8?Q?aA/Ikckifxb5wjDMmrC18L3Eb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa1dcf7e-2f05-4358-6bfe-08dc86398249
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 15:01:13.6544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e6G0oMJlNT5it+HDIXeq1jlCoM6th2W5kjC6TqKlZDES97u1bYV4miIQAP+Yf8cb64I5wYxn0hXxGMpQiqTc+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwOS8yNl0gZHJtL2k5MTUvcHNyOiBB
ZGQgUGFuZWwgUmVwbGF5IHN1cHBvcnQgdG8NCj4gaW50ZWxfcHNyMl9jb25maWdfZXRfdmFsaWQN
Cj4gDQo+IEVhcmx5IFRyYW5zcG9ydCBpcyBwb3NzaWJsZSBhbmQgaW4gb3VyIEhXIG1hbmRhdG9y
eSBvbiBlRFAgUGFuZWwgUmVwbGF5Lg0KPiBBZGQgcGFyYW1ldGVyIHRvIGludGVsX3BzcjJfY29u
ZmlnX2V0X3ZhbGlkIHRvIGRpZmZlcmVudGlhdGUgdmFsaWRpdHkgY2hlY2sNCj4gZm9yIFBhbmVs
IFJlcGxheS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMTUgKysrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGEzYWQ0NDg4ZmNlZS4uN2JkYWUwZDBlYTQ1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAg
LTY2NCwxNiArNjY0LDE3IEBAIHN0YXRpYyB2b2lkIGhzd19wc3Jfc2V0dXBfYXV4KHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ICAJCSAgICAgICBhdXhfY3RsKTsNCj4gIH0NCj4gDQo+
IC1zdGF0aWMgYm9vbCBwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiArc3RhdGljIGJvb2wgcHNyMl9zdV9yZWdpb25fZXRfdmFsaWQoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwgYm9vbA0KPiArcGFuZWxfcmVwbGF5KQ0KPiAgew0KPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+IA0KPiAt
CWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCAmJg0KPiAtCSAgICBpbnRlbF9kcC0+cHNyX2Rw
Y2RbMF0gPT0NCj4gRFBfUFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVEICYmDQo+IC0JICAg
ICEoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmDQo+IEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9E
SVNBQkxFKSkNCj4gLQkJcmV0dXJuIHRydWU7DQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwg
MjAgfHwgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgfHwNCj4gKwkgICAgaW50ZWxfZHAtPnBz
ci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9ESVNBQkxFKQ0KPiArCQlyZXR1
cm4gZmFsc2U7DQo+IA0KPiAtCXJldHVybiBmYWxzZTsNCj4gKwlyZXR1cm4gcGFuZWxfcmVwbGF5
ID8NCj4gKwkJaW50ZWxfZHAtPnByX2RwY2QgJg0KPiBEUF9QQU5FTF9SRVBMQVlfRUFSTFlfVFJB
TlNQT1JUX1NVUFBPUlQgOg0KPiArCQlpbnRlbF9kcC0+cHNyX2RwY2RbMF0gIT0NCj4gRFBfUFNS
Ml9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVEOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIF9w
YW5lbF9yZXBsYXlfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgQEAgLQ0K
PiAxMzUxLDcgKzEzNTIsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChz
dHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiANCj4gIAl0Z2xfZGMzY29fZXhpdGxpbmVf
Y29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiANCj4gLQlpZiAocHNyMl9z
dV9yZWdpb25fZXRfdmFsaWQoaW50ZWxfZHApKQ0KPiArCWlmIChwc3IyX3N1X3JlZ2lvbl9ldF92
YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkpDQo+ICAJCWNydGNf
c3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCA9IHRydWU7DQo+IA0KPiAgCXJldHVybiB0
cnVlOw0KPiAtLQ0KPiAyLjM0LjENCg0K
