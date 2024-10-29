Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087059B4561
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9253D10E5EA;
	Tue, 29 Oct 2024 09:13:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PVBO6pFo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3717D10E5EA;
 Tue, 29 Oct 2024 09:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193183; x=1761729183;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2TOkQdzZO7gRlkNVxlfRQ04b26lWtaL1nczr7N6otPo=;
 b=PVBO6pFooyzOH707CDRDmGAO+3vOt8hGGsTOHqMeiqVylt9VEKWpKDH5
 ZbJnm1luK5Z228RiuaTRFMYXeB8qUO80pJCfPrFPeE6oQhHPpDwcagZnJ
 6BtsPRNOvuOJLwTqK1TCcTz7xsCRlEpx/ZkAZQtM3tReRPkKtldJGNr7O
 4D6n2VPQ+FiyAHb4r6s77ONr81/fkAq/RQYQ0+zPx6h97ev94/uCejxrN
 vliTlCt+qvqtOZjEsZP1AuryM3EMIa3Mounus3O1q/boiiWr2vO4nZ0sY
 Xt7fxUQH3WvyI9B96wZVfSxqmJ1j5/DXgnYgweiOkw6RjNyo7ZvVakflR g==;
X-CSE-ConnectionGUID: vBnDrE/lR6Wea+kpDm2IbQ==
X-CSE-MsgGUID: rgIUlHR5SZWoTavDcNg75g==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="41183302"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="41183302"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:13:03 -0700
X-CSE-ConnectionGUID: S0c66QZuRGKbwvyspgxPrQ==
X-CSE-MsgGUID: YOMcPzfOShmjU2syfy+IDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86505550"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 02:13:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 02:13:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 02:13:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 02:13:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bo49FS87FIv/tXQ/RWl/prf6QaRNIIqeOsk7+Oa/kjlvBcz2dyrkmg3P6hMolxMg2wBrGOzI/iTH7MDHGPUrRw8SMhGk6nsuskFvZ5Uyh5FcEbXAmdxDN3WXpSMD+obHHtmvtqiZkKF60HAdGZPbEtzoESkuooCMxb9tTRjK0MNiq2E7g2vaUlyD8uCrSVuLFWSKcFYIPaVTHj6S87TuRbnIou5V3haHTJVYls5xnJfp24dTrunSJws83mYJ0oVh3nPgzP9paLL4Ot8xE1BwInCoJt4NQH241+/VOY/GMkW6yjbhckjXXybYt29oKpa5BWJh9Rtm43rS/8nL0ZHxbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2TOkQdzZO7gRlkNVxlfRQ04b26lWtaL1nczr7N6otPo=;
 b=dKZ46TIiY91r89qpa2DO1+pUGQnBIJ30/JnchtXTgLlfODtVvVSUgI4/JZiPBCWerv+h9EZNSG+REZH+7lz+ILCRbjsYnrosirJFl1XA/k7BN0r+TydrStpk3Zft7S9OWa1U8UJZXFiVwmil8bU64fO/mFAiSDMGr/LrGLBRm+9q2WTZA4WW/8OBCmm+mCFdbM9F7MaLPtVOze0QKvHAiPL421eGCY/SmUq09Wh7FSUV21+ObYSiwhWHV0xD8g+bfWV5YgzIpErKauZdNozdOsckDLQ3XDMvHgWMzDov7tkcMRr16jumCkGKq9ll3ZpIFyKWRuKZ9Pu+/Ci+FdBw7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB7274.namprd11.prod.outlook.com (2603:10b6:610:140::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 09:12:54 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Tue, 29 Oct 2024
 09:12:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Index: AQHbKcMlpoZbu/w0fEWI06u0i8Tng7KdaZEAgAAExJA=
Date: Tue, 29 Oct 2024 09:12:54 +0000
Message-ID: <SN7PR11MB6750464AA0529224D9B5B755E34B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241029052603.215853-1-suraj.kandpal@intel.com>
 <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
In-Reply-To: <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB7274:EE_
x-ms-office365-filtering-correlation-id: c8ecce8b-c8e1-488a-b035-08dcf7f9df1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OFZvWkt0MDdLM1I0aFRaNHlmRThGYzdYdnNZa1VKb2tXVCtUWTc3SmlXSk9w?=
 =?utf-8?B?MDRNVXNvWUxJdU5RYTlQdUxOTGxvTC9LWVdPQWVDdU81eFVuZmkvRmxDZ1Q0?=
 =?utf-8?B?ejhYWktmcTJPOXhyenhFMWpmbGFWejVodEh4QmdwcWZmNUpIMnNPTXdPZ1Zq?=
 =?utf-8?B?MDZ4VU1yb25PZ1p0VksvZGZBNDdsa3pYankwVGxvemVkMkhHNkpwM1lzNlZk?=
 =?utf-8?B?MmgvbUNBM1NFWTFPNXBUMDhaSnZuR29lSTlMNWJWeSszS21QNWhMbW1PSHFF?=
 =?utf-8?B?RktuM3FIOUZCaGdKcDhLZVd0VFo4VlArUEVBTDlnMWZHWTN5aHMvUm42aFN0?=
 =?utf-8?B?bUFwditGN2dKSFVKaTNvczVDNXRuYi93aEk2Zi9XTDNaWGZmeWRzdVFZdGVz?=
 =?utf-8?B?dDgzMHRLQlQvNDhPYVNjei9uemxvdjh0VzU1NjJzYzZ6U0ZoZHFZOTRDWFJR?=
 =?utf-8?B?bFVsSDhqWXhpY24yOUErZkFFZzJsa3dIMnN1WmlXbXdJb0lXSnRGb3BDUW9p?=
 =?utf-8?B?SDlMUms0OTNobkN1cjZuQjJzN0pxbFpiSG9wOU4veWo5Umw4UEdYNGFsYUJ6?=
 =?utf-8?B?MXRxUHQ5Y2ZFdStteTI5SjVEenY4ZHBFRnF4UENZQkJXU0U5QkRlcG1lbWZS?=
 =?utf-8?B?K0hFZS9SQXNocGE3RUp2MGRYR2pVNFMxL3NxRmE4bFBPdTF1dTJaQkMvNjZE?=
 =?utf-8?B?T0oyeG9BU3lPRlVKVS9YditVcXZRa0MzS0hhNmYzWFNoNk40cnpnUEZmOWpy?=
 =?utf-8?B?Wi8ySDBHNDF6NDl0ellvbXo0ekM1Z240UUNkNUlrU1VvZEx3dmNHMU82bklT?=
 =?utf-8?B?bGQ4cnl6eExrckUvZStOSG5mSmNNazhqcFdCQ1p3VTE0Um9NN2tEdU5PMjNy?=
 =?utf-8?B?eXBMWnQwa2pxWW5qVUY0eTdXcWdpNkNGQUFMUlA1d3N2czdDTXcvRnp1UWsx?=
 =?utf-8?B?OUZiRlV1QlBiMWtQZkRHeEs0Tlg4ZmoyWlZDbWg3eGNQMkptYTl4Y2ZtbCtu?=
 =?utf-8?B?ZGFLSmxDTmw3cXZFVTVudWwyYUVIUngzM0wxTUhENHM1M3FvY0o3TFI2UDRw?=
 =?utf-8?B?RjlNV1g4VTQ0NE5FckN6bWpqcW0wZDBwa0VEaFJzRmUyYk9Oa0NiYXg0c1NR?=
 =?utf-8?B?QmE1T3VMMmFPL1UvYmxiL2dWSXpIa3d5c3ZkTjlUN2dXWXFwaVhjNGVnQzlP?=
 =?utf-8?B?OCtEbkZ0czJZd1psL0lxU2NYb3J0cHlmN0oxYzBQNnlVMkxMOEpNa3Z0R3Bq?=
 =?utf-8?B?TmZ3c3ZySC8xbzEwRDBvS2VLTTBZK0s1RzBrM3ZKWVo1TGwyM1BoZ2h2V2U4?=
 =?utf-8?B?a2s0MmtHNU1GMFJodG1PKzR5d3JaSnRlZEtCRzdaMWwvQ1FGbFlUdzBwQzFZ?=
 =?utf-8?B?ZllFcHJRK2dDZ1FhT0tGMnUyUzhnWkg5Zzh4Mjc5algrb1JtRHZxbGRPUHhL?=
 =?utf-8?B?aDNqSENpT1RjZGx1TzlvRWhjbWpMempzRmdpSkJLRWg2QnJ0R1NYYU9rMjZW?=
 =?utf-8?B?VGFnMGF5Yk5ab0V0bnlkejNEU0dIQmxheEJGOHIxdTlwOWphUVpTckc0TVl2?=
 =?utf-8?B?RHJSTVZKV0VmbXcwaFlSMTM0MjZZWTB6UzNYM0Q5alNYbUhMV0l2cUI2V3Qw?=
 =?utf-8?B?bjhleU5ZVEpwVTNpREtzWWtxMDJvczRLWmFsdG1ncGNYY0hOZ09zYk11Vkl5?=
 =?utf-8?B?T2NNREJIM0ZkcDBzS3hxNE1MOG8yc0JDd3dNYnhUbGdNN2xNcHg1L3k2WUVr?=
 =?utf-8?B?Uys3Tk15dVpRdFhydFlTdDdNV0srQk5BeTNZQXlReHRHSEZ1Wlg2TVFTVTNk?=
 =?utf-8?Q?LMjukb1kwQmKHu8p6LLHYCzjqHBzTIVzpOLqU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODV6N01wZEQ3STdYelhVa3FJRHZiNCtMdG1mbnN2MXlWY0REWU0yZUxwNzFX?=
 =?utf-8?B?bE9lNlBndTQ4YzNPK0RBKzRubEx5L3JXTWQyUldZL1ovbW84dFNXREc1eTRO?=
 =?utf-8?B?T01Ra04wM0FEdDN1OEMzeFJOZG4yVGhML2hTVkIzWkhITkxaaUkzVWhwa2Rt?=
 =?utf-8?B?czBNSTdvMk1hK294Tm1vQVpiT2lOZmprR2lwN2o0dG91S254MGFqaGN6M1JN?=
 =?utf-8?B?UXRzSGdZTnlSTGtBcUhsck56dGMxU1hvMmxja1N5a1hEZU5QNTNTWlFNRFo5?=
 =?utf-8?B?a0xiUnlCejMwOGdXcVVqTGsxYmJvTEYyanhRS25WNjVHZkFpWlpQR1QweWVp?=
 =?utf-8?B?ZEZEcFlNdUN5NWJIYXpJaTA0Zm1WSTl3WlZ3a1UvYjVCRDArSy9Bc3l3b1Uw?=
 =?utf-8?B?QWhVdlBGaWlaUHRwWHczc3BYVDVMWlYwb2FuL3FESzQ5Ymthdk1BUDhwMDZk?=
 =?utf-8?B?WGI4SWlUbE4zUDQxZHFsMTE1UXl1d0QwcGEwWDlCYUFKRDMzdEtmb0t4YWY3?=
 =?utf-8?B?dVhqYUNtUE9xK0NaK2lXbUhoNlgxcEdTVnh6WjZXek1SV0ZycGNDTy9uUmFz?=
 =?utf-8?B?WENCakwvZFNFZFQ2T1pseGlhallMWHdyRnNDcVZkRGdGSEV2WXpCK2tnYnds?=
 =?utf-8?B?SnJRczNGcHQ1R1V2OVpEeE1jTlN1WGNiQStIYkpBQjc5d05IMnk5RUpkMGN1?=
 =?utf-8?B?TE5CNjI3aDB4cm80Wnd6elpLVXBtcW1FYzVMcUV5QWt1SDJoRFZSSDRhcGx0?=
 =?utf-8?B?SnNNQWNZYThhK3U2TW5RRitUeDhtUkxIdWhvWjVIWW5IT1gxVUZFZXFDY2JL?=
 =?utf-8?B?akk3N25XdWc2ZnJsM25Pa0svZitTL3AzWUgvaXZRLzRYMW1nSjcwM3JZZzJY?=
 =?utf-8?B?Q1NGZlAwd3BsTUw5S2daRFZoYzEySGNJbFBtYUY4MVFoYzNjdDJiaFE4NkdH?=
 =?utf-8?B?bS9LZ3dDVjVLSDdXOFJjNmdORWMvYUJYR0tzSDdHMFhaU1JnZmN0ejA3cURj?=
 =?utf-8?B?ZHpDczNrNzRCem1rWXVERVZvZFVhQ3FGNDQwYzJMRG5SOFc3YVcyWEFpaW5v?=
 =?utf-8?B?Y1FlVDdZaXNDQUpCTkdNMjg4LzBWQ1VjcjhmTUIxMk5EZDhVSWp5MFg0d3BW?=
 =?utf-8?B?WDNyeXJJMklseFV6aSs3OGd1V3MvTHhEWG9LZ0RUMnZNMlQwVWVEcUg3d09T?=
 =?utf-8?B?TkFzRTJVRkJCL0ZBRk5sU1o1M0p3emRZOGF4MGxRQ2hycVovSG1PWk1HV0hH?=
 =?utf-8?B?WTdyaGpMbVMrVU5MWFk3VlFsNnhLeXlkSnQwalA5QVBYdm1WbWN3WmVSempv?=
 =?utf-8?B?dFVXY1lhWlRORUZ6NUJ1eDB5UitPNFh1ZVE5RHB4eHlhRDM0cVFKdjhYR3Fq?=
 =?utf-8?B?YmtIa2x1UzBNanV6ZnM1Wm5QQVU3WExWc2trZ0pFTTFWQlpoOGl4RjA5Y0lo?=
 =?utf-8?B?UEFVYXd5MkNGRHRTYUlZVmNzaWtweUplV0hkWlJBNzJXQmU4Z2J3K3NLK3Av?=
 =?utf-8?B?UFVqVVJaODVtaC9ub3Y4Z0N6SGRTNXJlUzhPS2IwSVQwS0lxNHJ5cVNWaVRv?=
 =?utf-8?B?WEMzSlJWcW0xdmd6TW1DbEdabmJ4dzM5V1R1MkkweHhmdzNpRy9ocHQzZU0w?=
 =?utf-8?B?Rm92cnlBT01ZMHpob3EybEwya01hWUhFWVBBL29GaHAwM0RBRGxubUxUZ1FK?=
 =?utf-8?B?RkZyampzQ1QwQzBaSWtkalFZaEExTUVTT2V3VDVvbWNIWXV3VHJ2QkpieXFD?=
 =?utf-8?B?RFJxTUlsWHRtL2xUVnRFcDFwMGpqMElIQjRHbElYTkFqUGhoQWk3VWM2aGQv?=
 =?utf-8?B?cTlzc3JwckRuRG4xdG9sMWozQmtPc3R4RWt3Rzk1S1NIT2FHU1duTGY5UklU?=
 =?utf-8?B?c0h4UkkxNzcrOWlPZVk4TjJoUmZ2bkRhcU5DREhnbHh4WWlJVzM2bTFQZU1R?=
 =?utf-8?B?OTh3eUNsMkZQL3IzazUvb1V3c1QvanZsaEFJOWFzbGdIUzNFbWZaeWlWTGx0?=
 =?utf-8?B?UVZvdzdsenorZitKM2kzelhWQmJBZjZUanBvbzBuUG0xR2FkV0FuQXZDbGo0?=
 =?utf-8?B?YmtTUUhndnYrcGFzNjJuSmp5NEYvU05lNTVqSE1wRnZGTmpYN0sySlpMdGFa?=
 =?utf-8?Q?RP2p5YkDk3oiEXK1T8GrN3kPC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ecce8b-c8e1-488a-b035-08dcf7f9df1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 09:12:54.1201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A/BBzbgjCAhz+9bsXa/rAfm3xN4gOqrdtW6iuPlN5NAxK/g+DundpOEnG8Iy+Nd1FmKOzBFuGPMMr3n/N/QxDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7274
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

CQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBvdHR1bXV0dHUsIFNh
aSBUZWphIDxzYWkudGVqYS5wb3R0dW11dHR1QGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwg
T2N0b2JlciAyOSwgMjAyNCAyOjEzIFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2Fu
ZHBhbEBpbnRlbC5jb20+OyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5
MTUveGUzbHBkOiBEaXNhYmxlIEhEQ1AgTGluZSBSZWtleWluZyBmb3IgWGUzDQo+IA0KPiANCj4g
T24gMjktMTAtMjAyNCAxMDo1NiwgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBXZSBuZWVkIHRv
IGRpc2FibGUgSERDUCBMaW5lIFJla2V5aW5nIGZvciBYZTMgd2hlbiB3ZSBhcmUgdXNpbmcgYW4N
Cj4gPiBIRE1JIGVuY29kZXIuIEFsc28gcmVtb3ZlIHRoZSBXYSBjb21tZW50IHRhZyBhcyB0aGlz
IGZvbGxvd3MgdGhlIGJzcGVjDQo+ID4gYW5kIGRvZXMgbm90IGltcGxlbWVudCB0aGUgd2EuDQo+
ID4NCj4gPiB2MjogYWRkIGFkZGl0aW9uYWwgZGVmaW5pdGlvbiBpbnN0ZWFkIG9mIGZ1bmN0aW9u
LCBjb21taXQgbWVzc2FnZSB0eXBvDQo+ID4gZml4IGFuZCB1cGRhdGUuDQo+ID4gdjM6IHJlc3Rv
cmUgbG9zdCBjb25kaXRpb25hbCBmcm9tIHYyLg0KPiA+IHY0OiBzdWJqZWN0IGxpbmUgYW5kIHN1
YmplY3QgbWVzc2FnZSB1cGRhdGVkLCBmaXggdGhlIGlmIGxhZGRlciBvcmRlciwNCj4gPiBmaXgg
dGhlIGJpdCBkZWZpbml0aW9uIG9yZGVyLg0KPiA+IHY1OiBBZGQgdGhlIGJzcGVjIGxpbmsgYW5k
IHJlbW92ZSB0aGUgV2EgY29tbWVudCB0YWcNCj4gPg0KPiA+IEJzcGVjOiA2OTk2NA0KPiBJIGRv
bid0IHRoaW5rIHdlIHN0aWxsIGFkZHJlc3MgdGhlIHdoeT8gcGFydC4gVGhlIHJlZ2lzdGVyIGFu
ZCBiaXQgZG9lc24ndCBnaXZlDQo+IGFueSBleHBsYW5hdGlvbiBhYm91dCBkaXNhYmxpbmcgbGlu
ZSByZWtleWluZyBvbiB4ZTMgcmlnaHQ/DQoNClllcyBpdCBkb2VzIGhhdmUgYSBsb29rIGF0IHRo
ZSBiaXQgZGVmaW5pdGlvbiB3aGVyZSBpdCBhc2tzIHVzIHRvIGRpc2FibGUgaGRjcCBsaW5lIHJl
a2V5aW5nIGZvciBoZGNwMiBhbmQgYWJvdmUgZm9yIEhETUkgdHJhbnNjb2Rlci4NCkFsc28gcGxl
YXNlIGFkZCBuZXcgbGluZXMgYmVmb3JlIGFuZCBhZnRlciB5b3VyIGNvbW1lbnQgb3RoZXJ3aXNl
IGl0IGVuZHMgdXAgZ2V0dGluZyBvdmVybG9va2VkDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFs
DQoNCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRjcC5jIHwgMTEgKysrKysrKy0tLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgIHwgIDEgKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRjcC5jDQo+ID4gaW5kZXggZWQ2YWE4NzQwM2UyLi43YTMyYmZlZjhk
ODcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZGNwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3Au
Yw0KPiA+IEBAIC0zMSw3ICszMSw2IEBADQo+ID4gICAjZGVmaW5lIEtFWV9MT0FEX1RSSUVTCTUN
Cj4gPiAgICNkZWZpbmUgSERDUDJfTENfUkVUUllfQ05UCQkJMw0KPiA+DQo+ID4gLS8qIFdBOiAx
NjAyMjIxNzYxNCAqLw0KPiBQcm9iYWJseSBpbnN0ZWFkIG9mIHJlbW92aW5nIGl0IHdlIGNhbiBh
ZGQgdGhlIGxpbmVhZ2Ugb2YgdGhlIHdvcmthcm91bmQNCj4gKFdhXzE2MDIxMzUyODE0KSBzb21l
d2hlcmUgaW5zaWRlIHRoZSBmdW5jdGlvbiBzbyB0aGF0IHdlIGtub3cgd2h5IGFyZQ0KPiB3ZSBk
aXNhYmxpbmcgbGluZSByZWtleWluZyBmb3IgdGhvc2Ugc3BlY2lmaWMgaXAgdmVyc2lvbnMgYW5k
IHN0ZXBwaW5ncy4NCj4gPiAgIHN0YXRpYyB2b2lkDQo+ID4gICBpbnRlbF9oZGNwX2Rpc2FibGVf
aGRjcF9saW5lX3Jla2V5aW5nKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAg
CQkJCSAgICAgIHN0cnVjdCBpbnRlbF9oZGNwICpoZGNwKQ0KPiA+IEBAIC00MywxNCArNDIsMTgg
QEAgaW50ZWxfaGRjcF9kaXNhYmxlX2hkY3BfbGluZV9yZWtleWluZyhzdHJ1Y3QNCj4gaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgIAkJcmV0dXJuOw0KPiA+DQo+ID4gICAJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDE0KSB7DQo+IA0KPiBOb3QgcmVsYXRlZCB0byB0aGlzIHBhdGNo
IGJ1dCBwcm9iYWJseSB3ZSBjYW4gcmVtb3ZlIHRoZSBhYm92ZSBpZiByaWdodD8NCj4gVGhlIGlu
dGVybmFsIGlmIGVsc2UgbGFkZGVyIHdvdWxkIHRha2UgY2FyZSBvZiBldmVyeXRoaW5nLg0KPiAN
Cj4gVGhhbmsgWW91DQo+IFNhaSBUZWphDQo+IA0KPiA+IC0JCWlmIChJU19ESVNQTEFZX1ZFUl9T
VEVQKGRpc3BsYXksIElQX1ZFUigxNCwgMCksIFNURVBfRDAsDQo+IFNURVBfRk9SRVZFUikpDQo+
ID4gLQkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBNVExfQ0hJQ0tFTl9UUkFOUyhoZGNwLQ0KPiA+
Y3B1X3RyYW5zY29kZXIpLA0KPiA+IC0JCQkJICAgICAwLCBIRENQX0xJTkVfUkVLRVlfRElTQUJM
RSk7DQo+ID4gKwkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwKQ0KPiA+ICsJCQlpbnRl
bF9kZV9ybXcoZGlzcGxheSwNCj4gPiArCQkJCSAgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKGRpc3Bs
YXksIGhkY3AtDQo+ID5jcHVfdHJhbnNjb2RlciksDQo+ID4gKwkJCQkgICAgIDAsDQo+IFhFM19U
UkFOU19ERElfSERDUF9MSU5FX1JFS0VZX0RJU0FCTEUpOw0KPiA+ICAgCQllbHNlIGlmIChJU19E
SVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZFUigxNCwgMSksIFNURVBfQjAsDQo+IFNURVBf
Rk9SRVZFUikgfHwNCj4gPiAgIAkJCSBJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZF
UigyMCwgMCksDQo+IFNURVBfQjAsIFNURVBfRk9SRVZFUikpDQo+ID4gICAJCQlpbnRlbF9kZV9y
bXcoZGlzcGxheSwNCj4gPiAgIAkJCQkgICAgIFRSQU5TX0RESV9GVU5DX0NUTChkaXNwbGF5LCBo
ZGNwLQ0KPiA+Y3B1X3RyYW5zY29kZXIpLA0KPiA+ICAgCQkJCSAgICAgMCwNCj4gVFJBTlNfRERJ
X0hEQ1BfTElORV9SRUtFWV9ESVNBQkxFKTsNCj4gPiArCQllbHNlIGlmIChJU19ESVNQTEFZX1ZF
Ul9TVEVQKGRpc3BsYXksIElQX1ZFUigxNCwgMCksIFNURVBfRDAsDQo+IFNURVBfRk9SRVZFUikp
DQo+ID4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBNVExfQ0hJQ0tFTl9UUkFOUyhoZGNwLQ0K
PiA+Y3B1X3RyYW5zY29kZXIpLA0KPiA+ICsJCQkJICAgICAwLCBIRENQX0xJTkVfUkVLRVlfRElT
QUJMRSk7DQo+ID4gICAJfQ0KPiA+ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggaW5kZXggNDA1ZjQwOWU5NzYxLi4xODQ0MjAwMTFhODgNCj4gPiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC0zODE2LDYgKzM4MTYsNyBAQCBlbnVtIHNr
bF9wb3dlcl9nYXRlIHsNCj4gPiAgICNkZWZpbmUgIFRSQU5TX0RESV9QVlNZTkMJCSgxIDw8IDE3
KQ0KPiA+ICAgI2RlZmluZSAgVFJBTlNfRERJX1BIU1lOQwkJKDEgPDwgMTYpDQo+ID4gICAjZGVm
aW5lICBUUkFOU19ERElfUE9SVF9TWU5DX0VOQUJMRQlSRUdfQklUKDE1KQ0KPiA+ICsjZGVmaW5l
ICBYRTNfVFJBTlNfRERJX0hEQ1BfTElORV9SRUtFWV9ESVNBQkxFCVJFR19CSVQoMTUpDQo+ID4g
ICAjZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX01BU0sJKDcgPDwgMTIpDQo+ID4gICAjZGVm
aW5lICBUUkFOU19ERElfRURQX0lOUFVUX0FfT04JKDAgPDwgMTIpDQo+ID4gICAjZGVmaW5lICBU
UkFOU19ERElfRURQX0lOUFVUX0FfT05PRkYJKDQgPDwgMTIpDQo=
