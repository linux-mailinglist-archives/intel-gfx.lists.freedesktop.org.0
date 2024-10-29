Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB949B447A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 09:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 446E610E3A7;
	Tue, 29 Oct 2024 08:43:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpMhoRq9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3838910E3A7;
 Tue, 29 Oct 2024 08:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730191429; x=1761727429;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZB3Cq8K6p4VKpEqTdu7htlYzKjQASGDT5xZ5bdJWhIE=;
 b=mpMhoRq99521TAIHIj2PbXb0GYfJTJX31i2/KgEEy/9Tt8Nf5TGpMbxJ
 xWWivkP+/2PDZwu7dJHjc9MZg2VHXl3+MAkncHa/EJBREdRbgrN7AXpqa
 fFZrwf8P1Zmoh+bslKdhm2739qzYElUHPZiOidYDLB9ruE5RqsxFH9rwW
 LLWaupxorei6+z12dooHlckz9FKyE7f6fM2M2jQ+ph7UkhD64lDpGpLGa
 xfdDyq9rdPaOwsFUrtOiY80wj6Va1+pNZaXq3nfpa92cAH+heUsRc4n5u
 dxlXI15Fq/g1ZnT4oUdlaeN91aP6s7rFezU+DguEQp8vgttJz5ZmqhBqG Q==;
X-CSE-ConnectionGUID: 6484oqxNQFuNaZN+NpkXvg==
X-CSE-MsgGUID: ZFgyMFatTcOxM+i7pK665g==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33742130"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="33742130"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:43:48 -0700
X-CSE-ConnectionGUID: o5WU/a6aSWyxIQGopN1f5g==
X-CSE-MsgGUID: 8s4yXx2NSg6t7gnLgLICAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82316099"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 01:43:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 01:43:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 01:43:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 01:43:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bvb9Fz5z0SBQ2eJ8r66QuOwGkRanmhqyCEdtTRz/x1rr3poCnWZJ4rtGNuBVyZb2BUX52n/ntgwKiwPbS/Y6+51M6QQBJsqlqcqyac+ZBv6V2ornQ+73LqAJuq3bm0fVEc/HWy/9sYkTvfNoIITS9fXmepUEIQSu4tHNVj5nD0sZIDm9fkQUKa5PhRTfq4M0RFJoROnY4REMGnPPTaVnzjBvLvo0Ze7Xu7tNSSBEtVFQKLY2jkRVwUb2Z6c3i5W+rAALBWx+ErjicO0X5/hl6wUVnGFKjBJgZqhCiqaN3z7mlXuNlrc92ykuxMsd+CmYngf/WSgnwvB4kVfSHrtpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vqOixamwbF0gWOj2JfwaBqQylsaJ0Su1wETkz6LO2as=;
 b=e+yrtJrEeAW4fisaDwgpkUwdpqJeyIlVQ3iT28pTj3/0k4om4hGKvuV90w5zZJpzkx86IYl+ezj/0ccfCoN1+XvQ6D2RKS7M3bf7JlURY7Qpm5suatNeGZhC2yZiAPaw0YlOUIdQJ0DxbA5Ct2Wn9CRWh4rkUXYZ+voRgLZYTdMWqeZglp6+fkuDI9rck333V83pr+uKE26D82QGVQfQiye+qlntLZu4eD/48ihMdSJOcmqArcE0/f7h3JwlFNxHqn6xmPiuH0WlwYZF2MdjdhqX+Y1KriIrNrb48j5hBdnkLCAUpY6s0J5mtsEB1K4n7nhHHKvkr0o0jwLvVDmbEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by SA2PR11MB4857.namprd11.prod.outlook.com (2603:10b6:806:fa::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Tue, 29 Oct
 2024 08:43:02 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8093.025; Tue, 29 Oct 2024
 08:43:02 +0000
Message-ID: <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
Date: Tue, 29 Oct 2024 14:12:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20241029052603.215853-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241029052603.215853-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0184.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::13) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|SA2PR11MB4857:EE_
X-MS-Office365-Filtering-Correlation-Id: b7f7fec7-4f37-420f-afaa-08dcf7f5b2b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWtvVFBkcUw3ZjE0b0JtcmF6OVozL3Z4c1IvVHN0SlhGbHJ1d2tRNzJFYkY1?=
 =?utf-8?B?VHc3WGg1OW5ibzN4aEdobml3MEUySmh0bzRCS2VRRDVhU3FwSDlqM0x6ZG1a?=
 =?utf-8?B?ZitDQzhnVVNqWUZLem9ITW9kejNKd3U3dE5KQXJVeDBHeVM3NmFmQ0ZzWG0v?=
 =?utf-8?B?SXVTNVEwL0tQRnJ0ZGQ1aVRRUldoRnRubXhhZ2kvdWtVV1ZlUDhiMUloYU9r?=
 =?utf-8?B?aExUa0hhcEpJUkRQcmRjc0w1YWtwT3pacXdKT0xTbTNnMmFjUmthbnBVbTRU?=
 =?utf-8?B?b1c1YWR6N0N1dmt2K3Z0QzR4OEh5OURONjZQdFN1SUoyZU9ZUGNvMzhZUkNj?=
 =?utf-8?B?aFpkQTU4NmYxUklsTUx0anQwTk5YTzdPNlZSeWtWbEZxT1hDeXNNVlU5RlJ2?=
 =?utf-8?B?YlpJRkh0UnZJT1VXQnFxKzQwWHQwNkVkNW0rbWJjZDJlOSt4T0V0dTBzUmhP?=
 =?utf-8?B?Vlhrc3hpc2tPbk1qYmh5N2NzZWp5dmJPVFhhVU4wNFRwMllSVzNtRzI1ZDZN?=
 =?utf-8?B?ajlwRzEzMlViWUVjRTlwVGpYbW5lVlUraEtpTkJKQkF2MlMzZnM2SE9iUWY1?=
 =?utf-8?B?NnRBOXFERkZnUG9RQU00VDdQNEhlbWNJRm4rbHQzK2s3YVl5QUdNZnFzZVdj?=
 =?utf-8?B?cmhFeVlMRUVDQmxIM0xkcnFNVmVIRmlFcFFFOTFvazZTZEJ4bVAweFVodURX?=
 =?utf-8?B?eHFzQjBzM1pNK1Y0SGdFTHVKblA1SW5pOHZ0QXF4ME8ya0Y3S1V6Q0lNYzZS?=
 =?utf-8?B?ZWp0R3pCRzUrSk96QXFpS0hQSmNha2FkeHJxc0xVV1c0UWxjMStWVVVBdWFF?=
 =?utf-8?B?WGJhTWJ6ZlVEQTRna2kvZXdyL2NnajJTbTZJWms5OHpVdGZpa3d5TW5NQlBN?=
 =?utf-8?B?aHFha3JFOUlKdFVZclNvQlczQ3I1MFZQMVRQUjdIcE1NTmFuSGthcUNORy9J?=
 =?utf-8?B?SXJkeWtPUjlvbWdMR2VXT3drWlo0d0V6NFBWZG8xNFoySXBLdms5THVCL0li?=
 =?utf-8?B?UUVqaHpiV2FUZzB0LzFEamNWNWVKb1J2VE9UWkF4aG1TUFArUWhCZXBHR2xq?=
 =?utf-8?B?Vko2SWJ4S2UrT2JJVzY1YTdqbk5LM25DVmdaY09nNUtFYzNaN09MU0R6ck1O?=
 =?utf-8?B?SmtFNGNnRmRwbzlpNVlvdUpWb3Vva1k4TllvSG9QVldjeUc5RDQzSUt6b01o?=
 =?utf-8?B?WDZ3YTcrVjBMSm01L2dObnFiRGJNMWd6aUIxQzJLdzdHWmF6ZlZKNEwyUFVX?=
 =?utf-8?B?eXduNGY2U0hPL3ZDNXROVm40aTg4T210Mm1jSzkwMW11Nnord3pEaFkzZTRz?=
 =?utf-8?B?UThZMUxHaHZZak8zN3RPemtOQkZkbS9rNEZXVnpmQTFodThmUExJQUx3aHlD?=
 =?utf-8?B?UE5FMGFIK0ZoT1VxVFY2NHRGUkc4QVV1Q0YxWUFWY0NDT1E5VDg3eXMyNXBn?=
 =?utf-8?B?ODNBWnl2Q3R6alNidm1qK3VKbER6TTQyWjlURlRZN0Rtay8yaGlJazY1MThr?=
 =?utf-8?B?MmV2L2czMmdXZ3g4WmtXaDNjaHJvRWVrSlNQMzVKZkQ4Qzk3OGd4Vzk1dUIr?=
 =?utf-8?B?Z3hoRVcweFp6aXhIOTNDWSt4YU8rUHpzRmpsQ1RoeTl5RHN0NUp4Vm1yZmNN?=
 =?utf-8?B?Nmszd0xxbjZ1dUdBYTlxcHMyV0FqWDBheVB2TTBOcWpWcUtKODV3czNWRk02?=
 =?utf-8?B?c2R4aUpuNlFIWWFBc0dBNjI4dzNXcWVHQ1VoT084MlpYRXArcHdtdVFwUjFC?=
 =?utf-8?Q?/AnBGSTdtX0fhSYeIQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHRZeURhc0dYKzAzWHZxTk5vOXFnYkJtVXV4REJDdXNUK1FDenZiUWdHZjlV?=
 =?utf-8?B?Rk5tTzNJb0tDUVMyK1hHbVVYY1dVOFJDVko5d3VIYTlUdXBQS3oralRnL0tS?=
 =?utf-8?B?MWNsUUJmN1BMWG5INjhnQVdrQTJXRW9VSnE1Mkd4L0Q4eXhhcThJa0dGQ3cv?=
 =?utf-8?B?Zk5TSm5TalZWdkFLUWdWdnVGNWtTdkFjMUdDU1FwdGtRV2NscVlMdWFvUlBM?=
 =?utf-8?B?VUs2cFdjTDBJSU1VejVhemdkcmpac0ExZVFKV0hsUFR1eGhnNGZjM0U2akpl?=
 =?utf-8?B?THhrOUNJODhsY2ZPMDQ5dlZZRkRlMWRueWloR0g3czc4UGIrS0V3WEF6SDdv?=
 =?utf-8?B?SkwxUC8rSFFBTmVzR2FZUmZDcVd5a01lS1dzNzZLTGZGREsvM1AvTDBOQUYw?=
 =?utf-8?B?b2h0M2JoRXdnUXV0eVNsM3Zjc2Y2UHdyQnYwWWc0YlZBa21iL2xocVZDZmFQ?=
 =?utf-8?B?bXg0M3c4VG9YUHRZWk5CM2t1emdRU1dJbEVXVEhDL3l4RWZ1M3o1NC9DSlVI?=
 =?utf-8?B?dzZ0WlJ0VTVEWGNaQ2JIT1RVcjFpZFJlWlJvNklVbmZobHJ1MjIwRGVuZm9N?=
 =?utf-8?B?NzU5WE0wWlJqUDlkQnJjbGVKUXdRTkw2TkxJU3MxOThsTHg5OEFrbzNrd1pB?=
 =?utf-8?B?VmczQWhMOXRuYW1tZ253NUtPNzdTS0VDd2Jzbk8xRDZJOS9lbXh2aFVCdyt5?=
 =?utf-8?B?c3RBZXpqNkhBYVpHc2xZbkJhRmV1aWsweVlNcVB6UzBpZFZOYWhPOGl6VmRn?=
 =?utf-8?B?ZXNIQlVnRzI0cGlCV1ZqeTR2Zkx1NXV4aVFXdFJIZzlJbkJreUFkT294UWha?=
 =?utf-8?B?YWRhNmVBU21YZmpVend3Y2hJeGRHSmR4aG1zQjRsMVFQRUhBMVJ1c0tMazIy?=
 =?utf-8?B?NzVjWWJEOVlicGFwSFJ3M2lkT0xhZmkra0F0cFJGMEptb1ZZemFkRUl0OFlQ?=
 =?utf-8?B?SnJaLy9pekdkZkFqYitXbk1OOUhLNGpXcHpoQTk5T3RxcFE2blRkbm5RYkNj?=
 =?utf-8?B?TjBNSW1pb0dFblkyQWU3Tkh2VUNDUkZnYW9EWis0THFKYXZaL0pEZ1o3b1Bs?=
 =?utf-8?B?cjFUYzEybWpkOU12NVhSYjc4d1F4K3pOQ3hyeVJhRi9vWkF6ZU9FaVlCQXNV?=
 =?utf-8?B?S0JlRWsyZzE3dHNRMW8xWjBqWlhLZndLSGE5SGtGaGEweGc2Vyt1Z2pJT0pr?=
 =?utf-8?B?TW9FQjJJTEtESnJRcVpDdjc4MkdXdzVkS2Q3ZW5sNUJYQlYzSi9JeFpHOWxp?=
 =?utf-8?B?akVobzRQSDFOQjJPYW1YeVZHYUUyV0srVnJWbEdGd3JTM01vWHNHRktkSDhY?=
 =?utf-8?B?MDBOdEJFY0JJaXk5b2EyakRLRDc5ZGZWYnYyUmlPVGx5ekpWbDZiakFLaEhh?=
 =?utf-8?B?aDRSMDBYaWRCMXZKQjBTTTZkYUljNkhOckIzWURsM04vN24wVFAwOXhmWkY2?=
 =?utf-8?B?WGpQbjR5TnJmY1RhNUJqZG5xUldKRTFlRkpaREdoYkp5NnVHOEpHVTJnYnlN?=
 =?utf-8?B?dEh1dUdCZ04xaGJKUVlyQ2J1eTZNTy9KcU5Sb09ZL3pHZE9ycDBmZnE4WEVy?=
 =?utf-8?B?QnRlMDNEUkRZVkdITnBxRGdEQkZ5VEFQdXp1ek9ZclFNRXZwYjhuY0NMV0dP?=
 =?utf-8?B?MDVOeUl1aDI5ZTdVUGJ4K0VWL3dZUk5WQmVPWTdabUpRQTFLeDkySDg2NzJ4?=
 =?utf-8?B?eXd5VHBZZHdKTlByVGNkNWg1b0M2M3hGYjB4d1RMek5RU0xJWk5DQUxpSm1N?=
 =?utf-8?B?WWhFSG9vMnhVNDFGbzl5My9vNFp4TWZpL0MxYnhEak5raEkxcUFMK2dUajZD?=
 =?utf-8?B?c2JkNzVadVRNbHltVzdZbXh3Rzk0S29HeU1HTThTcG5wdEhidmNKUVNkSjZi?=
 =?utf-8?B?MDhhT2ZkZEFvbkd4T05jbGZLYlZrMFFnWS9aT3JuemRYZkFUb05TM2NKZFk5?=
 =?utf-8?B?T05DMTRzWDlzMmQvYSs3THdNUVVLdXpqeGtza3BmN3RpMGo5d2pibzNHOWxn?=
 =?utf-8?B?ZS9kZ0JaSlE2ek5PRktJMzRhdytuUUVmeEdSOHcvNWw3RVdpNGlsdkVQUnF3?=
 =?utf-8?B?dktVVnNBS293SG5NWmN1WDNuWGNTOFJmRmhxTHg1OVBoWVZyR0RuYm1jUmFB?=
 =?utf-8?B?VzZ5UHFTYW82R2sxK3Nic1N6Ymk1eEFMUjlJKzlQN1ZtUGtRdkFqeG5yUXJo?=
 =?utf-8?Q?WHiJIX1RZ9brFSirKsVZmSU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f7fec7-4f37-420f-afaa-08dcf7f5b2b4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 08:43:02.0079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h0opAWd8jcPnsPDjYE8U2QfEQpg9Kk7ePhTmmCxlI0ERSxXOblVT4ZTo3Rh+dBMm+p6uuHtzXLUVy/5tutd2mxiCWvq3bSuYFd/2ut9iYZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4857
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


On 29-10-2024 10:56, Suraj Kandpal wrote:
> We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
> encoder. Also remove the Wa comment tag as this follows the bspec and
> does not implement the wa.
>
> v2: add additional definition instead of function, commit message typo
> fix and update.
> v3: restore lost conditional from v2.
> v4: subject line and subject message updated, fix the if ladder order,
> fix the bit definition order.
> v5: Add the bspec link and remove the Wa comment tag
>
> Bspec: 69964
I don't think we still address the why? part. The register and bit 
doesn't give any explanation about disabling line rekeying on xe3 right?
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 11 +++++++----
>   drivers/gpu/drm/i915/i915_reg.h           |  1 +
>   2 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..7a32bfef8d87 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -31,7 +31,6 @@
>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
>   
> -/* WA: 16022217614 */
Probably instead of removing it we can add the lineage of the workaround 
(Wa_16021352814) somewhere inside the function so that we know why are 
we disabling line rekeying for those specific ip versions and steppings.
>   static void
>   intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>   				      struct intel_hdcp *hdcp)
> @@ -43,14 +42,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>   		return;
>   
>   	if (DISPLAY_VER(display) >= 14) {

Not related to this patch but probably we can remove the above if right? 
The internal if else ladder would take care of everything.

Thank You
Sai Teja

> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> -				     0, HDCP_LINE_REKEY_DISABLE);
> +		if (DISPLAY_VER(display) >= 30)
> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>   		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
>   			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>   			intel_de_rmw(display,
>   				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>   				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 405f409e9761..184420011a88 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3816,6 +3816,7 @@ enum skl_power_gate {
>   #define  TRANS_DDI_PVSYNC		(1 << 17)
>   #define  TRANS_DDI_PHSYNC		(1 << 16)
>   #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>   #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>   #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>   #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
