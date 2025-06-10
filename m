Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42895AD44F2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 23:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7CF10E5C6;
	Tue, 10 Jun 2025 21:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eg2bHi9t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C15910E5C6;
 Tue, 10 Jun 2025 21:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749591712; x=1781127712;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4mD58hH5XRb6ptuieaScTanvr2VxwDJRQPf0A1KP+1w=;
 b=Eg2bHi9t8nn7X8ecQbZFFIJ40cd2Qnt/8tEmJG3D1WXpK0o5P6eA45QL
 /0bamq4kD/B/4F2UUoYmRQ7bpFFPOTJK92mEazuL9RWrGb31eAWFAfspR
 ISzHQV2jIWFAqQCFjrMlsSgznK2uirJWcnP9PQnWtmKUMOPxvb++03NmO
 qM88akU8N+jbQKycuLqtGygeQv+a2fLWRdJkMLLWox+IoV9pCgXyczXwD
 dmByYIlXv/3FR8XJ8zB97m7OSQvEgGiCKhyL/tlXwJmRF955SFLFVkIYl
 M4BaL0CCTAL/buZEAEqWsnjhsRmwX+nSQvAmZ+ip8clih17sc6SjEdqiC A==;
X-CSE-ConnectionGUID: 0E+Gr0tkTEKHR0v4OVRHNw==
X-CSE-MsgGUID: e0ZQHDzFQ4C6tgoiFAwHnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51807696"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51807696"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:41:52 -0700
X-CSE-ConnectionGUID: TA48q6p1RiOxh6Cnc4UwSw==
X-CSE-MsgGUID: sevsqzpSSJOzUwf1uzy8Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="146862947"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:41:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:41:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:41:51 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.48)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 14:41:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F4Jfj34iWy2/Tfd8VPzOzerYT+m0X9/tjGVjcT7opHxMcXv87Tq+ALtoWjtSAa3dic2Ie/eh7azHPm+TMWgOiAtHZQYiA+qGPVPxyG/SWGjtGzyzvPwgohyYmUZPuyuVVfLHuhUIh86KT8ZfefynIka+iwp/gFomx8shuhavwAziUkF4Doos1U0u5ATt+lvPWZ/EJfoiRggVQX+lUezBTwLvmgIqX3xXkQyX+qv+ON6syjxDKVdY3G5OMLy5Q+bMK2vzLiAZFrhmkBOdA91EOa4mp7lBW4JRM8Yc0tGukdEx7y4Um+LBAyc7OhGxfWmaTHeer2hafwwlgfXIEzIh3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4mD58hH5XRb6ptuieaScTanvr2VxwDJRQPf0A1KP+1w=;
 b=iKMZOqtev+15TYX+T/kH6rACjioqF06qOwemjTRfTuRczBTGQY5FjDeYvlucRma+q4/hdsG2OTKTpXphdqFJ4YS53eOT84hXAbL1nmOnIZBtOIeuU9hLL16lIaTpb2d27GfgaBaqk6KAxbUt7NXl7LQzG3+CnfQ+RSYr0/RXCf1hJXaDrOrU/oGypD7UTl+6UEfGBHTdY4ERHA6JYJSGbn8EqjaGznySGFQZ6/PGFsJaZvf76Dlkg7vawrP6ksf1riBX3M4ngwJXN113Q8xhOV2u/ENfRs4WS8E6Dmx9RKjPp2V/wLMzDx0B3BuchDp5rUrCt2Zn0XwbJtJGyhWlKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM3PPFF0E3B6AEF.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.25; Tue, 10 Jun
 2025 21:41:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 21:41:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 04/21] drm/i915/dsb: Garbage collect the MMIO DEwake
 stuff
Thread-Topic: [PATCH v4 04/21] drm/i915/dsb: Garbage collect the MMIO DEwake
 stuff
Thread-Index: AQHb2Uhjk6esEFWpL0WXhHNv+e+uubP87geQ
Date: Tue, 10 Jun 2025 21:41:47 +0000
Message-ID: <DM4PR11MB63605E402B8A71B28E057F87F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM3PPFF0E3B6AEF:EE_
x-ms-office365-filtering-correlation-id: f88c1e9b-6dfe-417c-f1ed-08dda8679a4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cnZ2YXlyc0NQRGduM2dCSDc5KzM1MmF4a3ZycGczajBCSkZUdXhZSkQvU2sv?=
 =?utf-8?B?U0ZPWHFsY3I2d1ZkRXRWTEdsU29WYmthYkczWGhtSG94VnlZUnFpMkd2RERp?=
 =?utf-8?B?U0p6NGhwZHFNTk1mZ0lnNUdsQXdxekp0ZWRGVVJGVXlWUkZNdVNJOHErOFoy?=
 =?utf-8?B?ck5STDZkVFV2bHFBQmtEQ2xlaUFtQkVWYnhsSTV3K0QzWFZVZzN5STRxZWVC?=
 =?utf-8?B?ZXJrKzk2RndUTEI0aVJBbHkyRWw4ak5nMHo4U1M0cHRvNUx6aVFIUG45VnpE?=
 =?utf-8?B?ZmNLMEpBdXdFRE9jRXRHT1ZmRVJPS3lBR3FxbUpTdUJaMHpYUXdCUnQ0QmVN?=
 =?utf-8?B?Q0VITisvQXFYSlc5OUdzdkZzQkpUNkQ1V2Z5ZEIrYTM3TWZoOE1ZdWlWaUxU?=
 =?utf-8?B?Sk9qZy9EVHd2Y096U05BeTl3UHAyNHk0d3AwZFc3Ykt1ZEh0N1ZhVlV2SlV0?=
 =?utf-8?B?SzlQQ21qMjJHU3RzWm5KU3U0eEJJYzl5TmxHQ3NWMGk3NXhYYWlsYmRRcGYx?=
 =?utf-8?B?U1hKWHFqbkt3Wkd2eDNvM001cDlPOHhaMjRZNVBUeFdqOWhXck9ja0FISmNN?=
 =?utf-8?B?R2VmU2R0SDZ6ZWwvaEhrY204QkgzQTdXdzJ3WW5XNlRlM2REZlJKSE5PNUF4?=
 =?utf-8?B?WWZVdVphYkRFekhNVWlRdzJWSE1CNkFnOVdOaHk0eHJERW8yOEk5Qi9RVlZm?=
 =?utf-8?B?aGRyOEdTTGhpUDFuVGZTZ1RRemVMUnFQRkQrVzc1Z0RDV091TFpZVDlCMDJG?=
 =?utf-8?B?czM1TzBHeDdTSEswTEVIbUt0dEx6MWhNM3Nxck0vaFd2dExZTStHbG5SMzU5?=
 =?utf-8?B?MTl5S3NHV25uY2EybVdrZFhFRzBoVkl5U0ZPczZIQnVqSndmbW5NeFB3UEdB?=
 =?utf-8?B?VGp1SVF1Nyt4ZW40QmYzSXFmL25meWh4NjRSdDM2WUlVeWlKM1c0eWlnMGV0?=
 =?utf-8?B?eEFzOTBDdEtYN04vWlhWL21WZVRjdk16M0Y0TzF3NDhGK0lXL1YzYk1kdHMx?=
 =?utf-8?B?U2V1d25HTVJvSzRKaUl0aWZUMzV6V0ZHWVNWRVU2bTFlUnlKeW15cnhyb2NR?=
 =?utf-8?B?Skd0d0Nud05ZZERYZmhiZmZWQW50TmRhcWYzS1gybW1pWDMrZGZQMUhuYWhE?=
 =?utf-8?B?REU4bjRkYk8yWWY3SlZGQndNeVJVOTZwU2xzZ0ZMRjBmWEN4aXA3b24vMmdq?=
 =?utf-8?B?U0hONi9YOStCZUVwS0tsYlpjTndxVU14LzdtWWRYSWxFWFd3L3A4VVdudXdm?=
 =?utf-8?B?bFhMNW4rRlEzOVMyVFFGaElnNDVqbVoyT1BJRmRmdlRNK0RDekY2dGM0bjZJ?=
 =?utf-8?B?dGw3UDNkTWZ2V3N6YVZaQ3NSYkhwb0UyYk1PR002YVpOUjJmQS9LSXZJbG9N?=
 =?utf-8?B?cnd6ZDB1NFdzVFV2T2ZtRC9ETGp4eXVVeThVSU5PWmEvUDR2NmZUbEg5VlVL?=
 =?utf-8?B?aWJuRmdsdU9BaWtFZy9PRmNzQkZkZ09FR1hUdXNtL21RaU5lY0VNQ3p5UkY3?=
 =?utf-8?B?Qyt2c2xObHlVM1ZWbnd0SDFWMWFOaTgzYXRUbCtYbEtRVm1LK0Z1T0xpWEFH?=
 =?utf-8?B?aVVMSXJjM010a2ZKYWNaNFZFMjdOWW5GV2FtcUN4MlFUaERiTm1uTEREbVFm?=
 =?utf-8?B?ZzJlRTc5WGZZMU44bHFWcDlDMnFENHB5U2o4eUZaQWtJUWIwa0lnN0JBOXZz?=
 =?utf-8?B?N2g5N3cxTmwxcGtQd1NzRkl0c3JNbFNoeDYrcnBTY0srVVB3OSt3dWxmL0Z0?=
 =?utf-8?B?MGIwZUZ4Q3lObU9CWE1mcmd0YmtLazYxaDBVaHRKakRncnNEVW5QNzkxTmRD?=
 =?utf-8?B?UDlxQ2VTb2g5azlMUDNBc2Q2dnZSaVNTWXFUNGhab3FKaTFrOHBSUFB3NC83?=
 =?utf-8?B?L25JcG1qUm9tb0pjYjdsZnZVZEhRMGJvMUJpdjJIOUh4VTN1aEszcWh2dmRH?=
 =?utf-8?B?a0k2M25vK2g2QnpTcXJWTDBkNENWamZhNC9NekcrWndIeGo5VlZBOXdIeTln?=
 =?utf-8?Q?yzrk/O/3FONq7rstKE0SVC3ev2yu1k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cGdFNVBBNHNCazhFam0zL0xHVjRmUk8vOWJBMVRvKzR2b2l4VTBOZkdQNlo3?=
 =?utf-8?B?cTh2ZmFPa3h1Unk0aFZXU29MV0xYckJyWndEbEpNd0s4NXltaWN2YjFmVzhE?=
 =?utf-8?B?RTdPeFlzbEJVRmU3K3pCYW1renJaY3psczVvUkRLbGFyWjlRVWlobWVFZXdJ?=
 =?utf-8?B?aDBXWDFSQkozbmxpaHQxQjVMbDI2OVJHZlo5WnlUd1Q4WXQxMHdlLzJucGJr?=
 =?utf-8?B?dGxqNTFScEJ4TU5XYVc3TEZRRXY0bXNmYlhkTGQ4Z056MVR2aEdzbDFtMkdO?=
 =?utf-8?B?eElDSHgvd3RGZGlmdW9FSWwzUS9xRU9ER3l2aW5kOXJOZTAxTXBVcXcydVY4?=
 =?utf-8?B?N0VKWktmb3ZYem13UWFKb0I1L21jcTF2eDBGMTFhd0RTWDVSbG9DL1had3ZJ?=
 =?utf-8?B?b0E1WGduUHI3R293cTRmbTNhZUU0VjVvcGdKU0hDWG9NWmFPaEVaTTRIdkxN?=
 =?utf-8?B?MWljeCsya25EU1F1WVdmc3M2emNZVDNNTS9yd0FMY1BBKzdhL2xkZFpsRzRK?=
 =?utf-8?B?SGw5eExDTkVKWUJEM0RIZnVoSHN2a0hSd2JHdUNyOWU2MUlGR0JzY2RJVTZM?=
 =?utf-8?B?U29GOHpKTnFZVlp5VG00UHhhRDV5WnFieDNEVGFjL2xkSCtnWE9ocGVYd2Ra?=
 =?utf-8?B?SmdQVkxUZ1NEOU9VVlVYMjhaWHRzWjlEdWF4L0U1dEswNzg2Y3NUeWJXOVI2?=
 =?utf-8?B?WnJ3NllyZHNmQUQ5c0VxRUtZMElBTlBPc1BPKzRjTEhpRURFakRwdXVWa01h?=
 =?utf-8?B?N0JUakp2RjFKMEVDQUQzQlcyeHpGVUNxZlZaT1VRK0xzTktZTzhtZkFWS1hZ?=
 =?utf-8?B?LzJIZFVjaTd3R0V5cjEzb0hLdWYvVWxXSHI4aDdPbFlRQ0IzUFJ6UlcyRHdV?=
 =?utf-8?B?dHR2SER4U3EzcmtrR0RBcXVQZ1lhemRxSW1zY2ZEYzZEODJWOTVKTmFWYkRJ?=
 =?utf-8?B?UW9DOVoyaFVSQWR0RE1NTUR0aVlmazBqVXNNR0p4Vi9FbHNxYnhxbjdKRFNM?=
 =?utf-8?B?eERGc3FDRkhTMFVzeW1LbXdoTUhsSFZCZi8yMnN4VEZUUmI4aW8xWE12RHcz?=
 =?utf-8?B?U0JTeDFTc1VOQ0JKMkxmWEtTc1Jtbjh2QVZFV3FwRHNEeURGTG5hcGpCYlZl?=
 =?utf-8?B?U2dWeGdBUWk3eUQxa1grenI2QkM5MFc1MUlNeFA3LzcvcmJWWGhKVHEvdm1r?=
 =?utf-8?B?aFVVY0J0OWxYdnVsS3Bzam8wOWJhand5a2s3VzVLNWV3ejJZdnNnWlVlaFIy?=
 =?utf-8?B?YmowWXlzV2RGWDdCRi93aENhdmZ6TmlsUlhzd3lrWXR0Mi9WUWJHdERLMkhT?=
 =?utf-8?B?TWdaSXJpa0NybmU4SVdVbmZjRGlFdFBBQ1BQWTVYMmV2ajdZaXFZSG5NcVNq?=
 =?utf-8?B?NXlsQm12d0YrdngraWVha1Z0OWNUQVQwZ1lsK3NCUStGcFJIOW1WNG9uUzJD?=
 =?utf-8?B?THdNdmJMMXk0cE1kdFRuckVXeWZZbHAveXQ4WElpZVFEY1piZTBJendBNFJ2?=
 =?utf-8?B?cUNNYUsyMm1qaStFL2lnMkhQdEZRZGNSNFJpNEsyd05TSFU4R1FhTGE3TlpU?=
 =?utf-8?B?eG80Qzl4S1JXMVJDRmFha0trZVNSQUlLMTZ1elFwT2l2YWZST0RJaFgvY0VF?=
 =?utf-8?B?U3R2MHlMM0ZHUVNxNHVnRllENGpod1djZmovL2pkbUd4QTYza3BYSHM1Z3RK?=
 =?utf-8?B?djhsSHJHcHdqa1l3VWdhVXlQcTIxWDFmTlY1QTB6WlVEZ2FqNGdyZHRjY3BI?=
 =?utf-8?B?R0gzTGIyamdQNHlielRrMEhnRzNYaDA2VEY5WGR1ZGI0SWNMTE9RWmxUcUhE?=
 =?utf-8?B?b3ExTk9HMnhNZmp4a3R1eW9oYUNCYjFJL1ZaL0xKb2toTm9IR0ViSW5QcXBV?=
 =?utf-8?B?NFFnVzhkblNlTE43aWo3Z3VEdkpkUVNWeWVQbEwzL3dMckFaTklKditGUExU?=
 =?utf-8?B?aktlaHZhWVhaKzJLZUVqNHI3U3c3a2FxeEtmcWJRNmdWTkJjd0g1WHBZWVpC?=
 =?utf-8?B?MG5nTXhkRzk4R0phbE1hYkkzQVN1YUJmNGlEWjRmeE95RHg1ZnZkckxyakhE?=
 =?utf-8?B?OTVPVkZwaE5PdnAwTjNWTjdVNWNrTXB0WVc0WTF4YS9VSzBBY1FiQ0huSHJi?=
 =?utf-8?Q?2+gsWfM1Lh7QTiRcKDHKP47i+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f88c1e9b-6dfe-417c-f1ed-08dda8679a4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:41:47.9830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vqKVadnujPqP1PjsX2znpkkpZDqMrbO6Z/2+gMPu6xLUWpmwAv53e7WR5te735vLbhkTk94w83MO8wD3+pueIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFF0E3B6AEF
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDQvMjFdIGRybS9pOTE1L2RzYjogR2Fy
YmFnZSBjb2xsZWN0IHRoZSBNTUlPIERFd2FrZSBzdHVmZg0KPiANCj4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFNpbmNlIHRoZSBp
bnRyb2R1Y3Rpb24gb2YgRFNCIGNoYWluaW5nIHdlIG5vIGxvbmdlciBuZWVkIHRoZSBERXdha2Ug
dHJpY2tzIGluDQo+IGludGVsX2RzYl9jb21taXQoKS4NCj4gDQo+IEkgYWxzbyBuZWVkIHRvIHJl
bG9jYXRlIHRoZSBEU0JfUE1DVFJMKiB3cml0ZXMgb3V0IG9mDQo+IGludGVsX2RzYl9maW5pc2go
KSAoZHVlIHRvIHRoZSBmbGlwIHF1ZXVlIERNQyB2cy4gRFNCIHJlZ2lzdGVyIGNvcnJ1cHRpb24g
aXNzdWVzKSwNCj4gYW5kIGl0J2xsIGJlIGEgYml0IG1vcmUgc3RyYWlnaHRmb3J3YXJkIGlmIEkg
ZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCB0aGUgbm9uLWNoYWluZWQNCj4gRFNCIHBhdGggYW55
bW9yZS4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyAgICAgfCA0NSArKysrLS0tLS0tLS0tLS0tLS0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCAgICAgfCAgMyArLQ0K
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0MSBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IGIwYzdjNDZmZmJlMi4uNmVjNzg2MTk4ZjQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNjc0OCwxMyArNjc0OCwx
MyBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfY3J0YyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAobmV3X2NydGNfc3RhdGUtPnVzZV9kc2IpIHsNCj4gIAkJ
aW50ZWxfY3J0Y19wcmVwYXJlX3ZibGFua19ldmVudChuZXdfY3J0Y19zdGF0ZSwgJmNydGMtDQo+
ID5kc2JfZXZlbnQpOw0KPiANCj4gLQkJaW50ZWxfZHNiX2NvbW1pdChuZXdfY3J0Y19zdGF0ZS0+
ZHNiX2NvbW1pdCwgZmFsc2UpOw0KPiArCQlpbnRlbF9kc2JfY29tbWl0KG5ld19jcnRjX3N0YXRl
LT5kc2JfY29tbWl0KTsNCj4gIAl9IGVsc2Ugew0KPiAgCQkvKiBQZXJmb3JtIHZibGFuayBldmFz
aW9uIGFyb3VuZCBjb21taXQgb3BlcmF0aW9uICovDQo+ICAJCWludGVsX3BpcGVfdXBkYXRlX3N0
YXJ0KHN0YXRlLCBjcnRjKTsNCj4gDQo+ICAJCWlmIChuZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbW1p
dCkNCj4gLQkJCWludGVsX2RzYl9jb21taXQobmV3X2NydGNfc3RhdGUtPmRzYl9jb21taXQsIGZh
bHNlKTsNCj4gKwkJCWludGVsX2RzYl9jb21taXQobmV3X2NydGNfc3RhdGUtPmRzYl9jb21taXQp
Ow0KPiANCj4gIAkJY29tbWl0X3BpcGVfcHJlX3BsYW5lcyhzdGF0ZSwgY3J0Yyk7DQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggYzgwMTFm
NWU0MDc2Li4yMDA1NTVhOWU5NGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYw0KPiBAQCAtODI2LDggKzgyNiwxMyBAQCB2b2lkIGludGVsX2RzYl93YWl0
X3ZibGFua19kZWxheShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlp
bnRlbF9kc2Jfd2FpdF91c2VjKGRzYiwgdXNlY3MpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyB2b2lk
IF9pbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgdTMyIGN0cmwsDQo+IC0J
CQkgICAgICBpbnQgaHdfZGV3YWtlX3NjYW5saW5lKQ0KPiArLyoqDQo+ICsgKiBpbnRlbF9kc2Jf
Y29tbWl0KCkgLSBUcmlnZ2VyIHdvcmtsb2FkIGV4ZWN1dGlvbiBvZiBEU0IuDQo+ICsgKiBAZHNi
OiBEU0IgY29udGV4dA0KPiArICoNCj4gKyAqIFRoaXMgZnVuY3Rpb24gaXMgdXNlZCB0byBkbyBh
Y3R1YWwgd3JpdGUgdG8gaGFyZHdhcmUgdXNpbmcgRFNCLg0KPiArICovDQo+ICt2b2lkIGludGVs
X2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjLT5iYXNlLmRldik7IEBAIC0NCj4gODQzLDcgKzg0
OCw3IEBAIHN0YXRpYyB2b2lkIF9pbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRz
YiwgdTMyIGN0cmwsDQo+ICAJfQ0KPiANCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LCBE
U0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwNCj4gLQkJCSAgY3RybCB8IERTQl9FTkFCTEUpOw0KPiAr
CQkJICBEU0JfRU5BQkxFKTsNCj4gDQo+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgRFNC
X0NISUNLRU4ocGlwZSwgZHNiLT5pZCksDQo+ICAJCQkgIGRzYi0+Y2hpY2tlbik7DQo+IEBAIC04
NTUsNDQgKzg2MCwxMCBAQCBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IsDQo+IHUzMiBjdHJsLA0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXks
IERTQl9IRUFEKHBpcGUsIGRzYi0+aWQpLA0KPiAgCQkJICBpbnRlbF9kc2JfaGVhZChkc2IpKTsN
Cj4gDQo+IC0JaWYgKGh3X2Rld2FrZV9zY2FubGluZSA+PSAwKSB7DQo+IC0JCWludCBkaWZmLCBw
b3NpdGlvbjsNCj4gLQ0KPiAtCQlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LCBEU0JfUE1DVFJM
KHBpcGUsIGRzYi0+aWQpLA0KPiAtCQkJCSAgRFNCX0VOQUJMRV9ERVdBS0UgfA0KPiAtDQo+IERT
Ql9TQ0FOTElORV9GT1JfREVXQUtFKGh3X2Rld2FrZV9zY2FubGluZSkpOw0KPiAtDQo+IC0JCS8q
DQo+IC0JCSAqIEZvcmNlIERFd2FrZSBpbW1lZGlhdGVseSBpZiB3ZSdyZSBhbHJlYWR5IHBhc3QN
Cj4gLQkJICogb3IgY2xvc2UgdG8gcmFjaW5nIHBhc3QgdGhlIHRhcmdldCBzY2FubGluZS4NCj4g
LQkJICovDQo+IC0JCXBvc2l0aW9uID0gaW50ZWxfZGVfcmVhZF9mdyhkaXNwbGF5LCBQSVBFRFNM
KGRpc3BsYXksIHBpcGUpKSAmDQo+IFBJUEVEU0xfTElORV9NQVNLOw0KPiAtDQo+IC0JCWRpZmYg
PSBod19kZXdha2Vfc2NhbmxpbmUgLSBwb3NpdGlvbjsNCj4gLQkJaW50ZWxfZGVfd3JpdGVfZnco
ZGlzcGxheSwgRFNCX1BNQ1RSTF8yKHBpcGUsIGRzYi0+aWQpLA0KPiAtCQkJCSAgKGRpZmYgPj0g
MCAmJiBkaWZmIDwgNSA/IERTQl9GT1JDRV9ERVdBS0UgOg0KPiAwKSB8DQo+IC0JCQkJICBEU0Jf
QkxPQ0tfREVXQUtFX0VYVEVOU0lPTik7DQo+IC0JfQ0KPiAtDQo+ICAJaW50ZWxfZGVfd3JpdGVf
ZncoZGlzcGxheSwgRFNCX1RBSUwocGlwZSwgZHNiLT5pZCksDQo+ICAJCQkgIGludGVsX2RzYl90
YWlsKGRzYikpOw0KPiAgfQ0KPiANCj4gLS8qKg0KPiAtICogaW50ZWxfZHNiX2NvbW1pdCgpIC0g
VHJpZ2dlciB3b3JrbG9hZCBleGVjdXRpb24gb2YgRFNCLg0KPiAtICogQGRzYjogRFNCIGNvbnRl
eHQNCj4gLSAqIEB3YWl0X2Zvcl92Ymxhbms6IHdhaXQgZm9yIHZibGFuayBiZWZvcmUgZXhlY3V0
aW5nDQo+IC0gKg0KPiAtICogVGhpcyBmdW5jdGlvbiBpcyB1c2VkIHRvIGRvIGFjdHVhbCB3cml0
ZSB0byBoYXJkd2FyZSB1c2luZyBEU0IuDQo+IC0gKi8NCj4gLXZvaWQgaW50ZWxfZHNiX2NvbW1p
dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+IC0JCSAgICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5r
KQ0KPiAtew0KPiAtCV9pbnRlbF9kc2JfY29tbWl0KGRzYiwNCj4gLQkJCSAgd2FpdF9mb3JfdmJs
YW5rID8gRFNCX1dBSVRfRk9SX1ZCTEFOSyA6IDAsDQo+IC0JCQkgIHdhaXRfZm9yX3ZibGFuayA/
IGRzYi0+aHdfZGV3YWtlX3NjYW5saW5lIDogLTEpOw0KPiAtfQ0KPiAtDQo+ICB2b2lkIGludGVs
X2RzYl93YWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5oDQo+IGluZGV4IDZiY2ZiMDNmMzQxNS4uYzhmNDQ5OTkxNmViIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gQEAgLTY4LDggKzY4LDcg
QEAgdm9pZCBpbnRlbF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCSAgICAgc3RydWN0IGludGVsX2RzYiAqY2hhaW5lZF9kc2IsDQo+ICAJCSAgICAgYm9v
bCB3YWl0X2Zvcl92YmxhbmspOw0KPiANCj4gLXZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IsDQo+IC0JCSAgICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5rKTsNCj4gK3Zv
aWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOw0KPiAgdm9pZCBpbnRl
bF9kc2Jfd2FpdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOw0KPiANCj4gIHZvaWQgaW50ZWxfZHNi
X2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAtLQ0KPiAyLjQ5
LjANCg0K
