Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMW8Lfnbr2kzdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:53:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC5C247ABF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E929D10E694;
	Tue, 10 Mar 2026 08:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+vM4krq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED2910E693;
 Tue, 10 Mar 2026 08:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773132789; x=1804668789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tMRbrP8BUO4HQodTbrVGTMNFQR2kE8KSmVGIQ5m8tb4=;
 b=E+vM4krqDDHqBu59u2ZybfQbclT6enwpg4ip+Nfcq37Xq9Q0ujnm8WAy
 xcSHkX9CeQeun0U+QslPn3Xj6gMdIslgNkL22y1uvy9Z/P+0AZOJIGbOL
 CFSpGX+8m/SvuEvLjTR+wxM7ptVCOuGxBl+HxQINEXJcV7qL79ASJL3dV
 1Q8wuBdiZ62xLZn3cP3/1GAem+rA4bTlSHA7ER/r7rUh2Sn+ngWXVp6mz
 6WoNmJDmA5OclQB+kzgYwkSFD0GnEZm+XTzcnb6+E4e181PWCoqBIkK3C
 OcyN2AOoJpcHtU0FEQ4x6Mi/lAmPtF2xZqPRLwIgd4d9s6s8021kZ4A5F g==;
X-CSE-ConnectionGUID: ECiS5DBFRvWtYxB2PSpJig==
X-CSE-MsgGUID: /5/aASsrSHOc/4JAt2Phng==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74072434"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="74072434"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:53:08 -0700
X-CSE-ConnectionGUID: tzLIKRP6SlKnwpeQY4YpoQ==
X-CSE-MsgGUID: bqyiUum3RFGgAaDo9Ndg5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="216440236"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:53:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 01:53:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 01:53:08 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 01:53:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jzXvYSmdFodeSGCn5S+nvIHS0jf0VTeT6BCHnXLP5RWGJvtql/gWx6LdG141G8oXKRsvXcprjHOK3R1g/kmnKU+1vovRORd3HqqQdKvtJ6TZkQ1lLblYBSwGkQuXjL5Iyghi2RxveaGizXPxVnDhTjmmwo+8cNaQ3hYk4IdDLtrFt4EVv7ZhDrvsT8C/261YWRBACLBprMOwhtIgPPjM9F8S+PVsOKrvdFfic9YWOCklSK3KyTTmO8geMeygbqOppzbOmY9nZrgzB0Fy61pyjy2p0TG6VZtBvTsTRzMbkJ2Uh5Z2Nc0GXAcioimTHotGdH1jaR5tFKZTRcuJknm/AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yMDCtE8e/TW2yCD0QQ0Ap8Bi+HpPqH1ecr18QhKZiP8=;
 b=X1/PlNJ6E6vc4O/GCRAMJEPueDA12PqlWzgFJkqEGtm/J9Hk62szcxcXrdoTTk+TikbA90HoTV277KqQAgnsCsrs6bcfqa/ThpaDp/wMLs0HipbRAuKob6ZCOdiaW4C9hNANMIOFJu96iIM2xjY2YTxS/AD4FFQZ+5i/GhmnHVJVtnecJUHXc22nxIwGI++29YGCn2r1WII+zxsFghmpYp6c89TjVsCuW6DPZKXIRtt+K7dXXbzMt7ubFj+MfWiuGWUup0JquVaHsjQ2SKWxEv/P72R6XOpGDPw+0cdqOCJvPUDg3gR86Tr0Iwv4nDeIiRRdpiKA7rVf3tjk82wP9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB7078.namprd11.prod.outlook.com (2603:10b6:303:219::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 08:53:05 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 08:53:05 +0000
Message-ID: <d9c84c7d-9cb9-45d8-a0e4-e6fbd8e4de57@intel.com>
Date: Tue, 10 Mar 2026 14:22:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
 <aZ26pwv6M7gG4W9D@ideak-desk.lan>
 <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
 <aaVCFx0U1TZpJeuJ@ideak-desk.lan>
 <cfaac7db-2920-467a-a980-a2225f028014@intel.com>
 <aaVWbdt1vOFxGAb1@ideak-desk.lan>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aaVWbdt1vOFxGAb1@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0227.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::8) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MW4PR11MB7078:EE_
X-MS-Office365-Filtering-Correlation-Id: 716b1768-c3c9-4266-59b4-08de7e827159
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: YeMOH6plgaXNJyaQSNmSY/FVQC5LC9XxX+3v0qC4ygUCTW2S7UfV3SCKcfbqOdJO1Fm9t6r6BmMB64BLPW5W4pVW8DVEB3fW5s9L4ZufeDF+xzmN2G/z22v7rdYOSpy0HloeeyCBG/XHpk4qo4v16eFpoKe0vK0vEW9SdIggqKQWQzswSPvvlmKrEobCx0O4HJt/godz3LHmuJPCqsJaORibkJqXYPhk9jLPtsT1UNLzzAamLiIlhNWKjuOf2ZcWzSv7lUCBfXhYo+VT/OBFv8qUwv6TCRxJh0l1wz1o1sagpnLcYc495QD0fn/OcZdXk28UieYeYRVGPqrfcvwzsNbeI2eKoCV3LqLhRek2FDMxPvdJyfgXqcUfbLQQ7J/L2ZQfs5bQf/vesH1El5euhIoerH09NBQgJ5eGUZktV0LvTlY11p/2bDPpEM0kx9Or+jjHRYLeCPpitmBKQX6Q19hQRVvX6br3Ipb450UhZDpHPma273J1AR6Qpdg90kbOehjUFbq/NND+g3VrZnbun5EyoNQLYDBlvMO9eTz24d2E3ZtF0UYciYMH5e+6fQzKnz5q/DXtevqI2NuwJrADyQgi7FtOS25kDsr1FBBSOp+27VjgneYAS0bEvyMTinNsnjY7cU30IpYgqrL2smpMcTFh3+qWHy29T3mpAYAvEM29z7rAtzn+3zJ/FLtW4ODf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDRWMVJrWmlqWS90N3hGaXZiNWU1dmlERTVKb2RCZzdSYVQwbFBUY1VEdURS?=
 =?utf-8?B?NXZMVG11RTFscUw5UlhQaWxSWFNCdGtRdytIVXgwaHJ6ZWhFaXloTi82bHht?=
 =?utf-8?B?cUg3aUNoU0lFY1h5Q1ZvZ2l0Z1J4MFJNZ0VhcjE0ZkNaN0hjQ0NoV0MvNDlY?=
 =?utf-8?B?ZnNnR0dUcjBWaWRvWmcxTVZ2Wk5YYVdnMldPWEI1cU82TXZpWkZ6dDRJUFN3?=
 =?utf-8?B?N1YzbkZkcnNSUjB3aUtuZlkrekVmQ0F0d29aT0VQc3RLRmxmdlJERE1xM25F?=
 =?utf-8?B?UmRaSWtRenF1T1lWVE4wOTRPS2c2OGk3QzBqK0RrNmhoK2txSXpOMGhuNi9O?=
 =?utf-8?B?QkY4TU9BaG5qU2hqUC9rSFQ1dVVpVS9WWmV2VG9hdUJJN1hLKzNBM1hJNDVQ?=
 =?utf-8?B?TktIM0t1UDlsUDJ0REdyMlpMc1kxb0hKMmtGeTByTlp4ZnJyMXZrQkhqanBB?=
 =?utf-8?B?UTlXbmtCYzFSS2x6b0ZnYkFxMmtMbHJpZmY4N3BKR2dmbFdKcm04YWJKNXVh?=
 =?utf-8?B?Y3REZ21pbmtmUittd3FzUWUvSFkrYk5Ic0tRR2Z6Y25FdzhxRk5WRTZJa2Vq?=
 =?utf-8?B?RU9jc0IzTlFSVFhQTmozVnV3YmppZStwZmFvQUpqc0ZJQ0NNNkdHY2NtZTVT?=
 =?utf-8?B?SVdpRkZoV2NQRVNmbjZoN2RabTBRSFlwUVkxQ3RrWFAzMzRua0dvckFUakov?=
 =?utf-8?B?SDhwUzZCelFpMGp0d01oQzJoUXp4Sjh5ZDJHWEQ5YThYQ2hTZ1Zja0dPNWxs?=
 =?utf-8?B?L1dPQUZ0VnMyQ1pRVzdlZXlUMGtOdkJxTE50UGs1a3pSS2hVNkZ2U3lJanJ1?=
 =?utf-8?B?QjNCRHpBYmVia3gyVmxzNjB2Z0wweVVwL0FPSmhxNGw3enlJMTVwS3Badm5s?=
 =?utf-8?B?aW04aXdCY0tXZ21pcWRGYVg1amM5NXpDQVQ3cVJLalZoTEl3aGJCdFgvNVR3?=
 =?utf-8?B?RVQrNXVzNzdTSVlGRUNuMi9UZVNTY1VwMzhsTGU2YWhiOFJyMnR5dGh5VlJi?=
 =?utf-8?B?YkJ5KytRdnE2SHprT0IrK2FhR2RWTlhzaUYxcnlDcXIwRURZaFFwTmJOK1pN?=
 =?utf-8?B?dnJML25TOVE2aEM4eVdJNUg2MTd2NExkUzY4STF5eXIrU213dDkwMU1mTUF4?=
 =?utf-8?B?QzUyTzBncEpQVTFhOXBPWnBQa1I3bjdpYmxsOVZxbjUxcGlaMER0bUxtVExW?=
 =?utf-8?B?VWZyN3VTbEpHYW1oSmt4dnpMcXdmV3o4UWlSQVVIYitGVmk5TitJVzZvcDFn?=
 =?utf-8?B?Qzk4U1lHbGk5d1NPNnR4SlRXb3BSalRha3dFT1NxQTd5VGx6bTRBNU5XQ3lO?=
 =?utf-8?B?eE9yQlB3WjJZMDJVSXJKN0JQVHoxdE1CczF4VGFyaVIrS2cwSzdvVCtmdGFu?=
 =?utf-8?B?cnZpRXpnYkY1bGM4Q0h1MUVlNmRnQ2RCUHNqc29TVVZubXF5VC83WFR5SzBq?=
 =?utf-8?B?STA5dmVOS3N4bDlJUHg5UzZ3dm5tdnZtVFdtM1pYc25HMThGeWR6ZkNWY0o2?=
 =?utf-8?B?TXNRWUVrU2VxOFhPeGplVUtTd043dHB5cjRRVUlYOWZpZ1J1VWE5Z0hzMmRC?=
 =?utf-8?B?UHpvTVpPSWhBTGN2cFd4bmZ2RjFNc2JMRmZsV0wrdUlyRTVkMSthWjFrdlJ4?=
 =?utf-8?B?cGVRay9jNUIxVlZEYWtEYjdRWjZrcTBYRTlML2ZiM3FqUWMwbElwem5IR0hv?=
 =?utf-8?B?dVN6Qmh6NVhmb1M3cFk1RDdtWks3VHgrVFBEanRGS2E0WXRIWlAyUURtbU1N?=
 =?utf-8?B?dENYV1V5NUFXNlpvOFdxclo1aDdJNVQ0YTEyMmZVcGo3YlUzMWsxODZrUGlC?=
 =?utf-8?B?b0s0S0RUTjQrMlpXMy9QZWpBdnA1OFZvckg5cWtwdGhwb3MxcS9wTllMWUJu?=
 =?utf-8?B?cjNPYklvK3pPN1R2VlRyOWRId1JtZGJibHA3cTAyZExBaElRKy9pQUZ2OU8w?=
 =?utf-8?B?UnZUTHRLZ0hTejdLRmhRZFNYd0h6WVJ6WHNLb0ZoNEtHUVNqMVE1Kyt4ZWlp?=
 =?utf-8?B?QjlQc2NDWEV5enhxRVpoeGl2S21ZK3dzMTcxZDdESm1zNzcwYmpGMXNDaVZZ?=
 =?utf-8?B?Sm50NThhY2kvOE1nbjJqZDlITDhhL3QxMlMrUVpwbHZSTURKWVMzRmMxOTRB?=
 =?utf-8?B?ZkMyOGxUNllaY2dJUy9KQjI0dTU1SC9OaWRPcTFlOVEyaWk1SXdGeGhWRGU0?=
 =?utf-8?B?YWgvTkg5UHJYQWJHclFYQnZ5WGFZZksvN0haRHNFZU5IWFh6Wmx3cGYxZTFV?=
 =?utf-8?B?S0hyaGtVTWQ0Q1VUbWJmSnVPbThkbEJoaEdJa1dwb1F2bnVZVityUnRPTHhX?=
 =?utf-8?B?SUtqS3lmNysxREFRQmtkc2NBNzlqdnhybjYzc2RCelhOeC92TExEUmZtK3BC?=
 =?utf-8?Q?FBEE0vpNLTvEPQro=3D?=
X-Exchange-RoutingPolicyChecked: q/op/oHQfxYCP5dtwMwFGkw5v2czcUe0LsH48LxGuP1k49zGT0oBAHyaXxh4H68ZE9zyUfd7/TwZ1Ct9iiDFgK+c1wncm+asvpu0KKc6PAzG7KfZsW0g0WwR0aHeHts/oFkSNjj3Dh+Q9Mm/AAJHWz2mgZ7vPzv8EC8Wg4qZS64aNHWQpZWKcvBiGBQ6UbGXVVAOVHGs71Ya1Jq1kbIawnzGstRwzC5R+hVm3bn8spX6OrgLIHfIzPu5I9SSFDRwelQqD5uWCZqVGzhoqemUWGideyCogJmvfe6Pp86ShNBjunXqYffdzGFIHa9dTw8REKsH637kHoQtFI1wpCkCjw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 716b1768-c3c9-4266-59b4-08de7e827159
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 08:53:04.9258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: izlgU8Kp3aoF/ak9cJ8UOTsbEZnyBLgE30BKCOWKFNqTsf7Ic9GqE518oTUEbmBGPa7cBh2vSzVj2CljhMR4Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7078
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
X-Rspamd-Queue-Id: 1FC5C247ABF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

On 02-03-2026 14:50, Imre Deak wrote:
> On Mon, Mar 02, 2026 at 02:34:45PM +0530, Murthy, Arun R wrote:
>> On 02-03-2026 13:27, Imre Deak wrote:
>>> On Wed, Feb 25, 2026 at 09:03:06AM +0530, Murthy, Arun R wrote:
>>>> On 24-02-2026 20:20, Imre Deak wrote:
>>>>> On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
>>>>>> Its observed that on AUX_CH failure, even if the retry is increased to
>>>>>> 1000, it does not succeed. Either the command might be wrong or sink in
>>>>>> an unknown/sleep state can cause this. So try waking the sink device.
>>>>>> Before reading the DPCD caps wake the sink for eDP and for DP after
>>>>>> reading the lttpr caps if present and before reading the dpcd caps wake
>>>>>> up the sink device.
>>>>>>
>>>>>> v2: Use poll_timeout_us (Jani N)
>>>>>>        Add the reason, why this change is required (Ville)
>>>>>>
>>>>>> Closes: https://issues.redhat.com/browse/RHEL-120913
>>>>> I wonder what should be the rule with non-public links like the above.
>>>>> For instance, we do not put VLK-xxx links exactly because those are
>>>>> non-public. Should/could we demand that RedHat opens a public ticket?
>>>>> Jani?
>>>> There is a JIRA as well
>>>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>>> The above ticket is about an
>>>
>>> "AUX x did not complete or timeout within 10ms"
>>>
>>> error, which means the DPTX didn't complete the transfer. A transfer is
>>> completed either (a) in response to a DPRX reply (AUX ACK,NAK,DEFER
>>> reply) or (b) in case the DPRX is not replying at all. The above error
>>> indicates that DPTX observed/signaled neither a or b. That's a problem
>>> in the DPTX not in the DPRX which this patch is trying to fix (by
>>> setting the DPRX power state to D0).
>> On a Native AUX_CH transaction DPRX can reply with AUX_ACK/NACK/DEFER as per
>> Table2-177 in the Spec DP2.1.
>> In the error from the above ticker, we are getting a timeout for a AUX_CH
>> initiated by DPTX.
> No, we are not getting a timeout from the DPTX AUX HW in the unrelated
> ticket you refer to. The error message in the unrelated issues/4391
> ticket you refer to merely indicates that the _SW polling_ for
> completion times out, which is a completely different thing.
>
> Please open a public ticket with the information I asked, from my side
> any workaround like the one suggested in this patch is not acceptable
> until that info is available.
Thanks for the clarification on HW and SW timeout.
Unfortunately on this issue, based on the update from the issue creator 
it seems that the eDP is not connected and in that case these timeouts 
are expected.

Hence closing this thread!

Thanks and Regards,
Arun R Murthy
--------------------

>> Section 2.3.4 of Spec DP2.1 says timeout can be due to No Reply and the
>> reason for No Reply is either sending invalid command or DPRX in sleep state
>> or waking up from sleep state.
>>
>> As part of this state, this patch is trying to wake the DPRX by setting to
>> D0.
>>
>> Thanks and Regards,
>> Arun R Murthy
>> --------------------
>>
>>> Please open a separate public ticket for the actually reported
>>> RHEL-120913 issue - which based on the changes in this patch must have a
>>> separate root cause than issues/4391 - and attach a dmesg log having the
>>> AUX logging enabled (drm.debug=0x10e) and reporducing the problem. Also
>>> please ask the reporter to provide the details of the connected eDP
>>> panel model and wiring to the CPU (is there any retimer, mux etc. HW
>>> component between the CPU and the panel?).
>>>
>>>>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c       | 38 +++++++++++++++++++
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>>>>>     .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>>>>>     3 files changed, 42 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> index 025e906b63a9..fa0730f7b92a 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>>>>     	intel_edp_set_data_override_rates(intel_dp);
>>>>>>     }
>>>>>> +/* Spec says to try for 3 times, its doubled to add the software overhead */
>>>>>> +#define AUX_CH_WAKE_RETRY	6
>>>>>> +
>>>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>>>>>> +{
>>>>>> +	u8 value = 0;
>>>>>> +	int ret = 0;
>>>>>> +
>>>>>> +	intel_dp_dpcd_set_probe(intel_dp, false);
>>>>> Is there any particular reason to turn off/on the probing? I don't see
>>>>> any reason why the DP_SET_POWER polling would need that. In any case
>>>>> turning it off/on this way is not ok: reading the DPRX caps, which would
>>>>> call this function, could happen at any time after a sink gets
>>>>> connected, so turning probing back on at the end of this function would
>>>>> re-enable it incorrectly for sinks where it's been already established
>>>>> that the probing workaround is not needed and should stay disabled.
>>>> This function intel_dp_wake_sink() is called from edp_init_dpcd and
>>>> dp_init_lttpr_dprx_caps.
>>>> dpcd_set_probe is set to true in dp_aux_init which is called before calling
>>>> intel_edp_init_connector.
>>>>
>>>> Probe is set to true, hence in this function I am setting it to false and
>>>> then setting back to true.
>>>> But there can be a possibility of reading lttpr_dprx_caps being called later
>>>> as well.
>>>>
>>>> Will correct this to check if probe is already being set to true, will then
>>>> disable before waking the sink and restore the probe status at the end.
>>>>
>>>> Will get this corrected in the next revision.
>>>>
>>>> Thanks and Regards,
>>>> Arun R Murthy
>>>> -------------------
>>>>
>>>>>> +
>>>>>> +	/*
>>>>>> +	 * Wake the sink device
>>>>>> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
>>>>>> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>>>>>> +	 */
>>>>>> +	ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value),
>>>>>> +			      ret > 0,
>>>>>> +			      1000, AUX_CH_WAKE_RETRY * 1000, true);
>>>>>> +
>>>>>> +	/*
>>>>>> +	 * If sink is in D3 then it may not respond to the AUX tx so
>>>>>> +	 * wake it up to D3_AUX_ON state
>>>>>> +	 * If the above poll_timeout_us fails, try waking the sink.
>>>>>> +	 */
>>>>>> +	if (value == DP_SET_POWER_D3 || ret < 0) {
>>>>>> +		/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
>>>>>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>>>> +				   DP_SET_POWER_D0);
>>>>>> +		fsleep(1000);
>>>>>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>>>> +				   DP_SET_POWER_D3_AUX_ON);
>>>>>> +	}
>>>>>> +
>>>>>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>>>>>> +}
>>>>>> +
>>>>>>     static bool
>>>>>>     intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>>>>>     {
>>>>>> @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>>>>>     	/* this function is meant to be called only once */
>>>>>>     	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>>>>> +	intel_dp_wake_sink(intel_dp);
>>>>>> +
>>>>>>     	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>>>>>     		return false;
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> index b0bbd5981f57..3f16077c0cc7 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>>>>>     bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>>>>     				     int hdisplay,
>>>>>>     				     int num_joined_pipes);
>>>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>>>>>     #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>>>>>     	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>>>> index 54c585c59b90..cbb712ea9f60 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>>>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>>>>>     		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>>>>>     	}
>>>>>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>>>>>> +	intel_dp_wake_sink(intel_dp);
>>>>>> +
>>>>>>     	/*
>>>>>>     	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>>>>>     	 * it here.
>>>>>> -- 
>>>>>> 2.25.1
>>>>>>
