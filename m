Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GpGIf+Ds2msXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 04:26:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E227D13B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 04:26:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293C110EAD2;
	Fri, 13 Mar 2026 03:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXYxTmTX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C3B10E08C;
 Fri, 13 Mar 2026 03:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773372410; x=1804908410;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p+TEFT+WkKw3WN01uDKHeRYqLQpS8mvu/0VgvnlE5VA=;
 b=WXYxTmTX47f1c08qOSlpAqydecKRk09VobErkp8ZmjzjsPKO5BotjLKG
 kr27eexXT8BQc8ZEKFNdRgMK+S6rCB5r5eScvIRz3NvBSbIHS+C9h+L9H
 rO1c0mFjiTN3uGdAFoBW4dbK+qYJSzvFf3Ev8uRgQNbtizY7n0u6Howld
 ShgI2U0cSkErPJJ4Q+MVZ5Nq6JzaCSzQpDWT6Q1prHLff4L5bxFSH/9ka
 L2U0LK/iXzdGUXB4ildgfuaQnHy6wazZjFRhQZ3c1AqGQrBKwAEWi5Kw6
 JkdIKwh8F24AxzLKjHB+yAwUkvEydLIXfQu2fgSzZP0E9ayFSOvK15rpf Q==;
X-CSE-ConnectionGUID: HR3qac4CT3OYJbJU71rw/A==
X-CSE-MsgGUID: R/aYof3bTTeApqM03hvY5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85832236"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="85832236"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 20:26:48 -0700
X-CSE-ConnectionGUID: VEaJnOUvRm+1f9ds/2og8A==
X-CSE-MsgGUID: rP9puN+sQBK5EjLrwcir1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="218401369"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 20:26:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 20:26:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 20:26:47 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 20:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U3TiDvh0EwGBurs+U4+3bo6tC3NicuudYn+IQjERKzdz/bKrxGNoIk9IDMqM0Ygb9Qap8csPedGcB7KvaHtfNNMH8sNFzS9m22sph3BTjJ/VOUnucmDvEqZXJa/vb3KhttcT/CINCjAyBcuLaeDvgCGE8ovQRygyG/ShOcYx6CCJUR75iVBlud9yjnWYmcLp9qLdwCm3rZo23Ki0XWPYHl1sd+hG5FToAsCWw4ZQc00x0Xavz2lgsZol3ZDNPQWn7v1vGhj3QJN7qekhrRfnZpyS2xt4OYwYc5eGMLzicQie9gA1MKiRPmM7JyD/q33Ndf5Fx/7lqLoU/eEVvrJhDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+TEFT+WkKw3WN01uDKHeRYqLQpS8mvu/0VgvnlE5VA=;
 b=Xx2XsWSfzeX2sKz9sUiy0nJ7rMgfOvAxH7kIYkntIEUZwCWUFq7vEJxCz0wtl/f4y9W4lwfhpVjjfP/zmicgbJ9jFMeXoiSUVt8ifNCwdO/SqlzTVtEOWscdQGAZLvWW8pj19pjxAcYPQ/iLkL3Lc5/6jbyyx2dRfz/Qv0l8X6uImqys+8adLES8b+mItQ6Jv8I9wp+aoMOzgJx8mOF7z75GssQHmbTYl0DYwDgWumI937p4rQDDmsyMkKINSNSTxtc+cBSQMWaRdMgR6MXyV3HKnKVeBJ4ihjlHM4p/qjh3INGi5JQ6tbXI/rdyhHBQ/HS9STU2pwi0fu0zy94IWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7993.namprd11.prod.outlook.com
 (2603:10b6:806:2e5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 03:26:43 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Fri, 13 Mar 2026
 03:26:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHcsSHWLW1MaEEmHE6nBRY4po2yObWqOcBggACbloCAAPkh0A==
Date: Fri, 13 Mar 2026 03:26:43 +0000
Message-ID: <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
In-Reply-To: <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7993:EE_
x-ms-office365-filtering-correlation-id: c2f97017-1dc2-4cd7-9183-08de80b05980
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: uqyv4i+V0HqL3b8+sBKXloWdHuz7mtAmEoq2GVjHItstZuYtur8wvmA8wn+6Mrn2VmspR6pFNGMy3CgC1mjDlAX3j62+LBpoBjpoq7D4OAewpvMb8iiUiwBO+REejug3sVz2kxM6zZgVHXDMY+FaJVZA7uOWaqhaem3leBcekPZN+uY2XW8ly8uglhJlN9f+TOIwuiiA7WqeyuCllOsu/QRsO6W/Y0H8fU1fd9qoie/clbkPfwZfFEsze2/FXz4ZWHHCHyEo3FIMmuc/F+Y7FwjZ48KheUrvoqXmoksiaqgGhZIl65O4rwiQhLxq2UAiP+FDiraTMzqypprKd/9Tybb+rhfc8vd0Ix4pvfaihxZl+pkMBS6vqY0fHhDc6UIi8QAnQFV+1YaF5WH6qSViyRyo6p/HwftDK1wqZBWb9g5v4SknSEgnhNvOswQF6YTS+CEFvJdzZVvKr76HoIm//ucD7NuFB4ucLp+V0p1ULCR43KP3gGdgu61wpsY3LEbhn3d57kiOas4EaFQuvWv3SqKIHhufQUMqNUPZxAW8emis79szlQoBbIZiWdCrEneNjw1Ph5f7WSKxaofldJdni+o9jonbDt94NFNuy+igbfH1LXjYmJA2QKU4QEKOR2NjuuO773zN6gEERtUADvnurbE6GCLAELG5gYnODUSC3MVWWWzCTodutyVWEzQd+2DRnI7PhWqQvv/Jjd2HGcglKhwy2ZZluoMxRW1f3WXFhG+VxRc5Cyv7yAvtHwOx9Eszszn9wjIXzISmeeLl448vuhASmlZwU5bRKyeKN6hi/10=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFNpNi9NWjZCQVhpWjZYRXV6eG9IWlNueURTeE1tTXcrV3RGaFdkT0hha2NM?=
 =?utf-8?B?S08xUGYwSmlXR3U2WlpxMWZxUEwzVE1VMThoaXo5RFZkMFBuODV3dnBaeUE4?=
 =?utf-8?B?dDlPZzNZZnF4WDYvZUR3UktLMEtRSFBsZ1pCUE9BbGtjbkVVemR3WDlERXIv?=
 =?utf-8?B?WDY4d0xQT3dpcXplY0FmYTdIeXJ1dXM0ODRiOS96RHNBNlBDWFB6RHJXMlFy?=
 =?utf-8?B?UUphVkduazRJc0gyczd6ZU9pWkxOdWp0RkdoTllTVFROK3U2YVlBQmZKdmNu?=
 =?utf-8?B?cTJTbjZVUkY0cnRUQ2RyTWNGMTF3VzhVYWtVc0xDV3VvUkZDQ2dubnF2WHk2?=
 =?utf-8?B?UVJydFZEM1VKclU1ZzFHZUovRmljdEhrZDNZWklNMm1LTnFJUk52NFpXK0E1?=
 =?utf-8?B?MW1ieW1KM1JLVG9PNTBXMnFYenJIVUdpcDRGVDVncE1taTVBMnBBNU80Z3N2?=
 =?utf-8?B?dXFzUE9aNDlZM1Rud0NBVS93ZSszNkR1cUtDc1pMZCtEQWhIeE1ldEtLeFJj?=
 =?utf-8?B?N0FiMkdwUmpOaSt1NitRRmJmNk45bVhVR2Rvd1BPc0xNZFJFUFg0Q1NmM0JM?=
 =?utf-8?B?ckFLcUpyL1dIV0UrYWhmcWhiLzlPUU12dE5Jbk05R1N5Nm5zRmk3MHlMcFBt?=
 =?utf-8?B?ZnlQQ0JxUmJ4MWFYNmZqUFRjZ1F4Z1VBWTlFUWhIZkI2S0p1YTNYeVlQRGhE?=
 =?utf-8?B?c3EyMWx3Njh1RGZLMU1sWkdIck84WE1zTm56bllmelNYRkhDL1FhVlA2am1j?=
 =?utf-8?B?RGFkRCszSGtLMU5pUGU4aGEwdUpXVmMzL1ZnRHVLQWx2L25qRkZmZ0dIUXFU?=
 =?utf-8?B?anNCSlM1aVhRR2RyK3lVTmpnR2hhY2xGZVZIWEVJTmdjN3Bvb1J4aS82OTdj?=
 =?utf-8?B?NlNTN2VnQzRKSUZYL2hCaDk4dW5sM1IyUk9UdmU4SXA0YVF1enpjQkRPdzg5?=
 =?utf-8?B?c2NvMjIrSTNjOHd1RmNkcjR5Q0ZjMDVqOHRoUFZVcHp1TmkvaGVFYTFNcEx2?=
 =?utf-8?B?aGZ1M0hkU1BKSHJnakVaU292N1RvVFFURFV2UU1IUjNsVHFkdUwrcXVRVlNY?=
 =?utf-8?B?UGtEeDFuK1czc1RDUFBjKzdYYUpoWkpTK0xOVE43K2xJbStrSkl0dU1rV2s2?=
 =?utf-8?B?Q29wbTUrRmhMQzBYK2lXMmZjZ1JjcDdJalR1aGlEYWpFTEg0TXllRFRINDV4?=
 =?utf-8?B?QmRSMTZQdWhXWFBxYVpGdjVpU0RKRDdyRDFXdEc5d2VZRjQrUHEvVC9UVDB4?=
 =?utf-8?B?NkM2MXUrcUszS0lGNGh1dWhuajA1aEhSbHhmYVZ3eXU4cytXaDcrNXZpbUd4?=
 =?utf-8?B?RWJUb21NeDQ5Zkp6R1hTUXZzS2FlUVBjek1VRXVRMDZSRUN2TEk3TjRreXpl?=
 =?utf-8?B?MnM5NFY0WithR2N4dUVzVEQwQkZoanhiL2RqVHAxakwxUU1Fa1lIMDl5QXRO?=
 =?utf-8?B?b1ZoL3dQWlgvdjhqWUdZc1QxcXQ4OVhlZkxvMWRicDNITzVsaDBscU8xcU5O?=
 =?utf-8?B?a24wcit6L1pJNjZTVkp6MmJzdGpOZ2RKUllvdkpLejRkN0NnandaYjNUdm1x?=
 =?utf-8?B?dU5HaFlvU2I5YTc5UTBoRlE3L1lRZkxZUWx4ZCtJRXJZZ09XUlkzdk1PQ3hG?=
 =?utf-8?B?WUtXbUxmWEtESnhoOHRXa25keGhPbnVrTFpmUFM3dmdLUHBRLzZ2RklGU1lo?=
 =?utf-8?B?VW9PNjcxdmNjMkNBaDl3RmVHdFdTYVpzRlJZVHpmazNsbXhUUGduWkRNcFRP?=
 =?utf-8?B?cCtEWWF6MzF2VXNLazdSZHhIeG4xaldnM3U3V2JkMk1JeE96MlFRQjJqdi91?=
 =?utf-8?B?R3lRSyt1VWNQQ3RtZlZXbDltS29VSURXbXo0Zmxnc2FTMW1iMVE4YkpKSWhU?=
 =?utf-8?B?NFY3ZndTZlJiTWJwLzUva3ZxZXdoT3pqU1NPN0RuL2Jnb3g4aEZMczNmUDZp?=
 =?utf-8?B?bTk1R3Y5NVNmczNpWXArYUVEaUN2QTc0aGR1RENUT1hTazh2anF4SkNsUVVM?=
 =?utf-8?B?ZlBMR3RYZkVTMG5XTXRFajFQQmlDUXZESDRWQ1JPbkVNaGp4a0l5RjFQbC90?=
 =?utf-8?B?SGx4NVZnR3VjV2FUYmZid2UrN3JteThaeW9DZjFhUEowVmloZVN0QUFtak0w?=
 =?utf-8?B?UCt3cHdBSU92Q0hROHhLYVQxZzV1WGdMZTFtWFpuNUM2cTNhK2trTGM4ZGRO?=
 =?utf-8?B?WTMrV3JKT0w0ODdoRTQ3UFE3akROMVczd2xXcE92dUZvc0hreDJyd05mV0hC?=
 =?utf-8?B?YzJ5emxOTEtiZmhKS3dhbmRqSmhkNGR4MlI0R21VZUVjcGhEbEhYL0VVckwx?=
 =?utf-8?B?dFJKVHZJakVGMU8wUkxHTlE4Q3ZmZFZ0ZW4yaUdqMlYvV2dGbVJPZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JG0SrykysXXwaybiACISTM6XsfrYdse3jFBsgG+fJCiyobg5Z3iq+i8Erh/NbHSUSe9PKHDxmlVpLoY5FUnVHfW1LsZiPBjv/ev5NfyvIm1Q/4anQLJqpecJHsSieQN+73+Vpsz5F0qHUhwsW20VdwI27J015Tljm+WkuhpFeMlEudzLoFJoHgTsewm4E2EenuiX4WY0HxaowtxpxE5GWcqvIgEzMImu2ja1HBZIuqFc9IIt0NJXiLlG9BBsMt3hwQ41FUIOpmbZ+ayRwSX3SQoBVCnCIr0xw9etQTCxAKrzPY/mQ8lMcFR8eH5Ga3EvlvHyLCM3C3xq00jPhgaj3Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f97017-1dc2-4cd7-9183-08de80b05980
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 03:26:43.7293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2wtD3rP3sP5k1yQOSpFIslnHLadHaQJY7XTvKq/5CyJmFBu6rAgH+IQyKmrtG79fm342Nve5U7yWfMkY/mC5BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7993
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,gabe.freedesktop.org:server fail,DM3PPF208195D8D.namprd11.prod.outlook.com:server fail];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7C1E227D13B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBPbiAxMi0wMy0yMDI2IDA4OjQ4LCBLYW5kcGFsLCBTdXJhaiB3cm90ZToNCj4gPj4gU3ViamVj
dDogW1BBVENIIDIvMl0gZHJtL2k5MTUvZG1jOiBFbmFibGUgUElQRURNQ19FUlJPUiBpbnRlcnJ1
cHQNCj4gPj4NCj4gPj4gRW5hYmxlIFBJUEVETUNfRVJST1IgaW50ZXJydXB0IGJpdCBmb3IgZGlz
cGxheSB2ZXJzaW9uIDM1Ky4NCj4gPj4NCj4gPiBBZGQgc2FtZSBCc3BlYyBsaW5rIGhlcmUgdG9v
DQo+ID4NCj4gPj4gU2lnbmVkLW9mZi1ieTogRGliaW4gTW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4N
Cj4gPj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNvbT4NCj4gPj4gLS0t
DQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYyB8IDMgKyst
DQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kbWMuYw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMN
Cj4gPj4gaW5kZXggMzhiMjg0YTBkYjgyLi5lNjBmMWY5NzcwNzAgMTAwNjQ0DQo+ID4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+PiBAQCAtNTEwLDcgKzUx
MCw4IEBAIHN0YXRpYyB2b2lkIHBpcGVkbWNfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdA0KPiA+PiBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBib29sIGVuYWJsZSkgIHN0YXRpYyB1MzINCj4gPj4gcGlw
ZWRtY19pbnRlcnJ1cHRfbWFzayhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgIHsNCj4g
Pj4gICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDM1KQ0KPiA+PiAtCQlyZXR1cm4gUElQ
RURNQ19GTElQUV9QUk9HX0RPTkU7DQo+ID4+ICsJCXJldHVybiBQSVBFRE1DX0ZMSVBRX1BST0df
RE9ORSB8DQo+ID4+ICsJCQlQSVBFRE1DX0VSUk9SOw0KPiA+Pg0KPiA+IE1vc3RseSBsb29rcyBv
a2F5IGJ1dCBoZXJlJ3MgbXkgcXVlc3Rpb246DQo+ID4gSSBrbm93IExOTCBwaXBlIEIgaGFkIGFu
IGlzc3VlIHdpdGggUElQRURNQ19FUlJPUiBiZWluZyB0cmlnZ2VyZWQgb24NCj4gPiBMTkwgcGlw
ZSBCLCBBcyBJIGNhbiBzZWUgZnJvbSBWaWxsZSdzIGNvbW1pdCBtZXNzYWdlLCBidXQgaXMgaXQg
c3RpbGwgdGhlIGNhc2UgZm9yDQo+IFBUTCA/DQo+ID4gQ2FuIHdlIGhhdmUgdGhhdCB0ZXN0ZWQg
Pw0KPiA+IElmIHRoYXQgd29ya3Mgd2UgY2FuIGFkZCB0aGUgUElQRURNQ19FUlJPUiBmcm9tIFBU
TCBvbndhcmRzLg0KPiA+IFRoZW4gaGVyZSB3ZSBjYW4gY2hhbmdlIGNvZGUgdG8gY3JlYXRlIGEg
bWFzayBhbmQgdGhlbiByZXR1cm4gaXQgZmluYWxseSBsaWtlDQo+IDoNCj4gPg0KPiA+IG1hc2sg
PSBQSVBFRE1DX0ZMSVBRX1BST0dfRE9ORQ0KPiA+DQo+ID4gaWYgZGlzcGxheSB2ZXIgPj0gMzAN
Cj4gPiBtYXNrIHw9IFBJUEVETUNfRVJST1INCj4gPg0KPiA+IGlmIGRpc3BsYXkgdmVyIDwgMzUN
Cj4gPiBtYXNrIHw9IFBJUEVETUNfR1RUX0ZBVUxUIHwNCj4gPiAgICAgICAgICAgICAgICAgIFBJ
UEVETUNfQVRTX0ZBVUxUOw0KPiA+DQo+ID4gUmV0dXJuIG1hc2s7DQo+ID4NCj4gPiBPYnZpb3Vz
bHkgdGhhdCBpcyBpZiBQSVBFRE1DX0VSUk9SIHdvcmtzIG9uIFBUTCBwcm9wZXJseS4NCj4gDQo+
IFRoYW5rIHlvdSBmb3Igc3BvdHRpbmcgdGhpcywgSSB0aGluayBpdHMgYmV0dGVyIHRvIGFkZCBh
Ym92ZSAgbG9naWMgaW4gbmV3IHNlcmllcw0KPiByYXRoZXIgdGhhbiBjb21iaW5nIHdpdGggMzUr
IGJpdCBtYXNrIHVwZGF0ZS4NCj4gDQo+IFJlZ2FyZHMsDQo+IERpYmluDQoNCklmIHRoYXQgaXMg
dGhlIGNhc2UgdGhlbiBJIHRoaW5rIGl0cyBiZXR0ZXIgdG8gZHJvcCB0aGlzIHBhdGNoIGFsdG9n
ZXRoZXIuDQpXZSBoYXZlIGEganVzdGlmaWNhdGlvbiBvZiB3aHkgd2UgcmVtb3ZlIGJpdHMgaW4g
Zmlyc3QgcGF0Y2gsIHRoYXQgd2FzIGEgY2hhbmdlIGluIE5WTCBIL3cuDQpCdXQgdGhpcyBjaGFu
Z2Ugd2FzIGludHJvZHVjZWQgaW4gTE5MLg0KV2l0aG91dCBhIHN0cm9uZyByZWFzb25pbmcgb2Yg
d2h5IHlvdSBhcmUgZW5hYmxpbmcgdGhpcyBpcyBpbiBOVkwgYW5kIG5vdCBpbiBQVEwgKHdoaWNo
IEkgZG9u4oCZdCBzZWUgaW4gdGhpcyBwYXRjaCBzZXJpZXMpDQpJIHN1Z2dlc3QgeW91IGFkZCB0
aGlzIHBhdGNoIHdpdGggYXMgYSBwYXJ0IG9mIHRoZSBzZXJpZXMgd2hlcmUgeW91IGhhdmUgYSB1
c2UgY2FzZSBmb3IgaXQuIEFuZCBpZiB0aGVyZSB0b28geW91IG9ubHkgYWRkIGl0IGZvciBOVkwN
CllvdSB3aWxsIG5lZWQgdG8gYWRkIGEgY29tbWVudHMgYXMgdG8gd2h5IHRoaXMgaXMgbm90IGVu
YWJsZWQgZm9yIFBUTC4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KDQo+IA0KPiA+DQo+
ID4gUmVnYXJkcywNCj4gPiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPj4gICAJLyoNCj4gPj4gICAJ
ICogRklYTUUgUElQRURNQ19FUlJPUiBub3QgZW5hYmxlZCBmb3Igbm93IGR1ZSB0byBMTkwgcGlw
ZSBCDQo+ID4+IC0tDQo+ID4+IDIuNDMuMA0K
