Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94506B5009D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 17:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 314A510E799;
	Tue,  9 Sep 2025 15:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R5fblaXK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C789A10E78D;
 Tue,  9 Sep 2025 15:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757430243; x=1788966243;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=TXjWwXxKT7DPRV6AskaLJzVLhfQOAex27lPzL+rkBYo=;
 b=R5fblaXKL5P8hn3NPj1yMDpbDffosD8cuz/moCVLA6C4y2CDXcIaNxz1
 D7lk7/unlPwZpuhIVQgY71oCZqc7SMPoTbCkJeduAwiuniSPush078Ztj
 oBiU3nM0VDrdIBtEGPhYmpS56dv+wVQMFVeJhwCJm3HmHHViuK1Nvs35f
 eRf2Xwit1p4JeOynK9PsJ8NsL6gSQUsszb3eMosB8AKQC/XSLCQmA0aL5
 w2VVtBkcweg74EQLgHId2eOtDNHB2mKFW23rQ6fhCYsc5L+VBp4nhS7cB
 xi6dGTUD9NBMOhXAtJT8j4lyUJB4eyd6asyAvU01efWfiUdZE6eUfZzGx g==;
X-CSE-ConnectionGUID: 70tvtP9VQO+0ozZEeQ6q9g==
X-CSE-MsgGUID: CjRJZHDQRH6TItqTzmVPKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="59575233"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="59575233"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 08:04:02 -0700
X-CSE-ConnectionGUID: U0eWHH1WStq5jWmDrVTmFw==
X-CSE-MsgGUID: p3pif+LLQZGtoRQ30sWrzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172700752"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 08:04:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 08:04:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 08:04:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.87)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 08:04:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sy6SjBtWDHFyqdwBbuBQzdAQ1+siLnn0k8zc7ymW+8Mfa+vJbJEYarRzKIST0w2Av7LzPnwDfV/YpENPixfbXqXQpiD/0JlGpnuahaug/TkofHDStkbn5qAlqhwNdjWjhOx3gO9iMbz1iYX4lrn4vkl2mf7H4wPEFFgQ9MXn0mT3McV9tqFjprlEiSEYm6r+T1ym6VS8gXT2K8Xz0bUI47RgBG6TMO8UEJky9UDbo7Kxocpk4rXtqN8gQzYCOUd1OCuJBno84Seou4XGsQ+z1iaBUBczLju4kzluJc4my7rb36XNmaD356eriuaNNFAwTFNRuLMPQylx6z8WnPsbGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gtItZZXRCZNrQcu1y2q/4ZQuckq1j10DIUeapyHn82I=;
 b=ttYvigONFZbJn50XyeHFz0zZUasqJkcrCNUV4LqQUxJ1j1+qZImNvIEN71mG9bBgNygHhMuh9WEQW4GQPcg3ZjTOKwgBJRDpRJi/cA4VB3OY1M/kTXs4GBSuYTNFrOMisVNvImRgpzkffUYpdwzzg4mj7StEYkVu3hF35ne+VE/iQXBqcZ1HcpNDPKoWAVHK+eAmFm9RYixzEFmYpDQkZ+eEz0iwvJaKDIek3AZlzxM7bq6tELtsPP0w9YlEPQvfgyWfpyc7zp7xXIdGGqMlilehgNqOqBgmJg84vSxdhdoxriyzkJ9CEc74/0wMMYk1rcXHNxuRN7kqOFvNJUnd5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CYYPR11MB8329.namprd11.prod.outlook.com (2603:10b6:930:c7::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 15:03:56 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 15:03:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250909094535.4126289-1-dnyaneshwar.bhadane@intel.com>
References: <20250909094535.4126289-1-dnyaneshwar.bhadane@intel.com>
Subject: Re: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Matt Atwood <matthew.s.atwood@intel.com>
Date: Tue, 9 Sep 2025 12:03:50 -0300
Message-ID: <175743023064.1838.6299430690698520828@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR11CA0093.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CYYPR11MB8329:EE_
X-MS-Office365-Filtering-Correlation-Id: 92678aca-a736-4198-dac4-08ddefb218bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmpBcEp1MU5yS2ZrWGR3YXRSZUlsTlc0MFlMeWxUR2Z4WXZRbXFyaGlia1Y4?=
 =?utf-8?B?OGZIMlo0Y0h3QTg3cnlNeEV3dG5xM2ZsKzhzVFZlaVFpK2RVK1BKNVEzd3R4?=
 =?utf-8?B?bzk2NmVqc3lZVkFHTzVUeS8rTWJ4bmllSS9OaG1wSG41b0NwcTZCZHh4ZjVm?=
 =?utf-8?B?MzNTNmIwT3lXQ3NnZW9pNjQ1N1pyQUJHclRLZE5ra0xFcm9FWm9SZ2l6MXQz?=
 =?utf-8?B?SVRWbmxPNkh3cWYyelhhdy9aYVZFbzVKNkwwV3ZHZ3hrcTRxZmpRbytpWk1H?=
 =?utf-8?B?R1dId0ZlVHFybVhiLy9Ld2FNSG1CNlFDcXVyTXRDZ3NwcXJydUY3L0dNSVhx?=
 =?utf-8?B?eVdMeEZNV2NGdGFNMVEvQ3dtbnVDVGV2SWw5RlRCdS9QVkNpcUVKclN0UmhX?=
 =?utf-8?B?MURpc2xnZVU0amN1MU8xZ0VTcVd4a3pyUG5ENE9QNkFuNXJQaEhYK0kvenlo?=
 =?utf-8?B?TmgxUnpEV1V6UFhUWVIrTXNmWGNnbTB3NHN3Y0pWYlg5Vm1lUGpVUlhGa3Nh?=
 =?utf-8?B?bDVMYjUvdkxUYjdIN293UlEwSXI5aE54RzlGQjZYa1loYm41Y08xY2ZHdEw4?=
 =?utf-8?B?U1dRWVgyaTVLNWpnSXRaM1JhRkcrUnZSNzV3UkxqMlkyL3gxK3pJVEhOeEw1?=
 =?utf-8?B?Uk0vS01PNGRybFFySTNIMjJpNW9kTkd0U3lFcEtaN3VJR0Q0TFhkYnREUzZj?=
 =?utf-8?B?WFpDUHA3QjRFRnQzRExFN0ZuYUhEQVlpNTFpdWFsVmVnVGUwMkFUTWw5RGx1?=
 =?utf-8?B?VzBCd0ZQbTVJbEs2dWRIbG1IUTIwUmhKOGpZTjRtS3NpWVU2c1ErSFZTWHBV?=
 =?utf-8?B?QTA2aWVmb1RRa3pocWxqYkNWTlRjRDhUaUFUZ09qakRHUXBWVEJKanlqYVc5?=
 =?utf-8?B?R25yMmVsZ2dCcnRaY21saTJHVDg5dVI1OXAxODcrTUM1dW5OYnlDREZwencv?=
 =?utf-8?B?cUR3eXJON1Ayem1lUnRQRmtuelFkTWhQZjR1c2dVMEdSS0JLZkR4bzdGK08y?=
 =?utf-8?B?QTQvOUVwYTh5dWxsYUJ2eC9uKzhHZGYvNVltVlh4cnZWaGIyNzRnTHlWSEpF?=
 =?utf-8?B?OENFL3haUHVZbUNkT1l2eUMxNDZNRUQ2bjYwVmoxZm5ORjRSWXRtTFdlaXU3?=
 =?utf-8?B?cmJOVW9QZjJsZkFFbWxFeFpSTTdiZGdETGhnMW9jQjhvamFiTHVEY0dST3BO?=
 =?utf-8?B?UkNSWktuRTVXdk1uWHB0YStXZjJIMFBFOFJiSkgxT1EvdHRxNUpCWDJlTTI2?=
 =?utf-8?B?OWlaTW13V29KeXl4NG1waGthRytMMG9WQ2FISzlPQU1yR0ZaMmcvWUdXRCtY?=
 =?utf-8?B?UytqMnd1VWNSamxueUx4Yjg5eGd1UEIweTNWMFcvdzJYU244NXZMbW11REw3?=
 =?utf-8?B?bFNoUTNyMnYxL05UNldtTTlaWnVwbmZXZXlXM1hiVEM3dURtNnlBd1ZXelZ2?=
 =?utf-8?B?eUZzSDJsajFaTTNZUHF6dXJiQ1ZRaThzaXNkbmpSVC9pL2NVWHlXVER3bmZq?=
 =?utf-8?B?V2JMUVNhMkhhdGRGSXYvcjVvamRLdk9QdXZ5SjV2Q2YzeHV2cGRhL1kwbkkz?=
 =?utf-8?B?TzVIc1U2dW1CejBXakMxUk14Um05OEpOVUQ0RDRxZ2kxWERxUlZFd3QvOW9r?=
 =?utf-8?B?cDJoZXdyNUl4TnJoZ3JjRHFXZGdGQVhBVzkzS0lualUrbTd0cGRvQVlveU1a?=
 =?utf-8?B?a0VMNGVHWUJ1YXlEbkxHR0tqcGVoc0IvNW1EbmxHRDdCdHFPV216bytMRjFh?=
 =?utf-8?B?T0dhejRXczlENTk3TFRKdVBiQ09GZEtocm53SzZtWUJ4YnkzVG85RHRyOWYv?=
 =?utf-8?B?bFk2cmg2ZWNnaldDTTZTaEtCNHVnOTRBUVdzZ1h3ZGNDOU1IUmZHbnpuL2ZB?=
 =?utf-8?B?YzVmeTQwWG9GSDlEYkJ2QkRFWEVzQWFyZG9wa2p3dEx1ZStKWG5rRVBwa0Qz?=
 =?utf-8?Q?8utt5OhWaGs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHB0dW05YUhmYWhPUXZLU1daUDVlRStKZHFZYWw1K2FaMk1UWk1XN09ZdXNQ?=
 =?utf-8?B?MDQvM3F0ZldaYjhmWFJMNTZSRUNkbThNWGtYSE81Y21RY0NiTUR4ZVFQMUYx?=
 =?utf-8?B?YmVIazhkTHNSd3NPTFFIV1hPNzYwcXJiSVBUSld5aTkxUHArb1FLVk0vNGhD?=
 =?utf-8?B?cXdEWFR5SjhZdlgwSjhIZW4xRURvdTB6eldCQlBzMGxlOFVZMXJHVk5qUU9w?=
 =?utf-8?B?aWxIaEZ2RTI3OSs3a0lXZ21oVjlyVm0rNXJYMUUwaWNTUyt1QXhrbkhpZmlW?=
 =?utf-8?B?R1FJWjA0ZHUrb1dPNGdWUTRtMkhzeUNLT1F6cjJFaWNPa3Q2ZE8yOUU3T1Az?=
 =?utf-8?B?N2kzSTI2cStCSi9pVTFtcFNrM1BPN3BjN28xeVBQY3NOSjBWdU1MQ2l3cTJH?=
 =?utf-8?B?SlZpc2trK0RDdXFyYnVjTEVxWVRvVnBaTjd5Q1A4dUlDSVRsZzN2ckF5QWo4?=
 =?utf-8?B?dkdJYVV2alhYaW5pZXJqTnJ5SGdsazdjVDFNc29nemFyTm4xaW1hN3JwMnM0?=
 =?utf-8?B?TUh2ajIxR0MrOUhHUi8ySnBjeEdqcSttWnFidXpYQ2RBQ1M0VHZsODBKWFhn?=
 =?utf-8?B?V1U1L1BOMS9pVjVSN2NVcExEVXk3c09pTXhDdFozaUwvcmo3a0F5YWpISmY4?=
 =?utf-8?B?ZHBzbkY2QXgrK0xvc1pEMXdQQTk2N2lYMWFMZjd0aEZ5WE9XMW9URll1Qjl2?=
 =?utf-8?B?VnB4REkwbXp1a3ovYnZMSE9TTEFSTWRacXArUUk1K0VtbWp0RnRWMmdudnBC?=
 =?utf-8?B?bE1CWUxmTWgyeFNOWnYxWGExMUFuU1pNOHFpTE1qZGJGcXRCU0h0TDJHbExC?=
 =?utf-8?B?TkFZWmFTblJrNXhyZFQxd081TGhQVTFuQXA0TGtjS3dxemdUZlE5YXpFb2dj?=
 =?utf-8?B?STNOajBPT1J1V2gzVHFua1FIQWxLSHhhbGl4ZFN6bnMydS9JRit6bDlrS2p3?=
 =?utf-8?B?bkFrNkhycVRaaU9hRXBoMG1zOGxBeFBiZEF6ZnlFbDJFaVIyMVFBMnhNOWMv?=
 =?utf-8?B?THlLT3QrQTdBUWVzcGU3RWtxM05sRDgwdTUzZkh0aFk0ZTVpbGhjRzlneElX?=
 =?utf-8?B?Yjg5NTR1YnR4ZEpZN0hKaThDMTFxRG0vSUE0TDN5ckFjWmFBTUtrcktwalZv?=
 =?utf-8?B?cmNjZkF4V053QWVXcHVqZDlqaWJrUVJqRGJkTE5BSnNzaFFiZXlDeTlSZEh4?=
 =?utf-8?B?R2tDSjVUcXF0c3VUd1d2RENxdUl0QWxQQlpSeU1IMm1OREZYQ05iUzVqVmY1?=
 =?utf-8?B?SGRWQTdIM3ErTU9qUjVyMFA4V2NCdUZNOFBScUJCM0tVOWtNOEhMeTR6NE1P?=
 =?utf-8?B?bmJwYUpIWG9FNlZDUHRoWnhUNHJCTTlGenNVZlYzZmxURUZHUDVsRVErb2lm?=
 =?utf-8?B?eU56UVRPN2h1c2d0ZVliM3NQWEt3SCtCeGluR21TM04vQlBVNUJ5MC96Nzc1?=
 =?utf-8?B?SW96dWJtNjl6cDRsdDNHVXczWkJxS2dKZmtEK041cUNhNzM0YnAyUWhIOVVF?=
 =?utf-8?B?WDhBQ2tPMjdvRlhEMUdvVUErOW9Nc1MvVFNzUXFLT0xPeGJYblpmWXZCbXBL?=
 =?utf-8?B?RW0wRkFDZlNqOXViZDNLeGgxQ2ZtbVdUQ2d2WXVCSjl2SnVTTXdlbnR1eEdv?=
 =?utf-8?B?WUFSbk5IaXMxYWVvUnk2TVp4UzIxK0wrQitYanhtUkFEQnFaWkxESjdtdVdw?=
 =?utf-8?B?bFIyVUQ3d0dGVnJJSGR4VDdTNlZVM25zMHFrOGt1ZWwramkzK0VnWnNQK3ZZ?=
 =?utf-8?B?eG9xQVFLcVFscnNLcm9KYjVkYVJ3MlBuYlg3MkhtK3ZEanFwZ1dKRzZnLzhV?=
 =?utf-8?B?MXN0LzQwbUJIc0pMVVVCWGFOUVNBS3RaRGVGemRQb3YxSlFEbDFSZkRCOWtw?=
 =?utf-8?B?TVpIZlhQQnA0L2s5SEYzT1hmM0JSamlPMm5HUXFYUlduM3Q4bkNvNjZhQzZ4?=
 =?utf-8?B?Q1RXZ1pVbEMyQnRna1d4MklGcmhyK2RBREdHQkU0ZVlRbWpMWkhaWDREZk5i?=
 =?utf-8?B?RUF4UitUb1d5ZjFjdEEyYWNJejExNnYwUFp3SmlZZTk0VVlzcjg4alNCRG9p?=
 =?utf-8?B?WEZRdEh4SmRPMEJUUzcreDI0S1hmMWxPNGs3QS9mUlRjUnVVeW5rU3pNcjVQ?=
 =?utf-8?B?VklZRmpZYXQ3eUVsMGxkTHY2MW53TVNEMWJHQS9yckhXOU1WY0JWM2VJSTVO?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92678aca-a736-4198-dac4-08ddefb218bb
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 15:03:55.7992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vLRYd1mvD5IRWJB1JbUJJ//NP3QEF1eZqKkweqshBPMBXUjcpIXB/UGnu/x1UX2qK+R5qH5hXa6wtAsub2ecRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8329
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

Quoting Dnyaneshwar Bhadane (2025-09-09 06:45:35-03:00)
>On PTL, no combo PHY is connected to PORT B. However, PORT B can
>still be used for Type-C and will utilize the C20 PHY for eDP
>over Type-C. In such configurations, VBTs also enumerate PORT B.
>
>This leads to issues where PORT B is incorrectly identified as using the
>C10 PHY, due to the assumption that returning true for PORT B in
>intel_encoder_is_c10phy() would not cause problems.
>
>From PTL's perspective, only PORT A/PHY A uses the C10 PHY.
>
>Update the helper intel_encoder_is_c10phy() to return true only for
>PORT A/PHY on PTL.
>

I think we need a "Fixes" tag here.

Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")

>Bspec: 72571,73944
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++-------
> 1 file changed, 2 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 801235a5bc0a..33963ad14cfa 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -39,13 +39,8 @@ bool intel_encoder_is_c10phy(struct intel_encoder *enco=
der)
>         struct intel_display *display =3D to_intel_display(encoder);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>-        /* PTL doesn't have a PHY connected to PORT B; as such,
>-         * there will never be a case where PTL uses PHY B.
>-         * WCL uses PORT A and B with the C10 PHY.
>-         * Reusing the condition for WCL and extending it for PORT B
>-         * should not cause any issues for PTL.
>-         */
>-        if (display->platform.pantherlake && phy < PHY_C)
>+        if ((display->platform.pantherlake && phy =3D=3D PHY_A) ||
>+            ((DISPLAY_VERx100(display) =3D=3D 3002) && phy =3D=3D PHY_B))

This is usually a property of the SoC and not the display IP. So, we
probably want to know that we are on WCL rather than display version
3002, which could theoretically be re-used in other platforms with
different display PHY(s).

Also, as side note, there are many superfluous parentheses in the
condition. I think only the one for the if-condition is necessary.

--
Gustavo Sousa

>                 return true;
>=20
>         if ((display->platform.lunarlake || display->platform.meteorlake)=
 && phy < PHY_C)
>--=20
>2.51.0
>
