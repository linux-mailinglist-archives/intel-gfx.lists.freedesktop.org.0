Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F885B48839
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED76F10E4A9;
	Mon,  8 Sep 2025 09:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sek2uNU3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A98510E4A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323446; x=1788859446;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=21uDxwAedGPP3nO3Q3oMetS/7RPVnXHRAcN8qmuBTb0=;
 b=Sek2uNU3qFS31dOYGgFWNwqsdBZTKBFxMoEgemy6P5+DtNX+x7OU2wxu
 jVaqTy5i1kGWXYoiAjHafED1cbobWX8I0pXIa3DGg82Jnq9C/7kEiwGTV
 K3uvAmIsyxlyNt6KtWOqXL5zRsAf5BH6BQKLKPKrqnkz3rYIQFuX7dvY8
 wln3W60jkC5B55tUkWJYFxSafH9YupZt8Egs5fIkEfk+HvXVi4vVbF089
 jXHzvVPANnO73W3TXgiBjII1H5aeNDSyuja10PucTI3JYZn3q+ZTmhofG
 3FW98AV9fiGwTnftFVI1dyurtZ0aQQdzcyY8awtoqmvgl5pGDJkzB1LDJ w==;
X-CSE-ConnectionGUID: unpNCqAlTVmJB6Fe13g/vw==
X-CSE-MsgGUID: 2au7aDq6SxG5JVlXWg1jUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59529640"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59529640"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:24:05 -0700
X-CSE-ConnectionGUID: bl6zraN6SxudivOpazlVlA==
X-CSE-MsgGUID: ChAsPm5lTceUISRAyVJIog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="173534499"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:24:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:24:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:24:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QHz33ZCM8f17o5UvkZYWANyG6P7ak3q39hu6ko8KVa89rSi4LEHTpnzD4yTVFw2RtwF2ci9h5BLtH4ACLO3lXuoO73I/O+dZ2AlMI9dnrVPGOcIYwZUJ9Z66kYTcF3JJt4zjvTHd1jAo591W/AeWKO7DQZrTeA7mPsDzshMKLvJ4kT+M2h3yqzC/M5PTEQ0PFr1s5E7QHYHqyowm2mnynico3PNGWzw4LSvHhdXwh1Jx5clMeddy5Z9tVU1ONskZoYp/0gZW+sBVSw6P0jT+Re25gER1wYuSHqHXF4j1NwA3uR1LWhgjUZuEMK6wIEKBdR/mUcmp7N93S8/u6gwABQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/XSDoFaoNOQEFbjU3pXrFZFmZ0fqMiMHJiIYAGBntY=;
 b=D1j+HVeGoFpga5QPaUFDT8bBwDyRv+JzUFhnQ0x8RWwYRMWFrOR89HF55zLNXx3YIlKWQaQLv2vLTEDCqdgIo/j0K3nh6sU6jyROk42zMARh4WIwztNSR6ENZ7EQ+wkURIjbYd4y8eZ3O6YeFyARzLOkuviynTMFTp8xk40ndJ0rtDF/tl+MctRRO8I7W864MDR3x/vD/mWxH99Wc3cCByIhzqXqU8/YCuxE6tfHjLlU2zXZUHhJvd/Q1ejLKrY7QG1fR/uFyzv1SzYOI+azrG3R8cdlVTxWKjsze/S/0fZ/e1hz8VhORmtig2wyW06Savxl5R5ZSkjP7hDYM8Npcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6005.namprd11.prod.outlook.com (2603:10b6:510:1e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:24:01 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:24:01 +0000
Date: Mon, 8 Sep 2025 09:23:56 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris@chris-wilson.co.uk>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 2/6] drm/i915: Add default case for the switch in
 igt_smoke_tiling()
Message-ID: <71110554b2303dc911a411df8a75801c073964a6.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: BE1P281CA0483.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7e::25) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6005:EE_
X-MS-Office365-Filtering-Correlation-Id: 2aa718bd-e765-4c6b-2dd2-08ddeeb97295
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b01LT2swSlhobjhUT2FsSllzZlNTb0o3d296d0JmT1FQajFPNEFPZTdhVmVo?=
 =?utf-8?B?TVo1a0FhcXEzeTVuOGkyeml4NHV5UjhuVnpIWUVQeVBZdzJVaU03am9XclFq?=
 =?utf-8?B?Z0F4US9GdHBGWFd1NDFXamhaMnp5NEVmRk5QZjJ6QVpkd2xYQmVSbG9MNVdM?=
 =?utf-8?B?MDZVNVFxZmwzMXZHS0MzK2tGUHo3ZXRmR0tKa2pJMUFOKysraStwZ0hJOCt2?=
 =?utf-8?B?NWE3TmptU0o2em02cWpHc0RqSjVvZ25JUC9IRlgvMjlDbW5hU2M5WVBUL1pZ?=
 =?utf-8?B?T2VjWHpjSVgvRUlRVmUvVmRDbjhqQllIa0lsSG1vcXhBWlJyV2IrR1lzQzlQ?=
 =?utf-8?B?QkVDbFo0RElRNnRoeUw1KzN5UEJsbWZTOXlPODFqMUFlUFN5TS9oOVFJa2JU?=
 =?utf-8?B?VXpPTjc1dTRWWk8wNHRLd25EYjE1Q0NMYjlidndMN1Q0MVFTNDJob294Z013?=
 =?utf-8?B?eHAwWnFqTW01TXJQQ3gyYzh6dUJnSTJpMEtia3VwZUNzYk4yaGxzL1hWTXcw?=
 =?utf-8?B?a2pjY2VRa0lqenFyQVZHRFRqN3RsRXE2Z0w5WFlialJoQ0poRmtjZXFjRFZj?=
 =?utf-8?B?OStBRTNwd0pLRklvQ3RhVm5iRitKc0ZQek40ZjJOT2lCYkQxZTBtcno5MmhR?=
 =?utf-8?B?ZVFTNCtndmtWU05Hd2YvazhkSkg4SkE5VDMzdCt2bXJPMGVvVDgrb0JQYTl5?=
 =?utf-8?B?cWt3aUtzemJib1ltSll0eUtWa3dvQWdMdU53R2EwN0I3b3lZQTRUSmFoQldY?=
 =?utf-8?B?Y0txZFhDOG1RSVhLK1c4Q2hKbU9CcFo2ZXd3UDBrQnlPQis2VmN6anJicFR3?=
 =?utf-8?B?K2tuNUpHOUI1NHNWT3J6cnlVYjg0ZnJuNWpScGRJcUxYN2ZjZjVUb2x5dzdS?=
 =?utf-8?B?VU9ZNExpWHo3WHJaSGk3SnVmWklraTRHNmI5d1drYTh1QS9PYmlGMHR1bHla?=
 =?utf-8?B?cS92V1FVWnB2UVNYaGxkZFdrR0p2RWFwdllTcmlvTmdwQzhEOHVzbCtkZ1dH?=
 =?utf-8?B?TGRkaWhRYXp4K0NaaDI4TEwxR2dCSitMOEpsR1k2eS9aQVYrLys5WmhwL0Jl?=
 =?utf-8?B?a1JaRGN5NG9aM1B4R05EbitTZ0Nxelo3OVJBUzVDOU1pYlpCSVNDL3JvS2lX?=
 =?utf-8?B?Z0JiT1RTc24zd2Zmc2RDdk5BbFpPckxTcXdRemZoWUxJVU1GOHVpSDN0UDlH?=
 =?utf-8?B?cXFOUEVPQWNTYjFMVVo2VjBDRGQwY3ovUTB3YUtCbU1hU2pwdDdDdk1pMnZl?=
 =?utf-8?B?cjl3Y2Q3SnZTOEpnakEwY2hrNCtFZFlFU0ZOQkZnWUM4QzdYdGxTZTBBV2ZQ?=
 =?utf-8?B?OGZKNVB2UXZUcW9vd2lteS9HT2ZGMHdrdHFybWtxeVZvVERFay90b3owUjN3?=
 =?utf-8?B?WVhtYXpmaVl0ckFwTjI1YTlTdWpZK25MbGEydTdpcTZ4R05EY1lIUDNzWXRU?=
 =?utf-8?B?ZEJjWUZqSFF3dFl4Q0RkWE5oSGp5SmM3bzdERmVOZ2xTT1NsdnZmUXF6NGVQ?=
 =?utf-8?B?MFUwc284SW9OdGlSMmxyTGlRKzFrVDcrbWQ3R3NJcGFhVTBOVlFrZWV5Qytj?=
 =?utf-8?B?UDNEYzAvNEFEUjByYWswOTRvdkZ0TjJ3aUg1eDFtTjJFUjB2SGVPaVpJdTBX?=
 =?utf-8?B?M0FLTnl5S1JqdTlHK2hQRVRwNFl1c01rWmV0OTBQTXdGMkc2Y0lsWkxaM052?=
 =?utf-8?B?SDB2QzhhRE1KQW5wNUJxV1F6RmsxY2c0RWhTbHp3TjdldC92WExvQVR1dnhX?=
 =?utf-8?B?YllJUUlCb2ZadFZzcElBZS9RRFFLWlVjRk4xbXppZmVoS0IxaWZlVkI4QzhW?=
 =?utf-8?B?YUI1TmxTWHU3RW1ycmhSaTJUM2ovUzlTam1BWjdpQjRzWS9PbGhNNkliZ3cy?=
 =?utf-8?B?My9CU1lhbldDYWpHaWNzS2oybER6UFB5bDEzeUk0b3JwNlRwTmIzcmh6dlNo?=
 =?utf-8?Q?pWRAHzO1oNs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlhWY1IxcUJMSFpacDhQamQyNGtKZVA1bjZ4ZTJDSW5TKzdtd2V5MUw0ZkMz?=
 =?utf-8?B?WWhYbWdCRU9oVEgzSUdmZUFwZ2lFTE5QUzVDcnJhRmVCc2ROSCtwVld6UkJE?=
 =?utf-8?B?RHRRWHBYdTdvMjRubi84SzNIUXhsNHN5VUFKcW9IMFRyYVlPclhodWhqYnp1?=
 =?utf-8?B?WlNwdkJQaExoc0k2SGNSdEk1VEtIc3VrM2JvV1lscGVCVXBPVkdnU0NrNUJU?=
 =?utf-8?B?dklYa1VteUthdkRaZVdGTzF5MG5xYmJXemEwUWFyblN5U2NmbEo4NlQyNnVZ?=
 =?utf-8?B?Vnp5c05zT1Y2cFNPdmdBcm92UUJtdDliKzNMKytsYzNtZkhIbDJ3cEs2Qnhz?=
 =?utf-8?B?OWpqNzZ0VzJEQ0JYTnZkZ0VZYkgxQnJ1eFFkSUhKYXZlcy9hdFN2SUxETUNx?=
 =?utf-8?B?SW1YOEI3YnYxK0xVMk5VeHlTMlBBOVRNT0EvWGI1SlhRb3pEdHJVUk4wS1JK?=
 =?utf-8?B?RU41UllEeTBQTWlPSjd5TUNBYkROekxBRE9NRXM0WTV4M0tRNVNRcnYvUzFl?=
 =?utf-8?B?bW9Cb1NaSHdXS1lxOURZM3RROFE3V0kvc2RSRmpNZTVZVU91NnpYLy9NU0tQ?=
 =?utf-8?B?UWgzNUxSNUlOT2JzTXJyekEydy9CeFNjTkVPVXhKeXRxRDlEOEtKZHdBWW1C?=
 =?utf-8?B?OGxURWxlZkFIcm9kOGFtTWJKdVdhdHI5TTRpa2Ixd1BmeHZaanRkOVNkNzk2?=
 =?utf-8?B?ak5wQ0NLcCtveWYzUDdncHJMcWRKNGNlMjMwMzNGaFFqaytlSnM0Z0JqcFFG?=
 =?utf-8?B?WStaLzQ0bmVpaEVvRCtqeXNNSzBTZkcxdXdad1RqL1NnRnNNRFVRTmJSREpZ?=
 =?utf-8?B?Z2pUU29RQitNYmFrTm1LMWJ5WjBldG1oUGZRSGFkN0Mvd1pVcHhUc0dLNXpx?=
 =?utf-8?B?S3gxczBja0ErRGdDUzBxNU1tb3RVMnVHSms5ZVRWVVRjQkx1NkhrcUNqMWMv?=
 =?utf-8?B?QzNRUVZsMDNHQTNFdjBxN1hZUTk4bElNQ2NFMHZEeXh2RHJzWmpza0FBamp2?=
 =?utf-8?B?SmFyK2N1STNoSFJVaFVBWDZMVnlBd2dmL284ZWlBeXl0OUVsMVh5cDhsdUF4?=
 =?utf-8?B?WW9rdEY5TkJocGFtcVhMZkRFZUlBbUtsMDU2OU90UjNhNmovMFl6QnpMVEVF?=
 =?utf-8?B?REtoNkw1TUkwWE9HTjVHOFVIdnBJcFUvWjBEc3pTNGpLV0VXcStFVlVvdEpv?=
 =?utf-8?B?Y01ITUY3R01aZGwwVlptL0JOMDY1c05vTVF1SGo2QVp2cFd3aExSWG9Nb2Jv?=
 =?utf-8?B?SFE0bkhvdDFlYUs3UnBVNzV4Q1RrVENYdlFqUUtVdWRkcmxJTXFGc21MYXpv?=
 =?utf-8?B?L2l6REc5T1kzMSsyZS9sVjJXejdVYWt4QkpENnp4VjQvWHZYOVhHM3BQUXhu?=
 =?utf-8?B?cHdGaHBYQ0o1Zm1pMXNxb1ZTS3pzSHJjTURCZmpUZFV3MXVmU1dPODlocW5y?=
 =?utf-8?B?RVF3Zlc2cytabC8xSnBpMlJhdFJTc1AzZ0l6U21EMlduRVp0dmk3VVNnM3Jj?=
 =?utf-8?B?VnJBL2REdlhSVks1bEJmbXBEbXVycE5qVXM4Z1IyUy95bEg1UStFODYrbnZh?=
 =?utf-8?B?M3dQcXgrT0R5S21zRkVPeWdzSFdiN3VveE5XOS94UTBwbFcvT2lCeXBqRzBN?=
 =?utf-8?B?dFhMZWhaOUZnTHlVb2Y5dmtpNGRsQVBIenpNZ2pudWR3MEFMNXFyVnpVaVlG?=
 =?utf-8?B?MkFuYXU5UDVlajZWVXIzTS9iRTV0K1VzeXEvb1p4OFdwaUQrWitncGRPRHBZ?=
 =?utf-8?B?RlVaM3U2ZmhxVFp1RnpKbzJYcnZveUhVZHpoMW5VRFIzRGxPWTkzb0ljZFZB?=
 =?utf-8?B?bWxoejJRbEhzVjltNjBYVGpqaTgza2liVlBtc3prUFZuemJUUDRydUhBNnVM?=
 =?utf-8?B?aWtpbW1FV1grSVdZMHZNSlJRVEtGWVo0cWdzZU0wc3g5N0dCNTlRNVFqUmti?=
 =?utf-8?B?bjBZOHJXeGgycDh3c3orVThXRlMwak0vaWtpbGxOaWpwZXU0V3publVaNmVE?=
 =?utf-8?B?U2IvQ1NaSDVIcThsSVNPTnBGbTlNWTAvYVE1ak14V1ZmYVpYTWpzckpySG41?=
 =?utf-8?B?czE1SUM3a2RPazNBK2JETEY2V040YVh3cjFIcHlvSEI2Z290UW1UN1JKZld1?=
 =?utf-8?B?NEFLUHR6bmEyWmNmclp6a3FWdVNGSTZhaVZJQWRZM29uMFRLcVZNZWltanIr?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa718bd-e765-4c6b-2dd2-08ddeeb97295
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:24:01.6614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dm+bsQLx00TfsuNyvXM/8z8ZDWAJEbh6jRNXo+pMK/+zh5jBPbFG8t9F6Ps5y7vz/4BucMkZcl+h3C7+jP/awNmAu8xLaxVnGshaN+XGtPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6005
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

To calm down static analysers define a default case and break
out of the test.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 78734c404a6d..6d87356e928b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -498,13 +498,15 @@ static int igt_smoke_tiling(void *arg)
 			tile.stride = 0;
 			tile.swizzle = I915_BIT_6_SWIZZLE_NONE;
 			break;
-
 		case I915_TILING_X:
 			tile.swizzle = to_gt(i915)->ggtt->bit_6_swizzle_x;
 			break;
 		case I915_TILING_Y:
 			tile.swizzle = to_gt(i915)->ggtt->bit_6_swizzle_y;
 			break;
+		default:
+			err = -EINVAL;
+			break;
 		}
 
 		if (tile.swizzle == I915_BIT_6_SWIZZLE_9_17 ||
-- 
2.34.1


-- 
Best Regards,
Krzysztof
