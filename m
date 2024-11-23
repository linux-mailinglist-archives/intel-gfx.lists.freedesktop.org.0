Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D37A9D678A
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2024 05:43:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DBC10E235;
	Sat, 23 Nov 2024 04:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xjgl/4cm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9AE10E235
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2024 04:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732337024; x=1763873024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=81EUS8ERDRMMBwdQAdpGdP48+U7nLX2x+3XmUD9/1GE=;
 b=Xjgl/4cmgny00br6VmEaf0adTIeV9IVyBFhEykqUQ8GBS07CWVN03GYr
 WCn91dKwFhuFkkwnpcEcy/XOPiIYQPOmqMjNYDv80UMfYFmEYIQ/W320E
 NuqknfQx60CbcFLJU/iuqp06L/IB/fg7xPiog4sVfYBnKNjXsqrxXAajz
 qKS79NC7g5IIM1ipw6ejpJ19HBSGlZSsSZn3MoHor7usZ+uGxNj3Utxiu
 h2dHx0Ikad/pXv2QzX2YKlLTmUUu0xp19sO0VAr3rOqVqZPpXHmOvyD4A
 olQ+rkMLjrZ5h2ZUKbk8B/Db2dcWg4onaPMfcZkhaN8Q77g8wBQEi+USi A==;
X-CSE-ConnectionGUID: wGsHj5KnTCWQPtYAs872mg==
X-CSE-MsgGUID: Dgx2XiFzTCOAIAjKBKyKIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="55008296"
X-IronPort-AV: E=Sophos;i="6.12,177,1728975600"; d="scan'208";a="55008296"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 20:43:43 -0800
X-CSE-ConnectionGUID: 5/5yvzabRnSQlN4jAW3trQ==
X-CSE-MsgGUID: pWlOW7jMTjOjTyzSVgD8aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,177,1728975600"; d="scan'208";a="90753966"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2024 20:43:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 22 Nov 2024 20:43:42 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 22 Nov 2024 20:43:42 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 22 Nov 2024 20:43:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aE5OEJ8Xw7b7hC7xysmWN/wWgJoxF8bXRNmNdb/NHiBsMYmOYyfQ7zVvXPj3pSllEPxRjlXXtCJ46VT0EKbWeAyE68CE3yxVm+L9obNOaPljjG83AuD8w07upk2fxNRdX/f+Y9xDRMBTldjwqFpthA4XkX5b5AJd3tqkl8jPZKB9FZPoBXCzFSPFw/dij5cGJ3ZLyskNfVTbRUfGKEL63Shi+3kvRLH4taaRRm/XlgN4287Enfa6gWN0cm+0znqxt4lV6RKoG/fIvZ9NSQGRvRs9lcyFggEv8APZJXoO+1be3dF7cKAMGIbS2t6/+bWYmOjLGqZUMPB1fk8Gog+jmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w33Kxd0V4lql+MOqLIL3uk07kty1aNBKLqO/OIUmA+o=;
 b=DBiJ/GuxtNJIK654xb/dqzt06wKoYBdbwfmc5xd8tlU0VpEMsBzxgrzWmNNPKrgPIHBwqYJjhcCdF8MCGd/dKJIFGDecJ/AIXp96XxP3nDYOmf5sk/TcKi8Mgi9RB37HVwigZXHzPC3OjmijbWxfZwrHsWeJmqQBRZUyN9WKDRqT0qpVDY662Oh5aMsUD3nn3qlK+RijTjmUgF4M2RdQkRaxbKNpMsTLeK08pD3HTwZdUGflm/xKJhFLXKbCDUA8tH0i+3FuKYJQfThHIJw4HU0Y2DM+fZtm9EEh7P1k3ukREQgadJ32cQbuewq56U5a2EAn8fMS82pYVkx2CU15BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DS0PR11MB7830.namprd11.prod.outlook.com (2603:10b6:8:f2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.27; Sat, 23 Nov
 2024 04:43:40 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8158.024; Sat, 23 Nov 2024
 04:43:39 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "bgeffon@google.com"
 <bgeffon@google.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Thread-Topic: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Thread-Index: AQHbPNInKgdYHFO9T0i2zYtD9zlURrLD54IAgABYwICAAAecsA==
Date: Sat, 23 Nov 2024 04:43:39 +0000
Message-ID: <PH7PR11MB8252DF8896E96A2624948E4D892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241122110741.405941-1-vidya.srinivas@intel.com>
 <Z0EKHlMUx2uqZVnZ@intel.com>
 <PH7PR11MB825273D7A748B4514E316AB1892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB825273D7A748B4514E316AB1892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DS0PR11MB7830:EE_
x-ms-office365-filtering-correlation-id: 54a5ea1d-591c-44ac-81b4-08dd0b7966b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ZFBIzUXhdL3VZUSYS32/Zc/HhNx5JN7tmedqnaBvYBUeKo5JtR8zdzfV0S?=
 =?iso-8859-1?Q?iYMgb6BEaLqwIVRSsRtcCMCYsLiw1770Wurl1YVaGMQlO/TOnmV/+LqPlG?=
 =?iso-8859-1?Q?CddYUMszjDkNnSbVXJBkj0ydawahQxGaxcqm1hx/vKWkx0LYYQKcLQ59pS?=
 =?iso-8859-1?Q?wNugFiO0mg6iNHkYqsQ9UP4qkvoeLL20S+SxuThHwQIs/OQacIjVr33pXK?=
 =?iso-8859-1?Q?CFRvi0Cx2mJm/K7k2B5t9jom3VuFxTnfTyraP5ghbP0YWsT1nR3VzbTIxB?=
 =?iso-8859-1?Q?e/CvhwgD6ejHt3WkFRE6iHe0NV3o7iA/mlOtOzdTePGDQBCGn/XCA7Ru02?=
 =?iso-8859-1?Q?FW/VYuCntumqDUixjMJ/0E6uC5fQZZYo8BpREDCBw3wPa6ajC7g9HeY14O?=
 =?iso-8859-1?Q?FEuicpLI/1wK/7DPMgbmRn4Y3U4Fv/4CLVT8c/RSOXfPLlv0fTFq9io192?=
 =?iso-8859-1?Q?Pf5c/LKrLb4Y5ugJrXzaoERBAU2gGUEEd7uCr2St/BO9hzQSovhG4XuYpt?=
 =?iso-8859-1?Q?lG1gnKsebpidRpD2UNqx8EwInjQPI6th0a/vZ/xQtXkIV4KgEMK200LrIA?=
 =?iso-8859-1?Q?yLt7dd6QJSoQ7ooJHxdmHvDITfLQpEtUq8mr8yEEK/ehgfcn5762Z4dRz2?=
 =?iso-8859-1?Q?PTu5xzPkq8X77KaQnkoY4R6QA8jXnKH0JMMWCtRFp4vBARcCCT39kfKDAC?=
 =?iso-8859-1?Q?VJM9ckhucDlDs2ZBPK8JqpukF/nDJxKwW8oK7Btnc7TMyARas8Unlm2Myo?=
 =?iso-8859-1?Q?XDRsyKWdLPpSbUJEZDG909U8bTN+ZsqhCJ5cpT00KczokcOxi7FzqOPDBf?=
 =?iso-8859-1?Q?jW+JxCUYn9wLPHKKOWUELzZju6vcQifvOQ/S5M0c9EU6E0rB0F2EW2ij+3?=
 =?iso-8859-1?Q?1s2GGHWVcrS7fykYTvnWrCxK8j2/6qg0M7uV9E7pZUA0qs+oqcecrO/Ox+?=
 =?iso-8859-1?Q?k37usO/YZL/sj0/rPC4BDcsKWPrD0npzu5I4MUIppQaZramvJ2PiDTmIia?=
 =?iso-8859-1?Q?SN8/t8/UOqfrsMYG5PHf+1Gmi6KvEhmhOnV6qF9gkMbnsRTUKuGx33G+q+?=
 =?iso-8859-1?Q?f8ENP0B0ssuFN+NizGIxNd8ukxV0mYd/g28y3+iv0So4njP5gH2tgyB7GL?=
 =?iso-8859-1?Q?fC1VzjsQvTb6JUCnEFxAlnd3fLz6awTGrN1NOAS20BKiFcC6JcHWMs0MjU?=
 =?iso-8859-1?Q?7XSkpHSAIzHmgvAA+lgABjkx4V0vrZX8RyQ0FSU7CcYf2YdFSaGUydEXd7?=
 =?iso-8859-1?Q?6WlaARaN4QzYO9UyHmquVTv7U7K9M8mxGZhh3R3TM92wDdNCe+dF/POfAV?=
 =?iso-8859-1?Q?JhQJCHgEqB/qoTLK1rxNb0YeJ2adv2mYNaqRDzn8lXltG/1bGk81ymmyzu?=
 =?iso-8859-1?Q?sip3DwVzsB9fFZ9MBd6RNpACmLVONfMM97BlP+RQ4gBpcgB1G//V4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?vej1P35y2DQUWdZZ0hkdrzHbhk449RPYSW6A5w6zJ4UVL5qelNzJDF7Be3?=
 =?iso-8859-1?Q?IjXW92an+hwm9iKOS8F2Rk9LNxuIIl/+5xjrrN2sji7NlIrdWDJJIY2Bhy?=
 =?iso-8859-1?Q?gVLx2disedlY6m+8AuPb2qtmYZfsNtyWVG7v9NerKwSIatr6W7DwfieHuG?=
 =?iso-8859-1?Q?VdSBoONXANI9Wuty9hUQUo1qDxnqlxALji6F7Ech/NV5dD7p8hPxGPL7TZ?=
 =?iso-8859-1?Q?GOYJgYu/z3jQPep7GKr2nLw7pfFhuk6JyFX7WSVlWlu6+OIyyllXB3HtV7?=
 =?iso-8859-1?Q?3wI4n3RhbCLfWXbzzQp34uOYWAZa2iWc3uS8UvJR+ptXMg7GZjjeA1hFct?=
 =?iso-8859-1?Q?aKtc4sQTdjhxD6oQzt+8Yvxqf/FUAT2TNcFiIcxNWDTV7Z4O5/Z3sJsobr?=
 =?iso-8859-1?Q?jJlZ+sPNzJvEf1z3zoU1DUk4WAKrSAtOonj2VscYG0smLp60f7cmeze/hZ?=
 =?iso-8859-1?Q?/3XnEkik2xfP5D+SYVIHbbFfotk/J4DtkqRynt0ZVqWtGaWhOU8zMFkBPu?=
 =?iso-8859-1?Q?uoP+lrolee6naNj8LHFqDEvBgF7xmYPbqF8VMx7qDw8ZArI6em1tJh1rFF?=
 =?iso-8859-1?Q?opmI49BBrhace494qsoyXQ2w51psr8DfCo7RzcmmDBijgUYkRtXoXMWcyl?=
 =?iso-8859-1?Q?ZpmhRuPKy6qfpaNIjr9NVxeVBf+65PT5QAwNRX4lSaE9EFY8YQdVORpUqL?=
 =?iso-8859-1?Q?AOsDrNubzpZTj4h+9/pX0QIpvhXHNgij1pckbXWpcqTEKCngdIT0aDxh8/?=
 =?iso-8859-1?Q?T/qDD6AZe4FzLQV17q0pIc3RpHLQ0WcxclT1sX1gWrv4PctSJeVP0pyJdq?=
 =?iso-8859-1?Q?+hksiNbtN8F6ZwsCHCqA/bT+mAlnYKekvJMdymbYtXg3JTue+O6fxZMdrQ?=
 =?iso-8859-1?Q?4drmVMBPQekQ7/96yiAhj3fIs9RYG6WYp1GRphmbIF+uChtCfXjqNWCtj8?=
 =?iso-8859-1?Q?fTn+Yi6Yiub1tgXg566B5CfYSxExYt6ZAbvytkdF4RG3mlwuYgk78AqKBt?=
 =?iso-8859-1?Q?JjPIGbtFgwFiakCeTR4O11J6MY5AJ/YRPji0yYF9/1wnw8Lo++bISCVIS0?=
 =?iso-8859-1?Q?HeTEqOBjIxYRDHzLeWQn3JwKGUZdZ084WACrPy3cCQc4Ji/xqjXLI5aVZq?=
 =?iso-8859-1?Q?pCa/qXiIDbqj76bX3gXeKptWbAYmNz84nPT2As8Hxu4B8S60vRmU3WtfE5?=
 =?iso-8859-1?Q?r1RJQNZEWzk5Fk9cF5lbS4rGhOK4EXFgbhZJ4U0MstWP1oZlCKctuYeR4i?=
 =?iso-8859-1?Q?yK78WOPkraScUPK6RgHA4/a4QGq8okrVNLQIwpF5G7MVLGzO5MWMglVHA1?=
 =?iso-8859-1?Q?pisyTsr14kOCsHsfRAN94FjJn2s+gvuybMnEqnfxGUMyyTPixUkaSs0kvB?=
 =?iso-8859-1?Q?7GvvTPDFbfYlrA1pUMw2gZTYk2FbYseOSHTSF/jY7i4qYN4jGFaHfNXlCd?=
 =?iso-8859-1?Q?YBTKRv12h4qbbsEA8Iil5YU8NoOr9XR0yFaDFmEOfAVtO0/BqTWCtXex9M?=
 =?iso-8859-1?Q?+5kZqeP4GUr81nMOAJrBjRcBkfaHpJN8T7sVz09NpJNroM0ovySTWHjx9n?=
 =?iso-8859-1?Q?w4nHJ8pvp/UvjF0kqya87i+CSb6q+ASTPE24B0piBXPEXPiu/ABVVHU+Bb?=
 =?iso-8859-1?Q?MR7mH/HZ9eiyQqyrs5W/EL822J6j7a0Ro3?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54a5ea1d-591c-44ac-81b4-08dd0b7966b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2024 04:43:39.8229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RBDtminJx+ASVClY13UylO30bJVUD1tAAQw4dS/EMXTBkuP9qwfHry81M3Wghd+rEfNOGON82DxUJvbffxvV+0bDmSJArSajeM2aVwyAYNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7830
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



> -----Original Message-----
> From: Srinivas, Vidya
> Sent: 23 November 2024 09:39
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>;
> bgeffon@google.com; Lee, Shawn C <shawn.c.lee@intel.com>
> Subject: RE: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not
> mapped
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 23 November 2024 04:18
> > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > <ville.syrjala@intel.com>; bgeffon@google.com; Lee, Shawn C
> > <shawn.c.lee@intel.com>
> > Subject: Re: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects
> > not mapped
> >
> > On Fri, Nov 22, 2024 at 04:37:41PM +0530, Vidya Srinivas wrote:
> > > Restricting all DPT objects as unshrinkable was causing some
> > > chromebooks to run out of memory causing DMA remap failures. Thanks
> > > to Brian Geffon for the pointers on debug and suggesting usage of
> > > !obj->mm.mapping
> > >
> > > Fixes: 43e2b37e2ab6 ("drm/i915/dpt: Make DPT object unshrinkable")
> > >
> > > Credits-to: Brian Geffon <bgeffon@google.com>
> > > Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > index 3dc61cbd2e11..b155f0139d4e 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > @@ -285,7 +285,7 @@ i915_gem_object_is_shrinkable(const struct
> > > drm_i915_gem_object *obj)  {
> > >  	/* TODO: make DPT shrinkable when it has no bound vmas */
> > >  	return i915_gem_object_type_has(obj,
> > I915_GEM_OBJECT_IS_SHRINKABLE) &&
> > > -		!obj->is_dpt;
> > > +		!(obj->is_dpt && obj->mm.mapping);
> >
> > AFAICS the mapping could only become NULL if the DPT got evicted from
> > the GGTT, but if that can happen then I think the current code must
> > still be busted wrt. suspend/resume even with the unshrinkable DPT obj.
> >
> > Looking at the vma suspend stuff I think the only way something could
> > still be bound in the DPT during resume is if it was pinned during
> > suspend. But we should be unpinning all FBs during suspend, so that's
> > a bit weird in itself. Hmm, we do the unpinning from the cleanup_work
> > so maybe that's still pending when we suspend and thus something is
> > still pinned in the DPT. And indeed there is no flush_work()/etc. for
> > that. So perhaps if we add that we could just revert the unshrinkable D=
PT
> patch.
> >
> Hello Ville,
> Thank you so much. Yes, Google team also insist on that as they worry the=
 DPT
> patch might just be a workaround for the real memory corruption.
Sorry, just to be clear. With the DPT patch (43e2b37e2ab6 "drm/i915/dpt: Ma=
ke DPT object unshrinkable"),=20
Maybe its not that mapping became NULL. But since all DPT objs are unshrink=
able, they are hitting low memory
which is probably causing DMA remap failure when memory is trying to be cle=
ared.
"i915 0000:00:02.0: Failed to DMA remap 147457 pages"
BUG: Bad page state in process chrome  pfn:14200
page dumped because: non-NULL mapping

So their suggestion initially was to try and use !obj->is_dpt || !obj->mm.m=
apping as well so that=20
shrinker could clear some more.=20
However as you mentioned, if we could do something and revert the DPT patch=
 entirely, it would
be really very helpful

>=20
> > Did we have a good way to reproduce the resume explosion? If not, I
> > suppose we could try to confirm the lack of flush_work() as the
> > culprit by simply sticking some kind of sleep() into the cleanup
> > function to make sure it doesn't get a chance to run during suspend.
> We can reproduce the original issue where during the suspend/resume, the
> meteorlake chromebook goes for a reboot and we have the crash captured
> from console-ramoops.
For this, I meant we have a reproduction WITHOUT the DPT patch 43e2b37e2ab6=
.
But, we don't have reproduction at Intel for the "DMA remap failed case"whi=
le having the
unshrinkable DPT 43e2b37e2ab6 "drm/i915/dpt: Make DPT object unshrinkable"
So, we could try reproducing the original issue and try with the pointers y=
ou have provided.
>=20
> >
> > I also had this:
> > https://patchwork.freedesktop.org/patch/503398/?series=3D108669&rev=3D1
> > which would be good to have so that we can actully do the obvious
> > flush_work(cleanup_work) instead of playing confusing tricks with the
> > the commit_work.
> >
> Thank you so much. Will try this patch as well and update.
>=20
> Regards
> Vidya
>=20
> > >  }
> > >
> > >  static inline bool
> > > --
> > > 2.34.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
