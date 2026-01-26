Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOJuL43Xd2mFlwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:07:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386B28D829
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C6810E498;
	Mon, 26 Jan 2026 21:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ai3uDro2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D7410E49A;
 Mon, 26 Jan 2026 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769461642; x=1800997642;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ALzUMb0Of3HG/QLEPBFmp2qJTObq2HTTk5YiRdlIxV8=;
 b=Ai3uDro29kdaSv88F+MAXBnAYk97JBWZ/oqQzP+aGdQRlqGWOAYxu5Eg
 X8K/amtaQGi0igBDxVFWDk/Uq5LAevdGIVT5MPCDDSNF1QB3WgeWKYdiT
 YYqTCiU54Rq2RtvXAH7nUOGI10k+PPsEsU1sKvFVanLv3ZJj+s9CoPfDZ
 mR09eR8/R0K0Wl0mCRXXk7UdyKx1cPO4akce1ZEmKmBJSvu1/+Fe81gUe
 pRgtTBNMMlsLKpLBa7qxO0k8YljebikjT0+3xRL4UT2/9l+EvbEBMOJqf
 tD3FOX0MneXAKzdGxtURUT4450x9k0TIyoR0+mxSvSJhExigfhNCeJNuN Q==;
X-CSE-ConnectionGUID: 816uiH4qREennyHvKzvU9Q==
X-CSE-MsgGUID: vyYqE4fMQVyhFwiMKrZmcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70551382"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70551382"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:07:21 -0800
X-CSE-ConnectionGUID: odRe+KElSHOOKN32Yopnkw==
X-CSE-MsgGUID: AX+eGCWESg63rNdphUZtZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="212647000"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:07:21 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:07:20 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 13:07:20 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:07:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KXbFHTJPTQnpO9yFajpY9VMs3HAtjvvsABVeMAQqLdzEMQMflc/9Er5dF7lH4euMxPau0vqYLJeRLOMRmACZoACKR0qu+/E8UuNu5/Tv4/m9Vat3HwVP9s8vU2NszZ/AfBKwBQPQqas/5HeI7yQxU5ZE5u8+XWvRWMNAIelZS+jRYxMQ40izAaqE1gv+5CunOvO6n2V+xDZNRAFCvG+O4xhd1HT5i8xF+nzIDVAWupGsrsErENGyvvj9nMiOHIZ8F9UONxMiF7QKLlALdvotrljXn68lWXs16ThxOKxGtAiJBpk7PiSy7iKEX7QyoVZ2g/TQ/ljwZKz93mVbBQAz/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zg7jPKR5OmtFecsNT+DU3xz3WJ8RXyidXkz2hB2YpP0=;
 b=k4dzBx2JaG0BQim2kXvUbX1L2sAjPkPSL7bnyua3vpBqlb7noW7XmQl6LExP877P0xI7VjlPMkZDuKbxzFCNTYzVmj1DQejDnDQaB9Dcdqd5TPdmfU4i+a9e6RpWJUdfwFG6rgt/tebAxXV/LP9R8it6Bm2lgDT9iaQ+/L4TgEbJ6GZd564ASCXcKF3NXB8FuCWDTY1rbtjzYQX5xv4FsC4oLhZW7c20ED6OXvKOmTbBuKRZK8hQ48oEskgOVauG751FYbt5ft8Kmnh/BbX4PhKF5oZAcswjfNTBmPAmknOFNmBWjGniAVBupYk7J2srOZItX/9/lldH80vsa0axQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by SA2PR11MB4825.namprd11.prod.outlook.com (2603:10b6:806:111::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 21:07:13 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 21:07:12 +0000
Message-ID: <9efe240b-6033-4738-926d-41ecd6c5308b@intel.com>
Date: Mon, 26 Jan 2026 22:07:09 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] drm/xe: Make xe_ggtt_node_insert return a node
To: Maarten Lankhorst <dev@lankhorst.se>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Matthew Brost <matthew.brost@intel.com>
References: <20260126104604.988024-1-dev@lankhorst.se>
 <20260126104604.988024-5-dev@lankhorst.se>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260126104604.988024-5-dev@lankhorst.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR02CA0054.eurprd02.prod.outlook.com
 (2603:10a6:802:14::25) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|SA2PR11MB4825:EE_
X-MS-Office365-Filtering-Correlation-Id: d34310cb-d3fa-445b-062d-08de5d1ee054
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXBKdHZrRk9tMTN0OHQyQXlFV2FqNElURkhBVm5jVGl4NGtFSFAxK2hHUVFT?=
 =?utf-8?B?dFNMaTNiMWhJbW4rQkFhSFVBVkVhUVFCYlNaWkNoSzIvRHhsQ2dSTExxSTFK?=
 =?utf-8?B?OW5pQTBEUGdIblN1R1daTm5iTUF4Z3BIQ3VJeXZENm1DVGJrd3p1K2NqUFpC?=
 =?utf-8?B?QzVvTnFrMEhoaHZmalM1MGJtSEdVc05ZdE1yODJWRk42VjFpSHpLL08xS2VK?=
 =?utf-8?B?U21PYXpMb2w1dm9IQ2FqOVZXeFdqSXlXeDR3YmhsZWE1N0ZreXFXWDBqWk5W?=
 =?utf-8?B?Nk84eFJWdm1qR2FxWGRiLytNQms2bm5iWHIxNXpQdzgvZ0V6Ny8vVzlPbmtu?=
 =?utf-8?B?ZDA5SjJIT1BLbjNEM2toNm8za2paNlRqSlNQNWtiL0NqNWtRM05uY2pEaTA1?=
 =?utf-8?B?M1AxYUpKb3RKRGZxaWxUY0ZvUy9Xa3d3ZWRLYjU3ZzRGZmhlOVhjd0M1SGl6?=
 =?utf-8?B?OEdYeHoyS0lBQ1d6bHVBcXJvWURmRWxGQWNEUGFxZno3dHY1YlV1cVBzdWRL?=
 =?utf-8?B?SWxpQVc5dnZxRmFPQmhrM0p2dk04OUcrT3k0bWtiQjMxQWRRRGc0QjRvQ0F5?=
 =?utf-8?B?ZzAyNlhLV2x0RkdrV09YNTBuL3pJbythaGUvVnRrWVVUalZ6S3dTMm5XT2FS?=
 =?utf-8?B?bjVGVDhsbjUxWUNxMVFURmo3d0NTdXlnUElxdjB0WkNaSldLTURhRTdCb0dB?=
 =?utf-8?B?YUc0d1g1amVyNHlsQnp1V1EvK2RnNmFZVmR3VFQ1VXFDdDk5QTBmbERsWGcw?=
 =?utf-8?B?Rkh0eDN6bFZVaGlaTUorZlllOENDcjhCSjBsclpYaUZ1OTVTcmVnRXhCQVBU?=
 =?utf-8?B?SERZVlNGY0UvNERiNjU5U2srY29WRTBib0MvZEFtd0dvWkdRWGpVSXprTUJE?=
 =?utf-8?B?YzJVRU9xQXd0QnQvSlV1VWVVQmw4SXUrelNTZE1jVkhUcGZ0SGo4b2lkNHFQ?=
 =?utf-8?B?YmRZbnJYNE5qZzlCNTlHS3VyTmFpUS91TVhpcHRLbU4zdTlGWmg0MW4wU1Nl?=
 =?utf-8?B?Zk9EZGJjR3VsWGxIMUV3cWVLTWNGbGFQSDVPd2Q4eGZiVVh3SWZjRHhtdFZ0?=
 =?utf-8?B?YWQweUJ2Qit0WWpHelJFelZMY1JMd24zaldsYUY0aXBVMzBpV1ZrMEZaN2Rv?=
 =?utf-8?B?bW1UWEFvYjRyZHU0bHhvTSsyTlVzZDNEaXFaMzBHTmpxT0tBa2I2ME03N2ly?=
 =?utf-8?B?eGVaUzdCbnBtcFg4blE5VzE0RWJoRTNyTTh1aW5HZFp3UDlFZ0F0RTdrUFdV?=
 =?utf-8?B?d0NkYWFlZW4xdjJpYWpJaG84bGFGdEZOUWd0YXVRNDRzbGVYazFFTVBQNWZm?=
 =?utf-8?B?ZTFzMFcwdWt1UmlPN2ZXWEZDcGdsUWdBSktCMEFXbUZWdXAyQ2l1MG8zbzlD?=
 =?utf-8?B?YXpUczFCd2x4ZU5QQUcxK0VUT2xMdGhCZzBBblQvMlBCODQ2ZVIxMVB3OWFQ?=
 =?utf-8?B?dGNOOW5FZ1dBYmhSczR5UE9lMWkzK0p0eW03cTUyY0ZxRm9UOExFbXRyWGIz?=
 =?utf-8?B?YnpFZFBHSzJnNHVNYWp1V0RGVVh0SXVKUXIvRW1CQkdrVHRxMGxkMjRUTXVG?=
 =?utf-8?B?b3pPRWdlclhrR0Q3aVIyOUFMdmZpdlMxZ0ZjbCtCZmFRY0F1bFBrVTJoVDBJ?=
 =?utf-8?B?NjZSWG41bTgvUEJBZHczeDBldTJPVFFTemUwcHZleFFZd0ZmQVJZYlMxTDh0?=
 =?utf-8?B?SUFMaDRBeHlTKzJoVzFqaVo4SWU0elk1REQwbDZRRGJxc25tOGtkbWxkR29K?=
 =?utf-8?B?TEpjalM5UW81WlFWYmw5Y1VFekhlR0VqOG5lcURtU2RrK1dIL1UyaHp5eXJp?=
 =?utf-8?B?dWlCN0VYVnJ0aEtCKy9qZHdsSmpLbEZ6Zm5NejhkcHVqYUFrYkF4cnBiOGJq?=
 =?utf-8?B?NEtWd0xwWFdmczNNQXNWZXdJYUw5aFJzQmNlVXBHL3laNGVCUzVpUDFzTnRJ?=
 =?utf-8?B?Vk5KdnVRcjRBdVFXdUVXUWR0SFJUWGhnVUNITGhod2Z2Zml6dnlNOGc4WXJ0?=
 =?utf-8?B?M2srWm5LN3QrWndicTdpTjlPWjdVZ0JteUtxZFFlWjNDR3VDdmg3TmtyVjdX?=
 =?utf-8?B?eTJHcGhJd2pFOFAwQ2EyaDhnZGdObm5SZVQ0ZDVGVzlwb3NGYzg0Y09LSmlr?=
 =?utf-8?Q?pXt0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFZDbHUxZkVCak5PZklQaE5ra0JYcXQzQzg3Q3lCYjk4N2dzWWdGNTQra0Fi?=
 =?utf-8?B?OFJhNDE3L20vYUZJK1dDQVVXbGtPbjh1VysraHVSYkNYSG5pOEh6azcxbVJq?=
 =?utf-8?B?K3pSMGlKcEkwdnQ2cU0zRVQrdkFPVVlNNXRZc2lndnlMUjlQcHk3WTBqRCtU?=
 =?utf-8?B?SUZDM3Nqeno5VHcwN09ENXM2Q3NBakVJVUV4SkRNdnd1Y3BxN1BaSGtLbUZC?=
 =?utf-8?B?UFJNMURtZ0tsTEg1YTVvS0tUcFVYLzAzOHdjNUNuL1hsODNYYkQ4bGVEUDMx?=
 =?utf-8?B?eEl2c2d4MVR5QjFGTnQzbWNIc1JNaWJsT3YyVThCS2Y1VnJYTWxRREdDbXVh?=
 =?utf-8?B?VTRYVVgwV3d2UnVPeElpTDFFLzZpTXl5YUNUY0c0b1NxV0NtSEk2N0Y1ZGFY?=
 =?utf-8?B?VG0rUDQyT0F2VDRjdzVaZXFWTWdlbEE3Y0ZieUt5Z2pLWkkrMzg2ZitNbzkr?=
 =?utf-8?B?bE5aUlM1aldNQnJmWjhTRHlEV2ZRenBTVU53Z2llL25Jcmg1cW9hUVJBMjJJ?=
 =?utf-8?B?ZTZuUHhGTTc3VUZCRGhJMk5jbEFtcU96S0Z3b3g2REIyQkY4YTVaTVErNkh6?=
 =?utf-8?B?OEkvdmM5Tlg0Ylh0VW82TkUrYnFGc3ZFNEhETHNvaGhsL052RFJiTzJkaHJx?=
 =?utf-8?B?WlBEZWxjYmwrL0xzZVFVZ0VPYkZLNVFDNTNDV0VMcWNWc1RvWk5zZVA5S2JV?=
 =?utf-8?B?VktBdEZiNzhLUWxaMVRoc0F5L1NEdlZVREJBK3Z4eUlyV2tXZ3FuVjA4ZkhL?=
 =?utf-8?B?SXI3U1kyR2RjRnBZUTUyRzY1VktpYnBNQXZmc1Z2MWhRSGhPQitPSndnSDVr?=
 =?utf-8?B?YzN4WllXcTl5M3hCVndmSEN1cmpvTkZIdzQzUjhHWW9SczJzTGpDRWF0N3Ja?=
 =?utf-8?B?aDAwVE1lZnJEZGpXSkdEa1RsbHRXcG1VU0tzaHVLdGw1cmM4Zm13cVNoakNL?=
 =?utf-8?B?WkRtV2syY2ZPb3o1VWxHQm56a1UyYUhaZUVoSGpHa3dxdTRldWZZQm92ZFFU?=
 =?utf-8?B?MU1sTUdsNC9nYlhpbk1ic1dTR000dlNldFhiMjZXaEZFbnUvY3BYVkl1Ui92?=
 =?utf-8?B?V0Ztc3hRSnRNWDIwM2luTDg3bDBqL1JRVGp6em0wRDBTSGFhZkh1UVFnT0do?=
 =?utf-8?B?U0dKSVFBRVM5K0pHRDdQT3E2OGtQcko0dU81Sk9jSWRpYXpFcVFzdTNEdm5i?=
 =?utf-8?B?S1ZRWnhiZ0VXTHQ5ZGdRUUZ4WllEc0J6VkUzWjBrUlBYdVVxV1dOeFA5YXdV?=
 =?utf-8?B?ajMzQ08za09oZWFQNVcvc0hFa0JwcTRsczN5cEVHQ2FMQmZlUmdIeHdnZFZB?=
 =?utf-8?B?dTZFNDAvQU5QcThkQnhZVlhFclE3cUxNWVhISE8veXoxQUlCRkFxcmM3bW5j?=
 =?utf-8?B?alZMUXRHNWtDKzBKcUJVYkcyMWJpUnhjOG5wd0lMNnpkdlZmb1pCUzNqSzl1?=
 =?utf-8?B?NG1ndUFyZ3p1elo1ZWJXOE5WckVzQllXczMrMFgyVWxocStyd1hxL3JpNHNT?=
 =?utf-8?B?dWxna0RxbldmdnlRSU92ZjdFVE9OZHhNQXBYczB6SHRveXd2aWpSR2dPdTJX?=
 =?utf-8?B?T1l2eDRNU2lsNmtpczJMbVNyV0VyN1BuU1dvZDFPTGtwd0s1R3dTcGQ5N3Nw?=
 =?utf-8?B?a3p3ZVVVb2FNUjJrcFJQbkNzOTZ4VjZldUpIaGdmNFY1RWJKQjBOUkdnb3d1?=
 =?utf-8?B?UldzU3N5VlRwT0R3MFhuTDJWVG5lTFByRFFZWFZ3SjZUZUw3d1Urbzk4RXln?=
 =?utf-8?B?M1JDMDFWUXJXVi9aWGpxMW96SGQ0bzlscExaU24rd3pNSUJTR0p5Vmt4b3JI?=
 =?utf-8?B?akYzdHFiaFhhOUZpbG1xWVdEVWxUT014RWF3MWJQYSttUXZsclc3akRNbjJt?=
 =?utf-8?B?Nk9kQUM5Z3FwU211c1RkRVdGQzM4U3o3UzU1MWFZSEVGaFRYcnlGL0g4S3Ey?=
 =?utf-8?B?dWlpaTBwY2dIU25EMXo3RnRhOERzKzJIMVgrN01sWUlWZzFlbm1sRXZGSVU5?=
 =?utf-8?B?NkVRRUNVSk9NZERRZm5kditYdlJ4L0IwY0xSWWJjd2o0Wnlqb0FoMjQvY1pw?=
 =?utf-8?B?aVhiUmhjUFk3U3YrQWI3SDVrOEV6azV5VnBOOXFCd1RzMFdNSHVPeStDd3FO?=
 =?utf-8?B?bVdZckFtK0tabkE4S0U3UmpyZHBwV0hCT0JJYW9PelNhVVV4R0lPU1R0dXRZ?=
 =?utf-8?B?cnQwSyt4VEFYTVdnMGlpTTlobUJnK3E2ZDBoT1QxUGNsTDVwMnpmdmhyYnFx?=
 =?utf-8?B?UTU1V2xPcDAxNm9IQjhUTjkvRXRqT2RSNkgyNW01TUl2K2VQalBkRUtsNFM4?=
 =?utf-8?B?NEFXOWlkRDJ4NUdDM3doODAxV2hTenZ4SENqWVVWcW5PNXowWVNUb1AycVBk?=
 =?utf-8?Q?KCvwgE2ix/bOWixA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d34310cb-d3fa-445b-062d-08de5d1ee054
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 21:07:12.9193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XQQkhSahxZGWaOcfPWdnYFqegBadAcGlpIn6yiTgHkzZrmtw0yiE/GhpIbaVmKRI9VDf1GpRI299Es7JVYBV8lLqDQQm9D3HSP96GyrHVXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4825
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 386B28D829
X-Rspamd-Action: no action



On 1/26/2026 11:46 AM, Maarten Lankhorst wrote:
> This extra step is easier to handle inside xe_ggtt.c and makes
> xe_ggtt_node_allocated a simple null check instead, as the intermediate
> state 'allocated but not inserted' is no longer used.
> 
> Privatize xe_ggtt_node_fini() and init() as they're no longer used
> outside of xe_ggtt.c
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com> #v1

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

with one nit below

> ---
> Changelog:
> - rename xe_ggtt_node_insert(,_transform) to
>   xe_ggtt_insert_node(,_transform)
> - remove xe prefix from ggtt_node_init/fini()
> - Update xe_ggtt_node doc to point to the correct
>   allocation and removal functions
> - Use guard in xe_ggtt_insert_node().
> ---

...

> @@ -669,16 +637,31 @@ struct xe_ggtt_node *xe_ggtt_node_init(struct xe_ggtt *ggtt)
>  }
>  
>  /**
> - * xe_ggtt_node_fini - Forcebly finalize %xe_ggtt_node struct
> - * @node: the &xe_ggtt_node to be freed
> + * xe_ggtt_insert_node - Insert a &xe_ggtt_node into the GGTT
> + * @ggtt: the @ggtt into which the node should be inserted.

	@ggtt: the &xe_ggtt into which new node should be inserted

> + * @size: size of the node
> + * @align: alignment constrain of the node
>   *
> - * If anything went wrong with either xe_ggtt_node_insert() and this @node is
> - * not going to be reused, then this function needs to be called to free the
> - * %xe_ggtt_node struct
> - **/
> -void xe_ggtt_node_fini(struct xe_ggtt_node *node)
> + * Return: &xe_ggtt_node on success or a ERR_PTR on failure.
> + */
> +struct xe_ggtt_node *xe_ggtt_insert_node(struct xe_ggtt *ggtt, u32 size, u32 align)
>  {
