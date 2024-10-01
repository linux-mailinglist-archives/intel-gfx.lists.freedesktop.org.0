Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463E898BE91
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D747B10E114;
	Tue,  1 Oct 2024 13:55:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FfWXiPEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A00010E114
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727790925; x=1759326925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xwr+BJnkj2NnNNb4YkvmqzgGmyn2NgXy3iAazL/P2E4=;
 b=FfWXiPEjTUOsKz5LMgTPhaDmy95Mz1FO8i7tsRgZJ7uBBxW5GethXskc
 lHPJvK1iNRMumuu/PXSqDhgr746xsKezhjbSM/tQlRFw8OWXdQagNDwB0
 +da3GLDeDPnDxbXQ7PqDpYSg9zPORYTzAfSqsA7DNqvdaTD7wzXO6ZOF7
 4ZVJXLozGEIEu3Bx6oWK7X/b+x8pmEikNHB2276QZbszUzNLEPt5V9jZS
 6WKI3evdsGMrMmoKuujkI3Uwjo70I8L3NiA8kauafys2MgenJqL+2RV+h
 odIaG9/AZjol2Hd3yiLB7vCeyxyBCeeRW3iArFuQGzLEBZouyeMGGfKN4 Q==;
X-CSE-ConnectionGUID: 3diznEiWSne6owqqGxwx1Q==
X-CSE-MsgGUID: XUmiikzeRieog004Mvmiqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30632438"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30632438"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:55:24 -0700
X-CSE-ConnectionGUID: ZMb7hS1ASAa0snfhzg+sow==
X-CSE-MsgGUID: 1lsJWQQ6RlyihOYt7NPe2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="77719845"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 06:55:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 06:55:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 06:55:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 06:55:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 06:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rOXq+p+VisMmLgsj6XRsbUB3N1ekN+QWbwpuILCnylOKXNKrlagI/i+J0bHcYzhBzUOQserJfcdTTA/H+FxudCExH8N4sqnpSW0fIIGmTKoPXXPLe6uKQhSTjzs/3bEH2hkKYo/BPkg2SjRTu4pNl9M2gh+4ZFDM1Jo+AkjT9amCk3E/BsGAU6hJNPoPlQL6ZYFr8xfWOhQuki9eR+SDZRWoEPGdaW7PY/qgLra1EgX/a7vnOAhsRxLNMzugeK8znPRFTOzHqCxefRVZU+LhE3angk+71DNhZggbARzdbvZEjCf/hAfDxLPrPELOvbsVcJU8q7Cyf6gAPL10SMrKBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5b1/M8+XaLqLq671BX5aczTN+JMeBEJ4ZOlHDms29gE=;
 b=izXGA7GC+rPgaT5QPClFTHqTAZLISW7hQJ2ykKafIJWWbWIwQUWhGYhw4KVBfy5okip4suiZ5+u/KRyNDheWvhXUit+CkI3J564heWhpsgKlhm73yWAskd8iDwXIEAvM/9eLL+8KBBfhKJzJQaEUzrMYw+dLTxZag259Q0COwbU7tTxRnWrDg09ZyFnc+6xHhXKkfqw0yGR2SiOA8lTSV0IK/P7LufLap1f21XdcXn/1ddlOj/G2XnHVjRRY9QwlC1/OU702/YiJYT0tcXkdU6tTkEXsVZa8PnnV3mN0KpTGh4+e6Ho2osjmtzorQUKm1+jBFjOnEEQL+Q6x46wH2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 13:55:19 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8005.024; Tue, 1 Oct 2024
 13:55:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Manna, Animesh" <animesh.manna@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Topic: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHbCBA36on6DY3N1EycnK1jcrrhRrJgk4EAgBFuI8A=
Date: Tue, 1 Oct 2024 13:55:18 +0000
Message-ID: <IA1PR11MB6348094B1875CC3E5DC1D339B2772@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
 <20240916075406.3521433-3-animesh.manna@intel.com>
 <Zu1fDJzxiF5GoGhA@intel.com>
In-Reply-To: <Zu1fDJzxiF5GoGhA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: 7f28006e-07a4-4d70-19bb-08dce220af4b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ZZpWBWGYSE8jV69koT2bm80CNnZivX/SW6dneFTWUb7kMIgEWm6e7t4daO?=
 =?iso-8859-1?Q?okXGpZ23Uhj8UYVAmnDHXMREuAc8cBi3GzdfFhGIzklAmtZzpMs76V7sqh?=
 =?iso-8859-1?Q?r7Lg2IGbsI+v4Q2zv63QzMWwVOb+sbBC6sCWgtG4HUpZwa8RlBPrAycTfR?=
 =?iso-8859-1?Q?mmOgNwNfBFgFD8iPa9GxEs5AIJYyNBwrFaakBStMA4xywgP8ZPbycwf95+?=
 =?iso-8859-1?Q?efnsVXIFmbrWbWU5oqqJ2wwNFykKOH7NjDFIBwl42jfM5lBJeciVRqqkdd?=
 =?iso-8859-1?Q?OjR7vVx32FZyzyO75ReU3BzjTAjlyV2dlVKA5ZIzDXBQm1a1nHesWkVXYX?=
 =?iso-8859-1?Q?xMeo+RL2uldXME0oOTkaVZfqfaoCgI+uWix0btxY3KaS9zZ+kBzwlB59oW?=
 =?iso-8859-1?Q?uf6AqNMhqkUAUzW7vzIG9CBIS04N2XFMmOrngTMPyDcqYNV6cpMiaPl5aJ?=
 =?iso-8859-1?Q?mR9RwAXADdGwYF/o9VNZpQlY4JpKzFNP8nm9ycdn1jCQ2xdqK88NZihNEV?=
 =?iso-8859-1?Q?rfWixrh1VbZVaniOTRBeF/0jb9TEvKA08NUzzYXBiXzw7HuNPEbYRCfyvR?=
 =?iso-8859-1?Q?F0suiMkoQaWo9oR+yly3swLg3kxR+IDg726fThHhmHkeyVHqvAbynp+FZW?=
 =?iso-8859-1?Q?LESSSZM5sOgusB6JSzHBD21uxynhhJPZu8mKFvH6+Px6ktrrhaPGoTzxRV?=
 =?iso-8859-1?Q?5a5f4xLbpn25Y92g7RpnA+Vn0gz5RAJulfyBX35WXIz7hXh4ola4gDBsSU?=
 =?iso-8859-1?Q?XgzsZm8Ig/eWLDPbI9Xt/nfDo7gN55VEi0S9ohRc+au6r0ankyYjXkQD6G?=
 =?iso-8859-1?Q?O7TZdT2Jdoyx4+HCG6G6v7xkDc89nfrldeJ51az+6vy7kzdbA9wjuUXtJC?=
 =?iso-8859-1?Q?wziLVatWFHsUbE1grPsccLzKqAsqcZ9vWvYFOb0BNteaGLaukxcb+DoHK2?=
 =?iso-8859-1?Q?VjQy1shQK+4/P9Bh6FcQ20d7TCJyyHFXQ5AHWjpVh3y5RtQ4BVWYjekzIc?=
 =?iso-8859-1?Q?a7FCv7GJqKDHCvdFLlQbYB2UI+c3+jbX1RtVFaUWbmxluOJicTmsaUTz+F?=
 =?iso-8859-1?Q?NMUA9UZ52B3ILF9YAig0YB6LgUB7wTsaTAi81siOOBIhn3DLE3d37jV6x2?=
 =?iso-8859-1?Q?ciCouNxkVTcW0jCBw5uRVY6xRZ1ODpP4Y4BZTf6+Kbcl+TlXp7rjzQWuqG?=
 =?iso-8859-1?Q?ryXuvYKSg90OfmtHKDxgRWXxWuKdG0E9WWt22WvAna6IC7MZDgGLGu5PH5?=
 =?iso-8859-1?Q?zvJHpVqk8iTYW3zxk3bjy2VdVj4Mtq858Q+gEarGosbidIX01YkGDTiiUD?=
 =?iso-8859-1?Q?hjuPkMIvx/fOvDJn7Sw6htoxaQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?bexiF4EXwLeWseMhmzdqStgCos3MTBTHN6bfhUTu60sauE/8vL3e4AcAqy?=
 =?iso-8859-1?Q?YXaaLqaPLWqXx9ocR75vpCOTrdtk3Xj0nFyAJj9MqZF2KMxb+t8I4AsiBm?=
 =?iso-8859-1?Q?8pxmztDVXd/ZdBCKTATpymSufgbRclo0vPpYgrU+PgKAIR8IuyJcH5I14/?=
 =?iso-8859-1?Q?h260s/1+XfWh37nNRZPznwAYGkDzwQBoOIkC9kym1/2OMCNmJSYVmjx7vu?=
 =?iso-8859-1?Q?jgzvOMVyh5igJE9/Q4LA+d0cDgIasTJ/maoMYEG5yrQxH+PdmnaqOxPhNf?=
 =?iso-8859-1?Q?Vyq+nrR+0U1hg++TRGXbYMMOALecmINN3wA8McPCJZ/ntL8IfX1gH9PZYp?=
 =?iso-8859-1?Q?evNBas94iU5T0fs8zRDE/YCIxBHBc4m27LoHmost3LY8FomaHIjE8pnqSY?=
 =?iso-8859-1?Q?+VRPDMYcy21XPi1TilbCwbnvuNI42GUI/+7wwQeByyxtHDUjkxTCPyxOh3?=
 =?iso-8859-1?Q?+G1vt0FrmzuVa3xcfAJA+fQ5TEOrPPg9jSgwjeX0TDlYts1b5dAsN9fmOM?=
 =?iso-8859-1?Q?VNh0bhytHFtiNCIf07GHij0AwiFFpF6xYvNdCNXlqU93YHu6Ei4jdlpgUS?=
 =?iso-8859-1?Q?o3qeCvxS3t3RDKLOQsN8CCf+tmE/O0UWSJAfL+anvKfnZHjNDNUfYmMfsd?=
 =?iso-8859-1?Q?yRJER6UmEQN3GVJXk+BVsQDVVa9UlZPiuE4/viczva+tJRaxy7lkJ27Pbm?=
 =?iso-8859-1?Q?XePzKsvoV5JjFBA5hwQJccBMBt/R6akTKibMYZLhjZOtwMUYXfsZdfkq/P?=
 =?iso-8859-1?Q?toaLrHWkB1CH8bSPjIaMi9cO3JlkHZF5N9UCh81ysWVF3WwVaP5QkI9V7U?=
 =?iso-8859-1?Q?YdsQV7WAIpCEZgFvtBKL/e49pYQaMRcKfF9mvF9B0aWM/Nn0vDtqduJHMb?=
 =?iso-8859-1?Q?HQID8fcqa9iM+aVVSz2AEr28EKY6fvQTGdkJEfkYhEX2CR8hBhTvsZBMEz?=
 =?iso-8859-1?Q?R9thzxvnTbnm5CRRLZW0jc/zN87ed0p2I1UT9oWzrY83dbJqccrYSF/qa7?=
 =?iso-8859-1?Q?HA86RLcKbtg+JJeIpcuDJTLHLdWt0Fj721LnZgz/Jm1I/fZiYr20DdiKH8?=
 =?iso-8859-1?Q?VdMnwS6AzCqA+dL1cTa4Ja0fR3SWua8U4QTify4YpTl6OWEbsYjxkMzYpB?=
 =?iso-8859-1?Q?ymCbrMQdUmgb/1lZ1TaYPjZAxYaW50edyOfB1QfpUuRnnNy5Ll1/AnQDgF?=
 =?iso-8859-1?Q?kqL5KZO8msssZbJ4Oe/V6L6h7Lbt2ypbQIkuqQDHR7Yed7doTioAJ2IUOb?=
 =?iso-8859-1?Q?JSXH/oj/gdVoUz+Hp2pO8kR2+TD0ys19YKhDhnP55MFcoyAPex7B5DZQKw?=
 =?iso-8859-1?Q?1Y7pY2JP9sI0KVaucNqD46RFv4kls57W+ZOEomhQr07SSHAUN3pVIm0XBg?=
 =?iso-8859-1?Q?/47yr5rkrsXRjQyhLGSUtqUs1oaRBk+scb3NQIGsIpwveUO5HUiM+kDc0H?=
 =?iso-8859-1?Q?b2M52Rsiy8fOckCZeWrCUYZimmk5TF27OnAt1/C4fDQnjqBYvhdhP8MYOt?=
 =?iso-8859-1?Q?H2z6D4aq0zxD6f605LNuGQ0DkpLaam21m3oxCz8j4Os/iSHV50QRvXYiVp?=
 =?iso-8859-1?Q?9DG9ptLkexnVe+1s8MUDEVStt7Ga3HtrCPNTLPo7ozG5dsZYb3kyWpWsWN?=
 =?iso-8859-1?Q?4QGHrSfYfNoP2ML61rVsoUzsoixPo7Zi/Z6Z4R8w5qXoRanWQB2n5kaUYE?=
 =?iso-8859-1?Q?CSLH3cA2pSNOb15k2JQ=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f28006e-07a4-4d70-19bb-08dce220af4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2024 13:55:18.6976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nF4gbn9Z5EuWc9pZQ0eBT9h6KFmvMzxKv/bVKROxlvEGX0bdDfpLpOdMSo+YiZ/MvfEll2pfEwugOPyHw3g6fZmbSWWpJ2Pi0W0vqcqkonLj0Oky7aK5ZL96GFMGbWKr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, September 20, 2024 5:10 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: Re: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaroun=
d
> with VRR
>=20
> On Mon, Sep 16, 2024 at 01:24:06PM +0530, Animesh Manna wrote:
> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > W2 are 0. So Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > register to at least a value of 1.
> > The same is applicable for PSR1/PSR2 as well.
> >
> > HSD: 14015406119
> >
> > v1: Initial version.
> > v2: Update timings stored in adjusted_mode struct. [Ville]
> > v3: Add WA in compute_config(). [Ville]
> > v4:
> > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > v5: Move to crtc_compute_config(). [Ville]
> > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > v7:
> > - Corrected code-comment. [Mitul]
> > - dev_priv local variable removed. [Jani]
> > v8: Introduce late_compute_config() which will take care late
> > vblank-delay adjustment. [Ville]
> > v9: Implementation simplified and split into multiple patches.
> > v10:
> > - Split vrr changes and use struct intel_display in DISPLAY_VER().
> > [Ankit]
> > - Use for_each_new_intel_connector_in_state(). [Jani]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 33
> > +++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_display.h |
> > 2 ++
> >  2 files changed, 34 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 111e61eceafc..a0bd29b0d29a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2529,7 +2529,18 @@ static int intel_crtc_compute_config(struct
> > intel_atomic_state *state,  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	int ret;
> > +	struct intel_connector *connector;
> > +	struct intel_digital_connector_state *conn_state;
> > +	int ret, i;
> > +
> > +	for_each_new_intel_connector_in_state(state, connector, conn_state,
> i) {
> > +		struct intel_encoder *encoder =3D connector->encoder;
> > +
> > +		if (conn_state->base.crtc !=3D &crtc->base)
> > +			continue;
> > +
> > +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> > +	}
>=20
> Why is this loop here?
>=20
> >
> >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> >  	if (ret)
> > @@ -3940,6 +3951,26 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
> >  	return true;
> >  }
> >
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_stat=
e,
> > +				    struct intel_encoder *encoder) {
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	/*
> > +	 * wa_14015401596 for display versions 13, 14.
> > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled wi=
th
> VRR.
> > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > +	 * by 1 if both are equal.
> > +	 */
> > +	if (crtc_state->vrr.enable &&
>=20
> Another case of the do not use.
>=20
> > crtc_state->has_psr &&
>=20
> Does that cover panel replay as well?
>=20
> Can this change dynamically during fastsets? If yes, then you can't use i=
t for this,
> again due to fastset VRR requirements.
>=20
>=20
> Did you actually test this code? AFAIK the fastset checks should catch th=
is and
> refuse to toggle VRR with a fastset. If that's not the case then we have =
even
> bigger problems somewhere...

Hello Ville,

Agreed, I have addressed suggested changes and validated on edp1.5 panel. K=
ept panel replay on and enabled/disabled
VRR with fastest.

https://patchwork.freedesktop.org/series/138232/#rev4

Please let me know if any test case we can try to validate.

>=20
> > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode->crtc_vdisp=
lay
> &&
> > +	    IS_DISPLAY_VER(display, 13, 14))
> > +		adjusted_mode->crtc_vblank_start +=3D 1; }
> > +
> >  int intel_dotclock_calculate(int link_freq,
> >  			     const struct intel_link_m_n *m_n)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 7ca26e5cb20e..db7bb5cac2f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -429,6 +429,8 @@ bool intel_crtc_is_joiner_primary(const struct
> > intel_crtc_state *crtc_state);
> >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
> > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > intel_crtc_state *crtc_state);  bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state);
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_stat=
e,
> > +				    struct intel_encoder *encoder);
> >  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> >  			       const struct intel_crtc_state *pipe_config,
> >  			       bool fastset);
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
