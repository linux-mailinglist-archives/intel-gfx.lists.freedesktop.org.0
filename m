Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8646A501DB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 15:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B7810E7AC;
	Wed,  5 Mar 2025 14:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrKtdx0/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE46710E7B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 14:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741184802; x=1772720802;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=VR7xjozdXywrroJ01H6Z5x0uBi6VoJUqOezYh0IGiUk=;
 b=DrKtdx0/YMggD/jrGGPM7Jj/ceNt6aw58GlN1ev9nGi3K9OVCq0vfZOk
 zNLN/fv4f7q0uAISVp+x8OnPwwP39XywGqc3dIrZMf9LeP7P99kTsidRa
 hYqKmIabO11076lKnOn08PcWTDDQKexWykVkkcBZxUc2Y2kt4m01nQSs6
 bm1wBK/lkRFMPeyLgYE/8UkUXht0+w8Vs0zakzfyK/EY0wFeEaMWthtDD
 9zStgF8HDBu/+BPE7kQA0CIXS1MB5Cy4SJznhbz5ksLd1djpOOQcPcH9Z
 jVaa157Vyk+KCVgwjXDoThXilHHJ3mDzdsE+ZKLB+P2hfsf8Dsg1k8CeT w==;
X-CSE-ConnectionGUID: 4Bu0F1iIQeeTb3dNIy+vdQ==
X-CSE-MsgGUID: c9yUbzltRImndC41JKVYwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42058030"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42058030"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 06:26:42 -0800
X-CSE-ConnectionGUID: YHcWCe2+QZujSz4Fa3PL8A==
X-CSE-MsgGUID: iT6CFswMRXybc8PnKAet0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119624490"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2025 06:26:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 06:26:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 06:26:41 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 06:26:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eIoXyXPOoMEJe29tuLVoB91+VaQDupFrDf6YfODS4+9BLVe5bGMWkw9Lejjh0JtDwvBiygc8mvPjEfDukXNX/jTIpF/NpneA2/XFfonJTsMFo9uVUcH3bfXilXh8IKemtgwLx4mvIEB/iLIhUTO1rg4vljehqK5LgP9RbKk1mF54c5rKxXur4a29V1EJeNkmUG20lAT79pgr06gRFZOYdDQuGonTwjUtW78LEkRXwdccM0oh2B6Be+AmvCasdvJLqclHJd01Y54AdMz0DfJE/K3Kx2D3+oblbRWgbm7gZTFeJ2/ePq0DvmP4tO7kyaOqMZK2JiIOZtHVB2ZL5cBGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VR7xjozdXywrroJ01H6Z5x0uBi6VoJUqOezYh0IGiUk=;
 b=v7ga6nusF/zUhAUiFRiT7wilP0TeY71PsiSLQkonCGg7DEXuxiMSRtC9I81xRL7XaQfWdwTLJqcEXVtcZMWYks+zmoXhcBe3ihULzA8dknKFkNyPoIQR/PuMKKvNJC2OEw39+jaF7S2UGZOpFMlF8/QGk6ohc3j7fF8XuSzbBL7spAjI5OXvCVDFDf3Qc3mX6kHFT7XB4EJh2B7C37zD+OpDoLNXNN4gxsmBX75trGHFuMpmIlTEFd9ePLl9tVK8aWRKC1x0J+Azl2kZFroI1hNbyZZO71KuYuS4FFW7Tg/4yQLx+2LBq1YLxJCg9Vk8GtMoxPUb2XxCDoap4UDA7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 14:26:36 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 14:26:36 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 5 Mar 2025 14:26:31 +0000
Message-ID: <D88EHUSHXJ5Y.3OTKIGZFQ3IYM@intel.com>
CC: Andi Shyti <andi.shyti@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, <chris.p.wilson@intel.com>
Subject: Re: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
In-Reply-To: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
X-ClientProxiedBy: DUZPR01CA0080.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::9) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA0PR11MB4733:EE_
X-MS-Office365-Filtering-Correlation-Id: abaa3f0c-ae46-4aa4-20db-08dd5bf1bc73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXFUUkxHc3ovcFJCR0JlaFNLVkY5d01xQmFwdXc0OHFQamdaSE94U0JEcXdW?=
 =?utf-8?B?KzUvSlhEVGVocnVpYnBXdW5JOWJ0WlNLaHc0ajRWWTk2NU5mTkNDT2oxRzV0?=
 =?utf-8?B?c0hEVkVHWk8wM3AwdHhTdFlqUEZ4dW5DMFdpT1RuUjJLMzIvQVFYK1loV3NM?=
 =?utf-8?B?dFcvOTJ2bUc5cTZjVFJOUk8waHdwSGtodncwSkVvUjdHR29zbTFnWGVXNGVJ?=
 =?utf-8?B?RFAvZ01XNXExQWlET3dRMWtxMWl4c3M2TW5FT3E2ZTlOWnEvTVBjT202Q2py?=
 =?utf-8?B?LzV1ZERKUUltVEhNbDFlb2FENEQ1T2owVTZyK3ZqR3pUWEllcnp5dW8ycXBs?=
 =?utf-8?B?Z0dsSVd4eFZxTHBNLzVwREpzNklReXVzazBRMjRuK2tWMGtKa1loT2hSL2hm?=
 =?utf-8?B?SmNBZ1hhWDFvaVRjQXAzMmJkbGkvRVpPSXVLZmlaS0l4SmEvaVZUQUVzbElH?=
 =?utf-8?B?V3p2QWM0WDFvSzhxbStCem92WVE1YzBRQnExam5UMnUvRFBEM0x1UENydnhw?=
 =?utf-8?B?QTlCVFcvNmhMMCsxUjB5MHIrMHpjaDl6Q2RYNTV2Ky9TNzAyOFRtOTRpQnNF?=
 =?utf-8?B?TlZ2Q2xGNHkyMVdxSnlhSjZBTjB2VHdON3hPd2NhR1Y3K0VGVlRrd3MvbmMv?=
 =?utf-8?B?ZVlpUys4Ylc0MmN3Ym5GZmk2bjJjMy9lZnRZL0RuNVJmZk9leGpGRmdxMDNX?=
 =?utf-8?B?NnZvQVFJYWtOVTZveWR6dUdzZDFlbmNZSmVyZXdQcnlueXlVSEFMR3NOdG9W?=
 =?utf-8?B?cmNVUWdzVGg1R1Nxa2xyQXg1S05qUjB2RFlCSVVvOS81UFk1a21GZ1pHWXkx?=
 =?utf-8?B?U0plN2pZT1JJdUpmdzhyZFZDSG1Da1g4RnFPV0hDVDdtYlBmblAvbEwyWFA4?=
 =?utf-8?B?aDg0TlRvQklOZHNRSXVIdDNwb2QvczV6b1ZUUWthQ3ByRlpPVW9EcHBZODVE?=
 =?utf-8?B?b0V5aDJWaVdLWkVDY2xxTnFDOUhtUTVvL0pUcnIwaCs0UGtqY2F2YUVUVlZI?=
 =?utf-8?B?ekJHc3plR2NyRDh5TVNDZ1krS1pmbXNIRzNIM3JrMk5QSUNnNDErN0o3K1dj?=
 =?utf-8?B?MDBhMG9DbGZ5WFlBdktZcXFPZVlyZEVjb0M4S2RONnhjSWl5bExBUk13b0VG?=
 =?utf-8?B?ZmZTUDNueWx5VDRPaitsR002UjMwRUJzdURpLzVyL3pYUDBOZWtvMGRRaFNJ?=
 =?utf-8?B?VjJFMzVNNlBpN3VzSThvOG5rbjVxMG53Mkg0UFB5ZFZac2F1Q2J2dVQ5OWM0?=
 =?utf-8?B?d0JKNjZhUXpqQWx4VEIxUmtXdXhNQ1RZY3loQTkrZVdSRkFFbHg1RzJhQTFC?=
 =?utf-8?B?NVB5V2hpUDI5dThGbUtHTGx1OW9RdyttVjVreXdRSzQ3M1VRU2hSQ0pzS0R5?=
 =?utf-8?B?UlJqbjh0Z01YYVlIQWgvdENFbXI4UktBTUVjVWRFZS9UU2Y3WE8zU3M0NjZB?=
 =?utf-8?B?eWNYeDR5MnY3UTdlcDRBY0c2eURQMWRPbUg3bDRYZ0NTMWsvSWdRQVlDZUxz?=
 =?utf-8?B?TTVnak82R0hiaWxtQTNsL3R6VDg3TCs3ejYwLzRIbEJvQXQzWDNwL1NqWDJG?=
 =?utf-8?B?RkxVNXhlVzBXeUdWRnRmUzRGeVhYbUhCZWVxcFg0NVQ3TXNubktTTExSK213?=
 =?utf-8?B?NTVHZFZZOGlabjlmbWlUNHZkby9KZmtGdHNEZDdqbE5ibGc1cy8vc21rY1Zu?=
 =?utf-8?B?NmgwL1Q1cDR3azllWWVNTWxNd0hUenJkaUFwK0NUYjAyQVhhU0pXTHNXdjhC?=
 =?utf-8?B?dGhPVVJuSURTOVgyb0JRVXRGNERVSnZQUHNtVExaSVNHRWNSQ1hGenMyUGJr?=
 =?utf-8?B?UVduT09NQjEyeWEwaC9PZ2IwN25odDlOeDlzV25wSWxNSWtpQ0NKMUlKNEdR?=
 =?utf-8?Q?3E9wmBh5UZXbT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHp0aEw0aEJ4MU40TExNUElqb1k3cS9kbytveDJrVWFmUFBQTFNHQkVtUi9I?=
 =?utf-8?B?ci9zNmd1bzhTU3BRZTErcUN1U2IvR1BlMU1zZDI0SzFGdXBNL2xPQVE0NlJH?=
 =?utf-8?B?aTQ3by90VUF2b1N6WXpRT2doUEFPUm9QcFAyakx2dVcvVncvQzRTNVNjYktU?=
 =?utf-8?B?NFNYQlc3aDQrQmNSYlBIZjJ5SGh2anArKzN5YkNWWGRKL1NtRi91R0tTZ1pX?=
 =?utf-8?B?Qm1JelI3S3lyZ3krQWh6QllvMlZUSU9LSVNKU2hRdERZcHJpK0lZdUE1aWkv?=
 =?utf-8?B?UDFSWkNRWU40ZUNzeVNaOWZ2clgwRG9NRncyelZSRUlhWUJEdHJtR2thcUg4?=
 =?utf-8?B?VVFlOWpzMXVwTTZqcWxzMUNFNGhUYlg2aExTbE5SYjhFMGtkS0E0TXd1cTk2?=
 =?utf-8?B?WndnbmpOdFQxTWd6UlBxa1BQNGpCdmZzRWdSclgrYzZGVkVxNUtmak0zdTJR?=
 =?utf-8?B?TTFleWZobjhENlZzSXUyeG1mMmpLZXdjK095dTI1elJIQlQrbFE1SzB6QmxK?=
 =?utf-8?B?Q0d3K21BbGNjZXp2M3FqMW9SN1hyYWJnUzdsaFFRU1FPSUJKYjhSRjB5TEdq?=
 =?utf-8?B?S291NjlEUkM3dDhwZWE2clU2bVNwY3htOGdVYTBVZWllbHE4Y0owZ3V2YUQ1?=
 =?utf-8?B?MUZsZ01HOG5oRHRoQTQ3MGVJRWNYd0FIWFJFY3V4KzBPR3FWMkE0bHpBbW03?=
 =?utf-8?B?VkFBeERmWG90NFpMYmRIZnNZeFk0Sk1XK1J3azFCOU1jeEVIVVlCOTV0YmNy?=
 =?utf-8?B?OEtTOElkYkV2c1hialJNMGVMV21PWlhhQnoya3AxVXEyTGFKdDFnUGtncjgx?=
 =?utf-8?B?QTVOOGFjZnBnLzNMbktWdHNRWFRzd24wY0NjNFJSWnN5VmZQT1BRNy9sTFc0?=
 =?utf-8?B?Z045bEYwNTFxVVo0N0RrV3l0dTlJeE1CaWhKakRxNjhaaTIzKzA4cTBtR0hy?=
 =?utf-8?B?YnhURFFiYjZuclNhc0FreTFIeWVyWmZ6eGNRWUpFUEliQVZGNkZMQUswTStK?=
 =?utf-8?B?N005NkdYbWNpOVoxdG1DeElGS0Z5dnF2M1JGa1ovSS9CRHJ6ZWFkMFBWQmVw?=
 =?utf-8?B?a0pqSnZabFhPNzJyWE1IQm5hRU1sQ1E0RzNwSWZURllNREFmZlJyVmxDRGtl?=
 =?utf-8?B?amxHeE5CdFB3UUJ2TXcxQU1qbjhPTjNKcklqQUhxYXE5R05NekV4Q04xRDRs?=
 =?utf-8?B?YkdvQTFlKzIzcVlmYm5EOEI1NytZc3N2MWFkWmVGYXZXSFNadnVxMGVaSitY?=
 =?utf-8?B?N25uL2g4RFZGZ3ZjSnVZMWMwSXhIaWFuUU5qNXNWRnJSTk1lRndtZkRhSE0w?=
 =?utf-8?B?dVlRQjV5THM3S2N5RjZlZ0JDOWs2OWg0UlBPRTE1Vm9PbXVlNlV4RlJnbHVS?=
 =?utf-8?B?alRKTjZXbEQ0Qk5OMUs5d3oyc2pIaVBQMGFuekppbzFwcy9ob0xONERnd1A3?=
 =?utf-8?B?d0pNdGp0M0VlTTFSc0pPRXJKbjd5UWVOUzZBYzNJSjljdjlFMU5iMzV6UXF6?=
 =?utf-8?B?YU5IRGphUWp2SkcvaUFIbU5xMWxQeWlNOTJlQTlBNmpSMXNPTy9NNTJHZTM2?=
 =?utf-8?B?VmVDeFpmMXdvZDNYcmhaeFRNY3NQMGpnM2sxU2pmS1VpTTEzS29aWDQ0aFJL?=
 =?utf-8?B?UnRtSlpCQUxkQlNnN3BNbW9hNUw0bndxU1JIZlVUNThuK2FZc3pKZk9hWHhV?=
 =?utf-8?B?QTg1QXQ3RlNrSWxMc0lsLzJWSmpQM3RFNDZoYTZJUTU4UEVBbGxaTklFRUZ6?=
 =?utf-8?B?azAwbnJqUElFd2tDbDM0ZTdMNTNHSWFETTVwbzQrUHJ3YnV5clJhZ1R0cFI4?=
 =?utf-8?B?OEdTS0paTGdOZitaNVd5d2pEeVJYTFp2YUMwSGZja2tjSmhiRzhTRzYwSGta?=
 =?utf-8?B?bXRaNkRmRzBDTHRRNXVMaWN0WlRyYmFOYzNJUEExclhyaHBvVlh6N0xDVUdE?=
 =?utf-8?B?emRQcCtjeEVoZTZjS2ZSb2hDemVGZUFWakRlTlFjNkpNS2kybTFrSGRVNXQx?=
 =?utf-8?B?UnAwRHFzT0loenRJS2dqU2dhUGpOc2FHMkk3MFM1c29DcmthS0pnc0R2aytq?=
 =?utf-8?B?QlN6REdSRUR4ZlRFRFJjUlBFMFc4TnFleFBCZ042QXhPaEhXR3Y3RndUanFv?=
 =?utf-8?B?emVUSW5FU1gxMU8zOEZ2VHJ5WnFpZWE2bHhEUlNVcWJXRHRycXYvM2gvMUdl?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abaa3f0c-ae46-4aa4-20db-08dd5bf1bc73
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 14:26:36.5334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p4squbJcW6yO2yR3OxmZZrG4d2rWCViKNfqkZkNMiswAcauUEdPfkM1N3iYLJCX3IIm8yqHlVG0PUtgXHkkPODie4HDBmiYI1RTqcH8UxeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
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

Hi Mikolaj

On Tue Mar 4, 2025 at 1:09 PM UTC, Mikolaj Wasiak wrote:
> This test exposes bug in tigerlake hardware which prevents it from
> succeeding. Since the tested feature is only available on bugged hardware
> and we won't support any new hardware, this test is obsolete and
> should be removed.
>
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

Could you please, add some more explanation. At last for me it's not clear
why test expose bug on tigerlake and at the same time you claim that it's
not supported.

Also, will be nice if you explain what bug are you fixing exacly.

--=20
Best regards,
Sebastian

