Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D329849317
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 05:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BAC10E038;
	Mon,  5 Feb 2024 04:54:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k7Sz2vDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F2510E035
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 04:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707108882; x=1738644882;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nx/fep0h1bJ2ymAglYLCYXcA0WjXkV3+qA0o5Hw2A9o=;
 b=k7Sz2vDjQBojA/2zGTYACx1MTW8sKQY0gveu0z7vSTagNtsL8r/+NCbm
 x4Gg/88yQje83MHK8OYotMPlEabX+1YewBgMODfQ8vTHmTsx7wiMrb96G
 2dkuIS2FMygXWBgtiL+x5OIFW9GEdxgl6l3bmYyfyr8Uz8fxIDthIFSnN
 q/TxBszVa0P0kaa0TYBNpc813oysp612jT9ZWTFeY51dsMxvGpClX6z0F
 UxaBlSRyVBw3kqAuYXAA2ycK1XI8WxiZibf0jIK5V3DYe7erX8Sxc1dtM
 R7C3SHri/UQRcyTI5QjkUqS1WbF4YNd8mpezPAMZPqxPl/GzaeLxxyTsk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="4247068"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="4247068"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 20:54:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5224220"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2024 20:54:42 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 20:54:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 4 Feb 2024 20:54:40 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 4 Feb 2024 20:54:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNKMvYbVl0f6gwbc9c3LWmmS1KmqdKSp3hP7QPjTNlvjzfNYt1U0RoIoly+AKQ5sf130K8vqx5JC853SfjJBFhpA3FnHHBuT4pKEJybTcdH7ziUSREIfiBsba3xaYcFrD/ItFgYPOYjKIuC2zjjjgHWiD6kLx25/pCIDgCjv1YnyI5lkKr4MWMjZxR6Oe/qGk+xoHNhD6YIra1N+6SAHZWCgR2iqlROW58K1dEh97wVCev12UnLtjnDzDUBL4gXa0pherUd2cYt5DL7nhl7oD3ehUqoJw4ZH4SXp0Mc+o+umBsi0/6YLCPaQYytiWXOaaR/c1XykuCr/rq4E5jPf9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nx/fep0h1bJ2ymAglYLCYXcA0WjXkV3+qA0o5Hw2A9o=;
 b=b74D0TfNCxivshMFd7k9zUjctIe+nzoTlfK+MNYWMvQotHO53DWdQQEUeAdOCVYWTjCR7+sPPzcDs88QPc/YwxTHqfYUZu3gC1VHFfKIqVQyDWPTK3ywPqZu2WRBNap+j16Jz5qb9AHfud7GDZm8WIClorC9QRHxBAMlKGWRHGw4wnZ2BeQFqJrCzVw0ORNYiU+W0q2S6TUB+cRKHCcBddUeZsna7QOFHTDTILkOgbWJIjIjc2cErsnPCzKEZ4rMnEjlPMJpGT7mOMPZmdwxQ9svKDq1LG+ImT1tgouLE5eA+GqckYbrkW+rpo/ITywsRkEEkRdiwNnsoKPjr5R+Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 04:54:38 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 04:54:38 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel
 replay as well
Thread-Topic: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel
 replay as well
Thread-Index: AQHaSr/TTGKvHcIFFUuFxXyaLpxalLD2xd1ggAAF6oCABH1PcA==
Date: Mon, 5 Feb 2024 04:54:37 +0000
Message-ID: <PH7PR11MB598126833B0E4E01644DA7EAF9472@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-7-jouni.hogander@intel.com>
 <PH7PR11MB5981C75A1E5E64B3FC5C5374F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
 <7e914a8c0121376c601a3bbda5d1f3e7439cbbdb.camel@intel.com>
In-Reply-To: <7e914a8c0121376c601a3bbda5d1f3e7439cbbdb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: ccf9bbf8-1a1e-4505-7a7c-08dc26068e62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q+nPDxnePan7ezYBWRwR7cdMRpSI98aoplgxKhHQNDZfClGLij5mFJDK6LAYvMQzgCcXF5PXaaUxba+3BwHIg3qAoIWpwfnM0/KMjcpcbjxY5RqWTJETjf9IvPFh9SoH62ip3NOT8SXuiYre7L2Uuer1XGtXUz2Ub0m0fCmf/YEzVa9rXSFsmlN3pNXqSmdlBqvmyBIwUfe+I1NKDViHjMQ+3na9QV/V7mSqftI+MeWN0FuF74nqgY796eXGEKj38pSeFnWz+Cry2fDEXLATuwyU0+Qy09jOXh6fvh+GP4+TUQ+oQJllOFPnsTrKrozO1Wm1MDCnngxYQO0DM0gyCy6eYNzkq4gqrchWH+6I3UTlBAL8eGur06PR1fiEMqJHVhdGzFP3TopRjr80gut3HtBKsy7TMyTy+nIQIffXLjjVrIMehy5gFIeSppecpH81AkWJm2mmx5pk239MCeO9bmIf0XAThmT1zTSUovLZ0cJOPtJwIVLcqoJOPU1/Dcw6GAi1+9jMjknNUB5TFaejOnp5qM44s94B6KYAypNTcpBrZdTjw2gy8DFZ25G24l3iA6Yk2lobHsHXQCHUzixp8LhTV5vNffTwgpClKeuxd/eSkm9MU565YuSQlyd1SRhI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(366004)(396003)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38070700009)(41300700001)(55016003)(316002)(110136005)(52536014)(66946007)(64756008)(76116006)(66476007)(66446008)(66556008)(5660300002)(8936002)(8676002)(478600001)(82960400001)(33656002)(86362001)(66574015)(38100700002)(2906002)(6506007)(71200400001)(83380400001)(53546011)(7696005)(122000001)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0ZMNGhrV1diOFAzT1VXZjNlYU94VHNNS1VlWGxDUjJtbndIL0hwWWI5eUM0?=
 =?utf-8?B?SFJsQ1VDUjV2NEFWTTMzWFExZERNdVhzWFZidE15M0VRN3BReVlPM1RjL1Bx?=
 =?utf-8?B?aVZEQktzeC9aR2RUdUM2VVBTT2l4cDdkZlIyM3dBRkl3UGZKaTVod09yYzFI?=
 =?utf-8?B?QkJXQ1ZkY0pFdXpTL3ZVVStWZ1UySkhwWGpieHNYb0pJbzRXbkJFWER3eWxj?=
 =?utf-8?B?aXpWZGZCQm04eUNMUTBTTmJiUUFrRlZERkQ5UFA0M1FiRnVmTnlsRk4xa3I4?=
 =?utf-8?B?TnRJdUFnRm1pbW4xREo5YjIxV2FYcGRVb2k1S29HSE40SkdjMUFPSGYva2Vy?=
 =?utf-8?B?V2YwVk5BSkZmOEdITExCb3FGZnR2MXRyUHNmT2x3QXppM0lHVFY2bGdPNHdK?=
 =?utf-8?B?RDZuUU9sSGk1QXl2cFpjK0t5WWlUSG05M2tFMUdhWnhDaldOejluL0FWMEhP?=
 =?utf-8?B?QWZaVlhkc2VFbEU5QTZwK2g4UWR2ZFFoeE9hM29OOTZBbHBBWFRBNWducXRz?=
 =?utf-8?B?NW0weFhiaVcwTktWVHRRQU5ML0h2NHQ3cHIyMzVPWXNMUlh6NG8rQ3ByeFN0?=
 =?utf-8?B?c0IvQ1h3TDlIMUxXWDBzNXp1TVdqY0o3VVE2Y1VKYVRtTmhVcGdmd2h4aHly?=
 =?utf-8?B?aUljeHdzMWdKQTdvR05PV0hGMHFuS3FLVytRYkx4OFg2ZWlxTEhzWXZuMExC?=
 =?utf-8?B?TjMrZllrY1RvTkxkbzk5U2FZVSsrR1kxU3J2VlNDaWRHN2RXQlZZMXNnTXhJ?=
 =?utf-8?B?Vi90bWNhWUNiOTdndTlSSkxSMXRWV2szT0RlWmdOTGhzRGN2V29KRlQ5Ykp5?=
 =?utf-8?B?SGVJa3Y5dVF5S2VUbFEyTGhBdG5QYlN6UzBoQjNZSlN5anNDRHl0c2tOMlhy?=
 =?utf-8?B?SEZVSE9LZ01UMkhHakVqWkdmYXluZUNZM1VwYVJEWCtOYjBYUjhXLzBkYzdz?=
 =?utf-8?B?RkFVRGJDZ0ZHdm5yWldORTJlVEJFYmxuNnNPNGJweGVSdWo3c2ZPQ1dpVkRQ?=
 =?utf-8?B?WWJKWjFMczFFVFR5SklGUTFrYWRkcVNrVWZNZ242aEhaaW13djRsdGtPUDMv?=
 =?utf-8?B?T0RVMHcwNG1JSFB4elNjMjNLQ3dLY1pWalpReTFnUTNJeWtkYk5UaTI4YXNP?=
 =?utf-8?B?KzREeXd1L2VnTkJkY1FjSWdOM1dqUjZUeHRhc2d3MGNrdDVtcVkzeGsrRmhC?=
 =?utf-8?B?M3NqUmRaMGVhUWJWS2RxeXVxTDVYWDFRNm8xT29QQXRPT2FoUXlXTHFyc1NS?=
 =?utf-8?B?V3djVDVFbCs5MWx3T3Q0NVRiNUlaTDV4MTk1ZytOZkVUakdZWHhoK3ZYMHdo?=
 =?utf-8?B?MnJhK0s4Mm5jNXFIS0R2NmJuYTJoQzlyTysrTFVpVisxUUZPU2lQUGtpOE5S?=
 =?utf-8?B?MWg3UEN3ZjA5K2FvTFh5WmYyNzVsVmU0ZmlEL05temZRaUVYamUrQjdaUXhh?=
 =?utf-8?B?T3pXeFJCMEZZMlUzMm5EL2M5aEhnNGttVHNxQmk1ZkJUZkpLL1EvS1VmbW4v?=
 =?utf-8?B?cHA4UE5VQ3pWRU5MOWRMZThGeWt6YThieXE4UDRxUDB0ZHpjVzgrdlRoUVRU?=
 =?utf-8?B?ZGtCQmhSTSt3YTN6K1VuVDlkOGVyMjNGWTBlWWpyeXpBYVdybTZFTnh0RUNZ?=
 =?utf-8?B?QjdxakV5Ukw2eUR5ajFTallGZnVCVEdmYVhzUGprMWdmK0hwb1ZjSy85Tng4?=
 =?utf-8?B?UTFEZHNvTU01ZHlyMkxBcjQzL2RWNzVJVE15UjlYYUJieUsyZ3luS3RpTkMx?=
 =?utf-8?B?MlhvaXNVeG80bkc3M1hmUWVmc2I1VDI1Vm44Y01oOHNMVnNPTE5Rd1Y1QmJP?=
 =?utf-8?B?Vm5IbU1IOURGSFA5amtBaFVvVEIzdUYrQ1J1RzhORC90YXgzMVR5SndWSHh2?=
 =?utf-8?B?QjdQNlplYVJWOWY2cmpienAzbHQvMmgzOXFURVl1c0ZHL0pHTWNhUU93dlh5?=
 =?utf-8?B?SU9wKzh1V2hVbUt1dWYzdlBxVGxyMXZua01tYlNVV012ZlpCbzU2cjJJU1JN?=
 =?utf-8?B?NzhYbXRYcXRVVFRDT1g3YndlWTkvdHJzYW02dHEva0NtRUdaeGZnUytyTlE1?=
 =?utf-8?B?QUJJT3EwZ0pnNVo5RXV2akRNcGEwa2U3ZnBLbDFkcCtMbXpPRTlMTWIydWJD?=
 =?utf-8?B?MUUrTTlRZU1yUnNRbEozU3VWVnJ1SDVzeUppRkhrUmVXTld5T1RUU09TeUND?=
 =?utf-8?Q?IGM7KsButzKxRK8fd8L/I6svdhBPq1FWvDKFtxf0ruoO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccf9bbf8-1a1e-4505-7a7c-08dc26068e62
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 04:54:37.9969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L4Dl17QoTbMB2dgDJtmccDdNiyJ/Rlee1dJMyb8vv6kqCzPuNnrrWXrQwTHaiv+im06INWp7YDG9VtMKPw9TNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMiwg
MjAyNCAxOjUwIFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTog
W1BBVENIIHYzIDA2LzIxXSBkcm0vaTkxNS9wc3I6IENoZWNrIHBvc3NpYmxlIGVycm9ycyBmb3Ig
cGFuZWwNCj4gcmVwbGF5IGFzIHdlbGwNCj4gDQo+IE9uIEZyaSwgMjAyNC0wMi0wMiBhdCAwODox
MCArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDE5LCAyMDI0IDM6
NDAgUE0NCj4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBD
YzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpv
dW5pDQo+ID4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogW1BB
VENIIHYzIDA2LzIxXSBkcm0vaTkxNS9wc3I6IENoZWNrIHBvc3NpYmxlIGVycm9ycyBmb3INCj4g
PiA+IHBhbmVsIHJlcGxheSBhcyB3ZWxsDQo+ID4gPg0KPiA+ID4gT24gSFBEIGludGVycnVwdCB3
ZSB3YW50IHRvIGNoZWNrIGlmIHRoZSByZWFzb24gZm9yIEhQRCB3YXMgc29tZQ0KPiA+ID4gcGFu
ZWwgcmVwbGF5IGVycm9yIGRldGVjdGVkIGJ5IG1vbml0b3IvcGFuZWwuIFRoaXMgaXMgYWxyZWFk
eSBkb25lDQo+ID4gPiBmb3IgUFNSLiBXZSB3YW50IHRvIGRvIHRoaXMgZm9yIHBhbmVsIHJlcGxh
eSBhcyB3ZWxsLiBNb2RpZnkNCj4gPiA+IGludGVsX3Bzcl9zaG9ydF9wdWxzZSB0byBzdXBwb3J0
IHBhbmVsIHJlcGxheSBhcyB3ZWxsLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMSArKysrKysrKysr
KysrKysrLS0tLQ0KPiA+ID4gLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCA4OTNjNzJlYThjZjEuLjZkN2Vm
NzQyMDFkMiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+IEBAIC0yOTU5LDYgKzI5NTksMTMgQEAgc3RhdGljIHZvaWQNCj4gPiA+
IHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soc3RydWN0DQo+ID4gPiBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+ID4g
Ky8qDQo+ID4gPiArICogT24gY29tbW9uIGJpdHM6DQo+ID4gPiArICogRFBfUFNSX1JGQl9TVE9S
QUdFX0VSUk9SID09DQo+ID4gPiBEUF9QQU5FTF9SRVBMQVlfUkZCX1NUT1JBR0VfRVJST1INCj4g
PiA+ICsgKiBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SID09DQo+ID4gPiArRFBf
UEFORUxfUkVQTEFZX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJPUg0KPiA+ID4gKyAqIERQX1BT
Ul9MSU5LX0NSQ19FUlJPUiA9PSBEUF9QQU5FTF9SRVBMQVlfTElOS19DUkNfRVJST1INCj4gPiA+
ICsgKiB0aGlzIGZ1bmN0aW9uIGlzIHJlbHlpbmcgb24gUFNSIGRlZmluaXRpb25zwqAgKi8NCj4g
PiA+IMKgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCnCoCB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7IEBADQo+ID4gPiAtDQo+ID4gPiAyOTY4LDcg
KzI5NzUsNyBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHANCj4g
PiA+ICppbnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIERQX1BTUl9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IgfA0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBf
UFNSX0xJTktfQ1JDX0VSUk9SOw0KPiA+ID4NCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmICghQ0FO
X1BTUihpbnRlbF9kcCkpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIUNBTl9QU1IoaW50ZWxf
ZHApICYmICFDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkNCj4gPg0KPiA+IEkgZmVlbCBoZXJl
IHRoZSBjb25kaXRpb24gY2hlY2sgd291bGQgYmU6DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmICgh
KENBTl9QU1IoaW50ZWxfZHApIHx8IENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSkNCj4gDQo+
IFRoaXMgaXMgbWF0dGVyIG9mIHRhc3RlLiBSZWNlaXZlZCBzb21lIHRpbWUgYWdvIG9wcG9zaW5n
IGNvbW1lbnQuIEkgZG9uJ3QNCj4gaGF2ZSBzdHJvbmcgb3BpbmlvbiBvbiB0aGlzLiBJLmUgSSBj
YW4gY2hhbmdlIGl0Lg0KPiANCj4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm47DQo+ID4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBz
ci0+bG9jayk7DQo+ID4gPiBAQCAtMjk4MiwxMiArMjk4OSwxNCBAQCB2b2lkIGludGVsX3Bzcl9z
aG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCkNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBleGl0Ow0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoH0NCj4gPiA+DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoc3RhdHVzID09IERQX1BTUl9T
SU5LX0lOVEVSTkFMX0VSUk9SIHx8IChlcnJvcl9zdGF0dXMgJg0KPiA+ID4gZXJyb3JzKSkgew0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCghcHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCAmJiBz
dGF0dXMgPT0NCj4gPiA+IERQX1BTUl9TSU5LX0lOVEVSTkFMX0VSUk9SKSB8fA0KPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIChlcnJvcl9zdGF0dXMgJiBlcnJvcnMpKSB7DQo+ID4NCj4gPiBU
aGlzIHdpbGwgY2hlY2sgb25seSBmb3IgcHNyLCBydD8gLi4gVGhlIGZsYWcgcGFuZWxfcmVwbGF5
X2VuYWJsZWQNCj4gPiB3aWxsIGJlIHRydWUgYW5kIHdpbGwgbm90IGNoZWNrIGZvciBlcnJvciBz
dGF0dXMgZm9yIHBhbmVsLXJlcGxheS4NCj4gDQo+IEkgdGhpbmsgRFBfUFNSX1NJTktfSU5URVJO
QUxfRVJST1IgaXMgb25seSBpbiBQU1Igc3RhdHVzIHJlZ2lzdGVyLg0KPiBlcnJvcl9zdGF0dXMg
Yml0cyBhcmUgZm9yIGJvdGggYW5kIHRoZXkgYXJlIHN0aWxsIGNoZWNrZWQuDQo+IA0KPiA+DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9kaXNhYmxlX2xv
Y2tlZChpbnRlbF9kcCk7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBz
ci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4g
PiA+DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoc3RhdHVzID09IERQX1BTUl9TSU5LX0lOVEVS
TkFMX0VSUk9SICYmICFlcnJvcl9zdGF0dXMpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIXBz
ci0+cGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYgc3RhdHVzID09DQo+ID4gPiBEUF9QU1JfU0lOS19J
TlRFUk5BTF9FUlJPUiAmJg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgICFlcnJvcl9zdGF0
dXMpDQo+ID4NCj4gPiBTYW1lIGRvdWJ0IGFzIGFib3ZlLg0KPiANCj4gRFBfUFNSX1NJTktfSU5U
RVJOQUxfRVJST1IgZG9lc24ndCBleGlzdCBpbiBQYW5lbCBSZXBsYXkgc3RhdHVzIHJlZ2lzdGVy
Lg0KPiBJLmUuIGlmIHBhbmVsIHJlcGxheSBpcyBlbmFibGVkIGRvIG5vdCBjaGVjayBmdXJ0aGVy
IGZvciBpbnRlcm5hbCBlcnJvciBvciBlcnJvcg0KPiBzdGF0dXMgYml0cy4NCg0KT2suIExHVE0u
DQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoN
Cj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywN
Cj4gPiBBbmltZXNoDQo+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlBTUiBzaW5rIGludGVybmFsIGVycm9y
LCBkaXNhYmxpbmcNCj4gPiA+IFBTUlxuIik7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGVy
cm9yX3N0YXR1cyAmIERQX1BTUl9SRkJfU1RPUkFHRV9FUlJPUikgQEAgLTMwMDcsOA0KPiA+ID4g
KzMwMTYsMTAgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBjbGVhciBzdGF0dXMgcmVnaXN0ZXIg
Ki8NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5h
dXgsIERQX1BTUl9FUlJPUl9TVEFUVVMsDQo+ID4gPiBlcnJvcl9zdGF0dXMpOw0KPiA+ID4NCj4g
PiA+IC3CoMKgwqDCoMKgwqDCoHBzcl9hbHBtX2NoZWNrKGludGVsX2RwKTsNCj4gPiA+IC3CoMKg
wqDCoMKgwqDCoHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soaW50ZWxfZHApOw0KPiA+ID4g
K8KgwqDCoMKgwqDCoMKgaWYgKCFwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHNyX2FscG1fY2hlY2soaW50ZWxfZHApOw0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBzcl9jYXBhYmlsaXR5X2NoYW5n
ZWRfY2hlY2soaW50ZWxfZHApOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ID4NCj4gPiA+
IMKgZXhpdDoNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJnBzci0+bG9jayk7
DQo+ID4gPiAtLQ0KPiA+ID4gMi4zNC4xDQo+ID4NCg0K
