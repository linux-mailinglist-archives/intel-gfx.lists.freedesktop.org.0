Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0F9C970AB
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE5A10E3A7;
	Mon,  1 Dec 2025 11:36:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jyrghv8P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CEA010E3A7;
 Mon,  1 Dec 2025 11:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764589013; x=1796125013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JPEpw6MHww6INJJTk5qrfUqnWr2K/7LSggOqTz+gDF4=;
 b=Jyrghv8P9MQyTZ0Cvy2BlYCzNqccdlOLpFa675rILXWcrsXdnJAYQLD8
 NWQeVmwGcukbtrGxzELIMvB8Cg3vWbJUn9o3Qu4Rqwf6cr/TbiPgKBhgi
 DN49X8T35zjMYt6pdcPQNTjM3Ub+SrGfhJE3R/KRDvhV85ATi/lewbZSj
 AXvlUxlCuT/AbeOvN7DL8bE0/5A6wBNCKDocbGzj7wz8YVgcVjIQ3K8xh
 OOCzhBCF5ZWRd8I+sNe23ZrPIfJqVBwVK8bARc0uzZvJ/dYO3IiEBu8A+
 bHCxuyg3E0uLA4uMJ1bZtQvLvKiUxYDnFqLfcHBwYtSz255jMLtnmCKbf w==;
X-CSE-ConnectionGUID: oMBE8au6QrqX6kpU5DFnmA==
X-CSE-MsgGUID: TbzG2wnPSf6TEURKjYvzXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66413643"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66413643"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:36:53 -0800
X-CSE-ConnectionGUID: MHm2XYZZREaYW/8EKM7crA==
X-CSE-MsgGUID: MbhFYj4IQW2gMutxiiU3NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="224743290"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:36:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 03:36:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 03:36:54 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 03:36:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sqf4VD2Of08BFIqZiBIfWdrlVZAz0RUCnXQtvk0Xctf95ZsAYR7fIk3DhkMFUVy5kDM0gB73LHG++uXSqyaKBi7RI9qDmuvxp0iQi4gCwtUZ2hc47MNyM5i1+ZlGOhZyFcVTYSEmUmqFqlgPfe7SZhBN5I6+eT5JuhuCaJbKDAfK4ymvh56XJjp6goAB2jhAstiuGB0ljzoaPKiAvYBtXJYuezQPBTLGpizidBHNXk3mMb5rGiUQ//xSNd2n8BRawzSFWHUwyu28HUF19hq4ZyhKUSjJx2d4Lr4nv6UNqj5XqvF6qAvM+kN48oyW5wYhuf2dcufme6yu/T4syQvljQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JPEpw6MHww6INJJTk5qrfUqnWr2K/7LSggOqTz+gDF4=;
 b=dz9F+hIV8v+CQdORF/q4JJClUzXbMGarbyjylTcORHGxts27MLavBgs02kUVSMzXr7uMi+kQgnMBsyvwPru+2/fv/GBFAh7V2k4tRDv0hOR2XNuGJ0De2iuM6k+LS37QgiIDvDy01hZGThilq2dROCwT248TVxFfUBecBg+GP5rcpwQRMOwpWhzRDiHXYOREPTWqDx7BBYOaYyVJdVwZVUcO30Wpr7PdSFGunhrVOWRNw7PLHq4BUhvKDfybjedL0fxDAMOtq4PV0J9bgcJo44Kv8ndHU5O7PJ5PNgvg1ipqIr1dOGCFqy1JtKR/3gVrX1KM3uiSzFNl6TQBTFHeAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB8492.namprd11.prod.outlook.com (2603:10b6:806:3a3::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.17; Mon, 1 Dec 2025 11:36:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 11:36:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip as
 well for PSR
Thread-Topic: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip
 as well for PSR
Thread-Index: AQHcXdVjFBCb/eQwwUmLJzTAbHIGE7UD5rGAgAJ2yICAALnTAIABFucAgASDswA=
Date: Mon, 1 Dec 2025 11:36:51 +0000
Message-ID: <bfa53f7839be9bd3702978cc4851f9ec4667c78d.camel@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-3-jouni.hogander@intel.com>
 <aSYdX7eGVOMapiJ7@intel.com>
 <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
 <aSjKZA17cooYM9Uv@intel.com>
 <5419dc1ec817f18fd569b4d02365db1991dad75f.camel@intel.com>
In-Reply-To: <5419dc1ec817f18fd569b4d02365db1991dad75f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB8492:EE_
x-ms-office365-filtering-correlation-id: 09f4bec9-f51c-4b62-2589-08de30cdebf1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TmRXNTBSNHVBSWxHdGFTamhqUGYrRVlxR0V3M2RhVDNwenVsQTY2MXByejhM?=
 =?utf-8?B?SFdDcm9Cb2dpTGNMZi9ibytxeTkzRGRZbWh0dmQ5ejR4THpmaVhsWUxLelFO?=
 =?utf-8?B?bTBDQkU5ZlpUR1BMYVNrUUpvNFJoTWVyVWF2RFFjcWIyc0JxM3h0dzZ3eitQ?=
 =?utf-8?B?d2lOUTdwMEIrNGZGYnhQVk94VTZRT3hqSmV3K3dJT3ZudHkwUnlpZHo3ZFQr?=
 =?utf-8?B?UmNBOTJPd2p3ZzNMKzE1NjdXT2lTRHBiSGxFbS9qNWkrM3Z4Q2NiTmZKYnBD?=
 =?utf-8?B?YlNXUjN2cndoWFN1VElZek95WnJyTE5XZzVoM0F3aERxOVZtUGlxSlYyMTBa?=
 =?utf-8?B?am9kVnoySnZPR2NibmV5RmNDdXltWS9wQ1JYeWUyQ1E2MW1HdVNXSTZyZTVm?=
 =?utf-8?B?TVQ1dXBVaHVLNXJSS2d4VXVTZEUyTGFIc2t6YUtKaC9sL3VTdDZuZFpnak1p?=
 =?utf-8?B?RGU3alBoMzQ0cEVVSitCVGRvVEVpQ1lPUlFNUU9qbTJPMGFmS3EyTWs0K0Zp?=
 =?utf-8?B?TFJLOU9aTGRaVUpuTE9xWGJyUEVnL0xnbVVxbU1mYzFCcHNVblkwdm5xaCtH?=
 =?utf-8?B?NWhST2pSTlpQSWU4MFhoQWtUS01rK1dab2txTkQxbkZqQzBvenFkS2ZGMlJ1?=
 =?utf-8?B?eGJrZ1JxSGVLWHBXUG1uQU00Y1ZSVE5VK004TWRUaVRJTDV3NDNIM3VMV0hx?=
 =?utf-8?B?Yk9rZzR4UHBJank1VVQ2eFExalZNNE1vQW4wT2lmYVh6elRlbkRUbE5vcTVR?=
 =?utf-8?B?Y1hFT2xBbHBPZmtTdWZYaDBybGE0WGtiR2ZFNFVtRVI3NU1kcWxwWE1rcnc1?=
 =?utf-8?B?cWRpR0ZFL2NrVnhJWUV4ZEtQZ1ZlWmVpL3UvQnlpNGVGUXMyYnVhTG01eUpI?=
 =?utf-8?B?Q2ZnN290SzNWVGFMaXBVeEVudXBaUG9yUkRJb2dDakkreXNiSGNqejExZVZN?=
 =?utf-8?B?RG8zOVVFL2RUZUJ2UklYaDEyaHlENzArODZacDJYc0J2Y2g0VTRSUmp5UTh0?=
 =?utf-8?B?ZlNVcHdncTI2NTdYa3lpb2VhdzhLcktBb1VRNEprSkFsYnNkbGl1Tk1KbHEv?=
 =?utf-8?B?VjE0Zit5RVNSV0wxQ0U1RWpxWTcvWWFEQS9LRjZtcTZZU1lCOXA3V3EvS0tS?=
 =?utf-8?B?OHRuUG5jazVVeldqZGQ5VVVITnRMaTY0aThzNkkzcUFSQW9YYnNJSWVaL0p2?=
 =?utf-8?B?L2tlZ0o5OVRPNzhYeFo0Vi9tSTZHWVJKNi8wdGpYU05qelFqNXFvY24zWWxj?=
 =?utf-8?B?dlNNeHJSWStOUkZMQUd3MUFpcTVUditERlpDS1ErRTFLenZyVFpIbEpHN1F3?=
 =?utf-8?B?cm1sQkEyV3podWtiZUdEQVlBSXhCWmlmSGhhbENxckVQdkNiWDc5aGg0K2hj?=
 =?utf-8?B?ejNDaWZMUllYM3BlWDNBWnZBOW5BU1p6RzBKNnZ1SzlCZ3BmM0RNdFVndUlV?=
 =?utf-8?B?WnNzSkVWelVuZktSMmdUOUc2Nm1UUzM0NVgvc0F3MUEvZCtZbm8rZWRaOHVw?=
 =?utf-8?B?bUpKdkNKenczeTFhZmlOSXo3Znd3T2pibkYrRUpKblVOUEpoYUJIWVlZSTdF?=
 =?utf-8?B?MUwzdVU2Yml6WXA5UUpNcnExOHVGY0dKN1U2SXNSdUs2RU1WS1hCa2dWNUhP?=
 =?utf-8?B?ZkY4ZDdLNnBzSDl3MHRRaWxodzE4SUhVN1E3Y3h3VXYyNG5kUC82OFlCanBC?=
 =?utf-8?B?VStMdVBCZVVWdm9DMllCYk12L0FnRTdjWHhqRTNyempiTU5rUnVFN3VuMXlR?=
 =?utf-8?B?UTNuYWRSeGh1WFE3dHhtaG1LTkpRTjdFUEZudU1WWFNuWWdOeFFhS0pSK013?=
 =?utf-8?B?d3hQZ0xsTlhQOUFmWW5MSFhINDY3V1hlaU9NQUowRzkxaEc4NGdHZ3RTdjFT?=
 =?utf-8?B?SXZEMWVEaXlxVUFkR1oyNkFWVDdEUiswdUhqdUl4L3hBUk9zR241dXY0Tnhl?=
 =?utf-8?B?aVN2eSsxUkFiN1Q3RmVjdlgyandlTXlqZlVkdzBGVnVVM09zR0pYVUxTOW1w?=
 =?utf-8?B?MWtTcXpiamZHRGhEME4zaWh2QWVhTS9wN0ZhZkI4M3A0alJOdjk3elNiMVF4?=
 =?utf-8?Q?7d03bA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MitNbVZNZFlIbWZkSTBTdTF2Y1RnV3JqTzFCOFZ3NnRMUTZVVWFJMytzY3hM?=
 =?utf-8?B?Wk5RSDZmSS9YZEVoZGxacEVsOTg2d1dFYmhLUGsrZjNGd1BnTlp5alU0elJh?=
 =?utf-8?B?NU1UYnFGSmU4NDU4U0g2MDBnZ0s4NFRIMWR5di8rb1pwdHUwMU8wUnRudUpn?=
 =?utf-8?B?eURRZjMyc1dEaVNUbVcrdFQxdjhqSGY3N1YxYVNGcXQ3WCtYcm85M1ltVFVs?=
 =?utf-8?B?ZUo2U3J1QUVYVWYxbDc4alM1RFo0V3hsRW1LS1diYlM0NFdDYkZrUkJXUGc3?=
 =?utf-8?B?WTVvOXJnS2NpaDFoTU1qU1JOSVk0ekUrQkpEV3V3RldQaGF3bjRNZHR2alRi?=
 =?utf-8?B?QnVGb0JQRjdlVDBwK0pvZzdCcndsRnloeXlpbDJtbXVIamRUWldWVnV3Vld2?=
 =?utf-8?B?QmFsRW5WT2NNQ0FUb3lOaUFUZmR2M096WkN6YUd6TnBydFE3c3lZcmxpMXl5?=
 =?utf-8?B?SXAveGZUcnhFcFloaWZMand3TmhtR3EwNmRnU1BtSzB2RFdZbTk3citUNXZy?=
 =?utf-8?B?L2lJd215clZ1czlPY3Nma1gyZHh3MGlCdGtRVUlTcktKME1CeXYxNHVWY1lU?=
 =?utf-8?B?M0hucUc5R3o1VDcxa05EYU1mUHU0T0l4RGoxWTJURHk2bnBnZmw2RUtzdXVM?=
 =?utf-8?B?Q29HUTRWMXA3amR3dFdqMy9lYXhQMzlLcXBXcWN3MDhBUDQvbTMxM0Y0bk9n?=
 =?utf-8?B?bW9mNEoyT2lGWXdaUk9qKzBpbnd0WHpqMGwzQjJhQnFoNXV0Nzh0eVFtRTY1?=
 =?utf-8?B?WGljTm1uZzU2WE5tSCtQV09lQUlsdlBIbGgxODVkRitTenVGcC9KVU1jeWVS?=
 =?utf-8?B?MlRqc3IvMjA4dlcybElCeEFSTXh5WnBvNHIxS0pRSXo0ZG9LOFRwUWZaM3Qz?=
 =?utf-8?B?OWY0K2Q2c3puSFBoU2ZqTmtsQXdXMzkwNjllcmpZZDBhSUZWSUtVQytEdU54?=
 =?utf-8?B?NGxiN2s3WnBZamVrNWkwM2dYYU5kYWZJQStGRmlLcitvcFU5MDZ5NUVjRSs0?=
 =?utf-8?B?eTNDUHErN3ZNaHJDU1ZKak4xK2FXNVUxS3N4QTFaNVNGa1REOWZaa2RHOUZU?=
 =?utf-8?B?cFJ0MTY0S0pod3pjRHFDWXBKSlRQaXBaRWNXSXBnT2MrdE9EejhYM3lGemZy?=
 =?utf-8?B?V1p0K0pBaHB3SS9JYjNaUzZqTXBZaklSUHJCOTJGOG1XZlduUWIrcHZNaWll?=
 =?utf-8?B?NkFEZUFwTjFZeENVL1RlempjWElIQjkyVzdFckdhY1VUMzVwaVp2RjB6SUlu?=
 =?utf-8?B?dmtCMkFkL0hUTlA1ZWRRb01kNmZvOElITWt0KytTNVd2cm8ra0hHLzY3SlVw?=
 =?utf-8?B?YjkxZUUzcmtkaXlSaThPRGIrcEJUWFEvMy9uOFlMV2lqQStPK3BlQ1dYOUVI?=
 =?utf-8?B?Qi9kRU9vZjFCNXRWOFROTlFxYUZJNmZYRTBPSTlOOXB4N3YzbmJUb3RzVGVu?=
 =?utf-8?B?akF1S0gzb3l0WEdVY2FaUm94Z3VreUZMOEhLSUVEVXhhekt0QWYwOHU1WXBI?=
 =?utf-8?B?b21BMEhld3ZQU1NOUmViTTNxaXVwSHgwbnF5ZXpsWWovd1RHUU1Fa3A1SjVu?=
 =?utf-8?B?Vk03em92SllTRkNuSTVKajE2cGdBalNIVk5kck8wQm1LeTg5K0xqKzdncTdm?=
 =?utf-8?B?Vk80MUFOY3Q2R3dnOTFpZWYxQllCQUdXeVlKNXIxNDU0Qk5xZ2xiTVhDczVt?=
 =?utf-8?B?VHhtRTNQZEwzdWp3STJqTnJBYW94dDE3MXErOHFJM0dSQ0JURStJenI3Q2ho?=
 =?utf-8?B?YU5ValNJSDJ4ZEJPcTc1WDhLR25rRVlkWTNxbmtDb1pzSXkxcnZMS2E3V1Uv?=
 =?utf-8?B?TGRXZXl2Q3lQanNwMTJibEQ2MVVmeFlFQkJTRStmYnk0MmJXQ1FtMUhPUFZn?=
 =?utf-8?B?bGozT0k0aW5xbjV2TWRkMDZWc25TSU5najZXdlJ5MlVEWjhkT25sV3F2TDFj?=
 =?utf-8?B?ekVYclludFF4MTRmVjN6T2h3clNpRVhvRGdPKytYZXpsRjNlOG5NbmU3SW93?=
 =?utf-8?B?Z1F4ZFlKRzg1OWl4ZHVMVW5JNmxZSzN1RDdYUnY4VFI0dXlKQ0YwT3dqY2sr?=
 =?utf-8?B?SnorYkZvbUZTdWhEYUVXRWxlTmNSYUt5RW1yMHZxL1Q4aWdpSlQzbTVBRXNY?=
 =?utf-8?B?SXV2QTVQelpFOE4xUnQ0QTArd3FqakRHd2JoTkh4UlRtLy93S3psckVhaThC?=
 =?utf-8?B?UVpmT0lPUyt2NlFhbmxmRXRicnB5dkhxQ2t3VnM5NC96Y3BLeGUwNTBtMHpT?=
 =?utf-8?B?NkppWUQwME9ITXhnYm1pQ2hEeHhRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <555019CF1D1BF04188D6F55297BEBEBC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09f4bec9-f51c-4b62-2589-08de30cdebf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2025 11:36:51.7793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hiah2g28qYAWo4Y/JBZazQ8I1n65wgYtB+0CWPmIMBWnp1DU0EZLedGR5YuN6+wfhBCIFoY7dI2sYUVAIyqZmgyS9JXCsfJtj1bFp0R/LHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8492
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

T24gRnJpLCAyMDI1LTExLTI4IGF0IDE2OjQwICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNS0xMS0yOCBhdCAwMDowMiArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPiA+IE9uIFRodSwgTm92IDI3LCAyMDI1IGF0IDEwOjU3OjA5QU0gKzAwMDAsIEhvZ2Fu
ZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgMjAyNS0xMS0yNSBhdCAyMzoxOSArMDIw
MCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiBPbiBUdWUsIE5vdiAyNSwgMjAyNSBh
dCAwODozMjo1MUFNICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gPiA+ID4gUFNS
Ml9NQU5fVFJLX0NUTFtTRiBDb250aW51b3VzIGZ1bGwgZnJhbWVdIGlzIHNhbXBsZWQgb24gdGhl
DQo+ID4gPiA+ID4gcmlzaW5nDQo+ID4gPiA+ID4gZWRnZSBvZg0KPiA+ID4gPiA+IGRlbGF5ZWQg
dmJsYW5rLiBTVyBtdXN0IGVuc3VyZSB0aGlzIGJpdCBpcyBub3QgY2hhbmdpbmcNCj4gPiA+ID4g
PiBhcm91bmQNCj4gPiA+ID4gPiB0aGF0LiBEdWUgdG8NCj4gPiA+ID4gPiB0aGlzIFBTUjIgU2Vs
ZWN0aXZlIEZldGNoIG5lZWRzIHZibGFuayBldmFzaW9uLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IEN1cnJlbnRseSB2YmxhbmsgZXZhc2lvbiBpcyBub3QgZG9uZSBvbiBhc3luYyBmbGlwLiBQZXJm
b3JtDQo+ID4gPiA+ID4gaXQNCj4gPiA+ID4gPiBpbg0KPiA+ID4gPiA+IGNhc2UNCj4gPiA+ID4g
PiByZXF1aXJlZCBieSBQU1IuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gQnNwZWM6IDUwNDI0DQo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NydGMuYyB8IDYgKysrKy0tDQo+ID4gPiA+ID4gwqAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
Yw0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMN
Cj4gPiA+ID4gPiBpbmRleCAxNTNmZjRiNGI1MmMuLjQyYzRjZTA3ZjhjMCAxMDA2NDQNCj4gPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiA+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+
ID4gPiA+ID4gQEAgLTQzMyw3ICs0MzMsOCBAQCBzdGF0aWMgYm9vbA0KPiA+ID4gPiA+IGludGVs
X2NydGNfbmVlZHNfdmJsYW5rX3dvcmsoY29uc3QNCj4gPiA+ID4gPiBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGENCj4gPiA+ID4gPiDCoAkJKGludGVsX2NydGNfbmVlZHNfY29sb3Jf
dXBkYXRlKGNydGNfc3RhdGUpDQo+ID4gPiA+ID4gJiYNCj4gPiA+ID4gPiDCoAkJICFIQVNfRE9V
QkxFX0JVRkZFUkVEX0xVVChkaXNwbGF5KSkgJiYNCj4gPiA+ID4gPiDCoAkJIWludGVsX2NvbG9y
X3VzZXNfZHNiKGNydGNfc3RhdGUpICYmDQo+ID4gPiA+ID4gLQkJIWNydGNfc3RhdGUtPnVzZV9k
c2I7DQo+ID4gPiA+ID4gKwkJIWNydGNfc3RhdGUtPnVzZV9kc2IgJiYNCj4gPiA+ID4gPiArCQkh
Y3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcDsNCj4gPiA+ID4gPiDCoH0NCj4gPiA+ID4gPiDCoA0K
PiA+ID4gPiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfd29yayhzdHJ1Y3Qga3Ro
cmVhZF93b3JrDQo+ID4gPiA+ID4gKmJhc2UpDQo+ID4gPiA+ID4gQEAgLTUzOSw3ICs1NDAsOCBA
QCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiA+ID4gwqAJaWYgKG5ld19jcnRjX3N0YXRlLT5kb19h
c3luY19mbGlwKSB7DQo+ID4gPiA+ID4gwqAJCWludGVsX2NydGNfcHJlcGFyZV92YmxhbmtfZXZl
bnQobmV3X2NydGNfc3RhDQo+ID4gPiA+ID4gdGUNCj4gPiA+ID4gPiAsDQo+ID4gPiA+ID4gwqAJ
CQkJCQkmY3J0Yy0NCj4gPiA+ID4gPiA+IGZsaXBfZG9uZV9ldmVudCk7DQo+ID4gPiA+ID4gLQkJ
cmV0dXJuOw0KPiA+ID4gPiA+ICsJCWlmDQo+ID4gPiA+ID4gKCFpbnRlbF9wc3JfbmVlZHNfZXZh
c2lvbihuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gPiA+ID4gKwkJCXJldHVybjsNCj4gPiA+ID4gDQo+
ID4gPiA+IEkgZG9uJ3QgdGhpbmsgd2Ugd2FudCBoYWNrIHRoaXMgaW50byBzdWNoIGxvdyBsZXZl
bCBjb2RlLiBXZQ0KPiA+ID4gPiBhbnl3YXkgY29udmVydCB0aGUgZmlyc3QgYXN5bmMgZmxpcCB0
byBhIHN5bmMgZmxpcCAoc2VlDQo+ID4gPiA+IGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAoKSks
IHNvIHRoYXQncyB3aGVuIHlvdSBzaG91bGQgZGlzYWJsZQ0KPiA+ID4gPiBzZWxlY3RpdmUgZmV0
Y2gsIGFuZCBrZWVwIGl0IGRpc2FibGVkIGFmdGVyd2FyZHMgYXMgbG9uZyBhcw0KPiA+ID4gPiBh
c3luYyBmbGlwcyBhcmUgYmVpbmcgcmVxdWVzdGVkIGZvciB0aGUgcGxhbmUgYnkgdXNlcnNwYWNl
Lg0KPiA+ID4gDQo+ID4gPiBJc24ndCBhc3luYyBmbGlwIGFsd2F5cyBpbml0aWF0ZWQgYnkgdXNl
ciBzcGFjZSAodWFwaS5hc3luY19mbGlwDQo+ID4gPiA9PQ0KPiA+ID4gMSk/DQo+ID4gPiBBcmUg
eW91IGNvbmNlcm5lZCBvbiB0aGlzIHNlcXVlbmNlOg0KPiA+ID4gDQo+ID4gPiAxLiBhc3luYyBm
bGlwIG9uIHByaW1hcnkgcGxhbmUgKGZ1bGwgZnJhbWUgdXBkYXRlKQ0KPiA+ID4gMi4gbm9ybWFs
IGZsaXAgb24gc2Vjb25kYXJ5IHBsYW5lIChzZWxlY3RpdmUgZmV0Y2gvdXBkYXRlKQ0KPiA+ID4g
My4gYXN5bmMgZmxpcCBvbiBwcmltYXJ5IHBsYW5lIChmdWxsIGZyYW1lIHVwZGF0ZSkNCj4gPiA+
IA0KPiA+ID4gSXMgdGhlcmUgc29tZSBwcm9ibGVtIGluIHBlcmZvcm1pbmcgc2VsZWN0aXZlIGZl
dGNoL3VwZGF0ZSBvbg0KPiA+ID4gc3RlcA0KPiA+ID4gMj8NCj4gPiA+IFBsZWFzZSBub3RlIHRo
YXQgd2UgYXJlIG5vdCBkaXNhYmxpbmcgUFNSMiBhdCBzdGVwIDIuIFdlIGFyZSBqdXN0DQo+ID4g
PiBwZXJmb3JtaW5nIDEgc2VsZWN0aXZlIGZldGNoL3VwZGF0ZSBpbiBiZXR3ZWVuIHRoZXJlLg0K
PiA+IA0KPiA+IFRoYXQgc2VsZWN0aXZlIHVwZGF0ZSBtYXkgcHVsbCBpbiBwbGFuZXMgdGhhdCBh
cmUgZG9pbmcgYXN5bmMgZmxpcHMNCj4gPiBjdXJyZW50bHksIGFuZCBJJ20gY2VydGFpbiB3ZSBk
b24ndCBoYXZlIHRoZSBjb2RlIHRvIHVwZGF0ZSB0aGUNCj4gPiBzdGF0ZQ0KPiA+IHRyYWNraW5n
IHRvIGluZGljYXRlIHRoYXQgdGhleSdyZSBubyBsb25nZXIgaW4sIHdoYXQgSSBsaWtlIHRvDQo+
ID4gdGhpbmsNCj4gPiBhcywgImFzeW5jIGZsaXAgbW9kZSIuDQo+IA0KPiBPay4gWW91IGVhcmxp
ZXIgbWVudGlvbmVkIHVhcGkuYXN5bmNfZmxpcCBiZWluZyBlcGhlbWVyYWwuIFNvDQo+IGNoZWNr
aW5nDQo+IGJvdGggb2xkX2NydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCBhbmQgbmV3X2NydGNf
c3RhdGUtDQo+ID4gdWFwaS5hc3luY19mbGlwIGlzIG5vdCBwb3NzaWJsZT8gSWYgYm90aCBhcmUg
ZmFsc2UgdGhlbiB3ZSB3b3VsZA0KPiA+IGtub3cNCj4gdGhlcmUgaXMgYXQgbGVhc3Qgb25lIG5v
bi1hc3luYyB1cGRhdGUgYWZ0ZXIgcG9zc2libGUgYXN5bmMgdXBkYXRlIHNvDQo+IHRoZXJlIGNh
bid0IGJlIHBlbmRpbmcgYXN5bmMgZmxpcC4NCg0KU2VudCBvdXQgbm93IHZlcnNpb24gdXNpbmcg
Y3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gSSBzdXBwb3NlIHRo
ZSBkaXN0aW5jdGlvbiBtaWdodCBub3QgbWF0dGVyDQo+ID4gdG9vIG11Y2ggZm9yIHRoZXNlIHBs
YXRmb3JtcyAoYXNzdW1pbmcgaGFzX3NlbF9mZXRjaCBhbmQNCj4gPiBuZWVkX2FzeW5jX2ZsaXBf
dG9nZ2xlX3dhIGRvbid0IG92ZXJsYXApLCBidXQgd2Ugc2hvdWxkIHN0aWxsIGtlZXANCj4gPiB0
aGUgY29kZSBjb25zaXN0ZW50IHRvIG1ha2UgaXQgZWFzaWVyIHRvIHVuZGVyc3RhbmQuDQo+ID4g
DQo+ID4gSSBzdXBwb3NlIHlvdSBjb3VsZCBoYW5kbGUgaXQgY29ycmVjdGx5IGJ5IGNsZWFyaW5n
DQo+ID4gYXN5bmNfZmxpcF9wbGFuZXMNCj4gPiBpbiBhcHByb3ByaWF0ZSBwbGFjZXMsIGJ1dCBJ
IHN0aWxsIGRvbid0IGxpa2UgYWRkaW5nIHlldCBhbm90aGVyDQo+ID4gc3BlY2lhbCBjYXNlIHRv
IHRoZSBjb21taXQgY29kZXBhdGhzLiBJIHRoaW5rIHRoYXQgY29kZSBpcw0KPiA+IGNvbXBsZXgg
ZW5vdWdoIGFscmVhZHkuDQo+ID4gDQo+IA0KDQo=
