Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHYBOERVc2mSuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:02:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0245374BD8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781FD10EABB;
	Fri, 23 Jan 2026 11:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWaaCQJC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B6710EAB4;
 Fri, 23 Jan 2026 11:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769166145; x=1800702145;
 h=date:message-id:to:cc:subject:from:
 content-transfer-encoding:references:in-reply-to: mime-version;
 bh=xHUgD3X0V1XIrbyP884F5KC6VdZDnTkmYl7MSSO/h7Q=;
 b=WWaaCQJC/Yj2Cyml9sv6aleuXEACwm7H0ei8wudLuKI50RDSU9ZRpCHJ
 bnHQdnlFXPlDUEbG7ACmzXNMt3lKOJwBmk5KyCxWbaqSbI/V/eZZ/QaEe
 aghKDncobl5sBg0G362I58JcQXvhtt0YwVYFwqZgb5IgorQoymCTvXfDi
 UoebuyX0ChsZ5kW5g8Kh6gK4lZcdOVq9pB/aicKOuyFqISFT10QYq6+Hk
 i4kbjujnxwhW5k74B4nkoiedmG4pEsdRsh0UGaxFCYNnmfizW0u5WJ471
 oZsUThSvpXG6adU3J4ydmG1FgCaCaBVGM7ZVgeAJ/yXXu7Io0d16z2j4d g==;
X-CSE-ConnectionGUID: ucCzEZ88R6mak15kxMJDJQ==
X-CSE-MsgGUID: m3TxCWp2Ri2uTFZkRICBew==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74050274"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74050274"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:02:24 -0800
X-CSE-ConnectionGUID: 6KMBehswQsekVc8FG5WyVA==
X-CSE-MsgGUID: nszw1a92QgW+5vlE7VGR5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211868620"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:02:24 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:02:23 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:02:23 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.67) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:02:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fwq1ctGIKlS8PQPc6OwZOCsOjq8+0Irnbt8fyBEyamHqxVAvIpONLBWHPlfk+CXJx6kegBCBrCPwy8a40zfcL7nneqyEfxLEWZk8zH3IGpdLB2LbtOzoMK4UrMh+iTE6r73b6XRl2s+RWkaltrrBod0xw6plXgV9HrbQTpEsWEd9NTcRn2Q1Q5+zg9wFizZvrk2yMbijGkAR1ryODMv2nmLjj21fbF0qKPHUQfZdI8mHwYUMgzUZ0L0sUEoe81WmBrUpcF9znEg9K2SuyqXrK/GuLCCPm5MtTZUg20dzoM2lIGGkedxI6kZ68sxG6e+0Psf2t/AE2N7G1lKge0JJSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iLZtQOnd9dzlarB3miHzpOQjDbf2ClQvdUJVRzfK71o=;
 b=wJI3ALLeG8t5DEq7jzWgVBx0MGzxfwu6XfUSQ2nP7o/CUdsFp9Ncr3yK1uaC3I1kIIaQl3dg1WgurE+NH++bZePVfv60p9OpQh1iiiuSeBsso2wXKPpvX2Wjhrch4wISMsdg3FwF2eq6IgERVi9HZM/d8zAmHhurtGxc0inILh9mKilwTWBTT10sVVxRRVe/4MNKBufbX7hhGOuMoJhYcEXUplynF9c/uwn+/C+96HanWRw533VNR4Wt31glM2eoF6ygowj5MQXVdqqIvLldokxVTcGLNW1QVinP2gw7LOXTs8DHnEXAnSn/KBd2pUUPVc226ClIHYZWjv/vKkZ0+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:02:18 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:02:18 +0000
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:02:13 +0100
Message-ID: <DFVX1XHR1RAB.21W17PZMA2WJS@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 2/7] lib/igt_device_scan: Split out reusable part
 of update_or_add_parent
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-11-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260121114656.1970684-11-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA0P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::16) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: 29c8edc7-a129-4c25-84e3-08de5a6edfff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Slk0UjhqWjhnQ21qRzBPZ2U5eTBxTzBGbmdTMWREVFQvQW5HeHhKNnI3dGYv?=
 =?utf-8?B?RHVqZlE0TmxvaHpRUDVWV2JaRGI1RXBzNkJoRWhneWQxUEpYMm1XWkJIUUpu?=
 =?utf-8?B?Vm5lRXBLaG9KR1NseEZ3Q3BDamNnbGUvWGd1dmtDa2JnRVZtZkp0M1QxYitN?=
 =?utf-8?B?SnJLV2hLcmJDVk43SE53d2dScEJYRjZnWVZsWFViWXIwQjFSRU8zOTlDalRY?=
 =?utf-8?B?WHIrWis2bGMzT1k3L1JCL3JLVTBYOUsvMklDRlFaTG8yeTJpWmVHMGZYdkF2?=
 =?utf-8?B?SVlCRHVGVlgydlN1eDJwN3BrUnpoNTh5SEFrbllmd0svbGN6UGpMbE9DMThq?=
 =?utf-8?B?SXFEOTJ5RTNTOGdKMUZvNktLUVVHcENQTDBKemZXUThmdjdzc0JmTXBmUG0z?=
 =?utf-8?B?V1FVZG4vQ0U3bEYvUGFuNXYwT201OVFTV2xTdzVhZjNKVTNHaGhmUlZhb3VO?=
 =?utf-8?B?TEtIWEcrZUFnOG1mVW9uSGVXMUwxeVRaNFFTVFVwdkhjYkdDTlJZY0luYnNM?=
 =?utf-8?B?Ky9RSzdXUGxQamRGZzVuNW02RVVndG5QbmxWZERDOGVaaEpRNm1JOXFZN2dx?=
 =?utf-8?B?UEN0SWwzUlN3ZFJSb2dHcVUzQUM4U1dDTzdwU1JDdUpBSkpmMktKczAyNWRN?=
 =?utf-8?B?MUtsZFBLTGF5VGg1RGw0aFFwczlrUHNENFZaeGdvUzA4WkxHN01Ra0tDRnVT?=
 =?utf-8?B?TUJ0Sy9oVXdraDdSNzhmOEZpbEtkUHF2ZmNDcjRYdU10aENBWGQwaExUQTQw?=
 =?utf-8?B?Ly9PS2ZNQWk3TStTUCtLRlBRdFp1bFZzMDUrdkduUGpjalRjcitHdEVlOXF6?=
 =?utf-8?B?RFByYTQ3cURpS1FGWFRkVE85REs1UjJnV3pBam1NRDBCWWFXeTFJN0RyaEMy?=
 =?utf-8?B?RlNVMFNRdlBpR3pacXlBL1NYU1VGaFd1Y0VnZTF4Q2pwam50cjNrZFJRUmpy?=
 =?utf-8?B?dmxnNXJTRDhkampNSzRJRUVxZkt6R0xJeStKbWgzTWlqbkRQRzRJMVFaQ0JE?=
 =?utf-8?B?eDBIUUU4TDFrRDN2Vytmbi9FUVJPOXlWZW15WXp2dlJkSWdxaTFOL0UwMm5u?=
 =?utf-8?B?cXlBeVh1NkoyUzliRnQySnZvNkZDUUhsZGpBK1Mza2lxS1BrTis2c0lvTFZ6?=
 =?utf-8?B?SVB1VkhxQnZaajFUcE9RWXF5WERYZUxwYXhSYmZkbUExTllCQ1U4cmN2Yk44?=
 =?utf-8?B?eHhZcGJ2K0dZcTFVR3U5ZnZlNUkxcTE3bktvQlF5SXYxNUxrUU1kOWFNMXBo?=
 =?utf-8?B?enY5M25TQWhSWlhIUkhHZCtPcitmNmIyVUhiWEY1cUtjSFJuV0gvMmc4dHRR?=
 =?utf-8?B?N3NSM2VNMjFLRjF3NmxYV1B0Ny9QWG55KzF0TlZuMjE1czBYMlVqSUVYQ0pi?=
 =?utf-8?B?cFR5c3M5L1o1M2FMTk5XUmVDSTFFSnBqVjFxWVVSMVhINWFLNVM0Y3dPUWhN?=
 =?utf-8?B?QmwzekRuUzVvd1RNMG8rSThRR1dyc1dYU2E2RW9kbkZvZkg0Mis0NHRCWWZ2?=
 =?utf-8?B?THpiK0hCbXI5a28rQzVDWkYxckp6aDY5OHo3Rk5rY2czeGJKNTkrc0FSVVh5?=
 =?utf-8?B?TXJHd1hHc3l1eDJJaXVmUjRCNklkYUNBdGZoVVpNOTd5L1JkMWw2U1FSb09L?=
 =?utf-8?B?T0luZEdsUWNGamJlc0ZNbElXdDFFWkxyR1JJQnNVUE50UXlpK0hVbVF0S2xx?=
 =?utf-8?B?aGxSc1ZJcHkySEtuVXhCTUdEcXNnT3czdVZhakgxUEY5UnRnU1dBUTI5QVdk?=
 =?utf-8?B?d1BSNDF4N1BQUjlBOTZkVUduKzBtNW12WFZYL2Q1a0laV1FoU3pWZXNsMEVr?=
 =?utf-8?B?VVlmbndVSmRWNEhEMHQrZ3k2aEJSYXRLWVRlSjZPRmZQQlNJQSs0QU1wcExz?=
 =?utf-8?B?QWNISWRsU25BWis3M09NdVFzRmVyb3Z2SEZ5Zk1rRDVjRDVaVnlhZ05XZVFy?=
 =?utf-8?B?dUlEL0xmRFJGQjhmOEZkZFMvNjRwNnN3bElMTVI1NHFsa202RHpDVWZvbjY3?=
 =?utf-8?B?OWcrdmNxaUhGbGJDQ1hoYThrQ1FoNmRvQzljUUthTVZhK3UwUFRKMnBWRWtk?=
 =?utf-8?Q?oSRgmp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHJlQWw4VytjdGRTYUVjZW1EQnNIdEhIZm9PdFRZOUtRTlJSYjZSendWeC9I?=
 =?utf-8?B?WHl1VDJzV0tmQlA1WkVscmFNZFlFR2lkYzI2UTJUVnlwbTRRTFh5Mkp1a0ta?=
 =?utf-8?B?M05SaGZSVTdaVWRha1Y4aUVlYkUvMnJCMEV3YUtUNVpzYXN3YWdJaEdOMkZD?=
 =?utf-8?B?SGFDS0p6VUpxV2pGR0hnMTFXUTFzUHhZQmZidkhtNk9BWGdhYTFUZVFaWWsw?=
 =?utf-8?B?dkRoNEdKd2RucW1qZTZhcW9sL3RuTjdqNnhkV1NJNkw2K1BDNjdpdDFFQUR0?=
 =?utf-8?B?R2Q4ZGwxTkVoS0lyWjFwbTlBcXZWUjNkdllCcjg1MkcwL21jN25aSThoMkVR?=
 =?utf-8?B?SXZGbEZxRkhVMHN4eGRjTHRvUU0zaFNJc3ZqSWlsd3FwYXdmMWo0d0RIejA5?=
 =?utf-8?B?WVVXa2dTL29QaFpoS213UzNRa0xkM0IycjJxTzJsYi91WlJiT05pTVZSWTAr?=
 =?utf-8?B?RUIvVk5uNTZaSmFJZy9qLzljK0psWWx6OHUwd0pmZDNEMXQ4MDhXMVNSYi9t?=
 =?utf-8?B?N2d3R1c3Y1ljUVcwTE8zeS8yS0Z1ZC9oMVhTRkt4UzFBalJuWS9rcXg0ZHpG?=
 =?utf-8?B?OGVrbmxuSmkvQkVQSWxFc0xxWWtucGpBejBUTjFvc3VJZVFhaWdwN1ExTjds?=
 =?utf-8?B?eWVVY0RKZHlVWWxCRmRMdThLb2NzZjI0WDVlaGp4dnFpOTJRNnY1eVNCU29L?=
 =?utf-8?B?cGttTW1FaFpiakwrVkM2OWsyU2cweXg0NXRnT3ovSXRqZ2lUdVB3eldxNEFE?=
 =?utf-8?B?YWNRZW1tQ2gvZ1NMSFA3dWExTUh3U1hIMmVhUTYxajdFSVluaFBWaDljSUlF?=
 =?utf-8?B?S2xYbkQzakFhRFlxaThpUU9nZnNMd2RtSGFBL0dVTExaN0NmaFJ2ZExQSmJp?=
 =?utf-8?B?ekRkSEc2K0FnVkVQZ3BMUkFFS2NIWE12aE5mOUZRRmtWSlZrYXdLdGJ1ZXBa?=
 =?utf-8?B?UFQ2bjRhWm9yK3BSVzNqMmFXZnNWM29Eb2t1WXVpVmlRSHg5Q0ZTVWJSWjY0?=
 =?utf-8?B?cFdkMG9QVG1leGxSRktoaDlXVUo0NnozeVc0RkJuQU9PV1pBRXA4Z3BKREFN?=
 =?utf-8?B?cWtHT25Yd29tKzJCdWhaOGZJVlFyejVxV2NSYUFQaXZLeHpRVjROWkxDTlR6?=
 =?utf-8?B?SjFvemJBN0VQZzdOZ2NXb0pEQWFHeG1mZ3QrRUhaaTc4YmlOMTdtUmtlL0RT?=
 =?utf-8?B?Z0NnWG52eU9ibDAxU0ZYNUVnTnVreHNscHpaMldFUW5KYmNIYVFmTUdRYnd2?=
 =?utf-8?B?c0xwbWx0a0NwekZUZTAzeDRmWlZNeWl3Z2hhQm9seFVWWGhwSVhsWllXdlZI?=
 =?utf-8?B?TFByTVBhb3dESFVNeEhHU3orN0k2Z2grYWdNdEo4SDZ5NktCcHN2ZkI0UFgr?=
 =?utf-8?B?ekR0alNidmlYUU95V1FlZU9kWUpXOFRML2l6dG43RHlYUVlPTzM2eEpkc2Ny?=
 =?utf-8?B?dUJGV2hxbmd2ZUxRd2w3MXplYzgyMWt3Ky9UTUhiUGEvZDhtL2ZidzVyUGhl?=
 =?utf-8?B?WWJZNytYSDZaR3l5emFqZHFxeDRRdWlELzArallwU0p4NlFEbkM3SnlPc2pv?=
 =?utf-8?B?R05UN1FYYzV2Z0I5Q01ZZzNEWlB0cG0vbVhEMXl2a1lSZ1ljZExFWDlic0xT?=
 =?utf-8?B?Qzd3VHpnelk3c1dmcE9HNHFDOURnS3ZpK2JwQ3ZIRzZqMEp0ZDhXWHpGOE1D?=
 =?utf-8?B?OWdjMEx3eERiaGUzdkU1WkVRdlRpeFQ4ZEc4T3ZRM2U0dXpudEZ5NHpOWFMr?=
 =?utf-8?B?WGF1MEI3dk9yVWFGMVFrbHJyMnUyT3Npb3ozSnBubmdVd2JjWGpIZWVQWXQ2?=
 =?utf-8?B?UGtTd0NCNkxIaHF3L2I2NDNFRytOTUNZMDExb00vcWFUVjBVS05IRmIvSFhi?=
 =?utf-8?B?cFRhZGtYUjllWUhIbXdhNFBWZ2F6SzNHd1Vzcm9URi90MWZNelk5ZnVVdzFi?=
 =?utf-8?B?andCN1M3SEIyYUk4a0pCeE9iVzVPbDI4ZjBvclZPQlM0Z0ZxYlpwR25QelJN?=
 =?utf-8?B?cjlYYmU5Nkl3NFFKZWJ6enRLcGJYSkZFVU9kT2RmdlNYdUZVdDg1dmtLMTU0?=
 =?utf-8?B?Qi9LTFdpZUlWNmZyQlNNbHdPZnZJb1VXVlhyL21kT0p0SVpWTFdOeFNhd0l6?=
 =?utf-8?B?cElocnladG9lZll5UFBhYUN0ZDdENDdnSm13WUFJempnaEExditiTlNuOHRn?=
 =?utf-8?B?a0VsWjJhK1l5cXZHVnYvY0RDcVRZSFdjTkJTcTFoQzRFTEIyUWo1Y09tdVhD?=
 =?utf-8?B?TGZTMFkxUjJ1c3AwSTVVY2NEY0JaWWM3TWxXM0ZaSTZFcy9GQlNMWU5FQUUy?=
 =?utf-8?B?c3JuTWlsQTNVbDV0S2JSR3pSR3JQYlRVViswUXdBSTF2NDlKcWFJSVJ4ZGNL?=
 =?utf-8?Q?iM2NSKdM7b0ISoEY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29c8edc7-a129-4c25-84e3-08de5a6edfff
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:02:18.5153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9eQIP/KBfKKNPQ8LAKD5H25K9hQ18HAx4vo5EH2//eVRL0dI2p2i1RGFJAlWw7GiwL7+6FLQ12vGyvdXfMF6g3jYTNQ5834Oq44wEPFAKW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0245374BD8
X-Rspamd-Action: no action

Hi Janusz,

On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by sysfs and userspace tools, including our lsgpu utility.  In
> order for the lsgpu to show correct link bandwidth information, we need t=
o
> identify an upstream port of a PCIe bridge that sits on the GPU card and
> get that information from that port.
>
> Since the tool uses our udev based igt_device_scan library for identifyin=
g
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
>
> Refactor the library so a part of it can be reused for processing the
> bridge port.
>
> There are no functional changes introduced with this patch.
>
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
Straightforward refactor. Looks good!
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

