Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E460EC72072
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 04:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D765E10E28D;
	Thu, 20 Nov 2025 03:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LV6/lLw4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A21B10E28D;
 Thu, 20 Nov 2025 03:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763610013; x=1795146013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pU1FTnJDhM5IU2Jm4pTv+mBVMe4Ir5Xo+J9NyChk8mM=;
 b=LV6/lLw4v+jAe1PMGzVrWFPQSU8s6Vse0UTLOZnWTqKc+DiieDTJOGCm
 6+EsCXIQj9eFqiTfAgtD/Xf1/rPfPzOSoOAU6gHdnbF0O9jljBin8ViES
 u19P5jT/vDOGAIm6QC5Em5z65XBX6H865xZtMbOv4SBMQMiovlACHp+vH
 16h4d1MVeJaHWCQvJ4skynyu3AiLGcQIL3+YQakqRLmmYnXMBoXS8s5b0
 DoEWi2gegrgwokJO5gIz5rOKZdzAPMzy4BZJGuBzOma4tGL+D5ffcNG2d
 aCGdLm29kuVzkcjMHRsIXK53tvMT8agoGLg4LIq/UjyDcVi0xStr17Ixb Q==;
X-CSE-ConnectionGUID: OveT+WC9QnilYpUHo2mv7g==
X-CSE-MsgGUID: XLTxutYyTcW+xwgsu/CXSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="83289442"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="83289442"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 19:40:13 -0800
X-CSE-ConnectionGUID: zvCUTAfRT6qFFPEn3s0eVw==
X-CSE-MsgGUID: NVZN7p3gS3+3SLRKCuS2FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="195355790"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 19:40:13 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 19:40:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 19:40:12 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 19:40:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jjLu5b4j+bY1Ih4NVhQerUNkELntnWyT13L9tLDKrrQVrp3Qx2mP0AYMtVZN1P6aHHDihrt/2KyNPIMdIr+bPz6McQgRnXLfC6LWJ3YbzmsE/3PoCc3a9jvpKLCI5Vw8JfKS9VFC9hpShEOJczScvkUONhoLpMXEwoYL2c4xiY9gXO6fTx3jTeVCq5DGqInUK2qKg4WIfaRXwv3omWoiuJrdrjR5ITY4RK37KFmucfV/RO+rCn7HWN4DhmswVFcfOzbYniw3ahVaKzU4+SxKf4OiGge/ZtdYxj+/GL32xBHCwqPkMFhQJ1IL8Q7JFfIdBHNQJEW7fTIR8zjEKS9AOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pU1FTnJDhM5IU2Jm4pTv+mBVMe4Ir5Xo+J9NyChk8mM=;
 b=uNubDSzy6DIiuZ40Jk4cWEmeDQPa8TJqywJ409BYrTsqPEIyyyD1MUWkNYTuKGbsfYtFCEIXsFV5VC22dIf3AP9qr6asUZA1u3pvycac0GNyAzw22V6rQK7aCOKcivoTAmyWsb/Dxa5rGpoFC4P6dYwCZSjoTfK/20kgsGJgAtVYMd9YBCEglaplNbIYjSPveHlMuMMdZ9ScRsqwqiJEYLngtAZuitXDizpSDrWQNxp9jl3IPIZqYrIxyfS+CHpfe//6zzjLLCzh9/roYN54SDQNnaWLMdGAuzTjgzBKtAVjih3j/scR+OAxZmqW0qIvXZrzmoRF+ReuwWE23mlWmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA2PR11MB5066.namprd11.prod.outlook.com (2603:10b6:806:110::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 03:40:10 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 03:40:09 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to
 polling read"
Thread-Topic: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to
 polling read"
Thread-Index: AQHcWYl6AtYgKvAaxUetYusFdbdYdbT66s5A
Date: Thu, 20 Nov 2025 03:40:09 +0000
Message-ID: <IA0PR11MB7307CCFF497C2D864B434FDCBAD4A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
 <20251119185310.10428-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20251119185310.10428-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA2PR11MB5066:EE_
x-ms-office365-filtering-correlation-id: e1932712-d181-4bf6-afe6-08de27e6814a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NWkzaDVzN3hnV1huc1ZqdG05UkdSUzdXMXByMEJ3QkY1S20wRVpHMWpEd0JP?=
 =?utf-8?B?aXQya0NBWXlqZkhUMG51bWdLbWZ2aFpIaDJjYXpWUUQ5RHdOM01HZzNzT3Jp?=
 =?utf-8?B?QzJDM256K2E3Qkh3TitpcWViZTRqVE1MUDVYWWxHVDFITmY5TDMzNXBHcEhB?=
 =?utf-8?B?djN4NEl0WWtPS2NnRitDQmUvVDBOeEVBUkpEMnNjTFRUT1A4S2NUTjZlZEtu?=
 =?utf-8?B?MWdYYStBL2xOVmhUTDQ5QXdOWDJtd0lQQUNsRjhPK0cxOUw3eCt2RnFqczZp?=
 =?utf-8?B?RVBJZ0pLZURxQ0xSVVlnQkowWVgwclZINUVVcCtOK05vRGVpM2h3ZjYybFNB?=
 =?utf-8?B?NDRuRWs2NjJ6M1VvakF4UnlhaWlPWS9nUEFXZVNBbUtIeGtWeW9Lcy9GSDlU?=
 =?utf-8?B?OVV6WXBmYWpZaUhpUzRTOXQyVzV5MDFXRXpMSlBXVnZIUFBXRmtNVjF0U3p3?=
 =?utf-8?B?VDVLbXM0ZXY3LzhMUGZZZ3d1R25kNlI4a3Z1OEJOcWxvdGZXTkllNVNQTUh3?=
 =?utf-8?B?U05Id3Rta0Z1L3FPY1BucWxIdmV3anlFVHQ4Vjg2NjhnckJ5ZkNrQUNLdTRu?=
 =?utf-8?B?ejA2VnlHTlNqaHczSk1WUWZqQTBhbjFxWGVhK1k4MjhaallhNjF6SUcvcFoy?=
 =?utf-8?B?UEVFbTFQdnF6bzZPbWszWDRscnRIbjZFeVh4dkVWcnhPamFiT3h5cWtXNDhR?=
 =?utf-8?B?MnA0enNKOExzTEpLbUREbHY2a3BlVnEwTEFmK1V3dHRDb0xya3JBR29DSXJS?=
 =?utf-8?B?d25xZmt5ZVZOWEV5SzRqK08yT0xGV2UwSjZpdXNUMEhBZUNkZmY0am9OaElz?=
 =?utf-8?B?cFpraTN5WGR6dXVIa1BYelN3NVQ5YmtMTmFBbWJkSEVZZExjRWZJWnpoZnhw?=
 =?utf-8?B?NStPNGVCWlVsbm5URlV5MHdVbll3VFMrZlM0d1hTNHpMYTk3QkNjRjBleWMz?=
 =?utf-8?B?REtQSytrZldlUmRsYmJkYlc4NWtHTmJJVER0ZWJOTWRoQnpUa0oyb3VkREZX?=
 =?utf-8?B?OFhkcDVmU09zWHY4bEN3KzZRMzlHVkNsOTdRZkM5N09oaU5zcW1reVJlemtG?=
 =?utf-8?B?VGl4TDJmT1NGK3huUm90YXA2a1RBbWxIVzV0SGhLTmUydmRnWlNLbXB6NE9t?=
 =?utf-8?B?S0lsV2M0ZWdoelRneHVHbzFwb3ZwK09Ud28vU2E4cFY1YXNNenYrL0s2M29S?=
 =?utf-8?B?ZmIxZDFST1djYTZaWUQrZVo0WTBYRld6bkVlUFExOUtPSENsVUZaUWpEYU5P?=
 =?utf-8?B?QjlmYkJXOExKVUVzbWxZU01PaHFiOXZ0V0QzcXovOC9Xb2hBeVpXNmE0dk5O?=
 =?utf-8?B?SGlvOE1pK1ZTZjRPVGpaZUNLWElCQUxJWGZhaitneWxocUE0aFgyM2NpQlI5?=
 =?utf-8?B?Mjk2cElkV3BoT2xpNStWbnFHQzdHTGIranQrYVkrQnZTYjdhUXZwWUFHTmp5?=
 =?utf-8?B?Mk0vVXJqeUdVYnhJRmw3NytLS0FvdU1hcmxBZ3RoakRQNEs2ZGNZck0yT3NU?=
 =?utf-8?B?SUR2Z1NCVXBlMFJjQkYwT0ZmNmhyNElxUVJVNXdJZ1JDRTRXd3FUUDZmeUQ5?=
 =?utf-8?B?SmN6OXNOWW8xZWV0RmFUMEVyRTVjRVo1MXJETXZMMGp0WkRLbmJhNTJORE1H?=
 =?utf-8?B?c0RBcXBzdlRYK3lYMWlab3UrOG5NS0djSUs1am4ycGs2Y2MwQ0dIUDl6NTVC?=
 =?utf-8?B?RkM0dm5VSWNDZUg1SG9BUjBFM0xhWVcwWmdjRUFkTy83R3JmTVNCUG16bm1B?=
 =?utf-8?B?UWs0ZVZDREp6eEM5NHV4WEE4RUh6SWF2cFl4L3plbUw2UWU0MHFFekdGWXdt?=
 =?utf-8?B?T1p0VlFCMytGTHk5QTA5SlF5K2MvNWFPRFZrQzZnNVgzUjhSajBNY3RZU0l6?=
 =?utf-8?B?ZHlsc1Y0S0VuWm1odlVVQ3RCSFNXZVJqdzFsT1pnZlRVbGFmbU5qUVRrTllu?=
 =?utf-8?B?RWFqTVl3YVppK0lLQWxHOFJkL1hJRmRpTjk5Y2hHZzB3b2c4aDVEMmIrSnFU?=
 =?utf-8?B?eUpiT1JydFIrT1RsZFo1YTNndWpER3pOV1ZqR0RWQ3MyVmpiT0dLcTFtazZs?=
 =?utf-8?Q?NWc+xt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2RFWTViZ3o3OGdlZ1Z1RDB5QzN2VzNadGc4dDlHS0ExcFF6T2pVZ28xcThU?=
 =?utf-8?B?OG15ZVpzMkFOWk5RaXorb3AyUUFicHZyU1J3WXRQeVM0MmNEZTh1aXlMM21i?=
 =?utf-8?B?RW82TXRIcVd2ajMzUHdram9SSFB1QUtjUCs5d1RrUEZFSzRqT25YSjN6NG53?=
 =?utf-8?B?YWJMd1Y5ZnM4WmorUC9COThXaVFMSk9tMHhaYysrZ2lYU05ZM3pEby9yYlpT?=
 =?utf-8?B?T2JiMmVCLzhvRStBVkNpajdWdS8vVHJhTjVUQSsvS1Q3MStrM0hweThhelZa?=
 =?utf-8?B?OG9YMUVjT0NwRjhGbHZLeUV2SythTk1rSkV6Zk1JS1FkT3VPVkkvY0ZvK1ZM?=
 =?utf-8?B?U3dqQ0ZxUWU4ZTQwZDRkK2xjWGlHaEtNRDExZFRhelZjYVBEVU9LK2wzQ0s1?=
 =?utf-8?B?VUQ3bEpKZUZRcUpEOExKQzhDS3FCMFZkdHFkaFZiaDd5QVdyMHlkcXN1OTl0?=
 =?utf-8?B?Nm9PTTgrS1prOUZ2YmwySUd1M1pnYjdoeUVId3AySDJxQ0l5RUZDRWNzMDBV?=
 =?utf-8?B?TzdoUEs1VVd0dlptWkNiaXdCNW0vaFFDTWxDMnByTCtMSEg5VExNY2hMT2dV?=
 =?utf-8?B?anBRNlJRaVVZc2szdE5WYmtoZVZiWG41UXZ1ZUpJOEpXOGoxdDhJbEFwVzdy?=
 =?utf-8?B?aVp5bHcwS0svUmlBazdXZzNoNVRUL0RuRlRFU1RzaFN4QW5jbVFSR09UaVZh?=
 =?utf-8?B?eU1iWnRYVmhEOFE5Yjl3UHFlY1Q0VmMvL2I2UEs1cytoMnNHMTZ0VUVmR1R0?=
 =?utf-8?B?Y1NmVlhhNFBIdzg0WDNGNmpTcE5YR3ZmTTJnOXZxN2R2cU00bGI2VkE5STJw?=
 =?utf-8?B?RTJiakl2azJGOGdya0ZBaDZKNk9xeTFhekU4MVNic0EyUWdVcmhSWHNYakU0?=
 =?utf-8?B?NGhacitOcEFRQ0FYTTZHRTVxakZVK1VIREhNYXpPTDgzTk5qZ202ODdaV0d4?=
 =?utf-8?B?Y0dKYzVPczIzV3dab2RhUk9na3VLcm9BaTJTNlo4cTFwblA1WEVJb1BiVGwx?=
 =?utf-8?B?TWw0VFNuVWI1Z0ZJaWtwZXFhOTQzSUtCN2JhL3N4L2Y3WjBVcjBmaFFmNzl0?=
 =?utf-8?B?VGRoN25ONkRKU21MS3NmdnRkWGtSSUNhY1RvTjRrbWVDRnQ5SHRTaGdpTWlS?=
 =?utf-8?B?MkJXQ1J6T1JYSFJJQ2tzck1xcm42UGhicWVkdVhxMDNnZDBmYzFQVVRkeU5n?=
 =?utf-8?B?WW9BOER4cWlBb2ZIamZPSmNkQlpGQ2RFWDFvOXlycVNxRkJmKytPR1FKNWY0?=
 =?utf-8?B?SDRQUEl0dVRvMDlKa3FSVEhGRXZPdjFBc09KSWNYRTIwMjZZUTNsbm5QYmdS?=
 =?utf-8?B?a00yckZYdDFQWTdoRlp1dmgwZHpDczVMZkorYW9aeDlic2Fick93M1ZTbU5D?=
 =?utf-8?B?THRKRDF3SlhnQjZGODhuSWdpc09hUlpCdkhuNkNYRXpNcVRabnBSdEE2aWl3?=
 =?utf-8?B?dm8zZzBlMUxqcXVLNXlrcVRpVzJleVhDdUpuN0RtaWhFeWx2eHNmMHJsRExV?=
 =?utf-8?B?WnF6VXBvZFhveG5ucnNjZkVxcmo5RlVXWlgrR2RMZG5ld01yVWJyUVNqd1Ns?=
 =?utf-8?B?OGcxUlljd3hmbnBrTWJaZWJEbURCbCtraElCZ1UxcVpkMDduZWh3Y05yYVJP?=
 =?utf-8?B?SDJNZTAvWVJZUlJQM2RzZmlPZENIVEVuUVkxUU1QMzgvVXFaMUtsd096QW9N?=
 =?utf-8?B?blF0dWY1K3oyL2hkdlBDWnZNV0ZzOTFOczE2eFovcHpJZXJYeWx1UzZzOXdC?=
 =?utf-8?B?VUJ6NFZadkdoem9ORThZRVkwNEUyZkcxUnhIenQxNGZxUDJQOVFJdkloVkNJ?=
 =?utf-8?B?aDlVeE9ycmxoc1k2UmZyRUNFY1JuSXd4cnUzU2xXM291MkhlU1NoMC91Yzh6?=
 =?utf-8?B?dHE0K1ZNeWR2MDNmNHFTVTN2M01vckV6WDVjOWZSMUFXSWtDdlEzcyt1WWlY?=
 =?utf-8?B?V2pzLzlyZ2crbndUZzd3KzFkQm4zdGhabnAyN3F3Y3JDZHlnKzQ5eDJKV200?=
 =?utf-8?B?QVlGTFI4bzd1Z3BML2ZtRk51VTNSbGFOOXdMeE5xdWVBR0plMUprWXRKQWY5?=
 =?utf-8?B?b0ZkR1F3QzZKTXJvMjBTTE8rRDNtSUxIMCt0WHUwcVFYbUZJdisycVliNStC?=
 =?utf-8?Q?4qsTm2ncxh/UAY75w3UrxDjkZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1932712-d181-4bf6-afe6-08de27e6814a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 03:40:09.7804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxswaXtWg/lkDjnmOn3tvG4UdRYy9D8H+r5KIlflXcEqm3peMyYeI7UjJE1bROz9an6lpPrC8GL9NSeV5sI6lA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5066
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMjAsIDIwMjUgMTI6MjMgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBSZXZlcnQgImRybS9pOTE1
L2RwOiBjaGFuZ2UgYXV4X2N0bCByZWcgcmVhZCB0byBwb2xsaW5nDQo+IHJlYWQiDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gVGhpcyByZXZlcnRzIGNvbW1pdCA1YTliMGM3NDE4NDQ4ZWQzNzY2ZjYxYmEwYTcxZDA4ZjI1
OWMzMTgxLg0KPiANCj4gVGhlIHN3aXRjaCBmcm9tIEFVWCBpbnRlcnJ1cHRzIHRvIHBvbGxpZ24g
d2FzIHZlcnkgaGFuZC13YXZ5Lg0KPiBZZXMsIHRoZXJlIGhhdmUgYmVlbiBzb21lIHNpdHVhdGlv
bnMgaW4gQ0kgb24gYSBmZXcgcGxhdGZvcm1zIHdoZXJlIHRoZSBBVVgNCj4gaGFyZHdhcmUgc2Vl
bWluZ2x5IGZvcmdldHMgdG8gc2lnbmFsIHRoZSB0aW1lb3V0LCBidXQgdGhvc2UgaGF2ZSBiZWVu
DQo+IGhhcHBlbmluZyBhZnRlciB3ZSBzd2l0Y2hlZCB0byBwb2xsaW5nIGFzIHdlbGwuIFNvIEkg
ZG9uJ3QgdGhpbmsgd2UgaGF2ZSBhbnkNCj4gY29uY2x1c2l2ZSBldmlkZW5jZSB0aGF0IHBvbGxp
bmcgYWN0dWFsbHkgaGVscHMgaGVyZS4NCj4gDQo+IFNvbWVvbmUgcmVhbGx5IHNob3VsZCByb290
IGNhdXNlIHRoZSBhY3R1YWwgcHJvYmxlbSwgYW5kIHNlZSBpZiB0aGVyZSBpcyBhDQo+IHByb3Bl
ciB3b3JrYXJvdW5kIHdlIGNvdWxkIGltcGxlbW50IChlZy4gZGlzYWJsaW5nIGNsb2NrIGdhdGlu
Zy9ldGMuKS4gSW4gdGhlDQo+IG1lYW50aW1lIGp1c3QgZ28gYmFjayB0byB1c2luZyB0aGUgaW50
ZXJydXB0IGZvciBBVVggY29tcGxldGlvbi4NCj4gDQo+IElmIHRoZSBoYXJkd2FyZSBmYWlscyB0
byBzaWduYWwgdGhlIHRpbWVvdXQgd2Ugd2lsbCBqdXN0IGhpdCB0aGUNCj4gd2FpdF9ldmVudF90
aW1lb3V0KCkgc29mdHdhcmUgdGltZW91dCBpbnN0ZWFkLiBJIHN1cHBvc2Ugd2UgY291bGQgdHJ5
IHRvIHR1bmUNCj4gdGhlIHNvZnR3YXJlIHRpbWVvdXQgdG8gbW9yZSBjbG9zZWx5IG1hdGNoIHRo
ZSBleHBlY3RlZCBoYXJkd2FyZSB0aW1lb3V0Lg0KPiBNaWdodCBuZWVkIHRvIHVzZQ0KPiB3YWl0
X2V2ZW50X2hydGltZW91dCgpIG9yIHNvbWV0aGluZyB0byBhdm9pZCBqaWZmaWVzIGdyYW51bGFy
aXR5IGlzc3Vlcy4uLg0KPiANCj4gVGhlIEFVWCBwb2xsaW5nIGlzIGFsc28gYSBoaW5kZXJhbmNl
IHRvd2FyZHMgdXNpbmcgcG9sbF90aW1lb3V0X3VzKCkgYmVjYXVzZQ0KPiB3ZSBoYXZlIGEgdmVy
eSBsb25nIHRpbWVvdXQsIGJ1dCB3b3VsZCBuZWVkIGEgZmFpcmx5IHNob3J0IHBvbGxpbmcgaW50
ZXJ2YWwgdG8NCj4ga2VlcCBBVVggdHJhbnNmZXIgcmVhc29uYWJseSBmYXN0LiBTb21lb25lIHdv
dWxkIG5lZWQgdG8gY29tZSB1cCB3aXRoIGdvb2QNCj4gbnVtYmVycyBpbiBhIHNvbWV3aGF0IHNj
aWVudGlmaWMgd2F5Lg0KPiANClVwb24gbXVsdGlwbGUgcm91bmRzIG9mIHZhbGlkYXRpb24gYmFz
ZWQgb24gdGhlIHJlc3VsdHMgcG9sbGluZyBoYWQgaW1wcm92ZW1lbnRzIHdoZW4gY29tcGFyZWQg
d2l0aCB0aGUgaW50ZXJydXB0IG1lY2hhbmlzbS4gV2UgY2FuIG9wdGltaXplIG1vcmUgYnkgdXNp
bmcgcG9sbF90aW1lb3V0LCBJIGFtIGFmcmFpZCB0aGF0IHJldmVydGluZyBiYWNrIHRvIGludGVy
cnVwdHMgbWF5IGVuZCB1cCB3aXRoIG1vcmUgZmFpbHVyZXMuDQoNClRoYW5rcyBhbmQgUmVnYXJk
cywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYyB8IDEyICsrKysr
KystLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2F1eC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXgu
Yw0KPiBpbmRleCA4MDk3OTlmNjNlMzIuLmQxYTkzZTRhNTliNSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+IEBAIC02LDYgKzYsNyBAQA0K
PiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGUu
aCINCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2ppZmZpZXMuaCINCj4gICNpbmNsdWRlICJp
bnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV91dGlscy5o
Ig0KPiAgI2luY2x1ZGUgImludGVsX2RwLmgiDQo+IEBAIC02MCwxNiArNjEsMTcgQEAgaW50ZWxf
ZHBfYXV4X3dhaXRfZG9uZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWk5MTVfcmVn
X3QgY2hfY3RsID0gaW50ZWxfZHAtPmF1eF9jaF9jdGxfcmVnKGludGVsX2RwKTsNCj4gIAljb25z
dCB1bnNpZ25lZCBpbnQgdGltZW91dF9tcyA9IDEwOw0KPiAgCXUzMiBzdGF0dXM7DQo+IC0JaW50
IHJldDsNCj4gKwlib29sIGRvbmU7DQo+IA0KPiAtCXJldCA9IGludGVsX2RlX3dhaXRfbXMoZGlz
cGxheSwgY2hfY3RsLA0KPiAtCQkJICAgICAgIERQX0FVWF9DSF9DVExfU0VORF9CVVNZLCAwLA0K
PiAtCQkJICAgICAgIHRpbWVvdXRfbXMsICZzdGF0dXMpOw0KPiArI2RlZmluZSBDICgoKHN0YXR1
cyA9IGludGVsX2RlX3JlYWRfbm90cmFjZShkaXNwbGF5LCBjaF9jdGwpKSAmDQo+IERQX0FVWF9D
SF9DVExfU0VORF9CVVNZKSA9PSAwKQ0KPiArCWRvbmUgPSB3YWl0X2V2ZW50X3RpbWVvdXQoZGlz
cGxheS0+Z21idXMud2FpdF9xdWV1ZSwgQywNCj4gKwkJCQkgIG1zZWNzX3RvX2ppZmZpZXNfdGlt
ZW91dCh0aW1lb3V0X21zKSk7DQo+IA0KPiAtCWlmIChyZXQgPT0gLUVUSU1FRE9VVCkNCj4gKwlp
ZiAoIWRvbmUpDQo+ICAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiAgCQkJIiVzOiBkaWQgbm90
IGNvbXBsZXRlIG9yIHRpbWVvdXQgd2l0aGluICV1bXMgKHN0YXR1cw0KPiAweCUwOHgpXG4iLA0K
PiAgCQkJaW50ZWxfZHAtPmF1eC5uYW1lLCB0aW1lb3V0X21zLCBzdGF0dXMpOw0KPiArI3VuZGVm
IEMNCj4gDQo+ICAJcmV0dXJuIHN0YXR1czsNCj4gIH0NCj4gLS0NCj4gMi40OS4xDQoNCg==
