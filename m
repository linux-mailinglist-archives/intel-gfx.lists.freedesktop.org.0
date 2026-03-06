Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ1LI9h8qmkqSQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 08:06:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E100D21C44D
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 08:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89DC10E389;
	Fri,  6 Mar 2026 07:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iayr9mLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B112910E387;
 Fri,  6 Mar 2026 07:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772780757; x=1804316757;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=C2eHo64Ohx7sKnu2l2XAkH22fIKdudXPRhSmoiZhEZ0=;
 b=iayr9mLPj9o3Fe4FBkzWcMKsgGLK1sxce6O5vLuGKLcTgXQZwXa92k3x
 5C8tsJfb/GFn+LrVRF8C43ck1TOLHthLFYmKVYpqwtrTuJVSx+bcMqiYo
 /9QQdjwOnhqYfugL2rXAUGA1i525HtES5LvBXeB6qMhFEhhneTVplzvZZ
 GSCkO5Qgbh3b4zStWJUVzGLfMqWMQRPJn6rIlv0CZK6CWFuQtPrcKPNgD
 4oL3lekbABMuOhHrD1crzfOKNg9fB11GPsrnWu/3+1V6x0Pg+vwK/WvTB
 zIIzymzYJgtLfQ4tPxv7Nfp53oNHaPPqwVaTpO/lRQtwtVE0bLNqXL4TV g==;
X-CSE-ConnectionGUID: mriTTmJZRhOEKV12u5+/HA==
X-CSE-MsgGUID: b4lyHfcrRTyhG1qBt8900A==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="84595465"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="84595465"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:05:56 -0800
X-CSE-ConnectionGUID: SLFBzDISSe+BJ7eDFHb62g==
X-CSE-MsgGUID: kZMWejW7Rjim69aOgezQDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="218881585"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:05:56 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 23:05:55 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 23:05:55 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 23:05:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U5R021jh0Mz4V1sdK4iOCbArmAKFNBvc1KNBSwXsS1hEc0+ACzXQ2Jf5E2O8IQYh7+wE6fPzfhXK8T8UN5/GfxV4vZ+mq6OBvW24gFtZa4aAL0MQz2+KefrkzrCAPeHIjcH8SIGU2Gv1TK786ktGXCspzIXHikxT0YW2/2Xj4c74HAtGu3NZs8g/wRLo82IqkhUgaga9mBsMQfibm4nJ/gfGDWg3dHktS5nkzDFzMFxVxiBln1gxOTmrJBsM6X1SJWVQXZMJm0mDEgZijIA2OkgmZj/Oh2/DYmcCfWl/IBMGoql4oDbJXS7ppkai+Jm0yEJyVFOnLhDMKRZKFk4YqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2eHo64Ohx7sKnu2l2XAkH22fIKdudXPRhSmoiZhEZ0=;
 b=fd+/Tkn8RMI2WzWYAkq3+BIuFnVZvGh7X9P3oB6ef1oNu3ahdwKfBekszrwLkBvqWM5tMxoKvXkeyNBaw8/+reOLbDFZGlhoHTorfw1+B3RuUwzmH4yBkywoVi1MOk4Mr1H7Aj+wqakWsWFhjFFN4argpOA/jxTrcwipLteuDzvbXoXNkctjG88jwJLJK5S0aYkXKur1XY+Zey+IOpI7pwt+VtwZ1maWUfwWTWBTRKD0p4Rh2ZltfhzJpg4tMLqSKxl2NvV6ukx2E+6YDKUicLzwJB5Kz8rQCcDyhYMBVWXtZ5ZawTejpBveJehPGQgqWhotpD+edEvL4bfrqRZDqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA3PR11MB9255.namprd11.prod.outlook.com (2603:10b6:208:578::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.23; Fri, 6 Mar
 2026 07:05:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9700.003; Fri, 6 Mar 2026
 07:05:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915/frontbuffer: call parent interface directly
Thread-Topic: [PATCH 6/7] drm/i915/frontbuffer: call parent interface directly
Thread-Index: AQHcqnD5lPf/JdtU4EeXCXA+ae2kBbWhGm0A
Date: Fri, 6 Mar 2026 07:05:47 +0000
Message-ID: <baa51e899fd242ad6563492dceee124f302e9daa.camel@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
 <7451574d6840fe9a4af16d2d6b81ffb7739b5b76.1772475391.git.jani.nikula@intel.com>
In-Reply-To: <7451574d6840fe9a4af16d2d6b81ffb7739b5b76.1772475391.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: 520c620e-6360-4052-2d42-08de7b4ecb3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: yMMFSQgFK/s9jEmUzeUoyC/NXtsIr8UA2sjEo+h1cOoo2Sk8hu/6UykS3RBHb5KT3ai/VJWCi48m3dRzfxznBGBytII7xlhw2cUnpbbvGWrArcT5SfrnIuvp1pJ4flzt16cl0rOG+sJCWdXrz9+nTDwI7XcshTFK5iPo5xvbjWeFAqQpBczlEdgq/XH2G6vA4y1uZtHJ5chpeOekpzOZzOQMHg0MZhjWw6U+97K0rf7AN1/5ZAEIeJ9mFxlT9y/uSegfoH09wxZLodf0wQ8eGhC6D+kN8mfcDt61xqqbm3KWbxq60AyKZVD4y9PKy/Xs/Lxaj/1A6BSpFNWOEQcmlQpFyX6I/EOj9hFrn+Hhs6HJPsaOPX4g0Vm3jykm9w1mVI+MX6rYEkqj4ecgcNgOSMNKvOdJ38RadJrs8lJU79yewLgYWrYNmm587VQqu3OguMHGF+OVCneZPRpt6nhMVBWafd/kqzU2o0UH2guqLPod6mLZIzkak5phymhS8krBLkAEn+DTCp7rIkasxIg8bWoEoeELY6oZgByap6I9E/SF/rXGUcgvZPVqtIsIHPsSBLD6V3bVPhtz0kldHiowhwRVSJ4XRNmsjCqIHgsNQf7MP8NHpZegDefhSA7yRiSL0XhaARz1qZp3h7UD50SvnFepqmNajxBPE7JEw2Qj6ee5M5teJS7d+tAWlyioHzIDjSh92aPnuz7jZPG5uEtQcWbjwsYSNldXfWzfId74vAkoiMhGX7N0dkGj2j48BVdyRupODWMNZtkY8VMB2Lm+kikMVDlFk03sR5AtzJvPHFc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enpTVkZPUDlJSEtWd29MMnFiaDFoOWl6clhQbWJLRUw1M05HVkdhL0J5ODli?=
 =?utf-8?B?ZFBZZ3BOazNkL3BJVDh3WTRsdDJnSzV0cTFraGdUTENOWEJjOGVOeUVKczZI?=
 =?utf-8?B?QXBvOVJtbFVsNDhaZ0Z4TTJnM0FiWDhyUjFxNGFGWlNUWmdIZUIvbGhmZ0Ju?=
 =?utf-8?B?eHgvWVloc3FmdmhuYzRTbVpxVm5Pc3Fwbit3eWNXT0NwM09OOThTR1JpeGl0?=
 =?utf-8?B?YkMxT3lRb0s0UldhL3M0SStIdXd1K1dhTlFWQXlCRnI2YXNKZjdJdHZ2T1pL?=
 =?utf-8?B?OFFlOENjc0VRV2NLNE0wNVVzUDVaSUUxMjVIV0p5QWdYOVUxMkVxNWJhZE94?=
 =?utf-8?B?OGZKVUVDanhnQnIrSURlVTV1YVh5YzJwTlpNOEtmM0ZSZ3VOeHBmb1FrU254?=
 =?utf-8?B?dmV3cmdmVVVnUVNneGRSQlM1MHpGV0t0dy9PeE1tQ2NadVJPcXFOYXk5OUps?=
 =?utf-8?B?ZTIwa0dsSm5QcTBIdWxFTzNjbEZIelZNQzJkSHFWcU84Zkd5OVR3WmZ0Z2Zh?=
 =?utf-8?B?aXFCN2x0RXFZK1hUU3NwVUFuUHp4THRDVWRaQjdXaUVlYmJ1MXdsampEYldk?=
 =?utf-8?B?MURybTQ2OHNnRTBzeXJsS1NHdzMzaGhGejZlbjlUdW5GNXFyaUhMS0h3elNn?=
 =?utf-8?B?ck5SVEJkVWlGazl1OG1VWmdFZFdTWnNRbWRFNjFQamZqejNxeXJPRUFJQlVo?=
 =?utf-8?B?SmVxRW9paGVzdnYzQW1KZFFIWmdOeHIzWlVsQVBtTW9ROTZPUENuQXp0Sk5m?=
 =?utf-8?B?YWJiazVzWWswTzRNQkd4ZGJCSDVRQzNRekRMakpoQko2QllwYTNhcS85eFBB?=
 =?utf-8?B?STVGbXBKYmczNnJ1ZHZmMitndzByT1l1dW13U0RKdHFTNGlJN3p3VVN4ZEhz?=
 =?utf-8?B?RkF4TjkreE5HWVZRRHE3ZG1XclE5MklMOFIzMkxMZVJrWVdzVU9tQXRNQ1RU?=
 =?utf-8?B?SWR0VWl3SVF4ZFZSWk00MjRlY2xnci9rUVJheW0veVdVdERqUFpwbnRtK0t1?=
 =?utf-8?B?WEVTeGU5NWRsbStmb1NYNHE5by9iTElyZVJCTG91bkY2ZllvY3Z6ZGdMWDRj?=
 =?utf-8?B?YUJnZ24zTERKNTJlUSt3NERoNXd1a2oyYm0xa1RtTVpLcFBzV1hwUE45ZWhV?=
 =?utf-8?B?TlpGdS81TzVIdU5xUU8vbzFWZm5aek5xTnBneVlLSGRsZzJNUGticGYwNGVa?=
 =?utf-8?B?UlBzR0J6ZzZTZlIxR25NTTcwU2lONUxFS000NW5ucCswT1U0QW5FUGREMDM1?=
 =?utf-8?B?SHpFcTl6YkpDbmtJeFgrT04wZUd1TDN3WC9BZkxId2ZQTHBOcUhRSS90WFI0?=
 =?utf-8?B?eXlsWlF1RHdGT1lCUHh5NU9VbHYyZ0J4RktPK3dvTzBnT2FDMWQ3TGhFU1BV?=
 =?utf-8?B?S1BTRGJLZXVPM0QzK1J2TjBVTDhEVWhMRkdGZmlqMldLMm15Tmw5U0tkb05a?=
 =?utf-8?B?UnBlWkUwL0t3a1JIMlZQR042TTdjNWJzUmt6NTdXa2RFVndBMU5selJ4MlJS?=
 =?utf-8?B?bnk1S0wvbzBJenJhN2tLa2ZLTFRSemVoY3k1djZVVnlxQXEyOU05YmV5Y2tD?=
 =?utf-8?B?TStLUXpXT3RnWS9QSTI0UnJkL3o1TEZ1SnJDd3p0bXRxcUxzekpUY2FxT2Uv?=
 =?utf-8?B?czh2VFYxZGZjdFN4TmticVRoM1B0d2ZTWW83bHF0NUo0ejRVQSthc1E2UnZu?=
 =?utf-8?B?Y2x5U0VlZTk1bHJxQTZkU2RkK1huOE9tcU5SdlloWERqa281UlNBdGxyaVJr?=
 =?utf-8?B?czZ6cTloMHFjcUNvMHdaYWZnYjNBeVJZWUp6U3V4OUlncmNJTjREaUk1MXQw?=
 =?utf-8?B?ZzZJbDJSZW9vbTJ1VnNjWTgwWVdsNWtPMVlDa3JuTitPOXRJZkliYjYrTUdH?=
 =?utf-8?B?UUlXZ2xHZWFPYUovN2tmU2NKUnB2c3pGQk8rV2l5SDB0d25Lc2JXdDYwd3Fm?=
 =?utf-8?B?QUJMVDhrSXgreHZNRm9oOGtValZuUi9jVkdjME5PSFBpelh3cWVZWk1jOXBG?=
 =?utf-8?B?UlhuNnVVdFJNQWNRcUtVcmFxU3dLaUJoUGQyQkRyQU8yTnlJb1JuQVVVNEhW?=
 =?utf-8?B?bndaVVV3MnNQcythSUZicTBiVlNWZWx6YWQ5SCt3bE5ZUWszVmxTcGNaZEhv?=
 =?utf-8?B?WFlRckUrQVgvNjhYNVpuV2dDV2hEZTlUYjcwOGRTUDRsVzJnNGJzUmZqSUJ5?=
 =?utf-8?B?d3hhU0NkQkhqd0tKMmV1QXB1OW1GTGlYZUxWSmNmM1ltc1dYWWZ3aHJISExu?=
 =?utf-8?B?SzRvMmkrMWZkZjNGUjYxeXRzZ2dXYUZmWjJ3U1VQanJSMStQRkV0TzBmc0Fn?=
 =?utf-8?B?ZUVkb3U0Z1ZzSmNrUWZxc21ITm9wQUVQL0twUDNjSlhUdloyNlRFRTRham1i?=
 =?utf-8?Q?+QM6xPx0Lns8Otob3fsZKsqJZ/dTLlFtgHUDq1tdO9ZQY?=
x-ms-exchange-antispam-messagedata-1: Mx8SwPTjod9UuROE7MWlzpGp26FG00gutuk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2C9A643DBBFE1748ABC73DC830B3E29A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bGkNKlwaXw2WRwtxaladGyCTiWkOONTrg6/2UciqRMhhqlzTWjfsKCpYQVCOv9/V8qJYYr7Ha8hKsHinjzSWg8U+pGzGOM4VznBAw+ZpcTsDljtYY2+LT88t6BwN1/shRZ8iBEkO/sk+SwB19b2H+XHFU0/zbyOlDduE7l+2J0zw1JxzYwK+mf9X2/2K/mGO2Q/HXPgKTjl0IeyRbiQehRo3TiYM8ndTwuEb7qXWdlvwa6UTdI6WsO3u1t8UHIaxdT3T2kkzvK47V8fK/Rl9nuafRql3WFYAG5HlzSbyveCvfcYU2BN4/HKP03Xe/a31GGEoDqLEbmlQWoB+pAyteg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 520c620e-6360-4052-2d42-08de7b4ecb3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2026 07:05:47.9843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T8L7tJYOaGlTN10NGLt32xLIoEF8rWs+YQteacHjcxqOWSdEq+/Nd5TFDuH+JDLeoIvTjgIM6WaWPc9K+c61oo4aTdZidQ/Iu6TpTtzQSJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
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
X-Rspamd-Queue-Id: E100D21C44D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDIwOjE3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
RG8gYXdheSB3aXRoIHRoZSByZWR1bmRhbnQgaW50ZWxfZnJvbnRidWZmZXJfZ2V0KCksDQo+IGlu
dGVsX2Zyb250YnVmZmVyX3B1dCgpLCBhbmQgaW50ZWxfZnJvbnRidWZmZXJfcmVmKCkgZnVuY3Rp
b25zLCBhbmQNCj4gY2FsbA0KPiB0aGUgcGFyZW50IGludGVyZmFjZSBmdW5jdGlvbnMgZGlyZWN0
bHkuDQoNCllvdSBjb3VsZCBoYXZlIGxlZnQgdGhlc2UgYXMgdGhleSBhcmUgd2l0aCBhbiBpZGVh
IHRoYXQgZXZlcnl0aGluZw0KcmVsYXRlZCBpbnRlbF9mcm9udGJ1ZmZlciBnb2VzIHZpYSBpbnRl
cmZhY2VzIGluIGludGVsX2Zyb250YnVmZmVyLmguDQpOb3cgb25seSB0aGVzZSB0d28gYXJlIHZp
YSBwYXJlbnQgaW50ZXJmYWNlLiBQYXRjaCBpcyBvayBhbmQgSSBkb24ndA0KaGF2ZSBzdHJvbmcg
b3BpbmlvbiBvbiB0aGlzOg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmIuY8KgwqDCoMKgwqDCoCB8wqAgOCArKystLS0tDQo+IMKgLi4uL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmPCoCB8IDIzICsrKy0tLS0tLS0tLS0t
LS0tDQo+IC0tDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVy
LmjCoCB8wqAgNSAtLS0tDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDI5
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmIuYw0KPiBpbmRleCA2YmUwN2Q4YTdlODEuLjQ5YzZjYTlkOTRjNiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYw0KPiBAQCAtMjExMyw3ICsyMTEzLDcgQEAg
c3RhdGljIHZvaWQNCj4gaW50ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9kZXN0cm95KHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiKQ0KPiDCoA0KPiDCoAlpbnRlbF9mYl9ib19mcmFtZWJ1ZmZlcl9maW5p
KGludGVsX2ZiX2JvKGZiKSk7DQo+IMKgDQo+IC0JaW50ZWxfZnJvbnRidWZmZXJfcHV0KGludGVs
X2ZiLT5mcm9udGJ1ZmZlcik7DQo+ICsJaW50ZWxfcGFyZW50X2Zyb250YnVmZmVyX3B1dChkaXNw
bGF5LCBpbnRlbF9mYi0NCj4gPmZyb250YnVmZmVyKTsNCj4gwqANCj4gwqAJa2ZyZWUoaW50ZWxf
ZmItPnBhbmljKTsNCj4gwqAJa2ZyZWUoaW50ZWxfZmIpOw0KPiBAQCAtMjIyMSwxMCArMjIyMSwx
MCBAQCBpbnQgaW50ZWxfZnJhbWVidWZmZXJfaW5pdChzdHJ1Y3QNCj4gaW50ZWxfZnJhbWVidWZm
ZXIgKmludGVsX2ZiLA0KPiDCoAkJcmV0dXJuIC1FTk9NRU07DQo+IMKgDQo+IMKgCS8qDQo+IC0J
ICogaW50ZWxfZnJvbnRidWZmZXJfZ2V0KCkgbXVzdCBiZSBkb25lIGJlZm9yZQ0KPiArCSAqIGlu
dGVsX3BhcmVudF9mcm9udGJ1ZmZlcl9nZXQoKSBtdXN0IGJlIGRvbmUgYmVmb3JlDQo+IMKgCSAq
IGludGVsX2ZiX2JvX2ZyYW1lYnVmZmVyX2luaXQoKSB0byBhdm9pZCBzZXRfdGlsaW5nIHZzLg0K
PiBhZGRmYiByYWNlLg0KPiDCoAkgKi8NCj4gLQlpbnRlbF9mYi0+ZnJvbnRidWZmZXIgPSBpbnRl
bF9mcm9udGJ1ZmZlcl9nZXQob2JqKTsNCj4gKwlpbnRlbF9mYi0+ZnJvbnRidWZmZXIgPQ0KPiBp
bnRlbF9wYXJlbnRfZnJvbnRidWZmZXJfZ2V0KGRpc3BsYXksIG9iaik7DQo+IMKgCWlmICghaW50
ZWxfZmItPmZyb250YnVmZmVyKSB7DQo+IMKgCQlyZXQgPSAtRU5PTUVNOw0KPiDCoAkJZ290byBl
cnJfZnJlZV9wYW5pYzsNCj4gQEAgLTIzMzUsNyArMjMzNSw3IEBAIGludCBpbnRlbF9mcmFtZWJ1
ZmZlcl9pbml0KHN0cnVjdA0KPiBpbnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmIsDQo+IMKgZXJy
X2JvX2ZyYW1lYnVmZmVyX2Zpbmk6DQo+IMKgCWludGVsX2ZiX2JvX2ZyYW1lYnVmZmVyX2Zpbmko
b2JqKTsNCj4gwqBlcnJfZnJvbnRidWZmZXJfcHV0Og0KPiAtCWludGVsX2Zyb250YnVmZmVyX3B1
dChpbnRlbF9mYi0+ZnJvbnRidWZmZXIpOw0KPiArCWludGVsX3BhcmVudF9mcm9udGJ1ZmZlcl9w
dXQoZGlzcGxheSwgaW50ZWxfZmItDQo+ID5mcm9udGJ1ZmZlcik7DQo+IMKgZXJyX2ZyZWVfcGFu
aWM6DQo+IMKgCWtmcmVlKGludGVsX2ZiLT5wYW5pYyk7DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gaW5kZXggYTM1
NWRjMDY0NTI4Li42MWNlODJmODVkYWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gQEAgLTE2NCwxOCArMTY0LDEzIEBA
IHZvaWQgX19pbnRlbF9mYl9mbHVzaChzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXINCj4gKmZyb250
LA0KPiDCoAkJZnJvbnRidWZmZXJfZmx1c2goZGlzcGxheSwgZnJvbnRidWZmZXJfYml0cywNCj4g
b3JpZ2luKTsNCj4gwqB9DQo+IMKgDQo+IC1zdGF0aWMgdm9pZCBpbnRlbF9mcm9udGJ1ZmZlcl9y
ZWYoc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCkNCj4gLXsNCj4gLQlpbnRlbF9wYXJl
bnRfZnJvbnRidWZmZXJfcmVmKGZyb250LT5kaXNwbGF5LCBmcm9udCk7DQo+IC19DQo+IC0NCj4g
wqBzdGF0aWMgdm9pZCBpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaF93b3JrKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAqZnJvbnQg
PQ0KPiDCoAkJY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciwNCj4g
Zmx1c2hfd29yayk7DQo+IMKgDQo+IMKgCWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKGZyb250LCBP
UklHSU5fRElSVFlGQik7DQo+IC0JaW50ZWxfZnJvbnRidWZmZXJfcHV0KGZyb250KTsNCj4gKwlp
bnRlbF9wYXJlbnRfZnJvbnRidWZmZXJfcHV0KGZyb250LT5kaXNwbGF5LCBmcm9udCk7DQo+IMKg
fQ0KPiDCoA0KPiDCoC8qKg0KPiBAQCAtMTkwLDkgKzE4NSw5IEBAIHZvaWQgaW50ZWxfZnJvbnRi
dWZmZXJfcXVldWVfZmx1c2goc3RydWN0DQo+IGludGVsX2Zyb250YnVmZmVyICpmcm9udCkNCj4g
wqAJaWYgKCFmcm9udCkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gLQlpbnRlbF9mcm9udGJ1ZmZl
cl9yZWYoZnJvbnQpOw0KPiArCWludGVsX3BhcmVudF9mcm9udGJ1ZmZlcl9yZWYoZnJvbnQtPmRp
c3BsYXksIGZyb250KTsNCj4gwqAJaWYgKCFzY2hlZHVsZV93b3JrKCZmcm9udC0+Zmx1c2hfd29y
aykpDQo+IC0JCWludGVsX2Zyb250YnVmZmVyX3B1dChmcm9udCk7DQo+ICsJCWludGVsX3BhcmVu
dF9mcm9udGJ1ZmZlcl9wdXQoZnJvbnQtPmRpc3BsYXksIGZyb250KTsNCj4gwqB9DQo+IMKgDQo+
IMKgdm9pZCBpbnRlbF9mcm9udGJ1ZmZlcl9pbml0KHN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAq
ZnJvbnQsIHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkcm0pDQo+IEBAIC0yMDcsMTggKzIwMiw2IEBA
IHZvaWQgaW50ZWxfZnJvbnRidWZmZXJfZmluaShzdHJ1Y3QNCj4gaW50ZWxfZnJvbnRidWZmZXIg
KmZyb250KQ0KPiDCoAlkcm1fV0FSTl9PTihmcm9udC0+ZGlzcGxheS0+ZHJtLCBhdG9taWNfcmVh
ZCgmZnJvbnQtPmJpdHMpKTsNCj4gwqB9DQo+IMKgDQo+IC1zdHJ1Y3QgaW50ZWxfZnJvbnRidWZm
ZXIgKmludGVsX2Zyb250YnVmZmVyX2dldChzdHJ1Y3QNCj4gZHJtX2dlbV9vYmplY3QgKm9iaikN
Cj4gLXsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3Bs
YXkob2JqLT5kZXYpOw0KPiAtDQo+IC0JcmV0dXJuIGludGVsX3BhcmVudF9mcm9udGJ1ZmZlcl9n
ZXQoZGlzcGxheSwgb2JqKTsNCj4gLX0NCj4gLQ0KPiAtdm9pZCBpbnRlbF9mcm9udGJ1ZmZlcl9w
dXQoc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCkNCj4gLXsNCj4gLQlpbnRlbF9wYXJl
bnRfZnJvbnRidWZmZXJfcHV0KGZyb250LT5kaXNwbGF5LCBmcm9udCk7DQo+IC19DQo+IC0NCj4g
wqAvKioNCj4gwqAgKiBpbnRlbF9mcm9udGJ1ZmZlcl90cmFjayAtIHVwZGF0ZSBmcm9udGJ1ZmZl
ciB0cmFja2luZw0KPiDCoCAqIEBvbGQ6IGN1cnJlbnQgYnVmZmVyIGZvciB0aGUgZnJvbnRidWZm
ZXIgc2xvdHMNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZnJvbnRidWZmZXIuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZnJvbnRidWZmZXIuaA0KPiBpbmRleCAyMjY3N2FjYjRjMDYuLmM5YTIyYjZjY2ZkNiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIu
aA0KPiBAQCAtNjYsMTEgKzY2LDYgQEAgc3RydWN0IGludGVsX2Zyb250YnVmZmVyIHsNCj4gwqB2
b2lkIGludGVsX2Zyb250YnVmZmVyX2ZsaXAoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXks
DQo+IMKgCQkJwqDCoMKgIHVuc2lnbmVkIGZyb250YnVmZmVyX2JpdHMpOw0KPiDCoA0KPiAtdm9p
ZCBpbnRlbF9mcm9udGJ1ZmZlcl9wdXQoc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCk7
DQo+IC0NCj4gLXN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAqDQo+IC1pbnRlbF9mcm9udGJ1ZmZl
cl9nZXQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopOw0KPiAtDQo+IMKgdm9pZCBfX2ludGVs
X2ZiX2ludmFsaWRhdGUoc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCwNCj4gwqAJCQnC
oMKgIGVudW0gZmJfb3Bfb3JpZ2luIG9yaWdpbiwNCj4gwqAJCQnCoMKgIHVuc2lnbmVkIGludCBm
cm9udGJ1ZmZlcl9iaXRzKTsNCg0K
