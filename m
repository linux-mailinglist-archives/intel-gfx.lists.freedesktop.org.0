Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULBfCVF/oWkUtgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:26:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859111B688B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 12:26:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7371410EAFB;
	Fri, 27 Feb 2026 11:26:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OzrdFnG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7316410E16E;
 Fri, 27 Feb 2026 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772191566; x=1803727566;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7UEYx/Iwm2La6C5+a8lAHREpycR2NkHEP19uIFL5feM=;
 b=OzrdFnG+/noMqRlOlmwyHnjoeWG4QlRGkcvunl9L5mCznTXKEoqzyne+
 mVew5ZB0PFvQPH7NsHcros+kMNPE3QaFqECNeref3doRbjN1IZptJkZxO
 tKlPeF5kUM7hiUtpjhjEaxBzCCY2zqPhUofLCdP/iNohIGr4fxgJkD2ko
 FgAj3Au2gBw2WGjQ3LYt501rynJ5O/b0bYZ5HWdF3vfQrL9XJdjfODK0h
 X9SMU0175ZNoQ7+C42EVdBRbfZg4IRXDC0CD+IX+ozJG4TCYeKRUpqYWK
 i7Tq22clMAOnddG7HaJdMoegHaEyjyfry4q21m22xvwpWsa/iNbIkZYLS A==;
X-CSE-ConnectionGUID: c7T/ouAjRgSiL0UpAtdeWw==
X-CSE-MsgGUID: aXrye9qsTIuozjjOiuLluw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="76880025"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="76880025"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:26:04 -0800
X-CSE-ConnectionGUID: QLuKnM+2SUWSO4AFr0iAWA==
X-CSE-MsgGUID: 0xg7lWNDSP2ZaaNGkT6BPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="216981803"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:26:04 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:26:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 03:26:03 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:26:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mZZEOGgCbJPAvotZUdoZpmc3/5upSH7MmHXlutkRXI31vNX0qtyv5OCfspQfYCRCyacmU4wUGT0n9l7+M/Rqin2l2u4VujxHkDBkatP4MqKYmuoz/EW5l/fVA3NiTvZf61P3ZQN0aKA4i6FzRIBFc7bO/eAKSGhW0tUoePFLGYFY7icilkihn/iuBlOhWXOn7jsSwBwcq7c0nlfsJRB5K+FILHMpnTrfl0ez/sXSrDTfPGVsTf++G6wg+b2jRt/XGljRlwkEbvy3QLQq3dZg67U3x0TxSRq8bCtKD1Q56e9vliN7vYi8LY89vP+WWAmULXRSC5/pkPTPvfPOW2iUfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGVZwjrjojkTIBzPWfIQOw9UeZtPiik/r5W4khJsxzU=;
 b=DXclNZNFKawJGAQIhr2S2bCNJeubNlL/VFFySBiNmDdCkx5KlpRoEdVCGHqI+cn2r/IgjGwQc/z2GUtNHXl+kgcMTLcXdN/vVV/668Axc+xb7dZp/AGB0zJDw/egJGEBKh56TuClln2qd0W+kRmp8gHueWX3L8C/udOLnAmFwXNNFElGw+mXMwwU5QnzVpv3xJumbvDajjBY3p8Hl6R3xWf45jWAcAlR/94G0DzvjhfLVQr5abNYBuOCKLuAW7Ni22Vuis2WvnrB/VD+CZSosMzDnol38U/D5g9L0qB+D4/RE7Cq70ytppKcoGkt5HvvBz/G1yyQwQq/jXCa8nvvxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6987.namprd11.prod.outlook.com (2603:10b6:930:55::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Fri, 27 Feb
 2026 11:25:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 11:25:59 +0000
Message-ID: <7477ab43-d840-4b7b-8088-54a637b3df23@intel.com>
Date: Fri, 27 Feb 2026 16:55:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/14] drm/i915/dp: Program AS SDP DB[1:0] for PR with
 Link off
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-12-ankit.k.nautiyal@intel.com>
 <aaBxTmXGrgAHQ4Ix@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aaBxTmXGrgAHQ4Ix@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0040.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6987:EE_
X-MS-Office365-Filtering-Correlation-Id: 3665c08a-9f1f-4cc0-9c44-08de75f2faf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: XEXqEtttrAi7ryGRZAGNJYoS9OL8fLRGIXcN5Mloi0Q3JNFIb7gCl2huI5+Z8ccvd9aH211g677Dd2u+yq0cJEVOBneWZ7u2kI+ymOdBfpVOuX4CInsF4MNJuBtxBxKkhshoGa/p1KpGHuBbRnZQ0mKYpUbd8XYf1oJ+wqpZaBWFcwv3BWii84C6vrrX5WtAd8ZMeLpe2wH6WNTeBPhFAXCq7jSXYnYTZUVlbhvxhtUKql10Z8LIFQ6KCHbiksOj7EfJjJr0kCn7CLGQbUvMrr2xUiSgX7MJlKIg13dTbh/KmafDHhKVpkBi/sAOrj+3cf5t6qm2xUWSncMndQYEBcVsJHnf5Sb96KpdNyFWGC9vllcGqKd3JXelsEc8RAOuIAGxCL6Y9pMvElbllD/uML3HOsOfQWKVQiSCDlcIP93hcpaBi4VxBQlfhhiigBV0GBtJ8ieSgAIC4P8M1TvtyR+VGfrwCpqsWvE12u4K/EXNGKwgcvfn48aN4f6hSznSULaYIbVtbiTNmK+Zb12HfgqrUia813iD7Upm+My/xMBFL1ZQH5Y8md8d/sihoxUN7REWPZvb+zXe8dvdV1rqAIvVtXnE0zh8AzkwJOdvIZB73VszLmxdtxoogNAI7ijq18aN9ZruCNyzV0JYruFgKYHuTrSSUk29G87XCxPl3wbBHU8LYyp/wfmo5+DT4v0f1bMMUs9ZlOmYOjoILlaW4at4ceoIbsyjjIYfDZYzdX0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjFiVmZYVmlSWXhsbzlrS2g4SGhZNDM4VUpjNFYreUJhY2xTS3haVGhWU0k1?=
 =?utf-8?B?TzlYZXo4QzlxTzM3M3RNSC9Ib3M3SUsyTWUzek9SSmI4c09tVW0yQ0ZjZndt?=
 =?utf-8?B?WWptYXUzT3UyZ21YVXdEcFVxMUdIYmxXazI4U3ZsYVZxc29FWFIrak5UMjdt?=
 =?utf-8?B?cm40WFkrK2dhd2ZGUGFIYU1OVWMvbFJXRGZPQi9XYyt0aHEyTjd3cnlxSnNn?=
 =?utf-8?B?bmJ4V01CSDJFeW53TzQ1aEhNT3lGRXl3SGNlWnZySll6bXY3cFUrY0I3WElI?=
 =?utf-8?B?ditMc01TalNkVWpSSW1EV29FclFPSmR2Wm9BanZSUGx5UFdFR21hN2tNVlY2?=
 =?utf-8?B?MDNBcG1SRDhoZnMyOWFSV2FJUVVwMmlseHRTVDdxTUIrSE0wTmw0REMxV1NV?=
 =?utf-8?B?WFlFVGtFWUxxdFlZUFZBMWJXbTBGbk9kQytRZFBzaEEwYVRVN1c0bDRlZGoz?=
 =?utf-8?B?ZWpVZVg4eUNQWWtRWkRZNVdScVJCcyttTUJ4ZEhFV01id1Bua1pFaWdmeTdr?=
 =?utf-8?B?Z0pNTldQc0dMWG5CaFp0a09iT0hXZmRwVlJhWUJmN0d1UjIzN0xPamJ2UFFy?=
 =?utf-8?B?Sm93bzJnVXpWUkFDZ3lBZWJncUJZcXdyTkxmR0czby9UWHVobXBnVzI4cWNw?=
 =?utf-8?B?U1BaWW5USUpTOU5JZVgxNTFCYnFnWmF4Ny9LdkxmTW5IS3ViNU8velB1NFpx?=
 =?utf-8?B?NEtJd0h4NlpRY25DcDdoZkR1YkNjRVgrOWd5UlV6Zk81bDBNVDJPcTdYSzFw?=
 =?utf-8?B?QmhpOE56NXJEbmR6M0tWbmJHRzBOZzczU3lhK0hFaEszZGVVY2FBQUpjNzh6?=
 =?utf-8?B?UDFhWGdtaXU0R3pkcC9XRHZ3aTY2TDJIUUs0ck1xaVRGbjJUckpNN2pMbUdN?=
 =?utf-8?B?VkY1WXYrNU5uQVZNNWcwNmVMZC9hU1grUDhvUHdCMTFUYmNtU2k2WE1BQmt1?=
 =?utf-8?B?d0RyOTd0eVp2aVkzUVpHeTBsS0hJT0pGblFJRGp6K0FINGhrSlJ2Z0MxSEd2?=
 =?utf-8?B?Z3psVitxaXd3ZnVJRzVIMEJhaEFRa0tFdTdpR0VIS0NqS2Z0c0xNTGRYM2U4?=
 =?utf-8?B?dXNma0J1N01CZ3dJaG9Nd1hBWE93NmlwbUJXYzllaElTenorQktaMStqNTNF?=
 =?utf-8?B?RlBVbTRUWFcwdDFBSW05b2ZLMHlVQWNuSDVzSlhQSVdIeC9nVmNUSHFOZ3or?=
 =?utf-8?B?bmVua050dHJZVU1lNkpHN2hhbVZodzMyWmN1MjJrZGtWZFdOU0lvUFgxR3Ba?=
 =?utf-8?B?a3ZVbTczYS9jSHZaNU9hZi9LRjlMY1VJN2ppbWdoTmZyL3BtYnFZa2NsVzVw?=
 =?utf-8?B?OGZ4Q0lEaXltbkxUYnlhYUFZUW1UMi91elhGWVE5Z21CMmZNMzFPcktqQVZC?=
 =?utf-8?B?dTJUNVpPbFcwRVNkSlZLeXNlT3VJdEhwN2FINTVsVVFXS0oxZXdUbk5IUGJ1?=
 =?utf-8?B?bWp6bkg5NjAwMjlZMTdSV294Yy96c3puWklvTnNQQXh6RFh0YmEyN096TjN6?=
 =?utf-8?B?QVErcW13VWdIN0RYWHdDRnpPZmRlaWYwOU0wQWlVcnNGaWlTRHhTYTRubWxR?=
 =?utf-8?B?SXdYbHl6VlZqSzJHZlYyRDhQWDVVd3g4MHZFQnE0RFYwY01kUUhGRzZ6K3Z6?=
 =?utf-8?B?TDczMVpFVDN3SS9VQUxVZi9qZnFTQVpLVDNHcGlSWkFKN1dwSFNLRGtVNzNa?=
 =?utf-8?B?RVNhNW5JZmNJOUtiT3hZckd5VXBOWEVsM29DcjQ0dTNiRTlaY3dkVFhTcW9p?=
 =?utf-8?B?bTY5V3VuNGhuSTNzeDFHWEdVdzI0UTN4TllhenUwdzJCK1dFTzJmS2t1bU5w?=
 =?utf-8?B?ZnJRbVZUajVoZVcwTGNmdjFFRTlwamFjbWplMXhKUWRFSFdZZ1hnMWdwdHMz?=
 =?utf-8?B?Tzg4U2NTekIzQWdzVFdITFArNUFLeFluZmMyLzlqOVZoRjN4eDlVVm9JcjFQ?=
 =?utf-8?B?ejk2TkpKbm9XcEwyR0pmbjRWdGtLTit0aVlwM3E0V2RLVWNFK3Fyem9pcjZm?=
 =?utf-8?B?WC92bFljTzRPcTJGd2tYWno4NTZYdGVudk50T29JSG5RWEhwZ2VxbGx3V0x2?=
 =?utf-8?B?aWhnMXprWm55T1JrRXJxQTFMSEhEN0tJTjNiVHJIano4WUxxOUpXRGY5d1NY?=
 =?utf-8?B?aVU0d21wWmRQdTdCTnd6bW5ka0xxamFObzRJZHZBbnFUZjFFclJpTG9nNUE2?=
 =?utf-8?B?N3ZqUzh0bzFGNnMxM0VqZjRiTE5PeG5KaVN2K0VJaHVUdTk2NGVKd1F0a3Ft?=
 =?utf-8?B?NlozZUFrb04yTGpNelI5NkZuRFBUVjNraDdJZk5XVFlEb3orTlpjeXlPSHRN?=
 =?utf-8?B?ZmcyRnFOWGlVTGV3MmwyUUp0WUlCZVpSWTFrNndZaGZ1U2FPbFRYVkIrZGNp?=
 =?utf-8?Q?XQ7ZpjuzvHAT3sYI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3665c08a-9f1f-4cc0-9c44-08de75f2faf5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 11:25:58.9423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AICFfR3K7QxQWS2NB283m5kgX7E79ejXj34PORJSC68cPbOjd37ETtN+g7dagmQws0gRhP/Iinx+o5015YnEzgAyb8ACQLNFHaDgpx1fZvI=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
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
X-Rspamd-Queue-Id: 859111B688B
X-Rspamd-Action: no action


On 2/26/2026 9:44 PM, Ville Syrjälä wrote:
> On Mon, Feb 23, 2026 at 07:14:28PM +0530, Ankit Nautiyal wrote:
>> For Panel Replay with AUX-less ALPM (link-off PR), the source must send
>> Adaptive-Sync SDP v2. Program DB[1:0] per DP spec v2.1:
>> - VRR AVT: 00b (variable VTotal)
>> - VRR FAVT: 10b/11b (TRR not reached/reached)
>> - Fixed timing with PR link-off (VRR off): 01b (AS disabled; VTotal fixed)
>>
>> Select SDP version v2 whenever PR link-off or VRR is active, otherwise v1,
>> and program the AS SDP DB[1:0] bits.
>>
>> Also, drop the redundant target_rr assignment.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 5952db6197cf..ad2aceb526ff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3139,7 +3139,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   	as_sdp->duration_incr_ms = 0;
>>   	as_sdp->version = 0x2;
>>   
>> -	if (crtc_state->vrr.enable)
>> +	if (crtc_state->vrr.enable || intel_psr_is_pr_with_link_off(crtc_state))
>>   		as_sdp->version = 0x2;
>>   	else
>>   		as_sdp->version = 0x1;
>> @@ -3154,9 +3154,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>>   		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>>   		as_sdp->target_rr_divider = true;
>> -	} else {
>> +	} else if (crtc_state->vrr.enable) {
>>   		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> -		as_sdp->target_rr = 0;
>> +	} else if (intel_psr_is_pr_with_link_off(crtc_state)) {
>> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>>   	}
>   else {
>    what now?
>   }

Hmm I think with always enable AS SDP the else part would naturally become:

as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;


Regards,
Ankit


>>   }
>>   
>> -- 
>> 2.45.2
