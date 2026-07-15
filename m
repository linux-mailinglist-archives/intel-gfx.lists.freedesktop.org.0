Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v/fFAP+HV2qXWQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:15:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A3F75E8B8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:15:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="fRWbMmj/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F2510F058;
	Wed, 15 Jul 2026 13:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD1410F05A;
 Wed, 15 Jul 2026 13:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121339; x=1815657339;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XJZzERL5bcE/yecUbapzliSTCptHJNfrVC0ZChlvsjk=;
 b=fRWbMmj/WRi9dTE9Gk9dshxMvcKYlB6D/1FO+Vb78+DpdM3drmDqjDvJ
 OIeCxmHPufUngnY1aEMP7qc0el46CjkfdHmaBE83dBWL0O6uTRDZMZnaa
 c3krY69+M/85F1h/2NhnU5xDbcsVfPaZvzwK/6kfhkMkY9CMUJsN8GRPq
 aunUTFzVUbMJuD7QZk2Kxa7wcnd33qGpjAiNF9as975YkFlq1yVfyVf+P
 UBeW4rxwoEtpTN/v73omlZyPYQmZqeHzGOsArORPj4t3+rSXQAv9E4tR3
 gjSz08z0tJul2U0zhbCleML6CTsTe4VGEZ/IL2nqiWHh6u2N9Zlzz59x5 w==;
X-CSE-ConnectionGUID: YUWtFvxcQ76CH00dAC5ubQ==
X-CSE-MsgGUID: x3KIyRhtREWWcZiA8lWEBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="95404084"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="95404084"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:15:39 -0700
X-CSE-ConnectionGUID: 95nebNo6TPicis6ir1Kr+A==
X-CSE-MsgGUID: bFRW2b8VT4SCeZ9SgKSdpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="258138705"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:15:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:15:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:15:39 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r/IYBRg5dqqkbdonQnbF4NLX5ziHaQEZtvNUyLWs5NvWqE6Gfo4NulfVrmpOU7CGHH+nP5EHq/PUZ5zxMWOM2NmGHpQaJvLCyKtu3W/iX0qC/siA2PPY2KzD2rkpSe2ZlRXPcqmhxaftAnmPall2PT0TnhjPwXx/R3ZRTp49JPmyi4ojYX7QXMHXIksjQqy98ASL5S3imBg1DDXR57xGhLz5EM3zBt4Oci7pyX7IQ5mzBXSivtqSIRed7Qtr+uiJ+jvKGCsXdqZKas5i64aHL5Y4KMzXlc1FGKohoJxIoJcbT7oOyqLX8mwRWPOW9UX5tOtwqRsDxtIGmiRE6qbsdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKpexz/3dM/hWqQI1EUM3DK2fC8jB2cIlicGZfPlSDU=;
 b=XZimopRJl2MfIONl1WkoMefgp3IinG1lnccT9YSN415Tl9Btqa6shSPS2WSmcphtdkD1K3RqUhp0iJr/+kWmkh8uCuFTjjWHBviTlBfEimUrE9Cb3XVtyi7CHaT6BnPfwzQsPbMfdOijtqNqlkXPNQfFDmRm0ENH7gokq22Td38tDaq3qS6bKZxOYJxBYYRbmn/sgqu//3sJjBVNlNhAFfkzUKK0jwVnjHjQQJFRMGvFIchFwx+FlkEchSZQlLJdNq8Y6g4W//PNFPwMYowxHpFm08FYN2tpH4uDbPVtKoEhcOKoG6pmiWb7C22S1UsCNULOl/k0a+dW8elza2w3oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:22b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.12; Wed, 15 Jul
 2026 13:15:36 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:15:36 +0000
Message-ID: <58ed7328-b2ab-4898-b3f4-a89b4029929b@intel.com>
Date: Wed, 15 Jul 2026 18:45:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] drm/i915/vrr: Enable cmrr
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0107.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::9) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SA1PR11MB5779:EE_
X-MS-Office365-Filtering-Correlation-Id: 4423ac4d-9b9b-42a4-591e-08dee2732839
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|10067099003|11063799006|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 2/WgcL2DlBEqiJldVwoxXsIKdaeaHYTRl8gp6myZICkqO18ZaDIqW3NN22qAYCo3iThshC0fhl6YsXHxoGGzRryL1VtUFfGNf/SkXCfaNtwdhK774uZGzL62oh1g8nElVuBuriOG88/ED79zx0ZlfPvmHlk2T1TXXkI+tqgxAXY5cJ2TU2rhVsHU8JhBFD3/SNVFl51ZgiWz9eSH7WXdut/tkqR7d2IzBYwwo2kTBgfhfrQCpz7wn+Azlu/MSjReMHOEdICC2Tm2NT3j34MPnYurJYpBGAk/Uz1ldiaFxM5cD3+ycf0+FU8HYxYCpB2IpwnifukyVaDbcnhp1Kum6dYrGwhwiXMsymKZVgDuLQHPfbUiPwRIlEwuNF11b3iJwQhhXLsUDJNygU3Dzx3Pec6P5oVh9Brk5/cyzXQR6zJo9Ut7R0HAwcvRgjon0gRx5uW9v38t7LcR02pf4XswNwoTOsZRcDYxp7lOy9YshIkTjtOynqxx815KAfyMY9BmKGm6/xUzjLBr10QALaLaCf+ApB4tdoyK5yAlGCMdv1fIKlbJ+FjcZD3skmYIfatav143TOy3xrIZ5gdYXCpt/GFc5iG/7nmwRG3hdO0rd6kgM4F5dXRv3JLQtN6iDGQeilk0U2bwYre17jkYwKsCrguUvNzBxfMG9lSytCPpaIg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(10067099003)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUxLb3pnbS9LditSWUtaNEtaRlovVUFQTURESjIySXVmVkhBeXlaUVpLNU1L?=
 =?utf-8?B?Q2VTK1lNVUozRjhYTlY1VWVJYkthaFowNjNoTFJoR3hZc210TTI4ZE41Zit4?=
 =?utf-8?B?THcrV1Rrd0QzRWp0cU9HOFJZKzRZZjR5Z0tpZVFhL2RMMjVsZ3cvYjM3elcv?=
 =?utf-8?B?NGxTcUNPQmFoTXlYUFQ1dDBtak5uWDkvMmV2ZC9HVVNWQ1JvTVBXV2VDaDlW?=
 =?utf-8?B?TWF6cy9QekVEaGhyWnhlYmw0dXJUZGVyRkN6dEdUdSs2c05wM2I3emd6dVVX?=
 =?utf-8?B?Y1VScTBEVlBxYVc0cWdwMmc1bVRGL2tNcThQQ2JHWnZtczg1cmVmUWR4RGN5?=
 =?utf-8?B?YUdtSHZSMk1lMFRpM0Ezemt3cC9WWHRJY0o3OFY3RkY4UU9XR2tTbkFib2c0?=
 =?utf-8?B?ODJ1eG9TbzdQc2l1WDZHOTdDM0lLRXJPWGJjcGwvQ1MweitFV1FDRFdIRXBh?=
 =?utf-8?B?c0FYU2FUNDBNS3hjZHVubUZkZ2lXYWtUSGNQT0gxWnZ0TDNqK0E5d05TSHkw?=
 =?utf-8?B?MU90Z0UrSWw0K0pWSTdEa3FoOFBTajVhSVNkUzY5cFRJVjVHaVVyRm5kSGVW?=
 =?utf-8?B?dGViV2NOcVZTenA4aEt2dU5Fb2hZNFd3VTlZUEhaVDdXRGVWMjI4WG9NR3Y5?=
 =?utf-8?B?cDJ6c3lWL2c2V08yRkZPTWo0V1Y0ekl4QnptYzZET0s5aUVYR2d2THRlb1hr?=
 =?utf-8?B?dXNFN1V2cUErMzBjWjZTam5wTXhsSFRobnJBZ3ZGbFZEdVczQ1lucUs1d2JC?=
 =?utf-8?B?RFYySHB6bnRKWWtKL2QvTStMRUVHN1JzNUJYUmJ4NkczV3daRm9OSG9vam1U?=
 =?utf-8?B?L2JHTVlIRmdqVU5PdEQ2RVNZV3RKMjM4UVc5T0Jkazl2dmd2UGxNaDBPR0lZ?=
 =?utf-8?B?cEZhc3hRcnpsbXZKZkxjQk83Tk9wVlRJaWM5ODg0cllCRHFSWksvOXpwZ2lX?=
 =?utf-8?B?QkVqYThTazdZTnRRWWs3UFZZeHc0ZHlUSXdyZEFuMW9LdnlpQ2FGeFRJSTV0?=
 =?utf-8?B?ZmlPUUVQMnJJNUl2N0tObzBlL0xqTWNTTlkzRHdQeGZ0WlhGeTZOQ0NOQkov?=
 =?utf-8?B?NDJzMDh0anZHQ1ZDOC9VazFhT0czdlRLaDhabi9ZVGloSnN3TmpETCtZdVda?=
 =?utf-8?B?OGJna3llNjFwazlSSC9HVU5mcWNFbTMwWkQ5Sko1UWJ0Z1dBL1BNTzlMbkls?=
 =?utf-8?B?OFBpd24vMExUK3RCZDl4OTBZTmpIaTU2dm52L1BGOWYxclpha0VuSzVQVE9G?=
 =?utf-8?B?aEdOenVHcE1pRkZyT1hrRU9iNHk0Q1gyYVdUR2ROUHB6YWh1RERjM2dtb0R1?=
 =?utf-8?B?eS9jaXljdDNxQ2E1WnhNSk8zNURQbnBhS05RMFVFVmtFSmpveFp2Y2VFdFlh?=
 =?utf-8?B?UEs5Zk1FdC9MQ1FGRW5qczM3OFJxdWd1M0hyeEpJcmVsVTI4TGNKVWNLZVBO?=
 =?utf-8?B?Q1lBZ1I2Z2ttbysyTnozZDAvK0wxbG1uOWhjd3J0NGdCZnJhSThKSEluWjc4?=
 =?utf-8?B?dmQ0clVwQkFmUG9iMEsrVnZGb3A5eklGK2k0MktjYXFTNXBuRTNzUzNpM0hk?=
 =?utf-8?B?SGZPcDNwWjF5QmlKR1dTaHJrd1ZOYnA2UlBMRTZnbk9xNGo1R1J6aG5hTkl1?=
 =?utf-8?B?akRuOTlDZ1FZZTJ2Zzkyam1qSzdncUxwTmRXZnRrQmQxNnVENWN6NUpYT2Ro?=
 =?utf-8?B?TlUyZjFPM3pJa1NNR3BGRUhSWVhlclZnSE5UUzI0UnJxbnEwdUsyT1hER2lm?=
 =?utf-8?B?a2QvRGF5K25hZlc5SVoxemx1V0hZU0ZidUlZcGJXRHV0TGlrSHE1OTk0dFpU?=
 =?utf-8?B?R01iUEJjbUYyYVV1M0NhenNEUXFZcm9ud2d3cmQyQ1hYekE0Zm9qRlFmcCta?=
 =?utf-8?B?SmJMVit2bFg0N2s2WGNzQWMrcmtuMHNWQ0w3ank0elRNUThoaytrNjBaL0RM?=
 =?utf-8?B?NVhuZFZsbW1mdGJ5WGlVZmREaDRpdWNid0djME0vdU52TE9rWTkxN3lSOHhi?=
 =?utf-8?B?T0oya1h3V2pNTFIwanFlSHFYN3M5aFYwTnNweGZiQ3MzTVc3cXFzT3NLbEdM?=
 =?utf-8?B?Nld2WDlNVDVUYUpMQWRha0FRZ3EyamdpZWwwQlFPemFnOVZ4bXNrMnY2UkNq?=
 =?utf-8?B?U2JGdERGT0s0MWVHM0kvVUU2d2NmWUdXV1BYcFZqR1k3ajdGbHA1ZWYra2dH?=
 =?utf-8?B?Y3BzRXQweE8yTFBteU5SMForZVNKeUpXVGJ5U0hKbkNBN01LMi9pYStkK3Rn?=
 =?utf-8?B?VFBGTU01VHZrbENERXpObzZ3TUg0cS9DWExqQ2pOSERVQ1hiMWtiQWo2T012?=
 =?utf-8?B?b2VFMjlZU1Mwand4cDE0b3kzVW5pM3pFQVhjMjAxWmc0bHhpTVdiYUIxdHA4?=
 =?utf-8?Q?fBz4HuzvOvc+iwynQ426slCfcmC2lnOfwKzRP?=
X-Exchange-RoutingPolicyChecked: GVoHnN2VWgI0Ac0Fg0b6gwlTA5spesPl9ZK3ndyd6osLpqy88FvEl8lNLas1g/nRRkyQZq5yHBEvTr25XyHpfvAKuMmY1uCrV9t5hotwv0rM6Lwp0PoqoebeVkzIrOrlVnUWGk5skflJze0/QeMiY8iNZmhdQDsuE5CZMTCWIZYk6umTRDUZLiSy8zqWTBrtSHhZgULPjQnlGRUNCPr0+ct0S0fQg4r3z6h7fw1B3M4qOn1vYNPCmWNqIrYBr4DUnS7Gu5ehrOWArF3LqO4RjLSdOJQ3P8K0R3HTk7IRD1bWDnTjRic7HH5WOSyUmU/foyPYV4xdyEHbF69n0MmMIg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4423ac4d-9b9b-42a4-591e-08dee2732839
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:15:36.0135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UamfdJLpoTAPW8i3uVSy8/Q/jw41HITVWXTrYhqnwkuNK5k8rihwXvkc/LeGhhcMV17UQI+TI97x6XdTTcNwBJzyXVLe9QGvSqHl2QqnuRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.60.135.144:received,10.18.126.91:received,10.18.126.92:received,10.1.192.143:received,2603:10b6:510:26f::13:received,192.198.163.9:received];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97A3F75E8B8
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> Enable CMRR during compute config and add related state
> checker for the same.
> 
> --v2:
> - Everything else except enable compute to handle before this patch
> (Chaitanya)
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ca3cac5aa6ab..ce4148fa1687 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -256,6 +256,8 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>   						   crtc_state->vrr.cmrr.cmrr_n,
>   						   &crtc_state->vrr.cmrr.cmrr_m);
>   
> +	crtc_state->vrr.cmrr.enable = true;
> +

Please enable it only when CMRR is actually needed.

This comment keeps getting ignored so I will mention it again.

The target rr divider bit is always set to true in
intel_dp_compute_as_sdp(). This is wrong for non-video mode refresh rates.

>   	return;
>   }
>   

