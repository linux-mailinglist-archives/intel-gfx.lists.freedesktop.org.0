Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9B6C33ED9
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50ABC10E6AF;
	Wed,  5 Nov 2025 04:28:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dF/rZC95";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E196910E6AE;
 Wed,  5 Nov 2025 04:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762316926; x=1793852926;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K97MJ6TsnxZt8WdqTro0TNYOMuJCIUy43qrmetxbHBw=;
 b=dF/rZC95PWkkaez20j9ly1surDZic+QQROaFnV0oi3GiGqQd16keZxFP
 eLxAa6H4wLHVv49m+e3KZITFysC23du9/CGaoV++7zhhDIAgul4PGjjK9
 aQjn/AYdCsV+QrxnPFuBnYZrX9+7noIRx8NKv9TYd7MpXU1JcJWJPY4bZ
 5LTdsWWNNlKUK+IliZ1uCmCSmkCl74PbGMrYF4FvbAw3KjeNH2Pm5y3rB
 wOFN3ef0kZxSAO6p0BqetrSVRb3HI6bKcC7o/cV5eV1Ir8KdjqeuW+KOd
 tbaf/U7rM6942pyjAfSk9IQaz4T1rUELhYf0P2cGFQ4QLKYi8PYqTaa5z w==;
X-CSE-ConnectionGUID: S4FlxVAzSeGEBQk/phdR3Q==
X-CSE-MsgGUID: 2HVyyg2/QAeoU5qIvjCWCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="68282549"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208,217";a="68282549"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:28:45 -0800
X-CSE-ConnectionGUID: ObnZVrjiQY6wjgLbyUxemg==
X-CSE-MsgGUID: iZHp/AsZRguXm4uAtrPmdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; 
 d="scan'208,217";a="187033659"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:28:45 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:28:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:28:44 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.47) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:28:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=In0eD+/aVgE1w4YjSnc7dJ8Oh2GOkQVXmb7XrIjHHUVClJLVXKCPilLBOY+33iziQKeqp36EgKgQYKQfY9qu2ff9kbNoFGQ4vfxeV8ErKUElMOko05pDlfa5FNMm3EpVivH7UdPnIxVn31zywoH3s7XVxO2ma71axiIB66f02pidTKqTfrm3lM5eZHih1ozIk6q7hwMJLxJC2NxNQTdd2RfWXeTIqRVNYcVDjUBlD63gxN040HD6ut7278NL5Z5RmiME5T65thMmmQOApDb/5/V9aRYoQqXMDniJFQwQyUMMzG7wtTxfdLc7ma4psoeakq1fnl2j4SJD38glYUYygA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rNds86jwXnpmponxkzs4kUR06rdBTFcRFbPoCXjTNg=;
 b=RRaMRTac/FJdPnfDJ9weO+ruRRtwP2mTLF2FnkU4s3Pv04NFMhfoCsEqx9QMylKiGGW23DhBRZ0FUunAQFkZukq9nF+o/8pqJQM01kwWiMAaeXWtaEMIrj9nOi9AqWVKemh0aJLxY8pU8oH7Ej+M6DL1TPvDny2HS6jqsiti1kZMiuetQB4bx0yUZNpP9eBaY6CyOHmpQrH1J5+UUQ+x5UEutjWpE7BRsMbfqxuNd2CQLrohi9aeml7r9LDwFFjGUUMWNNSnKTOoFbAmx66PpMmHptg+A/fStVM3pVdlFis1j3soNDt2WVd2kJPwtEWuzfpLhj3EBiMBF1ILOUUWfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9249.namprd11.prod.outlook.com (2603:10b6:208:55f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 04:28:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:28:42 +0000
Message-ID: <c1e5f6d0-3176-4103-8a7a-0a78a9e74718@intel.com>
Date: Wed, 5 Nov 2025 09:58:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 08/22] drm/i915/display: Add DC Balance flip counter in
 crtc
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9249:EE_
X-MS-Office365-Filtering-Correlation-Id: b1c4bce4-d94b-481b-80b2-08de1c23cd02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmIxY3h1R21Ca0FHZHFGeEx5dktZQ2tyQjI4dWJzeGpxOEJCbThJaDRlK3Vo?=
 =?utf-8?B?U05jYjcvZGlvc0lhSHRONG9mMFhnWHdqMFovQm5IM1ZickFvcUR1T1A4eXZP?=
 =?utf-8?B?VzZ5aTdrcks0Mi9zY0dZSTFEMUtsWThIcC9VQlhpTC8xa1BnenNBSXlsS2dX?=
 =?utf-8?B?TWJPLzBCa3BZVFREY0o1eHYrOFE4WG9GVFc0NWhSSU5TWXpmcUF3YXkxOWFI?=
 =?utf-8?B?Wk1wSFN0UnBkd2FEQWhNMG5yNjRjU29PSHlWU3BrS3JiTjhEcUN6Z2RlNnZH?=
 =?utf-8?B?TEVZQXZvZjU0Q1FxUkpySDdQT0dSYXQ0U1pyUW5BL1htdC8rc2dPZjRIa3Z5?=
 =?utf-8?B?U3pRUG9OeWNEWUZaY2hsTWc1OTF4dWlCRW02cU1DZm1NYkg4Q2xGTXAxZ3B3?=
 =?utf-8?B?TDdFaEJOQjFtTkk5a3Awc1pQTmtmNUhxbjgxMlZ3RkdmTEVXVmxKcmpWSXhW?=
 =?utf-8?B?ckg4TFVjbFFCN0hYVE5kNHVHQVdiNDVDWUhpTXdRSWNtRzNzRUJpakttMWwv?=
 =?utf-8?B?U3puckQrcGlnOUhSa3hxRTZjTVNUQ2h0YS9KR0NmNXlVamg2Y2Y3OXJJWFU3?=
 =?utf-8?B?NnB4RXpSWGxSdVUyS3cyU0J4eE1Xcis1NmJqY0NKSkk2S21wNEZsZWJ2bFE3?=
 =?utf-8?B?UnV3Q2UzVHpRbFVTUThTUFB5Q1J4bWVCcFFXU2IzQ3F5RkRnczk2bG5IRTlH?=
 =?utf-8?B?dXk4Q2duSms3QjdxM0MxaDUvcGRXeFNWc2NqZ0llSEhzV1VkRThHalpLbUto?=
 =?utf-8?B?TXpYeUJheXhTbUlPeTlPRGR5RTBEZlJjeUVpZTdtTjhhRlFzTnpwanJHVlla?=
 =?utf-8?B?MFBWN1BSTU0zclVNblB5MGJFYVVyMzBISW5BYjhlTFFzRStxaURwVXJYR3BJ?=
 =?utf-8?B?TXAwZXdDN2o2Z0FPbEROenZEK2NkZGl6WDVxeU1KaDdkV0xsVmN0bWhzdnpB?=
 =?utf-8?B?N21PeG5JUndlQUk1N0g4TUVmN3I2MDVIRWVBNXl2dVJKNi9QZFBGVE1IWVVP?=
 =?utf-8?B?R1M1MHM3ZmU0L1l6a1BKZVhwcEgrVUlRS0RQeFR2c0lGOUtydDRMR1k1am5R?=
 =?utf-8?B?T1NXM2FwWDRxcDZsZWxtd0tqWkpJOU9HRzMxUzJiamI5SCs2c3ZMRHZnMW9l?=
 =?utf-8?B?cXlhTkNRbmxNSGlYWHY3aXU0UkZpdEw5UmtQT2F4UjhWOVY3MHU3aW1FN1Jt?=
 =?utf-8?B?UVBHakoyV2hSVFJSSzdWcW5sclF0MHdCeXVRQ1FnRExXbk14SThMNEg0dWk2?=
 =?utf-8?B?NVFycC90RHB4b3JRdUlFS3BuOURLakdDTVo0NTJqanI5TWNLWkJkdi9Kbmcr?=
 =?utf-8?B?RE1kN0l4eXhzcFhpMjNPQVMrclVvKzBMRTJjdFcvZEloTXlxZG44emxvR2VD?=
 =?utf-8?B?QWYwaEo0a1dVeUg5N0Q4a2xYMU5BNlY0TGFyYlMxTDVhK3dUSXp4ekVNM2M3?=
 =?utf-8?B?OVBGd0lDZFlWbGpTVVcwQ25heXVQbWtCR1dzN01OQzF6TDB6VWxKOHNvWHlS?=
 =?utf-8?B?aURGYy9lNDU4aFFJUGlhdldtY21pdVNNRlVXN0ZDVU9HaGNhTGx1Sk1aYVp5?=
 =?utf-8?B?aUdJVXAvL3hncmZWczJvQmM1c1Y0YkE2eG5FcVhQMFZQN1dlVTh2bUxxNkNl?=
 =?utf-8?B?MUdSWU5XUFpvZnRnQTNQU1BLSDd5UzkrOWhnbFQrZnFMaklVb3NTbUNpYXFS?=
 =?utf-8?B?Q09IQ2hxaERhNCtqR3pyUnBURkFqaFZUK0E4WktXK0M3VWlzaWtVR2dWb0l6?=
 =?utf-8?B?SGMwNm0wb1hXd1hWZ0xNdVZKOHQxczBVN0xDOXFBVkxoWTBqcnZkWjlhN0RI?=
 =?utf-8?B?elJsWkdZSnFaOTc3ZG1YOUpidUJNZzRCOEI0Mm42SDluMlBMeUsvck1iTnor?=
 =?utf-8?B?bGlyRU8vdTM2RGRXSnNuUEFtckZmNVpleTlNL1FjcERObEs4VVhvU0VrZ0k4?=
 =?utf-8?Q?iGs7HVocl5pELRPpNuIUPjZLHpPW6o9l?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzlUSmYvb1RHclZGdFRRZ2E0WDdIWE0zN1lSNjM1Z2k5dW9WSm4rVTdhT2pK?=
 =?utf-8?B?MUtmTmJWeDV5cWovWmRqanEyZTdCSHA2b3R0VDZpVUNEZDkvcXQ5RDQ4T3Jo?=
 =?utf-8?B?Z0hQYkVzTmpzQzZVTjl5UXhNNlNMSzNMa1hJYlFsYUFEUjFVQ3dDL0VBd1hU?=
 =?utf-8?B?QTJoK1ovMUN5eGV2K2xRNHdybTV2bjhwZHlCeStsRlBxYTgzRE4xR0J2bE5z?=
 =?utf-8?B?UXNWSHhydUszVGdFNHRyK3JpM0k5V3BpYTlHMlNaTmZFTk5iOEowbzk4bWpm?=
 =?utf-8?B?MENzN0wyY0VpY0QybGRpeUxSajFjTUQ5YnBFRjlHa0pTWTg3U0oxaXQ3dnh2?=
 =?utf-8?B?SG1kalkvQXVTZENCZU5hVE5aYk9zbytpWUx6RFhKMmVVMXE5UFBSc3hwVm9a?=
 =?utf-8?B?T2xBelIyNlhsV1lwZ05ReVprSjhDYVdKZ3RhNWE5NStXU213dGFWV1VyYy90?=
 =?utf-8?B?aFJON0tTaUY4ZnpVSHFzc1k5bGZpa1BKQmRqWnU4U1FJdW51UHhzWXNIMW9G?=
 =?utf-8?B?M05xU29VdzVON3JSZFJWbUt5UnJ0WVBNYXpQNHlBOUxUZTdPNUJ3SzdtZ2lw?=
 =?utf-8?B?b0dXNlVmSXlxQ29PZ3A1c3hjNU9TY09VUnZ0cXVidXR2cDBzejJ0V1RjSnJZ?=
 =?utf-8?B?Qzk2MmZTYlR6V2Q5VWJkUGcvMFlPNVlOd3I4aEVyM2hzK25OdmNKMHFBNHYw?=
 =?utf-8?B?a1U4UytUY0lkUmRGTG9VaWRVdE9YcWlQUzErSmpyNG50eHJoRWhHTVFPSHQ4?=
 =?utf-8?B?UVdMbTE5SkZPblU0WXM5SUYvUE5Sd0JWckg5UGUxR0pCWTJGZC9RS1RrVmpQ?=
 =?utf-8?B?d1FQY3d0WWdHRmNsRmdCY2NJTUpPZ0JXbUlpYmtBSVB0U1dUZ1dWdEpXZXN5?=
 =?utf-8?B?dlllZ1pmWE9xcWMxSTU2WTlEZ0NiNW13K25iVUFnRjdwNkQ5ZUowZTRBS1Nl?=
 =?utf-8?B?YTgza05DT3NhcTZFM0hkMk9HNHBrYzZvMFpiTmt1OUpPRU55NkE4UG1nR2VK?=
 =?utf-8?B?WXZUYU41QVgvdk9RemhpWTUwb0tMMnhFbDJyTlVoWGVwdURqanVZMlMwQW8x?=
 =?utf-8?B?YVhmcWRrLzNpdzNYeEYwQ2FGU2MxeUpHTzJTc3BlNnlKbUpwejdHMnhpR2lm?=
 =?utf-8?B?R3VsRXJMT09rR3RDMWF6empDMW5HS09vZ0dtMXlyeXVncDZ3aFpBazYxSUZy?=
 =?utf-8?B?azlsVU5pUjVwYk1EaTJjR0dsbXQ5d202QVFoOHRLU2loTWU3dkZ1Z0EzK3hY?=
 =?utf-8?B?TWlLMmRSakFmenFSVXlIdXZaYXpDL2lIRXM2NklwZEZQSDdHUWJYSldJVWRT?=
 =?utf-8?B?M1RlRGhOUFVzRnVNcENsTVBoVk1FTmVLdFBEcnF1V053dXNTTm9hM3ZTb2JJ?=
 =?utf-8?B?c2lVdWdzQ0RqZDJUWGJSNmNrZ0grSlpkdXU1TXF3RjNpTmxCTWxGQng3eFVr?=
 =?utf-8?B?OVRXNE9hZ0FRTnlLWDhMbEl6UnJxM205OFZ4TlBOYkREcityNWpkS3FkblRk?=
 =?utf-8?B?b1ZWNm1DS0lCcklPaWd2a0lRenFWQW9kTTVQOUJCMGc3dHFoZmVXalA5RmNj?=
 =?utf-8?B?VmxTRWZ3TC9aRE82SXNlVnJaRVo5QXowU0tlQTZPRURIOXllbDllazQrZHZU?=
 =?utf-8?B?TmRnY0RmaFFIck5waXR0NWRrMDNzNzVSUHZOdFJ5dXhDRktEUEpYaXMyajhO?=
 =?utf-8?B?SGc0OFFTenRtN0pKa2NiTHpJYStDRnFKbitvQ0RDZ0wwSTc0VkU1OFh5YStp?=
 =?utf-8?B?NU1nendwMVFnUmVMejJMNUJaQlYvK0xNYThwSlBKY3FsYUdKSXpEVUpCVWxT?=
 =?utf-8?B?OEhTTjFKK0xFRWNBb3pPQnBhTnBSK0o2Ykxnc01DdW5jVUpqQ0hwZ2M1NjJC?=
 =?utf-8?B?M3hwdTE4STZ1ajgySjFGZ04rYkt5bXJwRVZ4Ung5aWtjVjFTUmVmMHVObHU4?=
 =?utf-8?B?cVl1UkhYeVdTMkR5VHAyMFg5TEtZMTNROW9CQS9vSzFnZlVRczNCcmdoQm9n?=
 =?utf-8?B?ZHlwazlvZDRaM3lMTm1EMG5TbVNxZUNFYWkxL0kzSmlIUmloYlR5L0FOeUdy?=
 =?utf-8?B?UmxHUFpvUDdWN3RPTTlKT0hYN0RlZW5ZUk5aNHRMZkFUbk1hTndnUWw3SXRE?=
 =?utf-8?B?dVB6Ti9STC8yZ01TRi9ZQzU0VW4yQjYwUnQ4YUo1bVFHY2Y5YU5IRjdJUDlR?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c4bce4-d94b-481b-80b2-08de1c23cd02
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:28:42.6359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8lOsMBwmAu9Pv3Ua6I3/4308cdHjS4bc13R3WoKDMR9MqXSz7JF4528Y6NAd+kpjRlENyGE0nEw1VQeJ9VvHr78Edb/ygwBsSs8deNPUmHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9249
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

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/3/2025 10:59 AM, Mitul Golani
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20251103053002.3002695-9-mitulkumar.ajitkumar.golani@intel.com">
      <pre wrap="" class="moz-quote-pre">Track dc balance flip count with params per crtc.

Signed-off-by: Mitul Golani <a class="moz-txt-link-rfc2396E" href="mailto:mitulkumar.ajitkumar.golani@intel.com">&lt;mitulkumar.ajitkumar.golani@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 33fb70716110..09eda2c409d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1502,6 +1502,10 @@ struct intel_crtc {
 		struct intel_link_m_n m_n, m2_n2;
 	} drrs;
 
+	struct {
+		u64 flip_count;
+	} dc_balance;
+</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Why u64? The register PIPEDMC_DCB_FLIP_COUNT is 32 bit.<br>
      This will create an issue when we want to roll over to 0 after
      UINT32_MAX.</p>
    <p><br>
      Also wondering if we should just use dc_balance_flip_count,
      instead of a struct.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:20251103053002.3002695-9-mitulkumar.ajitkumar.golani@intel.com">
      <pre wrap="" class="moz-quote-pre">
 	int scanline_offset;
 
 	struct {
</pre>
    </blockquote>
  </body>
</html>
