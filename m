Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D5E91F0AC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3CA510E54B;
	Tue,  2 Jul 2024 08:00:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BXPb2bbd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731B110E552
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 08:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719907236; x=1751443236;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gTK7zWKyA6E/D9mZopWL11z1uj35wCYsP9aPJl/8blw=;
 b=BXPb2bbdbX27Ypon7VIu+oSNLamwcniHKwfaGqifmvKY6MWd6HpAZMDs
 qVQa6HMwEqqZZvi5y0fOmWeaYVlwlOElew1uBavmR8718H1/A8oIzC7L8
 zk9y3n4QW6Y+DlY0y2EHCUP9UNaJ4FDnFS1+K2sPhQFr+WLNaI0vDK035
 hljunzihuqUlhXWtokZMUeaJfxGZO/M8G9TmQ1kz9VM66xlWzmo8bG5nt
 QhaJ2kDHR0/3PusndeUZBf7hK5hZzzMU0URJGaa+YoZsXuPzAig/btVZY
 pPI/ZfwOKkX+XL8V4JEgnOIw4sVE6YaifP6ETYcVUbEbKysrUx1oZx7AR Q==;
X-CSE-ConnectionGUID: J014/sThQcCnzY+j0UpE/A==
X-CSE-MsgGUID: lq+Ts42yRd2+MvnTkSV5nA==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16730064"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16730064"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:00:35 -0700
X-CSE-ConnectionGUID: 4nRI+HaaSeigXz7eLKswkg==
X-CSE-MsgGUID: CZxLO0FXQ+CayP0QuSbxzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46240100"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jul 2024 01:00:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 01:00:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 01:00:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 2 Jul 2024 01:00:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 2 Jul 2024 01:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VasKvocHFx0ZC7tRreHPfIcSK4GSoIciuORh4dpJvi5oZHMWJqk5KVbdQnrMfR15Ky6sxrAYIXnn6yonqEgjKnxWMa6MtHNnhRWSVDSgcNo8DB1gfdIDRDZJfaj3tk9+0vchcHKChKTbTnhMSwtxG73LoBwDqMsLp+28TPjgcrDKdGNbBxmWuxliO3lFFBxr+3MQeEW+EZSU2OtuO/SmFadyCOMb9f6FK1ODFpXnwrFQD6U9mgdpYu3LWl0r9RT3ExcX67hilyWU1QtQ/dqtrjy1x8NzR7PJHjlkixOtbMErJNuvUySQWQcFd/SX2WRl5aXsyD80V4Kcr7yesTeu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gTK7zWKyA6E/D9mZopWL11z1uj35wCYsP9aPJl/8blw=;
 b=Vh7V8I1d9VTKC8PoCFKp4hfQ4I6Rn+q+H0LIXYkfP2/y8SEafeoVpLiwpXTas2qr755JH+JS6WR+5VYRHNRMuMSQQE7l2R9oZGh7hgqz0yKgyTWQ+eKYJTN9ykmFN6jsueBNqRe9gSUK8JMlF+aX1dFavU1FDmiAL2jIzw68kJfE0Rm/DbiYqbakeP/60R0rIVw4TixAKvhr7AKRKq8PPzq+SYlEyor9YRm3l3PWziaKMWBNhO/aP17eQJWWozYlQ7e1Xh2zm34j5g+lldHoLmdOy8VnqOmLlVijQHktk+L+cPqGUyFkyk6MAyZdqpEBRcqk+af9VOGH/Q3dsaULeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB8687.namprd11.prod.outlook.com (2603:10b6:8:1be::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7719.29; Tue, 2 Jul 2024 08:00:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7741.017; Tue, 2 Jul 2024
 08:00:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, 
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH v8 2/2] drm/i915/display: Set Context Latency at least 1
 for psr1/psr2 during vrr
Thread-Topic: [PATCH v8 2/2] drm/i915/display: Set Context Latency at least 1
 for psr1/psr2 during vrr
Thread-Index: AQHazEb70BbS69dmF0C04Ud8C5hPQrHjE0IA
Date: Tue, 2 Jul 2024 08:00:31 +0000
Message-ID: <07688610102f7b13dbb951196fb668b1f265e486.camel@intel.com>
References: <20240702055631.3722013-1-animesh.manna@intel.com>
 <20240702055631.3722013-2-animesh.manna@intel.com>
In-Reply-To: <20240702055631.3722013-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB8687:EE_
x-ms-office365-filtering-correlation-id: 5410c625-281d-476b-fe29-08dc9a6d0b92
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VCtFdDFpcGxkOTR3TjlnVlBiNVJnb2VUQ1l0NUFZQStxbzdWaFRVTGRBODBW?=
 =?utf-8?B?NjBJZG80b1ErckROMjEvMURpZUZFRklnSE8wYnpCUmh3dEFYUUo2SGVqTXlK?=
 =?utf-8?B?V0lHMUY4WFl6MkUyUzFIVlJwazdvbUdERldzK1oxemp2aTdUZWduaHhGaVZY?=
 =?utf-8?B?aFluNnNXay9oS0FKN29TeVduZFRwOG1oUVpYZkNJTElSek1SR1BnY2lPMDM4?=
 =?utf-8?B?dHFLQUlBVEZSLzBaV2lUVkNBU3dtQ0NyVnVCZzN3eWRXa2JCdFBWeXZTRmp5?=
 =?utf-8?B?ZDh5dTBmYUc5NWpNUFZibHNYQ29BcmIrSGdOSHk2Y21mTzUwbTNORG1WbThY?=
 =?utf-8?B?anZ6RlI3UmhmUERwaExQNkJFVVJFNzZUd2wzblRtSUpiZTAzUC9ONlNQNVg3?=
 =?utf-8?B?TEt4NlRLcXBqaEkrcWN2U0V3WERRZGQ3TUQveTJidG5lNHl2UTVMRWhIRjNF?=
 =?utf-8?B?YmQwTHRNaHByaWZ3eDRBYlBEZ3VpaHdncHh2eHZGeHByTGhlamRsdWxsMGxD?=
 =?utf-8?B?d0ZSRGtYMitIMGgzOHBNMEEweGhuZUFZNlRXeFYveUV0UytTb3k3Uko5bzZP?=
 =?utf-8?B?VVU4S2xEeTNHUTBoZnh0MHU0Qzh4MWdtaWhHRGNPeGtZRlhJaTh6TXlMRUdz?=
 =?utf-8?B?dFZLa1Jqak5WcXk5UEw3OFlKREwzYXU1VTV0NjJwRWc0Rlp6cGljaUFJRm1l?=
 =?utf-8?B?Zm5Cd0J3UVBzOURNUmJXOWRGUkE3SXJsTmRRa09zOTZ0YVNYN1NwNElRbG5E?=
 =?utf-8?B?VG5mOTM0RjRwME9vVW9kQ0ZoYmxMNk5Ga0ZFdTc1R1YwUUxLZC9FS1NqRjhl?=
 =?utf-8?B?cGVGZmJaY0lOM2NWbTN6R3V1SmtyaVluRnQ5WjlkU2gxSlhMY3BEdmc3dkhF?=
 =?utf-8?B?SUFpU2FKYWk2V3F0aE1LaThkMUMxSWMzRVk2VEVqK3dhR3BKMC90OEhWU29H?=
 =?utf-8?B?UmpXUGhscGtLSVRQNisvYkJRMGc3ZjRkUmZFOTExUWdReW9vMGZ3T3psNEJQ?=
 =?utf-8?B?bFg1MEV6bDdHSkFqRkM5eTRlTUVJUkdhZFFRRzhFMXI4WFZEbjlJTk51OFJD?=
 =?utf-8?B?K2JVSEtoTWsvZTg3Q0J2YytWUzh0UGpQemc4YUs3eDRmSUJLWENwbEVOSW5Z?=
 =?utf-8?B?Y2U2blVBSWI5TmFtT0lCUEpkOU95cFBFcitZR1c2UTZ6Mi82VVZJMlFNYTM4?=
 =?utf-8?B?bUx4WkQyeGZLdVZNdXNybTE1RFNWS1IrL1dmZnhWVEkrcE1MUnhGNDl6dHBS?=
 =?utf-8?B?bnM2bEhwcWlDUmI5eWR6VFcyYXdpZExrYjFOSFRwSStrcEVJVmpxNVFieFpE?=
 =?utf-8?B?emN5U2NVNG81aUI2VDJIUzh0cnhXZlhPVXRZZENpZE14N2RjTi92M0x1RUpC?=
 =?utf-8?B?UlpNTGFLYVVlNGlCSVVPdnBpelJ5UW41Q1lqSktiWUdHQjkwa0MrQWpVUzBk?=
 =?utf-8?B?T0JoTS9ra291N0lCT3hwYW5VbytMN1hLYmxnbGY2Y0VwaDltUFM4TlZnYitq?=
 =?utf-8?B?U3hxaVRsSzRHVnFXWm1LS2k0ZlNVejFja3lpMDZMRmpUaXYxN1ZsT2dhSFhH?=
 =?utf-8?B?MnlZVzE1Wk1Tb3puL3JjMGw0d3F0M2hQbUkzN1FQUEh0WXlaaUF5ODl1R01M?=
 =?utf-8?B?ZXpJU25VN3RsLzkzVmQzTy9iN1M5dSt3SFczK1kwSEtXVEwwMm5jUTQ3L3JP?=
 =?utf-8?B?RTdBTW1rbHlUWjBsZ2hvelBheW1xc21GaXhZOFYyTWljNjZJbnlySmJXZFdy?=
 =?utf-8?B?UDk1NHMwVDFmZk5Vc3FUSGpZaVNoT1JEVWVwZzdJS2Rjb1dBVk00V1grS1E4?=
 =?utf-8?B?TEhUdDFWbDNIbE9BdVpGR2NPV3V1SmptdzVWZVJ0eHg5R2lDKzdWeU4rMWRz?=
 =?utf-8?B?Ylg1QVlBdDFyOXVzMktzbUkvUC9Wb0crcEpWRiszZnhkR3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDFTLzNpSjg3WHNZdWhIRWk2eDI2cEZESllsVWUzV1VZRjJCcmRzM3I3Z0Nn?=
 =?utf-8?B?bTJTZ2xKd0xzdWZodjZpWG85aUM5bndQd1lLRklPOHpLNm9laXZwQmdEU0w1?=
 =?utf-8?B?ZGVLSmlXWGZDNlFiYmlRRUNsUFlsYTZaaFUyK3QxTGlqQXp0a3ViSUdTbHBj?=
 =?utf-8?B?ZUlKamp5bmw1SFBDVmFKMGpvR2Z5VEI0RFo1VGdxcWM0WW1hUzdEUU1ieDNV?=
 =?utf-8?B?cTFOQlhhMk9jaW03THVMVy9aUE40MHFOSG9TeElkbTlLZDJxMCsyNkZBM0Na?=
 =?utf-8?B?emxhdmpaRDZjcy92eStNdkdZc2N6K1k1SHlDLzZrL1hWa0JGVkZRMHhRMlNr?=
 =?utf-8?B?ZHhNV3pjMXdZYjJXdmphaHY4MzhnSWhDMFl5eDVoQkJvYnJNVndweG8reGg3?=
 =?utf-8?B?TVo4bk5DaDBOWXZtM2lONlY4RFZNNjl5a21nK21aQjVqRHQ0ZkZHSjB0Sjlv?=
 =?utf-8?B?d1ZIZFpSUG8zcTBWOEFLdUY2QWo0Rks2NlNvd281UnRxSktqYW9lZkU5S1ZD?=
 =?utf-8?B?a1AzcWVIc2ZKQStJRmNVTXhwMWZFSTd6THVxbmdwT1BpdFhMaWhwMDVITHBl?=
 =?utf-8?B?dGg2MW8vMjI3SzZydG5NN2Z5SjRSYU5IZG5ZaW43KzlOUHBpcG0xMzhhMlEy?=
 =?utf-8?B?WUlCRWNFUmlybTdIQytCUFM0SzFXcjY4Y0dId1RzUWd0THFBWVVNeHI5NWNz?=
 =?utf-8?B?TEw0VndNUHhWN01HWEtDSUQ5UzZuSmlGL1c0bnFlUE9KVlpBQTM0aUZTWXpI?=
 =?utf-8?B?YlBkR045MkF6YzRvTGlQd1JsOGdiTU5vQURLeUgwMnhwemZUbW5GU0JGUmNm?=
 =?utf-8?B?dW5XY3hzR0V5LzZPbkRJOGNSbmZkbWFBa3BiLzBzcHMyTDBkMDV5TUZpWWdL?=
 =?utf-8?B?VWNjbkFuYzFRa1NudEZ1VXlLKzBwdUM1WHNHbDl4VnpuYzFzY3VwZlQxOU5a?=
 =?utf-8?B?SzROTUhOejFHb1VlMWliVHdFbVMxSHFGUVRXeHl6SFFwTVQ1aTlvL21aR25L?=
 =?utf-8?B?VXRGUW1EK0VkaDIyVlN6dklvTVlndzhneEJEM0JIZDdtcXl0aFEyMm40N2ZO?=
 =?utf-8?B?U1QraVp2TCtaWkxST0ZLcHZ4a1ppNmJNbEo3ZmVIcExyT3lNbTVLcVMvU3ps?=
 =?utf-8?B?WEd1bno4QUVTUW4zSXN0Um8zNWtzcHhaUnU2NU94RktkdXYxcHFLVDJjVlZx?=
 =?utf-8?B?RWlSZzNab1o5SUFuWjNscmEvcm5VeDFkVEhHMUVDNUIyTDVZdlFucXFybEFF?=
 =?utf-8?B?TWpqTTYwQ1NmYXlhTTdTa1dObENwZWdvVG5iUjRtNVVrbmlQSlloVGt5TUhF?=
 =?utf-8?B?RDBrUTlNYnVNT0RvL2kwcFUyZ0NlNmd0bE1pN1Nic2YxSnlQZnh5VFdYWlRJ?=
 =?utf-8?B?UnNhaVcxTFhFck1iOU9YTEUzVmpHTTdZb0F6aHN0TUE5eE11aHpaemYxQVRO?=
 =?utf-8?B?T3gxN2dYdzFhOTFwdFNoZ0oyUmE5UWNwdmZnRDVVWk9jcGg3TlBtdFBKdG9P?=
 =?utf-8?B?bmxwdm1WRjlGakdTaVJYZ016T3Y5SnNsY3ZaK0VKT0JXcEt6MGdqaXIzRG1L?=
 =?utf-8?B?Ymp0V1A2TmlHOXMreXZYU1RsWm15eDJJNlZsMEtGMys4R1hlNmxFU2V1UjdC?=
 =?utf-8?B?MkdXWlV4K0ZJVEtOYXc3bGFCcWs5a0FJZXBydGkzd0xIMU1LRUNSN1ZHdGRm?=
 =?utf-8?B?WGVmMXJOdnp4S0RRcFJ0allubE5RaXM1cDlFc0RWVmNzRER5YzQ1U05QN3BL?=
 =?utf-8?B?WG9XaUlybDhEcTlla3JFMWVyMTkzQk9sWU82dmJ4NzNNUGZ5blZjelZldUZ3?=
 =?utf-8?B?QWttVEZVd2Z5VnpIUWl3R1R4RWVEVVp0RG5hSXJQSnZoNmUwKytLd2xxQUQ4?=
 =?utf-8?B?MkNlaFh4QWJMK2RCT2lMeTZqL1J4VEkvMU80U2xvc3RoQ2FCa3NxMjJ1Y1R4?=
 =?utf-8?B?aldza2VJUUlnSE9rMXFoVzNSRUIwTjdFTmZqL1FacWFFRVlFQnlwNTFuc0tl?=
 =?utf-8?B?VXJOVkUxS2hCYmZnVnp1S0tMb0MrRUkvZzJkTHQwZlNoUkl5eEc5OG55a0lh?=
 =?utf-8?B?R0xIaHJjZXdCLzBuT0VLS3lkaEJtcmJsZVNiT1pIcVgvSU44aWMxaDNhTitj?=
 =?utf-8?B?cVFpWi8vZm5vOWxpb09BbEU4Q1IzQjhrdFVwTmEzRm1GSk1lZUh2OGV5Z2Nz?=
 =?utf-8?B?OUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BE3980B851DA454EAAD52144BDFBD73D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5410c625-281d-476b-fe29-08dc9a6d0b92
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2024 08:00:31.5432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQ1999xsVjVvI36gd/u5Zz14WYz+6o8C/3OqVZugqSdPyPbamPPy0KSb7aGzxC/4u/cPv42u6iyLM55vScPWw5aHkv8KiDGlaPs034Y4foU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8687
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

T24gVHVlLCAyMDI0LTA3LTAyIGF0IDExOjI2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBCc3BlYzogNzE5NTYNCj4gDQo+IFRoZSBTQ0wgd2luZG93IChpLmUuIFdpbmRvdyAyKSBtdXN0
IGJlIG5vbi16ZXJvIGlmIHVzaW5nDQo+IFZSUiArIFBTUjEvUFNSMi9QUi4NCg0KSSBkb24ndCBz
ZWUgYW55IHJlYXNvbiB0byBoYXZlIHRoaXMgYXMgYSBzZXBhcmF0ZSBwYXRjaC4gU3F1YXNoIHRv
DQpwcmV2aW91cyBhbmQgbW9kaWZ5IHN1YmplY3QgYW5kIGNvbW1pdCBkZXNjcmlwdGlvbiBvZiB0
aGUgcGF0Y2guDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQ0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBj
ZGFiNzFmODFlYWEuLjA1NDYyYWY2ODA1ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTM5NDYsMTIgKzM5NDYsMTIgQEAgdm9p
ZCBpbnRlbF9jcnRjX2FkanVzdF92YmxhbmtfZGVsYXkoc3RydWN0DQo+IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+IMKgwqDCoMKgwqDCoMKgwqAvKg0KPiDCoMKgwqDCoMKgwqDCoMKg
ICogd2FfMTQwMTU0MDE1OTYgZm9yIGRpc3BsYXkgdmVyc2lvbnMgMTMsIDE0Lg0KPiDCoMKgwqDC
oMKgwqDCoMKgICogUHJvZ3JhbSBTZXQgQ29udGV4dCBMYXRlbmN5IGluIFRSQU5TX1NFVF9DT05U
RVhUX0xBVEVOQ1kNCj4gcmVnaXN0ZXINCj4gLcKgwqDCoMKgwqDCoMKgICogdG8gYXQgbGVhc3Qg
YSB2YWx1ZSBvZiAxIHdoZW4gUGFuZWwgUmVwbGF5IGlzIGVuYWJsZWQgd2l0aA0KPiBWUlIuDQo+
ICvCoMKgwqDCoMKgwqDCoCAqIHRvIGF0IGxlYXN0IGEgdmFsdWUgb2YgMSB3aGVuIFBTUjEvUFNS
Mi9QYW5lbCBSZXBsYXkgaXMNCj4gZW5hYmxlZCB3aXRoIFZSUi4NCj4gwqDCoMKgwqDCoMKgwqDC
oCAqIFZhbHVlIGZvciBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZIGlzIGNhbGN1bGF0ZWQgYnkN
Cj4gc3Vic3RyYWN0aW5nDQo+IMKgwqDCoMKgwqDCoMKgwqAgKiBjcnRjX3ZkaXNwbGF5IGZyb20g
Y3J0Y192Ymxhbmtfc3RhcnQsIHNvIGluY3JlbWVudGluZw0KPiBjcnRjX3ZibGFua19zdGFydA0K
PiDCoMKgwqDCoMKgwqDCoMKgICogYnkgMSBpZiBib3RoIGFyZSBlcXVhbC4NCj4gwqDCoMKgwqDC
oMKgwqDCoCAqLw0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSAm
JiBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ICYmDQo+ICvCoMKgwqDCoMKgwqDCoGlmIChj
cnRjX3N0YXRlLT52cnIuZW5hYmxlICYmIGNydGNfc3RhdGUtPmhhc19wc3IgJiYNCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCA9PSBhZGp1
c3RlZF9tb2RlLQ0KPiA+Y3J0Y192ZGlzcGxheSAmJg0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IElTX0RJU1BMQVlfVkVSKHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpLCAxMywgMTQpKQ0KPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0
YXJ0ICs9IDE7DQoNCg==
