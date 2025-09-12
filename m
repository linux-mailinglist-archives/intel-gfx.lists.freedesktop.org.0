Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF3B5482F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 11:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B54A10EBEB;
	Fri, 12 Sep 2025 09:44:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDzvBiWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7CB110EBEE
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 09:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757670266; x=1789206266;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8ecFDPqEDdk8hMYpJyHhhd3z684r7//zRY0g73NhJFA=;
 b=GDzvBiWbSUmYpOOcNryhZrZPFDYhCS3OxxGz5+LeRovUgFyKw7aywSZx
 viu3v+HNYC7lx5ojmJ4YZnaXW+PCpqn4LY7AjgN/wiofTGt++NzyC3ys8
 +DFQcC5ZTG2kAGrW11Jv8EcfD8Nb50+7iP1Uuax5yINtURvwk6QCK5mci
 kwPhrFgTZ+gq34ZSBs23xxhvbYBEBESXbGyL7zO8KWbNGQDFA5VCNU9J6
 CBiOEZs7+/EkRK0ZctQqaCQ3FXmXqYOnio0XE15MLU5ICN3UESyzhV31P
 we/xXq0GDvcBqfNayA8YgXl22JlI3cMYhUvSKVgzM/MB7sxDpwpIxHKLn w==;
X-CSE-ConnectionGUID: mu7Px6zfR0q390xIVtcwQA==
X-CSE-MsgGUID: C1FIyTRcTImkjjcD0KkmdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="77470219"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="77470219"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 02:44:26 -0700
X-CSE-ConnectionGUID: 1JBJfUfoQ6iOBsVyZ0/sFg==
X-CSE-MsgGUID: kHQGwXtwRgiBlcWkboaWmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="178245791"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 02:44:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 02:44:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 02:44:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 02:44:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ohbfcy8X5ZphbGi9Fge5xjY+1HnhZ+EBMn1Gds761NAtpdBHmC/iCLUAUM2OrkaQIm6oNOyShQq6fYCo+jw5NJBwhNsLohsvtuNOTZ3CfhCMos+sEAi+AvLGd+wmWR3izsWN3IAF59Nk7iaCOSQI4zhAzQwolBqrZA0X7cHbPV7U8wvnmmcFzder0eaiD0UnGqXvokbD6dZ8C5O4Ekp2A15oX2vK6zdpjWvowjSGWWaxF97RqanF/LeR304GvJd4F/le842m3eI76xcNj/2n/B2ozibFeXg1ZZCwRK3nb5AuBMwZwF5hyXvUc3ndRTqENLeyzLdlG/yLpBQ+uL4slg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ecFDPqEDdk8hMYpJyHhhd3z684r7//zRY0g73NhJFA=;
 b=M+CSud5cZ8akK1ABb9wBwv6x3tWSHGv4mI++sZTXr2qVXjodPTks5n/22iAmkfJdsemaN0kY4yNg1MeJm3dr67hbYYNxO5y+NlrJaic4Qb9+/Y+LvBJ1Gd1cEEvr5mSYSK2YGQs8mUOx4cXfarh4uxl+wW4C9SSokafmCGC01Nwrk2I0+TzLUmiTvmMDK4SCh8NWaQj49vTwMJ6H4GWycAfZVEfH5i3vdOvnjgB4YQNLTmS05D1iSevpBRPYj8iaWifvnCmncIAiCEPN9mKWVPj7rW0fm91YrHXm91vGJKY7lSajJ36d6x0IAnOrz1/4GyRry+EAahnNM7bu4/xPug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6602.namprd11.prod.outlook.com (2603:10b6:806:272::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 09:44:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 09:44:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Thread-Topic: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Thread-Index: AQHbkr/Bb48FSiF/x0eMzIGiF9aom7SQbhkA
Date: Fri, 12 Sep 2025 09:44:15 +0000
Message-ID: <8507920a2e7ffc94fb6ad71fb2b7c35191ae176d.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6602:EE_
x-ms-office365-filtering-correlation-id: ac8b65c2-d130-46ab-ecfc-08ddf1e0eff2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OGdOLzhtQ1JYaTdzTmI5eWkyLzRGa0JDdkxWZVJ0ZEhYQ1EvK1cwZ0R3eEo1?=
 =?utf-8?B?d1BIQkdCVjNrZW1zTXZmMjVYbzVMZ3J2QXRBeEZNemZwbGRubW9OZndPbFIy?=
 =?utf-8?B?WjRldXBGejc2cllKQkVXQi9KVmpueS9Xd0lxVFRNb0RvbXhwQnpKSjB3V25E?=
 =?utf-8?B?WTBGWThaQ2syenZ1YmkxOHlWWHJndmMwcWZ0bmRNTGIvV2toTmxWbWlIQ1Qw?=
 =?utf-8?B?c1phTytKcEwvSXNPZkl3UTlLSGpESEQyWUVXeHliMC9JTkFqSkd0R1dKdW9w?=
 =?utf-8?B?LzJTUmF4SzZxNUxKNXBkbEx0WFhHR0RleDBEdWRIRXMvS2dqd255UmJNaEpu?=
 =?utf-8?B?WDE4QzJOL3k3WG5YWHlNZzV6em1BdmQyNTZudmlVZHYyNVBrYlZoNGpzWXFR?=
 =?utf-8?B?UW9DTWNRdFhleG54M2pQdTFBbXNJV0NhWGIrdmR1ZThTNUxlV2JOTC9LK0pu?=
 =?utf-8?B?R3BVaWo3b0o4Q1VmWmlsb3ZIZmNCdlVQNmZabC9CSWlwWHErYW1WSHNzeXha?=
 =?utf-8?B?ZVp5MEZYTGtJWkNYR3hmanZHcEtvSmxUUmFISnhOZUUxczczU2E5dzNXUk1z?=
 =?utf-8?B?UmRhVXZsaEVNc0xacGNORnFlUlkwckxSN1JqakEvbUR1eWpwdmRNcHR3a1B1?=
 =?utf-8?B?ZjJrNVJhWmpTUE5ROTZ1b3F1K2dGWjZiMmVKS2s2bXRLKzlNWVdaWmxGSEs0?=
 =?utf-8?B?elQvYWdWaTd1Z1lXZkFLM2QvekNKei9tcDBqL2NTWlZIMjRTZWVaUG5Zei8r?=
 =?utf-8?B?cGtMTWUzbTZ1VTRuVVdhTEdjMFFZYTNHR2dkV241aFZXQ29FOEJ5cXc1V1R0?=
 =?utf-8?B?clYwUTAvaEhvZWQ2ckJqRnB0VTFzRTBFd3FJTUF0eEZIcWdxZmxJbERNOSsr?=
 =?utf-8?B?c0gvaGF1aVpVdHhsa0NoSGFXMTBVT3IxcC84RkREV3JXS0FLVlRUYkRRRXBH?=
 =?utf-8?B?VHAxaUg0NXRabVpxWmJPYUF4RDc3MHdPb3lwUXFkS2tpT1B0OWFvbzdlLzFU?=
 =?utf-8?B?VnB6T0VFUFhydXNSeEJpZUNTQWhPY1BTZjVYeHhLTjFVWGxYSkQ5YkJNbUhL?=
 =?utf-8?B?QVVlVE9xUkRUZFFuelMya3hHNXVTY3NVd0tVcDZtdlhNV1E5dTJkSGlsakx6?=
 =?utf-8?B?MllZM1h2NVFjaVRWZ1BDaUx3SVkwNG41UXl3UXpybU9nVEVya1Z1NGZPZWtt?=
 =?utf-8?B?TGRNWU9IRVp3YlJNTHJobWtFWnN6djlDWG5LUXBKem9hMm52RmNJN1Q2eE8z?=
 =?utf-8?B?V1IrZkZJajh5SlAzZkhCdEpwTnAwUmpvZDd5M0hoa3VFb0xGNFh0Zjg2cjdK?=
 =?utf-8?B?b2NRRGN1cGVuZSt0K2NuVkVTS2k4UVo3TW1UdEdZTjdSdFFwb2Z4dTFDZGIy?=
 =?utf-8?B?OHByekMzL3h0L3hyRzdWaEJweE40L1gyQ3F2YWluNkdTZ1pKeEFOOXJEb09n?=
 =?utf-8?B?YVNYNGU1enNwWUVFRzJYR2ZkTFJZVmhub21haVdyeUdmRDZaL1YyR2RtMWpG?=
 =?utf-8?B?Q3Y4TlNrbVRjSlBQM1k1QjBabEVmTmc0YVpDcU9Ud0ZPNzJnWVljRUlkTHRp?=
 =?utf-8?B?dWRwY3VFOEVUaFU3cHRDdmdSeGNvbnZsNytEU2VJODEyUHhNK1pQSW1RQTcz?=
 =?utf-8?B?WEExdzBJVVhEbjk2d3VTcXh2K29ucnNvZUpuOG14aTdjOEJNRExsS21MaUtk?=
 =?utf-8?B?cWhZcExkQXpiVFEveDdaSVRMZTVGWFQ5QmFDRUtIOTlsbEd5enQ0bldpMlBj?=
 =?utf-8?B?MmJ5SG9xa1RqQi92OUZoeWJEMWY3UGh4aHdWRzZ0SUVaVlNleEh3OXBaQmdN?=
 =?utf-8?B?QjdnTVF5UG0zZHpTKzBhbnpPSWs5THlKb0g1NGhIUE1pRWtKdksyQXBnVko0?=
 =?utf-8?B?Q01LOE05eE03QnJVcHZ3YVA0NXdKcXZnWFJlWlF3YUdYZktPSGtsUVVHblc5?=
 =?utf-8?B?cDBSUEh5RGp1YVBXVW9hMXhCRUJpVjFhLzVQYXh5RnNUVUNUT1kwV0JyNVFN?=
 =?utf-8?B?NlQyMThPdHJRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFhLYlY1THVXT3JWZFBqOGVPcmxydkRHanlSRnRYSSsvOFBUc3Vtb1dIWTVF?=
 =?utf-8?B?L2h1ektjb1gzSEFyUGJTMm12S0oxZHUrRDcxb05OdDFtNFRvUGtaWVJzM3VI?=
 =?utf-8?B?b0Y2R3FQaVMySHFFRmxIUkNiMEJLczhTZnlCWU81TndlOUwrWitBd3NpMTZM?=
 =?utf-8?B?VnNiQnZFRFZObHovdm1VVUd6ZjZXT3dublRMMXdPS1dKdmhQTk1lMWR3b3pH?=
 =?utf-8?B?VUhvWEovQTU2RVRPL3V2bE1WYXpDeGRVMXhNOUY1Sy96YUJWYjhoV3laUHo4?=
 =?utf-8?B?dDZmd1AxUk1OVTlVUG9pT2RiaFdYYXhVWkErYklOeCtrOTFyOWpLbG9Od3pV?=
 =?utf-8?B?eUppK0ZoaFVSYWhaSDBEdUM5SVR3eWVqekVOYjI5YXFxUVd0ckc0UTRyY0pN?=
 =?utf-8?B?YjB1UGExdmZZaUFlcFlteFVqNEt6eHdzM24wUVJHOWs0NVV6Q1ZOUzE0cVZB?=
 =?utf-8?B?bURjd1pFTmNGdlExVjhMNHFQblVQU29kT2NJeXRvdFZLTTZENncwd2tWbHNQ?=
 =?utf-8?B?MlI3dHdFdnI2Nms4RTIwLzRDYWVRdWJiSWJjNTdaOWQ4UGkzbUp2UklqNUg4?=
 =?utf-8?B?MG9KOHNmd2xDTE93SWY4ZEZ2MU94RnNWd1N2TlorQTR0VzJjdjdMekVnWVhH?=
 =?utf-8?B?c0pwZHFqNU5IQnVTWGxkQXVMWjdJYWg3NlFSaE9jenZrL0R2bXQzcXI4MGF6?=
 =?utf-8?B?ZEozRXdDNE1FZmhmSVJOeS9nUlVIYlpYZWRnc1R1dS84RjdWYTNNWC9uRW04?=
 =?utf-8?B?OU0vTHZGcll6cHJNUFFpYUNGN0pRWG5HZ3pWRm9CamdZbzgrYzRDSkZlU0pL?=
 =?utf-8?B?UUo3WHIrTmxKZlhncCtuV0xFNmxmT2poM29ZTzBJemFiSXY4UituZ0RITTUr?=
 =?utf-8?B?aFZrTXNjcjZNdjV0K0lZeE9zZUo0SUFHeWVXREp2MGtBa3hFTi9MWUp4d3FR?=
 =?utf-8?B?K09aOW05aitHRld4L3ArL0V5NnRHeHVqTGV0Q21jaTV5bTVtUkxWZjQvSGdo?=
 =?utf-8?B?OE5ZQUdjbGFZVDZPZHc0NnVxTUNNR2U5VzEvbzRycGFHNnBXMnBHMk5hb2NT?=
 =?utf-8?B?clFiUHNUanV3MXd5YUV4U0ZrakRnL3ltMDl4MzB1MHo1RjBIemltL0hRRHk5?=
 =?utf-8?B?dG9vYTl3aVA4TFh3Yi9OV1gxZ29aQmU1MFNSSThSWkQzV1hOOXBBWEpURnhh?=
 =?utf-8?B?U0R5SWVYQzdGVUJaZkpsVUlxKzhsOGRrcDVaZnhpVnR1aVl4dHd4b0dLVmta?=
 =?utf-8?B?N1JPOW5KbUI2bW0xSFRIUkhPTXFid28zRmZDM0s5Ti9QNzdhMFgwdUZMbTR0?=
 =?utf-8?B?WTl0NW9iN2lPZHZXMEpLN1BoSUZtSXJ1OXJUQWUxRnUwSTNidWZxZHlpeDdh?=
 =?utf-8?B?Vk1RTU8xVENSY3N1bkZ2TG5oSjhWRjVuOVh6ZUt3R29LbFAwYmJQUVFiY3pJ?=
 =?utf-8?B?OXJiSDM4bjVrbVFpd3NTd0VBQll2WVlpRXdaRmNrQmgzRHVTKy9LSXRZWXgz?=
 =?utf-8?B?bHNRYlRPQnJMR1YvZngrVjcvWHBMcHl4dlpCU3NmRzBmUDI0L0tjN09FcjZv?=
 =?utf-8?B?dE8rWmQydjdtOWFMYlh6NlN0Q1BkZnBBNU4zVmtuZDJUQ1R2c0tpZ2UxUWsw?=
 =?utf-8?B?USthcE5LWVhLN2owUlBIZ2lITDBmSmh3citDY2ZKMDZDU09HZVVwOXB1ek1N?=
 =?utf-8?B?M1cxaG50VndCenpFNU03eEpFOVhUM0h3RWFQY2dQSDRxQ1FkODF5RFZYeitX?=
 =?utf-8?B?UEg1RXZiZTFOZjNOek1zZ3hwdXdJdmhmdmZJcGt4L3hCZVVMdk14Y3pGN2Z1?=
 =?utf-8?B?RFJqODc2b25DUE5jb0xvZy9YMlN1LytYKy9hZCtBVU1kcFhDbHlLODdVeE9n?=
 =?utf-8?B?L3BwcGlVVkt3TFE3MERreVRvVnFWYjVTV3RlSlVJVU4rK0ZmZUZnWXFmUHlo?=
 =?utf-8?B?TjlLeXpQaGtKcXlEVC9tTWxEREFoM0VQVG13N0pLT1YvVDF1QU81MWMvUFpi?=
 =?utf-8?B?ZHBSWnREQmFyOERMdWJLY3NPdWs1RklGMFlIYlJsNG9yb1BZQTZZejFBV2Jx?=
 =?utf-8?B?Q2NaenFKbTJFN0ZScWlhM1hKSXEyZktHUUtTcTF0ZjhPYUtobFdvN0JhYWNz?=
 =?utf-8?B?N2ZCdjVNZXl2UVYyMlZTL1czdkNUTXNEdVhLOWhjYk1sdDg3YSt2TnE5YW1s?=
 =?utf-8?B?L0wzOVhMNEl5d3lWd0twSW9zMGtZbTVDc3hnTmlGMTNLQ0RRMEVEN00rTGIw?=
 =?utf-8?B?TmhQdGdvaGlGRmJGRUYrT252OGRBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <432BE4886C20104FB3CA0ED61142C846@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac8b65c2-d130-46ab-ecfc-08ddf1e0eff2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 09:44:15.7017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kpeaH2pUkIc4Dmpc4f3RySQcaLYLP8qQpEgMhwqeLrxSwkJUxLA2i8+y7RaZ/xU3naJSRfuhs29VmZ6xsrm6fdXAkjAshklEY/o1eHWUFSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6602
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

T24gVHVlLCAyMDI1LTAzLTExIGF0IDIxOjU2ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSSBkb24ndCB0aGluayB0aGVyZSBzaG91bGQgYmUgYW55IG5lZWQgZm9yIHVzIHRvIGNh
bGwgYW55IG9mDQo+IHBjaV9lbmFibGVfZGV2aWNlKCksIHBjaV9kaXNhYmxlX2RldmljZSgpIG9y
IHBjaV9zZXRfbWFzdGVyKCkNCj4gZnJvbSB0aGUgc3VzcGVuZC9yZXN1bWUgcGF0aHMuIFRoZSBj
b25maWcgc3BhY2Ugc2F2ZS9yZXN0b3JlIHNob3VsZA0KPiB0YWtlIGNhcmUgb2YgYWxsIG9mIHRo
aXMuDQoNCkkgY291bGRuJ3QgZmluZCBvdXQgd2hhdCBzYXZlL3Jlc3RvcmUgeW91IGFyZSByZWZl
cnJpbmcgaGVyZS4gQXQgbGVhc3QNCmRyaXZlci9wY2kgaXNuJ3QgZG9pbmcgdGhlc2UgaW4gaXQn
cyBzdXNwZW5kL3Jlc3VtZSBwYXRocy4gQ2FuIHlvdQ0KcGxlYXNlIHBvaW50IG1lIG91dD8NCg0K
QlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyB8IDMxIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMzEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gaW5kZXggNTAzZjFiNmI2OTRmLi5kM2QxYjJk
MDgyZGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBAQCAtMTA5Miw3
ICsxMDkyLDYgQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0DQo+IGRy
bV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5hdGlvbikNCj4gwqB7DQo+IMKgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsNCj4gwqAJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSAmZGV2X3ByaXYtPmRpc3BsYXk7DQo+IC0Jc3RydWN0IHBjaV9k
ZXYgKnBkZXYgPSB0b19wY2lfZGV2KGRldl9wcml2LT5kcm0uZGV2KTsNCj4gwqAJc3RydWN0IGlu
dGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZkZXZfcHJpdi0+cnVudGltZV9wbTsNCj4gwqAJc3RydWN0
IGludGVsX2d0ICpndDsNCj4gwqAJaW50IHJldCwgaTsNCj4gQEAgLTExMTMsMjEgKzExMTIsMTAg
QEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0DQo+IGRybV9kZXZpY2Ug
KmRldiwgYm9vbCBoaWJlcm5hdGlvbikNCj4gwqAJaWYgKHJldCkgew0KPiDCoAkJZHJtX2Vycigm
ZGV2X3ByaXYtPmRybSwgIlN1c3BlbmQgY29tcGxldGUgZmFpbGVkOg0KPiAlZFxuIiwgcmV0KTsN
Cj4gwqAJCWludGVsX2Rpc3BsYXlfcG93ZXJfcmVzdW1lX2Vhcmx5KGRpc3BsYXkpOw0KPiAtDQo+
IC0JCWdvdG8gZmFpbDsNCj4gwqAJfQ0KPiDCoA0KPiDCoAllbmFibGVfcnBtX3dha2VyZWZfYXNz
ZXJ0cyhycG0pOw0KPiDCoA0KPiAtCWlmICghZGV2X3ByaXYtPnVuY29yZS51c2VyX2ZvcmNld2Fr
ZV9jb3VudCkNCj4gLQkJaW50ZWxfcnVudGltZV9wbV9kcml2ZXJfcmVsZWFzZShycG0pOw0KPiAt
DQo+IC0JcGNpX2Rpc2FibGVfZGV2aWNlKHBkZXYpOw0KPiAtDQo+IC0JcmV0dXJuIDA7DQo+IC0N
Cj4gLWZhaWw6DQo+IC0JZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMocnBtKTsNCj4gwqAJaWYg
KCFkZXZfcHJpdi0+dW5jb3JlLnVzZXJfZm9yY2V3YWtlX2NvdW50KQ0KPiDCoAkJaW50ZWxfcnVu
dGltZV9wbV9kcml2ZXJfcmVsZWFzZShycG0pOw0KPiDCoA0KPiBAQCAtMTI3OCw3ICsxMjY2LDYg
QEAgc3RhdGljIGludCBpOTE1X2RybV9yZXN1bWVfZWFybHkoc3RydWN0DQo+IGRybV9kZXZpY2Ug
KmRldikNCj4gwqB7DQo+IMKgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZGV2KTsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSAmZGV2X3By
aXYtPmRpc3BsYXk7DQo+IC0Jc3RydWN0IHBjaV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2KGRldl9w
cml2LT5kcm0uZGV2KTsNCj4gwqAJc3RydWN0IGludGVsX2d0ICpndDsNCj4gwqAJaW50IHJldCwg
aTsNCj4gwqANCj4gQEAgLTEyOTIsMjQgKzEyNzksNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3Jl
c3VtZV9lYXJseShzdHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2KQ0KPiDCoAkgKiBzaW1pbGFyIHNv
IHRoYXQgcG93ZXIgZG9tYWlucyBjYW4gYmUgZW1wbG95ZWQuDQo+IMKgCSAqLw0KPiDCoA0KPiAt
CS8qDQo+IC0JICogTm90ZSB0aGF0IHBjaV9lbmFibGVfZGV2aWNlKCkgZmlyc3QgZW5hYmxlcyBh
bnkgcGFyZW50DQo+IGJyaWRnZQ0KPiAtCSAqIGRldmljZSBhbmQgb25seSB0aGVuIHNldHMgdGhl
IHBvd2VyIHN0YXRlIGZvciB0aGlzDQo+IGRldmljZS4gVGhlDQo+IC0JICogYnJpZGdlIGVuYWJs
aW5nIGlzIGEgbm9wIHRob3VnaCwgc2luY2UgYnJpZGdlIGRldmljZXMgYXJlDQo+IHJlc3VtZWQN
Cj4gLQkgKiBmaXJzdC4gVGhlIG9yZGVyIG9mIGVuYWJsaW5nIHBvd2VyIGFuZCBlbmFibGluZyB0
aGUNCj4gZGV2aWNlIGlzDQo+IC0JICogaW1wb3NlZCBieSB0aGUgUENJIGNvcmUgYXMgZGVzY3Jp
YmVkIGFib3ZlLCBzbyBoZXJlIHdlDQo+IHByZXNlcnZlIHRoZQ0KPiAtCSAqIHNhbWUgb3JkZXIg
Zm9yIHRoZSBmcmVlemUvdGhhdyBwaGFzZXMuDQo+IC0JICoNCj4gLQkgKiBUT0RPOiBldmVudHVh
bGx5IHdlIHNob3VsZCByZW1vdmUgcGNpX2Rpc2FibGVfZGV2aWNlKCkgLw0KPiAtCSAqIHBjaV9l
bmFibGVfZW5hYmxlX2RldmljZSgpIGZyb20gc3VzcGVuZC9yZXN1bWUuIER1ZSB0bw0KPiBob3cg
dGhleQ0KPiAtCSAqIGRlcGVuZCBvbiB0aGUgZGV2aWNlIGVuYWJsZSByZWZjb3VudCB3ZSBjYW4n
dCBhbnl3YXkNCj4gZGVwZW5kIG9uIHRoZW0NCj4gLQkgKiBkaXNhYmxpbmcvZW5hYmxpbmcgdGhl
IGRldmljZS4NCj4gLQkgKi8NCj4gLQlpZiAocGNpX2VuYWJsZV9kZXZpY2UocGRldikpDQo+IC0J
CXJldHVybiAtRUlPOw0KPiAtDQo+IC0JcGNpX3NldF9tYXN0ZXIocGRldik7DQo+IC0NCj4gwqAJ
ZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7DQo+IMKg
DQo+IMKgCXJldCA9IHZsdl9yZXN1bWVfcHJlcGFyZShkZXZfcHJpdiwgZmFsc2UpOw0KDQo=
