Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EF8C3A859
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 12:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD4A610E8A1;
	Thu,  6 Nov 2025 11:21:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m5SLej2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43ABF10E8A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 11:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762428117; x=1793964117;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=2PzuIqffSp/u6Z6arESWRsTS0ycU/OAVOg18EIACeoQ=;
 b=m5SLej2llTFc3sH+9i9xLBrEN6fIk3Rc3YCIeCSSvTOTWy15ukkh+RCu
 aFUKzNVRtOcp6KJOCUKYQ6/0o+XmO/BSVM/3jVNUgXxyVXO+ZSkL8H4/1
 C4QlCqr6WuL4UCeVPwzeGNPf9314FyPDuAnZ60vlsgMRm+noEIzEQFLwx
 EUKptEL7kL34DXhwipVJbvNtR25YZl2TKI6frC2MlqGn8sgKVas1TbPda
 JZbdo5ZusRHCp72qwhQM9gJlNBbMbyffWmIewu40877iCBBdbN4uQLL4R
 ahDyYOySsrGcz0c83TcZpIxeJSCFWpM1w0Y0oJaNiroUJQIYsCsju2J4D w==;
X-CSE-ConnectionGUID: 0hsoZWpgQCu/lecahmylig==
X-CSE-MsgGUID: iLmMvgywRneUuKxev6f05w==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75912930"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75912930"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:21:57 -0800
X-CSE-ConnectionGUID: dVElKUvFTMqT4+AO5oiQfg==
X-CSE-MsgGUID: JwSuO/Q7SM6w+wM96jlXaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="218395681"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:21:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 03:21:56 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 03:21:56 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 03:21:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pfRUIJ5QZBExwxzfIHEBMuTjMKgM+p1RHmeCLbtY1Y1j2mXIFm7Xs7DP0X0QogjPkWqXpWjutea4ntVB32/sfL+KAVBs4Xbe+WmCsQp5sK1fW1AHM0nT8WUPKstCLYFjSniIK8KM0O/7nfzH5Yu7zIYS3SI1Pafhsgo45ag4c8RrOKqxsipcTG9XiB3tV2qdo7US3KYbC/My3/0o4ph0Bxpg6p3THiGPepWyqZig2IyAjW2GTYaevXlnSq7VVB3mnCJyXJVpa2sqPuriWsuSgA7UfNK7xs3Y8zp0111PMe8RpRZQIHCFiPYI1MuhUbZ/2/PVclgTXGyRq3VDqUxrkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0Yy7TaFbyxHwyxpQgm/DSuYHHIJ5hkvSfrv/QYSIFU=;
 b=ByDU92euk/GdUxWIQ67hlhbEtBGcoPozXFuxLN+w3p9iqFbqic87jxP99BqK3Pukg7eLcqn0eg62npRg0QRuHzjruetnnt8/MEBuRXKriZ1SDPuAGbqyHABmzJ0Q+AtwaMGfwR/Av3kQRBHVbyVFhzU68HHKzuZc+eRvt2yhWGIbx2i6ni9sXIufU3HAHtmFM0rstwpLTWu98i7PVNd5HP66vCJHNS9y5gCWOWLWNECAx3upWXQhfVei2M3H5GLFvzOYcHBMrOUsmXboT8FCeGxhZPCNFpS4L5pxyQfQzdnYX4cRsGmjiWeed8SRjhocZc28lRFql/90xVK4zo/3iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA4PR11MB9108.namprd11.prod.outlook.com (2603:10b6:208:567::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 11:21:53 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 11:21:53 +0000
Date: Thu, 6 Nov 2025 11:21:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v4] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <xlc43zxheldkx7qudt2x4dbnez4azdq3gan35vi5aevpzxwy7j@qr3epjnu4fhg>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: LO4P265CA0271.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37a::7) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA4PR11MB9108:EE_
X-MS-Office365-Filtering-Correlation-Id: 43a44095-446d-4509-158c-08de1d26afd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L200NllHV0JDNXBZR2dPMWNBbkQ2QVNMMWIvcElRVm93ZW56aStYbDcvQkx0?=
 =?utf-8?B?TnN2bGFiVEZXVkxrTWkvVkZaZnhHb2hHVC8veExzdnNmS2FackFMZTdNWnJO?=
 =?utf-8?B?bTJMdkNNbk9DSXhQVnNJejJwYVhuSEZjU1dDSEtvUnpDbnVyWHoyNldlMDdz?=
 =?utf-8?B?a3g3QkZEZnpDV2RrZnA4R1dzdGxmVnVIcTJTeW5kVHBVd1FpV3BuSUhYcUhS?=
 =?utf-8?B?aE16ek9XV1JuNzk5OUlQY2c2Nm9LamNzbXcxRXNJOWZyK3pBNE1NVVVCVWFr?=
 =?utf-8?B?QUVjZmZvRjFMM2FaN3NaNHpHc015bXNqNnM2RHFRZHBPVlNDWENGUkE0NEV4?=
 =?utf-8?B?bGhOb3FKWnlsdGwvcmdZRkJpVzV6SDFaekl0bmZra2xkT200a1E4a2VZaWkx?=
 =?utf-8?B?blArdWRGRXF0YngzblNKekNNc2F2aXZlZVBLYW9HSE15TlBXZU1ibE9EbkRq?=
 =?utf-8?B?SGl5a3BxU05Lc1NrS3lnVW9jSlNCTUU5ejRtTGhsL2c0ZE55QzJMQ29tU0tC?=
 =?utf-8?B?TkVZS1ZPTnVIZ1FDRUNEMnFzNEozRWZ2K05Oa3dsNUZMYlE0b09aeXVtS0o4?=
 =?utf-8?B?MkZnMDI0dUJNYnl5M2QybFFqRFg3TERhMTFKNVNMTFBmSEhDZTVoM0VqemxY?=
 =?utf-8?B?cHAyYWxqUTFJU05RMjU3NHVxcWhzTVgrRzdCS0Zma2hOTEtpaGJKblJjanBS?=
 =?utf-8?B?ZUFKMFZXVmpzL2FjT1VxU0tkcWZxc1ZoZ3J0ODZHSUtza3dLQWxkMVZtRFJO?=
 =?utf-8?B?ZGlZU0ZqRUdCdEltMVlMa28vMGh5T1BxODFNL1Z0a2tYWk9hS3FtZzJSR0Nm?=
 =?utf-8?B?UW5VWjNEZjZrMldEOUg0WCt3OFFzTmRrVysyMk9pN3ZEbjlmOURKczhjNTBp?=
 =?utf-8?B?ZWRNUXQ3VkdCSjlPSUJEeEZYcFZNQ2tZK2FsS2RGV0pNbEFObE8yVzByVmhH?=
 =?utf-8?B?UnJhV21FdUJDNlFBS3E4cFZXbjVFQjE2cVBiVURyZkJWcEJtRTl0YkZGRUY4?=
 =?utf-8?B?WkRhb2NyMnRpVS9ONGM1LytBbUx5VVVyaDBFK0FUbTNnK3I3OHMyR2ZoVXI1?=
 =?utf-8?B?ckNQVkZyblhIUEVabW56M0xNR0tJSU5wWTBSTGJiREdxa2sxbE9zWGdHMTN0?=
 =?utf-8?B?YTBubGlEZmtYYUo0QVlTQnBzWGo3NGZRemFibTJVRGl6UnpwSmRJYVg5WVIv?=
 =?utf-8?B?TnRSYmNjU29EQm95UmJteUlYa3M2SFdCQ20zTEZ5K3BLcW9JOGVobmVENkdM?=
 =?utf-8?B?cGloekhjRThIMkhPMU9pZGlaOFN5ZXM2eG9YMzZXNnJCRTYzR2pkVUdVcGZR?=
 =?utf-8?B?S0JSYTFMaXhwRk0zck1Qb0RkSFVhSndwQWs0TlI5QW5JanNvQ0NkemluQVV4?=
 =?utf-8?B?VHVzbDRtei82MCtmY1hnRi90WnBwVnh0K2h4cXYwMzMwVmdicHdYTUwwM3pN?=
 =?utf-8?B?Y1hvSjFZQUVOR1czcU1PbmlHb01IQzAyT1NhMWhCamd3THprOWtZWlpiYmJ0?=
 =?utf-8?B?d1NpNmVSWjlXNDFjZEpyNXYxd0FvNVk4SG9uODRodkJGM2dVSFJtaFFHSlFN?=
 =?utf-8?B?Y3pYcFNFd2NzaU92WUMzRU5ObEwrcjFYMjR4Q0dQQWhWak5tSlErTkRtOGRV?=
 =?utf-8?B?ZGg1T2RtSW5DcDAxb1A3clZydEJZNmdzNTI3Y1dpZ2xnUHI1S3l5STdPS2N3?=
 =?utf-8?B?R2o0WnhBZ2VoM2ZnOG9UbEU0RFpBazE2aURuR3VVQ29lcWhhaXhOcUJHMXA1?=
 =?utf-8?B?ZlUvRkhQZnBoaHl2dllIKzZuMmJpVVk1SWdtYzZxRW9LUkRVdGUzUWZHNU9M?=
 =?utf-8?B?Y0FNZzR0U2tkQXVmOGpqOG9QOWpnU2FKMEFCMksyN0Z0cnA5a3pibmRJcVlH?=
 =?utf-8?B?VlRhQVJhdjZZdnpUb090ZkJMdkN6T1ptUW5aYUdYK3VSWmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDFJWlR0TGhFSHU4OEJ1c0piYmZRSFpKMHZjNmR4dHVHbU5ybWcxclZiQWZq?=
 =?utf-8?B?bDJnVkJJTnBBM2RmMDFDWHNnV2d2a0NqV01XLzhuS21YVVFDZFhiY0JXclla?=
 =?utf-8?B?WFp3ekhST2pwcTBZeEN0N1ZDMnVkWEZYL1RheDJieTg4MUNkRGVMcldIZExu?=
 =?utf-8?B?emk0Tjhra2luckNKSXBqRldxTkRHZDQ1ZWNoazZZUXpyTGl6VXVMbEZ5bFk3?=
 =?utf-8?B?M01sb2hEME5mcWxHaDVYWU5Za0dPSXR1UUZoY3Z6d2VHWG9NUGNYODJ0ajIr?=
 =?utf-8?B?bWFwbnEydTgyOVhQVS9MZ0VxMkRTNldaRmZoNHU4UGJxS1Fpd3JKRTh2ZlNr?=
 =?utf-8?B?VTZrWTBIK0E3YXR4ZWJHN3BWQi9xenpoM1dkNGpCSlJSOS91RkQ3TjFMU0Zm?=
 =?utf-8?B?akwyYWZpaWN2ODVsYmFENWMrU2cwVHFzU2VEMnpLcUhsc3NIREE4T09qZGRB?=
 =?utf-8?B?OW1TQmgrYjBETTlhVkh2eUJVenJaK2I5aXdEWk95bHY0L29RbzFJNXEzc1c3?=
 =?utf-8?B?b2pzcWJ1VFRwYlI5K1VnVWxuSWwydDdyT1c5WEphZWFWb3RjVlR6SE5EQ2pW?=
 =?utf-8?B?L1QxVlpDU280YjBQMDlERzJFN29tQU5JM1pMQXAvV2xQSmtiaEVmS3RNSFFB?=
 =?utf-8?B?SlRrcC9nZm14RHhuUnNmN1VkWFlLdUlncVZPWGVZdUY5TVcxbHhra1RSZE5l?=
 =?utf-8?B?VWcvbGhCcFJxMnlUZ3VNdWFOcmJsT3ZrM2NrMW5hVTFCcysxcEx6U1QwZGRz?=
 =?utf-8?B?dTMwR3JvdERCUTJ2bXZaY0FidXdONFlwcCtVZXk0WkNjbTVOQTM0WjVsMW5D?=
 =?utf-8?B?L0ljTmt5c1hyQkxxL0J2NjV6VEdZaitHWHFienY5NFBTTlRvODV1cmp0Y1pP?=
 =?utf-8?B?dEw0VDNOWEgvb0VzNDIxVy9ybm1yZk9QZS9nQXBHV29BbFVudHFtRGpVcXhm?=
 =?utf-8?B?RHhkSmJCazF0T1BJbWVrWlRpMnlEUmVVUlpBaStZL3d6eC80L3RRWjlrdGVQ?=
 =?utf-8?B?TkowZC95Sm9hVWwyek1kYUEvTXQ0aVhFNVNMVFNCUDRGVVl4RlBiYVJkTWF6?=
 =?utf-8?B?NzBEcmsrdGtsY0RQMGVFNDdBYVAzODhZSW5Cdk1LdW5XSkhNNGxYNzYvZm5C?=
 =?utf-8?B?d2NnMHAzT05YalgydHc2eTRRQkF3UmhEbDZHM00xaHVJNGtXL01Wa3VZWUNE?=
 =?utf-8?B?ZTEweHdUa0t6TXUzNXNMTnZBVzVVT281WDhCUlhremk1eE9SeXZhWUUzbFYy?=
 =?utf-8?B?UFp3aDB6VzJTaW1mOWhZbkwxdytJZ0xmVE1vaUYwWDNQdkx5UEZ1VHVrZHFp?=
 =?utf-8?B?TThsY0ZhMzBGb1Uyb1d5ckFFMi9tRFY5a3ZIaVZWY3Jvc3JxV0F3bGQ5RWtl?=
 =?utf-8?B?RU1qbXhIOGl5US9vVW04SDNnc3QrSUFRV3BobER2eSt1REhYZkRBbjhYNW9J?=
 =?utf-8?B?aTNERHo0WWQ4eWlPTFlKUUhSOWh4WlBRMlJodkRjRGNLeUtOSERjcVFtUUdQ?=
 =?utf-8?B?MllrZXdEYURQOHlWQWcrL1VrMGRCWVVueG5ub3Q3cEVadlVTMFNpdjlDcmoy?=
 =?utf-8?B?YU5vRXBhM3JTQnVjQjBJMmgxdGE4K2p5NmIrTUFyQno1bDllS21WNk94blNC?=
 =?utf-8?B?OEpta3NsMmVkUHFEbDYvU3NaQ1BvODZ6Ym5Td3dac0Q0YWM4WFU3OVNJNXAz?=
 =?utf-8?B?QWFSbC9DV1NpMUgyQ0JpcnQ2MmUrSlBFY3EwTVpnYVBXUzFZQUhxZWtWUWM0?=
 =?utf-8?B?dHB6UlRsZVlrV0V5a0VFdVJ3ZmhoNkczL3dtUmU4TFJ1aTZUU3FFNUlkWlB3?=
 =?utf-8?B?ZU55RE5LWEJEUnFZZzFEUlQxMmd5L0g4Q2trRkpsd1RISzhnNmpubHZidklQ?=
 =?utf-8?B?UzJ4YU0xbzltSUVXOStmdXFpN3NzcFdzb3pqZ2VRUnhJRm1ueTVnOEJyR2o4?=
 =?utf-8?B?UmgwdGdzV2xNb2RCMThXbzRZaHZQZ0VNSkRMNVpTRnV0eUVMaWNNRy9hMVZT?=
 =?utf-8?B?RjArdFNabDFhUmd6ZGpxNDJtaUttd0F6UE1QdlUycnZCdDZnNHBjZGNnaDFU?=
 =?utf-8?B?NkVhRHJ2M2Q0QytIaFpwemxzd0c5c3grb2pEckpWcWRvYmhYemJ6Q3JMSWdn?=
 =?utf-8?B?UUM0SVI1SnYxRkt6K3R4NWg1SHhtQXNVQjhzV0prdWFJNEpGYW5ET1IxQnVC?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43a44095-446d-4509-158c-08de1d26afd7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 11:21:53.0420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LC8sn2EtzLB2daJ5GrNqIA9czvHwD7brlU1AYOrF5UanZWGnurAX7cdx1AsDtokUIAJFRjpEOanWrxPUXD2pPBpRgc4QEJYXOT/rl7VM/io=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9108
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test, a mock file is opened in
igt_mmap_offset(), which results in allocating GEM objects for
page table structures and scratch in GPU mappable memory.

Then, also in igt_mmap_offset(), the file is closed (fput) and
the cleanup of these objects is scheduled on a delayed worqueue,
which is designed to execute after unspecified amount of time.

Next, the test calls igt_fill_mappable() to fill mappable GPU
memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the objects allocated for the mock file get cleaned up after
    crucial part of the test is over, so the memory is full with
    the 1 MiB they occupy and N - 1 MiB added by
    igt_fill_mappable(), so the migration fails properly;
 2) the object cleanup fires before igt_fill_mappable()
    completes, so the whole memory is populated with N MiB from
    igt_fill_mappable(), so migration fails as well;
 3) the object cleanup is performed right after fill is done,
    so only N - 1 MiB are in the mappable portion of GPU memory,
    allowing the migration to succeed - we'd expect no space
    left to perform migration, but an object was able to fit in
    the remaining 1 MiB, which caused get_user() to succeed, so
    a page fault did not fail.

The test incorrectly assumes that the GPU mappable memory state
is unchanging during the test. Amend this by keeping the mock
file open until migration and page fault checking is complete.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
There are 7 GEM objects in total allocated as a result of mock
file creation:
a) 1 object from __i915_gem_object_create_lmem_with_ps()
 -> i915_gem_object_create_region(),
b) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pt()
 -> alloc_pt_lmem(),
c) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pd()
 -> alloc_pt_lmem().

I inspected the behavior of this test on ATS-M and DG2
platforms. The latter always freed the GEM objects originating
from mock file creation at the end of the test. ATS-M, on the
other hand, performed the release much sooner - around the time
a call to igt_fill_mappable() would be returning, so there was
not much leeway in the timing. I confirmed this by delaying the
fill operation by one second and that did away with the issue.
On the other end, adding a delay to __i915_gem_free_objects()
produced 100% reproduction rate of the issue. However, I felt
that juggling delays would not have resolved the problem, only
decreased the probability of this race, so I decided to increase
control over the contents of mappable memory instead.

Chris Wilson had a suspicion that this patch papers over leaking
vm_area struct, which was addressed in
f768ebbba9110846c9f986a96109d70154d60b5d, but that did not
resolve the original issue.

v2:
* change ownership of the file used in igt_mmap_offset*
  functions to the caller (Krzysztof, Sebastian);
* rename igt_mmap_offset_get_file() to
  igt_mmap_offset_with_file();

v3:
* remove double fput() call (Krzysztof);

v4:
* extend the comment above mock_drm_getfile();
* reword commit message to contain information about GEM
  objects;
* rebase;

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 23 +++++++---
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 46 +++++++++++++------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
 3 files changed, 57 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 0d250d57496a..c561df41ba49 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
 	struct vm_area_struct *area;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1178,13 +1179,22 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		goto out_put;
 
 	/*
-	 * This will eventually create a GEM context, due to opening dummy drm
-	 * file, which needs a tiny amount of mappable device memory for the top
-	 * level paging structures(and perhaps scratch), so make sure we
-	 * allocate early, to avoid tears.
+	 * Pretend to open("/dev/dri/card0"), which will eventually create a GEM
+	 * context along with multiple GEM objects (for paging structures and
+	 * scratch) that are placed in mappable portion of GPU memory.
+	 * Calling fput() on the file places objects' cleanup routines in delayed
+	 * worqueues, which execute after unspecified amount of time.
+	 * Keep the file open until migration and page fault checks are done to
+	 * make sure object cleanup is not executed after igt_fill_mappable()
+	 * finishes and before migration is attempted - that would leave a gap
+	 * large enough for the migration to succeed, when we'd expect it to fail.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(mock_file))
+		return PTR_ERR(mock_file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
+					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
 		goto out_put;
@@ -1295,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	vm_munmap(addr, obj->base.size);
 
 out_put:
+	fput(mock_file);
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..6f1b6d5cc2d3 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,17 +9,22 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
+	if (!file) {
+		pr_info("file cannot be NULL\n");
+		return -EINVAL;
+	}
+
 	/* no need to refcount, we own this object */
 	drm_vma_offset_lock_lookup(i915->drm.vma_offset_manager);
 	node = drm_vma_offset_exact_lookup_locked(i915->drm.vma_offset_manager,
@@ -31,22 +36,35 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 		return -ENOENT;
 	}
 
-	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
 	err = drm_vma_node_allow(node, file->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		return err;
 	}
 
 	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
 	drm_vma_node_revoke(node, file->private_data);
-out_file:
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	/* Pretend to open("/dev/dri/card0") */
+	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
 	fput(file);
+
 	return addr;
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..7b177b44cd3c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0


-- 
Best Regards,
Krzysztof
