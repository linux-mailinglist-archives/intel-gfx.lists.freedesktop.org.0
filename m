Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPqkM3bJl2kL8gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 03:39:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D63164491
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 03:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEE310E76B;
	Fri, 20 Feb 2026 02:39:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RIkuChwH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9347610E6D9;
 Fri, 20 Feb 2026 02:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771555187; x=1803091187;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U/84Bx5YIcL+3WvcOB16BMZ1VKLZ1DADpF8aUz60G+s=;
 b=RIkuChwHuEIJbLlKlF+ExwG+r9HVKzJyC2YofpWqvkqwO95BQ9MHqeVN
 YZtA5RfK79yNaZIVF234WF0jY3f16xO9w3nm4XcMDlKfis3BJKcap2G7D
 EH2Yf7mhO0qSV6UG5maOLn80PNwIx/Qi4QONwg2uDvFil7WqC1phmR5xs
 9X/HHG/RrgyfqQG2zjjKxlUyV0k3vpzZSefoK9pbgk64xq+UUsm+fFyZA
 pcIjIm6hJ8e0jXOWezLl3GrgHEAD5UlwCKf5G2c5h8zl0wKr/QeP0hA0k
 8cxki0Goe0ZllNymXDctRlkz9WYBKuBqNUvI/3aau31dgm5Ez84P8qm10 A==;
X-CSE-ConnectionGUID: TjUwj2CFSIWxuzgBrAhA7w==
X-CSE-MsgGUID: Yte5RnFhS+OKydlwIpwG3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72752053"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72752053"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 18:39:46 -0800
X-CSE-ConnectionGUID: DFd1YHnXSHGn4O+HUp6G2g==
X-CSE-MsgGUID: +a3Hk0cHQ+KkjTkMFKcwzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="219734269"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 18:39:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 18:39:45 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 18:39:45 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 18:39:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rnx811Z07JSVneG7OR4hgMfa8XmNGtBO8vg+SrZkl6LcvdGX8X5XxFNzs2+0/L4q+I8A1+sJ4ouJW2jV7x8zU7QdQ4qTMxXBqJ8l8Dwc14utQya24hTADHFekbLwHb78AXoVYNFR/pHDVI4nVND0y09LuUe/6nZVZru4r1PNExtEcgjz9h0VAQ+3EYMjky8dMfXdyw8tjqQLBI17Vfkk4wEdtpTKbUKcc+6AGUhiu/iUG4OY6RNGdG4TGoOlyd9jg0ogfbUAd4KLSVDBtHR5RZ5I+4JLL7/4vN0cE0kVPxEY8NAuNT9ms9t9azA6fpEiBHg2t182+yqJrxDFoaAmFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MG90MbMP7sj1NcdkmSc9USRSmZu2+4mosyHNd5o7KHo=;
 b=eVDPH+JjCr51Goy1WW6Wijiz15MXunTGbbWUMYKy/Ff6sQemVJrX2Sey13fDuVzekXWIcTDIbiNpT3NrTSt4IMwUjPssxg5wfmWOyvuc5sTwh12dnoEfD0okDtM+QdA1zePGz251566m61+zOvMZpzl3fAQG9ikT+xJwI98Xv8/FkOiwjoyAir4SX/hwN55vm5mdxaMgoUJoRISfvGYU3iRX+DiqNVEYKHLgAGufnnlbdlW7ld2To9gWCmGGsOfzZfLc1dwUAJLEc9+y2nAXCJLKQpHisCiRa7GwsEpmyZzVZO5yvAoTo9WkuycTsh4QFPa+2+XtbXGzFqys2+fNrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7419.namprd11.prod.outlook.com
 (2603:10b6:806:34d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Fri, 20 Feb
 2026 02:39:42 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 20 Feb 2026
 02:39:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clock on
 DDI for xe3plpd platform
Thread-Topic: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clock
 on DDI for xe3plpd platform
Thread-Index: AQHcnOTZbGeoS8avmEef6ff7Hl5B0bWJdUfwgAF1FEA=
Date: Fri, 20 Feb 2026 02:39:42 +0000
Message-ID: <DM3PPF208195D8D7DDD5B127C2429FCAAA4E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-15-mika.kahola@intel.com>
 <DM3PPF208195D8D8A331BA39D677E3327C8E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D8A331BA39D677E3327C8E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7419:EE_
x-ms-office365-filtering-correlation-id: dc446671-126e-4f42-2b8d-08de70294d1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?8WhWf/begtEVBBI8xXwDHmfYouQ6tV75xHilTQv1rHptiSHAt7RMLOw+q5iK?=
 =?us-ascii?Q?JnQmfaCjU/wYHQL70Gh0l1CK3vbuSNcC9li4Xyy+KC/zrGUdsjfkZu+3uoi9?=
 =?us-ascii?Q?T56Pd9hMzE5q5xSN6m9k2E/L44tpxflfgYq0Jhjyyz3CZDbe8XNhNjsAXZuZ?=
 =?us-ascii?Q?i/o1+JFNBRPdsg5brHUk0TOf3x/TjWk8wfUBXxe10fE9EIyQlIKlgo3l/bLP?=
 =?us-ascii?Q?SbPorVUjT9AXHJ+ZdvK6GzhB7kGJqnJVsHItH7OxTlbbv1p4LvOe+rTUr3bx?=
 =?us-ascii?Q?fguSwS/gO0nagVOh2aJTE1nF9rviUX6ogTlJndg9dNSeau2bc4gzDk+zCRX7?=
 =?us-ascii?Q?9fNBV8fqlKWH43a9uxHTaMZLvcrQzKSNYgizJY7oqqa0t6HeHqo9C26/y7gs?=
 =?us-ascii?Q?itXbVPlV/PyMNZyCVLumaqCuxTL9y5hxb/SoCWYrNb0zCh+m8rizR9ZbrQAk?=
 =?us-ascii?Q?qz9FRzMrybg4v59cTgPIlqcoj5wcuoQNfCA1ijRHdQ19uffrKOAJdylVcVUE?=
 =?us-ascii?Q?DqDOlgWqPdshU4yzFFGOYextLT0wFn9E+PxU5NiLXLFqm9n02/by02p39eB1?=
 =?us-ascii?Q?4wBRCzJ2x00njUlIz84S3PlQAS1ykLNECremOhPL2VGKkz4w2vPiu338JMjB?=
 =?us-ascii?Q?LQ0PQ+uwKLORxG6Aijpp19WSVsV1MdD27q7xyPgrHV0v/uIqO7AoMPQfxuhS?=
 =?us-ascii?Q?iPKM+L53sDWE1X2EHcaYcz94aMEpP08mb7jYPkEAdshCo1mKzCbIoOTRiFF3?=
 =?us-ascii?Q?infa5Bu3KsulIKMFZcd6ov3m91BINSnRgh1MMyaMjxgKtRDQUACL4sKGrTPP?=
 =?us-ascii?Q?iQNyE9bjQiOw4SMJ4sdAv/lrA9Fy+2BPdR1Tlswnynt7Jl0ArBZY0mYkrRMV?=
 =?us-ascii?Q?cMoVT8khdXs9X36G9tcfidVYK1Z0bBOHxWWBnAamjzyKvtFR+nC5qoqA79Bl?=
 =?us-ascii?Q?T38yXmv7SkXeDlXRaTdaWD1RRAL4AerLvacS3uD47bt5YlgE7VT02XVSDW8u?=
 =?us-ascii?Q?JoQR5ozlOII91FeYzfiC/ruzJzpyUNZr8NywWaLJl122E/VDoszSb999WNdj?=
 =?us-ascii?Q?KFQH0DtvrFcTqKh1CD5H2TZN4VS9LbSBPpNjgW2NnyhqZQSK4MYx6bjeJKg7?=
 =?us-ascii?Q?a4awkYHYEoXl2H8D8sEOEqsXZeBLc3ECJKImxfdFj2LGpT3QS196jsPRQKiq?=
 =?us-ascii?Q?KODGxF2JkdMcpUblG0R48OVodOIQAgVGkkyI01zNJGpVApXsafmxcx4CoXmo?=
 =?us-ascii?Q?a1XNVp7xBOoiOOvcgZMLqW/MPT9AEU8dZ9rgHiq7VSc04MaFH7CVJDvIlkxa?=
 =?us-ascii?Q?7s1OuGBhhvTNlEqcEeJwJPVdVHPtkMeZ1jLAUegOvQji5rwPklPPCiWNVoZM?=
 =?us-ascii?Q?1HP8M3HoKKcHx6ALfINPW3IefdO7Hu2Ng1KfOw7jzaBv+KDNJxjH9id/JLqX?=
 =?us-ascii?Q?P8F9Gh3/cumGZkiljLfUl1S63bWF+HHAENuCw7Dbz/rbijMM724UMhkkKZqC?=
 =?us-ascii?Q?6f9FuS3jWdLxom9G36O+DA+dJPNuxoew1raRXyw35CcqT7hFYgHj5qT9JTCi?=
 =?us-ascii?Q?/BAHt+HAUa7YpXGgO2/3S4abe+EfXJfDy1G6E5faBmkZ5hDaKVFCOYa3xzji?=
 =?us-ascii?Q?7QwnLMdlah8zIDYB59d+P8M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tEAjXOiYOyBgGAFci9N9GOwg3WU1MXOIfUBNKxsfNB0yX+SZstv/uC4CT8D/?=
 =?us-ascii?Q?BW+0ITBd1fUtXo38OhWMUI9aY1DcNVFGsRpumFPC9s444JtumGoMaxMQg3uF?=
 =?us-ascii?Q?9ra4tuv7VndF+9qcSGmQyJXS5kLU+vqCGmD59To7iEbPHOXVlz0y/qDQO0mv?=
 =?us-ascii?Q?rxFYCdqAKxR1oL0J1ODXGwpYbJWafeiVVJ3oE2aTJyaJZ4ynDWgBu7wGQXgT?=
 =?us-ascii?Q?Y5rzMN6ThMXFpetZkYSdgm+2JzHWNfUWd1sUFTXHK5cwiYlJ30xJ0aC1UZyd?=
 =?us-ascii?Q?sLiHv9iMrRDDV4Dr20aYn5iWMXTvE/LROL+EJe5xEve2FFbQ8RFu+S4Y6rWp?=
 =?us-ascii?Q?Y6BYczatjxC1DyXJcOUS8jChjP2XsHZPJ/TQHQnRYNSDvhe4qnoTMXouqCut?=
 =?us-ascii?Q?5rlOuptCGEYE2hQw8lZ+rIw4gKiA21I5RH2kAW0wq1Dis1z1xp4Q03a+cIrj?=
 =?us-ascii?Q?RNFcajrE9hlwMp24ksdDqE+zsKZfMgWbArbBO7FVKBVJy2Utls8qlqcEu4LR?=
 =?us-ascii?Q?CnTv/ww8xuQpm7ilwRcWPtIV7xwW+TD8ETk6MD2zUNrGY485accWvwH5GOK8?=
 =?us-ascii?Q?T11acs8W7rHdK3vNRD8yv5uynk600hlsffLdN9mfaREaUL48zIdx9Wg0MSz3?=
 =?us-ascii?Q?hBnhng2ejK8PgBFN9801eUeSVx5BcjAQLJ7Nwa8o9DMUVJjZQO7ciOsyakK7?=
 =?us-ascii?Q?nDJkgcERkk8sKlmiBBTY0eIY0i6Vb8rgQT+/FpFpF+74srVdaUwGJD+/64v8?=
 =?us-ascii?Q?pEQ38A9GlFHLDMSfVN3teHaGB3SAPnXaNLkncdgYptjS+FUaFRR14bP9w16Q?=
 =?us-ascii?Q?9FsYZtmAsP83uax5MMmm+RX1RtIFBDaEWyBJVTgqKJbn9J7uqlZOrk9EgRdk?=
 =?us-ascii?Q?9fxtDa38BEwXO+jpji//7S9M8l3hH93p88NU05SlwGMaqt27VoRn/ht9dCrA?=
 =?us-ascii?Q?70UalNzzPDkMQo73Gi5aMTo6Gr6MPKMAsxTrhP8SgTUvV1iYZCTNdbS6K5JD?=
 =?us-ascii?Q?fEJtusQMssY5pm9fiUZMLtnfARhzxBJBJdFgvBtbldMjzozYm3VKGI0txBkw?=
 =?us-ascii?Q?Z0Dm10mzcTZoEYj8Tg41qqQn6ltEiJ8uYE2MvqaTl8YwZ0vKlwaFcMje2qPl?=
 =?us-ascii?Q?YrrjiZtB0g8jXRja2Vu9Wfy5HDiA404kOyxNzO7mY9q++tvYmEDinP7Ww+Hu?=
 =?us-ascii?Q?tukR13VKNtPVJwlX3j8m1kAeWqsLGavgw5LY9ShJD674XcdZ1+OpxZ0oBPTn?=
 =?us-ascii?Q?WXZiRm2+DAqzQnXvLIIlH6BeIXfrUljoXhKKFaxe3M5347BM1iPiqS5b87wx?=
 =?us-ascii?Q?84nJmWpFCLzysHVZDAaCI6REnksx4XS8b6wvZku+QPZw3QhC7vQ87akFJOwW?=
 =?us-ascii?Q?qF02/o94W8NRr1LGPQMxj1GFx83yZHMc0wP/00YQ5vGNLXWQWefXaudjaV4s?=
 =?us-ascii?Q?VQHiR4+F2n+Ws0IvXd0CwFOJNOadBbTuDDpna/jEfMFA6GD0khjUwVnJQkDQ?=
 =?us-ascii?Q?eGIDZfeD6QXSaXmaP1M4GfWCrJ4HoKQZeok1pzzAW6X7YuHBTyygXmAt0CCG?=
 =?us-ascii?Q?44wB19Jhfr7INluTThBGrsb5iVdV2TZlvf3OexFxQzYzBUQqCvg7UUVHzIfm?=
 =?us-ascii?Q?2NGug7ayY7T7vSpttQ8UDZVg1AAGei8T1rAISYPXmHUexsPrwgwEPPr3r2Co?=
 =?us-ascii?Q?v99eq5qLVTzqS5PSlg9ChO2lKynileqqvIn7r2hs2L8F8TwtJLYJ+d2DIU/b?=
 =?us-ascii?Q?c7ZUYSnQ7Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc446671-126e-4f42-2b8d-08de70294d1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 02:39:42.1882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0yr8wwmnUjRZBH4xNJqOniLmsot6/bO7zvT6jD9z2/HacqncXmXGuQP/QS09sneU91y8lvQRmG2jhrksUpZlWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7419
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 34D63164491
X-Rspamd-Action: no action

> Subject: RE: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clo=
ck
> on DDI for xe3plpd platform
>=20
>=20
> > Subject: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable
> > clock on DDI for xe3plpd platform
> >
> > To enable pll clock on DDI move part of the pll enabling sequence into
> > a ddi clock enabling function.
>=20
> *PLL
>=20
> >
> > Simililarly, do the same for pll disabling sequence.
>=20
> * PLL
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>=20
> A lot of things are going on in this patch can we break it down into 2, 3=
 patches
> basically hookinh everything up in the 3rd patch And the initial patches =
just
> doing changes in function params/ breaking functions into two.
>=20

To add to this these 3/4 patch should be the last of series=20

Regards,
Suraj Kandpal

> Regards,
> Suraj Kandpal
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     | 20 +----
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 ++++++
> > drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 86 ++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_lt_phy.h   | 10 ++-
> >  6 files changed, 93 insertions(+), 53 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 57de15fe3446..532d7d4e3b27 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5299,8 +5299,8 @@ void intel_ddi_init(struct intel_display *display=
,
> >  	encoder->pipe_mask =3D ~0;
> >
> >  	if (HAS_LT_PHY(display)) {
> > -		encoder->enable_clock =3D intel_xe3plpd_pll_enable;
> > -		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
> > +		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
> > +		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
> >  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> >  		encoder->get_config =3D xe3plpd_ddi_get_config;
> >  	} else if (DISPLAY_VER(display) >=3D 14) { diff --git
> > a/drivers/gpu/drm/i915/display/intel_dpll.c
> > b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index abc85ee9b832..c7d37e74fbe9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -1212,24 +1212,6 @@ static int dg2_crtc_compute_clock(struct
> > intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > -static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state=
,
> > -				      struct intel_crtc *crtc)
> > -{
> > -	struct intel_crtc_state *crtc_state =3D
> > -		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_encoder *encoder =3D
> > -		intel_get_crtc_new_encoder(state, crtc_state);
> > -	int ret;
> > -
> > -	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state-
> > >dpll_hw_state);
> > -	if (ret)
> > -		return ret;
> > -
> > -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> > intel_crtc_dotclock(crtc_state);
> > -
> > -	return 0;
> > -}
> > -
> >  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)=
  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> > 1690,7 +1672,7 @@ static int i8xx_crtc_compute_clock(struct
> > intel_atomic_state *state,  }
> >
> >  static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs =3D {
> > -	.crtc_compute_clock =3D xe3plpd_crtc_compute_clock,
> > +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
> >  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
> >  };
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 412582e29ca6..28c560417409 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -4595,7 +4595,32 @@ static int xe3plpd_pll_get_freq(struct
> > intel_display *display,
> >  	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);
> > }
> >
> > +static void xe3plpd_pll_enable(struct intel_display *display,
> > +			       struct intel_dpll *pll,
> > +			       const struct intel_dpll_hw_state *dpll_hw_state) {
> > +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> > +
> > +	if (drm_WARN_ON(display->drm, !encoder))
> > +		return;
> > +
> > +	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state); }
> > +
> > +static void xe3plpd_pll_disable(struct intel_display *display,
> > +				struct intel_dpll *pll)
> > +{
> > +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> > +
> > +	if (drm_WARN_ON(display->drm, !encoder))
> > +		return;
> > +
> > +	intel_xe3plpd_pll_disable(encoder);
> > +}
> > +
> >  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
> > +	.enable =3D xe3plpd_pll_enable,
> > +	.disable =3D xe3plpd_pll_disable,
> >  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
> >  	.get_freq =3D xe3plpd_pll_get_freq,
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 4cc14ce5eebe..d408ccf6f902 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -278,6 +278,7 @@ struct intel_lt_phy_pll_state {
> >  	u8 config[3];
> >  	bool ssc_enabled;
> >  	bool tbt_mode;
> > +	int lane_count;
> >  };
> >
> >  struct intel_dpll_hw_state {
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index b1d95eb897db..365c6e07a257 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -1179,7 +1179,8 @@ intel_lt_phy_lane_reset(struct intel_encoder
> > *encoder,
> >
> >  static void
> >  intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
> > -				    const struct intel_crtc_state *crtc_state,
> > +				    const struct intel_lt_phy_pll_state *ltpll,
> > +				    int port_clock,
> >  				    bool lane_reversal)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder); @@ -
> > 1196,17 +1197,17 @@ intel_lt_phy_program_port_clock_ctl(struct
> > intel_encoder *encoder,
> >  	 * but since the register bits still remain the same we use
> >  	 * the same definition
> >  	 */
> > -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> > -	    intel_hdmi_is_frl(crtc_state->port_clock))
> > +	if (encoder->type =3D=3D INTEL_OUTPUT_HDMI &&
> > +	    intel_hdmi_is_frl(port_clock))
> >  		val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display,
> > XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
> >  	else
> >  		val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display,
> > XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> >
> >  	 /* DP2.0 10G and 20G rates enable MPLLA*/
> > -	if (crtc_state->port_clock =3D=3D 1000000 || crtc_state->port_clock =
=3D=3D
> > 2000000)
> > +	if (port_clock =3D=3D 1000000 || port_clock =3D=3D 2000000)
> >  		val |=3D XELPDP_SSC_ENABLE_PLLA;
> >  	else
> > -		val |=3D crtc_state->dpll_hw_state.ltpll.ssc_enabled ?
> > XELPDP_SSC_ENABLE_PLLB : 0;
> > +		val |=3D ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> >
> >  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
> > >port),
> >  		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> XELPDP_FORWARD_CLOCK_UNGATE |
> > @@ -1249,10 +1250,12 @@ static
> > u32 intel_lt_phy_get_dp_clock(u8 rate)
> >
> >  static bool
> >  intel_lt_phy_config_changed(struct intel_encoder *encoder,
> > -			    const struct intel_crtc_state *crtc_state)
> > +			    const struct intel_lt_phy_pll_state *ltpll)
> >  {
> > +	struct intel_display *display =3D to_intel_display(encoder);
> >  	u8 val, rate;
> >  	u32 clock;
> > +	u32 port_clock =3D intel_lt_phy_calc_port_clock(display, ltpll);
> >
> >  	val =3D intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
> >  				LT_PHY_VDR_0_CONFIG);
> > @@ -1263,9 +1266,10 @@ intel_lt_phy_config_changed(struct
> > intel_encoder *encoder,
> >  	 * using 1.62 Gbps clock since PHY PLL defaults to that
> >  	 * otherwise we always need to reconfigure it.
> >  	 */
> > -	if (intel_crtc_has_dp_encoder(crtc_state)) {
> > +	if (encoder->type =3D=3D INTEL_OUTPUT_DP ||
> > +	    encoder->type =3D=3D INTEL_OUTPUT_EDP) {
> >  		clock =3D intel_lt_phy_get_dp_clock(rate);
> > -		if (crtc_state->port_clock =3D=3D 1620000 && crtc_state-
> > >port_clock =3D=3D clock)
> > +		if (port_clock =3D=3D 1620000 && port_clock =3D=3D clock)
> >  			return false;
> >  	}
> >
> > @@ -1749,11 +1753,13 @@ intel_lt_phy_pll_calc_state(struct
> > intel_crtc_state *crtc_state,
> >  			}
> >  			hw_state->ltpll.ssc_enabled =3D
> >  				intel_lt_phy_pll_is_ssc_enabled(crtc_state,
> > encoder);
> > +			hw_state->ltpll.lane_count =3D crtc_state->lane_count;
> >  			return 0;
> >  		}
> >  	}
> >
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > +		hw_state->ltpll.lane_count =3D crtc_state->lane_count;
> >  		return intel_lt_phy_calculate_hdmi_state(&hw_state->ltpll,
> >  							 crtc_state-
> > >port_clock);
> >  	}
> > @@ -1763,41 +1769,41 @@ intel_lt_phy_pll_calc_state(struct
> > intel_crtc_state *crtc_state,
> >
> >  static void
> >  intel_lt_phy_program_pll(struct intel_encoder *encoder,
> > -			 const struct intel_crtc_state *crtc_state)
> > +			 const struct intel_lt_phy_pll_state *ltpll)
> >  {
> >  	u8 owned_lane_mask =3D
> > intel_lt_phy_get_owned_lane_mask(encoder);
> >  	int i, j, k;
> >
> >  	intel_lt_phy_write(encoder, owned_lane_mask,
> LT_PHY_VDR_0_CONFIG,
> > -			   crtc_state->dpll_hw_state.ltpll.config[0],
> > MB_WRITE_COMMITTED);
> > +			   ltpll->config[0], MB_WRITE_COMMITTED);
> >  	intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> LT_PHY_VDR_1_CONFIG,
> > -			   crtc_state->dpll_hw_state.ltpll.config[1],
> > MB_WRITE_COMMITTED);
> > +			   ltpll->config[1], MB_WRITE_COMMITTED);
> >  	intel_lt_phy_write(encoder, owned_lane_mask,
> LT_PHY_VDR_2_CONFIG,
> > -			   crtc_state->dpll_hw_state.ltpll.config[2],
> > MB_WRITE_COMMITTED);
> > +			   ltpll->config[2], MB_WRITE_COMMITTED);
> >
> >  	for (i =3D 0; i <=3D 12; i++) {
> >  		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> > LT_PHY_VDR_X_ADDR_MSB(i),
> > -				   crtc_state->dpll_hw_state.ltpll.addr_msb[i],
> > +				   ltpll->addr_msb[i],
> >  				   MB_WRITE_COMMITTED);
> >  		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> > LT_PHY_VDR_X_ADDR_LSB(i),
> > -				   crtc_state->dpll_hw_state.ltpll.addr_lsb[i],
> > +				   ltpll->addr_lsb[i],
> >  				   MB_WRITE_COMMITTED);
> >
> >  		for (j =3D 3, k =3D 0; j >=3D 0; j--, k++)
> >  			intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> >  					   LT_PHY_VDR_X_DATAY(i, j),
> > -					   crtc_state-
> > >dpll_hw_state.ltpll.data[i][k],
> > +					   ltpll->data[i][k],
> >  					   MB_WRITE_COMMITTED);
> >  	}
> >  }
> >
> >  static void
> >  intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
> > -			       const struct intel_crtc_state *crtc_state)
> > +			       const struct intel_lt_phy_pll_state *ltpll)
> >  {
> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >  	bool lane_reversal =3D dig_port->lane_reversal;
> > -	u8 lane_count =3D crtc_state->lane_count;
> > +	u8 lane_count =3D ltpll->lane_count;
> >  	bool is_dp_alt =3D
> >  		intel_tc_port_in_dp_alt_mode(dig_port);
> >  	enum intel_tc_pin_assignment tc_pin =3D @@ -1878,9 +1884,11 @@
> > intel_lt_phy_enable_disable_tx(struct
> > intel_encoder *encoder,  }
> >
> >  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> > -			     const struct intel_crtc_state *crtc_state)
> > +			     struct intel_dpll *pll,
> > +			     const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > +	int port_clock =3D intel_lt_phy_calc_port_clock(display,
> > +&dpll_hw_state->ltpll);
> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >  	bool lane_reversal =3D dig_port->lane_reversal;
> >  	u8 owned_lane_mask =3D
> > intel_lt_phy_get_owned_lane_mask(encoder);
> > @@ -1896,10 +1904,10 @@ void intel_lt_phy_pll_enable(struct
> > intel_encoder *encoder,
> >  	wakeref =3D intel_lt_phy_transaction_begin(encoder);
> >
> >  	/* 1. Enable MacCLK at default 162 MHz frequency. */
> > -	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> > +	intel_lt_phy_lane_reset(encoder, dpll_hw_state->ltpll.lane_count);
> >
> >  	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes,
> > gating, and SSC. */
> > -	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state,
> > lane_reversal);
> > +	intel_lt_phy_program_port_clock_ctl(encoder, &dpll_hw_state->ltpll,
> > +port_clock, lane_reversal);
> >
> >  	/* 3. Change owned PHY lanes power to Ready state. */
> >  	intel_lt_phy_powerdown_change_sequence(encoder,
> > owned_lane_mask, @@ -1909,12 +1917,12 @@ void
> > intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> >  	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check
> > enabled PLL type,
> >  	 * encoded rate and encoded mode.
> >  	 */
> > -	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
> > +	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll)) {
> >  		/*
> >  		 * 5. Program the PHY internal PLL registers over PHY message
> bus
> > for the desired
> >  		 * frequency and protocol type
> >  		 */
> > -		intel_lt_phy_program_pll(encoder, crtc_state);
> > +		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
> >
> >  		/* 6. Use the P2P transaction flow */
> >  		/*
> > @@ -1946,8 +1954,7 @@ void intel_lt_phy_pll_enable(struct
> > intel_encoder *encoder,
> >  		 * Change. We handle this step in bxt_set_cdclk().
> >  		 */
> >  		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock
> > frequency. */
> > -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> > -			       crtc_state->port_clock);
> > +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> > port_clock);
> >
> >  		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] =3D 1.
> */
> >  		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display,
> port), @@
> > -1994,7 +2001,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> > *encoder,
> >  			     lane_phy_pulse_status,
> >  			     lane_phy_pulse_status);
> >  	} else {
> > -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> > crtc_state->port_clock);
> > +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> > port_clock);
> >  	}
> >
> >  	/*
> > @@ -2005,7 +2012,7 @@ void intel_lt_phy_pll_enable(struct
> > intel_encoder *encoder,
> >  	intel_lt_phy_powerdown_change_sequence(encoder,
> > owned_lane_mask,
> >  					       XELPDP_P0_STATE_ACTIVE);
> >
> > -	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
> > +	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
> >  	intel_lt_phy_transaction_end(encoder, wakeref);  }
> >
> > @@ -2145,8 +2152,8 @@ void intel_lt_phy_dump_hw_state(struct
> > drm_printer *p,  {
> >  	int i, j;
> >
> > -	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode:
> > %d\n",
> > -		   hw_state->ssc_enabled, hw_state->tbt_mode);
> > +	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d,
> > tbt mode: %d\n",
> > +		   hw_state->lane_count, hw_state->ssc_enabled, hw_state-
> > >tbt_mode);
> >
> >  	for (i =3D 0; i <=3D 12; i++)
> >  		drm_printf(p, "addr [%d] msb =3D 0x%.4x, lsb =3D 0x%.4x\n", @@
> > -2283,14 +2290,22 @@ void intel_lt_phy_pll_state_verify(struct
> > intel_atomic_state *state,  }
> >
> >  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> > -			      const struct intel_crtc_state *crtc_state)
> > +			      struct intel_dpll *pll,
> > +			      const struct intel_dpll_hw_state *dpll_hw_state) {
> > +	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state); }
> > +
> > +void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
> > +				    const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >
> >  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> >  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> > >port_clock);
> >  	else
> > -		intel_lt_phy_pll_enable(encoder, crtc_state);
> > +		/* TODO: remove when PLL mgr is in place. */
> > +		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state-
> > >dpll_hw_state);
> >  }
> >
> >  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder) @@
> > -2301,6
> > +2316,17 @@ void intel_xe3plpd_pll_disable(struct intel_encoder
> > +*encoder)
> >  		intel_mtl_tbt_pll_disable_clock(encoder);
> >  	else
> >  		intel_lt_phy_pll_disable(encoder);
> > +}
> > +
> > +void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder) {
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > +
> > +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> > +		intel_mtl_tbt_pll_disable_clock(encoder);
> > +	else
> > +		/* TODO: remove when PLL mgr is in place. */
> > +		intel_xe3plpd_pll_disable(encoder);
> >
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > index ff3896a2cebe..3838e9326773 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > @@ -11,6 +11,7 @@
> >  struct drm_printer;
> >  struct intel_atomic_state;
> >  struct intel_display;
> > +struct intel_dpll;
> >  struct intel_dpll_hw_state;
> >  struct intel_encoder;
> >  struct intel_crtc_state;
> > @@ -18,7 +19,8 @@ struct intel_crtc;
> >  struct intel_lt_phy_pll_state;
> >
> >  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> > -			     const struct intel_crtc_state *crtc_state);
> > +			     struct intel_dpll *pll,
> > +			     const struct intel_dpll_hw_state *dpll_hw_state);
> >  void intel_lt_phy_pll_disable(struct intel_encoder *encoder);  int
> > intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state, @@
> > -41,8
> > +43,12 @@ int  intel_lt_phy_calculate_hdmi_state(struct
> > intel_lt_phy_pll_state *lt_state,
> >  				  u32 frequency_khz);
> >  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> > -			      const struct intel_crtc_state *crtc_state);
> > +			      struct intel_dpll *pll,
> > +			      const struct intel_dpll_hw_state *dpll_hw_state);
> >  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);  void
> > intel_lt_phy_verify_plls(struct intel_display *display);
> > +void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
> > +				    const struct intel_crtc_state *crtc_state);
> > void
> > +intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder);
> >
> >  #endif /* __INTEL_LT_PHY_H__ */
> > --
> > 2.43.0

