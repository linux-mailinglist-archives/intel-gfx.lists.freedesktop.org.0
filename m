Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEcwAIoI1mnbAQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:49:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536F23B88A4
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C947010E0B9;
	Wed,  8 Apr 2026 07:49:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9goUUFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5B710E0B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 07:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775634566; x=1807170566;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r7BVsfJSWeCl3mV74ttNet69zqOOfgdbwvNo6An8Hfg=;
 b=k9goUUFLJgsal9CGr6AWYAg3Vf/I7cOh4p+u1NO3pyBHubctooPrkZ6E
 mzoSzwKbV4Hm+MErJO47K70u+rdhcY7mljr8EyqEvSa++E1pvKDEeWvVg
 ZsuMUxs7DSoqUs0Ph5JZLJJ4lZhTd7L1+oxDfYl/kIDMgSsKkEuxZNm1P
 ODq2lR1TdkzylcVV/UGuFBkm3+Pxy7u2GYl59xZsjwaaOQxUuzyQx+kOm
 FtjRDZZsxm3ei7xyJInG8d+i6lJ5YEUopX0l1rTg0kb0FcVXlW3Qtwd+l
 wk2Xx3u3fp6D7eGlG3fWisNrqilKaTtd+T8cwpSMuZ4GKhUagxV/K9oDo Q==;
X-CSE-ConnectionGUID: AdUrXh7UTlCMD0NyemzODg==
X-CSE-MsgGUID: URJ7WTcNTP2siilbQJmeIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87308603"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="87308603"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:49:26 -0700
X-CSE-ConnectionGUID: iQLQZMeZRFyhLV7iqoBJpA==
X-CSE-MsgGUID: 3jv8MfzdRWWlmeNCwSKCUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="223636656"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:49:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:49:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 00:49:24 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DgvpYn3EgmFoN+48xx6cLusipLg5Vgmz66WumbhMyU/Pe/SZ6YPqdOL63f8+lc7XHSUOlVZDJKB8eTBc2Kd1X3oV/K8HsMt7AelL2n4PDp4IGOVvbKJmOz+FDqBKewWipHmbUHGj1pIk6aMn7y50m4/gUz2CAhiJvR46R2Tk4umTFxwCM0524bV8wS6hC9PeHcJKaDpB6arp1hROF6IWQ7cfjo4Jb9jYQ5WbgEefDO+9QEDLCdA9U7BfvkDsn06BuSUaRRsulTnBbmeM7V3JrSuZckNmmHOzoGF9IezwQZJZ3rppHbOJO7Yv4kTC/Ls9bFsusKVPKB4tD42sk7Lpcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHfcrFFWDzVIuTSU0jt33NjfCvgLRrFxtnNE6w+gr+c=;
 b=lr0jyJ6m5mpnFYNiKZQCVCvl2ZovIeZYj2bKvhibZy31U/J8TszGPUPTouZzzle5Lg/gBLd7cdzn5FQ9KfwfwlCjgurY3DXb+HuC4WDAQDO83hyN8OvZBsnFrFU9Cik4OmSA9JA+D1/P8OPshoPu+s5LR81MVmtvh59ths+Lkr27cDoYWswWd2QSgW3HQ/JkXTLm4+pXsz0TdomyJDI6ISoy3FnE9jCJbMthVwS0W+Q9deB0D6jqKmPgbTYJ2PQSX4LAiWPbhBZfYmVRgP/9UMW9Qd/rJQTZvCtuzYp4fMET98Ebkp6VCni/KDNGKGzjvpwRju1Y97r5YURVtYQKdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Wed, 8 Apr
 2026 07:49:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:49:17 +0000
Date: Wed, 8 Apr 2026 07:48:47 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC v3 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <tlhobr4kezabicxfufyywyq4kx5qrvxuexjida4wzqf3j3qo3y@2mmynk73ozy4>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
 <20260403090019.1933036-3-krzysztof.karas@intel.com>
 <DHJHH6A10FVI.XM7NSCN99MSM@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <DHJHH6A10FVI.XM7NSCN99MSM@intel.com>
X-ClientProxiedBy: TL2P290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB7577:EE_
X-MS-Office365-Filtering-Correlation-Id: 640df3e2-80e6-4bf7-9f1b-08de954355c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: tMrFLfcgX8OirGgN19GuWZFpOHfNtyalYv7SaWXGINBGuXcb94D9NMBZU2IwwcevYvI8U9COTZBntDmTJEq+To6mjhycOR1/SfbrB2I/5/9f0S/YKU/0RZa7yiZP6ptI89M1ufU+Bd/OF8vLp+TkJGPswNwS9+9d35cOWv07vc15JRKkxt5gSv7JxLP8fHyE/W1HP9mQZgk63ZaXLSm65ZXI3vgBtHBrmyTZhMJ9W8WE1DA6SlwJePY7t2sLiPDuRwzcQcF/7rwcNiGLMRKiA4JtsWw27LnQqzK4d5eKnyLwmjYPcs/bRE4bCVSk4s3K1EozYY/U9+EuJfwRDWmd/3nVdurTmckHC/Tb/PGOAvoJRJdovnPbG5tm2OyMZCYgKs4gFxDwWWIqWEG2U+xBjiYtEeC7xneJZEn4JWTxUCKdFtAvRKHQZ6OMgJwZJ9H+nZ1+O4N4LD1erSeNuSBqWRK28TqmNFqsJQt1AlcCM9sStuTViFJMxbJaWs0msUS1uML9UUwSw8jFPeafzmQrWbK8cBZdA5FgB5Hoz9D/0nKhivTErbeA/cSEZbCuunS/PHGZl1VwEdnMIgspmB/0PTtPuR9warZNHieBfBsxAJ62BoZZFRZIEfbAEM+SOH0IJhyuiMDNKGJXLLCtrZ23UiIygj4AYBBQxgQWGafDkYWrUy8zJ75Ad1S1cHsfx/WxyHZ4pMQAggT9FOhFD2b7FLvu0mLWYJUNihKSXY61lVc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGxabWJpYUk5T042THZzM0hkU2JmSERqeGlyVk9US2UwYUYyMFJXOVo3SDRJ?=
 =?utf-8?B?ZG9WMDQzZHhObENlMXVzbFV0VTcwSktiamZ4TWlCWG1OengvR01zbXdrd2xm?=
 =?utf-8?B?RDRQeWJqc29YQ05waDkreVBPVmxsenVZVXBOVEhXckFqQnlodmZIV1ZsU0hy?=
 =?utf-8?B?V2YwbEhkeGlYMWlDRVl0d2tpSVYwVXpraVlFL0wzUjduRzVmTncrbVFKLzN5?=
 =?utf-8?B?US8zUFN1R0hpQnpPRlZLd01xVDlURmxBZGxtaGN3WXFhZzJLK1pGTUtVNi8v?=
 =?utf-8?B?KzBSalN0aEVOck5TbHNuMFVvRmRwaFlnaFVHMXpDQ0toV1hVUlh4bGdXL3g2?=
 =?utf-8?B?dlJpSExrb0xieXNHR2J2dnFEbm5wSDA4emtGcmtqeSt2UHhZYkxKUld0Z29l?=
 =?utf-8?B?UmIrR3ZzakF2ejVoem1wdlg1MVYvS081djNLeThjcC9vcU91RFNoaFZMczFT?=
 =?utf-8?B?aEJvUHNIeFpQMFEvN0JQSVo4V3R6SzA3UkFhTk5VazlaRDA2OEpqWTFpSngy?=
 =?utf-8?B?LzE5WkROdHluNGRwNjBSeXFUbXVhNDJWd3RKdnZvUVRWVHBNMFdiOEJVakdZ?=
 =?utf-8?B?aGIzTzkrZVdIa0MvRG5lbWVud1F4eWh3em1sSWkxQ1lJUjlkeml4U1BwdXZU?=
 =?utf-8?B?b3JEYVZDcWFNcVpMUTI3dlNnQ3dzVzR1NnpBbzBUQ2toSmhJZS9FU3E3UG1T?=
 =?utf-8?B?SzBQNlNRSHBNN0w0VkpEN215THpPNm04SHNWMGpvS3N1cHRna3dKWUFITzBD?=
 =?utf-8?B?S1dOVUtCMmpueUxoMHFqS3hlWk8yUjQ3eGlha2tWeEJZTjF4VGl1eW5Mdmw5?=
 =?utf-8?B?OTRyNXVJY3lHd01UcVJkS210Z2ZlL2VZQnJSSGJkNzFmaFV1MEtLT3ByWUpo?=
 =?utf-8?B?N0xhTER1TU9PZVBpaDlyY3N1V010RExxbG9qd2ZDZVcrWlFkVkhzTGlXeGNH?=
 =?utf-8?B?bEtYTU1FWWc5d2hZLzlXcUUzam9sK1VDQnhXRnBoL01Eelo1L0RVS3N0ZVAv?=
 =?utf-8?B?cy9vV09OQk5FSnNDb0kxVVZjc2FlV3VyM3l6TzhQY3h1N2VTVDIxRDhGY1JO?=
 =?utf-8?B?b0g2bDdLQlRucGtDSWdaSTI1VUIwTjVENlYweGg5cmY0QXVlenEyOTBzZlFj?=
 =?utf-8?B?Q1JsenlkSXNiN3p2Q1JMeEp6QU5SN1ZXR1NMMklGMkhYUTJ5eW5PS1gycmhj?=
 =?utf-8?B?T2ZPblRDdW1PeHF0dTJMWFRwMHp6Q0E5cXNSbEtjUVUwdlhQSTkwTGFYQjNP?=
 =?utf-8?B?Y05rQkJRQmJzOGc4UFJPdVhPcE9qdkhoQ1VpVy8wQ0Fxc2p5Um56REFDblRG?=
 =?utf-8?B?RmhNc2s3aFNGcnJaZUExMmhRYTdNemJsNXhDdk5SazZZM0EyZ28yTE5NNzh2?=
 =?utf-8?B?V2NTdkE2Z1JpVndEYmF2R01XYnA0ZWxueUNHOGFkOVV5ZmtnS3l6aVJsV2FP?=
 =?utf-8?B?djlMenBMcFpnYU1QTmJJSFJCWU1XSDVBTzNmTHBYMFhvY0xBcWZvNHYvWXVK?=
 =?utf-8?B?Q3FSaDF4ZkNLNVUwUkJmeTJ5ckJ5ZFRMUCs3V0ZiYStmWUs3dU4vajI3bi9l?=
 =?utf-8?B?THlIYzlnV3VhbmgyTlE1OFcrTjVPNnUvc2tqZ1FlOTBVeVNzVWV3TkdKdGN3?=
 =?utf-8?B?OU5tT1NVRUdlazFEM0I1MGk2U3NqVk5rYkREbjFlQ2JEOWVIa1hKcEQvRjlx?=
 =?utf-8?B?TGFiVDhTL0xlRE5lZUJPNkRxRXJIWnAzcmRuVDhBZE9qN3BGd3JIS1hYWjRw?=
 =?utf-8?B?bjdURW1QbHBFbmoxMjhyY1oxN0diMlBYVkREVk5DZXllT2hRenpPd2lzQkhW?=
 =?utf-8?B?UUw0ZFhGWjB6dkFaNnU4a2MydXZMOUVPMmZmUkZYNkNBNTlFU2FxUTBIYzFk?=
 =?utf-8?B?bGdIRnZCU1kvZXlQcWp1bEpaNUhwTmdmSjU1SFhWTGltOG9ZQzhSVldqMDZE?=
 =?utf-8?B?Y2QrQkVMQmprTWphVjVPMW5mNHFNbTZHbXBUZHNMSU5hVktMRGhHSG8vY21T?=
 =?utf-8?B?Rk02bS95NjQrU3hqMU8rZkdnemZIT3ZkRVVXZHBhOTBRbGJ4WFBVYkZ6NVN1?=
 =?utf-8?B?bTRGY2tZaThkdTFnTWZGZjhnWjd4blM0akVTOUdLeHhhTE5Iak54eXcrRm93?=
 =?utf-8?B?MUYzUFRSSGNya0E2U2hkTG1oZUNHTXNmQkxtWXRmUEhDU051Yy92dVFuYnVB?=
 =?utf-8?B?b1QxK3U2N1cza3FEekJuMEUvNG83Rml5R3d0QTNaMktPOXkxMGlFTzNHeldB?=
 =?utf-8?B?cmV6ak4yRzhHNFlJakFhTHY0NDlMa3N3cmhZWVA3T1gyNDZRR2FRM0JMdkxn?=
 =?utf-8?B?MWZMc1MvNS96K2JiT05wMm1zODlUSFlUMjJSUEZWeGRZalNwaEdrbzN0Zll5?=
 =?utf-8?Q?1JCFWf5hlsZ0YXVU=3D?=
X-Exchange-RoutingPolicyChecked: vhG76H3WUoeFIeg7Yi5SBdyCO2oyao5o3WYvUVUJ+CAT4Y++pTtrxkEKkyLdyUh0OhYZG9ee+2E14JdGjwNAgxylMlQdAe2sZKCjiqDASE6O/Agsy/ih8nHoAJMCgZNkHECtmXEapGZ/41vOJ18JhSETSYNdFl+XzrTV6UgUiaVTokNjV/vKIiTV0ZpRVoQmcOx5FRz3luvk0dGBq67PLxaDfYf9zhpKRCB0OV3nCXeMUgt/Q2oXMrAJp+EJj1go/9Z6n1j/0/lvf2/PgoiuRfIx5LOb2uANaA6JCJnIBtclDUt77hck2wSWkWzuoluBrQgOczEyL4H+zG6P9oto4g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 640df3e2-80e6-4bf7-9f1b-08de954355c3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:49:17.3989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXhG/tXYHe6iH8Xf80bD9PebMWjHu9CiYjLxbD9htkHAvgqot7m0rpw2zs8wttWF94EsR/sxzC5ZRzkeY5Ni0xWa/W6oI7dFfYphGbuKhn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 536F23B88A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

[...]

> > +		if (!mm) {
> > +			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		kthread_use_mm(mm);
> Is it guaranteed that we are running in a kthread? If this is executed
> on a single NUMA node, could it trigger a warning in kthread_use_mm?
Yeah, the previous version was better handling this case.
I'll revert the !current->mm check.
> 
> > +	}
> > +
> > +run_tests:
> >  	/* Tests are listed in order in i915_*_selftests.h */
> >  	for (; count--; st++) {
> >  		if (!st->enabled)
> > @@ -226,6 +259,11 @@ static int __run_selftests(const char *name,
> >  		 st->name, err))
> >  		err = -1;
> >  
> > +	if (mm) {
> > +		mmput_async(mm);
> Isn't mmput enought here?
No, __mmdrop has a check that complains if we modify the
references for the current->mm directly (and at this point we
set mm as current->mm), so better to do it asynchronously.

> 
> > +		kthread_unuse_mm(mm);
> Probably should be in reverse order, unuse than put.
I am probably going to move mmput_async() right after
kthread_use_mm() (Janusz's suggestion in his e-mail).
> 
> > +	}
> > +
> >  	return err;
> >  }
> >  
> 
> 
> 
> 
> -- 
> Best regards,
> Sebastian
> 

-- 
Best Regards,
Krzysztof
