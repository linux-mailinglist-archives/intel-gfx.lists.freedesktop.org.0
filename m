Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMlVEj0/DGqqawUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 12:45:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 210BC57CB5C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 12:45:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AF310E4A7;
	Tue, 19 May 2026 10:45:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWqK7Z2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E82910E4A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 10:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779187513; x=1810723513;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5BsVFDx3ie8tBNZwE9teXy+lC3nvzd5GMtsolGVOLNE=;
 b=hWqK7Z2YAPThBmq/CYumyR3iZfaHev4/M8+KoXvGgMWm2pfZwJADOJzx
 Jht4gINfKKhTJ6yoZ4fG2IxnNLbp3/tVVt4MPoM57jX//R5ukPGPTot1D
 E9n5gSH4iT+VykgT3OhJilOvL6d+lrrxIyscmZyj81btDtXvCDx9ZEPWl
 G64rCcInh7NyrEoxWKwIfg0ZyCrp1A2SdTFZQE79XZ8fCD4BLNQpAk66x
 POuyhY4PI7Hou7qQEPpc8DcBQ1BZkk6Zrfyt/0d22cCLlVsvMxM6UlKuE
 CkujdYgD8mLuFzc4DtJbh3W1o/+SURVZM4XuQF0aQ/vH3nMTR2wTBaHeJ A==;
X-CSE-ConnectionGUID: Y1q7w/5UQjSI4QyoaQSOEg==
X-CSE-MsgGUID: zS8glaiJTo2QLTgWzXnk6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97628795"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97628795"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 03:45:13 -0700
X-CSE-ConnectionGUID: XwVYhF9HTwa3gCN9zrWFbg==
X-CSE-MsgGUID: xVP9E6mdTFe4DWkYOEapXA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 03:45:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 03:45:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 03:45:12 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 03:45:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MPPt72IQ6QD5A8TQLx33bH+hFblyjJNyygjZFhVTR68Gdb4BDXSvdMAgbx7nsLdmxH0KzMMXIO3HccfBbq6RN96w20eJwa/3U2ROFHl3MEh3lOOCATn5X4fCXxTc8SBgvOBT+m6ZF4uO99Q7kTBM0Ck7R8AfoYfgDDbuYdEO7AwhUXudFJ0jyVKQiu+7B86h0agAEQltyicVK7Y8n962SSsh9lEwPW8nVqrx7GaOCh/2Y8yJpvW8bNFmMa/A8WLPsiBkNqBKGvEfj364Jsz8byi9KIK9AhhbSTsc2sf1WEAk64GcSzaVbz2yuV4qSS4lorUHDwZmOZ1HaCdvWTMlyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5BsVFDx3ie8tBNZwE9teXy+lC3nvzd5GMtsolGVOLNE=;
 b=cPOw1WfFwqSGyB+BMm6eM5I9+AZFGt+yH1h8yzSJ2ClzyFl6MEgPH7V4wE5s3/b4Y8VHFs/vd3cz8nSmjU0geO/ft0NQ9LH3B7lziRSDmrbZD+KQVoyGkLjydMjWCH7Kv9gsrCH0Kb+aBHP+N2ifTtcWuX0P/sX/vTExV6DQD7lsT56tAJH6dFTMGVc2R/h3fpru8YcNs/9fsE1hUKSyXxTD6Dz3AvPgGVgRGcxoumOvSDEMXVyt2Zso3Zgald/6OP/hLF2krAUr1qzv1MftkYPaFnCXHfRhGRQPslFnFr4Fsr5jHqggDwcayFc+xdtppoaiKzMMfZhHI3H5GxkgAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by BY1PR11MB7981.namprd11.prod.outlook.com (2603:10b6:a03:52f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 19 May
 2026 10:44:49 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3e15:8d62:5e58:a513]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3e15:8d62:5e58:a513%2]) with mapi id 15.21.0025.023; Tue, 19 May 2026
 10:44:49 +0000
From: "Samala, Pranay" <pranay.samala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "B S, Karthik" <karthik.b.s@intel.com>, "Lattannavar, Sameer"
 <sameer.lattannavar@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/color: Fix HDR pre-CSC LUT programming loop
Thread-Topic: [PATCH] drm/i915/color: Fix HDR pre-CSC LUT programming loop
Thread-Index: AQHc52L7u6RkTMSkSkCmRAaKD03xtLYVH8YAgAAJv4A=
Date: Tue, 19 May 2026 10:44:49 +0000
Message-ID: <PH7PR11MB60535E42739BE2C82382BA8CE7002@PH7PR11MB6053.namprd11.prod.outlook.com>
References: <20260519075245.383864-1-pranay.samala@intel.com>
 <ff124be8331d2c720c6369d85316fc95a325437c@intel.com>
In-Reply-To: <ff124be8331d2c720c6369d85316fc95a325437c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6053:EE_|BY1PR11MB7981:EE_
x-ms-office365-filtering-correlation-id: d9de626b-7015-4286-fdc0-08deb593a674
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|4143699003|38070700021|11063799006|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: /nzj1fByBcN5j4NM2zoVZreLcqwhkfwZULFDUmcmB2vTsHCHxcfGHsTkh6YwM0JVYD8LXpzJBP38tuO2j0mPhP+6bZe1Y/jJKqXQ3QDQQj4BuwtNrIa6kDr1AzDBMImgIwekvAllosR69EZ5Gr+lCA0jyZOajdYsCy5Dc6NLItPM1xHmj9Ey2xUdxCqrjcUNffzS1jGfiLvh5h/E1dJ/nFmIB55moL2u3tIWdXgqSBuwbMiR3cmOdJscKbVlQqQK29g29mF0sr/kVUtuClEg6A+gfxNkXTO8ha5wZO7LpXQRS9HzSV2kB7wxbz3nipSMgSh79xcham7KfT1RbV9yD1Mxb8fuaGUUKFoDZIlogaBpTqE6o5rsAXaF+19ZasoDfQS89+VWWnyzS39tNQL9CoBWD7ABlbZE2Dplo/nq6KlBwhOov/coqVQgYSVSInwZVAQCacVIUfEu4FshOXhrdycFSldLukOC74vIWXvcIZUTU7L2htVmcgXqJd+oz+Pj5PAyoSv2mTNM3ffFblgEuLbF9AwpoivbNaPRyv6qsHPbIkthEL8yhdpJ9WMLUBN+4znldKl/7dG0l9ME+P1o0jmkAEll2KLX6EeVU4cR1aWX652f3YpZ0jedbilXeHAWd5ubBpXuNwxxCxY80Pmi6ADHIuvxCYOEkIwU5BRnWwNlRXoc0t4cMamjVREPTKQkAPXozWZorSTljK3z579aYLcLHYSIlEXDKlU8Pxnt8QbZY1sr5WQnRU1XoFDY27l4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(4143699003)(38070700021)(11063799006)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHZJdi9McFk4S2IzS2thbHd1U3NpME1VTmtaRkZDZUJrNnFGbzhhVzg5Yjdz?=
 =?utf-8?B?YlFIcFI0bGFOTGFKZUhZU1ZlaERMTEtIdVJCZ0tjaEdsL3ZMTTJ1VS9HYnhw?=
 =?utf-8?B?T0pSVktBVmZrVmFOT3N6Vnd6Qkxoelo2T2U1U1EvelExTEVTUXhyNzVETGFF?=
 =?utf-8?B?Yy9nWDd1d09MMTZSYnBGQ3U3YTlDMHNTb0NoSHRHenlyUkRtUHJYVUlyK0hG?=
 =?utf-8?B?R2NQMGx4cXZ4L0RXZTlvL3FVdldSNWJmWldaMUExUVhZV0ZWNzhrY0hvQlVT?=
 =?utf-8?B?Q2djVEg3WG5RMW5hcktQQVR3ZlRqQWpaUnA2MUFNZkkxUWVoR3BrTTRXcHpa?=
 =?utf-8?B?OFdsdFY2UFZwTGdHSCsxTDhzdWFDVU5vNEJMRHljRGJsWDBIbEVBeFVqb1Ni?=
 =?utf-8?B?djk0L1RxblVIeUluM1VsbTVDQmtsM1RVSGNkdUd2eCtQbExnVUlGYUJIZGNp?=
 =?utf-8?B?UDdLVFN4cnlWYml2Z0pIWDZKd2todml4Y1ZyQm96RlpmeTY1TGd3NmNVekds?=
 =?utf-8?B?ejVIVGZMK2RsQnpkRzBSeDQvZm9VSWFBMnJnbmVWSmFWbUJqN1ZSL2luV3RR?=
 =?utf-8?B?UUVpNFRLaDZodDYxbG5nd0RTL0dMQjROaHhMMHV5VldENEpBTHR5cks0R1ho?=
 =?utf-8?B?QXgvT1B6N2NGQ3pvejJySWlvVGZ1VFBjL0loMlhrNVp3eGxBSHlrSlh2ZjZV?=
 =?utf-8?B?N1Y5K2NDYk5SMGRPMzR5ZVdSTWdLUThTTmRNZk5kNU1tOWtUVjlPcDJzTVM0?=
 =?utf-8?B?MkcwMzJSRW42WWVydzd5ZFdZMnBQR044RmxxV3lMQ3pKOTRHTkFOYnBremxt?=
 =?utf-8?B?RENmT2N4NWsyd0FZb243WVZ2cmpiMWFKSFhSNXlFUE5LNUZYNWE4NUtHa3RV?=
 =?utf-8?B?Q0dxUnZ1dTdRSkZpQlZ0MjhPVW1NdFVJTmsrNHV5SkoyS1FCckd6MEMxbWFS?=
 =?utf-8?B?ZFR1WGhoMVJhMXg2dHhjRTNuRE1CRWEwa0U2RUFpaDBQQnAvdXA1cGE4T2xG?=
 =?utf-8?B?b09wNU9sQUdsNTRHZnpEOGEvZHRWS2JMUVRmdTF4QS9yS0x2bGpPeHhxbjE4?=
 =?utf-8?B?dWpxU2VpWW1RWlFOa21IZ3hGN1c1ZTl6SVNraDJvN3dueWF1NjIrN2ZxTVJP?=
 =?utf-8?B?bWpJMGJGbEo0UGNVN3I3aDhob2NtZm5aUGZwMWlGZytIQVlLSE52ZXB2b2x1?=
 =?utf-8?B?QVdnZ0RWZGF3eDROY2YzTTNYckxEWjNpMnNMQkdjUERMOFBPMzBMUTZtNWRh?=
 =?utf-8?B?TE9VaE1ENDFEM1F0amNLUGNvdkJ1L0w3Z2FrOUxzd2RwdzV6c002aXVHTTFu?=
 =?utf-8?B?L2xOUjdEZ2FZNTlIbVFJSUJQdkE0TENOLzc0TzBxUkJMSlVBaHBMTE1xY3Yw?=
 =?utf-8?B?UGpWdDhvZkIyTUcrSGtxSTFZbGxXZHd0SGxVOWNRZWxOQmMzb055YWtZN3BE?=
 =?utf-8?B?WGthU1IwSllBU3NQbjVwcUZkU2VNalRHQnk4ZThCbXQ5OGh2Um5aRFB1NFhN?=
 =?utf-8?B?N2VlQ3FqNHQvbERnYUhaQWFaa1RGYlR0WWQ5NjBZM2xpVGoxRVAwZXFmQmRa?=
 =?utf-8?B?anViSnN1ejRVNlBQZit2NWtmOVJjRzloTzlOa0ZaWXVHWko5NEhVVFNkV2tw?=
 =?utf-8?B?Y0RZZEJXbDNDa3RsZDhMZ1UrNEV4Tm1MUVRkN1NzOHZrcFFucDYzMEppMS9i?=
 =?utf-8?B?Q3pXdGNFRTNEczFIdkNyWDhMV2pXaDRyNGVzSkJHSEtiY2hMQkFTcFdwZElx?=
 =?utf-8?B?QU1Od0lNVi9BbFFqbDgwbWxWU2ZjcUcvSGRDd3MrcWRWeC8xczRlUUIyMVFJ?=
 =?utf-8?B?c0VhcWdIdGtUZm5YcVYxRmFjOWF2SG0rN2E4U1gxazhKU3p2RkJiWTBMa2RD?=
 =?utf-8?B?WUtMa3BnekNWQ0JaMlZzUXMyTXR6QXdadk1sZG5qLzgzNWtGeHpsOTc2eWdn?=
 =?utf-8?B?SkpvU1BpY2g0OEZYSE9GbTBZL0FKak9pZnVGQ0NEcmw1ZU5yYVBwcU85UXoy?=
 =?utf-8?B?K1BlS1BKcWNxWVI5aGZjK3k2ODB4SnVORFB3Njc1dVlkZTRaSzFiOU94Ry9B?=
 =?utf-8?B?RG1oUXVmK1NEZnBzOXRDa09OWGVVQ2duTkIwK2o2d1NlaWcwZFYzZS9NR0s2?=
 =?utf-8?B?RENNWFY5L1hGZGExalA0a3ByM0RvVTlCa0twNFpVdEtkQkUydHBkdnJpSm5Y?=
 =?utf-8?B?QmE5WEtuMmtUU2NuM05SelJyOU91SU5aRFNPbUVyUHlkRExITGJ5WXliVTFG?=
 =?utf-8?B?NnVsVDdnU2J1dzFBcmdPbmVuUndkb2UvUU9lMHQzdXRxays4TWExbEJnODFm?=
 =?utf-8?B?WlZRMTlPaEtZYk5wR3BnOWVseVNnR2Z3U1hSeTdkYkF6MEFDVDU2Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gZGAK7OJnUmEIxu+uBm4ZHQWfFN47jUIZ42jy97ku3ORv/lraZpEQttaD6YtNHUUL3WI9ZwA/U7INMajhCyrnpvtk0pt3i41BodCuqw30a++zj1IhlKr3m3of/RryXpKmH1GkDvfw8Xr7ryMogFT3qMUyiRppjuODQEtaMM3QaRw8qOQvAGYsLiOcMwUiVUSxT8vQoGcNEZGceKPxt4DQNrKvMVS9tkQ3lw7r22/mrb5HJMWQSb+Nsscp4CUna24ydfc4Tjuo49+75KVen8Kz1Joex9rnxeq70fDTfWKtKD4M26rfMxyobsZmnmRsajLFJ0+PUjFyaRF/2n13j0wkw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9de626b-7015-4286-fdc0-08deb593a674
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 10:44:49.0301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zqX6rpnFpb3TiaN2tV88/uFZ3lQrKMmyzT+lVsrdNUAZs9xPnsZGHBAKoihq/xDjHm1fSSuGC6iCSCsGlZ3gMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7981
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:karthik.b.s@intel.com,m:sameer.lattannavar@intel.com,m:stable@vger.kernel.org,m:chaitanya.kumar.borah@intel.com,m:uma.shankar@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,PH7PR11MB6053.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 210BC57CB5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWF5IDE5LCAyMDI2
IDM6MzcgUE0NCj4gVG86IFNhbWFsYSwgUHJhbmF5IDxwcmFuYXkuc2FtYWxhQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBCIFMsIEthcnRoaWsg
PGthcnRoaWsuYi5zQGludGVsLmNvbT47IExhdHRhbm5hdmFyLCBTYW1lZXINCj4gPHNhbWVlci5s
YXR0YW5uYXZhckBpbnRlbC5jb20+OyBTYW1hbGEsIFByYW5heQ0KPiA8cHJhbmF5LnNhbWFsYUBp
bnRlbC5jb20+OyBzdGFibGVAdmdlci5rZXJuZWwub3JnOyBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFy
DQo+IDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPjsgU2hhbmthciwgVW1hDQo+IDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2Nv
bG9yOiBGaXggSERSIHByZS1DU0MgTFVUIHByb2dyYW1taW5nIGxvb3ANCj4gDQo+IE9uIFR1ZSwg
MTkgTWF5IDIwMjYsIFByYW5heSBTYW1hbGEgPHByYW5heS5zYW1hbGFAaW50ZWwuY29tPiB3cm90
ZToNCj4gPiBUaGUgaW50ZWdlciBsdXQgcHJvZ3JhbW1pbmcgbG9vcCBuZXZlciBleGVjdXRlcyBj
b21wbGV0ZWx5IGR1ZSB0bw0KPiA+IGluY29ycmVjdCBjb25kaXRpb24gKGkrKyA+IDEzMCkuDQo+
ID4NCj4gPiBGaXggdG8gcHJvcGVybHkgcHJvZ3JhbSAxMjl0aCsgZW50cmllcyBmb3IgdmFsdWVz
ID4gMS4wLg0KPiA+DQo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjdjYuMTkNCj4g
PiBGaXhlczogODJjYWExYzg4MTNmICgiZHJtL2k5MTUvY29sb3I6IFByb2dyYW0gUHJlLUNTQyBy
ZWdpc3RlcnMiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFByYW5heSBTYW1hbGEgPHByYW5heS5zYW1h
bGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IENoYWl0YW55YSBLdW1hciBCb3JhaCA8
Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gDQo+IE9rYXksIHNvIHRoaXMgaXMgYSBz
dGFibGUgd29ydGh5IGZpeCwgZmlyc3Qgc2VudCAywr0gbW9udGhzIGFnbyBbMV0sIGFuZCB3ZSdy
ZSBzdGlsbA0KPiB0b3NzaW5nIGl0IGFyb3VuZD8gRm9sa3MsIHRoZXJlIG5lZWRzIHRvIGJlIG1v
cmUgdXJnZW5jeSB3aXRoIG9idmlvdXMgZml4ZXMNCj4gbGlrZSB0aGlzLg0KPiANCj4gSSBzZWUg
dGhpcyB3YXMgc2VudCBzZXBhcmF0ZWx5IHRvIGludGVsLWdmeCBhbmQgaW50ZWwteGUgWzJdIGxp
c3RzLiBUaGUgd2F5IHRvIGdvIGlzDQo+IHRvIGp1c3QgY3Jvc3MtcG9zdCBpdC4gKERvbid0IHNl
bmQgaXQgYWdhaW4sIGJ1dCBkbyBjaGVjayB0aGUgQ0kgcmVzdWx0cyBmb3INCj4gYm90aC4pDQo+
IA0KPiANCj4gQlIsDQo+IEphbmkuDQoNClRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrIEphbmkuDQoN
ClVuZGVyc3Rvb2QuIEnigJlsbCBmb2xsb3cgdGhlIGNyb3NzLXBvc3QgYXBwcm9hY2ggZm9yIGlu
dGVsLWdmeCBhbmQgaW50ZWwteGUgZ29pbmcgZm9yd2FyZCBpbnN0ZWFkIG9mIHNlbmRpbmcgdGhl
bSBzZXBhcmF0ZWx5IGFuZCB3aWxsIG1ha2Ugc3VyZSB0byB0cmFjayBDSSByZXN1bHRzIGZvciBi
b3RoLg0KDQpSZWdhcmRzLA0KUHJhbmF5Lg0KDQo+IA0KPiANCj4gWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNjAzMDYxNjUzMDcuMzIzMzE5NC02LQ0KPiBjaGFpdGFueWEua3VtYXIu
Ym9yYWhAaW50ZWwuY29tDQo+IFsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwNTE5
MDc1MzA4LjM4Mzg3Ny0xLQ0KPiBwcmFuYXkuc2FtYWxhQGludGVsLmNvbQ0KPiANCj4gDQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDIg
Ky0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+
ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMN
Cj4gPiBpbmRleCAyZDMxOGU5MjI2NzEuLjNiZmUwOWQ4MWE0YyAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gPiBAQCAtMzk3Niw3ICsz
OTc2LDcgQEAgeGVscGRfcHJvZ3JhbV9wbGFuZV9wcmVfY3NjX2x1dChzdHJ1Y3QNCj4gaW50ZWxf
ZHNiICpkc2IsDQo+ID4gIAkJCQlpbnRlbF9kZV93cml0ZV9kc2IoZGlzcGxheSwgZHNiLA0KPiA+
DQo+IFBMQU5FX1BSRV9DU0NfR0FNQ19EQVRBX0VOSChwaXBlLCBwbGFuZSwgMCksDQo+ID4gIAkJ
CQkJCSAgICgxIDw8IDI0KSk7DQo+ID4gLQkJCX0gd2hpbGUgKGkrKyA+IDEzMCk7DQo+ID4gKwkJ
CX0gd2hpbGUgKGkrKyA8IDEzMCk7DQo+ID4gIAkJfSBlbHNlIHsNCj4gPiAgCQkJZm9yIChpID0g
MDsgaSA8IGx1dF9zaXplOyBpKyspIHsNCj4gPiAgCQkJCXUzMiB2ID0gKGkgKiAoKDEgPDwgMjQp
IC0gMSkpIC8gKGx1dF9zaXplIC0gMSk7DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwN
Cg==
