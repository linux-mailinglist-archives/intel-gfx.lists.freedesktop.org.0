Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D669A1A799
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 17:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB0810E87D;
	Thu, 23 Jan 2025 16:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aQlFtbIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 519B710E86B;
 Thu, 23 Jan 2025 16:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737648629; x=1769184629;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=OGAQxrp2UidBX+iDzYWlNj9n6WdXudi37FM7d/C/Uvk=;
 b=aQlFtbIEB8mS4+a2kg4PX1lT9qUjwCQHIU8RA6Nvsh0NNKwHbnfFEK+T
 rUxQEY+/9v97N81YtrfiBBK/VCAx85EtXdDsbb6Zb7WlXLbLSmqjcy6iL
 Wiq7t1cJiqmeZp7rx7PMSz/q9YA2uwkER+Fraj1Yp3evjTqzdjQiGuquK
 NkkdZNiMsYAqURhDwPaIsENC3FqU/U9rMJJLhjY4WgIu8BfJAX21QHLUu
 R4CWpoWoOrGm45eBDmgJKMgJREcwrSnYRZc6OxRPAaWVL7njIzgLWhiTU
 VXGgsZpnXfitU9O9fnnehbq6WbtzIZBSnhV+bbdvI+x8mXSWyPp8qdRCn Q==;
X-CSE-ConnectionGUID: /4Md/7oRS5W1EJjZjPu3bA==
X-CSE-MsgGUID: LMHPztyMSwSIXCqgFM/GAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="37361598"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="37361598"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 08:10:29 -0800
X-CSE-ConnectionGUID: o0Mn2S0vTMqfR2QUSr/oVw==
X-CSE-MsgGUID: mCmnvIolTlanaLKiY+eoBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108368475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 08:10:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 08:10:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 08:10:28 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 08:10:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zy4oJ4GtLguPX+eUJLSMSlIbSXQwtY2OiMoms+dihtz7ZkwqlazEDDIruKBRi4QPR8zi7hrR26cuj8VEJecuS3GBtEpKGC/4fL+pULDAOC0wqobFiy1hVncP3IWoornGtDxshA21a0Zqr6ZSOnlo2+Wj2qSIdmgR54J1SpXEPMLt1Z90Q9IBBEq2Rz7IUBq4jiu+kDITk2Y5RCkwxsdNZTOPwFLrSt7MFwGXI7rGBIRZE+Rjr80nq4hQZTz2+qNs20++5h6NB/bGJfpORwrCx0q5ImSKIDId7cRlfx+DXcnqf20O75RormYTtC1n/bIgOnV8tSixCnkHMmNOP8am5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHZk+paGTaMGEBkrYv+K7qZ9ytFf04DfrucM7gPbozs=;
 b=eJ4LZfBJ/0Rjg67fkfMTzdUlrMN3lX3w5a9cwG0KDQ7KBNHn8OBr976EbOnKVKJsibEb4+iSW3EZ3zC8r9UiUKBp7Lbgp8zie0ULMZZu4yQ4Bcsz5clgeQ9bi9bVmQbHALL85jAX+N70tw/wdHsACfegcJ7JsMsBQRpTiW+fZ/4mwCvb3YP2k9MgPj0nZu3JkM8K1mFlR8LQYOSXQxwELyAip8ukcjM0dOu1Ym8Xqyk8QTtHuBtuBXl4OatvyIOqZRb+15YNRb8UeY5oNzPiK+RjvicfLjL1qHlb6KoILVCZywIONfXcvT8s9V9w18z6ytjnte37bzKn8uYtPTtLVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6730.namprd11.prod.outlook.com (2603:10b6:510:1c6::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.17; Thu, 23 Jan
 2025 16:10:25 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 16:10:25 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <08e1dba99b68f2bfc575585ba9f22ee0d1daf852.camel@coelho.fi>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-5-gustavo.sousa@intel.com>
 <08e1dba99b68f2bfc575585ba9f22ee0d1daf852.camel@coelho.fi>
Subject: Re: [PATCH 4/4] drm/i915/dmc_wl: Enable the debugfs only with
 enable_dmc_wl_debugfs=1
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 23 Jan 2025 13:10:20 -0300
Message-ID: <173764862050.34727.8876808159559449431@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0355.namprd03.prod.outlook.com
 (2603:10b6:303:dc::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6730:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f34173f-9a97-425d-1598-08dd3bc8721b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2M1QXZjQmhFQUYzbEpNUUFKQlE4MWxEamo1OExiajZud1pUQUNzUXNVZVNU?=
 =?utf-8?B?QmZBZ3lWcWZMSEdCY05kR3Q1R1ZRNlAvbnJnRGhqVXRkUmpVL1gySzZtOCtj?=
 =?utf-8?B?ZzhtKzJkZUtJaVVyNlo4OVZkODhJYnRqV2RUL0FscFdHbWFxR1NnaDVpbmda?=
 =?utf-8?B?a3pmMG9WVlJ0NkZuK0tPOUdvcC9aZ091R0s0T1drNmV6THFHTW5OV1FoVEcr?=
 =?utf-8?B?bXhBNnp1L05tMkFBaWtGWWliM2YxeWZuYjVvT0NydWtLYXRoQWJlRlR0Q1lx?=
 =?utf-8?B?S3R1TEVIRnBIQVBaZk9sNHlyN05VK1EwRGdPMFkxZWJ5czM5TFdDWmhoRndM?=
 =?utf-8?B?T25JSEk0aFFZVUJISGpMSnlFTjF1M0F3WXdNRGNLaVp2eVBvb2QzL29sMVpW?=
 =?utf-8?B?TG1ER1FzRU8zbkRJeU9oNGxSajVuUjZtRmI5SkxBb0xIYzd1dHIzSmFvN01Q?=
 =?utf-8?B?ZGxTd0tJRVVFOXFkSzNjN0VkTFFWNkxGK0JYMXkzVHU4UGd4OW5oYnowdGtu?=
 =?utf-8?B?NXlGRjdMSnpjRG5lcC9CVGxQcUtKamxTK2E5a1RjRHI2ejJBcFIrUmNHZnZO?=
 =?utf-8?B?bjUvRWsxV0JHT3RhU3FxdSt0NHNMQzBYbVNhZURFc1N5QWwyaEN5MUllUWdj?=
 =?utf-8?B?ZGJ0NHFQU3YzeUl6ZS9pWlRvOTE3U3VNZkJXbmF6SkNvYlA3ZlB6VG5KL3Fv?=
 =?utf-8?B?N3doZktFL2hsVkx1bDJ4azdlVVhEcVNsZktsU1MwK0Z2bVVlWHZRTnBVVDZi?=
 =?utf-8?B?aVFQVHAwaXdCdjUydWhncXdkeS9jd3N5dzRPVXdSOTY3UnRGNmp5TEhzbVRF?=
 =?utf-8?B?MnZudzZDRGZRekZSZzk0RVhhZG5KNE5hQzZaemxpMEJta1RpL0E0d0dIR0Jy?=
 =?utf-8?B?dWp2STU3ay81WDIyYkN5cHFrQ1BFdEZRYVdwbHRsaFhMbS9LVzdqQkxQSXRC?=
 =?utf-8?B?ZDNxQXpXSzA3UzI5ZE14bnMrKzFpZ2NDempFbTZZNWpyREhwSVRNd3dTeVY4?=
 =?utf-8?B?YjUycFRuR2d0Y3k1alNZNWdTcmd2NE9wQm1WbXgrbHBFT2pkbklEcSs5bUww?=
 =?utf-8?B?UkZxRDB4cnVoWWlRQ29DZ01UWDVqcGV2b2NUUnBVTVVYVmUvNnVFOVNlcmZX?=
 =?utf-8?B?ZjdVaVZJVXNkcWRpMFRTMGRSZ0xObnNDeldFTUZib2tYbHpWNUMvb1RyMmwy?=
 =?utf-8?B?Yk4raEpmdGFzWHRJQU5WSU1oem1RWElxS2grNnVCemhqVDJabk92YU85U1BH?=
 =?utf-8?B?dXlidXJ3dXZhK25KVFZUUHE5bk81VThnUmJjVG9pMHpGWEYwc1BHWjcvaEll?=
 =?utf-8?B?MWoyamVpT2s2emcvUFhnRGJqU055b2JmV1FMbm5icXBJeTF3MjZqanpXMUpa?=
 =?utf-8?B?cGNxb085SGdHcDNVTUREQWJjR2JSZEJaVXNRelRTMkRvNTFxZlBiZWgranZR?=
 =?utf-8?B?WHM1VjhIUWhaRlREeWw0ek9FVlhneCt6Y01yWVNkRGZCWmd0bXhpbVlxbWVN?=
 =?utf-8?B?L1ppUFBzUnhnekVadGVvblRKa1Z2YlRpbG5GTHdZd2Vpc3dlQzFpUzFVbk5T?=
 =?utf-8?B?eXlWbGdXRlVLM3h4eGZ6T2M0bWtqeEI5dWQ0SXpGUHNEeTB4bTcxUEFJWmdO?=
 =?utf-8?B?eTU3d0duMU9WN1pkcGNkRUpMcWkrbmhIaHJ1VmtNQi9GNVYyUFc5MHU1YlBi?=
 =?utf-8?B?ZG1ZN2t1TndEQi9zcm5pa0szNk9Pd1c0eURwMHFGMjlvMXZoOUViYzk2c2F0?=
 =?utf-8?B?Wit1ZlpYOGp6YmE0aWoxM2RaUll6aUZLSXNNWmlpWjZ5M3VFMU1yMWJuRmh0?=
 =?utf-8?B?Z2tCeTFTbVc0dmVoRVNUT0dRVDBHZWQxMktTTUVQb1d6d0F2Si9UTkdzWHRo?=
 =?utf-8?B?aFZqa1k5SXBDUDhIZUZhNzJ3QmV2N284cE1wOC9BelV2K3QvZlpSWFNQTEZT?=
 =?utf-8?Q?DmqcE+8n752jeFdD9gNAbjQJ4ZsSf7m5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjF2WjlvRjViTGFJdjJDNmYyOXM2SFRKbTByUzVGdzBqL2VacjJHNGx1Tjl0?=
 =?utf-8?B?NVVWWTkrNStHaG0wS3RaaThyR1RBWHZ5c0FJSDBDLzlKcHFGeFBFYXFDdk10?=
 =?utf-8?B?YmZPa0MzWEpNZytQRVFKRmorWTUzRzBMbGVmOE5sOVdxeENaMEVJN1I2YkYr?=
 =?utf-8?B?eUZqVFoydVR6ZDM1L294WUI0bncrMnZLZWhwa0FzVG1kNTcwd05GMHpUa3Mv?=
 =?utf-8?B?d0FVM3pWam1SUE9rUEJsc1ZYaE5aR1VyangrZDRBc0RKbGM3WlVHb3c5OUdG?=
 =?utf-8?B?aDB3UngvaElaQ0VBeGVCczBFdHVxbE1aQ2pLVnpJRFZJdkVWOTBJVVNRb0dk?=
 =?utf-8?B?TWNsdTE1VGtSZTQzelM2Y1ZkclBWMGVUS1BrMWUzellhanFxdTlneEJlWHBI?=
 =?utf-8?B?K21mOVNwU1NjVDRhTjVOQUNmNWR1NFRnSlF1TFFDV2xTQytkWUxwYnFEYXNx?=
 =?utf-8?B?aGdmbjVvK1NpekpmVTA5Y0c0Vjh6enNiaEZkNlhXYzRkelp2cUNEMXJnNDRR?=
 =?utf-8?B?RVBicC9BQ0phejNRSlVvQk9FSjlJTndKSnFZS29WWktNczg5ZjhzQ2dObGdl?=
 =?utf-8?B?RHJZR1JPRXhDRFZ1dkFKa1ZjMnh2S0NNMFhCbUhhTUY2OG1sU3JmTWtCclNN?=
 =?utf-8?B?cWo2L1YzbFRYSnlTZy9xVnJscGhnRFNVcXdLT3RxRHEzTlZpUmhjYnk4OEJN?=
 =?utf-8?B?RVlNcEgrSDQzWVhPaGF5Q3k1U1Z3NTRQdUt1ekdTK1RuSU1iVXNYR2VyMU5y?=
 =?utf-8?B?NzRqL2Z6WitUWmZHRVlXT2ROc29FZ0VSNkE2NmFickp0a292eVJ4UEE3QmVD?=
 =?utf-8?B?YkhLQ1hscWhIZTVTNmV1ZjJMSWIvQUFseWF6YnNwblBsdldNTURxbzlsK1BP?=
 =?utf-8?B?UUVGcFdNdDVvVlY5a2lPbWFhMlpKUWRkdzM4M3NtWkEvRnZGbEdFNlMyTWJp?=
 =?utf-8?B?Z0lSakRqZzFjenhpV1l3UEFiM2ViWmxYVUIvVHUxNURsa01SYjI1V3hqcUdI?=
 =?utf-8?B?TkNsQTk2ak10WXdIdGFFa3h2c20zb0hnUG9wN2RwdVdmNWtNMWNzbERLVFZL?=
 =?utf-8?B?NlZENGNvd3FiMXhoTjRqVUs4NWE4eElaYzRMU1ZJbUZVckZsa1FpaW9ETXNl?=
 =?utf-8?B?ZmtBSXVQSGN6aHBFY3ZGalM2M04xQXJSYitYbHFIdkx5aHBTUmpsT2IyQU1J?=
 =?utf-8?B?T25PRklWMm1rV3F0WHhlT0JTelNrWGszN1drL29MZkpMOEd3bVgyY0pKUEdD?=
 =?utf-8?B?ZHVTeUcyKy9RUkgzMjQrTnNESjJXL1ZWTlQ1eGpYTzRoa3BsR2RSWDVzUGph?=
 =?utf-8?B?ODlaWFhDeFBrOVNqZm9TVXFzQXNnOVZtQU5FNjBNdmNpVmxhbFdRMTJabDUw?=
 =?utf-8?B?RTVTejc3dU5qVG0vSWxxM0labTFTbmtZNXR6Q2xnMUVsdjRCUmcrZmYrRXE2?=
 =?utf-8?B?ZWRzRCthMkdKbmZtZEhYTDgzanUxVWdST0kzWkk2bjF0UkMrRmM1S1E1ZWty?=
 =?utf-8?B?Ull2RDRPeGU1dDdPK1F4ZlNkMGw1QzJURFphYU1QNGRSOXVpWm9rQjExK29Y?=
 =?utf-8?B?SDdFUGFDUU5Yd0p5a3hoK3RMYVVoV1p6Z1ZZNFRQc1R5endUSVdiN2toK2t6?=
 =?utf-8?B?QmJoL01tVHF5QzJUa2pITVdvWkdabVVzWTFocUhRVXZvNEVYUkR1VjhtYTBZ?=
 =?utf-8?B?WENNOFFGNDFsa2JDRnREazNBNnZxcjdrbXhMa3MxMDF5dWh3UlhZcld5TTlr?=
 =?utf-8?B?Mk9pZGdWeDUyc21ZWmx3OTJzTXlpVWRIZzFnR0ZmejlqK2FNbzdVdFBVUnZR?=
 =?utf-8?B?UmhEcmJoaEkwRnZxanB3MzZtazUxWXN0SmM1QVNkcUtnTDZJamFjQ2NSUU1W?=
 =?utf-8?B?dlZnUkNjbkVsT0hJQmFqUWhPay9Bd3AxWDRtRjFvNTdBN1FmQzd0YkErWEtw?=
 =?utf-8?B?L05ObnZUYms4bVFhc1U3enArNG5BejIzL3FmTzNFc1BZR0xDVGovWWM5RGxx?=
 =?utf-8?B?a0F6azQ2NUdTaFVXSVRHZ2ZHY3QwdEVVTFBhQi9ZK1FFZDRVSFpzRmNnbVk2?=
 =?utf-8?B?dVI3NWtsdXFWOHI1Ym9RYkM4dWxKYnArbkxRMTVndzI4ZTVIRCswMkwzcnlG?=
 =?utf-8?B?SUpWOVgxK2pndmt4Wjh0YlY0UW1JSWdhME5QTlh6bVJLTjNYNjBFTVltWHgw?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f34173f-9a97-425d-1598-08dd3bc8721b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 16:10:25.1739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xmtb1L/MHOjvKM9Wn1P6CbsS82WMrJCBKvcnZ5tw6ofl+sRHFeKyaBSg3HvewP2JKlihXmKoeJoARKUR+/XC3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6730
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

Quoting Luca Coelho (2025-01-22 07:24:43-03:00)
>On Fri, 2025-01-17 at 19:06 -0300, Gustavo Sousa wrote:
>> We use a spinlock to protect DMC wakelock debugfs data, since it is also
>> accessed by the core DMC wakelock logic. Taking the spinlock when the
>> debugfs is not in use introduces a small but unnecessary penalty.
>>=20
>> Since the debugfs functionality is only expected to be used for, uh,
>> debugging sessions, let's protect it behind a module parameter
>> enable_dmc_wl_debugfs. That way, we only take the lock if the feature
>> was enabled in the first place.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>
>Looks good.  With a small optional nitpick below.
>
>Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
>
>[...]
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drive=
rs/gpu/drm/i915/display/intel_display_params.c
>> index c4f1ab43fc0c..bc36d1b0ef87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> @@ -479,9 +488,14 @@ void intel_dmc_wl_debugfs_log_untracked(struct inte=
l_display *display, u32 offse
>>  bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *=
display, u32 offset)
>>  {
>>          struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> -        bool ret =3D false;
>> +        bool ret;
>
>Why not keep this as it was...

Yeah, I suppose that's fine... I think the compiler is going to optimize
it. I can send a v2 with this change.

>
>>          unsigned long flags;
>> =20
>> +        if (!display->params.enable_dmc_wl_debugfs)
>> +                return false;
>> +
>> +        ret =3D false;
>> +
>
>...then you don't need to set it here, and can return ret in the if
>above for consistency.

In the if above, I guess I prefer the "return false" because it is
explicit.

--
Gustavo Sousa

>
>--
>Cheers,
>Luca.
