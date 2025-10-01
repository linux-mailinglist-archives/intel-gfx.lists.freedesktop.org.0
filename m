Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF14BB071F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 15:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F3610E6E6;
	Wed,  1 Oct 2025 13:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bM6ewVbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930B310E6DD;
 Wed,  1 Oct 2025 13:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759324592; x=1790860592;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QWOhvFqZrgd7iOaGzfQ8jUWY7C37WYuqmlIcfGHj3cs=;
 b=bM6ewVbvT03pIJspfDc2adQCCNTWgFglx2j4ftLX0XL2XH1F6DMiOT7a
 5AQeg119bYFv43iQNxrWMRt21UQGEwglsrnGT/xWnjXwtIvHHD2oHLnXM
 dak1vv5eqklvEYhZIkjBkMUiEzwvYWLhzKCbF5Pnbzb6Ukzgl5NrNYclr
 P5q453II21ox4/PbiifzbQ2qg95E961qrMaYz/1ZWiusgPgWqIqcysy9T
 cYta0R9m9djCtoYAyuCWJTNwa4rHs7NrKeB8lunyMQt42t98TxKM7QoSV
 fs1GPWvWUb1vJ5H8m7w5Y1wMEY6I28pKXhyFr1QiaFd8APk5NWFnTHf91 Q==;
X-CSE-ConnectionGUID: +Dr/zBadSAOPKs1xQlkn/g==
X-CSE-MsgGUID: dOntT/dMSQentYb4ppvoHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="79015142"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="79015142"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:16:31 -0700
X-CSE-ConnectionGUID: 6oaHNsq4S02+ipvPmrwK9w==
X-CSE-MsgGUID: 4JG3BiRQRxmeJyqpPRjTJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179554931"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:16:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 06:16:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 06:16:29 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 06:16:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jleMrTt5qJSHxjoIcZfFj8Wk2XU+I38Xt8f1mcbtnN5XXNRsl5f/+TM4TeUS9R4GourNpDQDRuPOCxvC5QmDAduV7u2q4J+0nFTzf+JhN0QEWQfnn7CUMccqJTgBT/RZU+bNmBi4W3BX7O3jyHkJ9BLlCidsjCf5NB5mOPlUFvLn4FLSaqbTMYKoCgHJ9GCMHKfIpcvYy6arfhZle9VSqrKXlFT9vnW0S+y7xy9eYG3qExSefpTUhCgi7rQaGiptUi0u+LFZccryoFD0ZKJWD80J0P4NBzLwa7bX8tMVshNhe3UdBFGqdpw2P7fMYSz5Pg8gJrnxkmA8HJZsdofm3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qPZcuN4Sz/QZTzAhWOiKr8a8LHew8Y01ujR+s0NtGr0=;
 b=ctBrd2z4Hxx+qeLeUDNn0Z6YSEHCZkm9lDAAwxw/Ip4mk1P5L6bymZpCdHTcdLg6BWSSKsXY0smT/H/+dUMoKX0rY9C9/a4vtcCljHSQVrywv33NFFFMtu4Gt5aEbpNVtuDWpxMXaDhN8zVrLwCO/aOT0kWnPHap8EqvPdmd6DWCYhyPgP02wxD2/K65sY45rlPkeX42kJvMQntc/8wRth1qiHBG3cj6SOGS62XVbsCiQ7vqAwH3aTAgm6ojLpnB9RD2wesXWiAdc41AW2Y4ypIYlArDbbUUk1Yu2OrhiWa3bCXNVD2ySP0qPMBkKlJd9dZK7Z2YlBCQxxSwTpHVLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8585.namprd11.prod.outlook.com (2603:10b6:a03:56b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 13:16:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Wed, 1 Oct 2025
 13:16:26 +0000
Message-ID: <3093e04d-36a6-4f1e-be99-600ce3b85c20@intel.com>
Date: Wed, 1 Oct 2025 18:46:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpHHxXXFOEKDUmP@intel.com> <5687e76d-cd14-48b5-b30c-4d5efab8e605@intel.com>
 <aN0aNFjModmYJ3Lf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aN0aNFjModmYJ3Lf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8585:EE_
X-MS-Office365-Filtering-Correlation-Id: e010af0c-3fc1-4637-443b-08de00ecb9cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cm1XUXhnRzB2eTBrR3dhZ1M1dmluc2hoM0VzWVFDVlcvMHA2L3FkYlh3MitQ?=
 =?utf-8?B?dFpFTUJxTk90SHpwTXdoR0Z6Y2s3Sk1HRzdhLzUxSUJrTmJ5ZFBTbWtUNXA3?=
 =?utf-8?B?WTNPTkJMaFExeGxJa001RG51WWNiOC94dWQ1elFaMDRhcWpocHV3dUlzaE1Y?=
 =?utf-8?B?UndaRVVwZUVSWmhOWUttQXRzNTV3bmJrN2tpODBhQTdLWEZvdllGMGcxTmVi?=
 =?utf-8?B?SXhrSXVCZ0ltZWVLL1Y0S2kxS1NXTVpCNldNSUdhMzFKdEhtTjlwZ2xmN2hC?=
 =?utf-8?B?NDFDbkNsK002RHNVN2M0U1hqQlgwRGNtamxEWFliUEhHMmlMWS9lbUZkakt3?=
 =?utf-8?B?dm83U1V6clIwT3ZGSDE0QUpRZDZBaXJPWk1vQ2dFNUNmNWJQdWhQcXlnWVhZ?=
 =?utf-8?B?Ny9lZ3lJS0dCcXNwUndObnpVU2xGdnNBVHgyQlFXd0ZrdjlyTmEvc2xqR0Zz?=
 =?utf-8?B?Mi9ZZVRCL2ZRTndubnM1dm9MdkwzeDR0ZnljQ0F3enNYL29NUGJHNDNyRDZ2?=
 =?utf-8?B?bGFqZFNnUEJWQmZBdUcyT1UyeEdpcmQ0RlVIL3VxMXBGOGtJZzFPejZBRVVn?=
 =?utf-8?B?eDNuS250eTh4QU5HYktzYmJsQlg5Rm9RbnJUMXVDM2c3dThWZXdKSTgwcmdB?=
 =?utf-8?B?Rmo1RDBnREphM25XZzROcGdNcWVTVHBhcjFZOG1HbnQrajFVNFNhUWxMdk9m?=
 =?utf-8?B?cUVGVWRacCsreHQ3UE5EQVhKRDRKMHJLUGxZbnRrc1Q2ZHprS215cW5TRUY0?=
 =?utf-8?B?N2hYTWZ4K0pMRjNUdGJXM2laMkYrK2l0MC9wUHV1YlF5MGJnZStYWi9BVUZK?=
 =?utf-8?B?OHFDL0hmNmlTNTU2bmYxMmJxZnRFRklYc1N6S2VFQjNJQ29yRU1hWGJlek1x?=
 =?utf-8?B?MEVmMHNwbkIrV2x1TlpXTjBtejJUTmJzSEVKby9SUTNYRU1ERXpqclJHRnhN?=
 =?utf-8?B?SkI5d2tnSzFLekptNDllT2lZWXJYUkJCU21pUzlINFI4SGlERDRwaVF4dDBh?=
 =?utf-8?B?czczd0lnMHBmKytUc0lPd2UzQzRnU0FaSTI0N1hyUjBxY244czF0MjVvTER5?=
 =?utf-8?B?RFBMSXJBclJhSEVmRFRKMThIL0JoamRYZDNHbG9wNVdaNUNrczNMWWhMSTQv?=
 =?utf-8?B?RVh2RU53aitJYUFPOTAza2JOVlRvTVpoUTFmck1XeEgzMjFPMGkvTjAwUnlL?=
 =?utf-8?B?UnJob3VBUHpmdjBNQ0hOSTBUNURjdkFma0c5blVOclJLMlJKWWdzK09WTTIr?=
 =?utf-8?B?R3dRTzF6WnhCK2R0eVdETG95YlVpMWxiS09IYTZOVnFkbldkL1YrN0k3S3ZR?=
 =?utf-8?B?T2xKOVJyK3hXKzZmOWpMNmM4bFkvUTNsdjZTa1JvbGJKSGZsZTlYdmNCRUcv?=
 =?utf-8?B?Q1hIWFZBQ0d3NGVlTjZ1VlBNWXlrZ3RpdFVKQ0FTRSt4K0xwcHJmSUJoMkpx?=
 =?utf-8?B?d0g3Y3lzcmoxVk84WDgxbzlvNGJpenloQ2JrOUNJczl3cE4xR1JRQVA3L21C?=
 =?utf-8?B?aTVjaUpvUFRYR0FVd3Eya0pZRVl3RURza1VUdFNkZ2t1OXAwL0ZYbEFDTnFr?=
 =?utf-8?B?UXBJditveGVlQ0wxSERzYUlTU1JPU3ROY3YxYXZBVE80ZWNTWGNFWnJ1c3Zp?=
 =?utf-8?B?OTVFYnd0WkNUMHR2ZENUV2JmT0xqdVpaN2dabHRHcFRMZDQyRmhuVWZSTjB5?=
 =?utf-8?B?V2NsSHN5WitPb044K2l2L0FRTFI0U1dZN1NlNEltM1hWOGRpbDJ0TkRxRjJs?=
 =?utf-8?B?K0w4MTcxdDFWbVJ4ZWd5NjJlT2laVFpYOXcrZElzKzYxVi9vSjluVCsxSTQ0?=
 =?utf-8?B?cVJmdnFyTWljZ0NtMnA3aFBkM1NVQ0p5ajQ1UWd3ZThhYzhqQnlYY1AwU1JZ?=
 =?utf-8?B?NkJYcUY1Uk1xZDVPbWlFNU85R2h4ZUJONWdlOCtBQmRNZWdLeFV2OEJTZkgx?=
 =?utf-8?Q?QgwTbjVCryNf3B+b8tFvsSvPW66FH8uz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDBHMTkwV1dRWSs3UzlvZnBhbUZUeUFGRWJudGY4emE0Z1doNERKRC9KWlpl?=
 =?utf-8?B?Y1ZFZG9FRE4wRGdLeFdLUGlCMzlWUTBWc1pUNWpEZXlEWnYzWFBUOWVHd1Bj?=
 =?utf-8?B?U25pdXNRKzNxVVVXYXl1QnZ0ZGpsNE5VL1hFUkhWZVNzMUJSakxBd0h4ZUNV?=
 =?utf-8?B?YXE3cjFTdDRqbW9tRGxUYkROMyttNHg3VFV1ZGN3dXFjMmtkQ1d1SWFtVHdB?=
 =?utf-8?B?dFZlM0hCYTRFT1ZyNzN1cHhPS2JQMnJmRXJsUWdYTmVTU3dwSVhXSHFJRStG?=
 =?utf-8?B?K1J2M3F2ZWxzZ3hjYXhWemZXRi8vcnkyNC9kaE5OK09NY2NoaE13OS9zUVJB?=
 =?utf-8?B?VmZoMTlUQVZzMmhEc1hXc05ZZXE0bWNLV1B5Zkd5aDJFdlpwTXpWSmkvUkNC?=
 =?utf-8?B?NjBGckw2aW03TFY1RmdKNGFzNnZrdElhKzdBSSs4NTFmQ0dWOWM3ZmFrdVdB?=
 =?utf-8?B?aEVNUHJPbVJUZmJ6ekpvYmlhWk55YjdZRXJiT01pbFNFZUIrRnpoTVVtT3U0?=
 =?utf-8?B?cllzTjc2T09Nb1NpdEJIck90Y1VwVXdEOURiV1hVc2JJY1ZOVHF1UStxK3VM?=
 =?utf-8?B?RTRVUHpaZzVnRURFOWFDQmhzS3QrZnlxWXpVVVBKSVpDc0dEWGxjdU1ZMVV5?=
 =?utf-8?B?SlF2cnU5V3lVSnpxZjY5TVlRdjVxdVpIa1RGdnFpRWtCdFZrbDdxOElrRjZw?=
 =?utf-8?B?NUVndkVqU1VMVitlQnpXZVVyMzBzTFhjL3VNMkR3SnhmSWd1OGNLaG51Q2xy?=
 =?utf-8?B?bjY2SWcyNFJGSHZKeXhvQk8vYnFGcVcybkVHbkRCQTAzNW1DMmlLU1BjWCtI?=
 =?utf-8?B?MmRYVTNMRlc4d1VOc0FCdVorSmh2MDh3ckVMdXhmWVNBelVVUlh1MW05RUhw?=
 =?utf-8?B?ajBya0tOd1lVQStrVFY1UmtxOXpKVTh3SjVpOHdjSmZDUjFteXBUS2g0Qmtr?=
 =?utf-8?B?OTR5ZUxWODhWc1VCRDBUaDJoUG5pMFJRMVVlQWNKenc4akNJZVU2NDFTU2pz?=
 =?utf-8?B?VGx1bVNmZnlzVjNhTTBuYk9PVEhNMGVyR3owS1dRY0J1WGszSThTNkd2N0ov?=
 =?utf-8?B?c3M4dlA5Q1dQSFM0OU5Xenpzcmg4dlE4Q09Ha1lVd1NUVFlCdzk2L0lIK0JX?=
 =?utf-8?B?dVhpZzRPdnkwd0JobkxydStndXNTM2UxaElXNzRNMy8xb2hRZVVBd1BLeUNT?=
 =?utf-8?B?UktTc0NyVCtoYlV0N1NERE5hK1dBQTVwYXlaNmhxOEVwek9zZTl2REMwY1lv?=
 =?utf-8?B?VlFJU0I5SDFpOE5XNldURnE5YUkwRThwNXU4Q2dkNFFoZDdoMmFGK1ltYm9V?=
 =?utf-8?B?ZE05SHN0UkdMTHV6QWthQU02ZHVoZHBEZmtFbEsyY205YXdWTTFDS0tTTkdm?=
 =?utf-8?B?dFkvRUl6aWxpRGpHaG8zcXo5cVpMVDkrc0FLbjlZQy9SSjVHRThHNG5ZTDJJ?=
 =?utf-8?B?WjNjbC9zU2xXdVJJdHdKWERlUXR4MXhrVVRhZ1VyeDVxcG92eFJyVWlqL3Qx?=
 =?utf-8?B?TSt6NVJ5UnQ1OWFoN0NJbUtJYjJTdmlDT0xFUjhXSlluY1U2amV1SG91TU43?=
 =?utf-8?B?dVdsMjJ5TDkwdnVPc0RwOTJudXFITnc4NXpVY1dwSDJ5S2Z3N1hmNWZFOGpG?=
 =?utf-8?B?TzV5N1lFZUJSZmdZRnJmdkFDMHdHU1I1Y2FLdUp2MmY3V0JRRmNLNmgvNHc5?=
 =?utf-8?B?MWczeXZSNTFYbXJNblppOVBqa1N4RFRNTEw1OXRzYjZqRTlzcVorbVNLa1BD?=
 =?utf-8?B?RzRPNnZIYVJ0SXpKa1EybXBuL0dsR3o4cEk1bVVBakw5RnpPTVg2eHZoZ2dF?=
 =?utf-8?B?Vi8wWFFMaGIyZHRZaEhtSEZLNlBWbHp4QnRBcC9uOFpYZ1VZNEx2bG1zS0dE?=
 =?utf-8?B?NTFHQXNNaEVQVkoxRVh4RERjd2RTeUpiRHRXNVlYVGxiWkVNTVpjeTlkLy81?=
 =?utf-8?B?REFmb09qemh3MmgyWVQrNmZlNkMyREsxK0V1OHZCaW1wZ2plUHZ1cTJISWg3?=
 =?utf-8?B?SFdQZmlMZkxqek1leGF6cFNQR25yamZuOXAwbmpGc0ZGWnJCWnBrZjcraEhO?=
 =?utf-8?B?QnA1NXU1OGVBUmxUdVpYbVhPN0RkdDdCWFBkRDY2bUhNZm82V0QxdGtLYmgx?=
 =?utf-8?B?V2V5cGZVNVdyYVpJRk9kbysrZW4zdjZGUWFNdnd4V2tPUDUrVmxORFluSUpy?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e010af0c-3fc1-4637-443b-08de00ecb9cd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 13:16:26.6435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3LsjNuKN4cS4jycq6VdQL3IucdhLQyUuk0zUWZj3+/QhmmjwjRrsyhAZzJMZFJMpSGRE32fx8FAz1UhzoggSl4C7TAo3AMC3p3YIIzVSDJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8585
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


On 10/1/2025 5:40 PM, Ville Syrjälä wrote:
> On Wed, Oct 01, 2025 at 04:04:37PM +0530, Nautiyal, Ankit K wrote:
>> On 9/29/2025 2:15 PM, Ville Syrjälä wrote:
>>> On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
>>>> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
>>>> +				    struct intel_crtc *crtc)
>>>> +{
>>>> +	struct intel_crtc_state *crtc_state =
>>>> +		intel_atomic_get_new_crtc_state(state, crtc);
>>>> +	struct drm_display_mode *adjusted_mode =
>>>> +		&crtc_state->hw.adjusted_mode;
>>>> +	int vblank_delay = 0;
>>>> +
>>>> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
>>>> +
>>>> +	adjusted_mode->crtc_vblank_start += vblank_delay;
>>> The situation with crtc_vblank_start is already kinda broken,
>>> and I think we need to fix that first somehow.
>>>
>>> Currently crtc_vblank_start is assumed to be the vblank_start
>>> for the fixed refresh rate case. That value can be different
>>> from the variable refresh rate case whenever
>>> always_use_vrr_tg()==false. On icl/tgl it's always different
>>> due to the extra vblank delay, and also on adl+ it could be
>>> different if we were to use an optimized guardband.
>>>
>>> I think there are a few options how we might solve this:
>>> 1. keep crtc_vblank_start as is, and make sure every user of it
>>>      gets adjusted to also deal with the vrr case correctly
>>
>> Alright, so we avoid changing the vblank_start.
>> It means for platforms with always_use_vrr_tg()==true we directly set
>> the value for guardband. (Currently I was getting it from vmin_vtotal -
>> vblank_start)
>> For platforms ADL+ with always always_use_vrr_tg()== false for the fixed
>> refresh rate case, guardband is full vblank_length for variable refresh
>> rate set the guardband directly.
> I think we could just use something like this:
>
> something_something_vblank_len()
> {
> 	if (crtc_state->vrr.enable)
> 		return crtc_state->vrr.guardband;
> 	else
> 		return adjuste_mode.crtc_vtotal -
> 			adjusted_mode.crtc_vblank_start;
> }
>
> That should work fine for for both values of always_use_vrr_tg().

Yep I had something similar in mind.


>
>> As you have mentioned need to check which all places we need vblank_start.
>>
>> For ICL/TGL we do not use optimization for now, right?
> Effectively we do, because of intel_vrr_extra_vblank_delay().
> The VRR guardband is always one line less than the fixed refresh
> rate guardband. And if we run into the max pipeline full limit
> then the difference would be even larger.

Oh ok, got it.


>
>> The extra_vblank_delay quirk is already handled while filling the
>> registers.
>>
>>
>>> 2. enable always_use_vrr_tg() whenever there might be switch
>>>      between vrr and fixed refresh rate, which I think would mean
>>>      crtc_state->vrr.in_range==true.
>> I think I didnt get this part:
>> Do you mean later at some point we move to option 2:
>> always_use_vrr_tg()==true for all platforms.(Need to check if we can do
>> it for ICL, TGL).
> I'm pretty sure I tested always_use_vrr_tg()==true briefly on
> TGL and ADL and it seemed to be working fine.
>
> But I'm a bit concerned becase we originally enabled the VRR timing
> generator earlier during the modeset (but not from the very start IIRC),
> and that wasn't working all that well on some systems. So later I
> changed things to keep running with the legacy TG for the modeset and
> only switch to the VRR TG at the very end. It might have been some MTL
> system where we had these problems actually...
>
> It's of course possible that we've since fixed whatever was the
> underlying cause there. Or maybe the problem really was that we
> started to use the VRR timings already during the modeset. With the
> current always_use_vrr_tg()==true code we will still use the fixed
> refresh rate timings for the modeset, and switch to the VRR timings
> only at the very end.

Hmm I think PSR was giving problem with fixed refresh rate mode for TGL 
when I had tried that, but it was long back.

Need to recheck that.

Thanks for clearing things up.

Regards,

Ankit

>
