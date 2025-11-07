Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5300C420EE
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 00:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C5610EBAF;
	Fri,  7 Nov 2025 23:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ik4zjo/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B9010EB9E;
 Fri,  7 Nov 2025 23:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762559643; x=1794095643;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=P8XmKByEgwglZQq8z8tA4bpRhYjUiBvXyAEoU9MgqMg=;
 b=Ik4zjo/SOubJHp/+OAfqsZRc+u2uYpgPxYYiBl6TULvZLhTvriWhJd3s
 UqXFXrqL+F4HmLIiFjRQjr4uxXkQJsiwJ9ooy592W4Y3Iw8yg1tiGS5F+
 cpeS5fbSBY2y63Cp/+Ruktd4be3otZJQ7FnS8HPvSNRRRxVmWrSZRoyTv
 nSsl3Hhaxscckrb7JCNmZ4xLBdAhgNs6a0hKTadXtX90vXKcdXmWwYXwy
 UEkOsRxxwIDN+21lUQsAY/X4j5MTZ64QgF5z9UAnGYjL6UtN0dvBhw6Kd
 ckPTO55RYHdSZMM6AVLZfU9fTJFgYQoHaMTvAogsTsRIbBpQtpVlsP3ov A==;
X-CSE-ConnectionGUID: aX3gcf5NQN+V5EJYdy6biQ==
X-CSE-MsgGUID: MuVK4/JNQjyk+fwG2VeGcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="68553019"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="68553019"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:54:03 -0800
X-CSE-ConnectionGUID: apP6+0SCT4iaICsCkgcSHQ==
X-CSE-MsgGUID: rB9zxpeSSqCV5ro1+zMtUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="187468183"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:54:03 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 15:54:02 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 15:54:02 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 15:54:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JISxZtRCBWOrUdMXg9RyaoVYiwBPV8Hf/rJycRxxQ1bIBzmb76wfyhsR8iYBOaE/sr602OfYtD/65fe/zYavCPaFUeodOhQM7T9fijiRHOvi7l3a33V2M3s10q/JSdYkfPkDR7XOKh0kM9aOjGYBAz7OSvLlOsv1AG3lq30GJEZyMZ47BGQiw6AGopj9dGMz5TFClrkvxm3k21laLaSTe9GSjzPYflHWvoX8MPEECyOqleHBwAvuojX9yNP5/gKrduz4P1/CEd0dudYWd8s4jOREo8OIIQgyGd5nNXu97MJXyRwavcoiUHOuzsAA4XkyBE/c5bWQwmWDYhuqq794wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQqNfRvgc4aVQKoqm/yfZREZ/eglrSn47RuhDorpNn0=;
 b=tCawrvIegrIg2u5AS9o0O+/FK5i5lrWNrHj3HWEwLM6EkEhKGi2fwLNZl9uc6p+ZC351RYy1XhvODIqDt/gmDmsc1ENjhuTp7nnxwo2PxMIL3hBbINigvCRKTYPGQArbRIa61lelBYSES6XtdAAtit3wLz778kFa7H+P39dtBX4qAfEXEGQ9dj3cVpfESGKNXASFre4zKaTO9mEY4h3Ztq7i3OHCUZBArNdxm1Lo3yxD8/OIB4UMznk0Y4f8G4loifo5V9+9XAj6IupQ69p/ABIpxhoFcfUU2jeL5kl7dG83EZIK1WmWqo/29G5yblgjwb0K2b5EGwASb015hWUCBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 23:53:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 23:53:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251103224827.GB3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-19-00e87b510ae7@intel.com>
 <20251103224827.GB3905809@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v3 19/29] drm/i915/wm: Do not make latency values
 monotonic on Xe3 onward
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Date: Fri, 7 Nov 2025 20:53:55 -0300
Message-ID: <176255963559.2001.856665786291066518@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY3PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: 847b8529-67ef-4589-3395-08de1e58ebd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkxyVEtJcGpQRFFYcUx1QklnTXUrZHo2MzNsV0hsMm1EQy8rdzZ0eEh1bmVX?=
 =?utf-8?B?c2Q4UGlaZ1lVOGVzRy9EMXhQWmFrNTRxSGNPU2RyOGZqT3ZxdEg1ZTk3UEpO?=
 =?utf-8?B?SUZJRUNwMVMyMXdWZDNCbVY4OWtGUnhOV2NmNjQvckRGR1JYTCtGTUMwNFZD?=
 =?utf-8?B?V0lqMUlGc1BNSitwYVRIK1pGczRNam9KaEpOWGVCc0xURytLOS9QRlNnZ2NS?=
 =?utf-8?B?SEdqN0MwSG5oR2s5MVhtRlh6RTluQ3dCNVNkTzNCN2F4ZGYwTDZFb0ZUdWhk?=
 =?utf-8?B?VTQxT2FXRTk3aFFYTmdqNkZTdWNVZHlnY0hNR3BRMTlnV0tDNUdHQStTK2s2?=
 =?utf-8?B?a0JwV3FERlBERUlxTVRtNGdoVng0Y2NKOE9YS3RBS2xDYzNSY05FckY3c1Nu?=
 =?utf-8?B?ci9reU12Y3pIM1RpcktURStYREx0Y3hVQ0RsVWF2UTNMS0Zrek50R3VLNTRY?=
 =?utf-8?B?eVNqdkRzdlRuYTJUTTVNcWVZTmVPK0dNeVM0YVhWSTV4QlFyVVE4UWdSN1l4?=
 =?utf-8?B?WjZ5RUNXVDZobnRLZHhoY0g5ZGpIVmZFWWQ2Yk04UTZ2OFREV3A4NndyL1p1?=
 =?utf-8?B?N1Y3MGlDQVExRUNIeVVuaU43aU54Y2NlWUtzNS93YWd1Z0s2NWgrUXhVTWFZ?=
 =?utf-8?B?T1M2R3pHUC9OcUFieG9hRDhOUEhFbk01UTFlL3IrSFFFeDgxaE9PMUNSOVhG?=
 =?utf-8?B?TkZFaGZ3SDNsNExrUVFselVRTkUrZDRkbHlkTEkzL1haWU5oRjJCTjVaZXlQ?=
 =?utf-8?B?enlUdm13WU1DTFduVkg0d0dKenJIQ0hJamN1MGpqVVAycXZnVTJNUGJIMitu?=
 =?utf-8?B?K2VuZHFyU3JYbTNzQjZkWWdnVUlLVWM3UWI3L1hWUS9ubkh5STArNFJ5d0ZP?=
 =?utf-8?B?U3hSUkZISDEvaXludVV1Tk02MHkwOFhNRys4QTlMWDJHdGVQQ3hFaE1meGFq?=
 =?utf-8?B?RnFHQ1ZkNlJLRy85Vk9CVVNLQzljTTZoZng4bHYwTHExZmprUGMrdzE2VGQw?=
 =?utf-8?B?SkhLRTNHZDNBMW9MejBoRUZDWkNCNFJzcjk3SStCZXJJVys1UTJjTmNrUUZk?=
 =?utf-8?B?VkoybUJzWFhIbGwrWmRIN0Zsck1MMWk4czY4Rzc1TmVWK2lGVnBTcU1VQ2ZX?=
 =?utf-8?B?ZXBmSDhQQ3UzV055R1RjZ21JYmF2ZnVJbTB1KzdGb1RmUU8vUkVDYm1EVVFl?=
 =?utf-8?B?elcweS85WXAxc3pBRUF3cmZBT0hHL2ttNzczeEN5aXkxS3FkeTJQZ1QzZld5?=
 =?utf-8?B?ZkE1ekkweFd2blRDSkZmeGlZT2RrOWNQVmZEMHVpMm4xSTRtUmgzTXBWaHlM?=
 =?utf-8?B?K0FqOTJaMVdjZ2VDOHdEb3lKMmRYdnZQdHpBYlBYSWUyVW14cTg4Y1NNZHJa?=
 =?utf-8?B?cHNPQWRreFdrVExTVE9TRUNxUFMvcUQ1eU9Wd0xDL1YxUnE1VStZWkIxUEgz?=
 =?utf-8?B?SDhXbmZNL1hrb3NYb0Y1dzBTZHdESlRORSs5Z0dHdWZqamQ3cHF4V2ZoQ1ZG?=
 =?utf-8?B?bjBlbXcwaGV4bFlnc3RTYjlRUDhTcG9GL3hxbTBBTERCSDlqczE3ZEJFU1N6?=
 =?utf-8?B?aWt1dzhHdUdScCtZVUo3am9YNVZZSCsxV0I4aDRtOStQMHVCbUhGeHBEU1pM?=
 =?utf-8?B?NXBNUnNLQkhPNC9DSTcxejNTRE9FSHkyUVEzbmRoV3pRUHVSMlcwSnJaY201?=
 =?utf-8?B?ZlBmdmFMcWQ4d0p5ZUVYeVAvNkgvMStKbzZzRnJGc2Rrb3lEZCtTNk1DbG43?=
 =?utf-8?B?aGFEMnJ4OEpOUkdTVnRxMnJCaGQvQkZBMndqRjg0ZmY4UWF0dHJra2tLUTlm?=
 =?utf-8?B?K09Jb3FWSEdNZWNSL0NIQ3R6VG9YdE94VXBPU2tocDJldE9GanB3LzhGVGJR?=
 =?utf-8?B?Z2lrSGNEd28vdVBPbWhYZE1FWW5DYlZVQnZpQWhVSUFLeDRGL2tZZmxUNFFX?=
 =?utf-8?B?bDJheG5JQSsvUnphMUNMRE9DVC9uSkRqOCtyRkJvak5iRnhFOTFmVnJVTk9n?=
 =?utf-8?B?Z2hGNGhmcGZBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDdKRkxJTEFuVytKSjRKUkFhUFpFM3hCcUFGSWVLeXgxai81d2RlL0tHa05O?=
 =?utf-8?B?MzNqbzJWeU90cGtubVd4cWlNRkRQRFZLSkZtSWR2eU5ocmZWY1M2YXNTbmhG?=
 =?utf-8?B?alNPVWU3cjNKOGZ2OHZwZjJYUjcrTE9nV1Q1UmsydlkyRFppcU9lT2xGZjFh?=
 =?utf-8?B?eHprSUhuT085UEZ0Ui83MTRVN1ZiTDQyUk5nRXA5dEtJODJBZHVEQmVJSm9q?=
 =?utf-8?B?SFVvd0EyNU5zVythdS9aYk1XaGlFT1BPOWZySmhjQlVwSklFN2U2MFEwRzFS?=
 =?utf-8?B?aVMyZmp3QzlxeW5aMit1WUh2T0RJTFNEeUs0Nk1GQ0FsazFnRkNzME0zUUM5?=
 =?utf-8?B?NGJzK2FsQWxCODRVYkVjdjRkVXp6OWNodXpmNjRIM25kMXpNYURDOXk5YzBI?=
 =?utf-8?B?UFZTcDJoV1cvL0RFL3BFa0FoVXdqZm9FRGhRMHFPaGkvQ3FSOXg1OGlkSEJm?=
 =?utf-8?B?RmwwakdBakFUbjNZT2NUOW5JNzNCM09RK3V3TGFwbmtIQUxLSHZUWS9KYmxv?=
 =?utf-8?B?MzRsS2NVb2FFM3FKVDRzTkZmOWlUdzMvSXpPSDdwMmgyaHF0WjhOamNiY05a?=
 =?utf-8?B?N3E2VWdHNHRUZE40WDJJVTBIMHNwK3ZXK1lGeXFkdXZNTDgvc09HMHp5ZUpn?=
 =?utf-8?B?TXRNbWhaMVR4K3ZPeUR4SDcxV2hEQ0txVEJzSEFaNXh3SWhoMmk1bjBRYzhC?=
 =?utf-8?B?eDNlUlJMbGVnd205TTNSTmozZDhETWVYTUw4b3FGZFB0ZEZsR3VaSlltTUdY?=
 =?utf-8?B?R3FIUVlqT2ZtYWptSk9OaHhKUk1ueStmd0FySGc5Z1RJTC9temEwWHBlUWZl?=
 =?utf-8?B?aS9iNTNRWXlQcE9LT1M0YXdXOHhLck5Uc3Vld2VCRTB0cFdGdGsvR2ErSlQ0?=
 =?utf-8?B?UzBTKy9NNmFWYWxDSkdCVXZWMjRuOWpGQzhqUlVWQzNhUEJGRUZHeWdpVmJ1?=
 =?utf-8?B?RW5yV0RFWGp5TzV4cHlNRDg0VllmV1c1bWs4MmIzSTdEVzJWZHIzMXF1VHRx?=
 =?utf-8?B?ZFVkbk16YytCdjIwdUNLdVZ0dk94cmd0NmFLSUJKTzAzOHpOOVJnQ0FNc0lV?=
 =?utf-8?B?TGdwRWNNbDhGS2NMYklYa0YvOEZNak56ejJQYVFGSit4dlltcEExSW0vZXdY?=
 =?utf-8?B?cWZzNUowL1NBQUN2RGFkbTF4YnUrSVEza3pRU09tbk1MeGhYVmFZZmdwTzZr?=
 =?utf-8?B?bU1XbHlEUDgyaWErRXBkM1RISkRnU1Q5dUtvZ2NOVHczS1NvQTgyZFdQbWxL?=
 =?utf-8?B?cGtuZG5tTVNQMjFkS05NUW9qSU4zMUQ3NVRtTWQ1bUQreVp3MWxtNm9Bd2dp?=
 =?utf-8?B?aTJDVlQvZm91MkJheGZYdnNxQnRGNVZ4YnJiZmlQaU1wa3VVM0lmZG53bXpJ?=
 =?utf-8?B?YUorcTBucUtoT0V4S2JBSG1YSTdmL0tTd1Zndm9ITUFIZHZkWmtJVFRCc0RO?=
 =?utf-8?B?NjVwaHpIY2RxaFNHV2pyWVRTV2lwTFJVTGllSlpZVGRpRzNWWXYzVHZKNmVB?=
 =?utf-8?B?Y1dML0JER0xReDhwNHdzcFRWOUpWejY0MVNTbWpyb3pXOTNMNHVGTGt1TGx0?=
 =?utf-8?B?UUM1b0dFbWtCaHQwZXVIREwxNUl1WXhPcDBBNjlmL1dOYm1NM1dKTk5UWm5o?=
 =?utf-8?B?YVN1eUxiZkltOFc5WVFJaGtYOGw4eDc0ZVY5L2w5eUdEa3kyN2tyTnRsOXI0?=
 =?utf-8?B?ZFB3VGtiT0hYdU9CakFPTFRpcEdpVCtEMFFvV2RtUC9NRkUvVWRBSkVGT0gw?=
 =?utf-8?B?MmRMZ1hrMGVLNnVoR0xYRnk5aTZVZmMxT2MzUjBJYWllSHB1dE56L2NSbE1p?=
 =?utf-8?B?UDZscUdaam1tbDlRM3p4cVBUQ0p0di9Wd1JqODFBUzQ2eVoxaWVKSmV1SnVE?=
 =?utf-8?B?dEsxeWdkcGh3R2RsTW10L0RyTEJFZThFRzBWZTZpSGhyVmVHZXd6ZHVKd3Nn?=
 =?utf-8?B?SlRDSUdBL3dBdXJPbEdVcWJFeFZiQ0NXNmtXcFYwREYvR3VHRHNGQ3dzSjlq?=
 =?utf-8?B?bFFJZERBS2FFTmEveUsrMVd1eDlFNTNncHpmQ2MzbWFJZ1k2SlVlY1JWU2lM?=
 =?utf-8?B?NGlTVnJETGZDSE9BM3lZNGRTSXpsVUQxUWdFYnhiMU5RdW80Q21FQytMVzB4?=
 =?utf-8?B?TUpnY0F4V2lweHh6UWI4Y05jYW1tSnB2SEM0c3B1ZittcUxMZHpLaW5lZkRR?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 847b8529-67ef-4589-3395-08de1e58ebd4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 23:53:59.7306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: inyE79b488UMoJOydfIadMYK5V1NhYKn9IGqewIS2dIVUnZ0UEP+wVP4t6+IucKy8XA14TZSfBdF7un/yE7dEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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

Quoting Matt Roper (2025-11-03 19:48:27-03:00)
>On Mon, Nov 03, 2025 at 02:18:10PM -0300, Gustavo Sousa wrote:
>> The Windows driver is rejecting non-monotonic ranges latency values for
>> Xe3.  Let's make sure that we do not call make_wm_latency_monotonic()
>> for Xe3 and beyond.
>
>So is Windows just refusing to drive the display at all if the latencies
>look invalid?  If we're trying to match their behavior and avoid
>supporting bogus BIOS values, should we be propagating an error up the
>call stack and failing the display initialization?
>
>If that's too drastic and we want to try to forge onward anyway after
>raising the error message, then is there a reason to also avoid doing
>the value adjustment?  I think the goal was to make sure we weren't
>letting bad settings go through silently, but once we've taken care of
>that it still seems like doing the adjustment might give us a higher
>chance of having a working display output?

When I read Ville's initial feedback (see the discussion at [1]), I
interpreted "reject" possibly as simply refusing to use them and use
only the ones from the initial valid subsequence.  I think Ville might
clarify this.

That said, I believe Ville had a different view of how we should handle
that.  I might have misunderstood something and this patch might not
fully reflect the feedback, though.

Ville, thoughts?

[1] https://lore.kernel.org/all/aQOGWm9x-ZERKfZA@intel.com/

--
Gustavo Sousa

>
>
>Matt
>
>>=20
>> Also, because of that, let's add a check at the end of
>> adjust_wm_latency() to ensure we raise a warning if the final list of
>> latency values is not monotonic.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_watermark.c | 17 ++++++++++++++++-
>>  1 file changed, 16 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index d20c88ebe919..e13324af7afb 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3211,6 +3211,18 @@ static void make_wm_latency_monotonic(struct inte=
l_display *display)
>>          }
>>  }
>> =20
>> +static bool is_wm_latency_monotonic(struct intel_display *display)
>> +{
>> +        u16 *wm =3D display->wm.skl_latency;
>> +        int level, num_levels =3D display->wm.num_levels;
>> +
>> +        for (level =3D 1; level < num_levels; level++)
>> +                if (wm[level] < wm[level - 1])
>> +                        return false;
>> +
>> +        return true;
>> +}
>> +
>>  static void
>>  adjust_wm_latency(struct intel_display *display)
>>  {
>> @@ -3221,7 +3233,8 @@ adjust_wm_latency(struct intel_display *display)
>> =20
>>          sanitize_wm_latency(display);
>> =20
>> -        make_wm_latency_monotonic(display);
>> +        if (DISPLAY_VER(display) < 30)
>> +                make_wm_latency_monotonic(display);
>> =20
>>          /*
>>           * WaWmMemoryReadLatency
>> @@ -3241,6 +3254,8 @@ adjust_wm_latency(struct intel_display *display)
>>           */
>>          if (need_16gb_dimm_wa(display))
>>                  increase_wm_latency(display, 1);
>> +
>> +        drm_WARN_ON(display->drm, !is_wm_latency_monotonic(display));
>>  }
>> =20
>>  static void mtl_read_wm_latency(struct intel_display *display)
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
