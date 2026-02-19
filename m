Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJvfH991l2lpywIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 21:43:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D9E162627
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 21:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EC410E748;
	Thu, 19 Feb 2026 20:43:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dm2Q1GuK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F39C10E748
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Feb 2026 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771533787; x=1803069787;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ybd+F8wvBlrxCG7/rL4OYpZ9Of1ZVj9iY3H5rlRjTes=;
 b=dm2Q1GuKPfiLwlwhUMQXycrbZ25lvvTE/gN1A8+3DkJGHs+OSkkZsicu
 9h3Bs8XgizNNPN6415e7pV+rHD4YE0ybzhDRCHKQ0RpxahzGB5ioumEja
 0a+cd0R6pV77kM8BamXHvi32aW5e8MxN3Ju+ZWlo0Sau+m2x5quKhzvoN
 qsd1t7qbV6Uo5/h3kioGwDMnfT1oz4mres/IDP+EAlodu8HF5+OMEYYsa
 BW2pDKKDgVHlvodGg+5j4PvYIcbzkfl+XIlzhvonFKTa8AjUMWJS3CMMv
 bj/G07kgs/UZTmDDYBAXx1IRf1+1DGMe4hzl26AEn8T33lTZamchWQej5 w==;
X-CSE-ConnectionGUID: shL4t+RIS5W6pJfEd42vSg==
X-CSE-MsgGUID: QRQHsPxwSTKIsyFXPpKV+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="83348310"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="83348310"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 12:43:07 -0800
X-CSE-ConnectionGUID: N+LIJ2wKTwmb13PVw47o+A==
X-CSE-MsgGUID: +ZzoAyp+RvaHvftecou4qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="237626417"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 12:43:07 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 12:43:07 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 12:43:07 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 12:43:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XwdVFIPO1z+XVLYnIGw+tGVOJtyBzhYMimJIsd/PQIusuZZwc0nL64W7jy6kvosJfEHOl6BLFxtWj/ZUSpEWO5/Gi7CK+/rDAPtVtwVnZBUIqF4wvNZ6mD2YwxSaoXoiK9c+Ry9hwL4d293aDpgk/f/6A1cm37j3x9GtvqIuE1+FaleXh3wtVJ1sBSuKYNyl08RtNcnRh+BMoyfTqIa2Pf+qE2ozL69wzwVWV7gN/L1zcWaS5yOrDYEDo6rBhRBwfYZZF4kQFWD9OO9MYZQkoD0pj3fbO7eb8OLLmh69mG4bPiF9eQaHVS0u75oHBYs1m7V9IArzXR4oYnuTaTls9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uI06hlUnPQsKLtrqAZvx4Mj/+7AkUMT6GIsRI3j0vtE=;
 b=MS3JiV+fF9P/gZ1jjmnzl4XiAc+0QvVojcwos6UPbKlOR/yjzm3RV3BIyQcZKeEvRhFnjWT7Ru1nXn+BXTBZeydl3a4Ow9XPyYyxnAY06uN0GZVJjtw5j6n7zQ+1EiP7ZZxhIibW4RHz7lG57yyPj1BllccEvo9RkLOLLH42lnlkbE5VEmqqvUFSzGsXiK72sOPpOPMTtmSBoxTAuf4crN5xjV4NMh9hDUolUPrwKaCiFkgJeqerpG/ppHqT1sDc3Qy6X+q3dYtuLZvzPjOxRGEWMAL1Fswqmpy3WmfjCncvPqlX6dNLCBuZv1OIQ1o6cIecMwRhkKfIA7bnXxPAIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ2PR11MB8371.namprd11.prod.outlook.com (2603:10b6:a03:543::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 20:43:04 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9632.015; Thu, 19 Feb 2026
 20:43:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Zhenyu Wang <zhenyuw.linux@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Karas, Krzysztof"
 <krzysztof.karas@intel.com>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Thread-Topic: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Thread-Index: AQHcnFehMFR2UxhTGEaIGycRKMRyqLWAciUAgABJxSCACcu6EA==
Date: Thu, 19 Feb 2026 20:43:03 +0000
Message-ID: <CH0PR11MB5444B87752A4775159D76F29E56BA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260212194131.64708-2-jonathan.cavitt@intel.com>
 <87o6lsylfd.fsf@dell-wzy>
 <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ2PR11MB8371:EE_
x-ms-office365-filtering-correlation-id: e6f64f7a-f932-404c-672d-08de6ff77ab1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0mzBWsUfVDhIO4BhNRBqCLTQzqbTFXr5OLjnpRtSPlBMuid00SvG8Zjip3HX?=
 =?us-ascii?Q?IKr7hZWc7/HDekSzFvMG3tD5PMl2nNIHn4yEUMVNfMQ4YM/Wq70PiBnVjX+W?=
 =?us-ascii?Q?6UxpglqdzO7YZiEMmngSTyQ6ZO4a958vdi2hEmGh7CSaE5CiAa7C4qvuSw6F?=
 =?us-ascii?Q?078oFFJF3d4TCmdbK+xKC0GiUvORQYw4tYCoytVvm+22QqrgEsE510FU0eG/?=
 =?us-ascii?Q?sFxzlb3A891MQ2urbjiosE6y3gxo7OW24hn9YQTUQyCV+zfWjlHKRRyoIY55?=
 =?us-ascii?Q?LlNJP7eMuWhCK3d/cUPvfg8vm91UMz4Dyv0l2Vn8SPDESX7S+rzojt3ikC3s?=
 =?us-ascii?Q?6nfoDWww3Me+b9dxAHXOX0TrafZYMrzrQ/7qiWjveaJznn3830xwX390Uubb?=
 =?us-ascii?Q?7bqYfNHiqyfgrjIDKPyeOJjcz66eSQSykH2waLY32frM1A5gTagJ+CKx9SeA?=
 =?us-ascii?Q?MC18MdGPI3Vpi7UH09yeXoPVBNMi/tYuNZS5eNeeN7MoJ3tLStiLRbvGSFBF?=
 =?us-ascii?Q?tPYK3arxqfrp7ZJQHYIcsZLbuTMtJ3gg4DI/B6WEk2ZX2QPNjjAvZywNuxZO?=
 =?us-ascii?Q?CFl+eGk06ih5px9zRSKd11bU87855+SMklbxmRF4f4eo6ZHVopSi6lH0k3jT?=
 =?us-ascii?Q?SrnUEYTsQuo9IBsEut51AHZ3aKRAdCsBODvhnqQMg11spzRpWF+zhWzLUewl?=
 =?us-ascii?Q?SFMuQmdA4AnNemg3EtNrqTQ/udK3Y8CCJ/rxdXz/BRQ9tlimvNMAsoyHomhO?=
 =?us-ascii?Q?oVVipm2ruro8aTxKsyvcOlFWSncVEHCmrcSaOl3+gOzMneRQ3t2vqYH+JjKj?=
 =?us-ascii?Q?EebTankmB4uZc/D7lRj5dypGARS+8LOhqqud8WPjp28vT7PsXhYDNhhV26eK?=
 =?us-ascii?Q?cgoeEo559fV6dpdXQq2uitNAHtb4dvC+DJWSSnPjJRPj63QTu2YDeDGQji87?=
 =?us-ascii?Q?Od5qSHUQLZv47X/xaUuRR1CuUJxkU3kbFlPckHtA3wo+pl+P5F3KF8VsQA9M?=
 =?us-ascii?Q?YnJZ0VZyoT6HiK30b193WYxWfz2eAh/ty8PivROyASjOi0rrXQGCUpK8JRl/?=
 =?us-ascii?Q?xUbIgJ5DCq5jN8Niqado5J+qG+0pjmcf1ILC/tsDirKpTqNRY4XBdyG/tVkj?=
 =?us-ascii?Q?/WDYdSwMYIkxtW6RoFhpFn9ZmZlChg43zqdzX5Kf4NYek19R+qbrm+L9oJAR?=
 =?us-ascii?Q?tIfU1strf+8wTXY54RldnslUgJbZXWrl0E42MuJyhySVXGn4V9dW+cre3qym?=
 =?us-ascii?Q?SioJi4hJhrtLjHys9EL1hNnuek1rK6GHjRMnizGwUkP6UTaH6oY3t2BVSY8P?=
 =?us-ascii?Q?CXv5kf3/nHACBBfSGjcFGJNsTPyPObbFrq8rF12VAquH8WihfTesR976q5G+?=
 =?us-ascii?Q?/b+J3LhEWFOcuIPOfkZ51I/4l1P9QXZiLfGJ2fiOmaGL8Rft/Np9lr3gHckg?=
 =?us-ascii?Q?8jrgONwmTAz4c6Bf9HYbBVjxfWSECAhVCzW8OZ0et4oiFvbLh+mRS7djSpAa?=
 =?us-ascii?Q?bL/BXKfdLb3cLOg+N4OP+UelHeue4IULcQV1A1ZNYcscIagFkf3VASbLKYK9?=
 =?us-ascii?Q?0AYKyqafkpcR5EdItcHfxE2YsjdfYO3ePFQ2cEqXk1l+1Q7r5iBpMH/j2F06?=
 =?us-ascii?Q?8/E25IguVUd2esDttEWIfjQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rpdu3XBQAjwdVh4mpAGNdX/NtEW8hoCS5nBTPpfsZT9x7pJUYX1c0TdhYl+6?=
 =?us-ascii?Q?zkdnPba6qL3VN+h9VSDL8ij6pNKcbFmpqGIMHHYbMGTYl6FkmZtrphzn6+zQ?=
 =?us-ascii?Q?2fL2WOcqUiyYUheZ0ibH//rsqJHhErCbwAswjunNx20CkR7Ja19uzuAFT8BI?=
 =?us-ascii?Q?CuFhBYsp2QuS1e2chvhiymICZVtMNo8tap7d3ZT+urSTpPYmEiYHldbIqZ9X?=
 =?us-ascii?Q?2WkmHhJq8Sy3j0nhfakejR9XzK8Dd3VgEZoPl2ipjMhd1avHGE54EYuZPTg2?=
 =?us-ascii?Q?IYNHU0qRHTb380Jdjviv8ohkv+RU26JFvkjcjrVqvygKhRz2whRjYdpNjbHR?=
 =?us-ascii?Q?FYNHVoDSIfbelhYmKN/taeAp8HnhgrxhwwZ/5pRTOvwM3zTrlS3Vizo+faz6?=
 =?us-ascii?Q?ml1+UXV4+5h7eslGLA+6nU9fovm+xS8s4/2QITe/fs85NiUjYaeohvi9j1fF?=
 =?us-ascii?Q?BQzZaMqbIQDtKvMfAbZq/lSwTo6LMnBbunOcEpEeK9pBTfndvWn6hAjUPkFI?=
 =?us-ascii?Q?TR1HEUZu0yzwwwQIJ47RVLILjRND12XdtUSwqBfYsxOS0bQGt7OOA0JpWVEf?=
 =?us-ascii?Q?93Dvd3dYq9KDHUukZBUtsB1WX6s8/Wn/B3eQ7N18SOES4RbdSKP4RWiACNwW?=
 =?us-ascii?Q?3hZ6vkImVmNmKGz7ii4Mbt9NWhneE6nNcDsRJ/01ay2/yVrya9Xe/hMCwkRq?=
 =?us-ascii?Q?R6s6ozzdbtZOV5z5Wrap4doB7GGdMGcpfi+nPynWm2qd2WlOo6w/Sqlmeyh+?=
 =?us-ascii?Q?Jm7zn+iDjgk/L3S/0w2LF9F8iGAB0UVpv7T9IwtMwpTJAonqxNuExisMfvC2?=
 =?us-ascii?Q?jaq+VF86Ze93u5TpltBxL93tkJaxDJqjk93j0Fd33EIliJO71d4+k+u/DiBj?=
 =?us-ascii?Q?9P2hb4BL2d5Hd8OlWZlwaKP2QDDlGH260EDdhZt8y0Nsjd3YtKAgmnKxiUfY?=
 =?us-ascii?Q?G2QWE0EpAMJzpdv+IVGdCjH2wmSufi44yB+Uiw3KA+uWrB8XaYEtS4bUt4vI?=
 =?us-ascii?Q?TpVKoNnfvpxJk8ZOh3xTvMnD3vyxCmesQDjb03gm19lVbdeZCK/E1nUmTpE/?=
 =?us-ascii?Q?3Cq958V7DpYS+SsGs5ukx5WCLaZ92w/So8pSoZPOQAW7l8ZsVvSymAVpdYr5?=
 =?us-ascii?Q?xNowutNaCXyRjXU3mjF3lAIjZnEQRwe6O/ob7zlx72byqHdPNckXC1n0L51Y?=
 =?us-ascii?Q?S82s3QuLdtJuPIj/XN3oUE+E6zVqjKtdqGelPIq2cx4fuOaX+/u1nzFvKOYa?=
 =?us-ascii?Q?vvlSDAKT+fWSY1qFla6QPbrIebysfUqLFfGYfbdufh5JmkHFQj/cvzbDHAae?=
 =?us-ascii?Q?JBkKXgAV44/hNkcsJHh3qmp0D3m2Jnw6pQF3R/BqXkOZOU8zrqPR3Gl2HmhV?=
 =?us-ascii?Q?bRF5PGQnKavEC+sGnlntDPz8jBXARO/8a/okdcSQyZVAEuP0B5WUvzRggfck?=
 =?us-ascii?Q?AF7db/pIbYic4FIwHWoYZXfmfJXWrH4UYk4boqjuSnp6EZ138Wf7NeWUG6ZS?=
 =?us-ascii?Q?rUuija/VpD8zCjt4B+6C+bqrx02CHcrbsg+3TGjxZMdbzFkw5AFjBTuxLcJV?=
 =?us-ascii?Q?/4eqfFJcDfxrZxoPi9hnujOhU7KcecLfYaXQ9Jl+n/2pDrLsRM4HXi7ae93g?=
 =?us-ascii?Q?Q+fBnE/+cpn4PBWia16xCe6WB90NYqwr3jqO93tFNIJ1rIUZwr0tgnqouUUO?=
 =?us-ascii?Q?Kb/L4BhaoTBvuR0BMInOpneZ1HaPI3lr3znDa5csvujieFw+O8ednQ2uF1Ql?=
 =?us-ascii?Q?XTFJY94gMOnjrVTy1GOeW0m4+wxt4BP4W8xIU+FQVwJiOeNaSI409iOjAqDy?=
x-ms-exchange-antispam-messagedata-1: EQLiEJGLD8PJPg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f64f7a-f932-404c-672d-08de6ff77ab1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 20:43:03.8888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FOM6aWO4zwbyrHAHVtI6EUte8ljb6eG0xaVJ3ouPckYh5LpKTsp/IOt6LQas7oszasY3Nm3lmB7WrsF61g8K7fCcmMH7P64xd66XFngMvi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8371
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:zhenyuw.linux@gmail.com,m:krzysztof.karas@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:zhenyuwlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org,intel.com];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B8D9E162627
X-Rspamd-Action: no action

Pinging Krzystof Karas for a second opinion.
-Jonathan Cavitt

-----Original Message-----
From: Cavitt, Jonathan=20
Sent: Friday, February 13, 2026 8:28 AM
To: 'Zhenyu Wang' <zhenyuw.linux@gmail.com>; intel-gfx@lists.freedesktop.or=
g
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
>=20
> -----Original Message-----
> From: Zhenyu Wang <zhenyuw.linux@gmail.com>=20
> Sent: Friday, February 13, 2026 2:42 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedes=
ktop.org
> Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel=
.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
> >=20
> > Jonathan Cavitt <jonathan.cavitt@intel.com> writes:
> >=20
> > > Static analysis issue:
> > >
> > > The u64 array workload->shadow_mm->ppgtt_mm.shadow_pdps is cast to a
> > > void pointer and passed as a u32 array to set_context_pdp_root_pointe=
r
> > > as a part of update_shadow_pdps.  This isn't wrong, per se, but we
> > > should properly cast it to an appropriately-sized u32 array before
> > > submission.
> > >
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gvt/scheduler.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i=
915/gvt/scheduler.c
> > > index 15fdd514ca83..1a95c9f76faa 100644
> > > --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> > > +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> > > @@ -72,6 +72,7 @@ static void update_shadow_pdps(struct intel_vgpu_wo=
rkload *workload)
> > >  {
> > >  	struct execlist_ring_context *shadow_ring_context;
> > >  	struct intel_context *ctx =3D workload->req->context;
> > > +	u32 pdp[8];
> > > =20
> > >  	if (WARN_ON(!workload->shadow_mm))
> > >  		return;
> > > @@ -79,9 +80,10 @@ static void update_shadow_pdps(struct intel_vgpu_w=
orkload *workload)
> > >  	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
> > >  		return;
> > > =20
> > > +	memcpy(pdp, workload->shadow_mm->ppgtt_mm.shadow_pdps,
> > > +	       sizeof(u64) * ARRAY_SIZE(workload->shadow_mm->ppgtt_mm.shado=
w_pdps));
> > >  	shadow_ring_context =3D (struct execlist_ring_context *)ctx->lrc_re=
g_state;
> > > -	set_context_pdp_root_pointer(shadow_ring_context,
> > > -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
> > > +	set_context_pdp_root_pointer(shadow_ring_context, pdp);
> > >  }
> > > =20
> >=20
> > I think we'd better just cast the type instead of extra copy.
>=20
> I'm not certain that would resolve the static analysis issue.
>=20
> To specify, the static analyzer is complaining that we're taking a pointe=
r to an object
> of type 'unsigned long long' and dereferencing it as an object of type 'u=
nsigned int'.
> The analyzer is getting uppity about this causing unexpected results depe=
nding on
> machine endianness (which... it won't, but the static analyzer doesn't kn=
ow that),
> so I suspect the only way to get it to calm down is to do a direct memory=
 copy, as
> seen here.  Casting the type would just result in the same static analysi=
s issue.
>=20
> This is the part of the email that I'd throw around terms like "strict al=
iasing" and
> "type punning" if I thought they were relevant.  They probably aren't, th=
ough.
>=20
> -Jonathan Cavitt
>=20
> >=20
>=20
