Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fO3LKff+pGmpyAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 04:07:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7E41D29D3
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 04:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C6210E41B;
	Mon,  2 Mar 2026 03:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VxCxwbWR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAB710E41B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2026 03:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772420850; x=1803956850;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zGNSq/J6HmS5AmLx9wuqm1FgdEttqt2N4idzozxfPK8=;
 b=VxCxwbWRR4EIe/KAAq1Q7PpyAx+DgAlgAhTtziiNMoUQErqGyniwO0xA
 1+8Ff2QqrCv3xKgl4xbVF4sAjZj2sPwlLbq/Pb2a7IM/+ok8cgFOZdXhE
 01B5ySzsEI9WQbYWYHEmhnPal7VmwyQJ/QZH3LKY7YbYCRelTv2Gjrjoe
 uL/r8YqmNcckFx4Xzl4khZOcbpwKuInUeIXitsERXsXFIJ82Kau6i2/sK
 uzHsK3/JCdRw1zpyFoJqr8ce7QMHjiC3Ya/B/Qd4YbTyeUgcDChkypCqO
 pfuGqSOVmmY3fTVWt8Y0efUk8RX8m1JfgxowTq64Y5rZIB5pOSckRv1Y+ Q==;
X-CSE-ConnectionGUID: wF9KaBIETq2kDNN9rg9/LQ==
X-CSE-MsgGUID: rHHzZVYQT4eABb71oYb5mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73609054"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73609054"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 19:07:30 -0800
X-CSE-ConnectionGUID: sCUblhq7QQy8mPfAde5VWg==
X-CSE-MsgGUID: 26gEtQq1R3SExnJnIjhpxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="215546291"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 19:07:30 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 19:07:30 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 19:07:30 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.9) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 19:07:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JolGbGZK9Tf8+VG9YBamUsZMeOyMASHTZIf6hy0MCF9RUraHQTWv3IXiPOuggONOQYXpGL4bkLbplagq1dV/xgzDA9fTQ453/QyqNlVPB9ZbLZks31yHAD6HVtS3c6nQQCEk8bK8hf/cUFXCN2KYScF9TT+5f9rNuJTq907rUTJDpjFxDJoWzH/xZsb3wZTT02/8osYfDLpLSc5yJ25MHSme090qad5Dehir1cEfA7AcyccUpQp21aM/napQCulc8oeD4NkpqlLg/pm559+5wvaPcl7BWFmi285QDU4RUGtze7E7MTDYhL8AREyaoTJ8SxjN0ajKvLj2YkWfHQmskw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGNSq/J6HmS5AmLx9wuqm1FgdEttqt2N4idzozxfPK8=;
 b=TX493pUbnlSQMx0GDzHZ6UuD+KPBBhP5s2/mMQywioaQmMwV5FLUthZNnJLz2RlYLJm91xDsmBqb3Io1W47qMf8DM4TQrDDZQDyzbGaXvL6umT00C3pC/+u5tmKHWEf7oTypx2UNgzw6ba5eMQQiGyEDcWVfH85D4vaRtDStkGxHj9P0EkcilegV64AEJLpp1o4r5mt1wU0FGvGms8Y0DPUFbIJJLfl9g47D+CqAZQq3vYJpQ6JURZ22atp2DX+Kd1KNinYaZLvr60MkRE9XmhRj/eUgK6bl1c5RT6y4gQTEHSGXR/Vi+62CH32dzCnya1Gg0OxETJVAmYXIypvIoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 by CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 03:07:21 +0000
Received: from LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5]) by LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 03:07:21 +0000
From: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "tursulin@ursulin.net"
 <tursulin@ursulin.net>, "airlied@gmail.com" <airlied@gmail.com>,
 "simona@ffwll.ch" <simona@ffwll.ch>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: RE: [PATCH] drm/i915/display: use port not transcoder for
 PORT_ALPM_CTL
Thread-Topic: [PATCH] drm/i915/display: use port not transcoder for
 PORT_ALPM_CTL
Thread-Index: AQHcgUTs8oE04XCfr0mYsL/5e+PlYbWa4G2Q
Date: Mon, 2 Mar 2026 03:07:21 +0000
Message-ID: <LV3PR11MB876856B67C5CDE3FDF419064F57EA@LV3PR11MB8768.namprd11.prod.outlook.com>
References: <20260109050021.2017982-1-kaushlendra.kumar@intel.com>
 <6dfa37a9c19089bda5efe1c43d1a40d88d53cf89@intel.com>
In-Reply-To: <6dfa37a9c19089bda5efe1c43d1a40d88d53cf89@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3PR11MB8768:EE_|CO1PR11MB4883:EE_
x-ms-office365-filtering-correlation-id: 08b4fd8b-ed5a-4955-d2ef-08de7808d22b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: NIFk+g+jsilcxKpL9zjeV37qcBTkKkSrlbuE9LmJdlre/BA8XrxB9oAoM7eo9qQRQJXv+4dS+WBrHaTlGTKKLA4VrdHBsYchsF8CddUjn8LivVEuiSqkopi5Jeh/IPbiUONdaUqvUfKZ1KwgB9yyg3j3T14NNT3Ikc9wK8Zujt2/cxUYx3jX1GKNCGXfTcol45V9/IXFXxDqcS5VzaIcFpKJxy7KKjVY5ljVDOkdnZKuPkm2CY4SglXpulB1iOMlBBF/3oAcA2Z4QjZrXEsdoOFkK0cspsVp5DAV6qa6gZuGh+ONWNbDb1mo2pDVPhTxHYPsGNDNu/6b/jtkXa6NYVa/0vJDIda1BMM47kr4ZwNxc1oTlWdaTsYCUw5W2p77aFiCh5bnMy+W0LZPAk/+Ht9DNjmL0tiLUdWdr/ef5763S47ECCBZYcU4o7OzBbMsqrssm8Oza38sOklWKiylq7GNxdsuy3wyeDr5XUaoQ5VK8x9ObgIey9y9Sx0s9wHqvw27bUxseSzWd7++gca71U6R6P62Qmk61SkzUdx58BTz/WWz1TZbWqFgbpY6HSDPoQ6kw2RJpm0hNGdfevif+/5AlvQA2QZDvvyKd49yVVb9/noUfOPPRfvvVHYlXOF48WNYpr/5R74v58db2DchhDY36Qiqdf3tQQOG/jckgU9PriluGHMoqPyLEHZVi1JNXziOD21Wv/b7pxw0uHf/3sH4sx1EdXWM41NyDYpX9Nq4knde1pIxm1gF5FUoVlW9C/b+QTTNfYnAPfyidVt/8PMwimGBxYykU/bwZfaATXQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L00zK0JybkhYNWpFVk54aFdGQ2ttVTlFaVRic1VqQiszK284N29FSUpXaWRV?=
 =?utf-8?B?TDVKTmxzYzB6YWJnNzRRbjl5cWpHNXA4bGhmYytMQnJzd3RPSHBISFFESVhv?=
 =?utf-8?B?aktDRXl4ckNWMkw3aXhEd1JtSUlDSFJxeWQ2MW5jNkJsR2NsQlR0TEFXT3Jy?=
 =?utf-8?B?d0ExZU04VlRWRVpGcnRvL21kUDl5eDM5dFlucVMwakhXY0drclh4QTZpcGx1?=
 =?utf-8?B?OHpmNkhlVkY2bmhpdU94NitiZ0tiQXlPSUlGYU5HSzU2M1ZBNkhObW0vVTg4?=
 =?utf-8?B?L0JiMGUwVHJYNEp0WkFyMno4MzRLZFlWaWlKNTZ1a0I4dkdscTZhQXhlbmcy?=
 =?utf-8?B?ejVxTFNuMVV6TzdPR0NXN21EcUVxOEhEeEswNkc4SWxHeW1CbEo0WVl2TWpU?=
 =?utf-8?B?ZU9uSzhrSmo3cWxoTHhEbmVWUVg3eWNReHRlUi81cnk0VXllZWYwdHpXYTRw?=
 =?utf-8?B?WUdtc014dGVtMUF6b2gxa1dDWUlhTVJvZlhYTzNqUEJYUGl2OHJNWU9JVlpQ?=
 =?utf-8?B?U253azRtRmRvVnA3cnJqWEUxMGhaT1dWeWFzT1lWOUpEcldTUXF4N0ljcFVi?=
 =?utf-8?B?clBVK3o1YlhMbTZsTTBteVcvajU3a3k1VTl4SzRITVQ2V3lBOEJPMnNtdnU3?=
 =?utf-8?B?bmdHUE0zOXRGcnVGK2RZbkZBNHdwdVZiWEJwQ3BkT1lyOTNkY0ZTYlA3NEtE?=
 =?utf-8?B?cHF6dnBENW9TMXJFM3dLMjMveGhRUVJQMEhIZHJPdmw5Q0FuVVRRYXZpSlBq?=
 =?utf-8?B?dWZUemdUQW4xYk1FRU1SRmUyVFJyZTlBQmtUbjZseDNZMGdWN1c1elVqMkNs?=
 =?utf-8?B?T3NHcDB2MGJCZHgxQkV0UmlldFc2MjN2NFZzZW9DY1E2Z0dxTmJXZU8vUWJx?=
 =?utf-8?B?RW0zMkVyczhTUDY4WW5paDRHZWpLbjgxWTNBcnl0NUdtOTdORDZ0OXBoZVlt?=
 =?utf-8?B?VTFoZ0lqS2d1VzNZT2dueHZmYllNb2RjUHdNaE1vcG83SXFORytTbzR5cDVW?=
 =?utf-8?B?M0duNm1sSDE4R0VrcXhoS2M5eWtod0VWNmlNUldqZEg5bkx3NHNLcjczQXpn?=
 =?utf-8?B?ci9LejhLRzlrQXN3eDIwblNOOVUyOXgvelIvWkRtWXExNnpRQUVEdDMvN1hP?=
 =?utf-8?B?d1FOYkhmNUtjUkVrdzlNbHcyd2lheUtUbmtwTk1yUFhvWTN6bHpDdjFlNWNV?=
 =?utf-8?B?SENLdUo3UHZsZzVNbnVxRGg5MGNRZTRQaVNIbG5zeHNQeDZqRWJmcFMrY0hE?=
 =?utf-8?B?Sjl3aXJTTVhkQ3JnZGIxb2xDaDZ0Z0VEdmRjOVZFTzRNeTJja0lWajEwK0hz?=
 =?utf-8?B?Y2JCcGFBbWFTQVFTN01rWTVVcXlYRkVzK2lxSm9wSW1PeXBnaFo5OGo5Y0dZ?=
 =?utf-8?B?akhpaE9LVmZWZC9CdjFoSEY5ZWN2d01CK25rNGNOMzYvVkZLM1dMWlNqMUN2?=
 =?utf-8?B?YStyR0gxamZyaExOeWxWSmlWOS93aUpIaVJrRmFGTXVFRFlWL1hUNzd2bGFo?=
 =?utf-8?B?Y1pUcFR2Q1hDL2d1SysybXNNWGFkTVcydE5iKzNBR3lPTDloUjVjdURraFJt?=
 =?utf-8?B?TGtNTERVWWIrbE4xQkRDcm9zcG1yVTdkLy80MitvcU9rZG1TbzBVc2MzWlJr?=
 =?utf-8?B?NHFFREtYVzR1Y0xNQUp1d1FPdTJCNG9yZGZyVzFFaGVaYkVpb3YwWGRhREpI?=
 =?utf-8?B?RXZPUFpKdkk3c3ZjeWlaQnhicHRLWm5uRmlxaVlqTlNLSlhmL0ZqazA3bUdz?=
 =?utf-8?B?UWd6MUg3M2s4bWNsSFZxcUJkek1tdE90VktpQzBFMEtuRVZPeXBhdDdrVktz?=
 =?utf-8?B?b3k0Z2MrTE1yNUxJbkFCeFRoM2FyZitWNzVwVklvOE5hWWFvVHBCZ2NlTmNm?=
 =?utf-8?B?UzBxYzY0Y3M5L0JZSHliWUdFVGx5blM1QmJROThDd2RDMnNtRzBNZENLYjFZ?=
 =?utf-8?B?akM2RDVWOXJRaklxZ1BaRDcyQzhDWnNxRkRBWlhQM0tlR3JLTHo3MDB0YVhW?=
 =?utf-8?B?Qmp6NktKY0J5Wmk2elZnT1ZXdXA2TzNiRVV0cENiR0FiZUEwc2hIc3pZaUpZ?=
 =?utf-8?B?Vmx5TjZ2MWNVb040bkxPNEJUQWhCVng0WXNsdW9HVFdXMzUrK3FMbVdHNmti?=
 =?utf-8?B?dkpQSkxhNndqYTluY0hpeG5RRVQvVFZqVVBpUFVCNFJqZE5ZMEFJV1pZaWpx?=
 =?utf-8?B?RGFKS0dDMkVKUEUxcTd0TTJVRytvUnZRYlUxSjg5V3hYTDJpUFpCZUFrL2ho?=
 =?utf-8?B?STd4dGFZOHl5NkViRXZEaEVHNjQ4SlF2T2hKT0hYWlNnbnNlSS9KMGtEKzY5?=
 =?utf-8?B?bWl3QU4rKzNOMFpmREozemIvNE02SjVzOGxXQ3dDMUZET3ZmcE9zQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08b4fd8b-ed5a-4955-d2ef-08de7808d22b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 03:07:21.3967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fpW4vcMLwJGSqkqXgPzB2LMJ64WMKUIGzX4qOnIpi9ZSFKqXYp9vqVFBNajyxQjNx8UJdsTKtowMmbQdWwuEe4P+ZJ9hxfdzUZDwcQAq+Lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:jouni.hogander@intel.com,m:animesh.manna@intel.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[kaushlendra.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,LV3PR11MB8768.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[kaushlendra.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD7E41D29D3
X-Rspamd-Action: no action

PiBPbiBGcmksIDA5IEphbiAyMDI2LCBLYXVzaGxlbmRyYSBLdW1hciA8a2F1c2hsZW5kcmEua3Vt
YXJAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBpbnRlbF9hbHBtX2Rpc2FibGUoKSBpbmNvcnJlY3Rs
eSBwYXNzZXMgY3B1X3RyYW5zY29kZXIgYXMgdGhlIGluZGV4IHRvDQo+ID4gUE9SVF9BTFBNX0NU
TCgpLCB3aGljaCBleHBlY3RzIGFuIGVudW0gcG9ydC4NCg0KSGkgSmFuaSwNCg0KR2VudGxlIHBp
bmcgb24gdGhpcyBwYXRjaC4gSXQgaGFzIHlvdXIgUmV2aWV3ZWQtYnkgYW5kIHRoZQ0Kc3VnZ2Vz
dGVkIEZpeGVzL0NjIHRhZ3MuIElzIHRoZXJlIGFueXRoaW5nIGVsc2UgbmVlZGVkIGZyb20gbXkN
CnNpZGUgdG8gZ2V0IHRoaXMgbWVyZ2VkPw0KDQpUaGFua3MsDQpLYXVzaGxlbmRyYQ0K
