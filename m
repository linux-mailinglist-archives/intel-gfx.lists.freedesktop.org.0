Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2nBxOxTtk2mN9wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:22:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F81D148B43
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D2010E437;
	Tue, 17 Feb 2026 04:22:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZzH+FVF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652D410E437;
 Tue, 17 Feb 2026 04:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771302160; x=1802838160;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aTyzcw9aTOX4qA6FqxWz0JfE74EpkTa15LQ/2PCUzIk=;
 b=EZzH+FVFNSD4dAKbXQsJGnwz0IOiGfSfxxC23WIFjMnSCW8UYTU+7Y7F
 +RFQ9dfxjBmR2w8jXjD9cqbJ1opjE/LVw1kOkIQTkFTF8pLK2/lPcsKs9
 d8r5MtqbTNd2+En/ztZY86puh/NyLK71GryDexlbMSikrMjxCqdkayCGq
 xOVsrSfHv7ryuQRogOQHlYNmTuZuRLTVpjchfS9CPejcWXAsYqCBNJBYW
 u+3i1NCsvzPaCgOxE5SC6201n2CMveBDJ8o4D+t1SxKHkBWz6YDwQkIGK
 Ch4J6UA6Q3suGg+vn64jByqoryLjZk7ZDcUjHYDxWEqiYa5nvnDxnUjE5 A==;
X-CSE-ConnectionGUID: zwEUnBevQfmZon4IVSVKtw==
X-CSE-MsgGUID: ZVMN1Md5SkafGMfQtvna9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="76222808"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="76222808"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:22:40 -0800
X-CSE-ConnectionGUID: hG8MX0qRQtilQt5ODtS+bw==
X-CSE-MsgGUID: 3NG2VcMRS4CdwEjEIuh8ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="213781041"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:22:40 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:22:39 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 20:22:39 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.40)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:22:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cOkbrwTwiawryt04WygSK0Dg7I/dOK+W1HqsZiVAdx9mhSxSLU0p+GbioFVLslOGjopApjwtd7rU+YLqlQ9/2v/iL+R/cnZ2EmEIFAJQBut3jpy2BXRM8BfEZh6KiiYj+amB5dIUmekBIR8EmTCnAGOFzBXRrMwxyCg2UEqLUGaWCljDAaXv1U2iG35XdO1vM1qCKLWSqEVZLMnnRf87nL1OrMVlLaIXwq0kdSC3C6lmGASvEV9Wo1MwID++JXPp4l6VqTQ55figv3XKVPjn9OX7ieYsZq/fN+ncvZDWt8BJzUMrJ5uJS/zRm5HQ/Ue9Jo5IpCCBmgPgPQREHCXk8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jH858ZyQJ4k4GdL2lQVW2sDk20Tw5GsIuoE+g8zpMAw=;
 b=bqB4nfy+TP9Jj+ezzON+M0pjHirGMjB+EqpSmiTk+E47zW3FsPQIJE8+XbZFuRgK+JDHSeyXcnPyUEA4i7EisfiaBQn2faYmCB67mBcSjHNsHr7AQ9QADo9VJ/sDEkjB/2JMqGQZIO9Km9lMuLXVEmfQ7DxWWQvhh9j/tXE22OldleVjDgoNzRQ4xKeRgd/Vz8m9f1DgMtckTVFwkiM31LBBt+xWyZlpydOI9+hzFi7U3FSO5j/wig81MbK97wMPo6E/EnwlmKeX1Vc3MuD5VsFiGlytTw8Xb19Y0jO6kwZpd7RvNJgPFagb9EYgrqZx3xWL1i5ZijvfEortv3gTrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7813.namprd11.prod.outlook.com (2603:10b6:208:402::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 04:22:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 04:22:31 +0000
Message-ID: <9a4d27c6-a645-4730-9e01-c26e7af45e26@intel.com>
Date: Tue, 17 Feb 2026 09:52:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/i915/dp: Add missing slice count check during
 mode validation
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
References: <20260216070421.714884-1-imre.deak@intel.com>
 <20260216070421.714884-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260216070421.714884-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0031.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7813:EE_
X-MS-Office365-Filtering-Correlation-Id: 49a06227-4986-435d-33b3-08de6ddc2a64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUlVN1pTaVpNTmcwWTF1bVc2UTNVZW1Jb2R4NDg3aXJvNUhQbFFYYjl2YVZh?=
 =?utf-8?B?MWtHNDhXbU92QmpjVmpZQ3NzbUgxNXlGb0dvd1dqMWNNL1I3YUQ3MlJzeXpt?=
 =?utf-8?B?cFRvZ0dEd2tJbXBSUnh1U1BGcmF2R1NjbTJRVmk0TUo3SVA3c2l0dldaaXd5?=
 =?utf-8?B?YVBmT3c3dlJ0Q01waDNlSDVNV0ExZUdoV2h1Z1RnSUxvOCt2V1FVQUxaSjNY?=
 =?utf-8?B?cS9PY25sRTNsUXN6M211eVlTK3E3Kzc4UitxaU94OE42SVdVcHRObXg1S2ZF?=
 =?utf-8?B?cmZETTJvcWRtam1zUjVzMGR6UzU2U01Hc0hPSDN3bzQvbVJIWkp1WDJFME4v?=
 =?utf-8?B?OU8xSTFxeWZnTmg3eWF1VFVkaFlDWDNCaTAyRDJ5cFRWMFNPVndIUTdKSi9D?=
 =?utf-8?B?S0NNUUdTem44SkNPUlMzcW50cE43SWZmOFdCOEtmTlZwNUd1bGlOcmg3dXBp?=
 =?utf-8?B?bWw1UmU4WGJWcVA4RUxZWDlBNzl0MFBMeXN2Q0p0OVRpRnJMb2xkZTZ3cUdq?=
 =?utf-8?B?UnNMdVFwNk40ZEdDcGN3aWNhQVEzMzZkRDZNYUZJRXh1WmRvQ0RMdE1KdklC?=
 =?utf-8?B?Q1AxQzF0VWg0eTlwalhTWlBlZXpxM2pEUEZ0ZUQ0V1BZcHBKYytpN2ltQ2E5?=
 =?utf-8?B?UU15TS9xNkkwcTFmamhBaU8yVVZ1dU1hQWZ4RzlwVFFrb0puY2JiU1k0S3dt?=
 =?utf-8?B?bWQzbFVrRnFyaXlMWVl1L0NYR2V4eStHTlFQcWFvUllsVVc2bCtaZWtsN3Vq?=
 =?utf-8?B?L2VrS1lHR2FQdkJCSHJMcFVUQkljblJiWDNlQytZTFdsT1hzd3cvcXhaQUh4?=
 =?utf-8?B?bldwNk85eWpZM3BYczFHTHd6UGtQOGZ6VTRwcEZmVE5XZzNEVVhGYkJ2elZz?=
 =?utf-8?B?Sk9oZHFaT0FiQ1VpbmpRWG1NY210NmxhalV4SktnR1M0Q3puT0FvbG9ZMkpm?=
 =?utf-8?B?ZnIzRTEvQXF4K2NCcnZOTEpVM1ZtUm5SMTdiaElvN0N4bkFvZytUaTRZemtK?=
 =?utf-8?B?R3dyaG5jVEVUcUd0OUd3ZkZ1WDllNUM4VUxJMHFFMmJCRGxhMFBGT01lWEk1?=
 =?utf-8?B?TFFHa1d1SjdpdTNVazBhTDgyT3cyK1RQa3ZMMkVLYVMwZitkcHJTc29BMkdn?=
 =?utf-8?B?bzkvZEk3QWs3RmRuSUtYUzBSbzYzWFB4Y1BhbjJhK21DYWQvejlMMzlhb09X?=
 =?utf-8?B?TFBrTFZEeUlJcExFdjFFTnBvVDEwT01CTVBNaUFFYjBxcklWWHBlWDZCdFNo?=
 =?utf-8?B?a2hxWG9tZlVPRTYwTFF5cm13cmg3WTliKytncmJwT2l3WVVNWWdpSllEWjFi?=
 =?utf-8?B?bWlwb3dBdDZ5bnpoMGdjTEQ3MW53WXBJRUtJeDczV2VzMjczN1RLT09kbVBv?=
 =?utf-8?B?cTdWSENaYUg0REFoSU01d3A4MVpWendSMmQ5Sk9aaFNDQlJKUmd5S3NSYVcv?=
 =?utf-8?B?bXp0bXc0T0J3OHVzT014b2tlQWVIakV2RkZFZDRaNk9wakdjTERZT0ExOHpH?=
 =?utf-8?B?WlNVZC9CWnYxT2ZZeVBlU3F2YkRHSHpmVjRSUkVKajdIQndkUTRpMUlKL3g5?=
 =?utf-8?B?VHVyZVFNaS92bkNwd0cwdE5Mb2lQV2QrYWg0cGpVNUp0ZDJGME1NSk0vZ2g3?=
 =?utf-8?B?Q3dYaFVKVGlIMTEyNHdXNlEwbmxrbU5pSkJMYldUanNJWjBjVHMxbFpOckJD?=
 =?utf-8?B?aHVYWk81bEJSSklBbm0xU0xnNllxaTlFT0NzWk1qSkZJaFMzMWZlZWczTDh3?=
 =?utf-8?B?Wlh3a01QMi9jclZ4aUJpT1VoZHdGMkxJMnRERWxjVjRmbGxPUkt2QXJnWFhL?=
 =?utf-8?B?dk5LMlg0YTNmUHF4MmVlQzZVRDNjdTB6QUVMQTNyYkFSblppMU1WUStVMld2?=
 =?utf-8?B?dGNWMkgyZ1dieDYwZjc1akxMU1VDRTVOa0tYZ1BkTTNlWGlFSVFCK3EvMzNF?=
 =?utf-8?B?dTJrcU0wMEM3K2w3MVZhY0JhTG5rY2xJSDdaQTdjSmd2QWpFeVRybTFiZUU3?=
 =?utf-8?B?dUxEYWdrWkFwVGZRbHdnVlBNcU1rcFI3U3FXWDJ3S3Q1Nko3eWgrWVJEOXBJ?=
 =?utf-8?B?L0dQWjlCVEZmVzJnaUx2ajRJVmIrSURRNGIxV1h5UFJTYkJ3U2QzZGp0dzJ5?=
 =?utf-8?Q?1sI8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L29nYndjV3FnNHpvbXdqbUYzUG4xazdRVGM1bmhUU3lvU0J4U213bWRQZjFl?=
 =?utf-8?B?WjNtRGx4TnF6d25maE9HZTI2ZzN2b2JVWTJwSjVEZG45aGpnVTg4dnZMMDN4?=
 =?utf-8?B?TWJkVnFOR0tJMlJyOVlFdEgxV290cmJBQ29WYStKMDE5N0JCOHBJVTd3WEt4?=
 =?utf-8?B?czRtbktpYmdOMVhDQjh6K0JFVUwzbFp6TzcraE1sTTJMWlBjS3FzTGxUWDEw?=
 =?utf-8?B?Q2VpNmJjZkxGODRUR2FDd3NGWVJ3TFdPMzJTanY1MCtpeDRsVWMrbnpuWE1a?=
 =?utf-8?B?RTAyS3FkbFZ4K25SVTlpRmdnTEFOSUlWdmZvVjJkbEZla2RwTzNhVXo0aGFk?=
 =?utf-8?B?dDg0Qy9peXZremhZLzZseFU3b1N5cDUwZDl3YURsL0trQ1FtdGlEU0lZNUhp?=
 =?utf-8?B?L28xcFl4NDFCdlBWUlRDTTZ6QzlsdkFHaUZPWWRRMC9hcE5FdVJrNVFFemV4?=
 =?utf-8?B?ZDFSZUxlQmZIakRYR0c4T1J6alRHeittb0JCRlBmOE1xcFJJQnkwZHNOcXk1?=
 =?utf-8?B?TEhzWTVsYVNTNVpWRERtRFZ6ZU1VWFlURnlXOWxyYzEwdU00T0pXUDlPdXZP?=
 =?utf-8?B?R215ZGF0WUhZcThjL0hHckw3MXRlWHE5R0hBdUZHQitNVHUxK1pzbEZYVGJS?=
 =?utf-8?B?M3lEWUdyN1pkb2pSdXk4TWVSVnljV2dKOTZSUTRlcUZZcjcyVXZGY1REcEJB?=
 =?utf-8?B?TG1zeGpVV3VLZXhkUGhhMlRTRjE2Qy9Ga1JqOUlITnVseXNzMm1jOFlCa2ha?=
 =?utf-8?B?Q1g3V0hKd0crUGxidnBncVVnRE1sQnYvR2t3VmpTVHVoNGwxYjdURjJ1cmhu?=
 =?utf-8?B?b2NlTXNRQXBuSUFHRk1iY0IrekJvS0ozK2NqQ2FiMG5hSUZUMWEyanNOV2pi?=
 =?utf-8?B?dEpxMmlFZTlwWlRaSmc1UjBtMkxWeWVFaFZ0QnNuOU9LbThVQ09qQjNXWHZB?=
 =?utf-8?B?cm5Na2hodVJYalBFS21xTVk4ZkVLc2F6V2tJQ3NKaWlkT2RidGErV0pZeEY2?=
 =?utf-8?B?ZHh6dngyRXV6NGRJSElhOVY5bTg3cFlNdzZXcVJPMlk2WTZCT2dDZkQ1WTdJ?=
 =?utf-8?B?ZFZUU0JtTEFEZUdpNG5LT0xQU0xRU0lBWElpOXR0dFFrbHBaaXRmWXJQSXlU?=
 =?utf-8?B?Z3hZZzdOZTRYU29idXh1aTM1L0N0dmV6OVBzb0lEeExjU3Z2Y05zTmIzRkJK?=
 =?utf-8?B?QU5LaWgybHZ0b05iaVFuelk0WSt2SUJuSFN2Y1pWeDB4UUhsRnBxbTM4aThs?=
 =?utf-8?B?bkdBNVRBRFAwZkhrR0I4NFlYanJIOXZrTytPQm0yY2V2MEgxeXpqNjU1d1E1?=
 =?utf-8?B?R3NCL0tYWEtxencySFlwY3BwRXlGOFZCTlUxSGtMVkxPNlBiSk9LamJTY3hm?=
 =?utf-8?B?ZDZzYmNLWkhwYTB0bVc3VGg2U0dIcmQxZWd6bFRBMU9oa1RWNjgyN3lSSjNU?=
 =?utf-8?B?bHVEWHNYQ2dNZHAwWnJ3N0tNYWRjalVlMktGQWhhWHduSkk2YzEwN0d3Ump5?=
 =?utf-8?B?RHQwem16UFI0VVgzT2VydzdCNFVBeUlhTkR1eUMzMjZsbmNVTkV3SzdCRW9M?=
 =?utf-8?B?VUpHclJXY0UvU2RWZ1VuMHUrR2R1RlowN3BHanJFanNhZ3d1RTJ3VkJRbU9l?=
 =?utf-8?B?ZUhDL3dDNTd6c0JRcEF6cVpzb3dnaTM2RGcrU1ppS1RHKzFISU9NbUZSY25n?=
 =?utf-8?B?a3VEeHJXZ0JheFZ6d2RSaGN6dUwyVUpCUGZteW8rNUFaUGJ2d0o1aHFIWXlv?=
 =?utf-8?B?d1NSQnc5QmUwL1B4a0pNTzFnZXB4K005UVRXU1RoN245YTdlQmxRc3RVcnZ1?=
 =?utf-8?B?b3NMbGJpUjdXODk1NC93WENLNitzaXBTZFNXcnFRVm5lSjdkdzlkVE9SRmJy?=
 =?utf-8?B?c0phTzl2MFFaNHN2cVNJOS9QSmlVaEZiS0FyUnlwa0JXNys1OGZGTXpjTFdZ?=
 =?utf-8?B?NDhNLzhPdFptWHZNYWFCT2lLaDdUams1bk9iMGEwWWVHVm5ZNUpCbHo5NEtt?=
 =?utf-8?B?MUpNeUIxSWZ1VUdaOHA2MHVXem1RWm9LZTdvQUpkRUxBRFdBZ08xWERqZ2tt?=
 =?utf-8?B?SjkzK21yM2JVNW10WXFCWitmODJhU3Vjd2IxM2FzSUQ3M1JIVXlJdFhFOU16?=
 =?utf-8?B?YVE2Zmx2U0pkWFF4Q0RJcXlLTTh5NHlCYU9aMWl0L0tMWWYwbXhYNmdKUUt1?=
 =?utf-8?B?cHhncnEwdW80cVk1elVsWFNiM0ZEWjdieHg1WEpXM2FBRVA2NElESUNZeDda?=
 =?utf-8?B?WElnMHBrYzdhLzhLbnNQL1pESjg2dVZCT2tRdVE1MnovTUd2QWUwQzNsdDhP?=
 =?utf-8?B?Yk1lSWxpbnFSK1NDYWZPUS9TUTNmazdOMURsVmpBd1l6ckk0L2U4Mmo5b1c3?=
 =?utf-8?Q?rBj6usB41TQXxnh0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49a06227-4986-435d-33b3-08de6ddc2a64
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 04:22:31.9238 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GtGUrCYPwlOQDZlJNx7/5KNYe96aZZ4dy79ArVYM8rRe8xPfS2V5727ksk6x1kwAxF527xEr5Yt3iHrElADyXMBIcU8gapQWEVGcXgJOmlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7813
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3F81D148B43
X-Rspamd-Action: no action


On 2/16/2026 12:34 PM, Imre Deak wrote:
> Add the missing check for a valid slice count during
> mode validation when DSC is enabled.
>
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Fixes: 745395b51c26 ("drm/i915/dp: Add intel_dp_mode_valid_with_dsc()")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b5fe7d8ba5864..d1caa20370123 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2595,6 +2595,9 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
>   	if (min_bpp_x16 <= 0 || min_bpp_x16 > max_bpp_x16)
>   		return false;
>   
> +	if (dsc_slice_count == 0)
> +		return false;
> +
>   	return is_bw_sufficient_for_dsc_config(intel_dp,
>   					       link_clock, lane_count,
>   					       mode_clock, mode_hdisplay,
