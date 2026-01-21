Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLTtCGWtcGkgZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:41:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4FF5560C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033B410E749;
	Wed, 21 Jan 2026 10:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXDuvE0z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD1D10E748
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 10:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768992098; x=1800528098;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=21fO8AnHx/EgNfpLZquNREseBW4NjOPQO/t7uC64bgE=;
 b=jXDuvE0zB0VUYmNMGhM5yzZMFCTCNuU2C4oiA7wbCiVxyhr/msXxNfT4
 5KVa56xHDA4rj0PlRrLwJny9N5MJr+zPzFB14UcxMxP9VWCiiFP3p22XO
 GUyZrX5Iod6twTWFC71jfimlRDEwrhrGrK1LkCKOHcBAGssQRI4pVS4ZE
 ypxCh1zr6G4Idstc314SAIvHlRJNarCEEn8+bJI+ghgD4ya0XRpbLjCwZ
 ZFq0w32DT62m8K8tYg8UMH4dLDVGuIcnS0OeUFz5LoKINsAi8ZC/tjduM
 aPvkkOJeCq80UhTxlUipluqsjmBWSbIylk7ib/iZwkNTxINsBrL6S0JD/ w==;
X-CSE-ConnectionGUID: tj9eQYoySEGD549OE9tmlQ==
X-CSE-MsgGUID: 0zbX/QXmSR6H48/9ZJJDJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70126659"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70126659"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:41:38 -0800
X-CSE-ConnectionGUID: UKRphpfVT5ak2TeVAIp9yQ==
X-CSE-MsgGUID: iCDEj0cYQJO+4sPQYmmXwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206229286"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:41:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:41:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 02:41:36 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:41:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RTqP4NPXZf2iKa1dcnDNwY33vsGWhVnY05rY/uG7lVaJP0rS98oImRepBXgyHrphb1jE7Zh6DPUx/JkeWuZsCeCCKMiYvZlx/O74U20Zyig7Q3Qxdct5nScEhMczqZ/8VLM31FFdfCFqqR+/0L8Uu9DWuAxGo4VdXMiouvP6MNUMeKbGDgZRQU0lovrokkyMRsJoCaFdxBl6lsojTRjWHLmPNnwVU3ecMimp5PdToZSdTh+f4mJlEdClJzRlyive4oHxNmMY7py7yQ+zArc2oyuavukkdG0RK/CwzbBTMESQSXfYO5VShQAYpLaXSbwms4VqaKmRUD1Vj40yKFX1PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=21fO8AnHx/EgNfpLZquNREseBW4NjOPQO/t7uC64bgE=;
 b=WQ6WRi2fSklsN0ru7qi4W+dqa/oDS1pJ+7qkvZRC0psN4FnaQLxIkAi18BQiglv8EBtE/tN4P/k7vDICfGOCalRckpwN7e732XBMvMPl75Xm86V25BTZUE9MSjmp+Ian/0TvrI51yj2nDHhmKBkFIm7rxYArgR9Qag4DHljwhNdrBZuxJciHpnfNsMYaSwQoJvvfNbuFFpzeYuZ89NZoKY6NW+5qGkP7jj4kMuMLGKED/IcmJ+imIhiGezafsCo+Wz5brZTf4Pa1ZXsWoL8Og3PUcpKpYhc6CPLYahOe5vkx7DbULjH+QA70m4Ra31T5AJ2wgBsODGCVANZQY/0QOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 10:41:33 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:41:33 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 21 Jan 2026 11:41:33 +0100
Message-ID: <DFU7D0YSLOLZ.ZICBM13OPGVT@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v6 2/2] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260120154824.1864085-1-krzysztof.karas@intel.com>
 <20260120154824.1864085-3-krzysztof.karas@intel.com>
In-Reply-To: <20260120154824.1864085-3-krzysztof.karas@intel.com>
X-ClientProxiedBy: WA1P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::12) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: 266cab8b-0571-483c-9dfe-08de58d9a4f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWlLS1dqeE1QZ0svNEFlTExZL0xDeWRidlhWNlBOMVUzbnF3SWVha29JWTBJ?=
 =?utf-8?B?cXJLd1VmQ3J6OTZWMVJKWEF6d3NCL3pCUi9tMERGUXlqU1kySENZdG4ycHdt?=
 =?utf-8?B?R3o4WmdjS05EN3hVVWU4N1BsdFpLVTB2UGYyczd0NTdpZFQ3YnNmUEczdVlZ?=
 =?utf-8?B?Y3I2OWZKZkhMY3ZJRUFDQzFiTFpvY0I5c0RqeURXOXdJUExrREEyeFlEVGd0?=
 =?utf-8?B?TFp6UFN2eUFQV2h2NndwY0ZNd1NHNEhxTVUvNVNLMFNTU2VXeG41NXpLVEta?=
 =?utf-8?B?S1JDMjF6TWNuU255NFhOYUJ0UEtYZzNYNGwwOThwWjkzMktKQzJDZWVDbXdq?=
 =?utf-8?B?NWVqUzlpNVZrbTgyUDlkaTJOeXlrN2lKSGZzVk9ta0NnL0kvUWdUSFBLRUps?=
 =?utf-8?B?VjZMNy9FQkRSWnYrMitBS203TTY5VGtXQ2t1NDRQYXZuN0VTWHZvd2V6K3dZ?=
 =?utf-8?B?RUoxeFRiSG5MVE04cWIzRW5iTVZ4cnJrV3pnNVlNNFFtTnBqQTJzMHR6bm45?=
 =?utf-8?B?RFpzZkFrN3dRTThyeU9NWXducHFQZFEyTnNra3JvTHFFQTVHYUVBdFI1WVBP?=
 =?utf-8?B?L1NXNzd4L2cvSWNzazhRYXNHSjZMbzhXVktvSDNXQkxYZ1N1cmNrUHZjcG1J?=
 =?utf-8?B?R0tqRFZka1NDaHhCN2MxSXJra3VLUlZZTUxxN01QMFlQQnA3S3VtaVE2WlJz?=
 =?utf-8?B?Vks5WXdTWXhFVHZ6cXQ1aHRZck9xLzZoNkZ2OXFDMTJqaGhIdGtVNE1GcVpB?=
 =?utf-8?B?ajQwTjRScDJPVUsxS1ZPQlp4YWtON0ZPeGZKclBUb0NTM2Y0UnpOVzgrRERL?=
 =?utf-8?B?cmx0NnZqdTFCMXQ5OFFJSTY1ekpQOGQvSmN1cjdYS1ZYQTczSGJ3TFhNYm96?=
 =?utf-8?B?alBRejY2VHBCSEt3bWJoS2o1SkVNUXJzUGZRWVJnbHhvNDB5TFFUbUZmSGtS?=
 =?utf-8?B?aEsrM2ZLY0dRMXhFcGhIbmNrNUR0emdlcHBodnR5Z2YrbVBYSytIN01RWXVx?=
 =?utf-8?B?RnptL0U1Wkh6aG5oc1lHdG1kTEdkRXFBWGxtQUdKN0Y2bUN6azJnU2dsU2Vo?=
 =?utf-8?B?ZmNlQzRXVlNiM05MaGQ0aHZUbXZpMVRXNm1hWEphdTBnT2tHbWdhcEVMWDRG?=
 =?utf-8?B?THZ3ajMvZkl5MldjWUlDMUFSOVUyRVlJNUd3WVE4NCtJOEs4NDVwb0NVWDc4?=
 =?utf-8?B?V0tMYW9xWTdLTkU4V0JwbGVJVk93dUFyaHJkcUE5aU5ieHRxQzNEeHhOdjBu?=
 =?utf-8?B?Qno0RzNqbzlLNGQwMTRJTzZmM2Z2RGpUcXF3aFJEcjdxU0hlSy9FV0txUFlE?=
 =?utf-8?B?cEs1LzkxUk94bkEzTTFnTWFwck1FdENsK2UyQ1ZVaWxNU0FPLzNtODlFaWNr?=
 =?utf-8?B?ZG1GQkpjRTJhMmsrdFU2bFIzdUdnQnkvaUE5SjJaUkZiam5TZzdDbFQ5UzdW?=
 =?utf-8?B?MnZxbkM3TlpGYndBY09vb3pha0RrOUlySDhkV3hBdHNLTzE4WG1jM0tIKzdl?=
 =?utf-8?B?T3hsTWl1RFlrM280bFlXVXdIajlQWnZXRytxTi82S0JWZ0pnWFJKQXFDWFpH?=
 =?utf-8?B?WWNyQVd1dDhqV0F4bW1mMFhuc0lYdGVkVTcyRTZRTWtYV0ZaakREdmFQdFNr?=
 =?utf-8?B?bjJteVhOR2w0UnpjbGUwcVE4WTBjTTV1K1M2aVBEUmxwc2N2QTRXQVUrUzhq?=
 =?utf-8?B?S014Yjhqb3MxZU9xbHVNT3ZjcUlwYWNtWXNUV3RQV0w5NnJ4dTZwb3dUQ05T?=
 =?utf-8?B?OUtRTEUxYzh4NWlKQnRwR0UxQUtRNElCYmZ4cDZKRUZvd0J2SGcwaWR0ZVQ1?=
 =?utf-8?B?a2w0eExLNGtxeFl4TFprb0kzZVhpOVNOc2V5T1V5bllCZDJHR0ZXazh0d0dt?=
 =?utf-8?B?YSs2K29XSzcwWCttVXFNanVwU1R0WkZlRXNjNEljS2xDV0hjMzlRUExtZDht?=
 =?utf-8?B?c3ZLVjZpd2FFU1Yzb25uUmZWVFY0V21Id01iSnBsQ3pZbjcvSzMybko2ZFpR?=
 =?utf-8?B?Nk1IekQwRWpwREFCYzY2Q2VmeERIT1M5ZVpqN2JnV1FDZmFuVWVIZ2NCVW9G?=
 =?utf-8?B?QU95aXF1NXlkOGo1em13QzRkUlhFZGdaSmhIYXB0aWk3K3g2WGo1S1p0MzdD?=
 =?utf-8?Q?uT8M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWIwMmE5L28xUWF1eWVodWZ6M1N4ZHJ6SXI5Q0NxYVdvSzZLdXYyQTNRODZE?=
 =?utf-8?B?ZDRHWFhvd3haR2xQQm1lS3Fub05FRjJTMGt0TXRCS0pMSm9UYndqMSs1RlIr?=
 =?utf-8?B?V21MemFESm9YQVdtdW9RbmxnZVk4VG1ELzRhV1cxUnN1QTlTUVVpOURKbU45?=
 =?utf-8?B?N1dDVDZJYlVOZWFQUUJBdzFwSElzSnpXZTdWWVNha2YzZGZtZXZLTmV1WUYr?=
 =?utf-8?B?QjZENDQza29Hb2c2VVhxM0dWSGFsYlBhcTdtdkZYY0IwWDJMWnNXZ2ZhTDVz?=
 =?utf-8?B?N0x3S293Wmw4bWxOWWU4S3J1WUJISTBuNGNDWUJsNWhidTVBSER1Y1lLZ0M1?=
 =?utf-8?B?SVlnMnI0eEFKaW8zUTZEeWxNcGc4U3RnWXJjeEtrVWZxQ2VzTGhZdWl6Q1o1?=
 =?utf-8?B?d21UUDlJTldlY2FZSjVTS09YcGJSRHNvS2NUaG9VUm1ySEx6ajc1c0krdC9n?=
 =?utf-8?B?ek85cDl6UWZwOUlnZ2JiOFdZb2p1QUlaNG14NWZIU2w0SUJFbXBjOEtCT25S?=
 =?utf-8?B?V1NScUZYZUJiQ3JXT3lRN2U2RDVxNFRBcmwzTi9keVhiTHRaeVZNZXpzUTRQ?=
 =?utf-8?B?MVFZMkxIQ2xraVhCQi90dkpSVlVnaFIwK0s3alFsNkdlaEtLMWtvUnBwV3Vh?=
 =?utf-8?B?eEEwaVB5bGlUY2JIS3d5WTYxemtTZ1NPU0hkN2NpeU5HNytzMkN2VUVxKzNm?=
 =?utf-8?B?YXJqTG9sYzFMNjRWY0o5dnZPZUxXdXRaeXhZY0ljdEhxaXA3bU9kUTUybU5Z?=
 =?utf-8?B?NnFFa1ZMQlFHWHhleUluSS9tdHRRVGQvWW8yOE43a1dMSzhqY3hJb2pxcTdu?=
 =?utf-8?B?MjZyMlN4bllOVzhia1lqMXdjRTZTZjFkdVFGcnBQRFdIZzMxTnpRSjBXUDNa?=
 =?utf-8?B?RnNTOEt6bU1EU3pIMU9qa2JadHVNek9qcE40QjNMMTFaSG1MWE1kbVduend2?=
 =?utf-8?B?YjZmcHVGanQzZ3JFZkpkZ001ZGFTQ2VVYmFUcHZ4KzBHWmxJNitIdE5qdlh3?=
 =?utf-8?B?STVGMlBjVDBwZXpZTWxTSzFvam9vYVAvd3pwcW9WVlAyd1VrOGhjeW5jZ3p4?=
 =?utf-8?B?K1Y0aGxkSThLaUVvT0pCUEN2WFZDUEgzUDZSRmhZamluc3FhNG02bm9YbCtl?=
 =?utf-8?B?Y2NWK1owNUt1OGUrNm1BU2R5TVJ0NVZiOXd2SGZNY25oek13cWZxYkpFNUJ3?=
 =?utf-8?B?OVplT3l0dWJ1RlhRdTZpREI2T25hUzJvbEFuQmpVMTRraXBLUk4yenE2SFh2?=
 =?utf-8?B?MlB0azhPMkJiNHRlTytYTjJiK3B6aGZFWnk1bS9UaFRHYjVpTE5Sb05SN3d4?=
 =?utf-8?B?S2drT2s4b3FkWVRWMlR2NndMN0xIY3FyWDY2Y1RtclQxb285YzFOWFZUdUoz?=
 =?utf-8?B?QnZjbmNJazR4WDdVb1hXcXFCbndnSExWZFFtZkNhekVaVzMyOEI3cm9MWTZt?=
 =?utf-8?B?YXBRNzM5UEs3ME41cGE0Qk9iNzYyOTJGYno2OHN4K2UydnhBUTdBNWtra3U3?=
 =?utf-8?B?em1aSi9mZ3NDMk5nc3Q5TFl0VDJGOTZoaXZYaEFpdHp6ZWFMQ1EycGJrdk1E?=
 =?utf-8?B?cC9zRDVYSjJGTldKTSszcUF5U1pxYmZSU1JLOUJWQkZ4bWtSRGpuWk1LWllC?=
 =?utf-8?B?dCt0bVNJaVdDc1Y0bThWZTY3dVBVZWxhM2N4RlNySlRNNGxXcmhMUmk0N3FR?=
 =?utf-8?B?NTZrTUlkNWh0UFJWZWF2UG9WcFM3Ny83WUVKck54d1c3bXlnaG84ZG5NZHI0?=
 =?utf-8?B?Mjg3UUt1TkczWURaRjhGUmovc3FnTkZTU2I1QnlKNUsxVXp0Sm81clh4OEpj?=
 =?utf-8?B?SHN4YWpaYkh5SkZMczgzSFlnYXI0MFllcFVLUS8zdDFJSUlpNk9LNGZJYjZN?=
 =?utf-8?B?Tmp4VHFvSnA1Y1c2MytERkpvenU3M0FwTTlUeU5QaXpFRGZhZUF5NVRmNjZQ?=
 =?utf-8?B?THh2Y0QzOEhBWDJXZmlrOEw3YTJpajNIMnNxNUZIUlRQV0ZabHEzOFU0R2JD?=
 =?utf-8?B?OFRwb0x5YXpkVCtKOXAzTlI0Y0NlaHJIbnlTajlNcXEzdS9qeS9KeHphdjhD?=
 =?utf-8?B?bEZxT2J2Z3NmbVl5d2dsMExBdEFVNmEybXR0Q0IvdXZneGtmM1RXZStLUXZm?=
 =?utf-8?B?THRReUwvZWxVckM3dkVDVVkreXRiVEUwb2FlVCtkbGpPSE1IMXZmMFpxWEJD?=
 =?utf-8?B?c25oc2svVDVIaTdwaXVuNnZ2MnA0eUZTNFMrT0FhMGtaR3d5NmhYOFdoRmdr?=
 =?utf-8?B?OVhWcUNNejdMNGhzQXpUMzZkVXVSbEdHbHBqbVVOR2dmKzZCNkNmbmY5V3NH?=
 =?utf-8?B?c0RYeGcyS29nRjNzSk1uM3FlSm1KWXIrRFpVaUUxWHNZMnFPazdWTEVRTHZQ?=
 =?utf-8?Q?6XuB9HT1lxwb+aSU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 266cab8b-0571-483c-9dfe-08de58d9a4f0
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 10:41:33.2435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hp5+6/e9GupJPtjIfL0GaCKiQj3ZoNFDqctVmFj+PL5FHAD7U52KCB+4nZFqPAXjno84qr/TFXddZAgwRvpaIgNoxqlcdH9xNcRMTmVdYTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:jani.nikula@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7D4FF5560C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Tue Jan 20, 2026 at 4:48 PM CET, Krzysztof Karas wrote:
> In cases where dma_addr is a 64-bit value its calculation is
> still carried out using 32-bit arithmetic, which could
> occassionally cause a truncation of values before they are
s/occassionally/occasionally

> extended to 64 bits. Cast one of the operands to dma_addr_t,
> so 64-bit arithmetic is used.
>
> Cc: Danilo Krummrich <dakr@redhat.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

