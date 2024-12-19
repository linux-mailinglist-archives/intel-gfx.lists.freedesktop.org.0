Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE149F880A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:46:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E86910EE0A;
	Thu, 19 Dec 2024 22:46:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bWoQm27+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74EF210EE0A;
 Thu, 19 Dec 2024 22:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734648366; x=1766184366;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qajG05cEFhLDF4KXgOdChqXxUx3ioB7cNfAW3RiEBho=;
 b=bWoQm27+NDf1kx382q8g+EyTHaSoPRSAtTnMafHPa19sP0BhGqvnLkAi
 1lpD+Fbl1OVulEdBCv0d7pZ2zfyRe7sEzU3pqz3l6Xa9Nx+YhKc0xlKPE
 TCoyQmWSujOdoaoJXaFAjEIkSgigSByutQST9R+SRR3a6qAzn7M4wi4j6
 nwHOJbNnP/L+ogfOtd3QYgzFFsaPYy8LfQXtEMpphHL6i3KmrwXBjuj+d
 vYVa/sHpOXQno2AOWCtbQdMwe5TD6isfb2CQUm5xIQdGA2CZGXSyVZWSS
 KpSKOZvQDU80wFz8S9IxkDQ8l9GSOdIAlN6F6bGB+VSwQFz/5a5b7Buaw Q==;
X-CSE-ConnectionGUID: Y1kPWsy+TC+RSVcEmxXF5Q==
X-CSE-MsgGUID: B+fg1F+KTHSKevmCnzhDJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45790156"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="45790156"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:45:57 -0800
X-CSE-ConnectionGUID: +BGYiufXTLaCYVy9QOExPA==
X-CSE-MsgGUID: UEaUxhLrSRS54zvsAnpWew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129299778"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 14:45:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 14:45:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 14:45:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 14:45:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=drx3Ti3P6HIsnA0acljKSJJi/PdVlPx5QD9NRzT0CsdZBi3SM0BjESccqMSc3cCkn1VzbDuEjra8m448zQGrVPOSpWlccnunAb+SkZKVjIYyjvGlB5jTe4TwW5GrvokakmywUmG1LWbZlpH7uOCWteSEYYrR9YdrTorwkts3L7xAx24tCk2SNXPiYTj3kxv9ghCemgpCcVcVbbtliFzgbQFOsH3JmIAUI3ftnO4HZwGSKxx3y/mRMZSKLTEfSe0Ei8+okJ5sbuMJStdDFZ0PIDbK/VzFhg0HxTbRI4n7x+QK5Ywflj+LIINL+TkC4dr6d5twFrav26y1O7qXQu4QSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wpt3R6l+5dwYEvRo/X/SRKheq7vlavs5NuUPadrmSv0=;
 b=LP3aX9A2tU1IBzqbtpK2Gx+YDLAKQ9/Ftc7xiBBrJa9xSRWTdFYbJXuIUDMhg0ry1k7pJ7+//PKczRcLFSMGONgoEVnOS2+gW/y3V65LoFSF8nG5szBKmJPaF0o7JiuooTGRZFgMHA4tWWUA9nGfFCEMN2AZuj/QRdS44YJGOxXgWaWGt/f7anXydMTxxC4xdLc9pOY1ZvqaU90+lETDp3lqqEE7PIyR8QLrI1zbVaayRqi3KBlmyf7Gxy3EcpYUwgF59caCx34kYnHmodj0ncZetamCotJGIbMYc6lsKzHYkwv43IrzLPM7azMfLCH+3AURZjzTtLpd+ZfMQLH6Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA2PR11MB5018.namprd11.prod.outlook.com (2603:10b6:806:11a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 22:45:15 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 22:45:15 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS
Thread-Topic: [PATCH 3/3] drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS
Thread-Index: AQHbUmASA8zjIh2BPkqpO0E2oPBckbLuJ+rQ
Date: Thu, 19 Dec 2024 22:45:15 +0000
Message-ID: <CH0PR11MB54444299B8C0FBB73897F3F3E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-4-gustavo.sousa@intel.com>
In-Reply-To: <20241219214909.104869-4-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA2PR11MB5018:EE_
x-ms-office365-filtering-correlation-id: 60f371f1-d5cd-4c5f-1d0f-08dd207ece3c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?5bo0xsUFPjZ7pa24yHGq0xd2ehiU6R9JepJI+DOCGZkXNHetzw7JvrQ2Bz?=
 =?iso-8859-1?Q?Um3h3srK4sdL+2TbGp+Ogd1hGZx7/SeBb+pOt/wZELKLC8v3vkiI+EPFUK?=
 =?iso-8859-1?Q?2mdO4paibeSOjEwJEyGZP09uBTZST1C6lpBCfxtKDdRYWFahBb3X/585Y8?=
 =?iso-8859-1?Q?PdtD/GLhR6RxTaj3H7+Pj4hOqwMiGVy6NzuytZaNBh/qt5F1Y/ycpciS0a?=
 =?iso-8859-1?Q?e9z2YbX2qN+dIytJKs1qPldOQybRjPvo+INbgTHCxtjyevvsQFziFmtFvw?=
 =?iso-8859-1?Q?a/YtBNdKn+TkGAQDBRmzvQt7HKOCp/aHGxu7kDsXK6pqPZb+Px7sYJ4IXI?=
 =?iso-8859-1?Q?X8FP2tpp1qwx2dPBaDjuDaqEt1JIvmMR6019Hj4PbaC7Ze/XgeTbZohrWx?=
 =?iso-8859-1?Q?lzQY9dwD4i9h0FVVcej2i5Oise55Coq2l01BnJJrtNNT2KS06MhP37XSTz?=
 =?iso-8859-1?Q?4SkdzXghrH7B6bIeaS785fRz52RNGrd1jhNBM28cYZXSLASg2s/nfJqd2z?=
 =?iso-8859-1?Q?rHqRz5BwfdlWwV279GXNXSGFSp1sCiD6ngSWfhsJLYaeqJUnP7FFJr1qph?=
 =?iso-8859-1?Q?BH4X6/sol37mp4EfOIpWS/ejm4CS0u6CrntPqZn3wdqjtlLdoC2H5pJA/q?=
 =?iso-8859-1?Q?YTWk1RkNdo266/NMc0v8ezNrBczHMmdMSTnzJ4Fb4WnGKtF/kXtTOE3ck2?=
 =?iso-8859-1?Q?brL0PwtRpbW3/UR1xycXEHc+SPMMqn9GPJRWqf0sz3rd58Uc7+MBdVjtEC?=
 =?iso-8859-1?Q?RxNLem33+7YAfGNMf3dK4jtEmEpphTa2+JNQdbvevMu66TQpSMSB2pzwnu?=
 =?iso-8859-1?Q?pAax57V0OdgZPlLlTnSXYYqQOk/p3Y4zhEMP2Q5AQOGxpf3u0T1dYKKjfv?=
 =?iso-8859-1?Q?448XUbusxI7ILO3HC6j53FaKJqjiSwOH0giCDSuEREpM4QVc3gw5SnAUd4?=
 =?iso-8859-1?Q?F3pFicbCJ4f3YhisWOpg+1iPtNCuQs5JSY/0pF9JZB31/79BB/dpQO2AGe?=
 =?iso-8859-1?Q?H31aqqwWQRzF4t+cX8XrXlFHXLsqKCiYX2RCjPG7RIQGD6kpXSDCPSCd6C?=
 =?iso-8859-1?Q?0xaxyS5FzbSWMwTyfYp0xGAxjYF1K4alFR00w1PTK8J5lOsILz2+TPCm9D?=
 =?iso-8859-1?Q?Yrf2/mwXxLW3Q+NYF7pa88fyCrXqwT/oLHtdINPCYEMQDgOIS5S6m0r/ko?=
 =?iso-8859-1?Q?ae1aMg7kJPEhZiufJ+PftbXFVljvIf56/W5GT5rSru6X2TJsKB/u4QL90g?=
 =?iso-8859-1?Q?8kLR2NOgF9Ye4m+tcpThN0UJ2spYBiiu8xjHC0j+Ks9Me5GUitxyOUzo2m?=
 =?iso-8859-1?Q?WHTd/Nd469YkVSd1oL8nrGGgNNRXVN3LmW8Jf+UxtrBBOxHsV+7gRo8SOH?=
 =?iso-8859-1?Q?CABGBnURoqgWUQbYV3puNe9QcEwikf+sYnfrsaLyLeNEh9YTXr1EeqaS6R?=
 =?iso-8859-1?Q?MrEcREppWpOQMyT54fIiqXSy85Z6eVF9H5/j/UkL1VBt3Tnxkmk/5+wfmi?=
 =?iso-8859-1?Q?MzCd0URG7gR/vUuUZGnay+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NJHWaFVnZgfkeS+XHa6xf81RcNdwp8WlUCEX4tj0LPfm0bOkqLVL29EqWD?=
 =?iso-8859-1?Q?DWI/DUtlx6kKvquHZGV64CZFco+fJuE6hFylda+JFzEk6aayN4JvxOQ4vt?=
 =?iso-8859-1?Q?2c/75cTC9udwFi20sZNr+Qp3/SC87mxGjNFvmLroFaoCtcxz5joAL4noeU?=
 =?iso-8859-1?Q?T6IKyUYDV9sjMWH+jkR4rB+WrtoIrCaQPU148OuUGpbfyaXzjBiRi2B1Ie?=
 =?iso-8859-1?Q?oFcFqLlSTsdsZmraMhNPUdIg6laBf5ppQ2AJ1m4Wm4ip5AQWCfu7FTgT2X?=
 =?iso-8859-1?Q?QEtiJahM1JrhVddGrbFd26lySPW21rd7BE2Xvwj7TpEcHmPuuSBiKzNE0m?=
 =?iso-8859-1?Q?yQ3LVszW4LCBqEXSF+kckgLS7kzVw/IxU9QsxrgAMjAeSeRO0YTjsIYR7g?=
 =?iso-8859-1?Q?rUxUVqjGQaxIS5RBQpP3BEYyx6NflSCuwQeIkYkChDQkRkZz3hlTZiNkw8?=
 =?iso-8859-1?Q?AyyJ6kh0XmaxD9Jq9gX0hzT1Kik7NLH/DMRRZ4g0s0O3em6JtbgbTI3alq?=
 =?iso-8859-1?Q?6zaytl+RibvfNcUOMyn5MKJ/pupbaIehwZWYRPWaEkwY545m6dXTJlvPGD?=
 =?iso-8859-1?Q?kShUHiNKE89EODMI/qTNP33y7MLdOrI/gTlJPqdla373TXVcFp578B9Z8Z?=
 =?iso-8859-1?Q?+th9y9du3dUQwLA5Pmfdj77mLH5N5BKOnUT0ROLns/WipqRVm8BbljMoNS?=
 =?iso-8859-1?Q?sKn3296IoJ57ycMckgjZsoCGZ8T5MOpnuwqBN5bCxYn4sgto/1dUHTarrR?=
 =?iso-8859-1?Q?t4hFZ8euwz6L3MzY5RYfvCvAvcBah10Te6F60IYsTnyqWv59ld2jAOj8ds?=
 =?iso-8859-1?Q?yk/UoY8WsCxvnbpUm9NgMPM4uSni5FN4tktquwkZC94gykPraX2NQWe6LF?=
 =?iso-8859-1?Q?958jJdbZrdgA9AZgn1QscIiGd6Twnxp/7a74diiD/9EIZOm3m1ZAFA1lV6?=
 =?iso-8859-1?Q?I+rldo4YtczMINSeC3RuV59FiD++WUWxQVJ6viOl6eaKgDKAiYjWEengc6?=
 =?iso-8859-1?Q?iJxhFBeKl8Rch1v433+hrCXqfZxFr6yCZadLD8qqt4UbaqoIz6d1sHlVwL?=
 =?iso-8859-1?Q?osffrl9qiFuD6vlDYrX+XNfggdFTueoLSPN1Wv7DXmMmTo8aHLgy/Y6Ius?=
 =?iso-8859-1?Q?mKLovhY/OxODwh0nHaTUPjjSU0qAEMHFd3kCPvodEFOXzmrOv+GaX6h5dG?=
 =?iso-8859-1?Q?Fy7Dms0AO4H5tt4Sxeoh4OrnvzX/PBtO1dprYwQHOnhqnT4qaL2Bhwx0IO?=
 =?iso-8859-1?Q?uI9u/bjOaY1SxN3Aad0W+rD3Mjbm1pkexqN4x4DQTOPl6tzID/danbUjl7?=
 =?iso-8859-1?Q?zaDOtynckmzDQ15z01KRoRpdxZDiaQXpz5DfX0uJUkuwfq+DLq7W9eP4NP?=
 =?iso-8859-1?Q?QmRlsYO0oz4FQEzIzNcMWtS3VbPfW/slXL1P0vW4quMOJbWr0myBcpcuOU?=
 =?iso-8859-1?Q?jTj3HiX7u+6/KCH7gyPJnxL/r0y2dr03Y/l2CgOZCd2J+ANORwWWP+0L3I?=
 =?iso-8859-1?Q?MlPynAmg+LAXTEc4h+ExwgZNjTQCLovJOAYwv0EB8+e5iJ+Wnuh4jrSRNO?=
 =?iso-8859-1?Q?cHvEWXtURXWUe49T8w5yJ45/Ucq76a7J0+A3TKjzZN7W/gfBCsCGEOHXzf?=
 =?iso-8859-1?Q?b78GL5Y+vFtElujZF18y01JCm6d3+wZp9U?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60f371f1-d5cd-4c5f-1d0f-08dd207ece3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 22:45:15.3918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xC+qwnlSzZd31nzUCs/GGQ4x2A5lfcrnBfxDaFI+rGHej3v7DIYl3PxH3tnR1CWHbW3WUhPJMe1aZbEEFdqmWHXA9hBcwsARa+gWtqtklts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5018
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Gust=
avo Sousa
Sent: Thursday, December 19, 2024 1:49 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Nikula, Jani <jani.n=
ikula@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS
>=20
> Reduce global state boilerplate by using INTEL_GLOBAL_STATE_DEFAULTS().
> The only case that requires customization is for the duplication of
> CDCLK state, which is resolved by wrapping the generic implementation.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

LGTM, though I am a bit curious under what circumstances we expect
obj->funcs->atomic_destroy_state to return a valid function pointer
with these changes?  I'm guessing we aren't depreciating/erasing that
function pointer because we might need it in the future?
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 21 +------------------
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 18 +++++++---------
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 21 +------------------
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 20 +-----------------
>  4 files changed, 10 insertions(+), 70 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 30236010e0ed..f040dfa70fd9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1422,27 +1422,8 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>  	return 0;
>  }
> =20
> -static struct intel_global_state *
> -intel_bw_duplicate_state(struct intel_global_obj *obj)
> -{
> -	struct intel_bw_state *state =3D to_intel_bw_state(obj->state);
> -
> -	state =3D kmemdup(state, sizeof(*state), GFP_KERNEL);
> -	if (!state)
> -		return NULL;
> -
> -	return &state->base;
> -}
> -
> -static void intel_bw_destroy_state(struct intel_global_obj *obj,
> -				   struct intel_global_state *state)
> -{
> -	kfree(state);
> -}
> -
>  static const struct intel_global_state_funcs intel_bw_funcs =3D {
> -	.atomic_duplicate_state =3D intel_bw_duplicate_state,
> -	.atomic_destroy_state =3D intel_bw_destroy_state,
> +	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_bw_state, base),
>  };
> =20
>  int intel_bw_init(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index fc084e2a4c6a..a9dfbd53e812 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3130,27 +3130,23 @@ static int fixed_modeset_calc_cdclk(struct intel_=
atomic_state *state)
> =20
>  static struct intel_global_state *intel_cdclk_duplicate_state(struct int=
el_global_obj *obj)
>  {
> -	struct intel_cdclk_state *cdclk_state =3D to_intel_cdclk_state(obj->sta=
te);
> +	struct intel_global_state *obj_state;
> +	struct intel_cdclk_state *cdclk_state;
> =20
> -	cdclk_state =3D kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_KERNEL);
> -	if (!cdclk_state)
> +	obj_state =3D intel_atomic_global_duplicate_state_common(obj);
> +	if (!obj_state)
>  		return NULL;
> =20
> +	cdclk_state =3D to_intel_cdclk_state(obj_state);
>  	cdclk_state->pipe =3D INVALID_PIPE;
>  	cdclk_state->disable_pipes =3D false;
> =20
> -	return &cdclk_state->base;
> -}
> -
> -static void intel_cdclk_destroy_state(struct intel_global_obj *obj,
> -				      struct intel_global_state *state)
> -{
> -	kfree(state);
> +	return obj_state;
>  }
> =20
>  static const struct intel_global_state_funcs intel_cdclk_funcs =3D {
> +	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_cdclk_state, base),
>  	.atomic_duplicate_state =3D intel_cdclk_duplicate_state,
> -	.atomic_destroy_state =3D intel_cdclk_destroy_state,
>  };
> =20
>  struct intel_cdclk_state *
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/=
drm/i915/display/intel_pmdemand.c
> index 1f71efb7d04d..5bf245a9ac8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -15,27 +15,8 @@
>  #include "intel_pmdemand.h"
>  #include "skl_watermark.h"
> =20
> -static struct intel_global_state *
> -intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
> -{
> -	struct intel_pmdemand_state *pmdemand_state =3D to_intel_pmdemand_state=
(obj->state);
> -
> -	pmdemand_state =3D kmemdup(pmdemand_state, sizeof(*pmdemand_state), GFP=
_KERNEL);
> -	if (!pmdemand_state)
> -		return NULL;
> -
> -	return &pmdemand_state->base;
> -}
> -
> -static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
> -					 struct intel_global_state *state)
> -{
> -	kfree(state);
> -}
> -
>  static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
> -	.atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
> -	.atomic_destroy_state =3D intel_pmdemand_destroy_state,
> +	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_pmdemand_state, base),
>  };
> =20
>  static struct intel_pmdemand_state *
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index b3d38e09df5a..8aa041be8277 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3289,26 +3289,8 @@ static void skl_setup_wm_latency(struct drm_i915_p=
rivate *i915)
>  	intel_print_wm_latency(i915, "Gen9 Plane", display->wm.skl_latency);
>  }
> =20
> -static struct intel_global_state *intel_dbuf_duplicate_state(struct inte=
l_global_obj *obj)
> -{
> -	struct intel_dbuf_state *dbuf_state =3D to_intel_dbuf_state(obj->state)=
;
> -
> -	dbuf_state =3D kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KERNEL);
> -	if (!dbuf_state)
> -		return NULL;
> -
> -	return &dbuf_state->base;
> -}
> -
> -static void intel_dbuf_destroy_state(struct intel_global_obj *obj,
> -				     struct intel_global_state *state)
> -{
> -	kfree(state);
> -}
> -
>  static const struct intel_global_state_funcs intel_dbuf_funcs =3D {
> -	.atomic_duplicate_state =3D intel_dbuf_duplicate_state,
> -	.atomic_destroy_state =3D intel_dbuf_destroy_state,
> +	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_dbuf_state, base),
>  };
> =20
>  struct intel_dbuf_state *
> --=20
> 2.47.1
>=20
>=20
