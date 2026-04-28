Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMkzKvNk8GmWSwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:42:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1711047F179
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AA310EA43;
	Tue, 28 Apr 2026 07:42:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EQj2CUeV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E2910EA43;
 Tue, 28 Apr 2026 07:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362161; x=1808898161;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a+aN0Y+gKgMulwsb3ykFGZbBAfj77rdskZjo9QPefMM=;
 b=EQj2CUeVWCZJ3/IbCxcm2BWk0oiVp9Twb214JXk69oDE4z0ESCdfZyM6
 +hR49SmyS2iJ1zYVgGJdZMBnJ8J/HYwdj76HZsdPmMr3XoWUfg1lhMz14
 jdyJnMKoQ3XROT1398bV2ybmCaNZOCOhrNVFbnLPJowBpBEWdHWxn3xbt
 RQeOh2tV0uS/mgbyYv+D2UfEoYVbAV50d2CzFIL5OKNJgWUo1VwuLluXg
 xI86XcCpl/hRi/fe/Vm5tMPjIcA1vERWvHFxzPEQLdv7iAvzzVO2hJlRS
 7rGrFkfXpqKwcfeofgM8wiXGJZVVNhAAJEnq0hIBXnd1VYjIOnyFg6uyB g==;
X-CSE-ConnectionGUID: +VwutGJ9SuSffJo19Ew+tg==
X-CSE-MsgGUID: sjE8uHBGSYapFfcuJ+93pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="89722817"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="89722817"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:42:40 -0700
X-CSE-ConnectionGUID: PHSmYPu6Q2e26IK74H/Eig==
X-CSE-MsgGUID: CMyBwD9uRq+MfaRR5aEWAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="238213074"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:42:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:42:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 00:42:39 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kmH96UTeCzU3Zw1o8iDzjtkdoGXmyC0KgzgkU5F6ZmO3nJ9p2DQCElI1SXw2PIdG1xf4n7pvHhlGsJiapfwEd0zXhxr14XRlAfnKb3hYcyZvXZvkaqpB6jDeWwQq2mV8HvWa6xhtENEv4ZFI3vfiI77xptSJ6QcZBMn5l7Tro1QcCptP23s1LmMrB4Adv7pQEzp80I67zVu/5tNnCljxTo34iDHWHS3f94UN3/NYalHn4KC8gX2Sq+Am5z9sdBAXJZ8ZNG5aiJ1QZS2Gl76MkQga5Gcsuw8zbelEimwT/YTL5xwo86O0L+6bvBySMr1W58tTZzJ8DQYwJimKKy1qAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nAPdmS/zLZdI2hEdxKGeiyy9/WglTdyT80mxreiExK0=;
 b=JA/Stm4Y+OND0zanZmR2d+QdB3cZnh4T6VusRCU62dpVdNxpYl5WAjSGhl441XyCO5hQqVtEd8fcvzKiGBLz0W2S//Frmbdkkc5SNhzfOJACdcTAcCEfQT83D/DWGB6MLxX6JdWATvxkLsbMMu0A/Qv1xZrgPETm9M4MaFqagkpDTblRJT6r2bBJHweXRVcx02446a3F+zPsYn5MbMYn0EsVoggP9aTMkfWIXLiGQ2quAyW9cn3aL/PLCDHb+kJmJybrHfuxKYm5vPW0muFDVXIaVidcOgeY5F5la5glNyOPS/COQhugf2J/6EvIbg6rFAu5QrS5BxMHGv5DwSnBBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 07:42:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 07:42:33 +0000
Message-ID: <d012a801-3cf4-4187-96bd-fe2b7dc1125f@intel.com>
Date: Tue, 28 Apr 2026 13:12:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 6/7] drm/dp: Add a helper to get the SDP type as a
 string
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
References: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
 <20260424093424.3060805-7-ankit.k.nautiyal@intel.com>
 <ae9dOtRS577Ow7uE@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ae9dOtRS577Ow7uE@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0048.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4618:EE_
X-MS-Office365-Filtering-Correlation-Id: dfc76c0d-6102-46fb-53fe-08dea4f9b58d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 9FNqF/FYxGatsrqgLWqnKi6zeX7UFZiGnTkMLbvc6O1YHKhwogLZw6Us76hw0vW0GXJtMdxgTOGm+Zyi0Oa6QxmMtCN8TsK09T4AmuSHDrNel1UCemCOTY9JOary7OCFxkCxkaco7drVPEHw5iFMxKIkFtcc6D6ZfaeZ88q8NxxKg3hOXsl9uJw/tlcXR+oHtP4K4Jv/r4OikMPEjh6bR9dqVBwInLFoGZpXtkluInT9VljJ4YsuIlaALDOHityxxJbBGygnxg/BvyfvT7wKAV9cbJ0HLz9GbWZoCY35w1sBpMloolnbuyRuxji26x4/G81e0iIIaYS/FpMJXAWy1oClSV+r59bxjciOkaeQIJ4MrmVOODEWQs8i9RhPmGdCbyVKodg1vd/QghmMFA3VOTjry+7ngLwQ1YKat8oa7rFFPz2gcq87nNquE95sVuTm7LZ0bXdy6S0T4WfR9lOscY/UtijhNCqIjQ5MuQlqZYipm6YAscNs2Tsghqitbf2kzPOLehmHl9U4mhWjO9f1crcFAARwQC2Zw9l+s9/NGKGZ+W+bT+dVKdBVaenzHGnIfscQzy1lFU/N64Tcr54+KXlvovGIPeVQu3xe/Ju09BlQCz7Gyr7tjwR2V5ztmdFr6R0eKunx6eWAd157gYSFRaF+gMrV/M+IcTvRg81siSwj3u4obOwcM5XRJZRDeVuhmQBPlpeyLyEHWmqlOKP9x3Prwr9Jif0F9OEgtHmp834=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW1wczJRNkRFd0dXNDBVallRWllwUWxCT3pKYjVpY3BjUThGUlZFdWpkUVAx?=
 =?utf-8?B?eUVOUmxKVDhremdqd1R2Yk90a1ByT3lVVEk5YUdjdXB5RzdTcE81anRXYW5G?=
 =?utf-8?B?N01nUm9VRmZ6eHFhdXF5UVJLQ21zVGJhMlVzY1dRWVdHV0xwRmxtRGM3Q3Bo?=
 =?utf-8?B?eUl2VGdXLytSVjRlUUY0UXFWcGZaZWNxcU9xb2pTUFdlaXpFbW5EeVlGUnVq?=
 =?utf-8?B?eHBxNXpKMGhGWFRKZmpSQ1Jod1VCUmp2a2tCTHpkamJtSXo0S1lGSUtKRFdy?=
 =?utf-8?B?dHQ0YVQ2bWR1dy9hOWVzVlhVSExTNWFSQ0Z0QkJTT3hxV2UvKy92U3lkREQ4?=
 =?utf-8?B?ZjhvOHhVNWY2ZXhxMWYzaXlTNkpMNjRiak9lYnJ5ZW5kcHNlOXJ5OXB5N3Z1?=
 =?utf-8?B?TmRybVVMcnF5L2sxQXFNQWY4c1p3YXFZY2g2NWZUdnRmN3NqY2IyamNNTHNI?=
 =?utf-8?B?c1czSEFNaUc5MHJnVVdXb3lkWTFseEkxc2RyRXQ0cDd0Z1poMnU4bnNibUwz?=
 =?utf-8?B?R3I2ZDlLMll2RkNCa05nay9RMVhzeFJqZkd3SndVQzZBNURvUkFEeTFYTVBz?=
 =?utf-8?B?QXNEUHJEMWxyaXlrU3pKOUJOcE16Q2NteFkxTXlJTkNqaUhibEh6SXRBWW45?=
 =?utf-8?B?MUFzTFM4SjVRKzFqZDlKeS9uSm8wbWk5K0h3S3FXc2VBNUE2ZmF5T1hPbkpC?=
 =?utf-8?B?UnEzalpsUS81Y2JWaXBQbjljeWMrOGwwb0twZ2pnWDVtOHFqeC9Sb3Byc0Jn?=
 =?utf-8?B?dVFnTlpDdFUvVUFpMnM3SWdjUXRUZGduQm5yemVCc1hhL25yV0F0dXBKc3N3?=
 =?utf-8?B?SG9nMnZueDRYdDNTZWhLdWQ3a2Vwei9jK0N2Y21XUnBYSW1ZNmZWUDFLNGRP?=
 =?utf-8?B?Mnl1NjhpeVNiM1djUWxuZXJWUTBuclF1SHp1ZHdiZzR6TnR6MHEyZDliakZC?=
 =?utf-8?B?VGNqMDdrenFUVEVjbHFzUXkyQzJIeWZHT1hPL3g1ZStkV1ZGbXBQSmY0Ny82?=
 =?utf-8?B?Q1Mxd2c0R051bDRxdDBBR3N0VGxCaXQyQkp0SWgvelNSamx2bEZjeG5qVldl?=
 =?utf-8?B?TFA3byt3UkVGdk11R3dLSVdyZFJWRCs3YWwvWnhPVnVHQ3dDT0JMd2cycVJD?=
 =?utf-8?B?Mm84dk1Scyt2Tnd0bXc3U2hxWHVxVDZIMFdpQ09FcFArTFZPRUdWbUo5b0xW?=
 =?utf-8?B?Zlhsc3U0QzVXMjkzc2NKSVN6QVQyQ1hBOERzOTg3OUo0YXBmWG4zMGs1RTl2?=
 =?utf-8?B?amo5NkdqTk9YSFdNUG9VK2VCYjBiRzJrcUtpbGVqWWNCd3N2b3FhbHhETTdR?=
 =?utf-8?B?a2J2TFdvK29qb3lQVTdBV3JkclpFQ283N1ZuNEMrdmRwcmo2SllNN3N5clRk?=
 =?utf-8?B?bGE4SWY2Q2pIWCsvZ1BKMkhmcmxEdUsyd3lOZGluOHRKZ3VLbGJZK1hFTUZC?=
 =?utf-8?B?NkRKeDQ5SUJueERxOEVLVEl4YkJiemVTMkZKcWFmLzNzME04dEhnbGdzV21Y?=
 =?utf-8?B?VXNRSjhiVmV6Sms1ZUh1dWtkeW5mNGREV3R3VFl1V04xSHcwZFVPdVRSWDhJ?=
 =?utf-8?B?SVBlRk40Zm45S0NnNmJTS1lGMXJieGwvSFlPeXpTWmFIUW91dGZzS0NhVW41?=
 =?utf-8?B?NFg3UGh4Y1BIT3VscjBUcEJHK296QTArTlRHZDBIUEVvMUl2ZWtHNTFHaGNx?=
 =?utf-8?B?bkZsNFdLSjl4eno3Q0lHL0pydFc4NFcwOUNjdURjcUdaNVp4Zmw2TUc0RHNa?=
 =?utf-8?B?ZktGdUk4QkFGUHhmTWlTaWd6UHBCMkNyeWJ6czhpUXplOWZEVjhPc0NmanNl?=
 =?utf-8?B?aDREVUxXODFSQUNJd3RISEo1cTdNWEtCZks5eEh2MmVkNXpXUGwxYnBPaFM4?=
 =?utf-8?B?YWlXeXlDekZEWmFrQXA0VGltQmtqTS9XTHdCRWRsWkNocFRva2NLcUw1Y0k4?=
 =?utf-8?B?UnNCUUdEVkZwbzFBcE1nQ1JDTlVtVHhMREpjY3R0ZlVoZzdEZW1zb2pBUEJw?=
 =?utf-8?B?VTE0VFA4Q3VKSmVpOXhaYlorVzlqMUNsL0J6NCt5b1JoY3VFT2tscC9GbUIz?=
 =?utf-8?B?ZUIwcGpQVGNYQlZPTWdYOTJtM1NHcktBVXN0Nk9JMVQ4YlB3WmZiLzlheGgy?=
 =?utf-8?B?N0pNT2hwdlhvNEtRamRCbDNaWDZFc05GU05WZkc4aUpHNDRBZ3pWdmNldGtt?=
 =?utf-8?B?YlVZb016b21KQ0ZOZnZ6MHdVaFovZFZKbnAvWENTM0JVRU9ySmZIeGE0ZFkr?=
 =?utf-8?B?TnI0eThFSk5telhSOFBIQ0VneXB3NEFtRXFRRTRNSXFjT0ZaVjNLVlJTWlh1?=
 =?utf-8?B?ald5ZjBwcVhXdVc5Y2lUMUtwV1NObGx2NCtreWpFa3lRUVZib1JxV0FJQVJm?=
 =?utf-8?Q?UVSJnylyx38tfaO8=3D?=
X-Exchange-RoutingPolicyChecked: ncEnO1gsSUpRdXmsdZTIR0Ea7iHgLz2sNSvAtJMDhp5QyWTvGfeTc0Jh3uWmsEwmWbh84lV4owTnBMi9h0Fbjh0u9McLsii2zd0lTxp9Ra1+ZUj5HfJ0nfYrcNyF0N0RFQ6xyHUvfLFmfHpl/RZ1088QObqKVPtzt9z9ZpzUvnfe8wA+dsXjfd9WfT3LOvrKd/Si9gdZfy7OrVMLu5v+bewAKIC9EKNROrb4oAXfgNxAyKKnYVrM3PlNRQ+VnfEgQ7N8ZufY4dOW0GRSRQkGUwTStDfBB6ehOoIp0fk8amrNQTashR2wgui7OM/EukEDhsAtWEHWOBqRi9FRt//mtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc76c0d-6102-46fb-53fe-08dea4f9b58d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 07:42:33.6689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8pg+tYgP9EtZlgygDBJlF4Jh/7iPijyINmM/AL0bRDKlAq2HJ2C27xPC8e0Y0FBDnBbVPiHb+cJej17oqleQmEprNbArWgn6TchIqsLkbkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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
X-Rspamd-Queue-Id: 1711047F179
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 4/27/2026 6:27 PM, Ville Syrjälä wrote:
> On Fri, Apr 24, 2026 at 03:04:23PM +0530, Ankit Nautiyal wrote:
>> Introduce dp_sdp_type_get_name() to get the SDP type as a string.
>> Use this to log the SDP type based on the sdp_type fields of the
>> VSC and AS SDPs instead of the hardcoded strings.
>>
>> While at it, rename "SDP : AS_SDP" to "SDP : Adaptive Sync"
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/display/drm_dp_helper.c | 36 ++++++++++++++++++++++---
>>   1 file changed, 32 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
>> index e29958f8b0b6..102328d9022d 100644
>> --- a/drivers/gpu/drm/display/drm_dp_helper.c
>> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
>> @@ -3487,10 +3487,38 @@ static const char *dp_content_type_get_name(enum dp_content_type content_type)
>>   	}
>>   }
>>   
>> +static const char *dp_sdp_type_get_name(unsigned char type)
> I dislike this "_get_" stuff in the name. It's redundant, and can be
> confused with some refcounting related get/put. I really wish people
> would stop using it...

Noted.


>
> But looks like all the other similar things here already use the "_get_"
> naming, so I guess we should stick to a consistent style for now.

I will retain the name, but I understand your point. Will use *_get_* 
only for helpers that are in context of refcounting.


>
>> +{
>> +	switch (type) {
>> +	case DP_SDP_AUDIO_TIMESTAMP:
>> +		return "Audio Timestamp";
> "Audio_TimeStamp" to match the spec.
>
>> +	case DP_SDP_AUDIO_STREAM:
>> +		return "Audio Stream";
> "Audio_Stream"
>
>> +	case DP_SDP_EXTENSION:
>> +		return "Extension";
>> +	case DP_SDP_AUDIO_COPYMANAGEMENT:
>> +		return "Audio Copy Management";
> "Audio_CopyManagement"
>
>> +	case DP_SDP_ISRC:
>> +		return "ISRC";
>> +	case DP_SDP_VSC:
>> +		return "VSC";
>> +	case DP_SDP_PPS:
>> +		return "PPS";
>> +	case DP_SDP_VSC_EXT_VESA:
>> +		return "VSC EXT VESA";
>> +	case DP_SDP_VSC_EXT_CEA:
>> +		return "VSC EXT CEA";
> Looks like the spec does favor the acronym form for all of
> those. So I guess that's what we want here as well. The ' '
> should all be '_' to match the spec though.
>
>> +	case DP_SDP_ADAPTIVE_SYNC:
>> +		return "Adaptive Sync";
> "Adaptive-Sync" seems to be the preferred form for this
> in the spec.


Thanks for taking time to fetch these from the spec.

I will change these as suggested.


Regards,

Ankit


>
>> +	default:
>> +		return "Unknown";
>> +	}
>> +}
>> +
>>   void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
>>   {
>> -	drm_printf(p, "DP SDP: VSC, revision %u, length %u\n",
>> -		   vsc->revision, vsc->length);
>> +	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
>> +		   dp_sdp_type_get_name(vsc->sdp_type), vsc->revision, vsc->length);
>>   	drm_printf(p, "    pixelformat: %s\n",
>>   		   dp_pixelformat_get_name(vsc->pixelformat));
>>   	drm_printf(p, "    colorimetry: %s\n",
>> @@ -3505,8 +3533,8 @@ EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>>   
>>   void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp)
>>   {
>> -	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
>> -		   as_sdp->revision, as_sdp->length);
>> +	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
>> +		   dp_sdp_type_get_name(as_sdp->sdp_type), as_sdp->revision, as_sdp->length);
>>   	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
>>   	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
>>   	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
>> -- 
>> 2.45.2
