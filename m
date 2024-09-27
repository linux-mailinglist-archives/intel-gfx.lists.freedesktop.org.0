Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B251987DB1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 06:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7CE10EC07;
	Fri, 27 Sep 2024 04:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bPoJHIb9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB50E10EC04
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 04:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727412781; x=1758948781;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uEsyVlf7vZsAMClkwRteI70ot27q3ex8uGNhxIUCLlc=;
 b=bPoJHIb9XR3YogCXB8o28TBQgSWpG3/C5brBP+kygYTls8Mpy8N43zG8
 ik1WuuSuYITyOegoRixaFOO2WS1QHaFNxwLnRZMs2xsO4C3AtpXJc8lWR
 tRE7pd6zr/9Qd8zXtdoD8uwOcbcT2Yxc5CdggG94CeEhz1HDpiWFptEfy
 YDk/6ZbRZus2cBc3QGdBswDpKwqOYRcA3OIJrVdvxjOGkiHxFcC4Lo+3/
 Lf1PnmVRp54y94cm4ILIUWM8SOTj7DZqeUwknN+BEl3GoLckMEpTgueQz
 8/WeA8IwHSgFSgOlZCOQra/eDCrkSvF2hYtczJL/qZqXpY9p0okb9dg+j w==;
X-CSE-ConnectionGUID: 4kQ4Lj89Sm2GLiS+kHo7Yg==
X-CSE-MsgGUID: hC6AryXSQKCfQA318OnM5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26711314"
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="26711314"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 21:53:00 -0700
X-CSE-ConnectionGUID: LhKMZPKvRnCWkcu3AOwIFA==
X-CSE-MsgGUID: FePuTDdHQh6SAQegQkgBdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="72483706"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 21:52:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 21:52:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 21:52:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 21:52:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 21:52:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 21:52:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=faq2v1eNRorcHPDgZiTVK7nsBefWDim2Ap5k2ZoQv9muVmsr+tEQS7aDBJylYVbLLQSauF/11421ksN3ijOEPPj34s9CCwf9uVb+2GWIj/tXjQNsaLJB6BSSMeylakKRpZLzRrqreoDBb+7UmmMK0G6c6osHka3coPTc1BKUltFwzz3cD+l4G3c3ZXTLqClGFfjvo5/N4JGkl66sd2vGfdSqMR6BhRZiqbGvBwbPsbMcsSMS43nysFdLaZuSe7FNmhO3SUJgQ+gmx/rYZrSzPJdc1E0pXSr1pPeMMdrwX/x4Vpj1R5GuVjw7ePBZtg8AG4tkW1hmC5SEDPJ3JPeLyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uilNeViSp1/AuBb2l2/Z14U/aqzWjyEl/FocgagnO1g=;
 b=JF5HpPiufktuNaYvWKJy9b1nD5xGYCf3h6iQUuGu3ioJafdYScgnPNAgJQEX6UyBGBCjrRVbajYTSLDaMG5GpUW+WvhWt22yapkXIvyZldoa0FLaCNSNvqUbxdIjFnE6GO6nSADYSlz3rYbXfUdvgAXM5vQVQpftlYRwHczhMH2z95rhMqd0AiyYZRtB4Ttf2LbbVEPugaMC0VCFtsuqjSx1cCCGPE4Y20Wn7wcFgvZS/Vg+Pl9yIYiIw8DHalfSG3qIgSWwcsxxa870qTLy4A6mUBUm54tpm3emTVoVeLlhl7XR5Q5c+twR0o9aUp4ft7z3KNJ28F1klG8h4htxDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 04:52:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.020; Fri, 27 Sep 2024
 04:52:52 +0000
Message-ID: <9d218e84-cfe3-41dc-9c59-6848977fb668@intel.com>
Date: Fri, 27 Sep 2024 10:22:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240925065658.1269767-1-suraj.kandpal@intel.com>
 <20240926071400.1406949-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240926071400.1406949-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0047.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: b116374d-80f7-4002-cf5c-08dcdeb03e24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eFNERytPUzJNV0tWRWdiakpNQjExa1I2NnlEL3NzRDhDMmJ4TTAyaUlldTJm?=
 =?utf-8?B?ejE2RndrN2FveGZta3dnSmhDMEI5UGYzU1pXelZNS001VExGMzgycy9EUmxJ?=
 =?utf-8?B?a29yVi90ZUhOZ29mbjlHTDViby9jbitmdmVKWkJoLytZZ2Y4bjcrYllLTXBU?=
 =?utf-8?B?emNPMCs4WFBZZ1ptcHQxUUorL3hkckdiZzVDV1lGV0xRSU5ta0hlaWJxa2RW?=
 =?utf-8?B?am5sWW52QUNObERxZ2w3bVFkb2o5aHYvdm1ncHplUGJqV2M0Mk9iTTJsdmh6?=
 =?utf-8?B?VzN3KzhEbVdHK09YbE5CSEZNd0hwMnAvcEVEN0NCeTY3ZDNVQ1ZNRk5XYysr?=
 =?utf-8?B?cklFVGJYR3pVTjUwb0FWNXEyQWI0MlJiOWdNNmlFbFkwWVUweGJmUGNsakkv?=
 =?utf-8?B?VFpRUFhWV1c4VVlDSWRGR0gyWHFnWmRsUG5jcXVWWmlWNUNuOFFYQmFlVk5M?=
 =?utf-8?B?MEx0RmsrMHZvUlUzR1I3aUNBZ0ZTQmNpNXZkODVmVXkxY1BVa0pWQi9saGhy?=
 =?utf-8?B?djhOK3NMRmErK1BZcXlOZmhTbHFYQURnR0tEVktRcmNvYTdVVlR0eWpUdkF5?=
 =?utf-8?B?UVRrN3Vwd05yWHlmd0UvWVFyTHo3eGo4ZzQvNEZKL2U5cVA5Q0huQ2sxS2tv?=
 =?utf-8?B?bExJekRWaUhmbjJXSjBabkJxSHkwN0t4SHZRTGw0aldESGl2d1R5N3JvbEpw?=
 =?utf-8?B?QnBERUVIalBOdHJsbXNRS0RzVFRpSjViWHRvNlVhb0hZb2lwVDJVSm1XYi83?=
 =?utf-8?B?Rk82TzVyVlVHT1VYQ3BBTFp6c2Zob1E2UUNCVXVJcExST1YvL2F3S1JqSnk3?=
 =?utf-8?B?dUlhSUt2aktiWHVmQWE0L0p4VUlhL3RubTFSbGxJV2dQV1JWT1NhTEJmbmhE?=
 =?utf-8?B?Q0ZGSnpHdjE0dTd5MDIyVjBMK3RqdVlvOGdybGs2VFlMRlFGbHFWbnZONlBQ?=
 =?utf-8?B?ZHhmU0NmMUFXUUVnYXRSdTdCRUVHdTBzNEcvZ3RSUXpLOVNTTWVWanZXVEFh?=
 =?utf-8?B?V1I2NnRMazlGZFFtR0swemlxQ3Y2Y0pTeDJXelJJQWlkN0h3NGU1eGROazFS?=
 =?utf-8?B?Q0RnNmxuam1Vd2xTWG0xYXNra2k2THpCRlhWcGJoWUFFRjMzUFRZbWpYa05E?=
 =?utf-8?B?MnErTGNCTkZGUHV5S0VMOUcxUmZiVGluVGpvL0NkejFXM1BlVDJEMktoWk9p?=
 =?utf-8?B?eHZZRnlJTzViSmxYeHd5K3RzQmsrYUdVQVlhQk1odWVuTU5iNzgzUWFzK1lt?=
 =?utf-8?B?eE9xUXVyaWNZZzd4SVo1YjBMaEEwMWJWZUU5MUtRM2xrNlJXcVlPTENPQzVl?=
 =?utf-8?B?Rm9jLzVDYk9lNi85SldseUJ1Vm5rZlVjWWpmTmFON0Z0QVBvUFFpdGVxbDJn?=
 =?utf-8?B?d2Q1QTRiZWFZcDl2NnMrVHVJLzBoUWlKZDFzelp1RWFHZTM4aDVHSlNxOThR?=
 =?utf-8?B?NVlMaWk3OTQxWGtSaWxPMVhpUEZ5R3JFWG96WlVCU1VRU2UxM1B6NUl6dmV5?=
 =?utf-8?B?TS9LRHQ4TXh6RXlGMDFCTURIUFp4YkIyVk5XNlZOWlJzc1VNZXN2a3diYXBB?=
 =?utf-8?B?TmxMZ1dzejg4QmhKSTdmRVJkdEJzVXRIYnZyOTJtQkhBZDhrbHNrdXAxL0d5?=
 =?utf-8?B?cXY5Z3k3OC9FWTBPaitzcyttZ2EyTWtKNWswNHVIbzNpekUrMFB1dzlNcHNr?=
 =?utf-8?B?R0xMT21rOEFEUlpVRVJxTGdjNmZIWlhScTIzblh1ZGEzMWtoME1VaHBRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWJmOEVoNnVDZjNtaXdFWVJpYVc0OXhmRkRCTThjSFpJSExZWFRjNGljSE05?=
 =?utf-8?B?YXplaWkwSEFqRUlpZnlaNmNiRGpLeWRJVktub1VmelJZOW9oZHB3UlFBczJn?=
 =?utf-8?B?ZDZlU05rUjluejBYUjZoQzQ4d0U3RDluL05ITnBmNDZzMWtLNGFvSTVIRDJt?=
 =?utf-8?B?Y1F1N0hpQlk0cFFMNkR0eFROUDFOTlpMQ3RhVzJMdUdOTkcrSlE5Y1lCOGRx?=
 =?utf-8?B?WkFONmx6b1pTZFZPczlDRUR2cHpObmE4UjEvRnpJek0rQVV5QU0xNDBLWmVY?=
 =?utf-8?B?YlVpTjVtTEdKcFcvT2tXSS9BNTNuQlVMQlBpdC9VWUZLUXNVbDV5VGRWeTFz?=
 =?utf-8?B?dlY5UTZiRUxaZkpFVEk1S3l5c2tyelFGV3BqWkx5Sm9odlArODhSZWFSMXk0?=
 =?utf-8?B?L25Xa2pISVBnd2U3bndtallUSENqeVEwaTlyempPL0loY0RKMWRic3ZNbEhS?=
 =?utf-8?B?b1dvK3o5L3dkY2FDS1N3MkMycWs2YVhJdkNCNzFYcGw0Q041TnpBbGtidXFI?=
 =?utf-8?B?dHcrSnZUV1lSMXRGcmo2MXh3NXlTVzg2OVcvRnpqRTYyWTRpV2EwTEN2TWlM?=
 =?utf-8?B?QlRFSlhhNEZjMnBTeEszVkh0UEh3UEVxTC9NK2o2eWg2cXU0TzRBdzRoR2hj?=
 =?utf-8?B?ODl5VS91cE1VQ0ZJNHlHbWo5dFphamwwV0I4UndTWEVIb1RKV211NFZDaHNn?=
 =?utf-8?B?T0NFajUrZUhkQUxHeW0yaVIvWDFxQ01FbXBFbHVEWjZXZVlYczRvNTcwcE1O?=
 =?utf-8?B?cHJ6S0s1ODdkZk1KU2VQdkJPdU9WZ3Ira3QvNmM2SHh0TlFjL3dFYjRmQjBt?=
 =?utf-8?B?NU4wOUJXbE1SMWU1SStzbk5TTEZCWDhXMHN3d2NibFRZRFZwTEM1OWhkVFlU?=
 =?utf-8?B?ckJVcll1M0VHSFV1MjFPdC9Vb0dEZXpsMUVtMVVJN2RJV3RLZjlLMEt3cUdq?=
 =?utf-8?B?RXRZWFpVemVXVURKMFNaTUNjKzZzUjExYzl0MzU2SWF4NEE2OGNqc2RRUGlE?=
 =?utf-8?B?a0ZTV2xBbmtOYkNkdWlmSEtrbllFNEgraVVKVW5nZmdQaGJKUjl4ZEt6VmZM?=
 =?utf-8?B?OEF4ckl6NjJZbFlEbENudXZ6S1EwNklLbEVQRDhtSHhScFhXOGxjMlR0Tk5n?=
 =?utf-8?B?L2ZQeWlGM2tjZkxvN2g5c2hCT2hvWGRkUGxKdGZPSUhocW9vNCttQndvanFD?=
 =?utf-8?B?dGVCUjBURlAyYjJpSWZETFRKL1E4emsxQ2FTMFdaUTMxUDFINzZVNlJ4d1Bt?=
 =?utf-8?B?OTZ2QmRmTUVDZGI3V0FObHhLSXRJdzNRamp0SkZhSDVKTTU1aVNCTEppdUd4?=
 =?utf-8?B?a2graUZNUkxmclJtMkN4RVRXQVVKWVpMRWh1enFTdzF5UERiUGtQd1VhZ0hh?=
 =?utf-8?B?M1BHelpkSzAxSGRaZ1lmalRadSthZDJWSW0xbVhsZ3ZTWTJpcHc0VWxjR29y?=
 =?utf-8?B?NS9IdFlVcm84T3Y0d0lrdmRhdVR6bWE2cW5xaWxtNGsraVBDYnp6ZXc2UkVX?=
 =?utf-8?B?TkczQ1pNckhsWW50cVZJaHUzNGQybEhqUm1FK0ZoR0NXVlE3VzhEUjFXalVX?=
 =?utf-8?B?bXlseG9aOWhHcFF4amJUaytpbm5DWnBEWEV5cUVxMGhieTB5RXI1NkV1d0kw?=
 =?utf-8?B?Um5kZ1MwK3VGdzMwVCt4U015M2xmNHZGeUdjWmlCNkF4UStvTHQ5b0VQQmV2?=
 =?utf-8?B?MlFKQWlDRmY2ekp5amFseG9OdFBkT2Fqd0t3UTJuZ2cvUmtlc094VURqVTBH?=
 =?utf-8?B?d1dzVmFacmRwekdhcXhKVHRkYnF4WXVFNTh0TUltTjIrNEhBWjNzUHBzSFo2?=
 =?utf-8?B?VGRtTy8rKzhUUkJpeGFTbVB1S21oVjlKSW5pZW4vTWFVMzlzT2VBMkNxRnRt?=
 =?utf-8?B?YlVURHFacFQ1ckZOTXJBOHptYkdwdGlYN0dCNEFvdjVlWEpRR3NrUGRTN2lS?=
 =?utf-8?B?QkJPY2x4S203RkhkcUp4WmFMUGptdmgzM0UxOXpXdE1JU1E0WHovUlEzN1pY?=
 =?utf-8?B?djdEdWRQeUhRRzdkcXovMm9YYmY5WmFuV0JqMDRxUnhiVWVZQmdnbWR4alg4?=
 =?utf-8?B?R0NtSHZxSTlmd21QaUN0QnFUNE8wanJzMXIzVEhYWFIvZzVWWVM5MlI2N1dI?=
 =?utf-8?B?Z200U2dndUdQV3dOVWR6L1lZOExETGxreDFQbkZpejR0ZnlQN2FMS3lYT0lO?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b116374d-80f7-4002-cf5c-08dcdeb03e24
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 04:52:52.1457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: atJBDkxNBc2T4Y6IOZdZJgu0UAbjV67gkOs41qIL0cVF2/PSRd9INMa7NEqamN74lqj95eiGr9cfFhZhRwcjH9ftG2QAhby3BNjKglJyDAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
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


On 9/26/2024 12:44 PM, Suraj Kandpal wrote:
> Retry the first read and write to downstream at least 10 times
> with a 50ms delay if not hdcp2 capable(dock decides to stop advertising
> hdcp2 capability for some reason). The reason being that
> during suspend resume Dock usually keep the HDCP2 registers inaccesible
> causing AUX error. This wouldn't be a big problem if the userspace
> just kept retrying with some delay while it continues to play low
> values content but most userpace applications end up throwing an error
> when it receives one from KMD. This makes sure we give the dock
> and the sink devices to complete its power cycle and then try HDCP
> authentication.
>
> --v2
> -Add more details in comment [Jani]
> -fix looping condition [Jani]
> -optimize loop exit condition [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 24 ++++++++++++++++-------
>   1 file changed, 17 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2afa92321b08..46b6f30f9776 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1512,7 +1512,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>   	} msgs;
>   	const struct intel_hdcp_shim *shim = hdcp->shim;
>   	size_t size;
> -	int ret;
> +	int ret, i;
>   
>   	/* Init for seq_num */
>   	hdcp->seq_num_v = 0;
> @@ -1522,13 +1522,23 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>   	if (ret < 0)
>   		return ret;
>   
> -	ret = shim->write_2_2_msg(connector, &msgs.ake_init,
> -				  sizeof(msgs.ake_init));
> -	if (ret < 0)
> -		return ret;
> +	for (i = 0; i < 10; i++) {

I think lets add as a note for the reasoning for reading caps before 
writing the message, and trying 10 times with 50 ms sleep, similar to 
the commit message.

Overall the change looks good to me.

With the above note:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



> +		if (!intel_hdcp2_get_capability(connector)) {
> +			msleep(50);
> +			continue;
> +		}
> +
> +		ret = shim->write_2_2_msg(connector, &msgs.ake_init,
> +					  sizeof(msgs.ake_init));
> +		if (ret < 0)
> +			continue;
> +
> +		ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
> +					 &msgs.send_cert, sizeof(msgs.send_cert));
> +		if (ret > 0)
> +			break;
> +	}
>   
> -	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
> -				 &msgs.send_cert, sizeof(msgs.send_cert));
>   	if (ret < 0)
>   		return ret;
>   
