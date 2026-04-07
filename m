Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNrwAu3i1Gn0yQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:56:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9263AD584
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97A710E3E1;
	Tue,  7 Apr 2026 10:56:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mf45q+nA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB4510E3D9;
 Tue,  7 Apr 2026 10:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775559400; x=1807095400;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2y36gRrOJyTq3CNlkHrQTBdZD6MCfxOfFjwf6EYdVc8=;
 b=mf45q+nAIWwJ8m2f6utV7u0TbdvqNuEgLJZANSGJ5ax8yjprFwq3zCSb
 zT2vCWHHLefXtnMcJH52Nqjbiz0K0YWmir0iq/rSHrJAmlz3tAukZg2E9
 e0CKW9PkoV0XMZ9V0Yjat2e6Ubr1nHxb5JFx47MaSo+jxS12WYdKIxigI
 I+tD7g2PSeWmFlg/UlG2MBbCIsYOwdj9ddz3qr/Po07ytvYoSjy36OIEv
 XwiebDsurhiAGMgoqAU49r37sNVQ5I9PnPO6+kTFOma5KwQng3RXyD1Dv
 V3VHqvMNL5UOViZU1qAIQj1Zi7USVkykRpyQNhcamTYA9tdDG+Rtyi3Mi Q==;
X-CSE-ConnectionGUID: Zzfw2q6FTrW9RblOQgsWDw==
X-CSE-MsgGUID: lLwmhPAaSneC14yvWpIJcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87970310"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="87970310"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:56:40 -0700
X-CSE-ConnectionGUID: sBGutKVCQ0SFoNNdd+zUug==
X-CSE-MsgGUID: Y57JLTCbQOm/ybdFcqNZ1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="229811400"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:56:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 03:56:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 03:56:39 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 03:56:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mvr69d11dV8u64Ua4I5YMS3c8sHOL3tab5F+1k2aPZGJP4yiC8Onkc+gYdIT94Mufmt0xDzbltfuuOHlpy8E0PGdDjBxTHmztJreDB1CcF7F2n9XHtqGdawAGdH+8MAmzsSz8eBn/XiD8Z58rl6hS1hyDo7MSIkLbJFZmdHfnEyEDPU4SL0rFui6A3wTUu+AJUsUTth7w93TAPQg32dHh0Roj+4Pnu6lkb1QtmEL1h1ekrAXgsrbp0hUFSenB7LaoseKD+XqHmNfjngacc/Y8SsW1GURmtErBtDeefM0H0TXscLFlwbdi0Wu0bVk3nKS0+rEV6Fe5OQq692edk7xkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+7VXH42tJJ5IC9/YmVLWQQUq9ELo6P4eQHFGmydnCI=;
 b=SKbp9dfhxZhB+0E50PLcOTh38qB1X2S+AHSoQPiL6lz7700dNd0N39l2rOrFM4LS4+VAbNP/y1ZdxMoYpazAakLedY4tANWxm5b5SWb5dckK0/7BNQuMcxRGUX3lbVlWj8aNaH1ZSUtHxx8Jl6G2HS55rAz1XIyoBMpt9cwMg+O+D4JM0dE7zJq+p7Gx3ifTdp1wUYyJ7r+w8oqnLoyg1BuB/r+zuPgZ4yRvLplS7fcME60mrfHiM1pKRdhOrKJPNRkDSAimerVlqjUybC2x3JsVC8oeeGSw1haHHWOyNTiNnPWKeqc5JimKerHsQAup0kpINa8y1olfpslmdMYAqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Tue, 7 Apr
 2026 10:56:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 10:56:37 +0000
Message-ID: <e08840f2-3fdd-45b7-b31b-0c95ff98ab29@intel.com>
Date: Tue, 7 Apr 2026 16:26:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/23] drm/i915/dp: Compute and include coasting vtotal
 for AS SDP
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-23-ankit.k.nautiyal@intel.com>
 <ac5Omw5rDxuGO-Bp@intel.com> <2ae5996e-1eec-4b33-9d4e-6a07aa805698@intel.com>
Content-Language: en-US
In-Reply-To: <2ae5996e-1eec-4b33-9d4e-6a07aa805698@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5272:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ca0c8ee-5115-4566-ea21-08de94945714
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: SgUcObONYe9CSzbK4Be43tDoaqFHGnDdyEGySh6L8LWzADJohHDoMoVF9d1NF9CHIfdhceGHU7ZB6KBlmZoSJoScyCLDq+NnTudDPe66BAsr/bm8Hyyw+vqEXw/dmm4D2wj2NNzTL0UrEsQxf7ZXM6H9ztM9eJtOZGMjZ7Z1HZSUnXQYc7PPYNEXcpsjy/GmwuQFiTyWOIt7U/ouhEqjiPbIPfpgz93zJA5ZOLuTZVMKhj2FNRenegkBWoVX+ccvQHXcwmEXH3ch+Yie0QxgunK8s9S7JEJEhgKxAsXaH6/Q1i+XyNuNY0iPAZUomyuB3yDanBBnmjRLEt1PIrKUAI43zRPVDZif8svkEFTkncVPH5bX6g8sD+gwdIyMn/1x/44es2c6wYjThwPmSsSkum8hQq9XDDCLc5ZsGWLpgvubskxhhESasTngWefLS3foThkJSwXhStB8NLVBh39hPta9xpv0J7MJ1aLd0JUYmTFVyCA4gITC4UTUM8YWRs2mQjKyPLJgR/5rYTwgmwXxd1uA0KY27EOOuOjwIdrY1P5PNJOjW+wnFhZW0EwcpBme42P5bysluHaPfecDJsAd9SevvyelEk5Zf3X3siTLb00dFH3wwvKSVb7HRLcyK4qWbxsmC2rAlvuyrKUdq+7t5ZvA+djdJ5ogluLFU/sFIGJQTM4rI0NDu2GH+hor/oOjtoBDP+OLAZdi+qrfSI1HsC7QUd2GBSTlSrutkOvHA3M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGVFN1h3RG5UWStqZUM5ckdaRktGc2dpRTFmVVVyTDNrTWNEekgzeW5pV3lL?=
 =?utf-8?B?dnlvWklKb2JUdmJrVEdPMTdFWmtCa0ViVHFVbkNoQm9xU0YxWWd3anhHcEtr?=
 =?utf-8?B?SG5YeDJ6dGhhNVRkWmVESkFJYytYZ1VoMUU2UlRNTVc2d213S1RKenhkZXlB?=
 =?utf-8?B?bWoyRHF1S0VYTi9SbEFiWU8vakhnUGZtaFJOanlXeUg2S20xMml2bFFvNzhx?=
 =?utf-8?B?TGJzNVZWQ0NzSjNnTkFwc3FvdUFmYTI2SmtQamhrdWRCSjVlYTMvcTJqK1hJ?=
 =?utf-8?B?QVc0OTNRUlNVUWRXYldLSmNnL0FRTUhaZjc4TGdhZ0pSbDk3emFQTVRJZEZu?=
 =?utf-8?B?blNhR1czeVNHTG9aUUs3bm5rWUExSytWUS9yZVo1T1lRNmVsYURta3k5bkV2?=
 =?utf-8?B?c1RZeUlmWGV4a29tbDVPaFZuWjQvS2JJdG03SUtuazBGOWRTZVAzT1RxY0E5?=
 =?utf-8?B?eEpBVXhUa203d2NyNkYzLzZwdnZ5QzduY2lnTzhQMWg5SDBFcTB1amN4RFRq?=
 =?utf-8?B?ODZOT1pmMW9VZ1dvOVRuTlYvUXBRYm5MTHBGbzlCZDdTaG9jb0hHUWllNG1W?=
 =?utf-8?B?bnZwN3k2Z3BlWTZRUkZYQ0hIVUZ2SnNyZWlmVVV4QjVrNDBudTJoR05QOGlZ?=
 =?utf-8?B?d2k1bTYrVmlObEh1R2lFWFZlUGU2Q0FyVDIwczFBVGtWUUFhVUlzU051ckJK?=
 =?utf-8?B?UFJRWEl2MGxIU045THFyd0xaUGI1cTJGek9JYStveHZjcjN2MDArTGs2eDlz?=
 =?utf-8?B?M3loTXhFb05pMmVYRDZLMHR0NU1QNlZrVTV3aDFPaGhrbEliZ3RHQ2JMTU1k?=
 =?utf-8?B?Ykp2UzRlMVU4bkxQR2xGbzRGUGhtTHQ1bjA1VDgzZmlOZ2FQY2dvQXRqR1lF?=
 =?utf-8?B?Tm41Q2lmSWIyOUdwL3cxcW5ORFBVTnRlRXBEdHE0cHQybVpuVEFKZ2hOT3dh?=
 =?utf-8?B?aEFXWjEwYk1jMU1qZWhqU1V0NVNad3BmVlNjVkpEcTZuY016OCtvYTFzSWdK?=
 =?utf-8?B?c1FmS2FSQWp5a2FwUVBBNEJLSkpUanpiVjQrTXVycThJc0toNDU5Y3d2eTZo?=
 =?utf-8?B?Skd1ZkcwSndtclpFQWhsMlFybU40UVpsU05QWm9EZE5rTSt3cjRjbEtXS0pi?=
 =?utf-8?B?WGJCRWtIdzI4cGlRNXA4TjQrRFBuSmFTN3dwanVQNCtOMGlML2I5L1BPQUdI?=
 =?utf-8?B?U1Fpb3ZuUUJ2Y3dZNW5VU2RNMkUwT05qN2lwbENOdVpVQlpqRGczeUkzbFhU?=
 =?utf-8?B?VnhTcXNOUUwzQTQ3S3N5eERUQ2lSNEpJNWdWeDVCMnZsMHZPM2ZWN2pjVFQ1?=
 =?utf-8?B?S1ZsUzBBRGN2U0JTTnFkTDdNdGJYK29mWFpvOEgwTWtrY2hGQ3RyaUdqY1FN?=
 =?utf-8?B?WmlQYk1Cc1BEZEMzUGxkYkdSdUFqaFBWcnNYYnpaR2tSSUJCdWZIZWphWjFq?=
 =?utf-8?B?Wnp5QVZJdWY1MkZmWEJYVU5udzcxaFc0OHU5Qm0xbVVjNmNndHg0WWtiTGpF?=
 =?utf-8?B?QmhIVDNWc2ZWWE9uTEx5ZDlzUXV5OHJTTldmOUR6NStGUDZnZWFBYXFlMlU4?=
 =?utf-8?B?L2g0WnpSd2x5QmpGRGFiZkN4RUNOS29TbDlZUkdDM2hzL0gxVFlYT05sWWd4?=
 =?utf-8?B?Ti8vMDlNSTdFQnhJTlk3Wm5ldjdKd3cvSUxMTmhwd0NMeHBmNjh5akgySXp3?=
 =?utf-8?B?VjNINklMbkdqOFBVM2RqTEg1Y3ZteG50bzdMSFpmUzdNbTN0RWdwT3JmY21B?=
 =?utf-8?B?OTNoUnZWeGFZQytyVHVpYXgyNithclVmN25mdmZMNmRFU2hKZmVZYVkwQnN3?=
 =?utf-8?B?d09zK0JEQnYyVkRWZFpIU0NXeUNJQ3NKWVJOYVVSQkhhcHlZQ2UxT0hzOGgr?=
 =?utf-8?B?UkszU29WbFc3SWNlSklpdm14VExod0hrVjR0UHcrNWhjUnpneGJvY0ZlV2x0?=
 =?utf-8?B?SlJjUTFOOTZvSk8vcEhOQzg0a2grT21PV0pkNTdJbkpnOXQvbkdwZTh1amhW?=
 =?utf-8?B?UFU4NDJIZW12MG9RNXNEVjV5MmF6QWtQalRpQjBTOVM0R3hOVTBvWi92b3ly?=
 =?utf-8?B?NVNTamZoZ3Zud2NVcVI0VFJNNml0cjZiWkZsR1hCRm9hTjdWUlZZWjVna293?=
 =?utf-8?B?MDhMOG1LQWNhTnExd1Q5SUFmTnAxYVdvbkovZkFaRmNuZ1ozZnZvWU5qYUhp?=
 =?utf-8?B?ZzVoZWcyVkZDNG84RGpOdndpZ2IzbTAzZzZzb2E3ZzNNSHFtM1BXRVJvMkdF?=
 =?utf-8?B?S1J4RnBXRUFXRFd6a3h3a2UxZVBBZTlXR284U1dKdkhhS0RJOFlQR3NsUUk4?=
 =?utf-8?B?czBRSkVOY0JsU1pTUTN1UWNiWXFMMlJLYzhxdlk5YXZ3QTFsWW4xUDRBR2Jv?=
 =?utf-8?Q?3nhHTo4l56vYm0Wo=3D?=
X-Exchange-RoutingPolicyChecked: HT93Azc4B5MKnA3J0At31RZVDlbQuA0Ebm8RDFVPcZ7Kg3ZFqt/kXj5VQxLntwhOd6J1KI9CDR+8c946pdeS9KV1pliWQxHkTo/62aSXtrVxGOBiBBAYxyYBFQSxJ/EBFkFF7WscQAjHrTM+W++hjDJWDvRg+gyi/mm5qpTVqXy5DWpVdY4qYAS9a61WckGFe3TT8ERqTBNKpVu9JLUFyU+sk5arYZ1iJT4PuuxXFnGswV5S5Rd7lTFq4P2cyTMAnyu8aYY5C66j7F3FsAWeuq5LnLm2kqu83tJM6hTZ8LknZOCHH3/sTWUlWcIQip186rq0PeztrvQU6Ah8Nd7D/A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ca0c8ee-5115-4566-ea21-08de94945714
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 10:56:37.3463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cTVK00+8Ca6NGj97OodhUxihXHMWZxQu43GOpYPcOeookXXb4G6h3+2aNd2xtUunfTz8SZfFLlorkn80UaKeT+Vfj23f4In1PD0b5/uP/v8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
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
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AB9263AD584
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/7/2026 4:24 PM, Nautiyal, Ankit K wrote:
>
> On 4/2/2026 4:40 PM, Ville Syrjälä wrote:
>> On Thu, Apr 02, 2026 at 01:34:22PM +0530, Ankit Nautiyal wrote:
>>> DP v2.1 allows the source to temporarily suspend Adaptive-Sync SDP
>>> transmission while Panel Replay is active when the sink supports
>>> asynchronous video timing.
>>>
>>> In such cases, the sink relies on the last transmitted AS SDP timing
>>> information to maintain the refresh rate. To support this behavior,
>>> compute and populate the coasting vtotal field in the AS SDP payload.
>>>
>>> Include coasting vtotal in AS SDP packing, unpacking, and comparison,
>>> and set it during late AS SDP configuration for PR with Aux-less ALPM
>>> when asynchronous video timing is supported.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>>>   drivers/gpu/drm/i915/display/intel_dp.c      | 19 +++++++++++++++++++
>>>   2 files changed, 21 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index a0e7ef2574b2..747dd3112d66 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -4914,7 +4914,8 @@ intel_compare_dp_as_sdp(const struct 
>>> drm_dp_as_sdp *a,
>>>           a->duration_incr_ms == b->duration_incr_ms &&
>>>           a->duration_decr_ms == b->duration_decr_ms &&
>>>           a->target_rr_divider == b->target_rr_divider &&
>>> -        a->mode == b->mode;
>>> +        a->mode == b->mode &&
>>> +        a->coasting_vtotal == b->coasting_vtotal;
>>>   }
>>>     static bool
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 902c09e0780f..de6f88a5400d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -5123,6 +5123,9 @@ static ssize_t intel_dp_as_sdp_pack(const 
>>> struct drm_dp_as_sdp *as_sdp,
>>>       if (as_sdp->target_rr_divider)
>>>           sdp->db[4] |= 0x20;
>>>   +    sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
>>> +    sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
>>> +
>>>       return length;
>>>   }
>>>   @@ -5306,6 +5309,7 @@ int intel_dp_as_sdp_unpack(struct 
>>> drm_dp_as_sdp *as_sdp,
>>>       as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>>>       as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
>>>       as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
>>> +    as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
>>>         return 0;
>>>   }
>>> @@ -7383,6 +7387,21 @@ void 
>>> intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>>>       } else {
>>>           as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>>>       }
>>> +
>>> +    /*
>>> +     * For Panel Replay with Async Video Timing support, the source 
>>> can
>>> +     * disable sending the AS SDP during PR Active state. In that 
>>> case,
>>> +     * the sink needs the coasting vtotal value to maintain the 
>>> refresh
>>> +     * rate.
>>> +     *
>>> +     * #TODO:
>>> +     * If we ever advertise support for coasting at other refresh 
>>> targets,
>>> +     * this logic could be revisited. For now, use the minimum 
>>> refresh rate
>>> +     * as the only safe coasting value.
>>> +     */
>>> +    if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
>>> +        intel_psr_pr_async_video_timing_supported(intel_dp))
>>> +        as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
>> Seems reasonable.
>>
>> Is this always under our control or could the hardware overwrite
>> this with the current vtotal at the time of PR entry? Assuming
>> we can enter PR before the vtotal goes back to vmax on its own
>> anyway.
>
>
> What I understand from Bspec in this regard is:
>
> Do not write Adaptive Sync SDP Transmission Disable in PR Active State 
> i.e. DB[2], instead use PR_ALPM_CTL[ AS SDP Transmission in Active 
> Disable ] bit.
>
> HW will sample the PR_ALPM_CTL bit only when PR is active, and it will 
> get reflected in AS SDP payload in an 'appropriate' time.
>
> HW will ignore this bit when PR is Inactive and always send AS SDP.
>
> So I think HW will not touch the coasting vtotal DBs.
>
> Driver should set appropriate coasting Vtotal and set the 
> PR_ALPM_CTL[AS SDP Transmission in Active disable] bit.
>
> During PR active Driver will set the DB[2] bit in payload which will 
> trigger the sink to use Coasting Vtotal.


..HW will set the DB[2] bit ... (facepalm)


>
> (Unless we start writing : DPCD 00B1[0] ie. 
> PANEL_REPLAY_CONFIG2[PANEL_REPLAY_SINK_REFRESH_RATE_UNLOCK_GRANTED], 
> in which sink starts using its own logic).
>
>
> Regards,
>
> Ankit
>
>
>
>>
>>>   }
>>>     static
>>> -- 
>>> 2.45.2
