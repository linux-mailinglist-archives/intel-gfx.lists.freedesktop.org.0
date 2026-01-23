Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHE+OwATc2lksAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:19:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7C770D21
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EBD10E268;
	Fri, 23 Jan 2026 06:19:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VX0vvRqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E80C10E10A;
 Fri, 23 Jan 2026 06:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769149181; x=1800685181;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NuL7Ns1N9CYFZxAL1RHhR7cSFZJDJDWOFeVFTeifkV4=;
 b=VX0vvRqhWp99n4C14YGkbZlTCPcK/Itjj2h/eQ2oMG4zbKtSh8kXtNXk
 WTV4XQM9swRdvcc0ywOww0efvrBLAWIt3VAYB1MAehnWPOEpuw7gL6wo6
 kPaGWO+safDkbAmxSM6TDDM2ii6ZhZJ1rvrcEb1CfACXBKjEliu/UcTHx
 SLNexlUa+x5UdkdXzVCWinlRvngoXI2aPgc8rmMRa/b+k6dyAgjhcsvJi
 tl4/F3yYGv22ppb7Yj2wSt66XULpdO+dw04bU+W8g0/RNEyVAU1teEGIj
 Kll9RcWHvIFXMOERwtJ9djN9CIitCL4+hn5utbDjyUTz9TtNrp2/SBYvX Q==;
X-CSE-ConnectionGUID: zcAbDj4RQ4KeXPMU+DpKIw==
X-CSE-MsgGUID: HMBuowZiTniD49UKsNWHDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="69596326"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="69596326"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:19:41 -0800
X-CSE-ConnectionGUID: qD2d8aSPSxuT5eeMTHLhsg==
X-CSE-MsgGUID: oI2nKn95QCSc5cFBSBbXrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="237595984"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:19:41 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:19:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 22:19:39 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:19:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NPuVCilo+DVU3KsB7PHmGBK5GRyFjJUo6EqEl1YRqZCkOKlIlPyYS5RzhZt2n5bD+9FDkTwSmPGWxtOR3Bz5Ayt/gSogl36eMekQIMaUjiPxfjgvZjINTiJWixdk6jiTYkF0YjAhR2r4UFcVgg0f51tgsITLAPTu7CwuODE5FOlr6WwWftzyKBs5atSJYeHgFX5FUtXKDfMxQN0efx3E8tiwsgPeBZik79mzQmjOnbk5yov4o+XMZ4lbdsUy3q9mdMU2qhS8tDDx5g5FPSNQOmi5jRxVxkFWKpT4TC4xtzqf2Z/iktetDZo/V8t5AoCl9xfc7IE3LavwS98vnenL/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuL7Ns1N9CYFZxAL1RHhR7cSFZJDJDWOFeVFTeifkV4=;
 b=oYkGgcunzirv56j8uu9U1jD6/Pi8qaTEw6ng0kQQGeHVB9kJ4m6RlppmIzW16sqnbmFeI/vPPMCnHlHRTUT5Szq/OrvySc6RBheN/0qEwq4x1y2aJviuUCyxb4HIsUN4xGj9E74KscP+oHZN8eTdeuQrHCHfPNQUCqnpgvskLXEJQtwRkXLFrJfIEocNa0fqMg0AySeaLdzsB94DNc6coEGWj3xqYQpXubh3O1XLRgQIqcVKe/zXm+xtDOJsJPHyR7AJK5Zvazq1HrYory3fHdP172V9WO5NfoTyAF8gb/z5oFUWdedu9O2MIcrVa2QLsr+zFLdvnNbIbjf7o1U6cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB8413.namprd11.prod.outlook.com (2603:10b6:610:170::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 06:19:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 06:19:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v9 4/8] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit
 for LunarLake and onwards
Thread-Topic: [PATCH v9 4/8] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit
 for LunarLake and onwards
Thread-Index: AQHcc/olGOJOnycB6kyWxbj2UZbvt7VfXT0AgAAbNQA=
Date: Fri, 23 Jan 2026 06:19:37 +0000
Message-ID: <08cee8eb3a679074854d64518741a47afdfb5429.camel@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-5-jouni.hogander@intel.com>
 <36c19548-c76d-4f0c-98e5-937db6532573@intel.com>
In-Reply-To: <36c19548-c76d-4f0c-98e5-937db6532573@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB8413:EE_
x-ms-office365-filtering-correlation-id: 5b0fba47-afe0-48d8-633f-08de5a476287
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SXEvalNNYzFZRk1BQXh0QWFEU2ltZVVqVUEzM25Qd2daTzFnZ1oyVk5kUTBY?=
 =?utf-8?B?RTNFSXVQSWU5QzZHNTJ5dnN5T1dzaVJ1WU92czRYZC9PYkphbDk3ME5zY3dy?=
 =?utf-8?B?dHJ6bzdoOC9RTkthbFJ1VXl4Yjh6WkNJSy94YnVwczZxQzNtNmFMVkZFZTNU?=
 =?utf-8?B?VXFsR3RGN1JJNDc5SlpyZWNTUUZMdk1LUGZhck0zK2JuMEhwZUZlVFNkRGFR?=
 =?utf-8?B?VlNQSmlyNmRHMXNLUWtyYXcrN2pyMEx2RDNrWW1NbVNGTTJHczk3ZEhpM3Nz?=
 =?utf-8?B?T0hsUHpOcjNwTXVNSXZVV2VtM1VjdTJibTllQ1NoUERtd0NjeUlPT2NTeURG?=
 =?utf-8?B?M3doSjlhd0dVbGJvNjJaTmhWSFR0Q2FWV0krbld6NzV6aTA3UkIzODI2dUZM?=
 =?utf-8?B?SVRYRlpWUjRXcmhKcXhtTUtwWnNPOFhpdmVvei9ySWkwendtNUp3ZkxKRGln?=
 =?utf-8?B?Y3V3cDR5NXBRVWRxQk5xZitaeXRBUklSZzZVQ29qSUtTUDdnNVpBVURmSVNE?=
 =?utf-8?B?OGEzOVZFcG10UGExMFdmeGJqSDN3N3podndNM0cyalJUYnZZMC9YVFpPMURN?=
 =?utf-8?B?TUJEVzFnRTdDU01FVmdtZjlCVE5ZN3BrSTN4Q0pGTGx4dnIvaTc4Y3UxRUgy?=
 =?utf-8?B?OUo2eC84Uld1KzJUMjFXeFRtZ1FzRjdCazh2dHl4TFJFZnNTMjB2dDlsUmNS?=
 =?utf-8?B?NlhsOFpWMERCRHFyaTVLSVpXWVR1azFvYTNtcGFSRjQ0Q1FZTHU5QnZHOVF4?=
 =?utf-8?B?WERsdlhjd09nK2g1bzhCY0htODIxNGJTUkNyNlo5eXdkMkowdndheU9BcDMw?=
 =?utf-8?B?VWhPQWtRemNzSEVtczF3YTRNalA2Wk41c2loTXVzTEZDczFIcGJxaVZqMzZy?=
 =?utf-8?B?K1pFVDNuMzUvcFk5Nm5zandBOGZERkRmcStLTUxkd0wwRlNleHV0aEVQNE5F?=
 =?utf-8?B?ZEVFcTgyYmRuUHhnV2h6TWJMVkg1ekJyMUtCR1lpakR0alVwVENZNFBySjI2?=
 =?utf-8?B?MFAxS29UbUtrM0lPRWxHSVRWSkFBUERGTmc2RXErNkw2V0xwbVh4U2tCT2gz?=
 =?utf-8?B?SHBQanp4eEEzUm5wOHZnU0NVellKeFdBc0dtbVEyK2JDdEk0eis2VHpic04w?=
 =?utf-8?B?QlhsRmtLc2N2dXBQTlBrS2dpQ0sxT0wvWUtaN2p5V0xoVXU5bEpodjZYRytU?=
 =?utf-8?B?RklockNPK3YvYWtveDBVNFozUTNYTmQzYitPbTBGbHdISWNId1ZZaVI4WU5x?=
 =?utf-8?B?OGduMTlqNmpqekFpYWVhV2dCMmlKNlNUb3V0SkF0WnpzcmRpRlBsajR1d3Vu?=
 =?utf-8?B?T2dHVGVJd0FhaXRtOE96cVJSUDRnc0ZBNGZOU1Nva0lzY2VTcGZYaUd3cDlS?=
 =?utf-8?B?V1dLNGIvWkRyUkRLWDhaUTcxUEJ0UTk2Q2ozTjhFdDhNWkVHZUFmZUFyeEhX?=
 =?utf-8?B?cnh1emZ6OHVpM3BNRzVnUTFwZW5CcUgwUVFNbGwycTFHWTFza2FxWnhuSG8z?=
 =?utf-8?B?a3VObmU5L3M1U0svQW5rOVhTYTNpZ0laZkVvVHMyWENTb2orekFtWjZlbjRB?=
 =?utf-8?B?RzZ3T0hRTExlNFcyRGpiY2l4cFU0SDFkOFVub0I5anpqcHlWc0pRWVloYmx3?=
 =?utf-8?B?S2JXQ2pabm5PR1JiU1RLUjF4Q2JXaHd1b1d4dElKMTRtWUVqM2pDbnI5Z1cv?=
 =?utf-8?B?YnVrdmpCdlRHMFNiSUhFOFFwZmRxK3U0N2JxbzdoWkZvTzF2Q3k4aUkzbjdD?=
 =?utf-8?B?MzY2bGlJcVpnNUc4Y2F6dlB4RDNmS2drNXB0OVQrdUxROXJUVEUyMWMxbUkv?=
 =?utf-8?B?cFMzM1pRbHdiLzVjMkQxNWRSdFRjUUdhS21NcUJyYXl2bFZYTzhpY0RQZGxY?=
 =?utf-8?B?ZTNRM1BDVVErYnBJN244R3dkUVVHc2EzSUE5UEV4cWdUZUhCVHhmbUpJdGNU?=
 =?utf-8?B?aDdkazZEZlNRY1JMbnp3ZzdVMUlYa0F1K1JjZ1Fjb1VLRlFoVHBET1RLaGJr?=
 =?utf-8?B?S3lINGtZdFQ2Y3l0K0Q0YStxamhXTmlrT3NTaW9oR0JwOVU3cFROS2ZBRmFh?=
 =?utf-8?B?YTUycC9FSEVWdlZudEtPeWp5cEhXYTRlbXZib3RtUEVaMitDSFB4KzhUaGlZ?=
 =?utf-8?B?Z0tXOUpvQSs4MUcxazFaVlgzUFR3WXZxT2liaFBpWTJrejJ5T202Zi9Nd0RG?=
 =?utf-8?Q?VE3eubOwTHVz6cBG9BnYnzc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXVNM0d0SW1FVFE0bjhHMGczazNKYmtBcDdQdXViREtja0phcWRGOUwyOE9k?=
 =?utf-8?B?aDMxZ1gzU0VGazcveHRQbkNXOE5oOExtUW1FWVYzNlVQR3lielpWQVN0VnZs?=
 =?utf-8?B?aVVERmFqbkZ6Wm9WMExJcFZoVW0rRXMwOFViTmIzakF2SjhyOEx5cXp6dnJG?=
 =?utf-8?B?UVh2eUl5aVMxclNieEZUVmJVeXpFUUx3T1FlODBiTFpZU3hzNDl3NjlTdURV?=
 =?utf-8?B?R1U4b0xCYWRHcXJ2TmVKV1dCQW5pYjloWUNQbDRLSDRnY3FldTlVbVFlQU9P?=
 =?utf-8?B?cDdSSVJrMUV0T0tRMzVQQTdkbWdOa3kwWmV4eXQ2RCtRU0VqMnF5aDNvMjB1?=
 =?utf-8?B?bllaQ0NnUFNncUVOcitsRnBCTWdWV2ExNFdlYzZqTDFKQTNvNDhIN3p4YzBF?=
 =?utf-8?B?U1NwWGVkZ0NaeHBzbHkwd3ZCQzI0YjJzQVFsWVBiSy9BRGY2cVpFc2p3cnFh?=
 =?utf-8?B?SlhHS2UzdE14QjhleVN6S3ZNWkErWmRNMnRwZ3FicnFDbEI4aWMzdXZCYkFL?=
 =?utf-8?B?R0VWUTBtdkQ0aWRtejQ4REFlcVVXaHpoaXc4c3c0YzNnbFBGc1BUN1VTRFQ2?=
 =?utf-8?B?UVV1OE8rVldnRTFNVU1XZkxZaGR6bHBpRWZncHF5dzlxclJNeVFPc2twdGFT?=
 =?utf-8?B?dXlUVGtWdzA4SzJiSUJHV01acldDSmV6dVhib3BveFJJMW5FSDhBTVRJZ3RX?=
 =?utf-8?B?V2JxMkpMbG5LbE1RS1VWS2FKa2Ric2p2cmFsRHZ3VmJ1Wm8rSElZb2VvNVNN?=
 =?utf-8?B?enpSbVVlSFhOc2g3LytUODZIQVVpMTExMWFTL2puNlRFZmNkTGdFUldwYnJY?=
 =?utf-8?B?a3F1SXRUTHd6MUJITjA0SGZKZDEyZ0d1Z1ZCeWZjNW1vN3p6cmZXUUhkUjRU?=
 =?utf-8?B?NlJmbGxpNml5akhRMTV0aC9IcFRhWmhubVVTMytsUmRqM3NhelRsSFlHb0xO?=
 =?utf-8?B?U0pMUEl1UzlrTnhPcDIxU05yc0JUREtCbFdNVmdidXJLd0lpUTJzT3B1bW1I?=
 =?utf-8?B?azd3Q0hkVkhIQzRVcjMyTWlISlRlYVNuYTZBdDM1bWl1LzA2blY2OWJqV1A0?=
 =?utf-8?B?eU96bmR6ZG94THV1cGR2bGR2VkI2a2tHSjhUcm9TM3A1V2RUcE5KWklxZ3gz?=
 =?utf-8?B?VWZlVWJ0V0I4a3Nacld0em9FdDVPdDhja3NYOUJUb0Vya2h6eHpiNDYxVVhY?=
 =?utf-8?B?YjRYejlTYUlNMlY5RmJjMTRnZTN4c1c2WnRVY3hHNjczbUlMOVVpcU85VTRy?=
 =?utf-8?B?RVZGUXdwRGZjTmd0OEhnRkZrQ1pBTXBrdzg4MU5vRTAxdE1wdWFDUDdQQjQ1?=
 =?utf-8?B?OVNoSWxrcFRhMDAwNllacm1OZXNFeTNjUVlCemdwa3g1K0lpTDllTVlqaytB?=
 =?utf-8?B?a2ZVc1lnTHRseUI0ajFHb0hyUHVCR0w4MXRtTWUzSGJFTnViNUh4ZTZVdC9Q?=
 =?utf-8?B?aGhNRzE5ZHhNcXQvb2d1UTE0RDlONi9LTFlONTBQMVNXOGVscDVoWlBIUmFJ?=
 =?utf-8?B?N2ZjSnJ2anlEeE5XUzRQZ2VHdk5UYkxZN0F6dUdtQ3Rha3FEOVo3NlJYcEpG?=
 =?utf-8?B?TWo2c21oQ0hPL3ZIc2JxdTVKS2J0OFB4NURlQnA3VTB3VTVxR2RiY1R2OXlZ?=
 =?utf-8?B?VDVVSU1nbXIzOG9lVnR4TUNtUXBIRzdDYmp2ZmNsMFBteU9DQnJzSlh0Vzcr?=
 =?utf-8?B?dXVpdzQzQ25sMjZMb01jNEsveVg1QXBDMVFKMWtWRFlZLy9MVHBGd1RyU0hF?=
 =?utf-8?B?U0JwTzVia0xqeXM4OThtTisvSnkzUjNHOTZ3MzlOeXFTM2tyby9YaW5lYzdU?=
 =?utf-8?B?Ym4rT3lMT3liUTBuWlF3S3QyREpCTXAwQTZ5ZmJMNWVpNGR3YWpGZTJCdVMw?=
 =?utf-8?B?dEFoU0tUWEladHROK2dTOWJEaG9RNW5BQUMybVU0VTRjK1RuR01hQXB3a2x5?=
 =?utf-8?B?OG1xTWM0OGE3aEM5bDMzM0hOTU5xbUw2Q1VwZXh1cTFRSkZMNCt3cGZmR1pT?=
 =?utf-8?B?UzJMSDlMYnhwZDdRTXJQUlN1cEE2ZXVzdE5aTWxycnhCZFYzNkpVd1RyYW1j?=
 =?utf-8?B?cHhnWTZIdmk5bkViS3ZmeDJLMk05NS96d3YrNzBvT1FHcDMzU1VITVQvMUhM?=
 =?utf-8?B?VUlBQzBxYXk5dk5BL0tQYTNOZ1VjT1BCeS81MFB4QjZKdlR4OXF3T2M0NnF0?=
 =?utf-8?B?ZUFiWTUzVG05TGhFT1UyTHUwZlI0YkFOOGJpOSt5eFlSZWU5a0hxSUlPZUFC?=
 =?utf-8?B?Mnd5TTk3RW56ZnNSNjRoS2RKSllQZW84bGdQTm9VRkR0Rmgrd05BdS8rNkFK?=
 =?utf-8?B?THRtRVYxVnErbSsrN3Y2aFZWcmhJYXhSK28xV09uSGZNRFpIWVpFMW5pSTNJ?=
 =?utf-8?Q?WqVhIAc0JXX4Bm8U++V1wboP49qCf9FIMBiFnXgjEL7EZ?=
x-ms-exchange-antispam-messagedata-1: h8nMDKej44THEt5z/Up2j5T2VZoNUQhs9E0=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E85E15AD9F8D6A4C8AF6E7B9AC5AC542@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b0fba47-afe0-48d8-633f-08de5a476287
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 06:19:37.4979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d+E8ICsh0m54LZxSd6ptzjpOr18Xt8ckJUe9AvgJqsKQPTNx63ds26J05dJYJTxdCtrAT1gtDnuixNWGr/W1K9pU9McKXSACzdqrb88C3l0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8413
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6A7C770D21
X-Rspamd-Action: no action

T24gRnJpLCAyMDI2LTAxLTIzIGF0IDEwOjExICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEyLzIzLzIwMjUgNDoyMSBQTSwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiA+IE9uIEx1bmFyTGFrZSB3ZSBhcmUgdXNpbmcgVFJBTlNfUFVTSCBtZWNoYW5pc20gdG8gdHJp
Z2dlciAiRnJhbWUNCj4gPiBDaGFuZ2UiDQo+ID4gZXZlbnQuIFRoaXMgd2F5IHdlIGhhdmUgbW9y
ZSBjb250cm9sIG9uIHdoZW4gUFNSIEhXIGlzIHdva2VuIHVwLg0KPiA+IEkuZS4gbm90DQo+ID4g
ZXZlcnkgZGlzcGxheSByZWdpc3RlciB3cml0ZSBpcyB0cmlnZ2VyaW5nIHNlbmRpbmcgdXBkYXRl
LiBUaGlzDQo+ID4gYWxsb3dzIHVzDQo+ID4gc2V0dGluZyBEU0JfU0tJUF9XQUlUU19FTiBjaGlj
a2VuIGJpdCBhcyB3ZWxsLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAxNSArKysrKysrKysrKy0tLS0NCj4gPiDC
oCAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGlu
ZGV4IGVjMmEzZmIxNzFhYi4uMTlhOTlmODJmNDEzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gQEAgLTE3LDYgKzE3LDcgQEANCj4gPiDC
oCAjaW5jbHVkZSAiaW50ZWxfZHNiLmgiDQo+ID4gwqAgI2luY2x1ZGUgImludGVsX2RzYl9idWZm
ZXIuaCINCj4gPiDCoCAjaW5jbHVkZSAiaW50ZWxfZHNiX3JlZ3MuaCINCj4gPiArI2luY2x1ZGUg
ImludGVsX3Bzci5oIg0KPiA+IMKgICNpbmNsdWRlICJpbnRlbF92YmxhbmsuaCINCj4gPiDCoCAj
aW5jbHVkZSAiaW50ZWxfdnJyLmgiDQo+ID4gwqAgI2luY2x1ZGUgInNrbF93YXRlcm1hcmsuaCIN
Cj4gPiBAQCAtMTY2LDE4ICsxNjcsMjQgQEAgc3RhdGljIGludCBkc2Jfc2NhbmxpbmVfdG9faHco
c3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoMKgICogZGVmaW5p
dGVseSBkbyBub3Qgd2FudCB0byBza2lwIHZibGFuayB3YWl0LiBXZSBhbHNvIGhhdmUNCj4gPiBj
b25jZXJuIHdoYXQgY29tZXMNCj4gPiDCoMKgICogdG8gc2tpcHBpbmcgdmJsYW5rIGV2YXNpb24u
IEkuZS4gYXJtaW5nIHJlZ2lzdGVycyBhcmUgbGF0Y2hlZA0KPiA+IGJlZm9yZSB3ZSBoYXZlDQo+
ID4gwqDCoCAqIG1hbmFnZWQgd3JpdGluZyB0aGVtLiBEdWUgdG8gdGhlc2UgcmVhc29ucyB3ZSBh
cmUgbm90IHNldHRpbmcNCj4gPiAtICogRFNCX1NLSVBfV0FJVFNfRU4uDQo+ID4gKyAqIERTQl9T
S0lQX1dBSVRTX0VOIGV4Y2VwdCB3aGVuIHVzaW5nIFRSQU5TX1BVU0ggbWVjaGFuaXNtIHRvDQo+
ID4gdHJpZ2dlcg0KPiA+ICsgKiAiZnJhbWUgY2hhbmdlIiBldmVudC4NCj4gPiDCoMKgICovDQo+
ID4gwqAgc3RhdGljIHUzMiBkc2JfY2hpY2tlbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPiDCoMKgCQnCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+
ID4gwqAgew0KPiA+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlID0NCj4gPiArCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRj
KTsNCj4gPiArCXUzMiBjaGlja2VuID0gaW50ZWxfcHNyX3VzZV90cmFuc19wdXNoKG5ld19jcnRj
X3N0YXRlKSA/DQo+ID4gKwkJRFNCX1NLSVBfV0FJVFNfRU4gOiAwOw0KPiANCj4gDQo+IEkgaGF2
ZSBhIHF1ZXJ5IHJlZ2FyZGluZyBQYW5lbCBSZXBsYXkuIExldCdzIHNheSBQYW5lbCBSZXBsYXkg
aXMNCj4gZW5hYmxlZC4NCj4gDQo+IGNydGNfc3RhdGUtPmhhc19wc3Igd2lsbCBiZSBzZXQgZm9y
IFBhbmVsIFJlcGxheSBhcyB3ZWxsIHNvIA0KPiBEU0JfU0tJUF9XQUlUU19FTiBiaXQgZ2V0cyBz
ZXQuDQo+IA0KPiBBcyBwZXIgdGhlIGJzcGVjOiAiV2hlbiBzZXQsIHRoaXMgd2lsbCBlbmFibGUg
dGhlIERTQiB0byBqdW1wIGZyb20NCj4gV0FJVCANCj4gZm9yIFZibGFuaywgd2FpdCBmb3Igc2Nh
bmxpbmUgbnVtYmVyLCBpbiByYW5nZSBhbmQgb3V0IG9mIHJhbmdlDQo+IHN0YXRlcyANCj4gdG8g
SURMRSBzdGF0ZSB3aGVuIFBTUiBhbmQgUFNSMiBpcyBlbnRlcmVkLiINCj4gDQo+IFdoZW4gaXQg
c2F5cyAiUFNSIGFuZCBQU1IyIGlzIGVudGVyZWQiLCBkb2VzIHRoaXMgYXBwbHkgdG8gUGFuZWwN
Cj4gUmVwbGF5IA0KPiBhcyB3ZWxsPyBNZWFuaW5nIGluIGNhc2Ugb2YgUGFuZWwgUmVwbGF5IHdp
bGwgdGhlIHdhaXQgYmUgc2tpcHBlZD8NCg0KV2FpdCB3aWxsIGJlIHNraXBwZWQgZm9yIFBSIGFz
IHdlIGJhc2VkIG9uIG15IGV4cGVyaW1lbnRzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+ID4gKw0KPiA+IMKgwqAJaWYg
KHByZV9jb21taXRfaXNfdnJyX2FjdGl2ZShzdGF0ZSwgY3J0YykpDQo+ID4gLQkJcmV0dXJuIERT
Ql9DVFJMX1dBSVRfU0FGRV9XSU5ET1cgfA0KPiA+ICsJCWNoaWNrZW4gfD0gRFNCX0NUUkxfV0FJ
VF9TQUZFX1dJTkRPVyB8DQo+ID4gwqDCoAkJCURTQl9DVFJMX05PX1dBSVRfVkJMQU5LIHwNCj4g
PiDCoMKgCQkJRFNCX0lOU1RfV0FJVF9TQUZFX1dJTkRPVyB8DQo+ID4gwqDCoAkJCURTQl9JTlNU
X05PX1dBSVRfVkJMQU5LOw0KPiA+IC0JZWxzZQ0KPiA+IC0JCXJldHVybiAwOw0KPiA+ICsNCj4g
PiArCXJldHVybiBjaGlja2VuOw0KPiA+IMKgIH0NCj4gPiDCoCANCj4gPiDCoCBzdGF0aWMgYm9v
bCBhc3NlcnRfZHNiX2hhc19yb29tKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCg0K
