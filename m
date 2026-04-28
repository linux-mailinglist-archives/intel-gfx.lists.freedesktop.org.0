Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAIdDUZl8GmoSwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:44:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B64A547F211
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC37E10EA4E;
	Tue, 28 Apr 2026 07:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iBVwbDj7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A6D10EA42;
 Tue, 28 Apr 2026 07:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362242; x=1808898242;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NWtA4woU9vQFh2en8AAnRdAeGWshPy/CB2je9D4Fgng=;
 b=iBVwbDj7gCknAHOChaH58X97lAw/ls3A2n05NmZxP3QCAmWcBA2YMo9B
 5pDgoxRUakct49iyfEljnWcy1nzjrxfCCnjpxnaFY8L1FYLEmCNuosW32
 w9uTFS6hvd3BW0TDTKNTzuIDGKCvJgIzFGkgSjK1gnU1/pY+iNsJjhkDz
 GlUhbhzlavBX9ou6BQ3nmMW2vuIIvMqmBVHM73aa4tMWZ7qYLckV13hzC
 mSNF0pbK6LGivnl0IhijGjy7nxp1PPPasVXSQWl/V7gZiGOfsJwHPvOAp
 qEVJVCemRFFWhoyOj0VuBSBW5ASTt2Zv4npO24DahnxCMSHVwy9pyj+U+ g==;
X-CSE-ConnectionGUID: mInXQUgGRnOfobD3lhlC3A==
X-CSE-MsgGUID: Ol66gZ94RFKmcXV7sNq9bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="89351431"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="89351431"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:44:02 -0700
X-CSE-ConnectionGUID: JnQVQBsmSQG00Dv5JO5/8A==
X-CSE-MsgGUID: 4USKx7vNSTS/iaDUzUubhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="233008148"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:44:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:44:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 00:44:00 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.38)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:44:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gw1Nb0e+reeliPx2fpjG4BihjGVPeP/l8Rax/+UBlFZ8hPLlebHh+rgE/T7UIbL0DHd6nCxH4lNkt+D2yV4yN13XsxPWxOppucMlOu2mEiw7J2QRU+d4LiARVCeYKiGgwCC1blwOIkWHY4m4qMjGWa0VUWx+f+8mMrqm536qy10UaFj1OU+jHCVQYugo1fO9+NLGeM4TDb1PezvqYgJvNyeR7FwjgSjEcbzBszrb1cLaOqBltLqPx9yem1Tb16W2OYthJVNPcuRWyJGoX3B2awkyPYJRf0msRbcnjFnVbVYqLpBz1+cMWh2Vgo9p5kRyE+PboIefQvHLAN9/14USzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AgnRecFsaOAwY9b/rbgbzZHv0fMUGAZ6NQRrpls47Dw=;
 b=WW7z+IvXHExMHGsl6asNXUTowvvcv0LVUkE2RmMt3CDLVa/qNEaoa+RJyBrEyrm5CjIj32QlTXAw3In9mW5//OEDZpBMQg6dq6NmOcTnSUOw9NjV4cWN51VXrm1mUNnmHs2lUX1R18RHAy9IOBxTqvaKuok7WNkGEoBKkoHXcrABgQUSJhbAlPk6iKnegH6sRJ4NdYi4m4nZluhIWm9WgtvLJSh027S+21Q3qpSIkCZb20RLBjOuviBvlnB/sWPihr08xQQal7ZwSssMdxjmj6SbncJKm3y+MnP0DtMRdC/wnO3gYdWTaWy8OxZ8A4KY2VZ0eSnYdQuR8Iiaza8X1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 07:43:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 07:43:58 +0000
Message-ID: <47d1ba92-7ccc-42ee-9840-a0c367dc0e58@intel.com>
Date: Tue, 28 Apr 2026 13:13:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 5/7] drm/dp: Store coasting vtotal in struct
 drm_dp_as_sdp
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
References: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
 <20260424093424.3060805-6-ankit.k.nautiyal@intel.com>
 <ae9Zzw8dEms2NODz@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ae9Zzw8dEms2NODz@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0042.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4618:EE_
X-MS-Office365-Filtering-Correlation-Id: a45a499d-0aa9-4379-681e-08dea4f9e7d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: HLoRKrp9dAfExgLX1cpYsJIDQNnU8fSLvcGl2q0mU6n4iZrR1P4NKxIW1NAGKknK0nyWs5cmPejS2mgUZTh3+7oMUabeC9rSdO8drUECDt25RUnf7Hdee71dEli6Jiq5QRJme22/v1zzWehZw7P83zCkJhiJbpHwBUJe/CoMkx0h/H8pQDOjll/7rhNMYdo+YP0DLcxTxAjz5LyH+sfdwdz5Rc6RaY7j0h85o5tjEIxu0Jf+iuxcfYCwy1eEdV0uJIAQU59W0SMmrwGIdc9FUnvZLbVmXWndP21tUn68reXH7ULjzbREt7gsC4E/c/3NG2Oko1471Ag1d80We81PjquhysLbjLP7TDBokZzzceQ1JZ/uvBGKd/AWF8ktSlJl/Y3EJWWKSZTcUAmGEB6S4H379MfbnTC8G12QjnjF+T6eInmXQ5qXNEbVi8UrFLN7bJTp8QG4IGKM0I4OWniCD+YUP7L+6ZIg4tOhc90Arw+J2a7KeFddPeq658GmDCmQ45pu60ht9VBDlKBDjFC6XorDYcwKaqXw5GlwuzMs7Ve8tSL5s+yFcjRQnGjTXdqX2DgcwXKqp0ZH2unHfVeOcgmUUnKzLjUwS3yWH7VLhGlx7ywRtOwVtHcKQ/7qCm78TeEvor0aCKRkys/7Kgl3kRl09eFUg2ocTelIWIOFrOpzdPMcxM2fhabiRWUPJDDST+SzJbXQy5Y4RbbXhJ4LvBtR7qT4iaf8V8u6JLZ1fOs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWJHbW94TzFwUVpNRTRLREdBWTNkNlVOZnhQRDVhR0o5ZitrQzhZZWNIVFF4?=
 =?utf-8?B?RzFmU0JkVDZlbG1xNDZNQ1hrV1NNVktHNmJkQWlLd2dCZlpSSXZNMzZwejB6?=
 =?utf-8?B?RXZlNDlhbXFobnd5RDY5bitJR1NSTmVXNGU2c1lLdVl0dTVPeGNKUXlZUUpQ?=
 =?utf-8?B?SW12bDV3VFpzV2g2Y3loTWdaWnpUYVBGVE4rTVlGNXZzSzlzUE9JRjgzY0F1?=
 =?utf-8?B?OTJCWUVJL255RTFodS9xMWhqSU9BTlVRWXY0ZXNJQVRta3pwUmpzWWVKeVhk?=
 =?utf-8?B?YW81dSsvRUhuL05Mc3NHUWduUFNlc0FBWmtvUkdDN0ErSmhibnUvdXlTaTVj?=
 =?utf-8?B?RGFrZUNKVlE2VG5icWpYUW95UlFYZExFYWorRHRHZDlEQloyaW9yNW11QzRu?=
 =?utf-8?B?THRnV1NucG16RmFrbDF4Q0VWQnJEYlJxOEhQWE9wL3RoTnlLV0RPRURHVVlk?=
 =?utf-8?B?QXEyNFU2M3BSUDB6SjNFS3dqNnY5ckk0SnR5WmtiMWRjOE1nS0ZZWFMzS3Jn?=
 =?utf-8?B?bEpwMW5hRDFRTDVZTElNUTZFRFA5ZDZraUtkS1JJRm1PV2s2WkFQdnFrQW9w?=
 =?utf-8?B?T0p0YkIxcGZLQmoyWTFMSFdxcVkzMHNWVDFGWHpqT2IrVzdpcGpHZ3JpVzcr?=
 =?utf-8?B?UE9Oa3poRWlVdExtWjRhOFhhUGErUmlUaDlqU3hFZTNoQm16SVFZMVczSFFI?=
 =?utf-8?B?TkhTWHFndU5zeXRIZEJ5SHdoWE1LYmVDMnpYQWoraHZOdFh4Qy9uSHRlVmhC?=
 =?utf-8?B?Nmw2clNhakJ4UzNBS1BNaUpvcGJUQlpFRzUyUTdCV0l5R2Jlc0hwQi9PWXVM?=
 =?utf-8?B?RmRRaEdXZ003eGsxaFJlYTNkSTh5RFhvS09tZzZ0bno0M2c0UmNHSVY0S0I3?=
 =?utf-8?B?S25ZZGhEUGg0WFR1VzFON1pWYU5BNEt0Z2huUFM0NXpJSDI4bUJRZGdFeXhu?=
 =?utf-8?B?UDEyM0ZhaTVaQTY1S2JVTGM3bWxoYlFwUHlFaU54RmxhaCtwR0VrSXladmQ1?=
 =?utf-8?B?TzloRUZxd0FVUVpwOXNGOVFwd2VGVzNLemxDK2djUUt4cXBSdXJmbFUvcGNB?=
 =?utf-8?B?WWQxOWtISXpaSFlCKzNLUGtKQ0hXUXA0V1ZTR0YzUHQyUjJBNTUxZHl5RjFj?=
 =?utf-8?B?ZEJCWjBBaHZHbUxSbjB3UlJJQWVoR2JLYkxUUFZLRnVoQTlkVEJBS1htMFJW?=
 =?utf-8?B?bm9YOVp1NW1jVWFPOERzbWdoS0tSWFExUHhhZVM1YWFDUm0wZm91SWNENWY5?=
 =?utf-8?B?T09CQWVNVkUwcXMzWTlxcTgrRmJ0WDRNNkdZbm9WeDJraC9zbk9aT3pZVWNR?=
 =?utf-8?B?QjIxUEVrcFlEL1NyQzl0WVJUOWlhQWZvSlIzTndhVVplaHIvUzVsM2o3aElk?=
 =?utf-8?B?dG11MkEzWGdTK1ZpRDkvTU01OStNLzNJME1QdmI4S3ZOQkgvdGxTS2FLWVZY?=
 =?utf-8?B?dHo4TlUxZ1l2dkcrbU1iSzhId2ZYVkU2U29Ya24vQ3BDT3dKTzNUcWRFY3VX?=
 =?utf-8?B?WXlZQlFQdUw0dmNGdXRMK0V1Y0JwOVlnTGh0RUhoVENIaTRyTk9ISmIvRWI3?=
 =?utf-8?B?V0pUcWpWR1pzck1qT2lsRHFOckFEdnFXeDBseUdFRmNvVmRkNm1tdlBueFVq?=
 =?utf-8?B?UTJZQmY0ZkQ3YVE4emdiV1grTnNxcUNjR053ZksvbnFMblFCUm80Ry9sN2RP?=
 =?utf-8?B?bUI2bEZTWFNSdEhlNHVOZHdlU3VPaVhkMHpKanNWWnkyWHBrcWVtYnltME9z?=
 =?utf-8?B?eE5VWHc4WUo5ZDd1Sk1DajA4T1ZaTVFaWG4yOU4yK1phM2NSSjBWSE5NbGNU?=
 =?utf-8?B?K0paOE9VbHJ0OG4rT3lzTHpIRCtwaXZBUnlxVmFGekwvanFDUVZNVmZqTHlp?=
 =?utf-8?B?QWlEQ2psTnB0N2pLR3p6ODNuaFJYV3Y0VlZreVNVMW9VYVdoYzZwcTVzdHVB?=
 =?utf-8?B?eFRXTE8xNGdtei9oazhBYlNGelZwaWl4Q3djemhkcFJyV2h5TC9PU085emJR?=
 =?utf-8?B?clRCdjZEZ1BicGlJRnBIS2srSWJEa05BdWs4QVBvM2VJbk8xa256MGJua0l1?=
 =?utf-8?B?WWZ1eVdGMWpGNDk2Wnpub3NleEVnMG1OSml2eFBxVURLQmNac1VBRzFBWCsw?=
 =?utf-8?B?bGQ3dHVpN1F1K1VxS1BDaXBIVkNXczhqb2NJQmt2VTNXSWl3Uml5M3JMcFVD?=
 =?utf-8?B?ZjhubVFzQzZGK2hHQlNRcXdZekdjTGRvemNZd2Nma01iWlBJRFAxYzhGY2Rt?=
 =?utf-8?B?NFFKNFc5bWx6OVI0eU5LWUxxS1lXMW0ySlY0b3c4UCtlU3B6ZGlGdjF1N0dC?=
 =?utf-8?B?WTdkL21wTndYTjB6MXNlbEVPNTR1NEZIbG1qNzV5aWZ3U3ptcHZtVGpiOGRJ?=
 =?utf-8?Q?L4vf7rgmbuflED/Y=3D?=
X-Exchange-RoutingPolicyChecked: mJXBKg/vmMzpAvSOAHibw0gfETf6NbNe/bnldeIE5XtiX9Xwv75uIozkfef3ttFvf7+WSoY6eS+4yUOBnMj9SC1hmEMN4ONBfZg5Jt8sSuAvdgktCh7qjl0KdnCChR84RrT+4d0dNJgwQAZQk+epMHEGM+14hDiYBR8+9llrpp/H68sFLqP6tyrBDhssWWvbBAkU14811mx3vS7V9OUNv+9ccVA9mEM5K2J4pa/lcgEFhF8es3y7tOc333qYW08DY7UHcRXifXgclqLR/5yJcE8JzBqRhOONQzR1VZ9NKUiccothEsF5Ny6GMgD6owDVfmahiuKhfkI/IX2npfJCcg==
X-MS-Exchange-CrossTenant-Network-Message-Id: a45a499d-0aa9-4379-681e-08dea4f9e7d2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 07:43:58.0243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gB6u6I2pTvGAq2QnBNC/OYVeHse2p8wftPEhfLl6vtQ0qtYDDPexF3tcB+OgbvP85OHci4PJ2vulXVLYojpS2OWcxosz+YT6ZbUz+rfqQ0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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
X-Rspamd-Queue-Id: B64A547F211
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 4/27/2026 6:12 PM, Ville Syrjälä wrote:
> On Fri, Apr 24, 2026 at 03:04:22PM +0530, Ankit Nautiyal wrote:
>> Add new field in struct drm_dp_as_sdp to store coasting vtotal.
>> This is used by the sinks that support Panel Replay and Asynchronous
>> timing during PR Active to derive refresh rate, when AS SDP transmission
>> is stopped by the source.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/display/drm_dp_helper.c | 1 +
>>   include/drm/display/drm_dp_helper.h     | 1 +
>>   2 files changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
>> index a697cc227e28..e29958f8b0b6 100644
>> --- a/drivers/gpu/drm/display/drm_dp_helper.c
>> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
>> @@ -3512,6 +3512,7 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>>   	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
>>   	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
>>   	drm_printf(p, "    operation_mode: %d\n", as_sdp->mode);
>> +	drm_printf(p, "    coasting vtotal: %d\n", as_sdp->coasting_vtotal);
> For some reason the existing fields are using '_', this one ' '.
> Looks like VSC uses ' ' as well. So the existing stuff in
> drm_dp_as_sdp_log() should be fixed to conform to the common
> style, in a separate patch.

Sure I will fix the existing things to be consistent with rest of the thing.


Thanks,

Ankit

>
> Otherwise this looks fine
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   }
>>   EXPORT_SYMBOL(drm_dp_as_sdp_log);
>>   
>> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
>> index 1d0acd58f486..8c2d77a032f0 100644
>> --- a/include/drm/display/drm_dp_helper.h
>> +++ b/include/drm/display/drm_dp_helper.h
>> @@ -126,6 +126,7 @@ struct drm_dp_as_sdp {
>>   	int duration_decr_ms;
>>   	bool target_rr_divider;
>>   	enum operation_mode mode;
>> +	int coasting_vtotal;
>>   };
>>   
>>   void drm_dp_as_sdp_log(struct drm_printer *p,
>> -- 
>> 2.45.2
