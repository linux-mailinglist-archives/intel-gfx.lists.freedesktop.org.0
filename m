Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD2D9BE4E5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBB410E6AB;
	Wed,  6 Nov 2024 10:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fhX6bCZt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D501B10E6AB;
 Wed,  6 Nov 2024 10:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730890526; x=1762426526;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=f5HkbNKOsTp413Vo/lZppD8TaRfU5jY1q+l6voLhmCw=;
 b=fhX6bCZt+KlbpkbAaJGTFCJJxBhDyJYslhEe6WYc4VttI8bvtFTVJW56
 FWVQ04vDM5HlB9aOel248opgcPpXFAY4mFE9eF/BzyIE1kyV1R7jGvRdi
 hl5C/ixeoRkdJ4hXB/uaBQrnm18vg+nSUobE/zjRUQIuDUWtONCQJqKCN
 Gs22ixZAnSsK3p/8oRyYB5xL/2b1C0LvD+CPJMWBmevxF84ePYAPwRz9V
 WOvRhsu+XZ4w/4i0lETfU/w9JadWzeQKxwrRoeqezEGk2gOPYcGJCMU8M
 XOlLYSauWCFhww0TKmdgDXDML8kiwJr7XhEh5+ZQEoL6o5l0JeN+aGXZj Q==;
X-CSE-ConnectionGUID: 13NIHKW2Tr+wy8iFwbgH2w==
X-CSE-MsgGUID: bqRrWghGTweRPjyVhs9jxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30788757"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="30788757"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:55:25 -0800
X-CSE-ConnectionGUID: ZV2KCq5PRrC0Kqv0i8k9/Q==
X-CSE-MsgGUID: 5pSLwPjqSjSwD8NLflJO7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="88437748"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 02:55:25 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 02:55:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 02:55:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 02:55:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dL2hIsQbKzYkVe2GiuJHU7nbc7UhsxlWBU/N5bb/25+gy5bthWRhpcZ9bKJnTBW36/4laqMuwo+3xjpJt29Erc/zc88Fla3IP10dqZKrrmMicUTlDVSIhHa8WnR/kskuZT4B+C8PKe070RLIijyTNuzHNdIZmrxhilNfPbt8eCrA2Ff3ReGmouMmLkXi+2dwWcQimcZOOfH9bQoPqUFGaWVtmp3nX6NLMDPfH37hiuaNQoG6AhEBnqsltHpJSRaza0eni3j85OEGeeLMcvUhOCDadSS6jF6Y4z7ELObP1SeLdFhRUNdRNJ/eamT7vuUl6PXCZ1NhlhDzxy1iobAcSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5HkbNKOsTp413Vo/lZppD8TaRfU5jY1q+l6voLhmCw=;
 b=T3Q7NCVgDdxGxxrFiNHkz+IKEEKfCIZU7uoWQ9JC1rAKCuoKRFdSneosuVehOP5yvdZozd0vkP+5hrmfH2Yix17DCU8YVkHBchX1gjiY/tygGf5OOw5O74lOq026FHnnElfqTC91ZDe+gPoHaCqvz2srIU5dJpMR5AWuW6y7ENhQV8Dzparf/AZV7we+34CygIy3+dkShYCZFZaWGqAUlTUleuZTT9gE5oLGxCgMGfIdOF/fJE6Bl1y6FwHBIVgxkAg/m5/WRSxucB30CU9hK1aYqI7BYVKiCSSvVPUMdZHWZEkqukfq+GI90dlVR7bDE0/KguJyYovZiW9OBg7+Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB8802.namprd11.prod.outlook.com (2603:10b6:208:598::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 10:55:22 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 10:55:22 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 11/15] drm/i915/display: convert HAS_ULTRAJOINER() to
 struct intel_display
Thread-Topic: [PATCH 11/15] drm/i915/display: convert HAS_ULTRAJOINER() to
 struct intel_display
Thread-Index: AQHbLt35Gfn/0bYedkyM6Bt+nGBJM7KqFwIA
Date: Wed, 6 Nov 2024 10:55:22 +0000
Message-ID: <dd00b65d2ff75b3ae3c773791259c3d0fa47b445.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <ea4d7f4694ba92c87b00258cd9786d668a09c313.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <ea4d7f4694ba92c87b00258cd9786d668a09c313.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB8802:EE_
x-ms-office365-filtering-correlation-id: a7a3fb3d-afdc-45dd-dec1-08dcfe5182fe
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YTczS1RVYk1CSzRPWTVocElySE9NdG1YVjFpc0t6OFNxbFlOWXhESHdnTXpT?=
 =?utf-8?B?Wjl5cDVpdzlEUjh2UkJXM3BqTTBhKzQ3UEJrV2czMkRlWEZ5bkpVV3lvNHFp?=
 =?utf-8?B?SXhmSEFjOGt4aUNEZ0tPMUU0dzdZZEpWRTlpZUVsQkkrQWVXTldQNndvdmxl?=
 =?utf-8?B?UEZqbnRpcHhPR2hzNTJjK21MRStrWXV5MCtSVWxPeXh2NnBXM0UvMVhBSTJQ?=
 =?utf-8?B?aGpxcUhxOE1MSDlEV1I1UWpsYXVSdllqV1pJWEd0WDBSbFFPSzN6K2JRbkpD?=
 =?utf-8?B?TlFzeVVhMEZUSkFwanBMTTkzWFBHMmo0cFJvSVVNbnFlOFNjUnZuMHlYenRL?=
 =?utf-8?B?ZU13N2I2SjV4V2kxbjlOY1pIdE00YWtOaHdCbllLYnpUMzNPZXB2YmU0NDRJ?=
 =?utf-8?B?TG9yUkpncUw5MUtRQ0txYXZMU2FzN1UwQ2F2ajd3Y3doVVUyeldwaVpLeFJO?=
 =?utf-8?B?RmR3WUlKa0FPOHZYMTdwcTBvcFBjL3lteGt1UUdRNnN4eUNTNmduejlRR2lN?=
 =?utf-8?B?dlpkSGo0Rmg4eUdVeUF1aW1BSVdJU3VhWlBzQ2FrOEhEbE5palUzMUxIWUJM?=
 =?utf-8?B?NENhMTQvR2hPTnVZbzZvZXp2eFFCcUxqN29vSnozSHZqM0ZUUWU1VXBSQmtw?=
 =?utf-8?B?dVl6OHYwS1MvbHhYV1NQUXM5NmlGKzVVNHZWTHQzSElQYjlIaC9CQmFaTEhO?=
 =?utf-8?B?KzFQNnlCaUprZTVlalptMWZNdk1GZjlYYTdTZkI0KzdONEFvNnNNVThNdEZI?=
 =?utf-8?B?M1JCOW9ESXRpUitxNklCUWhaQm1mK3RySERmNVNpSHhKT2R6OW0rWHZtMFVP?=
 =?utf-8?B?OHM4LzN1MmNONnJMc0p4WXZCOHNPRjU5UmZyaFU2VWp2bjhXU0JYWFliaVU3?=
 =?utf-8?B?R3NZRXAvandkVWo1QVlsZXdNalpWMVB2clJuREFTUXdMM1FOL1Q4b2o0bmxW?=
 =?utf-8?B?dE92RS9aK3M2S3ZiUDVRT3dDSGZYUGMxYWZmYThjQVM5Y3d2N01YRFpKUEZI?=
 =?utf-8?B?ZU1xQTB0bFRiRm9HZXJsaTJpSUVkSnB6eFM1aWJDdGxzNDVkdlppcnNKYXFN?=
 =?utf-8?B?aERydm1KSWt4clRFcFBQZ21nSllVb3N2R3FXOXk2WE8rYmhWak9ySXhTYUR2?=
 =?utf-8?B?QmdRbFBCL0w5ZjQ2MmcvWElRWngxenplMkw1Mi90c2dTVjB6ejVNMzBpcWIv?=
 =?utf-8?B?WWh6NlRudGtmSU9lamhubUUxc2dHb0laSlA3akhuY0hBaTdtZDZzYnpUUU0r?=
 =?utf-8?B?ZlBwRlRaK1NCY0JvVlE0ZkZjczhNYTFaYWZzQXU4QkNvTHRUUGkranFvR0VN?=
 =?utf-8?B?RldUczZMWE8yZXAyZllSWUJscFh2ZFhkdFFndG5Lam1peEZWRXNIejREdURR?=
 =?utf-8?B?TDRsV1l0VEtFVGV4U1E1Zm1SZEFHbTc3OGE5Wkt2VUlwbEc0NjUvRkZpcVJZ?=
 =?utf-8?B?S2Y1VTZ4WFpCNllhR2xPTTRJd0lkOThiQ1ZBNlk1MThFMWRQSE5EWG0vdVYw?=
 =?utf-8?B?NGxsZHQwVzIzbXZKZkVwdjMyVnN6aVV0MUxsSFU1d1dzenRQY1NUY1B0aXM1?=
 =?utf-8?B?KytpTFo2RDc0VENXODYzWGE5S3BqRFpPdThlWEpSbzVVQk5UWmI5enpKS0Vz?=
 =?utf-8?B?d01VSERkbC9vbzFiMjIxVXhMalp0ZmxUd0Z3SXpBdG1VbUVGVTVqMmozZVo0?=
 =?utf-8?B?cjVEbmQvaVMwN3FOck1ER3FHV0R6SXByZkxLcXAza0l1Um5RYjFLNGtvK1Zy?=
 =?utf-8?B?S2UyVkVQZFJiakNCK2lHMVljNVRwMEZpMWFiSTZJZVZIdXhFU3R4d2IvU1h5?=
 =?utf-8?Q?yssEH/SikztkoTtqkeQw2ja/rRzgJ2aoXeI5o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXFzTnIxeTA0YkxBMks2NGhTOFBkNnBzZEhuTld2LzhTTjlaZUo4MnFSOUNw?=
 =?utf-8?B?ditlc2dxZTJqL1RDZ3U2dGR4MGFwWU1sOXpaSE9WNDN0cStJWkE2a0lYN295?=
 =?utf-8?B?L3hLWWx4L0RNWGdEbENkMDZlQVJ5eEtpNWxWWHRKYzVjTVlvOXpBdHNRbHAx?=
 =?utf-8?B?enJCZEx5WnZEQ3RXcWpaYjBnbExKeUdpbG9wWERkTkh1QVJGUDVScWJ2MTFy?=
 =?utf-8?B?YUM5VWMwUDVGNDF2N2hSbjJlS01LZzgxUnpqVXd1MVNpeXphWjdLanRxaFRO?=
 =?utf-8?B?OVh1TEhqTUZ6Nm1lajh0d1BBclhlZ0FiSlBxbVREMTA3alR6eWcrcjVMYU1a?=
 =?utf-8?B?TW8rYkxoRjFBQ2tWNDJ2ak9xMk9XVjhSUjNUWHlobGhTQ0QrSG1XMkxZVEJC?=
 =?utf-8?B?RmE1UG90d1RKNFk1cXY3M2xSYW94ZnJLdi9VRFJwUkpBQjhSOVZDSHJiVlR2?=
 =?utf-8?B?b25OVmFPNEl3K0FNbzFZWk54OWxJODc1RnkrOUE3VzRMdXk4M3BJOUZCZW9v?=
 =?utf-8?B?Uk9PUVZaNzU1cFRva2wyVjZPbGpIRHc0UXJhWXFReDU4TU52REdnVythRndn?=
 =?utf-8?B?KzBBcll4dlNsTDZRb3VUSXJyNkxsWmZOWDVCZGJDbVhLRDBxcHJzVlpjOTRR?=
 =?utf-8?B?ZWdaRXBYdFBOR3M5dzV0SWJDRkFIQ1RTM1hTZmFLanIrek9xRTJSWFU3QUx1?=
 =?utf-8?B?WFdqOUVGMVlraHQwUEozRVZCdm5BTGljaHVWMi94azVnMitqWUlVRXcwZ2M2?=
 =?utf-8?B?T0xmZnl4eTJtZFdUYWkzelBPK1lkbzdNZ2hqNHRTRjRnSnhoWTc5QUIrN2Jj?=
 =?utf-8?B?WHpBbFpxcmsvanFjbTlyL3ZjSTltMXo2NDN5SHNwbHdCR0NRRUg1UXFDeUQ4?=
 =?utf-8?B?UVMxTjE3REhPUXVoN2o5MEhya2VUWGxWbEMzV1l6Y3pzVU5hcitzc2NRWWY0?=
 =?utf-8?B?Y3Qyc0Z5SmRSbDdnekNOelJTbXhudWtYNExDKzJtL1ZuNlJFMkl3MG10amdT?=
 =?utf-8?B?T2pWK21TMEhOdFFGUFBmSHY2aHFRVDJtYjVEcDljczQyeWtobzhyQk5vQm1h?=
 =?utf-8?B?U0IxbjB4ajlaM1Ziek0zcnU2WmFJSmhhNXVsamxHWG85ZFEvVjFaQXBxdTEx?=
 =?utf-8?B?bXY5blh1V0grVVlRTndsVlNPNVVFQzJVcWI4TTFlYXMyM0hrckZCeFVHT2d0?=
 =?utf-8?B?U1lRbFVYMnZOYUZwbFRGOVpyWGV5SlBBUUF2SWVDVzZDdTNaSzVEeXEzdmht?=
 =?utf-8?B?WXc5aDNoeHNyYWZFNXlUYy80NnhOd0tlS3p0empJWWtKdDI0M01LVFZCUEN5?=
 =?utf-8?B?WFpkM01JM1dyTENRUUVNSzFnSEdLaTVSTGJ0OW4rTnNwMXVmenhpVkxsRFZl?=
 =?utf-8?B?K0U2M1QzOTIwU3RHYUtVQUdISGFhd0grRTBsMnBYQko5WGx5T2dHTDljZUJ6?=
 =?utf-8?B?Q3NYL2lVY1pnMTBidmpwQktsY2orWUZVRk55UWlHa2VTdmUyOUdwcHdoZStu?=
 =?utf-8?B?RHdORFJ2clYvUytSd2FWR1FCZnkwN2pva081Q0I4ZVFKeCs5Yk5WaXRtUGlI?=
 =?utf-8?B?S3JnbzNEd3hGS0Y3eVViNFdnbXAyQ2xwaHFKNnNLenA3bTVxTURaM1pTTTRV?=
 =?utf-8?B?VnNpY3g1SGtWTlFGbDlqc0QzN0pTbzVnSm1xTEF2VUMySncrdnhGTlNjU2VC?=
 =?utf-8?B?QmtqdHlwY0dkclNqalNPZlFqaldSc0s5dUtPYWZMLzY1cTJRSVMwRUhNNCtL?=
 =?utf-8?B?U1pQN3hyc3ZVaDAzZG1WeHpjWGl5ODU3T3IvQVpyOVpMeTFDeW9oVjU1RVh4?=
 =?utf-8?B?SzR2N0JURy8yL0k1L092UVVUanZ0ZXpSVnlaemtpTzNPc2VEamFnYWxFUE5O?=
 =?utf-8?B?eWhsNFZBMnNobnBiNnBBM3Q4TW9BV2d0bjZseFFyYS8wMU82a1NUbTdxTjZP?=
 =?utf-8?B?U3EvU0h3TTZKVDlMdFBKNWI5OUhoZUZ0cEtpeXZpMGE5NFVOaTU3ZkR2Q2pY?=
 =?utf-8?B?ZXV5cFhTN2ZidWtQSVB1OWtIZHBrWGQrYWFSMVFGNjE4UnQvbUFlTjhHaFNR?=
 =?utf-8?B?V3BnMnhRcG5ha2FjRWJwNjdMcjZZQjBNV1RBZjE2THl3UjBScEdrQ3psd0Vr?=
 =?utf-8?B?Qll5QU5ZNEE5SE1uM0g4ME1UdHVRRFFqcFFrWUJZeWozWHBnWnNuZWxHbU5v?=
 =?utf-8?Q?Bv7Ht2gtPk3OOOwRkMM3FJQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F3C19BA00155A4D90D69EABDCA0650C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7a3fb3d-afdc-45dd-dec1-08dcfe5182fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 10:55:22.3054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f8reFqINC7ObnTDNxk5PKFIonlSYRVtjhx0X6L7CJtHZKGEzl1+wyxJgvncSHdW4YcqdQjBBQ5Zdk3WVqYsSWvgaKSt+dl4tjljMeqJpONA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8802
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19VTFRSQUpPSU5FUigpIHRvIHN0cnVjdCBpbnRlbF9kaXNwbGF5LiBEbyBtaW5p
bWFsIGRyaXZlLWJ5Cj4gY29udmVyc2lvbnMgdG8gc3RydWN0IGludGVsX2Rpc3BsYXkgaW4gdGhl
IGNhbGxlcnMgd2hpbGUgYXQgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jwqDCoMKgwqDCoMKgwqDCoCB8IDEwICsrKysrKy0tLS0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfMKgIDQg
KystLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rldmlj
ZS5owqAgfMKgIDYgKysrLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNSArKy0tLQo+IMKgNCBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKClJldmlld2VkLWJ5OiBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4KCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4
IGY1MzYxMWU4MzUwMi4uYTM5MjRiYmIwZDJhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMzc0NiwxMiArMzc0NiwxMyBAQCBzdGF0
aWMgdTggZml4dXBfdWx0cmFqb2luZXJfc2Vjb25kYXJ5X3BpcGVzKHU4IHVsdHJham9pbmVyX3By
aW1hcnlfcGlwZXMsCj4gwqBzdGF0aWMgdm9pZCBlbmFibGVkX3VsdHJham9pbmVyX3BpcGVzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU4ICpwcmlt
YXJ5X3BpcGVzLCB1OCAqc2Vjb25kYXJ5X3BpcGVzKQo+IMKgewo+ICvCoMKgwqDCoMKgwqDCoHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gJmk5MTUtPmRpc3BsYXk7Cj4gwqDCoMKgwqDC
oMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoCpw
cmltYXJ5X3BpcGVzID0gMDsKPiDCoMKgwqDCoMKgwqDCoMKgKnNlY29uZGFyeV9waXBlcyA9IDA7
Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoIUhBU19VTFRSQUpPSU5FUihpOTE1KSkKPiArwqDC
oMKgwqDCoMKgwqBpZiAoIUhBU19VTFRSQUpPSU5FUihkaXNwbGF5KSkKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFj
aF9pbnRlbF9jcnRjX2luX3BpcGVfbWFzaygmaTkxNS0+ZHJtLCBjcnRjLAo+IEBAIC04MzEwLDEx
ICs4MzExLDEyIEBAIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCj4gwqAKPiDCoHN0YXRpYyBpbnQgbWF4X2RvdGNsb2NrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQo+IMKgewo+IC3CoMKgwqDCoMKgwqDCoGludCBtYXhfZG90
Y2xvY2sgPSBpOTE1LT5kaXNwbGF5LmNkY2xrLm1heF9kb3RjbGtfZnJlcTsKPiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZpOTE1LT5kaXNwbGF5Owo+ICvC
oMKgwqDCoMKgwqDCoGludCBtYXhfZG90Y2xvY2sgPSBkaXNwbGF5LT5jZGNsay5tYXhfZG90Y2xr
X2ZyZXE7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoSEFTX1VMVFJBSk9JTkVSKGk5MTUpKQo+
ICvCoMKgwqDCoMKgwqDCoGlmIChIQVNfVUxUUkFKT0lORVIoZGlzcGxheSkpCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfZG90Y2xvY2sgKj0gNDsKPiAtwqDCoMKgwqDCoMKg
wqBlbHNlIGlmIChIQVNfVU5DT01QUkVTU0VEX0pPSU5FUihpOTE1KSB8fCBIQVNfQklHSk9JTkVS
KGk5MTUpKQo+ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKEhBU19VTkNPTVBSRVNTRURfSk9JTkVS
KGRpc3BsYXkpIHx8IEhBU19CSUdKT0lORVIoZGlzcGxheSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBtYXhfZG90Y2xvY2sgKj0gMjsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gbWF4X2RvdGNsb2NrOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gaW5kZXggMTFhZmY0ODVkOGZhLi4yODc0
ODY3YWFlMmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiBAQCAtMTMzMSw3ICsxMzMxLDcgQEAgc3RhdGljIHNz
aXplX3QgaTkxNV9qb2luZXJfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsCj4gwqB7Cj4gwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBzZXFfZmlsZSAqbSA9IGZpbGUtPnByaXZhdGVfZGF0YTsKPiDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0
ZTsKPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7Cj4gwqDCoMKgwqDC
oMKgwqDCoGludCBmb3JjZV9qb2luZWRfcGlwZXMgPSAwOwo+IMKgwqDCoMKgwqDCoMKgwqBpbnQg
cmV0Owo+IMKgCj4gQEAgLTEzNDksNyArMTM0OSw3IEBAIHN0YXRpYyBzc2l6ZV90IGk5MTVfam9p
bmVyX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgY29ubmVjdG9yLT5mb3JjZV9qb2luZWRfcGlwZXMgPSBmb3JjZV9qb2luZWRfcGlwZXM7
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiDCoMKgwqDCoMKgwqDC
oMKgY2FzZSA0Ogo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoSEFTX1VMVFJB
Sk9JTkVSKGk5MTUpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChIQVNf
VUxUUkFKT0lORVIoZGlzcGxheSkpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjb25uZWN0b3ItPmZvcmNlX2pvaW5lZF9waXBlcyA9IGZvcmNlX2pv
aW5lZF9waXBlczsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBicmVhazsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5o
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgK
PiBpbmRleCBlMWU3MThmY2VkM2MuLjU0ODI1NjQwMWQwYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBAQCAtMTc4
LDkgKzE3OCw5IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3JtcyB7Cj4gwqAjZGVmaW5l
IEhBU19UUkFOU0NPREVSKGk5MTUsIHRyYW5zKcKgwqDCoMKgKChESVNQTEFZX1JVTlRJTUVfSU5G
TyhpOTE1KS0+Y3B1X3RyYW5zY29kZXJfbWFzayAmIFwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIEJJVCh0cmFucykpICE9IDApCj4gwqAjZGVmaW5lIEhBU19VTkNPTVBSRVNTRURfSk9JTkVS
KGk5MTUpwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMykKPiAtI2RlZmluZSBIQVNfVUxUUkFK
T0lORVIoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoCgoRElTUExBWV9WRVIoaTkxNSkgPj0gMjAg
fHwgXAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoSVNfREdGWChpOTE1KSAmJiBESVNQTEFZ
X1ZFUihpOTE1KSA9PSAxNCkpICYmIFwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEhBU19EU0Mo
aTkxNSkpCj4gKyNkZWZpbmUgSEFTX1VMVFJBSk9JTkVSKF9fZGlzcGxheSnCoMKgwqDCoMKgKChE
SVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49IDIwIHx8IFwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKChfX2Rpc3BsYXkpLT5wbGF0Zm9ybS5kZ2Z4ICYmIERJU1BMQVlfVkVSKF9fZGlzcGxheSkg
PT0KPiAxNCkpICYmIFwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEhBU19EU0MoX19kaXNwbGF5
KSkKPiDCoCNkZWZpbmUgSEFTX1ZSUihpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMSkKPiDCoCNkZWZpbmUgSEFTX0FTX1NEUChp
OTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAx
MykKPiDCoCNkZWZpbmUgSEFTX0NNUlIoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPiBpbmRleCBhMjdkYTk2ZDJjNjAuLjdkNjU5NDVjOTU2MyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtMTMzMywxNiArMTMz
MywxNSBAQCBpbnQgaW50ZWxfZHBfbnVtX2pvaW5lZF9waXBlcyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaW50IGhkaXNwbGF5LCBpbnQgY2xvY2spCj4gwqB7Cj4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRl
bF9kcCk7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGRpc3BsYXktPmRybSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGNvbm5lY3Rv
ci0+Zm9yY2Vfam9pbmVkX3BpcGVzKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIGNvbm5lY3Rvci0+Zm9yY2Vfam9pbmVkX3BpcGVzOwo+IMKgCj4gLcKgwqDCoMKgwqDC
oMKgaWYgKEhBU19VTFRSQUpPSU5FUihpOTE1KSAmJgo+ICvCoMKgwqDCoMKgwqDCoGlmIChIQVNf
VUxUUkFKT0lORVIoZGlzcGxheSkgJiYKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2Rw
X25lZWRzX2pvaW5lcihpbnRlbF9kcCwgY29ubmVjdG9yLCBoZGlzcGxheSwgY2xvY2ssIDQpKQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDQ7Cj4gwqAKPiAtwqDCoMKg
wqDCoMKgwqBpZiAoKEhBU19CSUdKT0lORVIoaTkxNSkgfHwgSEFTX1VOQ09NUFJFU1NFRF9KT0lO
RVIoaTkxNSkpICYmCj4gK8KgwqDCoMKgwqDCoMKgaWYgKChIQVNfQklHSk9JTkVSKGRpc3BsYXkp
IHx8IEhBU19VTkNPTVBSRVNTRURfSk9JTkVSKGRpc3BsYXkpKSAmJgo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ZWxfZHBfbmVlZHNfam9pbmVyKGludGVsX2RwLCBjb25uZWN0b3IsIGhkaXNw
bGF5LCBjbG9jaywgMikpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
MjsKPiDCoAoK
