Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7794B945152
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 19:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF4A10E084;
	Thu,  1 Aug 2024 17:10:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VmQkue5Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946C710E084;
 Thu,  1 Aug 2024 17:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722532249; x=1754068249;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Lqvna+jV2dDz9b6Tckw0X1id0/FNwVA/oQBfJ/i0MNw=;
 b=VmQkue5Y8BVlzt3tbdc1rFzw11ramgLgJHhqi8UGLdj9jCpDBY0d9OFU
 E30qqP1lKLD7HX0BEHr9mNCTBBKcMyRcBFfdIPcuM2Au8KQpFpf3mYOON
 6qnxegr49fYoiH1W8Osf53bm47cH/uX6xi0nc7f5wIgLEwhbNBQIoZolC
 jLUk7LIlWUGfgruXTLa9Z4hvyij6/oxok56oRssf0iO78oiIyCqIFDYzS
 wAWZd5CWFQoEuw97JWS5ERtaNhoUJUBfEz9ssdSnbFZhAATEuoHkimtys
 vuntlh3/03Zj51WS/b/yOKKoImfecTVMcfcWkw7TH+Isxd9jLL16JF15r g==;
X-CSE-ConnectionGUID: IH//P57ZQzCvXJhELhO4rw==
X-CSE-MsgGUID: QO36eMYwTqCE570v3FPkZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="23426755"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="23426755"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 10:03:58 -0700
X-CSE-ConnectionGUID: ig3+EMOyQYOXDELm0SUT7g==
X-CSE-MsgGUID: HKhuiLPtSf67VAxnYBB9Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="54758072"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 10:03:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 10:03:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 10:03:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 10:03:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R41NEC57qs/TKgaZe3OqtfVpjP+8nYbdgEkMptOetnvGRdf9c9oeRJfqTAaF4pYtDS6GYvf68/Z4kUx8JIXInesrkTPjEujT7JM7tL1W4Yyl13Nud8tKvRneMYy2XJ1kP719fj1OKtvkpYOdFlC9P8CVynUdWZgFMiqZFn70JkBcva0nRthDgnfjnCxYwCUx97hI75LVhg6WdVEB6JRqeBfmuYRrbs+t+RGJgZDTEqVh/yp+Nl3WvfuCb1r03qN/MhvinUJX5juW0M3YkV9U2NCVucSPb0OLlNmhcygbYTst4q+fsYkew2jmhQvD+gDxUM/8IlDeztTF0mrTIiYvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kz01iYg0GzI2ydr5Y6SbwOFbN8r1dTBcUJwhy2vbB4c=;
 b=NLU7GOssTRFqbKdKyr79vGZgIE2HvaxHf/Dq8PfDIqo0vr6PGf9a0gsaoPGFzZb6m983Jx6niup3K77Ory1jZNfQPVcXmJLCSSBYtcbz16df97m97u8a+DwJnuBP6/Iyo4n/CzYWaLsFpoavrBS8bhpz3E1lEPU0/Dr5dO40hSqOSjMOjyeTz+j//zaS21yHElcXizJfte1zk5vMcpKt8YPm1JRwhJeXlQgp0p4sJZNfHiqNvdwjjOT8Ufn18d/xoHz+TMt0+hNTpBa2seace+WaxFz4mSzJKst7MV9KIAqYAKy6f5DDTcxvRKVNgBBKv1ZZaLs7BLqbRe1pVayQyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Thu, 1 Aug
 2024 17:03:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 17:03:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <313a3cb44e81f067deb9ec03d7e0d13ff6e461b0.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <313a3cb44e81f067deb9ec03d7e0d13ff6e461b0.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 04/10] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 14:03:33 -0300
Message-ID: <172253181300.5121.9728108615754696540@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0262.namprd04.prod.outlook.com
 (2603:10b6:303:88::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7484:EE_
X-MS-Office365-Filtering-Correlation-Id: 7772c8f2-cfaf-4022-b31d-08dcb24be300
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2l6OXh5ZzJxYWZSQ2puNm9XMXlkZXpOaWlUVDRKV1huQkNVNUZBc3kyRVJm?=
 =?utf-8?B?VjVHT2ZjdytOQnRwdkJlbjVlVHBoeHFuWmwvVmRTSGRaL2ZoZnFtM2ZScFAv?=
 =?utf-8?B?bzJhMUl3QkxpRFQ3dUtKcm5zRTQ4WDZtRWJ1SXRKVkV0ZUY1VFpqa1gwbER1?=
 =?utf-8?B?Yi9Xazg1a2VjYms4ekFZK21nZkVzMk9WRThXdGhabTJKY1VlZjdVNmlmUXNp?=
 =?utf-8?B?ZEd3QXhLYllBQlVyWkVBZldhV0dkYXNCRmJXU1E1N1plNFZxRXcxQll4cE8y?=
 =?utf-8?B?WG84S0dKbENvZWhIRjJ0dThEM3VuSVhvQ1ZPcnFhWWNlYjhXZ0g4cVIzcVUz?=
 =?utf-8?B?djV3NE1lWER6RGJ1SEcyVE1pK01Dc2FteTliTGsxY0tmb0NvL1ErL2daNXpX?=
 =?utf-8?B?elRUamp5SFdOMEhWWEFnaUVUaE52Zkh0S0szWTZXWjBPbkx6a0hFUmtVQVhk?=
 =?utf-8?B?VVVleC90cnFLL2w1REtpVURGeG14QkpISTNoSEVtTUtaSzd3NktrV3QzMTh4?=
 =?utf-8?B?U2EvUEJ6R3VGRUk4aFozSEZhWFRzUW1EVVZ6VEI0MDNiREJweExoamtDc21R?=
 =?utf-8?B?QndPcUhFajVpSDE5RG1LR2hJczN2ME1kbUJ2LzBqeXkwRzBjREE1S2V2eDFy?=
 =?utf-8?B?aTd4aUZtM2c0YjBzNWpST2Q1ZTN4eFNhK1NUaTIrZW9FTUZZeGUvNDNMNm4y?=
 =?utf-8?B?UmVtVUJiRUorUm5EbUhNa0hGU2VjYkovbkU5VEVLMStnVlNaV0FGYUJPVldN?=
 =?utf-8?B?eFU2NWN2WUxuMzBrL09FSHZhLy9pbVR4ZnZYdlVQdEtsYkpvSE5Pc0hiRUx6?=
 =?utf-8?B?WjZXU0lPd3JCbDI1Qm0yNUdpQUZnSUVxVU5TNTA4ck0wNGo1TzFnL3NFWVNH?=
 =?utf-8?B?bUs0L3ZFZ0RkRUR5Kzc0RHJOc293ZXEwNFg5S1VsNFREdy9OTDA2Q0RKWlZa?=
 =?utf-8?B?WXFWTDRlWVFHU1BnUXFlZmYrelJlL2NHMWFEVlBVUFJFNFlGa3JTK1FTcm0y?=
 =?utf-8?B?dDE3QUN1WVBlcnlmN01hREF3ajMrSVNESzBzL3hLNWZOY2t3VXZZaGFlZUZW?=
 =?utf-8?B?aXljMm53RGRDVkkxdHQ5VE5KN1pHcXZ0aEdUemxIQ0ZWUGpDVktPVGljZlBs?=
 =?utf-8?B?Z0Q0emFmMUQxU1o1blpTVmxaRXU3ejcyY1o1Uk5TeVc5RGsweG9kYlNWbDZk?=
 =?utf-8?B?WkRwYkxqUHNPSzdxaEtxOGF1QU5JYlVMb2tMQkxoeXVCQzdIVnZ1ekpacFFp?=
 =?utf-8?B?WUhrTkllYzRKdkNxbjYwRnJrOVg2Nzh5L1VIWlc4M3A5RTdlV0Jra1RpY3ZJ?=
 =?utf-8?B?dDg4S0lEeDJyYXo3QTNGQWNxbVdKSmNEQmxoWjhZZnR1bmUxMFFjazVWZm5l?=
 =?utf-8?B?MFRPQVp3SEtOeWpRdzZ0aDNhQVdDYmo1SVNSaU9hYjJCMUx4eXRLaHEyNElr?=
 =?utf-8?B?eGxLanVMYnlUT3RqUkxVYUU3Y2dmbEI4SytMOGVOYWtZaDB6cjZUb2czVWxo?=
 =?utf-8?B?QjVPbTJxVG8xRENvWWEzaEhnNDVIV1U3dHYwYlJVSFF4N25Qd2ZhbVJJYmJk?=
 =?utf-8?B?a3Zsclg4V0RXTHVkY0FOMkpmTi8xL0VIMDJLaTAvSW1lbnRWZm5qVDlJS2dU?=
 =?utf-8?B?SHdqbGV6WnVieDFBTDkyRUtEQTNvM0FFUCtDRXZmOVB0NXNxRStvWVQ2SjE4?=
 =?utf-8?B?WFZxb0dSTzkwaGVqVDc3RXBGbW81ZnI2R0o2V0J3d2RtdG56OWc3WTBTWnlT?=
 =?utf-8?B?bWkrSlppTDQyejJoQ1ZpU2p2OGZmSWEwVlJlVzFVYm10ZVlsMkREQktGdW1h?=
 =?utf-8?B?Z1hLQ0VUMHMzanRHS253UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3p5UmtxVVdzSTc0ZkVURGd3QXhqaEVyOHYybXkyRkFIQThpQ3F6Qnlub0JR?=
 =?utf-8?B?cVFQOGFMaTZKMGg4NWZWeEpVOXlXZjlkajhscTBwaGRvMUpLUWt3eEgxUEwr?=
 =?utf-8?B?WFJISmhTMHdMSVlSYXJUMjZ4RTAyak1ZV3lsSlo1bFVTc1MrbktROG50cTZT?=
 =?utf-8?B?YVlXM2ZJMlB2T1VWaUp6Z2dhWHJ4UDZzbG5GaVViSERIUmJ6SkZXakNmVDRP?=
 =?utf-8?B?ck84RVB3WHBnWFJkM3cyK0NETHlvNmlJRkFRbHFhM3dvbVBFSzVFM1FpQWJN?=
 =?utf-8?B?cC93Wk5NZFlPR08vT0lUbVNTSzFHRkR2MlErNEx1dUZFYzd5ODdwU2hPUEZF?=
 =?utf-8?B?b2ZibGlkeFJKWjdJM3gwbDd1RkM0ZEp0OEsxQmVBeHBPOTN0eVBxS0QyWnJN?=
 =?utf-8?B?Zmo1bElocTdBRzBOLzFFOXA3VzNRTzM3V0JNNnBBbzl6T0xaZU1NbHhla2d2?=
 =?utf-8?B?eWdBRWxFUEN3MnF5UGU4QWZyR2pZZTNYVEh6M3AzVlRWSSs4MVJDa2ZOUzUv?=
 =?utf-8?B?eEEzNys2TDZzcWk1QzhyZGI5ZnlQNWswZ2pOQ0kzWGVFVGhiNStGOE9leW5y?=
 =?utf-8?B?aC9mY3F6dVNicjhldW1qbnJTUUNKckRLNGNpWnlTSzVwanJrYjdyWWdrelJy?=
 =?utf-8?B?Ukxtb2xiVkt5SXBsaUZ2T0IzS05xNzkwU2ZJWklzVmFjc2hCYWhGTGRCVVBz?=
 =?utf-8?B?S3dvWkVBSXU2MUpVSEc2bnBKc2dvT29qUVk5NUpyUjhHZWFXaDVvMisvZ1Fp?=
 =?utf-8?B?bUttNjVNa21SZGVyMDNWbXNjZ2JuUitaNEJkSXExbWU0bDhYVGhsandXZW9q?=
 =?utf-8?B?SzFMOGhTaTViemNhTzMwSGpiQnFoYWd2bUhHWERZaHAwYVpSdWlmQkZXTGg0?=
 =?utf-8?B?MkVUZFBpOHFRL0w5enN3RDVaZHJqWXF0akNkeU5XeTFXZjFLMFphN1RYUEdl?=
 =?utf-8?B?dXlYM2pDU01TdXBQOTF0dTkyeXU0MmxWQnBlcFg5b3FZLzZhdlF1bnhhQjVw?=
 =?utf-8?B?NDFNOFozYTZaeEcxcm9hNWoyZ2tweFk1TE1Pb1pUQ1dPKzFBaUduNVNwYkNJ?=
 =?utf-8?B?UFpqZDQ1TnNZbXU2QW5kMTJ3MmxtaHlubHBKVndvd2l2RHZGMzgvbTQ5L2hw?=
 =?utf-8?B?c2cvd3YzZWprVjJNYkowMGNHaU5YTUhMZWxpTDFETEVhb1Z5bEZ4aVdUbVBC?=
 =?utf-8?B?YURjTkZHKzVJdXBhdmtlSDBFU2xxcmpsUTU1TEd2aGZEdmNlb093a1cvZlV5?=
 =?utf-8?B?djU0KytrTWd6VU5idTZpQmpTSU03R1NFMm1XMjJMTEkwM2dWWUVaRWhVbHZx?=
 =?utf-8?B?Y0o4aXRaanlIREE3MDNweThJbDJXai9RblNtemJvK1lUaVNwejh6a1BPSnFJ?=
 =?utf-8?B?UVVKM3NLd0FnQ2hZblYrclpiZ1FpUXRMbzBvU1lucTIxSlN3TkVEU24yQnBS?=
 =?utf-8?B?RVpIZHpPeHdIaWUyNk0yRjhXU0ZzSmxGNm1PRkpxajBmcHBiYnBNamFIQ3pO?=
 =?utf-8?B?WWIvYlNmd24zTWwzWFd1QlpEc2lCWVN4MElZcXpTakxKc3lPUnNDdE4xMGJw?=
 =?utf-8?B?bG81MmxuZHFCbEdNMjd2Rk1aVjJoejlKMmM3TFpSNGN1aU51NXZNdXEyRy9U?=
 =?utf-8?B?SlFVUUI5RThwZmgzbFBJQXNDdHVGQ1l0TGtMNmFRUnl4U252a0FhR0JhRTJZ?=
 =?utf-8?B?cHZZc2R4T1hqd202MnkxWDlVM1ZCSHlrOUl6cGcybTVFczZER1gyb3U0dnpt?=
 =?utf-8?B?WC92WnJ0eXdTSXlqdTF0SXlJNkVTbEFNc0RNbWhEc09ndFdmdHpGUFZoOVBq?=
 =?utf-8?B?ZVRVekJBOUU0T2pTWG9BSmwyR1h0dnozWmkyZDl5b01XZGtCTjg3QmF1ckJv?=
 =?utf-8?B?MVN3V28wZ25TWGd2WGd4TE8yRnNFdWZpdVl4WDJsRVNtNlJ2L2xidmFHSHRE?=
 =?utf-8?B?VHFTMFplL004YXUxZnlVaWUvSGU1blFPem0rWDRTcjUxLzNVd3ZlclRTUTdi?=
 =?utf-8?B?dXVaQU1aUXlGVU5waDJLSEZjbW9UOC8zM3dnVTV3T1lMK3I0Qmozb0hiUEkx?=
 =?utf-8?B?K0tkWmFjQjJONzNuL1BtSGRqZW1sSlFoOUFjRytSSURoTHJ6TmVhUmZOMGZQ?=
 =?utf-8?B?cHhFTnFLMU5VWVByOHJ6Tk5XeDZQQm1lQWszWERoclpCdGNxTUczcnhxWG1O?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7772c8f2-cfaf-4022-b31d-08dcb24be300
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 17:03:38.1294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tXN1+Szcr9oSoJXGPPZHzyj2riVd+wDXMk/wEgcId9S8peWXO557r1J0eqWaQeud7XEazOJxj25XcRNOQ7/kqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7484
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

Quoting Jani Nikula (2024-07-29 11:30:05-03:00)
>We have a helper for converting pci device to i915 device, use it.

Any reason why i915_inject_probe_failure(pci_get_drvdata(pdev)) was not
converted in i915_pci_probe()?

--
Gustavo Sousa

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/i915_pci.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_p=
ci.c
>index ce4dfd65fafa..b2e1fd22520b 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
> {
>         struct drm_i915_private *i915;
>=20
>-        i915 =3D pci_get_drvdata(pdev);
>+        i915 =3D pdev_to_i915(pdev);
>         if (!i915) /* driver load aborted, nothing to cleanup */
>                 return;
>=20
>@@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, cons=
t struct pci_device_id *ent)
>=20
> static void i915_pci_shutdown(struct pci_dev *pdev)
> {
>-        struct drm_i915_private *i915 =3D pci_get_drvdata(pdev);
>+        struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>=20
>         i915_driver_shutdown(i915);
> }
>--=20
>2.39.2
>
