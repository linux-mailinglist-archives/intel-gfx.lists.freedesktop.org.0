Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4069C8C8178
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 09:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D15A10EE0B;
	Fri, 17 May 2024 07:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcyeQZLU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6E510EE0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 07:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931119; x=1747467119;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=29fxobL/NtZjA7MWr3pFrnWkC6WF05eysuGuG8Thh74=;
 b=CcyeQZLUfqdb8sQ899Q6iQk8rzh7OEbtFv4NELVT+FkpSvdHBt4Lfg6t
 1UJuugDTs4pVSaPd81Ljv+d/UAf9HXOPcoJTRCzg1xsducUeSdp5k4G4G
 PKxLGYsNBenrBR555lUZc9b4AgHC6XdkoKkTV3JnLP3+n05BzoTEyYgEI
 7SVIgiSzPT44khj4tQUqUeW2oLNOKEFxAIH7hxh0hlOJUhBODSIedf5/K
 QTuljTKzkZ9cKp/Q350Le1Kk/sgg46FujEviRYYf4DStF91oLubs5kKup
 0emy3/wiHD2MJyfsrahVmzqENcHmVAYw8G2dcjOkKZCpuYS9gZb5Da/8m w==;
X-CSE-ConnectionGUID: AwUib5jfTv2gxYbvav725g==
X-CSE-MsgGUID: iJT+3l6URUK8fhSwMzpoSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11933525"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11933525"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:31:59 -0700
X-CSE-ConnectionGUID: eSSlbnE9TC+XP8+DR87fWw==
X-CSE-MsgGUID: OamSd72MSRiYtW3Nm5jslg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="36608141"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:31:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:31:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:31:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:31:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:31:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MV4bN0mjsAjuIpVjl0b/amOWOl/1dmhjwfJ2ZuxcnNiLpBRhN0eQ17H8/tf/ygox2yHenpROy2q9aSB+gfMyeBDxN9HsssdtDnrYMTmZWTG1m27v/cEiky9NUEGMmqQ1sUIY8M2UgjYVWf2mJXrqYZ3joVclDpYQsxYkVpQWIrO9+10adGvbGmx7ZCj+XEHrwmuy+DQHh0VLDbTfmE/X0vUhweadcfcxIly11jUVk8aImVnzW6ZennVVdYvNESPEClLDMIBebE0/rnyJj1ct7sLPDCrtMwJ19lfOrER3ovzulE+fgs5jEWLDqdbKMz7vQ/Y/GmGwOpd5/QBiSMHF+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29fxobL/NtZjA7MWr3pFrnWkC6WF05eysuGuG8Thh74=;
 b=b4hHEqh6kN3g6lS2B11JF1O9BXuejVCdYDlBTjqj5TvJdAn3h00jHU1LsFSNWaDo+wgrY9sXnLvkxKrvUH2rOeg7GC7TYiT7vTnHzBv61GjWrGq4gTwLGwRILLO31drFN8rsKpJpJJeuUgzVDp/67xk6A5N5T8lPd8jle7YqdeypgxW3wmtsvJY8CUKO+L/haDusNrOpXIwKsnEKviqtCXZHScDUiYa8dEOoW9IViHUXgyxRn4Jb88GJzYi0MB68iSp5pkoirOebt/uj5EOVJA+x1yG5VJ1m+Tv2xeQLdKqXUnkGgIxt6sbUigqJOueBl2OqAZcLzLP14vFpqNdzRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.28; Fri, 17 May 2024 07:31:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 07:31:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Topic: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Index: AQHanSAROoMTeawgVEKAzQZMkIe6tbGbDLgAgAARgYA=
Date: Fri, 17 May 2024 07:31:32 +0000
Message-ID: <de424dfd0f5ab6129411be514d6c3788037d7fcc.camel@intel.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
 <20240503060621.987820-2-jouni.hogander@intel.com>
 <DM4PR11MB6360FCCF477A33726BEBDD82F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360FCCF477A33726BEBDD82F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4966:EE_
x-ms-office365-filtering-correlation-id: 2e2ddd36-75b3-4ef4-968d-08dc76436010
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?YnI2bkRDYWM2TnBpRGJMTDVLdXJnZG5hS2tKRzA3ZlRYczMyYk5wZmE3eXVl?=
 =?utf-8?B?ZnlxbU80UEplV1pZMU5HSis1V0lXbUJ1QXBQa2Y4RWRoTkxNdFU3ZzJPVjdD?=
 =?utf-8?B?YXVDK0lQNlB4RnhDeHdzNTRBQXVNaTF0OEl1RzF2b2V3eVhNaTNQMG1CeWU5?=
 =?utf-8?B?N09MaDNEL3JGY0NaQ2w5QkRESzI5V3JObkFyMGt1bWppcmxCa2t5R0JDZVBE?=
 =?utf-8?B?UjZxV2JiaFpxSmthcWJ2OVRXS2FjdmFpZk1mS2gyS1RaRlR5YlRnT3VIaGl0?=
 =?utf-8?B?Z1p4Uk5VUERhSmNLcGRCYm8wRW9tVTE0UUNvYUpkcW0waENYZWJXN002SDQr?=
 =?utf-8?B?N3p3TkkwZUtLejFZU1pRMERJVjVPUlpSc0dicjRHSG5VaGl2MmxUYTZpenUy?=
 =?utf-8?B?L0xpSmJVRG1kL0V2MDYxVFQ2M1BPSHZjUXZqVGJDRnBlK1ZyRDI5VTEySWF4?=
 =?utf-8?B?S0xOeE1pVENlREkvVWVZMFF3VUkzeWtReXZUYzRTaTR0cndwU0l6WVBhczU3?=
 =?utf-8?B?OFJxYWtPMXowdVVkRkI4NUFMKzIvUDE5UEpOK2wxNWdKa2duNzY3RzYzcGF3?=
 =?utf-8?B?Q3ZmQ004KzlSRUw1T3ZVZWpXbEx4QlVJMHVBaFBhZjRPYTRQTFE4akQxcXV0?=
 =?utf-8?B?b0FkTHlLMTl3REZqV3BkaXdvZnY0SU5QQnNJWnZVUlJ5WnAvVkt5SzZxcVNM?=
 =?utf-8?B?MW1JZ0REbUVla3k3Y0hTVGdPWHA1STdWcDdheW0yNlVudXNZOUxNUTk5aXhT?=
 =?utf-8?B?L3FaSzFoQWpLV1FFWEZ4UnlNUURTRGw0M3dIWVdBdkdYYnFNbEZQMFlqQmE5?=
 =?utf-8?B?cGVCdW1QYU16M0lkalYzbmhDOXZMbngwKy9OR1JOTUU5YjROaHZlMHRlY3Vy?=
 =?utf-8?B?OEMwME4xczRZYzJVaUcyY2RsS1o3U0UyY3lLaXd6Rm41MDV1UFVCVUdRb2F2?=
 =?utf-8?B?bzF2amdvMDdMTW11eXVqdytnMDJxNThFNy9uUWRkT3lCUzBaVngxT09lZ1Jt?=
 =?utf-8?B?cUlocnBvRFBkcy94TjRrMTE1dU9vQ1NmZEhvTzB4akdtOGxIRWtCdGR5YXlV?=
 =?utf-8?B?aW9ZRlRpRHNWVkFuNkt0TWFxQlV6OVdiMHZUU0o0MjlPcU83TlZiazk4UGJ0?=
 =?utf-8?B?bXFYVmRoZVgwVWhSL2pkS3hsdWZ1bVg3UEwxQzY2NWpIQStUY2l1T0UvUUFB?=
 =?utf-8?B?WFJSTlVPZDIvZU1tcUtuN2lrS0tJelV6OTZyWUd6UFhXTktNMTg5VXhrNG1F?=
 =?utf-8?B?UUJSbkh6RjJTaXRoMDFBemQ0QlZzYmljUGtSMVJYY0tZejZ2Z0NJVU1TM1RW?=
 =?utf-8?B?QkZMOUtBNTVLQ3F6bFpoeDdzeDFZVE0vZk5NeDYzZ2tHbWIvbk5CUTl6RytU?=
 =?utf-8?B?elZNbnYvdFJmNUFDQitRNUV5YU9LM29UNUxoOG1FczlDRzJxS2VpOVU0VmZU?=
 =?utf-8?B?dWRLclgwMDJOYXM4TU1tZUhkc1VsRGV2ZElQYVRZc2hNWWNPbWVGcmVydGtH?=
 =?utf-8?B?bXhocTJsek81LzJBVjRSQ1R0QXdmTnV2TjZlbGJRMlFjOThVbW1pUHlvYlB0?=
 =?utf-8?B?Q3pPalFOVjgvUHh5YlkzRnN1Qkk0RzN2QzBRd083aFo5ZmMwZGdsZlNXVW55?=
 =?utf-8?B?MmpXUmR1Wk54ckp2T2VUN0duRzk4NWsrRllBSW1SSWVsajJPVlpuR25zT2FH?=
 =?utf-8?B?Nk5mcmRwbFIyUFI5cU0rL0o1OTJ4eHRIeXN4dFRiYmRNMnQwQTkyUlpnYVdR?=
 =?utf-8?B?bm1ZdDdXajB1WDBRZVYxVXhnaU9scGF4U3hLVWM0QVQxbTZZRmZRT09MZlpZ?=
 =?utf-8?B?emdvRGRDOGx6NDhyV2ZBZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEp1K3pqQWdyTEFEcXl4aEJQUk8yT3phNVY3VGg3cmI4VmJJMzYvbWZzbW5y?=
 =?utf-8?B?UXRZZUtNZEZyWFoxSUVIUDliMk1YUFFIcUswMmtKcDZYWXI4VTdLalNWc1JG?=
 =?utf-8?B?d3VXM0VLY0RWSGlLcW9zbFZoWmlPNDA2MExzdFNTWWtqY0l5cDdEdTJCUS9Q?=
 =?utf-8?B?MXduZk5rZlpDTThjelYvQ3ZGVHd0YkxYdDd5YjFTdnJQMkhwWmFkS2t5UXFh?=
 =?utf-8?B?WlBVV3lOZDAvanZpcGRUbUJtdmpnbWNLSlpDbEFtRG5Jekg0Ni96cVBYRWx2?=
 =?utf-8?B?MWdYNnNES3lYODVrMUlwWGxGVWQ2YWc1RnJzYkY0K20zQUdCWGZob3d2aFUz?=
 =?utf-8?B?ZE16c0M3Q2lqeWhaTklzSUVBNVUycHg1Z1lWempGUkVSbkxvNmwwL3dtS1pr?=
 =?utf-8?B?a1ZGdmZHY0h4Nk5iRi91YlVMT29XeXA5QW1OZDNVRUw0eTR5VHFXUnZwZjQr?=
 =?utf-8?B?RzVuT0RhMzdpcDZNbENpdlcvTzV1OW9USDZoWmFmYkpldWYzUm5WbERKTWln?=
 =?utf-8?B?Y1drTnZGOHRDc0Z4cEVqV1QvMEpJdEFXN3AwT0tEQVJraVNITll2QWRWZTFI?=
 =?utf-8?B?aWhHQmh0dWlaV01VZHFORjdJb0p5bVVPMlNHYzhVTDQweTY2YlNJZmc3N2hS?=
 =?utf-8?B?ZU44QmQvbnErYTJFUWxRNjBYalkvdms0ZUpwUVN5Q2xINFZ3VDJSTWY2Rm1P?=
 =?utf-8?B?UTc5blJrNjd5Zys5SFdpSjVTWHNSK1JPaEZvK1JFTy8yRjBQZ0srZUxQcGJF?=
 =?utf-8?B?c1Y3WE5PanJnbDRZYVVscTR3dDBvcFZueHZnRWtwOE9RMyt6V3NWQm95SXhR?=
 =?utf-8?B?cXJXemZhUHc2cDlycDhHUmZ3elBIUFlIc1ZObkhMQjlyeHhja2VyaXlTZmlh?=
 =?utf-8?B?YW81S1NLYW5Xd0ZxekdWZ2ZHOW1HaUE0aXIxUnlEcjVoMHplaU0yaTFEUUo5?=
 =?utf-8?B?K3hEMWFZaEcvQkFwd1B2QWlua1I4VmNmMEw0dmZiVUtTRzV5MGRKckNEN3lZ?=
 =?utf-8?B?aHhOV0dBTlZFeVJWTEpZWk1tbkhLUDhvV0dDZy8rZ0MwaWxnY3I3cDRzV2Jy?=
 =?utf-8?B?b0dsNHFaWm5LV3ptNkl0OGlPbmVWNFYzZmhDUkttTWh1VFhZZFhYaExaaDRT?=
 =?utf-8?B?dTR3RHhiZzZxbllLaXY0aWRqSHNFSTE2UVFWdHZDRmpORC9laVpkV2wydm4v?=
 =?utf-8?B?TlY0SnBCUitTZzdIZjUxRjJOYjUzNHIra1BiaEI3d2t3WXYrcmZUdExlcmV6?=
 =?utf-8?B?Y3pqMjVFZkZrSEN3S24velNwTkw2VVhPR3pGNnZTQkNDSEdMYVpYbm1PNHM5?=
 =?utf-8?B?ZXdQS1RoNEdGUUt3Z2V4bVNLdENScWpIYmkvU213TXNsWW1laEVRYWlvcm1R?=
 =?utf-8?B?SzRyMEhIR24wY2xtME5ad1pLZWpMc1lRV2pBS0VWNTlzbVptY1lJTzZ1S2tD?=
 =?utf-8?B?bmZBMEtiUkhYVTNBTmtkQSszWkZBSE1Fa05ZdG9TQXlORzJNRkYxRlRBMUhx?=
 =?utf-8?B?S0pSRUR0U21RM2RrQWI4QVhRQlVIeVN3eHFTUnRhczZqa2VUZDh2eWZjR2p3?=
 =?utf-8?B?OHdMcWtDZGVqTDY4cld4aEIxZ0s1U2VuZFNlREFJYWZCOVBGQndvZ1RwcmpG?=
 =?utf-8?B?SU14d0pxNFNtWHhLNmtLR0cxWlhwRmtheGE4RjdjU3FKNDJON0NuNVk1SEVV?=
 =?utf-8?B?SGZDQmZCbFNUcElNZGhJdGR4TnpWTFM3bmlrQVJrSHp0T2lYNit4aEVGQjdv?=
 =?utf-8?B?QWl6Q0hPV1IrMjc0NklHRlZzOW92Q1VIVWRjU3FkMEtrcGlmYjQvbngwOSsw?=
 =?utf-8?B?NzJvY1Nzc0Y3cFZsbVdpeUdhOFBVd1dsZWF6U2txbVVMc28zSHlzWWtFa1dD?=
 =?utf-8?B?YkFlbjk3S0Y3NXdRWjFZUW5xVmZraFpaQU84ZkNaS1NmbnRmWmNvY2Y4MHp1?=
 =?utf-8?B?aTJoQ1dvcFhXSTA1VDNPa1Y0WXJmNXE0dFBxM1A3V0N0aHc1T0hYSm5NR1gz?=
 =?utf-8?B?c2hvdzNTZ25uUUcrb0lFYTV5Rk40d0p2SWFvM0phd3Y1UFVvM1dGKzV6NzhZ?=
 =?utf-8?B?cVNWdkk5YmhBWmVnY2w2K1ZMZUN5OGxQOGNMVFQ3SlpHREdSbDdzd1p3NzBy?=
 =?utf-8?B?Z1NTYnFWT1MvdmlYbEd1QTJFMzZNQmp1aWhOUlBXZmJtSjBrR3RMb0EwSEpI?=
 =?utf-8?B?dVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA77D6348466694198BC4D2CB5D3E07B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2ddd36-75b3-4ef4-968d-08dc76436010
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:31:32.5889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cqvR+9ZiQUzK9Ydv5xZ2GCJ8s9ELQ3CERx6pAQ52L8rm+ZVHpcl8Su9D8CqvjPhRxL7JPUSsSVJgEVlE64JPbNaWKj4WHBN4B2K3EAjwU+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
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

T24gRnJpLCAyMDI0LTA1LTE3IGF0IDA2OjI4ICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdm
eCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTE6MzYgQU0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENj
OiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0
OiBbUEFUQ0ggMS8zXSBkcm0vaTkxNS9wc3I6IEx1bmFyTGFrZSBJTyBhbmQgRmFzdCBXYWtlIHRp
bWUNCj4gPiBsaW5lIGNvdW50DQo+ID4gbWF4aW11bXMgYXJlIDYzDQo+ID4gDQo+ID4gT24gTHVu
YXJMYWtlIG1heGltdW0gZm9yIElPIGFuZCBGYXN0IFdha2UgdGltZXMgYXJlIDYzLiBUYWtlIHRo
aXMNCj4gPiBpbnRvDQo+ID4gYWNjb3VudCBpbiBjYWxjdWxhdGlvbiBhbmQgd2hlbiB3cml0aW5n
IHRoZSBJTyBXYWtlIGxpbmVzLg0KPiA+IA0KPiA+IEJzcGVjOiA2OTg4NSwgNzAyOTQNCj4gPiAN
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCA1ICsrKy0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggZjViMzMzMzVhOWFlLi42Nzg5ODdiYmUxNjggMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAt
MTM2NCw4ICsxMzY0LDkgQEAgc3RhdGljIGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0
DQo+ID4gaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGZhc3Rf
d2FrZV90aW1lID0gcHJlY2hhcmdlICsgcHJlYW1ibGUgKyBwaHlfd2FrZSArDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0ZndfZXhpdF9sYXRlbmN5Ow0KPiA+IA0KPiA+IC3C
oMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikNCj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogVE9ETzogQ2hlY2sgaG93IHdlIGNhbiB1c2UgQUxQTV9D
VEwgZmFzdCB3YWtlDQo+ID4gZXh0ZW5kZWQNCj4gPiBmaWVsZCAqLw0KPiA+ICvCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbWF4X3dha2VfbGluZXMgPSA2MzsNCj4gDQo+IEFzIHBlciBzcGVjLCBoYXJk
d2FyZSB3aWxsIGFkZCA1IGV4dHJhIGxpbmVzIHRvIHRoZSBwcm9ncmFtbWVkIHZhbHVlLg0KPiBG
b3IgcHJpb3IgcGxhdGZvcm1zIGl0IHdhcyBzZXQgdG8gMTIgYXMgNyAoM2JpdHMpICsgNS4gSSBn
dWVzcyB3ZQ0KPiBzaG91bGQgbWFrZSB0aGlzDQo+IGNvbnNpc3RlbnQuDQoNClRoYW5rIHlvdSBV
bWEgZm9yIHBvaW50aW5nIHRoaXMgb3V0LiBJIGhhdmUgZml4ZWQgdGhpcyBhbmQgdGhlIHR5cG8g
eW91DQptZW50aW9uZWQgb24gcGF0Y2ggMy4gUGxlYXNlIHJlY2hlY2suDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCj4gDQo+IFJlZ2FyZHMsDQo+IFVtYSBTaGFua2FyDQo+IA0KPiA+ICvCoMKg
wqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dha2VfbGluZXMgPSAxMjsNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgZWxzZQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dh
a2VfbGluZXMgPSA4Ow0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+IA0KDQo=
