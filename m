Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25378AB6832
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 11:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C17C10E3C8;
	Wed, 14 May 2025 09:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKt92EzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9972A10E2D0;
 Wed, 14 May 2025 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747216680; x=1778752680;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HMgkgc3bmz8UiV5vG8nyWm8mfGILdq/h+mj54vvkffw=;
 b=mKt92EzJA+IbY61Flz0JK1a6g17w7t5uSvPe1AhT1my1J1hQFoulW6fy
 wJ2ZgXsi8VfWRDx2sIl2RvLfS3R91uDJdmZ1rPdI7bnQQ97eJ/T6Sp5dq
 C/NaDII0o2iYOrQ+zf40okOH1c+6FA8ZyFaoMQK/QpNK/YbGNwiE/vrZh
 fJWMUWipNjAjvXlJZg5dTRtJttyJht0TfXWQbXB4/lc2J8XZNO8xHpRNn
 TVQZ95grxkZR3MT9nmyWeh2qqJKl+pE0EBeGJTTz+I2OIiRwmwRl2rCon
 1cSUnkZeymQxJuN04/aRjwshyFgJ54/Bop5CYCkGNzFFYX9yLg8fzYmne Q==;
X-CSE-ConnectionGUID: d/JdEtIISh6SqCspT7IDvQ==
X-CSE-MsgGUID: bSmirdCGTCGux+9s/7G+Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="49248669"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="49248669"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:57:59 -0700
X-CSE-ConnectionGUID: tDeg3eALRouIKq6NSY3iXA==
X-CSE-MsgGUID: qjwyLqelSKydh2qaxkYRbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="137870552"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:57:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 02:57:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 02:57:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 02:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xLW9br/fMITaulnmQOkDxeq+nkpDnvcL/JIJB3QhYiUb/ERSd0wga1N6/lVXhdPGl83773/toil2nt4Z2m5w5uEyuRp46UbRQv+f+n6U3GPgk3mVuTWXH5rRIFwLo8SeI8ZZJI5m+USyCHQURVkfn+I7dzj8xKnWvmkonFAQc1NPv4n+LvTGEQlP4ahVmmDPnE3Bje78EbxTzKbbFZ9L+8v3x/lc6fZip2YFIqgwgel+FuVNRFboQgH3NyRvMCKpVW0NQn73Xn6DQOwupQIne2R5jNsgX/8GGQ1gKKtt9750QcR08MbJIg8OUvKhC/oaqPEbxSt0V0KpFTIPzh9zHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMgkgc3bmz8UiV5vG8nyWm8mfGILdq/h+mj54vvkffw=;
 b=sJIzDUfPQ6F7zDESVxSco060zLyn4LNBTANFPUhpibTR0YfdQC7YvbPpED5uzqOmcPmxRuxzzU2HpHz8DMUJS5T/61qGjPvuInqyDkGnMt/zJxT/Rx31dQ33TToP8a+dUEhTarQDCu+V+dnJA/4cnyX1m8g5IewPLaS2ZdPyPLSIMDNK3cAdKY7JAIe5xs3yDe8IPGQxJT8t8uE5jbgwE8QoaeqYpoCKAx07VZS8XD8nOH1N81hEFbz8uNW9ku/S0YSyQk27dtPziy7M3mILR79jMlJsHukENLfMpyEMWuf6IAUYeEgtiZeW7OmEApvSovnG++4Ye15ftlPrD+QEnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 09:57:14 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%4]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 09:57:14 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlz?=
 =?utf-8?Q?play:_various_small_cleanups?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kaXNwbGF5?=
 =?utf-8?Q?:_various_small_cleanups?=
Thread-Index: AQHbxAe4+57EEzjeQUSJoC13ohWmv7PR5i9w
Date: Wed, 14 May 2025 09:57:14 +0000
Message-ID: <CH0PR11MB54918CFF5F0ACB217F3B1AE0EF91A@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
 <174714028321.75033.5313850630385690448@c664b1dc75d1>
 <87bjrwiru7.fsf@intel.com>
In-Reply-To: <87bjrwiru7.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|PH0PR11MB5901:EE_
x-ms-office365-filtering-correlation-id: 03b05d52-e351-44d2-9779-08dd92cdb420
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018|13003099007|7053199007;
x-microsoft-antispam-message-info: =?utf-8?B?enFYR2JZdUxSMWZpeW1lUU4yNGQ5SW1BYU9aYnpnNExSMnRLdHZzN3pPNTNv?=
 =?utf-8?B?MWdHQXFNNG1SUGhpSEtRS3dvaUVOKzhCU1FURHFaYUNUOElnSXYrRERvbms4?=
 =?utf-8?B?WWs5bjZ3dXZPQlBhSEN5T3J2SG5ZSzVVU1F0VllzZzVKaCtKdFJabWJkcVRK?=
 =?utf-8?B?SUkvMEFFWG03VzJoQlRSeENTd2MzdGM4R3MxeEwxSUptKzlIdUJOeXNNeXlj?=
 =?utf-8?B?eGF5LzdSakVMVlM0ZmVNaENoKzNZcXFaYmQ3ZjhFYVJWNi96Q0FMZnI4ZGw3?=
 =?utf-8?B?MzNZb0lPQmRQYmhFUU9VSy9jL3Jqa2pNaS9qb0FaZktBTGsybzFCSHdwd21v?=
 =?utf-8?B?bnloR04vQ2ZBRmFVV3M3SW4wS1BoOS83d2pSK0V6VjNoTjVudnhwS250NU4w?=
 =?utf-8?B?cWE2dVgwNUJvckFRODFUNVN3alNLSzlsMlVHMmFrMmNzWllOWGp2Z3RGMXRO?=
 =?utf-8?B?UEp6QklEMCtLMmcwM2lxanZabk9OTUVsOUtmMG5KVTZDQ3hGOGJsMFZFbG9R?=
 =?utf-8?B?SnMyRWtZTU9ZSkUvVms5ejg4VjdlN1JIbHhHWlo0aVZlcDhYbVJHNWNwcGZn?=
 =?utf-8?B?NmI5cmJpRU5DTDlnTGFXbkZjWGlMRnA1RmFjMm1ERWFtL3l2NStCNjQ4Snlv?=
 =?utf-8?B?TmtuN2pScS9SUFNYOWRLa0Nsa29hOEhobEtwaU1haEFWaXdNeTJIMUhzVjl3?=
 =?utf-8?B?bWpRVkc3Zm5ZTVhYUlU5aTdUaHR2R1NYRVNzVXNPVS9DSWtSN3l0NFhTK25x?=
 =?utf-8?B?eDM0R3I4VlVoZUFiNmpIdUFwZGYvb09tYzlmQ1Q3UU9wQXlIVVgraUJkTnVs?=
 =?utf-8?B?RHQxMGRGbTVtei9CbkJqMUVDVm5DRHhWMVNyMXJBU28vaHVjR2VKMFh3TlJT?=
 =?utf-8?B?MHVyZ2xKazBPU2JyTHN1dzMzOUlZd28rZk1OOUhVeUZsQ1JIRUF5SWFXZzBO?=
 =?utf-8?B?bzUyb3VRWUVxdlVCYThWUmRVNkNWL0phbmc0Q3p3ZGJZQnhxam1MRTd3U2sv?=
 =?utf-8?B?bitGck1OTXVRU1phOUU0a2pyWVBvUDZPZStBTmo4UW9KWmlLYmtkL3pOMmlN?=
 =?utf-8?B?SmNxUmx2bW9KOGhEenMrSlhUV1BGYStmUmZpd0JxTVFYK0kyQUsySHVSTVp6?=
 =?utf-8?B?UEFZY1Iyc2pUK1ZpeHFtR29IYk5xblNrMVFhck9MZ2ZNd0dUaUpwTEJSTWh2?=
 =?utf-8?B?ZGdjOWsxeThJY25lU3NqRlk4UWgxbk11NTJnSmVqTzJXckVtellzZ0loelFO?=
 =?utf-8?B?R3BIUjIzekNReEdFUEFmMWhDUkhhKzl6bXpoVjNFYWl3elFKRXcya2NSb3FP?=
 =?utf-8?B?TWl6Q3RIMjRzbnhXYzFsaWphQ0U4L29ocDVjQzZBOGlpYWFlOU94SXVoc05k?=
 =?utf-8?B?azFNelhUMGNvTERqUmUrR1J6VXF4OEhsaE43OFBCcGpDZ05rZ3cvWTYxbW1u?=
 =?utf-8?B?Wm5ReURoNW1mbGZBUzZkVkJNcXpOVi9NK2pUQklMcnpqY0hVQXVYcTVRWTNl?=
 =?utf-8?B?RmloakdMNG1xNEk5dmYycjNzZm5pUXNkSzZGMStQVDlMbVUzV0FvU3k2MnZi?=
 =?utf-8?B?T3FVWkpQdjFSckdmMXgxVldraXJsVXk0d1ZnV2FOVElDSnB0alhncm5CMDNy?=
 =?utf-8?B?aGZMQXV5Rno4RVdiTFlOMmp2a2NJQnNsVkljOFJIWDBmZ2F3eGtsR040VHhE?=
 =?utf-8?B?QzgyL0tsYTFNc0VhM3daejFCaXJyL2trSEIvUWZWZGpzOExlaWhoU0VPMzRG?=
 =?utf-8?B?cURvS3d0WDU5N0JEZkh6czRMTzZEYmtZY1pJNUgwR2syRmhVdDJFMWhNaWRq?=
 =?utf-8?B?TGxoV3RwOFUxRXlCZFBDbUx1djhKWGxJVDlvclJvZ1JmOWNPNmVZNkI0WkhC?=
 =?utf-8?B?V01KeXhmdDJtS295WkxKa1RFcWd2QW16WWp4ejhodzRxTnBYa3VtYlk0YTZQ?=
 =?utf-8?Q?wOs7Ws6C2MQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0ljcXp1MVJoZXhFK1Z3dUxzK0tQdWdtQ3cxN3RMMUczbDBFMkRWSDdYbUl5?=
 =?utf-8?B?NVYzNERZS29pb0t6cE1oUmtuWXZ4Myt3T3RFZ01xRmI5Z05qdFFsa1NZYUU5?=
 =?utf-8?B?QjBFQzg1bXJpdmhKYnJWclljNlE3Smk5dm02SENXNE9vUUdmTXJRYzA5UytO?=
 =?utf-8?B?K3pBVjliK2tTZTJodnVUQVdDNGc1bVRPT1pJNis5K1FQbHp3di9sZnh1RE5x?=
 =?utf-8?B?RjJ5QVk2NGdLSXNsZVdFZEk1c1VyQWxzWk9mQnFoUllGMitOL3BkUjJVUndv?=
 =?utf-8?B?dU9BNnJpUWZMa01lOVJDSURRRGoxbldML3BXZTc1M3Iwa1VkODB2YTlOcXlF?=
 =?utf-8?B?MldNbzZVTUpkdlM0d3QrU25Bb3lXN1ZMVHR0QjhKeVFTWlRhWXlGZjM1QUF5?=
 =?utf-8?B?SVEzY2JXK0FVaFpaWnhONTdFWDkzSEtOOUd2ZG9lSDZpQk9UMUlneXpyS0Fs?=
 =?utf-8?B?YXFmd0tTd2h0VGZ0dHhRa3BaM1BNYjF0cksybTY2UENRbmJvZ21PMlJqL0hQ?=
 =?utf-8?B?dC8rRGVScC9nSys4dnRTMEQ3WGVoTmNRbTdyeHgrZW5ieVJGVVQ4aG1HUUto?=
 =?utf-8?B?WCtQNzFDSGNEY1I4NzhrUGxEaHFra3JDYXBmR0M3aERHbGxoYUF4d1d1Tkkw?=
 =?utf-8?B?SU5aMWJsRXk0U01VV21XVk5xOTNIRTFZUGJVdVVCcGpST0krLzlXaGw1MlQv?=
 =?utf-8?B?ak1xbkhmWEtMbXA2bmZkdXUrY0J6dWgxZWFTZ1gvOXBEanFoR21zSEUwZU5K?=
 =?utf-8?B?bTh3YVdvcExYd0ZOUGxXdWprQndOY01OQ3Nwb202enRucHVaYWlPYzVPRjYx?=
 =?utf-8?B?ZDlDRGx1YWQwYlBqd3ZCTUoxOGlXUEZvOXhhZFg3QmhrU1doaXhOU25yRm9T?=
 =?utf-8?B?eWtOQXFQSTd0bHlBNjlWdVVnWjNXK2ZjTmtxZ3JrbVF2eGpyNE92Y2hJbUlt?=
 =?utf-8?B?NEFiSHF2NTJ1NExEUWI0T2I5emNibEdWOFhrZVB0YXRTTHdaWXphSithNlV4?=
 =?utf-8?B?V3BoSklGTUVrbm5OWExKeVorbVZadER5di8rMWRxb0J3NDVMeUZKK0daMXJY?=
 =?utf-8?B?aS9wNGtIb0VqTFVjVDVjQzBZUU5CSUlqZVd5UDM5aTBYa0phY1hBTElXcWY5?=
 =?utf-8?B?cUVBMUhYdFp4WnVqaDlUdUJIS01yTk9LN29GYlljazZ4VS9XWndYTlI4REw2?=
 =?utf-8?B?WW5kSW9vdXN2S0RNVk5KVUx0ZTBiWXJQVWlWRFhLU09TaFpTOVRMZmZ6VUwv?=
 =?utf-8?B?UnI1bmZSM0tOekN2NHNla25Qa1RPY3VRcDV5azdRTHlyajVyS0pobTQ2RGRa?=
 =?utf-8?B?OXVlZ290QlRUZHNxbFAzRmJKT3NHTlBtUlF5NEUwR1lBTC9VcFk4QzRxMGZ4?=
 =?utf-8?B?VDJmVDFJTzlDbjA4K2U4NnVxMmFUanRaZ2l1RFFSeC9jai9xOFJjNjdlb0Nl?=
 =?utf-8?B?MUNBTVFSS3c0NzNBZVdsVzNoVHI5clhsaUgyWnFVUjNTNTJ1SkpjUGFtcU9N?=
 =?utf-8?B?OFNyRitUNXhzWlhlRWpOUFROVUsrb2hRMkhSR0Q1S0VoaUlsUnBCWlRnb3VL?=
 =?utf-8?B?QWFVWHUxZ0lxaGJEa3JzQ2dOWjhoalZ6MFdxQ2NHdHlIbkpvRk5xQnBrUERp?=
 =?utf-8?B?VXg4S01scHcwNkJlTW8vUTRSd0luTGczM0NqeW1OaHJkZWFPTEtnVkJxUnIw?=
 =?utf-8?B?Wi9CMjFnc21TNmFkNUU1SjMxdFVmRi8vSHRCZVZhU1BnTzdTRnpOUXcyZzlk?=
 =?utf-8?B?Q0dRcW1tNEI4RnRSQlp1L3ZMU2lzcjk2SUlEU3B3eHRQTEN0dTY2VlZlTVJ6?=
 =?utf-8?B?S2lMM3NWYmF5ek1RTThGeHRPT0xKY0V1MDZIbmNMa0dva0JSODljcGIrbGFG?=
 =?utf-8?B?aDBpeE41YTlaZy9kaXY3dU1zU2JuelpsVkZiWE9JcnRPcmNqbnBJN2ZJY3RG?=
 =?utf-8?B?aTMyY2tUSk9FdFl2bXdvejFKeVVMWkhIdjE5Q1o5OXlDcHdCUWx4RzRrMzVq?=
 =?utf-8?B?SW5HRnIwNzdNdExZa0ZScWJaeUI0UUlydEVQU2lMYnNTL1BudS9SNW40RVlB?=
 =?utf-8?B?TGk1cXYyTlB3amhmSHAxVmZiVW9vKzhpRUhOODdXRlNuTXF4YTlzRVIwWnRj?=
 =?utf-8?B?WjhYVTBDeUNXNGFMUk1ZdUZhVmlNYnEyTzE0anF3d0U3YVVEbGhaM3dkNTF4?=
 =?utf-8?Q?nySnLw3SFTgNfr4pUXe+MVNPW7VCaMCSQGKZk4zdMoY+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b05d52-e351-44d2-9779-08dd92cdb420
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 09:57:14.3809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aAk1IQ+eTes6ZYNQy1k9DWovBDZme8TBIaSBGGlMMqUSlzmT0r7tYPivKrbJEMx9aQ1rH7kVoNE+TZbHvb9Akz+xFnsbzlSFARCQvK9byiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ4OTUyLyAt
IFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2
YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEphbmkgTmlrdWxhDQpTZW50OiAxMyBNYXkgMjAyNSAxODozNQ0KVG86IEk5MTUtY2ktaW5mcmFA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KU3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlz
cGxheTogdmFyaW91cyBzbWFsbCBjbGVhbnVwcw0KDQpPbiBUdWUsIDEzIE1heSAyMDI1LCBQYXRj
aHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4gPT0gU2Vy
aWVzIERldGFpbHMgPT0NCj4NCj4gU2VyaWVzOiBkcm0vaTkxNS9kaXNwbGF5OiB2YXJpb3VzIHNt
YWxsIGNsZWFudXBzDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy8xNDg5NTIvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPg0KPiA9PSBTdW1tYXJ5ID09DQo+
DQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE2NTM4IC0+IFBhdGNod29ya18x
NDg5NTJ2MSANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQ0KPg0KPiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4NCj4gICAqKkZBSUxVUkUqKg0KPg0K
PiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDg5NTJ2
MSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4g
ICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdp
dGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDg5NTJ2MSwgcGxl
YXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZykgdG8gYWxsb3cgdGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9k
ZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPiAgIEV4dGVy
bmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0ODk1MnYxL2luZGV4Lmh0bWwNCj4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDQg
LT4gNDQpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgIE5vIGNoYW5n
ZXMgaW4gcGFydGljaXBhdGluZyBob3N0cw0KPg0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDg5NTJ2MToNCj4NCj4g
IyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMN
Cj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAc2FuaXR5Y2hlY2s6DQo+ICAgICAtIGJh
dC1tdGxwLTY6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSArMSBvdGhlciB0
ZXN0IGluY29tcGxldGUNCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNjUzOC9iYXQtbXRscC02L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
c2FuaXR5Y2hlY2suaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg5NTJ2MS9iYXQtbXRscC02DQo+IC9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQHNhbml0eWNoZWNrLmh0bWwNCg0KVW5saWtlbHkgdG8gYmUgcmVsYXRl
ZCwgcGxlYXNlIHJlLXJlcG9ydC4NCg0KDQo+DQo+ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0t
LS0tLS0tLS0NCj4NCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtf
MTQ4OTUydjEgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPg0KPiAjIyMgSUdUIGNoYW5n
ZXMgIyMjDQo+DQo+ICMjIyMgSXNzdWVzIGhpdCAjIyMjDQo+DQo+ICAgKiBpZ3RAZG1hYnVmQGFs
bC10ZXN0czoNCj4gICAgIC0gYmF0LWFwbC0xOiAgICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09N
UExFVEVdWzRdIChbaTkxNSMxMjkwNF0pICsxIG90aGVyIHRlc3QgaW5jb21wbGV0ZQ0KPiAgICBb
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2NTM4
L2JhdC1hcGwtMS9pZ3RAZG1hYnVmQGFsbC10ZXN0cy5odG1sDQo+ICAgIFs0XTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODk1MnYxL2Jh
dC1hcGwtMS8NCj4gaWd0QGRtYWJ1ZkBhbGwtdGVzdHMuaHRtbA0KPg0KPiAgICogaWd0QGttc19j
dXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYWZ0ZXItY3Vyc29yLWF0b21pYzoNCj4gICAgIC0gYmF0
LXJwbHMtNDogICAgICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbaTkxNSMxMzQw
MF0pDQo+ICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fMTY1MzgvYmF0LXJwbHMtNC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1h
ZnRlci1jdXJzb3ItYXRvbWljLmh0bWwNCj4gICAgWzZdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTUydjEvYmF0LXJwbHMtNA0KPiAv
aWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYWZ0ZXItY3Vyc29yLWF0b21pYy5odG1s
DQo+DQo+ICAgDQo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPg0KPiAgICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LW10bHAtODogICAgICAgICBbRE1FU0ctRkFJTF1b
N10gKFtpOTE1IzEyMDYxXSkgLT4gW1BBU1NdWzhdICsxIG90aGVyIHRlc3QgcGFzcw0KPiAgICBb
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2NTM4
L2JhdC1tdGxwLTgvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+ICAgIFs4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTUydjEvYmF0
LW10bHAtOC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAgIC0gYmF0LWFybGgtMjog
ICAgICAgICBbSU5DT01QTEVURV1bOV0gKFtpOTE1IzE0MDQ2XSkgLT4gW1BBU1NdWzEwXSArMSBv
dGhlciB0ZXN0IHBhc3MNCj4gICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNjUzOC9iYXQtYXJsaC0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUu
aHRtbA0KPiAgICBbMTBdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ4OTUydjEvYmF0LWFybGgtMg0KPiAvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZS5odG1sDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0K
PiAgICAgLSBiYXQtYXJscy01OiAgICAgICAgIFtETUVTRy1GQUlMXVsxMV0gKFtpOTE1IzEyMDYx
XSkgLT4gW1BBU1NdWzEyXSArMSBvdGhlciB0ZXN0IHBhc3MNCj4gICAgWzExXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTY1MzgvYmF0LWFybHMtNS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzEyXTogDQo+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODk1MnYx
L2JhdC1hcmxzLTUNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0K
Pg0KPiAgIA0KPiAjIyMjIFdhcm5pbmdzICMjIyMNCj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmU6DQo+ICAgICAtIGJhdC1hdHNtLTE6ICAgICAgICAgW0RNRVNHLUZBSUxdWzEzXSAoW2k5
MTUjMTIwNjFdIC8gW2k5MTUjMTQyMDRdKSAtPiBbRE1FU0ctRkFJTF1bMTRdIChbaTkxNSMxMjA2
MV0gLyBbaTkxNSMxMzkyOV0pDQo+ICAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzE2NTM4L2JhdC1hdHNtLTEvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZS5odG1sDQo+ICAgIFsxNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDg5NTJ2MS9iYXQtYXRzbS0xDQo+IC9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlLmh0bWwNCj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbW1hbjoNCj4g
ICAgIC0gYmF0LWF0c20tMTogICAgICAgICBbRE1FU0ctRkFJTF1bMTVdIChbaTkxNSMxNDIwNF0p
IC0+IFtETUVTRy1GQUlMXVsxNl0gKFtpOTE1IzEzOTI5XSkNCj4gICAgWzE1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTY1MzgvYmF0LWF0c20tMS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQG1tYW4uaHRtbA0KPiAgICBbMTZdOiANCj4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTUydjEvYmF0LWF0
c20tMQ0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBtbWFuLmh0bWwNCj4NCj4gICANCj4gICBb
aTkxNSMxMjA2MV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJu
ZWwvLS9pc3N1ZXMvMTIwNjENCj4gICBbaTkxNSMxMjkwNF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MDQNCj4gICBbaTkxNSMxMzQw
MF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1
ZXMvMTM0MDANCj4gICBbaTkxNSMxMzkyOV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTM5MjkNCj4gICBbaTkxNSMxNDA0Nl06IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQwNDYN
Cj4gICBbaTkxNSMxNDIwNF06IA0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzE0MjA0DQo+DQo+DQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0t
LS0tLS0tLS0tLQ0KPg0KPiAgICogTGludXg6IENJX0RSTV8xNjUzOCAtPiBQYXRjaHdvcmtfMTQ4
OTUydjENCj4NCj4gICBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gICBDSV9EUk1fMTY1Mzg6IGM5
ZGUxNTQ0NTUzYjFkNjExMmNjYzMyOTc3YjZkNTY4ODFjZWRjZWEgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gICBJR1RfODM2MjogODM2Mg0KPiAgIFBhdGNo
d29ya18xNDg5NTJ2MTogYzlkZTE1NDQ1NTNiMWQ2MTEyY2NjMzI5NzdiNmQ1Njg4MWNlZGNlYSBA
IA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4NCj4gPT0g
TG9ncyA9PQ0KPg0KPiBGb3IgbW9yZSBkZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODk1MnYxL2luZGV4Lmh0bWwNCg0K
LS0NCkphbmkgTmlrdWxhLCBJbnRlbA0K
