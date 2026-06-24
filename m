Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9fiuLknSO2r5dggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:49:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA776BE452
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:49:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VaSovZTT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB53310EF00;
	Wed, 24 Jun 2026 12:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F5310EEF9;
 Wed, 24 Jun 2026 12:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782305350; x=1813841350;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fmPB3q19E4gNG6YZMN9HxnJs7BiqJ5DXBQHXgK91OMg=;
 b=VaSovZTTw6OgI828nqvc3EFrcyVl/RxOyVbFXHVWiJHl9daTRaBnOFMq
 qIb1pnfBVv0096c7nROptHSh8mp6EAv7dg+ytjDDw1tnQO0drMZgbiUf7
 k01Ffix41kEcVeiAPpyZAckas2VrqLGYZ2GDm1g58IZFklKM/8tt1g3oX
 0Vj5Od+UxVhHOZcs9jQfyoARchw5lr4FsMZCtak8YlPXuNOWRP8ccXfQk
 5eboVfKkhsfQ3FUcgM7Yu/oiy1Qq7tflVegPiDDq4OXH4XjH+BnFyLzyV
 NOms0NwYbWEezs1+VUCy+w076KNadbG5ciYR83a/GDjYDexFdRkgC9Y9O A==;
X-CSE-ConnectionGUID: wWiTav72Ttylsgr8TLwmOQ==
X-CSE-MsgGUID: ciks3qUYR2qZiWKxXFDDYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="105857535"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="105857535"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:49:10 -0700
X-CSE-ConnectionGUID: koCmAcZnTiCU/LEhOKuQmA==
X-CSE-MsgGUID: XbmXYVh2SdqjBfyqPq820g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="249675794"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:49:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:49:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 05:49:08 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:49:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ihk9lM4XP7l6i/6cyAHYFLQ30hOFUglLC8SJ+Cxo4s/RvNaPOMoqZ54IoUhpHJi2WVDhaL2MnUvBo2g2cI9tW4QNDlRpP945Cg2ZU4RYEzIZZe1zwQT1cEwVQ1gfbLNiCH8x3dtr966jbJgPSEPhy2ZJ7WS5rQU4H6+0c7Wy7w9cmj5VSz/RqI94DzdaI506CxGp9/iKnRF5tJquNNKuYKHAMcMv0vXvmzlRJz6OCZ8PBTJsCSjIiqcI4ulffM5PC660OSPjI5Te96xx1nzXKimbSYY1xMHdpz1ucB0aDQj14IC9Fn/kUtHoJZ3KzWsG9eLkn92dt2H/l2wlV81whA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmPB3q19E4gNG6YZMN9HxnJs7BiqJ5DXBQHXgK91OMg=;
 b=EV4DFg4AGmNzO52GSzAlYc6Xv4+I/Z9wpTNXx7SmcU3ZQdKpJm8znZ4bOGBLL52spMcQvbSLXD85KoNjNVMVoyVZDC3oGT9SqXcQt3aylk2PnZza77livWij0XaIef8uGSZneXvNaGBj1Pj6QFXDh/+c57iSelRddQ0bUSvi+PISrzqBzkVrbg4fRx5K2jWezy6eVQDtnZE6+BevnVyvvacWpTAh5F2rRCuQo5aKcVURJcM1qM4uOX+PfA+ZX337geeOBy2nPDPg6zjZzHRutcfgOD4MWjLwMWscL18ReItE6cm5sm2sStNHD6ipK5AF4CtR6KbqHvJ+2xbQ+zi74Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DSWPR11MB9691.namprd11.prod.outlook.com
 (2603:10b6:8:355::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 12:49:07 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 12:49:06 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 23/28] drm/i915/dp_link_caps: Add helper to reset max
 link limits
Thread-Topic: [PATCH v2 23/28] drm/i915/dp_link_caps: Add helper to reset max
 link limits
Thread-Index: AQHc/c18BKvPWSqZ/0mIp867wVFUAbZNtACg
Date: Wed, 24 Jun 2026 12:49:06 +0000
Message-ID: <DS4PPF69154114FF2C8AE3B2FB3D3ECE229EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-24-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-24-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DSWPR11MB9691:EE_
x-ms-office365-filtering-correlation-id: cb629bf0-6b05-4455-e40f-08ded1eefa84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: Uxz4jFW1ONa09nqutwMHnBHFeNlm3uHJkN+kW8tyVdmaJ81Gy0tKUC0BvV8v0wM6gp6IsRpHDvBCk1xA70XOQgYCq+opwMuFm28Fm1gEWwxdBUFe5mYkoJasri+XOLiK507M3onJPmqtjegjgf1sWCgACxV7K18bZPzvyCsMx0LvtUn/u7pv9IVRJ6w5QsWj7C/wQ4YFDkVymdWP7AWSd+zriSYJVe3KCsBakEyKgIXa6qyXABMq6XWbWy5Bq/afdnRhoaoSkqTU7tbkAPmCjzU+nIKbiCdhD3jI/0CISC0eHpxJzPeP7HvIeJyvMK+viQe32oD7pbWu0HDViUGfHcM7gAFiWPY85bocERMxCaTdA2NMARCVQ/Cq3mcJR+AurbNIzqaZqNlDE75HfnP89+3Z460R+NKWM6VzGd/jEn/Whlz71Bb9GR2uigpi2XogH95kQ10Ep5X/N4RdLeeeaudPjKiIzDWvDMrxuV6NRRGsvEKWUt2qD4ViujzzuAzlWQbnKt/cUIeCM36wSAO5zRChr1ZGy+DvJoOm+q3FpjJRj/RBpsZadtkaAQIuyEnawJJF9eDGHAciWP8MyCoscIXNsacqltkI6Xokk4W5HhY+r1bjCykVM3tR32scHWTaLkipFIwGXDFynyKUcghsZv1JJcL+Tn/pSVPAUS6a4HuTu173L/Qg8uatUuD7DW6bTr0VzDvedFhydGcKYTssgQAEwqLn7SVNyL+AYoVC8TM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVFxcDVJdGZOZm01bUhDT0NHQm9FVG9ycC9XOHVpa2hPd1FadWI5REh4ZzJs?=
 =?utf-8?B?M3NtSVk4YVZTb2FKcTh4Mzh1TVhHRldTMk9HaFl3bnh6Y3htOFJ0c0N1Zmor?=
 =?utf-8?B?K0cwTFl4aE9sZitUREo1bDdqMlp6N2h3U09pQXhKcjFaTzBkcGowOWVuelZw?=
 =?utf-8?B?RG1JdFIzNXhNNkJ3ZWdWVG9qV1RQa096ZFRDOUE2ZG9JZWZTM1JrU041U2Zw?=
 =?utf-8?B?UFBaWHlQaUxxdE40a0gxV1FlaGZRckUrS1BhdnpBM2R3SFlkem9icDUyL0ND?=
 =?utf-8?B?RVZUSXZ3RCtLdjdMNU0rc0E3SXRqWnpVT2Yvb2lQcUVSZmpLQ2lwSUdXTVlj?=
 =?utf-8?B?QUNSandNcllsaVg0aWsyNitiYlM5eWJieVJJemNwTTdpQmFyUmRzK0tuN3hV?=
 =?utf-8?B?UmQ4QU5UclAwOThka21PN2RuOHRvdFNZc1M3RGxENjNSRTJqdzMydHFYTWVn?=
 =?utf-8?B?TnBER0RZb0xianQrNnlkYWlIRWcxekFIYjgzM1k4ejFyVEdTZWhtc3RlVjFh?=
 =?utf-8?B?QmRYZVNTWnB2bXVUdTlncHJXZHkyWDVtOXlKL1V5WGdYcnkyaU9Zc1duakYw?=
 =?utf-8?B?N1FBaHRoZVA0MDFQZ1g2T09ZNmtOSVpQWjJGTUxRRFNaNWpWRit6Qk94enhx?=
 =?utf-8?B?MVQvS1dKWnd3ejY1TzJwVUg0dFRJQ083Ky94TzJLbFhQRnh0RnVlMmlXWDdY?=
 =?utf-8?B?dHFncE1jZ0x0T1pmelQ1Y1FMU2J5THBpYm5sckJhTlAybGpRRk9BZFp6bmxt?=
 =?utf-8?B?UWRsOGJtVmllY1NYYnhkM2JjNFV4d2dzVHNOR0RPOXJDZzhkN0hxWWZiQnAv?=
 =?utf-8?B?RC9HaDNuRXg2M1F5aTlMRTZjQWRCOUdZVHAybEpyaTYyYlRxVkNSVFd4Qk5y?=
 =?utf-8?B?ZXFIWWlMWW5QazJwaVpxWmg0NWQvNTdiZ3AvK0lYS2p3RXBocEhpZSs5YjBR?=
 =?utf-8?B?Ry9RTU90TG1rZ3lmWjQwQm1DWC9MNThCQnkzdlQ2Mmw1UXFLQSs1Q0FBZlls?=
 =?utf-8?B?a1lFdlNUTG83czBYaHZPd3hwSE1rbEROL1ZKM1RmNnFmNVI5eERMQ0xZMi93?=
 =?utf-8?B?SU1iaWMzNWN0dENCbUJDYnpQTjNmazVSeWhvUW9sbG9yNkttQ05jWWlkNDBH?=
 =?utf-8?B?c0FWcERLRGxnbUVHaURvanR4NUdmS0NkK3gvTlJtcnE3TEt5NFRJbWJJREhO?=
 =?utf-8?B?c3JUNTVsRU1HOUJsVngxbndNN2lFTW1sSzFZS2wxV0VGektzMkJIWGVNTElJ?=
 =?utf-8?B?T1R2bHRvKzV0dGxWa2o1eEJwUW43K1BNUmNzeDZmbzJ6SVQxVXRacDNKNXYv?=
 =?utf-8?B?eVBUQUMrQVR1WmlKZGVpY05zNTI2NVZXSWFmemo2WWtYbGp5WFc1eDg4MW5M?=
 =?utf-8?B?OEhXWW5xdWY5TEZrUkdkdXQ2dEZVZWdUY2h6TVFGTHVDOUFSOHI5aS9PS2tS?=
 =?utf-8?B?cmlPZExuMUhvUmZ4eFUyUXl3WjBBekkvdTNFRjltSld0R3I3dXVrczZRbzE4?=
 =?utf-8?B?a2NNKzZQa0kxMFgyNHZrZmE1QlMwbDJpTzZEUEliQmMweHQzMUpha2lSSmNL?=
 =?utf-8?B?d0VzTGx2eUtzdTZrNEY4RXFvTllWVHVQZDJkdGVkaDRJTzQzaXNINHFMOXB5?=
 =?utf-8?B?ZWJWY2hrcDg0bU43QVliNTMwaERKMUpZcUlsVXhiNXRHWEZ1NDJCaDFCeTEz?=
 =?utf-8?B?M0IwdFMwTVBhbXVKOFh1Q0JRVGZoYnc2TCsvdmgvOG1NRzlpbzdXYTRMOUxv?=
 =?utf-8?B?VXlYSWhxSUNMcXpRSzdwd0VlNnAzQlpXaU1QWlpTTUNtQ0JFbzhnRFoxUWQv?=
 =?utf-8?B?YTI3bFpYZmQ3K3BvNDZ6LzBIbmtsR2VTNTFkV0JJUWR2dmpkRGY3dk9JSDA0?=
 =?utf-8?B?RkFyamdHaTIzM21tRVE5dkh5MStFNVFxVnRUK1VybEROSmtaVnMrN1hWTVJM?=
 =?utf-8?B?Z0pPMzBDaUM2d2IyMis2ZTBVUnBTQVUrbHVVa1l0Z2FzRmJieXJFaGJVTkpD?=
 =?utf-8?B?RUFhMjlKSEdDMVVVblVDRkliOXg2aTZ2ZUc5ZGZmRFJhN1hQSGl5QUlDSmpJ?=
 =?utf-8?B?Wmo0bnl1SnlDM3JjbjAwNkRpYUNZVExTenhwSzNuTU9GSW9KWWVCVDhyNWFi?=
 =?utf-8?B?ZnZSaHpyaXBXOHNEMmQ3SFRFYUR3Y0xpcmJ6eFMyUUR1dkRZVyttZmhCZis3?=
 =?utf-8?B?SloxRWZQRFhjTjlhbW1lV1pieG93NXh1NjVTaklWbkhnZkhGN3BXaWpYdmpL?=
 =?utf-8?B?Y0VMdkN3RDlVeGQ1aUFTbnBIT2xhMjRTZHY0emhtSnI1ZWdKUlRCZmUxcExG?=
 =?utf-8?Q?j2nJMgLQCzdkz8176v?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CuD12eg5aq5lFxnQveppGNkEqjLdNIzYqEGZlfHIzun/SlFh1RL4KLLEs5+GgCcEozNjlG1lDtArF/gnmRV4wKrWcMWQnsKteXHMcPRmVmOrpKSzzlLJ7UDwPejIhTcOnKhZIPMGaFRcVV084eeNEN9byeSwRAcLjM1/eXxdPO+fToqc4JRKx7GVNt4k1RpEOYBZuNI1ivdc46jMU/EVZ1y29AJbZ1xhJjPIHbiyCk1BhvjLe3qKZcFwQDb408EqJzWyib2j/TkVfkEAjh/fHZeAWeQx6YOHjh/dihb9BxbkHzQWKrf66hUnb2Nw1cUAdmglfSRTp5GcALywIqHOzQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb629bf0-6b05-4455-e40f-08ded1eefa84
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 12:49:06.8542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rIGvzVM5nBBG03im+OZMcufIfE+5a3qoOUfYgG823d96Ww73+ud5BRVZyhmqRqN/o4SAJo2k/NtqNt2JMk55cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9691
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
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPF69154114F.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: 4EA776BE452

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDIzLzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IEFkZCBoZWxwZXIgdG8g
cmVzZXQgbWF4IGxpbmsgbGltaXRzDQo+IA0KPiBBZGQgYSBoZWxwZXIgdG8gcmVzZXQgdGhlIGxp
bmtfY2Fwczo6bWF4X2xpbWl0cyBtYXggbGluayBsaW1pdHMgdG8gdGhlDQo+IG1heGltdW0gY29t
bW9uIHN1cHBvcnRlZCByYXRlIGFuZCBsYW5lIGNvdW50Lg0KPiANCj4gVGhpcyBpcyBuZWVkZWQg
YnkgYSBmb2xsb3ctdXAgY2hhbmdlIGluIHRoZSBsaW5rIHRyYWluaW5nIGZhbGxiYWNrIGNvZGUs
DQo+IHdoaWNoIHRlbXBvcmFyaWx5IHJlc2V0cyBtYXhfbGltaXRzIGJlZm9yZSBzZWFyY2hpbmcg
Zm9yIGEgZmFsbGJhY2sNCj4gY29uZmlndXJhdGlvbi4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgfCAyMiArKysrKysrKysrKysrKysrKysrDQo+ICAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmggfCAgMSArDQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBpbmRleCBlNTY4ZjAw
NzIwZDMxLi5hZTEwMjAwYmRkOTM0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gQEAgLTE2MCw2ICsxNjAsMTYgQEAg
c3RhdGljIHZvaWQgc2V0X21heF9saW5rX2xpbWl0c19ub191cGRhdGUoc3RydWN0IGludGVsX2Rw
X2xpbmtfY2FwcyAqbGlua19jYXBzLA0KPiAgCWludGVsX2RwLT5saW5rLm1heF9sYW5lX2NvdW50
ID0gbWF4X2xpbmtfbGltaXRzLT5sYW5lX2NvdW50Ow0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lk
IHJlc2V0X21heF9saW5rX2xpbWl0c19ub191cGRhdGUoc3RydWN0IGludGVsX2RwX2xpbmtfY2Fw
cyAqbGlua19jYXBzKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyBtYXhf
bGlua19saW1pdHMgPSB7DQo+ICsJCS5yYXRlID0gaW50ZWxfZHBfbWF4X2NvbW1vbl9yYXRlKGxp
bmtfY2Fwcy0+ZHApLA0KPiArCQkubGFuZV9jb3VudCA9IGludGVsX2RwX2xpbmtfY2Fwc19tYXhf
Y29tbW9uX2xhbmVfY291bnQobGlua19jYXBzKSwNCj4gKwl9Ow0KPiArDQo+ICsJc2V0X21heF9s
aW5rX2xpbWl0c19ub191cGRhdGUobGlua19jYXBzLCAmbWF4X2xpbmtfbGltaXRzKTsNCj4gK30N
Cj4gKw0KPiAgLyoqDQo+ICAgKiBpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X21heF9saW1pdHMgLSBn
ZXQgdGhlIGN1cnJlbnQgbWF4aW11bSBsaW5rIGxpbWl0cw0KPiAgICogQGxpbmtfY2FwczogbGlu
ayBjYXBhYmlsaXRpZXMgc3RhdGUNCj4gQEAgLTIxNiw2ICsyMjYsMTggQEAgYm9vbCBpbnRlbF9k
cF9saW5rX2NhcHNfc2V0X21heF9saW1pdHMoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlu
a19jYXBzLA0KPiAgCXJldHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gKy8qKg0KPiArICogaW50ZWxf
ZHBfbGlua19jYXBzX3Jlc2V0X21heF9saW1pdHMgLSByZXNldCB0aGUgY3VycmVudCBtYXhpbXVt
IGxpbmsgbGltaXRzDQo+ICsgKiBAbGlua19jYXBzOiBsaW5rIGNhcGFiaWxpdGllcyBzdGF0ZQ0K
PiArICoNCj4gKyAqIFJlc2V0IHRoZSBjdXJyZW50IG1heGltdW0gbGluayBsaW1pdHMgdG8gdGhl
IG1heGltdW0gc3VwcG9ydGVkIGNvbW1vbiBsaW5rDQo+ICsgKiByYXRlIGFuZCBsYW5lIGNvdW50
Lg0KPiArICovDQo+ICt2b2lkIGludGVsX2RwX2xpbmtfY2Fwc19yZXNldF9tYXhfbGltaXRzKHN0
cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcykNCj4gK3sNCj4gKwlyZXNldF9tYXhf
bGlua19saW1pdHNfbm9fdXBkYXRlKGxpbmtfY2Fwcyk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBp
bnQgaW50ZWxfZHBfbGlua19jb25maWdfYncoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
IAkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkgKmxjKQ0KPiAg
ew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX2NhcHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19j
YXBzLmgNCj4gaW5kZXggYzZjNjBiNzg4ODg3NC4uN2JhZWI0MzU5ZDJkNCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+
IEBAIC0zMSw2ICszMSw3IEBAIHZvaWQgaW50ZWxfZHBfbGlua19jYXBzX2dldF9tYXhfbGltaXRz
KHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcywNCj4gIAkJCQkgICAgICAgc3Ry
dWN0IGludGVsX2RwX2xpbmtfY29uZmlnICptYXhfbGlua19saW1pdHMpOw0KPiAgYm9vbCBpbnRl
bF9kcF9saW5rX2NhcHNfc2V0X21heF9saW1pdHMoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAq
bGlua19jYXBzLA0KPiAgCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25m
aWcgKm1heF9saW5rX2xpbWl0cyk7DQo+ICt2b2lkIGludGVsX2RwX2xpbmtfY2Fwc19yZXNldF9t
YXhfbGltaXRzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2Fwcyk7DQo+IA0KPiAg
Ym9vbCBpbnRlbF9kcF9saW5rX2NhcHNfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJCQkgICAgICAgY29uc3QgaW50ICpyYXRlcywgaW50IG51bV9yYXRlcywgaW50IG1heF9s
YW5lX2NvdW50KTsNCj4gLS0NCj4gMi40OS4xDQoNCg==
