Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GeoMJRAmoGk6fwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:53:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E683C1A49D1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC9610E8DA;
	Thu, 26 Feb 2026 10:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFhkpPw5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A28910E8D6;
 Thu, 26 Feb 2026 10:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772103181; x=1803639181;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wVMoWRBmZJPWFanDra7iMhdSzSL5AAGmLQy9YkWq24s=;
 b=LFhkpPw5rDZdmO3fJBnZrNJ//CffbvyhCfvGGLxbWDqvoPy8lMdxXepg
 caP3Yycc2r0rvbiClQ3jaoEE3zOl8kPhd95Sd2t/LlwRgsgBuIRstEgaT
 mNEcRwbfit90CP0Jk9srWoQ2pGoOHwPKVo2/NlBXorVjP4UQQ2Kwlprfp
 SS8L04VwZt3bZW1TJsxGda7IUg6fuvfu2XI9Qx7Orh1/WgF9ak3aJDcnO
 T56aVrAE2p0EGJ9V0wBvy9dofuQK4PngRJdO4gZsTNDbWdFALRgjNyAYv
 SkjliBNvRHKNgGE3ByuzqyEqxEMw/qTHISbZnOa1Cd7zfvotzvVzAhtWI A==;
X-CSE-ConnectionGUID: dghVNj5JTZ2kk2qlDDZRYQ==
X-CSE-MsgGUID: G4u1Sf3eRjq07a8NJmLfaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="95776567"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="95776567"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:53:01 -0800
X-CSE-ConnectionGUID: T3yIL2htT4a2veL4Fx6jwQ==
X-CSE-MsgGUID: WZ9BwhuvTXWq/F+q27W9Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="239521325"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:53:00 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:53:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 02:53:00 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:53:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nj6Hfo1oZxqIhLDGHX3FodnhRcNz6R2wmLbmwoYSGLWOiQ9v+Iyl+JWLvWMu8wdCTb/DFMk1J6CiiqmcybVZuOUg1HG6BIi678DW8c6DQzKJ1OAwgema9xFfDZRsYRKooYTSbAxfCm9dnpz7iUwpQR6XFIVO51ZUmArfdmC4xDEXvxICojZDRoOgzpaAhRDGolCN+ZomU0KC0KUf9uZg5iXBl+tc6YtDJbdKZxJWQeM7yLdB3KaTrA0Uij4rMkf1BCoWGa1X2jglYIeiGMalGeMQUUB9P6qK4wC1TM5ijQ+9FBPBunfaikYPNgpO5yPw376BonomfwXynGpEM5VSkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVMoWRBmZJPWFanDra7iMhdSzSL5AAGmLQy9YkWq24s=;
 b=I1B4vQ7tKYXdonZPcYtVkDv0BzCQ8/T3Fx9H2bTQfU+IhWMg/nphdSDyJKWxeOLw6UPr9aWS2m190P6kE439gTnihI1iiv5OpJig62JF0QmmT5NSGBofLOYa1OuY3NpM16sybalv1t2a8xvistykrJBNSTgoAY0DdazmlrwBSrk0+bYmWy/IHYEOHGiAMiMPzwzFCalSuASaA9x3PEGQ1aIyWoyvCnb4w0glGzNCQB7LaMzGjPO79eENObQKylC9SSBU2jgANJq/WGYR9z/Mz1vppSSXMYErsOQPE/WKmniLLStQoWQhoXLEsDEGltXFq4YcoMXjWypRmqVVw2ItAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV2PR11MB9597.namprd11.prod.outlook.com (2603:10b6:408:379::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 10:52:58 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 10:52:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/alpm: ALPM disable fixes
Thread-Topic: [PATCH] drm/i915/alpm: ALPM disable fixes
Thread-Index: AQHcm+jC/MSfd/PBvUasqg47LwxfJbWUyEqAgAAcBoA=
Date: Thu, 26 Feb 2026 10:52:58 +0000
Message-ID: <1c38e0738cafbf4fb1bd351553d29c36d4b57215.camel@intel.com>
References: <20260212062731.397801-1-jouni.hogander@intel.com>
 <aaAOhwxyLDggl08O@intel.com>
In-Reply-To: <aaAOhwxyLDggl08O@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV2PR11MB9597:EE_
x-ms-office365-filtering-correlation-id: 79ba8450-c5be-49f9-5fab-08de7525347d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: e2PFK1mf7QfwEY/XbLjgTnYGbBYcEFZBmBe/SEhJwCg2dJDHoMZZJoXPE5gpEmC0fJo9MY9QTGX/YfdR6lNwky7odotlzKBKKzJZS5WWwJ7f6mdfE7XJH/40pHlG+s8I+7OqriL4uAHTkP7D7m25OJMD2/UgD922z6ELRTs6KY3JkNjAPURd2uS6YnaF6MK3PRiT1pjaMz9Oy+sCw53x5sBZ+HOfa2zXdfxrf1FpUz2RAU7hR1Gt7ttaCMswrI/IIaUTKN0Sq4P4EJaXNXcn2DEtq79j4zNaDapT2MxGteo6P1vd6gj4vW2nnRv2KyqydNBoO7a36lUJsuNus3L7jiDaGa+KwFcggpXqY4rx6KdRlB9NUMMRjpAxobrAjoHybk5S4+Yrj5N4amPQEaHsU77JqJI+X/FJUyTmQa5zwhaSVuw575h1J/kTw+2JqSRZ6HHCJ2HkNHbv1BMqH/Xrzi3Qm7QGvAxzRBTqScjpRPKi/HXeF882Rfu6QFh7Mjgb+eZ2XvhzQ0NJq+oEsfCS9AeeA92riaF6bv3Y/RqLB3GN7kN3iBTWeQohtTFZiz7H3hRKag4Zu7UNdZsDooZDCs5sXKajZ3Ni1753FGWQAl4ifJq/+Z0Q9IGQzfD8ZamqwCOyRwtVy0ZZDHqjHjsjrRn7ACgSbhRiMKwoOtNchoSXx+gy4wyqQQZ21BqldgEsEM4yRg7QtWX4OCL4iENXHdXIHGz1Qph3zJx/MmxOkcc7BSjrJtuEDWg6+jRaPdB7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODhvY0dKTWFmOWp1TWwrRXRIZFBMYm1GVkQ4TFRsWlk0SUdGTjZvRURYQXlD?=
 =?utf-8?B?N0doaEZ3cHZsZjNrNjZzamNrcVhlZGtJd05JVFVVaDNiTmJpbnEwaG5iVlB3?=
 =?utf-8?B?a0ZPSWJJYlZ2RFZNcVBiZEpreEIyQ1JLR0crVkp6ckNVb21vSCtReUFxZnZU?=
 =?utf-8?B?MDhXckJhd0hpTThPT0dWWGw3TWdQNitLL0JjZ2IzajNjemlOaDRTdlMvL21M?=
 =?utf-8?B?aWQxb1lIdHFEWmlWMHNPWUdINWsybFRiTE51OUxid1F1L1R1L3o3RUtUdlpB?=
 =?utf-8?B?UURmazFJb2JlUEd5Uld3VzNkclorRHhRcGFrUlExUXptVDhia1RndE9ZZmh3?=
 =?utf-8?B?WjRjalJWOFBEUmNxcENrTW85T0JLY0tPVUkrUnZqb1QzWm1sYWhnU3hqdmJD?=
 =?utf-8?B?U1NaeG9TL1ZhYWp0TW9BREliQlNOUW9PZFA2cG9tQ0svQUJ4MXNYZzFhTG96?=
 =?utf-8?B?MzlDSnhyenlzYnAyRiswcHFpejZiMy9kM00rbkFSdDlSTUZxby9KNHRzS3Zj?=
 =?utf-8?B?ZTV4T0Qwc1lmMHZtTlliamo3dXQreWw3YkZWSW01QUlGcWhsQUhiRXQwYmk1?=
 =?utf-8?B?MXdlWkVNWFJseGVpcEdqWmxJalRnNlV4NXZqM25iYTMrYVRKRFluMDFMTEJq?=
 =?utf-8?B?b1dhVVd4UTkvWDJRbTdUN1RGRDJUblMwZmloQWRPK2k1L1Q1TzFkaTJ2N2o5?=
 =?utf-8?B?SjI2V2Ryc3IwR1I3ZFdwdi9BdlhDWW9kVHBRelAyMGYvMG1KbDVGRDg5VmhV?=
 =?utf-8?B?WTFNT2l6YjZTZ3R3ejVwc25tcG9tYWpneFRjOVlONnJSSXpJVlY4aHNxdDll?=
 =?utf-8?B?bmN5d1BXVExGY3k2S2FtS2NBTXl2UlV1ck4xNkpCRFZIeXZnOVBOS0FLSEZ2?=
 =?utf-8?B?a3lrdEhnS0ZsalZ2YXgxMjZMQzFnOFZ0RDVqbk02ak4yekcvajZSZGJjWUJl?=
 =?utf-8?B?VTlFanE5bzdtRmszWlM4T0NaaXIvbVQzSzIveS84VXNBWUk4WmxNTW5rOWpS?=
 =?utf-8?B?ZHh2aDFJUVhLaloxeVRWMWYySzV0b1R3R2hsbE9ZVjNUYlYvU01hQk5SbGNH?=
 =?utf-8?B?WnhwMWtJdm9oNzM1Y3kzclR6TUY0THNMRVlkdnJpZ2pscHIvR2RWZUdCbDlP?=
 =?utf-8?B?WGo3c3JHWWxhMFJ2Y0hrNDY1QkJMWFNMRHFSckw4c1hYUTFwSnhXSFhXcDMy?=
 =?utf-8?B?UTRBaS9TNnJQY3dQeG9ZVXczdG1NaHJ3eS9ZNkdGZ3lSclJxcXRkVkx5K25w?=
 =?utf-8?B?UnJUbU9JRU83OWh0ZC9qWllXZ0d3MkVXcUV2Uy9TVWkrN25kUDJtaGZ1Sk0w?=
 =?utf-8?B?THFVNVNmSGxlQmdMWFNIVXlHVzF3dTJiQmhncS80LzQzRGN5Mk0xUktKUXFv?=
 =?utf-8?B?TitzQmFRZmhlcldIWENPUE5xcjV5OURXSWVUWUNBeEdET2RjYVF6T1hLdnpI?=
 =?utf-8?B?bHZWbGQ2aGhnSmZsbXR6R2N1cVd4SFU3aDdybERGU3pRdC9NQWFpNVkyRUFR?=
 =?utf-8?B?NzFZQlI3VEcxRTA5d01HVUFkOWpMOGVWQlMyQjZDWHNsT3lpcGpha2h6Zlky?=
 =?utf-8?B?cHlINnFneEgyV2s4aGszU2FYamZWV3Fxb1JmaUhqWXNWOGUrZ1NEbTFtUWVO?=
 =?utf-8?B?K0N1ZUVYUDU0ZHZzRE1xWStBaTFLUlVIbXpRMGRTaVFKQkRjbVBSMWhvVjZO?=
 =?utf-8?B?OTN5WU1oVVJhOTBRN2ZnQVVQeWtFTEs2UzA3aVpweVdpbFFCWCtjd2tkanRp?=
 =?utf-8?B?K1FIVVBhRmt5K1FBdWpySDUvRGtCNnUxZVFoK1Yyb3c5bUlna2I5Yk5FYlpp?=
 =?utf-8?B?N2RBUFlIS2wydkE0bXN2amlHQStROVQyelFSd0tjS1ZVVUp3MUdhUG1vY2Uv?=
 =?utf-8?B?RmF4aVNvUHlYT2w4dU0xakpQODBaQktxOHd5TXZvSzdlUExTS3pUVWtzc3ly?=
 =?utf-8?B?SjBEYTkwWCtUTEpXblo4SzB2d2pnMUxrb2ZNUm82QTZyQkZyVFdaK2t6WWpr?=
 =?utf-8?B?ZDJ5Nm4ycjZrN2NRNnFSdTBLTHBpU0lZR1dESytobncwbHN3WW9MWmZ5ZHNG?=
 =?utf-8?B?RlN1bjdXK21yeTI0alAxdUZ5SnhRZFp1STNYR3hZeDdCbEhTWERSd0pXWWpY?=
 =?utf-8?B?TWdNbzVRU3B0RE12bUI2TWdOdSt2bUhOcDdHaThJdUpkcldiYVVydmJVbDJC?=
 =?utf-8?B?c1ZWaHdjcGdGUGVjZUo4RmlybXlRV1h1SnBBY2VoNU1xeWhySVdHNzBjcGpt?=
 =?utf-8?B?azA3VVo2WXBPd2EzL041b3RPVjRPUkpYUjA1TnNwZHZpcDZkZ0NZZEpQMzZ5?=
 =?utf-8?B?VFkwcCtWYU50SmxYUWdTcm1MUndVK0d2MW04RFBRWlpOcU1WakE4eU1xdCtB?=
 =?utf-8?Q?d2qaMekf1y3GkzoP3DYwYs0ULe3QAqtBpueyGo5yI29PH?=
x-ms-exchange-antispam-messagedata-1: X2W0/hjrPTa5qYjLRPyJu2HLh3igCTuiTOk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5ACC959FAFA6604B9A78D1993F59FC1E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ba8450-c5be-49f9-5fab-08de7525347d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 10:52:58.7872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9EznzVWJqniHPkMGp4ZhC1bevvdsF+C+ibUaW0N5jMxtORBcupo/+VE2s6KfTGvENdIsqzsGEsCt74Eq1tHLUwWF88LRR1ueARdPKPM+ElM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB9597
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E683C1A49D1
X-Rspamd-Action: no action

T24gVGh1LCAyMDI2LTAyLTI2IGF0IDExOjEyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRmViIDEyLCAyMDI2IGF0IDA4OjI3OjMxQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBQT1JUX0FMUE1fQ1RMIGlzIHN1cHBvc2VkIHRvIGJlIHdyaXR0ZW4g
b25seSBiZWZvcmUgbGluayB0cmFpbmluZy4NCj4gPiBSZW1vdmUNCj4gPiB3cml0aW5nIGl0IGZy
b20gQUxQTSBkaXNhYmxlLg0KPiA+IA0KPiA+IEFsc28gY2xlYXJpbmcgQUxQTV9DVExfQUxQTV9B
VVhfTEVTU19FTkFCTEUgYW5kIGlzIG5vdCBhYm91dA0KPiA+IGRpc2FibGluZyBBTFBNDQo+ID4g
YnV0IHN3aXRjaGluZyB0byBBVVgtV2FrZSBBTFBNLiBTdG9wIHRvdWNoaW5nIHRoaXMgYml0IG9u
IEFMUE0NCj4gPiBkaXNhYmxlLg0KPiANCj4gVGhlcmUncyBhbm90aGVyIG9wZW4gY29kZWQgdmFy
aWFudCBvZiB0aGlzIGluDQo+IGludGVsX2FscG1fbG9iZl9kaXNhYmxlKCksDQo+IGFuZCB0aGF0
IHRoaW5nIGFsc28gZ2V0cyBwYXNzZWQgdGhlIHdyb25nIGNydGNfc3RhdGUgKG5ldyBpbnN0ZWFk
IG9mDQo+IG9sZCkuDQoNCk9rLCBJIG1pc3NlZCB0aGF0IHBhcnQuIEkgdGhpbmsgd2UgY291bGQg
Y2xlYXIgb25seSBMT0JGIGJpdCBpbg0KaW50ZWxfYWxwbV9sb2JmX2Rpc2FibGUgYW5kIHRoZW4g
c2hhcmUgaW50ZWxfYWxwbV9kaXNhYmxlLg0KDQo+IA0KPiBBbHNvIExPQkYgZW5hYmxlIGlzIG5v
dyBiZWluZyBkb25lIGZyb20gdHdvIHBsYWNlcw0KPiAoaW50ZWxfYWxwbV9sb2JmX2VuYWJsZSgp
DQo+IGFuZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZSgpKS4gSG93IHRob3NlIHR3byBpbnRlcmFj
dCBpcyBhbnlvbmUncw0KPiBndWVzcy4NCg0KTE9CRiB3b250IGJlIGVuYWJsZWQgdmlhIGludGVs
X3Bzcl9lbmFibGVfc291cmNlLiBQU1IgYW5kIExPQkYgYXJlDQptdXR1YWxseSBleGNsdXNpdmUu
IE1heWJlIGl0IHdvdWxkIG1vcmUgY2xlYXIgaWYgTE9CRiBlbmFibGUgYml0IGlzDQp3cml0dGVu
IHNlcGFyYXRlbHkgYW5kIG9ubHkgb3RoZXIgY29uZmlndXJhdGlvbiBpcyBzaGFyZWQgYmV0d2Vl
biBQU1INCmFuZCBMT0JGLiBBbnkgb3RoZXIgc3VnZ2VzdGlvbnM/DQo+IA0KPiA+IA0KPiA+IENs
b3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1
ZXMvNzE1Mw0KPiA+IEZpeGVzOiAxY2NiZjEzNTg2MmIgKCJkcm0vaTkxNS9wc3I6IEVuYWJsZSBB
TFBNIG9uIHNvdXJjZSBzaWRlIGZvcg0KPiA+IGVEUCBQYW5lbCByZXBsYXkiKQ0KPiA+IENjOiBB
bmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiBDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogPHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmc+ICMgdjYuMTArDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDcgKy0tLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBpbmRleCBlMGE0YTU5ZGMw
MjUuLmIzMzM0YmM0ZDBmOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAgLTYwNCwxMiArNjA0LDcgQEAgdm9pZCBpbnRlbF9hbHBt
X2Rpc2FibGUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgCW11dGV4X2xv
Y2soJmludGVsX2RwLT5hbHBtLmxvY2spOw0KPiA+IMKgDQo+ID4gwqAJaW50ZWxfZGVfcm13KGRp
c3BsYXksIEFMUE1fQ1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gPiAtCQnCoMKgwqDC
oCBBTFBNX0NUTF9BTFBNX0VOQUJMRSB8IEFMUE1fQ1RMX0xPQkZfRU5BQkxFIHwNCj4gPiAtCQnC
oMKgwqDCoCBBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7DQo+ID4gLQ0KPiA+IC0J
aW50ZWxfZGVfcm13KGRpc3BsYXksDQo+ID4gLQkJwqDCoMKgwqAgUE9SVF9BTFBNX0NUTChjcHVf
dHJhbnNjb2RlciksDQo+ID4gLQkJwqDCoMKgwqAgUE9SVF9BTFBNX0NUTF9BTFBNX0FVWF9MRVNT
X0VOQUJMRSwgMCk7DQo+ID4gKwkJwqDCoMKgwqAgQUxQTV9DVExfQUxQTV9FTkFCTEUgfCBBTFBN
X0NUTF9MT0JGX0VOQUJMRSwNCj4gPiAwKTsNCj4gPiDCoA0KPiA+IMKgCWRybV9kYmdfa21zKGRp
c3BsYXktPmRybSwgIkRpc2FibGluZyBBTFBNXG4iKTsNCj4gPiDCoAltdXRleF91bmxvY2soJmlu
dGVsX2RwLT5hbHBtLmxvY2spOw0KPiA+IC0tIA0KPiA+IDIuNDMuMA0KPiANCg0K
