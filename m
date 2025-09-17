Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0FDB7DC57
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473AA10E19F;
	Wed, 17 Sep 2025 10:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCBUTPn/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7C010E19F;
 Wed, 17 Sep 2025 10:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758105536; x=1789641536;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZGymiMihxS2ulmc1rDiQ6hgOBtK1otH/9Sh4XIV8VoU=;
 b=eCBUTPn/9/7RUDLjlzn4YGkXg3K3mKvEhpwCFALV9Jfx2eDnYz0OGMka
 W0mPPDSmpcXWtldpT4yv5jwZepUsKwzGSk0ox3Ku6u8/TNTXtowsbEJ9Y
 qiMLRQHWqe8FjGSGsAz5Muz7YkkXO6qRG1bH45HawBzi3ug1ph/bJjx1g
 SsJI+Z7tB2Fe6NOhnAvaIyYduNJ2yOAJsPcvV8GQKGdf02zatD5L87Xgx
 GBBbOAJ8lMHtKN5sYhtf71T7rNfPqcocxKkgKIyzvsrTEUyaUwjBMm5Z+
 apDXQ0/MqgUe4rPx/6OoQIdoGZURYup+S1nfaSTum0XUaRotufw0D+5GZ g==;
X-CSE-ConnectionGUID: kId1s8lWQBCEvYJlzGreYQ==
X-CSE-MsgGUID: fSA9saZ3SwGyUOj+iBQPQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60100180"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="60100180"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 03:38:55 -0700
X-CSE-ConnectionGUID: t5JCymiySl2ivQi3deUF6g==
X-CSE-MsgGUID: PBCC0gSuQkeHBWvUtD4iNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="198888930"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 03:38:55 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 03:38:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 03:38:54 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 03:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZzvLudVLS9EVTCvjEjdC5JqX4W8Po5LP2pQoBbGlx+8Fly0mWfXRTm2g9ck25kJfCG6J1YaH3YqoHpo3bAN8gMgkppr/OXZhWLD4vZGbX3ec/yx/djjqluJ7egTUxW8EA1pYJG0ayjKWLEzpYMJNy8WItCN5YbB4kAAKEFnHmeEovF4eMnud9PPW9w0mZZzcrJ8z8hbLqfRkB+SU7+fNNM015Eb/xNk4Woxy7NXsAI5Mo4yNeHe6NoK28Z1E3tU/atudYNENy6EGZnzgX+M1+l6DmaqHVgUYKHuW1chnq35eHlxaJh3bH57XeWothFd7ziCdQD+EekVQYYU2Py/aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5h+MKiNC18ebMNleSx3f9sRJqViHhGQj4CjmkWQ3Dpc=;
 b=u/hu7gO3eBOFEX/Hky72LqlPw24albhjO7u8jdjFbW+4szNdAyimhT/hYCgpifZNKF/B+1hzyl7xZbtp8tsgFh2t60YMOQtdBL5XG5xLwAtNdIJ8X7Dnwul1D8aDV/OLM+IlZnOUmomSUkcL8tXxYkMogMvNHgO1rXDWDZE310ES/IyAieTmhtdm8q64vcvNP9mJ28IGccDSsRMUKiNCz2W9+kJRxr8GDgKQVXEo4fZK+o2yjWSofSoTU9hIwZRLUEX6VJglLAsD0HWTYxMnDoFPb3bohTYgxzj7FgzY+BURv6li8LoFSwfKd0YgrRNTQDSbCu06QItn/8FtojsuPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7769.namprd11.prod.outlook.com (2603:10b6:610:123::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Wed, 17 Sep
 2025 10:38:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 10:38:45 +0000
Message-ID: <bc897dc1-b98e-4ba3-b6d3-474cd156b581@intel.com>
Date: Wed, 17 Sep 2025 16:08:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
 <aMLb17oJa__bPVoA@intel.com> <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
 <aMgHS992-0aZ8FIb@intel.com> <3328d2c9-e398-4097-a3de-fdee441fa50d@intel.com>
 <3f1d3ce2-fb8a-4576-a74a-cd8b59a016fc@intel.com> <aMmy79ka0CgBrLmf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMmy79ka0CgBrLmf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7769:EE_
X-MS-Office365-Filtering-Correlation-Id: 3dff72b9-610b-4e4d-b166-08ddf5d66110
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N042VkErKzFNRmFyaDdVQ0RhTXBDWC9OYUsyMm45SDViejFlaG9hRjRCUU5w?=
 =?utf-8?B?NEVlaXJYYUJ6ZmNEVzlnS3RwSWxUbjUyN0JlSUg5dXFIVmJ3SFFESFk4SUll?=
 =?utf-8?B?UG1LWXBQdCtla21sS2tpZ1Ryb20yTHgxWkRQcG1ad1RxcW5oZEpObGNrZk5v?=
 =?utf-8?B?cDlUU1F0NlkvT3ZweXdlWTRHM1p5VHRhc1NPOE5ta2VxNnIyTlV3UFI4WWI2?=
 =?utf-8?B?UUlCMytiN0h6b3BVNUZXYUhZa0lDbVB2QWZLUWFONmRhYTc5TmlrWUFhMnhP?=
 =?utf-8?B?NTl6ZERDZ2kySzI4ZnFocmNGVHQzY2JDdXFRb2h5REJVUVZBeGZ0aWtSYzZO?=
 =?utf-8?B?UERBVWlJV29UMUk1VjZmQklqN1o3cXdHQXNDUk40UTVCTTNteFlPMXR5UWo3?=
 =?utf-8?B?dTA4M3I4bEErWkZQS1FSRkdSYWRxLzJ6UHg5ZC82MUlCZmVRKzBqTEJtOFRM?=
 =?utf-8?B?UWZhVDJRbCtBNGdhVkxEMVRXL3hQSlhJcUYvRmdhK1J4WFJTTVdpVXp0MFNu?=
 =?utf-8?B?TnJwSUplOGEzMThYaFVwSGNaR3YyNmlUTDNuUEE5RmR6RjNwck5ZV3p5UGpw?=
 =?utf-8?B?QWd4YzNsZEJOU1dHcmR6SXJuK2RWSW9jT24rRVhjRjlUUkZRRkovWjJPamxI?=
 =?utf-8?B?ck1pbkRPQTZpZ2dwVm15MzBETk45UlErcmVndlA2dkdHVFNGOEFYbkdXaGcx?=
 =?utf-8?B?Q3RKdUJwTGx5Nyt5cTdiZzNiSWdFSFllTi92WW0vY1VYT2V4ZnMrY1pQQkxa?=
 =?utf-8?B?UVVKc1NSMTdjWFdjYUJGNnp6Q1JZcmRCZG9UVG1YMmhCaUphTSszR3N5YWxJ?=
 =?utf-8?B?bTQ1VzBNMlM0VG1oLzVVeEwyMjgyMWVXd3E1SkNaSTJ0alVRRWhWMFhURXF6?=
 =?utf-8?B?aUtOZ3ozbnBBQUREeWc2aml1L2x6K0RONlpsbHlBd3ZGcmgyZklUZUVIa2xh?=
 =?utf-8?B?UXJ6SkdkcmRUcldhUnNHRWFsL0RSb3JGZkNGQ2k5amprL3ZXWEhVT2dXRXFl?=
 =?utf-8?B?K0dYelU4VmdDRWFMZXA3ZmwrTWkvSnVrK00wSTBDR0ttVTMxS282ME9BZmNN?=
 =?utf-8?B?eFBJS2tjcUdsLzZIbVljTWswS1BBV1BYeGM0SkI4dzZ1citQMGZGdE02UFg1?=
 =?utf-8?B?a1hDWkdJYVpPNWpRNVc1ajdPVlR2N3ZhKzBmb016L0pXeGtPYmNnOTZiZC9z?=
 =?utf-8?B?UjRMTGdxNnRMeWZUenN6Wm1JNGM0ck1pSGFXSlNad1FYanFGVzErTys3N2J5?=
 =?utf-8?B?eWgxbnFLemYvc2x6c2gxeXJ1Y1J1enRFSkhlREgrcmFmc0FJZzhpamJOTlk4?=
 =?utf-8?B?QTFaUVl2NFB2K09yTDJEQ2ovb1BOaHJveXhycWNEQk5mUVp1V0lIbUNYRmtB?=
 =?utf-8?B?WkNNaEhFbkNLZEZQdW9meE50UDloK3BrbFJXUE5iRHVxejJQbE5vWk9lYkRV?=
 =?utf-8?B?OHRzeHY1MkUrZ1hUNkNDSEdKL3dyNHUvSWprZlhTaFllcktZUEFYN2Y5aG5W?=
 =?utf-8?B?aFRMdEhxdmxOZXRrMmtxeDd6VGRibUNYLzl5OGl3aUxjYVgwSEcwUHRXeWlp?=
 =?utf-8?B?azkwT2h1cGFpQjNVVkwrMGtUZHFzU29SZHVVQTgxOVN6WWtVWEY2M3JKTUl2?=
 =?utf-8?B?Qlg2WVNkejc2L2JUeGtiRzVuc3pRN3NvaUQxeURqMjl3SG1uRjlDemYvUFpF?=
 =?utf-8?B?Z290OGZHamh4ZHQrQTZGK0did2ZwZW1oTXQrYlRGWXJFTmQzNkp1NGtRSmpq?=
 =?utf-8?B?L29iNlFBK2dsbkFNazV6VkN3VW9hVEdjM1hiNVpOWVRTM05mcW1DVVFEVEhn?=
 =?utf-8?B?N2VIOXV2ZWk1S2VicjFTQnhoVWFkUXlRbFNFTTRDTG9PQlVDang5R3VISE5H?=
 =?utf-8?B?MUNPTHZPdFJZYTlXYUNtRy9oUzU0c2VKZDkvdk80VW9JTWNCQWNFSk1mNkY1?=
 =?utf-8?Q?o7453MiM7Nc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OG9yV3o1V3piUFJoS3V2VWZnU04rSEUweDBiWjJaN2NMNjFpVEsxNXJVaXJM?=
 =?utf-8?B?cGgzTm9BQzhya2RVbmlpZmk3SDFlSDFsMjBEMzRoekFuRURZRVAyb1pHRFJE?=
 =?utf-8?B?dy9McURsQWNkbjFSVDhJZmw3b0pORUxLaUc4NG5GY2szMkVjMzB6Wm9pcHZE?=
 =?utf-8?B?Uy9Nb1kwRTlCbTBMYzh4R09aNmZKRUhLbUlScDhGN3F2ZGU0MEM0WmYwS0xU?=
 =?utf-8?B?ZnZlelI4a2NiRzBPOHNZWUhwSE8rUG81ZzlMNzZOOGRoNVV3V0JBWFE2UHlC?=
 =?utf-8?B?U29hL1AvdUVaZnpRSEp0MzM5MUJHS1N6MzlpcVNUYWRvL1krT2xyeElBT3RM?=
 =?utf-8?B?czNsb2JqTW9lQk9hRWsxRFlWUnVDbCtyQXFpVU5mMmN1RW5ra0JhK3JydEZx?=
 =?utf-8?B?aUZGVnQ0blAzek9PSURnTWRCRUF0aytDU083cWxGV0xlSWJCVHM2WmN1Ly9S?=
 =?utf-8?B?S25XNXU0dzBEM2ZXNWYrQUNVMm1HcVBmeGxtN1F1NGp6TitjME92VHhqbzRv?=
 =?utf-8?B?QnJnSFRCK01nMStYNmh1cS9oaEwwMUV0ZjgxaGNVL242di9BNmFvejlnL2k5?=
 =?utf-8?B?eTZlK2hFalJkQkRSMlRuRTZZeGZ4bXpiU1dzWmtJQ3FZY1FRZm9OdUF6b0VP?=
 =?utf-8?B?QWQ3WXJYQ0g3Z2hpTDRZZEsvV29BK0lCNnNJalB1a1pDQ2I3bmtjSncwbFRO?=
 =?utf-8?B?czcxb1FQcjA2ZzBqZzY5Ykw1UWFkR1BaUXhhbjcydjlzZFhKa1llRGJRbkdU?=
 =?utf-8?B?UlZHYXJ0SFh4WlRRaXkwTDNWTzA5UmpMd1UvUDZSNXpkbHdkRTRXNXd5ZUEv?=
 =?utf-8?B?U3BIZC9KS1FsUFZEeGttZnA1MnU4YSs5dzB2eXFNQnVrdm82ZXZabU84WHA3?=
 =?utf-8?B?dWVlVDVZeW9GUUl6VVFxOTNPRGZUL2V5ZUFSZXMyMEhWUGM3dmx4SWRrS1FD?=
 =?utf-8?B?L05Kd0VLbTYvYnZkVlB2WnFUNG1uQnlYK1h0WGxnZ1F6ZWx2alNPZ3pkZmZR?=
 =?utf-8?B?cTZ6cmhhVnhrV0RJV0U1ZGpBY0JkdXgwVWFEZ2FVY3J0R3FpZUtxRDlpei9h?=
 =?utf-8?B?TFh5dk93RFhJNWdoQWtCTHRSNHNPaTNMTUx5S1NXcnVvQnFYRnlibmRTNzBz?=
 =?utf-8?B?YmJhdDNKdTJPcWQ3WWNGbjNKaGtKNW91Q3ZWUjg5RmVZbnA0YjA1WERNQTVp?=
 =?utf-8?B?cWFWR1hhNFA4TTVYaXZmdWtzdE5GNStFZWdqV3dJTzN6QVlUNC9CR2hrcDZG?=
 =?utf-8?B?Z25SWTNidENZQlhRM3FHQm92d3pIcjdwM21ReDhmNFY0Vndhenowc2VkUVQ2?=
 =?utf-8?B?YnQ3eUVIOVdQVGpCdSt0NU1OcXFmaVp5dmF2Tm16cWFPSHoyKy9qcDJvZ2h5?=
 =?utf-8?B?M3VXbmRmbW40andwczlGUitsbHhuMVFVZFJ6dWxsZGlaSkt2WXBCWE1NSmxt?=
 =?utf-8?B?RWdzQmgwTjM5bE1tYWNHYW9BQ0x3VUFSeHlaRktWTnJaVWZyZlMybE5NdUJM?=
 =?utf-8?B?TjJoM1owci9iSHhZZU5nY09na08wdG56MWtqRS9mQk9WeS9JQm8zRGpDK0ln?=
 =?utf-8?B?dHRCMnQ5WENXZ28xSWg1YTVPVlRhRzJ3V0s5czVZNHlVcUhtcWV4WEtGVnV6?=
 =?utf-8?B?V3VPTjJXVFl5bUxoV2VReGdrK3kxS2hrMTB0T2NxOTFSMDBQSXJPN2hTbnJt?=
 =?utf-8?B?d00way9HV3I1YkI4Y2ZBeFNpZzUwL0hXVUUvTm9hcC9EbzFFMTY0WlNGaWtk?=
 =?utf-8?B?UnM2OERYRjZZdTNUY2swNFY3V09vT1dYVEIxOWxTTUgreXZmTTVIc05jbERT?=
 =?utf-8?B?azJhQmZEQ1EwMTN4cksxRzhBWEphYXJ5RVYyQjNlQ29EaVNudmR3RzdWZHA2?=
 =?utf-8?B?bFhDajEzd1pWRVc2Zjd4d3V5SXgzTTF4VmpoczZ3bno1ZWp5V1JDV3FFWWlw?=
 =?utf-8?B?RmROdUhVbVdLdlMzODV5SHlWV2lvcmtBTTJkSld1aDVwLzRONko0ZkJCSzdC?=
 =?utf-8?B?a3IxSTlHK2RqdE5JZmFuTXExVVZ5NFF1cWR3SnpLVU9LclBuZCtibWd5cThZ?=
 =?utf-8?B?R1MzdkVDY0t2MUNCUlpmSlpvTmo5Y1JFc2ZLY1ZxK0RjQ3lUNDFoWmtCeTBZ?=
 =?utf-8?B?eERZMkdUT1JoVXZwcEN1bWFTU3YxN3RCVHIzYVdIdk1PK0RBR1BuMVloU3hO?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dff72b9-610b-4e4d-b166-08ddf5d66110
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2025 10:38:45.8012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QUlsZTIgMTTZl4/pfFnG/XHMoj8/VICXEnI6+fN0ahy9w5CHUh1AA5Uvbh9qZCAF/48ayaCXmZQT36vXAGgALan6BR5rsLmlqtk7tR0J+Js=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7769
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


On 9/17/2025 12:26 AM, Ville Syrjälä wrote:
> On Tue, Sep 16, 2025 at 08:08:01PM +0530, Nautiyal, Ankit K wrote:
>> On 9/16/2025 8:00 PM, Nautiyal, Ankit K wrote:
>>> On 9/15/2025 6:02 PM, Ville Syrjälä wrote:
>>>> On Sun, Sep 14, 2025 at 11:29:10AM +0530, Nautiyal, Ankit K wrote:
>>>>> On 9/11/2025 7:55 PM, Ville Syrjälä wrote:
>>>>>> On Thu, Sep 11, 2025 at 08:15:50AM +0530, Ankit Nautiyal wrote:
>>>>>>> When VRR TG is always enabled and an optimized guardband is used,
>>>>>>> the pipe
>>>>>>> vblank start is derived from the guardband.
>>>>>>> Currently TRANS_SET_CONTEXT_LATENCY is programmed with
>>>>>>> crtc_vblank_start -
>>>>>>> crtc_vdisplay, which is ~1 when guardband matches the vblank length.
>>>>>>> With shorter guardband this become a large window.
>>>>>>>
>>>>>>> To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl
>>>>>>> value to 1
>>>>>>> when using optimized guardband.
>>>>>>>
>>>>>>> Also update the VRR get config logic to set crtc_vblank_start
>>>>>>> based on
>>>>>>> vtotal - guardband, during readback.
>>>>>>>
>>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>> ---
>>>>>>>     drivers/gpu/drm/i915/display/intel_display.c | 36
>>>>>>> ++++++++++++++++----
>>>>>>>     drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
>>>>>>>     2 files changed, 38 insertions(+), 7 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>>>>>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>>> index 55bea1374dc4..73aec6d4686a 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>>> @@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct
>>>>>>> intel_crtc_state *crtc_state)
>>>>>>>         return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>>>>>>>     }
>>>>>>>     +static int intel_set_context_latency(const struct
>>>>>>> intel_crtc_state *crtc_state,
>>>>>>> +                     int crtc_vblank_start,
>>>>>>> +                     int crtc_vdisplay)
>>>>>>> +{
>>>>>>> +    struct intel_display *display = to_intel_display(crtc_state);
>>>>>>> +
>>>>>>> +    /*
>>>>>>> +     * When VRR TG is always on and optimized guardband is used,
>>>>>>> +     * the pipe vblank start is based on the guardband,
>>>>>>> +     * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
>>>>>>> +     */
>>>>>>> +    if (intel_vrr_always_use_vrr_tg(display))
>>>>>>> +        return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
>>>>>> What are you trying to achieve with this? As in what problem are you
>>>>>> seeing with the current SCL programming?
>>>>> In VRR TG mode with optimized guardband, the guardband is shortened and
>>>>> vblank start is moved to match the delayed vblank position.
>>>>>
>>>>> The SCL value which we are currently writing as difference between
>>>>> delayed vblank and undelayed vblank becomes quite large.
>>>>>
>>>>> With this large SCL, the flipline decision boundary which is given by
>>>>> delayed vblank start and SCL lines is same as the undelayed vblank.
>>>> Everything should match the undelayed vblank.
>>>>
>>>>> It seems that intel_dsb_wait_vblank_delay() (in turn
>>>>> intel_dsb_wait_usec()) does not behave correctly within the W2 window
>>>>> (between flipdone decision boundary and delayed vblank start).
>>>>>
>>>>> It seems to return prematurely. Since the push bit hasn’t cleared yet,
>>>>> this leads to DSB poll errors.
>>>> That doesn't make any sense. That command is supposed to simply wait
>>>> for the specifid number of microseconds. It should not care at all
>>>> what is happening with the scanout. If that is not the case then we
>>>> need to write a synthetic test to reproduce it, and report the
>>>> problem to the hardware folks.
>>> You are right, on debugging further I noticed that
>>> intel_dsb_wait_usec() and intel_dsb_wait_vblank_delay() are working
>>> correctly.
>>>
>>> Due to large SCL, the the intel_dsb_wait_vblanks() is not waiting till
>>> the undelayed vblank but the safe window, apparently undelayed vblank
>>> - SCL lines.
>>>
>>> We are setting DSB_CHICKEN_REG bits 14-15 : which says: Wait for
>>> Vblank instruction will use only safe window signal from dptunit in
>>> DSB HW to complete the wait for vblank instruction.
>>>
>>> I am not exactly sure if its mentioned in Bspec that safe window start
>>> = undelayed vblank start - SCL lines.
>>>
>>> Observation:
>>>
>>> For example with eDP panel VRR range 40-60 and below mode:
>>>
>>> Mode: "2880x1800": 60 347710 2880 2928 2960 3040 1800 1803 1809 1906
>>>
>>> Before optimization:
>>>
>>> guardband = vblank length = 106; Undelayed vblank start =1800; Delayed
>>> vblank start = 1906 - 106 = 1800
>>>
>>> SCL = 1800 - 1800 = 0
>>>
>>> Flipline decision boundary is = 1800
>>>
>>> After optimization:
>>>
>>> vblank length = 106; guardband = 38; Undelayed Vblank start = 1800;
>>> Delayed Vblank start = 1868 (1906 - 38)
>>>
>>> SCL = 1868 - 1800 = 68
>>>
>>> Flipline decision boundary = 1868 - 68 = 1800
>>>
>>> Consider lines in  intel_atomic_dsb_finish() :
>>>
>>>   intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);         /* If
>>> flip is earlier than 1732 (1800 - 68) this waits till 1732.*/
>>>
>>>                  intel_vrr_send_push(new_crtc_state->dsb_commit,
>>> new_crtc_state);    /* Push happens immediately*/
>>>                  intel_dsb_wait_vblank_delay(state,
>>> new_crtc_state->dsb_commit);        /* Waits for duration (delayed
>>> vblank start - undelayed vblank start) ie. 68 lines ie. till we reach
>>> 1732 + 68 = 1800*/
>>> intel_vrr_check_push_sent(new_crtc_state->dsb_commit,     /* Push is
>>> not clear yet as delayed vblank start (1868) is not reach yet, we get
>>> DSB POLL error */
>>>                                            new_crtc_state);
>>> intel_dsb_interrupt(new_crtc_state->dsb_commit);       /* DSB
>>> interrupt is fired earlier */
>>
>> Sorry for the bad formatting, perhaps this will be more readable:
>>
>>
>>    intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>>
>> /* If flip is earlier than 1732 (1800 - 68) this waits till 1732.*/
> That does not seem right, or at least it's not how it works on LNL.
> I just hacked some DSB_STATUS stuff into intel_display_poller [1],
> and when running that on LNL the safe window always starts at the
> undelayed vblank.
>
> So if we look at the vmax case then I think the diagram should look
> like this:
>
>      udelayed vblank
>      ^               vmax decision boudnary
>      |               ^           delayed vblank
>      |               |           ^                 vmax
>      |               |           |                 ^
>      | <- stretch -> | <- scl -> | <- guardband - >|
>       _______________
> ..._/               \______________________________... safe window
>
> ... push affects curent frame ->|<- push affects next frame ...
>                                  |
> 				v
> 				push send bit clears if set
>
> And then for the maximum vrefresh case (defined by flipline instead
> of vnax) the "stretch" part is something between 0 and
> delayed_vblank-undelayed_vblank, depending on how we configure SCL.
>
> Additionally if a push is sent during the scl window just
> after the vmax decisioun bondary, said push will still affect
> the current frame (ie. such a frame will not have a full
> scl/w2 window). Only a push sent after the delayed vblank
> will in fact get deferred to the next frame. That particular
> scenatio isn't really described in the bspec timing diagrams.
> Though since we always precede the push with a "wait for safe
> window" for us the push would get deferred to the next frame
> anyway.
>
> Now, I suppose PTL may have changed how the safe window works to
> support that "SCL during vactive" stuff. I think a bit more poking
> might be needed to get to the bottom of this...
>
> [1] https://github.com/vsyrjala/intel-gpu-tools.git dsb_status_poller

I have tried with same eDP panel with PTL and LNL.
I tried my changes where SCL was programmed to 68 in above setup.
On PTL it does take the safe window as undelayed vblank -SCL.

I also tried without my changes, but just wrote TRANS_SCL_CONTEXT as 
0x44 (68) and got the same result.
Which is similar to my observation earlier.

With set context latency as 0 : we get undelayed vblank - SCL 1800 -0 = 
1800
[0] 1798 - 1799 (1799)
….
[0] 1798 - 1799 (1799)
[0] 1798 - 1799 (1799)
[0] 1798 - 1799 (1799)
dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1798 -   1799
dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295

With set context latency set to larger value eg. 68 (0x44) and I am 
getting the safe window start as : 1731 (which is around undelayed 
vblank  - SCL i.e. 1800 -68 -1 = 1732)
[0] 1730 - 1731 (1731)
….
[0] 1730 - 1731 (1731)
[0] 1730 - 1731 (1731)
[0] 1730 - 1731 (1731)
dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1730 -   1731
dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295


For LNL:
With set context latency as 0: we get:
[0] 1798 - 1799 (1799)
[0] 1798 - 1799 (1799)
[0] 1798 - 1799 (1799)
[0] 1798 - 1799 (1799)
[0] 1798 - 1799 (1799)
dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1798 -   1799
dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295

But with set context latency as 68 (0x44):we get:
[0] 1798 - 1799 (1799)
[0] 1866 - 1867 (1867)
[0] 1798 - 1799 (1799)

[0] 1798 - 1799 (1799)
…
[0] 1866 - 1867 (1867)
[0] 1866 - 1867 (1867)
[0] 1866 - 1867 (1867)
[0] 1798 - 1799 (1799)
[0] 1866 - 1867 (1867)
[0] 1866 - 1867 (1867)
[0] 1866 - 1867 (1867)
[0] 1866 - 1867 (1867)
[0] 1866 - 1867 (1867)
dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1866 -   1799
dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295

I am not sure why for LNL I am getting 1866 though.

To sum up there is indeed a difference in safe window start based on SCL 
lines for LNL and PTL.

Regards,
Ankit


>
