Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F777D202DF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA9310E620;
	Wed, 14 Jan 2026 16:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWqYZ0g1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8425210E619;
 Wed, 14 Jan 2026 16:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407782; x=1799943782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fe87aYtF1bX4sQmTZgGoztmxOb+i+82hUdgK76iFoSA=;
 b=PWqYZ0g1BgEsYjNP33ou5Vhd5R8NcyIZUa+ovYW5QEr3HOkTZFn1ARKB
 6oIdsq9hQB5jVXwmO7/rycgZnO1qIfN3W5+9m+YkoUroPFWMkrmnYWuix
 tFgb97nN37cd55wqZ0dXsjtciGs7qcCQwcQBJ8dUpG0QulSvsHcV2Ivv7
 NFvlZLahdmGdc43SjdjTvBf9bIqUEWiAMB+KWvZE/O9c3pxo+nsVYh5hs
 3doU4x36lrL5tJRMkQhVJHDjotv+lbhYDqstm1Y9ASQ4R6i6NEEc4TnyT
 VH8KFLklRLHYZvcfrooQTlfemRzeI2LehluFWBfSIGnTOhWuUtomMoecC w==;
X-CSE-ConnectionGUID: 60BbZBVuSzeOEbeYuY2MQQ==
X-CSE-MsgGUID: EDIx8+uHTSqxX9WwNOrFQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551556"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551556"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:01 -0800
X-CSE-ConnectionGUID: 2CIEIrKkRLCTMi8S/Ecy2g==
X-CSE-MsgGUID: e7Pq/g3VToG4x0N38W9LUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611100"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:01 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:00 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:00 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.68)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bCKqb/7JlSZYFYX6DJ+rQbvbZCTdVjO7d3tQpGxFSO2O9gdKH7sVYbP6/h5N9rLqGVWxTkMBp9D41qvoM4Qb0iPiJWajUxfR+slXsU2gxrv0e6isLJ7sBoCjoI1561GW84/7x68uL5jWlAI8wc3H7GgJQsrOqnYqFjfLMMlozFxy8mjXtbWGExk9ZXXPTLlRKwhh7Xai4qKEDMlv383XbeDpkBBPLJOQNeGqTGiCSUGk9oJoh1Dw1SHwfR+h0Y7YUSkT/1uMS6OrDX+w9kNNhm9DKfXo+sr0pVa2LqYWodkLhhOf+EEBsgRGZVYuugqlhqvQkLkWt3Je4h6axqy2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcBxkwNDqqeFqfx8B/HJ92rkP66dUCtK11Rw7YKf5qw=;
 b=RHhufLiCDUxdZl06P5YjSVn++IWt+nMQUbQ/DWkjV/AHdKfHHHmtuXlBrdVPIlkxu+WWnjhDb7ZCSQqtB4fai7NvjMnvMH1W0RQ2/c9ejQKWxyBScE/s/xc7d87bY3dxRZjuPssX9L987+vZv3OVZXufWYSqKIMbhKS5GXkzxDKBy3H2k/oKqbk8fnl6U34CCmuVgmsUPmJup4BtDbz61+KFfb45MspSOsSEDpetgLzgWm0j7gWNto1vX7W7t8/qPwHUJqT68xgVAdUtPsRrf1ugNmYBAwjjqH33B5OUtzg37Dds512NK2a00ddSmZ0ytmPDlJS2KwVtJ2OcRUEv7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7676.namprd11.prod.outlook.com (2603:10b6:610:127::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 16:22:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:22:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 04/15] drm/i915/dsi: Track the detailed DSC slice configuration
Date: Wed, 14 Jan 2026 18:22:21 +0200
Message-ID: <20260114162232.92731-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7676:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d2b3f04-39ee-413b-b895-08de53892e22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2ZiRkZ6ZWlIOWZ2anF0eUpYLy9sVml6cGpNTnpxL0lTeFhqejVyaTVsMFRN?=
 =?utf-8?B?SEw1VVJrb01iV1ZuUTBINUpiTzQwVFFKb0xIM0pDQkJsL0RDTGhwZFBjWkht?=
 =?utf-8?B?bFRxWEpqVCtSYWpYQnN4dTdOTzNVSkNPNURaQ0lDVENaWllwLzc3dm02WjlG?=
 =?utf-8?B?WmxFNHUvUHJiT2NFendlMUluN3FmVFNPMXZxYkdMcGtERXFURms5ellRMUJh?=
 =?utf-8?B?U1V4SlptbktEbnlzeWpBL2ZvRC8yV1dVcDMyQ2EwZE15bzBvQ243VVNENzdS?=
 =?utf-8?B?Q0cwQzMyMi9UbFF0dGpPZFNUbGhtcTdFRXVwblpibmxnUWZEOVdQck91THIx?=
 =?utf-8?B?eFhRRHFBYnphNTh5T05JZGpJWVJsdFcwWEtDVDJ0dG1KYU5lcEpKRGFSTDdJ?=
 =?utf-8?B?L0Y1VlBCS25iTUU0K1h3L3AzWlZMWnhyaGYrSno5QUNHamV0VSt4dE5QbzRJ?=
 =?utf-8?B?VUFTVGdpTXdHcE1Mb051dUYzbXpBT3hpQUtWdmlzRVZOTWZXSWVzWkdmNndO?=
 =?utf-8?B?bEZEZHdxb05zVi9YREcyNWExMnBiWm16YlFsUThNMHFEV3ZBZGtTQzc4TUx3?=
 =?utf-8?B?QzFxRU5mTkxDekZROWlCTjFFV2NpbFBSNnoreERUaEVpOHpPSkdqTkcvdXI2?=
 =?utf-8?B?aGYwL2hCa25oencreEpyR0dMeXBYcS9wdGlrNGVPekRHZXduWFFZamFNY2d5?=
 =?utf-8?B?TU5jNHZxQTdzT2JhQTg4NnBXVWFuZDBFMmwvek9IWEZuWHVyc0NCMjdEekNp?=
 =?utf-8?B?VFlva2x5d1d3NXkyaEJmVmVhRDdMUzZSQjFMVVQyYzRGUDVRODM2dFQwODVo?=
 =?utf-8?B?U0ZMYmV6ZVJ3Wlo1WUJiUzFnamdEb1J2Nlh2elI4bkZ6dWh3cU1PbTJ5U2sx?=
 =?utf-8?B?eC9sRkVQck9VYjdWL2tVNms1Kzk5NG5Dcnp5d2NhbXhzelcvbS9EeUwxalpt?=
 =?utf-8?B?K1R4dS9OcXlrQ0ViK0xQRlZDZm9rWGFQRDllSFZ1aXVYbW1rVy9zTEtBallO?=
 =?utf-8?B?RGNqRUkzSTJlNDRZa3YyQ2J4VWxsTUZBNXdVRk5xUjZoTWJhQUhaTEE4ZExr?=
 =?utf-8?B?ekpFdytGd1J1bHZlQU1pNmFTR2o4VUwvR1ZqV0J5eDhVQmp3YUpvU0xmYm5B?=
 =?utf-8?B?dmJOc2V6TFVNUnhrVVBQejAvZHd1cVBYSzFkL3Q2K1hLanA5WDA1RitkWFV6?=
 =?utf-8?B?NXNuc0ZTVUtUOWFYNVd0blp5SWFOVzhsOS9WOHdCdS8rVEE4eDJVRzVmdnhz?=
 =?utf-8?B?OVZSclRoQ2xRTHAzL2c0RXJ0ZU4zT2Z4UUtPOUQwVk00ZnIydEFaZ1pCWFl3?=
 =?utf-8?B?NFZGUWlkc3RuRW9IeFpkMHBhajBqVU1rNVZER0d1d3VOdmgxTVIrNUJiR1Fq?=
 =?utf-8?B?WjVHRlFkdHNBNndReGhYRmhQR0dOK0EvcHRxREpXWStCdW1ZTkZORTlLNWZu?=
 =?utf-8?B?N3VNMTRISk12alFHSEtCeSt0eUZGbHNEYlF5QTZoMDM2RFVWc1RCUk9ibWxp?=
 =?utf-8?B?MzB1VEl6WXo3SE1sc3l2RGJlK0g1dFFvdHZ0eXlHelZYOXRhclZ4TUtMQ2VY?=
 =?utf-8?B?Sk5QVUhreVkrZk9TYXp3OWhVUXh2c3Q5VzY1M08rL1FpNTlZU0pycG5xZHds?=
 =?utf-8?B?VDZBSXEwbEJ3YS9UWlNXUjUvd1JRTUNyMjZ5dGRoQmt6OHczZmZ3by9lOE93?=
 =?utf-8?B?dEJaT0JxVEpDdmJaMWswbFhhUzhnZTVSZzEyckkreHVzMWx5a2FUcnA4Uy9X?=
 =?utf-8?B?NlplVnlBbnZtR3lxL2lHRUp3Ui84NDRpWGxrTGJrVVJoTURZakt4VU9tWGg3?=
 =?utf-8?B?elFzWWZzRlhlTTVQa2YwcEN5aHltMUZreE1iMi93c1loZU1Iemg1T0lad2Y5?=
 =?utf-8?B?Y0ZteGlyN1JLQlp0RnJtM1JXQUVhL1hlRnkyL0UwWDRYb3VxbWt4Mm9NcFNN?=
 =?utf-8?B?TVJtN01vdm56Z3d3NTlzZERPc0dIelZLdldtRGw5V0szYzFsVU0rUEVxNTJQ?=
 =?utf-8?B?Mm5QRlFScEplUGcxMHdnQUMveHduSzdrdG05czdLNmJpOUlrbmlhOUFLd2pE?=
 =?utf-8?B?T1o1cFoyOW95Y2gva2VNMmZQWkYxcUxtNi9OWEtzekx1K3NvMXhDNi9jek5k?=
 =?utf-8?Q?iigM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXpqcW1UUUVEbGpWRFBrRjVKZ0FIeUxhc0QwZlkzMGlkTXVEM2w1cXVxeG9S?=
 =?utf-8?B?NllKN1V6c2FMcXNib0hxbGE5U1U3MFpFb25MRy9PMVphSVpVMk9SOEhGLzZW?=
 =?utf-8?B?Z3VwZ3NlL0Y5N08rblRrbEJOdWY3anFVamtqVHVCaUxZWEtBMDl5Wi9VSm5x?=
 =?utf-8?B?c3pGRFlDZDRPekI3WCtLZnJBdHZSdm1Od3hhdUJ4dXVHdVBIMDdjdnNlWFpy?=
 =?utf-8?B?NFdENEM2bXlOTHF5ZzVlTmU5VjhoM083Vy8rNG9ycW9YcEJIQmdJUkVyNVY3?=
 =?utf-8?B?SEl3b1pCdEVHRWFFb1k4QUs0eEVEWmlUSlFwSUVHV0I1dk9QREI4K3M5bFpa?=
 =?utf-8?B?ODFPUUxDYUcvMHVaaUhjb0pPVU44UG4zdFdrUXJWc2I5di90eGprZzNKb0l5?=
 =?utf-8?B?MFFON1lyajhwUU85TzFUNTFiYjcwQmFyeHFzeWRlQ09kUGNmQnhRTHd3U21N?=
 =?utf-8?B?MVZwMnlzVkUzditxRjM1dUZWQ1Y0TE1JRkIwQWZRdGtIdnF5WmNEQ3FER21X?=
 =?utf-8?B?KzZnclA3ZjY2Y3Fsd2dmajNzbUl0K3hQSXRuUDg0cmplSFhQZVhkc3NMQnB5?=
 =?utf-8?B?YlJXK3NsN21XbmpaaWJXekc0bWJTWjk5STI0cTRGL0doQitObzQ3cjRNclEx?=
 =?utf-8?B?cW42MDdIZ2tIZDlRTHJvTkRYaVBDeGNxeDZ3MDd1bVZTZWlCWFFxQ1Bhc3Yx?=
 =?utf-8?B?RHBxSmJxTWg0ZjJlTFA2Z3pvVnBmYlMwWUlPY2FVMTgxczBSMHdjOFUwWTVE?=
 =?utf-8?B?SHdwWlJqZmxpRk9tbHdiaFlaL3h1R0VzSEpSM2pXOGtFQXdHN0RrSHBxTndk?=
 =?utf-8?B?NnQ1ek1sOWRFbGJQdXlNSWJScmU1bExGYkpXcUVaQkxyMHlzemY5VC9sMEdh?=
 =?utf-8?B?QmhPTGJpV1d6OEdTYkdOR0JVVEsyUG50SmthSUQvUERVSW5BalE2NnFWR2Zx?=
 =?utf-8?B?VTh1OHoySHhCeEhiUExZMWpnOHgrd3FsT3ZrTjNJNk1CbWV3TGJXR0VJTlY1?=
 =?utf-8?B?bVk5RmNKckZLZmp6a05tYkM4NjEvWkZQMTVKTGtNQStvWlJMMHBJSnpOMFpQ?=
 =?utf-8?B?SWhqQW9VdWxsc0lCRWFUVUR6TjFpbWQ0MVlTcTVTRE9sTTVJWkpZaXFRL1My?=
 =?utf-8?B?S1F4Q09iZWhlb3paZ0o1cldKTUhYQlJma2tWM2lMRkhvNDZYQzVWSXE3Z25W?=
 =?utf-8?B?T3AvR3hrSWlDczY3Nmt1TnRyV3lFUHpnQTJNd3BNVklkMFA2M1QyaFVDWkZt?=
 =?utf-8?B?TWFiWlNWUW0xR2ZNeU9jaHdPU1BTMnlDdzJPVGFFdGZGMUJjb3BxYklhVk1a?=
 =?utf-8?B?RS9SRmpZOEtvNWhjcUtsYzRlQTIzd2VOUGdOS1hOd1N0ZjcxUVpYYklHTFhL?=
 =?utf-8?B?M0VRUkk1UzhGWDFpemdYVDZkZGJOYXp3VGhqZWtJSnlQbkE3Y0JsVEQ5VVV2?=
 =?utf-8?B?bzc0b3dCV3R4WThBQWEwbVNYWUxkZG85aTdoUUFzbFVrUXJ0b2haUEIrR0pi?=
 =?utf-8?B?NnllUy9leWQrT28rRDBBOU5XOEdGK2NzRkdSc0lPSWlhWUdSUDQxbEN0WFhO?=
 =?utf-8?B?RS9PdkxGVkxhWEJ4OG5rbU5uRXpkMnNnY0ZzNFl0Z2lHaHArSFZDeXVNR1Ft?=
 =?utf-8?B?cFMzM2xQQjRJTk5TeHVSR2xGbUlGVzRubnYrUnQzODlDWEZNV1NSUEdJci85?=
 =?utf-8?B?ZUtJRGlkaURJeFA5a01qMWxybTU3SmRNMmlYcTM4eTNhbTRyclZBSWtSYmtY?=
 =?utf-8?B?L203WWJVaWdQUE5rMDFDaU9MQy80ZU9vQ0dDay9tKzM4UzVzQmhOZXhIek14?=
 =?utf-8?B?bWc0OGw3d2hwa1ppRkYxRkJOMTZpRElVaHUrWnV5eHJ2TWdZOXpYNU1LbDdK?=
 =?utf-8?B?VzhJbjJiS003ZWVFU09CV0RJYXJ2R2xhUXFEdnZxZFFsalNnVUhYd3VwVmtj?=
 =?utf-8?B?WXh4VU9LWTdhM2FJaHlodFN2ZUp2NWFhak1POGtCMUtJY0NlQ09XSmRsRHRC?=
 =?utf-8?B?YjdYczc5L3V2N3pNM0kreDFnRU8vNTZaME4xSDZSZnJ4NWgyNUNwTGtCODJG?=
 =?utf-8?B?Vkk2WnFTWldNem8wRDV6UEswM1JkVFNEaGd4ekFEODRTbEdIRktOWkY5N2h5?=
 =?utf-8?B?aWR2UlFlKzRoU0t5RysxN0RNbTIxcFQyb1J2b3VwRTBvcHpxQ29CSDFweHVT?=
 =?utf-8?B?N3FUNFNUcGVveWRHQmROUTgzM1dIL203bnFHMXZPdVN3MFJYZ1crQVFJN045?=
 =?utf-8?B?SldhTEE1SC9td2FNREFVbzBUbVBNcDlVT2l6dXF5K1dCQUxQWnRlMEJrNEZP?=
 =?utf-8?B?dHV1TWVKcVowMW91bmFHK0NCcTNreUkyM21RaHBINXhtZC82TFJ6T040RXcz?=
 =?utf-8?Q?nItRPUsqKagdEXNX+MUPbK66oALb4jWzWuHEDcLP7BPCi?=
X-MS-Exchange-AntiSpam-MessageData-1: zBZ1V6sM2N2qIw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d2b3f04-39ee-413b-b895-08de53892e22
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:22:58.4270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: svOIbqaM/nJzSHqKthmlGmmHDGXKzBuj9l9/Jpk5ZJdoIVK+6lbsUvGIba/5756xYW50fcgbF8eo6VQL2mlRJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7676
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

Add tracking for the DSI DSC pipes-per-line and slices-per-stream value
in the slice config state and compute the current slices-per-line value
using this slice config state. The slices-per-line value used atm will
be removed by a follow-up change after converting all the places using
it to use the detailed slice config instead.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9b44284728318..8fcfdb2e1c74e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -41,6 +41,7 @@
 #include "intel_display_utils.h"
 #include "intel_gmbus.h"
 #include "intel_rom.h"
+#include "intel_vdsc.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
@@ -3578,12 +3579,14 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	 *
 	 * FIXME: split only when necessary
 	 */
+	crtc_state->dsc.slice_config.pipes_per_line = 1;
+
 	if (dsc->slices_per_line & BIT(2)) {
 		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_count = 4;
+		crtc_state->dsc.slice_config.slices_per_stream = 2;
 	} else if (dsc->slices_per_line & BIT(1)) {
 		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_count = 2;
+		crtc_state->dsc.slice_config.slices_per_stream = 1;
 	} else {
 		/* FIXME */
 		if (!(dsc->slices_per_line & BIT(0)))
@@ -3591,9 +3594,11 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 				    "VBT: Unsupported DSC slice count for DSI\n");
 
 		crtc_state->dsc.slice_config.streams_per_pipe = 1;
-		crtc_state->dsc.slice_count = 1;
+		crtc_state->dsc.slice_config.slices_per_stream = 1;
 	}
 
+	crtc_state->dsc.slice_count = intel_dsc_line_slice_count(&crtc_state->dsc.slice_config);
+
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
 	    crtc_state->dsc.slice_count != 0)
 		drm_dbg_kms(display->drm,
-- 
2.49.1

