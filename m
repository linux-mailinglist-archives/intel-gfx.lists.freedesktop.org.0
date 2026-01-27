Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDjuKj1MeGkipQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:25:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99092901C7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5557210E06F;
	Tue, 27 Jan 2026 05:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A09Dj4GT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC90410E06F;
 Tue, 27 Jan 2026 05:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769491513; x=1801027513;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oqBjFgTJlKVs0HbpflXb3Pq0vfuz/E5R1NhZLSx0SW0=;
 b=A09Dj4GT4sb0cArLpqsFKA0Kk/yZoP3H2FFdctNsamTAj46te1L1guAF
 xlnKHnRg4e2xAhKRNM5+hztzjv4iuXvHsFpshz9lsJqoSzeNHfoY8upJg
 uCasHgh9u7ro4sG+wjwgTS6RjpoaVsnnZ4zlSEdDeTrOidsYiFakqZ1Uu
 52M1aJGke88yl2Ms/dbeBSKPhWcLQaJ4Ol7TivxQSFFjj5NaVArcAzbuw
 /yn9/CVZJoMMvb0QNEVj7v9E5E0OYXbWHaXzJ3fhtuNCPueanbdQ5zIPX
 /ClNza6V4nZTpMHzxHC6mu+NG479WdSMPP0ncBsA8Gz68f9Cf8niSm8/X g==;
X-CSE-ConnectionGUID: 1DyWk20sQbmLlbqALw916w==
X-CSE-MsgGUID: wbIAPObNS1uRtEsl6vOzaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="82107293"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="82107293"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:25:12 -0800
X-CSE-ConnectionGUID: RzONYKkZTPucsnYV00q3xQ==
X-CSE-MsgGUID: Ku8h8qluRDuNeYqnMUWbNw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:25:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:25:11 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 21:25:11 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:25:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltxsIYoouSLDgSzwKGR2qIZYJRHfLDtrXkTYKVU1ZgzqKO6Gx8IKyCjyr0COU7vw3JlzAq3JT4Mkkb+ob1L2fvE0j7VjhribWJr/lvp6rTI0BWWCYDRH1DNHGxGQpu1uFRGtWnFJpZA3hRcINCYhv/BTo9bHzppCRESTMJuB9V1vctAkDCF/f+Shq5mDgUZPrgKEzDNmelNHL/o3EZm8Fy7RiRJGQHZnMechNeeEepSB2MvNP0yEKn/QNcyz+GjhjVNomI11wj4JskzF7Tnj0FWAgs5RmY7wc2223ozyWaAUEeEwFuQL2lUfZuaGIOBHASHusNS3VL1SRPs6vv/WyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/W1e7BhmsF8Qb+YVQTCYtkUPauEWPVvTIrDuAXemRJs=;
 b=fBOflJe0BFnDxhAy/fIe1fpoQAtm9rHQSznNJeL/BS8tuPt5AFk9l7/nIclKjawa5rArFC1zAY4mxs5YSWeYj2IlMu9VQvPv/MLusyG1i/Gi02sI5klISmPNvQP7U/Cn6GzpVDtAcYejomI4vn0vOYkamXiZqpRswIrm2MRsaoOp69XoZu35zbsLdhwM+ZCgHjuBS4AEUJXNwm0aR7ZVyNTHY3fJZbej1kcyZ68ZVFD88SFzu0TsvHR9sTBHc9p3OxjdhCPrkypA8PP0xhr+4nnamc0J1FQ4iCBHY02IPlfepsF20LSz+pLA3pdNofy7zndKIuNcgpZGZETU/oS15Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4602.namprd11.prod.outlook.com (2603:10b6:303:52::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 05:25:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 05:25:08 +0000
Message-ID: <617170e8-3eab-4593-9097-2a9a293938a6@intel.com>
Date: Tue, 27 Jan 2026 10:55:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 03/10] drm/i915/vrr: Add helper for parsing value to
 be written into TRANS_PUSH
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0102.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4602:EE_
X-MS-Office365-Filtering-Correlation-Id: 655df1d0-e06e-4b93-85ba-08de5d646f7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFdoT2l1bTEwMmIzQ0RaQS96MEFZL1JKQWQ5YXJuZmdCWWE1MHR4bkdnNEF0?=
 =?utf-8?B?Q0puRlEzMUJKMkl2TnFuMDZpVUN4aFBXdjFEaVNhRU5RZ3FaUk4rMUpFb3BY?=
 =?utf-8?B?ZHRxbXRYYTNSNlV1VG0yMWlNaDYzSzhPbFY5emtWdjVuKzlpcklacUNUMmVM?=
 =?utf-8?B?MUFJY3dhRTBLaUdMeGtIYUJLcU02b2JEbU1ld3AwYUtoY1dsM1JoWHJGenlj?=
 =?utf-8?B?eC8rd1U4c0x1VjlPemVEdlQxYnRSM0Z6S3NLYUpudUxoNi9jc2trUGJnN2RO?=
 =?utf-8?B?U29ETVRNUEhBS1FwVlk1Mnk2T0JPbWd5cGJwOWdCREdQcVl5R3dMMG1EUlAr?=
 =?utf-8?B?dkxDR1dvTGc0WmxnSEtocWYwSjZxYXJoUzkrRE9aNFlQcjVpckYyaGpQaHVN?=
 =?utf-8?B?M2VVSGpHQTBDMnB4K0h6VFMyQVU0cHZHUS8raWtJU0FYVnNtU244VXhyUHVt?=
 =?utf-8?B?WUJLbGU5a0xLYkpjVWN1a01UZFhMZUJtTHl4YmQ0TjNyRWxHK3VmVG9rS3k5?=
 =?utf-8?B?Zm5xY3p0eUtkdEhqNWpPWCtzZi9VUkEvZVo4TGFiOTlyaUlHY0dlL0tzM1dr?=
 =?utf-8?B?V2lXcVZtZm9JVjNwaG1DWW1XaHg4eFhXUkVVOFVnR3lYVzdvTHc3YlBneERl?=
 =?utf-8?B?Sko5VzMvZXRXa254WkVtMjIwOU5UNVVEOCtESXRRd0txWVhaN0JFU0s2NGRV?=
 =?utf-8?B?NldXV3RlVXJ0bEFMQ2tJVFRDMHRLWTE0d1YzQ25ETEJXa0JML0hTNURBNFZ0?=
 =?utf-8?B?MytmSUkxOUp6UEUyV1B2Qml6VlRUTGYzTFNmeTJ5a3gvbmhDNGRuWDZpNVls?=
 =?utf-8?B?UkpwY2VWWWNMRjlkYVlnRFZlQm41N1VPVi9Rc1ZML3dQOEZqYXdUV3I2VWhj?=
 =?utf-8?B?emxtMUNKTTI3SXhlSXVJOElNMGU3a1cwRDk2aHphTHMvaWFxVkxCZ3pVZUZ4?=
 =?utf-8?B?T3NidGtHeW5pQWFqdTVicXZxYlN3S3BtaHV6Y3lsR2o2Q1VUdUtRNnhDQUZU?=
 =?utf-8?B?TlFXemxtNFhsL2tXWnNDOGx1NmVhdm5rY05KanMwTk9paDJYczVBWVRYRnps?=
 =?utf-8?B?N2FRU1FaZGl1bGZzU0txQXZqZ1FYV3dNemVrREttYUlCbU55YUFoUUlSbm9r?=
 =?utf-8?B?bzNuUnhMcWdJcGwzV25NL1QwVmJmU29PYk4rZDBMTTgyL0JUSmdtNmFIaW41?=
 =?utf-8?B?d05sQWNScGwwb0oxZ1FQdzRXcU1PR0s1eVhDVnZaK0k3S1c0TFF6ajNsZy9D?=
 =?utf-8?B?QkRuaExQSlJIc1FrWm5Va29ZU1BSTXVNM0Z6dElmZ3UzdkJCTzhOTEFJN21N?=
 =?utf-8?B?d2NLMkhHOFEyQU9wZTNaTTFZWDNNcHYvUWNKMkpHaHdWaUd2YTRiU3B3MDZY?=
 =?utf-8?B?QWN5dWlNZDVWVVVqTGh2WTlDcEt5KzNPOVowVDR6ZWp5czY4cjVMb2x3R3JE?=
 =?utf-8?B?eWhtbEl6U25rTjJVaVcrSnlpemtDV0N5YUtNL3dvVFRBVU5xUU1rYm1Ec2tH?=
 =?utf-8?B?TnUxYTllR2IzSDloNHZENkF0ZjdEWUFYQnNtMGppSXE4UzRoSGJZN1NJOEI2?=
 =?utf-8?B?OUYzNGZueVgzYUhBNkt4TXFEUzIzY0xEUmozd0lBaUVjZyt2TjhnNUNQY2Rw?=
 =?utf-8?B?MUZxblpJcmNZYURiZHBXMlVNYUE5Q29iRkYrK3E2U0NKNkRLR0xxK0NnamxJ?=
 =?utf-8?B?WGJXamx5bTFSdjRkTXp5ckhjWHhFaFVDUzdKSjhyMmphOHNBRWlIbUxUOGhu?=
 =?utf-8?B?dVI3VERzYTBFTmxLTGlEUitXWCs2UlloSFhYVGM3TDBUMEx3MW5VdEJTYXpo?=
 =?utf-8?B?RCt4Y2VNSkx1NFBkaWNZZ1AzdW55bzVLZTRFRzdGT29ra2dMY1VsUXBJZ3lF?=
 =?utf-8?B?Y3I4eG5Rb1dZY3VXV3plcEdncVJObkk1U3JaSmdCMjQ5WjhKeEo4Z2tpQzNw?=
 =?utf-8?B?cSt1TS9wdmg4SFVrMDA1UUFmdW1ObWVLM1BHOFJVaXlyR1hoc2ZFc2k0TVBl?=
 =?utf-8?B?Z0R3K1hCc3ZBTGI1MEMreTZIT1Zsc2JITkZRQlBJMXdmZ253NVFYcDExK2hR?=
 =?utf-8?B?NUxLaDBUSFVqUDNqQXFxN1lOeStIUzFkbVRoYTV0d1c4eGx3Vk1jb1oreWQy?=
 =?utf-8?Q?75is=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1U1ODg2dmVTS2hqS2E0Y1RFazhCSzhHU0RKS1d4ZXczemFuZTZHSTZLbmFL?=
 =?utf-8?B?SmxONldnVWY4WFFLZVNNbDd0L3hLUVQ0aFdmUjlYRElFS1IyR3F1eFB0U21R?=
 =?utf-8?B?cW42WXd3eGhPMVdPbThhU0crRWgyYUhSMDhKUXNBS1hUM3F1emQ0M1JvTlJa?=
 =?utf-8?B?bWJFelRDSzBGMVBzNDVOc2NDSFpQQ0lHa2o1b3NmeGFSOVJtWjAvZXVScHQ1?=
 =?utf-8?B?a2dOczIzUnBCNVV6TS9VVFJ0emxlTlIwQXgrMzNuZDlGazhHdjZiSlZWaFpH?=
 =?utf-8?B?NXVCcXYyczkyOWFNSndQL0lzM2NMbXpHTi9ZdmY5YjlyMlV1Wm5wM2pBRmY3?=
 =?utf-8?B?R21vbjFzVW9uelZHYSsvOFErWEw0ZUd3ZEJmVC9yM2VYNjc4MWJoWVJ1Q29R?=
 =?utf-8?B?QlViWDFQQW5FbnVSbEJaYk1SdGU2ZFErR3NNajhpWFRTeExnTjZOcHpsSklG?=
 =?utf-8?B?RDlBVnBNcGE1eGMyaXFtb2ZKOXBTY0xmcVVHeHZyUWVZQVJEdnRaK1F2eFEy?=
 =?utf-8?B?TnRjNW5kY0M1NmZRSHY0WjlnN296OEtMT21rcmR6ekxOcGJNVXhIcmNaWmw0?=
 =?utf-8?B?YUpmclZ1TG5yRFpneFR2OXVDd0dYRjc3TUxXWGxIOGtvUmhpeFlIeXNQSGlE?=
 =?utf-8?B?QkZtQVNVWk5MVk5wVmFZQTJ2WDY4RGV5K0pHTWFwTDA1UjJXVkwvaE5OL1h3?=
 =?utf-8?B?bW03eTdQTnQrbkNBazlWMXZoQ2I5dXlCRExaaWlKa1hyWThLMDA5Z1VyMndu?=
 =?utf-8?B?OEpyMlR2eVRmSVJxRmU2NWFlNjhqRHlRc0FDQzRveDFTUnFzTW8wOXZkaXV5?=
 =?utf-8?B?NmVvYVQzdjRRcVJHYmJnc0NhRUxEU3laSU5kNTZyZktnUFUrUS9LY21hb0hj?=
 =?utf-8?B?ZGx3M3BnSzFKbUU1b0hQUmxBUXo5S2dwZGRZK2FNRnZTM1Y0Y0d2UGVabXVw?=
 =?utf-8?B?S05TRGRnZ2RrWHlOeG90UndoSjRJOW5uUy9uRTVlMm5VVi8vTDhDQmI4OTFQ?=
 =?utf-8?B?WlU2bmVvU2FQVVQrOFlFdkNYdTJ3bDV3dEJFRUpZWHNyd05zV0NNbWpZZFht?=
 =?utf-8?B?WVpKd1hnVEVlR04yaFVCUUlsamg1ZUkwcStNbXZHWUVqSHlnKzg1bWFKcmUy?=
 =?utf-8?B?NHJ6NzNucHc0T1JmTWs4M0k2akRsRERud05MZE91bEp3U3Q1cGRDMzM0S3ZM?=
 =?utf-8?B?SFcrQWV6eEFGeThPQWxYRFRraCtqQlJhRENneUdKajJFN3JyNEM5a1hwdUZi?=
 =?utf-8?B?aFBkbmZlend3TkZPWWxNNXBKd3FtSkJTVklPZXN3UWt3bVJRYTR0K3FTVmt6?=
 =?utf-8?B?SmZDUWNGaU1hTzA5MHpsZFZWNVJlZzhxZmYzSmhKMGs5Tk9yUkdMV3VkVHhQ?=
 =?utf-8?B?UEhmMW01RzFmSDZMMWpZaG92TzhHaXd5RGhERTBOTUFWTHZKMEN4VWlXd1E2?=
 =?utf-8?B?TUQwVlVPN2lZQlZNcUREQlo1OWkzaGt1WUZFNXB0b1FHbjhrdnViNnVUNWdP?=
 =?utf-8?B?ZWdTbmQxaFNoS1lxQ1JTakliY1JNTlBjbVpsRndhT1NBUkVkUlduZUdMbG56?=
 =?utf-8?B?OXMwdW55MDdrSXB4eE9lOEN1akFZT0R2Q3NvMTRWRTM0bUxQaFgvUG41RW1s?=
 =?utf-8?B?bTdSSHp5Y2dCUU05Mm5RWFRkdzFESmw1ZG1BemVxZHFwOTBmN21xemZIQkRk?=
 =?utf-8?B?L1l2b1Y4NHU0ZmlWQXZOZERONmN4RDU2SjhjczBnNDBGSlVpOTkzMVJxK2lC?=
 =?utf-8?B?Vm5HS1RLUHRUYW9RRlRRenN4V095ZEFtL1YxTTc1NWZlMlg3TlpPOHRaUW8w?=
 =?utf-8?B?eVg3cWkreTlwOU1pTXljNUlIQ2tpMXdVR2hRMlIrbnZXTjRCQTBvUHRtY0Nt?=
 =?utf-8?B?TkhEbXFKd3YyL3NtaVBvOG11MG54dHZTNXVzblZ2aDREa1ArZjJaenRqaThs?=
 =?utf-8?B?VGE0MXRiNkFxLzhTOW96ck13Q3Q2L3ZHWXp0QWU4UVdiV3kwbTZNSWpZSWxD?=
 =?utf-8?B?RWpONmpWNU1qcWYxTDNyN01HVXhsMTg5bktyS2lOM0J5NXpGSlEzbjdvbXhl?=
 =?utf-8?B?RkduSis5a1pMeVdlNm1sMWp1Skg4Nk53MEZsd243a0QraGFMSTlidzhZOFJk?=
 =?utf-8?B?QkNhQkJMUTltZnJoTXlQc2Z6clYrcmpkT3lvbnIzNUgwSDlucWJhQzdNanNF?=
 =?utf-8?B?Z1IvVXhVWmNBNFo1Z1hEMTl3MmRSaXFiaDlhM0lPSmpnbVhVb1kzdnNEbEpR?=
 =?utf-8?B?UnJPOWs4MDZ0aHNHTmFzVlNHVG0vdUlPYm84azhvZTQxaGpWcS8rT3g4TDJV?=
 =?utf-8?B?U2xzVmlxQ1lPWTNWTHJLeHVZREtPUTZjblcveEJQdTdxUVFzMmJBNzF1bHp4?=
 =?utf-8?Q?n3uCRl9dFRjnuV+4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 655df1d0-e06e-4b93-85ba-08de5d646f7b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 05:25:08.4613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fYNrd5/MyHgClj5zVpEji7Y1BExWHyoByBaxR6TsG9qVLHV/y3JLJtgn1Xxo670fEErDEQk85o5+QCYCJajXR+foJverpLZv7ZY4VXcsffs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4602
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 99092901C7
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> On Lunarlake and onwards it is possible to generate PSR "frame change"
> event using TRANS_PUSH mechanism. As a preparation add new helper to parse
> value to be written into TRANS_PUSH register. Setting
> LNL_TRANS_PUSH_PSR_PR_EN is done in upcoming patch.


Nitpick : As I have learnt, when the series/patches are merged these 
will no longer be patches, but become commits.

So we should avoid referring to them as patches. Perhaps we can use 
'change' instead of 'patch' here.

In any case the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 22 +++++++++++++++++++---
>   1 file changed, 19 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index db74744ddb31..f26989c74268 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -676,6 +676,22 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
>   	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
>   }
>   
> +static u32 trans_vrr_push(const struct intel_crtc_state *crtc_state,
> +			  bool send_push)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	u32 trans_vrr_push = 0;
> +
> +	if (intel_vrr_always_use_vrr_tg(display) ||
> +	    crtc_state->vrr.enable)
> +		trans_vrr_push |= TRANS_PUSH_EN;
> +
> +	if (send_push)
> +		trans_vrr_push |= TRANS_PUSH_SEND;
> +
> +	return trans_vrr_push;
> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> @@ -690,8 +706,7 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   
>   	intel_de_write_dsb(display, dsb,
>   			   TRANS_PUSH(display, cpu_transcoder),
> -			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
> -
> +			   trans_vrr_push(crtc_state, true));
>   	if (dsb)
>   		intel_dsb_nonpost_end(dsb);
>   }
> @@ -876,7 +891,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   	u32 vrr_ctl;
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +		       trans_vrr_push(crtc_state, false));
>   
>   	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>   
