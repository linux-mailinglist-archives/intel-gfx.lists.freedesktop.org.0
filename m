Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SwydKaYfI2qWjAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 21:12:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB64364ADD6
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 21:12:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=erfMDVZS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0DB11AAB6;
	Fri,  5 Jun 2026 19:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8005511AAB5;
 Fri,  5 Jun 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780686753; x=1812222753;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZNbiyyH8tWY6kNsWTIhypMuv+k8StIAUZc7ApRsBZUk=;
 b=erfMDVZSRHF75LgpTs7UKf0mhhMnRZg5PfOhcI0gTTPbxh1sDykQcAs3
 XTqCdMA+jU7qk+hOQivykEjZJYNWIo3ChdiYpi1E51qKyDuREnZWMRWFq
 bcrR7LwKSk9FE4/KTefgtSHCADlCX1vrs6OmPEb/Ap67OIsntF8EuWLrW
 7j/Yeqzt3XCTGYjVpuQeStrUfK+bjJGv0W0+o4FNz8jw1dnWjEzT68ktD
 I184FMgha989qHsDlUh9y1M5HjjYRJGo60DiqJz8BEPUpCqp2fj9Yias/
 PJNasPMLj4CeM1x4G7Gbj2LM2wrhkJRBM53s5PljHBXpza7X8W93NJEUD w==;
X-CSE-ConnectionGUID: Jk7NKKHGQv2XiGII1mpJeA==
X-CSE-MsgGUID: enr9VmvTRcKmzDQxYLgx6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81646654"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="81646654"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 12:12:33 -0700
X-CSE-ConnectionGUID: JTL1RXE7TwKleOamnbhqIw==
X-CSE-MsgGUID: kEEKYAV8RpCYx6MdpsXzlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="244973522"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 12:12:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 12:12:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 12:12:32 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 12:12:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwgagQ+Ozi3xhQMT89nj+KuFlCzDruVgFhkR/yiJhGBwNIC09u/asp9ZG9+crLu0sgdTFFKqUO9Jb37TrBstEqMpjSV/Nobr0oSBM9w1XTLQrQHB80hPjebmtBojrPBg9gV9xQXYRozvvmTJjb9MVx24TXKLiLEripV8TjCn/qkRTt5F6xbXHRjweYUc2A1lupR1Y0fMbu98p4iTyBjl/t2rFw5+F41gXGO8ryrXu0BYgbgzUH92Cnao6yL563HAMmueLwOOH/w180SXOvcJwuEUWdYr9da+hyEfl4n0wXSsL0w/RNoHKTgSeQGAcdnRcdi0ibm1D3uMjUGK1MpeNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNbiyyH8tWY6kNsWTIhypMuv+k8StIAUZc7ApRsBZUk=;
 b=nITKcdGzYtodOl9lE7Z/6AuOrjDt9GokN0sR9ZsrM8HuNgcbAEDSOrsvxyfy2a+e7px61LN+Ka6aEBFIBWzbzpMreaJEDpsKiZq4M/UvEvH8tGQX1aCZ1vaZRnooof4HE06c3OWW9LJ4K52bg7uWwgTZSqTEgd9cKKrijmZ2vpDeRKewmKYDgiBRs36pLPScHH9z5btmWOP9Y64t4MLNsjsz0un0LczVjqI6Dfbo53IAllt/HTfhrGiy5MVj3mS4cfHn4bmOEiMREOCanqvvbWX8VGrSuu9uTIlciSxyevrtDHME0/JnkWIaUzyPjdBxDc1GezGwsc26LMjRYPcFng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2717.namprd11.prod.outlook.com (2603:10b6:805:60::32)
 by CO1PR11MB5187.namprd11.prod.outlook.com (2603:10b6:303:94::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 19:12:27 +0000
Received: from SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90]) by SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90%5]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 19:12:26 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Wajdeczko, Michal" <michal.wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Jadav, Raag" <raag.jadav@intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/5] drm/xe/heci: Use xe print functions in xe_heci_gsc.c
Thread-Topic: [PATCH 2/5] drm/xe/heci: Use xe print functions in xe_heci_gsc.c
Thread-Index: AQHc9QUSUmDDVfxdPUqu6KpSdAjEKrYwS+QAgAADVfA=
Date: Fri, 5 Jun 2026 19:12:26 +0000
Message-ID: <SN6PR11MB2717B8ED8C282C795D87DFDEE5112@SN6PR11MB2717.namprd11.prod.outlook.com>
References: <20260605160444.3833295-1-jonathan.cavitt@intel.com>
 <20260605160444.3833295-3-jonathan.cavitt@intel.com>
 <309a9de0-339e-4e01-a336-fca7afb4d798@intel.com>
In-Reply-To: <309a9de0-339e-4e01-a336-fca7afb4d798@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2717:EE_|CO1PR11MB5187:EE_
x-ms-office365-filtering-correlation-id: 00ba7cde-f3f2-4a07-f034-08dec33661b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021|22082099003|18002099003|6133799003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: E2bw4EZmf7q1lmWi90AoU0575k7jZcydVb7m+Zj8smQDHj/idl1j+iY5UHYXwGSlunUS8KGoJFb596DMTKrdNgiGytLXQluqQo8ENQcFfs0eWq0Wg+HMNDjXOgz2LW53uY2H7uMmNquTnMQVOxSigzqWbR4ivLa67mNvXZAX0hzUkuM4HIAEOctv60zP6TUjaEKaFso9exFyAZ2vvVa6gN7myFFH8cPjyBMvcw4cF9mXPO5Do1VgnYYjMOnRTc6/1dKY6IUVxRtpzPJs4Bg3o0Fx5x09hhWROtEP/JNDk/zUxPcoOhnbZScABY8edKtaEl5RHWoBPyvv/xOiWLOOtUpG5jeVxTYjoQkWjiYzd7gdLWB1FII/FdLnQNTCeO5cq3FWqrpBqPSMHs9UAcNPv3I76xpMSMlRbFWZudnCujPbxCBDLuuqR0izVD6Ba/eAe7aLE7i26DAyS4/H0cHnu60uqERNiCO5VngGGAE8LBqmqCT7+7rprHPxsIiN0iW54PxBuYNHj8alEKoLn+Wgnyi/b67SNoOSzwzQJeID0zm8FdM8D43mN7GZNRfjR+0xk+ZV2GbJVRx7Smo9RSS23cQ20aJkOooNL36S9naEb6S80c53JuHyMaQvyEuKb1oAuqITE5wMzBl+LacG4Bs+AcrjXFnt2E2/lUOxf/Gn6bLc5SMoZfRPbQa2tryoT9rrLkEX5AY4N92wCaML1P5VMJ576RZAGRe3QTQCvNiXcy1E4IMwmfTICPFsSMx3IbIU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2717.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021)(22082099003)(18002099003)(6133799003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alk3cy9UNHg2OFAxNXRqSUF4cW0rY0p6Qkx0V3MyQ3htUU1sVHlYYTRpVDBZ?=
 =?utf-8?B?MUY5bGxIY0x6NFFaWjAvUVVlR1pQeFpRd0Z2dUtYT3FFc0dadktHdmcrbytG?=
 =?utf-8?B?c1BRL010KzZ3NVFJZzdKSUtLVDE5SHNDSmQ3TGZBSnp5OXFXZEZqN0hxdUZO?=
 =?utf-8?B?U1pZTDBuSkoydXpzMTRSWEtmMmpNblRyMVJUODZaa3pPbmxEMVBjd3ZteE0w?=
 =?utf-8?B?b3l0amNGYmFWQ3llbVA1bGdkNEpiUHQzbXlRc2NnS3ZnMFBXSWlvcUdPdUpS?=
 =?utf-8?B?dmpVUG5OOWtmb3IrempTMFQ1dGlSSWVyejN5TllQRjIraXNDc21KbGxxdzZs?=
 =?utf-8?B?NjdzazVYQUVYY0loMGpvNzdUbFZiOUx2cVVOUnJ2SCs3cEVHTXl0NWhBQVdq?=
 =?utf-8?B?NkNmdEJIUThHS3VyRmsvdEVsb3dBWW5wOFRQckFva29Oc3JNZ05zdXhiUmFm?=
 =?utf-8?B?eXBWdmY5WmVudU1mcDJVbnBhaklRZG15SGoreVZkRFp4ZXdac3dUZCtPZG8r?=
 =?utf-8?B?YzBnM3RWZldHTEQzbllxbzlMYXErd2xxY2xBZWViYlVuUWxIZ0ozSWZvbUw4?=
 =?utf-8?B?Q3A2YkJvaVBtbGFhNWRwem5VK2M5UTRMV2VtTmo1bUZBeEtqT0s1OW9OdmhX?=
 =?utf-8?B?L1pVaE16Nk54eWxwOERhQk9ScmM3bzUzb3R5aTdwL3AxK1dzbFpMUkpKR3g1?=
 =?utf-8?B?OUVvWlNFc2o1MDQ2eWNCQ0ZlaFJOVThKcGFLaTl3RnBTRG5Xb0s3Y21tNm9x?=
 =?utf-8?B?UTRDQ0Rock1oMXhocGxuV21od2d1bjVaQzY1MnRsMXdNWS83ZjBpcnA1MDcv?=
 =?utf-8?B?RzV6TGd3ZStxcmYwMXRvRGFuMnJoWlNWakdSVFVFYllXQ0NIOGtNYVdDekFh?=
 =?utf-8?B?WFArU0VnS2hnenZtRFZWVjhmQ1Uvc29BZ0FCV3RjQWJ6Mk5WUjVrdkJ1eFB0?=
 =?utf-8?B?YnRZZ2lqNm9jV0N6RHRaYThMK2YrNzVNK0o3dlFtWXJ5RGJoNmhVMHdMWUFZ?=
 =?utf-8?B?QWJOd0M3VTZIaWg0bXlSRWdlZXJHbHlMK2dWUzlSTUJYQVorNUh0OGd4RWRQ?=
 =?utf-8?B?a29aWjlvMXlPT1llVUlac3g1WHVZMlNUb29INlJTNkplcGJaL3VCN0o0LzVC?=
 =?utf-8?B?VEpUUUVTVnVsallISTJoN0U4TUZ6R1JSOTJkZUlQVG9UOHBxNDRURmdDeGxT?=
 =?utf-8?B?d0g3WjRLZG1XVXFycHE2YS9uMkNJSXBmR3VFWTBwb0J0MWhGb3dCSGVuQVUr?=
 =?utf-8?B?dXVwaERFMEZxQVFwYnMvOEZVTGRsUHJ0eTN0OFFIT0dxOVpVeDA3L2RULzA2?=
 =?utf-8?B?czdpMHRqVUcxN29QK2VoZkxUU054cnJ1Z05LaW8wWU1pSXh6S2tBTFRkR20y?=
 =?utf-8?B?SXE4T1gyZFFVVmZiUUFDcEtTY0Z4Z0ZVVStKSVhNKzZ2NmkwbFVSeEhhY0U4?=
 =?utf-8?B?SExvVU5VdStaUlkyVlBBQ0IxcUlVQW1mU3NqT0s3Z3JpWjhFWWxVMGVEdXZx?=
 =?utf-8?B?akcxSjFRdVZKbWc2d0dVUmR1U21OTmhrOVpRelpXcGtMOHZEQmQrU1RLb1V6?=
 =?utf-8?B?ZSt5dGsxTUJ3ZmZ2Rjg2S2p5QnVHdVVnWmNRTlFDWG9US29pUmJzczlDenlT?=
 =?utf-8?B?cWl2S2pCZUtKZXlyZDU1SFFMVGc0anViazR2Q001SXpvRERWYktYSFB3Yk1Y?=
 =?utf-8?B?bSt1VE9aV0NLdDZEOGV0eXQyWWoyRmRLcHhQc09LSno3R29mSThNUXVtMzlh?=
 =?utf-8?B?NmdIL3M2eUlTck1nZU81ZnJjUWo4QklBVS9jVlhNTVVrck5zZ0xhM0NDV3dE?=
 =?utf-8?B?SktDWFN5MDFyNmV0b1ZPRHlkc3liKy9oVVg5SlJ4UCtnaFMyenlMeVV1Wmlr?=
 =?utf-8?B?cFRpY2V0MzNDMGxLUUlaSmtuRmRCSVpIYXR2ZUQ0c0lEankzYlBxQW9xdGJz?=
 =?utf-8?B?c2Y5NVp3WmpTaXExOUdGZGRzb0ZCaURzZTRlWExiZkdaRk5YUXRkeEJxQzND?=
 =?utf-8?B?eGM5WXVuNnNCemJWa2JreTJwSWNkUmYvZ01ZRCtEZFloYmo2WnVOZWZDbUJR?=
 =?utf-8?B?M2NXTC81dGhSQUZ2R0pwL0F1aElBRWQ1THY0UUNOR2JZZTdQZ0VqeGhidG1s?=
 =?utf-8?B?ZDhXa2VHRis5QUNYN2J6MkhHbjdRTjRnY0VXN0c5VFFCWnJYVXEzTm05MFhE?=
 =?utf-8?B?eUxZTzBSdVhJZUlTbFoxMUdZdUZiZFQvUXJDUUhaOFJsWTJ0ME03NDEvYUhx?=
 =?utf-8?B?VG1TanFMczVYekYzcm10ZVB1enF5UVphUm9HOUF1dVRTUjdKNnUyKysyWk1h?=
 =?utf-8?B?RDNwS1pDVFlUY3NJR21kK2dSeDdaa1RicnYvaVRsSGE1WER5Y1J6bWE5djRa?=
 =?utf-8?Q?I7a/QBL5tZGX8yC5kG94PRT+37PwZ5oGoz2kHLx47GvLZ?=
x-ms-exchange-antispam-messagedata-1: tReqNRjaIX2BxA==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fZd9nhRO5DwO4mUghvQ/tbSM58JC2aXAco5f1VOkodNcXRCALZ1sSMkURTjd/7pGT6z2XXSRNvw00oNaomlPSdKoUKpY07tJKBSMW2vKfFD75ZzchKgR4geQSHE37jEmOwnHHVNcyMNMU/4WHK8zIL4+DgP2A5wks8C7lbLSgzxEsP81G/Gb793j0XFY0Jk/jWEoX91suFfj2l98nJF/zUWmw9Ji0u+jhFONs3VggQrYpxlGezjNW3SJEXSx/jDHACfOGD1XZF7okzAexuYgvdxFXDPwV8wmgDCfywrKPjQlMwYDqZuYh/k8aAuMpLMqY18S4a/oSnTfcKFuaiMXlA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2717.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00ba7cde-f3f2-4a07-f034-08dec33661b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 19:12:26.7702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u2uv8QpxEeCeJy6HuY9ypRiMEJo57oe7Xr0OWw3C3jl665CiziQOimad+YwNmxvVptwIgbm2JlVL+21w0HC4HUPO5ir8T2vCpTNTJ5xww+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5187
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB64364ADD6

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFdhamRlY3prbywgTWljaGFsIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4gDQpTZW50OiBGcmlkYXksIEp1bmUgNSwgMjAyNiAxMTo0
MiBBTQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+OyBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCkNjOiBHdXB0YSwgU2F1cmFiaGcgPHNhdXJhYmhnLmd1cHRhQGludGVsLmNvbT47IFp1
bywgQWxleCA8YWxleC56dW9AaW50ZWwuY29tPjsgSmFkYXYsIFJhYWcgPHJhYWcuamFkYXZAaW50
ZWwuY29tPg0KU3ViamVjdDogUmU6IFtQQVRDSCAyLzVdIGRybS94ZS9oZWNpOiBVc2UgeGUgcHJp
bnQgZnVuY3Rpb25zIGluIHhlX2hlY2lfZ3NjLmMNCj4gDQo+IE9uIDYvNS8yMDI2IDY6MDQgUE0s
IEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPiBVcGRhdGUgeGVfaGVjaV9nc2MuYyB0byB1c2Ug
dGhlIHhlIGVycm9yIHJlcG9ydGluZyBoZWxwZXIgZnVuY3Rpb25zIGluDQo+ID4geGVfcHJpbnRr
LmggaW5zdGVhZCBvZiBkaXJlY3RseSBjYWxsaW5nIHRoZSBhc3NvY2lhdGVkIGRybSBwcmludA0K
PiA+IGZ1bmN0aW9ucyBmcm9tIGRybV9wcmludC5oDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
Sm9uYXRoYW4gQ2F2aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0veGUveGVfaGVjaV9nc2MuYyB8IDIxICsrKysrKysrKystLS0tLS0t
LS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9oZWNpX2dz
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2hlY2lfZ3NjLmMNCj4gPiBpbmRleCA1YWY4OTAz
ZTEwYWYuLmQ3MTYzNzFmYmJlOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUv
eGVfaGVjaV9nc2MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9oZWNpX2dzYy5j
DQo+ID4gQEAgLTgsMTAgKzgsOSBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvcGNpLmg+DQo+ID4g
ICNpbmNsdWRlIDxsaW51eC9zaXplcy5oPg0KPiA+ICANCj4gPiAtI2luY2x1ZGUgPGRybS9kcm1f
cHJpbnQuaD4NCj4gPiAtDQo+ID4gICNpbmNsdWRlICJ4ZV9kZXZpY2VfdHlwZXMuaCINCj4gPiAg
I2luY2x1ZGUgInhlX2hlY2lfZ3NjLmgiDQo+ID4gKyNpbmNsdWRlICJ4ZV9wcmludGsuaCINCj4g
PiAgI2luY2x1ZGUgInJlZ3MveGVfZ3NjX3JlZ3MuaCINCj4gDQo+IG5pdDogdGhpcyBvbmUgaXMg
YXQgd3JvbmcgcGxhY2UNCj4gPiAgI2luY2x1ZGUgInhlX3BsYXRmb3JtX3R5cGVzLmgiDQo+IA0K
PiBhbmQgeGVfcHJpbnRrLmggc2hvdWxkIGJlIGhlcmUNCj4gDQo+ID4gICNpbmNsdWRlICJ4ZV9z
dXJ2aXZhYmlsaXR5X21vZGUuaCINCj4gPiBAQCAtMTEyLDEzICsxMTEsMTMgQEAgc3RhdGljIGlu
dCBoZWNpX2dzY19pcnFfc2V0dXAoc3RydWN0IHhlX2RldmljZSAqeGUpDQo+ID4gIA0KPiA+ICAJ
aGVjaV9nc2MtPmlycSA9IGlycV9hbGxvY19kZXNjKDApOw0KPiANCj4gbml0OiB3aGF0IGFib3V0
IG1vdmluZyB0byBkZXZtX2lycV9hbGxvY19kZXNjKCkgZmlyc3Q/DQoNCkkgdGhpbmsgZml4aW5n
IHRoaXMgc2hvdWxkIGJlIGFkZHJlc3NlZCBpbiBhIGRpZmZlcmVudCBwYXRjaCBzZXJpZXMuDQoN
Cj4gDQo+ID4gIAlpZiAoaGVjaV9nc2MtPmlycSA8IDApIHsNCj4gPiAtCQlkcm1fZXJyKCZ4ZS0+
ZHJtLCAiZ3NjIGlycSBlcnJvciAlZFxuIiwgaGVjaV9nc2MtPmlycSk7DQo+ID4gKwkJeGVfZXJy
KHhlLCAiZ3NjIGlycSBlcnJvciAlZFxuIiwgaGVjaV9nc2MtPmlycSk7DQo+IA0KPiBjYW4gd2Ug
cHJpbnQgZXJyb3IgY29kZSBpbiBtb3JlIGZyaWVuZGx5IHdheSB1c2luZyAlcGUNCj4gDQo+IGFu
ZCBJIGd1ZXNzIHdlIHNob3VsZCB1c2UgIkdTQyIgbmFtZSwgbm90ICJnc2MiLCBzbyBtYXliZToN
Cj4gDQo+IAl4ZV9lcnIoeGUsICJHU0M6IGlycSBhbGxvY2F0aW9uIGZhaWxlZCAoJXBlKVxuIiwg
RVJSX1BUUiguLg0KPiANCj4gPiAgCQlyZXR1cm4gaGVjaV9nc2MtPmlycTsNCj4gPiAgCX0NCj4g
PiAgDQo+ID4gIAlyZXQgPSBoZWNpX2dzY19pcnFfaW5pdChoZWNpX2dzYy0+aXJxKTsNCj4gPiAg
CWlmIChyZXQgPCAwKQ0KPiA+IC0JCWRybV9lcnIoJnhlLT5kcm0sICJnc2MgaXJxIGluaXQgZmFp
bGVkICVkXG4iLCByZXQpOw0KPiA+ICsJCXhlX2Vycih4ZSwgImdzYyBpcnEgaW5pdCBmYWlsZWQg
JWRcbiIsIHJldCk7DQo+IA0KPiAJeGVfZXJyKHhlLCAiR1NDOiBpcnEgaW5pdGlhbGl6YXRpb24g
ZmFpbGVkICglcGUpXG4iLCBFUlJfUFRSKC4uDQo+IA0KPiA+ICANCj4gPiAgCXJldHVybiByZXQ7
DQo+ID4gIH0NCj4gPiBAQCAtMTUxLDcgKzE1MCw3IEBAIHN0YXRpYyBpbnQgaGVjaV9nc2NfYWRk
X2RldmljZShzdHJ1Y3QgeGVfZGV2aWNlICp4ZSwgY29uc3Qgc3RydWN0IGhlY2lfZ3NjX2RlZiAq
DQo+ID4gIA0KPiA+ICAJcmV0ID0gYXV4aWxpYXJ5X2RldmljZV9pbml0KGF1eF9kZXYpOw0KPiA+
ICAJaWYgKHJldCA8IDApIHsNCj4gPiAtCQlkcm1fZXJyKCZ4ZS0+ZHJtLCAiZ3NjIGF1eCBpbml0
IGZhaWxlZCAlZFxuIiwgcmV0KTsNCj4gPiArCQl4ZV9lcnIoeGUsICJnc2MgYXV4IGluaXQgZmFp
bGVkICVkXG4iLCByZXQpOw0KPiA+ICAJCWtmcmVlKGFkZXYpOw0KPiA+ICAJCXJldHVybiByZXQ7
DQo+ID4gIAl9DQo+ID4gQEAgLTE1OSw3ICsxNTgsNyBAQCBzdGF0aWMgaW50IGhlY2lfZ3NjX2Fk
ZF9kZXZpY2Uoc3RydWN0IHhlX2RldmljZSAqeGUsIGNvbnN0IHN0cnVjdCBoZWNpX2dzY19kZWYg
Kg0KPiA+ICAJaGVjaV9nc2MtPmFkZXYgPSBhZGV2OyAvKiBuZWVkZWQgYnkgdGhlIG5vdGlmaWVy
ICovDQo+ID4gIAlyZXQgPSBhdXhpbGlhcnlfZGV2aWNlX2FkZChhdXhfZGV2KTsNCj4gPiAgCWlm
IChyZXQgPCAwKSB7DQo+ID4gLQkJZHJtX2VycigmeGUtPmRybSwgImdzYyBhdXggYWRkIGZhaWxl
ZCAlZFxuIiwgcmV0KTsNCj4gPiArCQl4ZV9lcnIoeGUsICJnc2MgYXV4IGFkZCBmYWlsZWQgJWRc
biIsIHJldCk7DQo+ID4gIAkJaGVjaV9nc2MtPmFkZXYgPSBOVUxMOw0KPiA+ICANCj4gPiAgCQkv
KiBhZGV2IHdpbGwgYmUgZnJlZWQgd2l0aCB0aGUgcHV0X2RldmljZSgpIGFuZCAucmVsZWFzZSBz
ZXF1ZW5jZSAqLw0KPiA+IEBAIC0xOTAsNyArMTg5LDcgQEAgaW50IHhlX2hlY2lfZ3NjX2luaXQo
c3RydWN0IHhlX2RldmljZSAqeGUpDQo+ID4gIAl9DQo+ID4gIA0KPiA+ICAJaWYgKCFkZWYgfHwg
IWRlZi0+bmFtZSkgew0KPiANCj4gbWlzc2luZyBkZWYgbG9va3MgbGlrZSBvdXIgY29kaW5nIGVy
cm9yLCBzaG91bGRuJ3Qgd2UganVzdCB1c2UgeGVfYXNzZXJ0KCk/DQo+IA0KPiBtaXNzaW5nIGRl
Zi0+bmFtZSBpcyBhbHNvIG91ciBjb2RpbmcgZXJyb3IsDQo+IHdlIHNob3VsZCBoYXZlIG5vIHJ1
bnRpbWUgY2hlY2tzIGZvciBpdCAoZXhjZXB0IHhlX2Fzc2VydCkNCg0KSSB0aGluayB0aGlzIGFs
c28gc2hvdWxkIGJlIGFkZHJlc3NlZCBpbiBhIGRpZmZlcmVudCBwYXRjaCBzZXJpZXMuDQoNCkkg
Y2FuIGFwcGx5IHRoZSByZXN0IG9mIHRoZSByZXZpc2lvbiBub3RlcywgdGhvdWdoLg0KLUpvbmF0
aGFuIENhdml0dA0KDQo+IA0KPiA+IC0JCWRybV93YXJuKCZ4ZS0+ZHJtLCAiSEVDSSBpcyBub3Qg
aW1wbGVtZW50ZWQhXG4iKTsNCj4gPiArCQl4ZV93YXJuKHhlLCAiSEVDSSBpcyBub3QgaW1wbGVt
ZW50ZWQhXG4iKTsNCj4gPiAgCQlyZXR1cm4gMDsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gQEAgLTIx
NSw3ICsyMTQsNyBAQCB2b2lkIHhlX2hlY2lfZ3NjX2lycV9oYW5kbGVyKHN0cnVjdCB4ZV9kZXZp
Y2UgKnhlLCB1MzIgaWlyKQ0KPiA+ICAJCXJldHVybjsNCj4gPiAgDQo+ID4gIAlpZiAoIXhlLT5p
bmZvLmhhc19oZWNpX2dzY2ZpKSB7DQo+ID4gLQkJZHJtX3dhcm5fb25jZSgmeGUtPmRybSwgIkdT
QyBpcnE6IG5vdCBzdXBwb3J0ZWQiKTsNCj4gPiArCQl4ZV93YXJuX29uY2UoeGUsICJHU0MgaXJx
OiBub3Qgc3VwcG9ydGVkIik7DQo+IA0KPiAJCXhlX3dhcm5fb25jZSh4ZSwgIkdTQzogdW5leHBl
Y3RlZCBpcnEgJSN4XG4iLCBpaXIpOw0KPiANCj4gPiAgCQlyZXR1cm47DQo+ID4gIAl9DQo+ID4g
IA0KPiA+IEBAIC0yMjQsNyArMjIzLDcgQEAgdm9pZCB4ZV9oZWNpX2dzY19pcnFfaGFuZGxlcihz
dHJ1Y3QgeGVfZGV2aWNlICp4ZSwgdTMyIGlpcikNCj4gPiAgDQo+ID4gIAlyZXQgPSBnZW5lcmlj
X2hhbmRsZV9pcnFfc2FmZSh4ZS0+aGVjaV9nc2MuaXJxKTsNCj4gPiAgCWlmIChyZXQpDQo+ID4g
LQkJZHJtX2Vycl9yYXRlbGltaXRlZCgmeGUtPmRybSwgImVycm9yIGhhbmRsaW5nIEdTQyBpcnE6
ICVkXG4iLCByZXQpOw0KPiA+ICsJCXhlX2Vycl9yYXRlbGltaXRlZCh4ZSwgImVycm9yIGhhbmRs
aW5nIEdTQyBpcnE6ICVkXG4iLCByZXQpOw0KPiANCj4gCQl4ZV9lcnJfcmF0ZWxpbWl0ZWQoeGUs
ICJHU0M6IGlycSBoYW5kbGluZyBmYWlsZWQgKCVwZSlcbiIsIA0KPiANCj4gPiAgfQ0KPiA+ICAN
Cj4gPiAgdm9pZCB4ZV9oZWNpX2NzY19pcnFfaGFuZGxlcihzdHJ1Y3QgeGVfZGV2aWNlICp4ZSwg
dTMyIGlpcikNCj4gPiBAQCAtMjM1LDcgKzIzNCw3IEBAIHZvaWQgeGVfaGVjaV9jc2NfaXJxX2hh
bmRsZXIoc3RydWN0IHhlX2RldmljZSAqeGUsIHUzMiBpaXIpDQo+ID4gIAkJcmV0dXJuOw0KPiA+
ICANCj4gPiAgCWlmICgheGUtPmluZm8uaGFzX2hlY2lfY3NjZmkpIHsNCj4gPiAtCQlkcm1fd2Fy
bl9vbmNlKCZ4ZS0+ZHJtLCAiQ1NDIGlycTogbm90IHN1cHBvcnRlZCIpOw0KPiA+ICsJCXhlX3dh
cm5fb25jZSh4ZSwgIkNTQyBpcnE6IG5vdCBzdXBwb3J0ZWQiKTsNCj4gDQo+IAkJeGVfd2Fybl9v
bmNlKHhlLCAiQ1NDOiB1bmV4cGVjdGVkIGlycSAlI3hcbiIsIGlpcik7DQo+IA0KPiA+ICAJCXJl
dHVybjsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gQEAgLTI0NCw1ICsyNDMsNSBAQCB2b2lkIHhlX2hl
Y2lfY3NjX2lycV9oYW5kbGVyKHN0cnVjdCB4ZV9kZXZpY2UgKnhlLCB1MzIgaWlyKQ0KPiA+ICAN
Cj4gPiAgCXJldCA9IGdlbmVyaWNfaGFuZGxlX2lycV9zYWZlKHhlLT5oZWNpX2dzYy5pcnEpOw0K
PiA+ICAJaWYgKHJldCkNCj4gPiAtCQlkcm1fZXJyX3JhdGVsaW1pdGVkKCZ4ZS0+ZHJtLCAiZXJy
b3IgaGFuZGxpbmcgR1NDIGlycTogJWRcbiIsIHJldCk7DQo+ID4gKwkJeGVfZXJyX3JhdGVsaW1p
dGVkKHhlLCAiZXJyb3IgaGFuZGxpbmcgR1NDIGlycTogJWRcbiIsIHJldCk7DQo+IA0KPiBHU0Mg
b3IgQ1NDID8gZnVuY3Rpb24gaXMgJ2hlY2lfY3NjJw0KPiANCj4gPiAgfQ0KPiANCj4gDQo=
