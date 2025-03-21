Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CD9A6BA27
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4184189861;
	Fri, 21 Mar 2025 11:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QJMmIH4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4FD89861
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742558011; x=1774094011;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eWb/MZPrZP/oZg+x45TFVwVLeQr5l+qHpLLKfaXg4G4=;
 b=QJMmIH4oKddigwMEI9GBNVykvHcQ5LrxW3STVf+uWd0sEUQTv3Nip88h
 F/am7gLHJm7a8lREmpr7tF61GVJ0VBbN6ir2D2+TwrxurBMVDmLvU5gl7
 oiksV46xsQhxfnX+EU7VA3S42S2svsKKvSlzNT6XDg3qjUu3kzCFs9Edw
 rnIxntEp6HsW6hH+p/31p3tlOwqX3Qv2LV1wAFWyPLhI7KcSQdSRliAsN
 u2+KD1x1N6Ogh5KUssRzQaR4hRjoXXSmJHwWGAy+y2gigZ3aulSWZ7Cl+
 CUrlF6POBOBxk4fS2oiZsiUmqs2GeGbwKeQxBVeEllIvkTB4Bz9Dms8sG g==;
X-CSE-ConnectionGUID: dJNfuEOlTpKc6nbTkPdh8g==
X-CSE-MsgGUID: mFMDwFsrT52UOQesRh2GgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="47598915"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47598915"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:53:31 -0700
X-CSE-ConnectionGUID: Bl7bulmfQkWwGW1Rz+8Kcg==
X-CSE-MsgGUID: eu/v+okhQeGXzrAKjpeycQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128488151"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:53:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Mar 2025 04:53:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Mar 2025 04:53:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 04:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VARESEcNhuOBrxPfhczeWT6Rm3APZ1sSOuXz+W6vmFwLwceoVWwMX35Eza9WPSPlXV/JT+TKNMyub3wVfpFzntRW7x4moVr1m25o1Ps5jLpa2joK42g7kt5zSs/e/Zm3MsTli5BGHO+7YdoBfUpAWTfTTj6BPFvcc2aFH3eXBh/TllecuF79ZpJ1Wa4Xq7H475p/d2pFXXffwhDkxGXnFfidyELmkhD9L302NIG/WsunisVm/bbhAISHryK9BrK6JGNCu72k2esFwNYiEGU34c8cv0FTq71ZLFn79GJngo2chdiqDGn6XsyetKP+ZNGHAAww38rYYHwtwmuIEUUSWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GK18etk0atiaLpShMcPvOwUKPBYSgf0wlNDjqzRnvQk=;
 b=Qyj+QXwx7B9aNdbkVtOfYNmT3n/xwNMsAA/ApW+nvaTVK3T1XZpevCXgx5bqp1f3+55htVPY9EKKAiXar6gK6gAVY/4mPq5ZZ/YHL/6aJBhBI3UYC6yJUQu1IohGImU7uSQkanRc6FxgZoKTDmAUeaFwjFmKNGoXkmS0kfFyUO3yVy7hT2TdAlX3idjmgNmM1zStmLVSg5IHjC3NmFes7rUOeBLh1W/qLN3wCBaI2pCrVX2+dOKmHObUoC8mdzuEUA39mcoUslu3juDwkflqD+Po+R5sFtF5Dy302vQrDajSkw7/tou2pp0pX8zoPS1+Hj87CFjSAU9cLgJ5SSCEEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB7085.namprd11.prod.outlook.com (2603:10b6:806:2ba::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Fri, 21 Mar
 2025 11:53:26 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 11:53:25 +0000
Date: Fri, 21 Mar 2025 11:53:16 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] i915/gt: Move context wa to appropriate
 *_ctx_workarounds_init
Message-ID: <brgphospln5i27nxerzkpghcmglfggku5onyaptad5egsmznfy@aaj7pq3sx2ps>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <a3oztkscewrfopetalmu65jaouxhxdmiu2fqi4pdbysxyg22kb@iqgeqy7zohvr>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <a3oztkscewrfopetalmu65jaouxhxdmiu2fqi4pdbysxyg22kb@iqgeqy7zohvr>
X-ClientProxiedBy: ZR2P278CA0077.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::6) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB7085:EE_
X-MS-Office365-Filtering-Correlation-Id: 61ea6a08-e8e7-4328-9a7d-08dd686efd0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bnZkZGRoQ0VKdXFONnhxdTg2UnhRQ1BKOTdRVkYyRnZZRWdoclN1ZEZMeEI0?=
 =?utf-8?B?UzlacC9mSkdxaDIzcnlzWjZnZ1NmVnhVZGU2UlZVVlRpMVVINHU2aEVoKzRR?=
 =?utf-8?B?MUFxTWZhRk9oU1ZuYnBST1AwWHRnUlBDNFp3VjE4VStlU2hEVVZFK1dHZlV5?=
 =?utf-8?B?OTJEZ1ZuRWlTYUwzQjY4UmlOZktZeHdLclYwdXMxaXRLeVl6YiswN2sxOHRE?=
 =?utf-8?B?T1Jaa0tvdjNheEFuNFdob2dNUU9VTzZweG9qSi9jV2owQ2FTU0w4T0pWNzZ4?=
 =?utf-8?B?M0xjZ0F6eUVKbEtISjVCemdQNEFjRkZhb1JOSDgyU3hkRnQyRU8vRFVvMGJk?=
 =?utf-8?B?RThYakF2cC8vSGxZMlpBYURjazRqTUd3MlV3QnJwT3pvVStwZDZ6WE12VW1h?=
 =?utf-8?B?RlE0WVFoV1hsbEZaWHFMUFMzSjdHbm5Sb21lWm5kVjd5TTJ6Qm9IWmt1K1g5?=
 =?utf-8?B?TjJ1S0l3TWpyOFNZVDlMRU94bUFrcHhWWTJUemdYK1pHa1lwSXFVTnJ0K1Qw?=
 =?utf-8?B?U2tIUU9JYkRua1dieXZpb0VWU2pxanFjbDhWYk5ydTFEWUdrMi9Rdm9BZm1w?=
 =?utf-8?B?WVJmRzRiN1NOTStiSTZvaUxxSkM1Y0FRVWEzaWJFU1ZhQXU2QjRndGh3dG1I?=
 =?utf-8?B?eExhaFlqQUYyOUY1WUdFbzMvMTk2aHVkOFVCZkdRSE5oSE55RDVFdTF4YVVt?=
 =?utf-8?B?NDVpT1lFQmdmWkY3N1lsRm9GMk1ra0ZNbEw5NnRqc3JzV3Nhc0xZeUNPNkha?=
 =?utf-8?B?bVVXU21RRXQ3Ulh4SjlVVE5oU1M1Y2YzUzc3RHJhRzhLL2R2NUFIN3p1bDZD?=
 =?utf-8?B?eldkUGJhNnVFZ2wrdzVRVVUyenV4dTV4eXZieS80cG1EbUY4bXVTN0czWE9J?=
 =?utf-8?B?MFlQOWZLeFcra1R4R3ZqS1Z0YXhTV0RSZys3c0tScWp4YnJKUUxvZEtmVlNn?=
 =?utf-8?B?QVhWRnNYb2RCNzlGM212ZGc2czBTSUNoKzFVTjFDaU8rRFZIUjg1SW9iVE9C?=
 =?utf-8?B?RVNUUWRCY1VaR0luWCs0ejIyR080Y21CNjZDTVorcjF6RlZ3Q1loeUNxNTk4?=
 =?utf-8?B?dnJObHNXZUEzV0t5V3FEaW03cjVqbmJtd2xzVzZpMVNNNlRMMVZoUDNOcVBo?=
 =?utf-8?B?YThhanlMS0t5OElKM0dqbFllSXJLWUpSNENTMVJadnlpdnY0c25LSFZUdmg3?=
 =?utf-8?B?ZGh1NzczeHBsV0w2NW9Ta0JTQklYR2c0TlJBekdHRm1KUWJNQXdIdkV4QmI0?=
 =?utf-8?B?UzhGTTBjVWhlWHRtNUU2SGZuU1VIeEFWNlkrbEFUb3A2K1FjUUdwOFZ1a05P?=
 =?utf-8?B?Z3orS01qOW9oWkZKSEF5SWZWSmlCR3lnR0F1Z1d5bU1HaXBvZzhWa2w3RmQx?=
 =?utf-8?B?RmV1dXpwK25kVmFNbDNQSDFqVWNHTHRieGluc2Vkd3RyL3dMdUh1bEduQkh1?=
 =?utf-8?B?SFptRlVuVXBnamU2c21IVkpnLzdiSEZwUjdOSGZLYUJNWWczcFVWTVVmbnBm?=
 =?utf-8?B?TDFRa1pMMWRkNDVwZUR1bitrdWJNTjVpOVpRV3MyUGdNUGFqSXROLzN2VDJ6?=
 =?utf-8?B?MGI0Yi9sM3kwTmtPRVo2Q2ZpTi9KYnhnYXBDdzlISWsvRmplWnFFYVpoYmVu?=
 =?utf-8?B?NFlKTjNOVXlpVjZHS1A5elFEdGZxNGpvZTNGelJrcFdSTkJMWW1zQ3dTdUo2?=
 =?utf-8?B?ZDQrUHdKOERUQ1IrNmZjaGZuelNNMlhZZzc4OThGUTB4RkdhSk84ZmpEbGpG?=
 =?utf-8?B?WXJaSEVjTDJwdERaR3I3YVp1Qkg2U3o3N0tQaU9XU2hEVkNxTTlHdjNkUjgz?=
 =?utf-8?B?cERQUVRpV2dNM0NrWkUxT3ZieWpEQVVQeVUvMVRjQzF4UktqRk1IZURUMitP?=
 =?utf-8?Q?UDYChQRNs83Ny?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEoyd1dhWk1lMnZmbisra2dlcE5CVTBKVkRkNU9tejlJN2V3T2JFYTI2LzhJ?=
 =?utf-8?B?YTdnbmRLeUJETk1GNy9NZzJhdFhKMnE5YjFaeGxNOFFJTkI0TFFoL3d1SW16?=
 =?utf-8?B?M2dVT1c5eVU1NE9UNXdMYmFMVkdPcDVwdmozeVdnSUlvWkdhME9rT3dUMjRE?=
 =?utf-8?B?MDlpZWxqVzd1NnFEVHg1cFFQWHdueWV2VXE5czQ4UFdPTWtaT3cwUnV4Q2Yv?=
 =?utf-8?B?SlNlUlR6ekZiblFGVmtVdWZGTVoyZFhLemtBNExMaWdUV1NIdFNqR3h1QmVD?=
 =?utf-8?B?dGxOTWtlTUg2aUd6QTJ6UlRPMk0xanlHZERYK1FXNzc4bDRqdkR6NEt6T3dH?=
 =?utf-8?B?TEkrMVh0K3llbnpjOFkzZjZmVlV5LzBjOU1wVXd3Z3JuZzdTVzZ0czg1bGtR?=
 =?utf-8?B?dVBOdHdybHE4QUg0RWFIekZYOEJtZ0JidWQ3MU5oUUJJeHdNUHhET0g1OXpR?=
 =?utf-8?B?czdyM2FOR29VN1FKWXRUTUFRTkszRkNGU2M2QzVPOXd0emNWUDFjWkwvcXZ0?=
 =?utf-8?B?cHppcFE0cEF0bWIzR2RNU2c0anMzSTUwVmtUZkxrb2tBR2h6aEdpU3AvMXZs?=
 =?utf-8?B?UjVIQjBJOE11Qy95YlpRSE1LaEpDekwrcFpqMktqVGEyUU5XR25XZERqWU5o?=
 =?utf-8?B?eVFsdE1ocXJobzNTT1hlU3dRS3BpWlBXRmtYWTZNTUk3anF3L1FXRDlNUzJy?=
 =?utf-8?B?OEZaTXZuRHZGbEVWdlI0ZmFmS1Y2U3YzOFR1amJaR0h3NVZYNkY5RkY0SGo2?=
 =?utf-8?B?elh1S0xVRVp2eTVoMzNTODk0ZlB3VFcvV0ZEK1FTNTZsWG1NanltMWdnaVZJ?=
 =?utf-8?B?VHZpN280SFZwVTQ0ZVU2bWwxMXl4aTNhYTNRUTNVWHoxWE9aajN6SGVWVmE3?=
 =?utf-8?B?VnpBNFRSbzNDdy8vLzdteHhzKzl6RDBWSTd0S2x5bUVxTUtEV1orRE9xazRp?=
 =?utf-8?B?dUdtUktzVEZuTXhnRm9HbWtzU0J4YjZzNzBaWlo5TGxCTk1KZTVmcGNydlFt?=
 =?utf-8?B?OGZnZkhXNlFDaVBEaGl1MFJhV1pIQmhRcFUvY0VhazV0WkVINUkyNGhlWjlQ?=
 =?utf-8?B?TmladUxkekNwWG1saHlDa2pSZ0pKMHNqR1pMTzM0c2RkRllPejBnR0NtUHFY?=
 =?utf-8?B?Q1JGajRRRngxV0xoZC9UQ2pxNW05bmVweitsVTNnUkdkZkRFUkhONS9Ua3hC?=
 =?utf-8?B?YmdsVU43S0Q4QnVSQUYyc3lscTVZdTl0N0Q0c3NvRGl2ZmVXQ1lQVzkyMmVV?=
 =?utf-8?B?LzRNSkNlai9qa1lWOWp2Q25NdW9KenBPa0NOS29heXNYaVh1eDdEdy93bFh4?=
 =?utf-8?B?ZXp4WlIxekhLT3BrbDMzT3psQTdxc2wzaWkvSGFybHJEWHFXQ2lOTU5mV0RP?=
 =?utf-8?B?dkNzRG54SUxlVWYwcHVyc0thZjdYK1FWZWtaT0JiR1pJaWgrVFhXSjhVd3pC?=
 =?utf-8?B?c1BBSWlKT0NZYk5aT3BGRVY0VFF2STBlOVhNb3k2TnkyMC9MbU9GWS9oc2hx?=
 =?utf-8?B?Y2ZuRFRHN29aZDkvNkhKa1RqV3lVR3A0QzVUdzJFZ2JzNXBhVndDTmRqZnpi?=
 =?utf-8?B?QVZFY0FBaVY2emQ1aHpjOUhQUXBFQlQ4dDAvR3NXSnM0M01DdXI3cFFXM1A1?=
 =?utf-8?B?NnNXczMrUGJqVGNGcWc0Q21MNEMzdU9rM0NudlpVWWQ0VmptenF2TXFyZFdE?=
 =?utf-8?B?SDBXOVJoN04rOVp0aTVwRHlqdTA3ZGozZVg1dzZocUhQWG5NMjhQVEk0dU40?=
 =?utf-8?B?Njh2azFkVWVCczJXMDRJbGsxZVkrRWhtVWg1QW1aOEpyOVZQNDF1QW83ZVIy?=
 =?utf-8?B?a2FRL2Z3VDdSSjBTcTlhdm04eGI3NGdsSnAybWxraTVWZmJXa1NEaFBEZnU4?=
 =?utf-8?B?TmRzUGxkYjEzaFFzV2ptSXBpVXJlRzBKZjgwWldtR2hjMldGb1JYZ253NVo5?=
 =?utf-8?B?VXVxYXlBTHJvUEwwWm8zUkRsRDloUU1rRk4rLytIWG9oT0ZqU2JjSDJpT29a?=
 =?utf-8?B?N3FjOHUwNEFWT3pHamlvT1IrOXA2bDk3V0lmR2xsZ0FpUDZPUThnMnhkbzlK?=
 =?utf-8?B?UEhvUFFXSTF5NmpYTnJFa3hIUWowN2tKNnRPQ0xUV2IrZjBCUzg3Zy9iNmxJ?=
 =?utf-8?B?cUJqZEt6aHozclFMTWRSeXhFNkJpTTdlSlptUzBsQ25UWFFRNk5na3pEcmNq?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ea6a08-e8e7-4328-9a7d-08dd686efd0a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 11:53:25.8758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D98IGo4ixTKjWEXv+QAofiVkSZlEx/47TeMbeS5IvrU8FjxKEZTBu1AuDptRHdwjhI9R7MuIc48Z0rkG7Gk1U51kG0E1Lj8hsEc52ijmB9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7085
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

Hi Sebastian,

> According to bspecs, CACHE_MODE_0 and  CACHE_MODE_1 are saved and
> restored as part of Context. Let's move it to `ctx_workaround_init` instead
> of `rcs_engine_wa_init`, this way workarounds are applied and saved into
> the default context.

These flags are already used a bit inconsistently in this file.
Before this patch CACHE_MODE_0_GEN7 was used in
gen8_ctx_workarounds_init() to intialize the default context,
while all remaining usages were in rcs_engine_wa_init().

After your patch the inconsistency still remains for Haswell and
for Ivybridge, but to remedy that we'd probably need to
introduce new functions "*_ctx_workarounds_init()" for those
gens to have their workarounds included during default context
initialization.

So the thing to consider here is whether we prefer these WAs to
be associated with context or RCS engine functions and commit to
one of the approaches.

Best Regards,
Krzysztof

