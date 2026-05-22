Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKJqMYAHEGqLSQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:36:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E745B00E1
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB4C10E8C4;
	Fri, 22 May 2026 07:36:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XR3tAlHt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C147F10E8C4;
 Fri, 22 May 2026 07:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779435389; x=1810971389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=X/3HYuZt3NqCiVLPJlh+hkuc7WwFv04HB82O1iSDFjU=;
 b=XR3tAlHt2yY75StvnYP6+KFHovx0QciBgk4JUe+F2AXcYyPgfVzI93qs
 JNGyKt5ijLYsELajawXrpgWD+T8BO0tPgKsDdakRlEpQND4vUWho37/zj
 8OYPngA3wOyaF4frxf+DJ5Gt57aAnMOTAWsC8Wd9ta9vxltDVJvepBIHw
 N0kj3FIsZzO+aPEXgSVZfzJvDTotsj+jP67hAeQ2nucG1ulTsr9WIpJaP
 2crVzD/1DLTZTZE0DIovJOrxi/FmKT89oXydl8Jpm4hsO5rKdcXsDxh2S
 iLRUaAmY775tEZDm4PDNwo0NSGNQe2jvL10BmH5JJ6wjwicNNFVr33U5R w==;
X-CSE-ConnectionGUID: a13jsjdIRvqF8H74VglunA==
X-CSE-MsgGUID: y3cnSCWwRqm+FmUGPy97nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80541537"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80541537"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:36:28 -0700
X-CSE-ConnectionGUID: SS/lZZ1YQwaaDtPEYSnm+g==
X-CSE-MsgGUID: +NrELuSqSs+ogwhbwPJXIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245897437"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:36:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:36:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 00:36:27 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:36:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bhiZxIM9KkyW9DHYU0a/s19DszeYYM4VNE1j/51FZDqKIH7GtWt4iSZscEMAmtWuZqDuRq2V6+Bjo+vekybtDZ/NR5TjDOKKxTYnTMzuR+ogmhlul66OOjRtIB3peObIVnqTEjq/kjAeQgMqezguHfJiXLzhE/vfH41c+Qhw5eOmRLE26ACIBSkLBcpGQEaVycYIFbnVJb27RcGxPAOjNC+B/YhHriOE5uVhUfJ7119QnJEoa7NwiZwHkN+m0v8rj9zzxqVtBPGEIwDlBzH895tD+Xcf4t9GBlse7k6fMyqleMCVcwDkq5iYUszBr021yhvlYUbaa8a9OLwdeF26tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/3HYuZt3NqCiVLPJlh+hkuc7WwFv04HB82O1iSDFjU=;
 b=TpLLC9bplNic2r9RFEYhS12yKdvMeiqvW1AcW7dgefPXEC/KTWagmG5lUwoQwX8F8AFk3vNMl+wlM3t1AYKADkG6utl3fSXK0eSYLpV8BTtbpq0/ztNcd30B+04/LUXuSRrFc2ExVWlfmXvrp7yvwTx7aqLQLsg5ZpXd1e3/DPxjtp28isWWJHeADg90Wxc/2HDfCvm0v7E9T31n6JUIps7uxmHPcWaSOwQtp7wnRvh3aZPsnHbUMmV5awjrbDuAmRNIssOT3tkQatMi0yYvC+yrtWyRLnFed27H4mPpsgcIJ6SE03WJmgWmk92hmM5/jm4qz04rCLHs7VXIUreK6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5214.namprd11.prod.outlook.com (2603:10b6:a03:2df::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 07:36:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 07:36:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
Thread-Topic: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
Thread-Index: AQHc5rj9UQx+jgG/bUSll7z9JR10NbYZBlCAgACnnIA=
Date: Fri, 22 May 2026 07:36:23 +0000
Message-ID: <dde2e23f934dc0e72224c13d6660c4d9d00be89d.camel@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-2-imre.deak@intel.com> <ag962-z5WD8SVS9I@intel.com>
In-Reply-To: <ag962-z5WD8SVS9I@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5214:EE_
x-ms-office365-filtering-correlation-id: ea2356a8-73d1-4642-a13c-08deb7d4d2eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021|22082099003|18002099003|56012099003|3023799007|4143699003|11063799006;
x-microsoft-antispam-message-info: GL5p6Fr2FjRHka8IH/jP7PX4DqhRr34hchbrKT3WQE6u83u63qOtcUCxFZ9Iik4sFkn85MAtB8sm4n16+RIytUbElctOZdDVK3KZrl7VITJPw8+7ZPD9Sh1/F2+PWXko9V9biDmO5/9w2ezeo1vPqg2OzzQkzZLz3SBNUJlJ9nlnWatzdrdDowSq2lmdqGM4rjBHT+cRXEaECJ5zk7e9zgL2Sb9mR2+RMP5oPQTFjkrwDgVVo2H63Ro6eAijTqpVmkeS5LYIcFWCut0Ju6HS6Y1BX7/FFVjn3BFa40dwSgNmCh823HVwEgY5FNAEiR3QJYmwhDgb7BWjO7vn7T8mi3RWo0Sad0kf9fhVkNXeBPvIKg3SB4GbABAjYNjfX39YJxrGgO7+KrCZzJ1YeYvGHU4b0c05aNVSKWOF1iSBjFqDUa6aqC9K5HFJLo7ICj7oWLK6v/+KtO5O0ZFCMESXP3hLMyHijHAtEzrC24ffTcGAygoNMauPOgal6RPa66PHSGssKikyaLAvutx37bQ6LAuBOUwLUwxUA9WHtf7q3L4JW/TjTJndvsoyEA5Z/FtkQ8VwQosTuE6DeP3Ay2wMQOiVV/dv5u6tRvFXW2mat0+xl2CY7K7LRU3K2vY2JGseu2aaoyMzNkc0uM8YWuKlbI/ONFEqUUDvkMRFat1hS3B5QUQAsFNKAB3BrFP0xvRzxziUyrteI4CNHAHQk7IVbjIlN0fjg84/yawpaR1JOBesQVA8lmSh6ovsYbdjPgxG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021)(22082099003)(18002099003)(56012099003)(3023799007)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkIyZWk2akRZamRIUUh4QXJLdHA5WlZPcEROYlFXM2c3djc2dVNHV0tZbXhU?=
 =?utf-8?B?NzEybzRIYUpud0o3SDR6NXF6R1VCQXF3MkQwb0dkb0RPUWR4ZnFIMURmN0RZ?=
 =?utf-8?B?TGR3VWZkMjZjOXFMMVlrZkRWa1F3VzhXRlkxVVgwYWdiREZkOFF1S0hBWXBG?=
 =?utf-8?B?VWRSc2toenhVKzI1QXViWC9reUVnVlBVUWRNOExMMEdBWko0YUNtMW1TRUYx?=
 =?utf-8?B?TXdXbDNJalF0ZzBRL3Y4R1ArQVh5LzNydWhZNk5nczY3TElpSjd2ZUplRi94?=
 =?utf-8?B?MEx3VGloakluazFycEk4ZHNuMm9NNGhaKzRJbThhVzZTbFZZZDYySXpSMEhs?=
 =?utf-8?B?c3Q1MWhxSUlrRFRSQ0tSdjdUaURTOG9UaUVMdTUrTTBYUWM5M25SUjQxV0tn?=
 =?utf-8?B?ZEdDbldWM2R1bVh3K1VXMERadG1yY1hpQUpoWksxbWhwNDlPbXR5Q2ZhcEVI?=
 =?utf-8?B?ZTk4dlhFR3NSSTRuMC9JUUtpamhXR21OS0U3a2VSQUFiaGdKK3RBRGZidmgv?=
 =?utf-8?B?V2NJd0VqQ2ZiOTFCbjFNeFFQdWQyMFRIeW5rd2VTWjdXMjdsMnpKTC9tcDdx?=
 =?utf-8?B?dmJUajZDVTAxeVAxWlEyNU9DTjdQdnMvRFduNmVvZVFOZlBDajdIZVVPVkFB?=
 =?utf-8?B?LzBRblZxRjQzSjQrWGtDN1BZNEt1VjM1QXNLRG9meUtrS0F6TEtYQnNHOUtt?=
 =?utf-8?B?NUJOa0pOSXRxc3RwWXNKQmpzZ1dkQVNJbjk0aThXQmNTUll2TlVnMjhuRWVU?=
 =?utf-8?B?c1lEQzVVQ0RycC94L1pGMzBQT3ZiYTd3d0pMUElIeUdDeXJvVGk1ZlRvQnJk?=
 =?utf-8?B?d2QwTENkWHI1RDZxTGw1Y1dJcDBBclVmMnRpM0UxM1Q3MytqSm5YbjVlUSsr?=
 =?utf-8?B?VVVrVldPZ3dETVk2bWtabTNNdzBnME9POFJ0OXdXd3FHcGpVZnNmb2N0YzJq?=
 =?utf-8?B?N3hIVnJiVHdxbzVob2g5NmE3bFB1UFRRdFQyNVRxYnJ6Skt5MlY2ZnpSY3FF?=
 =?utf-8?B?bC9kUTNRZUMxZndWb0dodVZkMzdUQ1Fack9SQk9QSTZVR0NqWGZ0WVZQMWRt?=
 =?utf-8?B?cDNFNTBCdXRuMnlkQ0hPbThvZkRuMUdqVWh3WlVpa3ZINS94SnltQ2REb0M1?=
 =?utf-8?B?d3diOFpnbmkxMEd3UC8raHA3a3ExeHk4YjRqM1hJQTlTZnF5V3Bwc1ZxRTRw?=
 =?utf-8?B?TFJ2VisyTEpIcGI3OTUvcGdXOEE4MVdVWFp2dU9iT1NWeWhvTHpZUEw4RmZB?=
 =?utf-8?B?cXgzLzVyUWtaY2d1QkdMcy8wWkFuVms0ZU9haHVYd0tZeGF3RDlPcHlYbVlB?=
 =?utf-8?B?Ulp1OS9NSmwvMWp4UWR3Q3Q0Ni9rTmJVQlM1ZElNS1J3enlVOCtldFkrdVJi?=
 =?utf-8?B?OWc0bVFpSEEvUzBvSFRZVTJFVFlHVzMwYUVhMGVLODBEbmM0d3Y5dTlTMmV4?=
 =?utf-8?B?L1p6Y1hqbERqVW9HZXg0SUcraDJ3YWhpakEyUDVyREdVWENoRXpvcXFGeVBY?=
 =?utf-8?B?V0xOM3BTTUdPeWZiZy9QamZReEE5NG5wM1V3WElJbldiaDlvdnZTS2Z1cjY2?=
 =?utf-8?B?RDdDZ0M4NnJITVlLVDJsa3dyQ0grQXRJS3VSdmJ6alhCSGxsRTRWNVdmOGVO?=
 =?utf-8?B?UkRrZXdON0Rjc3JxQ0NaaXZsdWc3TjNRWDZhL0xSTkRRRENtOVgxd1VLZEMw?=
 =?utf-8?B?ZDQzSy8yMjBQTEo1MC9Yc1pEODllY2VpMlZUQWY4V0dKa3NjMGJQMTlmRUJs?=
 =?utf-8?B?S2NwTjJVbFVFcDlucEpreUV0bjg1YmFPVm8wM2k1dUFWOW1OWGFlQ1p4QlVP?=
 =?utf-8?B?L2g0SVhoZmt5YXRPWnRTWUFVa3QxZm1VU0Z2UHJpb2RxQlVGb0d1Q0VpakVD?=
 =?utf-8?B?NlJRcXZwTUdzWDMramppNjExbFBLQ1V5ZEorRFQ1NVdodG5xNHVoQ1ladEx6?=
 =?utf-8?B?bWpqZ2pONmJ2TWJCbHY0YjNBVytRMnRzYWIxWkVsN1BGZ2tpeGFUSURLYmZD?=
 =?utf-8?B?SGVOdVN2cUp4RERJbzFJcHBPbGhvd3l6S3l6NnZXSWd5TGlnb3ZLTTFqKzM1?=
 =?utf-8?B?ZnMvR2J6cURrT3M4azhZS0pVcDRGRDJodHNWQXpnSXJLS1phREkwK2JWMTlo?=
 =?utf-8?B?cWh0YkJrZFdwZiszMjZUY2k3RnFyM0lSZ1JTSmlUd25sOFcrbFZoYmtqdjFo?=
 =?utf-8?B?OThpL1hIajJ2c1NqWFlYN2YzL1MrZXRPVXhNT2VseE5ObG1aa0FaZXF4MjZE?=
 =?utf-8?B?dUpVcW0yckZpSjM4Y3Q3UHFLS0tRcUloZUFZRy84LzFxT2xJd0FsRVJGVVpB?=
 =?utf-8?B?R2FiZitVaFdnV25MQ2ZGU3lSK0lPR044RjJsMHRQbC94MEZldkVuZ2N0emFh?=
 =?utf-8?Q?NosvUeYPSneFkEXQGGXv6FHABj0eHfd0ZKMPCJZgBSto2?=
x-ms-exchange-antispam-messagedata-1: lEPs2PLT0WdhJY6nBZ+atqrD0ILv7vvaePM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C50EBEC6C934984D9D8420B6A82C7A86@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TtDYrXAPJa0xOUcPRECXwhbvbWZORDCkkWIbiRT13IY2anQ178kSUzIhqMjY9wQS0XzzrQxMWZHsP+klERfaaSTYhSkSgkcgMDiKPZoElcSQmVpIPF53/YKhgsZLhEodHEOrLsnAWooADFKVsoF0mCOkSvlJnYupe1bx+v3ZnFpHbiadytex04ydtHrFp+4E7CxOYQl4SyDTWmTOJTrn0cp4PCB+lpu6vD4DkFjJ/VWOMy/PrL4f8EU1DnZkJwfcLddlzrcNktB/RiIvCRtYJxEA7AwmcMloFsyn2Oh+GGhiBfXo8KDkz5uxGFbctWku6g431/fLryroBl641rhxoQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2356a8-73d1-4642-a13c-08deb7d4d2eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 07:36:23.2365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cUj2fA7nahVrsZGY4TAmj9yzDvgwnxm1itkJV9wGtDvXWN1nf4CxYoVXBd6d9c1c5w0bT7DPTQKoKR0EYXBnvmvmhf7LCIl9GoFTiUdz8mA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5214
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 31E745B00E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDAwOjM2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDAyOjI0OjIyUE0gKzAzMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiBBZGQgaGVscGVycyB0byBkZWZlciBhbmQgaGFuZGxlIGxpbmsgcGFyYW1zIHJl
c2V0cyBpbnN0ZWFkIG9mDQo+ID4gb3Blbi1jb2RpbmcgdGhlIHNhbWUuIFJlbmFtZSBpbnRlbF9k
cF9yZXNldF9saW5rX3BhcmFtcygpIHRvDQo+ID4gaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXNf
Zm9yY2UoKSB0byBhbGlnbiBpdHMgbmFtZSB3aXRoIHRoZSBuZXcNCj4gPiBkZWZlcnJlZCByZXNl
dCBoZWxwZXJzLg0KPiA+IA0KPiA+IFdoZW4gZGVmZXJyaW5nIGEgcmVzZXQsIHJldHVybiB3aGV0
aGVyIGEgbmV3IHJlc2V0IHdhcyBxdWV1ZWQsIHVzZWQNCj4gPiBieSBhDQo+ID4gZm9sbG93LXVw
IGNoYW5nZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0
eF9kcC5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuY8KgwqDCoMKgwqAgfMKgIDIgKy0NCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8IDQxDQo+ID4gKysr
KysrKysrKysrKysrLS0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5owqDCoMKgwqDCoMKgIHzCoCAzICstDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfMKgIDQgKy0NCj4gPiDCoDUgZmlsZXMgY2hhbmdlZCwg
MzggaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2RwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2RwLmMNCj4gPiBpbmRleCA1ZmYxY2RmNDU4MWE1Li5jMjBh
OTdlMjE0MTliIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
ZzR4X2RwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9kcC5j
DQo+ID4gQEAgLTEyNjUsNyArMTI2NSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2VuY29kZXJf
cmVzZXQoc3RydWN0DQo+ID4gZHJtX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gwqANCj4gPiDCoAlp
bnRlbF9kcC0+RFAgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIGludGVsX2RwLQ0KPiA+ID5vdXRw
dXRfcmVnKTsNCj4gPiDCoA0KPiA+IC0JaW50ZWxfZHAtPnJlc2V0X2xpbmtfcGFyYW1zID0gdHJ1
ZTsNCj4gPiArCWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zX2RlZmVyKGludGVsX2RwKTsNCj4g
PiDCoAlpbnRlbF9kcF9pbnZhbGlkYXRlX3NvdXJjZV9vdWkoaW50ZWxfZHApOw0KPiA+IMKgDQo+
ID4gwqAJaWYgKGRpc3BsYXktPnBsYXRmb3JtLnZhbGxleXZpZXcgfHwgZGlzcGxheS0NCj4gPiA+
cGxhdGZvcm0uY2hlcnJ5dmlldykNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IDg2NTIwODQ4ODkyZTAuLjc3ODE5YWFlY2NiNzYgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBA
QCAtNDY2NCw3ICs0NjY0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2VuY29kZXJfcmVzZXQo
c3RydWN0DQo+ID4gZHJtX2VuY29kZXIgKmVuY29kZXIpDQo+ID4gwqAJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9DQo+ID4gZW5jX3RvX2ludGVsX2RwKHRvX2ludGVsX2VuY29kZXIoZW5jb2Rl
cikpOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0NCj4gPiBl
bmNfdG9fZGlnX3BvcnQodG9faW50ZWxfZW5jb2RlcihlbmNvZGVyKSk7DQo+ID4gwqANCj4gPiAt
CWludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7DQo+ID4gKwlpbnRlbF9kcF9yZXNl
dF9saW5rX3BhcmFtc19kZWZlcihpbnRlbF9kcCk7DQo+ID4gwqAJaW50ZWxfZHBfaW52YWxpZGF0
ZV9zb3VyY2Vfb3VpKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgCWludGVsX3Bwc19lbmNvZGVy
X3Jlc2V0KGludGVsX2RwKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gPiBpbmRleCAxOTIwZDJmMDI2NjY1Li4xMzE2M2RkMDg1ZTkxIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC0zNzEw
LDcgKzM3MTAsMTEgQEAgdm9pZCBpbnRlbF9kcF9zZXRfbGlua19wYXJhbXMoc3RydWN0DQo+ID4g
aW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgCWludGVsX2RwLT5sYW5lX2NvdW50ID0gbGFuZV9j
b3VudDsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IC12b2lkIGludGVsX2RwX3Jlc2V0X2xpbmtfcGFy
YW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gKy8qDQo+ID4gKyAqIFJlc2V0IGxp
bmsgcGFyYW1zIG5vdywgcHJlc2VydmluZyBhbnkgZGVmZXJyZWQgY29ubmVjdG9yDQo+ID4gKyAq
IGRldGVjdC10aW1lIHJlc2V0IHJlcXVlc3QuDQo+ID4gKyAqLw0KPiA+ICt2b2lkIGludGVsX2Rw
X3Jlc2V0X2xpbmtfcGFyYW1zX2ZvcmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4g
wqB7DQo+ID4gwqAJaW50ZWxfZHAtPmxpbmsubWF4X2xhbmVfY291bnQgPQ0KPiA+IGludGVsX2Rw
X21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCk7DQo+ID4gwqAJaW50ZWxfZHAtPmxpbmsu
bWF4X3JhdGUgPQ0KPiA+IGludGVsX2RwX21heF9jb21tb25fcmF0ZShpbnRlbF9kcCk7DQo+ID4g
QEAgLTM3MjAsNiArMzcyNCwyOCBAQCB2b2lkIGludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zKHN0
cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoAlpbnRlbF9kcC0+bGluay5zZXFf
dHJhaW5fZmFpbHVyZXMgPSAwOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gKy8qDQo+ID4gKyAqIFJl
c2V0IGxpbmsgcGFyYW1zIGR1cmluZyB0aGUgbmV4dCBjb25uZWN0b3IgZGV0ZWN0Lg0KPiA+ICsg
KiBSZXR1cm4gJXRydWUgaWYgYSBuZXcgcmVzZXQgd2FzIHF1ZXVlZC4NCj4gPiArICovDQo+ID4g
K2Jvb2wgaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXNfZGVmZXIoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gDQo+IEkgZmluZCB0aGUgaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXNfZGVm
ZXIoKSB2cy4NCj4gaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXNfZm9yY2UoKSBuYW1pbmcgcmF0
aGVyIGNvbmZ1c2luZy4NCj4gDQo+IENhbid0IGltbWVkaWF0ZWx5IHRoaW5rIG9mIGEgcmVhbGx5
IGdvb2QgbmFtZSBmb3INCj4gaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXNfZGVmZXIoKSBzbyBt
YXliZSBpdCdzIGJldHRlciB0byBub3QNCj4gaGF2ZSBhIGZ1bmN0aW9uIGZvciBpdCBhdCBhbGwg
KGllLiBqdXN0IGRyb3AgdGhpcyBwYXRjaCk/IFRoZW4NCj4geW91IGF0IGxlYXN0IHNlZSB0aGF0
IGl0J3MganVzdCBzZXR0aW5nIHRoZSBmbGFnLiBBRkFJQ1MgeW91DQo+IG9ubHkgaGF2ZSBhIHNp
bmdsZSBwbGFjZSAoaW4gdGhlIGxhc3QgcGF0Y2gpIHRoYXQgdXNlcyB0aGlzDQo+IHJldHVybiB2
YWx1ZSBmb3IgYW55dGhpbmcsIHNvIGNvdWxkIGp1c3QgZG8gdGhlIGNoZWNrK3NldA0KPiBkYW5j
ZSB0aGVyZSBvbiB0aGUgc3BvdC4NCg0KSSBmb3VuZCBuYW1pbmcgaGVyZSBhbHNvIGEgYml0IGNv
bmZ1c2luZy4gTWF5YmU6DQoNCmludGVsX2RwX2xpbmtfcGFyYW1zX3Jlc2V0DQppbnRlbF9kcF9s
aW5rX3BhcmFtc19yZXNldF9yZXF1ZXN0DQppbnRlbF9kcF9oYW5kbGVfbGlua19wYXJhbXNfcmVz
ZXRfcmVxdWVzdA0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+ICt7DQo+ID4gKwli
b29sIHJlc2V0X3dhc19wZW5kaW5nID0gaW50ZWxfZHAtPnJlc2V0X2xpbmtfcGFyYW1zOw0KPiA+
ICsNCj4gPiArCWludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7DQo+ID4gKw0KPiA+
ICsJcmV0dXJuICFyZXNldF93YXNfcGVuZGluZzsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGlj
IHZvaWQgaW50ZWxfZHBfaGFuZGxlX2RlZmVycmVkX2xpbmtfcGFyYW1zX3Jlc2V0KHN0cnVjdA0K
PiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiArew0KPiA+ICsJaWYgKCFpbnRlbF9kcC0+cmVz
ZXRfbGlua19wYXJhbXMpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCWludGVsX2RwLT5y
ZXNldF9saW5rX3BhcmFtcyA9IGZhbHNlOw0KPiA+ICsJaW50ZWxfZHBfcmVzZXRfbGlua19wYXJh
bXNfZm9yY2UoaW50ZWxfZHApOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgLyogRW5hYmxlIGJhY2ts
aWdodCBQV00gYW5kIGJhY2tsaWdodCBQUCBjb250cm9sLiAqLw0KPiA+IMKgdm9pZCBpbnRlbF9l
ZHBfYmFja2xpZ2h0X29uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNf
c3RhdGUsDQo+ID4gwqAJCQnCoMKgwqAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUN
Cj4gPiAqY29ubl9zdGF0ZSkNCj4gPiBAQCAtNDA2Niw3ICs0MDkyLDcgQEAgdm9pZCBpbnRlbF9k
cF9zeW5jX3N0YXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gKmVuY29kZXIsDQo+ID4gwqAJ
aW50ZWxfZHBfdHVubmVsX3Jlc3VtZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSwNCj4gPiBkcGNkX3Vw
ZGF0ZWQpOw0KPiA+IMKgDQo+ID4gwqAJaWYgKGNydGNfc3RhdGUpIHsNCj4gPiAtCQlpbnRlbF9k
cF9yZXNldF9saW5rX3BhcmFtcyhpbnRlbF9kcCk7DQo+ID4gKwkJaW50ZWxfZHBfcmVzZXRfbGlu
a19wYXJhbXNfZm9yY2UoaW50ZWxfZHApOw0KPiA+IMKgCQlpbnRlbF9kcF9zZXRfbGlua19wYXJh
bXMoaW50ZWxfZHAsIGNydGNfc3RhdGUtDQo+ID4gPnBvcnRfY2xvY2ssIGNydGNfc3RhdGUtPmxh
bmVfY291bnQpOw0KPiA+IMKgCQlpbnRlbF9kcC0+bGluay5hY3RpdmUgPSB0cnVlOw0KPiA+IMKg
CX0NCj4gPiBAQCAtNjQ4NywxMCArNjUxMyw3IEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJt
X2Nvbm5lY3Rvcg0KPiA+ICpfY29ubmVjdG9yLA0KPiA+IMKgDQo+ID4gwqAJaW50ZWxfZHBfZGV0
ZWN0X3NkcF9jYXBzKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+IC0JaWYgKGludGVsX2RwLT5yZXNl
dF9saW5rX3BhcmFtcykgew0KPiA+IC0JCWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zKGludGVs
X2RwKTsNCj4gPiAtCQlpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMgPSBmYWxzZTsNCj4gPiAt
CX0NCj4gPiArCWludGVsX2RwX2hhbmRsZV9kZWZlcnJlZF9saW5rX3BhcmFtc19yZXNldChpbnRl
bF9kcCk7DQo+ID4gwqANCj4gPiDCoAlpbnRlbF9kcF9tc3RfY29uZmlndXJlKGludGVsX2RwKTsN
Cj4gPiDCoA0KPiA+IEBAIC02OTQ0LDcgKzY5NjcsNyBAQCBpbnRlbF9kcF9ocGRfcHVsc2Uoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ICpkaWdfcG9ydCwgYm9vbCBsb25nX2hwZCkNCj4g
PiDCoA0KPiA+IMKgCQlpbnRlbF9kcF9yZWFkX2RwcnhfY2FwcyhpbnRlbF9kcCwgZHBjZCk7DQo+
ID4gwqANCj4gPiAtCQlpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOw0KPiA+ICsJ
CWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zX2RlZmVyKGludGVsX2RwKTsNCj4gPiDCoAkJaW50
ZWxfZHBfaW52YWxpZGF0ZV9zb3VyY2Vfb3VpKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgCQly
ZXR1cm4gSVJRX05PTkU7DQo+ID4gQEAgLTcyNTIsNyArNzI3NSw3IEBAIGludGVsX2RwX2luaXRf
Y29ubmVjdG9yKHN0cnVjdA0KPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ID4g
wqAJCcKgwqDCoMKgIGVuY29kZXItPmJhc2UubmFtZSkpDQo+ID4gwqAJCXJldHVybiBmYWxzZTsN
Cj4gPiDCoA0KPiA+IC0JaW50ZWxfZHAtPnJlc2V0X2xpbmtfcGFyYW1zID0gdHJ1ZTsNCj4gPiAr
CWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zX2RlZmVyKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+
IMKgCS8qIFByZXNlcnZlIHRoZSBjdXJyZW50IGh3IHN0YXRlLiAqLw0KPiA+IMKgCWludGVsX2Rw
LT5EUCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgaW50ZWxfZHAtDQo+ID4gPm91dHB1dF9yZWcp
Ow0KPiA+IEBAIC03MzE3LDcgKzczNDAsNyBAQCBpbnRlbF9kcF9pbml0X2Nvbm5lY3RvcihzdHJ1
Y3QNCj4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiA+IMKgDQo+ID4gwqAJaW50
ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhpbnRlbF9kcCk7DQo+ID4gwqAJaW50ZWxfZHBfc2V0X2Nv
bW1vbl9yYXRlcyhpbnRlbF9kcCk7DQo+ID4gLQlpbnRlbF9kcF9yZXNldF9saW5rX3BhcmFtcyhp
bnRlbF9kcCk7DQo+ID4gKwlpbnRlbF9kcF9yZXNldF9saW5rX3BhcmFtc19mb3JjZShpbnRlbF9k
cCk7DQo+ID4gwqANCj4gPiDCoAkvKiBpbml0IE1TVCBvbiBwb3J0cyB0aGF0IGNhbiBzdXBwb3J0
IGl0ICovDQo+ID4gwqAJaW50ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChkaWdfcG9ydCwgY29ubmVj
dG9yLQ0KPiA+ID5iYXNlLmJhc2UuaWQpOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuaA0KPiA+IGluZGV4IGY0MTQ4MGQyNDcxNDIuLjdjMjRkM2RiYjY5ODMg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ID4g
QEAgLTExNCw3ICsxMTQsOCBAQCBpbnQgaW50ZWxfZHBfcmF0ZV9pbmRleChjb25zdCBpbnQgKnJh
dGVzLCBpbnQNCj4gPiBsZW4sIGludCByYXRlKTsNCj4gPiDCoGludCBpbnRlbF9kcF9saW5rX2Nv
bmZpZ19pbmRleChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQNCj4gPiBsaW5rX3JhdGUs
IGludCBsYW5lX2NvdW50KTsNCj4gPiDCoHZvaWQgaW50ZWxfZHBfbGlua19jb25maWdfZ2V0KHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGludCBpZHgsDQo+ID4gaW50ICpsaW5rX3JhdGUsIGlu
dCAqbGFuZV9jb3VudCk7DQo+ID4gwqB2b2lkIGludGVsX2RwX3VwZGF0ZV9zaW5rX2NhcHMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gLXZvaWQgaW50ZWxfZHBfcmVzZXRfbGlua19w
YXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gK3ZvaWQgaW50ZWxfZHBfcmVz
ZXRfbGlua19wYXJhbXNfZm9yY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gK2Jv
b2wgaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXNfZGVmZXIoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCk7DQo+ID4gwqANCj4gPiDCoHZvaWQgaW50ZWxfZHBfY29tcHV0ZV9yYXRlKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsIGludA0KPiA+IHBvcnRfY2xvY2ssDQo+ID4gwqAJCQnCoMKgIHU4
ICpsaW5rX2J3LCB1OCAqcmF0ZV9zZWxlY3QpOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPiBpbmRl
eCBhMjYwOTQyMjNmNzgwLi5iNzA3NTA2MGU3YmQzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
PiBAQCAtMTkzNSw3ICsxOTM1LDcgQEAgc3RhdGljIHNzaXplX3QNCj4gPiBpOTE1X2RwX2ZvcmNl
X2xpbmtfcmF0ZV93cml0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwNCj4gPiDCoAlpZiAoZXJyKQ0KPiA+
IMKgCQlyZXR1cm4gZXJyOw0KPiA+IMKgDQo+ID4gLQlpbnRlbF9kcF9yZXNldF9saW5rX3BhcmFt
cyhpbnRlbF9kcCk7DQo+ID4gKwlpbnRlbF9kcF9yZXNldF9saW5rX3BhcmFtc19mb3JjZShpbnRl
bF9kcCk7DQo+ID4gwqAJaW50ZWxfZHAtPmxpbmsuZm9yY2VfcmF0ZSA9IHJhdGU7DQo+ID4gwqAN
Cj4gPiDCoAlkcm1fbW9kZXNldF91bmxvY2soJmRpc3BsYXktPmRybS0NCj4gPiA+bW9kZV9jb25m
aWcuY29ubmVjdGlvbl9tdXRleCk7DQo+ID4gQEAgLTIwMzcsNyArMjAzNyw3IEBAIHN0YXRpYyBz
c2l6ZV90DQo+ID4gaTkxNV9kcF9mb3JjZV9sYW5lX2NvdW50X3dyaXRlKHN0cnVjdCBmaWxlICpm
aWxlLA0KPiA+IMKgCWlmIChlcnIpDQo+ID4gwqAJCXJldHVybiBlcnI7DQo+ID4gwqANCj4gPiAt
CWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zKGludGVsX2RwKTsNCj4gPiArCWludGVsX2RwX3Jl
c2V0X2xpbmtfcGFyYW1zX2ZvcmNlKGludGVsX2RwKTsNCj4gPiDCoAlpbnRlbF9kcC0+bGluay5m
b3JjZV9sYW5lX2NvdW50ID0gbGFuZV9jb3VudDsNCj4gPiDCoA0KPiA+IMKgCWRybV9tb2Rlc2V0
X3VubG9jaygmZGlzcGxheS0+ZHJtLQ0KPiA+ID5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4
KTsNCj4gPiAtLSANCj4gPiAyLjQ5LjENCj4gDQoNCg==
