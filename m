Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPCbBmvciWkGCwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:08:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6178110F6F8
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1694810E3E9;
	Mon,  9 Feb 2026 13:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cT2/py9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4DF510E0D4;
 Mon,  9 Feb 2026 13:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770642535; x=1802178535;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Y2XBx2oT3T84J/zztICpzY2EqukjD1rBNuRoHMSibaE=;
 b=cT2/py9rY/NRFH2xIDn6LVqsYOxjXNc3utj/rpWdGmxP+HTaN53SqVY/
 VmbPauOL7dwYabLajcvfpOHRj1/zx979fV1ruAe+10RcAeH9axo3h/+CF
 QG072k1bvVNHhGY1ImUfhws8wubxlSPXn6GHin0+w5/0MHlc0OeiFTij/
 H6iaqEazXiMZAdbo+VLcTyaCkgLzcX3QCHV4x/34sV25RCV5X6tUWpwyh
 O1av8DnEzEndFfupecbo8XeqwgDqPUhD6CH2EVLtjt0kv44lej9yCIqVI
 u71SfRO5WxdIEPfMxBB7dYmIKcm8EC4Ku4LOf1QeM6ligTpnPL4RtBvIL Q==;
X-CSE-ConnectionGUID: RDMQKQYjT7KVPoxgcGACHA==
X-CSE-MsgGUID: Mo5PmpbzTRyXjRWk+rLkHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="74349282"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="74349282"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 05:08:54 -0800
X-CSE-ConnectionGUID: /MHui5g+Ste5VahL9M1+Ig==
X-CSE-MsgGUID: 4SVeSEa5RWqPYuIa9poBTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="211590632"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 05:08:54 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 05:08:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 05:08:53 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 05:08:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nP1rHDwrsHrI7lFG54HiFBJEhabK7GUZhppjpE5FFtLvBHs4qH3AYfU2MIltJ6XKabECjhxSotlwoSP/HowmXfWFGUOIFWBNZZpeFR10QB2fKzGS9AjwGobY+rzuxv5IgLcWh5cPVxvug1ZijPrs3/htDp/9nz4YaKxdI5IJ1e0zuU3SCfSbXgxPMgFgf+KmCySxP6EpJ0GYzAOY/gyjHQZgvj6obI48nW3eSX420Czlo7Pa42MM28z2mYJEIX77wwPYfxCfMHQA8IVdxmUhEJq6W0dIXjmMGqwcSBJ8ZJ1lNjctwc6cpDabEgBV8IOgGnN+oxiuZYV5MwuOVnH/qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4D1w5AMQ2Ta5q04vbHbFu8Cuy2pJiokNhE9ILazo7k=;
 b=awcqznN/e8Q53RUmT1L3qvEh4Qw4AjAjVzYnaZH0dndy0PDn/zC5wiSQwnWJyCVW9/tL62dybEOeRXm+Zg7thnwBrPnRz2GTFWgJZB5D17BGLaS26+eji5EHxWWgYLOIFGHAMe6rOGiqPEhmSEk5SQIH4gu4eBmPluBVst3hNuLRtuKoJwLbE3p6o/bDGJIBiiCUDZ1ytB7tOQhxb0jqSiXJP/DHYxNCb3pQcIsn6xvxvDUK9gX4aufaQggRwyilB8NfvE7ll4WhtnNRAEprog5TB1XOAZMhSEQUNV/ENNHIO+m/guOxad3AjUxPUxlmUIp8Q5ZQBppgwlRIkIebcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6885.namprd11.prod.outlook.com (2603:10b6:303:21b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 13:08:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 13:08:51 +0000
Date: Mon, 9 Feb 2026 15:08:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Message-ID: <aYncXW9oDb7DzL2R@ideak-desk.lan>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
 <aYmqKmGiEz7z6eUV@ideak-desk.lan> <aYmyafbsHVRH2crC@ideak-desk.lan>
 <371ae01a-acb4-485b-b063-c23999a0f958@intel.com>
 <aYnK7Osk9sMUwAhO@ideak-desk.lan>
 <c17654bf-83df-420a-8a30-2c93cafb2208@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c17654bf-83df-420a-8a30-2c93cafb2208@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00003827.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:5:0:6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6885:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ef41e8f-6b49-4c31-19b7-08de67dc5ebb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDVrQWhVWGpVSjQxN25jbXZkRkZGQS8xcE1YeU85OXVSNkdoMkE4SkoyK0Js?=
 =?utf-8?B?b1ppS3pOWktMemk0Sm53WGZxUDJNeGVINXFvUk5PNW9QdkF6bFdrTlBBRHZa?=
 =?utf-8?B?WHRPQmYzaFRKZm9Wc2E5SERYUGo1ejVaczBsclozNFJKQjZVVk41ZHZNQlpw?=
 =?utf-8?B?OWhLUFRhYms2eHpqY0FpelJWU0xxTXYrWmhRdk16N1BvcjhVVkFnU0Vmd3dF?=
 =?utf-8?B?WGQ3YUw1cDBSNkZTc1pXaEJvZWdlemFZU1NjeDZIcW1sMUcxc2NOc3Jkbjh5?=
 =?utf-8?B?eDZQSWVYU1cxRGM3aC9ZeXRwbVBGSTZtdkY1dUNLL3REUlhPcFhuM290bnRI?=
 =?utf-8?B?NmU0SXFBWWdVNFYyMWFyYWRvbmNMcFNjb2dJakJUeERDUVlRNTFVR29sK2tB?=
 =?utf-8?B?Rm13K3p5azA5NldJUi9HODBJUmo1R3lwZHBSem9lQnhsbHJrdGVCUEZxenJD?=
 =?utf-8?B?eHJYbFpwc2UrTnJncXZRMkY2REVmblFHOWtJUGYyeG1UOTIyTjJpaEhmRWpN?=
 =?utf-8?B?WUUrakFobHpjN0xFVWsvcWlRdmtsYXFFMmp5ekJzcGlja3pKcHJYeGRzQXly?=
 =?utf-8?B?aXA2ZmJzRjdwWHRzcEM2K2UyN1lubm95bW9YcEZ1UVBVQUNyQk5IbFJwcEZR?=
 =?utf-8?B?RTIyVHdXcU5RU01YL2F5Yi9sSTBkT1dCR3BvejlQYmJBUTRPZGViNWdIc0Zp?=
 =?utf-8?B?Zm5PWEZXZHN3K1o0dVpLQzV4cFM2NW9xSEhnbmFGd0ErMGpVM3pZS1pFS2dj?=
 =?utf-8?B?S2hadlRxLzVLTTZndlprUCs0UVAvanZTMkp0aUh6SkFWdjRkb3hJWmkrdUkz?=
 =?utf-8?B?VHVnRFJ6NEZSTllJVjBHcFY0Z1VOckFVT3o1NGM4OUR2SllCb2w2R0tKczUx?=
 =?utf-8?B?b0xQdStXUzVvRFFhaVR4d2JpTDR1RVZyY2xFYWJ2SzVRaTU5Q2M2SjlIRlZD?=
 =?utf-8?B?MDU2KzNiRzZFNmlqR1Q5cExBUUUzdmpybDZhMkt6U3JXMDkxU0ZmMEhiV204?=
 =?utf-8?B?MEl0cnFvQklKd2V3WUFWSkd2TElkcy9GZHhYQW5veCtSYVRPVEhXZ2NnZHNO?=
 =?utf-8?B?Q3krUzIzd0dnMnNaWEd2Nk9PWllRTlIrWE1qSDEvTU1ERllQTDh4eG1vRGV3?=
 =?utf-8?B?VVp2amFDOW1ybW1WNTlBODZmKzdzNlFQT0lNUW5HMk5kOS81NDhLUzVFQWY5?=
 =?utf-8?B?MlVGelJsbE9tSmJKUkMxdlJ3OWJkNVdwYmFtRFdjdm44ZDRJT0h6QnFkNmo5?=
 =?utf-8?B?bW1Dd012ditNNWRZZk8yc2tXRVRJOENqelJhQzI3YmgvYW9EV2N4T1p1aE5h?=
 =?utf-8?B?cVVoMnIrdTV4WG96UG5kNGl5RWNCY1k0d1lHUk5uNVpaSTZIZGxrOTZzWmxI?=
 =?utf-8?B?bzlPenVtVm9lTmlVNndBdjRPR3dYY0RYSE52V3JYb3lhNERFQmhFUmNUN1F4?=
 =?utf-8?B?K3lzQmt4clk1dkQ4NnpIRGlGaUxrYUtaT0VPRVhUdVV4cTBNL1VHclU5NkxZ?=
 =?utf-8?B?bWNRcG1hcTNoOFV5dXR2Y2YvOFdWNTdMWGhvRDllQUxrQ3hQa0xuV0hXR1R1?=
 =?utf-8?B?L2dFSXhjallQM2VYNlpob2QvTWYwTm5sRlY3VEFFb0lhUEFQT0VicWtxSXlo?=
 =?utf-8?B?aVdlTFdkOFp3SU1RVUcybEtTY1lzVFh3MjlKSUxrOVQwTVYxNDVOTTRuY1N2?=
 =?utf-8?B?UzRXN0h4QnRIU0lzcVJJTnN2KzhLNWozMW1vZjdvbkliK0FZMlFoWGE5T1N0?=
 =?utf-8?B?TFJlSVVEOXkwRFZtNFhvUThHbVhoeVRLZmpNT2pqRmV5QjlyanhaYUdRRTlK?=
 =?utf-8?B?OThKaDJZOUN3ekdscTVmYjRERnZUSmpIcXFneTZZNHhLMzA0WE9qeVlkeGl1?=
 =?utf-8?B?dVZ1QUpXV1dNTHVXU2tFV0tkMkV3cG1ROEhKbGxHTXlTakYwT2xheTBiWWp2?=
 =?utf-8?B?Yy9QLzV2c1U3dWg5REJReGUxVjBuVzEyMnRPOEVOdmgyTXlza0RWcEl4SXFX?=
 =?utf-8?B?RGxYUHc2UWZySm1CVkxKbUN3blV3a0VzUHNFcTBjSkYyNUpFT2dBOTdUcHFv?=
 =?utf-8?Q?dVXKJA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmpHVERKOGM1VXg3Mis4WVNUWXBKYm5oSGlGU0IwMzZHRW4wUnlLUzlGbnox?=
 =?utf-8?B?WmFCVm5iOEhnYzVQRXZ0MllvcGhveElZWEdXYnpPdjk4bVB2WTEya1psN0hD?=
 =?utf-8?B?Uk1NQUFUcjd3NWJsZC9QeGltM3Q3V2lXMmQ1cmdyMWY3OGdnaUo4UmhYNWpq?=
 =?utf-8?B?UU90RkFCZEsvb3FybExPY0sreFd0NVNtcGJMZkR1QUxJbGlvTWFzaytpcjNi?=
 =?utf-8?B?U2NBbjl0WVlHbVd5b1dIb2tHaExxT2JtZGxrRGNyVW14c1hCNEgrZzRJaG1T?=
 =?utf-8?B?aVRyendJQ08wWlg1aFNzZisyMlpNdjk4YVF6a3RwSkh2citZS0Npa0NMcVRl?=
 =?utf-8?B?Sk9xRCs1YjA4bjM4WnR1UjJwUUd3bitrU1E0dzBMVDdIcmJDNTNMZWNIb014?=
 =?utf-8?B?U2FBQk1JVlg4TjhZWjZnVWVObzZ5d2grU2xvU05DSkNIZmJLSytneWtzK21i?=
 =?utf-8?B?QW1kM1lqYXhXNmNuYUhXRk1paEE4VGN1RWVIUC9EcDkvMmxKUnJ5VWxpaksz?=
 =?utf-8?B?M2l5bTdxSEphUVMrVVRjVSs2UTZ2VzBUZ0dQY0I0L3cvaVA1TW9MVVdzOGJr?=
 =?utf-8?B?THFpRFZKeUtrQTE5ZDI5aG5FdDhhRHI5TmI0Nk9OMkFNTllBZDRHQ2dJeXpy?=
 =?utf-8?B?dS9RU29FaVVSck1JZmhyKzBLMDNFV2Rodzc3ejg2WEZhQnVSRVlWMnRLTU5G?=
 =?utf-8?B?Q3BOdElSam1KYWdNRVRRYXowaEE3K3AydCs5MmhubWZqNUdMcFhpaElLb0cx?=
 =?utf-8?B?QmVCZzl4NTZSOVU1NS91anFtVjY4eHZtUU91QkFxTkpXQjNGd3QxcHp1MFBy?=
 =?utf-8?B?ckI4Vm41cnBkejZmNk9QM2NPU3dLWnFzYUV1N3UzbWJxeit1Y2hNLzhzZk1s?=
 =?utf-8?B?VE9MNjUrTU0xamVvR1hmTWdJNVRZNUlZcnFtbCthak55bG8wSkJ0OU50aStN?=
 =?utf-8?B?NUlGZHdZZFp6STZML2NKN3FhK1YwVElmbzd0MklrR2NUQVlNQmlZSnhXeDZh?=
 =?utf-8?B?Um1ycHR0UXpFcVhLQm9nT0RsOXUzSlJjUFAyYmIweDRJOGU1dnBmbzZCdmgy?=
 =?utf-8?B?NklkYmI1WmpwSzBBek96YzU1VnJYZTNUeDdaWDZ0R2FuK2ltZnZpMUpIRWdh?=
 =?utf-8?B?bStiM2JGdzNTdXR5My9DL0RSYTl0RWdyVkQ4UThtbFNHbjJTbjdBR0NUNkZC?=
 =?utf-8?B?WGpGdHcza3hYVTQrSlEzaEZmWFg0WGxqanhUWk1ZN0ZRVXV0dXpxN29QbVRs?=
 =?utf-8?B?TzJzWkpXem9kMnNXSkdXRFVTd1J0dE9aT0w3NW1UaFRaSGQ1SEFLYTllb0pG?=
 =?utf-8?B?VFJuSldzQUxlRDNXWnJYTmdnNEhQb1F5L0d1dEdPd2Jzc09DUVc2VXlxaW5M?=
 =?utf-8?B?L2FjVXhNNUN3dnNJODVHSnpmME9xeWZiWDUyWDFRakdEaEw4WVYzbk42K3V4?=
 =?utf-8?B?QlFmemFyNDBDVmwydVVlRHpDZThNcllSZW1VM0RQcnJ4QVp1Rm9QVEhzV1lF?=
 =?utf-8?B?aUxuUHo2QUUra2hvaTFUQTZXdEEzOFZCVElQYUdFcWxXdTJvTC83M1ZaRnlP?=
 =?utf-8?B?SlFGY2Y1STJ0TWljWkNjd3d3Nlc4NVlFOVFmb3dHQmUyNWtDVVBCcVREUnVW?=
 =?utf-8?B?QlZVNDE2S1pDdEI1YytrQ215dG9LTXV4RXNrNnV1dkN5eDUwZ0g1VlJJVm95?=
 =?utf-8?B?MVFLV2RQSUliUWwrcTFQRGhjaGNSS293S0JSWGhuZ2Y0ZW1FYUhuc1B1a2pI?=
 =?utf-8?B?d1VhaVlvSDZtSHd3YWM3bTdXTlpQbkR4YVpCL00ybWVNWHB5bngxM2cweDJq?=
 =?utf-8?B?WnhZYlNQZEhXMlUxWWVaNWFDN0UvbEQ1ZGt3dk5xN3RuQllmcnNtcUNlYTQv?=
 =?utf-8?B?MlpDTGw4eU5vd1ZVUjBWQXdCcHRIU1h0aHRCWTRyQ0duZFJHWkQvc0dkd3o4?=
 =?utf-8?B?bnZJcVVldXdkd05lekJYRnM0TnZvMko4VnBBM3NMQUZtVGVaTjN6S0NLczV0?=
 =?utf-8?B?T1M2eXBCaUZQTnVjOHZhRm5FMzFzMXBucjRXdUhoeDJpRk5QL245dk8wWUtk?=
 =?utf-8?B?WTFUbWI0OTZiM2oyYVo0TkpKM0VGM2lJUEpXVVpKR1VIVXUvV3YxUVZMRFhG?=
 =?utf-8?B?dnVnYWRGd2ZVeDBtOFlNVnFRSUNvZ1kza1MzcDd0WmM4Ym94YjJGYUE3cUU4?=
 =?utf-8?B?NnE4UnNjYThLSHFNaVVMZ1drRGVaNm1ETzgyQmlONWcvVkFubzZCWGxXamps?=
 =?utf-8?B?eHB3QXNQK050ZGxyT3JwTHR1Wkk4OW1Pa3ZlUVZONkV2bmI5aW9veXBxQ3k3?=
 =?utf-8?B?ellScE9vdHVQaDhwLzJXVytDOUtHYmdscGhzemptaTU4bmh1SzdWdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ef41e8f-6b49-4c31-19b7-08de67dc5ebb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 13:08:51.4379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xRI5/e3kEhkhO72EMnC4XGdeCxDm+QCY0ogsBUGXDm7Ta0b5+MjuTMsCRUVSXmDKM7aMgWWgiTgeTxn3TXSYVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6885
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email,gitlab.freedesktop.org:url];
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
X-Rspamd-Queue-Id: 6178110F6F8
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 06:15:45PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/9/2026 5:24 PM, Imre Deak wrote:
> > On Mon, Feb 09, 2026 at 05:00:13PM +0530, Nautiyal, Ankit K wrote:
> > > On 2/9/2026 3:39 PM, Imre Deak wrote:
> > > > On Mon, Feb 09, 2026 at 11:34:34AM +0200, Imre Deak wrote:
> > > > > On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
> > > > > > On 2/9/2026 2:10 PM, Imre Deak wrote:
> > > > > > > On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
> > > > > > > > On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
> > > > > > > > > On 2/6/2026 4:12 PM, Imre Deak wrote:
> > > > > > > > > > The pipe BPP value shouldn't be set outside of the source's / sink's
> > > > > > > > > > valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> > > > > > > > > > value to 30 due to HDR.
> > > > > > > > > > 
> > > > > > > > > > Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> > > > > > > > > > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > > > > > > > > Cc: <stable@vger.kernel.org> # v6.18+
> > > > > > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > > > > > ---
> > > > > > > > > >      drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
> > > > > > > > > >      1 file changed, 12 insertions(+), 2 deletions(-)
> > > > > > > > > > 
> > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
> > > > > > > > > > drm/i915/display/intel_dp.c
> > > > > > > > > > index 2b8f43e211741..4d8f480cf803f 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > > > @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > > > > > > *intel_dp,
> > > > > > > > > >                         bool dsc,
> > > > > > > > > >                         struct link_config_limits *limits)
> > > > > > > > > >      {
> > > > > > > > > > +    struct intel_display *display = to_intel_display(intel_dp);
> > > > > > > > > >          bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > > > > > > > > >          struct intel_connector *connector =
> > > > > > > > > >              to_intel_connector(conn_state->connector);
> > > > > > > > > > @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > > > > > > *intel_dp,
> > > > > > > > > >          limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> > > > > > > > > >          limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> > > > > > > > > > -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> > > > > > > > > > -                intel_dp_min_bpp(crtc_state->output_format);
> > > > > > > > > > +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > > > > > > > > >          if (is_mst) {
> > > > > > > > > >              /*
> > > > > > > > > >               * FIXME: If all the streams can't fit into the link with their
> > > > > > > > > > @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
> > > > > > > > > > intel_dp *intel_dp,
> > > > > > > > > >                                  respect_downstream_limits);
> > > > > > > > > >          }
> > > > > > > > > > +    if (intel_dp_in_hdr_mode(conn_state)) {
> > > > > > > > > > +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
> > > > > > > > > > +            limits->pipe.min_bpp = 30;
> > > > > > > > > > +        else
> > > > > > > > > > +            drm_dbg_kms(display->drm,
> > > > > > > > > > +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
> > > > > > > > > > valid pipe bpp range (%d-%d)\n",
> > > > > > > > > > +                    connector->base.base.id, connector->base.name,
> > > > > > > > > > +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
> > > > > > > > > pipe.max_bpp < 30 will be either due to the max_bpc property set to less
> > > > > > > > > than 10, or perhaps when the panel itself does not support 10 bpc
> > > > > > > > > (limited by EDID or VBT).
> > > > > > > > > With these constraints doesn't make sense to enable HDR and send HDR
> > > > > > > > > metadata.
> > > > > > > > > However, as we see in some reported issues [1] [2], in practice some
> > > > > > > > > compositor seems to enable HDR by default and with the hard limit set,
> > > > > > > > > they report blankout.
> > > > > > > > > So it does make sense to raise the min bpp limit only if its inside the
> > > > > > > > > supported range.
> > > > > > > > > 
> > > > > > > > > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > > > > > > 
> > > > > > > > > 
> > > > > > > > > [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> > > > > > > > > [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
> > > > > > > > > issues/5969#note_3248404
> > > > > > > > > 
> > > > > > > > I am not sure if this patch would help with the above gitlabs. For example
> > > > > > > > in case of #7052 pipe max bpp is 30 and the commit still fails.
> > > > > > > It does fix though reported cases where the sink does not support 10 BPC
> > > > > > > at all. Yes the monitor in #7052 is still a problem, since it supports
> > > > > > > 10 BPC only with lower resolution, where the link BW would allow this
> > > > > > > and he monitor doesn't have DSC either.
> > > > > > > 
> > > > > > > > However, I need to look deeper.
> > > > > > > > 
> > > > > > > > I am thinking of relaxing this restriction all together because the earlier
> > > > > > > > assumption that a panel advertising HDR will support atleast 10bpc in all
> > > > > > > > it's mode turns out to be false.
> > > > > > > > 
> > > > > > > > Currently, I am inclined on the following policy.
> > > > > > > > 
> > > > > > > > - If DSC is not available, fall back to normal bandwidth calculations and
> > > > > > > > select the highest bpp the link can support. (Also preferred by Kwin)
> > > > > > > > 
> > > > > > > > - If DSC is available, prefer falling back to DSC and attempt the highest
> > > > > > > > bpp allowed by bandwidth constraints.
> > > > > > > The patch does the above, except for not handling the case where the
> > > > > > > monitor doesn't support DSC. The attach patch handles that too and so
> > > > > > > fixes #7052 as well, are you ok with it?
> > > > > > This should work since [1] did.
> > > > > I think the sink / source support for 10 BPC should be still checked as
> > > > > in this patch.
> > > > > 
> > > > > > There is one more (theoritical) scenario that I think is still not covered.
> > > > > > What happens in a case where 30bpp doesnot fit into DSC bandwidth?
> > > > > > As I understand, the min bpp limit of 30bpp would become a bottle-neck even
> > > > > > then?
> > > > > No, the link BW requirement is determined by the link BPP, not the pipe
> > > > > BPP for which the minimum is set. The link BPP in DSC mode can be
> > > > > lowered below that, based on the sink's minimum compressed BPP support.
> > > > > So in the fallback case, where 30 BPP uncompressed mode is not
> > > > > supported by the sink due to a BW limit, DSC is used instead lowering
> > > > > the compressed link BPP as required.
> > > > Although, it's still possible that the sink wouldn't support the minimum
> > > > pipe BPP set here as a DSC input BPP. Setting a minimum (pipe/input) BPP
> > > > in DSC mode isn't actually needed, since the highest possible BPP will
> > > > be selected there anyway. So I think the actual condition for setting
> > > > pipe.min_bpp = 30 above should be:
> > > > 
> > > >           if (intel_dp_in_hdr_mode(conn_state) &&
> > > >               intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
> > > >               !dsc) {
> > > >               ...
> > > Hmm makes sense.
> > > 
> > > Perhaps we should also add a debug message right after pipe_bpp is finalized
> > > (and before the full link config dump) to make it clear when HDR is selected
> > > but the chosen input/pipe bpp ends up below 30 bpp.
> > > 
> > > Something like below, in intel_dp_compute_link_for_joined_pipes() before the
> > > link config dump:
> > > 
> > > if (intel_dp_in_hdr_mode(conn_state) && pipe_config->pipe_bpp < 30)
> > >          drm_dbg_kms(display->drm,
> > >              "HDR mode selected but pipe bpp is limited to %d\n",
> > >               pipe_config->pipe_bpp);
> > > 
> > > This will help flag out the cases where HDR is enabled but the pipe can’t
> > > reach 10bpc due to sink or bandwidth limits.
> > Ok, can also debug print the connector's HDR mode, like
> > 
> > 	DP lane count ... bpp input x compressed y HDR-sink yes/no ...
> > 
> > at the end of intel_dp_compute_link_for_joined_pipes().
> 
> That sounds good. IMHO, let's just drop '-sink' and just have HDR yes/no
> (HDR-sink might imply HDR capability of the sink)

Ok.

> Regards,
> 
> Ankit
> 
> > 
> > > 
> > > Regards,
> > > 
> > > Ankit
> > > 
> > > > > > [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
> > > > > > 
> > > > > > > > I am working on a patch for this and should be able to float something soon.
> > > > > > > > Imre, if you agree with this policy, would you please wait for the patch.
> > > > > > > > That should make it easier to send out fix for stable kernels.
> > > > > > > > 
> > > > > > > > ==
> > > > > > > > Chaitanya
> > > > > > > > 
> > > > > > > > > > +    }
> > > > > > > > > > +
> > > > > > > > > >          if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
> > > > > > > > > > limits))
> > > > > > > > > >              return false;
