Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0A8BF22EE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 17:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4623110E475;
	Mon, 20 Oct 2025 15:45:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAAzLcpm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52B910E474;
 Mon, 20 Oct 2025 15:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760975111; x=1792511111;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=+iHMn14f3xJ8wMa/dYVPAu+AWyCPPP2loLBClLIEpWE=;
 b=oAAzLcpmkVror4f7ERJWoo6szaMY22wlixRRVK9Ww0v6c7OTcpZxW4Z1
 pi19IvnZ/kgL42VFDHAAR0Pp5D+LOm8A5iV/jia9ZPpHkdtFyMbn+bCm+
 5/kC/kPferTHG5u+wTRFJW84720UIyKON5J2IaAk1c2aG4beO0oUFmu7J
 4uemgYU2af4dCO8cr0BwUwN2T+sBw76V8ffO2OCqFbgODs6IkSDApCShe
 sF9804pb1JTtoDTTwRvbg/dh8rmHR6kxlt6Cqtogpk/x/e2gko2i1O5DY
 yPTgWlbhXGlxUZj6Jylit2W1qd01+64C4mmIM8ID5pPBD+gsmSisD+uXO A==;
X-CSE-ConnectionGUID: Y3JrJswfTdaV4fMB7Pnj4w==
X-CSE-MsgGUID: x5ZJOAHPT9yZyxLD1n0BqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62985823"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="62985823"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 08:45:10 -0700
X-CSE-ConnectionGUID: JaEPgq60TJunZ8JLsXv85w==
X-CSE-MsgGUID: fd3/LvwtSMa8ZbFCHMgDqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="213972928"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 08:45:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 08:45:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 08:45:10 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 08:45:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eE5+uxW3ozpKs7zsBFEOcylbyZ+Oumejz+WIpXd9hW0fZn5L+BlysQFNMyNmVQnsMGNfQjoPVOwqsucy4EN0z6Hx3mGQbTDH8EtUDm5h6ke4Yx7Rv40WL2mGpYz1X4H0krKhAw+SC+CHB4n+/EzSAyPvQhKkVZT/zVzd4nY9rmhfGhUdpbgr0p45pKURpQFbDtZUImqXhghRAskYq9qu5q/yWEX/kZSanvcOi/jeDcTZCDYF27pP7eYfa+u5TrubaSJPsP4IGuap2mIxoRlYY0h0y3cE29kuhw/wnyomq8GRBPvC/rYv0i3Ec45siCe2uaPluWdgXKZbumk3MHf3dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zNbLlzO/FcvFjovBIM7Jz/LCn54hI/80LVyV48m1360=;
 b=fAxJ3nnoYxbxiKbQuQjic1oBFPwT0KJZZMoYP1ku1pn02kq9yBwinJNEd16ugxCf6+46fr1itj4rHmjFHHjeDl12Q8btBDc0bhNz2rWAOdvXCO8XLnXPbYmZwGBype+O9eHxHceZcFNd60A/xXqbVMSveLs4nfKhx/jcFnyEgMtRSwsqFw/lRpl62nLd/yWwFtllmm4/nYcwUiyRmS4HNVGuYf86Qx5vmpC/U6iHl/wvYTwhIHRB07FVtWsZXjswQK6C9Eq6GWNMtLq3hkxILJjF+gltFhvg+GKtAAufSaDhXU3Z17GDsDuMn8rS4JnENVOqURb02EKO0BnKnYWKxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6414.namprd11.prod.outlook.com (2603:10b6:930:36::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.14; Mon, 20 Oct
 2025 15:45:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.015; Mon, 20 Oct 2025
 15:45:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()
Date: Mon, 20 Oct 2025 18:44:38 +0300
Message-ID: <20251020154438.416761-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB9PR02CA0024.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6414:EE_
X-MS-Office365-Filtering-Correlation-Id: cf47af14-5342-4f4a-b19f-08de0fefa3b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekZUcXBhZDkwRDE2WDRSbWpDaFpGTXlxRUIzMUEvRzJtVTZKMmU2a2pZdlM5?=
 =?utf-8?B?cm56SVRiY2VkdEtleGlKK3lvUTM1Z3FFdXZucWlsOXZScUR5a211dmZGdmhP?=
 =?utf-8?B?dDNwTElDanpMWVpFMDNuVWx2RG5nVU1NcXpicDV0M2hzUnFMb1RpaVBvdXlX?=
 =?utf-8?B?eHdHU05kSGlhRnhPalRHSHJvTlNsN1U3R1FnYUZnbzg4dC9aRmFPbm9IMUND?=
 =?utf-8?B?bTZhSDk5OFZKeUU0amdwdUNSM244TXlkWXp5YzlXcmxXNmttZVR1MmpHRktw?=
 =?utf-8?B?N3NpaTFXcXhwK05NUEx3ZXJlQnUwNlJDSGFCc29ZS1lwK3lGUFN2UTVHZGg5?=
 =?utf-8?B?YTc5TEl3aUNoam55Q2tvVGR1UWJmWm5lREN5S29nU0VxR0xLZ0VlMzJTUFBJ?=
 =?utf-8?B?TzlvY2JlSzJMVkxuRmFzR0Z5ZXFYKzQ5bEZZUFIyM1BMdDRNdkYxbjNvY0tu?=
 =?utf-8?B?cG02Zm9EVjYwUFpjT3NaRGZwU00vSmx6bldQaFFoeUk4Nlp4REpNMG5Nejkw?=
 =?utf-8?B?THBmMHh6c1k4aXFTeDJqMVZabHloWHc2bDdoZ0dUYVNzekwzYURxZk43VlAr?=
 =?utf-8?B?YXhsUlo0Tk5NMzJHcGpDRjRlemRKN0lCT2YxN0pnZ0RpcDhvcmNvbFE4Rmwy?=
 =?utf-8?B?anRzN3YxTmpjTFhJcXdMQUJhNFRnMzJIRlp5eWRhbWtZK1BrSy9RcG5SdGc2?=
 =?utf-8?B?LzQ4VkhMbUQ3ck5kT1BycklKM0NRUkRUYlNENUMvWVZaNEJSZDN0S0Z4b01x?=
 =?utf-8?B?YzB6dTE5R0U2V2VsbDdaT2dtVnhSSWdNWm83SnJmQzZRTkNFZmc2UmMvUU04?=
 =?utf-8?B?Q1ZEM1RWbXhGY2xkQXMvVEVkUXNSRDNoZ1FQRFNKUk82aUYzdXp3TE9YQUh2?=
 =?utf-8?B?WW5ESXJtWkIwZGNpOS9JU1NIRkkyNjdqdGR3aXAvaUowaGZ3MjgrRjkrTjVu?=
 =?utf-8?B?K3NvWFp4T1JVS1c3c3Zna3l0ZkdXbmxJVU9aYmZHOXpiNGhQK1NnZmlsWDN1?=
 =?utf-8?B?dkI3VWtKaStTL1BORC9TOHpzK3NVUlcrSzFhTkIxSEZhM0hrdCtWbkEycmJK?=
 =?utf-8?B?ZHhxU1dCVUlQUDJRUjlsdDZRT0svck9TRzdsUVJ4SVVsUElrOXpnVVJrNmRK?=
 =?utf-8?B?NnA4Ulo1ZzNIUzl3WWV5L2J2NWNodStnN01NbkswUjg3cHRsbVQ2eUIvdjdu?=
 =?utf-8?B?UnpzMXJta2d0cEYzQW9NVkJSd2xkaFIzS0dVbFM1UWtVdU9YRTRVdGdQUDJw?=
 =?utf-8?B?OHQrTTlENVFnVGlhWkhyUit4aWlVbEhvdU5TNDExWXpBa0U3Ri9pcmN6cWND?=
 =?utf-8?B?Nit5VVl0OEZ4eHlLRmNjcjZGNmRSN3VRR0NBM1hBSUtaTmEwN3VBdkRNcDRO?=
 =?utf-8?B?cDBPNjhBTmIrbEQ1UmFNdFBDbkt2bS85bHpvNmlFUTFrdXVFbjB5Tk5lWnN0?=
 =?utf-8?B?MDZIOE9tK1IzdEttSWpBOUNHbW1FTzJBRkE1VlVNQzhNN2ppSERhaUZyblQr?=
 =?utf-8?B?Nlk2d1RtRit3Qm9DVW5xTHN5VzZtNk42ZHBabGpGUmVwR1lMQjA5cFNJajZw?=
 =?utf-8?B?VXlzT2V2cG02Y2Y1Z20xUExtMkFmdXFWeWJBREtmUVVFVUxDdVY0OVhEc2Fz?=
 =?utf-8?B?TnJteU9QaGtLUU0wYS9rYXpmQ0RQWFh3WE16UGpieXN3ZHVPdVRHYWpCamY2?=
 =?utf-8?B?VjZnZnVJWmFwUDYzRC94Z3hMaStUckFoYnNZbXZ3V0pDbEpWaEU2VFB0YUtG?=
 =?utf-8?B?Rnk5ckxTV0NZYkJrRjJGZkJSUTdtWitaTWhvbmpEQWh3VThkTTVZL0hhZ2s2?=
 =?utf-8?B?cVRTd3JBaFZMdUV0ZGVpTG03Q2JHSHJsNng4bmdCUzhUMjdFTVFKeCtGM1Yv?=
 =?utf-8?B?SEUzNHJDR2RKL0VjREN5K0MvSkJMTjIrWEljYzhoanJ6aXoxNUZIeXdOUmdt?=
 =?utf-8?Q?AjoVioF9wmyyFG162AE110r3zVYHhiYa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0JGNitIQXB1QmNMUVVFaVhaQmdaMVdWd01NMTZnR1Exa2dZTHVXSUVhNHFa?=
 =?utf-8?B?TXhJdVRnS2VFN1JJTjZEZHM1RnNiL1V2VTEyTGEwTnkzb2FoZ2grZldOdENU?=
 =?utf-8?B?SkprVEFNMVpiZ2pPWCtJcnJ3QUN0czBtdXJuVVVWdlZkdkY4WVNIOGF3dTE3?=
 =?utf-8?B?dEt1Z1JBT1NnT2kxSG1KTFJNaGNFem1uSmxZWXdRZlhtTm1TeEY2VDJLb2Jz?=
 =?utf-8?B?a2tGMXlEQkxDZUNYNDV5eHROUVY0V1ZoSkV0U2JzMnZ2dUEwU0REWEJZYzdG?=
 =?utf-8?B?cURRbkhTakVablBUY0dDSVVxUDJGUi8rYksyYlVxMFBicW1iWGpmM1pXaHVL?=
 =?utf-8?B?d2FmaEtLemFSUFd3ZitONjNpdHlOMlJTUXIrNm9wZ2liUnZIQ25EZTM4cmha?=
 =?utf-8?B?MzJaL3FUNnNzZmZKMHc5MXFaSHF6bW1VVlQwaW1USytsNnM4OFNGb3FlOHVF?=
 =?utf-8?B?dDVKaDhOS3Z6WjRRQ0c5K1RzYzFkbnpxNk5wTURwS2NhYVhLREtDUm9kNjl6?=
 =?utf-8?B?dkR0S3BVNER1b1FtVVpOMWc2aTBQc1hwUG9qQldWdCsrSXVBVWlFcUI5aURM?=
 =?utf-8?B?YXhCeFZGQWlHZW9PenV6VU50M253eUVySTlIQnNWQkl6d0NTK3BIbDg0TU1n?=
 =?utf-8?B?VWlNdlJScmdNMnZ3MlRhOUs2U3dLVkNzSEdsMGkrcTNVRzdjckQ5bDRoU2xz?=
 =?utf-8?B?Mkt0NUlYTUF1U1Vmc2NFTlhSNzZPM09tRFFleGk5b2toNnVIL2VwQ25MdlRB?=
 =?utf-8?B?QXFOU2J0aWVVM1lKcGRtZkZ0LzRKQk9MVjJ1WGc4Y0g4ZGZOVHVSNXRyMHdP?=
 =?utf-8?B?ZW13akNVN2FVSnJtWXFHODRQQkdvMExFNVRYVXVVVy8reVdGSzVJbjBldGZZ?=
 =?utf-8?B?ekVvajB2NVY0Y1I3OHk0d0Z5RGRheUFaNFFiRXFZN1diRld1d1RmNnloejBN?=
 =?utf-8?B?OEVRM2trRkg4NWZrK3kvbDN3dnhpZ3oya1ZXd2piZEpoenhUbUo4T1p4dHVG?=
 =?utf-8?B?U2J1RUZ5cnBNOXkwU01uN0UwMzUyVmZLdUtqdVJldUJVeHo2M2pCdVZhQmRS?=
 =?utf-8?B?U3I1bTZ1RUFKcmgxYWRjOUZySzcrVGpPaW5QNWxVUDBCYlRIOWJ6ZytkNE1R?=
 =?utf-8?B?YjVVREc4WFRKOWhoNUdFc3pZYzNBMldIRzZrd1kzRUw4eUxGMGp0cnR0M2ZI?=
 =?utf-8?B?Rlg0UWU0dVlDLzhIWnVkenBqYjhPV0lHUDlZbXRicitWWlJmOFhKd0l2c0lS?=
 =?utf-8?B?VkQ5MHVValNKQzZHbVJUdnVKQ0tOVnlmbmtSd2lBVVhWZ0RSN2ZKdTdPcGxj?=
 =?utf-8?B?UG9SMEFtT1Nuc3RuVWFNbGhHd09PWGFwK3FsNnNOT2hqNUJsZ3ZET0l2YUhL?=
 =?utf-8?B?Vmp0cUR2ZXpOeGRtYU9LVjVlMWtSd09VdzRsdVJhdFNaMi9xN1RPazFXWnR6?=
 =?utf-8?B?NHhHUU90c2xpdFNCS2o5cEZRWmxucWVzRkltM2FRMHl1SEVJcFIvSk8xNDJi?=
 =?utf-8?B?MU8xZUxnQmJKWUpHb3BORHJJbjZCVmlOdnJvT0xqUzFyQlFVeGpPVzF0NGx5?=
 =?utf-8?B?cGh0TmNGclhRN2gvRkRCMDU5cmN2Y2Z6WlgyWnJXM0syZ2NXN243NTZnazVU?=
 =?utf-8?B?U2ozcU90ZVFDVWw0WmQ3OXA5ZDlIK0diTE9aSDUxVjM3eFBsU2VYdmVndEZk?=
 =?utf-8?B?VXFOUmJTUzlUQ3MyNU5YL2xJRWFBcFh2TUdYLy9FMHIrUjFYRHR3Z1dPc0NW?=
 =?utf-8?B?bzNkU0dYUnEwRkdVYmx4QW9NQjBXdndJSm1wclJwRzRoTzUyRjN1Z2syL1pj?=
 =?utf-8?B?bnJMMWhwc3NEZXpqT3ZiWnBLTW1wdjA3ZTF4eHBuSUFaODUyYlZFK2YzRHhZ?=
 =?utf-8?B?a29CckU3V3RaVHE4Nkt1OHFRYVE1RFI2Z01oRDVWNlc2Z0lDYVRkK0g3NFMr?=
 =?utf-8?B?d0NBQzIwd3lSUWxDaWNxVUhYbW5MMGw0c1J3aFg1N05EV1RPZmVHTzlkSmhC?=
 =?utf-8?B?NDNJWHZ1MWhoTkRHd01XUVBXVFRpUWxyNDVvdTlRZkd6YVduZHZka3hMbWMv?=
 =?utf-8?B?ODVBUzZlYXdEbHFvSzNrNTlmVlhmNWw5S3I4TFhXVXRzRGFSZmpGUlhFL1FR?=
 =?utf-8?B?TlBzbmhnSG1KaXBhYi82b2lYREVPUERjUkhOTGtUMFBRblhtTTkrWjFwTXhl?=
 =?utf-8?Q?PN84S4sQrxiDk9V2i5J+k8eBp9dMFDDcgtqcIqA8OD4q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf47af14-5342-4f4a-b19f-08de0fefa3b7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 15:45:05.2805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5gywTC0zJqnwEqbg3eMk6cNwgbSSV0XMMExQ5R+P1d5jtYpMhedYo7rUWZHMkZxIGjH7ak8DNOtz5nM0EifhjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6414
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

The intel_crtc_state::fec_enable check in intel_dp_needs_8b10b_fec() is
redundant drop it: originally it ensured that the FEC enabled state for
a CRTC other than the CRTC intel_dp_needs_8b10b_fec() called for is
preserved, even if DSC is not enabled for the latter CRTC. The way FEC
gets enabled for all the CRTCs on an 8b10b MST link is changed by

commit 7c027070e98d ("drm/i915/dp_mst: Track DSC enabled status on the
MST link") and
commit 470b84af457e ("drm/i915/dp_mst: Recompute all MST link CRTCs if
DSC gets enabled on the link")

depending on intel_dsc_enabled_on_link() in intel_dp_needs_8b10b_fec()
instead of the above fec_enable check. Drop the check.

Suggested-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b0aeb6c2de86c..475518b4048b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2377,9 +2377,6 @@ bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 	if (intel_dp_is_uhbr(crtc_state))
 		return false;
 
-	if (crtc_state->fec_enable)
-		return true;
-
 	/*
 	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
 	 * Since, FEC is a bandwidth overhead, continue to not enable it for
-- 
2.49.1

