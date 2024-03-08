Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9C98762A0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 12:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C200811385B;
	Fri,  8 Mar 2024 11:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l/qYi2Mb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E38113862
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 11:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709895719; x=1741431719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=B8CI8zhYTa6JjTbny7etBfTSXz48jNhDQgwPpyRwqZ4=;
 b=l/qYi2Mb00ps27pRqR2pggip+49y7AHGg6N1JhCE/RwW2+p7D7WTBVMD
 fIb/BMjbKwKw0RBmnxwP3jFCBChR1qcpUlT8YqQey3q9yJUfJ0IR04+92
 5ZGu2DsO3y/o766Fj+SUELlOxo/x2LCYBiJzrrqAGbCQ8hSUu4cSf/BAy
 1WHsk5AiGOLtnlEItYQgMG+LTMliGT9vNZoXoRvkfTaReKsc/GHVJyPQ0
 YSpl94NqPLbJfOVotlUMYm7QpgAYdCwVyC1bvnUI0fy2rz6FkfqLT0IF9
 xIVYkVOE8ngUviB7kpS56bvujzB1ed6QWo7jYdk+YG/tKh/sG58Jg9pMr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4456607"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4456607"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:01:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="14984484"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 03:01:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 03:01:58 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 03:01:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 03:01:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZegSIi4FKgP5GEubFcO5ANeQxtuvJWNVg/y/O08GlP6/8HkN/caXP7TqxMquVL6kZLSuIudgRl+r129sz9oKItmHXksSucmX6sHaWf0gToy2XIitctkR51DWbYuyuY1cdGJ1ejtro5QnB3NKymplXKDZraX3cEZcXO4ZGg+zpw4JPFbNIXidvHA4OgP2FTvoiATUcem7A2E1mKOc8/OQPvpHeueOMQQC0m3DuyZ0g+erXxZ5efd43xbIuHSlQcmRMSsB9KzhBcT2ndpDupfNs8v7ETqj0uCHJeUVCm9c+rnUp8gh64Eec+CfkkGm0YePw7WE//bmk/tNS8+QncgH7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B8CI8zhYTa6JjTbny7etBfTSXz48jNhDQgwPpyRwqZ4=;
 b=RmtZPX/FRMSuohFeijKbYkuXTLc8VgDmi7flIfU/YKJtrLrluVIsKTBXwnglX0vCPN9mBAL8jwIXRzmt+Du0sSp2ajLUSLrlGWYaTn+n2bMP3WygkP3h0oLAPQrzSVQlCFRVctFL0kDcO5aiGX0V58wWrBbCL5ppG3fcOqEUKc1b379Qqg39/lkbj688HfHhuolfMLmu4+kpn4CpW2VlYpyYMUP4bF4vckuAJgidDuXZOd3dfsyjlxuHrkspTNOHJFHzMh2kNlmAdauc4beuYQalK0AWKqk0jBjgVLDuZnlxRXPjKXClhQm/mebIBQe31Lb5ktLUAGLrU3h7G0jg4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6036.namprd11.prod.outlook.com (2603:10b6:208:377::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.10; Fri, 8 Mar
 2024 11:01:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.006; Fri, 8 Mar 2024
 11:01:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Thread-Topic: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Thread-Index: AQHab6E5qQdmg628jUGykI2KZRLsxbEshvEAgAECGQCAABmzgIAADgCA
Date: Fri, 8 Mar 2024 11:01:42 +0000
Message-ID: <b938df292e3e3beb7c73930eed6cd3b54d13c99d.camel@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
 <20240306083427.2040475-5-jouni.hogander@intel.com>
 <Zen2Rm3VDV9nSn3L@intel.com>
 <0872bc7df38a15bd257dcdc1d54d5d4e1287f516.camel@intel.com>
 <ZerkV9v_9wR4sZqH@intel.com>
In-Reply-To: <ZerkV9v_9wR4sZqH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6036:EE_
x-ms-office365-filtering-correlation-id: c997d0a8-52ec-4572-bb46-08dc3f5f231f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4O8Fdgop03LZgS4lTg8pdvxDiLFcBmY043dpZbNRS5qfOg3UCSMgQScR2ZKnL1tUS6uLJjFXdFhpl4LIyZ0iaPQkn6z6G25/vHgbn8wrc5VpoQ9TilsjeolWdKrrwmOHRsRt8YPVXLf2ibyE6wuJsyQ+P5PxtS0vRJ+++8ZnUzdwz+6iASTNMblTZ6QzuvVLjnjroNZpxg1zr4hSTLcb2lbd2MCUcHjuQXTod+dtsvAbR3018dNmi6HR8eIRUvhWB4A6PdS3X/gJnTZrWU41yogPU7XJsqLLkYK3Ys52xWXGou2OIToZrA75LGJAUY12Z1PaZe+dXrC55jHfmGINlljKkOyNwAy0x0NSFy9j+cGQoGIjzJ5uyOwhwUmrCjMvntXlvj9fu5j3jAYpvhdfflZA76HlXVB40ormsoAMDU0ixPgWJdjyaCFp40L9FYer9Yqx8BWlEW+Xds+4Wvjz9lMi65yudB980rwUYaAB0Uil5GzlB8L47iyJhwANAcY9erPhzNC1tKiuG3/33dzS9jerhj6COPzkMiQJpE9nwM4QWSyS1/JSrdiLgeEz1BheUPdA+YpXc6e/GVb4KJ1hr/K2FHPzafbMTUeFvAju9ORETpdmeJRKrr2UEdQ6bNMV+lRJfIONQBlnALIxDboSLzChInBIH5vggIrlVvv9fS4gYOIzEafniXpZZXvr0I3OMX+2BIDygfRKzQVPsgQ+NA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjVQZG03MmVjRVpxKzJpNWYvNHVSeGluY2dQVkwxMjFSWVZxc0ZueUNUemV5?=
 =?utf-8?B?aDJEZzc1akxzbW5vZmFmeXpjdEloSmhBTFVmUWNiWksrL3FWdy9uMUt0b1dr?=
 =?utf-8?B?VVZ4RVVFN3JzRTVYRENHaUxqZGRNa2dCZ3oxd3BSeXdrYk5CSmU3SVZHZ3Ez?=
 =?utf-8?B?YldYMmtxK2FaRVFuUDUvMllzenl4NjV5U1NtS1o1UlVBODdCNnFSV2lpR1hD?=
 =?utf-8?B?MFdoYVpLckdLUkpkeVQzL0VhL2diMmh6WFVRbVRGYXE2dFF0YWEwak1jaDc2?=
 =?utf-8?B?aXg2MDhoRFhnYWJDVk15UVRxVkE1Sm5PVlBrM2F2MmNLdU5PTHp4VnlHUGNT?=
 =?utf-8?B?Y0hNN283RU9WWGJxZTFKNkxzd2E4cTVXV1dpellhUUJlczhuRW04WEtMeFFx?=
 =?utf-8?B?Y2UyVUJJL0RXTnFHbGlDNmRETVRuQWE3ZnBwZ001NDRqNlJub0lLclVnOW1L?=
 =?utf-8?B?MmtwVHU4dmhJeEpBdDhhT0JzQXhnOWJrK2M0SHo4TDVjYnozcGc2OVlaaFlD?=
 =?utf-8?B?VEhOd25lQndyWTYrUTB4aDBCY0l4cFhaM0tjUGNENnF6bjIxNkttNkFIU29D?=
 =?utf-8?B?SHZRMnBaZnNGcW95OWt5S2hWRlUrRlZreXZZaVNEQlVSczVQL3BUcy9TRjFT?=
 =?utf-8?B?Vk5SZzVjNjRIcDhpS1hSamlPZ1RubXB1QStJbWNaOVJRYzMvbm0yUU9abDB1?=
 =?utf-8?B?V2dJdVI4Mm43clRWNG9MelVKNW5oMFc3UzhnbFhRZHpVQTFtTmh5ZnNhTHQz?=
 =?utf-8?B?Z2hXL0laN1Nka1M2WHp5MnFVdUtya3ErYzBwbXJ5eU5NVnJXK21BYnlabEY5?=
 =?utf-8?B?cEY5MVNiTFFFMUF2ZThZOUtCY0pTY3lqSGNSVWFtNnJiS1QwdytJSStCRmVE?=
 =?utf-8?B?ZmFDMFlyQVF0WWp6ajdmSTFFVFZEUk9pbFJkRGVjbGtYTUIyN3pDQlV0WTMx?=
 =?utf-8?B?K3Bhb3F3b0dJK3pWZ0JtWi85cStDN2lpZFNzWGRIMG93c2xzVWRiaXJ2b0Js?=
 =?utf-8?B?Z3VwdEpyR01Zc0RhQzJoRHJydnExK04yZUMvT2RTSWdZakUxR2JvOG1JNjNJ?=
 =?utf-8?B?aHFQbUtTWGJVemxtVWt4MW9GNENsVFIxQXgxQjJsa0RQWnpqSC93WDdPNWs1?=
 =?utf-8?B?NktlTEpoL3U2M25IMUh3TG5sVW13WFhXbkJtNERSWENyalR4L3JWanAvVkNS?=
 =?utf-8?B?VWpaL2RmYVRYQ1d3S3EyTWdNaWNvK3ZTNTJXRm1Kc1N5ZEdyMEJjS0M3VXYr?=
 =?utf-8?B?QTU0TEl2YTZ1a0ZIeDUwNHpHT203U2dQbGZoZXV6STdxWW41bTMzZWFWRzEr?=
 =?utf-8?B?NUo3cmpjMWV2b3VFNlRwcFhJSTVwS1pld05ZbWtFYW9WL1lmeG0wVlhVUDNZ?=
 =?utf-8?B?SE53SUxkYTM2cUZ0MGJQV2pza0dDcXlOeFFtekZDU3BLdldEbGVSa3lsdnpx?=
 =?utf-8?B?WWVsWkphditZQXlROVZjTk56RXVQSlVFQmREM0t2dGt6dTQ3M3o3VWIvQUgz?=
 =?utf-8?B?S2F4UGdYRjdiRUk5ekMzSTUzZXVsOUtwM3orbUllemtNZDlpa1I4WGJlT1Z4?=
 =?utf-8?B?eHBsUG1oa1ZRRURVSDV4Y3FmR0lrZVJ0K1g1UklWYTl1NW5QMUZJbmJKeXdm?=
 =?utf-8?B?NnlTaGlEY09XVjZjclRKZ1AwZlhGVm1yZ1ljV1p4eW9hdUlQU3BOZmYzRWx1?=
 =?utf-8?B?NFY3ajA0a2dSMG9oVHFMQzdDWmtSRUVFUjhDWGVRY0d2VUNveExhdmpUTzNo?=
 =?utf-8?B?YzdkU0FMbDljaWFPTXVxMlVObUU5SHdlcHVDd2R0cFJRTnhqMnVtSWs3QTZO?=
 =?utf-8?B?K1FvMUlPWFAremJlTjM3N3lXcXREdExFSi85cWZyYXYyak9jNW9pLzhkWVJJ?=
 =?utf-8?B?OXJRLzE2Q3B5WjBqNkluWGpaTXRvVG1ubmVDRlVSSXBiZmROd0F3MFVJR1lF?=
 =?utf-8?B?a2VoZHdaRGV0Z2l1cCtKLzY2TkVDWVlXeFJhcFRyYUhObUxQaU1PRjVoSUFH?=
 =?utf-8?B?cVdjUHY0NzdkZE44a3BXMWxhS0hqSGdjdWoxZDNYRTZQNG90ZzZERDQ0N3Js?=
 =?utf-8?B?bFRRc2s1am9zajlPVW1DTm9lM0dXbHAzSnhMSnBhaXhkZnhBaldBR0FLS0dL?=
 =?utf-8?B?VEpXRGRkZWFCT0V2OFp6OGhiTGZjYkxxR2F3dEttcGJocFNydHh3K0VJM2xV?=
 =?utf-8?B?d2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <72FBD880F25D074BBCDB638622514A9F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c997d0a8-52ec-4572-bb46-08dc3f5f231f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 11:01:42.3236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XCgjvndojMlTNdJjTg95xHj1k6kQ0LO2V1fZnTi92eo+/7aqKAFEWn20izN+QXLNjjOQv91jsaXslneB0ZuG601uYXjH+MPj7OhLyupbM+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
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

T24gRnJpLCAyMDI0LTAzLTA4IGF0IDEyOjExICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWFyIDA4LCAyMDI0IGF0IDA4OjM5OjM2QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjQtMDMtMDcgYXQgMTk6MTUgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFdlZCwgTWFyIDA2LCAyMDI0IGF0IDEwOjM0OjI2
QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gSU8gYnVmZmVyIHdha2Ug
dGltZSB1c2VkIGZvciBJTyB3YWtlIGNhbGN1bGF0aW9uIGlzIGRlcGVuZGVudA0KPiA+ID4gPiBv
bg0KPiA+ID4gPiBwb3J0IGNsb2NrDQo+ID4gPiA+IG9uIEx1bmFyTGFrZSBhbmQgYmV5b25kLiBU
YWtlIHRoaXMgaW50byBhY2NvdW50IGluDQo+ID4gPiA+IGdldF9pb19idWZmZXJfd2FrZV90aW1l
Lg0KPiA+ID4gPiANCj4gPiA+ID4gQnNwZWM6IDY1NDUwDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDkgKysrKysrKystDQo+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGluZGV4IGUxZGYwZWNlOWZh
My4uZTg0MTBlNzcwZGE4IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gQEAgLTExNjAsNiArMTE2MCw5IEBAIHN0YXRp
YyBib29sDQo+ID4gPiA+IF9sbmxfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QNCj4gPiA+ID4g
aW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiDCoCAqIFRoaXMgaXMgbm90IGRpcmVjdGx5IG1l
bnRpb25lZCBpbiBCc3BlYy4gVGhlcmUgYXJlIDUwIHVzIGlvDQo+ID4gPiA+IHdha2UgdGltZSBh
bmQgMzINCj4gPiA+ID4gwqAgKiB1cyBmYXN0IHdha2UgdGltZS4gQ2xlYXJseSBwcmVoYXJnZSBw
dWxzZXMgYXJlIG5vdA0KPiA+ID4gPiAoaW1wcm9wZXJseSkNCj4gPiA+ID4gaW5jbHVkZWQgaW4N
Cj4gPiA+ID4gwqAgKiAzMiB1cyBmYXN0IHdha2UgdGltZS4gNTAgdXMgLSAzMiB1cyA9IDE4IHVz
Lg0KPiA+ID4gPiArICoNCj4gPiA+ID4gKyAqIEZvciBESVNQTEFZX1ZFUiA+PSAyMA0KPiA+ID4g
PiArICogUkJSIDE1dXMsIEhCUjEgMTF1cywgaGlnaGVyIHJhdGVzIDEwdXMNCj4gPiA+ID4gwqAg
Ki8NCj4gPiA+ID4gwqBzdGF0aWMgaW50IGdldF9pb19idWZmZXJfd2FrZV90aW1lKGNvbnN0IHN0
cnVjdA0KPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ICpjcnRjX3N0YXRlKQ0KPiA+
ID4gPiDCoHsNCj4gPiA+ID4gQEAgLTExNjcsOCArMTE3MCwxMiBAQCBzdGF0aWMgaW50IGdldF9p
b19idWZmZXJfd2FrZV90aW1lKGNvbnN0DQo+ID4gPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJ
U1BMQVlfVkVSKGk5MTUpIDwgMTIpDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIDE4Ow0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgMjAgfHwgY3J0Y19zdGF0
ZS0NCj4gPiA+ID4gPnBvcnRfY2xvY2sgPg0KPiA+ID4gPiAyNzAwMDApDQo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDEwOw0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqBlbHNlIGlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID4gMTYyMDAwKQ0KPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDExOw0KPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBlbHNlDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gMTU7DQo+ID4gPiANCj4gPiA+IFRoYXQncyBnZXR0aW5nIHJhdGhlciBtZXNzeS4gSSB0aGlu
ayBoYXZpbmcgc2VwYXJhdGUgZnVuY3Rpb25zDQo+ID4gPiBmb3IgDQo+ID4gPiBza2wgdnMuIHRn
bCB2cy4gbXRsIChhc3N1bWluZyB0aGUgdmVyPT0yMCBpcyBtdGwpIHdvdWxkIGJlDQo+ID4gPiBj
bGVhbmVyLg0KPiA+IA0KPiA+IHZlciA9PSAyMCA9PSBsbmwNCj4gPiB2ZXIgPT0gMTQgPT0gbXRs
DQo+IA0KPiBIbW0uIEkgdGhvdWdodCAxNCB3YXMganVzdCBidW1wZWQgdG8gMjAgYmVjYXVzZSBz
b21lb25lIGRpZG4ndCANCj4gdW5kZXJzdGFuZCB0aGF0IDB4MTQ9PTIwLg0KDQpUaGlzIGlzIGlu
IGludGVsX2Rpc3BsYXlfZGV2aWNlLmM6DQoNCnN0YXRpYyBjb25zdCBzdHJ1Y3Qgew0KCXUxNiB2
ZXI7DQoJdTE2IHJlbDsNCgljb25zdCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mbyAq
ZGlzcGxheTsNCn0gZ21kaWRfZGlzcGxheV9tYXBbXSA9IHsNCgl7IDE0LCAgMCwgJnhlX2xwZHBf
ZGlzcGxheSB9LA0KCXsgMjAsICAwLCAmeGUyX2xwZF9kaXNwbGF5IH0sDQp9Ow0KDQo+IA0KPiA+
IA0KPiA+IFNvIHlvdSBhcmUgdGhpbmtpbmcgZ2V0X2lvX2J1ZmZlcl93YWtlX3RpbWUgd291bGQg
ZG86DQo+ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAy
MCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxubF9nZXRfaW9fYnVmZmVy
X3dha2VfdGltZSgpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihp
OTE1KSA+PSAxMikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGdsX2dldF9p
b19idWZmZXJfd2FrZV90aW1lKCk7DQo+ID4gwqDCoMKgwqDCoMKgwqAgZWxzZQ0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2tsX2dldF9idWZmZXJfd2FrZV90aW1lKCk7DQo+
ID4gDQo+ID4gPw0KPiANCj4gWWVhaC4gUGVyc29uYWxseSBJIHdvdWxkIGFsc28gZHJvcCB0aGUg
ImdldF8iIHBhcnQgZnJvbSB0aGUgZnVuY3Rpb24NCj4gbmFtZXMuIFRoYXQganVzdCBtYWtlcyBt
ZSB0aGluayBpdCdzIGdldHRpbmcgYSByZWZlcmVuY2Ugb3INCj4gc29tZXRoaW5nLg0KDQpEb25l
LiBQbGVhc2UgY2hlY2sgbmV3IHZlcnNpb24uDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiANCg0K
