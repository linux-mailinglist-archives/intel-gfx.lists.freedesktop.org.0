Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +RzaB5yiImoobQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:19:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735AD6473F8
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:19:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=j6zD+xit;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F091210E5A3;
	Fri,  5 Jun 2026 10:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4379B10E5A2;
 Fri,  5 Jun 2026 10:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780654743; x=1812190743;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=K6nUYedBx8Pk5wiDVe8xLXXHTJIgK9C5QVVNENt1zIw=;
 b=j6zD+xitvKgFqjgS1iqCEGIVlizVDWjqBYBe63ngNori85IuShIzlOss
 DIWrxqIWE5Brh9CWXnrKTOz6DRgZXSeRuETdJ18o027uNMxZyWri5mvth
 5q6Gj74fn9ywK6QtHCm/HoifavAHYXHQX6xMkBnHd0kAncwXzBJU7K1Yq
 OtVOlw/f8zOmxQGlsVtXaL6fKma7AOa0GBLWwghazjxvWYFyudG/SdcBJ
 7dsM29YMuwxokdhnA+8mgMGoS7JvujS4a/tLHMW/LqnK2UBwKgoJPfUrl
 KJeTLG8hdESfPXbBoK+Woww0H+YpgmRRGAUHYHRS0ddSTbaaztWcvb7L0 g==;
X-CSE-ConnectionGUID: DLfTGHA1SIS8HCzQoZnkqA==
X-CSE-MsgGUID: tDwVF+KQQiyJ+tttnl1gSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="85377139"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="85377139"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:19:02 -0700
X-CSE-ConnectionGUID: j0wMM6hnSHiLzAD25m+z5g==
X-CSE-MsgGUID: ZSdm7D7/QvungMMYyGbNog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="249916755"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:19:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 03:19:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 03:19:02 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 03:19:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WHsk8fTW74Ky6SZ/5fn0Xj7smdMolsCjhZm/tPP0Cru4knUBIoOPNM6w9gdw920anqcrkgA9vJlq7cQNF9ESJnoC7tSC741wmcdRkx0VM9yGQidhsZcDr6XMBYPYpAd1yEsRHYa+98bbGguLXhUW+2aGzv0gGX6OD4C1VsPBEn2PSVJSzeoe90Hd1CdkiqK46eePF029BNtrfomCurWs+mjkfeTLfhasYA1nVNPo8h6gvEhB36RZtpeKqXTTezmnisv5OeomQelcNYJm9kyYkSGOE2pmuj8wttZ+597Wv7haau1HLq+MBSXwhPKv10bH/mw2o89mEbYfUpWdT8Td9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6nUYedBx8Pk5wiDVe8xLXXHTJIgK9C5QVVNENt1zIw=;
 b=OmugQAG/qBUaVpa02j24Pv7EH8e5+/IKZOFVsRUJvlNCB2gDH6wiwieiU+OC/BRWWrmIPau8cTjylvc0l73eJwNR7pzSnaWtVUM3iH7gurtDXj3mlpriZQfwNzA631ibl/sMrknKINdyJKFauc2gEReogbSscKHuNhCn3yQiVUMSkPIQqg8imIzBdH0XFRMiFjZcMLgmGQ2sC+LviA/sSKzNNNDpGxmEzTQGQUvLuioImwRulDBeXKRgUC9vruIgPt59yKS3cwvvRtO2oofeevnTYFChYWNxJb2dOQkvgfIfBSzqDkYYyxPFU1OVIqugtOeeowXf+bNOgWGcLGttIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL1PR11MB5287.namprd11.prod.outlook.com
 (2603:10b6:208:31b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 10:18:54 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 10:18:53 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 03/22] drm/i915/dp_link_training: Flush commits in
 debugfs entries
Thread-Topic: [PATCH v2 03/22] drm/i915/dp_link_training: Flush commits in
 debugfs entries
Thread-Index: AQHc8aqSnBtl+/GHq0y0WcvLyKQxTrYvxfCw
Date: Fri, 5 Jun 2026 10:18:53 +0000
Message-ID: <DS4PPF69154114FE9999C74B289687F4128EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-4-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL1PR11MB5287:EE_
x-ms-office365-filtering-correlation-id: f6378569-d735-40a0-a1a9-08dec2ebd883
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: tw/f7aet+GF7HGZ4ktDD87wpB7hxOh9UDrXzffyZHPynDB6aZkW8VOB/teUbty4SACH29n5gauwG7/GtEA7VxuqLufyZCjrJiHKKpmVrJkHS3O1B8bBjcBhczj1CCvojOADuJfgizzX6UTW1Ztk0gh7resEmHSYRyYKBhF7XnwkxjRz3DNIcmS1McuxS2D7+mzPhdAPthsek87t5TH3RW1tOCHBWIkF5vpS6QfjQQz7XozA2SAK1xdDlnsS/29hfg/ZIi8PkB+2dDF0PP/2OeABDrrOSOQVHrUwcWL8qUW7AMMZswgok4fFHG7QukukdC3dcrnjkGLlTpaLS81yBEokddtPVzbOokSTwnAwFY4e/c5s5jtQk3xtOLV9oycy4q2dXYA4AHlfqy/T/jc3ddUsboUqKySEIW4ANKdoAs9NK1GDowJdx80xFWeohAAUptZQZmK7A3Gh2CxHy6F4H48o7YGm16djlNb5/Lo4dJ6QIw0WFNipddV1N+HWa7b852dlOWL4r5KKnDbHL9fIjmwwc4AbULydlxmsdlgqg2ItOw/PEXGQrE0kKDVUQoYj8BlK58KS4yrjT4uICRfD+kW8eDMBsXyEJNdEnwxUPki/syIUwy5keCGosV1xBTmF8OcYp5oW1XjqTlVevfWsEZqylkPDeb4KK5Qfnw/pd7sBBz+sXGTsGhGhWzvvbAttkxy7vXNzepiN0zs0E9SleGnSdvuDsA5Abaig4VxTX0jfDgSVvY4x+TdHe/7ujXT7O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTdOK0N4Y28xNlQyd2VQN0lrc2c2UnpkY0xNbWlWTWJkdDhyRUFQa1ljWTQ5?=
 =?utf-8?B?dHhERllsVnpnZzBaanNTMEowcGhuZmdVc3I4UExIK01WZ1hDTWwxemFoUFM2?=
 =?utf-8?B?WWhSV1oxc1VXOUdwN0Z5b3psZjdiQSs0RDV4RWtSb2dKeWJSWGc3c0dRV0M0?=
 =?utf-8?B?K0Vib1g3RHRQU3g2WFZ4bVk2R2VsNDIxcFZNNGlBcGNlbUoyeHhjVmI0NDJt?=
 =?utf-8?B?TXBRcE0vbkQ3azJrdVBNbHpacC9CSzhwWWtDWFI4NmxxeCs2NkJZWFh4Z1Bt?=
 =?utf-8?B?aTk0YzBRM0JTUFBiMzRKS094b08yTzZvaDBNVEcwZGE3YW9VSUhSNldmV0pO?=
 =?utf-8?B?eE82OVBQTlhHSEc3TktzNUNqN1lneExMZGVaZ0ZsWVBwZGFGSkF6eHY4V3RM?=
 =?utf-8?B?aW9EcEIraXEyVS9jQ3E5blppWlJBSUZLeEhIMFMzaFUvbTFXV2QwOVdsUURN?=
 =?utf-8?B?ODNLTmdwVU9QME5XQkpTdVQwditrZXFENEVPU0tUMGYxRGlxMGxLc25EZnhV?=
 =?utf-8?B?dU1vVkQ5TWNKZlVqQjBYWWdwQmo0S2RiUUhzaXp2QlRIK0k0NFhZMzkrNmZn?=
 =?utf-8?B?YUFWWGwwUEdqTmxpaUNVMnBCcXF0aE4raCsyL0IvZ3dqV1FtL0NuWkhCWkk1?=
 =?utf-8?B?SlI0WG9welEveUw1QXhpbFA5MUlURjVPUnozb2Vqc01DQVBuMHlqdklTWXhI?=
 =?utf-8?B?SzhQMGxoRzdVNUZ2L3JQdW9HWGpDNElnVjNjYmZBMmFqUVZOa1BlUzF4Mm92?=
 =?utf-8?B?bzVlQnBlL2xjeTJUQ3BKYXRtVjVYMGsvem1XS2MrMndIS0NOWlIvUWdiYXFh?=
 =?utf-8?B?aXR5Q1JyQjRNVll6RTZXUGVsQ2RrUjFyc3VaZjZZbGZZRVVlbTloQ2lpT3pB?=
 =?utf-8?B?RHkwTTlEWDEyQitMV2t5N3NSMnNtdTZBTEZ1OVVRWEh2TzJzTWtVTEUwUnlX?=
 =?utf-8?B?ckdUYUViVDREYzlvcEdWblRKbFZsM1c4RG5iMUx4QnJiUzRmU09KaEtPSW12?=
 =?utf-8?B?QkxRWjNGQ2l2VXgwWjVPODA3QmVRR1pualYvZ0ZGRlVUNjh3dnRWQmpVbDdw?=
 =?utf-8?B?R1ZKMFl2K2lPSFIxbVo5MGVuNnFpa2xnR0d2d0ZqQmNHeGZKMUMwWTQxb1NL?=
 =?utf-8?B?K1VXVjJ0OXZiQVhTa3ZpSWdPWGlmcWVBekZMN2xzckNmUFpqTTcxMnJTajZN?=
 =?utf-8?B?RFZBU2k3ZlRtY2QxckExa3J4dTRNbmdCU0FRNk5nQlRHdFBlSzMrUk9DaTd4?=
 =?utf-8?B?RXhpdy90WDVKMUlORmRVUEl5cUNqWDlQc1pzVEpCL3dNelFyb0NRMFVucFlS?=
 =?utf-8?B?MURLYjc5WCtsMjZQVnBHR1QreitOcVpaTkdCd2dRSUloMWN4aDR1VXZRRXJw?=
 =?utf-8?B?dUV2YnMyTm9icy8zd1dDZkI4RDAxYnNQbWhvTDIxV3ZuLzJpV1k4NysyS2d5?=
 =?utf-8?B?M3JLZkVMWnIwckJBblpNaGV0RmZWdkZCc2hrSVdiTnhhTzJhaVJXVmx0Q0NQ?=
 =?utf-8?B?TUFBUm10Z3ltRS9KdmF4S0g2QTRBZE1hdmNnM0F1cDM3K1FTN2NCT3AxYzZ2?=
 =?utf-8?B?c0xHQ2FxemVieWRrS28xbTZLbWVvZklBRlNnaXRvRHk2a29ydkFDRWc4Tmpu?=
 =?utf-8?B?aTZOdmxkYXRzdkpaT2oybG9kd01JcGRCVmU5R1hiVGh5eFBXYURwT1RIOHR4?=
 =?utf-8?B?ZDZYSFNmVGhGVWZHY3NZb0s1ZFF0bW9MRFdpOWZFcDRmUXdYOE92WVJrUnhQ?=
 =?utf-8?B?NXUxZEdrd2JFZnF0SFFLYUNleEpwOGFXUUVmZVJjZVRtOWZUOUpCUWF0UEY0?=
 =?utf-8?B?eVBsWWhzd2xGNElyaDVqZThJZlFBeXA5ZkVBUkVlOE9CWUVnK2tpeE9YMThm?=
 =?utf-8?B?WkdTQVYvMEN6ZGhZN1VKbXdOSmo5ZFRZYStiK0JxZFVLL2JCb1BtcnBHajg0?=
 =?utf-8?B?S0JjSFhpeWdjdWZGdDNRa2prUlFtRkYrNFh5cHFMRW5Eelh6ZVNnSktQWEhq?=
 =?utf-8?B?amRpRy8rT3pyVTJwT203NklQOXlrZVdYSm1QT0RwMG83dlI4QkZ0NEZ5L3Vs?=
 =?utf-8?B?ZWtYbnhmZnRCSEdKUzZka05pYWJCaXI5cGtuNFBDRGdhV3ZXbGsrUndRMGNP?=
 =?utf-8?B?ZWE2di9oYlNzQWZMa2x6K2wrNXIza2Y2MC9zaXZNUWhQSkNQZGtlZTdDYStS?=
 =?utf-8?B?a2cxZU5XWmhiM0NOa2xESDJKb1Vva1A1Zm5DNDllcTc5UFlkNFd1MWI4MGEx?=
 =?utf-8?B?NmhMbkNTdzBGZGNpZ1laQUVsMGN2eTcyVjNFa29MSmZYcEx6UG9VMkVzTGZY?=
 =?utf-8?Q?UOtbY8StS5UjTQgMGJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OWwFNizDkM6urNHHk3/S5mqWSfP3MaWNFOcxLqQ0m+z9EieJJQNtM1Crvri3CezdntvlQ83QYGoddZ4m9p7FuJumQEK9t7w99RwAsxg9DKowo/jOvHLZTHcM87eD2BZ9ISdobKk6ImjnWEiHb9/PVmJ5I+7Y9JcRKD1uOn39slTTXeQCk+aGoJBOLdgSi3HZ3bXW+k8EgcbI1GDM+Bx7WMTitRSyRTQWkgE1GxWaBEhUBe9BKh0YuNQQQXIKiOgFPumrivmRYc+OPxqfwJfkA7TcTKQFFzui2s8z7qtNOQU2sML2NPRZabJXWQtl1ZMwSlb/LSN/fIqdSSs84hfKeg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6378569-d735-40a0-a1a9-08dec2ebd883
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 10:18:53.8466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pU5dEp07vB3bu9T/Gg9pp9tjGvIht41cpoA8frZL4gVwDUSHF75SysCB0SWGPwEc5D8dPmVNAdEVF43Run9FfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5287
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPF69154114F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 735AD6473F8

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAwMy8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogRmx1c2ggY29tbWl0
cyBpbiBkZWJ1Z2ZzIGVudHJpZXMNCj4gDQo+IEZsdXNoIHBlbmRpbmcgY29ubmVjdG9yIGNvbW1p
dHMgYmVmb3JlIGFjY2Vzc2luZyB0aGUgbGluayB0cmFpbmluZyBzdGF0ZSBmcm9tIGRlYnVnZnMu
IEFjY2VzcyB0byBjb25uZWN0b3Igc3RhdGUgLSBsaWtlIHRoZSBsaW5rDQo+IHRyYWluaW5nIHN0
YXRlIC0gdGhhdCBtYXkgYmUgdXBkYXRlZCBmcm9tIGFuIGFzeW5jaHJvbm91cyBjb21taXQgdGFp
bCBtdXN0IGhvbGQgdGhlIGNvbm5lY3Rpb24gbXV0ZXggYW5kIHdhaXQgZm9yIHRoZSB0YWlsIHRv
DQo+IGNvbXBsZXRlLiBUaGUgY29tbWl0IHRhaWwgY2Fubm90IGhvbGQgdGhlIGNvbm5lY3Rpb24g
bXV0ZXgsIHNvIGFsbCBvdGhlciBhY2Nlc3NvcnMgbXVzdCB3YWl0IGZvciBpdCBleHBsaWNpdGx5
Lg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8IDIz
ICsrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCsp
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRleCBlYjc1ODE5YTg1YzA1Li5lZWE3NWE3NDRiNWJhIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYw0KPiBAQCAtMTg4Miw4ICsxODgyLDExIEBAIHN0YXRpYyBpbnQgaTkx
NV9kcF9mb3JjZV9saW5rX3JhdGVfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEp
DQo+ICAJaWYgKGVycikNCj4gIAkJcmV0dXJuIGVycjsNCj4gDQo+ICsJaW50ZWxfZHBfZmx1c2hf
Y29ubmVjdG9yX2NvbW1pdHMoY29ubmVjdG9yKTsNCj4gKw0KPiAgCWlmIChpbnRlbF9kcC0+bGlu
ay5hY3RpdmUpDQo+ICAJCWN1cnJlbnRfcmF0ZSA9IGludGVsX2RwLT5saW5rX3JhdGU7DQo+ICsN
Cj4gIAlmb3JjZV9yYXRlID0gaW50ZWxfZHAtPmxpbmsuZm9yY2VfcmF0ZTsNCj4gDQo+ICAJZHJt
X21vZGVzZXRfdW5sb2NrKCZkaXNwbGF5LT5kcm0tPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0
ZXgpOw0KPiBAQCAtMTk1NSw2ICsxOTU4LDggQEAgc3RhdGljIHNzaXplX3QgaTkxNV9kcF9mb3Jj
ZV9saW5rX3JhdGVfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsDQo+ICAJaWYgKGVycikNCj4gIAkJ
cmV0dXJuIGVycjsNCj4gDQo+ICsJaW50ZWxfZHBfZmx1c2hfY29ubmVjdG9yX2NvbW1pdHMoY29u
bmVjdG9yKTsNCj4gKw0KPiAgCWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zKGludGVsX2RwKTsN
Cj4gIAlpbnRlbF9kcC0+bGluay5mb3JjZV9yYXRlID0gcmF0ZTsNCj4gDQo+IEBAIC0xOTgwLDYg
KzE5ODUsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHBfZm9yY2VfbGFuZV9jb3VudF9zaG93KHN0cnVj
dCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkNCj4gIAlpZiAoZXJyKQ0KPiAgCQlyZXR1cm4gZXJy
Ow0KPiANCj4gKwlpbnRlbF9kcF9mbHVzaF9jb25uZWN0b3JfY29tbWl0cyhjb25uZWN0b3IpOw0K
PiArDQo+ICAJaWYgKGludGVsX2RwLT5saW5rLmFjdGl2ZSkNCj4gIAkJY3VycmVudF9sYW5lX2Nv
dW50ID0gaW50ZWxfZHAtPmxhbmVfY291bnQ7DQo+ICAJZm9yY2VfbGFuZV9jb3VudCA9IGludGVs
X2RwLT5saW5rLmZvcmNlX2xhbmVfY291bnQ7IEBAIC0yMDU3LDYgKzIwNjQsOCBAQCBzdGF0aWMg
c3NpemVfdA0KPiBpOTE1X2RwX2ZvcmNlX2xhbmVfY291bnRfd3JpdGUoc3RydWN0IGZpbGUgKmZp
bGUsDQo+ICAJaWYgKGVycikNCj4gIAkJcmV0dXJuIGVycjsNCj4gDQo+ICsJaW50ZWxfZHBfZmx1
c2hfY29ubmVjdG9yX2NvbW1pdHMoY29ubmVjdG9yKTsNCj4gKw0KPiAgCWludGVsX2RwX3Jlc2V0
X2xpbmtfcGFyYW1zKGludGVsX2RwKTsNCj4gIAlpbnRlbF9kcC0+bGluay5mb3JjZV9sYW5lX2Nv
dW50ID0gbGFuZV9jb3VudDsNCj4gDQo+IEBAIC0yMDc5LDYgKzIwODgsOCBAQCBzdGF0aWMgaW50
IGk5MTVfZHBfbWF4X2xpbmtfcmF0ZV9zaG93KHZvaWQgKmRhdGEsIHU2NCAqdmFsKQ0KPiAgCWlm
IChlcnIpDQo+ICAJCXJldHVybiBlcnI7DQo+IA0KPiArCWludGVsX2RwX2ZsdXNoX2Nvbm5lY3Rv
cl9jb21taXRzKGNvbm5lY3Rvcik7DQo+ICsNCj4gIAkqdmFsID0gaW50ZWxfZHAtPmxpbmsubWF4
X3JhdGU7DQo+IA0KPiAgCWRybV9tb2Rlc2V0X3VubG9jaygmZGlzcGxheS0+ZHJtLT5tb2RlX2Nv
bmZpZy5jb25uZWN0aW9uX211dGV4KTsNCj4gQEAgLTIwOTgsNiArMjEwOSw4IEBAIHN0YXRpYyBp
bnQgaTkxNV9kcF9tYXhfbGFuZV9jb3VudF9zaG93KHZvaWQgKmRhdGEsIHU2NCAqdmFsKQ0KPiAg
CWlmIChlcnIpDQo+ICAJCXJldHVybiBlcnI7DQo+IA0KPiArCWludGVsX2RwX2ZsdXNoX2Nvbm5l
Y3Rvcl9jb21taXRzKGNvbm5lY3Rvcik7DQo+ICsNCj4gIAkqdmFsID0gaW50ZWxfZHAtPmxpbmsu
bWF4X2xhbmVfY291bnQ7DQo+IA0KPiAgCWRybV9tb2Rlc2V0X3VubG9jaygmZGlzcGxheS0+ZHJt
LT5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4KTsNCj4gQEAgLTIxMTcsNiArMjEzMCw4IEBA
IHN0YXRpYyBpbnQgaTkxNV9kcF9mb3JjZV9saW5rX3RyYWluaW5nX2ZhaWx1cmVfc2hvdyh2b2lk
ICpkYXRhLCB1NjQgKnZhbCkNCj4gIAlpZiAoZXJyKQ0KPiAgCQlyZXR1cm4gZXJyOw0KPiANCj4g
KwlpbnRlbF9kcF9mbHVzaF9jb25uZWN0b3JfY29tbWl0cyhjb25uZWN0b3IpOw0KPiArDQo+ICAJ
KnZhbCA9IGludGVsX2RwLT5saW5rLmZvcmNlX3RyYWluX2ZhaWx1cmU7DQo+IA0KPiAgCWRybV9t
b2Rlc2V0X3VubG9jaygmZGlzcGxheS0+ZHJtLT5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4
KTsNCj4gQEAgLTIxMzgsNiArMjE1Myw4IEBAIHN0YXRpYyBpbnQgaTkxNV9kcF9mb3JjZV9saW5r
X3RyYWluaW5nX2ZhaWx1cmVfd3JpdGUodm9pZCAqZGF0YSwgdTY0IHZhbCkNCj4gIAlpZiAoZXJy
KQ0KPiAgCQlyZXR1cm4gZXJyOw0KPiANCj4gKwlpbnRlbF9kcF9mbHVzaF9jb25uZWN0b3JfY29t
bWl0cyhjb25uZWN0b3IpOw0KPiArDQo+ICAJaW50ZWxfZHAtPmxpbmsuZm9yY2VfdHJhaW5fZmFp
bHVyZSA9IHZhbDsNCj4gDQo+ICAJZHJtX21vZGVzZXRfdW5sb2NrKCZkaXNwbGF5LT5kcm0tPm1v
ZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpOw0KPiBAQCAtMjE1OSw2ICsyMTc2LDggQEAgc3Rh
dGljIGludCBpOTE1X2RwX2ZvcmNlX2xpbmtfcmV0cmFpbl9zaG93KHZvaWQgKmRhdGEsIHU2NCAq
dmFsKQ0KPiAgCWlmIChlcnIpDQo+ICAJCXJldHVybiBlcnI7DQo+IA0KPiArCWludGVsX2RwX2Zs
dXNoX2Nvbm5lY3Rvcl9jb21taXRzKGNvbm5lY3Rvcik7DQo+ICsNCj4gIAkqdmFsID0gaW50ZWxf
ZHAtPmxpbmsuZm9yY2VfcmV0cmFpbjsNCj4gDQo+ICAJZHJtX21vZGVzZXRfdW5sb2NrKCZkaXNw
bGF5LT5kcm0tPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpOw0KPiBAQCAtMjE3Nyw2ICsy
MTk2LDggQEAgc3RhdGljIGludCBpOTE1X2RwX2ZvcmNlX2xpbmtfcmV0cmFpbl93cml0ZSh2b2lk
ICpkYXRhLCB1NjQgdmFsKQ0KPiAgCWlmIChlcnIpDQo+ICAJCXJldHVybiBlcnI7DQo+IA0KPiAr
CWludGVsX2RwX2ZsdXNoX2Nvbm5lY3Rvcl9jb21taXRzKGNvbm5lY3Rvcik7DQo+ICsNCj4gIAlp
bnRlbF9kcC0+bGluay5mb3JjZV9yZXRyYWluID0gdmFsOw0KPiANCj4gIAlkcm1fbW9kZXNldF91
bmxvY2soJmRpc3BsYXktPmRybS0+bW9kZV9jb25maWcuY29ubmVjdGlvbl9tdXRleCk7DQo+IEBA
IC0yMjAwLDYgKzIyMjEsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHBfbGlua19yZXRyYWluX2Rpc2Fi
bGVkX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiAgCWlmIChlcnIpDQo+
ICAJCXJldHVybiBlcnI7DQo+IA0KPiArCWludGVsX2RwX2ZsdXNoX2Nvbm5lY3Rvcl9jb21taXRz
KGNvbm5lY3Rvcik7DQo+ICsNCj4gIAlzZXFfcHJpbnRmKG0sICIlc1xuIiwgc3RyX3llc19ubyhp
bnRlbF9kcC0+bGluay5yZXRyYWluX2Rpc2FibGVkKSk7DQo+IA0KPiAgCWRybV9tb2Rlc2V0X3Vu
bG9jaygmZGlzcGxheS0+ZHJtLT5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4KTsNCj4gLS0N
Cj4gMi40OS4xDQoNCg==
