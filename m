Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F89B959944
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 13:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B356510E8D5;
	Wed, 21 Aug 2024 11:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OSViZvqK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A861610E8D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 11:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724238828; x=1755774828;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jYEdlzr0iBTAHU3xOAqZMMYYwu9SzouCYQeN2AgGkz8=;
 b=OSViZvqKw0Ac/3Ghgyzm9sNPWzRT37AZBFnbodvUxE4U5i3B5bsVuoj5
 OrbK4+GDlQPvlh+ah0dbKhckB/iNYmEAO7u/3+2fJInNjJChcnB4pXpgq
 MarjH3S07zyF8hVAs1eKQzZ8Wsq4tJtDvRosGvFEfUCAZGWxcq6xsu/Ep
 himcxO0rALiBTitMZBWy9X/Trwg3r26vaJUUg5f4DRFG1GMwmJARdkwvb
 eCEz2+gKkR2GroSzVE1u/Q4KSvjiRd89Z4XyybR0cx8/qXHyk3hjULfXT
 ScnQQOAswEzXbOy9PYtWRbVUbgTFQc0eH7DgU7ZT8jr0iQEhMbzN7f57S w==;
X-CSE-ConnectionGUID: MOvNIgBrQ9e2yd3Abpbx0A==
X-CSE-MsgGUID: F5Bv639CRBqI6/xuAyMUjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22725436"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22725436"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 04:13:48 -0700
X-CSE-ConnectionGUID: Rp3xcag5RAWhYZBfiwZN3A==
X-CSE-MsgGUID: Duo9fY24QQOzXTIJ8ezm3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61031754"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 04:13:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 04:13:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 04:13:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 04:13:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X39VvRRYGrK7xnQNr9rage/FOlRKOnaJ6XNfy5SzJ/sBwNJekUQsL8JQ9AfaZveoqeJ+DlCTht9Ye4KoPVjBK3C3veWV7VbJzmZw2YegwIn5GX7CG8AxT73ALa81KGM8du5nbsqxPiKO2qD+W8+/a1DkhzJR5MTZSexI92YDQcqsWUQpDDBv7RuYPVPNsb8xkuDuF6CzlhTHRky9QbLVj5YktBJjwGn991zg7RXT4ufE7FIg4OmCZ8bNc/HbisbCgQNTqkTHUbYlgJgWyNcfkYBQyVcr6YCzKwes8P4z+bXVK1EzlQ9hwx9ZbyYeLrvVoH6DbyD7h2XZ06+Dl87gyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jYEdlzr0iBTAHU3xOAqZMMYYwu9SzouCYQeN2AgGkz8=;
 b=WDK6Vt1/Wfa2uT+46lH5y3bhBQMEZzmZHch2yCuibYR0PGnuAbxeq1XyEpd+2vIvnsAVQoB59kEu7ufq+0FlNJaW/C1i/goLRNl8zkRqsuUHvB6lfkPmg9WHAuwFwhm0UVF0zsFuCDr+Xlz3D/qOWpOrGbatNUnV+D9OO7cmpCOcDFFk0XX572wKQoP85yW0tr4/vOjkNxXO8WY6jHjzKW5u2/Mouo6jcYnQ1lApdni4e32gqvUz/pxTJi/JQW4lOJwE2fGWeCFokgpKXLq1DKJv9wKaB7i+pZLx53diuaevfwf1+n6UJ44+dESJMwZ93l8gBMTzGec2yWzg7Ad5Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7875.21; Wed, 21 Aug 2024 11:13:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7897.014; Wed, 21 Aug 2024
 11:13:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Prevent Panel Replay if CRC calculation is
 enabled
Thread-Topic: [PATCH] drm/i915/psr: Prevent Panel Replay if CRC calculation is
 enabled
Thread-Index: AQHa8hnaVKLonKVAAU293S3DQw4t4LIukbIAgAMAeQA=
Date: Wed, 21 Aug 2024 11:13:45 +0000
Message-ID: <d5397c563bc0269b5272c4da73321504e7376105.camel@intel.com>
References: <20240819092549.1298233-1-jouni.hogander@intel.com>
 <MW4PR11MB70547C3352A6EBC62804BECAEF8C2@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB70547C3352A6EBC62804BECAEF8C2@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4783:EE_
x-ms-office365-filtering-correlation-id: 702c0c9b-a7c3-4c97-8fd3-08dcc1d2527d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RjJXb3lOT3VWdU5lcGVOQ0k4MFBWbVVtMWdJVjdvMFdvZUNEdVE5T2RJazEz?=
 =?utf-8?B?K2VvSzdRM1VxMFJtVGFKWUFhQTZiZEs1QjZPL0xjR0tMS2dxanFHdHhWY2l6?=
 =?utf-8?B?WmtEQnByQ0lXai9IRWp2N0l4S243c0NncldKUGg1Wm05cmttM3FSSWhrejlI?=
 =?utf-8?B?bXNiUVBJc0NnenVrMUxYSXNWL3hVbFprcS9jUkgvV2huZ1Z6bmpXRDZzTlli?=
 =?utf-8?B?ZTNPRi9obG96eFZvVEt0d1VGcnRvL2x5aXZqQlY3ekFnTkVoMXk5bVg4aUVK?=
 =?utf-8?B?dGJzbTlhSkgxL0dEWnh3czB5VEI5b1pialhERkM1K2xuam1KdzI3MEJOby83?=
 =?utf-8?B?SHB3cWloYWpTZmU4UlFnamliOVhFem5qcFhCTFNQQlB4Qk1pamxhSmFNbWNn?=
 =?utf-8?B?MEtUbXVYQy95T2dCeVJjNTNEYTE1NnMycjQyaEhNUkRCc1ZwM0NPT2VHcWNP?=
 =?utf-8?B?eUhSZGJPRlJXMXpHaWhNdmc0bWVyKzE1YWZwOFpwTzR0a0o0Rlp4NFhSUnlQ?=
 =?utf-8?B?ZzZoQk44RE9PcHc3WWhzc1p2WFQ5bnkwRHQ4dDkwZ0VkelhBVjNIOVdmMlVC?=
 =?utf-8?B?WW1sdVdPNjlDMHRKWUtzcHdFK3hmYTlQeFlDRlhIOVY3QmJ1UjkrSmRqSWJk?=
 =?utf-8?B?NmJMNm5TRVZyb253enJaa2Z2ZU8rdStGQndscktMMVJhbFIrOFliL1ZEWlJL?=
 =?utf-8?B?WnNNenNaeVovNWduTzM0MERLaE1FajZzS0FQUUhwZnZ0TG1YR2ZhLzdNZE9I?=
 =?utf-8?B?OTVNTTdkcXl1VFhaWG56UEgxcTBCdnBSNG1oS3VnM2xMMERPZU4yU0NFV2xN?=
 =?utf-8?B?VTV3RlpzUlY4SHJBODRCOHZHRXhhSjVVTWcxK3JhckFHdEl1Q2NVY2xQcXZG?=
 =?utf-8?B?L1Y1Tkw5TEYzWUhweS93cWNUaWNNdlJ6SHQ1cHRuak9vWTAwa3p5aUlIN2lJ?=
 =?utf-8?B?RThtbW9VSzVLdjZSVVU5bWN1dkhzckEzaUZzMUh6VUhzTmdpUmdpV0lyekxu?=
 =?utf-8?B?SXUwS3NaWjZSS2JMak54SGFWN1RkNnNtS0RhSHpINVFZaS94dEJtcGpWQTgw?=
 =?utf-8?B?U05LcUNiZmp1S0wxcHdtLy9BRnF5amNQN1IzSTFvNEZkOGx2WDBQL0dNYktV?=
 =?utf-8?B?Snp0NGN4aDVUUERyajA5VTNrM0NFR0RUOVZLckdNZEZQWU9NVk5vcFI2ZzVi?=
 =?utf-8?B?cUVNK3J2RllCTm9iaVZSbWJIdGxiT002WGlzUk9NdGt3T2NaSmh4TG1rZTB2?=
 =?utf-8?B?Vkc3WmxZMkE5MEs3bEl6cVhpaThnMHd2QVBEaHpveitsWDNrU09tVHVsR01k?=
 =?utf-8?B?N0tTckNncXArMTBTUHVXaDFoNS9NYjhmMHFJdDhHc2FJcjhkUzhUWjZLcnVM?=
 =?utf-8?B?K0cvYTBWamVVK0txajd4VHFQOWpMQUM0bG5Ha01IYkhPcmRaaU1meWRuejBR?=
 =?utf-8?B?eTNaRURjbk1YVEdpQXNiMFJyOTY0SlYvQkE3ZkIzaHgrZkdIKzZIYTlPaFN4?=
 =?utf-8?B?WVp0ZTM4ZDZ4QXRyZXczSDUrU3BVS2djWlRLcUg0enF6dDkwNnBPZjd3YVYz?=
 =?utf-8?B?Zkd5K3cwQURTTGxLME5xRlNkYUU2LzRXWGRaRG8yWmx4U1J5WkkveVhTcEQ5?=
 =?utf-8?B?UlFoQjhIVWg0YWpsejRmYTdWRURwL2dpMVNpQklLZTJ3dXUxbm9YcDhxRmVR?=
 =?utf-8?B?Vm0zRGp0VEFWNWtSQk41cTJCWGcreitNWlEvcmhzQzBTbnYyc1VCbkFzM3pI?=
 =?utf-8?B?RXNKSWJxKzAwMnMwa1Q4eE8zQ0VnQjJzVG1WVFF1ZHJiZ2h3dVFmcmEwUXNl?=
 =?utf-8?Q?MC/58RrZG0fc0nEVQlc2dpvftEw4XkA+OaYGI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0lIS3dHUVpjT1J5eW5ralN3ZzhzY1dXak1KcjhxaHRHMGk3dm9hNjd0TUlJ?=
 =?utf-8?B?S1Y2ajlja3lxRjQ0TU5RUWIyOC9CeXBjakg3MDQ2SUtBSys2OXlrdXhKZUpO?=
 =?utf-8?B?ZExNckZvTjJMMzdtbFEyWkpzekZ4NGp1Nm13KzRHWW50aVNHNWZ4VURZeUYx?=
 =?utf-8?B?N21FVzhySDNEU3FoY1k4UzRlOEZqeGVJc2Z4eWk0Y1FjbmV3RU45aitveHV4?=
 =?utf-8?B?SGZQM0h5L0g0NzB3TmZMa3NKZDB5L1c1VWNMTnQ1SEtoNEV4bi93TVNkU0dT?=
 =?utf-8?B?VzR4TGtqWEZ5cGh3blNmTDJVQzNSbkpPbGU4cTlESllWZ0V5bUtpb3FXREpY?=
 =?utf-8?B?VzRzYmRRNW1ZSW5XMXI5MlErd2o5Qkw1SityVFN6QmZhYkVFZnpmTVpITzJv?=
 =?utf-8?B?dUJIbUpocWM4anBNQXBFYmhkemJpUDNZa3BaYmY1bFlUbzNnSmVWZjMwUFQ1?=
 =?utf-8?B?OWlDRENHa2lkWFJoR0xvanJTR0NsRUtnaVhQWnBnTW10TFdpeGFXVGxIYXhv?=
 =?utf-8?B?VmYvaXA1WjljbDI5azN5clVHQTlEV0FLb1p5NEQzNWRtc1FwMFc1emRRY0Fx?=
 =?utf-8?B?TFRlZ1EzTWlPMjdTeUlBNUZ3QlFRTWNUNW5BUk1tQ0JVUllDL2V3eTYvdFpy?=
 =?utf-8?B?T0puRVRYenU1RGNlM2pveEF4OUNmMWVWYzdYNGNVZlc3YXFNeWRJSXpNYnlK?=
 =?utf-8?B?TmIrRHdMTVJwdnVsa0xzZ0srdnJEWnVzT2tqRlZscmRxZUllOTRuaml1dUJN?=
 =?utf-8?B?ZmNGZCtyZjJjMzl5WDZOeFhOZ0VDUXhpWlBuN3o1NUppU3ViUTlkYkNXakN5?=
 =?utf-8?B?VGEzbENIVFc2OS9vS2ZuR1NmaW1KdDA0bmRuVHBWMGw5bmRVT2RRd2hwVWtG?=
 =?utf-8?B?WmV0cm9WYmRBVVBJVXFzT2RzYXB3VVpNUmVBSlZGbnkydnA1Tk9tQ2pMcTRo?=
 =?utf-8?B?LzRTMlo5L0wwbVdGSlRxQ3lvM0wrdVp1a0ZxOFdoaU9FeEV0VGVhY1diSUkx?=
 =?utf-8?B?a24xUnFVeStKMWR3ZnBMN1pNZ1hYQlAzeTVKamZYVkcwL2tqQTczSis1VTRx?=
 =?utf-8?B?c2M5OEM2QkgvdEFBNnQvMXcxRU0vRHhJRzI1YUtrZFBsS3JmOTRIOG5rV3hr?=
 =?utf-8?B?YjQwYkVhT2hXa3pxYTQ0dWUzcGJIcmVyVEE3bG5oVWhpWDJMNXNQd1VJeUpk?=
 =?utf-8?B?Tkg1Q0hBTEtOR3lKTHVMK1EzNzRpOFVFNHp6RDZpVWhCN0RCZ1VWcUs0eDhO?=
 =?utf-8?B?aStSOGNVcERlNHExb1hNd1RDemRGMWVpc3N0Y3FpaWNWamhqaVFpYzhMU09m?=
 =?utf-8?B?Wm9saC9DbDlYUDdyMzF6ZzR2RDZPLzFBVW04VUhPUnpCdEdmMEtmUnhGdXJQ?=
 =?utf-8?B?LzdvbHJydTc5YU9HN01ySFBWVFRhMGpIczdFZXorKytuZEViOG9jOEhuaG5Z?=
 =?utf-8?B?NStFUi8xUUhrTDEwOFZpQ3hkTElaK3EvMUlGN0Q5Q0FwclRrVFVOdU5GWXRk?=
 =?utf-8?B?WU5xckZkV0kydU4zTWNJOFFoZDUyNC9rOTVVU3Axc0I2ZTkyM2ozajlFek9F?=
 =?utf-8?B?dEFUZ2J0cDA4STdTR1V2U2JNMWVWUUlxZ0ZQcG1iYmxid0N4WTQvc3hZYUtj?=
 =?utf-8?B?UCsyY1ZyWUsralNrYytTWXlQM09HTk1rSHhUL0pUYklPVkJNMWNCS2lDK3Vm?=
 =?utf-8?B?SDBEa09Yc3MxeDlBSnh6eFI5dEp4ZEE4d1FjNTVPRVozRzhQbVIwWmdTdnhj?=
 =?utf-8?B?cUU0Qm9OSEUzQkhDZ3lwMnFpVU5odmJYc09VS3pUVVFEaGlhdWRqclNPamJ2?=
 =?utf-8?B?L3lHMCtyeDl3S3hGMHorQ0w0dXVnTFJ4OWNVTkR6WUh2SEI1bFIwODgyQ1Bx?=
 =?utf-8?B?eE92NFMvSkJRVDBHYWUxN0h3aUhYUUJHb0JManFva21JMktoaHY1bzBoUXpK?=
 =?utf-8?B?RVVXVG9yYzBnQXNEZlZpcnRzNk5ScjdFNHpNcWJEQzBaSUV5L3h5MmIvTGxJ?=
 =?utf-8?B?TGhwbzBHZU5ITldqWlVqR3lmbUpKNWN0Nkoxd09XOGFyYjZmMDRVZjU1dHNB?=
 =?utf-8?B?bWlTK3RON0JEZUVwQWFVa2t0cWpaL3ROT0tUS0s2NjJ2YVVzdVZ3b3FzUXN5?=
 =?utf-8?B?M09Sc21zUjhXS2ZWZEZTYzlITE5vYld5VU9nQ1hFcmdkMlRjMSsyMUlxWlR6?=
 =?utf-8?B?N3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E9EB80763AB4E40895EA75BE6B4EC9F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 702c0c9b-a7c3-4c97-8fd3-08dcc1d2527d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2024 11:13:45.0709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iz+qfw43sHtWvMstgyfIbV5LyQ8VoYlcfvumoxLKReaOBOgSzyv3RGPD1zT+qMVT3ECCQ0obZgTHlLcS9Bd+JGs42eS36vFhT75NaJFbqQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
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

T24gTW9uLCAyMDI0LTA4LTE5IGF0IDEzOjIzICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBNb25kYXksIEF1Z3VzdCAxOSwg
MjAyNCAxMjoyNiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwg
TWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3Bzcjog
UHJldmVudCBQYW5lbCBSZXBsYXkgaWYgQ1JDDQo+ID4gY2FsY3VsYXRpb24gaXMgZW5hYmxlZA0K
PiA+IA0KPiA+IFNpbWlsYXJseSBhcyBmb3IgUFNSMiBDUkMgY2FsY3VsYXRpb24gc2VlbXMgdG8g
dGltZW91dCB3aGVuIFBhbmVsDQo+ID4gUmVwbGF5IGlzIGVuYWJsZWQuDQo+ID4gRml4IHRoaXMg
YnkgZmFsbGluZyBiYWNrIHRvIFBTUiBpZiBDUkMgY2FsY3VsYXRpb24gaXMgZW5hYmxlZC4NCj4g
PiANCj4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2Vy
bmVsLy0vaXNzdWVzLzIyNjYNCj4gDQo+IFJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgTWlrYSBmb3IgdGhlIHJldmlldy4gVGhpcyBp
cyBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVy
DQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgNiArKysrKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGluZGV4IDljYjFjZGFhZWVmYTcuLjU3MmRjZGY3NzQ1M2MgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTU4Niw2
ICsxNTg2LDEyIEBAIF9wYW5lbF9yZXBsYXlfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWFscG1fY29uZmlnX3Zh
bGlkKGludGVsX2RwLCBjcnRjX3N0YXRlLCB0cnVlKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAo
Y3J0Y19zdGF0ZS0+Y3JjX2VuYWJsZWQpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUGFuZWwgUmVwbGF5IG5vdCBlbmFibGVk
IGJlY2F1c2UgaXQNCj4gPiB3b3VsZCBpbmhpYml0IHBpcGUNCj4gPiBDUkMgY2FsY3VsYXRpb25c
biIpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRy
dWU7DQo+ID4gwqB9DQo+ID4gDQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQoNCg==
