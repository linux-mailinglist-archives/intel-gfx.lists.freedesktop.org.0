Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WH4IMFx8oWkUtgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:13:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1941B6670
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44D610EAFC;
	Fri, 27 Feb 2026 11:13:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffaQh71F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E8010EAFB;
 Fri, 27 Feb 2026 11:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772190808; x=1803726808;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TVh5e3UzWltSTQC3gMtL+2+UdjwW1/rFp5MFO4DRu80=;
 b=ffaQh71FNTFllVBfUbd7C/vtjj2CMjeiU5Xd8luihtvdAJwcfWPtXBWD
 AygYoajx6YY4z8zp4IghP5q7zRMGFWdhucqGdi9ZVBVu8dhtZ0HBdd7w1
 5bYPL1uWWqZZIfGHzsNv0uzr/gVea8hcaUg9q2WH84w/AUkdoZU1j8LhH
 lIPl1eQ3vcTsMW9khqtI6mMDV2NrFDGph9SrOYbN/ohIWOuUlTWcUClO+
 /654uHYjGqtZENYMbK7vqYG0oyt8M20Z7FClsi8wdcwe+m1WzJPFr8z3r
 9cVeY6X+1qMr3+2anaSZcKk3+KvNb91FATHdLs9gIXQowYAGe0p1ol83C w==;
X-CSE-ConnectionGUID: MHscmyrTSZyErTf6Sa5V4w==
X-CSE-MsgGUID: +PybAAhgSeqah682oHducQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="95891971"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="95891971"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:13:26 -0800
X-CSE-ConnectionGUID: Pih1GT+ZQDSSGKL9q4zhtQ==
X-CSE-MsgGUID: WrlLXkuuS66kY2IFDJQwXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="215988218"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:13:26 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:13:26 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 03:13:26 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:13:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vopMOYuIuaG+1EUOnjJn/D5YukrmbK+eOi+AUQI0iFquNjc5VpBpF8hU1qnlKmh9WlI8h15UYcPJyBu+d5Enet6y12fgHj9H+PBf3h92alZ54f2K04nXuZ4n6b7ZOoGIIkJTvmoavE+Pj3Z4dQcRs9r5AzMRHjxymXoxzF+dqsTONDXSZ1uXXPI5b89cRzBaWDw2+9EAlPPi6oPnZhzYWf0658duQt+b9wpbChDXSCh8IYS/5hWmSExvyn1lzqUaPVS3Cr8eJ/4J9cR/j56KvxXhWuahNQbiAUM9Ir5UmA8yh/oenfguESxSzK38eIeaNgT3IV10cMW+LEaavogFIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+mJnjJDVLyeo6H3A23b8m16+5hm8lCohv68lREQFwQ=;
 b=d7o71an64yvcBvOMpbhBqFB8VwMb5HX+L3kuTYf8dtxJCbh3WTnVph6HrvU3uODkfdBcgStbNR9QpIIADswHN+Xer94CpjZmPvYZuVopl3Gk1RF/lMaoot1Z2pvoc50VElrxCjuBUtTwvaaoV2jLTUBBYic22VbkGsVIYpsO65vKLCEjgLANN/vNmEyzDGetjMYd2xkc7TK/liiDf4ZkhfC1X3WK5VIsJQMNRkNEBiSAv/BSluJ3mQJqHzEHYBxeLhMCINrb0C/PMnrHBSoviPMqyCXdGjHsDmGr0/el8V0VFOwkNi4Msh5w6/nSdnnJ0f4SFzYHIIE+AKwfKa6EMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 11:13:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 11:13:23 +0000
Message-ID: <918e1bbe-e7e4-447c-b1a6-7b0aa6cd102c@intel.com>
Date: Fri, 27 Feb 2026 16:43:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/14] include/drm/display/dp: Add field for storing AS
 SDP version
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-6-ankit.k.nautiyal@intel.com>
 <aaBn_kzDTiO3EnV8@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aaBn_kzDTiO3EnV8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0112.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8488:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ff62444-66c4-4666-7333-08de75f138b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: JS3hDKwqJ0worMEM95RuzLWKtuBjMo+IoRhU/Fi4+HpIkCpOd+2N9Bj3dXRb59e72aHKgfkA3e+ZC7QnYz8P2OF2a4wuCPbWn94/kgRXQ3PUXCm5MGb+hXDl3xX9yyuw67oQdIEK/7GCAncUMvkr3g/4mSaJaS+oWTz9H/rtGgUUoCWtxDQSrIe7hbL74JgtTSKNzfM5/b3iKSMQeFXzPGv+ob2eG4Mdn+1BS9nW4povtsh2dZ2IXEmruzxikr1O7ixgmxTVSQFqvPqCLGWx40Bj1hD4mxBV3sbm+ZcOZCm7+gamF3lmTWVAgcEx7B4lRWfnFZSfA9SM4Z9Ahh5HM57RYJ1uZ98anpccN7MJTe6FBphr8Kt/89GdtLK0sG3tB2BkwfWa0pdCzDE8OcxVQzVyEKPQ4MO9mNPO/XjBB93wimg4k4chr7cF+60Nd9G8UV9bJAtTgO594GV6daTrW8z7y7JLueJIoh+ACMqQkBqzMMGQLKxhso7yqAQ12qGai2UiBd2ZRlSyRbkhyV1RGLy9z79ch2cjr9GphdJq/FXDS95me3VUq8/yJM12ifn3UAy/+8MO6dUizaPV7OGZcoTn9eFAxpPQg5wZjJf+UlYaTwFACy0muGDryhnp7fngVHvjSQokeJsN7J+H0ulQ43wUWnOL14RiB3dl34/rgSdNMD3gArJ5K8zyD1zL5E20zVrMU3aDflccFAXkhT/uP9YJ01LRHSnpOhNjcBqjtP0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWZBcjN4cjg5YlVQd0dMallidlIyMGU4SmxNR2dFUE5uUmNueGV5QWRoNEl6?=
 =?utf-8?B?cWhmWkxqa0IzeVJVVVRpeDcxZXdubHQ4N1F0SHhrK3MyRmpER2xnMGUzRnpY?=
 =?utf-8?B?dUMyMCtJRUx1cnpscmRsMjE1cHhQS2dCVUxnUGVLNUNPZjR2T0JCYm14SmFC?=
 =?utf-8?B?RFhpNEQzdTY4Rmc1WW5UUlZqRlQ4QTJJNVFxRTl4T0pab1k0bjlhN3dBOE5S?=
 =?utf-8?B?U0pJNHFFekFNaU9SSzlRTTNrYVR6SFZiSDQ4U1ZNN2FKMVU4RnNaNW9XWml2?=
 =?utf-8?B?U0RRSDNDd01JYjVyVENuYVBvL1lLSzI0WE53TlZBbHpjMktRTmdvQkxERDh1?=
 =?utf-8?B?NW40anhOMmdCR1k0YW9CZVgrNkNPWEJ0SzZCY1l0S0RmNXpGeU9yNThHbTlJ?=
 =?utf-8?B?RlMxaWdYSmEzVURjUWhpTWNZZGEwN1NXMVZXNGF3U3IzWkJvb1N2UStyUzBW?=
 =?utf-8?B?UUhiNDRPOVA5VW1tSUhVdE9WSFpRZElTNW03YVBQVlR5ckVmcUtTNTVxTU5F?=
 =?utf-8?B?QTlPUTdrZldHTENzV2VNdDYwMi9aYWhlQXAySkc3ZVNCbDFpQ0hHc0ZRVXFN?=
 =?utf-8?B?YUxUeURjZ0w2cXNtQjdlZGkxU3pBblpSUWlzUWpMSUR4dVVTNlkvVmxBZXZO?=
 =?utf-8?B?SXUrbVdMRTNwRG1wYU1VNWJlQnVzRERubDVMbWpkRjMxQmkzY3AyUUZZRnB2?=
 =?utf-8?B?dlB0RG1WbGhuM2lUTXE0Zlo0bFRKYUJiSVMwa2gxc3R4TXJjRHhMRkNJNDRZ?=
 =?utf-8?B?U1hrdGFZNDlHT1RnYURsMXZ2QTNlekpJWmpEK2EvdHR6d1F0Y1EwbjZLa29v?=
 =?utf-8?B?cGVjSE5xWjlUY0ZSUTVxMHJEZExxRFU0ZjVjUTh2M01teUJJTTMyY01hek42?=
 =?utf-8?B?K1lvVlhTaHNjUzlwNFhrM09zNm56YXc2K2NmRGhtZFVzTlQrQjN0M3VLS2V3?=
 =?utf-8?B?cUZ5M0hVR3FsRHM3MVpCSDJGcDhEbFFOZXRHTEtGRXRiWmdScUJpV0grVE5R?=
 =?utf-8?B?SGpvbVAwaXNoNEFUNEZJMHplTnNEVHU1djQrWVFPcWVxWWNCcVNwNDRDellz?=
 =?utf-8?B?T3B2NzhTaFQrV3dnTmxJQWFNWlFSekd2bGwyL2dsQWNhYTVHK1BrbDJlQkZq?=
 =?utf-8?B?c0p3ck94dDdGeG5iYkFGVlFOUllpMEQxOEJlNGptL2NENVM2QnFTdWNWdWZu?=
 =?utf-8?B?ajc2amVZd3BQS3o2czZrUW1hTUtpY0dMQi9QQUVPTEpqMktFNUVPdlpBQ3do?=
 =?utf-8?B?TXc2a3ZtMzlHWk1LQlQyV3RTVTg2clBOTUNYdVVxNU91NWZSUEFsMnJSakt6?=
 =?utf-8?B?SzNHdlIxeGhwd1NkVjdFT3U4QmhoT2tEeWZYQmZpU1Y3bFJOM2NTdUNaK1VM?=
 =?utf-8?B?K0FKYnVVc3NWbWRubVhyOVNlR2wvdXFFNTN6dy9wNWxLSmZlM3R5RENOVHdM?=
 =?utf-8?B?SUUwS29HZDh6Tktzb1FjOFlJUVhTa0RuQ2tYaVVGbzFwRDR6MFpuZmRoTmwr?=
 =?utf-8?B?eDB1ZE1WcGgvMTBISTRrVm5CWjZNZ3hWOWVvLzQwOXFWeis1UkpBb1hHSE1y?=
 =?utf-8?B?d2ZmakI1R1dIVldYSzVOcXU2dDExcC9QOTA1eGZzOE5VQkdmYVhFZmhHbjNN?=
 =?utf-8?B?MmtJSWlJellIb1ArYlZvdVo4TE0vK2g0aTdjdFBTdFVtMGt5dWVzN1lSUGtV?=
 =?utf-8?B?OVRyUThlM2t5cGZFbk9wUDNtc2Zsb0V4VWorRXV0c2dwV1ovS1gxNzRlYnYv?=
 =?utf-8?B?dHZmQjVhdVR1cEtpL2tqUXRpNkRrN2U4S2xHYXJ1VVZZVlR0Zzg2eGtMOWZu?=
 =?utf-8?B?Y3pYNDE2QWE5d3JnRE5vZ3VDRWlzeExSRmlBbmkwTlh1bHZxKzg3YWhXdjFo?=
 =?utf-8?B?c25ZWjdlWkl1Q1pOS3FBMzAwSUtNenIwZElVS29mWkRyaG1jdXBlR1BQaGFn?=
 =?utf-8?B?Y2pjMGRrWXVNa3ozSFJnZmg0MHBXNHR0NHNZMlJHUks0dWtGUGFIbitwTTFG?=
 =?utf-8?B?ZHlZc2d2cVRFUUQ1ZzhJODN4czBuZlVUNUNMMTNmVnBRZzRPUXBjOG1NVFh3?=
 =?utf-8?B?RmpNZjdxZXZNb0ErZFp0V1UyT2FVVk1pRWpWbS9XNE1VemFjZ2ExTUJweXZj?=
 =?utf-8?B?YzNDRFIvdnJMTFFHeFhOQTZGMDdHL0VIZXpocXE1YzIvdWs0emFQcUxwOVYz?=
 =?utf-8?B?VlVlY2FYbS8wWGFmZlZ4S3YxSk5jTVo1eGZYa3pPekNOQ0tNWUtpR2kyOEsy?=
 =?utf-8?B?OEJIZi96L0RFajJhN2VjYnVlVjRMWHNBT2pCT3FqeXZvS2F2OWxBMjBRYXBF?=
 =?utf-8?B?N0JSSU5jVXI2QVVWMi81SFRKSFNNRkowV2VyTW1EMXpKbmZ0T251M0wzRXhN?=
 =?utf-8?Q?1eiwu6+P7S/J0764=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ff62444-66c4-4666-7333-08de75f138b5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 11:13:23.5923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UVwCdVYvokhTxZOfY9qGUy5+XQhfpQc6f+i3b5hwrDpYAJDmClQahWJI9zvGM+XB9U7SXAILi48YiKrcV1fcA4Icqfc6DKlh5/4l5pqEzC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
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
X-Rspamd-Queue-Id: 2D1941B6670
X-Rspamd-Action: no action


On 2/26/2026 9:04 PM, Ville Syrjälä wrote:
> On Mon, Feb 23, 2026 at 07:14:22PM +0530, Ankit Nautiyal wrote:
>> Add a new member to store Adaptive Sync SDP version and include it in AS
>> SDP logs.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/display/drm_dp_helper.c | 1 +
>>   include/drm/display/drm_dp_helper.h     | 1 +
>>   2 files changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
>> index a697cc227e28..9469943d8194 100644
>> --- a/drivers/gpu/drm/display/drm_dp_helper.c
>> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
>> @@ -3507,6 +3507,7 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>>   {
>>   	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
>>   		   as_sdp->revision, as_sdp->length);
>> +	drm_printf(p, "    version: %d\n", as_sdp->version);
>>   	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
>>   	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
>>   	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
>> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
>> index 1d0acd58f486..c71787fc31c1 100644
>> --- a/include/drm/display/drm_dp_helper.h
>> +++ b/include/drm/display/drm_dp_helper.h
>> @@ -120,6 +120,7 @@ struct drm_dp_as_sdp {
>>   	unsigned char sdp_type;
>>   	unsigned char revision;
>                        ^^^^^^^^
>
> Isn't that already the thing you're trying to add here?

Indeed (face palm). We seem to be not using it.

I will drop this patch and use the existing thing.


Regards,

Ankit


>
>>   	unsigned char length;
>> +	int version;
>>   	int vtotal;
>>   	int target_rr;
>>   	int duration_incr_ms;
>> -- 
>> 2.45.2
