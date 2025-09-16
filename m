Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84158B59A68
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9980710E7E9;
	Tue, 16 Sep 2025 14:38:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5KJjmWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C451C10E802;
 Tue, 16 Sep 2025 14:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758033494; x=1789569494;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AxxZI6Cwv3jrneNcVuKq6nVR5HQeGkZ4Vdof3eTuElg=;
 b=Z5KJjmWgcxb91FFkiglwDHLT6u/4tJhPFLBHVnpG5lhRseVlqxMiwdrs
 KOZhX6QDZa88JFox6cDVqBRfSjG/79F0PGNBqsTc8P4xKjWxOKGJOpuVF
 PSu6T3jNgBNMYzlrhvFgpoNeO3ILDxnNA2a3gzJD46NBlst1AFRnE3dMj
 aDNGqMn7PzvLKR9bkQLsBlWJi1hL/+E2aXnfDOr4b6ZkXFZmXMm6+ckQA
 WZz9s5xdTREZyu4cTGFwjLOhuGzbT+kW8P90q/TZ8C3QRaJHRqfh4rRvp
 9JIQJp+wAwWyl83W112SRpBblJ2fYrzS0nitHMzfMT4sZ3s83ScoHug45 g==;
X-CSE-ConnectionGUID: NI0ymfUbQyCK/X6S+v+9sw==
X-CSE-MsgGUID: nz/PFXfmS62PBMIGauoqOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60243982"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60243982"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 07:38:13 -0700
X-CSE-ConnectionGUID: Zr/k3cDjQ6Ge/kU9CumCnQ==
X-CSE-MsgGUID: YbJ8651HRMGjCUl4b82Ydw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174557472"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 07:38:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 07:38:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 07:38:11 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.32) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 07:38:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s+ywQKxnZoJHwe3vdXXourW9UEmcQi0F29rK1VNOfSFzbC6+2gT480hLLQAY+gW/06Anyv8iAK85l7PMRUI9/oC2hVvMeBGzNda6uZbMgw/pFzpNAYeGPhxmrUNOcllBDLB3Qxo9XZALnzOZx6ESwF1+CTl1fnalo+U5m0LPdIjI5bwMuErmZJRnA1we6xxwXGZuGYnB08HEYU3fgtekV/fkOFDQgxvU8cZDJqVhDLaKUJbp7FusXRSq2liSeUFl/gmXZlOm3f/4C56nGrr0vEFC4i22+Vw5VYypaGmuiSfNEPXE1msI9xh3yA+1mHOb9V+EG+lGyKOQv6O6KJZixw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FqV13HiIUBdEHbn9CdeLMV1XbIJnUuoEFKXdNWeisc=;
 b=S5Npa0r+Jqx9QNwvV7mzqSLT8b62lpy/cAiDyED4LwFwLLTn2tqMG4n0s6yIGzW4Sk6PIN/ErfXehYiOi5YM75bdM3dwjeyZfPypXVE3RkUkh9BeW5JOt575XARRNBmjHs0RWy4q1whckXeWtD2GvxRUlx1SwW54IHJXaRTPlNs4lHazwMq1HDw76Ia0SiCWL7xsD0mLfeMMYTHzSQu9MnFVAEaKd3oHQLNSYbTNJexXCRoC6jzIrvPVw2C3Jo0ZjDyzBThCSoNQBOGvy7fqxJExE/0HK/+WcYGXc6JqOnxNR8z23UcJhf3glpCSsTI0U6zVIVbdkuUiOA/nP8jhXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8374.namprd11.prod.outlook.com (2603:10b6:806:385::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 16 Sep
 2025 14:38:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 14:38:08 +0000
Message-ID: <3f1d3ce2-fb8a-4576-a74a-cd8b59a016fc@intel.com>
Date: Tue, 16 Sep 2025 20:08:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
 <aMLb17oJa__bPVoA@intel.com> <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
 <aMgHS992-0aZ8FIb@intel.com> <3328d2c9-e398-4097-a3de-fdee441fa50d@intel.com>
Content-Language: en-US
In-Reply-To: <3328d2c9-e398-4097-a3de-fdee441fa50d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8374:EE_
X-MS-Office365-Filtering-Correlation-Id: 46b0025e-0f1e-43a3-58ee-08ddf52ea74e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEJDZkowS2UrRnlOY3ZzQ1BmWnhjSE9TTnBJK2tZVC9xc0JKMmF2UDZFeUUz?=
 =?utf-8?B?Ym1JNFl2VGRFdlRrZGw3Mmc4eHFUNjFOSjJKUGkwNGxVMklDWkN4RDRJOWgw?=
 =?utf-8?B?blBkMG5EdlE2R1RpUU41aWF6aU1VM3RJZVMxYU1NNjBMSXE2K2hOVEhuZ2Z5?=
 =?utf-8?B?RHpKbVRySzVVOWpjdlZTQTVpY0ZnRWZHMUNDN2tEVXNvYTFYKzlSV200a09K?=
 =?utf-8?B?VktHYmV4QzU3Yk1jejJML055ZWs1TEpiREs1SHVYOFFJTGtPbGlYMDZGZHBj?=
 =?utf-8?B?UVZpRFMyeWwxMUkvT244YU9hVEVaM3JBUFlvc0YvdTFSTlpyZWtqSkt3TnRY?=
 =?utf-8?B?MEd4ZitjNi90M3QrUm5JdDNkbDkvdTRaRFN0bkFvUkxLajV5bjV3RVBMaVJR?=
 =?utf-8?B?TFl5RG1rMWpLVHRQWWVvRlI5dHRwa1ZFQ2tka3U4VHZOSkF3U21aRENlTWI0?=
 =?utf-8?B?UzJzcXNIWEpuay9kbTFpZ0ZVU2tZWUt2U0JkQnhybzZtc0xVM0x6amVDOXpt?=
 =?utf-8?B?YVlVODU4bEhwUkdJaEZRdDY4K2FxRUQ2c3dPUCsydHFpNHRMQzduVHRTZVJL?=
 =?utf-8?B?ZGdwZDlzdzJhSnMzY29lYzVQSVFtajNNL0tDZTNqVEk3WGh3U3QweE4zQXhT?=
 =?utf-8?B?WHdoc0x3bDdGYVFCVXNQanM0a3BYUU9uSVNLTUx6U3kwekw1Y0pYRERNSDVH?=
 =?utf-8?B?ckQ3eC9sNVV5ZWY4MFZJRnR3a0xObVFMVi8wNHhnYlZsVnJ3T0FkaDM5S0Fu?=
 =?utf-8?B?dXlvN3g3WE5hZVU2ZnFpTGxaMHJpeERobnV0ekVaS3R6czN6WjNoejMzSy90?=
 =?utf-8?B?ZSthNXJVMkpRcnhabEQ1aGVzSlh5aWRkZy8zVWtxVTcwcFV0eGVYaGZHcXQ3?=
 =?utf-8?B?NWxvbFBQakoxY3J4U2R6RmdaSG9PMnhzSFJZQjd0c3NRNGFTdFF5MkZqbGZ1?=
 =?utf-8?B?ckRqbUlVUzZMamNsVHJYWG9lalNlU01udFlKUS9WTzBVazdxU3hpYnpiN1pk?=
 =?utf-8?B?TnF6SUJVQWoxUnFkZm1meCt1Q1ZjZVZDSlpGdHVMajhNL2hYQVZnaFhrMWJj?=
 =?utf-8?B?NzBrbUY2TmQrS2JrQmRRbXJLSDFxLzJFL0hpVnVSWCs3c1FLTW9SNjVTK1Rt?=
 =?utf-8?B?MUwxQ2QrNStYQy9MejlMd2pxcmo0eXkyZkt5QWxzUDRPdXZ4QmhYZnBqd1VX?=
 =?utf-8?B?Q2kvYTBtYnUwN3o3YWZXYTdlZmc5NUI1NVhTNy8zZy9Na0FybjVyWGc4K0hj?=
 =?utf-8?B?MXRiNDB2V2VyOUJmT1dHNEFoLy9lSXFrS1NSZEkxdEMzMi9CeitJMUJSTnZ2?=
 =?utf-8?B?N2pzcWtVSnNDYlVoY2NDanlHc0NEcHpuZXNmNVI5SVlZRGtMMnVCQWpUZEdX?=
 =?utf-8?B?T0F4VXJaMlhza21EY3p5ZjJZV1Q3UTlxdGNaN2Z5Wnl2VnRUeHFINDczMHV3?=
 =?utf-8?B?NGx1OWEyYTR6WE40SE5zbythOTRvZ3VRUXdXa3p2c1FkcUx5L01lK2xjMXA4?=
 =?utf-8?B?djJRMGNsbytlZXlkR0RVYXNOU3JlSDEvYjgySVdtZERWMFVHVFAzMXFMeU4z?=
 =?utf-8?B?THplbUpHa0JScnU5QUdOZXRTanlmKzdMbVE4QVZHY1h3b29BSm9SQ0w1amFI?=
 =?utf-8?B?RHlTK2RJTWZFaFdPRFVab1c4WG5KQnZ6allWOWh4emVYSHhGdXNrV0cwQXRz?=
 =?utf-8?B?dnc0ZTVhanh6Zmg0bFhJWUpEbjdJQ25YL1ZGSGZvNHVDSFBXNHBlZmtrRTNI?=
 =?utf-8?B?bkVwREgrU3RJZWorb3Q1bUN5MzRUUCtYc2thUnd6emxxbE1ETnhNc1gvRDBZ?=
 =?utf-8?B?WU53b2dpYml6Mkd0TTYxZ3JWR0pKR3lBTzBFdVkwNkR0dldCVXBhT0xyNU5U?=
 =?utf-8?B?OTJ0eUpxY3VGSTYrVDlHMGpXY3lDQ1V2ZmNMeitjczZtV3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWdhYndxTHFUYjBZTTFxcURDRkY4TURHTWJnUXdhTmlEcTdUVUdKM1Z2ZHg5?=
 =?utf-8?B?aHVRdnoxMk91Y3hkOGh6bjJDUFgrNmpmMnFheWNrcEZnay9ZME94Z3dUd09h?=
 =?utf-8?B?S3k0Y0FqMjVkZ3JNTFp0U1lrUEp0cGZCR3pYOXVnTlBFc2NSM3d5SGpiZ29z?=
 =?utf-8?B?dy91anRaMCtVZkx2bFI1OWc2d3dGalU0UmFCQlJwN29NODBsbXdtcGprZG9X?=
 =?utf-8?B?aXRoekNHY2V3ZGdBUnFHNTl2eDNWNlI4WnlNYi8zM2dlTG9tMWxqTFBXODM0?=
 =?utf-8?B?ekhJTVJrNXJqSUpJV3p5b01iVEtsTEU0LzI0eDN2UGpYcEg5WUZLRnlVM083?=
 =?utf-8?B?c3dPY0MwSXlCdk1yZWIzdGFuaFlFY2ZnamFLcFNPSEVnSjNsc0p6eWdoZVRF?=
 =?utf-8?B?WjRlZDVQZHdQMEgzRlowVnhaT0EzMFBPdVdqT0QrOTFISXFwMlpEdDlpY0RD?=
 =?utf-8?B?YUJEbFNGb0lYSjROdThRNmMxS09sWkt1WWZIM0pDYW1LUHMzRnEyYld5eGtw?=
 =?utf-8?B?ZmhjcXUyazNpdW0waEVKSmdrbjNoWXk5d0grd0t1RE0wdURKYmN2SjRvNElN?=
 =?utf-8?B?anhDZEd0N0F6bmxSQk1pc2h3MlFPRFd4R2JUeE1KeHhTbGJGM0hpT0I5TVVy?=
 =?utf-8?B?eWhoMVdpbnFXQ3hVRVI2VDFNNnZhbnhNLzRXbXI4RG9IUzlaUnplOVVIdjRh?=
 =?utf-8?B?alVkSG1uQlJ1TTRSOTBOelJ5VnhQaCtsZWR0cndqQjhHdHZremJiaUQvbHE1?=
 =?utf-8?B?enp6SGdCOTNGN2R0TnZ1ZWxPTndNelduMnVhc0xKZUROSHcvZHhQbGQ4QVZK?=
 =?utf-8?B?ZFBUMGlQcEhIbW52eEptUTN0NGZyRzFNYm93UzV1cXBUamZEUEVSU1F6bm4w?=
 =?utf-8?B?WFFPOE5QYzJRMkEzNTI4SjYyWTFyaW9rSXAvOTdwN0pHRDVSYlBpOFJjcGpF?=
 =?utf-8?B?TzB3Tk4wYzZ0ZlF4UEVjbndINVBFa1ZrbktrcUN6UUlucGEvMjBrSVRsK1NH?=
 =?utf-8?B?UlZGQmpCZDFIZVk1SWtpcU5TZVBNVWpnQThEM2hCNU5JelRIMk5HengzMDB4?=
 =?utf-8?B?M0tuY0xGS1dhOUdvNXhMTzh0L2hXZkVpbENJL3ltZytoSTJrS2ZxRzZuTVhr?=
 =?utf-8?B?TkhwNlUvb0tOQ2gxVDA5NHVMNXRzbzZzbWtKZkVzN3U2S3pkamozVjZsS25s?=
 =?utf-8?B?bzBqL21EWXJFYlA4cVV2Mndkb1c3Q21mNWEvNmR5WGkrc09DbkQybk02WmFa?=
 =?utf-8?B?SnN6bDRsUGo3eWt5aUNsb3BNbW50WFpTczBMTXErRWNFQ3VyMGZQa05KQWZC?=
 =?utf-8?B?QzdrNzJNdnNyZ2NqSG5MRW5uU2NoNzFybTdpcHB4QS9qMGpya0ovakIwV2s3?=
 =?utf-8?B?ZUhLdXk0NVdrYzFBeUxhUU02Z0NPV09DNzJpdnFjSUVBTDZRbXpJeHJOYWlh?=
 =?utf-8?B?MUZvRjkySzI3dVFMMEpyTEU2VnZ0L2k3M2pnVGJJc0JPOENNTSs0U1JlcXI4?=
 =?utf-8?B?L1IvcE9LYU9yMWluSVRTZmhTcVlPRjV2S1Y2S1lBdTNOd0RMQlIrYi9Xb0tV?=
 =?utf-8?B?NVlaQ1piTDY2OEtZWDdLdk8xb0pOTUE4Q2VUNzB2U2JQM3l3WTFzdnNQMnNK?=
 =?utf-8?B?TmJ1WVlNSDF1MzhKQklzT1h1NHc4cjBuVCs5TTJmZXdkYUtuWG5IRHN5KzFa?=
 =?utf-8?B?cDZLS25BdUQ0SWVXT2lRTFNKNEY2Zk94TGRBeU5ERjBhVTZyb1FXdnRlKzIz?=
 =?utf-8?B?NGZjakhNZlIvN0pvMi96Q1BxcFpFWkp6Rk5MYTd0OEdGMGVxdG5HOTRVSkpr?=
 =?utf-8?B?eWFsLy8rN3BVdlUvMXZ3TXpveFlQZWkwWTVwejZnckVVZjNEamo3ajJZMUNH?=
 =?utf-8?B?MFJ4aUovTXNGRjduUTZrcFFuWmNPbXpuRWtzb3FQQUZHWDhuTExGQVEvRGRP?=
 =?utf-8?B?RzQ3cXc3R2pjRVpsREQ0Mno3MnlBa1VLRGJMUnY2d0dwU01rci8vL095TGU4?=
 =?utf-8?B?VDkzbFhhVjZjdzdBWUdDQ1A0UjJMMFVrOXpXZG4wL0hOVG1wYmVNRGlmSzVR?=
 =?utf-8?B?bndwZ21DVnhwdmk5LzJxNWdEeHU0eFB3QTVYMnlnNnVtMlpQY1I0TTh5MUdR?=
 =?utf-8?B?ZDU1dHI4azlML2FmNHJ0K1RBdGhiSmhOWC9hVkhmYWZsc1ZvNmptSFEydzNS?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46b0025e-0f1e-43a3-58ee-08ddf52ea74e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 14:38:08.2262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dDicbcnijoUXkDIePERaSUOaSk/vZFlDdKKZpvFVLFzMj59mWpCSGC+kAx+dysstE4fdCtIrp9En4R9MI5mwpvq3YaOZXM6aIDOIUa4P6B4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8374
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


On 9/16/2025 8:00 PM, Nautiyal, Ankit K wrote:
>
> On 9/15/2025 6:02 PM, Ville Syrjälä wrote:
>> On Sun, Sep 14, 2025 at 11:29:10AM +0530, Nautiyal, Ankit K wrote:
>>> On 9/11/2025 7:55 PM, Ville Syrjälä wrote:
>>>> On Thu, Sep 11, 2025 at 08:15:50AM +0530, Ankit Nautiyal wrote:
>>>>> When VRR TG is always enabled and an optimized guardband is used, 
>>>>> the pipe
>>>>> vblank start is derived from the guardband.
>>>>> Currently TRANS_SET_CONTEXT_LATENCY is programmed with 
>>>>> crtc_vblank_start -
>>>>> crtc_vdisplay, which is ~1 when guardband matches the vblank length.
>>>>> With shorter guardband this become a large window.
>>>>>
>>>>> To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl 
>>>>> value to 1
>>>>> when using optimized guardband.
>>>>>
>>>>> Also update the VRR get config logic to set crtc_vblank_start 
>>>>> based on
>>>>> vtotal - guardband, during readback.
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_display.c | 36 
>>>>> ++++++++++++++++----
>>>>>    drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
>>>>>    2 files changed, 38 insertions(+), 7 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> index 55bea1374dc4..73aec6d4686a 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> @@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct 
>>>>> intel_crtc_state *crtc_state)
>>>>>        return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>>>>>    }
>>>>>    +static int intel_set_context_latency(const struct 
>>>>> intel_crtc_state *crtc_state,
>>>>> +                     int crtc_vblank_start,
>>>>> +                     int crtc_vdisplay)
>>>>> +{
>>>>> +    struct intel_display *display = to_intel_display(crtc_state);
>>>>> +
>>>>> +    /*
>>>>> +     * When VRR TG is always on and optimized guardband is used,
>>>>> +     * the pipe vblank start is based on the guardband,
>>>>> +     * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
>>>>> +     */
>>>>> +    if (intel_vrr_always_use_vrr_tg(display))
>>>>> +        return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
>>>> What are you trying to achieve with this? As in what problem are you
>>>> seeing with the current SCL programming?
>>> In VRR TG mode with optimized guardband, the guardband is shortened and
>>> vblank start is moved to match the delayed vblank position.
>>>
>>> The SCL value which we are currently writing as difference between
>>> delayed vblank and undelayed vblank becomes quite large.
>>>
>>> With this large SCL, the flipline decision boundary which is given by
>>> delayed vblank start and SCL lines is same as the undelayed vblank.
>> Everything should match the undelayed vblank.
>>
>>> It seems that intel_dsb_wait_vblank_delay() (in turn
>>> intel_dsb_wait_usec()) does not behave correctly within the W2 window
>>> (between flipdone decision boundary and delayed vblank start).
>>>
>>> It seems to return prematurely. Since the push bit hasn’t cleared yet,
>>> this leads to DSB poll errors.
>> That doesn't make any sense. That command is supposed to simply wait
>> for the specifid number of microseconds. It should not care at all
>> what is happening with the scanout. If that is not the case then we
>> need to write a synthetic test to reproduce it, and report the
>> problem to the hardware folks.
>
> You are right, on debugging further I noticed that 
> intel_dsb_wait_usec() and intel_dsb_wait_vblank_delay() are working 
> correctly.
>
> Due to large SCL, the the intel_dsb_wait_vblanks() is not waiting till 
> the undelayed vblank but the safe window, apparently undelayed vblank 
> - SCL lines.
>
> We are setting DSB_CHICKEN_REG bits 14-15 : which says: Wait for 
> Vblank instruction will use only safe window signal from dptunit in 
> DSB HW to complete the wait for vblank instruction.
>
> I am not exactly sure if its mentioned in Bspec that safe window start 
> = undelayed vblank start - SCL lines.
>
> Observation:
>
> For example with eDP panel VRR range 40-60 and below mode:
>
> Mode: "2880x1800": 60 347710 2880 2928 2960 3040 1800 1803 1809 1906
>
> Before optimization:
>
> guardband = vblank length = 106; Undelayed vblank start =1800; Delayed 
> vblank start = 1906 - 106 = 1800
>
> SCL = 1800 - 1800 = 0
>
> Flipline decision boundary is = 1800
>
> After optimization:
>
> vblank length = 106; guardband = 38; Undelayed Vblank start = 1800; 
> Delayed Vblank start = 1868 (1906 - 38)
>
> SCL = 1868 - 1800 = 68
>
> Flipline decision boundary = 1868 - 68 = 1800
>
> Consider lines in  intel_atomic_dsb_finish() :
>
>  intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);         /* If 
> flip is earlier than 1732 (1800 - 68) this waits till 1732.*/
>
>                 intel_vrr_send_push(new_crtc_state->dsb_commit, 
> new_crtc_state);    /* Push happens immediately*/
>                 intel_dsb_wait_vblank_delay(state, 
> new_crtc_state->dsb_commit);        /* Waits for duration (delayed 
> vblank start - undelayed vblank start) ie. 68 lines ie. till we reach 
> 1732 + 68 = 1800*/
> intel_vrr_check_push_sent(new_crtc_state->dsb_commit,     /* Push is 
> not clear yet as delayed vblank start (1868) is not reach yet, we get 
> DSB POLL error */
>                                           new_crtc_state);
> intel_dsb_interrupt(new_crtc_state->dsb_commit);       /* DSB 
> interrupt is fired earlier */


Sorry for the bad formatting, perhaps this will be more readable:


  intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);

/* If flip is earlier than 1732 (1800 - 68) this waits till 1732.*/


intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);

/* Push happens immediately*/


intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);

/* Waits for duration (delayed vblank start - undelayed vblank start) 
ie. 68 lines ie. till we reach 1732 + 68 = 1800*/


intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);

/* Push is not clear yet as delayed vblank start (1868) is not reach 
yet, we get DSB POLL error */


intel_dsb_interrupt(new_crtc_state->dsb_commit);

/* DSB interrupt is fired earlier */



>
>
> This explains the observation that if we call 
> intel_dsb_wait_vblank_delay() twice, it reaches delayed vblank and works.
>
> So I think we dont need to set SCL as the difference between undelayed 
> vblank - delayed vblank and clamp it between 0,1.
>
> In any case the above lines should be modified to something like:
>
> intel_dsb_wait_vblanks()
>
> intel_vrr_send_push()
>
> wait for scanline in range [delayed vblank start, vmax decision 
> boundary] /* To ensure we have atelast past the delayed vblank start */
>
> wait for SCL lines /* Only for VRR case, to ensure send push is 
> cleared */
>
> intel_vrr_check_push_sent()
>
> intel_dsb_interrupt(new_crtc_state->dsb_commit);


intel_dsb_wait_vblanks()

intel_vrr_send_push()

wait for scanline in range [delayed vblank start, vmax decision boundary]

/* To ensure we have atelast past the delayed vblank start */

wait for SCL lines

/* Only for VRR case, to ensure send push is cleared */

intel_vrr_check_push_sent()

intel_dsb_interrupt(new_crtc_state->dsb_commit);


Regards,

Ankit

>
>
>>
>>> AFAIU we are not using the SCL (Set Context Latency) lines to write
>>> registers via DSB.
>>>
>>> The evasion logic ensures we write within a separate window, making the
>>> actual SCL value less critical for register programming.
>>>
>>> So I have clamped the SCL value to (0,1). With this after the push is
>>> sent the send push bit is cleared after (0,1) lines.
>>>
>>> But we still need to wait for the delayed vblank. For this we need
>>> either intel_dsb_wait_vblank_delay() or dsb_wait_for_scanline_in().
>>>
>>>
>>> Do you have any ideas, what could have been going wrong or if anything
>>> we might have been missing?
>> Was your crtc_vblank_start even correct (== undelayed vblank)
>> when you were testing that?
>
> I think the new crtc_vblank_start should be equal to the delayed vblank.
>
> So we get guardband = Vmin Vtotal (=Flipline Vtotal) - 
> crtc_vblank_start as mentioned in below lines which I am not changing 
> now.
>
>                 crtc_state->vrr.guardband =
>                         crtc_state->vrr.vmin - 
> adjusted_mode->crtc_vblank_start;
>
>
> Regards,
>
> Ankit
>
>>
