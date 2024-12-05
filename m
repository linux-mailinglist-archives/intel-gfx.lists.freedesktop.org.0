Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BE99E4D1C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 05:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DACC10E131;
	Thu,  5 Dec 2024 04:50:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j/TJAc82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CFAB10E121;
 Thu,  5 Dec 2024 04:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733374244; x=1764910244;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=elgoNPEkTaAcFs2gieGClRb8tD5wCIjc5l2BMXfEiE0=;
 b=j/TJAc82rVyPYeBl08vFrchsNAHSyWOnzhrwResMOA0CKwMzsMhcgopW
 T4u4vHUZEtzOCc/5TUUOi28ZHFker43EpTqegJrOQHNz4yS6AoRsEdAUp
 0WVx0XvKPvJyOQ1qV51IZSBGu3vOwkdVRtXHqdFjUAf54ng+csA5NPg02
 o9fSBGbV5M7thCTjmDpV0294Ebs8DirHA41oXAEP3o+diR312nNg3Bdgp
 ewUxkZ+1mzToc8BwRJ5uKWZMIT7uHlLXcPXCVjEGQOrPog+mQLn9ZST4Z
 ViussGfCR1lO/Q6NDNUi0CaVcnJNBiqmV7HOoVkdhnoWHO04GxOvIoAkU A==;
X-CSE-ConnectionGUID: qxaFge0ETtesbApACtY49A==
X-CSE-MsgGUID: UNuhdaItSSWsI+Odff1CTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="51205722"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="51205722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 20:50:43 -0800
X-CSE-ConnectionGUID: iqOP2bb8RJi6LZ1cOkUbPA==
X-CSE-MsgGUID: Llclmq9dQ2WSu2kTSJKPHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="124897185"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 20:50:43 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 20:50:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 20:50:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 20:50:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ixPQL2zFua92jMdPhH/WTJmf8HVYRT0E1El6rLZ7mg0iunAFuD4Ohc2E1hg/YDumMbNemkt1/iLJxMcnQabvIYeE56kur+unFHkiyFrB9xR2prQyr23iJ0Qx21aWS/7YOXZO81y4bep16ZQoMYDznHotdJuhrhgdNZKAdu1oYoqZBCTRcoyAZRYn2D1jh2+jwniMbit3vc0AvY0TCRAxLlWF+/aW7BkWgJoudrBokV/p11Jh0FqaAN9MPxv4/XmEtby5zVLhLCJ/IVizrIYA3ECTJwwT0gpkR/Q+DTaFqA/7jTXKAvBl16CL+EmoIC+bhKVRtOiVEHQoaMR9mCmjVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pyNGY3o+npwkSwvx/KMr6/VtkP3bkisOt6h98be0oig=;
 b=WJoG8xmkBf/VvWTGJcdL7Sy3OMDrlm6ODFRlxx3VxxDisl7Vf8wFw6PKOy245Jcf7zISA2WaGOvLYBDqNb3Fp9O6VyqjdhbiymqhhmZPgiYo6qdkWKwUVzaPDktHqCathv0W80/LDDlIgHHRDyN1z1RJsIFf+CpejAg/vY1aWfCWVcFtX9e5x7bPhpRBYV0hqBEVVAKtbliHoSrqW/Wmc7ng9gSN5weJxa2ANhDKCFq7+TCLxO6Lbg8HX9/DHOCob5Tkc6rFByC50RovvV4fgfHM95b7aU/HKyUDuds+RL3wSCznk/wAioUeSXVAIvHloA2316x91IhP9VXv/Cb++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 04:50:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 04:50:39 +0000
Message-ID: <8eb27ea0-6fd3-492a-b029-95cab64afa39@intel.com>
Date: Thu, 5 Dec 2024 10:20:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] drm/i915/dp: Compute as_sdp.vtotal based on vrr
 timings
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241202024540.2578856-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241202024540.2578856-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4588:EE_
X-MS-Office365-Filtering-Correlation-Id: 6be32d12-a4a6-4a28-afe5-08dd14e85d55
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGhTaDI1RFRHVGxDVTBDUEI5VVB1c3BkTzdScUMvaS9haXZ4ZHRLRnZCS0FM?=
 =?utf-8?B?aVNzWkVSaG5pV210MThhR3plUlFZWWdrNUJ2K2M0a1dsQlJUWGdUUnlSSWV0?=
 =?utf-8?B?UU9FZzBJeTJmYUltWUhQRnBLOXJzQlpxb0h4clJBM3FlS3doNFBDamNKS05B?=
 =?utf-8?B?R1BheGNyVnpnbDFva1llRTlZeEE3M0Y5blJTY09Oc0ltT0NycTRtbkRVUHdD?=
 =?utf-8?B?TVgxei9UOTNQb3Q3Y3JORkgvU2lMb0NoQXZvS3hRTlVpazBCNWhjVkxTRkhC?=
 =?utf-8?B?b1ovdDYyT3lkV3BhRXpUbFZMTXlTUnZjZHJlZUlMTmRjLzJEMFlHZXpoMkFN?=
 =?utf-8?B?MExsSXM0eFFzOVpSOWxWZ0FCVExqc0Z5SmhCSDR1ekpoL21STE1kWWtmOEhK?=
 =?utf-8?B?K2p3NXBHVjUwR1NiOGViQ0NTeGFvVTY1bjRvYmZPTXZpNUxpRWdnWHRsSHd3?=
 =?utf-8?B?SEJ3aHh5eXdDdEZhdXFSWFhwY1VXTENCNmM2QzFobnlTNE1EcjlrbG0yNSs0?=
 =?utf-8?B?aWJ4a3lIdkdXS24zMlkyQy9PNTlVQmxlbCtOa3dUcDVPYkd1N0JoQm82VUk1?=
 =?utf-8?B?ZUt4T2dsWGxrMXlEN1d0TTdPdTRKdXYycDBWVHJYRnd4K293aWNyZzEwUHRR?=
 =?utf-8?B?MC9zQXFhRkp6K0VwN09tMkdsM0c0NHI2UVhIY2p0bGpFYi93aTYzR01JS2p6?=
 =?utf-8?B?STNmZ1pxVG1PSVFyTEt4NXp3QWYvMDV0dVFDMUh0MHVDbVZ3RXFmdFhudEhU?=
 =?utf-8?B?RS9IUUFJS25XUVM5a0gwTnEzYS9wRnhhUXIvYlBLbktlcHRnYkZPYnpoWXpP?=
 =?utf-8?B?Q3NVS25CeldMS1FGVkJXOGlka0dFV2l2aDBtMkI1SWJxaHFOaVpFWHZEL2h1?=
 =?utf-8?B?QW1CdHduSXZHMXZKYzcySXdNaEkraEEvMHhLaEpxUFZLMlJvVndzdHVvejNQ?=
 =?utf-8?B?RVNwcU5sdTJaVFhSVVRlSkNCWjJPK0d4MVloSUN2US9uckJXTkNVWVkvdWRm?=
 =?utf-8?B?WklpS1Y4RStaZHZaQ1NCaHdENjV6anY3SGRDTVVBbTZxNU1jV3MzdEtORDVR?=
 =?utf-8?B?MWhmQ1lXSzArS0poSDlVcmRjN1NjbHM2cmRCR3ZtdHl5TVNZWHlVcGNqVkJH?=
 =?utf-8?B?MnNkWjJIcjFzWldqcVBuN0owNy90T1lSTWhUYldwMmtWdjduUG9yL29vdzhQ?=
 =?utf-8?B?bnJwNHg1SEFuMHgwL0lSbnZocEEwZE1MbnkwVllOL3ZiMFpkcmpGNmtsdzkw?=
 =?utf-8?B?aXFuK1hnMnlDWEJIdUI0Vk1lU1J2NUt5Qi9kbFMxeXova29Zd2ZqNVJDVEc5?=
 =?utf-8?B?TkV6NHRZanJXdTMyQTg1Tk5GZUJVY3RoYTBET2YxdnJXeCtGamV1T3BEdnpz?=
 =?utf-8?B?UHRNbDhwMkIwa0x4ZXcyUWJ2TXFDWUhoVkVhc295cW1wNFhxU3FiTys3M3Uy?=
 =?utf-8?B?NGdQemlqcEx0dWxhUXdIT1NFVGdIWGlpUGVhSTVNM3pOUktVTFVrb0NHR3F5?=
 =?utf-8?B?cEFVOW5aTGpzb1Awa2JQTWNjNGZTWDc1ZDZta2t4VnRBbVh5RFpOVGZOU3JB?=
 =?utf-8?B?b09qUUl5NFRYVzNjM0Jiak5YdUVnOFBrTVVYYzBET2hHK0hXWFVqNnVLMkpC?=
 =?utf-8?B?Kzc5azV6a04xL2lGeDhFbXc3V0JTd3lUMzZHQThiVDMxVkRtRExqYXMzVkZp?=
 =?utf-8?B?NlNPQjRZeFBUUlJlbnhLd0dYN1dUYnE1dWQ3bk9PSGptUXFkaDFXaHRrdGdO?=
 =?utf-8?B?Y09DOTl4ZWJyTUhJY3NwOGt1bzBBbjl6WExCeGdLTjhISGZUZXNObzdpU0du?=
 =?utf-8?B?WDdrcm1wdVBRaGFIaHJmUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkpPazhVZU53NmNqdndWeFE4TWRvM09QbFdqMjRiNnhLV2dQdEc0bmhuQ3V1?=
 =?utf-8?B?dHI1cmtiVXFQSzJ6K3hvMEk2dGdzSXhxZHlQZ2ErZExLQkxRQXR4REVuczFF?=
 =?utf-8?B?UEVNbjZLb3V5QU5iSG8ySjlkdU1UenJYVFphNHFRYkxBK0NtUDkzN2pGbncr?=
 =?utf-8?B?Z2lxVENLOFN6cFpnZXR5M1h0WUZGd1o2QWtBejZyNFBHWnRtQ3BLVjU0MG1B?=
 =?utf-8?B?UURwQzBhazhYeld2WUlzaXlOOVBlUmovWndZSm5LNWozRjA4Ykk0RnVPcko1?=
 =?utf-8?B?MzlXbXdpczlQV0hFdk05aWdWbzU5OHdUWVpwZnEzUTlydzhGT3BhdUVlbk1G?=
 =?utf-8?B?OTVHVFpxelJqSnJRdzUvZEFOMXVNR2pwQjJrUzZZenZBVytNUTBxelpmT01h?=
 =?utf-8?B?Mk5KWUtBdEM3MU1KeUJJKzhsaGNBTFhhdktscHBTcnZ6UklOWVBEMmVKOXZ2?=
 =?utf-8?B?MmdKb3lISHRLWnhjSG4zYWlBL3o3TjZVQlhoWTJBTmFxNmJIOFhGeGt0dWdV?=
 =?utf-8?B?SGVpN1FGQ1dhN0lNVHFKcEVBT1dYMlF5U2FWbTZ4MDZ1WjFxdjdoanZYeE81?=
 =?utf-8?B?Nkd6b1dYLzlPZHdJRjlrYjhYS2x6RWZ3Wm9xTTFIZUx2c0RpV0N4SkhjTFZU?=
 =?utf-8?B?Y0E3RzlvMHo0U3RaRHNzMGZqUERtenBCWm9jK3daSFljeTRKNmUxTFRkc1N3?=
 =?utf-8?B?allWbHRaS3ZRc1B5cm9WZFpqOXdHSWpIdm1yOC9seVVmRitWR3BjUEVmVUZr?=
 =?utf-8?B?aVNsQXJOMVFyU3orZzFQYXVsSnE2SXlTRUYxNWZqZmU5OEw4QXUyWTNVUUJB?=
 =?utf-8?B?QjlhbWgycXc0SHNXNWY4d2RSZXIwd2Rhd2pTamJHS3E3RXVnT0hXWFJmMGE4?=
 =?utf-8?B?RE9FRWFFclU2TVBiM3NXY1Qra1lIdFYrY1VZelN1RVRja2JUVkoxYm1QR01H?=
 =?utf-8?B?TUlkcFJYeVZzcVdoQjM4dHRqc29qUDdsNCtDNVFxcXVqU01FYjFRUHEvSEpK?=
 =?utf-8?B?SThIbnVDdDFaV3RGdm0yWERYZ1k1Q2JtaG1nVTlONUhGaTJUQ1JuV0NQYVlq?=
 =?utf-8?B?b1hzTTN6RXh1WWFLV1J0UitydGNzUkJHV01YcTdMOW9pZkNGaUJQNHoyMlpn?=
 =?utf-8?B?VUhYUWxlMGdQQm0zREF4Q2pTUGhLL1pGbmZBdjhIMi85ZDg2ZXZOZEs0MVZh?=
 =?utf-8?B?M0MvL3NrL21HSUh1eW05VXJSUXQzQ2U0bTlDeVF4VEZHSFgzRjRhd0dtWkQ0?=
 =?utf-8?B?NHhJL2thQW5NZVkwT1JDRTkvaHUvdUxQZ1drWXZ5OU1BaG5YTHMzMUlZajhq?=
 =?utf-8?B?Sm5odDRoTGEyYjF0Qmh2SmFablBLdDdFMDU4Y1pPS2Y3Zk1LZnhCNUJrYXJM?=
 =?utf-8?B?Y09LcWpDNGtSSWlna3JQMmhjaWtWbG12Rjk2WWEweG9oQUxGalkwdEVyT3Ay?=
 =?utf-8?B?YU1TSVN3RmhLZVFOYW1OS3JsRllOVkZmSlp0b1dERXkvRHZxMTY3L0FjR3d6?=
 =?utf-8?B?dzFwRlZTalNSaVNrRmg5Ynp3VFVxMzlVckZrRVpkMjFjczhkODQ4K0EzV1JH?=
 =?utf-8?B?WUZmdGZxMVdDaHkzd2dvMmlqbnlSVkN6SWFaUnA2OWxabDJnTkVyWUdOL21m?=
 =?utf-8?B?aHlHcHdTWkFzb2Q1Z1BjMVJUMjdjK1BZeXprLzJNcERyaFc2ekNRVlBSRXVr?=
 =?utf-8?B?RG9jbGpPckYrczAySmZRUEdTZDdvTW0rKzNIWmdRWDBPNjFMVFBMRkFVNkFG?=
 =?utf-8?B?aTYvV1czdGxuMkxKcXRsM242NGFvL2RCbjZqUFgrUyswWGFzOEVyTHplS2h1?=
 =?utf-8?B?dW5PR1l6RFpDOUZOUm9rWnhSZWZPL3JvdXpjUWNJSElrVXdaQzJTMmRMb1lw?=
 =?utf-8?B?Q3B1V3JOTnRFVjZ2dG9wVXQ4Y2RQdDJrUjIzT1JQaGlVdVNXdVEwVFY1V3l1?=
 =?utf-8?B?OExEWHI4R3l6M1FQNjRLTnUvZThBTklYbXd4OE12dEZnbWlsVWJydWVDTU9S?=
 =?utf-8?B?bFZreXdPem5CWjRvSStkUHgyZkN0QitxVDNaS054VHVRUyszSnpzVnVPcFpN?=
 =?utf-8?B?RDdnTVVQMThWSWEzMTBPVXdlTjhFczc5R0t6dGtWWG55NStlVHlxQU9uZjhH?=
 =?utf-8?B?Zmo3cmIvUFlxR05TUnNEbjBiTTlOd1R0WlVZNW8yZGN4SnV0TzRLU0VPcGgx?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be32d12-a4a6-4a28-afe5-08dd14e85d55
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 04:50:39.0722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8KvtVOgV0GMXL5LIPJW0cf7nE2zUiMi5gqVElCmnSnhJZsOupX5ec4wAQDOUk4jUDW2NDg8ePJklYsi74NVfvixWcbwhdyp4VaUwMTESuCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
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


On 12/2/2024 8:15 AM, Mitul Golani wrote:
> Compute as_sdp.vtotal based on minimum vtotal calculated
> during vrr computation.
>
> --v2:
>   - make a separate patch and update to vmin only [Ankit].
>
> --v3:
>   - Update vtotal to vmin for cmrr case as well [Ankit].
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 306c00cab57e..98573dd69028 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2815,15 +2815,14 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>   	as_sdp->length = 0x9;
>   	as_sdp->duration_incr_ms = 0;
> +	as_sdp->vtotal = crtc_state->vrr.vmin;
>   
>   	if (crtc_state->cmrr.enable) {
>   		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
> -		as_sdp->vtotal = adjusted_mode->vtotal;
>   		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>   		as_sdp->target_rr_divider = true;
>   	} else {
>   		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->vtotal = adjusted_mode->vtotal;
>   		as_sdp->target_rr = 0;
>   	}
>   }
