Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBDBC011E5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 14:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D8610E3FE;
	Thu, 23 Oct 2025 12:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kTFAgYLz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E76D10E3FE;
 Thu, 23 Oct 2025 12:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761222433; x=1792758433;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u1hKohF1BKzyB2vR3YptnDTeKQc4pPVAjRQdQIqGpp4=;
 b=kTFAgYLzmdFeXcYCzDQXo2mdHJhtLMxz1+nhu7WqIwehGtkrSXxjdZVv
 IR1dCstvEqJ/6vdDbi4ivm0/z8t6ks0hs7NgmdmDGZNQKFkZF1m9ZWMRp
 H5iknpzQXkAYcuBzoJdIcxLzsH/pnR51hFfc57/WO3iBDIdVNsYmf8AFD
 U7DWqpRK/C3wNMu/qVjMLmDp3Zq5UbEl9on6DM0VP3VtC2Z7M9xJalLZe
 LWdJARbYhQ1opUS8gjadSUtRJXi+10sEmrMZ7Tne5Jx1eYkrkZO2RVN7a
 pT62oSFxvWwJJnPlXpcsj+raEUipJJWs5B4RM6Dx4cijpGvhfIIufwlFR w==;
X-CSE-ConnectionGUID: ljOAKQU2TlSCvDwqzwpWXQ==
X-CSE-MsgGUID: gQBnh4fPT8iCk8DXNDQqbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63312495"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63312495"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 05:27:12 -0700
X-CSE-ConnectionGUID: HHHEHrr0T1O1lXy3s2ep+w==
X-CSE-MsgGUID: NAEcFLUeTLi8s3oCRk1OOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="207798836"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 05:27:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 05:27:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 05:27:11 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.67) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 05:27:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rNsmeKxHaNCcupENRwG1EuQVnWAsYGTcgthiyYODQfhf9hZJ8fiEemV3egiS/Q1JD2CdZrogLbT/bNNo4/6wdzQlHtxJPXm7rTt4uNtDIGOfVB7fvZa/Urtw3/+AdaYg0MeaGj+pW8ADm3fChR+DtxIFz6DbMF0ppkN2mXyWVn3VHiLxwLTeFgs3OyJPovdPyDtYJaJHiu9kVwXHE+vuCnNfqYXZCCwx6WM1Gfxp0VCiI9P4m1b2By6xFGgDcIvguCbl2+t2zhSJsFjS5RhYnjx7TzzIRjQMAWZOkUwntYJXWoGmwFR7R3ABPfaOyZXS3UggIjsPMLGhlOvFgQRTPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOZeov9ThIrJuxy/pNhmaV3f2mf4hpbC6Iri3fcuJT4=;
 b=UryvqE+NkFMALDuT28Qy//SaQk5T1LiwCatI8nFbia4Q/BgJrs1n8lDb+zxP9xHtF6AuHhlvhrF3LUfU7Dz9JzFxVqCx9tYQMpccy5ve267CIy792pNmwpIE+90+Y/tmYaLZh+HpWNGbNjGJvecD2CTE06PW7AcqhBOM5qhE0ykHd2TEOZxLeXqggXMnJ0o2PtjY2yZZnJuQpoUIeasItsYtnlLFc7t6QKX/+VnRAs020FCtf2eiyUWW/OkdiYt5GQOY3oi11/JWHvVNQ+JB9l+RlX8KoiLoIcekiJxRg3jFzv7EEoYashUrCnC5xQ8t2D7A/gp0haxnE9KV6Ugt1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9253.13; Thu, 23 Oct 2025 12:27:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Thu, 23 Oct 2025
 12:27:09 +0000
Message-ID: <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
Date: Thu, 23 Oct 2025 17:57:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aPoZ05jth8oGvoGk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7808:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b1a7e4f-fc87-4a1d-a975-08de122f7bf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SVZvbm9vSC83c203WkR4akRlYXpaS09aaDFYWTJPSUJ5LzNoblY0SG1nSWlG?=
 =?utf-8?B?aFJjQ1ZlUVVFN2xrZjY5Y2YvbERYMTJRdHhsT2pmMFRoZkU5K3NyKzlMSmhr?=
 =?utf-8?B?TFV5aGcvOVVjYkY3U2FhS0hOZm1uUmFCeVM0TmFFV1crQ0wxRitaRFdUZEY2?=
 =?utf-8?B?L1BaSjdBMGQ2a2tucVRZaEh1WE8rbFFJY1VvQnR1UjdvbEo5MFNCVys2TmVH?=
 =?utf-8?B?VTQ0dWpubW5KdzNrYkltRGdJdjdBZzZuaHZiczYxS3dkemZTWUt1QjhKL3pm?=
 =?utf-8?B?bUZoRE1CcVJ1QjczOWtlblN4VXlkbk94TzF3ZkFScm5QeW15MVFNRkpPT2w2?=
 =?utf-8?B?TkVvR3NvYWRrYVVxWXU0SDYrS0tzZERLNlBpNENtWFAyNE9SOWJMdlhxd3cr?=
 =?utf-8?B?YlZBeVN6ZVBnOStVVEl6ZGcyN0tQSVY4QU1FTEo5bVhWRzBRcGxFVFBTMXgz?=
 =?utf-8?B?cnBiTUdINnk2RkErMTdvYitNQ09xYXRBSDh6dnIzcDJ1MTlvclA2Q1FzaEw5?=
 =?utf-8?B?ZUpqZnNCNlByam0vclFJMXljam4yNnFBZzNFSDNIUlJoMlBIbm94VE50cGNo?=
 =?utf-8?B?M2ZtenpxT1VsSHE2OGVWcnFHRzh3VmUyUkc0cEd5azdQNFMzM0k0WmVwVm8x?=
 =?utf-8?B?TWF6ejlpNWJDRlpWWmtrNTJudi92akd1M2NqcldYaThWQ1U5K1dWUEZGZk1Q?=
 =?utf-8?B?N2s5ZDlEa2tsS1QwK1Ftb2sya2wyOHZaOWxORWMrN091M0wwY1VUVnljZGFj?=
 =?utf-8?B?R1Jmb2l2L0diUitsQTZkMWYxTHBkenJmby82QWlwak5tNGI5QmNDdG0yT1lE?=
 =?utf-8?B?dUthN2hlalRwRGZiYlJMYXF1enUrWWhzYmVoSzk2YWgzRkRWaVpiNEEzbG1S?=
 =?utf-8?B?NmUrS2FmNVkzbUNmTlR1Nlg5WXRJM1NUNUE5QjNMMGk1SEhVbmVnVnRwOXc5?=
 =?utf-8?B?UFRlM1VCcTc0YXEwYW9nTEhNSlJRVWJpWlF3U2ZQeGtnR0FSaWRidjVqOWkv?=
 =?utf-8?B?S2o1WjQveVBpZnRBekpsN0psNWZzQVQ2MzY2WU9PSVFlaDMvdlp4Y0RwZFF0?=
 =?utf-8?B?KzlVVnpTSFVZM1RQQjE2eDdtMGh4TEJDbC9oQ3Y1TXVoZTFpdnB0Tko1WHpy?=
 =?utf-8?B?WE5sd2hFZW9ESEFtUHlDalZFRE9sY1Jnb2ZXQ2hoYmRXR2hvNGpUK3BRakFQ?=
 =?utf-8?B?RGJFdFMxVFlJZGN6bzNoT0VmWk8zYTZKWkFJUHI0UVZkMWhaMGpRQWNiNHhN?=
 =?utf-8?B?U29KcUpWR2g5UUxkUUJzQ0xLNjFiRXhPTUExcnlYTHg3dVExMkZEUGJ4WVk4?=
 =?utf-8?B?N0NlQjQzNHFDR0lFUnpWUGl0ZEVaN1F5ZjUxd29CQnM0MVZjekJkaFJQZHgx?=
 =?utf-8?B?UlIvcW9Ha296WEFZSUk4eENsWC9NWkkxbm9WVG94TEltYWY1cDMrRFYxbVZp?=
 =?utf-8?B?Z1k0cmo1dWhaRDFyeW9TYjE5aUxQblNKTTNleGFnSUdMSk52NFhJUkdCSEF5?=
 =?utf-8?B?TkI0WnhSak0yYXIvNmgvMGRsa25sTTAzWVhBaG5BQk9SSFFOY3FHOTY5RmJw?=
 =?utf-8?B?S21HRGpSc0lDWFNNdXhLTWxjVmMrbWNuUkQrLzBEbHhFenNaY20yNnI4b0dr?=
 =?utf-8?B?NTh6ZzdWenJwUnFUYytuN2lPck9Ba09UQjRXc3BoeUhnTmh6dEtieWFPVmF4?=
 =?utf-8?B?cXFSUHREMlVPREY0Y0JheVNma2x3eWdaeFBoVWhKbnROblM4eTdOUTBLUEV4?=
 =?utf-8?B?OWhoSUViUSt3SElWMVcyWVo3YWl1NWk4MStCTlVYL3hEVXNFYnErN21kcENK?=
 =?utf-8?B?ZTBicWhvaUhSYmREVHZnbEJZL0VjVGtEYzNaMEZnSXRBVU9GcjBqbzB6VFpr?=
 =?utf-8?B?NWxQY0tXMXhSdENaSWRnMkZjeVQ1L1FvNHkrekFVbkt4SjVOd253VlVIZ3c5?=
 =?utf-8?Q?nWGCBCMApCeSDklUomSF/vCTvSP95BMo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alpNYzFLNDR1Q0hGcytnbUxyL2RIVWxJM3NHYk4rV09SVXR0QkdXazdBREtr?=
 =?utf-8?B?K2FtcVlEMWFtY0pVeWNOczBiajJDa1dWOVNxTjFBTGJWTlRwUEdGTEpENjBK?=
 =?utf-8?B?UE13ZlV5aE44QWxtSlRUTFZXT0RVaG5TYlpvcDFlR3YxRFh6TnVrUXJrZlY3?=
 =?utf-8?B?VW9udEZnSjl2TXA0aFVmUkluQ1MwZ0doaW1aeGpFbGxyY2tPMVNZOTVLOURE?=
 =?utf-8?B?bGZDbzVnTHVoWElCRWhqaWlKb3BOZ3JpZ29IMVJ2bnYyR0VYK2ZScWdnTnBT?=
 =?utf-8?B?VFo3QUFCS3VPZHdQeXo1c3VJRWRFU0VsM2ZudnlVUENNMmFXK1BHaTFQWHNx?=
 =?utf-8?B?SHJBazNhc2J6YitlS2NVM243a20yeGUrR2hJT3FVSlpKcUl1YjMwZGVheEZS?=
 =?utf-8?B?TFg1VzZZb29PcHkrV3k4K1IwR1BCbitIZlo0aHNRcTgwOW1XTzUrT1lJVTJx?=
 =?utf-8?B?RUpXenM0ZUtsdEpUSWtucUlWZkV2b09tM1VpL2plbmdDZ2pXRU55VjQ3Ykow?=
 =?utf-8?B?VUsyRjFabC9RdWgvRGY5SXRwMEtYL292VC80RVJsbkhJREI0eUREV2t4SXlF?=
 =?utf-8?B?cTB5SS9rRVFFNVVKSWh2T2dWR3RjUzFkcFdkRkhHTVFPdGNrOENJOUxYenJH?=
 =?utf-8?B?YnRhcFZvU2hDajhaVVY3dnFMQUpkQzE0a2p5bEJYREpmRTIzNFA1Zm9HeGg4?=
 =?utf-8?B?cU9ad0YxUytGa0hIWExCK3NEREZycEVMcVhXbjBPYkUyaDhjS2pVem1VZnZQ?=
 =?utf-8?B?RnlQMEFvaTlxUUdQZnZaVTBWMXMzVFVuMUdSSGFKSHZDWllJcVNtSis5bjN6?=
 =?utf-8?B?RysxV3VRZ05wRlVYLzJQVnZFdkdHTE8vOVB0MFc4WWlWN1BHRndZaUZrTG15?=
 =?utf-8?B?T2dRY2xVei95anp3aStxV0p2YmtWTWRTT3hMZE1mWTNSQlJ5MFlHWk5nczhv?=
 =?utf-8?B?Q3IrelJZVUkyNDRXVUQ3UWNFYkxiclIyeHRKSHdxMkVJWVlyWjlEYysrcDA0?=
 =?utf-8?B?Q2xOK2Y0MVc2SFJqYjVSZG0yZzZra01EM3VDNHo1WE1ZMGJrdXlNb05CQkZB?=
 =?utf-8?B?RDB6eXRZRmlRZXk1Z2orL0pmUzdoYitzb0JxbXJrZ3kwdGl5V29QMkVDcnRV?=
 =?utf-8?B?YjV2Y3dwOTBlaU94bWtCUW9tSEptTHdFOXdNVlVJOWxtOVFSZkR6UUQ2TGFV?=
 =?utf-8?B?TzJ3OUNtRDlYYkZBSER5T09sZ05nMll4ei9WOWtwOFp4VzhDNmhlM3RUa0dW?=
 =?utf-8?B?UllKeFlvWEJYSGFIdFVzOXZ3QUxobjBiZElmWHFaM2VpUWtBWERUYzNnYmgr?=
 =?utf-8?B?emdjTUV3dm1WbHovTEF2QnRybkNJWk1BK0QwdXFPN2w0YjV6dGpyS3lpME5h?=
 =?utf-8?B?c2RudkMxSWQvZDJZbUx4dUkrZGtOU1N5RGwyL2FMK2RobHc2K1RUdjQrVTlZ?=
 =?utf-8?B?NEtyTkxiNHdJbXJoSVo1dkhpVDkwNTFnMTk4cThUUTRHUXoxdW0yRGk0dklF?=
 =?utf-8?B?OHVod0pKWi92eUhWQ1pqbUN6NWh4aUVMSzFnUEp6NHA1UVVXTW41MGh5T3Fq?=
 =?utf-8?B?K1pQMmZxaFRVOXFPSlpjbmVJTC9DN0lUdzY4NDNkWU4zeVUzUWtyUDl1NjVQ?=
 =?utf-8?B?VnR6R0JXZXZuOWpzRWhiMTdPZ3lxRDJoWlFScnNWK0RzWlU2Z1VHdVY3dkIv?=
 =?utf-8?B?QXhvM3BaR2VRYXlIMy9qdEpMYW56RkhwWXV5aDY1M3liUHBqTWZGQWx1ZytD?=
 =?utf-8?B?NURvQjJMUEpoOHUyc2cyRTY4b3I3YkNqZitVVUlySmtWTVg0bUpDYnB2R0kv?=
 =?utf-8?B?elY0L21GZUxyMHZQRktISVM4eTJjckw1Z3poTzl4VzUyRG5SQk5UK3F1RGVa?=
 =?utf-8?B?c3NTZGl2QzQyaHRYYjIvZzZuaW9VSjkyZ0g2c2hNdzZhaFFHVEtqSTFkV3VI?=
 =?utf-8?B?cEwvWndlUDQ3U2k4Z1JmVG5Wc1N0ejBjTHg5SEZYbk5YMjBZS052YWZiMEZl?=
 =?utf-8?B?OURUWXVDTyt2VmtlKzJWWENmbEJvYmt2Q29kY29PNEJvSUplMmhuZDJYNk1h?=
 =?utf-8?B?cjhFRlFtUUlyZXg2OU5qVElrcDJvR0RDbEF1bmVNRWJGYTN0TDB2RllDTDRt?=
 =?utf-8?B?amIrY3Q5QVN5WGpTSmFGU3FRSEF6a2JKQnUzTFdkMjNYKzROZnAraGRvK28y?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1a7e4f-fc87-4a1d-a975-08de122f7bf5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 12:27:09.0425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HEzgWohazzUJtFdeN3Y3FMU7oudVPOKviaWSqkATSSrtG1BuA/P8WyipCkwyPTls3tW4q02x0F60AfAj+Kg/ArWHMT2B443iMuyQUEiMsEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
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


On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
>> incorrect.
>>
>> As per Bspec:71197 the transmission line must be within the SCL +
>> guardband region. Before guardband optimization, guradband was same as
>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
>> this region and it was not giving an issue.
>>
>> Now with optimized guardband, this is falling outside the SCL +
>> guardband region and since the same transmission line is used by VSC SDP
>> also, this results in PSR timeout issues.
>>
>> Further restrictions on the position of the transmission line:
>> For DP/eDP, if there is a set context latency (SCL) window, then it
>> cannot be the first line of SCL
>> For DP/eDP, if there is no SCL window, then it cannot be the first line of
>> the Delayed V. Blank
>>
>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
>>
>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Jouni Högander <jouni.hogander@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
>>   1 file changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 92fb72b56f16..dd81d2133aba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int transmission_line;
>>   
>>   	/*
>>   	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>>   	 * double buffering point and transmission line for VRR packets for
>>   	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>>   	 * Since currently we support VRR only for DP/eDP, so this is programmed
>> -	 * to for Adaptive Sync SDP to Vsync start.
>> +	 * for Adaptive Sync SDP.
>>   	 */
>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
>> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
>> +								  crtc_state->set_context_latency +
>> +								  1);
>>   		intel_de_write(display,
>>   			       EMP_AS_SDP_TL(display, cpu_transcoder),
>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>> +			       EMP_AS_SDP_DB_TL(transmission_line));
>> +	}
> Pretty sure we are expected to send it at vsync_start.

Hmm.. then do we need to move vsync_start too similar to vblank_start 
for optimized guardband?

If we do not move vsync_start, and set the transmission line to 
vsync_start, it will never fall in the region SCL + guardband with a 
reduced guardband.

Meaning effectively the guardband will be full vblank length.


Regards,

Ankit


>>   }
>>   
>>   static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>> -- 
>> 2.45.2
