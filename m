Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8854E9A9C77
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2683610E619;
	Tue, 22 Oct 2024 08:26:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJFTNm2p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8E710E619;
 Tue, 22 Oct 2024 08:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585599; x=1761121599;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+C2zuspjb6nE5VBBZGbUKSAvaSBgoiPgbkRt3IEP810=;
 b=AJFTNm2p4pvBjmNGQN9fCEcZ4QDPU0G3TK9o+7swQ86fU/DBd/eDYB31
 lCIww+1wzaFmyJp8OxmD2ZGUV1WLXK+Oae554DCVloDOTW4D/3wD2RMuQ
 SUqM0SEIb4iWVTe4S0j6sK2n7d4DsZer05GydnyLMdwBqRyb/x0D73PhH
 HA2HsAczvkrUB7DgJD4dyH1+R4fqlxYQca7j+53xybK2T7k3Z7Uqxcdll
 2cR1tqJ692bOx75TxRz36ZJg+EC0JiQiDCHwG/HivPndczomVbxgdE70p
 81PnAQH83OQYMbiwsmFCGhvG6nDc97CtCtgkF4UG7IYvShrdSq0R1q8RM A==;
X-CSE-ConnectionGUID: CD+0s2wOT66rVv7zRiKdRw==
X-CSE-MsgGUID: q3QSL/JiSsym5f21Y/Lgrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29307957"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29307957"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:26:38 -0700
X-CSE-ConnectionGUID: 3itMmFLjT16vD1jzUlzVJw==
X-CSE-MsgGUID: L1yFP0zDQG+G3VKk0Qrt2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79429211"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 01:26:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 01:26:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 01:26:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 01:26:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZNL4aj4A2970Dfpr0Xx1Hdalc6YpybxLpJYIhLELQ1IvW+913BZvCT4S8tQFcj7uaI0HanWBcbnbLe+mDKR1UW70V4Det07KVcx6zXGp0RRva9yEL6fAoxu2q7U7Zrluvf1SLbYcY6LKzEmNVMOo+kTTutmG2LBB5vH19TfnJ5MlBUmAefZasRka0Kh1OPvGO6IoqGBohlTgbB1MYTbZ+R39oX8KaBZvmR2HV7Wfr6dfPkNZOzKsnUPv3xCFEc3tKyJb5QNCsG7Dn07Ql5ry/gm588azO8YxZzQe6CB2tEeOfHhE+z7lc1bTKhG/70eLwP2+dZpNIiTEBaB6rX54rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ma4dbdLjTdUCiyaCj2gRCnxEMHqR/8P9JsBOLKuCHnA=;
 b=qY6Nr/bx0LYqIi49sNR3USIGXRO6omTLfwR7EI7IW15+k08SKktuveUcSMOQKzlN+uH0ZtwV6/+UghGeIR4tuo44qEKHeI6Qy95uCoSr5T9MGYopmaDl7iztkRbwwUaDtzWEAsQptygs26krxuelNdCF+OlsrOIaSIei7LezZuGtKSsPG1X2KJEQEqqI5hqjf4e8CvQVE8rX8+V1vywuxecsW8LfkXZAoJ0vVbyXC8mWmF6/bm5G+FLJlnWOcWS/ib/3WB3fnwpNW6HHKcFhTGI+6XczyhGXOh80adyCXOKMC9ztdwfK7diPHJonUhfqKdtpK/9Yh/2MVZKnegS30Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH7PR11MB5944.namprd11.prod.outlook.com (2603:10b6:510:124::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.20; Tue, 22 Oct
 2024 08:26:33 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%7]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 08:26:31 +0000
Message-ID: <dfc68ac8-fdd1-4283-9ebe-526a439d8e67@intel.com>
Date: Tue, 22 Oct 2024 13:56:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
To: Jani Nikula <jani.nikula@linux.intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <BN9PR11MB5530247EFE733E0B4E16870AE54C2@BN9PR11MB5530.namprd11.prod.outlook.com>
 <87bjzcy43j.fsf@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <87bjzcy43j.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0178.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::7) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH7PR11MB5944:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cec08bb-badb-4b83-5dc0-08dcf2733b58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YWkyand5U0JQYjRJeW9qOU84OHhZcmVwOU1VRjF6akpIbHBPUG9ORHpxbm5u?=
 =?utf-8?B?RHdPeE85Wkx3Qm1jUFpJTnc1WHF2dkVJQjI3d0gzemV4WDd1cy9WMDViTkpn?=
 =?utf-8?B?TkNWVkdCZ3R1MXdmMXpxSWJGY3p0cTREVGlUMCtiVTMybTYwMkVxYmxxcFdz?=
 =?utf-8?B?a3diRTVLN2pLa09XQlRhdmVZUEpFcGl1SENzMkNjbk5obDdmQkhORzhKS2Z0?=
 =?utf-8?B?MWUvdmRSN1pvYVgvdkJXb1VyK2o5QmticzFKZGxWdFFrb1M1bU1OZ0xsU3lF?=
 =?utf-8?B?V29TZWU2dWt1MjB6T3lmMnJRNVY4b0tmSWVpaHN1ZndSSmdiM3BLUjViT1lP?=
 =?utf-8?B?RDN4V1ZCRWI0Tk1JZVVIRUx2eHd5cGFYSVBWQWZUNVdJeGE5VEpPMDNnamlz?=
 =?utf-8?B?Qk0yUU5FdjJtd2tLREhKM1EzRUZJMzVYVGovN0NIZWRLWFV0K0dqaUF2YjRQ?=
 =?utf-8?B?dHc5NTN0NmFEdlRiWFhzTHowbExITVJReFF3WWQ4UExBOFo1eVB6aml3Rnpk?=
 =?utf-8?B?OGUwS2NhdG1VZWMvejBIc1lJenUrMnVLL1ByS3pyNE5RS1Z0VjRrVGNyc3RU?=
 =?utf-8?B?TjlGRVV6amp6cUlDUzF5RE9sMnNDelo2ZUVrOUtJUTJjZE1MeHAvTlhyRXhZ?=
 =?utf-8?B?aWxQV29DZVFoclhtR282MjBtRnp6TXk5Y2RmRWV4YUI3Y01xbW9ISUxCTW5O?=
 =?utf-8?B?QUp6UFNYTW5xTGp3OVNqWk9CQkU2cy9tV0E2TDh1Ry9DVmJoYjZKNCtxVTl2?=
 =?utf-8?B?N0FhRHplS2VPUUM4U1Nja2JaNjJzVWZtMDVUcVR1SHBEeWNueTlabGp4ZGRW?=
 =?utf-8?B?Q1lxZ3RaVm8wVlljcThMYkhYTk4wUzBzLzNlV1hRTmUwWU1LRFhONmJBK1k2?=
 =?utf-8?B?OUhqT2k0Wmp1SEQ3aGQ1K0ZmNXZ3cDVFNEpiMWswWEZOOFk1Z3lmM0xwOERj?=
 =?utf-8?B?OWNKVFgwclJ3SC8xZGJvQkdWaVdZTXYxMkZqVVVQUUwzUlNCR2JqTVpIeXNz?=
 =?utf-8?B?UExZV0RldTJ5SlNMV2xHQWJ2ZmtmdUNlMlZKcEtOVnlqS2VzZG1IM0hpS3BT?=
 =?utf-8?B?TXE0VEJUVmIrQjlrRU03VjBmVGVJTlBOOVd2eDBHT2NCam8yNENzMnprZmxQ?=
 =?utf-8?B?RnlFV2pnZ1pEL3ZScUM5NTZLeEdObk9zOXBDWUE1MW0xREtPRnB6RldWZXQ1?=
 =?utf-8?B?M1hySitCRFFWOXc3ZHNQQjM3VDllT2xlQlpleU51cjFERjNmMnJTckZZcGRE?=
 =?utf-8?B?WDZjeE9YQzFEQUUzeUZGcmgxa2VrT0pSS0taYi94cWlYaW5seTkzOGlaTWVk?=
 =?utf-8?B?RWhrK2xYYm5qaVUxKzNwYzlxN1NacUZhcTZOcWQvVE44cUhENUNDcEJoR2RX?=
 =?utf-8?B?MEJvdGl0bGV5ODN1eXBMc0JFOVo2cXVFb2tJVEw1Rk1aK0tQUGpHQTZ0VDdM?=
 =?utf-8?B?dXU0WWR6QUlnYXdqVE80ZjhoNXk0eTdTZXVqc0xpTzQrK3BqeEZ2ZW1ORjh5?=
 =?utf-8?B?d1gvZCtYa0d2K3ZhMXFud2lldDRZcHUvczdpSXYwN3k5TU9uZWlNajZxS05v?=
 =?utf-8?B?ampNMExxN2IvczNBa2NacXRJTlBTZUxMWWZHaStFQlhmOTN3d1VyK3FDTzB4?=
 =?utf-8?B?OWJlcHh5M1l2MXZpQ1FjNitZMlZocUl2RDI5VWphdWU5c0xPOXJFTDlibHhQ?=
 =?utf-8?B?M0pXRDRRM3F4a3FmYWdya3JVQXVMUG5GMWxKY2JuNHhYZk9aeXRWblA3L3dE?=
 =?utf-8?Q?HO2IjMTMYfCklpUYAcTxnUFsEVDcag1i6dANgzP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmR6VXdHcVJOV2hCNGV4V0FWa2lPMXIvRUdobmNvUXZNKzJvUkpkZHluakZE?=
 =?utf-8?B?YlNRZFRaUGtKaTh5ZWgzcUlncWtKUTcwZGc5WlZyaU1uZnNPU3IxSG4zUkFN?=
 =?utf-8?B?aWF2dHE2cTNjYlFwMzBVRVg1NUI1dmhaeWZYS0pKbkMzNGUwY0hKNGl1MXhh?=
 =?utf-8?B?THU2YmZmdXpNam5TWE5pMHZ1THZwVnJSeE5FZUhYaU1JRW0vWURKdmlSbjBt?=
 =?utf-8?B?dDFBMHpodEFzMUxOa294b1k3UnFnMmFoTTJZSVBrTXRsOWxMZVdjcTRuQ25Q?=
 =?utf-8?B?czZwRjJFdSt2ODhyTmkrcXRCSzJzRjVoTzVXYytrTjRXNFBzUnRIbTFUaXFi?=
 =?utf-8?B?bENDQWJ1Z3o1QTJ3MTJWdFFOUGVkQ1M2em9LMG9RcGdaZ1R1djErQmN6dGl5?=
 =?utf-8?B?SENGcVNOSitvL001bmsvSzIvbmYyS2p1eU5XWm5Ea1Jud2lGRGNEZFU2QVNo?=
 =?utf-8?B?UTJwaE8reGk3eGRtRWVhRkpLSVlJZERBNTAyY3Vua1pwUGkxY0s1WWdGK0d1?=
 =?utf-8?B?Z0NuNjh3ZGhsNUUwdVZFV3VMMTg2eVE2YXpQL1NMSmdSeGV4M1lSMzhzN25V?=
 =?utf-8?B?enZLN1pDY1U5UzZTVFF1YU02UVJ6MlorZEFmR1JKblF4akpiMjRycHpqajBm?=
 =?utf-8?B?QXNIRWhka1ozY3R4eXVxTHZaSXR3SE9GSTdURDNNeXAycVZPUDU0YjN3Q0l1?=
 =?utf-8?B?REk4TXpYekcweVBBUkYwWnl6cHF2bmQvbnVCWWNsY0ZyblY0bzIzNnlPbWhp?=
 =?utf-8?B?Z1cxcnVleFZ4bEJjWFYxbmdaWXg2WVYraWhaRVNmNUdNOURMSXpSMUZKN2Zh?=
 =?utf-8?B?T1ZoL0VFNTBpeUN3enBQdk9KRW9JS3kwVWEwSytSRFJUVHl6MjhvNGl4WFZ3?=
 =?utf-8?B?NmV6Wnc1ZWgwUkMwWGVLcFoxQWhMOTYyOFJSR1RRZ0tFZUJLeGM0WjUreGox?=
 =?utf-8?B?cHE3eFcvelVSWjBLd2NITUg1S1JWeHNLWFhmU0JvWTBwb1B2aDVnRUU3Y2l4?=
 =?utf-8?B?NEtxWVFRMzkySzRubjU4VmU5dW83VUdOQ3p2dG91QkEvL0lmMVY1RVAzMitP?=
 =?utf-8?B?UG9CYTVVeHpsbU5iU2FLWlVrZ01WNk9uVzBWNUFPZ0dTcS9MT3JvOXlYcmFK?=
 =?utf-8?B?ZVFBS054OXdjbm5UNmJsUlVuSVFDMldWelRDd08vRlFqM1AreWlPWWc5a2pW?=
 =?utf-8?B?M3UybWJpVGFZNklPUXorZUovK0hKQm9YeThlbDN0L1RObUZEODhqZTlrZFVr?=
 =?utf-8?B?SENibnl5ZmhPMTVwNDBHNThMM3BLNWtjbmZOZytFZWVxNnBvYXNIOEoza2xn?=
 =?utf-8?B?eW9nTnZnWmtPZHhDZXliY21Cb3YyTEFmUlowQ3NlN3JpM2Z6M2FZRVlyNUR0?=
 =?utf-8?B?U0t3R2VKQWlMKzlyWityZ3NiWkZYdDBxUjJQYXE2S0FOUjU4YWxEazhoVURz?=
 =?utf-8?B?T0ZKVmQyaHlnY2t1a1NWWWRQUjRkNU5PSEl3YXFrcTloUmo4YTVvMUhsSHh4?=
 =?utf-8?B?dVB0M0J4MHdlQjVES21RM0lUMGI4eGh0QU9MbHFXR0VRejFvN1NSdG0xNC9C?=
 =?utf-8?B?a21JeVRMWElkZlpGaGwrYnZJNk1WQks4aWFQQzdZc0VldVhMZWpVOGVockl2?=
 =?utf-8?B?K3hOa2laZ2ZDcTdqdmFkZVAzYjRrZVZVdFJZVWpYTk1jTndocHo0bEovNTJx?=
 =?utf-8?B?MDgreXphTW9ObHEyWWhES2FleGo4OTNRTllWOXRld3JLbkJwTEJ1dVhOb3lY?=
 =?utf-8?B?MUw3OUJ3UjQ0VlZyZ0ltUHN2MWxKcGhPZURtMEhDSHF2VXRhdklVTHlHK0tM?=
 =?utf-8?B?Tm9FZE42QVYvUk1QMUxURE5YSnNZK2tzZTRNSStoTVp1c0dZSG1SZUxVaTVq?=
 =?utf-8?B?cXpZUkdHU2lnbmovaEZVNkdjcXhUUVdLdnhuRGtya2VzTWg0Slc3MjVMclY2?=
 =?utf-8?B?WlhmTWowKzFIREdqdlFjdHlBa2V5Ympua1dzZGhJVUNTUG5DM3dJcWZUbTlU?=
 =?utf-8?B?cTNlZUZyVzVLNjJPUVhJbTZIZHZBcS9sZkxnSmtnYkU4MTJMZ0pMc080R3dR?=
 =?utf-8?B?eklHaWdTS1Erd016SHFQWGtDMzlVOXRPQVR6bXJBKzMrVU5UU1hEZUM3OWRw?=
 =?utf-8?B?ZmI4bDdtUmlGOTUybTRIZHdkM1E2N284ZUYwSEw2NWxVNzZDQVdFeHIwUUdY?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cec08bb-badb-4b83-5dc0-08dcf2733b58
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 08:26:31.4377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: duDeWdLgyM8RcrTY9/efYX41dgY6+mM4us7/gxDyAcp8kQdw798FBphhZMnEjD3Y2MlKlkWmwz5mPuCa8UAxhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5944
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



On 22-10-2024 13:14, Jani Nikula wrote:
> On Tue, 22 Oct 2024, "Nilawar, Badal" <badal.nilawar@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Suraj Kandpal
>> Sent: 22 October 2024 11:27
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Subject: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
>>
>> Add check to remove HDCP2 compatibility from BMG as it does not have GSC which ends up causing warning when we try to get reference of GSC FW.
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>
>> Could you please add fixes tag in commit message.
>>
>> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
>> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
>>
>> Regards,
>> Badal
> 
> Please quote your replies properly [1]. Your mail is really quite hard
> to read [2].

I responded via Outlook because this email wasn't visible in 
Thunderbird. I hope my comments are understood.

Thanks,
Badal

> 
> BR,
> Jani.
> 
> [1] https://subspace.kernel.org/etiquette.html#do-not-top-post-when-replying
> 
> [2] https://lore.kernel.org/all/BN9PR11MB5530247EFE733E0B4E16870AE54C2@BN9PR11MB5530.namprd11.prod.outlook.com/
> 
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 3 ++-
>>   2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> index 55965844d829..2c1d0ee8cec2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>>   
>>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
>> -	return DISPLAY_VER(display) >= 14;
>> +	return DISPLAY_VER(display) >= 14 &&
>> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>>   }
>>   
>>   bool intel_hdcp_gsc_check_status(struct intel_display *display) diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> index 231677129a35..e3c57f0b79c4 100644
>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> @@ -32,7 +32,8 @@ struct intel_hdcp_gsc_message {
>>   
>>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
>> -	return DISPLAY_VER(display) >= 14;
>> +	return DISPLAY_VER(display) >= 14 &&
>> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>>   }
>>   
>>   bool intel_hdcp_gsc_check_status(struct intel_display *display)
>> --
>> 2.34.1
>>
> 

