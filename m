Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 03AqECRyMmpm0AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:08:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943E26984A1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:08:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=c6W95wHZ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232BF10EF50;
	Wed, 17 Jun 2026 10:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1FA10EF4D;
 Wed, 17 Jun 2026 10:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781690913; x=1813226913;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1UVuWZN65ZXDvlehcFYVR6vDGRtNRmRQTsGs42J6kF8=;
 b=c6W95wHZJM446h/ar6NaF1XsYvqARhoCmO+1+NzTzfGACSw4zN6G4mIq
 LLCmni7lCwkbwKmqRueOM4s/pf+8QB6x03TdRcCeXx2CjXaDnkvwEYIGX
 bVCsv4IBf+oYhlq8AsPh+ioiNXiUeCr+yaB1rxzqKagGcMhn+ATghfM0O
 YyRuw5PFoJdqtj+ibBkOCpN5lj1QuK9bm4jAgS2x/CeRug+hxHHYoUMFm
 UN4/yT/n2LOdKjsTTfFBCxDunMFBjKB3QqVYd4LUeYrZgOH/YQ7FSdnyO
 rSQhGcx64ngyp7/jI073ZBysoejU2fKXce1/+ANbVDEJv45hzUSS4ouit Q==;
X-CSE-ConnectionGUID: 4e4n0MRVSquIS/ZVyUqmsA==
X-CSE-MsgGUID: f+mK7DE6TF6/Ns/GsjUFHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82378170"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82378170"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:08:33 -0700
X-CSE-ConnectionGUID: C/vjHKf/T6m7TH2TTEAo1Q==
X-CSE-MsgGUID: GhOigKq7TY+TLEMNnXXE3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="246891738"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:08:31 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:08:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 03:08:31 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:08:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VUdzINxT4jbhAv56YXEDnrfatToPK2J+vlIrcYYsDjI70IivfYuN6A3s/YMolJhwArxLtj02UKPEPo9O4OY42S0gWNBiXtvuyb9Af3WM0RP/oCYv2ulNpoQxul0sExahh0PL7euZW9NWUUFrm1RjxrUBXWV4WgsybPoHoWi8GwLIscaqJ0+Mqq2joU4ZYdpBF2Mz6HmzfMv9poQB9jsGkRfCod3ExaGI20B4U+zkKmtHLH6t5IXt/+HkvtGUvIUbzNfqWOCuGMcUtvdXy1+S3Kal8W1wTHnYt65mAXCOBjDiUnN6Lg3YhdS8foGgzbcS9Swed92QHvfnpT698FpAEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kci687rWVtLpbJrZPBJdv9b3uRhhwzIzykpTjVt9htA=;
 b=e1kaw4trmI1h17kdKNtrMNqpgfHcw8BursyBz5H1GyI8d4//qjOS1GQbYP/AM8DDMhmRUT7wn9hbS04cbTuZXcIvRsjAh73VobHQ0vNW74gemtJEH2HktHeBUh9MMEH3qOSJoRG3fuDNnOvMPplD7FJIGbqMdrj/W95oItvE2p+Aomr6L7sZzR10j/DJYdrp8bQxVvI2P2nsRrtaXbNbCZBjlNjLHPjfYPD8Q2rLFwZ3oLgbJGaEiMKE4vn0uYj/a7sHgZ3e8DlPvUXWiQHCx8vq+RpTlDAPbn40hdyGgjXAUwB/IQySKAyvGgthxAyTJzl/7/DzknBZ3sg5tH2YPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 10:08:28 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 10:08:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 14/16] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
Thread-Topic: [PATCH v6 14/16] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
Thread-Index: AQHc/ayAPKkFzXJ3lUmrVZLOYJjqI7ZChr3g
Date: Wed, 17 Jun 2026 10:08:28 +0000
Message-ID: <DS0PR11MB8049318E74A9275F9A58ABE4F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-15-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-15-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH7PR11MB8036:EE_
x-ms-office365-filtering-correlation-id: 08cc9a7d-d14f-4ce9-e852-08decc5860cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|38070700021|22082099003|18002099003|6133799003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: 4HcJYKAsS4sKBgfK43Ah34c7Gv19CxB0zlrG/5XoeVFqK3Diz6tHEFOlC6bevG2z0WQ1Q5AOovWCcWUisz51T9AmS89kvREe4xuBdsrrkSGweGRKFwLLB3KO4bHY7nMHrQ8hE5Y60VqQhchRFL27g/5fjP1kR964bzEbg0dbgr0NCooDj+Vr8Ltht2HD52HZw3nvgGd6RyvNpER1Bs4b8rNel8XuZjwzv9zruQ2hDI4Iz23asVGal1/I6DGj7TwtI9Rx9tdYs2yA8CuyRqi0UfIfGCRz2wvAfYFE+e7g3pxLflXi64UdP4ZxBNb59ylBsKYzRD1hDkishDm1fSFJK7+XohOSlF37lqJh74lVIgLChYJPUiV/O0oqCg8n24wZ7nZTnZUmFYTa2tIZHduAmqCOp+55AzpYMg1omaX5FGjTVZPfCCZuYGBnlfqlBQyA+oDjVoYKp2t5fhYR8q8ptH1fahibqIOTglpjgws/9CitgkZEgZ+vgHZBeN2Wq46DUikTNou75Bjl5PjYq7XaGWrhDHV+CrYJ4k/so5Klf+s0ZD3YxFI2oSvWS13s7ytg3NnY/0m3/LVKacAMEc4AsFoOMBn36qLGIX9MeTenaXeICeyT6R6fPU8aBAlylQmaeY8Fg5bhjgh7zV+6X+xXie9kOAqZ7YlQUUVrixFDXcs+fE+0LSRBO+FNZw0CC1oAAlE63ltJ7K+nJ3qbQURF+6pNeQ7PkSc0h4mAwG7vtK/o4KjPSNirwcX7LuzeaR7G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(38070700021)(22082099003)(18002099003)(6133799003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mXMzEvJ69CqgMzT1anUatEhbV/5p/o45yf/+mlcdTQtdkE6p3Eak+SrgZbOu?=
 =?us-ascii?Q?PZ84EPQAt5EWbf/p1tzZn4Je77O0+1FnmKJYHREEcD0pABYVeQIW8Nz2SE6w?=
 =?us-ascii?Q?JNsM22FF2BqNsP19BTXJNUActt7xR1/S/M4Feb7TdP3wA75hXZl46HV+VUvt?=
 =?us-ascii?Q?tCKnFqyoVeSRFEtJdVJXRm6vVVs4Bp0nHmrrRLT/AFiPsmGONdFeVTyFqL9T?=
 =?us-ascii?Q?XJw0wN1tUmycKQM99/9z2OIjyIpkscDOtFaMxpHl0BHTMC97zxk/N9AX6q6t?=
 =?us-ascii?Q?1aT1wnIVYMcrRWipVxzMulrP2tgfu+fDv57dlM8wS6QoIYGLfLRvyF8AhV18?=
 =?us-ascii?Q?E5p7/yjjjUvzfGuRSDGiBDma3LdiFziHvZlr+R4KUcpM0U+Z9mCKCyrE/lJx?=
 =?us-ascii?Q?yQXmgVWuIqqqWTHEyNuIIGYAfKwNAjTveXN7SyeMoJCH8zUj2NIGYof6TfIf?=
 =?us-ascii?Q?sZJtnmy7OwDLPFPfWqwB2GDM/K6XvTmGbm6SzUwMaPYkMMhlIP62nPeP1Zkz?=
 =?us-ascii?Q?XL9fGzK1LGjx1C7LH1+oq6ExloTJ/7e9clAv1+wFxYnfw0a5+eTHm8XCmkgR?=
 =?us-ascii?Q?5aaA8mhJh3pKZ1hd5fHF/d2Q11V8QrVkRliBtiCP1AiMUvNF0YicbgDpQyrI?=
 =?us-ascii?Q?Q81smO9xSwpTETPBL13eIvStdMLAic9mbpugK9bna4CNkNb187OMKnoschWG?=
 =?us-ascii?Q?I/zmqTV4KD4wpN5HDnRNUGcJ1nZq76lum0S8BH0VzoQ+FwY/GF71FgsYGkxE?=
 =?us-ascii?Q?8Wd45secPB3m1iZ85JSbBW7iX7s3I1QgvwNF7RyDA+qahIo2KW/qNQOtjpR5?=
 =?us-ascii?Q?L436WizFMaDqdcJqhaR0K0j7kbJVDnusuP8gIkNXmbPeB7to0YGIX9DEZxT0?=
 =?us-ascii?Q?buAkX7zOubs6qUvnYC3JOD/FO4qtbCTGeKDx4pidk6dRO2yTdyOwZU2NRdQy?=
 =?us-ascii?Q?8RvS+6ZRg/Z0d8bABORJTQceYAT/jFKpk2vrlz7l3Su4W2HcfAovGoopL6WC?=
 =?us-ascii?Q?5vOJ7bmLqTnVrcNElk7VWlgsPARniGKsKVc0zIJkDhvp+KZOSHsYMtFQA8Bl?=
 =?us-ascii?Q?0jfSYxjr9tzCeBoNzuF42tKVRR+S2oM7vO+xk4ZsUy4TUWxYSRTAbXkgcAqT?=
 =?us-ascii?Q?QY0ovJnNm2Qu8qu9dv8DRx7ARKi9u00MtJJBodM6bGisXCkmIndVvv0UEJvE?=
 =?us-ascii?Q?s8c8OT5r7pY+2qzfcYy2nYTJjh2UrDPzWGZ6Fs7Uq1Sn5GYjr4BtFt3IxsMg?=
 =?us-ascii?Q?vG6E9qFLdtSs+KT7Po3vL4ZfQZu1NSFOpVVJGUVy9hOEb0QYUP/A/Pmkka8w?=
 =?us-ascii?Q?eMgkYt7Lvnb0SPrg6lJJfBeqxtSy/hypGd3BsodmsB3qu8RK+7q+yGH5ZRTe?=
 =?us-ascii?Q?3o6+PoTrOzjxWI7goeNPmPsjbSBXayot5dCVcbHrlb/gR0wP9B11+2m902FF?=
 =?us-ascii?Q?B7k5QGG9Hdg4OT3+Bd0/nlOV2G01gZgEjRK+z69L1baU2aDtk+gn/x62WPAn?=
 =?us-ascii?Q?yfbGJ/OWukGttIAkdjvA2qBX5Q9PyzEUJbIPnUX0a14QFiZ/krjI2X3rtYVq?=
 =?us-ascii?Q?dBMl/vaRuq53n6grQ8dZwXdUr+thFG/1Xj7D43w+Fw6rOjE1kuKQEmb8/q4i?=
 =?us-ascii?Q?eyfbgsYjuAC3SGDKOCayH9G5g9PCjuwiOEFd8fgVDn12ckrWUiW9MA6nCPSR?=
 =?us-ascii?Q?jV1DnePl3+vgCJYL8oLyBTOUXOVlW/++TU+0OvGcjTDt8f6U1B7VEfhW/mU/?=
 =?us-ascii?Q?Kt26HIT22g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: h4WUz1/sN+ueGuDU1Wh9HxjDFXKt5mW4J4LSA8PjJJ2BQ87ceEnvhN2axORSud7ZwmyKyv1TgiXJhidc6TNCJoy4zddxtZ1FbpZ1fQ6mrhoGA1xKZzzDlWdOUH3UbWAZN2GyrfJJeQ0acGIUQro7qlnwt33vcm0XsROsL96E4qMSJemltsDtv7+z9afgluoNMEvqbaX1Ta2obfyxqqgbG3uSbzQ+SEpQJRG/BHjsSWcmgcLR4dVKGZ9F1waViJzH9k2MlaYE/voiiHemxdMDsZl2Ujwa79twmtEysFVj2/dx4U6ZAcCanxA8PTSwQdrP9kc1IQ8X52Yb3GJPDUJDbg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08cc9a7d-d14f-4ce9-e852-08decc5860cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 10:08:28.5964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ZT9lRrUKRVSRjzzeLPHlzEjYDbWlNcLPJcymxxh846hNzD3/78XTGb1qeq8G58z+L7n5SPVYK1leK+fx3zajg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 943E26984A1



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 14/16] drm/i915/display: Add DC3CO count and residency
> in dmc debugfs
>=20
> Expose DC3CO count and residency for xe3lp platforms via debugfs.
>=20
> Changes in v4:
> - Keep dc5_reg register initialization to avoid any
>   invalid access (sashiko)
>=20
> Changes in v5:
> - Change XE3P_DMC_DC3CO_COUNT address to lower case (Manna
> Animesh).
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 2 ++
>  2 files changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index a133785c815b..5ffe2b1c3c51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1650,7 +1650,14 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
>  		   DMC_VERSION_MINOR(dmc->version));
>=20
>  	if (DISPLAY_VER(display) >=3D 12) {
> -		if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
> +		if (DISPLAY_VER(display) >=3D 35) {
> +			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
> +			seq_printf(m, "DC3CO count: %d\n",
> +				   intel_de_read(display,
> XE3P_DMC_DC3CO_COUNT));
> +
> +			seq_printf(m, "DC3CO residency: %d\n",
> +				   intel_de_read(display,
> DC_STATE_DC3CO_RESIDENCY));
> +		} else if (display->platform.dgfx || DISPLAY_VER(display) >=3D
> 14) {
>  			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
>  			dc5_reg =3D TGL_DMC_DEBUG_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 38e342b45af0..6b7978fb8986 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -531,6 +531,8 @@ enum pipedmc_event_id {
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>=20
> +#define XE3P_DMC_DC3CO_COUNT	_MMIO(0x8f05c)
> +
>  #define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
>  #define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
>  #define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
> --
> 2.43.0

