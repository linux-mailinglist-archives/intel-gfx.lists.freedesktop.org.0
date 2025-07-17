Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8159B08D26
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 14:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1247610E80B;
	Thu, 17 Jul 2025 12:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B+4NM6oD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748C310E80A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 12:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752755957; x=1784291957;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9roPpfcv/wuSHhonn/ypnACxNLKGq047UQypqIRkk/c=;
 b=B+4NM6oDatW5mqcwthqQ6pZYb7ZZuCjFEZeDnujos4NgUgElOHCLYn7V
 Jundys6BYGGGoXYDWtI5iVqrMeNyJQ4ti+bmOz/y+UVNqP7Jq5qolNyQP
 LPFiUNpu17K3h5OW2a16mhwmYVkDsSfB5OLgPDrOpQ4Ij+UpQnIqiffjw
 AqY2bVr2c6MJymLAgqPCBNqy5IplhgMk0GWlV82HGoWdTZsGb72koN28j
 EAYloxDRJTrV3H98uXasnig9PKgfSOq87S1mobazt5vcvWbRK3+3aeqeD
 0XaqHgrDrhICz/1GWsCe48wku49NZS3uhShsbR53uZJUR/qILGGMVkzyo g==;
X-CSE-ConnectionGUID: BNxdVnzfQ3SsbXzHPlHnpw==
X-CSE-MsgGUID: bVd9ISDwQuul4JSL7P7HIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54997891"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="54997891"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:39:17 -0700
X-CSE-ConnectionGUID: 6CyUDW6FT66IfYz6/mTaZQ==
X-CSE-MsgGUID: YrqAd4KmSUS3TpI/7vvIsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="188776233"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:39:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:39:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 05:39:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:39:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q7JMyvVgIAkJd8VZg26Wfq/BoXH690R4qIJOL5GbFC2u4mmB1q0X0JkLBcz/Qyey9wdkbj+6Hih9YSIdaWwN3cqRsj9GMHCpqIOViFlgsFqOMPzzCkPuOBXc27+SWn3amMZGGspVmBHDev3RkLATFjdq2G1S4Eu0S8D9tja3lFSIDPISL7lOdmIWFeZTqk+NGU16vVNDtRmO1cLrEnrVWIqywvzTYgEr2FLZfIB2sHpLHZ9iwmvjEx47GUDht51vQ0qAHo0RwU5fM12teonlnkxHY0FeYYQU8AZIoifgb4jldQjYQJAGbDXPwZmNt9psQea1D2VZA2UfMfr2HgD1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Sf94U2oKhZRu1sdsnQyvol4wQNOAYC67MO06mB4fu4=;
 b=mrJIulyhsgZ1+O2Zyc0H1KfnOj5w1R8A+cH3IPiLm2wBpl0O1hYcM72H7iGTUaT1OwbajZii1iQVrfgaqEcJDcbr/hbtWSScNQ6/H4IbDPN7TeNEY+lHmuWsWd9Ntd8fRS1i6UWVR66gLpuOKtWQmo9cqHFQCIdQau2qUZKF/VXylf7A+vU+RSsz/sXsNZjLfehe+Ufxdmuh/kTGMbq8lDeLdrSZffP9EPD9V84gfoEYrkR/BEz6I0NPzUwebpTDMJV4p9FJYWsukZ39VUBJ3Zpm6kVpNsU1TOJGbHQmIiH0xmSwdhMI13O0oHYoYLG+ls9KwSjwft3R0zfkZuzpHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 12:38:53 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Thu, 17 Jul 2025
 12:38:53 +0000
Date: Thu, 17 Jul 2025 12:38:47 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <20250717123824.676605-3-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VE1PR08CA0015.eurprd08.prod.outlook.com
 (2603:10a6:803:104::28) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB4914:EE_
X-MS-Office365-Filtering-Correlation-Id: a3f8bc88-d8e2-4bd0-5f0c-08ddc52ee37b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzFjaXZ5MEpyUE1VaW00d2t1MnErUkw5Tk8zQzNsUTRYLy9TKzRWVmVwTzNF?=
 =?utf-8?B?RkczdWtkalpFYmhxZ0drRDZDZVR1RXVLS1loeEpFTWlGZUEyN0N2dk1NRmhp?=
 =?utf-8?B?N1B3NjdtTC9yUDFTRTM1bWx5RmczdDhmbGtwVU5nZzZMNjM0SE9EMEg3Ynoy?=
 =?utf-8?B?YUtkY09wTnlOeGFOdnBubnZ3bWNsdjhac0w1SVFsMU84S05lYzkzSm92Rktr?=
 =?utf-8?B?TW8rUy9UL2dBNjNVaS9mcDFZYTdKRk02VU1IR3hveDNnSmhhTlhGNGV4UTlQ?=
 =?utf-8?B?Y2pFWmtuNEJGYUZ0Yk9OTkNENVZOTlNUQjRXY1RiTnlaQU10Z3cvN3hTT3NB?=
 =?utf-8?B?V3pTQjd6YVY0bWJmTnNNSGdOK3F2REw2ckJNd0NGMFQxZ0kvQythRWN6TG5B?=
 =?utf-8?B?UEU1VTByc3VTd1JzcWg1TURqWW4xOGVrSEJBRDRBTUpvVzZYR2dWbDJTaERP?=
 =?utf-8?B?WDM3RnVvVHI5dDNvQnlabkw1dGhOYVJrR2dwVURhaitBNUNZRDN4eEMwU3Ey?=
 =?utf-8?B?aWlzdzRmdWtGTlpTbUMxbUY0QThqWklydDVwT1ZEeG9jN2tlWEN1RkgvbnZO?=
 =?utf-8?B?c0JMaC8weEVlUXdBYzJPNnRDditXa3VNTGo4ZWRZdlFQOWZCcUZCYSsvdnhl?=
 =?utf-8?B?UkFmK0poaUxLb1FJbmtLK093OW84ZGgxUlNueFBKTXdMQkJlMndjU3JYTzBK?=
 =?utf-8?B?Qm0ySWNzQ0E5MlRRdTg5UWtqOTg1bFpxVVdmcVB6d1VEVk9ibkFiekxVOXpG?=
 =?utf-8?B?UEZhcmxjRG04MXE5Q20zMzBRd0hFdExTZWhiZWpIb1dESENWbTZWNlhXZTZp?=
 =?utf-8?B?R0Vlc2MrN1NGTGtySi82SGhDdnBHd1kvUEs4a1BkUVVKZzN6dFJURWRRdi9u?=
 =?utf-8?B?bEtKSEhaRGRzZnhSQUMraFViMjhVRlUzQ2VUL3RtTWNieWo1N1hQbUZkbXRU?=
 =?utf-8?B?akdIRnMyOXV0d2taOUpUalg1RHErdkxybjlWWE9URWwzcFM4OWo4ZDlqNjA3?=
 =?utf-8?B?ZTBKMXhiaTBheXlrN3hOdElxcE9iZ0lmN2hoMGF4czI5Rmc3SWtpY1krNGVl?=
 =?utf-8?B?MFBoS1JRRTIyaUt5ZEVrZlBFMVpmbWdvSlczSzAzZUJVblN1Q015ZlVTSXl1?=
 =?utf-8?B?L1J5emtSOVhmRDZlUWRBQ1M5czdid082ZlYwVi9WMUNBUjgwbGVHK25STGhm?=
 =?utf-8?B?NWZ1TWhycmx2c1RMYkFGamlQcjk3UTB6SytsWDVvUlA5K0hvd1ZVL1RjTUVo?=
 =?utf-8?B?UU8vUndoNGhvWGk0a1BDNDVIaUFTd1FqR0V0V0dqVEc4VHBNNTg1eTRxdVdu?=
 =?utf-8?B?TFplbmpPY1N5eDdHMlF2MDVwYWl3enpHU2x4NHdWanI2K1FMVStuMnVLWTN4?=
 =?utf-8?B?a2hlOVpLY21DbFpkMmYrTjVTRmJoaXBtY1RBanNRN3JHSXlMN1RXZnRLYWtP?=
 =?utf-8?B?anpremd6Uk9pVEtQREFQenlzcWp1WFgrVC9leHJCLzQ3NFc4OHpyeUllOUE2?=
 =?utf-8?B?T2tCamNRUndCL0NIOFM1Q3FVMmJZMmVVVDNNNUlkcjM1MjFaQ2FRMzFIam50?=
 =?utf-8?B?UUpmS2xtR0lkSmI5QlJGa3JyK0NZdVBpVTNrTnJpNitWWU8xK1NmVTVubkJD?=
 =?utf-8?B?dFg5S0pNU3VDRGJtVnVvM09BaWQ4b1paOWwwbkZhb1JsRDd5Uzg1ZWxFWFFk?=
 =?utf-8?B?dEdYYmlPWm5DZGN1dTRDYzZ0YjdzYTlERkZ1M05aZWNZS2pZNCtUczAyazIv?=
 =?utf-8?B?cXMrTjlmZE5aR2ZmRzFUZHZCTTZjSzBabTBpR2NFMXZtcDFMbGpPLzVoZ2JX?=
 =?utf-8?B?WmRrekx1UE94QnlUOTd0Q2NVb1pmVkZUNGEwRVRxSUxnYTA2ZTdDV2RBdXho?=
 =?utf-8?B?L1BiNDFDM2xzbmk0SDZTQTZHUENjK2pPZnpSdm5zeUdDbXNLWlNLNXhFWUMw?=
 =?utf-8?Q?CoXa31yFsvQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFhJeUVtanpoZ01Nd29GbStLaUpGUjVMVmM5R2JuN1N0Z0F1UEREYWdYWlRU?=
 =?utf-8?B?dUh4U1UzaC9McHhERGRNK0hnUUhRMnNyN05WQmxlZTBrYVpuS0RSRG84d2lZ?=
 =?utf-8?B?YzBmRUtJbkJpM2Y4K0twbkw4VU9Fb0NSV04ydVZEN2hlcFdzZFB0dzc1YXlk?=
 =?utf-8?B?d3k2eEdaeXRSelhMaFppakh1aGdFOTlnZ1VuRldQQWNXS0x4MFJXMFQyeHhx?=
 =?utf-8?B?RVJaQzRwU0ppSW94c1ByVXduMlhTRWIzL2g1RUlHMXNqbG92TThnNFprK08y?=
 =?utf-8?B?NWNLbnNlWnJVMHQrTlhxeHRjNlVBYWpjQTRPWDZ3bjhUZVdSRk5LTGlwWExE?=
 =?utf-8?B?SVhBOVZ1WmJHY1RFMFVsSWpmbTMyeVJrTklIVEJNaFVCOUhKUjNpR1VZdnBF?=
 =?utf-8?B?aFp1RmR3TjBEaVMrcm5tcUZQcnBCT2NGSzFRRTIxUGNJSXUwUjhYMEdXN0Vx?=
 =?utf-8?B?b0Q0Y2NMVFhhSHhYbkNZYW5BMzh6TlFNRExWeUYyRjA3RUNWQ2d6VUx6RVYr?=
 =?utf-8?B?ZTBIMTR2VHJCUjJDSHVBUjRkNW9ZMldSRHFQVi81TnlvZ3FMVHFsd2RKS2Zt?=
 =?utf-8?B?bFgrSUFKd0JHQWRhRkNsZmFXQXFzY1VkQ1BTZHp2ZGFVNGs1Ui9STnMyWS9h?=
 =?utf-8?B?RWpDYnpwL3AySEwvKy9lQndLK042cnFOcFVLUTg2WUpBekQzYndySGs3R1Bk?=
 =?utf-8?B?SEFyMTZIM3Q5NmtSRTdmMm1XQlNHVjc4ejFhRHpVS3d6em5ISDgvRW5FSGV6?=
 =?utf-8?B?N3loZWdaekdYd29DOGFTVWVTcTI3bmd1QkF3L1lwemx3VVlOMEtVK3p2SG94?=
 =?utf-8?B?bHBRUUk2R2dDUkhvZkNHalV4R0JrMVRoaTMrMTNFc1NtMk4xQ1R4YkpRbE40?=
 =?utf-8?B?NCtscDlvZVZ0L0o0cVk1RFJyV1hjRHBNSHJQTFdKdlphditYd2tSQ0hDS0Y2?=
 =?utf-8?B?R2FObGtvbEs5TXVyWVgwdlI4QWpBWUliK2g4R3VCU1hHY3k0MThoaVRuRC9p?=
 =?utf-8?B?b29rTEZLbFYrWCtFYzJVUGVuZVpKVHhtaUIzbFlBSER1Rm5LZFVVRWwvK3pp?=
 =?utf-8?B?eFk3alhTbWFCaUozKzY0ODMyL3Y0TWZKa3BTRytKN1cyWTFtUGRYZGJBbW1P?=
 =?utf-8?B?ME5PZFE3cHZTY1ZjQitadmMzbisrNzR6WVcxZTFUUHpOSkVFTTQ4WWJPK1hq?=
 =?utf-8?B?RGp6SjZjQTNaRnlXKzBWb3ZKVHFVbFJyRlZKUDZxTFFRemZaazNPZWRwc2Yz?=
 =?utf-8?B?V2VWR1BPdVRuSXI4ZGxKNlpNV3lvK1dROWJuL0VlZDNBZHRIelY2VDZSOHNr?=
 =?utf-8?B?elB0dXExenBnd1gwcE4zWmhKdTJtZHJmZVlFNnVxUDlxazlNYmxTcmlXREFx?=
 =?utf-8?B?WkpXcm0vcUljV21nd0QxZWdZbnJmRWJQVG9CVkVLMnM2MHYrNGVnN0lyQ0k5?=
 =?utf-8?B?eUFSMlFxUTU2aU9nYlQ4dDlQeXVuUTVzNkt0SjR0cm9nbzRjUGJlU3VwdjZD?=
 =?utf-8?B?U05MdFlJaFY1TWVzbXJjYXBjZGhyVXJyU3dpSHBVY21MWi84Q0pwWTR4dnJ5?=
 =?utf-8?B?NVBwOHdjZm1mNTNSbTRtYzg1eWt0SnlyZTBudVFhejBwaWtDa1dkdWdhanZI?=
 =?utf-8?B?a2t5bS9FWTdIdXkwZGR6STFQcmEyK1pXYkd5a1I5OFFHbzhPQUFoTEd1T3hi?=
 =?utf-8?B?NFdGMStZWG1oSlJDc1NtY0sydlpuY2I5eXZYaS9oWlptWW9xNUhrcG1qeEQw?=
 =?utf-8?B?Q0tpbDZMdlJQTFNtMUV6TGVTK2FQTE53NzUxMlE5OWJmM3R6QTdQVXIrRWkr?=
 =?utf-8?B?VXFudVkvZm5LV0VHMFFMbW5OMFhtWTJ4VXRZMEJWeDhuUHJXV2dqeUMwYTFk?=
 =?utf-8?B?SmNlQnZyVlR6YzdhcXJmbG1ZNm0reC9TRlZEblVoVzlYeUVMQ2gvOXVaa1pC?=
 =?utf-8?B?MVAvaUt3RjZKeGx2WVV0MDdmYnFrd3A0RmFpUitnazNLaGllZmdWZ0hwV1Fz?=
 =?utf-8?B?WHRvN3BONUp4NWJ3RG0wblIzRnZGMDVLYXdnS3NkZEZjV2xKK0JrOGFTeTdv?=
 =?utf-8?B?YVBFV1A3MTlPM0QrcllYbktCVXZMRUdkUGsrdkdWcytkdVRZOTVtTkc1Nk1F?=
 =?utf-8?B?REsxS1NPdFF3UzMrd1hHTzlNT0tFakx5bFR4VDlTV1kwenhmOTczdlh1K3BJ?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f8bc88-d8e2-4bd0-5f0c-08ddc52ee37b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 12:38:53.3250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MJvpq91krwnQuPNSiRHZLW4UW/gRjtL7pXL+8TaY3sDfw4xkQWH93EyFVxeh8t3sBF7d+xIlhrjwQE+XeeJRNGeIrUk3/Q7NdALDH1sYoO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
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

According to the kernel coding style, if only one branch of a
conditional statement is a single statement, braces should
still be used in both branches.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v1 -> v2:
	- Add commit body.
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ea4793e73ea5..e3ddceb7bd97 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1382,8 +1382,9 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 		 */
 		if (flushes & CLFLUSH_AFTER)
 			drm_clflush_virt_range(addr, sizeof(*addr));
-	} else
+	} else {
 		*addr = value;
+	}
 }
 
 static u64
-- 
2.34.1

