Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHAqKD2Dz2mwwwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:07:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA62392930
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 147D310F213;
	Fri,  3 Apr 2026 09:07:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+KzgQ8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39D010F213
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 09:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775207226; x=1806743226;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W2VZioH+weEc9QJ+JemuAs5aA56Gk6KKD6TI74tHCKA=;
 b=X+KzgQ8AuzcHokrbTztqomlbEyaeOMji7+vjStvQ90LdEnLn+ZzZk5A0
 2qBiiFd6pZUQOBhPl1SpqoBt1E2XZ4RICB5xhtZLLLNRk4Lon0DlmuQ1c
 psGATTGplsf3oOHueOBsx+QIsNMWFoHCIMu+HccNmXi7ISIy+uCh5N8g4
 /t+WyfClREnLB3Dn41+Zpl4ZffhSBWKdwmW0uN+mYcr6Fq0VNIevIGNfm
 zpzxhj+rskaooLLxdRyOj/NAbLQEeQuh21uEWRyQJdtgja0MiMrTpW8/G
 RvjEfFcS5wLYmvFccU/urQM4Pkc2sjsWSI5pzvzG2EhjFMqKze12i3Vi9 A==;
X-CSE-ConnectionGUID: mwrP57wGRri9X3Z1VgqRSQ==
X-CSE-MsgGUID: xJzcQbRMTemCvQzzZzcCfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75443490"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75443490"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:07:05 -0700
X-CSE-ConnectionGUID: cISbAWESQ0+CR3fRLLWysQ==
X-CSE-MsgGUID: +2KK1sXdQum3glzZiNGGgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="265142629"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:07:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:07:04 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 02:07:04 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:07:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HFZkt8hSkMRIFUbrHdSISQ5j+QcoMrS2Nty7vDINf3x6u/qKvNtUXRFShNjeI3Y4kCDR4SSuSdtPHuacLcursp05jhC6F4fqhmTpSuMJpXhql6pH8GAGyW7/+JFVHkRUbiEh8YPfwwSzjCBp4pg9EIUHP8HoEjHGv3tyi1yDeXVjpw/dQ/LxbfdkWKXxT2PmaGwWPUZ6Sx87BSo5ZkZVFIlc/aDJCTZNSGOJ03PNDxXAGhJs3lnYkas0e9oVSI3WonPZ3r/gwHuNARfx6aILYffAF0ZST4tzThSNY4D5ipjSstuhda4YFNOSgrTZFEEcqD5mhpOODCVj+MNzH3oHrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZUnsh77a3SSZyC1/JZcjwEEiROV8P9827zphq3wRFpI=;
 b=ija6yipg9lMRN8SGsdEwtRv4hMjxCSooNftMOpWb85HdRpytZ8ZJuurzvptWHMWe4fKzhcTwKy/M9BWAmjntgbbWR/KokSqhMh75yxhXUGNyI57Mh6WlSlKaB9y7iSLDIXnKuKGEhHEoMHsY48M3tFFBSXlx9uBZsMIMHFHPb5vBFgRCohVwiCrIP1gSydjCj8moX8NipT5zgAs87i9SvpCi/P47plBzML9VHkPpGLKeRkO4NZWKQkqb4qz89W8LGVaRcnsQjZcmpC4A/61Kx9pf05vrdVlvhn1rv040dPZ67FA5gCpQ4wfTAfis2ORyMFvJIDvjQKc/OfuIh63S2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8802.namprd11.prod.outlook.com (2603:10b6:208:598::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Fri, 3 Apr
 2026 09:07:00 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 09:07:00 +0000
Date: Fri, 3 Apr 2026 09:06:49 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: fix refcount underflow in
 intel_engine_park_heartbeat
Message-ID: <ja6mb6r3ofp7apg2gse2vaw3ftfcvxhzyr7kpjrsww2svs6f4y@qvnkkyocc43a>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8802:EE_
X-MS-Office365-Filtering-Correlation-Id: 54aeda2d-c022-4338-3904-08de91605d63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: PodfLU0SOudUICLQjO3BypT5+Rtw8pgu0RdOozNvRNgfRddbxgpebtssO4/0b6G191xJq9FmnTmPRaC+Hvo5PXnQhrBtg7d630f3DZiYARE077fCUjhchzQKzZGLnSRck4RXBEQiLYATXUjteuXmLlpAOZLWlgAMmPYNb64mvoRxCdWmuHKufMzmUv0p6UBpj6N0RPJdiTj5TCgVmFZIZcFLcTOxzOdUI1PZX8OD4ZQdoVHVK1fu2YnvB6l3ViBbcz2tAN8OP2bmgjFibxxfL1mZ1LZJWrzbrtHrRznqQUYVKGuc2ZBuDmcRCuX8Jqop7X881ibKFTbefH+azLFpXYd+XBhD25e3hlw/KRy3l7VNsdjaia7r2wElC3isMEMYTCu2cMT3E141NwggmLT0egba+re6kzncUZYkjbPybQDWwjXyeYSD86J8V2QtfpStxw7ylpwvD4By0ZXEckdZbNVab9xHA0RgbrI45UbFpyqtom0dc4L+TgiiM96/T31UeKg40T9ByEOWqwRC9EkTgFnz2wNqO9757Lq5hOzg6s0TEWfsUZDFRuYO0+k10Oji2fEZPg8W9Ed6O+Mydn/u3/iWprW8r3Md9qCPuhUjskIBz/kMJWC9jOkndh4KE1shehzvlEP+SRDwfKNp/jq9rTYapjuX2qSTi/TVNpca3FOwZ1gbjTdDAtz5P6gCznyS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXlyVjQ3M1FEUXBLUGF0MTcyTE1KSXZaZkVpTS9xLzRlTVN0dERjeWN2OTdF?=
 =?utf-8?B?ajkvaW9QZ0pwdU56TTlGMlZqUGhkdHk3RFRwSVdzclBjQlY1M05UamIxaVFl?=
 =?utf-8?B?VDY1Zy9MVVdYaHp1eE5kb0J2VmNyd3RwU1QraDJvaTR6MmJZMUU2ajgrc1NT?=
 =?utf-8?B?T2F1MXhmNWJmalNydHVib0ZRdVhFSTM3bldZMnZ0WEM5b2dsV0oxVWc3WStU?=
 =?utf-8?B?Um90SlJORk85TCtYaE92NjRKS2lpWjhnZ2VOYTJyY3NUTG9pd2dEUXFLMVRI?=
 =?utf-8?B?THZ3ZzRvOGhka1FEblBxZm1hd080UVltN1BGbVpGSThTVWdKL3NvNTUwVUw0?=
 =?utf-8?B?eCtHRFRUeXlhMFRLUlhkZWpjM3c5MTEzSFczZm9qazA1QW1raVp6ZzRieVlk?=
 =?utf-8?B?SWQ5R0dsR092WWpLZi9BbnZCamNCQzNJeUR0OUEwZFFkZ1ZWWS91cnJrYXZK?=
 =?utf-8?B?Uk5nZTNTaGxmNklSellVSjRZM05FN05KWnVxYThjM1MrMXB3SThPOG5aK0Vm?=
 =?utf-8?B?T1I5TTkySFFZSGszQU04eExjR0ZWRjVhSUdxMEF0NjBqYm8vVVJNbjlLeGhK?=
 =?utf-8?B?OFZFNlJpRUxFVDE3UjhXRHVVS3V4Z2gvNjdVdXhWbkJnNG1lMERyLzkrTFlP?=
 =?utf-8?B?YnRrcWVuNUtrVHhta044SmgyZFVMSlUzL0doVm00VXE0eXdEbElud1NUMlg1?=
 =?utf-8?B?STdKejBhc2hhbzZvdmNuV1hnWlo5dXB6RGN3QWRGRFN0N3RHK0JSY1dkMzEy?=
 =?utf-8?B?eldMUng5R1BlaGcyN00xMDZ0NEdoVUFtQmFHbGE3enNnT0tKU3V0UjV0N2sx?=
 =?utf-8?B?RGF3WTFPWHZ5QmRMU2pCWlM0aEY4eWV6ZU1Oa2YxaVMzcUNCSmRjTElabHFP?=
 =?utf-8?B?M21PZDBHZktLK0xlN0JyallZNThYd0tBRWpudGVTaWYwMEVEbjg4M0NnOFJq?=
 =?utf-8?B?Skpid0R4WU5OSVUrdDNXKzQ1TUM2WUp5RVpTejN3aGROQ3JJeFpWR0xPTWVv?=
 =?utf-8?B?K3ZoVll4SlZIOUQ2STVCZFRhV3JYUm5CQ0ZZUEh1aDBpS0QzNmJCeHlNdmJk?=
 =?utf-8?B?UEVKQ25zVE1XT2R4ckVzRkRUOEpWVnY3MnJpRWxnY1VHRkVXZHhHOUFMSTBk?=
 =?utf-8?B?c1JkemdWdmdiMFZjQzdmWjVGeFAwZGRYaENySC9KVXU3ZkhRaENHbjNRR1RR?=
 =?utf-8?B?Tjc0cjI3R0tXNW5PWjY1dU5lT3FSalNiY0NqMWZTOUM1ZXorVjJzMnNWdVVv?=
 =?utf-8?B?dkE2K1dQcmtmZHNVbzZITlBYWXg1c3pON2d4N1Y5aXBPUk9JakJxZHZ2OVNH?=
 =?utf-8?B?eWlzNENOSFhHdjVqa0d1b1hjUXUwZWZlajF1bUI2dmRIL0dLeUF4Z0cxYzVG?=
 =?utf-8?B?VTdVdWpEc1puZWlEMjViRHVDaFEvL2x0S3hxRkY5QWUwRFEyMWt6SEFwSTN0?=
 =?utf-8?B?WmRmeENQd0NscXgweDNxemV6OU9SSlFQVXMzZ2RlNm9xMnM2Um5ENUlGbmYy?=
 =?utf-8?B?RGhoNm85MU1GeVM0a0FxcnBjS3k2bC9XOWNFY1Q4ZEhja1BNUGZWaXhWZnR4?=
 =?utf-8?B?OTlmZ05zUDJKb2lNR1pGcVA0dGQzRjNrSVlLMCtiY25oVmMxSzJWdVBNU2Uv?=
 =?utf-8?B?QllDVU1DdmdXT3dQK0w4Z2loMVJWUHY1c0p2RTdKd3BXSzdnOXVLSTA0QXJL?=
 =?utf-8?B?cUxLa2lXNjU1Y3BLVFJtNVg5SGE3Und3UmZ6QVV3TUpDSG0rQ0pYeCtWaStt?=
 =?utf-8?B?QkwwaUp0T3FsVkNoOU5SNGlqdzZ6ck1BT0tiTlNMMWtVeWlOaDBvcHVDMkVR?=
 =?utf-8?B?MzRXWWEwSmRBRzNEY2htTlc3UWtQb0JybVBzeGxQRnB3OWdYaEh6YmN3RDBk?=
 =?utf-8?B?K1lvaG9yWlFUakhVbUhzM3lVU2dydkdxV25uZ2ZKdFlYVGJhUFFKVU1XL21R?=
 =?utf-8?B?ejRKRERSckZGNmgwdCtSVUVYcExhblNQTkthYUpvWHdUWXNZY29nV2l0dVRP?=
 =?utf-8?B?YllNa0F1aUlMdG1WRU1hS1QrTVBnZUNFR1hGZXVhbDlPQXl1WlRFdS94THE5?=
 =?utf-8?B?dk9ybDVsNUNncG9MbWJVSFJiakpIK1V2QUNSWktNeTBncnpSRUpxanhiVnNk?=
 =?utf-8?B?dGxVRDhGYnA0WHZHcnRxSXpFTG5BdDNNb2lxTUEvRnNyNmZHZVJYdmhUOWZv?=
 =?utf-8?B?a0hrYWJBRVNoUG94NXI2TnFkZWQ2MkdzQUdReHpJcHpzdU1Rd1JMYlFCTFph?=
 =?utf-8?B?eHdocUZEU09KWnUvM3VmbUdXYzVONVp5eDJOSnpvd3dNZEdwQS9yS3Y2b1l0?=
 =?utf-8?B?YUdNdG5xSWs4R2xnL1B1aC9IVGg4ZkF4d0JsL2VESUtvUDFONmExMWgrRWVv?=
 =?utf-8?Q?iv1AM/ToMY7A2vS0=3D?=
X-Exchange-RoutingPolicyChecked: ulStHC2pTN2bAU59l1CRFeJG/ZjIM8hlgYZKzI5KAyYV06Nb0xCcGySaaysGA0jKYADtqN6y3iFqaVWoALgoeOLnnarjceKCtMAyyYQQm56b71/mJHxC4kNcPIWawkkN/b/iDBFhaqfr0Dj98r5MIaqAmpPWVgpMThWe6A0H4mrvjjgZv/6xlg5VYgnT9ykD6xDNth/FqRWSg4ZYD1oVdzQl/P+dihNZ5Nly12k6xNZpX+p9lgIZQwy9mnOpJlW2pzbGX0LUfDZEZ7dLcWc5zgztQPya+phGmQCt7+i3tRqod/S4qNwbFKGzpRrpR67ExHOqBC3EfxI01Tw/lpoZTg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 54aeda2d-c022-4338-3904-08de91605d63
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 09:07:00.4699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c3zqTJMu1jxyCYndGis2D0k1ENbrbSPtL9ShJWsN+X/OAibuEmdK1nOpFg6e3GMZ87NZpDDXZMp4JaVB8LDcassGpHH/QzGyjlBja8l77fM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8802
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0EA62392930
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

On 2026-04-01 at 12:10:07 +0200, Sebastian Brzezinka wrote:
> A use-after-free / refcount underflow is possible when the heartbeat
> worker and intel_engine_park_heartbeat() race to release the same
> engine->heartbeat.systole request.
> 
> The heartbeat worker reads engine->heartbeat.systole and calls
> i915_request_put() on it when the request is complete, but clears
> the pointer in a separate, non-atomic step. Concurrently, a request
> retirement on another CPU can drop the engine wakeref to zero, triggering
> __engine_park() -> intel_engine_park_heartbeat(). If the heartbeat
> timer is pending at that point, cancel_delayed_work() returns true and
> intel_engine_park_heartbeat() reads the stale non-NULL systole pointer
> and calls i915_request_put() on it again, causing a refcount underflow:
> 
> ```
> <4> [487.221889] Workqueue: i915-unordered engine_retire [i915]
> <4> [487.222640] RIP: 0010:refcount_warn_saturate+0x68/0xb0
> ...
> <4> [487.222707] Call Trace:
> <4> [487.222711]  <TASK>
> <4> [487.222716]  intel_engine_park_heartbeat.part.0+0x6f/0x80 [i915]
> <4> [487.223115]  intel_engine_park_heartbeat+0x25/0x40 [i915]
> <4> [487.223566]  __engine_park+0xb9/0x650 [i915]
> <4> [487.223973]  ____intel_wakeref_put_last+0x2e/0xb0 [i915]
> <4> [487.224408]  __intel_wakeref_put_last+0x72/0x90 [i915]
> <4> [487.224797]  intel_context_exit_engine+0x7c/0x80 [i915]
> <4> [487.225238]  intel_context_exit+0xf1/0x1b0 [i915]
> <4> [487.225695]  i915_request_retire.part.0+0x1b9/0x530 [i915]
> <4> [487.226178]  i915_request_retire+0x1c/0x40 [i915]
> <4> [487.226625]  engine_retire+0x122/0x180 [i915]
> <4> [487.227037]  process_one_work+0x239/0x760
> <4> [487.227060]  worker_thread+0x200/0x3f0
> <4> [487.227068]  ? __pfx_worker_thread+0x10/0x10
> <4> [487.227075]  kthread+0x10d/0x150
> <4> [487.227083]  ? __pfx_kthread+0x10/0x10
> <4> [487.227092]  ret_from_fork+0x3d4/0x480
> <4> [487.227099]  ? __pfx_kthread+0x10/0x10
> <4> [487.227107]  ret_from_fork_asm+0x1a/0x30
> <4> [487.227141]  </TASK>
> ```
> 
> Fix this by replacing the non-atomic pointer read + separate clear with
> xchg() in both racing paths. xchg() is a single indivisible hardware
> instruction that atomically reads the old pointer and writes NULL. This
> guarantees only one of the two concurrent callers obtains the non-NULL
> pointer and performs the put, the other gets NULL and skips it.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15880
> Fixes: 058179e72e09 ("drm/i915/gt: Replace hangcheck by heartbeats")
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
