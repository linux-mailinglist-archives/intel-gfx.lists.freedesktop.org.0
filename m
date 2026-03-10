Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Bm1QCxCkr2krbQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 05:54:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F005B24551C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 05:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92ADE10E649;
	Tue, 10 Mar 2026 04:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpjTjAAg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C6D10E648;
 Tue, 10 Mar 2026 04:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773118475; x=1804654475;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+/cz7jNnTX2TQh082D3KjHf/DjSnZOD/fHG/pfASUi4=;
 b=cpjTjAAgeqJMgkytf3fWOOeLFTvYHnOasu4EAphAZUx2emY6mBtFBevQ
 pCttLfS7YInsiff6QmHjUmYXUtAwTc2uIETkhkbP1gjWUG0/g8jWXSIQJ
 haOJlF6Mvylbien3LsCTncc6S85Dgpu+kWveHe5WgSsiLdAVYPrZj6asd
 x6R1IMK+nBeK3f3w9cIW3UoRjqyDnYFliniHZmKCrQnpf+PXnvydoECyv
 JcHV0psgBVWFDv40FEgDiAUdxFSKWEZWBU8bdULnMDxTXFaEWOJU0SLec
 rcgAaNVww3pviVWQO9pd1itIc8ItHd1qCaZZM6i8n5xOXcSBR5+gN1Oxd Q==;
X-CSE-ConnectionGUID: f2CvaRApTQSD8/yAPLhkgw==
X-CSE-MsgGUID: 0x3xkJuQRnmZHzS2spHkww==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84482067"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="84482067"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 21:54:34 -0700
X-CSE-ConnectionGUID: NAibjnEcQVuc/7yTnpTDBg==
X-CSE-MsgGUID: 6DwhBsJxSzSNN1G7Kq9ARw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="216815264"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 21:54:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:54:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 21:54:33 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:54:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WLWW1muEb7QCubvNNUz1XJI8SgLV9+RljWMsxF+sBPK+cmOxgJG2luuGVPGIA/qXXO9Kg3I1f6TlZekOXh2vqQPA4FarOGGBe4h0Jn8CXXjzjguC9R/Wm8Jb84k7vNYVKuh190/8V2dIJLdptlAtL5CPgGE81EFCA4ZmvoD7oeHQvhXV+cXCC4n1rlTZVPJyXIrecRhDPV4BfRIJwt2cDSpPeVsCv1SKP++4wSctTEdWQnGG6QsIFojAarocNLm+KFvw7P9GKO44t+PGB4Y3VBnavT+n+L/dhOUM5xA7Wgpuk+q8OLVincaTgM3nmVMdptA7gxfDGKyTN3uV2PPJbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5a3Rbd68tbPt664sdVSX9uKJd664VIFHSdXmOq62fgs=;
 b=N8QuaMGbwU8XunP+PnFIeQbU6nGBmG6PlJg5Ig5kdIbEEUwor1Br2jMYXD77d7PVIO6YSfI2HYatiTpBE+ExevejqDyDz/e3kKqAthzmf9LGKv5CmowL3unpJhW7MfTzZ/i1U/zDqZGyaqoLqOon0s+mCOCRsNrdz4EZekNPCbBX2cfk9CK2fsczzZpiPiuOaVQ496BWDHUCwCw1jGjk0ulJWidbcR5ABOW+ICc1KunF5h4crTU3VfG2Vob152+9wx/Rc+l043oT/Bfxdii6/Kx/g5rjg9is+KWbowOhpQ8U1KvZo3Hvp/nWEm+i0KQtCFZl2zqN2nSVqXkz3h1/QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5281.namprd11.prod.outlook.com (2603:10b6:610:bc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 04:54:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 04:54:30 +0000
Message-ID: <b612f8a7-a4a9-4632-a2fa-6e633d4aa148@intel.com>
Date: Tue, 10 Mar 2026 10:24:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/dp: Add fields to store CMN_SDP_TL register
 state in crtc_state
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <arun.r.murthy@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-3-ankit.k.nautiyal@intel.com>
 <aarAt1CIYXKnIP9P@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aarAt1CIYXKnIP9P@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0091.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5281:EE_
X-MS-Office365-Filtering-Correlation-Id: 91ea57ba-5eaa-4595-6ec0-08de7e611d23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 3zyO5056mKRRIyAYeptc532pJdmLbETD6AQgMez/jjRpsyUiyPIi0e7NtWeIxYui42Ef7VzX8m9bDqF6UyQDJNNasAZIB5Eq0Aulr512o8hJX1/8xlz3fkQfY4s5UIt0eSBjib7uI2lLsNsMBwgT2aRp8RpkLUM4qcO/i6U95VXCUOGMGhBh/GCwNTlmJ9wSbLfHOQY4R3DS93vK94TDWGAFnDvapos8OsDuqwkc4sn6OaabbosadwLzoh2kP0Qe5GwRA9VRzS7ItzJIF2jTgABK+nZ93tyCGxRah/y1Fa1UHuY5jUm1hy1GaDQpqBlp3e6lU+WEWERtSJrU/X9vJma8TF1o+FjR2vrQZWq8jtkt6pSwK/2DxhYdg312oRYWU1ioDGX6wnb6ivTOKBi3xQuUgnuX+gqNd9pHdlaKSnWe0Rvgqt3dRB2S5wknOgmapcwOI9487mnygCS8knYsO9QPN+Iq+zX9tyt6LzN5B8IAd0+8DBruRkI1r66ZJmUyjKdDfLMn4lyXanz7IJBjmWE/2sgAAzDE7y/K7gcwL7yMLiZ6XVSK5lqeriswiYY/IjhQo+XZu6Mhf6ZY9V6kdBMpgW2gLse34SK0stRD5Hb3NDU0O6CJvTXS0jFHa56XM6Gs58S6ANPQKsX7INrps2tuHllQftdk4Q/O0+UDz+oszGG8an0CgzGqHNa7xszufcU4Pw04H2HBZa8J48r+jR7Nfvst03VC7dC7gw1ElPU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEsrM01QaE4rT1ExdzE2OHdDc1pyczh4QzlyTjYzeS8vT2lNcVhrL0ZlNGI4?=
 =?utf-8?B?NTZCY2ljTnN2VGs0d2JPZGVPeFlqd3FaejVra2dQRzlZLzZqaG9QYVlnRS9I?=
 =?utf-8?B?aC83ZTZzbUhFcmZiQTAxS2JCMEFIVER6alFKczJvRFR5T0REV3JMZk5pYkdL?=
 =?utf-8?B?TzFHWEJHRmxKTWpJeDd2bzlaWSsrRHVaRlhxWnBiT0tpYnk4SzBGTjJwTnBR?=
 =?utf-8?B?Nm9jWGkxczhwak9OMGEwZXJlRUxENThOSFBGT1dDV0JuNmltdHM4U2xnR2FZ?=
 =?utf-8?B?NTdmTnpZVzBON2ZiMDA2dWNiYWZ0ZUNPVFQwTVV3a0pRZTFYWm56eHBnZmVl?=
 =?utf-8?B?cEFHUC9rQk5TMlMrcTlWbzcwdEF4c25sdEVnbGtYODBobVVUL0FFOC9zZ3VZ?=
 =?utf-8?B?bERyT1V0d0w5U1lIUUY3QjhudzBJQVY5REM3RWxRYjVMYjY3QkVBdFlpcEJv?=
 =?utf-8?B?bWE0UCtrSktEd1lOWFFOUTZIbkVoS0YzY0d0Vjl5ZVk1N0ZrOVJJZUVCL2ZQ?=
 =?utf-8?B?dUdwazRzUlQ4OVZPRUhSNXd4UHludUxqQjdQNmx4NGUvRVUyYm1lM0d4elVN?=
 =?utf-8?B?UndmWkNUV05SM2s4eTBoYzdwUXdZSWVtcEkzZVBQbEdMbkwrbzVTZ3dBY3VY?=
 =?utf-8?B?d0hQTUZ1T1c0VWxMZWswQUJFYzdxOTdwYy9ZdmxGMEF1M0k1Qm1Oa3JMdWRX?=
 =?utf-8?B?VlU3ZUoweEg2VlhhdUdFZksreW9Kc1RLditJWXdOVEJaUm1Vdno3cWt1RjVI?=
 =?utf-8?B?SDNUN3V4SmdiMlNYU0UxcEZYOHl6VGc1aDU4Uk9aMThaV3E5RC9aTkZPQjkr?=
 =?utf-8?B?cVNxMFJSbUI3bm1VYnpaZUJKQlB2UVNpTGhqRkJYSWl6RWNKejR0eFdVdlBw?=
 =?utf-8?B?RThKUUxpOVQ5YzJqY1Z5VUNvQ0w2c0JNZzdyZzRva091SFk4QjVYTVRJNGVG?=
 =?utf-8?B?ZDlmdWk0WXJ1R2c1Nnl5dCt5bklETTgvOTh0UGYwNFNpbmZrOTY1dkFLbTB5?=
 =?utf-8?B?ck5GZ01JVmxndjJlN1cyNVhENTdRTE9NYnFOMHMwbjNoQlRMcUc4L1p6Umk0?=
 =?utf-8?B?NHNnZXVvSGc2RU03dTdWcEYzSGdTK2x6enpKNVhDeUl1NThUekNvVTVNUVV6?=
 =?utf-8?B?ajdpT1hTS1luaVdpa01YUm9ka0hqb2kzSC9RSEYrYU5pM1hBbndCTUxJeFRP?=
 =?utf-8?B?ZGc4ZGFSVk5LWVowa1RtM09rZTJkZHcwYTB0aHAwQ0NUY3RPdnl1dm91MDFU?=
 =?utf-8?B?L25IdnQ3cXdYRzBMNVVtekhUK3JiUmFQb3ZvMmRNbm1WOUNSbk1GNGppdWtt?=
 =?utf-8?B?bTB4NFFzZXZsUVJ5YWNyb1I2UnRIQkRYZjRXd0tlMmZKcHhpUUQrdXNXL3pF?=
 =?utf-8?B?T24rc1l6QlBldDRwaEYxOC9RRkZyakdpNFFhYndNSFBXSTBpQ2Frb2VPVnNH?=
 =?utf-8?B?UHRzTVhJTm56MmtQNTRVVWFVT2VXb1M4cU9oOE5jSGE1UllIejlpN1JwMUx0?=
 =?utf-8?B?VmcrQ0lwdmxvZEJSVHRPaHFxTjRXNjZWNUdIK3pPbEZ6NFN4eTNVREIveFdv?=
 =?utf-8?B?eUJwVW9aY29icFFKMXNRbnpjeFl5Um51RDBFUXhIcW02dFdZOXlIM2hVS3cx?=
 =?utf-8?B?T01FNUwvZUZYVjQwUmIzRi9CYmdvQ1R5UmpqTTBDMXYwZHNqMXByM05mMFdp?=
 =?utf-8?B?WFAvckV1LzBNT1R3OU1YeXBxRTEzc0R0cVp3R0wvOFJCN3JnNDhmLzc5dXR2?=
 =?utf-8?B?RW5rRjl4VSticDhMaHR2NUFqVjBKcFBpR1hOQlY2N01vYkIzOGVYbGNqaEFo?=
 =?utf-8?B?VW1PMHNMSHJ4VkRpd0U4UFlsd3ZKN2NTZDU5Sk4zaDVIZzE5OWp4N1piaEUw?=
 =?utf-8?B?bHJzNExTTS9WcUhkMjQ0OE5mOXFJUDh5NkZIbmxqVEk2T3FBVWhPTmxZdDNu?=
 =?utf-8?B?OXZ5b0p1dWJOUTRiQXcrUi9WVEM3cFZ2bmRhanJNWWZtZnRkYmpYUTluN2I2?=
 =?utf-8?B?TmFQWkZndjlMQXgyYVB6T0xqVUZkaitGQmgxVWs4RS9hbk9qdzlvRmRVY0V0?=
 =?utf-8?B?d0N1ektjQjhIQjN1SElKS0ZoK2NRZEdEV2JUMDloREMwK3doY2MxZGtaSzBU?=
 =?utf-8?B?YkdPYTRGNWlUR21qMDY2NFd6UFdyZFl3bWs2UlpPb1NuQllCUElqSXZ6bCs2?=
 =?utf-8?B?bEQwTUFSd01DT0xjQ2J6dG9lVitPQ1E0eE1ZOUhRajBUS1JrTWdueGd1VXh3?=
 =?utf-8?B?ZVRBY3dWc2pmNVRsQW1ZU1NzN1NDaVVJSlRQenhPNTNxYTdkeTVpSUZURzFC?=
 =?utf-8?B?NGUwa0tWc0gxNHNjcE1aQ2M1aWQvTHhMaDhSdU9halVMaSt1ZTVXVFZNQWR2?=
 =?utf-8?Q?ACD8KC2fr4p8DIOA=3D?=
X-Exchange-RoutingPolicyChecked: EIdc9+NH9wxzws8DtJIoJZEWa2skadD8NrFP/oKrSpIkgC+5qHcXHoOPiAwnLPyIrLwqtSgec8dcSkvAYOzgVD5/49F9MhsKn4Xxx50J9nC2Tv3gDfKCETMLLAmKfnWLpQWt/8rEZ+G3xMYQi/4Hdi59j0INu/ADrday2UAu1LjzfvcINctPksnSfW58uMRDb8rkAN7RApjJOu8c4UH4lGtQEqWS+foyI3+840vmPol6rCpfgmlhyF+k6lI8xli1iUNGGK5u3uzK0f1VIpTU+NxNR+66a5AAaqRVZmmL2RBbt1c76tC8BtpsZiPnUftjx6FGpEfC1d5Zcxz6ZLgNHg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 91ea57ba-5eaa-4595-6ec0-08de7e611d23
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 04:54:30.7995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qB2oBTmOaHT9owi8+u3q8FOlfQFjd05PBPVzsRB3Ode+mbJXJmYExMrqVyiL86BZvp2lfvJQjA0eeHJuu7iFN8K1itk+/w6cSYpRf4FIdk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5281
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
X-Rspamd-Queue-Id: F005B24551C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 3/6/2026 5:25 PM, Ville Syrjälä wrote:
> On Thu, Mar 05, 2026 at 09:31:15AM +0530, Ankit Nautiyal wrote:
>> Xe3p_lpd introduces new register bits to program a common SDP
>> Transmission Line, which the hardware uses to position various
>> SDPs. It also adds a separate control register to stagger the different
>> SDPs (VSC EXT, PPS, GMP).
>>
>> Add fields in struct intel_crtc_state to store the state of these new
>> registers. Add register readback and pipe config comparison for the new
>> fields.
>>
>> Also add a display version check (HAS_CMN_SDP_TL) to gate access to the
>> new registers.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
>>   drivers/gpu/drm/i915/display/intel_display.c  |  6 ++++++
>>   .../drm/i915/display/intel_display_device.h   |  1 +
>>   .../drm/i915/display/intel_display_types.h    |  9 ++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  2 ++
>>   6 files changed, 40 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 94ae583e907f..bdbd89600bee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -4217,6 +4217,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
>>   	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
>>   	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>>   	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
>> +	intel_dp_cmn_sdp_transmission_line_get_config(pipe_config);
>>   
>>   	intel_audio_codec_get_config(encoder, pipe_config);
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 27354585ba92..76eea9d23766 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5461,6 +5461,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   	}
>>   	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>>   
>> +	PIPE_CONF_CHECK_BOOL(cmn_sdp_tl.enable);
>> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.transmission_line);
>> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.vsc_ext_stagger);
>> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.pps_stagger);
>> +	PIPE_CONF_CHECK_I(cmn_sdp_tl.gmp_stagger);
> This will make things fail every time until you add the actual
> code to program these. Ie. you are intentionally introducing
> broken bisection steps here.

Hmm I was wondering that since at this point in the commit we have not 
written these fields, the readout will also be 0 and will always match.

However I now realize that GOP might have programmed these and perhaps 
we will immediately start seeing mismatch.

In general when we add a new thing, that we want to track in crtc state, 
what should be the best ordering of the patches, does the below makes sense?

  - Introduce the new registers

  - Add the new members to crtc_state. In the same patch add functions 
to read from HW and fill the new member, and also add function to write 
into the HW from the crtc_state. (Since at this point of time, nobody is 
setting them, so there is effectively no writing yet).

  - Write functions that configure the new member of crtc_state in the 
(should be part of atomic check phase). Also add PIPE CONF check in same 
patch.


>
>> +
>>   	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>>   	PIPE_CONF_CHECK_I(master_transcoder);
>>   	PIPE_CONF_CHECK_X(joiner_pipes);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index e84c190dcc4f..43e259761048 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -154,6 +154,7 @@ struct intel_display_platforms {
>>   #define HAS_CASF(__display)		(DISPLAY_VER(__display) >= 20)
>>   #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>>   #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
>> +#define HAS_CMN_SDP_TL(__display)	(DISPLAY_VER(__display) >= 35)
>>   #define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>   #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>>   #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 8a2b37c7bccf..474d6e2ae34b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1298,6 +1298,15 @@ struct intel_crtc_state {
>>   		struct drm_dp_as_sdp as_sdp;
>>   	} infoframes;
>>   
>> +	struct {
>> +		/* Common SDP Transmission line */
>> +		bool enable;
>> +		int transmission_line;
>> +		int vsc_ext_stagger;
>> +		int pps_stagger;
>> +		int gmp_stagger;
>> +	} cmn_sdp_tl;
>> +
>>   	u8 eld[MAX_ELD_BYTES];
>>   
>>   	/* HDMI scrambling status */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 025e906b63a9..86390553800d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7287,3 +7287,24 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   
>>   	return true;
>>   }
>> +
>> +void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	u32 val;
>> +
>> +	if (!HAS_CMN_SDP_TL(display))
>> +		return;
>> +
>> +	val = intel_de_read(display, CMN_SDP_TL(display, cpu_transcoder));
>> +
>> +	crtc_state->cmn_sdp_tl.enable = val & TRANSMISSION_LINE_ENABLE;
> Tracking the enable bit seems fairly pointless. If it's not set we could
> just skip the readout. I don't think we should ever want TL==0?


Makes sense, we can drop enable and just track the base transmission line.


Regards,

Ankit

>
>> +	crtc_state->cmn_sdp_tl.transmission_line = REG_FIELD_GET(BASE_TRANSMISSION_LINE_MASK, val);
>> +
>> +	val = intel_de_read(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder));
>> +
>> +	crtc_state->cmn_sdp_tl.vsc_ext_stagger = REG_FIELD_GET(VSC_EXT_STAGGER_MASK, val);
>> +	crtc_state->cmn_sdp_tl.pps_stagger = REG_FIELD_GET(PPS_STAGGER_MASK, val);
>> +	crtc_state->cmn_sdp_tl.gmp_stagger = REG_FIELD_GET(GMP_STAGGER_MASK, val);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index b0bbd5981f57..24df234a43d3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -237,4 +237,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>   		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>>   
>> +void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
>> +
>>   #endif /* __INTEL_DP_H__ */
>> -- 
>> 2.45.2
