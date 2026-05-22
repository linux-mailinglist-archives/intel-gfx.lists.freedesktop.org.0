Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHnLGCX4D2oTSAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 08:31:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1674F5AF851
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 08:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2710A10F4BA;
	Fri, 22 May 2026 06:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpbJM+Gm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B8B10E666;
 Fri, 22 May 2026 06:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779431457; x=1810967457;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9gdbqe6UlquK71WXmNgj/lQMzKM1NlsMo17WRuEhccc=;
 b=cpbJM+Gmrs8g7AGDUPlj1df2f2JoKsgj+NbwT4ZFb/XGMNEWNIJ1jhz1
 0o17g0HVcJRXiwluxCkaZKYrhzdJanrxyC87lRn+9Z0SlUjcTIS3tSz89
 vo5zy5AKBYAGy2kyWJdNeVVbdhHFNvteclxaCS1Hgot13vjaD01lCpKDQ
 5hFx+5g2ugQ4MUzqNsgT4x1WbZR8gxE2Ax6HF1GIpknen0DXiTtvsuomJ
 LUjz/QdX+dB3u1t40b5vHRYvYt75Lw4PLWlkxtdRXTWvsbw6lYldStFfx
 XsqCCIEJ3A6YxZBifYG1Vm7vSAanxnxiewDW3/P4LlW+PBk8RWOnwE+fr g==;
X-CSE-ConnectionGUID: A4ZL6HTgRb+KOR+32yPmLg==
X-CSE-MsgGUID: rhJWtOWKRQecSl22zMalsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="105823031"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="105823031"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 23:30:40 -0700
X-CSE-ConnectionGUID: Y/aT79xtTDu45SSFiY+zJg==
X-CSE-MsgGUID: 7Qm3U9WnRb+63C7dIg3/Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="237783261"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 23:30:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 23:30:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 23:30:39 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 23:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NWWOS6X+nqb0pRkivIszcbEHjWnAgEl/i1Oxu//DFnttIWKto51u9qePZDivcKfxnU+kPPXVYbTh0G6RbSan2F5a2/EuAw5ak4MUV4hh5HG5n2cM7m11PqVdaifJcv82vS2SdslgwUJ6ocWHWssZifZZeosi4h8jjCkcBvLIYS4IjI+TsX5P3twj/lHuNEm94VdOu93okV/Fpid7N+pdF/E4/wn+XQn5s/NT3ArdmN0v0iNLV2hbnqFCnTeziwiG57/9twmppi5qxJkalN+zQiHDW/wGcGS7tlpuZmKNz7rUjSaXacvzO6P46fDo03Ep2xGJ9kBHiUpKX1OeYuNNrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEy/Ej0EcxB009G0d2UaY06gzD1P2XCpFNfmNZeV2wc=;
 b=Bqfs3Th84BT+EGdpnsAW0qzApz6gEkDnR5uyLaiN2MJlMl9AazKxWw1O/5e25rxWEU48nkS/7ESiP9XG94VOkzh4fkVo7LsMurQR7ghiIBixJ76Ga3T4hugWkmbbXx6PhVExfn3yFkHwaCDAOKxZ9KU65yzZc8Gn/79alWpXWp29kOWjuqprRCIt21mo99COiGPpbG4PBIhJocZu0x1RMTLZOYrLwKx+kX6udJPlJp0aL3H8kLz9LKZlC6m/SCuaMT6hYUvVexeIcDdRuLInrnttEbOt/Qe8ft0JXcJy7ZLitoyZEHE+8AhYQ6J4C1zwc1OzwSDaHu+PkdnUHSlieg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB5245.namprd11.prod.outlook.com (2603:10b6:5:388::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 06:30:30 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 06:30:30 +0000
Message-ID: <8b886c39-f474-463e-99c5-2cc91466f1b9@intel.com>
Date: Fri, 22 May 2026 12:00:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] drm/managed: fix drmm_add_mod_or_reset() kernel-doc
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20260521155231.1821935-1-michal.grzelak@intel.com>
 <20260521155231.1821935-3-michal.grzelak@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260521155231.1821935-3-michal.grzelak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0065.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::7) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DM4PR11MB5245:EE_
X-MS-Office365-Filtering-Correlation-Id: dac4a96d-165d-4a81-91ed-08deb7cb9e85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11063799006|4143699003|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: M43lRBwlwuo1WZYE6/Caqk3Fr6YxHTXqJXuMwHZKI2zGxzIpOEirt8LlUCUfy54KYtt7drsnjDGtQo3vxCfHJFQnGEF1LCJXVjPbSA0qmgNd77l7IckDjHsO/DJJOt6RonUbeBuQOszESvjL1iCuWCiGMuAey3SEFcE8GDrjqYX81SqTNLPKu1wgrb9d6rDsn+RuySOvieIZmSH616DJO/nPZnmTQeX/TqhZ90t25GBvGSUyNOgnH29TwbjcpvB3niQE85hAsYyiq/HO8aFbdgQkUKwM3gYApRJFZBAKIc7/a2bGh6VXKXXvNr3gi516gBzgY4+6auzwH/+RXEfVArF5Z67Iko/Tz+OqgXZSoQ5BKnx6wwMU4/EdGDvx+JG5j7cKj1Yea3FWXhNxy23QE1mctVXjFL+BxnWvSp1KfY/P/iWg8dAKnk1JEA1EZb0NAQ7T26V2nvHTF8z6QAGMptL0Z6YUcl6V3aEvX+pxhQeJypybjiEMrxs0lvhaMdQWsaivPySD5NrASWv2RVvSPrJLckTMoRuphpjhxok2uRUeW/aO0RcMG8M4TWIU5LmNDrLViu7+2pD46iECZka/ZoCR7PTMSOk2BU3pZ3RhOvGv8iX65IRHCvI6jvs9dXUXyPEitwyOnRM31ZZAQXs0if/7KRNI5dkQWmVEyYtYF1yU4H/Mqks5n6vV5HJO3tdj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11063799006)(4143699003)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjZsT21LR1VWK3dEWEdyZUs2T2U3SGVCNHVBRnJoWUNUY0ZFQ2I1ZDNaU3cw?=
 =?utf-8?B?cUpJcXBUaEI5Znk0WlpsR1kwQ003VlFIWWQ3K1NudDZqNWZBV3loSHduREo1?=
 =?utf-8?B?enp0T0owSldzUzZ3SXN4VEpsamhWdFNkc0hoOGZSbEQvQ1E4bmllOWIzK05C?=
 =?utf-8?B?T25IZkQwdFd3UFZTM2tQcjkxWVBCSENDR0x2UThURDZBUUtkamFRbXlQL2Vw?=
 =?utf-8?B?UW83cFFyeEFIZDh6Y3dKNEVzc3Fnend0NVJ5MDhvN2xVd1FmSUN3VTl1bzJC?=
 =?utf-8?B?OXA2MFRVZ3ZaU05jVmdRRnVPTGVOZy94TlBlbHI2enNENGx0VVA1N0FTaWtH?=
 =?utf-8?B?RldNTHA4dXVZNFdiTThwVjU5WXpMSVk2Qi8xdmh0QXJFTDlqNlEwV3hoN1ow?=
 =?utf-8?B?ak81OUpyVGZjTmVBVlZXQSt3M2VpUkIxNFB3NkZSZUFaZUxPaTF6a0VrS21I?=
 =?utf-8?B?RDBMNTFXNzNxSHBQb3EzS0p2b1c5NFNhMWNDb2FxOXhKNExCelpsTEtZV3Y4?=
 =?utf-8?B?OGlJa2c3S2VEcUpLaUpuTEhhMnY4NkxFcTRoZjAwMVdOOGxrN2g3eGdGQVo1?=
 =?utf-8?B?ZkhKMG5HMmc0VndZZklTS3NOYnRLajhocnhham9IQzFDNUxCRDBEVFFQeHAy?=
 =?utf-8?B?LzMwb2YxL0g1M1dsWDhIK1RYcXNvU2RZNWxNWUdSd2ppd2ZYSWp4VW5nSkdG?=
 =?utf-8?B?ZThXdForcDFLaUhhYVo5cEhvNWFFb3dmalNDRC8zTGZheDVmUVR3WDFVYjhp?=
 =?utf-8?B?cktvUElCL3JVc29lZFNBNnUzVGpqMTRGRXQ0WVlueVN2WUhhandXSEJqdldp?=
 =?utf-8?B?Wmgwb2xmS3hsOFJIcjBseVBSUllBRE51ZGM5L3BPWlpRck5sL29FU0Y0R3Er?=
 =?utf-8?B?RExSVWNPdVdVSzVRMnRYLzRhaytPakFJK2l6R0FVbnZibWlCQUh3MExzZE9T?=
 =?utf-8?B?Z0xJb1BSSmRKT0NidGNvSHMxNWg0THM4M3YyZG56a0pCREcvNURjTlNEU1pt?=
 =?utf-8?B?Q2Rwdm9JbVJVNGpqZnlzU2RMbmxIN0xjRk9TczI3Qm9wV1dMTytnVVN5SHBs?=
 =?utf-8?B?bnhBMUtCVUhldGRFaWJlUmlBd2JyQU42bmRDQ0pIdk96MjI4d3NudWRRcjlH?=
 =?utf-8?B?Rzg0NEhZTGJ2NEpUNHRMT0k1c3BET1EzQjNYbXBpQ0ZqMEErcTdGeHpDaUxQ?=
 =?utf-8?B?K3JTQ3FXUE5ialZXME1BWFZXdFZRQTlUaE11d2JtNGlxWW5Zb0g0NWJDZjdX?=
 =?utf-8?B?bk5WSkpzMHpXdEZ0VVRrN0IwRVFMQzF3a2xGODV3d0ZzZHFJVXVIb0xMVHlN?=
 =?utf-8?B?cCtJKzFNRGpxRGVxb1Q3RnlLSktMdW43a1ZXdWRCSkptUVc3NXJoSWJUWTlM?=
 =?utf-8?B?TVRwZXpteDl6Mjkxb1lNR0FYclBGZ0hEQmhqMjhBVjhqZnNuRTRETVN6V0pW?=
 =?utf-8?B?c25wTjNaQkhRVnQrcHNFWnE4a2VJRkxFNUZxakptYUUrQk9vYUpnK3NmL044?=
 =?utf-8?B?Qlhialcwbzl1NHE1RXdZcjBFcWc1eWRwa0txSTYxNjJ5ekNocWhRVHBtQ2JP?=
 =?utf-8?B?Y254VFMzekZVYXE0aDFjeEZ3L2F2aGhsK3R3NnovazZJMWw0aFhaMVVHV1Bj?=
 =?utf-8?B?RXVSQUFNNVN0ajFhSGxpQlg0UHlORldWeUh3ejFTQVBRNVY1MUp0SWxzYktz?=
 =?utf-8?B?NVE5M1hWdDBWcnM0ZHFONUlCUGR2WVBVY0xEdkkzLzlzTDcyZHRXV1J1elNY?=
 =?utf-8?B?OHh1NU5QL0ROcmgwSmhlekxsU0FGMlBBL3d2a2huYlE0bVFpUDVHUTNwUTBB?=
 =?utf-8?B?TXFRRTVjREE3dm45L2NDU1lBZVMxU3VrRVg4QnhUQ0xYM3VLcHBPcG9vWXZI?=
 =?utf-8?B?RjBqcUZiRVZTYkRqUlQ4RTN1TkdXWmNraktIb29jNCtZbUdVVmtiVVVpYWlP?=
 =?utf-8?B?MjhNR1FSbm9pbDdIc0VSVVhraW9IaUhSR2VqZEdYNWY4U0dKQzQ0alBIbUww?=
 =?utf-8?B?NWFhZktjYzZtaTZVOG5QVldJVkI1Ui9mM0ZobDZxQUpFL3NsWXlEaW9qTFNs?=
 =?utf-8?B?UHB4dE5JWWlvdjFaVFNhbnBRSGxjaUJZM0lRUjBsQ0U5Y1F6bzB4eW1SZUh2?=
 =?utf-8?B?b2tzd2tQQ3FnSlhJLzBkV3RQKzB6Ti9HYmVkL09ZaUZEcE1IMDZZTlNXdnBY?=
 =?utf-8?B?K3oyVThTWXNQWkpTV2UyYWRLUlF2TmVQWVA1dlJ4QzBKOXFYWHVQSUVTZTBU?=
 =?utf-8?B?T2xuQlErYkRFVnU3d3J1RlpFZ2MxejA0cUsrM05CcVh6SnRqNWFnbExWY0hV?=
 =?utf-8?B?V1BqSStCUit3anBmaEdIRUR6ajhLYkdCVDlzdXN1MjMvemZod2xGcFFQU1cx?=
 =?utf-8?Q?eAJ0++T3BtQr88ro=3D?=
X-Exchange-RoutingPolicyChecked: qlu3fOoGJZvRAjHcD+FdvHA0bZt7kpx0qOnE4AOARwpR6jMfPsPkFpuJeZRe6NmSXMQn6Qr7yH1Tt4x43BNPPGquqlPsq0mahiH3WoCeTlMQIFiaIr1DtDu7WnV0eft7vo6rDWD+uSdUPOKDThh5VhZ4GLqf98wrEATp81a1YZIobB8nab4q1dYrmhfEWA7Qw/97Icnb0Kfpz0Uc6n0TpRWRTDl0uPoRqmf9CyzDUUPjV0A0oISr9X0kfY6M0ePG4ZvNGMfGCtQOVNo1w5+h6hA0f+LeOtcGj4VJfo4a90DU6Qi1UkqEKol1Iuo/Taz0e2qMj5s1aMp7cov9s3q4aQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: dac4a96d-165d-4a81-91ed-08deb7cb9e85
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 06:30:30.3277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: txJaEpsoq3vUddh5gGs37C8DjwttyvgSaUkNBNe8ai5CCMQGJCzBOBThhNWjmA68RMJTLkaF4Qxi/a6x8gGGd4kKCmFYrZTFVgCYsnQrz9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5245
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1674F5AF851
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/21/2026 9:22 PM, Michał Grzelak wrote:
> Kernel-doc of drmm_add_mode_or_reset() references @releases which is not
> on argument list. Swap '@' between 'releases' and 'action' words to fix
> the documentation.

s/drmm_add_mode_or_reset/drmm_add_action

> 
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>   include/drm/drm_managed.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
> index 72bfac002c06..72d0d68be226 100644
> --- a/include/drm/drm_managed.h
> +++ b/include/drm/drm_managed.h
> @@ -18,7 +18,7 @@ typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
>    * @action: function which should be called when @dev is released
>    * @data: opaque pointer, passed to @action
>    *
> - * This function adds the @release action with optional parameter @data to the
> + * This function adds the release @action with optional parameter @data to the
>    * list of cleanup actions for @dev. The cleanup actions will be run in reverse
>    * order in the final drm_dev_put() call for @dev.
>    */

