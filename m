Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bLkrGUeZMWpvnwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 20:43:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BB5694604
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 20:43:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=d75JuQzt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2010D10ED00;
	Tue, 16 Jun 2026 18:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 347E510ECF8;
 Tue, 16 Jun 2026 18:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781635396; x=1813171396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CsMPT9DcR4sI6UdISVlzkepLhPpE4eTlNdyLuNJh0WE=;
 b=d75JuQztS/0cyvB+i3F4C12eFKsv5VT2wjyoL/yVhxwbndSIvbzqY8NT
 59FXu61cbvLUTYGu5l6D/2epZEkXP9A5TGzl7vQbtg5kTgD0fZzOS7CMP
 iTWC0f/roKQZLKLpfpYj76vzEWINiSw3OPuW8BtVNJprwCZB0U+GqTD2g
 yfy8VsM7TQP27awIexc6VBtvOqf1DCl9q/llQgcwbCx/gNn0KYHlXwYd/
 E/Uy1TVZ0JpKjP0UhC6HisS9Sk/Cvrjfn2Xrjymfy9AH4wxtobW7j3JGj
 eqa+xBdmFWTi2nQCpgK2jvWMapWSHoiAmYIRcJlaDvENgfHl72A9banlu Q==;
X-CSE-ConnectionGUID: b+L1Mx6hRNq9d9HDhWyd+Q==
X-CSE-MsgGUID: tD70W3icS+mVQ/RWTxGmbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82455171"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82455171"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 11:43:15 -0700
X-CSE-ConnectionGUID: dkN96AB2SnCHpP8lDvUliA==
X-CSE-MsgGUID: cy4oTbQKQ+aj6qBHDFwEew==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 11:43:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 11:43:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 11:43:14 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 11:43:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GmBiD1Uuq3wrJewMdCnvPaoOvA/Pi9Mw+9U3q6m5AoCqyo7eJIjXwmmXUaMgV2kpPgKz+srxHjgu3f/Nw6ViSFNpxf5D0u0hxeZxUjIyK+jTnJ7SU4hHHtEm0PQgSJFhsZjKbFBDxnPW5az1a4jkW3FIuYBDls4G0V6shdxCRW6cqKO+d/WovGTp8JQQRJPbF6Xjes7XTP85HZCk3YoYfpBxtJQ5XXauSxNkHNwCZi20xn+dBiBexaFn09LdmN9kZ+5Dz2SdlmOnzZYObyKKU7aSML/A7k5e77r2RiJJWwurvKu8wS0mauHtZRbk5S1Iq5BH7XvGRjytxPX/EkM6fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CsMPT9DcR4sI6UdISVlzkepLhPpE4eTlNdyLuNJh0WE=;
 b=eqsdBcRQp7C6/MZ/y27nb2tC7Xt4KZMieKs1Othoj7ZJft65v2iQFseVYKxR6Pnsu/W6+5mQcajTIdXKHkwbXuIZ1gWuufX1/x641nYcuBC8x/+ek6FqNP/6H6bMZB3vSgIHv4ND4D0gVtysVVciSKaLyDOCppd7PpDyl8+zuBY6t2q+SVYxBCFQ6Tko70sCSXDeCwSIvLPjGuebxnNrGiQMsxj7cNOg7Pe0u7QgNnc2g6Gu9lPd99g01L6uM0ORU08S7Mvntc1SVt9pRmT9VIAuShccIjNngee5vuJ+BMFwFYMBm4amJPrgQi6uhp/0R6BXXQawE/HYyg6LDOlEhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB7498.namprd11.prod.outlook.com (2603:10b6:510:276::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 18:43:10 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 18:43:10 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/display: update to the BW buddy configuration
Thread-Topic: [PATCH] drm/i915/display: update to the BW buddy configuration
Thread-Index: AQHc/XkuYtCIQkOHf061F6mqYGRcP7ZBdiSAgAAO3YA=
Date: Tue, 16 Jun 2026 18:43:10 +0000
Message-ID: <80b9dac671bf6fc1d9375e3e31deb8ecf1d83b53.camel@intel.com>
References: <20260616101553.226298-1-vinod.govindapillai@intel.com>
 <ajGMxZ5XFzHk7YAQ@intel.com>
In-Reply-To: <ajGMxZ5XFzHk7YAQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB7498:EE_
x-ms-office365-filtering-correlation-id: 70ed3922-a87c-4c4c-2d85-08decbd71d4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|23010399003|376014|38070700021|22082099003|18002099003|11063799006|56012099006|6133799003|4143699003;
x-microsoft-antispam-message-info: nQc9lQMC4RWfsPg7jIXGeCzq5zgmuTT8uZCEkQJ0ehZZWet9sX6fpP3jZ17E9yxw3EM/ggK/R0n/gvDcUNnPwxFwE1WzweWdrO9N2bqLByOMlUhqxsPCSXLsvqxbGzFuMvSFqhJqbaiEuw1HNNSe2PVLzLzHVMmZSeOUsi4/6/z24LeMkabWKAwVnb1v8Kn2ETa4DEv5Pp+tOqm/yK8CKuYVzLpAVZJf2RetiOZVcx97/dTSvU5CZMW8xGi49ER+w6AZXr9T7agpbIFrlUaeBaNQHYtLkvhjL2uzY/fOXcfBinPit+aexD+PH5uDNn/YqFHjT7fnfgoD9XIvH64dlY9IBskZSsxyWYR8X9EV9W48jbl2REPfvszzfxoCgXG0mdjD9k8crPKIJfyjOF0JeoiE/KFHnLNwTBdAXJjb+CxvMhyiMMnNLJRVqkTZBkZEinkGQ7OZAGxrSu6Mcbli3t9xU/o9v8So43KqKkaOTdEe3cvp4uTAngaUhV8ja31lzpqzseoPGfNECtchHvKOc6vkjt7sGLRCC+d/wbWf/RR4NON0f3NtRZVP0Jc9Uxx3Vk5c99PfEU4qivNpYk9oL6h8oyYfZuVexr7PU50GT6neck3b/oi2I48DgZ05cahVwL7r5SMSe0TpTFjqL8OCm5NcrCX839Cpszo6oWgga9t1eHvPdnFR5DyjFFfPt9eGg3QJ7c6m2KepmZVnhBOYMBdUL+Hs0o+a4pZdn6iCDuCzL7GagR6na+MVs/s1BTNM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(23010399003)(376014)(38070700021)(22082099003)(18002099003)(11063799006)(56012099006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dEpyS0gzTXZaWkFQNXdRNGxrS3VTZU9NVDBWbEY3YmJqYnEyUjhUZGtpRjhh?=
 =?utf-8?B?QXZpNEd5MjREc1FRYjNTLzZQcmJ2L3dtcUtweEZXMnJkWERPWjBzYXdud2NR?=
 =?utf-8?B?TlFibmp2TlR0MERjSHdBY3FkVm5wRnlEN2pjN3ZtcnRqSVNJQlhqYlRIaVlP?=
 =?utf-8?B?RnpVaWNlM2tvZkxYb1J6R0dNWkRSbklVYk0wcXlZalpFSUM4dGpUREY5MGFH?=
 =?utf-8?B?REdJQXlYcm9TNXFKNDBESWkwemtHNVlkbk1JUjRMbFhEMys3MmIxZi9yYWRa?=
 =?utf-8?B?U1BUSjNFM2xjN0VXWGNxeDNrNnQrSm9JU1VydUpyajBhSjlRSlZablNSeVht?=
 =?utf-8?B?Q0liNWs0Unp5V2lRSGxZTmZyVThqTkxCKzJ6T2diU1ZPbElQT2hOcGRPSHg1?=
 =?utf-8?B?K3FQTkJtYW43SEV1MUZWR3UzeXZVVktyUUdGOFNuUVBnemc3ME1DRTNyQUV1?=
 =?utf-8?B?VlJBRElzUENpSE9NZnZoTDdPRjk3Yy9FYlhkT3BFTGlJRUVXYWFnUC9UYTkz?=
 =?utf-8?B?NWI4YVNPTnNEZ3JqTHBESU9lQlBQNXhPeldOSW5nOUV4cXBadW5KMHcwaUJL?=
 =?utf-8?B?VEg1Vk1zaDY0QWQ0NUliZndxVThmK1RPclJmUDNSSU1zOW5TdTJ4NFZZZEky?=
 =?utf-8?B?ZnkrM1BYTDQyaVZDWWVvbEs5VnR0STh5RkdMaFYrcnErVlBBZDJPRkhob3Nn?=
 =?utf-8?B?cUp3dk9qbU92d1U0bk9zcEhJOTdobnRISEVZWXIzU2pmUmNqL3U2QlN4Z1VU?=
 =?utf-8?B?NC92eU52RW9pWTJ1RFFRTzZZYVBFdEV5c1NvQnFGRGdWWG1CVTRycFlwdU5D?=
 =?utf-8?B?MmJYbDFNYVNXSzJHZHkzZGx5MkwxSXp6NUZIWkFNcmIwTEs3ejQvVFUwNGFF?=
 =?utf-8?B?Z3Nrek42UGVlbVluOVdPQmpzYlJEUjE3Q1Z4VUl3c0J2TUVOK0dKTndyM1dB?=
 =?utf-8?B?VXFYRDQzRW1YcDc4c0FScXBjaU8zeHZaOHVJYUNnQ2o5SkZYazVQN090SzM0?=
 =?utf-8?B?Vkkvb2pDYmFRWHdsekhzR3llcTg3cVFmWlZXMzlpNVVZbTRYMS9wMHpBbWJx?=
 =?utf-8?B?U3FVSUUyYWNORHZMLzRtTTlmUE94M3dFd2huby9uL2VwaklDZjlzNERjMDhl?=
 =?utf-8?B?UEhqUWgvY2d4ZVRaUWVBR2FyRjhpZGF1MHhGb29sWFJlODBSWDZBTkdBL1ho?=
 =?utf-8?B?NWtGTWhJL1hHSDMvdUdUb1hLbTA3SFN1dnpjVXVQT2h2TWdzc1JTMmdtdlVp?=
 =?utf-8?B?L1J3Q1liVlNHekRxQkF3Tlg3a0pmbEx6VG1wWnZTNnRxS0dlamd0aEd2Mlo0?=
 =?utf-8?B?YmYyazdITFhzL2NmVUVMUkxXTnNERmJTSDNaZUpFSXAyUkxiZzJTVUgzeWkv?=
 =?utf-8?B?czdTaldjT0NHS2wxeTNlY1JIdFNDRWxOM2VNUHBVRGplMGR5MmV1Kzk2MkZx?=
 =?utf-8?B?UVBiVEQrbjZVN0RNUi93cE83bHFMVDV5a3J5eFZUR3VSMDNkR2xhQVlwa3lP?=
 =?utf-8?B?WWVNUDNCUExUQTFVZW16N1hBaUk5MnpFandEc2h5blhpNit4YkdtbUM3N2ht?=
 =?utf-8?B?eEpSL0M5Qmxqd2NrZUtWL1QvR1YwYUlEYXVtRGFSaDdGTncya1Q5Ym4veGlw?=
 =?utf-8?B?UmJjeTdYekRmZDR1MmZ3ZWdXQXc3MzFiRTU0UWpjVE1HQkdwd1VIZDU3Zktu?=
 =?utf-8?B?cUNSM3pkMjcrWXpFZ2xpeVVXSGtvdXAyRHF0c2wyNlcvRnhOTG5hMWR2a3RZ?=
 =?utf-8?B?elBXZlI4VGF6aXFrSTZBcStZd2pmV29kdDZkTXI4WlNnK2dXRDZBTUtFRXA5?=
 =?utf-8?B?VnRsMEszU29oaHNPSDlma0dibFdPcmxHYTlEcklJY3VlcnBvR2U2TUdESk9i?=
 =?utf-8?B?ZFJrS0s4TTJJZnVYY29sbjN6UUZ6MitPNVpXMlJKUEwzL2k2a0xkbVRaQ1lP?=
 =?utf-8?B?Nm1Bb3VtRVNEQW4vNlByampJQzRhSDRpRGF4KzBIektwVDJPbUpma0ErSCt3?=
 =?utf-8?B?ZTBTellkdURVcTJUVjhHemxVYURiRTIwR1ZRNGF5WlVmaXVPZHZ0cUdxS2F2?=
 =?utf-8?B?OTNVVDdpTmRNZTJPQUJZeXZtNTRUSGs0MnVVbmhySlR6SUk1YmtWMmFUcmJJ?=
 =?utf-8?B?Zmd5VWFjdmhybEhzdTQzSjFiUXNIY05kdC9sK0RuMTF5V2REZ2hrWWpiWWt5?=
 =?utf-8?B?eEZYZ09DYlpGRjZ3Q0ROcXp6L3RqWVlrOFp0MW02cHN3L01jSFhIL1VYUldr?=
 =?utf-8?B?RUpjTHVveVVENUNRTXBhVjV4SEdVV2JmQnR3VjV2UnFWam93alNaZGdVMXRD?=
 =?utf-8?B?OHRTVnlsMFZiMUgxWXRoN0xIYUZqaisvSUFkaXlqUTVia3k4bVZZNUdJYVI0?=
 =?utf-8?Q?A9jVXkjRCB1HR/+dY8y/A1vHlG5ama0ekfJfxtElSDrXO?=
x-ms-exchange-antispam-messagedata-1: P0izTzEAy5H0K/6luHvNzyEPbSNbBx3C9tk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FB8476738E4A342A9FE312B4A78A52A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Elzna8ozf1zUqL8OzglzJEYNr9HSBGXTxPH789LY9FXkrc0pOVN8ym75jnWpZNePO0i8vBWxQJvsqXEh2qLVCWNUN/gomyw7MtKp4CA4ykhP9btBTqpcRpMqYltu+rWe2FSkTXcZjCdrUq0zv8fMXw9MYKWe6GLo8uOcLg4/yH3hadFRS/G48ICR7Qjz1cgXaQSrvktFAAZGO30wo9mD11StT6E/j6RIAo7z3+s82b0dnijIf412LOKtkbcB1XRufhByaDWk0LdWEYtsJdSji+jE3PJeyg/KtenYuk8h8Af/O9bTaDEV+jzP6vFcflOIAcHZpqEo9TD8uCAQGK4OSA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ed3922-a87c-4c4c-2d85-08decbd71d4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 18:43:10.2736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XCb3QElrUYROijcAcxmjVcR2i4cSQusQbZaxw6nNg0G7aeBnZX+IJQkkcf4c5Aj67WJQK2StQL3YkAjlumCZ8+Qa5+ELyU1bVva0RLWrUBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7498
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1BB5694604

VGhhbmtzIGZvciB0aGUgcmV2aWV3ISBVcGRhdGVkIHRoZSBwYXRjaA0KDQpCUg0KVmlub2QNCg0K
T24gVHVlLCAyMDI2LTA2LTE2IGF0IDIwOjQ5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSnVuIDE2LCAyMDI2IGF0IDAxOjE1OjUzUE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gQnNwZWMgaGFzIGJlZW4gdXBkYXRlZCBmb3IgeGUyX2xwZCsg
cGxhdGZvcm1zIG9uIGhvdyB0byBoYW5kbGUNCj4gPiB0aGUgYncgYnVkZHkgcHJncmFtbWluZyBp
biBjYXNlIG5vIG1hdGNoaW5nIG1lbW9yeSBjb25maWd1cmF0aW9uDQo+ID4gaXMgZm91bmQgdy5y
LnQgdGhlIGN1cnJlbnQgcGFnZSBtYXNrIHRhYmxlLiBUaGUgcmVjb21tZW5kYXRpb24NCj4gPiBp
cyB0byBrZWVwIHRoZSBkZWZhdWx0IHNldHRpbmdzIGZvciB0aGUgcmVsYXRlZCByZWdpc3RlcnMg
YXMgaXQNCj4gPiBpcyB3aXRob3V0IGV4cGxpY2l0bHkgZGlzYWJsaW5nIHRoZSBidyBidWRkeS4N
Cj4gPiANCj4gPiBCc3BlYzogNjg4NzENCj4gPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmphbGEg
PHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jwqDCoMKgIHwgNDMgKysr
KysrKysrKysrKy0tDQo+ID4gLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlv
bnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBpbmRleCAyZTUx
ZGZjZDVkY2UuLmRjZmQ3OGY0ODYyMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gQEAgLTE2MzEsMjMg
KzE2MzEsNDAgQEAgc3RhdGljIHZvaWQgdGdsX2J3X2J1ZGR5X2luaXQoc3RydWN0DQo+ID4gaW50
ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiDCoAkJwqDCoMKgIHRhYmxlW2NvbmZpZ10udHlwZSA9
PSBkcmFtX2luZm8tPnR5cGUpDQo+ID4gwqAJCQlicmVhazsNCj4gPiDCoA0KPiA+ICsJLyoNCj4g
PiArCSAqIElmIHdlIGRvbid0IHJlY29nbml6ZSB0aGUgbWVtb3J5IGNvbmZpZ3VyYXRpb24sDQo+
ID4gZXhwbGljaXRseSBkaXNhYmxlDQo+ID4gKwkgKiB0aGUgYWRkcmVzcyBidWRkeSBsb2dpYyBp
biBwcmUteGUyX2xwZCBwbGF0Zm9ybXMgYXMgaXQNCj4gPiB3YXMgYmVmb3JlLg0KPiA+ICsJICog
SW4geGUyX2xwZCsgY2FzZXMsIHBhZ2UgbWFza3MgbXVzdCBiZSBzZXQgdG8gMCBpZiBubw0KPiA+
IG1hdGNoaW5nDQo+ID4gKwkgKiBjb25maWd1cmF0aW9uIGlzIGZvdW5kIGluIHRoZSB0YWJsZS4g
U28ga2VlcCB0aGUNCj4gPiBkZWZhdWx0IHNldHRpbmdzDQo+ID4gKwkgKiBhcyBpdCBpcy4gQnkg
ZGVmYXVsdCwgQldfQlVERFlfQ1RMIGJpdCAzMSBpcyAwIChidw0KPiA+IGJ1ZGR5IGVuYWJsZWQp
DQo+ID4gKwkgKiBhbmQgQldfQlVERFlfUEFHRV9NQVNLIGlzIDB4MA0KPiANCj4gVGhpcyBzZWVt
cyB0byBtb3N0bHkganVzdCByZXBlYXQgd2hhdCB0aGUgY29kZSBhbHJlYWR5IHNheXMuDQo+IA0K
PiA+ICsJICoNCj4gPiArCSAqIFRPRE86IFJldmlzaXQgdGhlIGJ1ZGR5IHBhZ2UgbWFza3MgdGFi
bGUgd2hlbiBic3BlYw0KPiA+IHVwZGF0ZXMgdGhlDQo+ID4gKwkgKiB0YWJsZSB3aXRoIHRoZSBj
b3JyZWN0IG51bWJlciBvZiBjaGFubmVscyBmb3IgZWFjaCBkcmFtDQo+ID4gdHlwZS4NCj4gPiAr
CSAqLw0KPiANCj4gVGhhdCBUT0RPIGlzIHVucmVsYXRlZCB0byB0aGUgY2hhbmdlcyBoZXJlLCBh
bmQgYWxzbyBzZWVtcyBtaXNwbGFjZWQuDQo+IA0KPiA+IMKgCWlmICh0YWJsZVtjb25maWddLnBh
Z2VfbWFzayA9PSAwKSB7DQo+ID4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiDC
oAkJCcKgwqDCoCAiVW5rbm93biBtZW1vcnkgY29uZmlndXJhdGlvbjsNCj4gPiBkaXNhYmxpbmcg
YWRkcmVzcyBidWRkeSBsb2dpYy5cbiIpOw0KPiA+IC0JCWZvcl9lYWNoX3NldF9iaXQoaSwgJmFi
b3hfbWFzaywNCj4gPiBCSVRTX1BFUl9UWVBFKGFib3hfbWFzaykpDQo+ID4gLQkJCWludGVsX2Rl
X3dyaXRlKGRpc3BsYXksIEJXX0JVRERZX0NUTChpKSwNCj4gPiAtCQkJCcKgwqDCoMKgwqDCoCBC
V19CVUREWV9ESVNBQkxFKTsNCj4gPiAtCX0gZWxzZSB7DQo+ID4gLQkJZm9yX2VhY2hfc2V0X2Jp
dChpLCAmYWJveF9tYXNrLA0KPiA+IEJJVFNfUEVSX1RZUEUoYWJveF9tYXNrKSkgew0KPiA+IC0J
CQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiA+IEJXX0JVRERZX1BBR0VfTUFTSyhpKSwNCj4g
PiAtCQkJCcKgwqDCoMKgwqDCoCB0YWJsZVtjb25maWddLnBhZ2VfbWFzayk7DQo+ID4gLQ0KPiA+
IC0JCQkvKiBXYV8yMjAxMDE3ODI1OTp0Z2wsZGcxLHJrbCxhZGwtcyAqLw0KPiA+IC0JCQlpZiAo
aW50ZWxfZGlzcGxheV93YShkaXNwbGF5LA0KPiA+IElOVEVMX0RJU1BMQVlfV0FfMjIwMTAxNzgy
NTkpKQ0KPiA+IC0JCQkJaW50ZWxfZGVfcm13KGRpc3BsYXksDQo+ID4gQldfQlVERFlfQ1RMKGkp
LA0KPiA+IC0JCQkJCcKgwqDCoMKgDQo+ID4gQldfQlVERFlfVExCX1JFUV9USU1FUl9NQVNLLA0K
PiA+IC0JCQkJCcKgwqDCoMKgDQo+ID4gQldfQlVERFlfVExCX1JFUV9USU1FUigweDgpKTsNCj4g
PiArDQo+ID4gKwkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjApIHsNCj4gPiArCQkJZm9y
X2VhY2hfc2V0X2JpdChpLCAmYWJveF9tYXNrLA0KPiA+IEJJVFNfUEVSX1RZUEUoYWJveF9tYXNr
KSkNCj4gPiArCQkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+ID4gQldfQlVERFlfQ1RMKGkp
LA0KPiA+ICsJCQkJCcKgwqDCoMKgwqDCoCBCV19CVUREWV9ESVNBQkxFKTsNCj4gPiDCoAkJfQ0K
PiA+ICsNCj4gPiArCQlyZXR1cm47DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJLyogV2UgZm91bmQg
YSBtYXRjaGluZyBjb25maWd1cmF0aW9uLiBQcm9ncmFtIHRoZSBCV19CVUREWQ0KPiA+IHJlZ2lz
dGVycy4gKi8NCj4gDQo+IFNlZW1zIG9idmlvdXMuIFRoZSBjb21tZW50IGlzIHJlZHVuZGFudC4N
Cj4gDQo+ID4gKwlmb3JfZWFjaF9zZXRfYml0KGksICZhYm94X21hc2ssIEJJVFNfUEVSX1RZUEUo
YWJveF9tYXNrKSkNCj4gPiB7DQo+ID4gKwkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgQldfQlVE
RFlfUEFHRV9NQVNLKGkpLA0KPiA+ICsJCQnCoMKgwqDCoMKgwqAgdGFibGVbY29uZmlnXS5wYWdl
X21hc2spOw0KPiANCj4gUGxlYXNlIHNwbGl0IGNvZGUgcmVzdHJ1Y3R1cmluZyBmcm9tIGZ1bmN0
aW9uYWwgY2hhbmdlcy4gVGhpcyBkaWZmDQo+IGlzIHRvbyBoYXJkIHRvIHJlYWQuDQo+IA0KPiA+
ICsNCj4gPiArCQkvKiBXYV8yMjAxMDE3ODI1OTp0Z2wsZGcxLHJrbCxhZGwtcyAqLw0KPiA+ICsJ
CWlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksDQo+ID4gSU5URUxfRElTUExBWV9XQV8yMjAx
MDE3ODI1OSkpDQo+ID4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBCV19CVUREWV9DVEwoaSks
DQo+ID4gKwkJCQnCoMKgwqDCoCBCV19CVUREWV9UTEJfUkVRX1RJTUVSX01BU0ssDQo+ID4gKwkJ
CQnCoMKgwqDCoCBCV19CVUREWV9UTEJfUkVRX1RJTUVSKDB4OCkpOw0KPiA+IMKgCX0NCj4gPiDC
oH0NCj4gPiDCoA0KPiA+IC0tIA0KPiA+IDIuNDMuMA0KPiANCg0K
