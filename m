Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3cJ2AxSSIWqKJAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:56:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A38E64124A
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:56:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Xfg62E6r;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F4811285D;
	Thu,  4 Jun 2026 14:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E07911285C;
 Thu,  4 Jun 2026 14:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780584977; x=1812120977;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KrUB5VlbeA3BFQ7XxYmbcOljP+8h7euKcEHWjOs5l+M=;
 b=Xfg62E6rHeHfO7B5tXsGznOVfGUJwFL9zZCemsLdtsoiibv6Rsqf6vco
 JKkebZUxyqI/1rhu01nakMQWFqn9g4vQMWTzIdmp7MsjjWRlByTdWmLih
 zYUzuQUTJSd4481mMPZNjqf64jEvgz3jlO5JrZn4bxFZjYehfChftazoc
 bqFt/wYBPsAiGUXwbOiRhEl4jr3Ur0LB2tTDs/wklmdtFTyeqJ6xY2gza
 g6/vaVtUVSR8m5Kj6JbZ/mFv2zi4UZTfIKj2MIquI4+3zCG4Tpk6EHAFY
 bGdapa7ot7Uxv1LHCzJ2AQW1+P3VBXNCD9Fg3E68TVMLmYOsj971vSj6L g==;
X-CSE-ConnectionGUID: UPxXsaiLQQGGJrNaCQ7Ocw==
X-CSE-MsgGUID: Aaz1yWUmT46XpLks7ju0sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="85301656"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="85301656"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:56:16 -0700
X-CSE-ConnectionGUID: ivlVIwu/QNGsxg3sbUw+Zg==
X-CSE-MsgGUID: 7x/xB2vlTva24wnAfukfPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="244636609"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:56:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:56:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:56:08 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.14) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:56:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tub3Lr7xm7AUWEodhwSOUqrcB9TlLEHZ7lzdEU9q6qLCbzk2AzWrwlDcRURiH9fzqG/Nrm0BrAhnJOoeuxgc5xmmCtTfrxq9gCDvxMT1LID2WFF6BpjY1XDpC7naT9AgEQOMcsdLENirdMZ15hkMIX9WBnUGszK0KllbznE/tVtfY2BlJL5VBkr5ytbmcS5s3Ah+s1mB8oWIAQGeNDq44W5E7CGJl9h+cj97NESQhXapFLDhVtiTJ+Fm2jbq6ZmHPXoq5OFeoie/uQYeO0PMvvBpBGZ0SdqREkB1/4DT9YDcIf7/NKRS1aTCsrjVQpd44XaZZCbTefh56d71TTGbyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrUB5VlbeA3BFQ7XxYmbcOljP+8h7euKcEHWjOs5l+M=;
 b=VOjzPHzUNONWK/j4eU4F88/Cb4MOzL9p1+fGZoNkCa3z/AehhUN+JJENQ3JPjsYi1XRQ/xfqUegc/zu4WxDPW+1UWw4WnawiQ8/XF5vDeKEv9wMjjtlCeQSROD46RzxDxOZxKqNnuj2H1OfT6Q7z2qds/gjZ5iSTj/Gedkqbed6HoA5xh76NEj62YlZRpQALYBPDpbXavTuUF1x+rWVg9Aq40x88pqNQpITIlcSKjFV7DMLAmc0EMjs95nc5gwDQyBgkZ7FCOA8/fJgUa/Apa0NmYwiPhn7ASA1eGIiPXeiVzne693GG9BDyQgfa2pyOYdzkkekGkZMUYtRV9cw2Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SJ5PPF56FDAD370.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::82a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 14:56:00 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:55:59 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/11] drm/i915/bw: Move psf_bw[] out from the plane group
Thread-Topic: [PATCH 07/11] drm/i915/bw: Move psf_bw[] out from the plane group
Thread-Index: AQHc7o8Ifx6Eo0ciAkOhGNREHujSuLYuh2IA
Date: Thu, 4 Jun 2026 14:55:59 +0000
Message-ID: <80665d9b5b7fbcf6c47c1a7ef336521a65927c3d.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SJ5PPF56FDAD370:EE_
x-ms-office365-filtering-correlation-id: 8a76b97a-9e84-4977-491c-08dec24963f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|22082099003|18002099003|56012099006|11063799006|4143699003|38070700021;
x-microsoft-antispam-message-info: YtZXp4GtvNBFGnyc8XmjdTsvz01w+FOjgBzJOpMbY/HScSvT+d7Iu7Agv87gf/U00IeJDoFdFHQxCAgDQC2JQBXHHXaCffxThrCuN63oQb/dY7rNAGNREy0EjiRk++9oOKIoIdqmNlm6Ip2Ux8xVGDVFDU1xlJ9KJO1wQmPD1ZexZ7hdLt9E4HXpF9Ph6rsfvAAYxYV84AwodPT+DaocxI1FL8sftAE2c1UkdEm/vY/IwnPac/5ZRuMXojbRS2Z/t96+i7yhHCdHFQWO5e8ZSbtcKt9CvnyFLDUl5/SyE8qLrWBcsWoiM/LwEChxeIP+bUHAMx7d/iawNOCfcoDn3AL92oH5aQ9lon52Xa6wNzIoEMAVpLgjr8vFKkJyVecELMiPEfXq5VrwCCjf//WL5I35f1zQB6aZsasUKxW+dIQGYf0TV3jDilBbz8gn8pjtO+lhEyvIi+RjNUUGa5S5/HmsIgmbZOOtdNXHSE4VGu8AcVByP0iMVnafLeR/IgYmKJcwfxCHxlho6LTfveBPD8L7TeuIY26SXr5LTyEbseviOrceNbABYt3s6nES8bNLWuEh0aB4WGPx+6XctlX5FNBesuBvVhRGvT7Jbx5H7++UYyGKcNMlXYwROLI2k6ejJ6iPpp/GUM+lEOxsKvffpVv7f4mj4d0WxTktW75volTG2lEFfDLLgjCmiCKqNaHZw3G4nZVlDfayvJqFVoNjWdRQ2XoAZSxtYV7n/fn37YGiLcYM2E0q1p8bKd9LNpBb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUVVNStUSzQvV01tZ2kxTXo5Nzl1U2J4dU9TSXZkcXVVUGI5R01STWtITWxK?=
 =?utf-8?B?Tng5V0IwVGFWUlJBNlVpZmt3M2wzcFB0LzBIMWpBWUVxU2RXdm5MZ3djWFg2?=
 =?utf-8?B?eE5JQlQzRUxScGtXbHFDVUhHQ3ZJUm90WkpEdGNYN0pMaEQyZ2VicWxOaVRC?=
 =?utf-8?B?M296VDBteTBpZERkYXM5cUk0ekVHSEpmQUdwamNWTllBdi9uOWJRR3FCVnNM?=
 =?utf-8?B?SFMxYUczZXQ5cUtjRThObUcwUzk4V1BlMk4zdDRBN096YlIzb0lDYTJjc3Zt?=
 =?utf-8?B?RzJaSkVnR0NsL2g5MlNlcHM1d0dOVzhENjZOZDNXNXBoUjhycUljQ0NvQS9u?=
 =?utf-8?B?YWNQYzQzdXZJbHcvcWxhK0ZxVTZPTU1DNlN4L2lRdVQxSmVDVDA1b0hJTllP?=
 =?utf-8?B?TkdGUEFWRTI0d052eGZPQ1hWM1BsTkNOdGRCUzZ4WkloL1BtTlZtWXp1OGpl?=
 =?utf-8?B?YU84MlM3NUJ0STFJYnJDbU1PTXU4YVlEUnlCZlJIS2VvdDlZdkRhSFF1SEtP?=
 =?utf-8?B?MkJRcUtYTlM2Z1h3NG96OXQvRGpxU09HeHc5UW1VUGpkajRZaHpyTGtUaVlT?=
 =?utf-8?B?MnRVcGh2ZW13TkRhUnNKUjJ5MmMwQ3d3bnpaVjlVbUlUdDRBdWFxZUlrRWlK?=
 =?utf-8?B?Mk9ua213SldYcXBFT0diMnQxazNtUVNpc1I1Q0tZa1ExY3dneWprUGdIM0lh?=
 =?utf-8?B?WHE5cTQycjZCQ0tLVzlsWTFZVko5ejJ3V0hPekxNbWQ5VEhJcjlNbk9EY0RH?=
 =?utf-8?B?eHl4RDg3dWtoY0k0Tk1uUXhILzFUbDIzY2sxTDNJWFpRUnpLV1QvZGRYK2Z3?=
 =?utf-8?B?Z0lTMlhxK1dRZGNuMTRmM0xVcFNpR3c4NGZSbWdDVTUvbXFQbzZwWFUrWk1O?=
 =?utf-8?B?elB0Vm01WUFVUVY2YitaSjhYdXl6MFo2bTNTeEpDbmNWNXNVbm1KSkRjV3VP?=
 =?utf-8?B?dnNNaXBUUTF0cE5vVmlDWWxUY0Zic3l3QXd1bllxWG9YNi8vd3lUeGhnd05B?=
 =?utf-8?B?WVhPS3ZCdmxSdkhjNkJaY05VVDVaelBNQ1h3WDlFbTVFMnNuRDZ4U1phZFAw?=
 =?utf-8?B?aWtzYnlvZ2dqbHFTbFMva3ZpMGRIYmU5bDFEbXVvNm93cERORE9KSXBsdnBM?=
 =?utf-8?B?TSsyRXJSYWN5MG9iRm5IV3VBblI0QThHcm00KzBrSkFCcGd0K3FuRFl4VFVD?=
 =?utf-8?B?T1pzNGtPVUx4bStFNStRNkhZY0t5Y3YxQTNmVWEzTU5Ia3NjWW9YU1NjNGxI?=
 =?utf-8?B?L0Jrbzl4Yy9vcHRVMUEzVXplaE9SaDBQOHdWTU82UTF4NE1VU0grUHlhOXdn?=
 =?utf-8?B?MHhUd3ZUdjBCK2ZlMXVQVlgzeTdhYUJNYVQyZS9VOWkyWmYzU2FnTGRQY0FJ?=
 =?utf-8?B?RHlNclRNYkx3cDdUMm5BTFlaTGJYOHhxdHVLM3dBVTZTaFFSWWRIQXhOOTUz?=
 =?utf-8?B?dkdWd2xGVmhGZ013aHhjOUs5eUp6NFhnejNTd0c5Yk5uN05LRzRld3dkQlgy?=
 =?utf-8?B?Q1VBbXJ6ckRQVGZ2Zmw4cHZRR1Y4K29idXRwQkx1c2tHVlIzZmV1V0xadDRp?=
 =?utf-8?B?ZTE4Sm5CdDVDV0x4MUpwYUZBRklyZy8yRkJqUk1EK2FNRnRzUWI0TUl4TC9n?=
 =?utf-8?B?bGJZMkpROFRxUzdKb21oUWRiSWtwNnhVYnBCVmlpUlpOTEt0TjkrMGxRb011?=
 =?utf-8?B?S3daT01adk5Ldm5XaW9WU1hiTDlLMTFCcTdhaGpIR090REZJZXZlcFJBTVEw?=
 =?utf-8?B?M0J6dUs0YjczUDA5d2xWV1dTYjduNm1uVXdEK2pJbXRSTjBrdVp4MmE1NEVv?=
 =?utf-8?B?eW02ZVloczNPS0tqRzJIWVJ2SzgvL0ZOWjkydHQyS20xZDlyR1oza05PUmdu?=
 =?utf-8?B?cDlDOXFiR2xaV0R6S1plVXBDb2lOcXY5UExQdnhqM3lMcWw5RThuTkdJeXl2?=
 =?utf-8?B?RjNXTFBiTVNhR01Bclo4QTlBTHE0V2t6T29pRUc3ck5Wc200clpZUUpMejJG?=
 =?utf-8?B?QkttY0Q3UGs0MjdxNTltVTZRaWZtY1QvU25VZmRSUlBHdkN4N0xZZHN5Rkxj?=
 =?utf-8?B?RWwrWDAxRTVGOUxhbFlLWjdMMmlWdkV3WktLWkNidnROL3NDMWo1dUpxY2JR?=
 =?utf-8?B?d1FXS1R5MFJzTFRGNC9WbzFhWW1NcytBOTBwS2V6cnlYUkRnRDgrVkNOSFk0?=
 =?utf-8?B?dE5EdFhlTFFnZTZVMFU3RE1OdVhldnptSEQyaUdxUWpRQzBuRDAzZEZRQis0?=
 =?utf-8?B?blBObWluZjFyMTdwSDloNUV5RjR6U0NFcmVzekhKYTJiNm9zVXFMZmJaWDRh?=
 =?utf-8?B?b1RtcXErcytydE5SZmRDbC9Xd3cxN0hkNitkY0ZyckZvaXZDR1BNZ3RsanRI?=
 =?utf-8?Q?4Qdq05vs99zPwWp8GcJREJ+Bx2V7WprLJkFdMA5O4FAOk?=
x-ms-exchange-antispam-messagedata-1: NV8G2bNBm7G3TKugRlv5FvffVGVydEARclc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <57BEE2C18787164FB8727ACFD55AF9FF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: V0X7IfuBgW55zEpBn0mgjo0NmTuuSNkNeGEt61qvXTFiw462VZWkfbrpnKfFV3kG4iTYMJh7p70zrgmkOI70FS9JZYWxGITrd09evc5bQlcYHZ9qTnCXEUrHgMP4JvN5cOYJfHb/MR+pUg+1ealB1PuBOWQpgmt4QIrR4gnaDPzAOTrj8xKEjY4SHxemIg148CZ5ns0iNNuKcsOWw8hxNhj6VrA5GvJUGFMQzkTgpxxPf0G/k6g1kyqLAMDUMANeA+9l3yJOgJ4JLQ94qpoCKW+puXPzdDiGCiz0VWbkZw7QSzeEXayTSvt+d0bzMAry35ks28Xe7o1MUVbJUgdtnA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a76b97a-9e84-4977-491c-08dec24963f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:55:59.7955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQGMl0WP3CnajYLAsV6l0q/lg2+Rs8bKjL0U1Yp6sSOgOadZfgog+2+LcjSZrWij6aKoDKpAZwDTEY0GvWTKZ2ENr4IC1S8ocSRIfArYnWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF56FDAD370
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A38E64124A

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIFBTRiBiYW5kd2lkdGggZG9lc24ndCBkZXBlbmQgb24gdGhlIG51bWJlciBvZiBw
bGFuZXMsIHNvIHRoZXJlDQo+IGlzIG5vIG5lZWQgdG8gcmVwZWF0IHRoZSBzYW1lIGluZm9ybWF0
aW9uIGZvciBlYWNoIHBsYW5lIGdyb3VwLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jwqDCoMKgwqDCoMKgwqDCoCB8IDE3ICsr
KysrKy0tLS0tLS0tLQ0KPiAtLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2NvcmUuaMKgwqAgfMKgIDQgKystLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo=
