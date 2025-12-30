Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3771CE8BAA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 06:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8257C10E808;
	Tue, 30 Dec 2025 05:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SSmG1QhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023A910E808;
 Tue, 30 Dec 2025 05:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767073004; x=1798609004;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BUhZP3qPl+IYbPbWvdPznVbALTjjxPusCysdDXSn938=;
 b=SSmG1QhX72V8N5njXvuylgCvslIHQE9gE7ft3WJ1bxKvD8J/MCIQky3h
 iDxrfOXHTKGfXyBWA/pwx1UVFV7BCWZPZkfZ6/HjtuOJJWApHLC+dasff
 H8UJz2SQj3pVA7JU5CDAw+hUc8i8ujyLXVewfOKP4Ls6Md04PXxK+QHhq
 59w3yL6hq9aGYxRf8nPiY4UvdTK16Zybwd8CPRwwT2OTlab7xmhbs+8BB
 RxS/qMEYC184ykB1/S3zCknWbPVyOZkx4ceLm7sJ+QeaGcW0CJd9Y7xv6
 qHTqfytzaQfVw2BYFm9TV6pItUeMco8giXm9jlYoQJGmqJkuJsFlf1tHP A==;
X-CSE-ConnectionGUID: m1tBPZvNSquRyEKSElx0gA==
X-CSE-MsgGUID: h9JNiMP8TBiKDiCx5LAHcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="72519279"
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="72519279"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 21:36:43 -0800
X-CSE-ConnectionGUID: 2R5+nxgLTxSWz91/BEcN/Q==
X-CSE-MsgGUID: Cq6OHUb2RgGUgh8+aj8lSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="206199659"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 21:36:43 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 21:36:42 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 21:36:42 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 21:36:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dVyg0HdDMYUfsfnf2woD93MuV40lg/m0han46fRkQISEmnnHTpKd79++FxvR3KvDaeQTZoBQjmXBdcKg3z5/T8jjAdSfHyfyHiAjxDiqKuLqiz4aVFSfOADKYPpykbYMINSmF24GWK7EwlWhJ90eoQ3MrxsEriu+k59CnjvvjyL7qKVdme7n4n0gvQ9bbuBenFHkMBIrVs7pFqii+5Xrhp13iwBjgNV5PIel8QjXCzylavX1kg2DGHByy0v110WMxJvdrZwYh+p/zvOOzkIcBqMgGf6qd2ArxxTNSqkYR6KLlWQqTVjUgHsJO91h8JbjBFDvJLNtg3zh1HpQYuo2KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BnTlxcNeV5fFdtRn+bLKxaqFmoGXVW7wsE0zOQjk4Lk=;
 b=EAZLNkNJCwdbsjZ34L4drzRdvPRqJol5Zd6Lk6JAE9nSijPHhRGF3GlkZbhJivx1EgTPO/WaGw0bvC2O6D18gVbep4AeO5yj5FZQsiS53dZzp0N1ZJhYCQcIvof+JlDLKv9fHdtmjy/8RCirL6MvSVzE6qsMj0ytjTfDnuOEdaoFIoZqg7EOey/qzPi4bxqRV3Arp6XWv0aYMV+8ZLtYQG0qY/hVdwQ7OWk6C1WcA4uxwFI4rigc2dZJTjQ88qVqFWpKhc8YmMOIdxqpQAKJy+RkSHfetPcuv7qmn49XbhN1KOYHIbkd1UjrP1ILHsEPoarE6VpNxjjZI8Oct4QlqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB8913.namprd11.prod.outlook.com (2603:10b6:208:565::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Tue, 30 Dec
 2025 05:36:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 05:36:34 +0000
Message-ID: <06acaaab-4534-4b37-b7e3-a3d211f56111@intel.com>
Date: Tue, 30 Dec 2025 11:06:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/quirks: Fix device id for
 QUIRK_EDP_LIMIT_RATE_HBR2 entry
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20251226043359.2553-1-ankit.k.nautiyal@intel.com>
 <DM3PPF208195D8DEB3CBE2F322B3D1A4436E3BCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM3PPF208195D8DEB3CBE2F322B3D1A4436E3BCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR01CA0134.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB8913:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b2a5413-6bc2-4472-ea1e-08de4765646d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OU56RVFCRXYrTFljOEkvdmx1ME9CcEpLZUlWMVh5bVFreTQ2WkxqUGRkby9t?=
 =?utf-8?B?WUVwQ3ZweXNYY0ZBaDhNdGZKdXR4aXJJSmJaRy9VeGUyZHZzU0o2Yi9TRUsr?=
 =?utf-8?B?SGZEOENjSTh2ekp1NjgybHlFaFJSSE1iTmdQSFZBRXMreS9zS3BQZEhFU1Mr?=
 =?utf-8?B?ckx3dmg3VzlocFN4NXdtNm9OT1A4aEE1NFYxb0dDOEx6dERSOWJVcURTNWth?=
 =?utf-8?B?ZVp5aHdDbU4wRVplT1ErRTJiRjh1ckFXQmxFRmVycWRpdXlWdXJaZFUxNXE5?=
 =?utf-8?B?RGkwQU1mZ0U0MmttWE9oTWxHUG5CNG1ROXc4K3ZFT1NvSllPSFNCNHVzRHVl?=
 =?utf-8?B?RUxLWGVwOGgrMWJ4SjVKVFBORExQL3psdkFndWkzZkcyZi9vbXdmMXFjUVI1?=
 =?utf-8?B?LzRRZDk1bDZlVURLUUErbFBDT2MxM1lpcnJjZk9lWUpFVUNQYUR4WUZtUnJB?=
 =?utf-8?B?bnpZWkE1Sk5ZQ2tBNWlpYmFGTkpjQzFnazloRjJJV0xoWVJCZzNoZXhMYXNp?=
 =?utf-8?B?MEU5d2NLZ3hyTzdHem0zeFkzSVZmcWNyS1E4cWFhRjltbXVXdHhjWXFqQ2ZD?=
 =?utf-8?B?NE5BaWs1dTlKRTBUSzZwWksrU1RpY1pRbFZpa2g3bCt4d05ud1lWR3Z1bE5O?=
 =?utf-8?B?dENHMXZtMnFwcE1wa0N1MzU4OGx5aHB4ekpVYTB1U1pSdXZUMk11cDRvQjBZ?=
 =?utf-8?B?TWNqQXE3bkczMFN4S2ltV3FFbUhzUy9EK3VpV0FJL1ZPWTlSZTkxeDA2SVRV?=
 =?utf-8?B?TzdoVU5yQnNHVUkzQkFCdEFzbEhiNy9CUjN2YTFUdk1aTUk4czBSQXU1YTE4?=
 =?utf-8?B?RWgyd0tjOGhxOElmd0JTWmZKYWh3U2lUTG5MeVN0TmFpMjhmRVlaWGxralBJ?=
 =?utf-8?B?QWZMMmFuOG1BVlJLZkNxV1B3ZStySmcrWFc0WkRiZzU1YjJvQVdiMnhNZUVG?=
 =?utf-8?B?ZU9ydEwxYWdORit6OUs3SDlKdG9aY0M0aE5EQURIWVVBLy95S25UTzNib3o3?=
 =?utf-8?B?amtseTluaXpra2FFdVFIWG5saW5RL3QwaXBGaEVsbVFJMnU2UUhPZkY5dUVI?=
 =?utf-8?B?S01SK3ZnUWVhdldPOU8rVnB3WWhnbEpWM2FBOWtRUDdlcFZtNTVpWjk0NGQ2?=
 =?utf-8?B?eG1NYkZIWnc5bXpJZm9nQUZ0YWRYRVJ4WGNlckZsQkR4NjQ2aVBTR0JnY0hC?=
 =?utf-8?B?NXBBMUxNN1lnOG40eHJXaHZzdStaNEEwd2pSSUhvR3lpY0U3RGE1YWR3V1ln?=
 =?utf-8?B?NHR3bWd6YVlQMk1DUDh6bXFtdnlVSlpkd3R4cGdJQVhUSUpsNmFzSHd0bndN?=
 =?utf-8?B?QUMybW9Pb2Z6TUZaVzhLbGdDZmFtL0JNdjBNWDFYYmtPdFVUM2ZsaW1mWW5Q?=
 =?utf-8?B?N3lza2Y0UmU5RTk2MFlMS2NMa0VmM0tLVm1YY051amFJbE5rMEh3SkI5QUFY?=
 =?utf-8?B?YVpuVkhSWktTY29kM01jWktJMWZKZk1WQm9pMlFvd1loQ2llWGhYZDVHNzJM?=
 =?utf-8?B?OE5OZUExLy8rVTR4NzFxOFlTY2xQQitjaHFrajYzOExEZzJMQWVOS0JmSi9Z?=
 =?utf-8?B?T1ZOZjVWRjRqK25BSWVYM00vSmt6b2ZMbXlqYlQzSnVnUVB5ZWp3QjF5eTRn?=
 =?utf-8?B?MU9DdW1JNGMxSFZ6aFozRHJycXg0OVphNm82MENYSVpZeCtZeEEydGp0SDN1?=
 =?utf-8?B?aG0yUFhaNzRNRHVTZWc0Y3hhWmJkWTY0V20vR0IzL0FBc0ROL0tSVlV1Rkps?=
 =?utf-8?B?UmNKVTNNUUZzbjk3MkEyUE9FWlpFUnh0bCtaL3Y1QXR4Y29uRmc3OGc3RWdY?=
 =?utf-8?B?dEtCNEZsWFRGS2pqdFlIWDJvcVRHUW5XQ3lvMXpxeFpCWndSdXpwOFV0NnNv?=
 =?utf-8?B?dDVMR2N3NnFJNmMwTDk4NHZGTlF1VFV3MU4yQWdsTUJISE4reW44dlpKTjZu?=
 =?utf-8?B?ZldpMHZwZVgxZkFUQlNEdjJITGZlc3RsZlVpV0RhQk1sbytKQ3dvdzQzNlZq?=
 =?utf-8?B?QVh0ZWcxNDd3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEY4bFVDZmFuNGdqVzVJTHZUQmVweGJLNHFBNi9GallGRGlWd3p4b2k5MjlJ?=
 =?utf-8?B?VWpUTUxWM21BcWNubGUrelZ4RWEvZEREM1I3R1ZFRmZaaklIbUF1aCtaTUI1?=
 =?utf-8?B?WmpzVitkSm9iUmFEVWVvejdjM0JkZ1pCVUc3QlFSaWVweUJMY2hCRkFVYk8z?=
 =?utf-8?B?eHU0QVNWbG10VlFiWFlFeXNla0IrVmtDRldxVG13RlRoV1JFZWdzSXdPL0hS?=
 =?utf-8?B?SjlzZXFIQkxHdU1XeEhITC9IS0lQbTNLSTQvZUdVTm1wVFgvQVZ5bGhva1Nq?=
 =?utf-8?B?RVdxK25aa3I1aVc4WXZCU2U5dy9tRkZmb2g3eVNJRTVZR3N0R2FINjJFUlVm?=
 =?utf-8?B?dVAyYWRyejA0QU1XWU53NG5lUzUwWDN0by9Qd3pMZXVwZGFtcGt3blo5WGJp?=
 =?utf-8?B?RzljbzF6L0FIZTYvdEx5T0tnYWs1U09TVG1ieTJHK1dQcXkyUzNMUFNmRXdw?=
 =?utf-8?B?ZUduOTM0cEI5dldjWFNqUlpCZWg5cHBiQkRyK0lzd2hLeCs3NklOZ291aXRt?=
 =?utf-8?B?MVQwbnA5R3BxQ3MzNlNsZ2ExNUxLdk5lR2kvcE5BalV5ZXNiOHFtUTAyZHE4?=
 =?utf-8?B?ODlSd2ExU29Zcm9ITERwNFdQZ25xTCtmTWtlRytJcStQaWx4ZWsydXUzQW0y?=
 =?utf-8?B?aDRCaG9weTdMTnBFMlVRYjl5WkdMcCtrdnZJRThMeElLaFFyMWx6bldkR042?=
 =?utf-8?B?R0pKNGp3dmlhWkt5WC9Tay9wR1AxZ1Zod2JBdXRSMnhKYWpodkxjY3NqS1B4?=
 =?utf-8?B?YXIvU0ZUajJYcDR1NjZUemRpb04vbG0vQ2RodzdTMERudkd5RHdQbkFPSTRK?=
 =?utf-8?B?MWg2Q3ZjZ2hiQ3hmMG1jb0w4UDlZdjI2NUJzRmlacTFTR3NWVEpTdWxXYVRa?=
 =?utf-8?B?MmMyRmtCbWE4eHVyamtWNEY2L3MycUNXeWNiSkZydWhxa1ZtdEg0Wi9nUGVx?=
 =?utf-8?B?d09ITzZnclNLS1NoQkVsb3g4Z0Z5SW1nZFp1d05lSlc4T0xESm9YODhvaDFF?=
 =?utf-8?B?dXZLNjZRVVBaRXJKUWU4TFI3S29kTmFZTGRUMUdLQU9qSmIvK3czbGliMVNB?=
 =?utf-8?B?QkQwcXZWQXVQTkhjT05ScXpCdHp6bzVqWU1EdTdMR253cUxEVXpiS293UTh6?=
 =?utf-8?B?Q3g3S3M4Q253S1dJR3pTQlB2MDdram9aM1QzRlloVGRIUDFkaGJVVWl4bWYw?=
 =?utf-8?B?WjFrVFFvV1RXUjFLY2ZiRU0yQmVIdTQzUmx2TGNkWlIwQlBueHBOcVo1eE5M?=
 =?utf-8?B?aU9rQ2Y5eFNzRCt0S2h3SFFFVUtRc2ttZTZkT0Q3azZXcnBsM3ZVNm1mUERx?=
 =?utf-8?B?UzluWVhFd0I3SGE5MjZrcDd4QmtKTUZDMW5SM1A2eU1HWnpjamkxYlE5OUNH?=
 =?utf-8?B?L2h4amYwMnZNMDFFY2hVanZOWXh3QU83ZDNmbkxuRWluUnBvK1RzM0x3WVhO?=
 =?utf-8?B?UUFKNnlnTlpHNE9EbUZMQTRDdVhmVExRZy8vQ1VjUWZGN1p0bmRNdnRnWnRR?=
 =?utf-8?B?WDl3Z21CV0ZKNGpGWkRNYmlLMkJHN0lTRGJzNjVOelRkSGF4VTRyOEw3bk92?=
 =?utf-8?B?MFdkbktobTFVcUpDdm1xeWh6WmVoSXdQVllNZDZLMk9DeFpNbHB1R2hVRFdN?=
 =?utf-8?B?bXphVWIvZ2hXVEJIQytnNmlNYSsrR2xEV2lJai9XaDFYWWtuaUFOQkdpOCt4?=
 =?utf-8?B?ejl1MzNza0tzaE1RZkV6OWlRbHBSR3lpOUJwZ0NKSEhIMmZ6WFptcW9ScTBa?=
 =?utf-8?B?Q3VVc0YxendOS0xwczNsem9XWjZ5WmJpWi9UZEt5cmdSbklYTTh4bEkrbWdS?=
 =?utf-8?B?WG9XT0NaTHRRTnJBUEV2VWNLTkFzdHF6cUhndmhPOEtNWlFGT1VUakJtT3JG?=
 =?utf-8?B?RjFWSFB0bFRVYUMvSjdZRFQ5NktFZEhJNGY3b0RZcm0yNHphVlNXVXVuQzRT?=
 =?utf-8?B?bWF1U0hlV056a1RJYWg4WjFMdldjaE4vQ291WXVhdWw3NjN6c2c0aHp0TTFs?=
 =?utf-8?B?MUx2UlF5b05kMFdYRHRibzlNZ28yN2EweWxTUGNvL3dvYnZadFYxUzZoSjlF?=
 =?utf-8?B?WlV1SDNXT3gvaXZibG10NStLS25oVjlYYTcrMDRZdllrMDdKM0RkVVVYL0pw?=
 =?utf-8?B?d2xJKzNKeFBsQmF3V3BCVkF4Q0s3RkJBU2ZJMGJBaHBiaTNhOGloKzRvSmtq?=
 =?utf-8?B?c1kycmxOSlVvMFVBNDFkV2ZXSUNnTzBKL0wvelI4VWh1dndZcnRDUGNzdHFq?=
 =?utf-8?B?c21TNVFIWk9yU01tRHFQY2VUaHIyeEhUYS9ubmg4SUdWa3VoNTE1dFJ4UUpv?=
 =?utf-8?B?TmpXRjNGUmRRSUJSdHcxQkJRSEh1cHgzOUt0SWFyVXI0S3NnK1VkS1NmNDRU?=
 =?utf-8?Q?Rp369jvU15Yg2eys=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2a5413-6bc2-4472-ea1e-08de4765646d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 05:36:34.0095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lrap2NRIC1A49D4VdxIqSAFUPXy5d1SV58TyLfCOMJZT5/REN+wIAz1mXuj5bRI4PHekNQ075R3K4BNigN/Rv07QTH07gh4ddXwAP+F+c3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8913
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


On 12/30/2025 9:43 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Friday, December 26, 2025 10:04 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com
>> Subject: [PATCH] drm/i915/quirks: Fix device id for
>> QUIRK_EDP_LIMIT_RATE_HBR2 entry
>>
>> Update the device ID for Dell XPS 13 7390 2-in-1 in the quirk
>> `QUIRK_EDP_LIMIT_RATE_HBR2` entry. The previous ID (0x8a12) was
>> incorrect; the correct ID is 0x8a52.
> Shouldn't it be just a period and capital T

Hmm semicolon can be used to connect to independent but related 
sentences, so we should be good :)


>
> Other than that
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review.


Regards,

Ankit

>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> Fixes: 21c586d9233a ("drm/i915/dp: Add device specific quirk to limit eDP
>> rate to HBR2")
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: <stable@vger.kernel.org> # v6.18+
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_quirks.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c
>> b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index d2e16b79d6be..1abbdd426e58 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -239,7 +239,7 @@ static struct intel_quirk intel_quirks[] = {
>>   	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>>
>>   	/* Dell XPS 13 7390 2-in-1 */
>> -	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
>> +	{ 0x8a52, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
>>   };
>>
>>   static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
>> --
>> 2.34.1
