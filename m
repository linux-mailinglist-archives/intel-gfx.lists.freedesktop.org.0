Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eqR3GqN+oWlxtwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:23:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CC51B67FE
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B617810E035;
	Fri, 27 Feb 2026 11:23:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lrARm3uB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9DA10E035;
 Fri, 27 Feb 2026 11:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772191391; x=1803727391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kCNP5GxzNgV7ujA4aaKXV5hQgtlfrFlKUQs94ojf3Zg=;
 b=lrARm3uBVSg7aPrFb9wbBdnNItEJbIGzS8QWjDPzLqXAzt3pJL5xJsTr
 C690382bTs1sLx3LmANhB8jIp+TJJwqRGgE/23xKhB5nvwfeXOS2NSznL
 R2qFjjshfGubhVY6ROsec0PLUnXu++1osH+VzJt2vr47BeyNOzxB2mN3F
 fAmC+MyvBAjqB1nTxVfyXqYZHwCGYuB4C82yPoa1MLwjhF3muzfGMB1l6
 4CuiHeWHkQ0tj7/EGLjzCu5lAX5c9G855857y2c3xMC1cQMb++lhKtCrd
 xYfb+pXd+1mALpO5SfEwnRharzgslvJBHyqgpB16PeF4h35wpow4pGHaB g==;
X-CSE-ConnectionGUID: f7oLq7sSSs6UzWoLDXAnFA==
X-CSE-MsgGUID: H0icx3GzRUGQjqsSHXZTKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="77112498"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="77112498"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:23:11 -0800
X-CSE-ConnectionGUID: IaHNfN6RSEuuBVZJLPzv8Q==
X-CSE-MsgGUID: aN4CU+/9SNO5Gn3+C1tMvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="244268020"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:23:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:23:10 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 03:23:10 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:23:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GSoCp/YKgHdot48O6LGHXNiQlK2uJ0rtpXzPgXmBZFypqCVf6Q4PRdlkse2SvH2MeEGt4CjAAK8SF3TUcmTiZTNGD1908WI17scbcXsj9BoUO02mjWZA5k6xiKzAEMHVrsIpFwWUohmRPSPsa7KO36N+6DM6S15m1UPLkG1IIsDMl89UPJ7UXrzlhbx98CwcnWIo4jfVjBV/e08baMveHcqyGewHvRvEkaR+KpeGpJaPG6LP3qVQsvkdNcim3GT2lCX7rcuAIDQeY6dX8D5w90yqtaywFzIw9MDg/6KlOdVLZZyqyAP3x3oTDary+zbUD1JBP7DMFRdx+itjnBcGZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yjHD4Y+eCmrYw7bXODsjEGfdsQpcjoiKLcdXJTtKkr8=;
 b=s41sNveRxmLih6B76asOkY/+kjP6742jmznb1MSZdB6TbJ7mLgVF1sBMOMndBQ0shKLKhr9Nvgy0mmL8ACnPdY0XapqK2gtfl8QkP7H28Cfx18uCGg0Ifx/0Z3fkD5VuKyhGaLe8SFKiImAUsxMUd0vSruiIO4YM/q2XBSLo1UtJcvi4sLttxtWPAl0YlNGX4DiMHU0BusWBg5+dFZ7AGYm45Sq3enJaxSexf7OpyOAVoCAy/ctw5LuoYUqoKPgKMPBi0kPGQiT+PhXKYN13jqjKSjdTZZvpX2+MkoipWH0l4YfWI7K9DbJ6xdQGmx6ZYBY9XpDiieN5dT02pisvCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6987.namprd11.prod.outlook.com (2603:10b6:930:55::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Fri, 27 Feb
 2026 11:23:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 11:23:08 +0000
Message-ID: <7fb21fc1-b2f4-49f5-9950-65cb949e2357@intel.com>
Date: Fri, 27 Feb 2026 16:53:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/14] drm/i915/psr: Add helper to check if PR is with
 link OFF
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-10-ankit.k.nautiyal@intel.com>
 <aaBw8UiTZDg37Tml@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aaBw8UiTZDg37Tml@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0082.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6987:EE_
X-MS-Office365-Filtering-Correlation-Id: e9d4985d-459b-4e02-da4b-08de75f29534
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: nFP1kdL/BJgfblU4xRpWJ5iiTtEkdc/NTLnl/cqkU2B0tTz3mfBCCdTM5xNma67zKOpLq70J2jVC5qSFiXEbggwWx00dyCCCMKzOvluyWs2zMarflOq88BkAeuxnqJdYF0/oWCyiPaiYf5cBKVtqmDAtFdlDRYT6fr3MFpqo4qn1vyu1NxH93eg9CpKhtQX3IdFP3PMQksjgmI2IZw6UpegdD4klES7R4egBYsphy5llkI2Kj2EJyAvbCeSLE2MVUnb7o2fSdr5/UpALaAKtAb9dJfqUhV/+vU9dGPyWs8Fwji6rBeTuoqc6VHeDOkFZVEEA/G+nWwEjShIpbOgHkEe0mGEreHzpEDJmybaQnQNV08kVg7NW30C7inAhSY2qHqoGM7Im7S9lb6VracaydP0og/3jTIvxZeeGWvMStZmPghnNj+KtO/vImXzsOfuFYzMKPutut5XI/nDISSL6chzGXz1Oa6yTQvF18sajoA2vBZ0fkbYj3sGhtP+I940jUlHosfM0nL4UDJ8s3MuYyJ8pB/tUOO1agzJOdxnUmFm7vQCk+bAiJbLLHzHYlj3O8mc+noAvK3Ljr9L0ab7Duw7Dl30HDIahhP2ctgSiOFN6s2CXhkVxjoTx9tmjLt+rByaTNu6YiyE8DFRX7AF+RIfaAxWq50fcJF5TWp5lQlCv7NVedisWBl/RKh+K1IGMYOajoQGrp9LdMHUuuQmj1B2IxkDbfwGMAV6Q3YLrvN8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnFCMWxmSXZwcjh4Snh5NXpMVkE1WklYZVFVb3lhdUFaZjlndW4xSitBR2xh?=
 =?utf-8?B?c2xDdTZlbGNLNVQzTExZeDZvcmFBUE5yZlp4dUdtOWZ6dUZuVFAvSnZYalNW?=
 =?utf-8?B?VVVOb0NTNnkyaGUxYzRSdUtoQ01NZU8wc1YxTHRSdVdBR1JBcTlaQkFMVGF0?=
 =?utf-8?B?L0xOaWYzSERrNG5hckpqSmFubHI4RVVqNjFGNWdFV1ByTVd0Y2NwK2JWRXZ6?=
 =?utf-8?B?aGc0bmFJc2dzQXY4TlFJYmlRMGRmclIyV3VIRGlwUkVFa1o3UlRWS3RpY0ZG?=
 =?utf-8?B?cEYvTmpyekI1NWJZL0lQRlJrS0NwSjNYVTBQY0ZlVTZTT2ZxcVFHMEN1aGFr?=
 =?utf-8?B?d3FXQ1hrRHhNdEVTNlZPQTdYaFRpMmdEN0lBYnY3K0xzbG5YSWtpRUJYNEx4?=
 =?utf-8?B?M08wWEFIUGFkUVV4WjRhR0FqMlNYUFNZMVZlOWx3UmRDUXdjTHVQekVlV1ds?=
 =?utf-8?B?QUNoT3pybkJWRFZBa21HK1JvbUFvY1RuaEZLNUdCSXkyd0R4M3JyUDZsSVJi?=
 =?utf-8?B?L3pQbDFhd2hUMmFoa3VsZGs1UG5CVGxtZ0FQTmZMUDFlWjRYc0lVcnpkWEZt?=
 =?utf-8?B?OTZ3Y2M1Q0lqRlZHWnVWRmMreW1ONGJOK2F1Y0FvSG4wZHBycFpZUmdMSk5u?=
 =?utf-8?B?Z212MTNCWmYxWHZkZ3F1M3c3eVhQdnM3UlVhSW51cmdXTVpNK2JTb3g1Wm56?=
 =?utf-8?B?RUF2UWRhTit1d3FEaVVCcjh3ZklOQ3ExYnNOa2ozSjhTd2QxY3c0Z201UUEr?=
 =?utf-8?B?bmpRcHQ4SXhrSXY2cjRpemdGbjBZSHk1aFRXM2d2ZGxsc1VUOGxoVnNZY3ov?=
 =?utf-8?B?a05EU0JMMElaTnB4UXk0aWVWM0duUVVTT3M4d3VmOEQ4UXUxdlJmVlN6MlVL?=
 =?utf-8?B?QzUzbTF1UGNMbk55ejFvbWxWdzVYVWRoYkJpS2RTdTYyMkNTUS9malBJajlu?=
 =?utf-8?B?Mzg1SFFYZjl2akcxbVZnaktNZkw1ekRRR0YrMXZkQmtkNWZBNEJyL3BUNTZ5?=
 =?utf-8?B?a2gzdkVNbVljYlRsS1NRQlRjbDVCckwvNlpwek5Vcm9EVWJtWTFocVpsMExy?=
 =?utf-8?B?M3FjRTJBWHFPV2VoYXVHVU81aHYrRmVqN3FCcjBaS0RNZEZidDRZc1NFVVNW?=
 =?utf-8?B?Mk50dWNXaUgyeHhmMGlHQ0JqVG91V0ZUcGFLc2Z5MW9USFBwUG02SlZ3OURx?=
 =?utf-8?B?SDZLK3pldnRiUDhpNkRKK2plRDZOcXA1OFhoK3JJbzByT0YxTFNqb2Nhajg5?=
 =?utf-8?B?QUgyTXZ6blRwTE9QYjU2SXcza3d6YW9lWkYvemU1OWxWbTFxcENmZWdOYkZa?=
 =?utf-8?B?SmhKRDl0MFpCMEZVWUt1TStQYU10Z3hucDB2OVRnYnc1MmNnaGhyUWZqOEZ4?=
 =?utf-8?B?NFgwcXNTeXRYUXM2QW12L1o2UnJwTm0vZFNyeDRaSFZIZ2tlNDFJYWdnVlo1?=
 =?utf-8?B?UW41d1FmaVlzeWtBK0VNU0lWNENNYUpZeXhXLzUwRmoxNWVaclVOd0dHZ3BH?=
 =?utf-8?B?NUZJYnpNK1pkeXRoS3RLME55MkNCOEh5ekpPKytPS3NKNDdpZG5VZCtQaDlr?=
 =?utf-8?B?aUdaTFJaNzFZZXV4K1c2dzB2aU1qZ1FENGYvMUpZK1dySVR6cUZoNWZ2MmNx?=
 =?utf-8?B?NjZ2aTlqdVVjb1ptNzRQSXB4bFRnMVFKSXd2SzFkOXNURzNGZytjU3R3NlA3?=
 =?utf-8?B?SGc2U3l2M1BvQ1pFcDZYZTJKaSszcjRiSmtVWXNGLzdDZGVXdUsvUDQvczJp?=
 =?utf-8?B?cDZZNnI1emVkUXlvc290WC8vQjVQY2YvMzdWYkZIM1oycS9pQUt2WVhNRWJF?=
 =?utf-8?B?ZklPSzNYMkJhQ0FJUVV1T1psbnJVZlB0QVhQVTZicC9xelFJZWs2NzNYcDVX?=
 =?utf-8?B?ODZaVlRydnlFZDk2KzhtWi9GdERtbXg5U1lsZndzY3AxM1pEd0NKRGhWZnAr?=
 =?utf-8?B?T2ppU2ZQRjJkRjlNdWxxSWh4elMrOHIzeTRJSHBxalg4c1NsUmxGeERXSkdm?=
 =?utf-8?B?M3dXNENKM0VBQnFSSG1kSTBuMXVjK0JwSXBtQlhNSVdZVzI1aCtEUUdTMjJr?=
 =?utf-8?B?d2JmTWNtWnBTbWtVRXZWYlEzSWRvbkJtaGxUbkRXZlVVTGp3bmF1Ynk4VTJR?=
 =?utf-8?B?bjRPZngzSldHOE5JRytrK0owU0x4NWFPc0I2VXRMZVZGTFZYem5RK2ZoZG0v?=
 =?utf-8?B?L3NQN2h3SU5OVzRXby92MFRRMEkva1VneWZacUVpQTBXSUQrdHpLN2VrMmFm?=
 =?utf-8?B?N2QwbDFOclM5Q1dDOWZmUGo3SEg5NS9qaHEzNkE0MDl3Q1FKVkhlbHhKMnZI?=
 =?utf-8?B?ZTNsakpKRG9SZ3ZYMU9KbmxYQythcE9XWmRBYWhQVGt0ZkJyMUl4OUxTYlVs?=
 =?utf-8?Q?B8yzOxrxVhPcVUdY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9d4985d-459b-4e02-da4b-08de75f29534
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 11:23:08.2405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0IOAKNKTcqgmfh1bg1pfVYqMdh3TdpI2JpuLKMwak8gYKD7hAiAdeqh+TDaNMJnm0Do3s7J1vjRyd46nMlfqpHNj+I3d/I093G2Wcz8c7xY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6987
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C2CC51B67FE
X-Rspamd-Action: no action


On 2/26/2026 9:42 PM, Ville Syrjälä wrote:
> On Mon, Feb 23, 2026 at 07:14:26PM +0530, Ankit Nautiyal wrote:
>> Introduce a helper intel_psr_is_pr_with_link_off() to check if the Panel
>> Replay feature needs to be enabled with link off.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>>   drivers/gpu/drm/i915/display/intel_psr.h | 1 +
>>   2 files changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 5bea2eda744b..e0e6ddbfaa2d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -4575,3 +4575,9 @@ bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
>>   
>>   	return HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display) && crtc_state->has_psr;
>>   }
>> +
>> +bool intel_psr_is_pr_with_link_off(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return crtc_state->has_panel_replay &&
>> +		crtc_state->link_off_after_as_sdp_when_pr_active;
> I don't think that flag has anything to do with what you're
> trying to determine here.

You are right this is not the thing I wanted.

The source can use Auxless ALPM to turn off main link without this bit.

I am still looking for flag that can help to determine Auxless ALPM with 
Link Off.


Regards,

Ankit

>
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
>> index 394b641840b3..6764bcb13f9b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -86,5 +86,6 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>>   				   struct intel_crtc_state *crtc_state);
>>   int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
>>   bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
>> +bool intel_psr_is_pr_with_link_off(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_PSR_H__ */
>> -- 
>> 2.45.2
