Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PG5Lq3tcWlKZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 10:28:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 198616484D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 10:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACDB10E027;
	Thu, 22 Jan 2026 09:28:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jK/dIymh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE83310E027;
 Thu, 22 Jan 2026 09:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769074091; x=1800610091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jymka1r7nJZ9JYUZH0tE9X17dpK/H4W6MIFtsmtjLRA=;
 b=jK/dIymhIJpi+mI2hwn7nLOBKXif5bY6aU3GbRtCSLdE20Xw5SCfbouC
 pYHCj8nxmciFuzeZUCnWBM2BMg9cqLGGt4P98NideHcydhFNX/XbjP4YI
 8+HSDYsPrZts1SBA16SI+695kn0m5zsRyCfdPzTA7d8bP84DnUl8nO6sA
 PzZyv9sumypPfspnmK2BoYFv09DHQ3lckZ0wSvbGChZ+d0FvmtfhjVwe6
 UzjSKijkZsQPPw063SlR428SYOxFO0LfYb10zb1dfCT9hY9MhI9oh+Z11
 pWrRQeVPWHj+9Ea8o+0cnL+lrPeluZQ+FA2Dbm1hfC59jjJ8lKNXrt9bh A==;
X-CSE-ConnectionGUID: XsGC11WST/C0BCQmSvy4mw==
X-CSE-MsgGUID: fUHEW2qwRwmP9vEPWNfA8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="80937170"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="80937170"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 01:28:11 -0800
X-CSE-ConnectionGUID: GBssu9AhSVq7/dXSIOeAuw==
X-CSE-MsgGUID: q8JIwSlCRLukSZ+aDwlRag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="207121686"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 01:28:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 01:28:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 01:28:09 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 01:28:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YwQprYdNO7ToMShsR8AoPOB4LCziulp6K5b4ZhdA2WTtKYHlN4ZQ1UPMQRlOJaQmqDJ2ud9ehWh2fpEsJN+q06RPI5zDbTIFqgI++oIUxHIZaiCUfoF+emyPn/2hNRZH42m8jSPHHIeFxevQrN64ZiarrsZmTrAt0AoXWFOU7BK0JAQm4O6Wg1wNxdslIUCPASB7HkoKB2qVK4+mArZ+AQqCf6m/lCE3IJAekGq/W7gYCOlbc7SOD3Wkww71YyOyDlZsjES1el4J6MSIrdjmcGYvAXq4zL7IwNU/NUESZAEFbJeVEuf/6Qium+3Ua7fCy5BJGIak+x19WYN2JvRWtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PvZCeU0dEd05TXgWa3OOHJiGtAYvHCpdm83hfwRK+CQ=;
 b=OWI9zN1D3JfQ52ugaMkTWQNL3Eea9oe4YfR5VCjhMh6e/n7WM29TMkjlMVRzrbFhbBzZ6rA3mF53nWPM9RXgRpz9zofoAB/6mmllVm1FV6Yq6CExZIRqorE7V7VWPJrWZxBc5KYOVudSK5nR7LtjlBU+EV7mxdwN2Af64iiivguqqxZDYYxj+4UWSvB/zebAfzl7h8bwZgnR8uXW99tjbADq9dnhKlYgs1ITdpjrnrgZ6X6hkbsgmOcUkJGI9ivr7Gqsrcl7YnY4wChmz8xvaOaAMl7O0wN+9TrJuhkuEe7xAKJEWl5SRqg1vT3Xy/LZH91U52z9bqwou8sUr1A+wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH0PR11MB7493.namprd11.prod.outlook.com (2603:10b6:510:284::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 09:28:02 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd%6]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 09:28:02 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHci1anE38WPdyKw0GS3exMmNK1m7VdoEeAgABKmCA=
Date: Thu, 22 Jan 2026 09:28:02 +0000
Message-ID: <CY5PR11MB63443B1061B926A7500949DDB297A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20260122041133.757072-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260122041133.757072-2-mitulkumar.ajitkumar.golani@intel.com>
 <IA1PR11MB64670DE6A3C9632AE0C24BE1E397A@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64670DE6A3C9632AE0C24BE1E397A@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|PH0PR11MB7493:EE_
x-ms-office365-filtering-correlation-id: 048e08f3-abb7-46f8-72b9-08de59988a42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HTBB0bT3O/Ik/sOUrS2Aam1BcxIwtLvj6sLlfO4mItDCwcay7YqDx2Ib260+?=
 =?us-ascii?Q?GHjPU9SeKg36Bv3CHxfNsN6bOQeWn6/IR28qIKwtyY8c2l/IchIQ08SISiMR?=
 =?us-ascii?Q?wg/1oznYUG4GzWZO2PczZujtqL6PSDhv6dDJaDl9bPvs4KZe1Y2nxZ59/cpf?=
 =?us-ascii?Q?4AzODwgW4CFjE/plxmw7bqi6QnNcioSSwpHJL0vX29jA0jLTmsROweWTs77u?=
 =?us-ascii?Q?ol4AY5N9ivXeFwNsgBHo7o0KzsoEB55Lm6tmTQTKyruRG2y7esBhHRILtLuB?=
 =?us-ascii?Q?Kzhstckj/LMuaWCHBKbrQhkJ8rZwY4HaLh3Qkd+iR0RyDnm2m5VppYoeu4yR?=
 =?us-ascii?Q?73YrOvHidM8vn6n0GZb7e1urGE5aIGnGgq9pSdb1FC2FqSC1uMWjCK5Pflkl?=
 =?us-ascii?Q?8ebQGfUkQ4mXxFKVu59l88d4DmF8cj/eDswicrPxCmMLRmk+gK8g9qsUrl83?=
 =?us-ascii?Q?nj5jn0R5kosiNl3imYt+BCajftvbhiy5sgZrZdDKQuEWmhjNUoedtQc6M5AY?=
 =?us-ascii?Q?rN8UDs++hmM9eNGQgUoJziDh4DysnM1uixnD/FSvKZQphmfBmowfdQrZlJPr?=
 =?us-ascii?Q?47RUflrQM+7wQg1hommZWDDcVIuivBkKDSLraBCDmi4v0YR1OslAsSsFFVsd?=
 =?us-ascii?Q?3tz6LZz1hHX9bmoEGr5TMb5r8Q3PRrQnVF9aAAR/B9/iRIip2bfhQhgHnzS1?=
 =?us-ascii?Q?r5Q/dWSw8z5Xb+mIwjH1CGvVyak0a4ympFqw9JMEaXzR+uHDgTVEtgxDSy/m?=
 =?us-ascii?Q?KgSScUDY5IUjyS/nZt0Jhbjh/NoWkTz3xtpjQKwUJ5a+9v9bd8HGEx+upRMs?=
 =?us-ascii?Q?eBtI6T0feELEt3QQ+G+C7snbyoxfHsU8jLI43105Z9D7fnTWNr7jXqWqSQzt?=
 =?us-ascii?Q?35bvEzOCJpZRj+yvInPT/AuAEcvRuTAoxZDt8QNIeQhYt4elO3S9WcwGTBaT?=
 =?us-ascii?Q?8yo1EvdOD8EREWahwJX6Q//bnXbQzpnDswvbjqZemgKCpLmZGVIdOdbE+UU5?=
 =?us-ascii?Q?4hK3te40Vl2j+PMhUDIKtvMArc/3HxhICePGkcJQLz0Vvd4wAdKg8H9xUIaL?=
 =?us-ascii?Q?Zr/YXHG2N+QtnFOG/zTCOJIPWhPMlERETM3quMuPmrtQ0CnW3znXCegDac9p?=
 =?us-ascii?Q?OAOaF9JpL/0WBZOSd9BLDbatQ8j6w5RRu0I6qty7Nsra4rzAAuVLTIQN1Chi?=
 =?us-ascii?Q?3kCHoUd/NNYjxs/cayJEKKnvitRtAxJpkrQ0VobeN28qEGC8JCBJodMphLaE?=
 =?us-ascii?Q?+igRsr8winSw8SLl2qxFI4CCVuAokMfVCWkT3xiwfXwGIsRUVunM7q5KIPgy?=
 =?us-ascii?Q?P7j3p8L+h9+9Arvpo3Rq0mBQm83NcYgu0Gfr9Z+CfxlJqgfitY2/rPMwyLuY?=
 =?us-ascii?Q?a8wInpJstLeuFgbFh1+0Eh3TRsEeiJdZSV0gV2n9iU5Df6LpGtp6Krix4Ovg?=
 =?us-ascii?Q?wZXfYiPfJqMK3rn2ykF7T3S1A0DWyiU/vfjfbQY3EWSM8gC9YJGg9MXPwFdA?=
 =?us-ascii?Q?I2yEr3oeDkr8zn4byKB+UALb+RA5Qqg/+Kn8j6+YRXYCZO4XMmHiayLIOb4H?=
 =?us-ascii?Q?VlrtvjZF5vN8xH34hTZHskeDr9vk7N6XacuMG+IdNlKA/ydSt974V02bAlLm?=
 =?us-ascii?Q?C1QIMYkjM/lrCZZDbyTBmfs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5jbsdt4hBTC2sgM0kEyesy6m3I1Py0UxXqVxa9kTP5BhmrKaH4jXrh2b1aFc?=
 =?us-ascii?Q?yzN/1lYZHfORDopefIM5N6rEM+CE0NCH1N/8jD9Tc+nMt8zjxuUAfuoFf1/B?=
 =?us-ascii?Q?oAkeYlmBLsjPdzG51/yT2H+51Sslc+m1OTBMwBiIRAZDhCrqoU29Zk2PPxWh?=
 =?us-ascii?Q?oNQyUEdRKIGFLp2lADsw6AhN0rPW4pnUD7WlLiwJ2Fe5AB2IxfvvAHCDmoXZ?=
 =?us-ascii?Q?Qg/PRmzEi4STqAHrsbXroSA5HpQpxszfkE/MnsrGh54oR07Yo+Q35eJXcOOz?=
 =?us-ascii?Q?kmR8BlkK1vQ6EpPIeTVJmg8s2/OW1UJXqQe1wTTgdxKYvCYqd04nAn1SH4qG?=
 =?us-ascii?Q?RTEPaOUVgC1nDi5n3hnqejXQ3KVy6V5FfcTjbC7wahWC36fODskwIs2kvgHH?=
 =?us-ascii?Q?6i0AnHuj+VwTjOEpi2OpOExfbVPTXsIj3KryDsHZRbtMsW4S/0BiPuB+CVD3?=
 =?us-ascii?Q?gJs8blTCaHNDIlgVnM/P2/XrVEEhC8x/eCFC1K9lyJcEvwR1tPUdYRUBdlyR?=
 =?us-ascii?Q?AzHn1cDXp+X72LaPwR9mZdKq3X2u4MxQmkThvHOs8oT8DEUqnjnQxtogFHCQ?=
 =?us-ascii?Q?OkTmHZPofFxIml4YCz/u5xgafHNCZiehaDzIu++ATsUPXwu9tDA1BBYWQqCq?=
 =?us-ascii?Q?m4FzF58tEcDJ+udGrY0tbCWrTdzvE34NE+SdIsX682a5kHjQNQk+elIqYgPL?=
 =?us-ascii?Q?w3AJp2ogwS4WY3JhMtkl4UifW6TC+UBwwhMWfa5kNasqCxykfpASauwDBPU2?=
 =?us-ascii?Q?MyLhVnKqw1GNbLWHZvvB0edk2CtxDWv83ogbeiWjy0ynoRCh1yqIWTuJcHLC?=
 =?us-ascii?Q?cuVeIB+cZWqJabH60j3iO7TnVcVGP8dKKOC7pnNNS8fwKgyNIfxZ9tn868OZ?=
 =?us-ascii?Q?519iteJOM1gzj76xajeODcld/SFVzXpscLPSzGOaLf7q6dolI4vHtZhDkcS7?=
 =?us-ascii?Q?TH7xeUHqes6AiIx2C8stUOppCePCRjEmMtz+sY9oV1mDABkyAh46AKLPgSWo?=
 =?us-ascii?Q?ukPLntTeXiOAInLnti6tnqs4up0LoejmLRZ0qbrOsUdr0muoVEBGgqnU/UMA?=
 =?us-ascii?Q?GSB5TWOflRQL3Yz8OZ514L0z68ZjhlJ5BTtjp29hDhdM11IbqeVwUar/2JIg?=
 =?us-ascii?Q?3i6wpxc6yqoNfKQJ0Zf/XWHmhQ+ffPwFuG64fndQ6xna/nFO3RmD/SiaESgz?=
 =?us-ascii?Q?wHDZmWcOvWq9s1O2s7DjH2MDDcX9UFe4d/sn+bAssF1MFCTzC4GQdbqa46z0?=
 =?us-ascii?Q?WaGS+nk2UidZ7KL256e6+ywadTr4h53Jkj5bDVBM5pjsNXYL0NzavEotUrvU?=
 =?us-ascii?Q?duUWaV4yLtdWWeQHANFTnbrXv8IB2ohLRvBbzkT6Pm+xpz7SmJsNR7FQ/QmJ?=
 =?us-ascii?Q?dOeIz5cbZl3HcpwHZVyCRwZhbbIMK2klcwxPOfhGelXU2ujCeJhRy5nnerky?=
 =?us-ascii?Q?bud0hCPLqAKTrb/HEcxKrQoa+DiKCsVpa5xxjneL4EPj6W3neDCzgQRFAijl?=
 =?us-ascii?Q?HaM7tACzqorbOE/Z4gIaVwYG2R6ZrlM+r0o1Srq7fEdj/Jo70cLXZS9W1XUw?=
 =?us-ascii?Q?XBVDqkF2pQzQSBZ+25gC1ejDQtwO85YZ9CcaLpuofDD8LyZ7nlnUYcvBZiYr?=
 =?us-ascii?Q?oPfooVigwnQozxWsRsgi28JzMBLejVO9IDpyuzTShTbiNLQzOiUjKh+h2+g+?=
 =?us-ascii?Q?gJKjf4WjN6RpL9T2lsXAIkQSGvTPUkSSfUOQESGmIWSuD92Etjb3gAsyDoJ4?=
 =?us-ascii?Q?7mx5FInwIIwRgml9qb7IU8j0ZIaWoyLsPM5cUj18WDXpuyQDtNh9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 048e08f3-abb7-46f8-72b9-08de59988a42
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 09:28:02.2413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0VIwkcZYlKQJFpOzqitmocYKIy2YnJXuy/VMdFEWMNdEmk/zhZYHf0lNSHIDPcmM54++D1XqpYZiWxvXQnoy7gW3KpI/Cgj8+cEIAZi7m9pkd86xL3Ng6CIVKdO9pyss
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7493
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 198616484D
X-Rspamd-Action: no action



> -----Original Message-----
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: 22 January 2026 10:27
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: RE: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Mitul Golani
> > Sent: Thursday, January 22, 2026 9:42 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Subject: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
> >
> > Reject PTL+ platforms in intel_ddi_port_sync_transcoders, As port sync
> > feature is deprecated from PTL onwards.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d8739e2bb004..be774c6d24e7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> > intel_crtc_state *ref_crtc_state,
> >  	/*
> >  	 * We don't enable port sync on BDW due to missing w/as and
> >  	 * due to not having adjusted the modeset sequence appropriately.
> > +	 *
> > +	 * Wa_16024710867
> > +	 * "Deprecate port sync support for PTL+"
> >  	 */
> > -	if (DISPLAY_VER(display) < 9)
> > +	if (DISPLAY_VER(display) < 9 || DISPLAY_VER(display) >=3D 30)
> >  		return 0;
> >
> I think all display WAs are moving into intel_display_wa.c.
>=20
> So instead of the DISPLAY_VER(display) >=3D 30 check here, this should us=
e:
> intel_display_needs_wa_16024710867 ()

Although this came as Workaround but more of this is platform restriction t=
o deprecate feature for future platform, also Portsync was not supported in=
 display version < 9.=20
so I am rewriting entire condition as suggested by suraj in his comments.

Thanks
>=20
> Regards,
>=20
> Nemesa
> >  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> > --
> > 2.48.1

