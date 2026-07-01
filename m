Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gt3wM/EfRWq47QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:10:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 302186EE8B0
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:10:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FWr7nzkx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B604E10E0F7;
	Wed,  1 Jul 2026 14:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFC310E3BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2026 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782915055; x=1814451055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gn76pYbLaI1WLIpmlh88JaW4amdHJfwvatdFYdqGxlY=;
 b=FWr7nzkxUM3bryGn3IrRVyNCWJYnbJoXBqutSNTWxbQjpOQJJ/kLZjGe
 8WFzvaD1IWweu4XVSDvc+bL/os843HS3Twa5gWb9FVy/4qA8r6jx36iW0
 G7m/iU1N1XB1docHwhEpA/xvQq8WfRsxSf39NedzVPcqcD6eIaTMI3Syg
 N7ZKPZTNSa05Imq5c2ZCxPc4lBB1mZwn3RLoPXwYb7kzEHLoyAMjYd+7B
 1jUKGSsaEKDY8uAAhzNaeuvu+qCG6eNPq1Ry/BgowtYsZf8U9dPfUbEXA
 5MMRDDPqlzeSMl030ThHrtku/6fvqChSQm+BBcF6j0dyKAZDg2jA1SXhZ A==;
X-CSE-ConnectionGUID: /aSLPXQtQzC2ZDuXIjSF1Q==
X-CSE-MsgGUID: 5duC5nnaSeqOMx1xt2fXnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="95151938"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="95151938"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 07:10:54 -0700
X-CSE-ConnectionGUID: 5B/SRz3BT5Wg+vGkbzpdBw==
X-CSE-MsgGUID: NspTMKjuSzCkKj9JfGxO+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="246215203"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 07:10:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 07:10:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 07:10:53 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 07:10:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I8dh9xMjfuQ/bZQGoXcscyFx7qLW30EVpdxlEgS1DDFZifWSGaB0Ql8Jc2RtslPMEvcG0A9Hidj23plr2fxtfLQd0AF9FOPzXioC11qfLMRmR0FRaO3OiUXAEb/qfYWDBFr+FqaZqPvk8uRxcR5vx0pderinWiuUtuel4ixc4WZ5hxEIPXCyqGB/FsdWA6DlDvpeCu1lDM3kGksAbgR0+rrBEl4lhnweURAA9q4kRfW6foe8oAYNcii2afWObPc2ntQBLy69mjIPJ8na9qHiwaHNk5GBGr57+rWjnIM+GLhoj4rlooIcx5n3rpfkzoxSI+VZp89TIeyU76e0MOAMXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gn76pYbLaI1WLIpmlh88JaW4amdHJfwvatdFYdqGxlY=;
 b=matDYTIxUO7qz0FoBnOMPYvJYHWpdCAkqw1VI5uIAxlEP/VhksEzzoswf2700ZnXxUYNTT7jdGZbUV3P/819XIaQ1qHMZuTzqg6tUZ7b3YAcFH6LlORV938/ZOa1HCpijJ1YPrXA9/EFn0VMXoDTkwvbtyuRQzqYO5EaNJVy64Z6Widj15boIs/Oq6rEiJmLdzD8oE8iZ1PF/eQT9hQcPUQZg/0WxH+DzEhexS6xWMM6W5AlXktOaFmanMi24X94qRMOKPEBU4+GFnC7TrYrJm0mkYLaOkyIPuhLrILWd1ik5veBWI+rSNUHCIhK2IGfqqJixmEvqILy4wzCNBPKYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2717.namprd11.prod.outlook.com (2603:10b6:805:60::32)
 by PH8PR11MB6880.namprd11.prod.outlook.com (2603:10b6:510:228::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Wed, 1 Jul
 2026 14:10:40 +0000
Received: from SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90]) by SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 14:10:40 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Shyti, Andi" <andi.shyti@intel.com>
Subject: RE: [PATCH v3] drm/i915/gt: Use poll_timeout_us in place of sliding
 sleep window
Thread-Topic: [PATCH v3] drm/i915/gt: Use poll_timeout_us in place of sliding
 sleep window
Thread-Index: AQHdCKSwDRJG/aJI5Uiiyauy1ODntrZYWBmAgABb0kA=
Date: Wed, 1 Jul 2026 14:10:40 +0000
Message-ID: <SN6PR11MB2717210CFB7347CA91964EDCE5F62@SN6PR11MB2717.namprd11.prod.outlook.com>
References: <20260630152511.1401029-1-jonathan.cavitt@intel.com>
 <qgju2jsejuf2glmyyuwk4smae3yvarix6bdxbafvhpxbaanfmb@cpnfgvrrb56n>
In-Reply-To: <qgju2jsejuf2glmyyuwk4smae3yvarix6bdxbafvhpxbaanfmb@cpnfgvrrb56n>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2717:EE_|PH8PR11MB6880:EE_
x-ms-office365-filtering-correlation-id: 984a218d-2e68-4bd5-7a83-08ded77a885d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|23010399003|376014|1800799024|38070700021|6133799003|4143699003|18002099003|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: tyVndhXzwI1AEzNjW3JO5uUPmIpHrzME4vDraFSI61bclJB7hskEXFl0wOxPl9vfl8uSGK2HexNJ1pWhcwb/i8JnIPdal//qukioMbYW6EZzxQFg5R5VRkN3bBqk70/1wLpI958IzhERKa9pRfhlrZZO4tAM46ADYPN9Via5RCAMwRa8yX3VkH5wyDvPoPWm/JhJ0TWZaob4YYHERaMt15IkqHcq/XXbQEXDxCQSJFULkkhlxznJ+b0og9l7b61/giVcqHkDVjuYEt9TANqKx+CjvtRYQYwRdBWqQg/dtQPgcCdAUFl54rZWajyhPOkYMDRA4R+EV55b7/Np7ncmwgRxqN68Onl+XaLZAVSBtZvQ+TWdrbDZQ51Ob8ljQmIeaTVd38iaHk+LD+I1DHfSXpvNfHAi1u5DprpV2ssjoVNQoTp+GWXneRuyze1Q+lcVSOonFYB/OqGTqs0NwFz9uXIIjmFsIF8Xk26ZN/sHBwezUROFwWeBGYoMntLlBdiDGDS/wehnHHWdHoYdp7QHyr0M7b7ndTBflyCaiM6LDX8vBnFi2txPYSJln9BSvdH/HS8nSF7DgXltbotj46Vly20zXPidhl1UvB6OFB27S1cl49XOSTu0ubuyLF32jGOJNBAbhTowxvZ8YS0HaSd6hZQRugIL0ShG+EyOMydbG6o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2717.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(23010399003)(376014)(1800799024)(38070700021)(6133799003)(4143699003)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2ZNY1BQUjZqSWkwZEh4aGJFYi9Bd0NNWWJzdE1tVkNNR3VtRmRHUDBPMWc3?=
 =?utf-8?B?d01kN0xhKzlhMTFSMWJLOGd5cTZHa0hYVWtCTTRxdXBUNjZFYjduNHRaUmpk?=
 =?utf-8?B?c1I1NzNPZjR3VVFYN3Z2OEJKaWtmWUdWWDgzSCtvZHpjNndwQUoxWVk4ek1i?=
 =?utf-8?B?dEdVdmlSWGtNUmxvZEZiNG5SL1M1WEI1eENYNXB2WGtRNkFFelAwTVo4VGE0?=
 =?utf-8?B?cC9NOTBjbVFqeTVqRDVjRWdLSnlVa0g3RGt2MytNY2VQSml5RnI1ZjJSclFw?=
 =?utf-8?B?Tm05aUJLSFdFVjVGREYxZ282ZEF3SlF2aHd1M2ovZkt6RWgxK09YMW1FMVBj?=
 =?utf-8?B?emM2U1hTaHRkY005UENSMVJGTVlBN0xoSm5nMGxEdWRCcHl5Vk9PNGhQVHM5?=
 =?utf-8?B?djBWUHlQc1B5aS9xbk4wV0lIUzBNR3JneHIzQTZXYlBROFhNd3VQTGtLMisr?=
 =?utf-8?B?L1NZTEY5bSs3d3pqaVdRcDFVQTdkZUc0c3NRa3Q3Y3J5djNTWkxUVGVEZ0Z6?=
 =?utf-8?B?TnhFandqOWo4d2RIWmoxTGdXdDNlVmxJRDlBN00yb29oOE1kRHVVV0VPbHFO?=
 =?utf-8?B?T1ZKSTB6aHJTOGtvT2JXNVZxdkF4djdiZnQ3ZVpkVkswYUthME9RWlZRaU82?=
 =?utf-8?B?R0JDUGlIK2J4QVoreWdScGdmTjdsQXloV09DSjlTV3RzMWhFemJJekFYbXFn?=
 =?utf-8?B?SFhGQ1NzclQxeDV3LzYxc0hrd1lYbGxiNjZYUmREZGRoeGVEM012YWpRM3Rm?=
 =?utf-8?B?OVR1RVVGL1B4NndaS2JvMFgrZitBcitRTE4zRzZRYUdFaElqTVVyMVJLM1k3?=
 =?utf-8?B?M3lKT2JWS3cwMUVZUFNReWZtNXZwVlMvbFBxV2tLRXorYytoeGdSMFMza1NL?=
 =?utf-8?B?Z3lsSmFrR3JleXVHRFMySFByLzJOMmU5VysyY0g4eUU5b05LdkIvYURDRmhH?=
 =?utf-8?B?bTFOaWxucVhEUGNoVkZsZ1lzWmRWV2xObmFkeU5PU1B4bXdqMHpObE1EZzRp?=
 =?utf-8?B?Wjc4MC9jOW1XdEMwZHBqdU5lZEhnU3M2dUFzeDc5eUtkbGNkTVh5WmxLUGpS?=
 =?utf-8?B?TThFd1JyZlhtOTFidVBhbmFSZEFJWUNldVhmVVM3a1V5Y3VaZEphVGtEUzY3?=
 =?utf-8?B?UVRsTG1YNTV6Y0p6VDRtMzFWY2c1ZmNyRWxNcWlvMjFLenZrTU1MQ3ZSYzRh?=
 =?utf-8?B?L2pNSXhJanB2Z2tSTWtBSlh0dlhyc0lEVVJXU2FkdnVEaTY1ZnZENENqRUNx?=
 =?utf-8?B?UXZzUnNoeEgyMU1FeWRVTGhUeE5oWDg3WkJhT0dZdEFZM3UySXJSQk83OUQ4?=
 =?utf-8?B?WTlXZHQxTUtpdkZCS0RTbGNva1FqMnJQNkc3d0VSbGx5YTdMb3VDQW9Qc1U0?=
 =?utf-8?B?S0oydXZFclgwcUxsUDhYVkJmN1VzWTIyZWlRek1QbFlFYW5zbjZ4eldqQkhs?=
 =?utf-8?B?aDQyTUtSTm41eXM4K0l1L3hiNjAvNTJiTVlORGtWS0RQeDZYbmNaU3VoN3Iy?=
 =?utf-8?B?Z1hCT0dYQ2tIT1FGOW05NDV5d0pyZGo3ZlR2S1UxVEh5Tm8raExGMHBtVjJi?=
 =?utf-8?B?aitUVHNvb0tUbXFsS3ZCMXZ1Nmh2ajVjSmZsb0NnaDBoNTg1VVBIVVNwekNO?=
 =?utf-8?B?OXBGd0xNVFNFRFFYVDlWVExyTTI3d0FxNXJTTmx5UUJ4eGx1WDUzbnRac29r?=
 =?utf-8?B?WDR3QUFJdTFtUkU3TTRyT2hnZGVZSXUxOW9DWmsxS2NReHVRRitXTGxGZm56?=
 =?utf-8?B?cExmeEliaDRJeUlBenFabmQ3QzRYaFc1cFFTK0Z6aFN5NnluUlNmbUlRRUV6?=
 =?utf-8?B?ZlhRdmJSTHlMVWZPRU81QUxOdlQ0R2dZbjRBWkNiYXVNeWVFa1pUb0pEWWVB?=
 =?utf-8?B?UzZsa0tpaURYajgyTlIyRHJVT05aUXZObk9XS3NmSjBOMVpXUVppUks4SUdY?=
 =?utf-8?B?UFdIUkRGRE1KWkUzSGExVzJ3RGU1ZDd4N0U2NlpyeHk5NWg2OEhhdlpGelVI?=
 =?utf-8?B?RDd4K3NJN24rNEpSb1V2ZkNkT3IzZnJiN3dMRDJFUU9RcGhudm9WSFVqRHFD?=
 =?utf-8?B?RVB5S2FFeWVSY001eGdFaEc2UXdaLzM2bTlyK1JhVk1DQXNHYWUxaGYzdnBR?=
 =?utf-8?B?eml6bHc4UWRNSFhYak9qY1lQUmRBNXp6YzQrWlZtMzUrdVNCckdjbnBPazJa?=
 =?utf-8?B?a1BWZFE2U1RhdGE2NUFWOFNuSHRvSEFnNjNKeEt5SUpLRGEyajhKNmN5d01j?=
 =?utf-8?B?ZWJVQUJQZlhvN04vZUlqaW1WM2VxcWFXQmpNbFhjeEhENW1VenV3RllXNUtB?=
 =?utf-8?B?QldQbGptWm9jNkl5cjZiemwrekNld3IxeW02WW5iRWdiTmxjOGFYdGtpRFpa?=
 =?utf-8?Q?gB49NqT5SpcBK4vrYIgxZY4haBHjmxsmLEndIpbMnD2ei?=
x-ms-exchange-antispam-messagedata-1: kj2rVuveLxgZKw==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XJR/divjU4rexBmGxk+X3PzwYxkDhH/qd1NvWcwBRYnHQf89n3SeXWCipkw4fRchSBoagy1zHTkIDtSPhrwdgsXt35B/CYc7KVwvdDc1TciY7AziXa6FTXPsgAsKaXfIS8feqmO5cjW3xKcJOehXbFfLSjcjl8UG3y0FT+tC5njJaQEycH/sF+1/qHzAkrR7TUOyOqRyFgPgFD8l481nmMVBhZBzivl6dcOLXS1hHqHAqECdXe7DbwMefRN2xaBKt6s2KEUcFI7vle6ErHsij1ZrRDu1mXny+Ztv7QzV2bvvoZvFhzMLgwYn+addaiAOu5+D8nkdMyIujcJDLHgdpQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2717.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 984a218d-2e68-4bd5-7a83-08ded77a885d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 14:10:40.6702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mjUfnkHl38ZSVtQd8kflOSIDOlAQNA7PdOP7gpImdAml2MYDc62xeZJ+GadnJHhRGGB0iCd/LhYVg8kBxZsmiJ6zTnFNTv6AvqYxNGjDpl8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6880
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:alex.zuo@intel.com,m:jani.nikula@linux.intel.com,m:andi.shyti@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,SN6PR11MB2717.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 302186EE8B0

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEthcmFzLCBLcnp5c3p0b2YgPGtyenlz
enRvZi5rYXJhc0BpbnRlbC5jb20+IA0KU2VudDogV2VkbmVzZGF5LCBKdWx5IDEsIDIwMjYgMToz
NiBBTQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQpD
YzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgWnVvLCBBbGV4IDxhbGV4Lnp1b0Bp
bnRlbC5jb20+OyBqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb207IFNoeXRpLCBBbmRpIDxhbmRp
LnNoeXRpQGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbUEFUQ0ggdjNdIGRybS9pOTE1L2d0OiBV
c2UgcG9sbF90aW1lb3V0X3VzIGluIHBsYWNlIG9mIHNsaWRpbmcgc2xlZXAgd2luZG93DQo+IA0K
PiBIaSBKb25hdGhhbiwNCj4gDQo+IE9uIDIwMjYtMDYtMzAgYXQgMjM6MjU6MTEgKzA4MDAsIEpv
bmF0aGFuIENhdml0dCB3cm90ZToNCj4gPiBUaGUgZnVuY3Rpb25zIGludGVsX2d1Y19zZW5kX2J1
c3lfbG9vcCBhbmQgY3Rfc2VuZCBjYW4gdGhlb3JldGljYWxseQ0KPiA+IGxvb3AgZm9yZXZlci4g
IEluIHRoZSBmb3JtZXIgY2FzZSwgaW50ZWxfZ3VjX3NlbmRfYnVzeV9sb29wIGNhbiBpdGVyYXRl
DQo+ID4gZm9yZXZlciBpZiBpbnRlbF9ndWNfc2VuZF9uYiByZXBlYXRlZGx5IHJldHVybnMgLUVC
VVNZLiAgSW4gdGhlIGxhdHRlcg0KPiA+IGNhc2UsIGN0X3NlbmQgY2FuIGxvb3AgZm9yZXZlciBp
ZiB0aGUgZ3VjLXRvLWhvc3Qgb3IgaG9zdC10by1ndWMgYnVmZmVycw0KPiA+IGdldCBzdHVjayBp
biBhIGZ1bGwgc3RhdGUuDQo+ID4gDQo+ID4gUmV3b3JrIHRoZSBmdW5jdGlvbnMgdG8gdXNlIHRo
ZSBwb2xsX3RpbWVvdXRfdXMgZmFtaWx5IG9mIGZ1bmN0aW9ucw0KPiA+IGluc3RlYWQgb2YgY2Fs
Y3VsYXRpbmcgc2xlZXBfcGVyaW9kX21zIHJlcGVhdGVkbHkuICBJbiBib3RoIGNhc2VzIG5vdywN
Cj4gPiBpZiB0aGUgbG9vcCBjb25kaXRpb24gaXMgbm90IG1ldCBhZnRlciAxMCBtaW51dGVzLCB0
aGUgZnVuY3Rpb24gd2lsbA0KPiA+IHJlcG9ydCBpdCBhcyBhIGZhaWx1cmUuDQo+ID4gDQo+ID4g
VGhpcyBhbHNvIHJlc29sdmVzIGEgc3RhdGljIGFuYWx5c2lzIGlzc3VlIGludm9sdmluZyBzbGVl
cF9wZXJpb2RfbXMNCj4gPiBvdmVyZmxvd2luZyBhZnRlciBzZXZlcmFsIHNoaWZ0LWxlZnQtbG9n
aWNhbCBjYWxscy4NCj4gPiANCj4gPiB2MjoNCj4gPiAtIFJlZHVjZSBkZWZhdWx0IHNsZWVwL3Vk
ZWxheSBkdXJhdGlvbiAoamNhdml0dCkNCj4gPiANCj4gPiB2MzoNCj4gPiAtIFVzZSBhdG9taWMg
aW4gY3Rfc2VuZCAoamNhdml0dCkNCj4gPiANCj4gPiBTdWdnZXN0ZWQtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9uYXRo
YW4gQ2F2aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KPiA+IENjOiBBbmRpIFNoeXRp
IDxhbmRpLnNoeXRpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjLmggICAgfCAzMiArKysrKysrKysrKy0tLS0tLS0tLS0tLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYyB8IDE5ICsrKysrLS0t
LS0tLS0tDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRp
b25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgNCj4g
PiBpbmRleCAwNTM3ODBmNTYyYzEuLjEzYmU0ZjdlN2FiNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oDQo+ID4gQEAgLTcsNiArNyw3IEBADQo+ID4gICNk
ZWZpbmUgX0lOVEVMX0dVQ19IXw0KPiA+ICANCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+
DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2lv
c3lzLW1hcC5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgveGFycmF5Lmg+DQo+ID4gIA0KPiA+IEBA
IC0zNjAsOCArMzYxLDcgQEAgc3RhdGljIGlubGluZSBpbnQgaW50ZWxfZ3VjX3NlbmRfYnVzeV9s
b29wKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywNCj4gPiAgCQkJCQkgICB1MzIgZzJoX2xlbl9kdywN
Cj4gPiAgCQkJCQkgICBib29sIGxvb3ApDQo+ID4gIHsNCj4gPiAtCWludCBlcnI7DQo+ID4gLQl1
bnNpZ25lZCBpbnQgc2xlZXBfcGVyaW9kX21zID0gMTsNCj4gPiArCWludCBlcnIsIHRpbWVkb3V0
Ow0KPiA+ICAJYm9vbCBub3RfYXRvbWljID0gIWluX2F0b21pYygpICYmICFpcnFzX2Rpc2FibGVk
KCk7DQo+ID4gIA0KPiA+ICAJLyoNCj4gPiBAQCAtMzc0LDIwICszNzQsMjAgQEAgc3RhdGljIGlu
bGluZSBpbnQgaW50ZWxfZ3VjX3NlbmRfYnVzeV9sb29wKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywN
Cj4gPiAgCS8qIE5vIHNsZWVwaW5nIHdpdGggc3BpbiBsb2NrcywganVzdCBidXN5IGxvb3AgKi8N
Cj4gPiAgCW1pZ2h0X3NsZWVwX2lmKGxvb3AgJiYgbm90X2F0b21pYyk7DQo+ID4gIA0KPiA+IC1y
ZXRyeToNCj4gPiAtCWVyciA9IGludGVsX2d1Y19zZW5kX25iKGd1YywgYWN0aW9uLCBsZW4sIGcy
aF9sZW5fZHcpOw0KPiA+IC0JaWYgKHVubGlrZWx5KGVyciA9PSAtRUJVU1kgJiYgbG9vcCkpIHsN
Cj4gPiAtCQlpZiAobGlrZWx5KG5vdF9hdG9taWMpKSB7DQo+ID4gLQkJCWlmIChtc2xlZXBfaW50
ZXJydXB0aWJsZShzbGVlcF9wZXJpb2RfbXMpKQ0KPiA+IC0JCQkJcmV0dXJuIC1FSU5UUjsNCj4g
PiAtCQkJc2xlZXBfcGVyaW9kX21zID0gc2xlZXBfcGVyaW9kX21zIDw8IDE7DQo+ID4gLQkJfSBl
bHNlIHsNCj4gPiAtCQkJY3B1X3JlbGF4KCk7DQo+ID4gLQkJfQ0KPiA+IC0JCWdvdG8gcmV0cnk7
DQo+ID4gLQl9DQo+ID4gLQ0KPiA+IC0JcmV0dXJuIGVycjsNCj4gPiArCWlmICghbG9vcCkNCj4g
PiArCQlyZXR1cm4gaW50ZWxfZ3VjX3NlbmRfbmIoZ3VjLCBhY3Rpb24sIGxlbiwgZzJoX2xlbl9k
dyk7DQo+ID4gKw0KPiA+ICsJaWYgKG5vdF9hdG9taWMpDQo+ID4gKwkJdGltZWRvdXQgPSBwb2xs
X3RpbWVvdXRfdXMoZXJyID0gaW50ZWxfZ3VjX3NlbmRfbmIoZ3VjLCBhY3Rpb24sDQo+ID4gKwkJ
CQkJCQkJICAgbGVuLCBnMmhfbGVuX2R3KSwNCj4gPiArCQkJCQkgICBlcnIgIT0gLUVCVVNZLCBV
U0VDX1BFUl9NU0VDLA0KPiA+ICsJCQkJCSAgIDYwMCAqIFVTRUNfUEVSX1NFQywgZmFsc2UpOw0K
PiBXYXMgdGhlcmUgYSByZWFzb24gZm9yIGNob29zaW5nIDEwIG1pbnV0ZXMgb3Igd2F0IHRoYXQg
bW9yZSBvZiBhDQo+ICJzaG91bGQgYmUgbG9uZyBlbm91Z2giIGRlY2lzaW9uPw0KDQpZZXMuDQoN
Cj4gQWxzbywgc2luY2UgeW91IHVzZSB0aGlzIG1hZ2ljIG51bWJlciBpbiBtdWx0aXBsZSBwbGFj
ZXMsIGl0DQo+IG1pZ2h0IGJlIGJlbmVmaWNpYWwgdG8gcHV0IGl0IGJlaGluZCBhICNkZWZpbmUg
c3ltYm9sIHRoYXQgaXMNCj4gZWFzaWx5IHRyYWNrYWJsZSBpbiBnaXQgaGlzdG9yeS4NCg0KSSds
bCBkbyB0aGF0IGFzIHNvb24gYXMgSSBmaWd1cmUgb3V0IHdoeSBwb2xsX3RpbWVvdXRfdXMgaXMg
Y2F1c2luZyB0aGUNCmRyaXZlciB0byBmYWlsIGxvYWRpbmcuICBPciwgYWx0ZXJuYXRpdmVseSwg
SSdsbCBhcHBseSB0aGlzIHJldmlzaW9uIG5vdGUNCnRvIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvMTYyNTE3LyBvbmNlIGl0IHJlY2VpdmVzDQpiZXR0ZXIgdGhhbiBs
dWtld2FybSBhcHByb3ZhbC4NCg0KSSBzaG91bGQgYWxzbyBub3RlIHRoYXQgYWxsIHRoaXMgZWZm
b3J0IGlzIGJlaW5nIHB1dCB0b3dhcmRzIHByZXZlbnRpbmcNCmFuIGludGVnZXIgb3ZlcmZsb3cg
dGhhdCBpc24ndCBldmVuIHBhcnRpY3VsYXJseSBsaWtlbHkgdG8gaGFwcGVuIGluIHRoZQ0KZmly
c3QgcGxhY2UuICBCeSBhbGwgYWNjb3VudHMsIGl0IG1pZ2h0IGJlIGJldHRlciB0byBqdXN0IGNs
b3NlIHRoZSByZXBvcnQNCmludGVybmFsbHkgYW5kIGJlIGRvbmUgd2l0aCBpdC4NCi1Kb25hdGhh
biBDYXZpdHQNCg0KPiANCj4gLS0gDQo+IEJlc3QgUmVnYXJkcywNCj4gS3J6eXN6dG9mDQo+IA0K
