Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF27B356DF
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 10:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23E410E2DA;
	Tue, 26 Aug 2025 08:29:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ca+oBFU5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C7710E2DA;
 Tue, 26 Aug 2025 08:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756196976; x=1787732976;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UAfY5csMffGDTK8j0cL+6lL+MJo4APa5xnN2snFt528=;
 b=ca+oBFU5W2UnO5iFHf+0LhfIF2hBMwQZH9Y2Q2lJ4hGcVSN/yZhfZvZ3
 oC+OYM7eLExOg3bVv8ptL+xqi4t8n4Z3jz5ncXDDQyEFTWYbxrMwFl4k6
 sC5e6rvl+5qnv0mEXuiIOKc4tqdL/yg3+0Px+2oUGHL482mepB/Trvjvp
 Dqn2C19Buu3KTPDKiBPj6SPjEPP9E0/LdmGANgTYvUPw8z0zobdOlqnTx
 rgU+Q8+D41ANGUHM1J8xFEFgs6yBkmWfQjsIk7Ol3Gm1pGeemtuD0TY/O
 4nsHY3FePbLpQHlNa5BERSQOosgfkacug3zTVn0uYMNP+EmtYkIraRmW+ w==;
X-CSE-ConnectionGUID: r4AnUoRaTc6NqyU2jwubZA==
X-CSE-MsgGUID: kYl+I3+DQ7OXudF5XiepPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="69859877"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="69859877"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 01:29:35 -0700
X-CSE-ConnectionGUID: boAuqMO7R5OoObfRnWMipw==
X-CSE-MsgGUID: DNzrYm83R1qARPlHRhSILA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169688114"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 01:29:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 01:29:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 01:29:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.78) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 01:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S09RafBsLPVhAasf5PGeE3k5WQlbgBPKHBmc8H4kXcNoc+XCqpfYes0xF6AMu2gxUiYbDDa7qisInKebU/BukAyo4nVNe/Z/kAg4AdXNGt98QpWzeCq+GDnTlPs9VENYpMkrpbmWP2YS1kzboV8hVdraDnfoBAc7XZEpHmtCVjak84fiQpK+8x1AR7h2vFGwS335kMBsRqEuIKBUGWtKkzw7q6P7lwApq4CCkMXa//ROe1+LiwwiUxe16cuguQdznAMPlKFeA8MAzT5hngRVN5EhP1CfbxG2fLCABzhLnrUCl0j1au9YnXPBmvQw9g5FwPe6xxIenwijgGQIwX5rXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAfY5csMffGDTK8j0cL+6lL+MJo4APa5xnN2snFt528=;
 b=BZLDZXZ+WKdM4ghxfaV6IX22O6tdcttqD/gytEDesgRJBolZaNkI6pIGhkL1HNTOLA/xWj1iQpdW+M7veVIU+Y51LzN6iPBw66whRhS3kkt/W4XE3J9j1qZzQJ1u6JW/ce8Sgse2zfceB4Vt263sW1yFfgKf1UxkWzH3yKfAbemv+7po8GxJlJMwBs2iV+mNVl/wNWH8TMfhU/JWzjnRCPjOkDtRiTPrCmy5dWD5PNgbHEipeCnqfc8wnsJQwXr5y5XeTBLSOe3k8FFZVHNkjl41WhFrIf5RZpuYUyvLmmdywuxBFAU5lTFVNMpOUJT1+mQM6UVS6HW1hfrzsDHAkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) by
 IA0PR11MB8379.namprd11.prod.outlook.com (2603:10b6:208:488::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 26 Aug
 2025 08:29:33 +0000
Received: from DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::faad:f9ae:2b45:e9ba]) by DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::faad:f9ae:2b45:e9ba%5]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 08:29:32 +0000
From: "B, Jeevan" <jeevan.b@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Check PSR pause counter in
 __psr_wait_for_idle_locked
Thread-Topic: [PATCH] drm/i915/psr: Check PSR pause counter in
 __psr_wait_for_idle_locked
Thread-Index: AQHcFl1wbMqCkRfWw0CS4XLYCr2nb7R0mjuw
Date: Tue, 26 Aug 2025 08:29:32 +0000
Message-ID: <DM4PR11MB6312374951C02A1B371F300E9039A@DM4PR11MB6312.namprd11.prod.outlook.com>
References: <20250826074457.1992524-1-jouni.hogander@intel.com>
In-Reply-To: <20250826074457.1992524-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6312:EE_|IA0PR11MB8379:EE_
x-ms-office365-filtering-correlation-id: 47d9fd48-7121-4855-ef97-08dde47aaefa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VHlPazR2TVZvUmkwNVI3MWNmQTZUaTRHbkVVL3R0cGNrSDVaT1hjK2pScUxw?=
 =?utf-8?B?aFpRamQrVVdKZG9HcXdtZ2NhTnZKdlFvZXNXNStaY3B1cXV4bE53TTN2MklN?=
 =?utf-8?B?eThWSEhMYmhick8rMGxlamtVbFc1d0FDUURVazhoazRBVUk5Z2JmWkV0amxh?=
 =?utf-8?B?ekc4RnpuTUZkMkp4S1hRdmRRbDRraWhVZ0FXTndBRzNla1Yxb0RRL0loZ2FY?=
 =?utf-8?B?UzhEbmlXd3VmUjVucmNFSUhmb2dVcU9pdDgzbS8yVzNYcFEyYXMyNFFKQ3ZQ?=
 =?utf-8?B?b2kxQVAxaHhHYWJMYXBjL2RsTTdQYkRMaVNiQkpGUHF2aHNyc2FqSjd2WFph?=
 =?utf-8?B?RGw0dGFqT3dJRkIydDYvWEp6U25veFN2SFJkaVNzdDEyYTNsVDdvNUROdFh5?=
 =?utf-8?B?QWdKMHJ5MWZhUndaYkN3RjlBcWtxcURaOU9TM2pYY1Nqd3prL1JDTzFwRGl1?=
 =?utf-8?B?WGJnZ3Z5VXZDTDRhdjc1enVnbFZtenJxZHpEN09paitub0lBZVNxQ0I4NVds?=
 =?utf-8?B?Wi9pRFF6aStPdml5REpyRmVRZlh5TFluVlBhcnQwYTJoVi9va0J1cEdPREJ0?=
 =?utf-8?B?Z0RZN3IzN0Ixa0tncENsc3NHNkpmUXR1NGkxdUw1TnloUE84WUdXRWhNQWlZ?=
 =?utf-8?B?RGZEK2g5OFdGMlpKMG9IQ2FKd251OVNCaUU3bk5Xdzl0WmJFVllNWHB1TG5M?=
 =?utf-8?B?VjczYy9iY2VpN0xYVkZIMDhJbWRQWTAzL0ZvNFN0TGR5N0dzeDVRVTJMZks2?=
 =?utf-8?B?WThTMWZQaHp0ZDMyc0x0N2wxc0Z0L0c3a1RkMnIxRE9kdThLUWU2ZUFkd3kr?=
 =?utf-8?B?UUNpWUp5M2RrL0hKQ3ZaZ29MdGg3KzZZRmlYS09wcjhjeldqc25mOGUxbzNR?=
 =?utf-8?B?Y0hJc3RVZHZhU291UGN0elJaSEdrS0o4VDRtNUVwa3FLK1FWTS80SWR2T2l0?=
 =?utf-8?B?aTB5c01uYWRNSTJmTzdjTEo5Z0MvNWRqR1dMTythUnVQd29CQ3J4dFdJeEVu?=
 =?utf-8?B?ZWlLTDU4c0JBOWtDcTR5ZWZFeG1uSThoMDRPVmtrQlE0d2laMEpvdFdBNkRH?=
 =?utf-8?B?YndrTmpKdHBjM3V1T0ZZREVORmhDZWJFdWkyT3RieHhBQml3TlVSNlhBbVl3?=
 =?utf-8?B?WDJWaVF5Z2xYRzlVOTlhSkR1WHRRUzB3ZWttWTdxTHlnb3MwL3JvWTNZZzZJ?=
 =?utf-8?B?RG9vbERwL2hWc1FBVHBQblNEamZSaWV4d21CZmZzdmd3MWVybVJqbmEwTnNV?=
 =?utf-8?B?RjQrNHg3Sk5LNFJiSVd2TFArdEczY1VvaXZ1dDhVc2J5Ynd0bkF0MW5ualNm?=
 =?utf-8?B?VXM5aytIUU0wa0l2YXNpOVllMk9PdjVoQ29tcGF3dks2RzA0djhzZHJhNjRB?=
 =?utf-8?B?MlNZWWlmUWE4WWJqTUhsZ3kycTg4Y2tkcXl2d0RPaFl4QlhtQTFtTVVyR1R5?=
 =?utf-8?B?cHlJeUsxS2VsTmpsczB0ek1vTGdhMFl5SHJYTms1NEVoQUdTcC95T2Q1MWR1?=
 =?utf-8?B?QjZzZWxScjdpUWYxZmJxSTdjeFlReUF2ZFhUbU1DRi9DbmRnWlFzNmtvQUZ2?=
 =?utf-8?B?ZGFOaWJUbTd0VC9vTE1va3pRM2RnOTc4VTBQVE1oYmJZNEY5M2p1NGZQaDZ6?=
 =?utf-8?B?Y1hFSW9sTDdxYWdDNDZhb1NkWS9mdEFPbGVmQkxvSEQ0WU9QaFhKM2E4NFhh?=
 =?utf-8?B?YkdycDZiaFFHOEpSeTdMUlkxcDZnSjc1RUxrbEVteTJXNVBPdWI0SkpGRXlR?=
 =?utf-8?B?SWlaWmgvNVBFRlFrZW9uUVZFQmo1OW1mUnpxNXJEeDF5YU9oelNDSUkwQVhv?=
 =?utf-8?B?enRxTU9oR2FoZWNlNDFCNTdPcytQd1BIUW9WREh3Mkduek9nMy9wUWFKeElL?=
 =?utf-8?B?MmxXcFFPT2RVaUFBUnVHdnhvQW9OMU9YcFl1d0tqaGpWQlRJQWFnUmg0dkhq?=
 =?utf-8?B?dnZDaG5pL3lxT1VUUkdJT01WVzhnemhkc1hGVExKWHRVWEZEVUtabFVKUzN5?=
 =?utf-8?Q?YCtUH0lVc0DxOCvP9ek3CGEi9sHLW8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHBXcUhyU083YzMzTSs0REpGTjZZOHAxY01ONDhNU3RUblRPRTFTUG5NTk1Q?=
 =?utf-8?B?cy9qa1ZYOFpGbzIzQ1NmcnpTMVg1MmdkeUFhQ1Z6d0tPUCtKeWdMU0FvY25D?=
 =?utf-8?B?M0tEemNHdzNHR3VXeW5kZWlqNWNnS2ptNXJ3YW5EcVBxNndyUldWK1JONi9x?=
 =?utf-8?B?bDc3b0JlV29heEhkY1VIZFliWlVZV3dwcTY1cHFFVUtybEI4cUVDOUNWNnAv?=
 =?utf-8?B?dGJPNFV3b1FWZjE1OEs2S3FZSHJ5V2podk1QS0RsRlAwZ3cxNkN6VVh1bUhU?=
 =?utf-8?B?U3lOL3pBZFRlS0lTOEsrSFA3V2hxWmprNEFsUW85U0hiUVZuRGhaL3VBV0Ji?=
 =?utf-8?B?YXg1WC9DazQ1bllleWVxd3R5eFJRa0UwVXZxZmExVzY2Smd1UUJLUGY4RDMz?=
 =?utf-8?B?ZnIzWFdTYXl1Skt1TDhZVXpxVEl4N1lrcm52MkR4MEw5RDArWTRtOXJ4aVN6?=
 =?utf-8?B?ZWU5eFBPek1DZGovaEFQRGNwajM1MGNydlVlVU5CUlJ3YjI3NUpVQjZsTVFz?=
 =?utf-8?B?SjY4VXUyM2hiWlcwRlNLRm54a2U3Q05qVFpiRXlqdDlTSjR3OWVUcENRVmtl?=
 =?utf-8?B?a2lpd1RLbU1rWUExYnRhTk9xSk9HM0wzS2lERC9DdzFsa2NLSW9KbU9DcHRO?=
 =?utf-8?B?L3F4WXpvSkZmNTE3T3Q5RHlxaktWV1VVelJtQk1aQWN2WDNVUFRiL3hXK0Fw?=
 =?utf-8?B?UForcGxWZUp0TWkrYk9qVnQyVGxOZFVrQ3BDMTROT0NkWk0xcGl2RUFiVWlM?=
 =?utf-8?B?YUVzUTBPdkNuZ2RUazFZd2Rpa2lWTDYyUm5qeHpkeGRGWCtoZW9KZDd1YWlz?=
 =?utf-8?B?ZVovaUMvZ2RjQ1NoUkl4NUp1dVY5UTdMbysrcjMvVUltRGFjZE1hTHhmMWxw?=
 =?utf-8?B?eFc1dXlHU2wxNkFQVUNra283cVJNZHhITjhCbW1DdVpITlZxYURmWXBGWFRR?=
 =?utf-8?B?cjB5b1c4UHJNaU5VRWR6S0c4cXlKTXB0MUZnRjZsZ0NQMFlIRVk2dWQ3T2Jr?=
 =?utf-8?B?MjU1R3JiWmtWZkJoQmZPTjU5Mm1PbGZBMlo3WkpTTG4vemd5dGpQWUlvWFQ4?=
 =?utf-8?B?MU9EKzdDVkVNaHNMY1ZUb0VqZmVnZ0ZGT3JvMVd6ZkNsTVM2L3YzaW1Cb2Jt?=
 =?utf-8?B?OUpzR2M3UWJOOEE0OTd2UEw3bUd4K2QwcjFmTHlwTjNuTVd0Q1RyTE9BTnVo?=
 =?utf-8?B?S3lPb0Q3dkIrV1ZJWGk0Y2d1aVdnNFpkdjQ1dytKVVlDUjd3VklJOVBPbjdU?=
 =?utf-8?B?dWNHeERveC80TVFSVWJ3d3ZqWTBwOUVQNlBTRm53b0xUb2JXQ0VzM2NIcWFh?=
 =?utf-8?B?NzM0Kzhnb0NVakxYcU50dkRWVkhIOVp4UGpNWGZNenNaVnEzUWduNXJGK2do?=
 =?utf-8?B?Vkk0TEpJdHR0RXhsU2VyOFJGTzFRUFZUWkZZZlZhQkZ1TkUrTldZaU1Gd1dr?=
 =?utf-8?B?Vi9paW1rczFWWUV4ZnlLb1lDVlNnRy9Rc0k1WE1xbU9lOXI5dnZxRFdNQ3Mv?=
 =?utf-8?B?TTNGeG15SVE2OGVvSkJybDJnc1BVVkZHS0pmdjNiNkJ2SnV4SkZVMmNwNHJO?=
 =?utf-8?B?ZXVCSE5TMEorZHJvZGoyYXdwMzcxS1FsdHQ0eFoxVUlpOWMxQ3BPU3F6bnB4?=
 =?utf-8?B?T0MrWHB0QXBFNUNXYlNtUUJnV09aWityYTgzZWc1cEtWYzBDcTcyZHNrYnlj?=
 =?utf-8?B?endWb0g5QXBmcFBQWjhGN2tFbW00K0p1WHhDZGJrWVR3eUxtSThxQi9YRFpX?=
 =?utf-8?B?QmY5eWgzNTFsa1R6NS8zTVRlcUtKWFR3QmIyRWthUm42VkNoVkNoWjZDUTlk?=
 =?utf-8?B?STFZdExyM1pVMTJOY0dKdTc3OHlyd1g5WkQ0SHJYcVZTMm9XeExLeldrVTRr?=
 =?utf-8?B?NHR2Y0czUHZxZU16aExlRzgyMGxOT1M1dml1cUNDaWR3akJaMHBtRWRlS2g1?=
 =?utf-8?B?Z0l0c3k3b2FNK20yTjZJZ3V4aHd4ajZRMnVMNCtPbFIrVzdzUTkyZGpWUWhz?=
 =?utf-8?B?NnZZMW1UNE1adGhhVUhwZHZLY1dyOHNZS0hYQ1EwL3djNUhRTGc4RXRDVUJH?=
 =?utf-8?B?MVBsM213RjJsc3MvODRqM0k3NG5HcDliaUZTVnBTZHU3cnFwbjE0Qnp6V0dT?=
 =?utf-8?Q?lnes=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47d9fd48-7121-4855-ef97-08dde47aaefa
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 08:29:32.8973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GmY0W9kbHd3Nd506txKCkKHpPlSgF5z/KSOa9dhz4v7Wi4jEtTvbxFQ1MxvtxOyFCG9AcD2hPAsqz0UScl01fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8379
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

TEdUTSANCg0KUmV2aWV3ZWQtYnk6IEplZXZhbiBCIDxqZWV2YW4uYkBpbnRlbC5jb20+DQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDI2LCAyMDI1IDE6MTUgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBDaGVjayBQU1IgcGF1c2UgY291bnRlciBp
bg0KPiBfX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZA0KPiANCj4gUFNSIHdvcmsgaXMgdXNpbmcg
X19wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQgdG8gZW5zdXJlIFBTUiBleGl0IGlzIGNvbXBsZXRl
ZA0KPiBiZWZvcmUgY29udGludWluZyB0byBQU1IgYWN0aXZhdGlvbi4gX19wc3Jfd2FpdF9mb3Jf
aWRsZV9sb2NrZWQgaXMgdW5sb2NraW5nDQo+IFBTUiBtdXRleCB3aGljaCBhbGxvd3MgUFNSIGRp
c2FibGUvZW5hYmxlIGFuZCBQU1IgcGF1c2UvcmVzdW1lIHdoaWxlIFBTUg0KPiBpZGxlIGlzIGJl
aW5nIHdhaXQuIFBTUiBlbmFibGUgc3RhdHVzIGlzIGFscmVhZHkgY2hlY2tlZCBhZnRlciBsb2Nr
aW5nIGFnYWluIFBTUg0KPiBtdXRleCBidXQgUFNSIHBhdXNlIGNvdW50ZXIgY2hlY2sgaXMgbWlz
c2luZy4gRHVlIHRvIHRoaXMgUFNSIHdvcmsgbWF5DQo+IGNvbnRpbnVlIHRvIFBTUiBhY3RpdmF0
aW9uIGV2ZW4gUFNSIGlzIHBhdXNlZC4NCj4gDQo+IEZpeCB0aGlzIGJ5IGNoZWNraW5nIFBTUiBw
YXVzZSBjb3VudGVyIGluIF9fcHNyX3dhaXRfZm9yX2lkbGVfbG9ja2VkIGFmdGVyIFBTUg0KPiBt
dXRleCBpcyBsb2NrZWQgYWdhaW4uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggZWVjNGY3ZGMyZDY2Li44YjRjZGY5YjMwZGIgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzA5
Miw3ICszMDkyLDcgQEAgc3RhdGljIGJvb2wgX19wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQoc3Ry
dWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gDQo+ICAJLyogQWZ0ZXIgdGhlIHVubG9ja2Vk
IHdhaXQsIHZlcmlmeSB0aGF0IFBTUiBpcyBzdGlsbCB3YW50ZWQhICovDQo+ICAJbXV0ZXhfbG9j
aygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gLQlyZXR1cm4gZXJyID09IDAgJiYgaW50ZWxfZHAt
PnBzci5lbmFibGVkOw0KPiArCXJldHVybiBlcnIgPT0gMCAmJiBpbnRlbF9kcC0+cHNyLmVuYWJs
ZWQgJiYNCj4gKyFpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXI7DQo+ICB9DQo+IA0KPiAgc3Rh
dGljIGludCBpbnRlbF9wc3JfZmFzdHNldF9mb3JjZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSkNCj4gLS0NCj4gMi40My4wDQoNCg==
