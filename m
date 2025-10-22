Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409B5BFAFA6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4062010E161;
	Wed, 22 Oct 2025 08:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EdklS5F4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E0210E161;
 Wed, 22 Oct 2025 08:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761122996; x=1792658996;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=llVK9WAQDJbDx9yUkZcH3iKD8uQXeoG44jZZl5Ht51Y=;
 b=EdklS5F4TScJBaewjAFyxqUqIplWbVrikCFKkv1IRolheunzpC1eDkCZ
 OYo6NJm7Dw7cscw1riogmKeqKIhhaQJwYLEWhCINwL+qVctBTtSJ7wwct
 LXs5Fb1xL9ycJwkurOX/+xteQp5jMV8XHCgq/WtqQwfejyN8tHnFtJKgg
 vZbVqpbWpJ3JvBu0fHXT/2GZ0eKt7nBXnloqY1cb7TOD82gALF9yDE0cS
 XB03HHgYgspeNrgWam3j1PDr5D5FBB5LStCKFt39mW1u+CtXpZj8sYo8D
 Bj1nczJ5PsmNIb2ETuckFWO+KLuTEqDHf6l/XsLvv8rASuswMWF/CqBG7 A==;
X-CSE-ConnectionGUID: K2X0GJfgQSeoqBmSeFU+zQ==
X-CSE-MsgGUID: xXdY7MMYTbGeM2CT9VVt2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62967555"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62967555"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:49:56 -0700
X-CSE-ConnectionGUID: eKm2IWqTQieA+m60mWt9ng==
X-CSE-MsgGUID: BOHUZowQQ62aLzbfkMzpLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188094111"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:49:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:49:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 01:49:54 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:49:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W1Hr2HB2CG5GIzgvQ3W47OPrrqw3rvaNJSkUirnrZ6f90SS7wWJcelqQWPz3HxT/963fbE3Lf2Kdt4fN59vHQDG3wEYjUJXtJ9RLsQb2R315qlyyqRpsxRMXa5gfh8pAh90GOOXW+akGoXDny+HwGaS3aQ71NymQEMi9GU5K/sYC7SPr6HFP7Ienoz8b2+ADVKuijX7Uo3r64Fu0d11YSkej4Xh54KyeIMHcVgsJlxHaCMegmFW/lierUdeYwsZeEapT88+ghIZw9gehkIW7Pj6N2m2NmgMPyENC7E8Cmol1rv+nd8jkFoTj/z9t8YG/NVLiUCJhWkdnuoZxPfewUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6i1XAqFib2F3XBJQNkB+SGrILBlwVSL2qJdTxKH5dE=;
 b=XD5VaUl6hgld5F7EgKPwAhIxlorNjufc+3Qwu4ENyj/MeX4kf2ESMLy/Om0yR5coQsrxv0X23pDvyFZ7cGT9ktmZeeWyZAtnOjdJNSjwMm4krifuCxumAAGNd4fAvbxSMmrcjT6hFGuZFllwdNcFjBONPqLXt8zXB/6GMOWI0ATA+WeJ+MrC0VPeur9+kqvopNuroTBAV31wK75sgLLNNRoSH49JCnPb5jDfpdx6FW4Q29YH3vpCC4tM+RiSzg7A35tpCIFp9sk58Y5x8zdTuPHmNUQaL/XwN2XqUw+OQCPMklXPhnGMedgBcVj4H7dskQ+XJcVV+nrhDSTkut1+5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by CY8PR11MB7194.namprd11.prod.outlook.com (2603:10b6:930:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Wed, 22 Oct
 2025 08:49:52 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 08:49:52 +0000
Message-ID: <e7e2172b-1daa-4161-825b-ca3363a6ff12@intel.com>
Date: Wed, 22 Oct 2025 14:19:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/25] drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL
 for LT Phy
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-5-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0112.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::15) To CH3PR11MB7300.namprd11.prod.outlook.com
 (2603:10b6:610:150::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7300:EE_|CY8PR11MB7194:EE_
X-MS-Office365-Filtering-Correlation-Id: 056e5312-290b-4f4b-8a9f-08de1147f6bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzVLSEtnMExPTVkxR2psZmw1c0hiaWJUR3J3MlRFNzRTSUlHb1dtSXhaYURZ?=
 =?utf-8?B?T3pWTnBrLzUvSkNob2k4RTRrN1hXQlBFV3Zna2FVQmhXeUR5WktZWG1IQVM2?=
 =?utf-8?B?bDd0UEthRS9MbVpqLzAvVEF4ZW83NHdYWmtLMlAxM05uZ1RmOVpHdHFJN1J0?=
 =?utf-8?B?SC9aZVR4eGdJR25meC84cWZaTVgzakMzOHd6ampwd0w2QVhCckNBNXdzVWZY?=
 =?utf-8?B?L0xJTTNHSU96SGthdGFxSkZtM3RlUzNzL3Y3Q2t0ZG5xNytjZ21nTXJhTFdp?=
 =?utf-8?B?Z2UveDJZRnJ5Z1dMdXo4WlNhWU5jbzBSVDFXYUoxMDd6Tmord0Jla2xLYXp1?=
 =?utf-8?B?Z1pLRjhRbUdTa2VpejE3czZUd0Q3THFqK2xqcnNzanRvb1VYNGF3WXFGQ2Jj?=
 =?utf-8?B?RGREVUJXcVJ6Vjd1UzMvVUhKbFJpOXR6ZlYvbm5uN0I2dDdSQVFzMmpubm1l?=
 =?utf-8?B?UThnUm5RbU0yTEZWVWYrci9ZVXBRa3lEWWszRmFRcGNQTGNzOXNwaDRrbXd1?=
 =?utf-8?B?OGVqR0h5bHlNUmdsalh1MXBROUptYmsxUG51aEV0WjEwa0JXRGt3dUdTdjVJ?=
 =?utf-8?B?WENITGVTTEVYcGFoM3VvM2p2VkxoYjIya0hPTE1lSjdrSi9sSkN3UHpjU2Vp?=
 =?utf-8?B?UzQ4STJlSGpReUlsaFczM3h4b0x5ZVRGb0RhcS9PMi9LaytOK21BSThmN2JX?=
 =?utf-8?B?cHZlMi83RytLR3RQZEFyU3gwMHZMaENFK0pNTlRQcG02YjFLTUxPUXAvMFZG?=
 =?utf-8?B?UExSMnl3N2NZMU9hOGlmYitiNjZhQzNGS3h4MmpvKzViN0JyNnl3N1FlNHFu?=
 =?utf-8?B?OGZJUW9PNHFxK3VyczFSekQzNnRwMEtySEhUMmxVcjFuMm05amlXNmxHbG8v?=
 =?utf-8?B?TW4yMWdxUUNRMXVmRG1aajJXa3JCakFlUDJkZndvdzNBeUVuZGo0ME9pTHky?=
 =?utf-8?B?MjZ1VUIyUG1aeU5EMGtKaEVzZHN0OW9tVEQzV0VaYXJ2ajFXNy85ZitmckY5?=
 =?utf-8?B?VjdqTEFKalE1M1NsTWNscWNFVWpoQkovcE1hSytzcmVnSkdlYUFKb05Pek1a?=
 =?utf-8?B?NnNIYXhzU0JvL1d6ZVBML1R2UDZzZVR6dVpWM0RyejdSQXJxOGlqTGcxWWYw?=
 =?utf-8?B?N0M4dVdHbEh4WnNwNDBQNW1sQUhIV3ROMkQ0UDNDdi9Dc0xFU3N3a01VZnBT?=
 =?utf-8?B?R3lhRTJFd0RSczZ6WXlhOTNFdWZQL2lDSkNHOWJ3UGVMNEh6bmg0Z2E0Zk5H?=
 =?utf-8?B?ZjlGa0RYaFhsZjBvcU1GWXlOL3pGN3Q4NDhZcDVMQnZCOVRVWUN6K0tUQ1Ra?=
 =?utf-8?B?L3ZSdzU3bDlnU1pHdkk5V0d1SGVUWHBJYTErRTF5Q0RIOEtGemY1dHBtNmFp?=
 =?utf-8?B?K2FDZFdNc3B2SzJsdkdOYU14UldOQXpEb1NNbVAzeXBqKzEzZVRiTTVFV09j?=
 =?utf-8?B?REordzZmWUZSM1NKSWpoaWsxeC9rbklOaFJ6aVhlMnFrQUZ6NldSRnNVVmRv?=
 =?utf-8?B?RXFTMk9CbHpoTzRNaGlyaXRTVk83S1FaU01mS2dUbjlXUDJ6L1UxWk1hVVZO?=
 =?utf-8?B?cU0raFRPNmZLVmcyZ3kydHFseGVPdWtpeG12Y29mS0FvQUNaN1JObVE1MGlx?=
 =?utf-8?B?aFdzS1pCU0xtbnpOUjJhSzB3anNITUFWMzZHeEg2SXVWQU9lcW9COXZsZzh3?=
 =?utf-8?B?ajdtUU9McnVmVmJ0cE93b1RnWVE3enRyTkpYbk9sUVhJejBqM3JoVndxeng3?=
 =?utf-8?B?MHJjc2lrY09KMjZOSzZoRjdDUDFWaTN5L3YweE1VdC9kNmNJTkFPS2grUXps?=
 =?utf-8?B?SnBUWjZ6L2h4S0p1Y0M5RG5tZmxkWUFmdlQ1UUM4dXFaRFdoc003UDA4Tk1E?=
 =?utf-8?B?KzQyQzFhRFJpbHZSZXJmZFhUdkdqVVp2d2JLWEQ3VFF5ZnlydVVzSnUzMVNN?=
 =?utf-8?Q?03q8e0OH/K7mXy5E+Bg3u5w44GsXtCAz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUkrVmtjYkd0K2dPTEFyeFViUk1EeDAyYmRRdEtQY1N3NThGYlFXTVFWdHFS?=
 =?utf-8?B?eUNlOVVFbWRhT0ZJM0RlWFMxNlF2akJndi9CRnRtM0cyRi9ZcW5ZV25ObnBW?=
 =?utf-8?B?d0tOYVFPMG1aQkNJSU9QS3BQVzh2TlBmT2dMaE9aczYvMlJmOFJHMWdsTjhw?=
 =?utf-8?B?dThVcU5kTFE4WHFMdEdiOWhqZ3FZck9EZDdHOXowM3hBYm9HZ2piaTBwVTlp?=
 =?utf-8?B?Qkc2M0ljbmUrRENKeVNJUWswS0dyRGVISDJPSXZpUERWdXdLUWl3MlA2eEo2?=
 =?utf-8?B?UWNZVmwzZmkxQTMzOGYyeDBhdHE4STlJMG1DVlNUWEwwVHVObUtiNkJwZ1lY?=
 =?utf-8?B?c29JbnRXMVhYVW5pK3pJTzFpMk1uLzJmN0xhbERyZWJFcEUwK1ptVlF2d085?=
 =?utf-8?B?RDdEd0NSREhCWWwxYlBZZGhEaHpIZW1idTBDc2ZUSnd1dW5KWi8rT1hTRjJp?=
 =?utf-8?B?Q0FGNVR2a3dSL0s3NEhQanRRU1BJSExpb1BNbm5pSERibFNiMG9yWTVRbEdS?=
 =?utf-8?B?aVJzMStLNS9tYzBRLzVHUXlVR2lsSVEvOGk3WFdQaEx1dElsc0pJT28vblNn?=
 =?utf-8?B?N2hlcW1OTXZYVFBnc0dVSGVnRC9PTFJadGZiMjhNTG5DYjllQUMxZGpoV0dY?=
 =?utf-8?B?UHREemxoV253aWVCaSt4WWlQV3BOODlobG9OTlhaVk9CWGpuZkUzcEQzZnht?=
 =?utf-8?B?WXN1WHRIYzJML0xDcGhJYW5WYlJoamZFRVphVjBpSDVHMklFZGZ6RnJnZmh3?=
 =?utf-8?B?eVdsRVlnNWUwdUxBK2V5NjNtaGF1MEg4dTI1eGRxVnMzZEtRSWpoVkNPVnZM?=
 =?utf-8?B?dFdubGpEVTZid1BmTWsxOFZ2cDFEK1RmcFo5SGtwdVY2YWNqbzlMTFJtNVJj?=
 =?utf-8?B?RHk0ODlrT0lmd0lhcXplN1BWbGR0OUFnLzJXZWlhR0dVQkU3dC9yZlRZajRw?=
 =?utf-8?B?a29BeXd4eUFCbFQ5ZHlDQU1EMWZLaVR1cEJZUTAzblhsRXdRay9ybnd5a1hm?=
 =?utf-8?B?eWtvM1JwQmUyYXQycDhXaVlNdUtERGtyN082d3BEQUlJdVF1Y0dRdXhNMlh5?=
 =?utf-8?B?ejhKZlh2V1hEM2hSdm9uRzYvckhYQlp4WFBCY2NyRU1uei9KMXlOTFUyUjdP?=
 =?utf-8?B?YVRlY2ZWNlhHcmVXaDcxaE90eG9DWXFnVWgxUXhFaEQvQWpFVDN0cTB1cU1x?=
 =?utf-8?B?SFlWV2l6ZW5mQjlqcExZRE5aK0RiZjlkMzI0OG85YlJuVGpMY0ZGQ1BGOStF?=
 =?utf-8?B?aExWZklFZHYwZkRDdXhURU9EdWw0ZFJFU0JMZjZzWWxQUWthZ0NHVHp0dXU2?=
 =?utf-8?B?WUVQVlI3WURZQXFSdDJjTGE0eWpWbXF5aFptRVFrVFc0N2UvSkdmUzYzTGM4?=
 =?utf-8?B?VXRQNW5OWjQrem9BQSt0elAyNC9jUVFTWG9EUUcyczdXRUh2VVFSbld5ZWMz?=
 =?utf-8?B?SmZGL1M1Y2RzSHE4bS9WNHZnMHpSdWd5L1ppS3M2YXlhQlhXWXpLdEFBNFo3?=
 =?utf-8?B?TjFrMlJSUStKUElUQy9KTzV5YnF5bFBnUlhzYnBwVkFCcTk5RHptK0VjbkVB?=
 =?utf-8?B?WXVZTTdKOFFzTVZnTlFmejkwTmdSa0tVaWF5RENqWlk5ZmdkdWJqMzZ4dzN1?=
 =?utf-8?B?YWxsWGZDVEUxMlllN3J2ZFFkeXZCUU41ak5hN2RKZUJZeUlwUHIwR3BDTndL?=
 =?utf-8?B?REg0UlFQR3NtQ2dSUzN2V08xVWpIK2l1eU5vTS8yTDEwM2RyU3hyRjhuUkYx?=
 =?utf-8?B?azVjR2Q3QnVoMmpyU2NMWXFHRkVKajFiNkJvY0pBQ0pDSmFpaDJlczQyZUJP?=
 =?utf-8?B?UWl6SHFzNXdFRmZYd01uaVZDQlMyOXpyQ1BEYi9FK3JaUzBHZzd5VnJ5NVN3?=
 =?utf-8?B?SlBpK3Nkbkh6T3FRVUF5NlJEVmR5QW9Ya0ZzSXRqRTBXQkdIUEVRcDArUUZ5?=
 =?utf-8?B?bU54WjRpbGJhNFh0V0ZPa1JyWVZadWVvOU1QRmtqWENORFAzTnVKMmxla0J2?=
 =?utf-8?B?alFTQVpKNVJFYWdOaHgwRktJelFaU0ZzeEx3clVYOEVjOVBHVU9DOExJTEh1?=
 =?utf-8?B?ZEszRFJtQkhzWTl3emd6Nmk1Uk5SRS9Oc241SnZ6OEp4QmZPdjRqaXdFRUxy?=
 =?utf-8?B?bDRVK2syc1RQMUF2aXhLNGNvTkxiQlFheFJGdGI5VjIrQkkxVWNWQXRJZnpR?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 056e5312-290b-4f4b-8a9f-08de1147f6bc
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 08:49:51.9600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Q4jB5Z95Bmc50s7OvEjyVTR3zFO1BM/wo4k2y5C/oS1rj26TEBcIflv4wpht6s6OxASxCoj0zqYww0zJ+4fCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7194
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

On 15-10-2025 09:37, Suraj Kandpal wrote:
> Program sequence from port clock ctl except for the SSC
> enablement part which will be taken care of later.
>
> Bspec: 74492
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 ++---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 36 ++++++++++++++++++++
>   3 files changed, 41 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index db2b05521c62..eab49c08d7ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2585,7 +2585,7 @@ static bool is_dp2(u32 clock)
>   	return false;
>   }
>   
> -static bool is_hdmi_frl(u32 clock)
> +bool intel_cx0_is_hdmi_frl(u32 clock)
>   {
>   	switch (clock) {
>   	case 300000: /* 3 Gbps */
> @@ -2612,7 +2612,7 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
>   {
>   	if (dp && is_dp2(clock))
>   		return 2;
> -	else if (is_hdmi_frl(clock))
> +	else if (intel_cx0_is_hdmi_frl(clock))
>   		return 1;
>   	else
>   		return 0;
> @@ -2706,7 +2706,7 @@ static void intel_c20_pll_program(struct intel_display *display,
>   	} else {
>   		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>   			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
> -			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
> +			      intel_cx0_is_hdmi_frl(port_clock) ? BIT(7) : 0,
>   			      MB_WRITE_COMMITTED);
>   
>   		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> @@ -2766,7 +2766,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>   
>   	val |= XELPDP_FORWARD_CLOCK_UNGATE;
>   
> -	if (!is_dp && is_hdmi_frl(port_clock))
> +	if (!is_dp && intel_cx0_is_hdmi_frl(port_clock))
Would it be better to move this to a different patch?
>   		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>   	else
>   		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c92026fe7b8f..b111a893b428 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -43,6 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
>   int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>   void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
> +bool intel_cx0_is_hdmi_frl(u32 clock);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c65333cc9494..8c6f60d9e0ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -108,13 +108,49 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
>   	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
>   }
>   
> +static void
> +intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state,
> +				    bool lane_reversal)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	u32 val = 0;
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
> +		     XELPDP_PORT_REVERSAL,
> +		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
> +
> +	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> +
> +	/*
> +	 * We actually mean MACCLK here and not MAXPCLK when using LT Phy
> +	 * but since the register bits still remain the same we use
> +	 * the same definition
> +	 */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +	    intel_cx0_is_hdmi_frl(crtc_state->port_clock))
> +		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
> +	else
> +		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> +
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
> +		     XELPDP_SSC_ENABLE_PLLB, val);
> +}
> +
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->lane_reversal;
> +
>   	/* 1. Enable MacCLK at default 162 MHz frequency. */
>   	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
>   
>   	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
> +	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
> +
>   	/* 3. Change owned PHY lanes power to Ready state. */
>   	/*
>   	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
