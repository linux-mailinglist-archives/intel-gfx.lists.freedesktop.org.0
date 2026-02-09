Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKJAKsbTiWk3CAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 13:32:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CAE10EA95
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 13:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0B910E3CB;
	Mon,  9 Feb 2026 11:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRW3bdXt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D887210E3CA;
 Mon,  9 Feb 2026 11:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770638069; x=1802174069;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Sv6E57S0dRve3LhOqjraQHNS7fD071mCODM2if29F0s=;
 b=XRW3bdXtvl/vQLxc2GXdxCzcU8iCWNoTNuibURoBTYjlrL3BlHeK1iYH
 KsM9HC9X7DoH747qUP6sTT03i18JEiT5/RsU/FeWFuTloSmmMRdAcUzng
 QypCtoqsBN1xWGlgPgPxQHcQc/Y/kU3VgwDljBFV4qTsSnbgkW3nsGpDQ
 4NWaZMzi0eBnU7p5dkKf6DoAhMrUuEhqgP3lgpPY79U325fGyHM2Abt7i
 L4nUYPAO8Zg8PGbm1KQnopknR5pTNkLzT8lOVO8I+Ojin0bRNdfmz/xzQ
 AEhTjL1qnA2R+iyVAheoTeXRSdxMP3bsjDygfpJktxCpfFonFonLaaxqt A==;
X-CSE-ConnectionGUID: IihqrGB9QumKgPltY9+VBQ==
X-CSE-MsgGUID: FtDB/U6USR2GkKimVEA5/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71640443"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="71640443"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 03:54:28 -0800
X-CSE-ConnectionGUID: 0mgHqmquTqaokteVyHm1dA==
X-CSE-MsgGUID: K7+6X8+3Twyj5oBq5/VpHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="216069546"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 03:54:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 03:54:27 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 03:54:27 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 03:54:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hY6L3YRM/r4n4xB3jCPd9TMYwJp+FVMfhjvxlCO1GO68kXLjGZVYAq2qhinCA3viYTj2OnbuDD2W+ceVqPh9OCDCHTe+cvloYtoKFMlSCLYaXH1+VEFlIdng0Hx3nklngIOOqROhr5qRwPKIk6dSxFrurHpM4eqSq5sSQJeEIb+sWHzsTvKk6fYeWo1/UO84JSK7Obnim/JB8gKcIpmn7P4KzgjFD+IY1ZqaLkTmHqQ4tH6DbZ/TzVjh4fgaPzqrWA2zKLr5wmXpiIC01NshHVQ+aPoWw3mDPpPuFhz/H3nMJiI24zq5uGUMehG25lI8tUTNtQ6WxbQgdoU4aGnkGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKMmJE6H7MdSgCCGArOWjEMMLbdWBavqak0LBnkqCaE=;
 b=RL/OtWvZGZ0VQ89dHwpIPI7vYG2aTf8yUevtpqHg+MiY+Dbl3gIGQQUNnw19MGl+T3vijIEbZAEzCaaKqvBaMDrEV44K3r4XLvLnxEBY8xsMWKp57ob7fHEz4sX3ZLccEJva46Kt3PPeFG2EvUC3j8YUq5AFR3dB9yklj2RJVaHn34E3pH5D/rP44toETAu8FkEPVuE0qg5fZp8q70tjVjiDz6fnnYz2TCy5g6Ia9lOmpek1vp7rV2R895GPP6FqJQJPRB2ND/GDbI6IAJ76ZjqLPn373xEk9xBN6wRX4gCL9+7eXN2vdY9BgliFdxff1uV9PbgtFI7e/YheQNaFhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPFEF71E136E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 11:54:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 11:54:25 +0000
Date: Mon, 9 Feb 2026 13:54:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Message-ID: <aYnK7Osk9sMUwAhO@ideak-desk.lan>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
 <aYmqKmGiEz7z6eUV@ideak-desk.lan> <aYmyafbsHVRH2crC@ideak-desk.lan>
 <371ae01a-acb4-485b-b063-c23999a0f958@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <371ae01a-acb4-485b-b063-c23999a0f958@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0008.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:b::9)
 To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPFEF71E136E:EE_
X-MS-Office365-Filtering-Correlation-Id: 133af7dc-bd2c-4286-dd03-08de67d1f8f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmhsYzduczhCWHF1ZHUvaVBsU0J4M0FJd25XejdKZURMUFdobjkrOE5YRDQ5?=
 =?utf-8?B?ZjVWNEUrNGZiVGc1WXI5RVp6QlVDNFRoK0tLcGZGTEtHSnl1bDc4OCt0Q2FB?=
 =?utf-8?B?d1I0U2xpSWx4ZjcwZmViSndvTWkvTmZXNGVCUzhabEFDTUkreC8wQjJubFVv?=
 =?utf-8?B?azQ4L204eUVzaGZCOFR0T3pZK05aeVUxQ2FyWTFsOU1QWENJZWJ1RkYyNHZZ?=
 =?utf-8?B?YjNNTGlqdWNoUTN3WVcrK0ZncGFkQUdhRmZ0TWZNUlhpa3h1QkRuMktRcU1K?=
 =?utf-8?B?U0dpdjMwUk9FbHEyZGxnT0J1aFQ2R1hCMjZLUUZGY2Z6b29ZRjdXYUxpbzV1?=
 =?utf-8?B?WUo3SjVlRDl6aWpmZlFJTDAybnZicklydlZHYzRLQ2RVbTZBb2NBTjd5bk92?=
 =?utf-8?B?U0Z1LzBOOWNud2dzOEZMSURDV0twYUNXczBPQ3JGdjdrV243MStOcHZjM1d6?=
 =?utf-8?B?eXI0Tm1ZMW5kLzN6SkM5ZmswOFc1N01xZExYTTM5a0NWZ0xrbTRoU2tWRjJG?=
 =?utf-8?B?Sk9XQTYwRFBHYUxFVjFTeE9ZMEVxNWd3cENIOFFDcEw0MGFyRitnU0syVit4?=
 =?utf-8?B?Z2NKMEVEZUZEZFVNaVEwMEdhNVF6ZGhIV0JJdW94UkpGRVBJQjJkZWdQUDUy?=
 =?utf-8?B?YlR6RUFqb3djQzZRY09jenh4dGRadUg2dy85Z1N1SUtzVzN1UzY0VlBsaE0y?=
 =?utf-8?B?WmFkenZzbUZJY1ZpMHVaY2xzWFNXMWp5SkRyOWsrVitMa2hHT04rSEY4YVBs?=
 =?utf-8?B?OENRR0NYcTBYMHg1TU9kZ2NmaXdPektUQ1N3K0ovYXNKQVJQNkdtbHZ5clMx?=
 =?utf-8?B?T0RuUGFqb01sVStWMEE5TWpnOEMxNTNzNWwzcW51dzMvQmh4S3BBTTV1aVRT?=
 =?utf-8?B?VzEwSVEzenlEcHJ5S2VqN1JrYXlGL1FqM0lFWk5OeHJXTXNjemQvcWt2Ulpu?=
 =?utf-8?B?cVJaUGZDSHZCdllkaXF5ME1qVlM5b3JGVGM2RlBBMVVCb3hhaEdMQW03Skxa?=
 =?utf-8?B?RmJGQjJFclpyTjNRN1k1WE9qTzI0Z0VPTWZBTGpKNEpienk3Y0tLcmNFSjc3?=
 =?utf-8?B?aDlSRGJPanNnUGRRMU8vbHZLUlJRWWlRM2UzbTJqYjl6Y1NrcHJYR3J3aEpN?=
 =?utf-8?B?ajJqM2JzckJrL1h1bzA0Tk5WTEFsa0FpdFdlWFNPWTV1OWhaRm1HemRPWW9j?=
 =?utf-8?B?MTZ2MFgxbUQyRkRUZ1cwUVdsK2dkRXhZQzFmc2w4eE9pWVlZYnZtc3JjS1Vs?=
 =?utf-8?B?RGNyU2VDL3ZxV2xDNGZjdXBBK2RVMVRwRXdvYnBnelgwb0NlVTRMdm9TQStp?=
 =?utf-8?B?Y3hpY3Z3TVJqUWN1Yk5rUlV6alFxWEZnNTdTdkYvNGZjb2xvMnJWejA5N0RW?=
 =?utf-8?B?VHdlQ09ZeXZBdGJEOG4xNy9hSk45OVZPdUdxVEZVZy9FWG43TnZpeG5JazVO?=
 =?utf-8?B?Mks3dHVETG1CSUlDb3JpWDhRMG5FemlXK29Vckd6UktDakZtNWk5ZEtscS9w?=
 =?utf-8?B?YlQ3ZElqa0N1Z29lbHFBelhQQk5kM1U1Rjc5ekFzTkdqSEh2YXFFMkJlTEd1?=
 =?utf-8?B?eGF0TzNLVVpLcmtzU3FRcy9vcHV0TlZPL05UamUrcFUrYzFUcllrY0Z2UUp2?=
 =?utf-8?B?SWhMYWpzWlFzaW0yWTZVajhmbGR4dkhIV0FOLzlUNGZBZFI3UVdhM2JHeVBu?=
 =?utf-8?B?cys1ZUs5NUVYVmY1NHFGUmRxcVJtdlJNd2pxcXRsbitzbG5UVzJWOTlrWmM3?=
 =?utf-8?B?VmhER0E0NXliaU8wQ3lDTkwwdDFGVGtMZTdTbStUZUVJS3Z4cFZucUJtSU1j?=
 =?utf-8?B?dHJzZjIyeXhLVkpQdEZYd2JueVFnWFd2b0xNa3o4YnNEN0pKL0QwRXlpV2VT?=
 =?utf-8?B?ZDZpRHg1RUR2RTdCYktSaEVGVVpoR3pNdDMwYkQ4YkpicXFnM2RtU083dGhp?=
 =?utf-8?B?b0k5YnVwYzd1V2orNHFzL0FvUkdneVZvcFp3dGJEenZlV0RrZ0Q4c1VsSERs?=
 =?utf-8?B?dzBPeHpnS3RxMzd6WlhLcmEvTExudFFmMWRaOVp1ZjI0cVZzT2VSRUxLM1Zk?=
 =?utf-8?Q?LVNcAC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWFHVjZSK1ZJaU1hUVl3eGt6b2hUa2JBNVN1Yys4bGRhR1FoSDZYZnFmMjQ0?=
 =?utf-8?B?VyttNmtpWU1Ubk80S1RWSmxYTno4bEs4QXNNVkI3Z3c4MmZnQThpbnNTaGNE?=
 =?utf-8?B?cFB3TkkvVkRSUU1SZFZPRmdXbXlxTlZJaGpQb3U5RW5UTlUwZ2xOU0huQVNP?=
 =?utf-8?B?MTlJUitMNmN0TmpGRkp3Rmw0SithcG9WcTNOMlRvWG9wSm1sVW5ZWWxYcUZ2?=
 =?utf-8?B?dzFJVWVMNXQvRU5vWWZ1SHB5Vi9OeHd2STluQXJUUG9xbEVEc21wbjExVHdL?=
 =?utf-8?B?L1ZpN3d0Zk5iS1M5ZHZ0NFJJMWZ4c3lQYkY5NlBjWXNQa000cEFicHluRWhp?=
 =?utf-8?B?SDVoMm9BYVc5WVp0c0JsZDdIUkRzeUpjbHZ5YmIwQkg2WlRqbTlJQndySExK?=
 =?utf-8?B?YUNzYmZ4QjZIUWtIMzhzSWlXSys1MUtnbWZ4OWU4RUlvY3BtWkJnTFR2TXk3?=
 =?utf-8?B?SS9QSUtrTnRQSEgxdG9zVW5kVXVxY09GUTZ6d3dPbnNudVB6a2c1Mm9rRWZw?=
 =?utf-8?B?a0NoN0w5NjlDblk3eksxbERlSnJoK1VvTTFodDJ0Y1J6VDZndnZjVUZ6bWwx?=
 =?utf-8?B?Mm9FbTMwZzY1OVlSVUVQQzVBNFpTS0o3MGozVm1uVEdZWXI5ZzNLaWhIb2x5?=
 =?utf-8?B?eTVIVTZsMU45VG9yaVhDaE1EVjBFblpuRnVUTW9BcEd5M1JTTEYyaFNaeVFq?=
 =?utf-8?B?YW9GcnZnSlBjU0FDaHNpNFNVU0hHbFZrNW1DWXo0SmpFVEJuK2Y2eEZEdFFQ?=
 =?utf-8?B?NTdNL1YraHZxY3AwZE5DSzdzQUxWYUJoZGpraG1KdVVkQXZkVjNRM09OK3JV?=
 =?utf-8?B?b0ZxZ0h6dHEzUXcrREdtK3h5UWhleUlSYytlYnNuTjM0Znh3MzJ2anpGT0w1?=
 =?utf-8?B?cnhaK214VWlnak9CSUdGeHBjTFkzTWt5ZjRmbnBJc3BIUG9WYitncGZzang2?=
 =?utf-8?B?S1k5WldDRE41SDVRVFJwV1JvWlplQW11elRxdEJlWmJuUWR3N3ErVUZiOFRB?=
 =?utf-8?B?dFRWdlBFTUZGRXlQSk5DY3prM3FCdFZCSzlndk1iRjk1dHNZcGJ2dVRlaGFa?=
 =?utf-8?B?b3FDR3YyTWNrVnB0S1VCbWJ1OW0vWUw4ZERGdlAvY0xZNWVFMldWZGpIMklQ?=
 =?utf-8?B?NEgwWkREWlJSMVludlVBZUdYMi9ITkVma3ZPNEVYeXV1ai9CcmNCL0lVSVFE?=
 =?utf-8?B?RnUyMkluQSs5T1lhbGZtYWQ4eGszSWVqRzRwL1hmc1dtUTNDdVV5NDF6MHFJ?=
 =?utf-8?B?OUhtRkt2WUcvQ0hGTGZFSjNMWm1RNU9tL2FabDlrTDB1RzBoaWFaMUIzYVll?=
 =?utf-8?B?MHZtb3hKMTRZVWY2YmFJZ3hUUHFoV1oxSE5TeGtsTGFGemVta3g5Ly84NlNj?=
 =?utf-8?B?L1VBVnd3dWpVL0plcno2L3NLVm1hK3hMYXI5S01iVkhSa0JmRWRDSEVwRWdx?=
 =?utf-8?B?Q1hWdEFCOHJLZitPTnpiaVhFaWlGUGplUFVoWHlBRG1tRmtwSEF6OFcwdXVn?=
 =?utf-8?B?OXh2ajZ5cjBDSW1KTENmZzNwSFEyaE1hOW95V3pXWUlpWUlVMHlRendzbXdQ?=
 =?utf-8?B?clhPS0tWa3U5L01sUXpoWmJFRHFTY05tcUw5NWwra0tlT3VuZGk0TFlVaWNv?=
 =?utf-8?B?dmE5OU5HT1dZUXk3c2VzUmIyS2J2VGYrNjJRb1FGUjkrNEFveGVPNTRQaXRP?=
 =?utf-8?B?MGlUZWRIMy9SMjdraUVKWG1vaGQ3NUJSRmdPK0hiS0w4aVRic0FQeUJrSkNV?=
 =?utf-8?B?bEQzRGJkdzE1dXlrWmoyTHd5MTcrc3h2VWtmeTBoVDVyV0VVSmJUbi94OG8x?=
 =?utf-8?B?QzJYS1MyMGlYLzRzMnFJUW02eUw3WUNCdm5La2czcXBZQnhPYzVVSytVN0x6?=
 =?utf-8?B?b1h6Vk9QTmRaMTdSYXNIN3AzWW4weGFmdTJxMUZibUpMNTBxd1J4dE5rRmZj?=
 =?utf-8?B?eGN1TWJsNVN3MWllTm50V0xhMkxjT3IwbTF6N2MzUUcxOTRIMDVnTXFEa1lh?=
 =?utf-8?B?elkrTHUzNGliN2RDN2J5RFJIa1pvNXRWOWRBRWxnTW9waWVqeTRFcHk0SlZN?=
 =?utf-8?B?OWR5WlJuUDlLL2dGNUFIeVlLMmRUQ3dUSEt0enBEblVMSGQvTnNuYWNER1hi?=
 =?utf-8?B?OTEzckVvZ0lpNUhieGx3aHhqZTR5SzRBNjh6d3JrbGREenFvcHpMbWpPR0U0?=
 =?utf-8?B?TWtzSUdyMHdlY2xLTUh2cWFFRHJvWDFzU0NCN3JVLzhZVU9WNzFBUW5ZcUxp?=
 =?utf-8?B?OU0zTjBQQSt6UjhhYU45UmRVMmVabWNQajZpd2Mra1FwQnN2Sm13ei9Pelpj?=
 =?utf-8?B?cFRlQVdSSkV5cHpKWUpQbU0rTTdSMXFMeUNGeTYvaWV2eU1mT2Zidz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 133af7dc-bd2c-4286-dd03-08de67d1f8f0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 11:54:25.7367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lex0imxZypZVJEXfAiw9RiDcprmBbrWVdSkPHxc83EYzcAIY4h1b7YcXFrcwMGcNtoG17SqkyNhJ6TEdNqwW3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFEF71E136E
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C7CAE10EA95
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 05:00:13PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/9/2026 3:39 PM, Imre Deak wrote:
> > On Mon, Feb 09, 2026 at 11:34:34AM +0200, Imre Deak wrote:
> > > On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
> > > > 
> > > > On 2/9/2026 2:10 PM, Imre Deak wrote:
> > > > > On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
> > > > > > 
> > > > > > On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
> > > > > > > On 2/6/2026 4:12 PM, Imre Deak wrote:
> > > > > > > > The pipe BPP value shouldn't be set outside of the source's / sink's
> > > > > > > > valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> > > > > > > > value to 30 due to HDR.
> > > > > > > > 
> > > > > > > > Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> > > > > > > > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > > > > > > Cc: <stable@vger.kernel.org> # v6.18+
> > > > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > > > ---
> > > > > > > >     drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
> > > > > > > >     1 file changed, 12 insertions(+), 2 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
> > > > > > > > drm/i915/display/intel_dp.c
> > > > > > > > index 2b8f43e211741..4d8f480cf803f 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > > > > *intel_dp,
> > > > > > > >                        bool dsc,
> > > > > > > >                        struct link_config_limits *limits)
> > > > > > > >     {
> > > > > > > > +    struct intel_display *display = to_intel_display(intel_dp);
> > > > > > > >         bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > > > > > > >         struct intel_connector *connector =
> > > > > > > >             to_intel_connector(conn_state->connector);
> > > > > > > > @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > > > > *intel_dp,
> > > > > > > >         limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> > > > > > > >         limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> > > > > > > > -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> > > > > > > > -                intel_dp_min_bpp(crtc_state->output_format);
> > > > > > > > +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > > > > > > >         if (is_mst) {
> > > > > > > >             /*
> > > > > > > >              * FIXME: If all the streams can't fit into the link with their
> > > > > > > > @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
> > > > > > > > intel_dp *intel_dp,
> > > > > > > >                                 respect_downstream_limits);
> > > > > > > >         }
> > > > > > > > +    if (intel_dp_in_hdr_mode(conn_state)) {
> > > > > > > > +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
> > > > > > > > +            limits->pipe.min_bpp = 30;
> > > > > > > > +        else
> > > > > > > > +            drm_dbg_kms(display->drm,
> > > > > > > > +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
> > > > > > > > valid pipe bpp range (%d-%d)\n",
> > > > > > > > +                    connector->base.base.id, connector->base.name,
> > > > > > > > +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
> > > > > > > 
> > > > > > > pipe.max_bpp < 30 will be either due to the max_bpc property set to less
> > > > > > > than 10, or perhaps when the panel itself does not support 10 bpc
> > > > > > > (limited by EDID or VBT).
> > > > > > > With these constraints doesn't make sense to enable HDR and send HDR
> > > > > > > metadata.
> > > > > > > However, as we see in some reported issues [1] [2], in practice some
> > > > > > > compositor seems to enable HDR by default and with the hard limit set,
> > > > > > > they report blankout.
> > > > > > > So it does make sense to raise the min bpp limit only if its inside the
> > > > > > > supported range.
> > > > > > > 
> > > > > > > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > > > > 
> > > > > > > 
> > > > > > > [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> > > > > > > [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
> > > > > > > issues/5969#note_3248404
> > > > > > > 
> > > > > > I am not sure if this patch would help with the above gitlabs. For example
> > > > > > in case of #7052 pipe max bpp is 30 and the commit still fails.
> > > > > It does fix though reported cases where the sink does not support 10 BPC
> > > > > at all. Yes the monitor in #7052 is still a problem, since it supports
> > > > > 10 BPC only with lower resolution, where the link BW would allow this
> > > > > and he monitor doesn't have DSC either.
> > > > > 
> > > > > > However, I need to look deeper.
> > > > > > 
> > > > > > I am thinking of relaxing this restriction all together because the earlier
> > > > > > assumption that a panel advertising HDR will support atleast 10bpc in all
> > > > > > it's mode turns out to be false.
> > > > > > 
> > > > > > Currently, I am inclined on the following policy.
> > > > > > 
> > > > > > - If DSC is not available, fall back to normal bandwidth calculations and
> > > > > > select the highest bpp the link can support. (Also preferred by Kwin)
> > > > > > 
> > > > > > - If DSC is available, prefer falling back to DSC and attempt the highest
> > > > > > bpp allowed by bandwidth constraints.
> > > > > The patch does the above, except for not handling the case where the
> > > > > monitor doesn't support DSC. The attach patch handles that too and so
> > > > > fixes #7052 as well, are you ok with it?
> > > > This should work since [1] did.
> > > I think the sink / source support for 10 BPC should be still checked as
> > > in this patch.
> > > 
> > > > There is one more (theoritical) scenario that I think is still not covered.
> > > > What happens in a case where 30bpp doesnot fit into DSC bandwidth?
> > > > As I understand, the min bpp limit of 30bpp would become a bottle-neck even
> > > > then?
> > > No, the link BW requirement is determined by the link BPP, not the pipe
> > > BPP for which the minimum is set. The link BPP in DSC mode can be
> > > lowered below that, based on the sink's minimum compressed BPP support.
> > > So in the fallback case, where 30 BPP uncompressed mode is not
> > > supported by the sink due to a BW limit, DSC is used instead lowering
> > > the compressed link BPP as required.
> > Although, it's still possible that the sink wouldn't support the minimum
> > pipe BPP set here as a DSC input BPP. Setting a minimum (pipe/input) BPP
> > in DSC mode isn't actually needed, since the highest possible BPP will
> > be selected there anyway. So I think the actual condition for setting
> > pipe.min_bpp = 30 above should be:
> > 
> >          if (intel_dp_in_hdr_mode(conn_state) &&
> >              intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
> >              !dsc) {
> >              ...
> 
> Hmm makes sense.
> 
> Perhaps we should also add a debug message right after pipe_bpp is finalized
> (and before the full link config dump) to make it clear when HDR is selected
> but the chosen input/pipe bpp ends up below 30 bpp.
> 
> Something like below, in intel_dp_compute_link_for_joined_pipes() before the
> link config dump:
> 
> if (intel_dp_in_hdr_mode(conn_state) && pipe_config->pipe_bpp < 30)
>         drm_dbg_kms(display->drm,
>             "HDR mode selected but pipe bpp is limited to %d\n",
>              pipe_config->pipe_bpp);
> 
> This will help flag out the cases where HDR is enabled but the pipe can’t
> reach 10bpc due to sink or bandwidth limits.

Ok, can also debug print the connector's HDR mode, like

	DP lane count ... bpp input x compressed y HDR-sink yes/no ...

at the end of intel_dp_compute_link_for_joined_pipes().

> 
> 
> Regards,
> 
> Ankit
> 
> > > > [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
> > > > 
> > > > > > I am working on a patch for this and should be able to float something soon.
> > > > > > Imre, if you agree with this policy, would you please wait for the patch.
> > > > > > That should make it easier to send out fix for stable kernels.
> > > > > > 
> > > > > > ==
> > > > > > Chaitanya
> > > > > > 
> > > > > > > > +    }
> > > > > > > > +
> > > > > > > >         if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
> > > > > > > > limits))
> > > > > > > >             return false;
