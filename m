Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAI4Isqju2kLmAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 08:20:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CE42C7313
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 08:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18C910E0EF;
	Thu, 19 Mar 2026 07:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QmjgIj4Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9338010E0EF;
 Thu, 19 Mar 2026 07:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773904839; x=1805440839;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eCl4qREUY4qF7p+Mj19TNcMnla/oPPC0CcwcIeYJQCY=;
 b=QmjgIj4ZQx+25TGCno0TfnGcQdbi6bVNUnRE/F/eu+GQTCrQJMMzmD+P
 dMF89z2S47GL+WHm4SX56UZv48cTxL6GlEpF8hxgcDpBoh7Tjkzjx2C3A
 Xyq1Md+DF5xBdfNw4nlkOmEHjFr0VQcTFDYQvLlC714xSXjpehab8fTlr
 0VjM74EMbbwlRyx5cye3JlcHnkS0QMbQ+WfdMHoV9DeMdn9MJlVEIgmic
 eF+wLv1TUeRs7BwLrrqglqGbCsWflZ5B5/fJX5fOiQbNi+anNTVt77E5M
 N92HSbVMGqciE4MhS60fqzj4vN7/4UCKgC1/jJ+c6WRSB5ibrtwp7OD00 Q==;
X-CSE-ConnectionGUID: UiBwWDGAR0GvsE8rUULcXA==
X-CSE-MsgGUID: CIZlSZ+vSKWPbPR5yTg50w==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="85288037"
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="85288037"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 00:20:38 -0700
X-CSE-ConnectionGUID: qlGG44o+T72ClN+fMz6+Og==
X-CSE-MsgGUID: bCGxHZmlTEyH/gK46yh1CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="260776286"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 00:20:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 00:20:37 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 00:20:37 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 00:20:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ng2Vwn3hx0QdaE8XaFsqMxkKbNw2J9okUDZVvnbRvQqe53EBcmtMY6bEGrmA9e5C/kFm4MFyR9z2dFQe93T2ElijrVYFOyelaDM/nvQCkbjagE2eGDvq8A8LWLCV0rFUG0mAvC6zUMM9OIMLbJMtOSVzpTjkoUpA2mANn/TAJsLsU7TVAjLe0prnYOwcoTtvlekrf3zecMn5/DWCzuDvcV7dGAjgfasMXe53bksxPi2mL+74w9vp7JsZ9Ha+2mrbigUXFESrirqRqrzIvp+FMQTlqICcmWcMS2Oo0CVXY1lDSGKuJz4SeD2xrmpThuE+IDDBHSnCBb//m7LSIeAOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZqyfvZMSuHFftm6MX2yVXtul5vz7ygCnc87hQTVPDk=;
 b=BsxUovCged0qGqVxUly5EZzQIdhs2fbmMKJAXWJEpFhwBOgUrdI61jiPLmyF5BdrVb2arxurAG4X+MrQp9IVmgBTCKh6if3Jyd1nfks5gEkmKIfQLTcZjBDeZ5po7mRDxHvWgqvQFEZTQ0crTtMyi6gb3yPpMT9SuMkPtAuz7QET9q8PaMoKLo7oixnAf/UOiwWetdeWe07Oj450Wod2wfMU9CRc+bQPYiGGJ4NCmk5TEenbF9ulWIjts5KseBfm9JW0ovXyOv5SHYh6rg3VrzZBDlbu+O/QSroprS4KULn55Lbi6XlHgQK0jAyb5VDSmihsjm4tNW+a3dKP+a8gug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA3PR11MB8967.namprd11.prod.outlook.com (2603:10b6:208:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 07:20:33 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 07:20:32 +0000
Date: Thu, 19 Mar 2026 07:20:22 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Zbigniew
 =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 2/3] tests/intel/gem_lmem_swapping: Be more
 clear about subprocesses role
Message-ID: <nafdnlx2pxm2zj46s72qjt3glrgdjuk4monbuz7zpj4uomzulv@o7oeaykwokit>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
 <20260312181032.20485-7-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260312181032.20485-7-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA0P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA3PR11MB8967:EE_
X-MS-Office365-Filtering-Correlation-Id: 23e5d6d9-7671-4b28-5c0e-08de8588018c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|56012099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info: cXitdwyOLGi0x4+SYvV+aZK/DALQaiQn0ofB4z4VuFFAZhWVn6gIzhWr/cozSPEJ0EInoXMbHQKuIRH2NovntJJZ323knBRa+to+Lb+vIfckz915FANzvzwTKetGuBzM1rSwWGi6ryW6/KhULAZBBYpgpurytGFryZkVSasH3sJzcS+0z07ori0gJqdUyOf2Nd4z7DMiof366oZpLCEz9FQGvqMeKMn5O6IpvYW6oX+bOGmqToM6uM53VfCzLUeGkFkkF3AaA3oC3nN+v6DZEdjI6ebsn+FlquYfvtywAmiFWMh7JvQd5YATukYiP2VvSJdDb1ZGLtEY8xCBpJ8s/yk6e9+vtQKxX9FluvOvzMx/CuNDunH/Jrl90JjkIOfIWnC8KhkXxRgHq4FNk9iOHqBy1Di/TTLdXt/pMYrogq9A35dTiRbOEWAFuitqoN1eCvK47HWaCGoP1ZusTcmpBUi6FcOel80yzg6vGdllptU8hDvn8Ef7LR5fUEJIxqnSdTts9K4Tnf4euGs2mkglBlwBAVppKM8wifcq6nT3kdgc3TeAEivQMpmZNLvkWUXh80OIFysfzenE3RLQTc8kkchlnrPXV1rxFT5CRHdgSbvPrgsv66IWVjtfeH8Y/Cp+bpQqtl35kdaWNz3aNimF6fQ//4SY1ixysUM4VFIJ5CjjbPBB1NbCIjOsI/011IZdQGonRBT2a+3o1vTZNbA6bEEhJisFiepB1PdmXCsoWPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dW9wTVJYRVk1d3E2QmtWSmI5VzY1bjMrd2dLUENwK2VvRnA5WHBrSlNTN3A5?=
 =?utf-8?B?MHpsZzZUb2t5VlhXQlk1Q1kxUk1kNmlvWlRsdmU3VHlhQTRwVWtCUmtMMVVw?=
 =?utf-8?B?Uzg1WEtVMVB5cjRYbmtKSW1acW95RFlYdHFSemw0eUM3MkY4ZEt6R21xcUF1?=
 =?utf-8?B?TldiVXNLa0xwdGc2b25JRVhmcWludVZNOGpJcFc2S0s0aitOOVZiM21KWWNs?=
 =?utf-8?B?TjZId3NxeUg4TFpvRm1IYjUwRjdKMEJYODJpb3V4c2YrUzEvRXpTQW5yQnl4?=
 =?utf-8?B?cVdYOW50UTJLVit4bENqdnhVaS92cFpmNFJEeGtycSsvdHRHbXZleHZ5YzBD?=
 =?utf-8?B?T05hOU5YRVY0N1JhN2F6cVBzdm5nM1ZHLzZmUStMU2xiU2tqTTVISHVuVG5x?=
 =?utf-8?B?eVRqUG5neUFnRGk4UWFjQnJ3MjgydWNOOUhpdXRucTQySWZFNkpDZTJ6d1ZE?=
 =?utf-8?B?cWgyLzZBQ2loRFAxRHRWUVByY1htQnhGbms2UHZnTWpvRmFORHFMYkdHMG93?=
 =?utf-8?B?ZmN5cTFyQTlNUUgrbEpjbGF1dEs3R3p3ZjQwSWpFYTE0ay9ScEtneE83OWVu?=
 =?utf-8?B?UnhjVExoZ1ZDbTlBdlFhT1lSODgwQVhjUHZUaWRNaDdXZ0pwdDVOcEhnTU5S?=
 =?utf-8?B?eFZrY2JCUVA4cjJaZVRiVFkyZDQwaG1McllJK00vZGlsUkVVQ2xUc2ZZalBi?=
 =?utf-8?B?aFh2c3dHODlESDNTYS9KZXVYbW9Dd2hPL2ZkNStNQmVLcmJqSGxRS0xGNmZZ?=
 =?utf-8?B?RXdGb1FWcnpDZzZOTnFvYkdkOE1OWGkwcDFadW52eGw5ZUtOYk9KWWFLRlhE?=
 =?utf-8?B?aU5kc3RlcllqUFBNVjY1Q3ZRL3RqdWNacGJiVTJQckw3Rm9RVlJGZXRqSnpj?=
 =?utf-8?B?b1h3MnpuYkY0eG90VDhmblFqVmJia0lxVmp1VGxIVlpTUXBUYkcybGZMcElE?=
 =?utf-8?B?dTZnWjdPRHhEUHFOVHRFdTlRdUtHTURvWjhDN2loSHdOUlY2WUdZOEluNTZD?=
 =?utf-8?B?djRaUlFLcDdNT1RlcWthZitDL0xjTks1dWkxUlpRZ1FrMFJiUjdiMndGWXJU?=
 =?utf-8?B?OGdUSEY1N201Y1FOMS9vb2hXTjdxNFFiL2dHeGp3N05aamVFdG9XMDhkVkk3?=
 =?utf-8?B?Y0RhTTFnQXI4d1N3UUozd3F4UGh1YktOWGFscm5Ra0tkM0xrdjY0bm10Wk4y?=
 =?utf-8?B?eDh6ZHUvSFpOV2VqL2FJUU1qTVArbUQwMTF0anNRdU1pY0JuWjV4WHR4RUFN?=
 =?utf-8?B?dU1kY0dpNkp4cWtGNUEwVlpoTzlBNmVpd0hET0tuRVkyNytXbDVXVXE3cklC?=
 =?utf-8?B?NzdSKzlrNkgrcThSL3RkS3NCcEYyT3MvaWEzalpiclFkUXg0c0lUcFUzTWds?=
 =?utf-8?B?V0hNbU43S0VHM0JKMStLWDFUTnJ6UnZzR1BvdGZFVUVLVVgvWnVoYUxVWThQ?=
 =?utf-8?B?RU1WQkRYYjRGZWxHRjdNeXNIQ25CSXBLTkpKdG5RcENkbFJNRWN1aVY4QVNT?=
 =?utf-8?B?eG1JSjAwOHp2RkdsWHM5K3dwWUQ2UVNBNFp4QmtCd0hyUkQ3SUc5TDY0NzhJ?=
 =?utf-8?B?SzJtRVRKVzRxYyt1WlZ2OXowcXBMRUpSYm5oOHhNQlhEVk10T2F1VW9MUkZZ?=
 =?utf-8?B?ZjVSdy9TcHJmdVZVYTZKYzU2S2JEcEwySXI3MUpGY2hnTDNnaklUQlhWR1BS?=
 =?utf-8?B?M2U3a0VmZ2k1ckhyTDEyK2hXSTZpMmNlQlFaUUZnc1YrM2k1ZmlKV3g2OVpn?=
 =?utf-8?B?ZWpHMmxWMDMrc2JDb3M1QXdWNmoyRkxqc1dMeFg4ODMwYmwxYzYxTlNISHVX?=
 =?utf-8?B?eklsZUVqT1RnbmFtaUdrVHJZSnFOM0R1VHZpM2l2RFJpTHhZK3F5TEVkSWhH?=
 =?utf-8?B?dmFQZmpSeWxvUHdMT2hPOUhoQmZhdy9JUjQvSU1tV0UzVzRnaHV6NkhqRlpG?=
 =?utf-8?B?ZUttd0x0a21Hd2ZsQmp5a1lKV3YrQXBTTm1yOHJhaG41WnBRbG9CSDRySFlq?=
 =?utf-8?B?K2x1UnR3MTJmeDExUE91Q05VQzEvTW0wYlh5S1h4blFsK2pBR2F2UThQdEdK?=
 =?utf-8?B?M2Z1cFJERWlrS1FOSTlEeGNrbGpSekZGOHlnVEpGdFZFZGRHUVpMSktBd1lQ?=
 =?utf-8?B?eUF4RjgyV2tYdmZFbFJWQ3dLN01hTFdMc3R1SFZqT2RQRnNiVGhDeUt0Mzl6?=
 =?utf-8?B?YUtvdUJDSXpvNTJjb3JvRU9qYkxMY0JUOVJycFJBbzdvV2NvaXg5N29QWVlm?=
 =?utf-8?B?eUNRNGZDMnlWZk9BRGttSW9idXl6a2hZMEJGeWRjeStEdmpnd2hHZjdwMUF3?=
 =?utf-8?B?Z085UktKVUVTU2w1TXBkNVVHcjl5dERGdmRTY1ZkeXkyZ0VkSjRmajloVlpV?=
 =?utf-8?Q?Edjtik73uWRRtuhA=3D?=
X-Exchange-RoutingPolicyChecked: aLX+nCIBjxDofVgnaqKweROo8nNDwdf1Vv3le9pvhrRH9EMuIe6HMrIYswILjcePjr8DGXZ2/GpYp5F+xrzZ0usNkRSmOm0r4RTYAiG96hWsflAWu45PZxstuMT8qTC08jeAmloUrnZjZTk2CNoZltb7G1xypimMLOwWUEZ11AQvpiqVBxfTFl2ALVeHdzZqzFBqMj7Eoo0U7sfa+SSZF8E/2Wg6/CR7dromCHyxz27fEm4KUVVpXH60LVlWUpg/iZMAk/MZ0LbQPSntwdYopuA6vqyJYGSJoWuIL7Y+T/F+3CzX/PSqe22J40hAZ/u13dDoEOaXXGE3sPBp3L1cbw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 23e5d6d9-7671-4b28-5c0e-08de8588018c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 07:20:32.2499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ht9D3GLhSJ2VaJM2c56aeV2Lk+yo+eHGpAPL342HxCCESZtFtJrwVTB+MKr1loSTiECO6GDSei4NHTJECJeL+MCw6DF/qkS5pqyXnfeeRqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8967
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E6CE42C7313
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

> In the smem-oom subtest, helper processes are now spawn with igt_fork(),
> not with igt_fork_helper() as one might expect.  That unfortunate use
> of igt_fork() may introduce uncertainty about the role of those
> subprocesses, whether their failures should count or not.
> 
> Use igt_fork_helper() for clarity.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_lmem_swapping.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index 3a35318a74..f790dc66e9 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -737,7 +737,9 @@ static void test_smem_oom(int i915,
>  	/* smem memory hog processes, respawn till the lmem process completes */
>  	igt_fork_helper(&smem_loop[0]) {
>  		while (!READ_ONCE(*lmem_done)) {
> -			igt_fork(child, 1) {
> +			struct igt_helper_process smem_proc = {};
> +
> +			igt_fork_helper(&smem_proc) {
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
>  						break;
> @@ -749,12 +751,14 @@ static void test_smem_oom(int i915,
>  			 * killed by the oom killer, don't call
>  			 * igt_waitchildren because of the noise
>  			 */
This comment is no longer applicable, you should remove it.
igt_waitchildren() is supposed to be for igt_fork-ed processes,
so as you change the background fork to igt_helper_process type,
this may be confusing if left in the code.

After that change, feel free to add:
Revieved-by: Krzysztof Karas <krzysztof.karas@intel.com>

> -			wait(NULL);
> +			igt_wait_helper(&smem_proc);
>  		}
>  	}
>  	igt_fork_helper(&smem_loop[1]) {
>  		while (!READ_ONCE(*lmem_done)) {
> -			igt_fork(child, 1) {
> +			struct igt_helper_process smem_proc = {};
> +
> +			igt_fork_helper(&smem_proc) {
>  				int fd = drm_reopen_driver(i915);
>  
>  				for (int pass = 0; pass < num_alloc; pass++) {
> @@ -764,7 +768,7 @@ static void test_smem_oom(int i915,
>  				}
>  				drm_close_driver(fd);
>  			}
> -			wait(NULL);
> +			igt_wait_helper(&smem_proc);
>  		}
>  	}
>  
> -- 
> 2.53.0
> 

-- 
Best Regards,
Krzysztof
