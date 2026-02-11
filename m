Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H/IBZ24jGnlsQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 18:13:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DD6126806
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 18:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7D210E0B9;
	Wed, 11 Feb 2026 17:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaOu3bYd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD9610E0B9;
 Wed, 11 Feb 2026 17:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770829977; x=1802365977;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mdtX8YlEHMzse81haQNVV6V8IkTM47cri5RG1Y7SAgw=;
 b=HaOu3bYdSwRZ40Fnu4x6TweGHrCcwavd0vLwaCtXpc6KIjt6SlU587LS
 V6LLmE41Jw1lUygnXP0dtwznkdMLhdPZXE1aaQLIrZ7XQUXtOjliIYFay
 alyUYmDxE9eSey7HL2IRJhuN2WCNEPFdGksVjjAeVTRX42x+WecFP/5ic
 FYqMRQDrAOt5z2udc+92xAriuOBnB2qWaqPXf5J4EPP6E1zV5111lw945
 qVSfyDeDAyOHXV/YvewPBAikKgKStaINeV2MGdAL7lyyGI3ikRAE08UoX
 uim/dTUMzMcuBRfhg2q/V7a9Lf5+wwGJFt95nB4ijt0IiNq+SgumgUK9L Q==;
X-CSE-ConnectionGUID: hR36pmk5QTaVfiwwzMGz6A==
X-CSE-MsgGUID: 41ffefRIS9Sp3ZnF+6+r+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="75828632"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="75828632"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 09:12:56 -0800
X-CSE-ConnectionGUID: GSgzI5JtRMaVWBUNnKz9jA==
X-CSE-MsgGUID: 6vvUrGGeRPa9btievI+c0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="211605227"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 09:12:56 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 09:12:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 09:12:55 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.35) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 09:12:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Morn4rqyVhSW8CXQCSQyznmEq4PvtJwSkOigDQ5LYblCSQKZBJml+SZDQlW6Vw+NUo7+3ObkEUG1v6o9flqfFrFf69eLRi/oMeqOE9DP7nW815pG3SrzfbkFP5DFodHPQ9BpfypRpPeBHLP2khknDTOSjwdpnkLz3a1YQ4OKpRS8khnEu3caoFxUo5DANgnTMiwoq46NTQ8RrCzf30Y5YtQUS2M8rXHiuIgvUHBQW2Ai/qMy2ZeOI04U9V/oF7+NjJDN58XwlQ7fnOMLzxXqBuSlKWfuwlCr2dMSa0JVPIWtR+Z7Hy68nwt4FRWYJ57QZ1kXff4A/2v+CHl7sveTLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ePj9jK0Pgos8lAS/ZSMr7iNjadmxA5M9JygU3pOg6g=;
 b=F8YN2Fg8wZzp1pGWaxQfBUFEvv4u4lgb8igYwELrfOVuBn4msbdpUrgUcW6s6bhu7af+l0Atf/lZ+DyJa/4NY/V4wWTqz5wWPnBjtaFpb7VdRbxbQGIdHt3WsZxdCEg1TEy6cM3pPcHqd661ql3v+OtNDQyxtR9baoQZB1yZtjbypV01zyLrLDru8OCvAzuZ4NwkTGW/PLBX4wGvEamgVwtS5W0SmK1MqLUwW90zrfGOp4jdhlkj9qLnaLDSZNgjLxtTn2FmjGM/dZukciD50GVK/9kM6+9MqUY9BswoskZwZWuHAowOMZiBApoLNUPOu/ZTmXOQbpr+cu6MznJx+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.18; Wed, 11 Feb 2026 17:12:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 17:12:53 +0000
Date: Wed, 11 Feb 2026 19:12:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
Message-ID: <aYy4grqce26G5sw0@ideak-desk.lan>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
 <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0108.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7785:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cbccf5d-ea64-40ca-139d-08de6990ca87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0ZoZGJrc0hJZWNZaGhHVm9YZ0tGU1RqYnVJbk1XR2Jpc3FjUXNHS2tyb1FZ?=
 =?utf-8?B?TmwxWHFMWFR4K1JpdzNkaFNjSEttWE80ejNacXNSTlMzOWJNekdIMlh6bWha?=
 =?utf-8?B?VUYrMkp5WkwrUnJCMnZ2RVg5QlRqNE1pbnZaTWkvbjhCdTV3OEM0Tnd5WVUy?=
 =?utf-8?B?Q3RGZkMrVjIvNjAwWk1yU0RiZFBsbzBwU29UQVBxY1ZINjc4MkM4YVE3UWNZ?=
 =?utf-8?B?ckV4VEZoTFczb0x2UjRWTFZkclVwN1phaExNWDdBVmJVdjJaUUhMRTNiTVY1?=
 =?utf-8?B?RytJYmh2dmRwa3lhbE92V2VEcW5FQzdxdGQ4aWphSFhsUkhwWDVuUHR6SnNs?=
 =?utf-8?B?VDZaUk95SkxyY3A1TFNKWWEreGV6bVN1azdzeVJQQjIxNy8wZEVWWC93aVpZ?=
 =?utf-8?B?YVgzQ0NscEZLS0g0L3lVd0VnMVZFZU5CTlpQZWpZdE9rN1J4VXcyZVZGOG14?=
 =?utf-8?B?MWlaY2dkeGpyejZRN29teGlqUkh6THNtUVhFK3QwS0R4dmZjTUZ6NVZnUE9W?=
 =?utf-8?B?SDFUT2NFVVlvQnJ4RU1wYWE4U0JOSjZpSWFiY21LTFVkSm14dEd5dzZVRXhC?=
 =?utf-8?B?VUh1dVhYUDNDN0pKcGt3Y3ZJN24ycFRVOW9QTTJwNlFzRHRNZCtMbHRVbEZT?=
 =?utf-8?B?bVJpdkxnalFOamNoeXNYMGtUUHU0VUI4SE9IdWM5azYyTWF0WmszMWN3M2Z1?=
 =?utf-8?B?VXlNVW8xdTdibVBnSlFKY1dFZC9Ec25QS2JCOGFmUmdDVnRjRWZ3NDc2VTdD?=
 =?utf-8?B?RERXeHJkdlN6KzNhQnYvRDN4MUhUdi9USlZQMXRxeFdGV05KbDArT1pTZTJ5?=
 =?utf-8?B?U2tTZ3ZZMDNaNk1TK3dCUktDK1pvN1BLVGM4WmdXd0N4SWY3MUxhbG54N3pJ?=
 =?utf-8?B?N0g0ZHdlTmRVTzhuZGJhdzYrcWMvdkd6TktSNUh0bW9uWFVLZUpXVW4vREpo?=
 =?utf-8?B?RUJaYWg2U2Y1ZzA1Sm1ZTGxJc0VpY0RwSFdlc3YzRlVkNkFTZzRWZytBekNt?=
 =?utf-8?B?OFlwVlNuVmVWaVBXV1V3Y0U1UDFVU2g0MWt5bkpEdE5VRFc1TjNNU2pZb0VW?=
 =?utf-8?B?L1YveTZBWFo3TmxQS0JZaDQ5bzNQck5NZVNoZmgwcjdVaGlSVEZ0MEJnUXoy?=
 =?utf-8?B?aW8xTDNMdms2dGpjNkE4a2ZSOE43ZDEyWDl2YngyRXBXSFRqbnlwTlNBSHJV?=
 =?utf-8?B?QUF2RGw4OGxMUHZVbEdYUFdCRjVScE5PVTBqdU1IQ0xHU3J0bnJQVll1cldl?=
 =?utf-8?B?SnY2bWUzT3lna0ZxekhHQk53L1NXQktrcmU1ZXV5S25veEF4ZXRkREt1alRD?=
 =?utf-8?B?YUswOVFZYkU0cUJnaDNpdVQ1OWZTM09qZG5aOUhOWGlRc2U3NDI3eVlzWDda?=
 =?utf-8?B?N1U2QlFSN1MyT0grVlp5bFArbVRYYkU1eXl3MzJNNzdvNTZUaTdMcm9xeERs?=
 =?utf-8?B?bkxjQnNUalZXaTgyU1IvVS9ka2JOM0N5blFRTndGQkhBV2lXenM0M2tjbWVr?=
 =?utf-8?B?UGJpeGEyOFFvZ3NwNGo1blRBamNIV1YzS0NWV3pWZTNuUnBDS0ljV0xGY0VF?=
 =?utf-8?B?RzZXOVYyTWVSc3ZXMmRlYVJ2OFNHZWg1enplcmk2MXB2Z0lPT1hzOGVrMjJG?=
 =?utf-8?B?ZXZzRnZLY2YyRE4vKzlXWkZ2WUJWaVpkTm9ydFBjTHQvN0YxbjEzNzczdHF3?=
 =?utf-8?B?RitCcnFHcDZZZVRncWE5SDRqaUEybWRLUUY4a1VpYnlWR2dhMFlXVGlWZGVK?=
 =?utf-8?B?WE1vOUtGOTVhM3F3UElwUnFScXF3WEowc080TVFMbHFldDJTYUpIeVVoeXdY?=
 =?utf-8?B?MXBGRXhFN0Q4U1ZKb29zT2JlTDE3TFFRblJkYVI5azNFdk9GK0FPcDNmakp1?=
 =?utf-8?B?T1MxTWRtcWprMU5yMmRHenVYTkg3TEtsY2V1VVkyeFpQWVQzYmtDRXVsN3hi?=
 =?utf-8?B?aUpvT0JyWTZZVisxSWQ2ekcwNzkzMHZmblZZdGdkeGNabVZHMFN3T0M2T1NF?=
 =?utf-8?B?OGlKQy9UejBUajI1SWxWQUttWFE0UUExYXpKV05hL1ZaSlNIOFk0QmRvMEd3?=
 =?utf-8?B?eml2L2VBdXJTQlZDdjNzalZYOVlMOXhmaGFZb1JGZnA4WjhNaWlMU2hFM3Vj?=
 =?utf-8?Q?Qd0w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnNGRUh6eDN4cGxOOWZ1cnB0VlFCaUNobEpRTzNISGo4enROQkNlNXJLTWFy?=
 =?utf-8?B?OHR6Y2pQM1JjM2lyNC9VMU9wWHJjZm1uYzRpb1ZIU1QzVXlkd0hOVTRpb1NI?=
 =?utf-8?B?R2hGQllzS1BoeFRQT2FweDh4WjlDejdPbUgzWGtMREhuanh3OUs5dzVzV2Jx?=
 =?utf-8?B?bGFnbGtHeGhuVHJBYzdkblZ4ZWtrTmVvSTA2c2Y0UDRRZXlNNS9CMFdtSlZR?=
 =?utf-8?B?YWxzZk1pWlRvUTJQVzhtWWJZT1R0ZnRIZW4vY245QmN5WVMwdFphOEdrczJW?=
 =?utf-8?B?V2JIVTNnMXdsOUFvRTNtWDRBb25PbFVSbStZQkRmeWlEcGJ1NjI4OEk3dVV5?=
 =?utf-8?B?VHg4YlorNFpLZnhDZlpmSlhqdkdDUlRhMDF3cTYydnR0amdtb1kreW9nYXpo?=
 =?utf-8?B?VWoxeFZmVlhzeU8zUGpBMjRzN21yZklZbGtYMk81Y2xEa2dwWkQ1dGIyRFNp?=
 =?utf-8?B?Zkh1N1U1MDNDV2t4OEhqS1gvWE1rRWdlRHNkcENjemRwOWUwUTZZMUg3NldM?=
 =?utf-8?B?dGd0bmxuY0xLM3BZQXhvN3BMQThVN0loUVh4RXhOWnBZWTJKVlVUTklpTGQ0?=
 =?utf-8?B?TDNNd0hhK2t2WnhMN1JEZy9hcDZoeFh3ODNEYXU1OFI3eE5zOUc3cGc1Ukdj?=
 =?utf-8?B?Qm04c2JkSzNaeTVnaGFsYUpFSCt3aWVqY1BoLzZWb2JLb0N2L244MGp4ZHVT?=
 =?utf-8?B?RDRLNmRDR05FK2c0YldoQVYvY0t1NDRFVkhnU3ZzTkFQK1lRNmsrSnhSRG1y?=
 =?utf-8?B?M0t6NGtUTzQ4Vm1OZUF5Z0hhVWMya2llQVcwUWFoZWQvSkNkZWY2eW5DdndO?=
 =?utf-8?B?Rmt2TXhzVm9UZVozNHZyeldjd2xzc3pZWXM3cTRFTVV2dGJpandoRUhLcnNY?=
 =?utf-8?B?WGNmd0NqQm5QeVpOc0tCc2ZuT20zdmVhWE1UOWVYYVZRLzVRT2Y5VG1pUnVF?=
 =?utf-8?B?SW0vNHQ2bko2eTlqUjNwR3pxdlJ3UGZIVmdpNHVnQzQydUVLeUw2VjhNRnZQ?=
 =?utf-8?B?aUJ0MDBObVJML204ZEU3K0ZIUHJLTmhYZGJsUjZmSy92VzJVZm5xdk1na1d2?=
 =?utf-8?B?cVBWUUd1cG1udFlNQmJaeDBrNDlnUDhqVlpwckM0RUdTU0pJaEpzNnFRWEN0?=
 =?utf-8?B?NVZPRk1xdjd3QWl5ZUFjeEVpajBOTHFhQ2RJbWVUZmdyWS9weVBIZlNCTnhz?=
 =?utf-8?B?Zmt3a1duNzVKQ1dKKzFhZTNVclg0WFVlT01STXJ3c0pjbjNCSm9naG1mNEl5?=
 =?utf-8?B?ekI4V2k3QVdlV3QvT3RBTThNL1h3cEpvUCtPQjFnSUxYRTY0aU9ubUp4RlVq?=
 =?utf-8?B?WEVnZHQ2L3Z0TDhtMThNTFB5U0NJM2E3VmJ5ZzVnUnlaQmZaS3BUUyt3MnZO?=
 =?utf-8?B?YVRuODE2U3NoVFdKaG9rMkQxK3h6QWo1RmFydDNFWVFOYm5sNGlhWDJpS09l?=
 =?utf-8?B?YW5LWExHTmdEWHRsU3Bnb3lFczVUa0dIWVVSZ2hRZk5oQXdmZXVqTi9ZQy9C?=
 =?utf-8?B?ZktKaEJEempPall2QUtablNqaHNZYTltVzhmMTJ5b2ZnYnB3SHI3SVdtUGFV?=
 =?utf-8?B?UVQzT0hzS09KVzM2TlJRcERpbWlJSDRLRnhFRnl3eUZmTnZqejdBR0xFaEJi?=
 =?utf-8?B?UmdNSWx5QmNKNG5iVUsyR1pmYkxhMXFoYk4vaGM1ekwzWldUeFNrenNPUTRN?=
 =?utf-8?B?czNCZUxYZ2ozRG1HZE8zOXhJK0dVL1JYbHpwRkVhRGVSM0xYYXdMNFk3SDNY?=
 =?utf-8?B?dHZ1R1FGaXFIVDhFMHQydkFkU0cyQ3Z1Zzh3bCtmOTErTVhKcU9sa1A4NEZW?=
 =?utf-8?B?Z2sydmNEYndNSGZHc0gwUXFJWkNaamhFMzFDN3BNQzllWURIQ1pMSFJWdTdX?=
 =?utf-8?B?M1JGbHV2RVhVVnkwSGJmTjF2YVFOeTIvaVYyelA5YWRDLytBaWNkNFdtblhu?=
 =?utf-8?B?TVhENGZVVExreks5ZVJOc2FLMnBMWkNKV0x4bGZiL2hjeVRVSjREY2daUlly?=
 =?utf-8?B?d1htTEh0TFI5dVZJeDcxQzU1TC9hZUNHV0xHak9LUkdkU2tmYmN6c0ZOUDJ1?=
 =?utf-8?B?ZTZhclVNeTJucGlTMUl5RCtWc1plWlduM3VTUXZuY2kxTFlKb2pMcUc5OHpr?=
 =?utf-8?B?d0lyM0hxUm5vbHRhM2pOS2R0UTVQRGNVYkZrclFYZC9EVFZ0dStNODBUS0JZ?=
 =?utf-8?B?N0FXRnJTcGlGbVFZVDVGK010Q3Q1SUEweUgzSEJDclcvRnEzY1ByY1Q3R3dK?=
 =?utf-8?B?NVlhbU45MXNCZUQ2MFREMjFxM2gvMDQ1WFFjUStpUUlGWTdzZnFIbUwyNG9k?=
 =?utf-8?B?cUhabjZCZkdBczd1ejBxUktWSEFBVzdJWTgwRksvSEZuc2VrN2lRUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cbccf5d-ea64-40ca-139d-08de6990ca87
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 17:12:53.0352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: etv/SGCczW0i4twQUA+Q+OlqIGdR2SfTIwrKVwYPXXdMQZ+NEB2o4ryn2OCuPnrljZiuZUwUMtmQA2ZJuE001g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7785
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 47DD6126806
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 09:36:55PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/11/2026 5:28 PM, Imre Deak wrote:
> > The user's request for a maximum BPC - via the max-bpc connector
> > property - determines the pipe BPP selected by the encoder, which is in
> > turn used either as the uncompressed output BPP or as the input BPP for
> > the DSC engine. This user-requested BPC->BPP can be outside of the
> > source/sink's supported valid min/max pipe BPP range and atm such an
> > out-of-bound request will be rejected by the encoder's state
> > computation.
> > 
> > As opposed to the above, the semantic for the max-bpc connector property
> > - which the user may reasonably expect - is not to fail the modeset in
> > case of an out-of-bound max BPC request, rather to adjust the request
> > clamping it to the valid BPP range.
> > 
> > Based on the above, calculate the baseline (i.e. the non-DP specific
> > platform/EDID) _maximum_ pipe BPP, storing it in
> > intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
> > pipe BPP (which is the lower BPP of the baseline maximum and requested
> > BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
> > state computation to use the baseline maximum pipe BPP as a hard limit
> > for the selected pipe BPP, while also letting it use the baseline target
> > pipe BPP only as a preference, clamping this target BPP to the valid
> > DP pipe BPP range.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
> >   .../drm/i915/display/intel_display_types.h    |  1 +
> >   drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
> >   3 files changed, 35 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index ab4b59916d2e7..dae7a7d11cb84 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> >   	struct intel_display *display = to_intel_display(crtc_state);
> >   	struct drm_connector *connector = conn_state->connector;
> >   	const struct drm_display_info *info = &connector->display_info;
> > +	int edid_bpc = info->bpc ? : 8;
> >   	int target_pipe_bpp;
> > +	int max_edid_bpp;
> > +
> > +	max_edid_bpp = bpc_to_bpp(edid_bpc);
> > +	if (max_edid_bpp < 0)
> > +		return max_edid_bpp;
> >   	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
> >   	if (target_pipe_bpp < 0)
> >   		return target_pipe_bpp;
> > +	/*
> > +	 * The maximum pipe BPP is the minimum of the max platform BPP and
> > +	 * the max EDID BPP.
> > +	 */
> > +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
> 
> The function compute_sink_pipe_bpp() is actually just limiting the pipe_bpp
> to sink max limits.

It limits the platform maximum pipe BPP passed to the function via
intel_crtc_state::pipe_bpp to the maximum EDID BPP _and_ the connector's
requested max-bpc x 3.

> Instead of filling the crtc_state->max_pipe_bpp in this function itself, can
> we have a separate function only to set the crtc_state->max_pipe_bpp from
> the edid max:
> compute_max_pipe_bpp(const struct drm_connector_state *conn_state,
>                      struct intel_crtc_state *crtc_state)
> 
> This can be called separately from compute_baseline_pipe_bpp:
> 
> ret = compute_max_pipe_bpp(connector_state, crtc_state);
> if (ret)
>     return ret;
> 
> ret = compute_sink_pipe_bpp(connector_state, crtc_state);
> ...
> 
> This way the compute_sink_pipe_bpp will only do one thing(adjusting the
> pipe_bpp to sink limits).
> 
> ˚oO(Perhaps we should name it to adjust_pipe_bpp_for_sink()).

Not sure. It's also good to see in one place how the debug-printed
max/target/edid BPPs are calculated.

In any case compute_sink_pipe_bpp() did compute both the target and max
BPPs implicitly even before, combining these to
intel_crtc_state::pipe_bpp, and this patch didn't change that. If
separate functions make more sense that should be a separate follow-up
change imo.

> > +
> >   	if (target_pipe_bpp < crtc_state->pipe_bpp) {
> >   		drm_dbg_kms(display->drm,
> >   			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e6298279dc892..e8e4af03a6a6c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
> >   	} dsi_pll;
> >   	int max_link_bpp_x16;	/* in 1/16 bpp units */
> > +	int max_pipe_bpp;	/* in 1 bpp units */
> >   	int pipe_bpp;		/* in 1 bpp units */
> >   	int min_hblank;
> >   	struct intel_link_m_n dp_m_n;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 48845899298e4..4018b0122e8e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
> >   	struct intel_connector *connector = intel_dp->attached_connector;
> >   	int bpp, bpc;
> > -	bpc = crtc_state->pipe_bpp / 3;
> > +	bpc = crtc_state->max_pipe_bpp / 3;
> >   	if (intel_dp->dfp.max_bpc)
> >   		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
> > @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >   		 * previously. This hack should be removed once we have the
> >   		 * proper retry logic in place.
> >   		 */
> > -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> > +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
> >   	} else {
> >   		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> >   							respect_downstream_limits);
> > @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >   	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
> >   		return false;
> > +	/*
> > +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
> > +	 * maximum pipe BPP limited by the max-BPC connector property request.
> > +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
> 
> Hmm I think I am missing something. Till now we have set pipe.max_bpp using
> crtc_state->max_pipe_bpp.

Yes and then also reducing pipe.max_bpp further by every other source
and sink maximum BPP limits.

> This is set using min of max platform Bpp and the max edid bpp (and DP dfp
> considerations, DSC sink input bpp cap).
> 
> So the relationship between pipe.max_bpp and the crtc_state->max_pipe_bpp is
> not yet clear.

The relationship is:

crtc_state->max_pipe_bpp = min(platform_max_bpp, sink_edid_max_bpp);
limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp,
			   dfp_max_bpp, vbt_edp_max_bpp,
			   sink_dsc_input_max_bpp,
			   src_dsc_input_max_bpp,
			   mst_max_24bpp);

> I do agree with the rest of the below: we need to clamp the
> limits.pipe.max_bpp between crtc_state->pipe_bpp  and limit.pipe->min_bpp.

crtc_state->pipe_bpp = min(crtc_state->max_pipe_bpp, requested_bpc * 3);

and so

limits->pipe.max_bpp should be set to crtc_state->pipe_bpp clamped
between limits->pipe.min_bpp and limits->pipe.max_bpp.

> Regards,
> 
> Ankit
> 
> > +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
> > +	 * property request. Adjust pipe.max_bpp to this request within the
> > +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
> > +	 */
> > +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
> > +				     limits->pipe.max_bpp);
> > +	if (dsc)
> > +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
> > +								    limits->pipe.max_bpp);
> > +
> > +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
> > +		drm_dbg_kms(display->drm,
> > +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
> > +			    connector->base.base.id, connector->base.name,
> > +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> > +
> >   	if (is_mst || intel_dp->use_max_params) {
> >   		/*
> >   		 * For MST we always configure max link bw - the spec doesn't
