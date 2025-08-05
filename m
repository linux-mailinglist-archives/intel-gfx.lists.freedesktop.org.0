Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BB4B1B2DB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40A210E660;
	Tue,  5 Aug 2025 11:55:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHp1L1Ik";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED26010E660
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 11:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754394941; x=1785930941;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=qGGEvs/44W0Rg9n68X5XeK5/cKlFs/YsoBluOh3+K6s=;
 b=CHp1L1Ikvkhhn38fQiw0qDjAOFGtXZi/oGraCp5qrknUe4WglzdpmzCW
 nmzbWB8WErx5m2qx+PKYHZ5K8HuqWnhdsGR5IBO79RPm4DiInr6nTtPY4
 cjHJT7B6itAEfR6EaEcdY9bIUO3P+BEoRcm2P7m9rpAGJhCsjLplqtenI
 /ZVVIyX1boKkN3+3TNoqSETQfBFC61m/5CYuLGjjAlCi7rMZbF1vugJTg
 scTQvX4ssmBq9qy1dfyAV8xuXxAyMKt9XrAVgS354BoBYOdxp3jWOAMJP
 rW4jfE2eso3Ume4v0pWY65l8k3LlDZkn2eb1n0Ger48z2zRr27nipU0X7 g==;
X-CSE-ConnectionGUID: ywFowi+tT9y7TsOPor0REw==
X-CSE-MsgGUID: Lk5olruRSaK7Sc3KBy3Q5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="82132916"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="82132916"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:55:40 -0700
X-CSE-ConnectionGUID: pPC5oTyGTAyjqHz5fd5ytQ==
X-CSE-MsgGUID: l4EIuaqPSeOIqwLPYpjKYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="165236639"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:55:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:55:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 04:55:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.42)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nIq5U9jgm5KSCKQ7L2AkEpefJwxzIrsBKWVkemW18C4/Xqa2LiXn3v7kEIFRTegHMo7V3eaV0ha090AeesV7T09Y0UJOQ40Kw0QngFWk+DfU7ho9T2fEMOJK7XnmPcxqa7HKYI4j3QWKU4NQrfp/lvj66xaPZxvlS6ptbTRi99cComK5LVMYlN0RO229i93tFOk0+z5wuQo4zfObJUpiK3fF7r0691wjLrjpcGd0IXxTeOn+BBQM8pihWoYs27J9INBCjMbQMa+SkYFVq6xomE0eShqcLxj6pndWOPPtKQGKXcWhC6RF2UVwP/ASgfO1ZnE46Hkz3qeBeknLmNgnMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qGGEvs/44W0Rg9n68X5XeK5/cKlFs/YsoBluOh3+K6s=;
 b=L4mZrXVaS+Ehl5+Pk6c+9FsdzgWxpQzj7WmHQ2MWm8wFqkLMxzt4PH1VHWlzjbQJovJ55gFTw3AlPdMjWtovJfrS9bxecoxuQUpwj5vkrnDyc0LSOeiJyTRtqFRdszmH8A73/mCSFVX7cWI968NxsyRfmOZb9mZa7Bf2wEhYklFBIaxwZx+RYZHf08vPKBs9bOszLwOto6DRK+izf2U0T64798RinjyDjYXAvurvlw/HLE4lKLOQdk1QH2y2o/u7O/a5I5/AbQj8kbyK3GpYFYlN9HbhbLbRxrEMPI9gCmhPrX1l/qNU+HSiGclEr9Jb0wtO95396x9vFf8lExpgHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Tue, 5 Aug
 2025 11:55:31 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Tue, 5 Aug 2025
 11:55:30 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 5 Aug 2025 11:55:21 +0000
Message-ID: <DBUH3GL0VCBJ.2TA9NOJZM0OFM@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/gt: Protect against overflow in
 active_engine()
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
In-Reply-To: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: d14b83a8-6f98-4d3f-631b-08ddd416f9b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZytubDVQdjE1TjJQbUx3a0lkQlFiSjJjLzRPZmNYaGFtcU16bXMyQzVVMjQz?=
 =?utf-8?B?RnVMQnI3My81LzM4MWROdWFTMWthS0F2aVhWQlI1M241dy9zazRkWG9kY3pr?=
 =?utf-8?B?WkZGcUhZU0hlWnFWMHhjYmNRWTl3eG95VnVlR2VzdFZUL2hIaEdocG5ZcjRu?=
 =?utf-8?B?bmdQekpSc2VaZXhDNC91UkQ1RkthVzVoVExmRWpuWlo1UWdxS29TamxQemVj?=
 =?utf-8?B?NjRIN1RSWEJBcFgxcmI2cEd1dWpnbndHNkM1YWE5ZXJvSWZiQWZwZHdhMDVw?=
 =?utf-8?B?OGhuVGNvS3lPbER5MW1yOXozZEhvOE1GMVlEYi9uQ2NKQ0xnQTNMZWtBNndz?=
 =?utf-8?B?YTA1NVZISUFRdyt5N25UMWU2cDRoalhBWk1SK2ZBa1Z1ejBqclVEY2N6ME1Y?=
 =?utf-8?B?K09yK1JiKzJtRllZTG1CcUtTTmJmek1rK2NVQ0wwa0w2bW5CK1ovNjdDZ0h4?=
 =?utf-8?B?SE4xZmd4SEt4cEpwNFA4aWtIclJIUkgwRGZ2M1dxYmRqK2ZWdmNOV3dVWnkv?=
 =?utf-8?B?WFVaS0dWd2t5TjkyRFJnVTd0UXhZYTRNZ29VNzlDdnFia2VYWnlHSGN6c0c0?=
 =?utf-8?B?a1RNYlFTWnVyR1lXZmc2WDRhRWFWTHJRSXFzdkVLVFRNSXQrei9VSi9id3ZD?=
 =?utf-8?B?Y01nZlVHQllzeEdJNUtZSnpQTmMwbHJsanBzSE9aK0NwandCT0Y4SWF3Q0lw?=
 =?utf-8?B?SjdqM2ZZUjdtWnRKSCs2cWxZRmtCZVphZU5LWmtEZjVsV2lmdmNqcERIckox?=
 =?utf-8?B?dE5JSnlxNG9kSDVNemtFOUZ0Q2t2Rk55S1RxbUFVeVVtT3pCYkU2dmFQa3lw?=
 =?utf-8?B?WFN3dWJiaGYwUXV1Wi9QTTZsTERKM01DdTVIb2U0WW10bzYyRjVva0dtOU1p?=
 =?utf-8?B?b3JhMU5KcWZEUlRXcmYxNUxLZ0FHcHY2YVVCdDVtTVRPcEpqU1ZRTGVHamxG?=
 =?utf-8?B?QlE5dXo5MHhzVjZyUVZVYnJIcjAyUVdtR0JHbG9RSExyU0xGNVJZby9LNUo2?=
 =?utf-8?B?Y3VtcXVaWCtFTXZKMURkSWJOK0pLODZ1bTUxZkY3NEg3UHF2dUQ3VzEwUDRm?=
 =?utf-8?B?cFJjb3VQdDJQbXV4ODFIZE44cnVvRjFwemppWCtBZnVwc3l3ZVAwVU5maGhC?=
 =?utf-8?B?SDNQQVZiZTVSeDI4bS8vaU1rY3dFclBQR2Q4SkE4dDBFSE54VVd6bFhEc2dn?=
 =?utf-8?B?MnFtM1h4bUxMbHZPSjJwMnBDUmtNWXpXT3AwTXM5SXU3UFJ3MXcvNStwOUxa?=
 =?utf-8?B?TWsrSzN3VmJKVUdtdFVva3FKaC9OL2RNdkVscWdpQXIwTGhldkQ1UGVGZnNE?=
 =?utf-8?B?V2dVU0JnNHJmTm1Sbm9HU2F5SnFTdHM4cDhBM2NzNmU4a2lFWTVZR092b1pW?=
 =?utf-8?B?UzlkTE9vRkxRekw4b2YwanVMWi9vWGI3NytOd0VhRzBpelFGRS9TNForRkRW?=
 =?utf-8?B?aGUrRWQ2WFJKSGgva2FtM09QY05VYWE0MXN2UlpsRmZsemU4SG82MmFaU21s?=
 =?utf-8?B?RkY4TGovSlN3NU5BdXJjM3VnaHRsWEhxVmtETHNmMmdhZGlEUm1HbDlHMmpz?=
 =?utf-8?B?ckZpcGVQeU9TUUlhaXJkeEl3SHBQbWt6ZVdMMG5hMk9lcWdDK1QremRFTjVJ?=
 =?utf-8?B?K3UycXBnYS9YMFhCZml1ZmhTYjhNUXJQUm56S01oRWU5dnlIei9SM090OEZy?=
 =?utf-8?B?Y0N6Y3NFVE9jcmgyOTZjZ3Izajc1WXdGRHhIemcvRlNva1lMSVplRXlxbWdF?=
 =?utf-8?B?TmM3ZGxnSkkzaXJiNnhnU3R6akRYSkpIMUorZmJvT29qWWNuUW1jTy9BL2lt?=
 =?utf-8?B?MDdFWDQ5bEZwOEg5YkVnZHVYa0diNFlaSzJMbXkySGV0WHVtTzR3WnJCbEw3?=
 =?utf-8?B?SFJDd3JMdXNSU3hKemlJVjFZUzI2L1dGa2t5MGJFTTQ1aWNRQnJEbC9aNzJl?=
 =?utf-8?Q?2wqBE4+A2uQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkRNY2FqMnNLSE9Zcit3TVVKbGVCdDFrTXpoUWxrUzJsTzVZOVIyaC9oVklD?=
 =?utf-8?B?ZG5zOFY2VmFJL3hwa0F5VGVzNGlhK0hxMkxRZmJad1h0RkZtODM5cUNDY29W?=
 =?utf-8?B?UkZWanpkWlUxU0FSYW5paTlBRklqcUJFbjI1T3B1aWJBTmhHUjZydm5saEZZ?=
 =?utf-8?B?TTBFSDBkeTBxdCtqd3FzTkxkZTBlb203amFQc1RlaTU2bXgweW9vWnFZMlBT?=
 =?utf-8?B?UDNzM01VNVpGNjduMzU1VGNhaEZHVkF3emZnNms1R2ZiOVYrSWhKc2ZDbERK?=
 =?utf-8?B?MUdhdW1raDJSVW5GaDdOZWh3c1dhZ2hhMzd2UmlqVkhSZHZxRUh3SjhDY1Z1?=
 =?utf-8?B?MjBQMFYwOHpNR3ozODYzMGVXV1VIdkdUYjAvalYrakRtYmpGYWdmajhTOXRR?=
 =?utf-8?B?NUk1UndCd0diOVc2SUNXOHd3T3d1YXNnZzJwNVYybHhDcStLT2syMlR2SUtD?=
 =?utf-8?B?RlNPRGR2NWE1cVltSEFyVGNxWkNacFVsWGRhRHRMRHFScWh4dTl5ekU5RVlq?=
 =?utf-8?B?Vm9jVHpJdktGZjlkeUF3cnF5VkI1ZGtLM1FTV0lQdEc1T0J6QnVod25RTE9G?=
 =?utf-8?B?Vm82MHR0VTdNR1RqT0hJRFN1L08wN2F2ZFd4Qmp3MjNBeU04bXBwNFZHRWNO?=
 =?utf-8?B?dVlCYVkzdnMrcWtZa3VOV3NqMVJva05kMkpzZFJQTHBBQmw2L0JsSDl3QU5G?=
 =?utf-8?B?a3pTb1czN2RjOWZMRUFSbzR6aG9DTCs1MStpRGlzaW5IbFdlcjBoTENaUkZs?=
 =?utf-8?B?TVhsTUtXNCsyTTVzUWdScUNSSzFhTVNVNE02Q1JycFFJSkY3ZHBxK2dNcDk0?=
 =?utf-8?B?VXQ1R0RiWkpKMmFhTjJ5ejZDS1V4QmNzVDRkeFBwMU91ZzgwSWp1V3ZNcTA3?=
 =?utf-8?B?SXlhWndXNTAzdWw4eHBPVmZIRXcxQ1ZZT0F5MVFleW1WQjJXdXpGQlBqN1FR?=
 =?utf-8?B?UzRNT2g3MnJUS05tZW9FMjJ5KzFhNEpOalRsczlrWVlvVU8xWCs0S09iaHFN?=
 =?utf-8?B?aTRXTEZNbm9qT2Nsa0FYeVlwdkNySWNwTGJmUkxrb3pRZmdhbFRTL3Q5MzFs?=
 =?utf-8?B?bVI5Q3lJYndnTVkrdzhuTk9OeC9SZjNyTG56a0Q0bUFwMmlWbUlyNkdmc0xy?=
 =?utf-8?B?YUo5OG91QWFxSVdOY0JxanZFbHdoODJLM1VWMGpyeU9oNDNqaU82dXo0WnJ5?=
 =?utf-8?B?ZmNNYWRzTEY2NUh2MjBTYmRoaGg3OXRRaGZ0clFPVUl2bXJ1dlRYVkdvcklq?=
 =?utf-8?B?VW5mRmhGcTU1VS8rMWozNW9HR3R3NWl3SjNKcnNMRkR6RWZNZFZFdTI3NDVq?=
 =?utf-8?B?SVdDVlpteVI3RlVZMlJoVWQrazR0amJRYzNHNmEwd0JabTNkUFJGNFJCdHND?=
 =?utf-8?B?b29GcUxVZktJbE5WMzVRZ3Z6M28zYUJzazJsM2ZxQ09keUJLR0FzUC9BNmQz?=
 =?utf-8?B?SUJLdmNLVUJpVG9RUW0weFJkdUFHaXJNdEdnMjAzemRsV0xJTjBvTVFoS28r?=
 =?utf-8?B?RE91bHVFYjlVNTBSeXRmNW16eUxVT3l0UTFza0hBY1BtUFpBZXlKV29Wdmtv?=
 =?utf-8?B?QlRuMVprOW0zdGtRemFMcVltWmw1Y1A4TmFBNWNSWHdNbk9oM2w5ekdIZE4y?=
 =?utf-8?B?YW1kNFZMZXQrS05pME9La2ZPdHFVdDdOdFFVTERrajlHbzcxOUdxZWFpSlF2?=
 =?utf-8?B?S0tqVjFaeTgwMmU2VU5NTGh5VzhudVJMQ05jeWNjdjEvV1A4NVU5dDFGQ2RZ?=
 =?utf-8?B?OHl0eTBJUDNMYmJoUGxkTEQyMkxNUU5SUjNpRXhWNWFQdVY2OUgwNzJVMzFT?=
 =?utf-8?B?Q2ZZSmlGSVFpZHI3dVZndkpvdm9KUlRYVEdIei92bGFMalBzUzZVd01ybDRl?=
 =?utf-8?B?VzJYQktaSkpSSTdPdWs0QXU0SkYvWmpnZ1BEaDZZejNCZk5zWWNvM29kQjZK?=
 =?utf-8?B?WTZQbml5ZU9aMEFSOUZ4OENoZ1B6S1orMloyQmFKQTdJQzdMaFVaOWdFZGNI?=
 =?utf-8?B?V0lWV0xQNnR2Z1FndSszcUtqUXVreDBxVFRlWk5lU0NGekdHMUkxcHRvMHha?=
 =?utf-8?B?clBjeXpVM3VnUVFCSWx4L29wckNjN1g2MnVyYW1OTE1VNWY4R0tzY3daT0V2?=
 =?utf-8?B?QzJmczlDWDVuWEU0SjFqdytlcXFOcnd0ZjFYSkpBb0ZIb2dGNXN5alZEV1VJ?=
 =?utf-8?Q?IysEnB28BrV0PS1BL7kYFO0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d14b83a8-6f98-4d3f-631b-08ddd416f9b5
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 11:55:30.4548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3hgVhhfa+soOtuvMTs6l68DO+3t5+/cY6plwaI9AIdEYHqdpxjyI+hpcefGDaIDLiylIN82C5o4VKcgwjBbCLVB8kz78uaPt1N0GrXCSxMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
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

Hi Krzysztof

On Tue Aug 5, 2025 at 11:41 AM UTC, Krzysztof Karas wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
>
> Protect from overflowing the variable by checking for 0 value
> of "count" before entering the loop.
>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--
Best regards,
Sebastian

