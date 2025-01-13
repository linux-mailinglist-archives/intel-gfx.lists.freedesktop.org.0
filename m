Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0262A0C2DA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 21:58:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3524110E039;
	Mon, 13 Jan 2025 20:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eEwQE8lX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601CF10E039;
 Mon, 13 Jan 2025 20:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736801899; x=1768337899;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=7aReDjmqZMetLjPEG3alYk1XDk9jeV3HOz6dSDVpOhs=;
 b=eEwQE8lXOM+Un/IX7vvgHYxpm94QGuF246DhZMv26E/TFzGZ7KVQTp1V
 RzvxHMvj0Zs/Wsz1l0t49RI/RVZMOoGpCEPo3S6cgmWrm5Wyl17NRQy5U
 FPmZNMesHfPzUKzNdW9YGMwr1kinlrU9pgA31jkBjwkqQ2tI8jYoEwj91
 anrZrNMMUWQe3iFtKhITNerhWMUl6WGxYQhU8utlz+jmxOAXH0IP239mu
 yeZIH3COrVm+znpw7bJg04e8yUGUb8MY1ygi9eGxouy4zdgL1Q1ua8/5Z
 Rx3pX95voro1GQuqOAVlW+fbfNrNKrs3pbWhV/jTyU9okCRGG+Y3P25q4 g==;
X-CSE-ConnectionGUID: Big/dCm7Svy+8JdvEP2ABQ==
X-CSE-MsgGUID: xz9Cvjt8SFKeKYcu1CLrmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36993247"
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="36993247"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:58:19 -0800
X-CSE-ConnectionGUID: my6de9h4TfSU1/UU8SUzng==
X-CSE-MsgGUID: eFRvNFt+RUWSwKHfq6FOxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105098983"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 12:58:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 12:58:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 12:58:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 12:58:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JUOqNSSpV1Rf4BpZFn1N4qVg/aSshEZXezexXPBMefhbID2gQvvqSmoePeGvHPYoPnyh6J9tapsVksXh6CcgWBb08O/z2Y7oJVEH7/A4hWV02F7ZILJ0Sj1O74mAMOkGKvrbciqNGtSLP2GrU2K5Q62d6hfMo1jFzCJUeOfp9XpWOc30QMwdF6wjDWozEy1aiJgrGYFmxe6jyJo6R804aeqxlOUXObJXE+KsnqGCsRwLLeU+UZNaHzP1KQlK2+IX+5V5ObU1ZkQbsFiJuUPYM8e1mRInrNykHTMmLyOV8YbZSEhKqBoMdfMH9YoCIK4SgwKCS7SNv+vqrh+fjb2Sdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vrnHK9abe4T8Q5g1oE1YYh5aZtg6z9ZktACg5qY+uMQ=;
 b=dnWRIZ5x+Qh4r7j2RtKCen0brXsYB46OwWpJruv3papnvyBQSTiBesuHrneI3XZ1A0bUOiKKrpZbS2c6crCFahMVqPROvD64FeXwfHDwgdolNSwT2VVbYd06H5BkAqlcT4ywRT/JUy7YhBMQPEUvlb+S5upDVND4mWfYGWqzTjbFu4oUrS8YDCeOjKNeulQ61oeNrjmyjhLIIa0NmRfC9udN1XQMihAAO8ZF+IlUgXLwr3aKwIF5vWx7lwv9qVdubk+YUPF52J67TtAojThlt6bqGkyvbkLiL2SmXj1itCAkOWRa1RtUsxkvePkc1z+GpZafSjV2WQyORzIa17YmSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN2PR11MB4695.namprd11.prod.outlook.com (2603:10b6:208:260::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 20:58:15 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 20:58:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87ldvll76l.fsf@intel.com>
References: <20250104172937.64015-1-gustavo.sousa@intel.com>
 <87ldvll76l.fsf@intel.com>
Subject: Re: [PATCH v4 0/2] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Mon, 13 Jan 2025 17:58:10 -0300
Message-ID: <173680189073.1459.3696955232656172385@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:303:8e::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN2PR11MB4695:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f4c1a28-527a-4269-9963-08dd3414ffd7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTFOQSsyQ3pocm5KbC9KUkZFd1FDMm9hbGVFeml4V011bjltYnRwcWczbFE1?=
 =?utf-8?B?RjBBK3VsdStDRER1MVlSVGcxcndqdzFSdDRFRnNXOXhxTDlmbTNLS1VFakNR?=
 =?utf-8?B?MWxlS2tQTkRlU2FUNVRqOXE2SnlEdU5vZWcwMS9Zai92cnV0VzQ1QVczUEd4?=
 =?utf-8?B?T2hJVVNzY2k1Z25FeVlOclRhcExBeFVtVG1NbGsyc2lmV0MrVk1PZXlCcGJE?=
 =?utf-8?B?eGVBZitJMFFSYTBTd1psSHJ5d2dpdk9ISTd1R1ltZEdSVWpVdU80TUM0QVBu?=
 =?utf-8?B?Um9COFI1R08wU08xbm9wdnhmWjhCU0sxZjNyT1dFL0R3dEprWXJxNVJ0OHVE?=
 =?utf-8?B?MGN3MU1kNTlZOTl5aFNodFhLVnQvUlFYYmFYZy8rVHpaSUVlU3pMMTBkVnc4?=
 =?utf-8?B?REU4d01mU3YxNTRKakhSeUJuNjFVMnRRTHd1VmRySUFMTy9ZbHAyMUJOV2FI?=
 =?utf-8?B?aVkzS1VSWnhuSkFtY2lpUmhuZnROaENwSXVFb28zVzBaQmRhVUV4UlFqUm5U?=
 =?utf-8?B?MTNuYmxqNWVzNWhnQUVRUERHNGtaWmFtR0pFM05mN0NDdnJkK3l1UlcvV05v?=
 =?utf-8?B?NHM0UmM1VGMrVXZ0a1k4Z3JCdDFvNHc2OW96U3ZmUGEySFNXTEFPWllEMnJE?=
 =?utf-8?B?Z2RjS1RPUEZHY0g4Mmg3cng2Q2l2b1d5M1Qzckx3Y1d5Y056ZjdKR2wxTVZn?=
 =?utf-8?B?Y1FhL1pwMEtWaEVncEtVOWQ5NHhBL2NwMXUwTWJGS1BIanlLM2N1OXFVUlpj?=
 =?utf-8?B?V2o3aWNlL1NDUnRSa0RjeUZXNTZ2ZS9GbkZyaTlsdG5TVkEvU0pjOU1DUmY1?=
 =?utf-8?B?czl5Q3NkZFpwSWFHdUU5VFkwSEM3ZnFwYzltcHNmT1BNbmovMHhHTE5TZlJI?=
 =?utf-8?B?OHNKUkswYzBSUUVXU1A2R1REU0xyc3hjMStBNFBZMFE2THE5SXR0OHhRdmdF?=
 =?utf-8?B?OXlBSzRIZnZWVS9YcVV2Rmt0d3JmbUIwNThhY213bzdzcnFFSk14ODBObTY5?=
 =?utf-8?B?QnFCZGtlRnZBSGdpZVdiRXRmQ2xNb2krMGJCUjh6NmthZ1BRbzZ3ZVpWWTUr?=
 =?utf-8?B?bmVKOXJSdjNuZnJuNUx3UnNMdVc3MHBmYVpTRFNkK1VIMWl5akdSZU9oaUZI?=
 =?utf-8?B?aTEzT2RaMGQ2SnRoVXFsWnpacWNYMmgwZHVNMzVuR2VjT0J6SWc2YUN6dFJ0?=
 =?utf-8?B?a25XbXBOZXhrRGlDM2xMQzFLTXNPSVNkK2k5YUZqWTl3aEFCaUpxNUVtVjZE?=
 =?utf-8?B?QVdsVXc3L2ZJUW5haVExRzUwa2FkOGZKTk1EekVJMTRxd0tSTDBXR1hMeTF4?=
 =?utf-8?B?ck1TRHlyNmF3aWx0dG1BLytPZUtwbWRBZStFU1pZcjVVWFdaVGhkYjVoOTl6?=
 =?utf-8?B?VzN6cWJKTVRaZjNYQTZtZnJJWXNNWGZkTmRPVmNtV256Njhla09xYUJkMVRO?=
 =?utf-8?B?Y3N6TnVqUkJodkx0enRTcUtMaElER0pweGswaU96MlZMTGZBRDQwZzBPbVgy?=
 =?utf-8?B?TERpTlppVW1EdzA4Y0U3WU9mbFZGWTVYeWl0NlprdzJlTzZZRk5FbnFCVTJ3?=
 =?utf-8?B?RnhiVVIyNzdib3VYcytrOGJJRndsN1VmNUhERjBrVzdnQTlMNnFGbXpTbU40?=
 =?utf-8?B?OEozMGU4V0IvU2svVXZ1ejFBVDdvSWZZMXJuNzRPUk0xb0dRdEEyNmhmYzBH?=
 =?utf-8?B?aTNnOTRUVFdSMlB4aXJMTXY2WllUcDBQSjJwRm5vYnp4VzNoYmNrSlh5dzdj?=
 =?utf-8?B?SkFaUWcxM3p2NGFsUjFBSXNZbXpXQUV5VUlOTjR1OC8zMTNld29lS0JDeU9z?=
 =?utf-8?B?cWRMeUpnWC9lQnJVQnIwKzBSV3IxRmRzdkVzN1hoN3VEMXpqQzk3RjBEczZP?=
 =?utf-8?B?VG8yNW1uaGQ4YzdENmVMcVRVR3M0NFpleWNEc2NvNTdNTnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aE9hVk12aXI2MTNCcjU0cmR1dnJyTmtUamR3OGRhWFlJNW5IM2xXRU9XR2pX?=
 =?utf-8?B?QkU2MUIrQ01wMWZpMEN6Q0dmVyt1a0xteTBZVTEyaXpEVEhGdjdqNXZyQU9w?=
 =?utf-8?B?dGF6Smh6TUVtMGp2b2FiUmIybUkyN0o4YUVRdmhxeGZNTjdPT3J5VytOQ21B?=
 =?utf-8?B?d3YrcTNlbzNLdTlHcmliZGRDOC9pdXQyRnBDK2dibVM0Q2EyazZscTZZSWJp?=
 =?utf-8?B?SFUrci9GK1lpWExpanVDZTBsZlc0V2llRTMvQmJUcStqTkY2R2xjc1RDUkVR?=
 =?utf-8?B?dTJiV0ZYRGQrcEdwbExEa3M4bE1uWDd3bFFtZE05R1dGRTJHNHNTNnc2T09C?=
 =?utf-8?B?bGNPdDNwWmhQZ2Q1ZXhQUmtERy9HZFRKdVJ1dWJqZHRkbWlkWldscFNqUGVQ?=
 =?utf-8?B?NzVYUTRKZGFEUkZlWFlGQSs1V1hCSTlFSjd5NlByWjBGTkFLQUNIa3F5WnRJ?=
 =?utf-8?B?RlY1Z0cvbGVCYkQweEpxS1VDeGo1WWpuYXFsd0RocUQrdUtSUVNxMGx2NG52?=
 =?utf-8?B?Q21oMEhrOG45a0hKdllGbVBHUnpNREkzb3pDVURjU0NHMlhlRkN3VDhxbXhP?=
 =?utf-8?B?Yno3OEpWN2NJZHhlZ0pjU3FBRkE0YStRM0VmdWFNTmxZeGkzZXIxYUYvUUJo?=
 =?utf-8?B?bVhWSi92WVozZXNSZDcyUDZ3Y2RjY3hVaWpEVkplQmRBWjJVV3g1SzRqY2Ey?=
 =?utf-8?B?Y1BvbU5hdFdIMVVWdDUrS3FRSVJmVXMvc0EwcTV0bk9TL2FZcXpnRnlKaVJi?=
 =?utf-8?B?R2Y3UWM1TG5uOTl2NVJPT1VNS3lzNi9LWmFsMmsxZ2NKcEU4WVhwS3NHcm4x?=
 =?utf-8?B?eDBpdTkwcjVkbWlROHFiakdFYW5iaTVjVy90NE5TWkk1Nm5QandzbVA0cUJa?=
 =?utf-8?B?NGJ4U2cweWo2by9iNTBKSGZ1Z1FKVXhVeWk2NzVyY2JXVkxmVzlqelVDOFVO?=
 =?utf-8?B?VGNrRjFNK1BEQkxsNEFrTmlETVZYaU1UV1lJNGxyWlVTbkZMbC9UMEdwdGxT?=
 =?utf-8?B?bGduM0VxaTVsK2UxZlFNTXR0ZnUrYnhVcGZuUzFibm1HZ2hWMkVXMEFmMElG?=
 =?utf-8?B?ZUlSV1VIQ2NmYk9FendqTXFhR1ZaaHNUMUlQWGdkNS90eDZGdk42Tk9xNnZi?=
 =?utf-8?B?S3Z5UWYyWVR1N2lyc29DaFhaNVJMN0pMclNWTFRyMllFQ0psTEN6KzlFSyt4?=
 =?utf-8?B?UE1rU2daK2dKb3daL2Z0cXArQjlkeFNURVVRczVXQUlTZnc1ejRHYUFDLzdp?=
 =?utf-8?B?cEVHMXd5WG9vbW5hRWRIMTRqVWJka2c4bnFPaXBGSVB6RStsSkcrVXFTbDJT?=
 =?utf-8?B?TXhhMXFtNStOeDhFbWRWOGc1b1RkNzdWVnVRejhobWtlNWpnaGo3Q1RqNE5E?=
 =?utf-8?B?SkVPOTAranhWb1M2THFFTnM0NFczdHpJa2NJbHptVS9oU0lZRktBY3MzRmln?=
 =?utf-8?B?UGhqbHl0d2xXTGlWMHM5YjZkWFovdmxmQ0daRk85cURBblZXeXV2M0xQRURS?=
 =?utf-8?B?QzVUU0ZHMHgzS3JSWG54TkhFZ2s1SmcybENvRldHU0ptcmxZU3VOK0RDYWRn?=
 =?utf-8?B?RGlMcjhGTDZOVWszZDkrZk9lUEpXZ1h2MUV5ZFRWd2htTDV5ZjlqNmhkbHpF?=
 =?utf-8?B?U2U4YjhxT0JjdGZOZHcxTU1EQlArdzBLRUk5bVVMazZ1YzJLb3NiRk5ZQU9u?=
 =?utf-8?B?UnBEdDJrU3c0bU9QUWpkSmpXblVSS2pGdGx0NTBYY0s5dmNCVnVESjNuemNT?=
 =?utf-8?B?c3pwODBYcUhxQ1VRSlQyK3JFK3l2UmxiTmdIaXRZUlBBdlZqNXB3Q0ZsZkZ1?=
 =?utf-8?B?T083YXdBQllpWlJ5Q3p5RnpKQzFSRVJiZStiTDRROUpLc3BiSkdRVGdoamxB?=
 =?utf-8?B?MUpMenQ1UkpsNnhLbGVnYU5BeUQ1ci9ld3lqUm5URGdaRUxMREQ0RnFSYWpI?=
 =?utf-8?B?YXNad01JdFdmcVkzQndRVTdDb00zQkZJRmdxZEZRRDVKMERpTmkyVWcranJn?=
 =?utf-8?B?amYyUGVkM2gwOWw5TmJrclhpMWM2U1VyUm5VLzJuSHgxREswSVh0TVVBQ2ly?=
 =?utf-8?B?Y1FENlJrc0ZWeHd4RGl0OHZsN29XR1BCdkx5ZGFOOEp6eCthbU1NeG1ia2hj?=
 =?utf-8?B?NWxCQjRVbkFSQjJyb3l5aGdFZVBUTmR5OHVNaEhJWitxWGNPMWY5WWJEUUIx?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f4c1a28-527a-4269-9963-08dd3414ffd7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 20:58:15.4040 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f6VVujCfXsOHjeri4CyZd+H349n8Y+9AnEB083K6SqXIBZThJKmZ1TILwVIzaLTCjEb22iQW8rnPX7qnlFqm+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
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

Quoting Jani Nikula (2025-01-08 11:19:14-03:00)
>On Sat, 04 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Next version of [1], with review comments addressed.
>>
>> Note that I have added one extra "squash patch", because I was not sure =
that was
>> the correct way of handling sanitization and thought that having it sepa=
rate
>> would make it easier for reviewers to check the change.
>
>I'm sorry, this is really hard for me to follow. Please just send the
>actual patch you're suggesting. You can easily preserve the alternatives
>in local branches in case you need to backtrack.
>
>I did try to apply and squash this myself, but it's also conflicting
>now.

Rebased, fixed the conflicts and re-posted as v5:

  https://lore.kernel.org/all/20250113204815.114019-1-gustavo.sousa@intel.c=
om/

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>
>>
>> [1] https://lore.kernel.org/all/20241224165408.43778-1-gustavo.sousa@int=
el.com/
>>
>> Gustavo Sousa (2):
>>   drm/i915/cmtg: Disable the CMTG
>>   squash! drm/i915/cmtg: Disable the CMTG
>>
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 251 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  18 ++
>>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
>>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>>  .../drm/i915/display/intel_display_device.h   |   1 +
>>  .../drm/i915/display/intel_display_driver.c   |   5 +
>>  .../drm/i915/display/intel_modeset_setup.c    |  20 +-
>>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>>  drivers/gpu/drm/xe/Makefile                   |   1 +
>>  10 files changed, 318 insertions(+), 5 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>
>--=20
>Jani Nikula, Intel
