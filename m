Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 289A54861DE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 10:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AC1113E87;
	Thu,  6 Jan 2022 09:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86035113E8A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 09:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641460386; x=1672996386;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RU9QMBkFzgXqhQUGz5nxEz/85nFRqqekIxYe6dNkFak=;
 b=nmfXdz+iVlRZgyYuz3GoxdPf9FZt1TxSgBMEhEqM463QDHGUc7vS60u7
 Cj0jnGLTG/oi7xzE/h9lXh4m7G2dyCt2SdLG1lTfJaJaQFk014whKV3md
 evMmFb/gtH8bo4mB5PDj/Oz3EGgpUuITQNR92zXijK5plOCqfJ6CJT26e
 RWMUjs6byg/QiZpk8hJuGHQqgIsZCapeeaz5AQqCr9D4mZmxxnn0gJTWt
 +o4p+9EppZ6oxAwAYE08ReGlxbfwDjZKZbMeyPAvBzAFCkCJecE3jxMLj
 o+haA/GSfdaI6UatNYinepl5H5DlhZ4+WOy/pj3gmBsYYgv/ZeM0Yrqr7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223309293"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="223309293"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 01:13:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="761111770"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2022 01:12:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 01:12:59 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 01:12:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 6 Jan 2022 01:12:59 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 6 Jan 2022 01:12:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELgvZXE/8qewdtWJratzHzG2RsxNssY5AqdpWuz0DHIZviiIFknDQKzEwANEjP/YRmh8muRwl1DyXm3+8R8K1IeCSuNL7wITqpOv5gwHYM1/YmnNGFX/pBZPAUQXZc79Vq8KPU0LlxRGgu3nJYyFoEpl8H+CO95ftcfIAufrKw9xKJM+WidnMbm7f5EtKq/BYycChCUn5VNEEuZj2DebeTgQHHRhZRNtn3RDz+MUoVFw9RiwHGnIFcN1VvD8HBzcBt/WPwhaciMXhTOTAyT5pPqcxonEcjtG6uzJwTbaTb8nzFkJ4PlON6PCZibR1XjjPN3RY0jh0e49DRLdvuppLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RU9QMBkFzgXqhQUGz5nxEz/85nFRqqekIxYe6dNkFak=;
 b=PbybTR9oSJxkab+6FL9gxzAiKcpvNKYHLS0gL121j0V3R+gNdzKAwDyLmOVw42BL9fiX3XmTXvK1TPNsiIHgu0fcGYaO6gTl07hptAkPhtlUowaZaofTDWshDjYdeUn+3RHySOLKRDU1I4QDyXrSTN1IHbPnLHnekYTjv7vfn8Z2kSDHNe3FQFniNLgfeVJ9Cly8NePyD1aI1J5/KnnJhN/xlPafFkGXCjSwarkM6+gk09tw1MlqfmBSckjj5MZsC/rEi5H1Ep5aUZw1hzHXla5nbayAE6vGOusNvRN84UYSMjUwHxOgBkhdI0TjDvTHU3wG1jHxnLZ7C8z6c+IO5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB1348.namprd11.prod.outlook.com (2603:10b6:404:46::11)
 by BN6PR11MB0001.namprd11.prod.outlook.com (2603:10b6:405:69::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Thu, 6 Jan
 2022 09:12:57 +0000
Received: from BN6PR11MB1348.namprd11.prod.outlook.com
 ([fe80::44ca:3f1c:fb20:9f6d]) by BN6PR11MB1348.namprd11.prod.outlook.com
 ([fe80::44ca:3f1c:fb20:9f6d%7]) with mapi id 15.20.4867.009; Thu, 6 Jan 2022
 09:12:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915: Define WD trancoder for i915
Thread-Index: AQHX8xSAMgtnPkH/e0ylS1dRZI5o8aw2dv+AgB9dnTA=
Date: Thu, 6 Jan 2022 09:12:57 +0000
Message-ID: <BN6PR11MB13480B54F05CC2984BE5E03AE34C9@BN6PR11MB1348.namprd11.prod.outlook.com>
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-4-suraj.kandpal@intel.com> <877dc335h6.fsf@intel.com>
In-Reply-To: <877dc335h6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f617410e-d35b-4aaf-f9ea-08d9d0f4baea
x-ms-traffictypediagnostic: BN6PR11MB0001:EE_
x-microsoft-antispam-prvs: <BN6PR11MB000130C391414400E417CBB8E34C9@BN6PR11MB0001.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: epip8in0Cghu6w/aC3XbyoqAwF0ISrm136wcr/mnmNLdcwM1KQ3ZORRmGOQ4lYeWAp9KRhI2qPgsY9JL66SMNy47WgmILVLKDp4F70dW7LZP/yf0xeypaGZA09yWlo7uRbQatdGqyNycqOPat4vAmQlpzxSHrCJK9Cxf4GoKV1hZMnfX+Xgp2RF0d8hcvOUDq/E4iR+nZ97ujaXP7bg3zxQm2WdqZIDl0qHJ+WhJIjkMc4HvSLwZEhuX52yxy5xctMmo7D5sELXuA/JnU4TNrma5AT1YzAozTj2SzkbBvpH53ssCXdha8xAlg0uPvwivjwPvXof1PmlslcAL6tNGBgbN3XOiOAUissfFeHuH1N8FLDgqKWS57tssQ3jErYrZfMLijYihgPcG5JYys+XW8WdDIr5nX+N+v+F8FfsU69O/wppQ9WNw3Hbpd54G8IC50sVX4XEyI4RxtTI7Zxla1SZpUARBkfb8lioRSM+38SErCPg7azNvXUtA1oOEYEyiBgeYzK1zpdtax8HSe9Xp5tcdjMKRBLW1AcTHBn563vDqvou0dAiUtjE8CuJ+4vFlOktwt8za4jhow/9dhys5v1g9qnri8+aoVaWUcEcPAzt5wg1QRY+l+QDzrsNzyLJMRo/EHs6T+z5FFNcjcRtnoXwFha0LcomhlkvqGrdu1YK7lKkQJrPerLDoMfNDlsM25jLGC6v6+cvYYIqh8U2dcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(55016003)(64756008)(4326008)(38070700005)(38100700002)(26005)(52536014)(66446008)(110136005)(5660300002)(82960400001)(186003)(558084003)(33656002)(316002)(2906002)(508600001)(6506007)(66476007)(66556008)(86362001)(71200400001)(66946007)(76116006)(8676002)(8936002)(7696005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YLWikUJ+DKLqeDp30QZD+5JLjCGPxECeljH0vWtzy8LH1q2xwKQGZMwNR4Q/?=
 =?us-ascii?Q?4cVjfqGsuuchDCOix/ZWAmDYBT5ymuf97OWy4TmCC670EiSSPOb4NSscpXJf?=
 =?us-ascii?Q?KyjvCU0HOjhE3j9jbnB6sy2okGW0Fjnoivu6ncv94EwdWyMjz/EyMX5QfG5d?=
 =?us-ascii?Q?nlUzxmWSs/6cPcCtEFdGEj6ZSTkiQjuGJBazlpiJMgrc3z1uD+lpCVnxcyY4?=
 =?us-ascii?Q?2adRkcvYz2NQLv3WYInIyv9HiJCIfdWQFGEuaLA4utWWgBy0CltDBAZeJ1Wm?=
 =?us-ascii?Q?e7ntFNcqB4kbksAUc7FlXo1fiang3giy217jZ2/1CkxC8UXvkad1VZ2J7eMy?=
 =?us-ascii?Q?ZddQvXenKLt8MVgmNbBkD2SpM1WiR1tlGUXtiVBCk/jHpMAD61xkJiym1kQQ?=
 =?us-ascii?Q?obGxRmkqtsttFkbJkmEK/YzysSltwzyGRNbwHO65iM1B8Xh+3OsTd7MNVqte?=
 =?us-ascii?Q?rHJOx1HXBUMWuN72BgftdoU7AY50LSC7apb8wfYnNvcPJrZP1AEQs0VtG2q5?=
 =?us-ascii?Q?TyAMSs1MduoTStyIwmi0zfRsXJCpVn2VMdk2eVSBC5Px+AFbze1xn/FDub7f?=
 =?us-ascii?Q?WYS5YHRIDYTryqD2JIhuHSE9YgweoR7s6tbsjZWfWyHazIR2MRkqcs+6sOWA?=
 =?us-ascii?Q?19drOaceO0Rqj1NffNoBKmiL1LT4p/aMvTQiBRGeAGYQ3BiIAwO8ZoV6a6gt?=
 =?us-ascii?Q?jwotSlGNvbbiQ38W+4sN3wqJb8BMs4759K2OF9WCtXylx3ILnz7xS4rBdfGS?=
 =?us-ascii?Q?vDn0EoYtJKobp+ZkfHQ/ILGLCgLiQpRyrVu+CgewALdg7mf/5VUspySLzbsk?=
 =?us-ascii?Q?+W16PtrN4+pij6TL24dCWKu4agQGQuTMJctupO6nNib0FyOTV/w1IZFs4ZBw?=
 =?us-ascii?Q?gWdI/bMTbFhnjcZjctibHdXEwtZkSATRFmIM+poGZkhwMeHq0EOIsoDSf2l5?=
 =?us-ascii?Q?4KBW/DqnbwqQAaYwvQgQudLK6iZjus476H2NRROvElWjOIefhAy4JjL+H8lL?=
 =?us-ascii?Q?JMTsAfIPVWRI/uKwrKlHVLYWyQRQcSPFEGnoqZXg9Nj1i85vtRUjNMY1halQ?=
 =?us-ascii?Q?k3K22JiYb5HGjZ1eKh9XPHbNUyjjLaAowcmEnw7fkVAgaD+IoUbg556bq7cT?=
 =?us-ascii?Q?EZC9Us8BiPAE9Ba1kxGwaJwLXVtB19c2b4JXlLLGAVV09/Udlk0+qMeRJfy6?=
 =?us-ascii?Q?wH0WVhazZh2j0uQzzVRdtFUqFdaGiC82tA4pzq7m1KyJM6m57RMR8obc9t/O?=
 =?us-ascii?Q?gc1myOJBvTVxeKhYeTlqe8mdOm9CQO5V5XQBovpbHS1gJ6WE7g3xe3IM8N/c?=
 =?us-ascii?Q?3sNeOeHgQJJbmxN75loImRED3OX9X3l9oHMnWVQlH2wt5gx6qIKFhl0tFTKP?=
 =?us-ascii?Q?vLW5kHEvDmHR03r1kr8Ou3vVwzwMut1iw/zxWfb1PNJpNLHKsuwHJoXe09tm?=
 =?us-ascii?Q?Ph296aQW118LLbkU6fu21LSMWAhhxOGc3jLp/nho2ya6BCi7RFeyAqw9XuWq?=
 =?us-ascii?Q?rnTIMlqypIiWYSaO/A4fIJMbHrxMUSyrFNc5YjAKV83cz5neKBLVFvh/H7+0?=
 =?us-ascii?Q?hTqPvOhEbrBv1Fz1EmCvqunbEUyTukXOYUbUplIKmPWkno0WUNpkoDCqpi7M?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f617410e-d35b-4aaf-f9ea-08d9d0f4baea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2022 09:12:57.5726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OxSfCdZCZ9V7B7j+2DxcJ7RFTJtG8OpOFLxNZ4y43LkW9lJvY0auZ6OgjgjSv/1QcrHKoUG3kPilwdul7A7tjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0001
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Define WD trancoder for i915
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
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > Adding WD Types, WD transcoder to enum list and WD Transcoder offsets
>=20
> This should be part of the patch that uses them.
Got it will squash this patch with the one using the above

Thanks,
Suraj Kandpal
>=20
> BR,
> Jani.

