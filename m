Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292C59A6959
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B47CB10E4DE;
	Mon, 21 Oct 2024 12:59:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FrdVEHvN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8747D10E4DE;
 Mon, 21 Oct 2024 12:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729515578; x=1761051578;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=fcbu9SdH61nUhKyw5J+RNALphxIDWCA81M02z3zAMHk=;
 b=FrdVEHvNOWxY/zraXiV35FG3ANbHtS1e4QRUQkzcIwo/fI1Yhr0FuJjk
 sDH5D+CgwmHuKFYZyo2qbQ+Ls6LauAwj5BGYgRxqQOo9IDikCK3E1dFO9
 Ph9lf7ZRPl/Hl0vP4DvFbdpJVs2y47ZkuPnwoR8mgxGZwuY4k+B2cbqS2
 idBOOky7xPYnTyhHoKbyeC9qnWUnQ3Pk2R5IhT/w2E+b3VQ+Zr5hgEsCP
 GCT9p9837NA41nIr/vTcTAgGr8JTUpv/2Tbsrd3BIZIFxbaw3iiMDre7g
 U7HahwdkVzp/yQ0iiK/n9wZK9hKAK9xPvVRyummKUCx6ke3TIQGrx4A9I w==;
X-CSE-ConnectionGUID: DW5aHKjXSXKVK7hih3gSnA==
X-CSE-MsgGUID: UmJC29oaSsaG+gMqht3Kug==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29093150"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="29093150"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:59:33 -0700
X-CSE-ConnectionGUID: eMQ5RMNCSy6XxyRzwI2l+Q==
X-CSE-MsgGUID: WmUCdMHhR0ehficsUhIANQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79465482"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 05:59:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:59:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 05:59:32 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 05:59:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CEOQDJianUNgmyFTeWaX+70orpX6C3IfkIyON3X2CAxI16VDL/PU12MbmqHI4RvMgUqR4laVKyNZ+/YcfOZossVn5/7k/ebPebSRS6qsdEkjzjLP/fFYiPnM93v9/5P2IS5viMVpji8QZZ4FMYwz4vXq2lHXvGSfBmzZ2ta7rAW9oPdnJjUO+BKKuFBcgKweSSElaQ1qnSG1raN7ZuO9dgvtj9a6IMEleDOmm6CkC6jaj1VhphEPgjok8Z90SL5NdiFzx/gT7pF16g9U0Ka5otzoL5RjJTrxbMBeHkFiHKFabmoTYDrjQaqyJG2+gGVdqs2GMAdyWrtUV3eD3zmE2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hHZDaTnbb5uI3hBrQeo6/ruu10YflZxenBb3NamNN/I=;
 b=NdsJN4+4gy3U2FbhfKIavCyqTKiugtZJOJ/0NxoE71LOAI3LRTGv6vwFd73oyixby/rBewj7E1Za/NpWV3Cy0JMhvldbtZCrWkXmwMbh8gxIxY4o2jutR0gm/4tPFpMAy81yDTYDX3fwtRXUiEouiAdMHPbD06HHe8QsSrbUej69nloeQ/S/6mk+fMd+cMTCVSUeUGX5/D9SKcN0rYVvjXoE1p5mu4p1LWv2XWHNGW5JDSC7g4RylntSh7p3qxivO2hpl9qdpgfPLdGZWKjLvwYEyNBfoagBk+5WbqElx/EltR2XgUgZdzs8PzNkXR1GFcmaipG3yoQl6YyJLkOEVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8231.namprd11.prod.outlook.com (2603:10b6:8:15c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 12:59:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 12:59:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8734kpzljp.fsf@intel.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <8734kpzljp.fsf@intel.com>
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 21 Oct 2024 09:59:18 -0300
Message-ID: <172951555814.2472.7619896990957879815@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0049.namprd03.prod.outlook.com
 (2603:10b6:303:8e::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8231:EE_
X-MS-Office365-Filtering-Correlation-Id: 39bb393e-cd73-41d4-65e2-08dcf1d02f18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGoyRHhmZml3RUplV3duRkFhZEI1ZmVNSXZGc3NGelRNUGFPL1M5VDlvZVNH?=
 =?utf-8?B?SjI4UHAxc1NUdHhqeGQyVEhWTXdVcGFOa1FUT04xOHpRdXF2ckl0V1NYMG9I?=
 =?utf-8?B?dzlHU0Z1T0huMEhmVmtDbHRkNVpiYW9IbU12Z3FDM2krOCtjWExZT21sK0ZO?=
 =?utf-8?B?dVZUTnc0NURPNTh6azFsTWRxcmJYc0lzVnB6cVpJbmNJQk13MmpBUzMybGlG?=
 =?utf-8?B?RVZtSlBOTXI2dTU5dE9QTVBsdnI1a3JGOVBnbnhXaE9VT1plL2t2NUZEdk01?=
 =?utf-8?B?K2lTdEJyRi9ZdXV2c3J5eisrK2I3NWx2Slc4aTdXdXAzc0VKTW9Ya25UV0Rs?=
 =?utf-8?B?ZE10MElhVGZKVHpaSDloK2VvNHJIR2hHSmtVWHVRRjczdVpQNUNSOURRaVFw?=
 =?utf-8?B?N3ZIQ0dqTlljZVRZVlV4OTNiWm1wZ1d4MCtPSTFQdU1lRDJyRWVVSjFZVGE2?=
 =?utf-8?B?elN6UHRPNGJQUmY2dXZKYk5xN2tmeENWMldRWG9uWWNPcHAwVDdjejV3ZFUz?=
 =?utf-8?B?T0R3SkgrY09oNEpBQ0F3N3pVRVlMQUF5RW5Kbkk0bXhSdkwwenZVb2sxMVJx?=
 =?utf-8?B?RXJQUzVKeE0vNUJ4Mkk1LzZKN3h3WFlXdTVNTDJCRk1HS0NVYUt4UWFhOWlB?=
 =?utf-8?B?anNlOTFFbzF3TVV5L2VKcHpKTG9Hdm9reDVsc1FIRy9qcGpvSVF2UG1GZ1Jx?=
 =?utf-8?B?QjFlNHRTQjdvZS82UmpXdFExdklXT09NaUJ4RmlON3k2THVJQWg1VXpEeG00?=
 =?utf-8?B?VEEwVDB3aVhCR2k4S0RmV2ZmZm1HanloT0V4Q05ncElUeUxDNHhEazFqMnZh?=
 =?utf-8?B?ZjZ4UlNRSmJQMXVUSUU1c3Z4T0NwTVF0dUNCWTJ0UWFEcmNXankxd1d4ZzBY?=
 =?utf-8?B?LzhPclUzZlIzRTJYalBEVHU4Vm4zckNNUk5sWGFLcUJoS01oc0VSc0hFbnZ1?=
 =?utf-8?B?SDNDQzd3RkVKRXZVcGJvTVh6MmpjWWdLbU5URDBvNjU0YnlzMVQrL3pEYTdu?=
 =?utf-8?B?MFhIUGNoSW5XMzlDS2x6RWJ5bHZpdm1yRU5KNXhoUWEzbGZIMjFoK2IzMGMx?=
 =?utf-8?B?QkVObmxsSkRyT3F2TzhCSFozQnV4YlJSd3NzSEpPTHFTekZwR2dBSStiSFJL?=
 =?utf-8?B?QVVNRGRhVnpCR3g4UlJESE5IY21ZVWJIWXVZNnFYQTBFbTFsQ3c2OE9KRElN?=
 =?utf-8?B?bU9yeTJEZEVMVFFnM0dMeXZhQjREWm9rVTBycGdyam0rR2NvNzhCdjloejEr?=
 =?utf-8?B?dXJSdmU2YWk3MW1EbXYzSzg4bEdVV2pXczFDb3lVL0FqaUFFNFcvais5WkVP?=
 =?utf-8?B?TFFIckptRVkvN1orZ1U3SUNaL3oxejUyQklhaTlHYVVxUWJFcXN2RWJrNDJ4?=
 =?utf-8?B?eEdURW9LdWtLS3dXSmRTbGZlL3dTS2x5T2dBSlU1d1J4ZUF5NEkwNCs4VCtK?=
 =?utf-8?B?TVR4aytzZTZnSllNVlJ4Z2NQckh5WjU3cW8rMWtRdmdlQjNsNmRpSE5SeDY3?=
 =?utf-8?B?cDhJcmxBSDljaUlvZzRadzZJS1ZxeU9Mc1ArejlhWUE1RDlKVmpHSENWSElB?=
 =?utf-8?B?bW15VW9GNnRQSWRweFhwK2gzNmlYVzJxK09vVmw0bHBhbEhHNnQ3VzNCTmNP?=
 =?utf-8?B?ak5kNFBFY0liTTlZbFNTV3EwVVh5L3ZrSDVPOGVtSGNQYll2NFczVmdTdUNv?=
 =?utf-8?B?OVpub1lDMXV2UTYzdCtjVlliYTZ6NFhDZ1FRa29mdkJya0huNWQwTjk0SDBE?=
 =?utf-8?Q?xIliXmvTmdJnJOA567WAhY9oiu2nLeSWvr0DPx3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVo5M2lYOUZYcGhxdXdhOTBpZklzb3FqM2Z0b0FmTFhZdWtMam5VWGFmOHJl?=
 =?utf-8?B?MFFKczlncTJVNEM5b056M2xLbWtIQjk2bzZ4cUVqS2p4WmE5QzFjTXVvTjk1?=
 =?utf-8?B?NzRFanAwTTVoTUhqQXFmcDRtUVJGVlVBYytSSGVqa2hLVTh5TUNuQTFwMkFS?=
 =?utf-8?B?L3ZFZERheHgyN2N2b2VSMjM1THRnaFF5d250Y0ZybGZVNS9HT2I0VS95aEFC?=
 =?utf-8?B?THRoaHc0N3BYblRLV0ZHZ0V6VXkvM1dMRXVZVnFTQUViSGEwNGI3dlJibEEw?=
 =?utf-8?B?eExYVlVEVHdvN2xPUS9tS1hiN0tsUXdwL04zRFYxQ1B3WGxGejUxblBrWGdV?=
 =?utf-8?B?c0Q0YXdIWTl1aEdlZUlKMDErS0o0VUJVeURGRVE5S2grUVJsTjFDamdGQ2VW?=
 =?utf-8?B?NnAzODdlRS9iR3VFVGNGWTVNNzQ3RlRSOVZwZitXeC9hbDZwNVpsVndVR0li?=
 =?utf-8?B?SWRlczV2Zm9hcmUxcUZscjdHN1U2Q0JTckI1U3JEYkhVVXZzTmcrVFd1aW5M?=
 =?utf-8?B?dzdRT1dRZ1FqU1JEOEQ1enFiNHZMZ0FiOFZKeDJULytHQUpaNFJiMlNObXpp?=
 =?utf-8?B?OWFsT3d2YXFzd3RuZFRieHRxOTQ1dWZqeXhlNlJpZFJYYWpLaDB2SjVUWEVo?=
 =?utf-8?B?OFRkTnZYWE1xSXhjZ3J5c0RnTU1kaWtNcDMwSE1uVzE3R3lNYzlodjFEUkNP?=
 =?utf-8?B?QTlvazVkZm5IU3ZZdWpXRTVFcU4rc0xndmJFZ0dSNjJabUk3ZHFjdjNXVXRL?=
 =?utf-8?B?ZWVIZGd4Qk96aEg5MjV4dENaMnR3TjJQTG9pemFqM09hOUlyMzU1NlpOMVdt?=
 =?utf-8?B?VFVSUU1xb1hiK2hFNEFjeXRudElyRGpueW9SdU1TV2RjNkRUdDRzWGEzUmJa?=
 =?utf-8?B?NUJhRVFYTDlnWi93c3VYbm4zUGdDSk5HZEp6eC9ORWJ0TFN2a0M5azRodUZX?=
 =?utf-8?B?a01SYldMVzl4eWFUVnllYVZ4RHkvMG9NV0Via1NIdlVMbnFLTkxuZU1XZ0Rw?=
 =?utf-8?B?Rzc4QXBVTEtpNzdteWZ2aVlKTTlFVUQ3SExDNUoxRllxMUJHM1NreDg0QVV5?=
 =?utf-8?B?ZzZtVFJ0SGpCZGFHMlQ1bEJoTnZpbW1FZktmRjRFeEdkUXluaUhGZVhmVDdR?=
 =?utf-8?B?cC9TeFBXQk1FdzdOclVwLzd2WHRhR2FpMXJTalBqdGNQTXloSGlMaUtKcE9o?=
 =?utf-8?B?OUpNSlZXTUxVY1h2dFRHTmxwL0xTK1I0UTRBR0NSSjNaRFdROXJFZ1NsTTVU?=
 =?utf-8?B?aEFmZTY1VUppa3Y5VkFVTE1iRW5zNWRNdG1adi9wZXdpVEw2QUFBbWRlY3Iy?=
 =?utf-8?B?eG1vOXJFRVhMM01OTzJmOENXKzI4TFRFam5rNTFqS1MyNjZSek1nNWIvdXN3?=
 =?utf-8?B?RVJoRy9LKzRNck1uUWt0VFhHNjc1eEhUNzY3THNJNDdYYStVZG5vNkVUMXRP?=
 =?utf-8?B?YythbTk4ZWtJaWFhL0dHNmFZckhFb2hFTzkzUlJyaE54dHg1OVg5N3l3Ri82?=
 =?utf-8?B?VFh1aWh0YlBZVnd3VUtKMXd5QUlHWXVEcVJzdkllSjVRc1NQL2kwZWNYMEcz?=
 =?utf-8?B?YnA2eTNidFF1L0IrVW1Ic3ZTaERocHZmYlNlKzg4T0JJSDNIWElRWkgrQWt5?=
 =?utf-8?B?N2VBOERwYzRKTEQ3US9xMHNWOC9wZTJWcENUcGxySG94NUdoUnd4UWwyM09y?=
 =?utf-8?B?QWk1RXIwSm1mTDhWY1VrOTJOdkVlVnpmOFhXeStpVytDUHNJSXFMMDhtZDE5?=
 =?utf-8?B?aUEvV0ZGdk9aOG0yYkN6SkZ4TklJaVRmenZiVFNVWXY0UHVKcklzM0xmQjJz?=
 =?utf-8?B?Q0VSbXp1RitQZjQvYlZvWDhjNVBBYVVKRlNldlR4bWlwS3YwUTU2b1hncnRT?=
 =?utf-8?B?WEI0dGRPQXJtTUQyM01WUEc2TmpNQS8ydjJkMHFjUzZjeFlKUGp0L1JjV1Za?=
 =?utf-8?B?U0o0dE5aQ0lWZURIWjE4RThqaVNxYTVLRm5YaGxlSHcvRUJ3WFZFY01UMGN1?=
 =?utf-8?B?bHMvcUpvUzI4RWUwVEdINjl5dFBlTDBkM2Q4WlRVY05UVUZDWFZ1Sm9Wby9o?=
 =?utf-8?B?ZytoUlNENlBnN1RrR2Rla0NFZ3p0SmdBanBlZ1dHc0w3NkV5aEZLSHJ6MjdS?=
 =?utf-8?B?bGg1UTNhY3hiRkd3RHBiU3FwLzZiNEpQMFh3QVRSRlV3LzREb0lMcGZINDQr?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39bb393e-cd73-41d4-65e2-08dcf1d02f18
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 12:59:22.9079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KL3QcZnUTMKcRWAyy8UmLjX1a0ao4+b9mMWtIDTrRXsgvQY0G3TUdbsyNn9SkjTgnUGQJfzD323tySA2YRQvYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8231
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

Quoting Jani Nikula (2024-10-21 09:29:30-03:00)
>On Thu, 17 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> There has been an update to the Bspec in which we need to set
>> tx_misc=3D0x5 field for C20 TX Context programming for HDMI TMDS for
>> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
>> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
>> our state struct. Update the algorithm to reflect this change.
>>
>> Bspec: 74489
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>>  2 files changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index f73d576fd99e..22184b2d5a11 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm=
_i915_private *i915,
>>                              i + 2, hw_state->pll[i + 2], i + 3, hw_stat=
e->pll[i + 3]);
>>  }
>> =20
>> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct inte=
l_c20pll_state *pll_state)
>> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encode=
r,
>> +                                           u64 pixel_clock,
>> +                                           struct intel_c20pll_state *p=
ll_state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>
>No new struct drm_i915_private local variables or parameters, please.
>
>struct intel_display *display =3D to_intel_display(encoder);

I actually had thought about this when writing this patch, but then I
concluded that a future major refactor in the entire file would make
more sense, since we are not using struct intel_display anywhere in this
file yet...

I can send a v2 to use struct intel_display here. Or maybe I could send
a series containing preparatory patch to convert everything related to
C10/C20 to use the new struct and then this patch as the second in the
series (although those two patches would not be not totally related to
each other).

Let me know what is preferred.

--
Gustavo Sousa

>
>> +
>>          u64 datarate;
>>          u64 mpll_tx_clk_div;
>>          u64 vco_freq_shift;
>> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>>          u64 mpll_fracn_rem;
>>          u8  mpllb_ana_freq_vco;
>>          u8  mpll_div_multiplier;
>> +        u16  tx_misc;
>> =20
>>          if (pixel_clock < 25175 || pixel_clock > 600000)
>>                  return -EINVAL;
>> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pi=
xel_clock, struct intel_c20pll_
>>          mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (d=
atarate >> 1)),
>>                                                    datarate), 255);
>> =20
>> +        if (DISPLAY_VER(i915) >=3D 20)
>> +                tx_misc =3D 0x5;
>> +        else
>> +                tx_misc =3D 0x0;
>> +
>>          if (vco_freq <=3D DATARATE_3000000000)
>>                  mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>>          else if (vco_freq <=3D DATARATE_3500000000)
>> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>> =20
>>          pll_state->clock        =3D pixel_clock;
>>          pll_state->tx[0]        =3D 0xbe88;
>> -        pll_state->tx[1]        =3D 0x9800;
>> +        pll_state->tx[1]        =3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
>>          pll_state->tx[2]        =3D 0x0000;
>>          pll_state->cmn[0]        =3D 0x0500;
>>          pll_state->cmn[1]        =3D 0x0005;
>> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_cr=
tc_state *crtc_state,
>> =20
>>          /* try computed C20 HDMI tables before using consolidated table=
s */
>>          if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>> -                if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_cl=
ock,
>> +                if (intel_c20_compute_hdmi_tmds_pll(encoder,
>> +                                                    crtc_state->port_cl=
ock,
>
>Alternatively you could just pass crtc_state. *shrug*.
>
>>                                                      &crtc_state->dpll_h=
w_state.cx0pll.c20) =3D=3D 0)
>>                          return 0;
>>          }
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers=
/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index ab3ae110b68f..c1949aa1b909 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -280,6 +280,8 @@
>>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _M=
TL_C20_B_TX_CNTX_CFG) - (idx))
>>  #define   C20_PHY_TX_RATE                REG_GENMASK(2, 0)
>> +#define   C20_PHY_TX_MISC_MASK                REG_GENMASK(7, 0)
>> +#define   C20_PHY_TX_MISC(val)                REG_FIELD_PREP16(C20_PHY_=
TX_MISC_MASK, (val))
>
>REG_FIELD_PREP16 should have a mask of REG_GENMASK16, and all the masks
>and fields and bits for a register should all use the same width.
>
>BR,
>Jani.
>
>
>> =20
>>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _=
MTL_C20_A_CMN_CNTX_CFG) - (idx))
>
>--=20
>Jani Nikula, Intel
