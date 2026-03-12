Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHniBF4vsmmzJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:13:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B7B26CB10
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5C310E944;
	Thu, 12 Mar 2026 03:13:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UlnMJpo1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF7910E944;
 Thu, 12 Mar 2026 03:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773285211; x=1804821211;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ksDScETMbyVuImIekyF8G72vZYR67ycbX3+wZ4g1KKU=;
 b=UlnMJpo1Nkp7AVphczrh6Ob9eOol9eTStsx9p5eMn2zhxQuQ7EiYeAlJ
 dwAWKAEGtoeK20dG6smjsZxbsP1oFPRw3b1HR8ozeTSmBR+tbwgxwl7wK
 G10zoR0qo7fgZCacHKBjlhonMtJlD6S7MQYtnEuVdPEB5RmfxM04a6rLp
 3IA/Q/L88lIacj3gfPh1fFXhUUbUFVfPOcoR/deeFjm2mYC6uROyrVr3v
 Fbe8HpnbOBhEhCvKkF5GphlaTN1bOrJO5c87TfxHT/C6MezAHrkGJPvnp
 4JL4FlAZcyVinZn4f3UJu0h/b4a6RwUi/Q5GMLbWhQwYxJ2StqEte72gN w==;
X-CSE-ConnectionGUID: HgnWkmlaSIWbyACReZ9u1w==
X-CSE-MsgGUID: fXlCMRGZS/Gs9mPAT2lkPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="84686436"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="84686436"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:13:30 -0700
X-CSE-ConnectionGUID: s/Tl9WNQTfqDoXYlR0Bk+Q==
X-CSE-MsgGUID: nHX/l0ZNQ/m5rWDdeBgs4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="219946133"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:13:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:13:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:13:29 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:13:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ISB0CE/8CgmMKiJFvV7zMGpx1rf/dZ46wj7BXlJNS/FHZieNCTAXFe+4YbuuRy5ZLiiLQ/4ankqN+sctI9YH+rEv00sIiTqGGST/oXgLWMuOMn6SzHNhd96KnSkdqo/ZqTFJj7K4/K2VMtVuVtai6KYbsXgrR7Aj2+ajCgVxvOFkXwBPH8/0wTMc2Tq/6qQ4MFM8/hCXW/xOw4QFo/ik2C1dmRtqEi9gFJjMRbajp2LizBoiT6U2eC/DoA/u108oar1i7tYXocm4nLiHd7xtpqkN5BfRX4PGCQhhshlODDRo9s1fi8hEP5zSYeF4/xCBHO3TlU4e3/1/NgASxqFCtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DfLKSXOj3eHLX6jFFcyLsP0YYsRIkGpaacXScGRKIGE=;
 b=CoZ7GkDtpa6tQOb65OO+iCo6+t9zUTnEHSRkWBP9M/YAMxlvz9BOV5ny0xy4m6Xpneaw78wMXTtaDB00o9rIMzzRTfu+UTh/KwxiqA4fmA1tQLbQju5qPswOe5ZfrQ4Nn+8rxd77kjE3PwMzGgd219ikN4fABU6KoFzDAQcJLVKqKVTPts3W+746pqa60iXjumfHukx5EQjqhH8D0ZgxzPCZD13JksZ5to7cXtFOSh3uKiFr1XYkizHXiMtKxNYwD/RioamSgzPac+dIzVnxjJfmRj0YgKh4579OlcFD6T3weAbo0z02F0PRClXrKrHB9LUYUnI4X1JlNJC1RbDcDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB5799.namprd11.prod.outlook.com (2603:10b6:303:181::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Thu, 12 Mar
 2026 03:13:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Thu, 12 Mar 2026
 03:13:21 +0000
Message-ID: <70c9125a-e553-4fa5-adc4-ed4012b013ae@intel.com>
Date: Thu, 12 Mar 2026 08:43:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/display: Move casf_compute_config
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251223081300.1196417-1-nemesa.garg@intel.com>
 <20251223081300.1196417-2-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223081300.1196417-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0168.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB5799:EE_
X-MS-Office365-Filtering-Correlation-Id: 83658305-5bb4-4a00-9662-08de7fe5509e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: YpJh8rJkw5f2Ky1BHOm4vqvNLYMWMpE3XS0PtvZSJEBpDfq/d/fZsyuBQnWxm4TJOKFKyenhw3yfsEYU31GRp9eEB6qmeE5BnXsOgcVaZe8LkSmYoXF/emuLQMjT+Sjkt/KAu84zlwZvi3P31L5nNGF3Hi/uEFykRplWNOMmPgQWclZNDbjIC0fqivC+vL/G4Z6/N0xeDucskZcA8i8wdpu173H+oSYyzwvAc1SyTOKdXmYAUQIhKmX8p/POLCcA3f7S63qWH62zSmIXdv7xyyWNIneGqMLIbObrSz5XzHtOH3czvmfncOR1bNQNskiAdMd0KJtQ01zKrCqdZipGiZWAhli1eaqeVj4OI22YJ54noZLQxqlMMN8EyuOuEFIUCxGzCMUivZBtQiNRQbGe3k2OBHNlYIokKZA5T4mpmrDLWTJqxSdR1KElufmdGuf1dDDqCQnpk6eUK5h+asvYwlY8k1do1tXokDKplxE7T/XgOKJxd5/yJk6Z1YSHOMc99jv714P4Xsj9BSpoB4iuPk6i8k//9lY9oO6UFJXt7bkan/K4jNJ46p1uiWG0ZUpoWPhU+ScBfhAva/KwD+5pXlmzDhonEnMYZEhqP1AvkQEZ74SRjg9rQlB4J6nrOtyp9oVmQCaethKui70U9dclAoMAqu/7v/HpvhF/A8a9Vmk571v4+2msy685tGGhfShwioCMYa7iyi0f1Ne+xp5VNm2Xx4lFfpXXW4X/ZlBXJSE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enJwMEVvbEhGZDlVdC9QVnpCeUdPN1ZsVjJaVURnYTdrYjJzU3lBeEJoUVRt?=
 =?utf-8?B?RlZ1Q1ZraHlleG1FL2N6dDZNRHQ4ejF2MmhyY2RlMmYzSWg5cEM1c0JFU24y?=
 =?utf-8?B?azNka25qcHNPa3FkVXdWcjdjOU1oT2tmOEk4Rk1Ld1NQUnVHK0tIYUw2VDR5?=
 =?utf-8?B?N1lDS3BabkZieWhzRTRJRDJReld0MklCSW1pdjF5RGlhYk1IWGRWZTUyV1F0?=
 =?utf-8?B?TzhaUGtLTlFNeHBzQVVIZHVueTJUMnNFb2xhK0dFS1pGMDlUVlNDbVROaC90?=
 =?utf-8?B?YVN0UkJyZDUwWFYxVjVVSUZxNXZrWGVaRitoN25BK3krYUNrRlNMOWxOczFa?=
 =?utf-8?B?MWZjQ0hNdnhmZlJrZGxLcEJnalQ3Vmp6NGh5eEg1VEJIRVpWQ2Z4Um15cms0?=
 =?utf-8?B?Z1A5ZW5BUFUyOUdKdUpSWVR2VGJ6RHlPcFhRZVBiUFVrQ2lvQjR2Rmx4U29w?=
 =?utf-8?B?N3JoNzhHNjhEeDdiMU1Kd0tJc3FsQVdoMUlzOEtIR2c5UGYya0RnSGNpR0NZ?=
 =?utf-8?B?N1V5V1IvTGhnblpORHp3UnRteVF2TG1UeGtLcVBFTmxXeU5QZFRqTjhHUXpS?=
 =?utf-8?B?R1hpU0Y3dEpON2JwZksvTlUwZ3VDb2ZiVi9CeDJzZmlMVGVMSmdCVUtLZ0hG?=
 =?utf-8?B?WTVybURkYkp3NlNtR1o0UklkRzVVVjJkb2VRYTdTL0JVZWdwd1d4WFdaS2Qz?=
 =?utf-8?B?TXhrbmlKRGQyOG9hWGxCM1NORlF2d3hzV2twQzMzdXc2c0V0TENFR0NtWCtU?=
 =?utf-8?B?VHFPbmt6M1hhdWVnQ2ZMR3RoUWlOaERORnJacWZ2THZKTFh6aDlyMGJKTjZQ?=
 =?utf-8?B?VmRoZE01cnRSTUlmSDBla2Q0UnFEOGVSNzQvT3dLeGw5M240TXJjMFdiTnhu?=
 =?utf-8?B?cDBkY0xyTHlRcTZKNk1FNk9hQ0FudU9pVzZic1NtTEc0NUZkc3VaU2lvUExC?=
 =?utf-8?B?R0Y1VjNtZEhacFo0SWc0NmZPU2FHd2pLaVBxS2hwNkJIUkxrN2cxTEZkcXJV?=
 =?utf-8?B?bkY1TkpSYmtBcWdxOERLZ3UzdzYvU3RuZ1FaMm5SUDdtaGlmV1hrdXFMSXdK?=
 =?utf-8?B?QlVuQi85TDFwQWJHTWcwWGtpMzRRY1lEV3RScW9seGtjanZ2SU8rS1Vtbk1D?=
 =?utf-8?B?dk9USnVIZ1JWd21QdUN0Q25zNXNXb2RLWXZiY3lLb2JIUURzMHVwUUVMd05L?=
 =?utf-8?B?Wmc5T1FrMHVkaEc5YXlQUU9Ra1hjWTNSVGNuZHgvVE5RQjlqV0VpanY5MFlk?=
 =?utf-8?B?MEplc2wrMnNMZFpPWHo4cGR5TUtwdVVjbTM0Vk44cGVHV1JIaFRVODYwZjVO?=
 =?utf-8?B?NEI4L1lmUVJHaWY3TTJHK1JJV3ZKd2dYZG1SeUhIVFNOK1VzNXlKNld5Q0ZX?=
 =?utf-8?B?S1l1MG5NWmdTN3VqblBXeXRtQ1Mra1FETUtyNzN3Rjk5TFl1bmdPTXRNTHdC?=
 =?utf-8?B?bHN2UVJmbTJRUlJ3bk9idnovc2RrNHg3NVNyR0xmT1oxc3FUUGYxVDhQS2Jj?=
 =?utf-8?B?b3NlMVdKQWVQWW1BUXp6UlR5Tk9hNFVYMkp0V3RFYTY2RmlBOWFaUEcxVXds?=
 =?utf-8?B?N0p6YzU5Q3lQQkt1c24xV0JqY3ZwU2dVZmNEU2MvRWhJNVBtSkoxL2x6aDlK?=
 =?utf-8?B?ZE5BaXZLS212alV4NXVUVU4yQlBIaGZSazVSckdGRGdDU016bzRjcG13S2Jk?=
 =?utf-8?B?azJ2NTJRQVd1QVVpVEdGT083c2dDK3pnV3BSSlZtdWVnWHFYVi92a05WajVy?=
 =?utf-8?B?cHNjbkhmZUdVWkRYZjhZV1pwT1VPZFFSWE1kc2JqTzJpdzQ3dWJkbHNuSFFG?=
 =?utf-8?B?ajBzKzdpTGl6bk9MUU1PZFBvQ1VNenRIMzBCaG9oT1drazZkVWh2YmtTL21T?=
 =?utf-8?B?RFQ2NGtyVVQzYWl3U3JFcCtsK0VLT2hBSHEwc1VUT2tQMkY1QzI1QzVHa1Zy?=
 =?utf-8?B?SFZ1RitGeFdCUjZ5U1FwQTNZTTRYZmV4MGN4NVYxZnFGbUFNVlpXU3N3VGFX?=
 =?utf-8?B?aWZUd1BXZkVoaS85Q2NsU0xOb3dOdWo3eEgzd0ZtdnV1cFVuK28ycG1wRlJK?=
 =?utf-8?B?c0Y5aEZ3ZkVZWkFNQXIxb2IvRHVOZHVWa0Rqb2toZWhxS3k1ZlZ1TWlCd21n?=
 =?utf-8?B?UERXY2dPUnVJQTNMZ1NXckQwekYveXlQZ202Mk92bzBaOSs1N05RelBXbzA0?=
 =?utf-8?B?ODlkd2MrdUZ3RjhWR0U0WENqVkVoWmQrS0pvN1lxbVpTb1F2SUpqWlpYZHor?=
 =?utf-8?B?OVR2dmk0NFI3MVREaXBrRzRaRDhEVXdKV3RuUXJpdDlFSFZPRitzbXhQWSty?=
 =?utf-8?B?NE9vSnFKVFBZWDI4WFJmUE51endNbGFRZGxid1U0bkl2aldGWjA3RDZyK0xp?=
 =?utf-8?Q?PXmVZOCFQzc8jbBM=3D?=
X-Exchange-RoutingPolicyChecked: ElEo1YB1yzq3ClckguXXCPHAQDZQt3bLIitoEM+IHETrzwMLhnPL0JsR6BFkysNgCBh4KVM3PsJO+cKGHoRslpYBBbwbAAq9ksrACrpQNAGKLYyLA01RndVqQ4opr3324Fp6uXLgkM604LKSYAEk8DUfhLl1BG8HGSQdU9GKAxPDclyLPfIHeBSvFcY2J9gGZ3UO+5oByUPBKDnbtcjdZHpFaabtxbx3uNzDiR4gdTdZzhgnzbSO7J9MwFjnViBsBUyCYCw9gPITmsBBO2pV8VJY7FmWZ4XYT/Ea51sg138FxOMJ0Otpp7WfpvNu8/NkPauXIcwG18Am3qxvnUJGpQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 83658305-5bb4-4a00-9662-08de7fe5509e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 03:13:21.3560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hRnb4dnmnCCzAt2YIGW75hpAJFYExxHFqiz9wI+PbeIkjAJaAAHBbY/HxLswcqC614Q6X08t7WfhWQaPLEsqb8mEh5F4NRoLEjMat0jOsac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5799
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 45B7B26CB10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 12/23/2025 1:42 PM, Nemesa Garg wrote:
> Prefill calculations are getting screwed up as casf_compute
> is getting called in later stage. So move casf_compute_config
> to crtc_compute_config and check if there is a change in the
> sharpness strength, if so set the flag uapi.mode_changed
> so that everytime when strength changes casf_compute_config
> can be called and new strength value gets updated.

Nit: Please wrap the commit message to ~75 characters as per kernel 
guidelines.

Patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> v2: Remove extra casf_check [Ville]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9c6d3ecdb589..568730ffe359 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2494,6 +2494,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>   
>   	intel_vrr_compute_guardband(crtc_state);
>   
> +	ret = intel_casf_compute_config(crtc_state);
> +	if (ret)
> +		return ret;
> +
>   	return 0;
>   }
>   
> @@ -4286,10 +4290,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>   		return ret;
>   	}
>   
> -	ret = intel_casf_compute_config(crtc_state);
> -	if (ret)
> -		return ret;
> -
>   	if (DISPLAY_VER(display) >= 9) {
>   		if (intel_crtc_needs_modeset(crtc_state) ||
>   		    intel_crtc_needs_fastset(crtc_state) ||
> @@ -6431,6 +6431,10 @@ int intel_atomic_check(struct drm_device *dev,
>   		if (new_crtc_state->uapi.scaling_filter !=
>   		    old_crtc_state->uapi.scaling_filter)
>   			new_crtc_state->uapi.mode_changed = true;
> +
> +		if (new_crtc_state->uapi.sharpness_strength !=
> +                    old_crtc_state->uapi.sharpness_strength)
> +                        new_crtc_state->uapi.mode_changed = true;
>   	}
>   
>   	intel_vrr_check_modeset(state);
