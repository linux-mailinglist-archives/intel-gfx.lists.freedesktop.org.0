Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531358C80F1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 08:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A96010E085;
	Fri, 17 May 2024 06:31:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3b+T5A1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77EFB10E085
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 06:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715927501; x=1747463501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tP5Hnf5d8S0HSOjShUI5Qnjpimop4uruvm1lFH5KPwc=;
 b=h3b+T5A1rp0GfXMIbhVez6KxdCSem/YRDl5xFSTUb0KL60xtCNlyk27r
 gNvM+LpWkqWQsfhcxiAyG6qenSaOv+n0AXfT2mkniA7RraCTYbDbth393
 UgPD72kmIF3e2OcPVwFAUXnDd+TdgNcBZRrWpmtYZsIaJNBhdCg8uRQNr
 wovc6R33d4NUHHNROK8aDrCLeQlD+TJHzqLMJLOyx8K7KLAT8GABOAp9J
 lyk11qrc+HoP5/+0PGQxAYOlpTn4NsW4ObLL/5kCTZsS2QGap07zAaqZU
 whsE2cxBIB/qLwt9ZEniMrWE4B5i3bsg43GzgTKmeZ616xmjA6FdP6NEs g==;
X-CSE-ConnectionGUID: 0Rs96YaqRQ+F6M1w1HK83g==
X-CSE-MsgGUID: Ih+nyxK3QDazfza6fLIvzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12298422"
X-IronPort-AV: E=Sophos;i="6.08,166,1712646000"; d="scan'208";a="12298422"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 23:31:41 -0700
X-CSE-ConnectionGUID: VwKbgM/zTbiIAECYJf6Gag==
X-CSE-MsgGUID: daOBC5N3T9+vx/NXYb4Bog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,166,1712646000"; d="scan'208";a="36199980"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 23:31:40 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 16 May 2024 23:31:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 16 May 2024 23:31:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 23:31:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oa85Z1x4yb3xWi/C7V/XYI3ztK3cUffFETmW1bW/CSR5GieZJnrdSd4JRm/5PZmxeHxQDTmllgU7gsk0wiN8FwKQxLxHET8U9BB5sIVQH91O799eSUN6Qt/0PioVE4RhYsGMbkV5XZ2vp+rXwDRJItFAQxr1bXnCh0ma98Ozv9sMBV3S0aLMLD91OBvCZBnQOMTMOeqJ3w4BwnC6Oe2APqpvj1wL5W3yAxdMhQRgHGfWH+CIFEQatiorHeobgpsExgRPAw/bi+8NMEtOGIRFqPbvHVyQ5SoIKwmpQzbNKtUEDWAaEvzeLvq9q5QoRXIxW38tqhlJ3lA9UQ9gwso7pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tP5Hnf5d8S0HSOjShUI5Qnjpimop4uruvm1lFH5KPwc=;
 b=FkquuJ32GJk66AdKHmv0CxGEQZ5/Jry8SXbAJfL38XbyqMyWd8BTvxqM8UPYJS5NfCcMlF3hZNjd3Jo2cCHsw1e9MBPrSa+FRODjj/XZj3QVAOlfeXOrguBYDwloN/2aweLWknlsxt3XLkMmP8HUg6Xz8IrMAhCSJ/hqGfB0ouwtGhAaPWICY4teTVaW48nvjQGB9c+mGxy0PwwKJLMQXq8pTUmPozd6PHqE/7kFOO2fn1THDgHT1rsJh6AwsqTqus/rfxIlRx6TdJBexenuILryr4hIZDwHw8TUqNzgmIraKr8+PETVgT45tCZs0ROAfJXTO/PyR7Vih3hkFNBZQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6143.namprd11.prod.outlook.com (2603:10b6:8:b1::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.28; Fri, 17 May 2024 06:31:33 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7587.026; Fri, 17 May 2024
 06:31:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6
 bits wide
Thread-Topic: [PATCH 2/3] drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6
 bits wide
Thread-Index: AQHanSAYSmVdzq46dEqECLB+d+NoF7GbDVHw
Date: Fri, 17 May 2024 06:31:33 +0000
Message-ID: <DM4PR11MB6360BF6AB27AD30A9296F533F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
 <20240503060621.987820-3-jouni.hogander@intel.com>
In-Reply-To: <20240503060621.987820-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6143:EE_
x-ms-office365-filtering-correlation-id: 2963428a-a4eb-488e-69f1-08dc763afe92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ejhYOVc3T3c4dWxRMzRKQnNXVEdqemR5TitOY1lieFNpSUp6OGdFRVdsbUJn?=
 =?utf-8?B?NEQvOE1MRytqQzVKY3l4QzFRcGhuYlNwM2xvUkZPQjhUS1ZNSDF0aUl0MkpN?=
 =?utf-8?B?dXlTNkdXT2s2aCtWNkZHdlZvM1g4dDBRT2xsdEdlRStrL3FDQ1RvQUllSyti?=
 =?utf-8?B?bkFzYm5BVVRBNzZWaFNaUHFRaXFUUWQrQ3hHZ0ZoVWZaRFBFVzBpTktEWlVR?=
 =?utf-8?B?MXlXek03QVJ0L0VlY1hCSU5EeS85WHFDcFZ6dkwrMEpjMkdCMTd0Y3JNditP?=
 =?utf-8?B?UVk5Skh1MEt3MjVUTEk0RldaOFB1SW9DSldvSnZhMjFiWkpaak9oU3VwZWt0?=
 =?utf-8?B?Y05hUE9nV1ZCSEFzUnZ4Z0I5eGZkZVhIeFdnakp2K2Y2YmV6UDIzYS9kVUlG?=
 =?utf-8?B?M0M1OVNJZWIxbDFBY3hkQzlaM09ocHhlOExIRERjeXlFUlM2ZmlXY3NyL1B3?=
 =?utf-8?B?M0VlVW9HdHZjTjY4N2RUTGE5eUtydHJ1NlIvejVkSnFpMStUWkE0UEJzb0E3?=
 =?utf-8?B?R1pSS1FVM05XTUN3U1dwSm0rdUM1RnBrKzdWZTZpbExGY1Zvb1ZXcjQ4LzNa?=
 =?utf-8?B?ZkpSb3ZZTDlITlo0LzRJeW1vYTB3V1dIOEFkeTdsL28yNjZkNTA0K0F6NC9x?=
 =?utf-8?B?RVBnYk8wSFp0VjVYenB3NkJjZTh1TEZWSGhMcGozYkFVQkNQVEUwdHVaZDVl?=
 =?utf-8?B?ME9vSjNWK2xYOTg1STVPUGpKZkJ0Z1dpOWhkRzUvT2hUQVNndmEwSXdZbzdO?=
 =?utf-8?B?WkRia1hSdEpVb0hUOXlPcVczMzNsak1pWHJiaWRXa2NxTStSZU1kSnc4TDJz?=
 =?utf-8?B?NjlQNExjOHlyZUxPT1RZWnZ5eUhSd2Q5dHVKcVhMQ08vZ0ZyNXRVbkpmNGNx?=
 =?utf-8?B?UEZ3OTExbG5aUy94cWJuQjJEcnVVTzFNZEZXRmtOM3MxYmtDM3o1OHZVRFVw?=
 =?utf-8?B?dkpHSWh6VXYvOGlyOStEZHZpcUV4cGtBeWJSMzlkNm8wSUJndTBJWXh1QkhG?=
 =?utf-8?B?SUtjUWpua2djcFAwbnU5b09OT2ZaMGNMN29Fc2RlREFCbE1sZnI3Z0RGVXhz?=
 =?utf-8?B?OUJvM0Vpbk10OHl0RHZaNUx2bHFoVUg1QytKcDdPTG5DTDJpcFFtVGo2akw2?=
 =?utf-8?B?YkpLY1FjWEJydGFUbUl5OWlicEtQMkFKb0xNVmF0bXhLYmJxQlAweDY1YVVx?=
 =?utf-8?B?QlBlNXJHMll5bEJtaE1UdXY0SXRVU0ZOQnRHVmVNWHZEV1psMFoxT0xnTEVM?=
 =?utf-8?B?b1U4OXF0Qmk3UHVKZHFYQ3QxVXJtLzdYeEN4cnNCSEZkN1dycHNVRHNWYVBa?=
 =?utf-8?B?WHNGVjFHc0JkWm1adVc0NW5BZjJOR3hNZ1FFREJMb09WNXM0Q2E3U0xpdjZh?=
 =?utf-8?B?bHdXUlFLcm1MeW02NlZhT2hjWjlwR0c5OUMya052M1hSbC9iaytkeTVLamlE?=
 =?utf-8?B?TDhrWnZUSzRkdU1NVWtWUmhpSjh6Z2QrLzVvNCtLVU9teGxlNElzWkxYeTJD?=
 =?utf-8?B?bDA4eU8wZFB5ZzUrRFJtRm5LcnFJRGlrTjZML1FWaThBcys5K1dwb2FsTkRJ?=
 =?utf-8?B?eDhjbmVoZ2gwdTZUWlNHb3hXYWw2b3JmUUZCeXFmWm80QnZCa2tDeHB1Umts?=
 =?utf-8?B?UHFUd3N2VzJoV0hLdWxZbHdiNHNRcUZ6dlNzUnpMbEo3Y3gxSFJlcDN3SWhR?=
 =?utf-8?B?Z3VtMmtMQmRjczY0NXpBMkZTVDlNRzZrODFmWGxUbWN1cTFDZHNCT1NJVnZS?=
 =?utf-8?Q?OfUUe73GlTXpnF+DGON/CbdwSGV8ep2b3GJZXaj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1VJWFp5Z0hlT2R3R1lZay9CaGV4cmhZZGtDY2wwUVlJY2R5dlBMemV2SkM2?=
 =?utf-8?B?WlhlTUE3WXZVZ1MrMllMaEljVjdEemFyVWdZOGp0Vm1BNjRsQjJvRnJEVmJa?=
 =?utf-8?B?YUIwQ3lnUy9BTUpHSVBJYVZWcVNINTMzWUJ5RGNkY1BjOGFXOHdBdCtkd0ZI?=
 =?utf-8?B?NVcvRjNvZWJpWkJYdjcxK20zemhBMnpUbkZ6Mngyc2QydlZUa0dIRXQ0MmJR?=
 =?utf-8?B?Z08ybE1RRzJhUmQyd0R2eWJPbUU3Y3RZazJ6aE45citpTjlMNVRxWGFsb25r?=
 =?utf-8?B?UkhlbHEvREdoSzVzOVRLWE5VMWpBbW52dmtJajNqRktOenVWR2d0ZERuSDVp?=
 =?utf-8?B?ZythVlhxZnkxc1VkQXBkbnVrdDFvTGFhY3ZPU25UbGcwa3hIbGJQUWNQU3V4?=
 =?utf-8?B?MFlmSDJYTStVSmwzcG5RNEkrRldzNDRQQlJYTFMvRmdKcTlHNTZDdUNLaHNL?=
 =?utf-8?B?UHdxYjd4RitEeDlqK1RISzg1TnpoK0Q0QzVrZVRlRm95ZW92eUpqYTVKVUJQ?=
 =?utf-8?B?aHJBb0FjeUd6SnNkZkQyc0RlTnM2UENoZ05FQm1uSlg3Zk9ydnVHZHljSmEx?=
 =?utf-8?B?NkRkcXRoZWVjdHI4amI3SWR1TnNGeFRpUXB3bG9xYUtwTGNBNVdETGY1cGsz?=
 =?utf-8?B?Q0ZybTU1Z0tibC9IUGNweWNXaUUvdkZyWTQzWmd6N0FSbGpKellzdHFOUEQz?=
 =?utf-8?B?Y29SdHI4MHBvSTlwSEtNV1B6Qk1RcEN0TGlkZFNFRE52cWNaL3NyWmJmQzc1?=
 =?utf-8?B?YVMvTkEzRTlDdFI5V3MxNDRkdHJuSjJ5M21ETHNXSjJhWnRtVmpjODJVbDJQ?=
 =?utf-8?B?VVNVbVQvSzZTaXFoK1UvdEhnLzEvU0tydXlHUGJWOXZpSGNmNTVUc1l5TzRp?=
 =?utf-8?B?LzJ0VEs1SEdWcVBhR0dtYjdyR2NBUGcxdnN3WjBmRmhFeTFhU3V3RWlSaVdM?=
 =?utf-8?B?ckVyZVFuVXovTTNHNlU4ejNUWUhVYUhabzFGcVZRQU12ZEVxQTU4Y0I5cWJq?=
 =?utf-8?B?cjl4d1doVWtHYmoveVo4L0RGZm96aVczRGVCcXV5b3huOGtLWVdwVENPc2xX?=
 =?utf-8?B?RkZJLzk1MHdFOSt5UEdpanFLZmdpTVpudEZzWXpFOVh0MkNUbWg2dmZ1NzA4?=
 =?utf-8?B?S0JtZ0gycWw3Z2hGc2VFc0xIU1JzRzRjb1ZMS0xDRjlTU0c5a3R2bFpMSXVw?=
 =?utf-8?B?eXd0UU9RdkYvNzlkNHBCM3VIOVp4RDhnOTJuU0w2WGVOQmJNc3Z2Vnc1S0pJ?=
 =?utf-8?B?NlZkYUlxRzdvdHp1aVFlbUJwY240Y2tQNmE1dGhBbk9VT2k4TFNaTkhubzNZ?=
 =?utf-8?B?ZUxBZ3NZZ3J5bjZZMW1FTk1GbE1WdG91bGhsV2tpMnk4NWVrSmRWQ0t0Ym4x?=
 =?utf-8?B?Si9ZUUxyUE5Dbkc3aEFSN2NyMFp5VVdtTXRmV083UThwMlhNMUo4RDl0TkFv?=
 =?utf-8?B?RnNaS3NnR1RjZlEraytkS1RuUyt0aEhsMUJFUnQ5L2lJOGMrQW1ZUHR2RFVM?=
 =?utf-8?B?MHFNa1pUclV6Sy9qMVNaTjcrcWJTc2x3NkxYMGoyMUZkNGdGSGlNVUQ1STRW?=
 =?utf-8?B?dEhLRjZWTjJzMk5ValMwVkk2VkRrOVM3RDJsWXlXSkFxeWgyYzNXcVZNc0J4?=
 =?utf-8?B?Q1BmMmprOEQrVVlzaHZIWG9rWS9sZkIzN3RNaXBpMlpVaU1VVkpMMkdxZHgx?=
 =?utf-8?B?dTd3cU9jdEVQTzJYYnN0ZzZJbU9sM2tpMmpQYldIb25KSGRMUGdWaGdxaDkw?=
 =?utf-8?B?eUE1dW1IU1YvYzNnUEJsZFcyZ2haZ09ONk15dDE0ZGJUMUxrcWFjeVp1aXB6?=
 =?utf-8?B?N3hzZWJPZFBrbTlITXBWL3Z0NE9rcGpXZHlFZ2szUmdvWXhWeWRBSWd0QVB4?=
 =?utf-8?B?RGliVUJjMGFLVUtGc3JsOG5salBaaytBVWhDdGQ3Z2hlVitmdnJZaU5SOWFV?=
 =?utf-8?B?ZEQ4dGdCL1BUd1M0STR4b3FYYktSd0swcHV2VTNaOW5TQTM2eXZFY1ErcktZ?=
 =?utf-8?B?NWNTbTdjZUVUUm9rMCt6OGlNYUd3clAyTTJyWGtrU3FvODc3QUFWMUpKVXE0?=
 =?utf-8?B?ZndTdmpzcE1QcHFjbHNqeWJlV2drQ3Z0N3JpekcrNnArTXQ5QkxoME1hZlNL?=
 =?utf-8?Q?2uieP2xd5hLyfSkGw50+rDbiH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2963428a-a4eb-488e-69f1-08dc763afe92
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 06:31:33.0573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QvKEptvUEFwadZVSgeE/o8K0WCMq2OLqfg6HNnwBCa7dvE6x+M1hDMJl57kPb/XUo0MPu5J5uwiM/eJwNz424Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6143
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBNYXkgMywgMjAyNCAxMTozNiBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAyLzNdIGRybS9pOTE1
L3BzcjogTHVuYXJMYWtlIFBTUjJfQ1RMW0lPIFdha2UgTGluZXNdIGlzIDYgYml0cw0KPiB3aWRl
DQo+IA0KPiBPbiBMdW5hckxha2UgIFBTUjJfQ1RMW0lPIFdha2UgTGluZXNdIGNvbnRhaW5zIG5v
dyBiaXQgMTM6MTguIFRha2UgdGhpcyBpbnRvDQo+IGFjY291bnQgd2hlbiBlbmFibGluZyBQU1Iy
X0NUTC4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IEJzcGVjOiA2OTg4NQ0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMiArKw0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oIHwgNCArKysrDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDY3ODk4N2JiZTE2OC4uNGQ2N2Ez
ODRlMTQ5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gQEAgLTkwMCw2ICs5MDAsOCBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIAkJdG1wID0gbWFwW3Bzci0+YWxwbV9wYXJh
bWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyAtDQo+IFRHTF9FRFBfUFNSMl9GQVNUX1dBS0VfTUlOX0xJ
TkVTXTsNCj4gIAkJdmFsIHw9IFRHTF9FRFBfUFNSMl9GQVNUX1dBS0UodG1wICsNCj4gVEdMX0VE
UF9QU1IyX0ZBU1RfV0FLRV9NSU5fTElORVMpOw0KPiArCX0gZWxzZSBpZiAoRElTUExBWV9WRVIo
ZGV2X3ByaXYpID49IDIwKSB7DQo+ICsJCXZhbCB8PQ0KPiArTE5MX0VEUF9QU1IyX0lPX0JVRkZF
Ul9XQUtFKHBzci0+YWxwbV9wYXJhbWV0ZXJzLmlvX3dha2VfbGluZXMpOw0KPiAgCX0gZWxzZSBp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ICAJCXZhbCB8PSBUR0xfRURQX1BT
UjJfSU9fQlVGRkVSX1dBS0UocHNyLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmlvX3dha2VfbGluZXMp
Ow0KPiAgCQl2YWwgfD0gVEdMX0VEUF9QU1IyX0ZBU1RfV0FLRShwc3ItDQo+ID5hbHBtX3BhcmFt
ZXRlcnMuZmFzdF93YWtlX2xpbmVzKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiBpbmRleCBlYmMyMjk5OTU3MmMuLjY4MzgxYmJmNDYy
ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Jf
cmVncy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3Jl
Z3MuaA0KPiBAQCAtMTcyLDYgKzE3MiwxMCBAQA0KPiAgI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9J
T19CVUZGRVJfV0FLRV9NSU5fTElORVMJNQ0KPiAgI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9JT19C
VUZGRVJfV0FLRShsaW5lcykNCj4gCVJFR19GSUVMRF9QUkVQKFRHTF9FRFBfUFNSMl9JT19CVUZG
RVJfV0FLRV9NQVNLLCBcDQo+ICAJCQkJCQkJICAgICAgIChsaW5lcykgLQ0KPiBUR0xfRURQX1BT
UjJfSU9fQlVGRkVSX1dBS0VfTUlOX0xJTkVTKQ0KPiArI2RlZmluZSAgIExOTF9FRFBfUFNSMl9J
T19CVUZGRVJfV0FLRV9NQVNLCVJFR19HRU5NQVNLKDE4LCAxMykNCj4gKyNkZWZpbmUgICBMTkxf
RURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfTUlOX0xJTkVTCTUNCj4gKyNkZWZpbmUgICBMTkxfRURQ
X1BTUjJfSU9fQlVGRkVSX1dBS0UobGluZXMpDQo+IAlSRUdfRklFTERfUFJFUChMTkxfRURQX1BT
UjJfSU9fQlVGRkVSX1dBS0VfTUFTSywgXA0KPiArCQkJCQkJCSAgICAgICAobGluZXMpIC0NCj4g
TE5MX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFX01JTl9MSU5FUykNCj4gICNkZWZpbmUgICBFRFBf
UFNSMl9GQVNUX1dBS0VfTUFTSwkJUkVHX0dFTk1BU0soMTIsIDExKQ0KPiAgI2RlZmluZSAgIEVE
UF9QU1IyX0ZBU1RfV0FLRV9NQVhfTElORVMJCTgNCj4gICNkZWZpbmUgICBFRFBfUFNSMl9GQVNU
X1dBS0UobGluZXMpDQo+IAlSRUdfRklFTERfUFJFUChFRFBfUFNSMl9GQVNUX1dBS0VfTUFTSywg
XA0KPiAtLQ0KPiAyLjM0LjENCg0K
