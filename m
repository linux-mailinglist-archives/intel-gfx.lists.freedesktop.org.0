Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E8A89386F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 08:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E987410E742;
	Mon,  1 Apr 2024 06:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wk+VBEEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D786710E742
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 06:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711953265; x=1743489265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NtB4ZoYrCJ/cgW4G0fEBT2RCqeB/nnXo92kKufHf2T0=;
 b=Wk+VBEEcPB4p9jCIW/uuh25o9c+XPOiQOtqdlMXzcGJscFqDA+GBoQqA
 RGJtdqdaipHt4mlYxPwAUi87KVArOeoK10vOPxGNLkEa4iQc3B/GoWEd4
 jXBypZ9EtxJyQEIgxnlpRdee0E2zoIKCuSAZHz8KI/X1nrvAmlAEBPHsF
 /RA63jrLJ/Xpgt09IRj6KqFTlWq+ALc8vkNbLAl0FHcI67fzR1aT7WnKx
 rryBBCVPq+JTCUSrWx9rOZybLQIER9OnSrGMtTatuxY3zmlQ7xmtBsgMx
 eHqorG5gQkuNkn4CfIaeU+vWM+prIQYPWNUHzaIAzNPq7xZEqeSqcAU9U A==;
X-CSE-ConnectionGUID: nIN6KxkwRxeWcuMLNbi6Jg==
X-CSE-MsgGUID: Usc6jhzTToK6ipFwvH1EOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6925121"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6925121"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 23:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="22303526"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 23:34:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 23:34:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 23:34:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 23:33:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxPWzvk1J25vgT3DKAwpXV8/cJqDkTEEzqV7VAxsJSLMLo4dFimJIPZjYnhnT5wfXst/4vEg3petoYIm34fdcUdaLf1gbVl2hDxNX887oJDBP4bj+TswBzsusSfRQpq58w6UxMCnL0tXrTS+FUhKioHusJ8v7a7hce23t60yYKpYxEbtWvfUviM0DbEsX2mYvaGiGUmv11v3AWdOGuxt7IcvjBocvU+45hkWjU0LJRK9kQE2buksM2y7W35DPR9uOvk1IGeBG2vIv2vNt2rVL4KiDbUSSBdsg4XJLRCL0pC9fWrri4DeOqfG2sWeVMvz28wM1GhHEwkLSsfBqD43+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NtB4ZoYrCJ/cgW4G0fEBT2RCqeB/nnXo92kKufHf2T0=;
 b=d299tzqaj4QPdAjyLFGf2t2U0fJn7RBZTEz5EJncSrprnYia4k4H5D+dlFYajuFvQa2z4u+ZXQZZfXdx/ACDzZtwFKELk38rW0H2njrAEEgUTdc1TG+kwbXE3HZzLVkeYW2Cft38TXHjrFOBzQC4uaLJWKfjDl8Vs6ZKEWb3PD9YMxOOs0UTAzwIEAl+gb8O8yJrTZAeAqygS/1Ch3pTZSM78X2J9noMkFX+yn9A9COTBq7e5ahP9Xkmw/CBjENaA7iuEwyxlYumUPSDf4choiTdCrbC8B+lFqPZ6xuZ0K/PEcZbUupswPNUTO/QMuHH9LSzf00HkkJJxzifGlJbAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB4888.namprd11.prod.outlook.com (2603:10b6:510:32::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Mon, 1 Apr
 2024 06:33:32 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 06:33:32 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: RE: [PATCH 20/22] drm/i915/mst: Add bigjoiner handling to MST modeset
 sequence
Thread-Topic: [PATCH 20/22] drm/i915/mst: Add bigjoiner handling to MST
 modeset sequence
Thread-Index: AQHagXZukhzfqdM4aEG2uomSzYIQerFS+Iyw
Date: Mon, 1 Apr 2024 06:33:32 +0000
Message-ID: <IA0PR11MB730795281E66238CFF1664F6BA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-21-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-21-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB4888:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WEwFnxYydxaqjsitzew18ix6ntdH5cP9ZwYSHNc4fYd9LdMMLeGG0Irz+yh0J5awGyGvb/1DF56xa7qhZMmzVcrMLQ4Rr87iEsJ7+ZzPj9w+0PkGKXHBE5eKDsYO84vVMOOEJcbN4SgL38tz5+0reFy6uh8RUqSjRdlTSqyOtgayV1U97aSqCt84aYAlNmjkdhPtb7lhb4Jh41QREc3R+PQeRrYvMcAvNa5fDAqH+Ev/KbPSlztUlpzhtul0bZ8j6oZjb6+hVE+9jJXoYr+s1kiv5y/xpTDXFT9JBwLKi1ohQZlgy5rqPvIxeY6T8RI45K9ngDkIAYiETh2o9nhdxwMBif+Xf5cvnZEamHWPc8A5SzO2no4GCvXG+rfiZWBv4M0AkEuukXRYm5k8SP4/xUsKQxpboIkDjDzTix0B6stBxvchL7jnTMF13OUwg9941Aa7iifolroUrKMWTXz06vkv6Ud+pi7KD9mv9LQH1VqTd6YRlG1ufVbNCG8h8DsDFjSk+ux8722AvgY6uMggMF87i9lqPXXeA24UIriXfkRLwkRNbxEOxieM57toMVS4Yz4wtpeOZgtHPdG0SHFE6MVli6iJq06sHD0pmUmTCt5ho1+RjxPuYeWNrAG/Qw6MFY8cYpPg9diwJUku3hj4Ib633RERO9L3X7eyUG4dkZk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3ZiQ2JDZVNYaHhaeXl6VHliZXJPSWxZSkhOaitaRjdHekc4NzZGMXRMQmZ2?=
 =?utf-8?B?YzRvbHpXOElPVzErL3ZTL1NJTXNOdlNmQzJHNEw5bmg4Q2gyUEZuM3JTSnE0?=
 =?utf-8?B?eS9BMlRqb2ZtaE13QTlwZFdGYXZQNFM0dkdmcmI4SVhoaFNLVGp3ZFFsUCtZ?=
 =?utf-8?B?OU5KalkwY1lZZDdjaVpFTmNjTmx3SFhSR0dEMW1uYlFnWW4wK3JYeU84cXhn?=
 =?utf-8?B?LzVYTThEcUlsTXFHbGNQOWdmT1Y4TjlmNWFRUk5ySk5sSDd6ZllLWTRkbHRU?=
 =?utf-8?B?M284azE5Zml6NXhmdU80azZmOENQZzMrWGt5M1l6OWVhNUpmTnRIeFFWOHFD?=
 =?utf-8?B?WFFSUmV3ZDRsZ1ZWclVJRkZXZXBIMjUrSktGTmx5RFp6N0pkN253ZjhBMGVN?=
 =?utf-8?B?anNKVmhIbFJaZG9nUHlXZ3dEaXBZeWtOb0trbjZFVyt1VVNSTTlFbFlidU8r?=
 =?utf-8?B?Q3M0UmxTTUZRODNySU10TS9iNm1ueTluUUE0U1Y2T1BaaWJaTHc3SkN5enI4?=
 =?utf-8?B?KzdUSnlwSWI1NEpqNXBYcUtyZldGamcvdkVjZTlvcytSYTl6ZTFFdFdTQThD?=
 =?utf-8?B?bXV3Y3VIVG1oeGh6S2R2K2NVN1FxUEVrclgzQzByVlFJSlN3TVN2bTczNitU?=
 =?utf-8?B?V3ZsUHdHaTFsdGVyemhGQnNuYUNpR25jSDlnektkSWxOL1Z3VVMzTVZIbTF0?=
 =?utf-8?B?SlhjdHZKV0M5OFRWOSt3aFdVWE5sRGsyTHVhUkVYQ0RRYitnUDdNNkoyUENp?=
 =?utf-8?B?U3hENXlxcGQzcmxLVXNmeVFrRUVDVVlkL0UwSkh2QzRsWTNvMzlZQWx0MEV3?=
 =?utf-8?B?bVpwbVV3K09jR3N6VktDVi9VMndxT0JJNlNhN2lDZVBURE5VYVBxaWFMRXhU?=
 =?utf-8?B?MmlXY3FLNHRNa0wwQkZuV0ZiZnc0RzZaWWdzblB6NjFya2w4eEREdEFCOUY5?=
 =?utf-8?B?Y0VmWGdCQmgyTU84WS9nL3gvdDBCUEIveWtMRnUrZDBYZG5kZ3ZvMXRSTWlB?=
 =?utf-8?B?elExeVB1Umw2R0NxdGtIenQ4U0xDd0luU0xBV2szMHdRQ3ZTdFE0WDVGYkZY?=
 =?utf-8?B?MjR4dHR5dm9nYVMrdDdBeHM3U2F1ci9kR3FaejNQTU5HWFYycGFPaldoU3By?=
 =?utf-8?B?WkJpNmFTVVBsMWNvTGg2aHJzb1ZtZmx2Q09tcGdDRU11R24zanBvNklYMDgy?=
 =?utf-8?B?cWJ6azRFaloyd2syNjNUUWMxcW9UbGNrUU42SENPVVdXTzZoSXZ3VmJxcHV4?=
 =?utf-8?B?c0pxNmpOU1lBUHFQZVordFVYckN0S2JXS3hac0NoVTQvNzdnZkZPUmtlbHBa?=
 =?utf-8?B?Ni9sb1cwanB4Y0gwNURhWUIxaGpwMU11dVlXWE5oRVlURWpjeFU3ZUpqR3VN?=
 =?utf-8?B?NEttNzRRZDJxekNrMmRhZTRBRnhlQytTWHZ0Wk8vNTRTdld6bmtWZU5YdWlG?=
 =?utf-8?B?Y0dCQ3M0MWVsWG43MGlORWw1SnRiaUhnMC8xdkEvZmlpMjJMRCswTDZtZ3Av?=
 =?utf-8?B?OC9XWXQwWEF0NU9hMURGV1gvUGRKU011Ni9NL3I1Y2EyeGVIZE1ucnIvcUxV?=
 =?utf-8?B?MDlNell1dnNPOGN3MjU3aUZEUHdRV3laSWNzRytNOVoxNzdvem5OS0xVQ3dm?=
 =?utf-8?B?Y2JuQ1ZOVExBbnZMU3luNXhValJxR0NoUHZvWUsxZmpMQ2tRQ0FDblE5ODVv?=
 =?utf-8?B?T25YZlgyNXpTT2lTNCszN3B3cVBwU0FUa0tSd1h5L0NJUGZLWDBZRUFSajNM?=
 =?utf-8?B?T1hBNEVFcU1WUFBYckYvNnpLMk91V3ZkcUZFYjNaYTJlam1XdS9pYTJJcHpt?=
 =?utf-8?B?TERRd1ptM3RUQ2ZXOS9RZjdheFJUeXJNY3dFbTAxekRJQytpRENHZ0FkTy9W?=
 =?utf-8?B?S21FeDdtbGZGaDBvc014aGdxTW5EZ2NGRE5CY2tyMXBWSlNUdEJ2dWhZN256?=
 =?utf-8?B?OXBvbE81YWMrdTk4Mm8vYkdCa3pMQ3VpMFlaR2l6NkNGbi9nZ3QzTHVtUFJV?=
 =?utf-8?B?SXorUmRGVXBXak5uNEpjQzZjWElnKzdCaDZWcEJESDVqOUZjUXF3c0ZwK1RZ?=
 =?utf-8?B?d2RPdUxRcFIwd3NZVlFaNVpCeitoNitkandzRTlabENKWGNMMDF4OHA4RTlE?=
 =?utf-8?B?bUxNRDVLaW1LVGN4OGRrT01acjg3MEJRR2hYbmt3ZUJ4U1cwN013Q3JMNkg0?=
 =?utf-8?Q?3WNj/9sxn6FamUl7NdrDDJcwF5ZJYtT2xY+KPlxfNLcl?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95d44281-b9a6-4704-01e1-08dc5215a6e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 06:33:32.7349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kMWCnUUGR1TSVeEkZnH1b2j8/BDNKkDIMtwXDaBTA3yj2YhnVWwcbTA8T+eN9IYIO0S71JLuCHT+Ay2dXHCGeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4888
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTcmluaXZhcywgVmlkeWEgPHZpZHlh
LnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDIwLzIyXSBkcm0vaTkxNS9t
c3Q6IEFkZCBiaWdqb2luZXIgaGFuZGxpbmcgdG8gTVNUIG1vZGVzZXQNCj4gc2VxdWVuY2UNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBMb29wIG92ZXIgYWxsIGpvaW5lZCBwaXBlcyBhdCByZWxldmFudCBwb2ludHMgaW4g
dGhlIE1TVCBtb2Rlc2V0IHNlcXVlbmNlLg0KPiANCj4gQ2FydmVkIG91dCBmcm9tIFZpZHlhJ3Mg
ZWFybGllciBiaWcgcGF0Y2gsIHdpdGggbmFtaW5nL2V0Yy4NCj4gY2hhbmdlZCB0byBtYXRjaCB0
aGUgZWFybGllciBoc3dfY3J0Y19lbmFibGUoKSBzdHVmZi4NCj4gDQo+IENvLWRldmVsb3BlZC1i
eTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cg0KUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0K
DQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMg
fCAzNCArKysrKysrKysrKysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IGRlMzY0ZWQ3N2MwOC4uMmQ2MDFkMjE0OTE1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMN
Cj4gQEAgLTk1Niw2ICs5NTYsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcG9zdF9kaXNhYmxl
X2RwKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCXN0cnVjdCBkcm1f
ZHBfbXN0X2F0b21pY19wYXlsb2FkICpuZXdfcGF5bG9hZCA9DQo+ICAJCWRybV9hdG9taWNfZ2V0
X21zdF9wYXlsb2FkX3N0YXRlKG5ld19tc3Rfc3RhdGUsDQo+IGNvbm5lY3Rvci0+cG9ydCk7DQo+
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3It
PmJhc2UuZGV2KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOw0KPiAgCWJvb2wg
bGFzdF9tc3Rfc3RyZWFtOw0KPiANCj4gIAlpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcy0tOw0K
PiBAQCAtOTY0LDcgKzk2NSwxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcG9zdF9kaXNhYmxl
X2RwKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkgICAgRElTUExB
WV9WRVIoZGV2X3ByaXYpID49IDEyICYmIGxhc3RfbXN0X3N0cmVhbSAmJg0KPiAgCQkgICAgIWlu
dGVsX2RwX21zdF9pc19tYXN0ZXJfdHJhbnMob2xkX2NydGNfc3RhdGUpKTsNCj4gDQo+IC0JaW50
ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9jcnRjX3N0YXRlKTsNCj4gKwlmb3JfZWFjaF9pbnRlbF9j
cnRjX2luX3BpcGVfbWFzaygmZGV2X3ByaXYtPmRybSwgcGlwZV9jcnRjLA0KPiArDQo+IGludGVs
X2NydGNfam9pbmVkX3BpcGVfbWFzayhvbGRfY3J0Y19zdGF0ZSkpIHsNCj4gKwkJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9waXBlX2NydGNfc3RhdGUgPQ0KPiArCQkJaW50ZWxf
YXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgcGlwZV9jcnRjKTsNCj4gKw0KPiArCQlp
bnRlbF9jcnRjX3ZibGFua19vZmYob2xkX3BpcGVfY3J0Y19zdGF0ZSk7DQo+ICsJfQ0KPiANCj4g
IAlpbnRlbF9kaXNhYmxlX3RyYW5zY29kZXIob2xkX2NydGNfc3RhdGUpOw0KPiANCj4gQEAgLTk4
MiwxMiArOTg5LDE4IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wb3N0X2Rpc2FibGVfZHAoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IA0KPiAgCWludGVsX2RkaV9kaXNh
YmxlX3RyYW5zY29kZXJfZnVuYyhvbGRfY3J0Y19zdGF0ZSk7DQo+IA0KPiAtCWludGVsX2RzY19k
aXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsNCj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3BpcGVf
bWFzaygmZGV2X3ByaXYtPmRybSwgcGlwZV9jcnRjLA0KPiArDQo+IGludGVsX2NydGNfam9pbmVk
X3BpcGVfbWFzayhvbGRfY3J0Y19zdGF0ZSkpIHsNCj4gKwkJY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKm9sZF9waXBlX2NydGNfc3RhdGUgPQ0KPiArCQkJaW50ZWxfYXRvbWljX2dldF9v
bGRfY3J0Y19zdGF0ZShzdGF0ZSwgcGlwZV9jcnRjKTsNCj4gDQo+IC0JaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSA5KQ0KPiAtCQlza2xfc2NhbGVyX2Rpc2FibGUob2xkX2NydGNfc3RhdGUp
Ow0KPiAtCWVsc2UNCj4gLQkJaWxrX3BmaXRfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7DQo+ICsJ
CWludGVsX2RzY19kaXNhYmxlKG9sZF9waXBlX2NydGNfc3RhdGUpOw0KPiArDQo+ICsJCWlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkNCj4gKwkJCXNrbF9zY2FsZXJfZGlzYWJsZShvbGRf
cGlwZV9jcnRjX3N0YXRlKTsNCj4gKwkJZWxzZQ0KPiArCQkJaWxrX3BmaXRfZGlzYWJsZShvbGRf
cGlwZV9jcnRjX3N0YXRlKTsNCj4gKwl9DQo+IA0KPiAgCS8qDQo+ICAJICogUG93ZXIgZG93biBt
c3QgcGF0aCBiZWZvcmUgZGlzYWJsaW5nIHRoZSBwb3J0LCBvdGhlcndpc2Ugd2UgZW5kDQo+IEBA
IC0xMTMzLDYgKzExNDYsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfZW5hYmxlX2RwKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlkcm1fYXRvbWljX2dldF9uZXdf
bXN0X3RvcG9sb2d5X3N0YXRlKCZzdGF0ZS0+YmFzZSwNCj4gJmludGVsX2RwLT5tc3RfbWdyKTsN
Cj4gIAllbnVtIHRyYW5zY29kZXIgdHJhbnMgPSBwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXI7
DQo+ICAJYm9vbCBmaXJzdF9tc3Rfc3RyZWFtID0gaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3Mg
PT0gMTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOw0KPiANCj4gIAlkcm1fV0FS
Tl9PTigmZGV2X3ByaXYtPmRybSwgcGlwZV9jb25maWctPmhhc19wY2hfZW5jb2Rlcik7DQo+IA0K
PiBAQCAtMTE3NCw3ICsxMTg4LDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAo
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IA0KPiAgCWludGVsX2VuYWJs
ZV90cmFuc2NvZGVyKHBpcGVfY29uZmlnKTsNCj4gDQo+IC0JaW50ZWxfY3J0Y192Ymxhbmtfb24o
cGlwZV9jb25maWcpOw0KPiArCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrX3JldmVy
c2UoJmRldl9wcml2LT5kcm0sIHBpcGVfY3J0YywNCj4gKw0KPiBpbnRlbF9jcnRjX2pvaW5lZF9w
aXBlX21hc2socGlwZV9jb25maWcpKSB7DQo+ICsJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NydGNfc3RhdGUgPQ0KPiArCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19z
dGF0ZShzdGF0ZSwgcGlwZV9jcnRjKTsNCj4gKw0KPiArCQlpbnRlbF9jcnRjX3ZibGFua19vbihw
aXBlX2NydGNfc3RhdGUpOw0KPiArCX0NCj4gDQo+ICAJaW50ZWxfaGRjcF9lbmFibGUoc3RhdGUs
IGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsgIH0NCj4gLS0NCj4gMi40My4yDQoN
Cg==
