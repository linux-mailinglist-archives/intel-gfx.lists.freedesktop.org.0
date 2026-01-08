Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF1CD01C88
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 10:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A953B10E6A8;
	Thu,  8 Jan 2026 09:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elHRaX7s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8141210E165;
 Thu,  8 Jan 2026 09:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767863857; x=1799399857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F6rKKLOqeSAmwlJJel3egez0el2olgV5ThrRGk9k3zo=;
 b=elHRaX7sUdEUKpQcki2YYEdMz5Ten1EJgEcbMcFapXjQSzLYomr9yx+L
 UJIn8Vxe3Dlmjd1Fuxpp+49cx/J8QVjXAhnm90+XdXfdn7IHZOeiZqj4I
 glgRhjEjAiNLutIRyyRsOGByksfLcLuy6ch7NP8Cz/x7S7BWdK2E7krBi
 mwqimHNIcWcifvSANHU43HYNXM3Gd7mTHXBfCIEOCPg7qa2qcpSjhKowO
 ZvYhtkI8rLmEDQ1bQEH1R8GnaAjLKL4P0iO0DW9ZYgQq+JBWap1yShS4r
 i3JKHZidKRtib7zX1N8nUFR+7l4EQn2APH/EJt//iIUolq8csNrvDoGwn w==;
X-CSE-ConnectionGUID: GGesdwEjQDu8+8ob3S62Qg==
X-CSE-MsgGUID: oWFfedd3TuCtkPM8AomRPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="68243853"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="68243853"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 01:17:36 -0800
X-CSE-ConnectionGUID: NBFgqSyhQOKOLOhNuGiUqg==
X-CSE-MsgGUID: 3xDPI41VTQqOSFh5QvdNgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="234314039"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 01:17:36 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 01:17:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 01:17:35 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.17) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 01:17:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T0U6mYBmu96O3SPOzuUttafYoGCWfW7bIw5v1NHhRFamwrlgDcQblFeyUUeoGUsvyRJeI1gS779v1++F6hsoXS3gA/unXv/XouO1QkbkzNPwt4EKzIEawjdHrwFlLj8D+USUNAgAxToRWMxpNQyATy7umcK0NIUDZp2P4z7YPAHkEoEVDRQ6StL2qic1auawlkyhTnOazNKuUCekXkhZv50c8bsayIMUtQRX7Ifl3YB8adE0xjHyLBk4JyUVa2fCoRZQuqIKjWzKUV5A3UEm8PNiK499QQPqTBPz+98THUp5JErWNKr5I2V4J8k25802vT43UUmrJfFC9u0lV4weEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oshS02GyJUhykFtFDdSg6T+QVQweGCXQ1paYuICmzkU=;
 b=U49aNTY4qHPxJnX8RI/CejjjZdCqcs9wq5BWSqwKJ3ZCLYhKve59u4uDdn4Xy1LxobSD06iGB2YQ3+kSQg24kX7I4x1uAwsZGOuZGB4n0rmkk+UMbD0eoJAF04iZD30kLG12I+YgClg4q3E6mOQ4u3ZSnUB9TCC1Yx5qzxeKXCN0fPnCqH/jlIBUxdq8w4v7J1qvDBSBBaRW2ttea1vQSf6oXL3ZJt62mNDkrg90z2p/sgzb9PpRAJobNWYPSF/rmWHr19nBRjZvK2PWZ8T2VMnZ6qJCqFF5DNjDACWniJRUs9ZCtz8ieGop+B1AALNEPVZwiMFrOBRCs3PTOJF4SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SJ2PR11MB7427.namprd11.prod.outlook.com (2603:10b6:a03:4c1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.5; Thu, 8 Jan
 2026 09:17:33 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 09:17:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHceK3MZp1gzHlrmU+WbAmvvXvsIbVE6diAgAMjhbA=
Date: Thu, 8 Jan 2026 09:17:33 +0000
Message-ID: <DS0PR11MB80496ADFD5A88BA56EB8220AF985A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251229095913.57790-1-animesh.manna@intel.com>
 <IA0PR11MB7307A5CA36737D9D10F88D7EBA87A@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307A5CA36737D9D10F88D7EBA87A@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SJ2PR11MB7427:EE_
x-ms-office365-filtering-correlation-id: 6950328f-8f2a-4b5b-7bd2-08de4e96c1ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?J/1yth7hJ5dYFPKX7FeTOMRzu3GqONwm/+wlKakZTxbXjWXKutQKobUIgF8K?=
 =?us-ascii?Q?3A0Ud5BuGt7Jb/zTwX001Ke3OVA4wtK0GjmHlxFSXOo51E/eMCA8t1yYk+58?=
 =?us-ascii?Q?RViUNEqR9AP5QX8h9fvv8xNfA2COeWbxCy863oLtaYZ519ds2j0c7AT+AEhI?=
 =?us-ascii?Q?CiynLOC+YTfcLSlruDTr6XaAeTs4SD77dzAiTA9ASp4BwAn+lLaXMnDvGK2p?=
 =?us-ascii?Q?/2C4Eq119ZA4AqP8CTzo3mSi5Esjm8FSWArPEJs2EoGax8H/VmI//MJn8J8s?=
 =?us-ascii?Q?RoQl7t378L9CGEg2CHq4m2psT1i9tYiBajdQRMCEsdfBxguNaIXU/AhuX+ZC?=
 =?us-ascii?Q?as6oHu/KasSpA9wglu0Q5ops1p3Neq+kzJfLsvbUkOM3Tsz53XB4M/RxlfuW?=
 =?us-ascii?Q?GL1JaR49xwT4R747Jt2I4HDHQU0YNWP/YUd6vuHwHRlmt8toRn6FpqUmDhp3?=
 =?us-ascii?Q?1cE5u5lFi8qg44P74C7f1VTuIfxoiquEuUnFuCIjpbS8/6cR5SasC2YXMClQ?=
 =?us-ascii?Q?PMUESykZ7hQxs4uQ1RvycTzjaxMRnJr77oRkrVqy57ewOJdGM8NiJ8IFqIAO?=
 =?us-ascii?Q?i5FOIvplZKEMmgHm/7KBY1eVq6NsPUlvdllX7npsCnv+phRD/wpTn0MM8WDt?=
 =?us-ascii?Q?TtszasttiT8mZsuGZxkk4EayYs7OedPH692RZVzuIsjdg8lbIgdbGAT1p6Kk?=
 =?us-ascii?Q?NjoPvin5oJQpYG7Mztisv+4/+M+/dEHXgMXKwZNlapOCqrSpKoKmnNvkoGgK?=
 =?us-ascii?Q?LV9SaLCh9fA06gG96d2N53x5FPQCvo6ihrPA1EAHc7+vVIFXcambIn9OhXoU?=
 =?us-ascii?Q?Ca6OhYnA4g4L0HExl7G7vtxio6M8gddFXaoxlNa1rxf98oLy2lNO5M7iWPW1?=
 =?us-ascii?Q?OgSImYJFiReXGfA5Xj56fCa2vWN0Stbq4y0aPjzbWYTAfq+cPJWFs17LMOsr?=
 =?us-ascii?Q?eJhAyMKA0JWjzBP3LQ8BrcEfmgcRZZ7xRMxw4WSgOlp9/ZKC3c+06eEdSK2S?=
 =?us-ascii?Q?ip/kq4zKYsrmnOXnDWNwl7VXWHue+x3qQGs5TA1/aIMMN5Xqw8D+EsRjby2d?=
 =?us-ascii?Q?lN3yTgRfTFl5VukyPnwT93Drm2o1LoLYZCzh/49kL5Mvh5CiEZmaMc1tFaex?=
 =?us-ascii?Q?ucW8tZsBOFUs+jMXzlF3eyKf5ruBi+NH6RB7pCbbOD7ZW0poBqvKJzIU5meR?=
 =?us-ascii?Q?HGfQOY48BkY8NTt55K5hDQ0jMFDBEt5XoQRqJJN0+HH+XCON3cgVIS4KKkjv?=
 =?us-ascii?Q?kFaOVWcohyRRL+Zq9yQyiZlVvBEnTo2L9mqCBwoQg1OYUTdI3XWLQMl50oAk?=
 =?us-ascii?Q?o9KDZ6sQlHlK+RmUQfHF+OHBa6VQdOXb3IokhZFZ2rCLDklORzWK1N8y7exc?=
 =?us-ascii?Q?iImRUVXNI1Ac9o+nEiWJXgLCQnbnIkWLN7AUuKWdELU06WOxaYAWODDbwePo?=
 =?us-ascii?Q?NurTNlxLE7mO3xaKLJGvXAzehIkm660kVtNjmR/jEWQkUwm31yasEg8bG4cC?=
 =?us-ascii?Q?dU0ELmjcOzctMnv1UqN2a4OihS3jg4gbTLLA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?upCn2b2u2eaVpoV4y1R2ljWhGQu0Ihg1zj/Jg1B6vzpviIGh3eynbBeAVAwD?=
 =?us-ascii?Q?/BhfjfSzsy48N3GvgjI/ZaUbIxqj9P8H89+At2REb0URersGwWhwstfIJKGF?=
 =?us-ascii?Q?R2I7AWq51Zvi37fru4BwzrM/lMI/hXBOG3JcZuoS/7QOHmqoMQc1jCi5+zAf?=
 =?us-ascii?Q?W3vcRfDwOkE2AS40aGVgpByJvnfjzDw+Rb4MwPXPBr0+2x8f2wcmslxhmlYH?=
 =?us-ascii?Q?R2saFV9wrOaoZK8eezdini1ynSIRKSGQRp5RISFwZJpxIddgL90dv1qMS43h?=
 =?us-ascii?Q?Az/5i6DaBl0lmTtl/GW8fFtvPCrmj5rHgPD2KvBAIHSICzMNvQSBTGzhH1PX?=
 =?us-ascii?Q?RBDfE79lPLI/e2AcWNI6tLgEiz4czRnzRvFzzihdpzVzrsUa3Ig9SySaKQ39?=
 =?us-ascii?Q?EmaB8/P6LYEU7P5+gx457Siin6+kaX7M/SK9HqPZO2/D4opo091tMkvQM7IZ?=
 =?us-ascii?Q?SAZXnOY+GW3WLet23k99HUWy2X+kNIKEQbByRZJL/mhDHbPBE/Vz6L8Lu3JM?=
 =?us-ascii?Q?dDYN/MLwz7vtPmMNaPLN+eB0sYFaQfe5cAFvWD+aiElzw3vWDpXx9rXJUlxi?=
 =?us-ascii?Q?OSC7qqKS5iIMC3tKM9ikrfvJkXlfe1+78UA+hidghExFDLMb5NCYaRC82aC7?=
 =?us-ascii?Q?DzelrXLL1egY8y8g82qSzvDjzThZxusL35gUa/JCz1HC5m8oGA2u5g64nYPy?=
 =?us-ascii?Q?/eExSojTw4hGT3OZ/SPy1FZ/lp5kekDrQoMq53pcsnkZWdYFhk49MYUCeiTS?=
 =?us-ascii?Q?XA+nYXq5OEmhqUhjI3Ya8OtIRSjcsaQdcPsPmL64k8vcj+Wb0TSuK1ccWxYN?=
 =?us-ascii?Q?zyxRD2yl2bpZHSzrCClKQ8DxziwSRm5KLmuve2v7AuyZTfYPPVMQKJSSrM+z?=
 =?us-ascii?Q?6HaIy2hiXzLspDYAId92l8n1xC4O7bdBq5wZSgLQc1GYrRgAPS5p2vA54UUk?=
 =?us-ascii?Q?sbQMeXoTSFj0OwE4+MSVMkmc5NFdDEfW3U0omA8QBUXCyJdTOrJBX0TiTV5O?=
 =?us-ascii?Q?BtP8VVIkW6a4Ko+dwgfFR5/8xcbxnu7XztPLmvNqdMnWbNI6G8VASgCyURYM?=
 =?us-ascii?Q?PCX7g2EVqllJBVXysTrUqnIzEjjXmrs/0iov/weDSaIOqald1gqrkHhef9CT?=
 =?us-ascii?Q?6L5Bmpq5IXWlDsf/DQ8n5CrtjOeXWEZ3WvZMezwDMRgG38Z2TRLSpPZWpycB?=
 =?us-ascii?Q?zqp15E+sJfEBsNJdMm1jYDfee1h+jo/jFZAeeD243ifLkdnIyQevl8/rXkMA?=
 =?us-ascii?Q?1WHV6STV46XD990hm7Y6s0vkbHsTLbgT9FnoRv9psiK24Z9x/cC+gdJc19x6?=
 =?us-ascii?Q?PPwUbZVexcuwZTxLehNm0wiTKyhkypXvqZqwyQGhNiJqCpkqYlh76ABJsnwZ?=
 =?us-ascii?Q?DRSb2NkdFuZArpOtCGEsT0ogjhpJ0BT1bhUzAnkFhfeahM89RVFA3KRNz+Fp?=
 =?us-ascii?Q?uY827PIc0FwSeeqhVXHn2VUAQegV9Y8b0FMHeJyCn0NVL23ltyg6qJmFa+kN?=
 =?us-ascii?Q?xtQS5JKqu5JLVuyPxiavFQzULmiz5m4Gtnh1IaTf/8KQCNdt2bG9k6/Qce2r?=
 =?us-ascii?Q?oTD/W0C4kJtKpH4YhPw6Z8h0lIB0RkKXMyHcQAwjcPdis6hnc9OdMQTv8djy?=
 =?us-ascii?Q?akwIWltfPs+JGS0euTVgxrNVDfdr8+L491Ct0sf/EuOO4WIUF0vBN0co7Q5o?=
 =?us-ascii?Q?7WWXYbrBZtdEb0THyY4L9SHqDmp9LvIwKxX+QyGsbwlr2hJoe6Onc2ICFTJz?=
 =?us-ascii?Q?8n9/Y++V/A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6950328f-8f2a-4b5b-7bd2-08de4e96c1ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 09:17:33.4507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y1UJDw+In60oBzHvByMEqUir/Oz0vAH5SaBFxK2vDF0YCJCh2pM4rIJu1PjsKsQXIBYn8EdFlwzXAUypq4qE/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7427
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
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Tuesday, January 6, 2026 2:50 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: RE: [PATCH v3] drm/i915/display: Panel Replay BW optimization fo=
r
> DP2.0 tunneling
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Animesh Manna
> > Sent: Monday, December 29, 2025 3:29 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Hogander, Jouni <jouni.hogander@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH v3] drm/i915/display: Panel Replay BW optimization for
> > DP2.0 tunneling
> >
> > Unused bandwidth can be used by external display agents for Panel
> > Replay enabled DP panel during idleness with link on. Enable source to
> > replace dummy data from the display with data from another agent by
> > programming TRANS_DP2_CTL [Panel Replay Tunneling Enable].
> >
> > v2:
> > - Enable pr bw optimization along with panel replay enable. [Jani]
> >
> > v3:
> > - Write TRANS_DP2_CTL once for both bw optimization and panel replay
> > enable. [Jani]
> >
> > Bspec: 68920
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 26 +++++++++++++++++--
> >  2 files changed, 25 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9e0d853f4b61..b6fc249a9f09 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -2051,6 +2051,7 @@
> >  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
> > _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
> >  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
> >  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> > +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
> >  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
> >
> >  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 91f4ac86c7ad..4283455d58fb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -44,6 +44,7 @@
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux.h"
> > +#include "intel_dp_tunnel.h"
> >  #include "intel_dsb.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_hdmi.h"
> > @@ -1018,11 +1019,30 @@ static u8 frames_before_su_entry(struct
> > intel_dp
> > *intel_dp)
> >  	return frames_before_su_entry;
> >  }
> >
> > +static bool intel_psr_allow_pr_bw_optimization(struct intel_dp
> > +*intel_dp) {
> > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > +	u8 val;
> > +
> > +	if (DISPLAY_VER(display) < 35)
> > +		return false;
> > +
> > +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> > +		return false;
> > +
> > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
> > &val);
> > +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)  {
> >  	struct intel_display *display =3D to_intel_display(intel_dp);
> >  	struct intel_psr *psr =3D &intel_dp->psr;
> >  	enum transcoder cpu_transcoder =3D intel_dp->psr.transcoder;
> > +	u32 dp2_ctl_val =3D TRANS_DP2_PANEL_REPLAY_ENABLE;
> >
> >  	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
> >  		u32 val =3D psr->su_region_et_enabled ?
> > @@ -1035,12 +1055,14 @@ static void dg2_activate_panel_replay(struct
> > intel_dp *intel_dp)
> >  			       val);
> >  	}
> >
> > +	if (!intel_dp_is_edp(intel_dp) &&
> > intel_psr_allow_pr_bw_optimization(intel_dp))
> > +		dp2_ctl_val |=3D TRANS_DP2_PR_TUNNELING_ENABLE;
> > +
> >  	intel_de_rmw(display,
> >  		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
> >  		     0,
> > ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
> >
> > -	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> > -		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> > +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> > +dp2_ctl_val);
> Mask bit is 0.

As we do not want to clear any bit from TRANS_DP2_CTL so passing 0 as 3rd p=
arameter.

Regards,
Animesh
>=20
> Thanks and Regards,
> Arun R Muthy
> ------------------
> >  }
> >
> >  static void hsw_activate_psr2(struct intel_dp *intel_dp)
> > --
> > 2.29.0

