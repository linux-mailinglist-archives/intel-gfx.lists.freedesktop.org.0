Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF9D9C0FA3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD5C10E8D5;
	Thu,  7 Nov 2024 20:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T6/6MZel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F72610E8D3;
 Thu,  7 Nov 2024 20:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731010973; x=1762546973;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=lECyN6N5WPYZm+ESEKESIE+GiBNt/RqcL65uL440acU=;
 b=T6/6MZelz3G0e8v/uu9UL0aRfFUiADpjQupov192MrPt5fvVTdjHI8WF
 znR0wQoZuKmYuFaGeI/rtsxuZgmNRBd9sSzaGSXMn3Y4hTydVjUwRN0qN
 Q3L8yKbo2Wg0yGdkuGMo1ANJTHIP6SUOGsKCkVq4Rd4IXUlyPDklATNdE
 xzk+66NBrsDEYVffXqUZ1f9TObP4z3BUBvPS1A0KxqGWfTYx5fkODCrb+
 JSR92LtYb/88w+pFDgaqFZCVMstWEir7rcX/vmVx1ZLIPAEkLLvWvewJf
 g2XO1J4Jg+tShBE3SUDlXfbk+LA6zSk208oZlqzARaFp85kbAZEa99F1R g==;
X-CSE-ConnectionGUID: R3Nr7UrOT1q/yrYSs5MJlg==
X-CSE-MsgGUID: gQJynk0ERoC+NZ12wkOvEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18505449"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="18505449"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:22:52 -0800
X-CSE-ConnectionGUID: lwlTgQxeQSWCj4LQAi3Whg==
X-CSE-MsgGUID: 2N5MZ1AXT969zHDHbMUocg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="89863714"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 12:22:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 12:22:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 12:22:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 12:22:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=irpUGVk3CZc8leMbOoxLEglqh5m+fND96jcNy3/JROi0a2jKo57/PYhU0hBQJQAPlrV/6/NEPMYDtKYZuziQlgZIGJ3XhLZYOqaV00PB5gUGT2mt9WWzuU4vCIwV7ensiaY2nemcAG/CljIBjC9xuU4N5mGr/KrOM/gsNgnhxalE0emJu/pWjaU4ckJ0npH8XREWlCUhdpZLf/Ma/32MJCY02CIfyAtHPd8aQF4KgOysQIpw/IL+vPpDFSJTlnwojzlKWmVFKxbT/FA8Q5pSlLd7v1Y+VP2E/vj7yMNXkbi4LcBE3htFoO5Spg3diNidbAzmK7vQJkjskAHVcYNc1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o2b2OBX5hDSQhfuBsVemdkQOu4DpyJemY7fRhDfq/qU=;
 b=mhXWbFtnfaZ4tJt+fL7Y43B0VObuZwn/eolYks+LaNIviPHyZa2xfUHw+B5ZvFhKSrro/Mj3Rl/gPnTFEcLsD3z1aTNbwE67iNxGxQiDQTnYH6tRhvv4kJ2Zwoj08k+7gPdU/zpas3xjWTVc4kox5eilNd0toIGor/iTM1iv52c0uBJR1KsYSdg14lIYbuWhFmQxI8XlnwLFbO799Yxi/MudoUxfl9wr0nBA6v1KYZL4YB3t0+UvCimWvQbPfvznN3Ug1Rf43AuP9U1J9JsjuA1Bw6MIpdAPKMclRnt1pS3FMVGapS99H6sK8i8zGRC2dPz2xJsiwvVKwdDl/yTaAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21; Thu, 7 Nov
 2024 20:22:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 20:22:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173101047610.92682.5793541337752745725@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
 <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
 <173101047610.92682.5793541337752745725@intel.com>
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 7 Nov 2024 17:22:43 -0300
Message-ID: <173101096307.92682.12411368075185471884@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR16CA0015.namprd16.prod.outlook.com (2603:10b6:907::28)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5036:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ed4245f-2215-43a1-c178-08dcff69f1fd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K3VvZEx3SHNzRXBRU1Y3eHorS2xCTGkvV2tSckNxQUhTTHpCb2UwQnhYb1Nr?=
 =?utf-8?B?U2daaVBNdEU0MXh4VGd6Z3czZytNOHBWUkJHeTdtTWdnYnVvOTZ1Rk1hVSsr?=
 =?utf-8?B?RWVkN2Mza051VEVLNjBpaUFUT0FJT2laTlBYbDk1YzhINEpZSlJXVTdhaGwr?=
 =?utf-8?B?TjhvT2IwYlFJb3BJdkxIdWhFbSszekFqdnhtUGZ4M1JFV1lwMkFNa0tDSzZ5?=
 =?utf-8?B?dm9QTHJuU056d05Yb3FRWUgrMlkwU2FoMkVEa1ZpbU5lVGw0c1dYc3RUd2JN?=
 =?utf-8?B?RmgrK2hDa2VZQVE2ZnJOQUtqZDdPZXhiMGJhTmlPc3FuN3U4eko0dC9pYnlO?=
 =?utf-8?B?NlhZbWVCUVZWeUhLOUt2WGdGSmtkUGpmUTR4Q3RDcXlNNlpqV1RENU5zVkY4?=
 =?utf-8?B?dlRZNDZZbmk5TFIwYW5PM1cyQ2w2TitGZjVNNmVlaXZ3SThHTzhxSWpadzF0?=
 =?utf-8?B?dWN1bERmZi85YzdRK1dISVF0dnZkT1VIaWxGUVlrN0xUZGttYjRQZHJoN2lN?=
 =?utf-8?B?dlhsMkVyZ0ZjYUg2dmRxT1RCQjBlVXRZL0xHazdBekZrR3Zna2dvcWZ0SXNj?=
 =?utf-8?B?ZWdTMUpQU3cyMmdmUzJtelhDdWxHemszVjBtK0hpS2pnT3FJOS9UTEVwM1Zy?=
 =?utf-8?B?MzNNYTRNLzZNT2FjWVlwS1M3d1RmazJ2WXFud3lld0RKb3QwemE3MmVDLzkz?=
 =?utf-8?B?UkdyYjh2UG5LcnVpa0tibms1QVNOaVNoZjRYLzFPYVQvSytsWmE0bDA1ZFRN?=
 =?utf-8?B?elk3WWZPUGdMbDlxMnkvZ0xSMGRoOEZUbk40dnhxNmRQOEdFeFF3MkcxaGFB?=
 =?utf-8?B?YUhqUCtYQ0cvL1FtTEhLWVJac1NGU09xbDNNR2JPV1dqbTBmN2F2ZlcwS0NS?=
 =?utf-8?B?dW1SSWdmb0Z6YjZ3M2EzVWVaTlI1ckN2Yzk5UHZRTEZBZ3VLRXVvYXFla2Ra?=
 =?utf-8?B?NUoxeFdobW9tTEVVbVVScEhxbWRvVUduenBvM3dJOVRYVFdBRWQ3VnNBTi9T?=
 =?utf-8?B?U0xoM1p1azFpNmVIZW83ZWpmU0RyQThGZ0lFTkM4bG15ekRtUzFqWStsREtX?=
 =?utf-8?B?cU5Zd3hUT25KQmVVVHk0N1BJVHVZTHhsZVh5L1IzVDNmVTRGRlYwaVhVU01U?=
 =?utf-8?B?SzNBK3BVaTUrOXhVbThWZnYzc1llSmpaOUVIc2hLVjJjUGdkNTBpc0V6bS91?=
 =?utf-8?B?RFRnbWxXaTdHZkNoZFNuMnR0eVRubzNxTis5YVZDNzFpTEJiWjJMUUgrZWlY?=
 =?utf-8?B?cVV5b0JvUS9lelF2RnVHY1RyaUtxVThDVzlCRm1LS0Z3MVliOGdnQW8waGMr?=
 =?utf-8?B?RHVJNm9XeGRmcmg3SUZQMHVKS1VkWHFUbHNBbnBQOWdsNlFWelM2Ymp3eE1i?=
 =?utf-8?B?cEZtajU3MXVUQncxMlFzLzZIdDZWbytIb1krUldMemZMZVp3Vm5vTVRpRHNO?=
 =?utf-8?B?VHhJSDh1RDFTRjBBSVBrQ00rWkRIT0JZbklORStkdThoQnE0Smgya25pbTZ4?=
 =?utf-8?B?Q3VFVDZsZmxFVlk1QVJCYmhoY2ovb2xBQXM4SHFRaTlRMy92VVhwMk55aDBE?=
 =?utf-8?B?Y0kzVDVLMGo0QWh2WUtvQ2p6R2N5YnlrdXJ3S2VMekdpVVNzVVBmVW5UUllz?=
 =?utf-8?B?WGtCRFdYYjFoa3lSYkM3Z2tPazY3TDh6NEJGeUNxZkdxY0xTbE5HdndTTW1o?=
 =?utf-8?B?Q1prcnQxdk9VdmJqRkkwVkkzZHhzYm8xSlFXUHJ5RXR2UDE4dmJSeENaOHRN?=
 =?utf-8?Q?rW2RMOA9sOnXExZCSGGkHayIkmePUgf2zgJ9pSx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2dsM1BnZzFhN08yMDBnQVI1R2V2WFR5YjBOMnl3a2JUajVtMTFQZ3Z5eStI?=
 =?utf-8?B?U3NBNjBmOXozV1hHb3NNbXdKTHdncjQ5WXJmeW5OYmZHbjNsNDNUSEFPbnd0?=
 =?utf-8?B?R3pET1RJQ0JVMnpPTm5aVjFZQzR4SE9ja2dMbkNCbXlLeGZmSlhibUhKN3NZ?=
 =?utf-8?B?QnU2Y0dmY0tMbHNpaFdXY2UyTmVTMjBvNEUwMVdHVTVHUTFNWWRZUUNzdEsy?=
 =?utf-8?B?ODNpYnJ1WDdkeXovSXZ3L1gyZjRVYUwzRE1EK0c5SmJubjFEdEdHQ1BSVTZD?=
 =?utf-8?B?ZU04UTdlcWdKTDBXVDE0M3B1Vk51cHlPNTdncERiWEk1bXRZbWs3M2hFN3Nm?=
 =?utf-8?B?RzlEc2c3NjVXbGx1MXp0RmJ6Q0RZeTBnZWx2dUs3U280d2c3NEg0NnBZc1Fm?=
 =?utf-8?B?MzZySEhobFdLbHY3bTd5M3ZKUURhR0ltRTE4WWZwWXRUKzFtWkh5dVh4WTZh?=
 =?utf-8?B?S0QwV3dhUUtWbnBNdVVkZG41eEliZVUxZjVHUlZrUlNBVFg2emgyNTEzc09r?=
 =?utf-8?B?ZkpxcWFSQkRhbVRITmJlMmRPdTdsQUJiZTg5WVJKMmo1M2FodEZzOVFsajhy?=
 =?utf-8?B?UHUrdXZ2MWpoZDVqOGxheEtKZ0t0RW1wWmN2NCtxcmd4TzdiNUhoWTBxMHJl?=
 =?utf-8?B?SSszNmlIM2E4M3hXWkFMdS9yNkJqU0VFKzVnQ1lvN3I3Uk5PbEpiTWhHTE1r?=
 =?utf-8?B?a3dBR3VNdlF4QU9HbHNDdjkySlZYMUFXQkZqWStnQ2pwamlPK0RYYkJoRzZO?=
 =?utf-8?B?VVRQRDZ6bENMZlBDTnRRY2tZQXMxdXNSN0hveU01RnlpSmFKZ0UvZEZTdllY?=
 =?utf-8?B?ODZlR21rVFpnK0g4dStzSkVLam12YzVRTlVNQkV6dzUrc05KTnJyR2hZZnU1?=
 =?utf-8?B?bXQyTTRNK05iUzV3a0dLMEw0enNUaUV6SXAxUDV5M0wybUU3N0YyMDl2aTUv?=
 =?utf-8?B?VitUcWMyN09Gc05sdzc3ZzJudjIvZW5UbC9oc21hU2pIUThNQW5mUkZLckh5?=
 =?utf-8?B?R0pFRHdlVzRNYzVIRlloMnlXVjN4cVRpVk5UR2J4V2hLZXk3bU9DZmJnYmNY?=
 =?utf-8?B?T21KWnJ5OUxVa3JmNnpveTY2OUJvdHo1QVoyUitpYXV2VGdIdVVrSnRXRmlM?=
 =?utf-8?B?SzM5aFNncHFrbmhQSnEvNEhyc2VwV3gzbXNLN0VROEY1dlB0ekwrQ0RIN21Z?=
 =?utf-8?B?cE5CV2piNXArbXlaREFwbG9qaTcxVVVGSDVQMWdOZU1vK2NLUFF0KzVMQThK?=
 =?utf-8?B?aEhSbUlsNk9VdWtjR3V0NWFFWi9nalJuTkUrTnpvMDhPMjlSVEphZ3Z4WW9u?=
 =?utf-8?B?c2VkcWtTUnB3RmM5Y2l1d0tjRGMvSXVES0l4TXlUdDVOQ1dJekIvd1hIOWtK?=
 =?utf-8?B?RVJocXZSTHJKbG1hWWRzY3pseHY4bS9EdWxJVi9nMGFONmhQR284L1hNTXBB?=
 =?utf-8?B?ejFscVFtYVhGQU50WWhnUzJRZUtqeE5uN1FIemFpbDlsR3BsSjk3c3hXbHBj?=
 =?utf-8?B?UUdrOGh0RE02YjBDckk3VlJHTzR4R2lHQVNHUUt5Z3Q5MngyeU1VaXp3TTB5?=
 =?utf-8?B?NkF1T1ExREZhK29aTloxQUZ3SElGY0JXTytrRVlKVmxQOFgvV0pkelkrSHZK?=
 =?utf-8?B?M1FlM0duQitKekI2cnBmWGk1Um9FOVZCaEhUa2lTSU85S1lDL1BlNUdYVXFv?=
 =?utf-8?B?cEF4Z2VHNjBiaG5sdjM2NmlGWldObDlUMGxLOUhxY0YrYmFSZksvMHpIUzlq?=
 =?utf-8?B?QjBJbXcrZG1tZnhQdUdtU0dmUzE0S0k2QWFzM1pTaXc3WFVQc0ZpT0xKeWhM?=
 =?utf-8?B?MWRyckp4WEFpZjErclNKQ090VWFJTlJDaUJIUjhhWnRpbFZkTmVKcTRlcnpC?=
 =?utf-8?B?ODlRRDNTNDlkRll4QWFuRmFzUFc1d3QyK2ZHL0Z3TEJGaUFpYUNZdDc0Nldl?=
 =?utf-8?B?Qk5leDcxSjk5QzFBMjhYRWRPRWt6aitQUEdCdytxdWVPZ1djSkJscmZWclZJ?=
 =?utf-8?B?MGh0ZDZ6NU1ObUpwUWFUYlppRzVDV2Fkd0d2MUc0TEZkR2J6bUZMMDlveEkz?=
 =?utf-8?B?S0xnSHJOemtzWkFuTzJ6bFFtVmozOTVQd1IzNmo0cDhBS3V5Wm5velhmZndu?=
 =?utf-8?B?S3NwL0FVWm9OcWdFdVBqTXdodUU3U0ZBTnVxYjFOOHcxWm5LOTVSVmNGVy9O?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed4245f-2215-43a1-c178-08dcff69f1fd
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 20:22:47.9408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uahMRZiikFqzb6hRYsY2s5DJnVbW0eO8eDEit032QDxliE1+ko9K8+99sk3MlYEruQgXGzaojKC58w8N8fH0UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
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

Quoting Gustavo Sousa (2024-11-07 17:14:36-03:00)
>Quoting Luca Coelho (2024-11-07 16:23:06-03:00)
>>On Thu, 2024-11-07 at 15:27 -0300, Gustavo Sousa wrote:
>>> There is a bit of a chicken and egg situation where we depend on runtim=
e
>>> info to know that DMC and wakelock are supported by the hardware, and
>>> such information is grabbed via display MMIO functions, which in turns
>>> call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their regular
>>> flow.
>>
>>s/which in turns call/which in turn calls/
>
>Thanks!
>
>I'll do
>
>  s/which in turns call/which in turn call/
>
>as the subject for "call" is "display MMIO functions".
>
>>
>>
>>> Since we do not expect DC states (and consequently the wakelock
>>> mechanism) to be enabled until DMC and DMC wakelock software structures
>>> are initialized, a simple and safe solution to this is to turn
>>> intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
>>> properly initialized.
>>
>>
>>About "safe" here... Can we be sure this will be race-free?
>
>The initialization is done only once, during driver load. The wakelock
>will be enabled only at a later moment. So, we are good in that regard.
>
>However, now that you mentioned, yeah, we should also consider that that
>we do concurrent work during initialization (e.g. loading the DMC).
>Based on that, we will need to protect "initialized", which means:
>
>- initializing the lock early together with the other ones;
>- always going for the lock, even for hardware that does not support the

Oh, to be clear: I meant the spin lock here :-)

Something along the lines of:

    diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driv=
ers/gpu/drm/i915/display/intel_display_driver.c
    index 4257cc380475..e6d4f6328c33 100644
    --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
    +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
    @@ -186,6 +186,7 @@ void intel_display_driver_early_probe(struct drm_i9=
15_private *i915)
     		return;
    =20
     	spin_lock_init(&i915->display.fb_tracking.lock);
    +	spin_lock_init(&i915->display.wl.lock);
     	mutex_init(&i915->display.backlight.lock);
     	mutex_init(&i915->display.audio.mutex);
     	mutex_init(&i915->display.wm.wm_mutex);
    diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/=
drm/i915/display/intel_dmc_wl.c
    index e43077453a99..bf8d3b04336d 100644
    --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
    +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
    @@ -307,11 +307,11 @@ void intel_dmc_wl_enable(struct intel_display *di=
splay, u32 dc_state)
     	struct intel_dmc_wl *wl =3D &display->wl;
     	unsigned long flags;
    =20
    -	if (!__intel_dmc_wl_supported(display))
    -		return;
    -
     	spin_lock_irqsave(&wl->lock, flags);
    =20
    +	if (!__intel_dmc_wl_supported(display))
    +		goto out_unlock;
    +
     	wl->dc_state =3D dc_state;
    =20
     	if (drm_WARN_ON(display->drm, wl->enabled))
    @@ -353,13 +353,13 @@ void intel_dmc_wl_disable(struct intel_display *d=
isplay)
     	struct intel_dmc_wl *wl =3D &display->wl;
     	unsigned long flags;
    =20
    +	spin_lock_irqsave(&wl->lock, flags);
    +
     	if (!__intel_dmc_wl_supported(display))
    -		return;
    +		goto out_unlock;
    =20
     	flush_delayed_work(&wl->work);
    =20
    -	spin_lock_irqsave(&wl->lock, flags);
    -
     	if (drm_WARN_ON(display->drm, !wl->enabled))
     		goto out_unlock;
    =20
    @@ -389,13 +389,13 @@ void intel_dmc_wl_get(struct intel_display *displ=
ay, i915_reg_t reg)
     	struct intel_dmc_wl *wl =3D &display->wl;
     	unsigned long flags;
    =20
    +	spin_lock_irqsave(&wl->lock, flags);
    +
     	if (!wl->initialized)
    -		return;
    +		goto out_unlock;
    =20
     	if (!__intel_dmc_wl_supported(display))
    -		return;
    -
    -	spin_lock_irqsave(&wl->lock, flags);
    +		goto out_unlock;
    =20
     	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->dc=
_state))
     		goto out_unlock;
    @@ -424,13 +424,13 @@ void intel_dmc_wl_put(struct intel_display *displ=
ay, i915_reg_t reg)
     	struct intel_dmc_wl *wl =3D &display->wl;
     	unsigned long flags;
    =20
    +	spin_lock_irqsave(&wl->lock, flags);
    +
     	if (!wl->initialized)
    -		return;
    +		goto out_unlock;
    =20
     	if (!__intel_dmc_wl_supported(display))
    -		return;
    -
    -	spin_lock_irqsave(&wl->lock, flags);
    +		goto out_unlock;
    =20
     	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->dc=
_state))
     		goto out_unlock;

--
Gustavo Sousa

>  wakelock.
>
>Ugh... I don't like the latter very much... But, with those provided, I
>believe we should be safe.
>
>Thoughts?
>
>>
>>
>>> Let's implement that via a new field "initialized". Not that, since we
>>> expect __intel_dmc_wl_supported() to be used for most non-static DMC
>>> wakelock functions, let's add a drm_WARN_ONCE() there for when it is
>>> called prior to initialization.
>>
>>
>>s/not that/note that/
>
>Thanks!
>
>>
>>
>>> The only exception of functions that can be called before initializatio=
n
>>> are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
>>> calling __intel_dmc_wl_supported() if not initialized.
>>>=20
>>> An alternative solution would be to revise MMIO-related stuff in the
>>> whole driver initialization sequence, but that would possibly come with
>>> the cost of some added ordering dependencies and complexity to the
>>> source code.
>>
>>I think this can be kept out of the commit message.  It's not very
>>clear what you mean and it sounds much more complex than the solution
>>you implemented.  Unless race can really be an issue here, but then the
>>whole commit message should be changed to an eventual more complex
>>solution.
>
>I meant that we would need to revise the initialization code and find
>the correct place to put the DMC Wakelock software initialization call.
>That might also come with changes in some places where we do probe the
>hardware for info:
>
>  - We need our initialization to happen before
>    intel_display_device_info_runtime_init(), because we want to check
>    HAS_DMC().
>
>  - Currently, __intel_display_device_info_runtime_init() is using
>    intel_re_read(), which in turn uses
>    intel_dmc_wl_get()/intel_dmc_wl_put().
>
>  - The alternative solution to using the "initialized" flag would be to
>    make sure that function does not use the MMIO functions that take
>    the DMC wakelock path.
>
>  - However, __intel_display_device_info_runtime_init() is not necessary
>    the only function that would need to be changed, but rather
>    basically everything that does MMIO before the initialization!
>
>I hope it is clearer now :-)
>
>--
>Gustavo Sousa
