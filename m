Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D299C3D97
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 12:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B0310E1CF;
	Mon, 11 Nov 2024 11:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3Vtoynr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0044F10E1CF;
 Mon, 11 Nov 2024 11:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731325165; x=1762861165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=twOFVlMHM2/rFjG/lH0U3F+DudU/UiGPQGdrYqdXefg=;
 b=S3VtoynrzeQBWSrqOivItpT0rSwHZYgrHNXftU5I6WNaKPhyyRMGOX9m
 DPTkmUzVmWQ7SdZPHYrkmF4KJlnJ4XtwIcrq1i6f+/HXls+Edj1Fih2Za
 6suuO7WbGib7C3dLmfoPSHKwN39bVJsavLWTrJNQjzk6Z0K8I7u+f70yV
 +QPoXDT4JiJl0mXcsPspkbKR8nmAq330b2Gy9TLSgp99UpUsAR+hrXz4q
 4mBKUHhHGInVT+l1sTKcAo1dVoeejkiWWW4oAyNvjpgVRGW6eGTPaj3aK
 7CuYC7s+0TQc2w2ws/aKV41u7QhiWg/AynWSf2j5M4FMHgdLK+42PwdPf w==;
X-CSE-ConnectionGUID: FSSeLdH7RxSLbZkahSYO1A==
X-CSE-MsgGUID: UQNwEMd2S5ef7g61UBNu6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="31224155"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="31224155"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 03:39:25 -0800
X-CSE-ConnectionGUID: 49QtO7fcTumJmky6JvKtuA==
X-CSE-MsgGUID: ezAGzEScTUKbtm060oEV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86465442"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 03:39:24 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 03:39:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 03:39:24 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 03:39:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TwPgxacKaqdIMhN0XIlTeNCxh0ZsipJXttum9oVKhVcWWFUAjDrRo7zS0LbccRQ6N0DjOdQCq7HXfGPP5Mum7JL+PmmnVLMs3H7bCvCh1rhsThE8Y3mt9QhO8Z4QcDqv849OPZoPGrZ+Eopk20JmyYTPAGDGBVkscg8M5H9fhhtcfloh9YiK7llxTbXa9E8cpwCWDftrq5zb/8I9bfs4+176WJrYtEEZK/+9oB8KCrDV0foJz9BAF+NWxnPeyya8bMP7D9MdeGFrBZBci/oCgx149QDEIkhNDthmMHKu7w3AG9RtQZEB/fKCN4AdSlRa6A4PgvGrhtWyaT7hs48hBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twOFVlMHM2/rFjG/lH0U3F+DudU/UiGPQGdrYqdXefg=;
 b=AqLzYLCKGkrQO+emoxf+Yc4lFIN1vMocJQk/5Y1V5urUBhThN0OjF33HhH9krA1HUzxScX66dF3vc3H2FuQmY2RtRxfWYu4TNdOkQq8S1egjQFe8gCxihTfVEZou9IqKwFJrh+bFsz41nSeBZ9OdZBvAl0BjTgVIsYUuHOfC8ejjopn/PD0dIsdE0cFvc+kP+qcOujDdTTyBtItohB43jBSeA/61z+GnSwL1wQdzLywKRTOQ5TixAFeXLqC65vZHvDUDyUCMqgqrl98m4Ci8di7q19cIYeOwhFSrVoYDd9aIF2HuUosTPn9tqt9nXx63t9U4W4FHQhfKQDOke4tGIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Mon, 11 Nov
 2024 11:39:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8137.022; Mon, 11 Nov 2024
 11:39:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Subject: RE: [PATCH] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbMbtnvqNt9zYT7EGWUNvYj3WiZ7Kx7fKAgAAJC6A=
Date: Mon, 11 Nov 2024 11:39:19 +0000
Message-ID: <SN7PR11MB67509C26FFA3A27C19042ED6E3582@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241108085048.919665-1-suraj.kandpal@intel.com>
 <1dd485801be63c9ccce0800db1ffc3fa70f23746.camel@intel.com>
In-Reply-To: <1dd485801be63c9ccce0800db1ffc3fa70f23746.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7836:EE_
x-ms-office365-filtering-correlation-id: 3545a313-2727-48b6-d48f-08dd02457b26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?K2NxQjc2NEtvT3RoYWMvbmdoQ2paaHFxOCtRZUpuQnEzYXRSdzVBbXJYZ1FW?=
 =?utf-8?B?VWs3UEYrQjk3Skhmd09LQ2p6K2lHczl5VEVsWlhkQUNMdmVndTFUVHJBRkQ5?=
 =?utf-8?B?bHpKN25EMUJZUW0rUFg2OW80cy9BWTZtQWdiRHJ0ejNBMTRHbG9KRnM3WEVK?=
 =?utf-8?B?cmxJano4NlJwWit1TDc5elZWUGRNV1NhdHlUeDRVY25adjNoVEZoeHViU1ZQ?=
 =?utf-8?B?V0syMnF5VkFQS1YzMHFFMGFSK3FLRDVrbnhEeFNGT1RGZHFCeTVJcXZXa3hC?=
 =?utf-8?B?ejlWVjNZSzFRWGRlalF5dVdvL1ZSbDQ4RVBFSDhmRnlXM1M4aTFHQlg0RTBM?=
 =?utf-8?B?cld2dWpydGw4OEdadHlKTDluZ0VYVm5laXdtQ1NQU2M3ZnJySU9qOWI4aFZH?=
 =?utf-8?B?a2lsYlNrU2E4dFA3UjNwMWMzVDd1eU8yRFlydWRkSEc2bTQ5dXVVZkF4amNp?=
 =?utf-8?B?Ry9PV3FkZk5mQjlGcXhtcEx4c2ZvcENKbzYxYlZnTkttS1ZJRFhBNC96R2Vy?=
 =?utf-8?B?aG5EWFpaNVZXNGRIYVVlOHBaeHd5MlNWUzZxc245eTRyYzFVbFNCYjJvellT?=
 =?utf-8?B?NmVLVGF3T1k3a2c2akZPaFY0S20wMnVQOEF1L3VMWU5pMzVSSU9oY1AvS1lY?=
 =?utf-8?B?RFM0by80ajVHSkV6d0FuWDlCcUZoMXh4alZsYkRqVHRvbHNQSjFQR2s0K3Bm?=
 =?utf-8?B?UzZjQ203UGV3WGViQjkybWNWd09nOExmWFEzaUEzNXkrWXlsMSsyVlF3OVI0?=
 =?utf-8?B?RDRJTVg4VnJOYnRsWHNoSng1VjM5L25BNytXM2RmSk1XVkNEd3B3OHRhNndG?=
 =?utf-8?B?REliVzkvSU56OFM2cWU5YkZScXlacHdQSXVjRmIxRzdGYWhzRTU3aG5SRFU0?=
 =?utf-8?B?S0p0RFpaLzNhcnM1RmNtSXVtUGtXZk43YnhGVC9tTEhvTjFVMWRmSkdHVWpG?=
 =?utf-8?B?YWhZdnZxVm4zdjczdWxvTXpLRitlVUpmZUJSdHplN0RyQUVCRUVOZzlNM1By?=
 =?utf-8?B?L1FzZ3lZRFNYOUJDL1orRVE4T3liK0h5SndPRzZ6OEZVbDlPc3BkSnpERlk5?=
 =?utf-8?B?aHdLclhnczdKZ3FhOE9EVVZhNmJLdUozK21yY1p5QUJsT3RQSmlUZm8rQUds?=
 =?utf-8?B?Y2U1d1VFZG02VlA0MzFpY253aDBTakloU2trckFsZGlROW44dDZQZzZob0Y1?=
 =?utf-8?B?c1YvZjJLWnNFNTBuYSt2Y01zMnlzMG9EZjNTbnlGVjJhY2JYSnBpN0F1Z3hm?=
 =?utf-8?B?UWtGNWdpek9WNU1zWVV0NzA2UjhPZVR5bWtEam1ySnhQVVJnZzR0TmxMU0VX?=
 =?utf-8?B?djFLNzRtVEdJUEVMelA5WE9ucUR0RU9SSG82ZnFlZk1NWG1GV1hkWkF0a09E?=
 =?utf-8?B?QUVXWS9YdVcvS2xKeEphVnhtL2dWamVySE5PQkxGUU56eCtuK2VRdXcrenNO?=
 =?utf-8?B?bzFXQTUzRlZJMkFQZmZlMWlwaVRvRHpOTXd0bWVRUS8ya3M0QTJZcGpaS0Er?=
 =?utf-8?B?VE8xajBMUUxjRlNjSTR6azkrUWlBUkVBcHRHZ2Q1MTZjSDNkbWFJdjBWTFZh?=
 =?utf-8?B?WlRiRnlkTTVuaFdBdDlTWi8rYTVaMUFWWFhJemRuUHRuL09MRERDaTRwTkw2?=
 =?utf-8?B?UlNEbUV1MjZSMVI3WmVGekpBTnFjZEN4QVVoTnkvM1FJRHorNFhua3kyazI4?=
 =?utf-8?B?OTBoMy9QcTkxUWtvaEUwZWVGSU1oVFRxQ1NOd3NTOTdlMEZMK0tqSURiVGNp?=
 =?utf-8?B?N05ZSW9WU1lzRk1uYVRzNWdRRmhhZ1dLbXh4cnlpaUpURUk2Z2twWldtRUNz?=
 =?utf-8?Q?umRgNZlSdb0P2iYTDSJuptzH51OqhzifdteVY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3VTNDBJdkVyQmFpeEhib3F2d3JULytpOUs1NEZGY205UVB5L1R4QkJpUUxS?=
 =?utf-8?B?WDRyZnUzQUJKdjd4akNzdm5CWllueTFsSENFWTZTWDFOTHpUSExpbjhzN1FL?=
 =?utf-8?B?Zk9EUG41S3pEcCtsQ1Z2amZWRW5CV2pBOHVHbllCbVRXb3kxK3QvWHpnajRy?=
 =?utf-8?B?UVVHSVk4ZG8wOWk1VjNpNkZrT0huTWIxdXc0QnVKWkliRnBNcUlUbnZBRERZ?=
 =?utf-8?B?YXUvd0g0eFJXMktRam5rY1RtVURITDBqem5hR0tWakt3YWkwU055T2hCbVU4?=
 =?utf-8?B?bjhBSEVBb2NSK2VPRGsybnlBVDRYZHRseFJMVk5lRDZHcXJpeEQxMnFXdGN4?=
 =?utf-8?B?b3NDQmNCdm12YXcvL0JaK2xzeTR4WmlTb2QrVVJTVWhkME1IY1lYK1k3Q0Zx?=
 =?utf-8?B?Q0VRNHlaY0libVpDS0VFazF6MkhYckhPeEdUSzJUMm5qcnJoY2xZZVlJMGtL?=
 =?utf-8?B?SHVpZEE3b1E0UUprNFFFaHdHdVI1anlXOWgyUm1PdnBiVUZMSlNsVWM0YXVU?=
 =?utf-8?B?SVdSWENLSHRVbThvUGgxL3ExUVZmTXNzNVNJRExIcHZXSmd6dTNzL1N6NFVG?=
 =?utf-8?B?U0xOQ0ptZW1EMlRRWnlPdkpTUGlJWFh6eDkvVW1mcDBiOWlrR05Lb05vRkYz?=
 =?utf-8?B?UnRxeUFpMFBLdXg2ZGlMdTJvMmVWeWlESlEyTDFGOTFidkRweExpMkNqYjZt?=
 =?utf-8?B?SmpVUXJUUG9qNFF2N1NKMTAvbDdhVlNuUFArWVdkaWZjcEtYQk9hbmt1clY4?=
 =?utf-8?B?VmJSbExmSzJ3UXo4RGwwNTZzaEpESWwrOVNmWmM2VGh5bTkzbWVGbEgzTjlJ?=
 =?utf-8?B?dUVBZEtYcWtJN2hLMVRUZVJwNlQ5MjNUYWJlQzYwcEp0UHloUnQ1OUozN091?=
 =?utf-8?B?allKemRSTGYxdW9UZkt5SDMrVURUM01reVRISHF3ck5ZWUhwdGdyTHVhR0RD?=
 =?utf-8?B?UWRybmRBSjdnZStBQ3BiZ2RHTlpicmxYNWxlUjJ5dGhFaHZkNkEwY3owZ3c5?=
 =?utf-8?B?MldwclZxRllLWUV4Z0tsYmFVOE9SYnc4eU04WExOVWljMlEzUDk3MUc3ekpx?=
 =?utf-8?B?K2VHTlBSZzlPbVV5VHR5K2NGR1JmeHA0YjNiQmNDWWM2c3A5NUxLUW05d2xD?=
 =?utf-8?B?UExUd09memVmb0habENpRldSUnl6cXV0QmlaYXVtNUdHeFJrQWFaK3oxSXRK?=
 =?utf-8?B?T2owb1hrQ2U1L1pjellNWmNoZkFxUE1ndmQ5M0xQWXpJelN4aElDL3FhR0NI?=
 =?utf-8?B?c2xybDhUMHJtK0xnR2pBL3FnaUR6WUZwaXZ0MWpUd3ZNZzE0dkhXa1B0N2lH?=
 =?utf-8?B?MmdTUzZrTGQ1bTZ6bmFodGhyYUt3QWhFZURXZkJoTlZ6dUNNaThsQVFwR1M3?=
 =?utf-8?B?YUIyVFI4OFU3VDYzWWpxa01SeWtPd3ZZdWE2bWJGb2pvYWxMeXJhdW1Wd0ZK?=
 =?utf-8?B?RWtrWmp2MWcrWitPd2xOUXZPWGZoaktyMHg2MEJLWTY2aEZwMXFGYkl5ZUNJ?=
 =?utf-8?B?RmdqeE9DYVZ4ekp1Sk5qTTkzTUpmREwrMVhKRlh5YnVyMjBVVjBQU3pTUitX?=
 =?utf-8?B?VDYwRTg5QStLMHlGUFUxdHFmemJzc2Q4QlVtSWRPaW45WmxJNXdUVTZBVEJZ?=
 =?utf-8?B?YlBmVEFWMllINTNIY1IzQVk4UVZ2cmVuRjBTWEdzSFZiWjZndVh4c3lHYTFn?=
 =?utf-8?B?R3lLTUFmbzRBTjBzNlFIekV1b0JTaUVBb1Z2ZE1JS0VjYXBwV1hZMzZxUlRG?=
 =?utf-8?B?K1JaQ1ZTNjNiYy9HcU1OeEpsNUpoMjdxTUMxblZ3Sm1lQ21jQmtFVG1KblE4?=
 =?utf-8?B?WkRIdHZPMmJVa2RpNmRLd0dwSlRFUUphTlovUmhsSTV3OXhwV3FKeVN3OFFL?=
 =?utf-8?B?UmdRT2wzM05nRFNOcXZWalo2OGxWRkM1NnNrUUhHM3MwMnRqRzVkcTNvckJT?=
 =?utf-8?B?aXVBMmFWem1hSEdWNTd6YXlwNGFYNm9rYTNlQ0kyaE13TlAySkRJdWZjbUVE?=
 =?utf-8?B?UmdGemh5OCtoNjVTd0RmMHUwVDFNZXJmeFRVaE1OWVFmNGxVREM4dGo3MGZK?=
 =?utf-8?B?NWx0a2tXRmFLei9aeVZuZ0hLQWlINlJRTGVLUHlmRk5nZFVOaUtiV2pFdkdY?=
 =?utf-8?Q?lISFKbKenWwZLvrSGvAlGZCXG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3545a313-2727-48b6-d48f-08dd02457b26
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 11:39:19.8468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 66L7rISJ715CQcq606G0GcFGTGaWecXyPy+pMmzjyoE/hF2XeWs3Ri8hHimw/uLImAl5Y+fR2kj9IoulayYX2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7836
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE5v
dmVtYmVyIDExLCAyMDI0IDQ6MjkgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5k
cGFsQGludGVsLmNvbT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogUG90dHVtdXR0dSwgU2FpIFRlamEgPHNh
aS50ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0v
aTkxNS93YXRlcm1hcms6IE1vZGlmeSBsYXRlbmN5IHByb2dyYW1tZWQgaW50bw0KPiBQS0dfQ19M
QVRFTkNZDQo+IA0KPiBIaSBTdXJhaiwNCj4gDQo+IFNvbWUgY29tbWVudHMsIHBsZWFzZSBoYXZl
IGEgbG9vay4uDQo+IA0KPiBPbiBGcmksIDIwMjQtMTEtMDggYXQgMTQ6MjAgKzA1MzAsIFN1cmFq
IEthbmRwYWwgd3JvdGU6DQo+ID4gPiBJbmNyZWFzZSB0aGUgbGF0ZW5jeSBwcm9ncmFtbWVkIGlu
dG8gUEtHX0NfTEFURU5DWSBsYXRlbmN5IHRvIGJlIGENCj4gPiA+IG11bHRpcGxlIG9mIGxpbmUg
dGltZSB3aGljaCBpcyB3cml0dGVuIGludG8gV01fTElORVRJTUUuDQo+ID4gPg0KPiA+ID4gLS12
Mg0KPiA+ID4gLUZpeCBjb21taXQgc3ViamVjdCBsaW5lIFtTYWkgVGVqYV0NCj4gPiA+IC1Vc2Ug
aW5kaXZpZHVhbCBESVNQTEFZX1ZFUiBjaGVja3MgaW5zdGVhZCBvZiByYW5nZSBbU2FpIFRlamFd
DQo+ID4gPiAtSW5pdGlhbGl6ZSBtYXhfbGluZXRpbWUgW1NhaSBUZWphXQ0KPiA+ID4NCj4gPiA+
IFdBOiAyMjAyMDI5OTYwMQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCAyNg0KPiA+ID4gKysrKysrKysrKysrKyst
LS0tLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3dhdGVybWFyay5jID4NCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiA+IGluZGV4IGQzYmJmMzM1Yzc0OS4uOWUyMDhkYjU1
YWJiIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3dhdGVybWFyay5jDQo+ID4gPiBAQCAtMjg0OCw5ICsyODQ4LDExIEBAIHN0YXRpYyBpbnQgc2ts
X3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RydWN0DQo+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+ID4gwqAgKiBQcm9ncmFtIFBLR19DX0xBVEVOQ1kgQWRkZWQgV2FrZSBUaW1l
ID0gMA0KPiA+ID4gwqAgKi8NCj4gPiA+IMKgc3RhdGljIHZvaWQNCj4gPiA+IC1za2xfcHJvZ3Jh
bV9kcGtnY19sYXRlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29sDQo+ID4g
PiBlbmFibGVfZHBrZ2MpDQo+ID4gPiArc2tsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5jeShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBlbmFibGVfZHBrZ2MsDQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBtYXhfbGluZXRp
bWUpDQo+ID4gPiDCoHsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoHUzMiBtYXhfbGF0ZW5jeSA9IDA7
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqB1MzIgYWRqdXN0ZWRfbGF0ZW5jeSA9IDA7DQo+IEkgZ3Vl
c3MsIGlmIHlvdSBpbml0aWFsaXplIGFkanVzdGVkX2xhdGVuY3kgdG8gTE5MX1BLR19DX0xBVEVO
Q1lfTUFTSywgeW91DQo+IGNvdWxkIGdldCByaWQgb2YgdGhlIGVsc2UgYnJhbmNoIGJlbG93LiBN
YXkgYmUgeW91IGNvdWxkIGhhdmUgYSBwcmVwYXJhdG9yeQ0KPiBwYXRjaCB3aGljaCBnZXQgcmlk
IG9mIHRoaXMgZWxzZSBicmFuY2g/DQoNCllvdSdyZSByaWdodCB3aWxsIGdldCB0aGF0IGRvbmUu
DQoNCj4gDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGNsZWFyID0gMCwgdmFsID0gMDsNCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgYWRkZWRfd2FrZV90aW1lID0gMDsNCj4gPiA+DQo+ID4g
PiBAQCAtMjg1OCwxOCArMjg2MCwyMyBAQCBza2xfcHJvZ3JhbV9kcGtnY19sYXRlbmN5KHN0cnVj
dA0KPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCA+DQo+ID4gPiBlbmFibGVfZHBr
Z2MpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiA+
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGVuYWJsZV9kcGtnYykgew0KPiA+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9sYXRlbmN5ID0gc2tsX3dhdGVybWFya19tYXhf
bGF0ZW5jeShpOTE1LCAxKTsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAobWF4X2xhdGVuY3kgPT0gMCkNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgbWF4X2xhdGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkanVzdGVkX2xhdGVuY3kgPSBz
a2xfd2F0ZXJtYXJrX21heF9sYXRlbmN5KGk5MTUsDQo+ID4gPiArMSk7DQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGFkanVzdGVkX2xhdGVuY3kgPT0gMCkNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRqdXN0ZWRf
bGF0ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+ID4gPiArDQo+IEFsc28sIGhlcmUg
SSBndWVzcyB5b3UgbmVlZCB0byBhdm9pZCB0aGlzIFdBIGlmIGFkanVzdGVkX2xhdGVuY3kgaXMg
MCBpZS4gaW52YWxpZA0KPiBsZXZlbCAxIGxhdGVuY3kuDQoNClN1cmUgd2lsbCBnZXQgdGhpcyBm
aXhlZA0KDQo+IA0KPiBBbHNvIHVzZSBpbnRlbF9kaXNwbGF5IGluc3RlYWQgb2YgaTkxNSB3aGVy
ZXZlciBwb3NzaWJsZSByZWxhdGVkIHRvIHRoaXMNCj4gY2hhbmdlLg0KDQpTdXJlIHlvdSBhcmUg
cmlnaHQgaWxsIHVwZGF0ZSB0aGUgZnVuY3Rpb24gaXRzZWxmIHRvIHVzZSBpbnRlbF9kZV9ybXcg
aW5zdGVhZCBvbiB1bmNvcmVfcm13IHRvbyB3aWxsIGhhdmUgYSBzZXBhcmF0ZSBwYXRjaCBmb3Ig
aXQuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gDQo+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMjIwMjAyOTk2MDEgKi8NCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMjAgfHwgRElTUExB
WV9WRVIoaTkxNSkgPT0NCj4gPiA+ICszMCkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRqdXN0ZWRfbGF0ZW5jeSA9IG1heF9saW5ldGltZSAq
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBESVZfUk9VTkRfVVAoYWRqdXN0ZWRfbGF0ZW5jeSwNCj4gPiA+ICttYXhf
bGluZXRpbWUpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGRlZF93
YWtlX3RpbWUgPSBEU0JfRVhFX1RJTUUgKw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaTkxNS0+ZGlzcGxheS5zYWd2LmJsb2NrX3RpbWVfdXM7
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBtYXhfbGF0ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRqdXN0ZWRfbGF0ZW5jeSA9IExOTF9Q
S0dfQ19MQVRFTkNZX01BU0s7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGFkZGVkX3dha2VfdGltZSA9IDA7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4NCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqBjbGVhciB8PSBMTkxfQURERURfV0FLRV9USU1FX01BU0sgfA0K
PiBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgdmFsIHw9IFJF
R19GSUVMRF9QUkVQKExOTF9QS0dfQ19MQVRFTkNZX01BU0ssIG1heF9sYXRlbmN5KTsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoHZhbCB8PSBSRUdfRklFTERfUFJFUChMTkxfUEtHX0NfTEFURU5DWV9N
QVNLLA0KPiA+ID4gK2FkanVzdGVkX2xhdGVuY3kpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHZh
bCB8PSBSRUdfRklFTERfUFJFUChMTkxfQURERURfV0FLRV9USU1FX01BU0ssDQo+ID4gPiBhZGRl
ZF93YWtlX3RpbWUpOw0KPiA+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNvcmVf
cm13KCZpOTE1LT51bmNvcmUsIExOTF9QS0dfQ19MQVRFTkNZLCBjbGVhciwNCj4gPiA+IHZhbCk7
IEBAIC0yODgyLDYgKzI4ODksNyBAQCBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlDQo+ID4gPiAqc3RhdGUpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgX19tYXliZV91bnVzZWQgKm5ld19jcnRjX3N0YXRlOw0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoGludCByZXQsIGk7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFibGVf
ZHBrZ2MgPSBmYWxzZTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHUzMiBtYXhfbGluZXRpbWUgPSAw
Ow0KPiA+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0YywNCj4gPiA+IG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IHNrbF9idWlsZF9waXBlX3dtKHN0
YXRlLCBjcnRjKTsgQEAgLTI5MTEsOQ0KPiA+ID4gKzI5MTksMTEgQEAgc2tsX2NvbXB1dGVfd20o
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19jcnRjX3N0YXRlLT52cnIudm1pbiA9PQ0KPiA+
ID4gbmV3X2NydGNfc3RhdGUtPnZyci5mbGlwbGluZSkgfHwNCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFuZXdfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkNCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVuYWJs
ZV9kcGtnYyA9IHRydWU7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgbWF4X2xpbmV0aW1lID0gbWF4KG5ld19jcnRjX3N0YXRlLT5saW5ldGltZSwNCj4gPiA+
ICttYXhfbGluZXRpbWUpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiA+DQo+ID4gPiAt
wqDCoMKgwqDCoMKgwqBza2xfcHJvZ3JhbV9kcGtnY19sYXRlbmN5KHRvX2k5MTUoc3RhdGUtPmJh
c2UuZGV2KSwNCj4gPiA+IGVuYWJsZV9kcGtnYyk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBza2xf
cHJvZ3JhbV9kcGtnY19sYXRlbmN5KHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KSwNCj4gPiA+ICtl
bmFibGVfZHBrZ2MsIG1heF9saW5ldGltZSk7DQo+ID4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oHNrbF9wcmludF93bV9jaGFuZ2VzKHN0YXRlKTsNCj4gPiA+DQoNCg==
