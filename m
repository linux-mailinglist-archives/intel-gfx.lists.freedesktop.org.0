Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A794A1B554
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C579D10E07C;
	Fri, 24 Jan 2025 12:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UgTZsHkR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBE610E07C;
 Fri, 24 Jan 2025 12:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737720583; x=1769256583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8I/BIWls4u4dEd0sQ1LVnkQ0wg8uGQtrHX7pqPkesyg=;
 b=UgTZsHkRaPmAMrHFr7VR6w41jMlFzH4yl5YTwjAM38PRP410q1u6ME8M
 27AxQdPacE4dKlss6XuWS36g3rgEbGVwlAJ58ooBxAmjsn1l0AETntDYC
 XIt0VZwRC1E/PkQrIuac7/pqYJSKdzINSDttuRTz4oFhGUxyDDTP3StaZ
 I6Y7Tpf4JE+8q7z2dLc+ZX+EVsLXP4Lj276V+4+B/Yf0Jg9Z4Q2UjVgfP
 /3ZsR+TXIO5i4HGWFm8TL3fVb4SjpXktaFunPn4nLpBbwu63bIHrEwpK+
 9C/Mx6go6c3S4WIWoeCmYM+DFgpaO7r3I80DIl47sKhw+B4wSs+8lAn1t g==;
X-CSE-ConnectionGUID: y59OVOM7Q7WFM1wQefGfIA==
X-CSE-MsgGUID: 2fvwa+kbSV+KtLTllmCNwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38417089"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38417089"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:09:43 -0800
X-CSE-ConnectionGUID: NX1fUrxnTvKGccoWqzAtlQ==
X-CSE-MsgGUID: tKFFCFpPS92sTksdrfjNVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107877347"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 04:09:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 04:09:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 04:09:42 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 04:09:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AqIBLsKwjvAQ/6a4egFpIOn5rKr6EXYE+lFTnG2RezBIJaPxWtPX5KAtP3Iy8prqYdw5R8mh958dR+e8D/Bqkl0Ss1fvEiLZc8kPeTNkAkHP7yUYj1LMvNjJvFetCR6vCK5XsWoRTrJcOXCXGAhL/wralcOvA2v45osqoghBa//Db4dpPPubkDNjhtFeWfXRnOrHeDhBtjYTLTH8daoFBVQ2UcpH/vmZbJZTy8u1vDHkZTjaiNRUOj3AozvI/4oMTLVGQbhgoz0+twxTQNd10AWEajlabqPdcfe+8QPxtlur6esEP+PVOSJjQB96QbCcuKxsnrJdCQVPojoHgeLKWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8I/BIWls4u4dEd0sQ1LVnkQ0wg8uGQtrHX7pqPkesyg=;
 b=ythh2otVH9hOmxtYm2IDUJakI5uKdLE4OeL6JnoM2f9o0hGCVIAV+n7d0jTa/4tzIraeJCp/GKfjPv5oO7y778NkBoqwnXk5xH9KP6ndvm0VpZk5HsyR6MQUHXqU/ZlCsYqU2Lz0mER0F4+UeFTLFkEgbFsV5akq7qTNoOelyQKSe42SPkKxW735RVnXyt6QW8zWL9ytr50wZVQay2a/Ult+jLz+TJH0wzqSDi/11LIRRln4BqdOEXKoqZm5IowBs1ANkrkn9nRqHH0jD7LTqps1nxu1nRmIGHDH4bUrROgnnPqmGAweAJ7/r4JMaFn3Z1SWD6sW4QfuQMaMr3xDvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.17; Fri, 24 Jan 2025 12:09:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 12:09:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Topic: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Index: AQHbbk632Su34OdA6UueN9SkZTlGELMl0JwAgAAEdAA=
Date: Fri, 24 Jan 2025 12:09:39 +0000
Message-ID: <f11a7d44d79533b0f1469277b2225b3bf1878825.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-10-jouni.hogander@intel.com>
 <Z5N_RgaVKLgHAeh2@intel.com>
In-Reply-To: <Z5N_RgaVKLgHAeh2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7522:EE_
x-ms-office365-filtering-correlation-id: dce40985-afaf-4f8b-d643-08dd3c6ffa8d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?N2pwaHl1NGlUYlYwOG91bDJlUG9oc1ZjOWwxR3ZMWXp6UUlPRnFGaU9MLzVk?=
 =?utf-8?B?ZFB6RWw0S09RSzA3d2Y1QzYzT2ZsMnphVlFkNjRTY3VpQ0RhVFAwTTVWMDBO?=
 =?utf-8?B?dkVxM1poUE05RHVNSlRXTlZNK1ZISTFTaDJXcHdUM2xFaTltb0VRWmw4bGZ3?=
 =?utf-8?B?alBuSHBHM0p3eE4wKzFEeHJydnFZbmUzblg4a0hxMFJqQlYyckIrQVlSLzd6?=
 =?utf-8?B?TkxtYUFQWHZiZFowRnZxZzlSMTNnSHNlU3JYdzZvRHcvSFhTckpqd2QxbGpB?=
 =?utf-8?B?cnM2NFh6NWlSWmp2Vi9XVXM5amRyU05WQjZGVWlCbUF4T1BMZGV1WDcyNXBs?=
 =?utf-8?B?ZnkxWFB3bW1HS2MrRlVZV3U4bmRLRXFBeUFMTTNKOGlsMWFURzR5Wm1rbVdO?=
 =?utf-8?B?eGdEb2paS2Mvbi9jL2Ivd3hIbXE2MncrODJLTEthWC80MFZKTFBORzQvREJx?=
 =?utf-8?B?NEdTb1F1SGljbE1lVGtNN1EzSWtxYTlwVlpFU3RJU0p0QTJpMVJpSGhmWm5o?=
 =?utf-8?B?V3EwMm92MlJWRzZ0bklXZm5sdGlaeVpCNmdjQlpoQVRwN1dZN0trckQ2SS9W?=
 =?utf-8?B?REwxM3hadWVqVWovRDRIZTFJSTdjOFRzUzZzbENxWFk1Y2lSeUpPSGsya2Vs?=
 =?utf-8?B?emFrTkpUZW02QllwTEFqTmVDQTdsRVh2UWs1aUpPN1d4UUU0MThoYUlRaEdu?=
 =?utf-8?B?Z204Yk1JSHZhRk95T0VYOXl4SkE2VmZVWmlLUFZNYVNLQXFqQkZaSktJK0tM?=
 =?utf-8?B?dWhxcUhGZFUyaXY3RFcySmIrMEdzNFdkZkZrekVaUXcxRE9hRGorUm9KRGx6?=
 =?utf-8?B?VmNwcHdmWUJSRDVpaFROL21rb3Jybm5WdE81VXNOTTZGK0JsT0FQYmsrSGc2?=
 =?utf-8?B?QUd2SXpsVmwyb1UwUm9NSXpJZkVRdjJsVkNienl3VnBKaUhmU0FkNWFjNHRq?=
 =?utf-8?B?OVF5cGFvYzY1dndJbW5TSHQ1bHZBbFUwdmxtWlhhVTFSTkhvYndpUjlPZFpC?=
 =?utf-8?B?TzdGL1NRVU1aNlozRFhabUtYaWg4NEdIc0tjWTNXQWV1V1NlS2NFSzNLbnNv?=
 =?utf-8?B?ZXpWMi9hY05IMk8wekhTMm56a3VwTWhqNFAwQ1V2cGJOR0dyZWFsYU5MRFpz?=
 =?utf-8?B?R1lHZXJsQ2h1U0VZRmR3dzNYSzV6SGtjUTNESVdGUlpabWNKTUFwUTc5amhp?=
 =?utf-8?B?QU50b2FPV2pqQk5EZEw1RW9jbTBpM2t4RGhWdVhDUGM5ZEQ5b1RSOEdWdWJy?=
 =?utf-8?B?RDhIYVhZQTIrZEQxS0tiZEhSYXo1TitxemE2RHJaeWFwZEthb29EWVh6RG9v?=
 =?utf-8?B?WlN5ekkxNWRkWU9mRW1QcUdQN3Fwak03eWszcTQ2V0lMQ3VFc3dGNjErNmtn?=
 =?utf-8?B?QnlhTEw0MmRNWEU1UklZa3NEKzJGVStMOWkrMmJ5RC9xMVl6TmFCcEJ1NEZi?=
 =?utf-8?B?aUg1REcxRnFIWmpsMndoOVNhd1RyY2ZjWHBBVnRXSVY5K0ZRQWNkWHJJZnlv?=
 =?utf-8?B?QnVQNm1vOGVtRDJJTGNIK2tnanZRTUt0NEVUM2RtMG1iMFpNSWJLdW9kWm5o?=
 =?utf-8?B?bGZuZEVmbjRZeC80NnBtczBJb0NBdFNWZW5zay9Ea1hZUGtVazc5NldjWUVr?=
 =?utf-8?B?N3R3Mk9XSkZFWXJzQ1M4NTRWZTlRbk1FVEwwNDRNYjU2U3NZZlJTVkVMbGlE?=
 =?utf-8?B?S3hneTFESytTRGhiMFE0S1NIRjV1cVNKQVhjR3FZWXYrelg4SFlNbXFSYlVr?=
 =?utf-8?B?cmdmT2JRZ3JEdlNyY2VOMmhJaHRpQ0k5QXRCR3hRSHlUZ1VrdGZrdXBUTDhl?=
 =?utf-8?B?VUM0TUF6K1hwTkJwRmpGbGdKVU1rRDZPdlM2bWsySE9jVmRIRnNjV09kNWZB?=
 =?utf-8?B?UkNrcGtRWlV2NCs4bTY5QVBoUU5sczBCa2pBT2p5VWUrTnpZc0NzNUp0cmJR?=
 =?utf-8?Q?eFPxWDDn3wewOXRxJIW1cq48tWT+40mv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3NheWlRYVo1eHpic1kvbUFaa3RkY0VQdUR1TmRReEtyTktVWFpaSWpEa2hH?=
 =?utf-8?B?c2F0RTh0d0xNZ1U3S2hZUTFRTGlYVUlUTWxDZXp3QXhYSjY4VmFKbW5CaXpy?=
 =?utf-8?B?V09hbHFIU1ZUT0FxakRwN3dhcnZLOSszcVJMRTFBNnBZOGFtSzlkSm1KRWN3?=
 =?utf-8?B?UENWV3hSYUd5dmdqdmtBUUN1L0I3R293MW9MK3lLcU12L0ZpbThOdEcybndP?=
 =?utf-8?B?cWtRdUJuM0piYloyMHI5YnN2M3JCTldaQ2F3dEJNRFM2Z3dMc3JGMVZ3OXd0?=
 =?utf-8?B?VmJ4TlhKbEtNUHFYMk92ZHdqRUwvNWF6SWV2L3orYkZMMjkzdmlhV2p0ZjE0?=
 =?utf-8?B?cTlvczB4cmMrVHFzYkJ1Mmswa0U5aEtrSjJpT1NlaWg3TTZnYW1LNFZBeHI3?=
 =?utf-8?B?d2VGazRlK01IdGJOeHJyRGhuM05NNzBWeFhwemE5aDFBcjRhbjlFSkhCalZH?=
 =?utf-8?B?NU1LMVJrQ2ZrMjFlZEhRWTJSY0JxT041K1FvZHl5NkF6bE1sYXFhRTN2cklX?=
 =?utf-8?B?UXpUSWJZd0FwQktCV2VXVnM0eTg2cDhmNnErME5NRE16TGJWaCt0N1lhTEtm?=
 =?utf-8?B?QmlDS0RCeHR3YVcrSysvMGFaRzIrTCtBWjBnMkk3Ti9VU205dlc5V3hZQW1w?=
 =?utf-8?B?RDBIUkxUNWdFWVZIa3E3Z1M0dzRtVDF4ZFA3QUxKdno2OTlYTnVjdlh4TkVE?=
 =?utf-8?B?Uk0vWldtLzBuWGNwM0RCSGdLaWdoTjllZ3Y2OW5DdHNzdzgvbElNWTlQelc2?=
 =?utf-8?B?cm1KTHQ0Y0dsVDBxTFlUNmVyQ3VMVUIwWmdBa2kyTFlvOXJORUNGRmZGalpM?=
 =?utf-8?B?aE1ZVGVIMXd1dUxDYTFCcTNnaW1IUXZYNW5rdVdlalpTUkNrMGJtVlhHWkVT?=
 =?utf-8?B?d3psNDVtVG15bTl1ZWFuL2l5aDBpU094a0lJTnJ4R0hKRG1DTnRlQVNGTHRL?=
 =?utf-8?B?dEdDdlMyZHJWUGdjcG5UV3ZoSkl4RDdLWmF4U3BqS0lXcUg3bWREeVRJeVpx?=
 =?utf-8?B?dXNyUzNNQ2pnYzB4M1UvVU1lYWJPUm56ajlvUDd5enN0a0xvcDRYNkdGSkZO?=
 =?utf-8?B?NXFjUjJyajVyV3VLbnI3ZFprM3VFcmNQeWRjN3paeHQrblVIZWQ3eUZCeFcz?=
 =?utf-8?B?eU92b2VwYXh4Yk9OSTVqRnIySnVwMldzM0c5SU8rdlpITUo1QVdTQVVGTG5L?=
 =?utf-8?B?blA4TXR3SFZLcFAzRjk1TWxaZGZpdWZBY1d6T0ZwVXRycWwyTUdNaHJkd2Uw?=
 =?utf-8?B?WmFoL3NhQWZYV3ZPWkdjUnIxNy9ZbGVCRkRPeXFjMTBzKzFRWUNiK3dlcGg3?=
 =?utf-8?B?Z0ZSRkIxN1IwbENscnZZRDBYMGxITG00d0tYaitGQXVTRVA0cW13RWR1ZStp?=
 =?utf-8?B?RmcwQmhCTXp6bVNNQUw5c2JDL01QanhmMlUyN0hPbWZ5RFY2T1JpSjlyTUsr?=
 =?utf-8?B?eTJoQm42bnR6MndxQ04zbUZwYnl3U0lvemd3b3l0ZlhwbjhvZzNENHdqd2hY?=
 =?utf-8?B?bG5QdjI0ZVR2ZVFpTnkvN1IyaVZXNDRvcjF3WXhJcEVMdUVva0o4aFZpWEZm?=
 =?utf-8?B?bkhRUHE3QkM4aUJSMWcvMFk1SXdaelM3RTNNeUUzVGJoTkhkMkNhUUd3dVlq?=
 =?utf-8?B?RFJKZy90ejJ3WEtXMWZBSlRSV1pMUWZjVGhRVXlnRmc4dXI4MkhSMEhyRkRO?=
 =?utf-8?B?UHA4dzRWdU9nUDdYd1UzNFJnRnFSMVloV0hBOVpPR05tRHF4T0QvdEd3Ritk?=
 =?utf-8?B?ODd6U2lXWWNIaFQ5Z1lTSkdLL0Z0QmUrekJxK20xNGtSZjVzeFJNUEFwdTdM?=
 =?utf-8?B?SkJGUGVhYnBvMEM2WW9QRDkyL2wrQ0dmdkpON3V1bWFzSC9kUVYzZjFZdG5D?=
 =?utf-8?B?VFdtbGhMdWNvZythcG5MYi91RHZqWFIrT1lRM2hKU1BLUnpVcXBSVUNyMmxr?=
 =?utf-8?B?QkpvdnFrTjArdGVmeUZMZkpkejczNEpZaklHYlNjYytheTNyUGR5WUp2Tkti?=
 =?utf-8?B?Ky8vZ255OVZ1MG16bG0yQ1dxVUM2RHp2V3NKWExjT3BQc1hST24zN3NMWWw5?=
 =?utf-8?B?RE54Y3BXRStZaE9lOTJ4VE95RjgrMzk0N0pJWUtDL1hVWm5oUTNPd213QU1u?=
 =?utf-8?B?RkhpRXAvNHJPMW9wM3ZyM1dyZjlvQkFpU1Bzc3V5NHBNWGRqOGRSTGVtWGxX?=
 =?utf-8?B?U2VCTlJ6VXdyM3A1WXhPQVUzRmVRMkNZVUVUTkVIejNnQlFVYVpKT2QwdWE0?=
 =?utf-8?B?eERyWGZTNCtZb09ZU3ZNVEpDcGhBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <765CCD2F54ACAB41AC62DDB78D1BF98F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dce40985-afaf-4f8b-d643-08dd3c6ffa8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 12:09:39.8637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N515qA1AdzGMEj1zMrmIYFWOB1S0CgFkOTbSsS86Zt8SE6RZHKTiqxf3+94sDiLdDTfjzLyz0gPPcXwRmxvfCL7olXcZ/GCR/nakEJfcNaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7522
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDEzOjUzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjU2OjIwUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBDaGFuZ2luZyBQU1IgbW9kZSB1c2luZyBEU0IgaXMgbm90IGltcGxl
bWVudGVkLiBEbyBub3QgdXNlIERTQiB3aGVuDQo+ID4gUFNSDQo+ID4gbW9kZSBpcyBjaGFuZ2lu
Zy4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDNhYzFjYzlhYzA4YTgu
LmExODlhYTQzN2Q5NzIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC03NjgyLDcgKzc2ODIsOCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+IMKgCQkhbmV3X2NydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfdXNl
cnMgJiYNCj4gPiDCoAkJIW9sZF9jcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX3VzZXJz
ICYmDQo+ID4gwqAJCSFpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYm
DQo+ID4gLQkJIWludGVsX2NydGNfbmVlZHNfZmFzdHNldChuZXdfY3J0Y19zdGF0ZSk7DQo+ID4g
KwkJIWludGVsX2NydGNfbmVlZHNfZmFzdHNldChuZXdfY3J0Y19zdGF0ZSkgJiYNCj4gPiArCQkh
aW50ZWxfcHNyX2lzX3Bzcl9tb2RlX2NoYW5naW5nKG9sZF9jcnRjX3N0YXRlLA0KPiA+IG5ld19j
cnRjX3N0YXRlKTsNCj4gDQo+IEhtbS4gRG9lc24ndCBhbGwgdGhhdCBpbXBseSBhIGZhc3RzZXQg
YW55d2F5DQoNClBTUi9QUiBkb2Vzbid0IGltcGx5IGZhc3RzZXQuDQoNCkF0IHRoZSB0aW1lIG9m
IGVuYWJsaW5nIFBTUi9QUiBjcnRjX3N0YXRlLT5oYXNfcHNyIGlzIHRydWUgYXQgdGhpcw0KcG9p
bnQsIGJ1dCBQU1IgaXMgbm90IHlldCBlbmFibGVkLiBJdCBnZXRzIGVuYWJsZWQgb25seSBpbiAN
CnByZV9wbGFuZV91cGRhdGUuIEFsc28gaW4gaHN3X2FjdGl2YXRlX3BzcjIgYW5kDQpkZzJfcGFu
ZWxfcmVwbGF5X2FjdGl2YXRlIHdlIGFyZSB3cml0aW5nIFBTUjJfTUFOX1RSS19DVEwuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiAsIGFuZC9vciBtYXliZSBhbGwgdGhlDQo+IFBTUiBz
dHVmZiBoYXBwZW5zIGluIHRoZSB7cHJlLHBvc3R9X3BsYW5lX3VwZGF0ZSgpIHN0dWZmPyBJbiB3
aGljaA0KPiBjYXNlIGl0IHNob3VsZG4ndCByZWFsbHkgbWF0dGVyIGZvciB0aGUgc3R1ZmYgdGhh
dCB0aGUgRFNCIGRvZXMuDQo+IA0KPiA+IMKgDQo+ID4gwqAJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+
dXNlX2RzYiAmJiAhbmV3X2NydGNfc3RhdGUtDQo+ID4gPmRzYl9jb2xvcl92YmxhbmspDQo+ID4g
wqAJCXJldHVybjsNCj4gPiAtLSANCj4gPiAyLjQzLjANCj4gDQoNCg==
