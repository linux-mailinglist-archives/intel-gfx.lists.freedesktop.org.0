Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 462B8A4E27A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE15310E61E;
	Tue,  4 Mar 2025 15:11:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EIvygpbr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C90F10E615
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741101060; x=1772637060;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=r1BOqSOzKdKCFOMNHzSkqVKN9djyON0eUYjc5QqrTRQ=;
 b=EIvygpbr7GDIa6CaHxYyW1bi7vXjTumXgonJFWrfXMJ3BHntI5O2oUpt
 FipXTvms9sMDod4AFcK3XlY651gK/OR9bqAKeSvyCI/JMrikPzKnRCeyg
 EtOTp05fD/KZxwXgeqeB8TJTPITqbYizLS2iaLtBTE+V2eoeylV+oh7nm
 ew8syDzApDzx0OJ2fKgWsK0OzlxN6gS3uCaq2IdGNVWJW1h8/NIctRdY2
 28gc6Cz8IJatUaXrHD6j0ofwzMrjx9UXBhnSmBu5tha0285FegzgslhYB
 9IZIdVHj9V4hn8PgyZevMX28EdA+bEHEL8ioNtacD2FoMDlSW1jc1hmD6 A==;
X-CSE-ConnectionGUID: zlBC+a20QyS54M03od8oVA==
X-CSE-MsgGUID: 6UILCqmeTz+Uys+S7QNN8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41736018"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="41736018"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:11:00 -0800
X-CSE-ConnectionGUID: loE+dNflQn+NzLFn1CgrVw==
X-CSE-MsgGUID: 3v901scBRpOFjCsrbGc7Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122531617"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:10:59 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 07:10:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 07:10:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 07:10:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tb///dMj4Wau3HPCDJ2Zaf32qBUJljlkV1hwOuBkUQGny48WEJQ5wcZ1C6dkNbe8wCzCysvbxr5MC4eR4Ws+uUW02JVav6i+Lz9U7NDiwJiJQJ0+qjjtd0csUXtgpyAKCxEyn86xW9n+cbJTViFQA1q0/FNKdRXRJ3JMMqDSf6R7FdVibpe4lbGhDMPQJpJW99Gn9vpHh6LBMQCtEEMi+f/lB/3NWpcNay+V+fK9WKHEJQJN3cQEQ24CMCp4/1NFsU13wQu/Xi6sHzIypPX61D/IeoWS5duHZw+i2NkcWl8kV7iBIcodwp4RWcb5nt9UWIpHE9K6Sxlr9qn19WOG8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1BOqSOzKdKCFOMNHzSkqVKN9djyON0eUYjc5QqrTRQ=;
 b=YTCiS9dhfZbdzxqiX+wmMnuMltqTw6fQRZaeYQ5fOgpEL4Ob/g7bfc3TU8MKEkOxQ6yFNYkmt1xlyoppgdk6Jx5rWr0UVSlORwW9mVrJlE4Pwg/Pgl10IVQCw7kjV5WsyCA4M7xc3jHMd4MNOH162/edm1KH+ENNL7f+nvCqzi8jvPoZXrUQvynyGCCA1B32OgAzE36Ak1oGEpAy8Psd8KXTnSB5f5/2H5e02u3uCFoBa8uN1cJ54Hr2a/M4On0D7nPg2qTlPYbaZ0UwNKCzfgMLyRK1dB3kwY7j4whOay/QufR49Thq1CPtyNlOIAueH0ldp2Zk/T0aHSLFvLf2gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB7180.namprd11.prod.outlook.com (2603:10b6:610:148::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 15:10:56 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 15:10:56 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 17/19] drm/i915: Do wm readout ealier for skl+
Thread-Topic: [PATCH 17/19] drm/i915: Do wm readout ealier for skl+
Thread-Index: AQHbgkwmFOat7zbJsUemmqb91DeXi7NjKqcA
Date: Tue, 4 Mar 2025 15:10:56 +0000
Message-ID: <9a32e10fc261123f693f9e393e22937fe8682f6c.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-18-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-18-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB7180:EE_
x-ms-office365-filtering-correlation-id: 6724c17e-c5be-4ba0-5ec2-08dd5b2ec3c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RkFkZFJSUzUvaHM1dkhxaFVONlV2eVVyd284cGxqSE1MbzVqUDZzb05ReGdR?=
 =?utf-8?B?YUFzMkdzMHdWVW4xRUQ0V28rUHBSdlhzYWJlRU5DZlJkRDFoOHZJRit6a3dj?=
 =?utf-8?B?NEkyN3lQdW5sOUN0bmU4SmE2Yk8ySTA4K3Q0T0RWZjFXZHVFTmFlZktHbHRl?=
 =?utf-8?B?TGdDWWFKN1FUVnhGKzBuNHltQ3B1Z1lUcW5tVFk2Q2IybDgyVTFJM0x3d3BO?=
 =?utf-8?B?ZEhDaWJRRnhmcHIrbXVKNExWc0w5Z0NBaUNEZ3gvRDJkMCszNDduQ2dMVXNK?=
 =?utf-8?B?UHdxVzVWM0JaSXlDQ3k5WmZjUnVrTTJjRUdkdTdSd0x1dk5pUXNYNWVFNjRz?=
 =?utf-8?B?dEJyZEdWei83SkRXUU5YNmZGVC8vLzN2QXZXaVZUV0dYakUwdy9ZM1dpS1lw?=
 =?utf-8?B?TDRVdGpvRlh6SG1TYkwxOE1DWmNFN0N0WDh5RFBMUW8zT3hVaGFSa3hEdDNv?=
 =?utf-8?B?OS9uTnloc1ZLY2Ewampza1ZVdEcxbVhGWURMQlhHRm5XRFExNUxqdUw3R2VH?=
 =?utf-8?B?b3FzNzFhcHhXYlFUZ3M4SjEzV3pEcUJKWWVYM0g0VUhhRHNGZmQwMHdpcGQ4?=
 =?utf-8?B?N2Zyd1NiZUIrc0hEV1FJOUxzbUhuVFpldWp4YWYrNHBILyszMHczZzZ4OXI4?=
 =?utf-8?B?dmJlZEVuaWlVM0RHS3dyK1F4eGZpUkVrZ3dsRHBVcENMdW1GVTVST2Z3OVIr?=
 =?utf-8?B?eUtRVHp0UmZRbkVwOHhHQXBpQi9peWdyTS9EZUZFVTM2RTFJZVlGZmtRQjVJ?=
 =?utf-8?B?WUhZWXBMK2dEK0p5K3lRMGpnbnhiTmhqbHczQ0UzbXRuaVJvaFN6dW0zb3Fl?=
 =?utf-8?B?VDRWTmpBNXNsYTJXa01JU0U2cURjZlNFWnViUlBGVFFRQ1RoSE9HTXVlaGNN?=
 =?utf-8?B?WWpSVlN1Mkk3cDg0VGNCM1BTMmQ5UUdhNzEzS0hwQW83c1JIcHo3Rk9KcUJC?=
 =?utf-8?B?S2pzYlU1TEs3cHVXbDY5Tys0LzhmSnJPd05ncUVoMlVWSDFEQ2RkSVgvVDlI?=
 =?utf-8?B?dkNmOVBvaEpEUStQWFBJaUI5UzllMUtZOGljK2QwcExXSTVicXpoQTNHbjJF?=
 =?utf-8?B?dElKaTVoLzJTckxldEZWOHpmL0IvZlVMV2FiQ0Q5b1N0NHZjYVJiaXQ0eC9l?=
 =?utf-8?B?TExMWWFFSmc2YndXZ3dzVVB5NWwzOFB2Q2hrY2VtUHdLU1YwMzhJd0lxYXZ6?=
 =?utf-8?B?eXdzc0lmbUhRdU5xemZkWnFYcXNXdHRtSjVuS3dLVmZjWE5UTmtYb1BBbi83?=
 =?utf-8?B?MlZUcVU4bmF1Y0dkR0Nsdjd3TnpBNkJVbnBwVGRjQjhNam5wOFhZZ1FyTHFT?=
 =?utf-8?B?LzFjUjAwZFhqcDFTdkFBRGdKTE5QZk9jVWZHVFAyNHNjUGdGMUZRNkJtalhR?=
 =?utf-8?B?a3B1SDZBZVZKQk1GckFZTkRva3dkUW94ZXBRRWx4ZVNCUDQ4c013VkpNb3M0?=
 =?utf-8?B?MXdDaEFsZU9OVy9ycUIyNzZYUUVjOTc5T2tITDVNNkxVWFB1K3Z4UmJaMTdi?=
 =?utf-8?B?WkU3S3puelN0dzdpWERwQy8yKzZJTlE0WlNlYkp4Y0RuaFVSbjhEYUtrTHBn?=
 =?utf-8?B?NTlJU2kwV2t1eDFsQ2JueHluNkhwNDBYajl4VFVZWk9YR1duWVdraG5vaWlD?=
 =?utf-8?B?aWRxS3l4djR2TEhKY1NLWEVxRTg3ZDNjRlcrWmlKQk1xaFNwQkhlZVNRV1Rh?=
 =?utf-8?B?RGp0MGo3V3FvTk5xd3BDTWJmVEZyaWdhZDJJQUxuQmc3cTJvOUtUZExqSTJS?=
 =?utf-8?B?MjN1NVAwRVZCWitCT0s5bFAvcERLM0M1ekZMYXlweDdPNWJ2cGRWdmduS3k2?=
 =?utf-8?B?NDZEeEk4VDIrc2hzdGMzR3JxV2I2R3AvZzBsYms4dCtxM1dZNkdLQzgwMW4z?=
 =?utf-8?B?bHVHZ3UvODcwMW1iQW96L3ZZQzBwMkk0UG9UYVlQTzFlQWdtRGQvQXpDLzdC?=
 =?utf-8?Q?KFUb0F7+En90KXNCoInJWbif8JA7Reo9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWZpby9obEJrc1VldHpWSVczYTJqKzZkSHFDakVoUHlleDlCOVNad3l1Zkcv?=
 =?utf-8?B?VDEyRzdST2NmcEMxMTJUbm4zbVJuZ05ndWdZaXZQL2xOWWdYUkJnNy9ScW5v?=
 =?utf-8?B?ZnZUZ3FFakI0eFY1dnNKcG5Fa05vSFlFcnRsMXJycnRTV3pnVXZ5ZUZvMU9x?=
 =?utf-8?B?WFpOdTBrWVVSNFYzZk5lUlJHcHNuelMrMjk2aVRWVmNCN1RCNWhyZ2xnN00r?=
 =?utf-8?B?MkFMN0RlTklSd0djeGpTQ05iVzVoZy9ucTh3MmlZUjZFRDUxbzMyZkhjNFZF?=
 =?utf-8?B?VjlkWEQ1c01GdTNXRHdTTFBsaU5iUnBPYmV4di9HbHhNUm1GM1lNT0xKQWV4?=
 =?utf-8?B?ZEw2bFIwUk8rYzRtWVh6K3ZCdEh2UmN2all4U0lKcEJWbU95VjIvZ214bGU5?=
 =?utf-8?B?Mm9QbjM2NEdOU1ErNjRqSlZMZkRIc290S1ViTDNlVmppMDdmdTJBWU9xNS9R?=
 =?utf-8?B?RTRWbnkxc2p3M0h1TU5Fc3duQy9qTHFGVlV3VytCak5oK2xka1M4Ti9VNnQ0?=
 =?utf-8?B?ekVkZTl4Q3h3blhVOXFjaXJYeGhMTjRueWNYNExteTNFK2U1Y1dtaDgvRjNZ?=
 =?utf-8?B?NUVOUW9rRHBHV0d5bEZGVVVaU1VRaW40ZG52M3J4dmxRS0NDUWE4RldYZEp2?=
 =?utf-8?B?dWZWZWpkSEs3WHRPWUZSM3pjeStaS0hLT3R6QTBVeVRsTjJDWURZVnRaQTA2?=
 =?utf-8?B?VmIzdVM0eERFdXFBVHIxVE5rV0JoZkVOS1VucXJaVW1FT05RM1hZOE9oQlNq?=
 =?utf-8?B?bGZiaFpIcUhNRTdiQk9OY3RteldPa09xdGdoc3ZOREoxUWQ0VW9VM2Eva2pG?=
 =?utf-8?B?RUZEL0FWbmlYUlZ2UXNHTTV1WE1TczhvU0dDSFVHMGFGc1VyL3AwM3h0dVp6?=
 =?utf-8?B?eUtGNkQ2OWJnY09HRStoOVhTbGZCdDlQVEVTd0hrTnVtaTBDNm5UNG5wSEI5?=
 =?utf-8?B?ZEFQalVGSmhUcHYrOWdFaUM2MkduY1VRNDdMQkR1UWpPS1cxTllFSXgrN2RL?=
 =?utf-8?B?T2xsN2M2QTBsb0ZocWoyOXRPcFVXTTltdHdxamJtVlRTVHdFb2xjeW5WU2hZ?=
 =?utf-8?B?NTJvRWQ0dnBOenpOeitCeHcybGdTVUpEY0JMbWdzcGVQS1RjTEtCck41bXNZ?=
 =?utf-8?B?SjJjVTlqNWs2YWcxRVZ1dnhKTGVrSUhiVFhoZGhLSm5jak4wWlJIaDdwZThB?=
 =?utf-8?B?b2huODBHak14WkV3UXJMYmxldmFuWS95bU5lRlBwWi9pUVdmWjNWR0lxTXZP?=
 =?utf-8?B?TE9VMm5zOUNld0pESi95d093dnA5VXFzaDZsa2ZUcmVPSVg1ZjY2SjdGZnds?=
 =?utf-8?B?ck9OQmVxYXZWOUJOWGhObTdET3pUOHkwZFZCUWROa2dWc3FrTFZRYXVzSVJJ?=
 =?utf-8?B?ZlZkUHA0WEVQR3NPNkV4UnJ2dm5rZ3BxbTY3eHpGMXZCdmF2Uy8zdGlHbWRF?=
 =?utf-8?B?TGEzUWMzYkpXYXZGTitUSEtXZGNQLysrRzZVMEZ4WExadDBHcURxbnNzME1N?=
 =?utf-8?B?MkZHTU1FWmhMR0ZuM3hoalFyYmJjWmpDOXlZZnRYOXpwTk05bFdYYXBkZm1G?=
 =?utf-8?B?cWtCb2ZYbFYrZ3k5RU81NzdpekpMdUNJRC81TG5LOEdDeXE1bFNFODl0aHp4?=
 =?utf-8?B?c1M4OXoyK0k1akVyMVVRWjBJUVJ3VUZJcE5FNmhvdXBObnV5dVhZRkxMbTFZ?=
 =?utf-8?B?bUZXbEYrMG1sUkdONzloT3pTc28rZHBHZFRNdEFwZXJDR2kxTlZCSVpSR1RO?=
 =?utf-8?B?QUNMY3N1Y3A2WStmZnpKL1o4elM0MW12R2k1NHhmdzFDL0FUanlMTWxNdlUy?=
 =?utf-8?B?bnhtWG56R1U4Yjhyb0lWa0M4NXYxbVRjb1JRaEw5c2NiYXg0R08zQUxLNXNk?=
 =?utf-8?B?dHc1UktmZ0NkSGtmOWtodEtUb2JFaXBUZDdoeStQZ0JkQjhKSlovSnpCSHJS?=
 =?utf-8?B?WG5XaUpUakphcVRaZ1RlMmVzekxxelRCRnFxU1hnWUl6cktNandoOTdRckdE?=
 =?utf-8?B?MUJmS3BDOEdEclNOQmJXV05qdFcxNWtMOG5wTkVVNWlpeVR1SyswTmN4RXVr?=
 =?utf-8?B?SGEzZGdReFcrY1pIRzhwSGxoSTRydCtMRFlBWm5nWHZaeTBENzdXZmZRWndw?=
 =?utf-8?B?bGV4Z3NFUGZhZ21JWkRlUW5mNGJ1WDVTZXZObFVWNy8zZU1yeEdPNlFITjQ1?=
 =?utf-8?Q?864XSxTW6FuOD+OKs3ov3to=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F75934D2CC50D04D9C3A1B84432B59DA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6724c17e-c5be-4ba0-5ec2-08dd5b2ec3c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 15:10:56.7654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dr+iJgNW/wnB1CDPOGwkYG9t22D80E+9gLrzzUSSrjMTwC4dJ0nPaBCBkUhLkG217TAY5Iw6+9vhtickIOFrhDYefEfbF7iMtoQKd+8WHJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7180
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTW92ZSB0aGUgd20gcmVhZG91dCB0byBoYXBwZW4gZWFybGllci4gVGhpcyBpcyBuZWVk
ZWQgYmVjYXVzZQ0KPiB0aGUgYndfc3RhdGUgcmVhZG91dCB3aWxsIG5lZWQgZGRiIGluZm9ybWF0
aW9uIHBvcHVsYXRlZCBieQ0KPiB0aGUgd20gcmVhZG91dC4NCj4gDQo+IEZvciBub3cgbGltaXQg
dGhpcyB0byBza2wrIGFzIEkndmUgbm90IHJlYWxseSBhbmFseXplZCB0aGUNCj4gaW1wbGljYXRp
b25zIG9mIGRvaW5nIHRoaXMgb24gb3RoZXIgcGxhdGZvcm1zLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMg
fCA4ICsrKysrKystDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdv
dmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jDQo+IGluZGV4IDAzYzBmYWNmYWQ3YS4u
NmE0MTQyZDdkMDI1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBAQCAtODgwLDYgKzg4MCwxMCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpDQo+IMKgCQkJCQkJIGNydGNfc3RhdGUtPnBvcnRfY2xvY2spOw0KPiDCoAl9DQo+
IMKgDQo+ICsJLyogVE9ETyBtb3ZlIGhlcmUgKG9yIGV2ZW4gZWFybGllcj8pIG9uIGFsbCBwbGF0
Zm9ybXMgKi8NCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gOSkNCj4gKwkJaW50ZWxf
d21fZ2V0X2h3X3N0YXRlKGk5MTUpOw0KPiArDQo+IMKgCWludGVsX2J3X3VwZGF0ZV9od19zdGF0
ZShkaXNwbGF5KTsNCj4gwqAJaW50ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRlKGRpc3BsYXkpOw0K
PiDCoA0KPiBAQCAtOTkwLDcgKzk5NCw5IEBAIHZvaWQgaW50ZWxfbW9kZXNldF9zZXR1cF9od19z
dGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gwqANCj4gwqAJaW50ZWxfZHBs
bF9zYW5pdGl6ZV9zdGF0ZShkaXNwbGF5KTsNCj4gwqANCj4gLQlpbnRlbF93bV9nZXRfaHdfc3Rh
dGUoaTkxNSk7DQo+ICsJLyogVE9ETyBtb3ZlIGVhcmxpZXIgb24gYWxsIHBsYXRmb3JtcyAqLw0K
PiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDkpDQo+ICsJCWludGVsX3dtX2dldF9od19z
dGF0ZShpOTE1KTsNCj4gwqAJaW50ZWxfd21fc2FuaXRpemUoaTkxNSk7DQo+IMKgDQo+IMKgCWZv
cl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgY3J0Yykgew0KDQo=
