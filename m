Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2B8B4FBE9
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2444110E24C;
	Tue,  9 Sep 2025 12:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bvDp+jAs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB77A10E24C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757422643; x=1788958643;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uw8eT3sBkn87G3vdBdQBvRrnu0ivgLsuHB5Hb+41QyE=;
 b=bvDp+jAs34pLsQVZQWZzlOaD1Q1mpxDs4FUDa4s0foR8u0/2GV+EX9NB
 mXnbHo9N+sFLMJcmP0OOICOvaz3nDJbxhK6ZDk3HUFlBCDHErddGXISMN
 0NL90RrPf2to5duXsh4bk97zAGsK1pafLpdpxNBb3JnZOPtAWfoQUK3gm
 lG6DeS1V91FrjLNV6WDoVwxjLuqbb9kkIgFG1rj0Ra7xg4NlOgym54BzR
 Cl61vALXJox/jteTwEUcrb4Dy1SuYC7ZVzozDWAEcWZXI+YCVPOEgLFQA
 3m1koXbxVpUd6Ohmk6EprngxB/F2VGUr0GGRP1tUb6nFsiszYY3gNzEf6 w==;
X-CSE-ConnectionGUID: jzDFqgYvRBunZNMx4uGxvA==
X-CSE-MsgGUID: f8lRFwDfQvmP6+4RInJn9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="70401420"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="70401420"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:57:23 -0700
X-CSE-ConnectionGUID: rVmvbo8uRUmaZKYGelgoqw==
X-CSE-MsgGUID: qaO3zWByQMi0t5YKrI4bdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="173865825"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:57:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:57:21 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 05:57:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:57:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f2Rtj3MIfGUyfNv1VTVC+KZB1uC1NYEJ6XFqc8BpUr+G9xnHmS0UoB8VWnmY3QAaAwohGIDvtV5EWA9np86Rk8PSs0hhK8EbwfM/gG+uRec3LPtLVlx2uzH6HssV8L5pLvmyGt/okun+fHyPnfJ3jRj2kdWDzxffQoAM5GFIfmMCDY7jI3ccJ1e2eP0asly5tJvevjpJCWSqnTK2O0TYpHugWnHTTC+PtYwE2EhvowsLrFcjUOSxFMBOrzri1WhEN3txvOwAR2XpGmUqIH+Thvt2fWTXnktCwrAzEyNjsgHzBU9D8aeCnMV6i3Y9M6D0rPCphfvgc2sN8UID1Do+JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6DSKPgFpCxCCkWSQFCQMs1j0fJ8aMSDdblarBXgVzU=;
 b=RQW2i7YkTPqF1d9qfuslOTQj5jt9ceEJBGbMNKXIQsysxvIgD5f3MKSqB/hJI1AQJw8KeNMomkjXJE/IgPXQ+y91UcS0SiPITjFTdHbJjsIKyIk6rZB2HYguD/DJuvAIarTog2KNBEyzKh+mbxsH4v7m1ZId2smTLw0TrN7RJY+ouBYSmubTVMt/630KUtOqrHE7Wdc37lFYj3YcywBj3sEiJ9WyX/JbHCVpWxJuXf878IkWsZw+B4z7mnnUYCQi4xY4FAT5VSBGvBjsbQod7H9Dw+h3de1lExWRmtjC0AB0p33+ztNPzwYdPHUKbYg+sM7sDK8Y0VypLlYLBnXd4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.22; Tue, 9 Sep 2025 12:57:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 12:57:17 +0000
Date: Tue, 9 Sep 2025 12:57:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Danilo Krummrich <dakr@redhat.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 1/5] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <af178bcb6408ec6395b1102a1429ad49f6bc9f1b.1757416325.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757416325.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757416325.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TLZP290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM4PR11MB6333:EE_
X-MS-Office365-Filtering-Correlation-Id: 912091cd-9996-41ce-b57e-08ddefa067c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXB0R2xnUG1hbWdUTWlzUlAxNE5ydlR4WlJaWkM4SzVFTUxMQnc3Wmg5Y3Zs?=
 =?utf-8?B?Rk9hWWlrWGRYSkQvcktONnRqNmljeTVaaU5ycmNNVGllMjllbVphVDFqQU5S?=
 =?utf-8?B?b2hZZ3hTcitPU2xYTWk3bzBaVCsyWWU5UGxUQ0xYL3MxcEZMQm96bXZORWNT?=
 =?utf-8?B?c3MyTkhrYlQ5My9naktNVGp5REFPODFFM0g5RVd0emdzVExpN1hPMDZTeFBp?=
 =?utf-8?B?SFZTTjlvVVZQMzdRYjEzN2wveG5JeGhrWklEOTA3ZzUrRnVKU1hCZ3ZLR3BF?=
 =?utf-8?B?SVpKR3pxWElvbXB1TlIzSGNZc1ZDU0VWcFdNVHBxVHMvRDJTVG9mK0EyZDI5?=
 =?utf-8?B?eFRma0lRYVVTZzV1djN2MjBUeXN6dWlyUHAvV3RVaUE1NGtqNGdETEhsTlh1?=
 =?utf-8?B?YURRSE8wRWVGc25mRDNsUzduSGxqeTMzZkJVSW9tODllSDB5akVyN3ZTSDdI?=
 =?utf-8?B?SHNrSVQvUGpHZHFDY0NaOUo5RFg1eHN3dEQwbUMzYmVwbFoxa0x1L3ZZZXIy?=
 =?utf-8?B?bmdrdzhiZUJvb2k1ZmQ0V0IwTzFJYmsreG5DZkx3UmNuWnhhSEtmZEdnb0RM?=
 =?utf-8?B?S2VIaUlvSHBudFJndVJVUTk5ZWtBa2FQaGZPSmQrQzAxZytqSUZYRnV1dTN0?=
 =?utf-8?B?cmtVL0JVMTdKNWpIU1pLWjJWbUZDVkxOL3hDM0FnVXYyRUtub0x1T2FUcnBs?=
 =?utf-8?B?WWI4bkJTd2h5OTBDUmI3QnNwV01ERHQ2eWYwbFJYTndNSFZab3FOL0t6NEx0?=
 =?utf-8?B?cjlvazNKb2l6dTE1d214alpGZjBrWENwYW9rL2kyUCtZM0VKSm1vd1M0ZCtw?=
 =?utf-8?B?WlpzUkpiRXpOSTQxR2NwZnBJZHNpU21aRzROZEludDZsNm1mRDJOMnY0Tlps?=
 =?utf-8?B?NjlxNkdvMWt1dkRrQ2RWSldlV3JKbzNjWjE4UVVORzY2Z0ZxSmlENWZqSzQr?=
 =?utf-8?B?TEsrbnJ2ajVIZld4ck9oMHRpYmQyNWVBa0xRREd4Uk5SMzZsS1ZoOXQ3ZzB1?=
 =?utf-8?B?SndrVEdJYmRiZyt6K21hblJDZ1JwN21GTS9ucy8vU1RzTzZqN2IxeWJpdWYx?=
 =?utf-8?B?V2oyNDdVWTlleWl3U0FIc0lkYzg5a2lEdy8xU0VpYVFnWUxPb1E5ZHZOTXUx?=
 =?utf-8?B?WUdkOVJyd2dZbEpFdk5zRmtqMFRsUXZ1K04wZzA1RG9XcTBSZ0NLdjNqOEti?=
 =?utf-8?B?ZGFLdEhLTjFSaTBjSTdjV1hmWkJTSk9nbnI1MDBXdDlJUXpsZmUrMnU1Y0Fn?=
 =?utf-8?B?czJuVUpMTEFNZVdOUjRMTVFYUW5uMkw1TzN1YmZuWFRsd2dUcWkwdTk0eExa?=
 =?utf-8?B?MkVwYjE4bEtENVFKeDVoSytQMjZDQ0ZiRWpmRmxYMFl1Y3pnODRBZlM4UTJa?=
 =?utf-8?B?U1NreDZUUjFRb25VNUdRZzVOUDlkZGM5THU3MzFZZnZPM2pVYlNCQ29aemhM?=
 =?utf-8?B?bXJrMzVCSmZzeG54Nkp3a3l0dWR1VFhpcXdqTTY3aHVsU3Y4bExtR2tlWXRH?=
 =?utf-8?B?YkxWcWFuVHZjcGdhVjdrOVdWUjVLQnl4YUY2bTFQVEVPWk52aytCSlhPZlQ1?=
 =?utf-8?B?dTVnWjhIcmRmdTRibG5aeWUyUXF5dVI5Q09NSUJsMzNlTGVEZFdyYUxlNFcy?=
 =?utf-8?B?ZXhTU3d5QlhCYTRvNTJYYmdib1RLeXd2UG5uRDUvOGVNdElTaXVpbVVYdDBz?=
 =?utf-8?B?NDlpVk83Rkt1bjd0WGFHY0FmeDMrdHQ2S0hlZEx4RVdDOEE0dkdkTnFaUmdm?=
 =?utf-8?B?MVlXVzZUSzVaKzJMRGtHOHFCVUZOYjY5SUhmTEhPaU93ZW5ETXZkTCtRcFNB?=
 =?utf-8?B?RkhJMDQ2T1BQZ0ZnR3Bvc0lhZVlVdzVuUHNNNjdNbS9ZMGRhR2JESWFQYlBk?=
 =?utf-8?B?MjYvVUh0aHhHZU1kK2lBRWc5YU9xQ2daa1dxU0Riem42Qk9zeVFWZVN3R3g5?=
 =?utf-8?Q?YRT3eoTuiGk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjdKa2tHMkQ5RzdzL3lFSUdhZGpuVEtrRzdEYXJ6blBpOFo3VFhyL0Z4dXll?=
 =?utf-8?B?bkRnSEJjVmRJc29QZzJPMlJnYjA2V0NMQlpKZjlEOElMYWgvTXR6OFpvT2JK?=
 =?utf-8?B?YWZGT2FTUENRQlBKazR1NzdDT0FVcDhOdDVhZ1hQc1FkdUptMS8rUmRWS0lq?=
 =?utf-8?B?OGRYb1RKN1JDVVRqVE8wUmJzRGpLMmc1WWpYZ3NEcFpNMmxYRHppaVRRR3l0?=
 =?utf-8?B?bXBFNGJJM2tOaERvSGxkSEFuaHBPSThzZTU4bEtMbFU4ckhRVmN5OUdxSW5Q?=
 =?utf-8?B?U0k4YllSZHVzTzQzRnAycS84VTdVNEpIdW4wZW9BZmhocnYwVG9OV2p0elhS?=
 =?utf-8?B?MnpkcWt6Vm1ZSUhhMVpaU0RuMUN5S2xWZTVCZTF2ZlYrcUxCczNVVVBmbmk3?=
 =?utf-8?B?V2tRZU1mK1NybGZNTTFHeUZ2blBhVzdRTU5qOHZiaUg2T1MzenZyQ3U1OGFj?=
 =?utf-8?B?Rll1ZjZXU1NwTW1zMmNaeWV4aFRWRm9qejRTMXhLQ2NOdVZPVm9SN0g4L3Zl?=
 =?utf-8?B?eFFja3p3WjJwOFV1SnVRWlhodHF3czNaeisyNGMweGZFUDFodnhjSjE3R1ky?=
 =?utf-8?B?T1YxcDdTSzlSYmx0Z05DdnBITnhiZ3dsRnppQXRGMHNvQTlncmJWZTN0eWRF?=
 =?utf-8?B?U1IreHByK0ZVelk1NUI1dTN4b3E2OHoxakY4QmxCdzE0Zmo1ZklvbWtLQ0g5?=
 =?utf-8?B?VkNpMWZPcXRGRjdjRGJiSWxxT3luYmtzeGM3R1hXbzg2K1hzVkQ5TE1UMFBU?=
 =?utf-8?B?SmhCQVg5S3FyVU9QSy9SUzY3N1M0bDFzZFdiWnkzTXQrZW9KN09qSkp1NDE0?=
 =?utf-8?B?aGREOFlpbmRnclVFeGlPNzBvNC8xeERHZkZTUm50S3VJbkduWDBhUTR1VjB4?=
 =?utf-8?B?aC94c202UEo0V0hRNG5rTWVxN244bkRWdytjanNJQVdPK3lTREZSNjh5Q0xS?=
 =?utf-8?B?RDB0SW1SUkdMbDFFQVZneHR1ejFvcFhFR3g2eUlRdlMwL3ZNTTF1TTNyeEpW?=
 =?utf-8?B?MTVjeGpnUHZXczV2aWVaN0tTUFZuMWtZa2JZRnNHeXpWQ3VZcGlmU0phc1FR?=
 =?utf-8?B?TkhBMlJjQ2lYdStTM2hjaGErRUdVZ1JsNG12bDg4MjVrdW1RR3hRS092aXM0?=
 =?utf-8?B?VXU1Vkkwb3h6OUdCNUVZeitCc1JmQngyaW5sS0ZsVElqcUpFOUZLcmFaR3g3?=
 =?utf-8?B?YWVpL0QrV2dSOElwQ2NudGFmUzdScCtrS0tHb2JKYXdkWTk2RDFXaE9oQXFC?=
 =?utf-8?B?Q3RGbFFsWUhpYTNybCttNFFjRm5yUHJvK045Zy8wK3NUc0dyMzBMV1lGam0x?=
 =?utf-8?B?UzdVYzJZZWNROVQ1UlM0TkhVN0tOLzdWWW9PMi9rZlEvOWF0WHA1Wm1SMGE1?=
 =?utf-8?B?dU00aTFGSmxCcmJxUVhONm42SSsrckMrc05DQUtLNlRQNlNVWjBFMXVHZFJP?=
 =?utf-8?B?TWw3OTIxTk1UaldERUNhRFBtN0l3SEp6MHVaOVlrZFU2eFpuSVpxTlhzRkN0?=
 =?utf-8?B?R3BYRk1ZeHZUd1NhcEJwcnR2b1RzK3FKd09NRUxqUU5Ybkk3V0N0ckpXMHpR?=
 =?utf-8?B?N0cvRFZ5TkhubHllRHB5NU1wNnVoUi9ZV3ZKM29wNnJiTVV3MzF3aVl2Wk4x?=
 =?utf-8?B?bGRyRVJVZGV3b3Y5cGhoVGdYRllsQ1NBcFRVWTN2SnBwUENYSXJSSmVDcEFW?=
 =?utf-8?B?dFB5cXIrQ21GK1A0eTJrdTFPUnVZUWxhenlUVDh4SnJDeXIvZkV5eDdFdFVM?=
 =?utf-8?B?M2xPWUVHaVkyT2x0Z21rTVFxSWVXMyt6Y0k3Z1Z5WXBlSkY0L3NWQlRNWnZ6?=
 =?utf-8?B?b1haVXBNNnRTZWM0Q1UrWDd2SG5kTVppU2ZlRk5Ha1UzL2VOVTR4cmZXY0di?=
 =?utf-8?B?ZjRlRnd1QTRLQlI2bDZob2NtbkVLWDc3NDlaOUswc2w4Z2oxMGJuS2NVUnZB?=
 =?utf-8?B?ME56ZHpER0tQbEtGWDc4eURHRTRxWm0vd0pUczZwWkEyb0tXMUVtM1ZpNFUw?=
 =?utf-8?B?SDBza3BleERrdWtQYXZvOWFHLy9aejNXMnpOVk42cVB5VTdNU3VnQnFXNUhE?=
 =?utf-8?B?ckRzcm9OV051TE5YNll2MDJNNzRqb1FEMFpmbTV2Rkx6Qnl3dVpqRWZteFpS?=
 =?utf-8?B?TmthY2NWTlllaFJKSTdnTUplSjlSTk0zc0tXdDVzT09pWDRpT2ZjRVVaS1pp?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 912091cd-9996-41ce-b57e-08ddefa067c2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 12:57:17.7590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XeqPbNxBJQoNLG9Vx8pz82rAihefR7dxCITkpZjzSmz8xVOlLlxyhKugd8WT3USBX0+I9rlHMLzvp8dvZ5GRjAvrGPKJBARJoMuRlvQL04k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
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

There are two unsafe scenarios in that function:
 1) drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Return early if any of these values
are 0.
 2) dma_addr calculations are carried out using 32-bit
arithmetic, which could cause a truncation of the values
before they are extended to 64 bits. Cast one of the operands
to dma_addr_t, so 64-bit arithmetic is used.

Fixes: 8c30eecc6769 ("drm/gem: rename struct drm_gem_dma_object.{paddr => dma_addr}")
Cc: Danilo Krummrich <dakr@redhat.com>
Cc: <stable@vger.kernel.org> # v6.1+
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..00aaad648a33 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	if (block_w == 0 || block_h == 0)
+		return 0;
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
@@ -101,8 +104,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	block_start_y = (sample_y / block_h) * block_h;
 	num_hblocks = sample_x / block_w;
 
-	dma_addr += fb->pitches[plane] * block_start_y;
-	dma_addr += block_size * num_hblocks;
+	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
+	dma_addr += (dma_addr_t)block_size * num_hblocks;
 
 	return dma_addr;
 }
-- 
2.34.1


-- 
Best Regards,
Krzysztof
