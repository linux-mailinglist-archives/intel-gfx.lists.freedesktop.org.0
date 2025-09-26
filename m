Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1981CBA52E9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 23:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AAFB10EAF4;
	Fri, 26 Sep 2025 21:13:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ME4rNYOP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDBC10EAF9;
 Fri, 26 Sep 2025 21:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758921210; x=1790457210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ZdIQjLl8y+tlGn6omflYOosXFwQXVEG+ASPD5dRV0o8=;
 b=ME4rNYOP1tmpC3gN7oBNvwEa1gRrJdRXjs9DMe3ExL2DvqtdTQrVRrQz
 NYmsZXDJVzigkdI59mOHa5sIRjBd0aQcftZGTJclHRIREWzs0fpShA2Hz
 RKNx3fBwLIsEVEvghpmcp2+yesWq3Drec6I8OKXxTo0XGd+ilJEw2TMop
 En1nCL02j844MckB7bVXH1/V6HaNjHEk6RtR5eaR+KwoK838jciPyZApb
 yjunVZ2w9WvlfzUgBTDWER0KouvbUIdHgdiq4uOkEUZFABXUQvGf7vnot
 cY4H9o6teLha2egL5yvmK/XNOtik/+3WNRLTC+afCJUsnz4kdszAmZcdO Q==;
X-CSE-ConnectionGUID: rOyJvZotQbu0ig0Z/8golg==
X-CSE-MsgGUID: X6pZ2AqZTLO+Pd54tfRmHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61173159"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61173159"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:20 -0700
X-CSE-ConnectionGUID: 3/ezpgzORqyvvLS9V4gRxQ==
X-CSE-MsgGUID: Mv5uN+D1QOe/5aIxWgGtjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,296,1751266800"; d="scan'208";a="177644079"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:19 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 26 Sep 2025 14:13:18 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.56) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=woaCmkkLZEAgY/UlHsb8AonYKFpECU1tUsBgM7KBqk9ZUox0u/p6F3C1JkoCgCv6isvwRjakl5VSrdlroM/dDvoedXuHUlpjdd89yWXgbp21cWbKHxbrpH4K28/yP2rATKxkvs5E05wsvFfwlCas20A5/peTpsOdNeLxPM6P8d3Dnvu9qQ5mFWnZ89rQpIZ7KC44BQ8spuJHM1uYuSJkaJ3KLLwd1qSLiZCvQ3ZaLtXXiQX3CejmttO470n/7rd9bnjvrVSFjNTMgJ3TaR3CNY+u52QbLsjZqg8POgjafMv+ITIp/2pQrZe4pbAIEq+Ahmy9CL+FC/2J+I0BqKyHmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/v1eFzCB1uo8VztzHEP/cb3WR7Pprs79HeqIscvKsM=;
 b=Y2zLM3kx+/Ik0FVFzAfnNDz8bKZw7H8DlYyGJz37Uyo/GUb/fZwj4BFs7IeWzSZmWZeGKmIoIor9+hUwwNSUyb+L+a7YZvxX0rnas1FL/Y0A3fORctn+jXWe8UXjfgCy+C0J/pAEVHeL1DPS711vr9fIq0Mxoyd74VoiDT6APnErWEgZxlS0HMtYHxOaDr5IypvkOLMrWBEy8wyt3vDGtjoBQrZHKjr+rxwuJFty1slmGHNiPsxZua8PU1OVZoy2Bosa3hg8Ga1bmK2jLykRuvZ4YhivltQBWXJlBVVlwNTliDNc4o5EcxtO/cRTQ+AkA5GCOnyXdUFx1+Ipwh9CnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.13; Fri, 26 Sep
 2025 21:13:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 21:13:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v4 5/6] drm/i915/dp: Verify branch devices' overall pixel
 throughput/line width
Date: Sat, 27 Sep 2025 00:12:35 +0300
Message-ID: <20250926211236.474043-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250926211236.474043-1-imre.deak@intel.com>
References: <20250926211236.474043-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0119.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c6::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7788:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b71c121-310f-46e7-5dd7-08ddfd418292
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bE9WN3FMaHIxWU5nQkRNdUI3dm1GaHd0cHpMS2pPMmtabjJLRXorTy9STlcx?=
 =?utf-8?B?d0NZdC9ReUh0TkdrN05YQUs0NlM2aDJGNkdVNEorSzdHL1ZSRzZiZEwzNE9G?=
 =?utf-8?B?RUhLMXZ6cGVmUklvK3BRWjdPT3d3bC9UK1orR1RocVhpSTgrV21Yd0EvanlS?=
 =?utf-8?B?ZWkydzNJaDZKb3JXUERVTlVXcU1kZk1xZGVTZGRVNVlCZXoweFphS0RSZ0pT?=
 =?utf-8?B?RFpQampaRkd2M1FjOFFJS3lweHNvZWM5bDNFeldxNEkzM0FaWmZxa2pRQ3NM?=
 =?utf-8?B?ek9qUHpUdGtDczh2bkpuUFZGcnNPSnk5WVdYMnJ1UUVQTEZoTW9QRnBQNnFs?=
 =?utf-8?B?UTBuMWFqY0YxTGlBaFJ3dGcvb1RCNkU3NHhQN3lxRzRCcWVZbEFCNURXM0lM?=
 =?utf-8?B?VFpLWGR0YzhTN1FpMU9yNWwzMmxxMEI0enhSdTVxWjEyUUVHbm9xVzI2TENJ?=
 =?utf-8?B?NGl1cW5FdnpqS1JqSEZRQ1RLRVRhdHNqSDBLL3I2K3QvMGJoejFMY1pHUHYz?=
 =?utf-8?B?ZUtSRW1VZkJjNW4xR3lGMWpiRDNwMUwvNEl6bGFCT2xDbDhwL09lZnRqNWF6?=
 =?utf-8?B?cUtITmtwRWRJcUxjZzlvbllJVFhxaSsvK0VnU2pvTFZQM2VOZGluRmIzVytE?=
 =?utf-8?B?R1VEQXNNN1hGNnFkaGk4RWxaSDd2VHAzeHRYL1hoZGtXNkZDYXVSTmRkT1lX?=
 =?utf-8?B?SEZldjd0U0JlVzlMZlJjS054MGZibUR5eTZuM1FyR3l1SWNTc0M1dnlqNjU4?=
 =?utf-8?B?aHJDb2R2Ri9BR2M2MkpkWTRaTFZzN0RMT0YwTkZiYzhKUVo2ajV2SnBaUnY2?=
 =?utf-8?B?SWE2Ky9yV09NMC9zcEVMSmVoSXJxVENOdk9RbHkxWnlkaEV3Tmg3R1QrYkNF?=
 =?utf-8?B?bHYvM1EvOFNERkRiQkFqN2UyRXo5YkhKVWtpK3BHaDdRbWNrSTc2ZGpIQUYr?=
 =?utf-8?B?NFhhMU5RYWtXaExZcDBwSG9pR1Q0MU1RYUE2b1c1U2l6cm00TU5ZTFh6U1NM?=
 =?utf-8?B?dXdPQkxEWENwdXk2anNBY3BBQ0J3bnFyZHpQdEFDQlVVVUxwNTZ6b0lURDhh?=
 =?utf-8?B?YlkvOHF5YlF1cDllQjN3UTM0VDE3KzMyNmFyWk9EL2YwWGRFdXRJa3h1aGZu?=
 =?utf-8?B?QVZPSEFaa2pIZ2g5ZFhwSVRxWFdrQ1hEbTB0MW9zQ0hFdnZ5SXZFNFE2Z2pn?=
 =?utf-8?B?THFFcDhzQnVPS0taalZ2VXpJSC9CS1Z3VGY1MTljNDhBQW53bW1rbksrYmFC?=
 =?utf-8?B?ZkcraTZibGRBa2p0K21RMVZUZE1PZnNveVM3ODJHZlF0VlRLeEtBR3o0RGlx?=
 =?utf-8?B?L3RmUVR0OGR5ZUVyQ3pnWlJFbjhsSnZHbGduOGlUb0tleW9MOXhkUW8vcUQx?=
 =?utf-8?B?SGdQUkdtdjkxbUluMW9kMGhadzV5UWxmWVhwdExjclBybnZPUlAxQnpiY1No?=
 =?utf-8?B?cWs0YTdKMnROd0dNQVdtMFU4aEphSncrakkwRXZrN1JyQjR1emNqV2FqbFVm?=
 =?utf-8?B?TTFZTUhOdEZWRlhsY1FkT0xDcU1PR0plcWl2djhRcEFpRDl6QUkvdmVTRWdq?=
 =?utf-8?B?Vzlnd1k2ZzhCY0I2eUlLNEQzU3hobHJObEVVdmpLQWtSQjZhNnVROTNPUVR3?=
 =?utf-8?B?QlFZNVo0MWphV2xOWlIybWNMT2o2ODY5emdmOVh6bVViOXdIOS9RM0k1V3ZQ?=
 =?utf-8?B?SXJoVjN5N3gyZ3dkM2x2ZUdVRDNpZnZ6U2xOZVAyWkZFM2FrMjlBelZyKzIv?=
 =?utf-8?B?dGFiemVMS0F3a0lTckYvMkt4QjJwRUcyYk8zcmtHbXpNMmk1TFZxNHNhdXcx?=
 =?utf-8?B?U2dCbExTNmhURVd0OXg4TDlySkJNMTV0VEhIb0sxMHQ0emhNMTFjdmFNZTBQ?=
 =?utf-8?B?VVc0UDRVOHVsL3dtL1JMY3lOc04rT2NtYVFmZ1pINUpUdDNXN2ZsUFg1bGh5?=
 =?utf-8?Q?rd7M5hAP8Q8ZohAl+QCV9yJ3ljI0iQPB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVpPN3lncENrMGUrcGVnZ0dqamJGYk42ZE5aNUErQWpMdXM3M1UrcG15L1RJ?=
 =?utf-8?B?UzhGaGJudWZJWnNRbzVLcVlZdG1xSXN6L1pnVTdsNG1OUGZYQnFIQ05LanNM?=
 =?utf-8?B?RzcrYzZtR0tVTXJRSXZPUGtsWFhvUThsdVQ4Z083cFJwa1NZV3pnODR1dUlS?=
 =?utf-8?B?eTE3T0lvby9sUUlnWFNoTkl5VVlEejFLWkh0RU00Ymd5Vzlab1BRZU1SeXNV?=
 =?utf-8?B?dGRUWG92ODVjM3A3Q2oxeG43UVRBWUdNOVpqcHVkdUp0NVhVR05EYTRZcjdQ?=
 =?utf-8?B?amhGbDBLZk9rYjhNdGxMT2J5VHZhb292NXJQYytoN0s2NlE4aWdxWEM4WWVN?=
 =?utf-8?B?eUlZcTF6ODE5WHFpUEJBSXRUWWc1YTlKYjhKbEJxOWNwRlJwNFo5WVNmMitW?=
 =?utf-8?B?empsU2h3UEFYL2NqU0hhTytOclhNOHcrR3JMSVJLaXM2TXR3elk0UUdlY3RL?=
 =?utf-8?B?ZXJCdlNacmJDZVROZUw4YllEYVlURDdzRC9vdFRXNVRHK2ZaS3JJWSs3ZnhK?=
 =?utf-8?B?eDRkNEN1MHBDb2NxdEt3dHF6WnR0U2hxMFoyaUZmMlNWK2RDRlZiVzZENjkr?=
 =?utf-8?B?MzZ2dVV5Q0ZHYjNWYmo3RTBOTDJVTUhmN3hVWnBTZ2NOMi9sZUdxTXA0T051?=
 =?utf-8?B?UU5lNTNTSEVlZzVMbDJ5NkJLOCsxQkhQYmZYc1BUNGpReFpFbGxOenFheml1?=
 =?utf-8?B?Wm05OEJyVGsrS3QzdUhIQlFWaVI0N3BMSVhRdUNQd1BhK3V1Y1AvSEMyWllF?=
 =?utf-8?B?cHVqa09mVFFmL0xkeStCZms1TnBSSC93YlZOUDlnOHkrTXFwQkRSZkJ3QW0z?=
 =?utf-8?B?ZTIxbkVmVnNrRUtCVkxibTluN3VzMnR5ZmVNNXArYndMSTZwWFZTOWJXVXdP?=
 =?utf-8?B?NVIxREFqaEEwUlc5Qk1Ob3pDT0NhR3ZNQlRVKzFXZ3hFUGxrVk1mVVdpN1hH?=
 =?utf-8?B?NWpTRDEzZG5hUEpJbC9YNmZFcUtSOFU5V011Ky94NjZXUVB0WUpjeGt5cStl?=
 =?utf-8?B?WjN6MUdvTDg0T21FeGdNenJIVG1PM0tTV0s4c1lHbDA3VXN1NVUyeVd0Y2py?=
 =?utf-8?B?d1U0NzkzRGN5TXBwVDJYYVdsck9FcWZzS1ZicUtIY3JTbFZmdmpiMDlrdEJI?=
 =?utf-8?B?Z3RLNHVRaEpPWUVGcU14U0JtaUkraExrNGJRb2svUXRkdzMxRzRhN1JhUlJu?=
 =?utf-8?B?SWZKMk1MY0s4SUNLbGxQVkpyTHVzeFJjMWZ1czFwaVdZQmgrMTd2Sk51WmRN?=
 =?utf-8?B?a1IzSklBZTVPUVBKZEZpbHVTYWRCMW4zcTZwNDQ5R2dvOVBqKzQySGk5YU14?=
 =?utf-8?B?eEEwWVJwZ1M2elZVWVJMVmdMd3ZSaGkwbWo5UVdsM09NTVB3Skg5VFNHc1Ry?=
 =?utf-8?B?UnkrOGZFQVhXbmlPeksyNDRTWUp0c3NINEc5d2IzYWN6ZkY1R1Zhb09pRzJH?=
 =?utf-8?B?czhVeXlkaUNDYWs5bEg1bnFwMHJRb2o2eXgzRWZCeVlqSkUzRHZTQ3BmZFZV?=
 =?utf-8?B?S2tZYUxhYklWRndzWS9QN090azZkMDBhSzdINVFXUzJzSEYrVEIwN3pQTGF1?=
 =?utf-8?B?UmJreFc1QzhndEZqcktsaFcxWFJqU0F1VE1MZzNBNXQvVUt0bWg2eU5WbmUw?=
 =?utf-8?B?dkNxamRkc3pKNkMxRThNQ2kxMTFTM0Y1Vzk3SktFdHdmQ2VIQjFySU9aQVJI?=
 =?utf-8?B?YnVVZmZsekRlOEgyUkdJRWRESU1URFRiVFZyZXhaMWhTRnlzREdWRFhJRS9m?=
 =?utf-8?B?akdyUjBZd00vR2c0QTNOcDRTdjZ3VXRWdEQwaldpTmtKalNLMEpMUjJLQm1P?=
 =?utf-8?B?dEdINzNKWEQrNGdXbXVUVTNNQ2hVM21TUzBaNkthS2xvY2tuY3hzWXo3QVR0?=
 =?utf-8?B?MTlqVUw3bDlzQjZKVnh5eU90dTNjMDRMSGcwTmdxVEVPT3NnNG04aUpCQWVp?=
 =?utf-8?B?YVQxaVNVZkMrekcrUUV1eVpkdFphdEwzN1dJeTVLOHNlajFpVFVwWW5GTmRy?=
 =?utf-8?B?WXRpL242V2cycjJNdWRROFFwcTlMMFNBOTUzS1dYNTU1RU9jVTVjWi9ja1RE?=
 =?utf-8?B?cmdCVDE1YkprWUsyeG53dkpaN01UZ3FCTk1NMXB4QkxuUTNNTVFHZjNaRmdh?=
 =?utf-8?B?NE9jSkdIMERGeUp3Kzhwa2VTb21lYXR6K1hJZ0FKaTF5Ly8vR2NHbm9LcmVt?=
 =?utf-8?Q?c9o6Ce3WDoIlFVNoXoojwTlMKF3IEpETS7ry5393ncQd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b71c121-310f-46e7-5dd7-08ddfd418292
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 21:13:16.3534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 30KTY1rbp3Uv8FgJTuL2N9578coE9SVfUtqoarurL64ce8b5bvrGOA47gD2qeUxp037e6bcg7zUkJljITr5AKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
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

Read out the branch devices' maximum overall DSC pixel throughput and
line width and verify the mode's corresponding pixel clock and hactive
period against these.

v2: Use drm helpers to query the throughput/line-width caps. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 51 +++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 029c47743f8b1..99d2c31236928 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -552,6 +552,14 @@ struct intel_connector {
 
 		u8 dsc_hblank_expansion_quirk:1;
 		u8 dsc_decompression_enabled:1;
+
+		struct {
+			struct {
+				int rgb_yuv444;
+				int yuv422_420;
+			} overall_throughput;
+			int max_line_width;
+		} dsc_branch_caps;
 	} dp;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2dcc20bcfa0ba..9de9356302f97 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1016,6 +1016,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
 
+	/*
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output.
+	 * The RGB/YUV444 throughput value should be always either equal
+	 * or smaller than the YUV422/420 value, but let's not depend on
+	 * this assumption.
+	 */
+	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
+		return 0;
+
+	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
+		return 0;
+
 	/*
 	 * TODO: Pass the total pixel rate of all the streams transferred to
 	 * an MST tiled display, calculate the total slice count for all tiles
@@ -4180,6 +4194,33 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
+static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
+{
+	u8 branch_caps[DP_DSC_BRANCH_CAP_SIZE];
+	int line_width;
+
+	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 = INT_MAX;
+	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 = INT_MAX;
+	connector->dp.dsc_branch_caps.max_line_width = INT_MAX;
+
+	if (!is_branch)
+		return;
+
+	if (drm_dp_dpcd_read_data(connector->dp.dsc_decompression_aux,
+				  DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, branch_caps,
+				  sizeof(branch_caps)) != 0)
+		return;
+
+	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 =
+		drm_dp_dsc_branch_max_overall_throughput(branch_caps, true) ? : INT_MAX;
+
+	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 =
+		drm_dp_dsc_branch_max_overall_throughput(branch_caps, false) ? : INT_MAX;
+
+	line_width = drm_dp_dsc_branch_max_line_width(branch_caps);
+	connector->dp.dsc_branch_caps.max_line_width = line_width > 0 ? line_width : INT_MAX;
+}
+
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 			       const struct drm_dp_desc *desc, bool is_branch,
 			       struct intel_connector *connector)
@@ -4195,6 +4236,8 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	/* Clear fec_capable to avoid using stale values */
 	connector->dp.fec_capability = 0;
 
+	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
 
@@ -4209,6 +4252,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 
 	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
 		    connector->dp.fec_capability);
+
+	if (!(connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED))
+		return;
+
+	init_dsc_overall_throughput_limits(connector, is_branch);
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
@@ -4217,6 +4265,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
 		return;
 
 	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
+
+	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
+		init_dsc_overall_throughput_limits(connector, false);
 }
 
 static void
-- 
2.49.1

