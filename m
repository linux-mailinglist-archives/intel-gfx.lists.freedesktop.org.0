Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0713CCB3313
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4919710E758;
	Wed, 10 Dec 2025 14:44:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cGzMYi3x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532EB10E75E;
 Wed, 10 Dec 2025 14:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765377878; x=1796913878;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=A2mRMiDimtAmmgfL75St8ZHEuCYp/YvGfDERWYUQ+6k=;
 b=cGzMYi3xce67vUg45BEPq2wzTKaSYoFiU79tbxSXwunzHYECXzKk5oZb
 mdViDo6+lynqU+hB/mJtMbB0/IzXZOUkxmRLw971u9fxBnU5So8mEZOsQ
 OLLr/XKKTe0rHQfFSnaiFkfJaTAYggzTIiLFKa/oUBt+4exixAihf4lsP
 VdrDxkrVzv/D6bXhFoIsWH9C1Vw/dPbK3+b1bxsNTvKNH/ztRpK/TRKEF
 1vjs/NYn7njmfCp9ndE5pPB7XChTZuIf1QUs/uPKCId8nRt2S3L/2V7FZ
 DcvPtK94eaPcEslfEDhRbZAcJa0xnQ0zljcq2jlFgULy35ZLrNtajRrVK g==;
X-CSE-ConnectionGUID: AB9aOwntQYeHOI9k9vqwvA==
X-CSE-MsgGUID: 2fHeyIa9TH+5tWZtoTHNZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="89996698"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="89996698"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:44:38 -0800
X-CSE-ConnectionGUID: CWJxVME6QpmFktTM4eTLeg==
X-CSE-MsgGUID: 4lt2wf/GQtiBf9b7RP6jCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="196280774"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:44:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:44:37 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 06:44:37 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:44:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kz0QACFeHbfzGGejiOjM16E2KquW6nvkh12T98DpBq0uV0ejDlBUdvheDEtWf+gbP/m1LPxbMA12A6skd2qpZeGQCZw+66VHW5m5SRAiPEDWhHddGGR8sdSwMtoI0RQ6mkbM+KFI4irgzrglUCCl1Lhj9JlNCYV6PIwbNhNw5A+76M/QPxeDqb2Z/Yk5dOrFUDB5KFdisSnWw5kp1eNnHtDN0qkKykPbbNv0Nw1BC+xjpXBolK8kTfP8GZ/LItXKMAG913MRQ8z2xmiauUsb4l8rcIcTHyj0xCL+mMiGfFNGMzlvpkEd8HPY2H17q5EkTPfLF4xDLzcEYgulyOdNMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A2mRMiDimtAmmgfL75St8ZHEuCYp/YvGfDERWYUQ+6k=;
 b=ukA2A8W+5bdqESnfNkI620P8rNR+tU3cjqnhsxpTlkN+7+gKcz5VSX5zqVsWnKPgn1EcKF2YJ+sgjSVd8l4w5obttqUOWKeygRjXU1PKLvgLVl6buUBkeetqkQEXg+r8Q7nGCaZe5jRKoYz9JGISmSyXGwUE99s6KAbQO/zrRgcXp47yOkFJzl/X80fLQ4fs0GrOzqFHK0FID3YsbYfxfwEjzCnVsPr2lbwcdLZZcbKxdhWdgTIWpKVgCdEVuiT9bIlQ5T3ltUeBJqXUKh5+gQYWY8oRFa9XbFlM3zTJC6r2yQQFppbxUxqrUV4PSGXMwlga4w8560dfLdwFEi7vhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6253.namprd11.prod.outlook.com (2603:10b6:208:3c6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Wed, 10 Dec
 2025 14:44:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 14:44:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 47/50] drm/i915/dsi: Use intel_dsc_get_slice_config()
Thread-Topic: [PATCH 47/50] drm/i915/dsi: Use intel_dsc_get_slice_config()
Thread-Index: AQHcX+7CZoipWlKfPEultkCjr49Oa7UbByAA
Date: Wed, 10 Dec 2025 14:44:33 +0000
Message-ID: <eea96db1074a051f03459362d3fd23485c9377f1.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-48-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-48-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6253:EE_
x-ms-office365-filtering-correlation-id: 4d693452-b59b-44f2-aa9b-08de37faa230
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V0hURE1RTDdQMVI3K1Z3SjNjbFVVMUNyaWdUN3Q3Y3JLVTBOZTRNc2M4d29q?=
 =?utf-8?B?VVcyam9YRUVsdDJZZGYrcGRVN2dWUTFGZW1SVlZVYzhYS04vVXFTQmxITWx6?=
 =?utf-8?B?Qmpyb0dvTDVlQ0owMlpHY0NGdy8wZjFnNWRORVRWaXA5MlhQejRzVEdoNFFz?=
 =?utf-8?B?TDZ2dm8vZFJUMmc3WDZHM1Z3SlgyQXAwekdueHZjWnRrYjdIYWNiclN6Mzda?=
 =?utf-8?B?QWlHU3R5RWVBVWorRFg5ZlRCQXBLL0c1K1RKWXJLb1RCZnNVblFkV3duRy9v?=
 =?utf-8?B?Rm1hcHdkbldGK21QZjFaMmFSNDZ1eXNncWFuT2U4R2oyVFowcUdQOWxrb3BL?=
 =?utf-8?B?Y04xM2JTbHh2c1M1VWVZMGhZd1VmZTJRQlhmaE1RbUlvRHViVWZoZHJOdE9q?=
 =?utf-8?B?M3hmQXlyejFQRDh4dnB6WWFDcVpzcWptcGNjZzVPV0pKN2JvWnRnVm52WlRK?=
 =?utf-8?B?VzNkNU9IRHA4QTdvOXZVWkpiVVd5M04xRmZsNWNuemdVYXpPL2dsS3VtNzRq?=
 =?utf-8?B?dnExNDZkMjZLTVVpSGNHMkNNc1FOUTl2ak1lL3FTS3FoSzh5MGxCejNhSEZS?=
 =?utf-8?B?Q0R3VkZwNm5zMUZyempmbDRJQmJuWVpxcm5UdWRobGQ2eWV3Q0xuRlVOR2Vp?=
 =?utf-8?B?aE41bVluRU5LWis3VzF4L1RPY3VoZnBiR29IQzYyWHZObnNKblVPQWRmNFhR?=
 =?utf-8?B?WUJoajMwQXJ5SnVsRmZ4UUdudGg3Zmp2NUdHa3RRYnMyM2ZqL1BnRlBiTHc4?=
 =?utf-8?B?bjhrTGNRM3JtYTkyQVRzTUpQOUFGYnNxRmY4ckFXdm0rbG05dmk2aFQvYUov?=
 =?utf-8?B?Vm9IcWNSQ1pneGJ1ejdHN3B2VzlvbWd1VjV4R1ErSG1nL2daR2RNb0E1MFZU?=
 =?utf-8?B?ZXRuVklxd2IraFY5RXpVeGZURzJjNWRMSWRmcUgwbkppUnhiSHVGREV5c3Z3?=
 =?utf-8?B?ci9VUDF2TktLVUVLVUFjK3BSOUM1TFdyMS9XS1JFRjNZMjhUQ0ZweXBpNTB0?=
 =?utf-8?B?TEc4dkYvR1Y5MzlBYzNObmc0aWlIaFRORFlNdDZUKzVEc3NxOHI2SVhNZUdE?=
 =?utf-8?B?RnNtVTFRRHNHWFdTSzlBdUpUMGhaRmZqb2kwdjhValRFaThQUFJvamlFUkl2?=
 =?utf-8?B?NnNpMFNISGIyN3pBMUtiUWswNGdlaHEyTXZzUVBSby9IY05SWnN6VTVua0w5?=
 =?utf-8?B?bmtDUW9CM2N5b1lDMHQ3cHZpQlFQbDFZRjBZbDJxK1QxeDJ3VlRubmcvdG43?=
 =?utf-8?B?bG1QcXdEU1RjQ1RSalZGU0piRDV5c0s3QTZnKzV3WGQva3FGNmwrdGF5OE8v?=
 =?utf-8?B?eHRxTTZTcVdKc1daZXoxMEcrSEhkVk5XWm0zSXppYzE5RkI4UTdyZnJZUW5T?=
 =?utf-8?B?elBBNU5CZ0lRV1ZBZDJqZXQ4d3N4QXBtM3NtaXlZVy9kY0MrNFdLK2tubVZw?=
 =?utf-8?B?dzR3bE9SWFpzdFJRRzVsQU1ReHdnZlFVM1Y1WGlyZzJ5VkxFZVlod0lOQWUw?=
 =?utf-8?B?aEw1L1c4S3VZWWM4b3pJVENQeVY3ZGF2VnBTQ2tueWNCZk10NjA4K20rbnh0?=
 =?utf-8?B?K1kzdUhRM0sxRFZiRTJuRFZGN0xqSnpsZjFiRE93VDVNRUF5WSswbGd4R1da?=
 =?utf-8?B?bjdtVE1hRHljVTNlWmMxYTI0b2lWaW8xRDJ5QkxrT2daL0crQjI0c05JcVBi?=
 =?utf-8?B?Z1lDZlJCa2J6RllzdEhnQmZyM0RGUnQ3RlJSaVVvMFlka21PdFFMa0lMUFFS?=
 =?utf-8?B?RUJ5bkgzbzhJWlVkK3JyVXFJcmJONnRBVURXTjlDWERkWng5ZGhCVXNmYlB4?=
 =?utf-8?B?V0Jlb29wUzU0SHNCdkZDZGxaNmdRTytYWUU3MHJkK3A4TUczU3Exbk1BOWlP?=
 =?utf-8?B?WlhEcExhOStkNXR5Y3JOS2lIMHNiYk52VUhaems0VFBXZzhvUG9mbUlaZGtm?=
 =?utf-8?B?blV6Q1dMVWRVakJYK3A2MWR5YlA0U2RKZXA3cUxGa2I5QSs0YVdoV3BwdHM4?=
 =?utf-8?B?V2NwN2l4L0l0b2lHRUtrV0VnUXJ3UFFnOHBrVmEwZnFHUkpmcExVYVdZWDlM?=
 =?utf-8?Q?vWp4Ey?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzU0bU1sb0xaaktYWFlQN3BsR1g1Y3l3Qk1IMnpURElOTnl5MmZuQ25Yclpu?=
 =?utf-8?B?Q0VaSEE3d2RMdHo3cVBqNDhzNXk3NERMd1NJTWI1MmlKbVlKTlFtRnpNeTAz?=
 =?utf-8?B?NSt4NS9IYkVDWDV2WDh2bzZTZE5XNUtUNzJBUW9TWXpWSVJ3TFJwVjQ1ajE5?=
 =?utf-8?B?K09ORU5XSm54eDFSMUdDZUZydTV3OE5IYjZSdDh5aTVPbTFhR0FzRVJkTmVI?=
 =?utf-8?B?REhVZDlnOHUwRGxjSnQ2VmUwMTRvUTNHUXg1VlVhOG43aU5UTStnNzFSMm4r?=
 =?utf-8?B?REk2em16bDl1bUdGM0JWSURGVG1nVUNmaWRiYkxXcWZiVVZWQysvMjljTWNa?=
 =?utf-8?B?eW9XYWQ5Y1g4VFdzYlBWNkNlNDljeHRWMGxQUVNtRzd6ZmtTZ3VCcWpZTG8x?=
 =?utf-8?B?WHVDa0Ntai9uWjhIUkpvRWN1SHNzVXBROEZNTVJCdFVaeUtpSkhqWWRCUzlu?=
 =?utf-8?B?ZWtSN3l3cEF0VXNnN1p4ZVJWODFjQTRrcmZjYzAvbVFyVXdqY2QwbTBhcU5D?=
 =?utf-8?B?MHlrZEJVbVBpbUo1amZBTVpON1NJWVNybWhaRXJCdDF5REUwRUtQanI5aXRU?=
 =?utf-8?B?OXY0WFB5cnVaVWpLRXBBMElOUkxJTjBJb2R1LzRlam9sTlQrNmpHR0Yxak5D?=
 =?utf-8?B?bFBIVE1aQ1kxU0h4L3NPYlc2WWw3bGVlVTZ4Rnp6dUdHSXpJQjA4NjNzTWlv?=
 =?utf-8?B?THpLby8zVGpSZXBjK3Q3eEV6eEs2NzlXbmtzSkpPeWNHYmd0Rnh4VVJmY0Rr?=
 =?utf-8?B?TUphTzdkVFhVQSs5Mmd3aUZYUGgxQ1MxeDljS3pqVnIwdU94UFhOR3J2emdL?=
 =?utf-8?B?Yk05aGpWdGJMbk0xK1NKQlBCeHBrUS9oTmxnYVNPZ24zbG1BUklUL3NYVmNU?=
 =?utf-8?B?dzhhQjBxMTl0YjRtMXJCOGVEbE5tQzhjODhpZFFBVHlvSDNjbk1wMzJtcWJE?=
 =?utf-8?B?dTY3Y3lUek9LcUVQZElTVXBMY1VETURyUEswY2RSbDdtRWUxUUdBNzBUSzRT?=
 =?utf-8?B?dHZZa0J3dE1ybGZvM1BjbkVwak9xRWtBWW5tVU4yT2ZEcTRsQWV2dzNxKzFL?=
 =?utf-8?B?Rkg0VGtiWlZ2bVp4ZnBiUEQ4UUtkNkNCZGkwTlY5Q0FvVlhZZmI0NG1Vb0x5?=
 =?utf-8?B?b1JydWVYcHoxRi9FTVF1QVV6VnEwVTYvOXdUck9wYjhOWnBQOUNIRDlrT1dY?=
 =?utf-8?B?d3ZRWmpZZno0SENMb1VkMlIvLzhvQVVjUmltbTJjY1p5VzU2Qk5pMGNuL1pn?=
 =?utf-8?B?TnY4MjViZjY4bS94MFBzZTk2dUkwaEgxQVJCNDVtRERuQnh1aXBqOHBDczg5?=
 =?utf-8?B?MkltN1BkbUxrQ2JqQkVLck9HK2VNQWRyVE9VQ0FzV2ljVk5sd3Vnc05VdEsx?=
 =?utf-8?B?SVI2a1VIYjBtVHpkL3lkR1VxZ0RwQnZqOW83YUtOOFBJSnp5aDVabGNwN3Fj?=
 =?utf-8?B?aDIwdXVTekhXVDQ3U2ZNb2NtYkQvazM2cTlUcExEeFYyOUlxbHIxdWNsdHE1?=
 =?utf-8?B?cWduL28vWWFtRklXbkxYY2IrNUMwdVZqdjYxS0xjYSsrOERvOVZDNTFwazJH?=
 =?utf-8?B?U2RuNkNnTDNJTE9zaVplUGwrbDRlSm9VMHFmYUVBTllNcnJEWWh0VmFsK0RC?=
 =?utf-8?B?WlZSQ0haTzFZQ2tyREpZRDF6YVBKeXFYSEppR2hoMWRNaHRwWGZad3dPRHp6?=
 =?utf-8?B?aURZL1JlSlhqbzFOck1rZEtYYVljak90MXlBS0g5bGlRSE1zd2J5VHpHdjRt?=
 =?utf-8?B?MjhVaWtYK3dQUExlVU4wVXdGdit2aEhWRW52SXlmRXhBd2ZwTEFLUUUrVnZH?=
 =?utf-8?B?c3RQZEIwbmc0eFcrcEZZSXFHNm8zREFlNy9QYzVweG9EWjhkOHQ5c05MeUlj?=
 =?utf-8?B?d1U4eHBuV0JHRVIzbHJCeXV3QVg4RE9aSDdMdnZsdk9YMWRuQkpVRGptZHRu?=
 =?utf-8?B?ZEcyMW1QZ1F1Q0YrR2o4cStvR2JTRGpMSWhNR01TcCtqNnozY1VPeEJvb3VI?=
 =?utf-8?B?azArNnhDSGdINlVnczJmekJNcjJXWG9xMTByQjFiSy9tZTF0clMrQjlaWE5B?=
 =?utf-8?B?cGZyaUhVU0U2UUQzVndqRk16TmN6RlhGa2dUTHJGbklvMndRb0xnQWxWMml0?=
 =?utf-8?B?OXg4bFB5aHd6VjI1UER3VVlBSGh5a2I2enlVSysxTHp0Wk9Ib2lWeFFqdW5z?=
 =?utf-8?B?UWJTQ25hbVJrSkhNN2MvdVV0RGVGNk5keTRpMUp4RGMxSnNrS2ZQK3VnT1Jn?=
 =?utf-8?B?UlBoSG5zMEFtczZoRU1uS3Y1bE53PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <50665836D984774C87B1B7A4F4426F46@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d693452-b59b-44f2-aa9b-08de37faa230
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 14:44:33.5080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3XEJu/QUkC/C66qItv9i4ojqFfoLduDYglN4rhWdlso/GUtl5t4DBXt7iTZh07cW3dSWA2YOXN1qtiW/lz0JMYpgH/7Bn45/4c3dA+pfwDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6253
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFVz
ZSBpbnRlbF9kc2NfZ2V0X3NsaWNlX2NvbmZpZygpIGZvciBEU0kgdG8gY29tcHV0ZSB0aGUgc2xp
Y2UNCj4gY29uZmlndXJhdGlvbiBiYXNlZCBvbiB0aGUgc2xpY2VzLXBlci1saW5lIHNpbmsgY2Fw
YWJpbGl0eSwgaW5zdGVhZA0KPiBvZg0KPiBvcGVuLWNvZGluZyB0aGUgc2FtZS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMjUgKysrKysr
KysrKysrLS0tLS0tLS0tDQo+IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggNjk4ZTU2OWE0OGU2MS4uYTdmMDJmYTUxOGQyMSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTM0
ODYsMTIgKzM0ODYsMTMgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX2RzaV9wcmVzZW50KHN0cnVjdA0K
PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAlyZXR1cm4gZmFsc2U7DQo+IMKgfQ0KPiDC
oA0KPiAtc3RhdGljIHZvaWQgZmlsbF9kc2Moc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsDQo+ICtzdGF0aWMgYm9vbCBmaWxsX2RzYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gwqAJCcKgwqDCoMKgIHN0cnVjdCBkc2NfY29tcHJlc3Npb25fcGFyYW1l
dGVyc19lbnRyeSAqZHNjLA0KPiDCoAkJwqDCoMKgwqAgaW50IGRzY19tYXhfYnBjKQ0KPiDCoHsN
Cj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiB0b19pbnRlbF9kaXNwbGF5
KGNydGNfc3RhdGUpOw0KPiDCoAlzdHJ1Y3QgZHJtX2RzY19jb25maWcgKnZkc2NfY2ZnID0gJmNy
dGNfc3RhdGUtPmRzYy5jb25maWc7DQo+ICsJaW50IHNsaWNlc19wZXJfbGluZTsNCj4gwqAJaW50
IGJwYyA9IDg7DQo+IMKgDQo+IMKgCXZkc2NfY2ZnLT5kc2NfdmVyc2lvbl9tYWpvciA9IGRzYy0+
dmVyc2lvbl9tYWpvcjsNCj4gQEAgLTM1MjAsMjQgKzM1MjEsMjQgQEAgc3RhdGljIHZvaWQgZmls
bF9kc2Moc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+IMKgCSAqDQo+
IMKgCSAqIEZJWE1FOiBzcGxpdCBvbmx5IHdoZW4gbmVjZXNzYXJ5DQo+IMKgCSAqLw0KPiAtCWNy
dGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcucGlwZXNfcGVyX2xpbmUgPSAxOw0KPiAtDQo+IMKg
CWlmIChkc2MtPnNsaWNlc19wZXJfbGluZSAmIEJJVCgyKSkgew0KPiAtCQljcnRjX3N0YXRlLT5k
c2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAyOw0KPiAtCQljcnRjX3N0YXRlLT5k
c2Muc2xpY2VfY29uZmlnLnNsaWNlc19wZXJfc3RyZWFtID0gMjsNCj4gKwkJc2xpY2VzX3Blcl9s
aW5lID0gNDsNCj4gwqAJfSBlbHNlIGlmIChkc2MtPnNsaWNlc19wZXJfbGluZSAmIEJJVCgxKSkg
ew0KPiAtCQljcnRjX3N0YXRlLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAy
Ow0KPiAtCQljcnRjX3N0YXRlLT5kc2Muc2xpY2VfY29uZmlnLnNsaWNlc19wZXJfc3RyZWFtID0g
MTsNCj4gKwkJc2xpY2VzX3Blcl9saW5lID0gMjsNCj4gwqAJfSBlbHNlIHsNCj4gwqAJCS8qIEZJ
WE1FICovDQo+IMKgCQlpZiAoIShkc2MtPnNsaWNlc19wZXJfbGluZSAmIEJJVCgwKSkpDQo+IMKg
CQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCQnCoMKgwqAgIlZCVDogVW5zdXBw
b3J0ZWQgRFNDIHNsaWNlDQo+IGNvdW50IGZvciBEU0lcbiIpOw0KPiDCoA0KPiAtCQljcnRjX3N0
YXRlLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAxOw0KPiAtCQljcnRjX3N0
YXRlLT5kc2Muc2xpY2VfY29uZmlnLnNsaWNlc19wZXJfc3RyZWFtID0gMTsNCj4gKwkJc2xpY2Vz
X3Blcl9saW5lID0gMTsNCj4gwqAJfQ0KPiDCoA0KPiArCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5
LT5kcm0sDQo+ICsJCQkhaW50ZWxfZHNjX2dldF9zbGljZV9jb25maWcoZGlzcGxheSwgMSwNCj4g
c2xpY2VzX3Blcl9saW5lLA0KPiArCQkJCQkJwqDCoMKgICZjcnRjX3N0YXRlLQ0KPiA+ZHNjLnNs
aWNlX2NvbmZpZykpKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gwqAJaWYgKGNydGNfc3Rh
dGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y19oZGlzcGxheSAlDQo+IMKgCcKgwqDCoCBpbnRlbF9k
c2NfbGluZV9zbGljZV9jb3VudCgmY3J0Y19zdGF0ZS0NCj4gPmRzYy5zbGljZV9jb25maWcpICE9
IDApDQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IEBAIC0zNTU4LDYgKzM1NTks
OCBAQCBzdGF0aWMgdm9pZCBmaWxsX2RzYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0
Y19zdGF0ZSwNCj4gwqAJdmRzY19jZmctPmJsb2NrX3ByZWRfZW5hYmxlID0gZHNjLT5ibG9ja19w
cmVkaWN0aW9uX2VuYWJsZTsNCj4gwqANCj4gwqAJdmRzY19jZmctPnNsaWNlX2hlaWdodCA9IGRz
Yy0+c2xpY2VfaGVpZ2h0Ow0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+IMKgfQ0KPiDCoA0KPiDC
oC8qIEZJWE1FOiBpbml0aWFsbHkgRFNJIHNwZWNpZmljICovDQo+IEBAIC0zNTc4LDkgKzM1ODEs
NyBAQCBib29sIGludGVsX2Jpb3NfZ2V0X2RzY19wYXJhbXMoc3RydWN0DQo+IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+IMKgCQkJaWYgKCFkZXZkYXRhLT5kc2MpDQo+IMKgCQkJCXJldHVybiBm
YWxzZTsNCj4gwqANCj4gLQkJCWZpbGxfZHNjKGNydGNfc3RhdGUsIGRldmRhdGEtPmRzYywNCj4g
ZHNjX21heF9icGMpOw0KPiAtDQo+IC0JCQlyZXR1cm4gdHJ1ZTsNCj4gKwkJCXJldHVybiBmaWxs
X2RzYyhjcnRjX3N0YXRlLCBkZXZkYXRhLT5kc2MsDQo+IGRzY19tYXhfYnBjKTsNCj4gwqAJCX0N
Cj4gwqAJfQ0KPiDCoA0KDQo=
