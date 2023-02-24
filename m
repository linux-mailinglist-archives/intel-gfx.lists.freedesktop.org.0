Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CFC6A1F66
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7076810E1CE;
	Fri, 24 Feb 2023 16:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DA510E1CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677255221; x=1708791221;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+OxeDubhqygj0jnJl/+0HncW1yVz77LcNe5FW0aobk8=;
 b=RGYzHPmk5rXjBlCsWCOkyjG8DCVeyQYeDTReqJFCaHCjzyEfZZS5wmx3
 eTzU/PmqEEhlITYCfj+gfYNi/Bl4O6C1h2nbtWaT1qmcTaCkrb/DIDQKB
 b9mRhyUX31rdPqoLbfLO80GsmUNKVyMLud699cCPGphmdIEOTrpwq7cul
 tMcTRsgOkxh0yG7EPsQvFBs7gSjcTg/Jujz4fyPpjMq6CUXTlwq7T4v5M
 miatZqZHNGBCpawH72lcx0AgnaYJgP7bYaP2CP5zemYlKTTnmtOVU8XmM
 hcy+FVphrGPENY4Cxedqq41yZG++wJKy7BV+D/U0gOFylyHVSjZerZ0n5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="331242140"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="331242140"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:13:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="846987334"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="846987334"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 24 Feb 2023 08:13:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:13:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:13:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 08:13:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 08:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTFjYGtn1enQm8afwOVjftkp6sZA/r6FIx4oZpaavRdnoEWFZkhyu9Z4gj0ARJvO7BdACxSkeDYjT28h0OOQGFcOi4STIWtD89+2pxIvGadQGbpdrpqJxTFYR6ST/JR78WctuXSjDVtT8XzWzrYat7IYHY6GID/XjRbZxJ/eyEhIVV+qqlV4EylWJEoJYquuFbr8TOl2/NppeQZhjBh2E3J50szMxBX8B2y4b3HtFu9EnS3JRK2+pVsoWBA6YValS/xA1hXDcFPtvIlLOlOWl6k0Y1ZgwkFvfP3/3jBj10/rdbxDC7zF1SmAU2diMpXNWorE0N0d/T9aIOIz3KE44Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+OxeDubhqygj0jnJl/+0HncW1yVz77LcNe5FW0aobk8=;
 b=d9CwgrRacktYLJZ5g7+ZerDYdOJl4YtB9vrWRgyp+5zgSC4870EHSbyufeZVXkEkpC3y4mibt5E+MC4PIVDcw5q3BWYihyvgi3BY/bEHCJgf7m1l0EGsC9IqDPmnz4kYYnjFVUJDPPubuk2igdiVx+re28/Ltsi7BPmHgEq1TOY4aub7K5sSO/6f425Ow8eoVdQUFTj7/qcdjLF5qVJvbBpKuw6LwC+vDx6efcL0JSa9eMCKWL64lAzeV+OF5fqJlILicGotmK8FWVJ3QbwBcNwFTdXMqFjw4v6TA+YCCsX1g0d/eHcol3uZcxxQVE7b+O+Ll0owOdJiecz9K2tX6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB6602.namprd11.prod.outlook.com (2603:10b6:806:272::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.20; Fri, 24 Feb
 2023 16:13:37 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e%3]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 16:13:37 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH] drm/i915: Use correct huge page manager for MTL
Thread-Index: AQHZRtK1Xg//lHHocEKS4ZyNP53mZ67bHsaAgAMjHICAAAIEAA==
Date: Fri, 24 Feb 2023 16:13:37 +0000
Message-ID: <CH0PR11MB5444F2115D15E84B0EAEA27CE5A89@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230222152641.1491307-1-jonathan.cavitt@intel.com>
 <76d0d9cd-5672-2e57-ca56-5dafdce1c2c6@intel.com>
 <73d57d14-ea0c-309a-43ea-4c0512662bbf@intel.com>
In-Reply-To: <73d57d14-ea0c-309a-43ea-4c0512662bbf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB6602:EE_
x-ms-office365-filtering-correlation-id: fd2d669d-a69d-454f-6114-08db16821625
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gII5tpRgGMIdYL7X901YSuM+IQzmHPiMfbxyABqFmnT7rHUOP071+ZlBg1nMfEgjbSLJxqDr74/bmSH+Pr5GwAgsUCZ8kRhjbPp3+v6z4VSUcuCNrvkeYrwyjSTvX4lA9HgX/fffX+Q9XdsqDvTPkLO3lE8/S+6aq1522WWff0Oh9QcZkZfwMhVoiEeME54FAA2lKoOidP2Jplfe2gfk+umJxzSBjINHau8biwtIvQ2m0rOg1j7cxEkSCAPEP1V08AmKi0YgrF2Vmnf7Rgx8Oy1NgzQRLhnsm1p1Ix55xlKohx+kctWbgaN/rF3HlBs8RDhcqYkzKedoupHve2I9FWlVhXPGTVdSvleaPQQQL5DIeBvRA4P/3iPulDFdFhaTLEroCTg1/SOJhxBX+/X8CnWmFqc+CEgeZvH2oXUlDbB5leXut7tE8hqZgUKNDzq/6xAYBiSAmupI7GKiaIlR21MyMNf5knLcI6fQP2D2ZZsKTNaHyTuNGVdasfpLHEhbP8qmXOchPl3QVSljkOpsg/EvAAQ0pl/Kyv2AXYZz40bOvJrEOhpMJo4B4sR0wLvEdhS4I70HtcU1WqTFa+Fednn/lZ3aSGZbm7aylN0Xct3jjJq1mBITqy59l+16LNgekN+Dzh+2iQGMyrd5Tag6b1XboKuNessyCYog1t7+nkeqMWbbK9Ye0ZbIhVtZ4/T3f46qwBRr2iXrBJpOm9ExGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199018)(6862004)(6636002)(8936002)(83380400001)(5660300002)(2906002)(54906003)(52536014)(6506007)(9686003)(7696005)(86362001)(478600001)(38070700005)(33656002)(41300700001)(966005)(71200400001)(53546011)(38100700002)(26005)(186003)(122000001)(8676002)(66476007)(316002)(4326008)(66556008)(66446008)(82960400001)(64756008)(66946007)(55016003)(76116006)(14583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnhBMFQ0RGUrbUluSlllU2l6cmIvR3ZJZHZ6Q1NSOSsyZmdReU16Wnd2T1Nk?=
 =?utf-8?B?Y2srZ09BTUZ6NUJWdFNCeUlPdFN4amY3dWhUYXRxVHQ5UWMxeWJzUEVZSXp5?=
 =?utf-8?B?WXc0N1hNdERxQTE1NlFTbEhYTjFUVGNOVEtNMFgzSHh0T3htQnhrQ0xGTU9N?=
 =?utf-8?B?bGU3WWtiRlVqN1hhb1IvN0JBUktNSlQ1dHJFZjFnZHVRQmFRaytkNjhwNFhJ?=
 =?utf-8?B?R3ZjVVBMK0VueFFNWGdFSTNLemJrRElsMUJoQUFIanRtMzQzYmZQN1I5QWh1?=
 =?utf-8?B?c3JZR3ZNTm14NktKWm4vVS9pbzl5M0wzQzlHcXkrWFowRFI1dUN2bk5yNVBY?=
 =?utf-8?B?YXNMdkhLYm8wcitCb2t0VG5VOU0zVGczZEM3QVIweGRvY041aThPTTVVZDhu?=
 =?utf-8?B?QkU1L0FHVDVDMW1nTk1oY1VQRzBFejR2QWJUZVM0WGFOQUVGcWxSOWR1T2dU?=
 =?utf-8?B?WlI0SjliVEZtQThKUEFVakY0bmo2MHhzYi9SSkovUXNUK1UxNlpmUFdnMnVE?=
 =?utf-8?B?bHEvU2p1V2tJNzExdm1NL09yemZpdmdVMm8vMy8vbFpVYnQreTQvT3gwV2pW?=
 =?utf-8?B?UDFXOUllR1JBdnd1eGdnU1FTOTd6Zm9nOTlWZTZ5R0pic1lMVnlXN2FTSDVO?=
 =?utf-8?B?TVN5Z1hnQjkvazE5WFBUZ1Nwb0IxYkxvR1hLeGwwRGd1VFV4T04yM3REbWxK?=
 =?utf-8?B?TWN1TmVkejJZbUxYYnFuMkEyeFU5S3lENFB5SmhiWDQrVmFIL3BuYk9vVld6?=
 =?utf-8?B?QUhqMnZ3c3p0eEpadFRYUjZnQ2N2Z1A1dEJqQ3ZKLzNTWnFRNE4wR0VGRDc4?=
 =?utf-8?B?RDJlV3dERDhTNjlKaTEvMkVneTVzWFd1QUhKVTg4TUhiNVdlL3hHRnZwK2hJ?=
 =?utf-8?B?NUlid042aFh5cFdyb05TamQ2Q2xlMVgrVllQZ1JZeU8rL2x0V0dPQVdKdnJy?=
 =?utf-8?B?LzhodXNYVFVkWlFZdGdWQmkxd2tOaVluQVFpc0VPaGJOeWJnc1Z6bTN6Ris5?=
 =?utf-8?B?MjZDTTVnbXpiaGpPMkozU0JXOTRCQ0JhZ3A4cVJHZ1FzRUh3U3FWalRIUzN6?=
 =?utf-8?B?bjhUeldqYTk2V01Ed3FnMHJ0REZTSXZoUExTQStJZG9BbHRCamVxODdQcitX?=
 =?utf-8?B?bEZpOVN1WlYvQmMwNHhjNGZ5dHMwci9uSXAyai9PUnlzMnNzL3VZMTZOMXAr?=
 =?utf-8?B?QlZrY2ZDc3cwQ2poWmpJZG5GcllJUlluVTUwTm04MU82Nm1UYndRdk0yb3Fl?=
 =?utf-8?B?aEtweW5Yelg2WjJaN0tkRG5nV2JKZnJZanBaZVR6cFdUS0NFOVMyQzBuYUhm?=
 =?utf-8?B?Vk0xZEVqOGtTcWxOZXFSQ2l5ZXRFUytRVHJOUENZSXl1TEc0OEdKRWU3eWxV?=
 =?utf-8?B?ZGxWOWpPbklwT3crR0N1b1RsWG8zL0VKcUN2ajBxT2h1Y2ROU2VoaWtNUXd2?=
 =?utf-8?B?b01ySmpBMGNCS2JOZXRWcVBSR0d2TVdXbFdDZXRhRm9uTlJZL1hLOFNXSkIz?=
 =?utf-8?B?eXJjKzMvYWI1QW40WTVVRmxQalBFSGNvdU91eVRFTVhPTk95empqQjlTWXpm?=
 =?utf-8?B?Zzd0aFJpU3BRNzZWMDhYNms4ZFZhRm9BSzdYVXUzaldjTFRKTStMM2xBY2tL?=
 =?utf-8?B?d3g4eCswQ1JCWVJ1SEhscXN6c01wU1kzUDhjNkJYSzgwRmlRZWVqWnJreGpR?=
 =?utf-8?B?VkZGc3ZNT3FBNG04ZVhOK2NGdnI0K05PUUovd3lhK0NUQ3hsMUJIbmVQWllj?=
 =?utf-8?B?RURlZnpKS2x1NHJKOVk4K1hFeWRiamUzdHNrT3lMSDJwOHJ0VUYwQk1XNGJV?=
 =?utf-8?B?OHkxcTU1Sldkem5nYnA4cEVrV3Y2OUllMjhUWEZnZTI5UlJFdjRNa2dPS1dL?=
 =?utf-8?B?SnMxRjAzVktqcGlJRnozcjMvcm9WUjNJdGxrc3R0KzBaTGdTSURTUitrZ09o?=
 =?utf-8?B?Y2VuQXZxY1lyQUp6S3NBZWNiaDNiWjBKaFdWUE1YYktNTC80aUovZ3pTMWdS?=
 =?utf-8?B?Q1M2RWVtYmZocXV4U3I4ZlBPWFExNUxXOHd6MCtFUlNMaENYYXJlZjlvSlVa?=
 =?utf-8?B?OVN2OTJmaXFkZjROdkttb0lOLzd2VFRjQ0Q0MndwNTJqL0tRQmR0cGZWazdo?=
 =?utf-8?Q?nr6WhyUDfJoEZteI79rMfWwOC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd2d669d-a69d-454f-6114-08db16821625
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2023 16:13:37.5539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vRA0JZvYAhn2RE4/NSv1U4Amk8Ttx3jwI/ev3y5lqlx/AaYBRxM1bq94CWci6uARCVTRaIZQbt01qsrIxE6EZxeGrN6IcY/u+onnaU82YM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6602
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct huge page manager for
 MTL
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
Cc: "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogRnJpZGF5LCBGZWJydWFyeSAyNCwgMjAyMyA3OjUxIEFN
DQpUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBEdXR0LCBTdWRlZXAgPHN1ZGVlcC5kdXR0
QGludGVsLmNvbT47IHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tOyBtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb207IFZldHRlciwgRGFuaWVsIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT47IGNo
cmlzLnAud2lsc29uQGxpbnV4LmludGVsLmNvbQ0KU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5
MTU6IFVzZSBjb3JyZWN0IGh1Z2UgcGFnZSBtYW5hZ2VyIGZvciBNVEwNCj4gDQo+IE9uIDIyLzAy
LzIwMjMgMTU6NTYsIE1hdHRoZXcgQXVsZCB3cm90ZToNCj4gPiBPbiAyMi8wMi8yMDIzIDE1OjI2
LCBKb25hdGhhbiBDYXZpdHQgd3JvdGU6DQo+ID4+IE1UTCBjdXJyZW50bHkgdXNlcyBnZW44X3Bw
Z3R0X2luc2VydF9odWdlIHdoZW4gbWFuYWdpbmcgaHVnZSBwYWdlcy4gIA0KPiA+PiBUaGlzIGlz
IGJlY2F1c2UNCj4gPj4gTVRMIHJlcG9ydHMgYXMgbm90IHN1cHBvcnRpbmcgNjRLIHBhZ2VzLCBv
ciBtb3JlIGFjY3VyYXRlbHksIHRoZSANCj4gPj4gc3lzdGVtIHRoYXQgcmVwb3J0cw0KPiA+PiB3
aGV0aGVyIGEgcGxhdGZvcm0gaGFzIDY0SyBwYWdlcyByZXBvcnRzIGZhbHNlIGZvciBNVEwuwqAg
VGhpcyBpcyBvbmx5IA0KPiA+PiBoYWxmIGNvcnJlY3QsDQo+ID4+IGFzIHRoZSA2NEsgcGFnZSBz
dXBwb3J0IHJlcG9ydGluZyBzeXN0ZW0gb25seSBjYXJlcyBhYm91dCA2NEsgcGFnZSANCj4gPj4g
c3VwcG9ydCBmb3IgTE1FTSwNCj4gPj4gd2hpY2ggTVRMIGRvZXNuJ3QgaGF2ZS4NCj4gPj4NCj4g
Pj4gTVRMIHNob3VsZCBiZSB1c2luZyB4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlLsKgIEhvd2V2
ZXIsIHNpbXBseSANCj4gPj4gY2hhbmdpbmcgb3ZlciB0bw0KPiA+PiB1c2luZyB0aGF0IG1hbmFn
ZXIgZG9lc24ndCByZXNvbHZlIHRoZSBpc3N1ZSBiZWNhdXNlIE1UTCBpcyBleHBlY3RpbmcgDQo+
ID4+IHRoZSB2aXJ0dWFsDQo+ID4+IGFkZHJlc3Mgc3BhY2UgZm9yIHRoZSBwYWdlIHRhYmxlIHRv
IGJlIGZsdXNoZWQgYWZ0ZXIgaW5pdGlhbGl6YXRpb24sIA0KPiA+PiBzbyB3ZSBtdXN0IGFsc28N
Cj4gPj4gYWRkIGEgZmx1c2ggc3RhdGVtZW50IHRoZXJlLg0KPiA+Pg0KPiA+PiBUaGUgY2hhbmdl
cyBtYWRlIHRvIHRoZSBodWdlIHBhZ2UgbWFuYWdlciBzZWxlY3Rpb24gaW5kaXJlY3RseSANCj4g
Pj4gaW1wYWN0ZWQgc29tZSBvZiB0aGUNCj4gPj4gbW9jayBodWdlcGFnZSBzZWxmdGVzdHMuwqAg
RHVlIHRvIHRoZSB1c2Ugb2YgcHRlIGxldmVsIGhpbnRzLCByYXRoZXIgDQo+ID4+IHRoYW4gcGRl
IGxldmVsDQo+ID4+IGhpbnRzLCB3ZSBub3cgZXhwZWN0IDY0SyBwYWdlIHNpemVzIHRvIGJlIHBy
b3Blcmx5IHJlcG9ydGVkIGJ5IHRoZSANCj4gPj4gR1RULCBzbyB3ZSBzaG91bGQNCj4gPj4gcmVt
b3ZlIHRoZSBjaGVjayB0aGF0IGFzc2VydHMgb3RoZXJ3aXNlLg0KPiA+Pg0KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQo+ID4g
DQo+ID4gSG9wZWZ1bGx5IENJIHdpbGwgYmUgaGFwcHkgbm93LA0KPiA+IFJldmlld2VkLWJ5OiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+DQo+IA0KPiBMb29rcyBpdCBwYXNz
ZXMgbm93LCBidXQgdGhlbiBmYWlscyBvbiB0aGUgbmV4dCBzdWJ0ZXN0Og0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTQyNTl2MS9zaGFyZC1h
cGw3L2lndEBpOTE1X3NlbGZ0ZXN0QG1vY2tAaHVnZXBhZ2VzLmh0bWwNCj4gDQo+IE1heWJlIGl0
J3Mgbm90IHRvbyBvdXRyYWdlb3VzIHRvIGp1c3QgbW92ZSBpZ3RfbW9ja19wcGd0dF82NEsoKSB0
byB0aGUgDQo+IGxpdmUgdGVzdCBzZWN0aW9uIGFuZCBza2lwIHJ1bm5pbmcgaXQgd2l0aCBncmFw
aGljcyB2ZXIgPj0gKDEyLCA1MCkuIA0KPiBJSVVDIHRoYXQgc3VidGVzdCBpcyBtb3N0bHkgb25s
eSBpbnRlcmVzdGluZyB3aXRoIHRoZSBvbGQgbW9kZWwgYW55d2F5LiANCj4gSSBndWVzcyB0aGF0
IHRlc3QgaXMgbXVjaCB0b28gSFcgc3BlY2lmaWMgdG8gYmUgY29uc2lkZXJlZCBnb29kIG1vY2sg
DQo+IHRlc3QuIEFuZCBtYXliZSB3ZSBzaG91bGQgZG8gdGhlIHNhbWUgZm9yIGlndF9tb2NrX3Bw
Z3R0X2h1Z2VfZmlsbCgpLiANCj4gQnV0IHRoZXJlIHdlIGNhbiBqdXN0IG1ha2UgdGhlIGV4cGVj
dGVkX2d0dCAmPSB+STkxNV9HVFRfUEFHRV9TSVpFXzY0SyANCj4gY29uZGl0aW9uYWwgb24gZ3Jh
cGhpY3MgdmVyIDwgKDEyLCA1MCkuIEFsc28gbWF5YmUgc3BsaXQgdGhpcyBpbnRvIHR3byANCj4g
cGF0Y2hlcy4gVGhvdWdodHM/DQoNCg0KSU1PLCBubyBtYXR0ZXIgaG93IGltcG9ydGFudCBpdCBp
cyB0byBnZXQgdGhpcyBwYXRjaCB1cHN0cmVhbWVkLCBpbnRyb2R1Y2luZyByZWdyZXNzaW9ucyB0
byAiZml4IGxhdGVyIg0Kd2l0aCB0aGlzIHBhdGNoIGlzIGp1c3QgZ29pbmcgdG8gZXJvZGUgdGhl
IHRydXN0IG9mIHRoZSB1cHN0cmVhbSBMaW51eCB0ZWFtIG1vcmUgdGhhbiBpdCdzIGFscmVhZHkg
YmVlbi4NClNvLCBmcnVzdHJhdGluZ2x5LCBJIHRoaW5rIHdlIG5lZWQgdG8gZG8gd2hhdCdzIG5l
Y2Vzc2FyeSB0byBnZXQgdGhpcyByZXNvbHZlZCBpbiB0aGUgc2FtZSBwYXRjaC4NCg0KVGhhbmtm
dWxseSwgdGhpcyBwcm9iYWJseSB3b24ndCBiZSB0b28gZGlmZmljdWx0OiBpZ3RfbW9ja19wcGd0
dF82NEsgaXMgdGhlIGxhc3QgbW9jayB0ZXN0LCBhbmQgd2UganVzdA0KbmVlZCB0byBtYXJrIGV2
ZXJ5IG9iamVjdCAuZ3R0IHdpdGggSTkxNV9HVFRfUEFHRV9TSVpFXzY0SyB3aGVuIC5zaXplICYg
U1pfNjRLIGlzIG5vdCB6ZXJvLiAgV2UNCmNhbiBkbyB0aGlzIGluIG9uZSBvZiB0d28gd2F5czoN
Cg0KMS4gTWFyayBpdCBpbiB0aGUgb2JqZWN0IChJLkUuIGFkZGluZyBpdCBkaXJlY3RseSB0byAu
Z3R0KS4gIFRoaXMgbWFrZXMgdGhlIG1vc3Qgc2Vuc2UsIGJ1dCBpcyB0aGUgbW9zdCBkaWZmaWN1
bHQuDQoyLiBNYXJrIGl0IHNlcGFyYXRlbHkgKEkuRS4gZXhwZWN0ZWRfZ3R0IHw9IG9iamVjdFtp
XS5zaXplICYgU1pfNjRLID8gSTkxNV9HVFRfUEFHRV9TSVpFXzY0SyA6IDApLg0KICAgIFRoaXMg
aXMgdGhlIGVhc2llc3QsIGJ1dCBpcyB2ZXJ5IGxpa2VseSB0byBiZSByZWplY3RlZC4NCg0KV2Ug
cHJvYmFibHkgaGF2ZSB0byBkbyBmaXggIzEsIGFuZCBhIGRpcmVjdCBmaXggaGVyZSBwcm9iYWJs
eSB3b24ndCByZXBhaXIgdGhlIGlzc3VlIDEwMCUgKFRoZXJlIG1pZ2h0IGJlDQpzb21lIG90aGVy
IG9iamVjdHMgaW4gdGhlIHRlc3QgdGhhdCBhcmVuJ3QgY29ycmVjdGx5IGZvcm1hdHRlZCkuICBI
b3dldmVyLCBpZiB3ZSB0YWtlIHRoaXMgb25lIHN0ZXAgYXQgYSB0aW1lLA0Kd2UnbGwgZXZlbnR1
YWxseSBnZXQgdGhpcyBwYXRjaCB1cHN0cmVhbS1yZWFkeS4NCi1Kb25hdGhhbiBDYXZpdHQNCg0K
PiANCj4gPiANCj4gPj4gLS0tDQo+ID4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaHVnZV9wYWdlcy5jIHwgMyAtLS0NCj4gPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvZ2VuOF9wcGd0dC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDMgKystDQo+ID4+IMKgIDIg
ZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMgDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMNCj4gPj4gaW5kZXggZGVmZWNlMGJjYjgxLi4xNjU5YWRhNGNlMzMgMTAwNjQ0DQo+ID4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jDQo+
ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5j
DQo+ID4+IEBAIC03ODQsOSArNzg0LDYgQEAgc3RhdGljIGludCBpZ3RfbW9ja19wcGd0dF9odWdl
X2ZpbGwodm9pZCAqYXJnKQ0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqAgR0VNX0JVR19PTighZXhw
ZWN0ZWRfZ3R0KTsNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIEdFTV9CVUdfT04oc2l6ZSk7DQo+
ID4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoZXhwZWN0ZWRfZ3R0ICYgSTkxNV9HVFRfUEFHRV9TSVpF
XzRLKQ0KPiA+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBleHBlY3RlZF9ndHQgJj0gfkk5MTVf
R1RUX1BBR0VfU0laRV82NEs7DQo+ID4+IC0NCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGk5MTVf
dm1hX3VucGluKHZtYSk7DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodm1hLT5wYWdlX3Np
emVzLnNnICYgSTkxNV9HVFRfUEFHRV9TSVpFXzY0Sykgew0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jIA0KPiA+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2dlbjhfcHBndHQuYw0KPiA+PiBpbmRleCA0ZGFhYTZmNTU2NjguLjljNTcxMTg1
Mzk1ZiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0
dC5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfcHBndHQuYw0KPiA+
PiBAQCAtNTcwLDYgKzU3MCw3IEBAIHhlaHBzZHZfcHBndHRfaW5zZXJ0X2h1Z2Uoc3RydWN0IA0K
PiA+PiBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLA0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9IHdoaWxlIChyZW0gPj0gcGFnZV9zaXpl
ICYmIGluZGV4IDwgbWF4KTsNCj4gPj4gK8KgwqDCoMKgwqDCoMKgIGRybV9jbGZsdXNoX3ZpcnRf
cmFuZ2UodmFkZHIsIFBBR0VfU0laRSk7DQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoCB2bWFfcmVz
LT5wYWdlX3NpemVzX2d0dCB8PSBwYWdlX3NpemU7DQo+ID4+IMKgwqDCoMKgwqAgfSB3aGlsZSAo
aXRlci0+c2cgJiYgc2dfZG1hX2xlbihpdGVyLT5zZykpOw0KPiA+PiDCoCB9DQo+ID4+IEBAIC03
MDcsNyArNzA4LDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9pbnNlcnQoc3RydWN0IA0KPiA+
PiBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLA0KPiA+PiDCoMKgwqDCoMKgIHN0cnVjdCBzZ3RfZG1h
IGl0ZXIgPSBzZ3RfZG1hKHZtYV9yZXMpOw0KPiA+PiDCoMKgwqDCoMKgIGlmICh2bWFfcmVzLT5i
aS5wYWdlX3NpemVzLnNnID4gSTkxNV9HVFRfUEFHRV9TSVpFKSB7DQo+ID4+IC3CoMKgwqDCoMKg
wqDCoCBpZiAoSEFTXzY0S19QQUdFUyh2bS0+aTkxNSkpDQo+ID4+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAoR1JBUEhJQ1NfVkVSX0ZVTEwodm0tPmk5MTUpID49IElQX1ZFUigxMiwgNTApKQ0KPiA+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlKHZtLCB2
bWFfcmVzLCAmaXRlciwgDQo+ID4+IGNhY2hlX2xldmVsLCBmbGFncyk7DQo+ID4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBlbHNlDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdlbjhfcHBn
dHRfaW5zZXJ0X2h1Z2Uodm0sIHZtYV9yZXMsICZpdGVyLCBjYWNoZV9sZXZlbCwgDQo+ID4+IGZs
YWdzKTsNCj4gDQo=
