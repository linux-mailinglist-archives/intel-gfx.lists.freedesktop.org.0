Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BDC4E6E5A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 07:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C5810EDB9;
	Fri, 25 Mar 2022 06:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43BF10EDB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 06:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648190821; x=1679726821;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0OUo3LIzrlLrIr5RAH1bL1q1TI4L+4D3HZ/Pym1UZT4=;
 b=AsFwRXUlg8q5O7SNl48oF4amj+xWzoitzFf7NOfJ0+1rXT7vn8eLPAoU
 0AVEcgPPK7e2fobaWPw1IvoDNoraBZ6bXzH7M4ezw9/W05+bS4KZBWKbX
 9hZCJhTam3Df5rIhzRYwwwL2610gBaPSPgWM0HiUtxpizZ+KmW2vMwBAb
 hToc/YtUGEb57/9ITcj9nocrWvYA0uiFEmqnyLPWzjwMyovoH940ouv4z
 RUAzgCyrNaxFSLnNQW/yfaGSkMUM89bauNHvifvdSTaPoJENWUvAjkUFE
 KHDEuzMzNoO74Bj7o3ZNmXAt0ZeLGNREKW+zdd3s+pobhufQoeuyJyvza A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="319276176"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="319276176"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 23:47:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="544966744"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2022 23:47:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 23:47:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 24 Mar 2022 23:47:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 24 Mar 2022 23:47:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m2gU+vrAFAx011pYpAjDN1kwq/ombKhNWH7+W94gCCLXvzTyL7ArCNWzWaA6Gl2uODZFUKvATK1DSGKGZY71f85t08xopMPa4o30B92KLb6uOZbxr1e7K+ZmFPIfpAeztQxrPdhpFAqOnW4bZs147vcRwvYdSnhcr+xAr7GFLPmJR4F7qbfHoP6K1VOSAaCddJvUOfUh3xmler3ZpQA+VUi3mtCmz1Lew63XGOEqxVZ0EV4GktVBaGr86LJrWgJGRmzxd2QEFhR3PQgNdjFlPHxtyYexKrrg/thYWvLePAYzjTuMSIc1iaTYpNOwW5sT8w2CE01MtGtU/G86ac88ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mp1ly8jAFu5fQ6QCyiQTdkmvZEUBxnArTrVPIJTOVwE=;
 b=BqJKfhou+sfVD+te9v3TP8LRskwedPvxdr46r6Enkzzz0Rt3EoAWYJwwQpd1VcM53YNpDKddpdiK6xDYe/+gbNL0av9+CYvwdA22VEezZWtI7dXOP4p1qLfAxioqtJ7lYXUAzfGUhzNAqHhECb9xDTouwwtX3VF4q5Wwyj6T+DD7OuCI1hUzbAnYoPCwJBKT3jMZYKX/YJhMjffPW2ClrP0qp7vIYeVxZuAMUNLyp9fivDCwvVnIFkD2dk0d2B1gQLCseA/Ya0yc0Jjuf4bddQAIxpbgJr1X2Uy35c9z9gfekjPur6rKzQkfLJvJckKMSPCwmNIlpzedbDwoJepbnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by MN2PR11MB4463.namprd11.prod.outlook.com (2603:10b6:208:190::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Fri, 25 Mar
 2022 06:46:58 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::50:e76c:c3b9:44d3]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::50:e76c:c3b9:44d3%7]) with mapi id 15.20.5102.016; Fri, 25 Mar 2022
 06:46:57 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add RPL-S PCI IDs
Thread-Index: AQHYPaQHq69WfrUw50CO4DIoYipSgqzPrL1g
Date: Fri, 25 Mar 2022 06:46:57 +0000
Message-ID: <PH7PR11MB58199CBAFD5B9652F6357462DF1A9@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20220322040616.1078009-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220322040616.1078009-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15e86136-987f-4d34-c287-08da0e2b41f7
x-ms-traffictypediagnostic: MN2PR11MB4463:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB44633652E8566F402EB500D5DF1A9@MN2PR11MB4463.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TS7HUHcPOixgKm2dq20It6qgLcXEOzDF6JXVzLptNQ3R4RQ2tc17E2+YpZVllyx2fgig9cfCbVg9j9sP2Dsh5QnVTVHRrBxzfJ5cHjVDsvH805jLrC8TbBsYoqeNwhCREYed6sYYp4HCHv86EzbcASJGheTykTDn5GprGSfEfohyzfb8PgJZifhdAisqmmNRaMeXqPcMlIf1UheCsnlOykBwGkNdNtVQErTvy684Ip1ae2OZ9xByLirCxb2T8Fpajmk2Z45xJylZVb4yIFS87r5hm8me2VAArK4KBMQ4FaU/igM4WhEQHHqMNqzM3jWLqqL/2TZm1RtPb7jYvzo1hApVVm/Fbxoum9yKUFRUIVmrnsUDjfM8tx9DppsAMLSOXYfAtl4Xw93MHN21zG/E33Wn1rGMfs+TXY7qQPk0O1bRDevIUApLSLLdcrzZFhjXVvG+oEmOqGid2GIMmwq+FRBZKX2jV8a51xWqpHx9PGdGZAthSp/Wt5P0Ne4/0Nz+5Y/LcbderarhosEaxgKL/yzLKhezMRkbgVMnRFFOsOxwEXPGDLpTWQSq6IS2Dyh5lBpOWI5vSOmXE9sqGZzuR/O+U6Z1jrBKuA4xcPsG4JSYiKoAhgIJC04bqoJsDCcDpzmUUAayAf/tK/+PYmC/3MJnIp+QxCp7Xe6GTgdGsVcUKH33kBsjq2crmAj12OqQUNJl9r//t7bCHsLlAXjvRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(107886003)(83380400001)(8676002)(316002)(4326008)(86362001)(5660300002)(26005)(38070700005)(186003)(71200400001)(6916009)(508600001)(8936002)(52536014)(82960400001)(54906003)(55016003)(53546011)(7696005)(6506007)(122000001)(2906002)(33656002)(66476007)(66556008)(38100700002)(66446008)(66946007)(76116006)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zJaQcm2C89fdFn58oDi0BYrLwCHpgkt3hvVbKnF5Ab+cZuS4Ej/mqc9vDren?=
 =?us-ascii?Q?lNvpy0IzuP33dEATRoUHvzHkox5cUxTE9NvBEm8djwt5QYMn+rynWv6FljDc?=
 =?us-ascii?Q?gzALgjn14AeP4EYx4uRMujsb4ny3ltHNPXE/9r66MLaVi4PJDfBlTwdRt/gv?=
 =?us-ascii?Q?5/NLR6rvi864DXZV+P7Z5i66mnJlN03bmTgFLA1sZwxM/6iHwZVGq/B24GkZ?=
 =?us-ascii?Q?hqHmQgzCXTMvqORIMv1nV4SoXkmEF+XDSAqVCi3BEdWSR8e8DYhpyu3yjG+/?=
 =?us-ascii?Q?0hvK0t/QaATQ97EW0zJkNdJCvQvBIf0nV1mU4AeEsm+JhwpTK4t2zFd0ljvC?=
 =?us-ascii?Q?pfN13T3hGHDbORIjp/A6ZijIIrp66loYDU7qO5gjuO0U2qx87hIY/69dCfee?=
 =?us-ascii?Q?4NqfZ4lE2IW0NPiPgnYfenuuTFZC6de7GoN6WZWYjzrxvJ4ImiS0RPwuVELQ?=
 =?us-ascii?Q?ztazXa4mVSzy7l0+xFZ0zJ3unaTGBB4Onj6wvoX4c7GLfkIIeUtaZsBdgTSs?=
 =?us-ascii?Q?TPhm4odaHribU0EH4ntjOEq/4D1G1NLV8olCcSv5yhBcBUBHbrcS3Apj8F6z?=
 =?us-ascii?Q?83kKVXD4J6SWJA7Eay4gMj8xRUQ6GUj1lGgpGlE4iacmKxGmytlo0Csj6ynd?=
 =?us-ascii?Q?ThfeE9DiMkZZkVJWYTP8tlyy0LriGnvUSF2ETADuzx0enSntBl//gwmjqxFt?=
 =?us-ascii?Q?zriU5YO+WhtaeijhYAnuSB9e+KfYesh/zAzH5dwIQHkCzKCcO2VrqMwYQmJM?=
 =?us-ascii?Q?8mycgigmOKl/4NTO/3zyr3Yo4lACuxKxTFtkJOcADoBhI8AAh+NtsUzkuhc+?=
 =?us-ascii?Q?nxcUqZbNW8CBCQU+od7bhByDUa6FYJP9i8L2MbeBfZ0HSq0NwYkRQZXR/2Sn?=
 =?us-ascii?Q?ZqLfv04mYNXAPBTEfqfrsYRAz3w581i5CkMLi9iv94+gub/dRjvLxLNG9FIe?=
 =?us-ascii?Q?UkFL2krg4Wlwq6dZg6pXrEIt9DkniqjYwOhvNrhgQD86J5I93UYBCf2SIyw/?=
 =?us-ascii?Q?oofZraMRgIZ+mhvBVd/h/LvjS/PX9RR7HeRl4fxeMaPJdeF24Um9I+pdjdjM?=
 =?us-ascii?Q?VV1BqIZKetzi+/XsuIq1g0lea1/pDlzOQt2S6P557ts8R7v6U8mPKsIN9KSP?=
 =?us-ascii?Q?gSrDAjxTAdvdw8o1b7bdv8qmEGo2ZHGGNVYIayiXyTIoe3dm6UqlwYtVKi8Q?=
 =?us-ascii?Q?PWRi4JKkUOa4pxzgy3Wtm8Dq44R8QpRFQSOUbfgepiLRF5Yu2UVlRtpkfnni?=
 =?us-ascii?Q?TwgJEH4W04ibhYAuvbAMrK/NUh6vsUOrcqnhjm8BUB6wMVAXhfz1f93LbxXL?=
 =?us-ascii?Q?7rxJxJt9I9ZKc2fxNQNyVbdVqmnn/RXUbij8XflgsaOYt/s+IesTozUTOo0F?=
 =?us-ascii?Q?SXxABgpPANGmmYHNHsOR8WFflej/Cfsm57mHFgRtUMqDIbEzrFQfQElWhQei?=
 =?us-ascii?Q?rd7qCmDfsL+ShDQrG6HHAw2ANDwrr3aI29wKKMGV0FXONzJqQrUu8ZMGf7j6?=
 =?us-ascii?Q?DPHVrFTMElXtJ+HaYiCEx4waNStQja2eDyt9lSdoprsPTuZvH1sNqs4zXofG?=
 =?us-ascii?Q?0m6Zs+D7N7m7FQmdk6d9sO8zBKnKzlOHn7aXzppnvPiMgxYpU5frbsCilNhp?=
 =?us-ascii?Q?w7Hmzka2K7Rx7pUS8dyTcD4TOCS12yUuCp2NeBwFrudpFSUu9QYvs9U8+nW8?=
 =?us-ascii?Q?doM0zi5ZkukQx2Mu4Gjddz4HxkiI8t2gT0bbr46JH5fVj8Nc5rR+ySql6aLN?=
 =?us-ascii?Q?0D+pN6iH2kdNfeJaWZXfl1VIL+8wqGNzONAS3lGV8dhU9iMKP7ItDyesNA3+?=
x-ms-exchange-antispam-messagedata-1: Zvh80qp6KBmRUg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15e86136-987f-4d34-c287-08da0e2b41f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2022 06:46:57.8235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OaaqADIqQvRQJj/oXuy6zhzAfb1QDv3186b637B+MYHxIF1e0C7gRBmG8t4R+qEZSDU4xWrQJINyAK/9jP/iUcY0NaWePrnhFXE/O3P43WqzUMwDvbvsdxflce0a2eAYgwCoApUXMvfCNUh+zL4LRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4463
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
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

Can anyone please give review on this?

Thanks,
Tejas

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Sent: 22 March 2022 09:36
> To: intel-gfx@lists.freedesktop.org
> Cc: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [PATCH] drm/i915: Add RPL-S PCI IDs
>=20
> Add couple of RPL-S device ids
>=20
> Bspec : 53655
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  include/drm/i915_pciids.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> 3609f3254f24..638be9cddba4 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -679,7 +679,9 @@
>  	INTEL_VGA_DEVICE(0xA782, info), \
>  	INTEL_VGA_DEVICE(0xA783, info), \
>  	INTEL_VGA_DEVICE(0xA788, info), \
> -	INTEL_VGA_DEVICE(0xA789, info)
> +	INTEL_VGA_DEVICE(0xA789, info), \
> +	INTEL_VGA_DEVICE(0xA78A, info), \
> +	INTEL_VGA_DEVICE(0xA78B, info)
>=20
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \
> --
> 2.34.1

