Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BCcBcEOnWnoMgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:36:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 721681810D2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B2A10E481;
	Tue, 24 Feb 2026 02:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2hA996w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BF910E481;
 Tue, 24 Feb 2026 02:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771900605; x=1803436605;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DsFpzKfrHgLvdBdMtnltGiMW5Iv7BJMlP79xFBQVMjo=;
 b=A2hA996wsTjQ84eC92QTglYelReHbm4HdbfB0cWqDgQpd6qBnqYH29fE
 ajTfQ67/ReCSmkus61EWsvHRMUl2ImyZBR/gO0RusQUDNH36XOxA8WYlo
 ZINb4PEeDWvg4clTxbzsZtoLiPNdJDYK5cvlq9zcGAjXsWujmOaEnSq+g
 IVO3WqGviDfL2LBzBp7aD5BDfi9ZUZvKs+Ts9P8CVunoDP0Kta3vNKseq
 hR6T6GWVKbRUzmu6OqRnUntzSQLkXO5gJwe5Ar/Bm0evHbWLUsWAjtgPh
 rn0KAU9/JuTKKnBCeGUliCQuRjFi2UHhwtzPow5N/CqIbH5/8expOyh9p A==;
X-CSE-ConnectionGUID: prNXnR3pQlmWAATI5TLdmA==
X-CSE-MsgGUID: ZTZTJs3ESL+6DzABhE6A4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="98371912"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="98371912"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:36:45 -0800
X-CSE-ConnectionGUID: zXjlfzW3QjmMIh4cFRUH6g==
X-CSE-MsgGUID: /smdVuNoTY+qUPwWg76I7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214134398"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:36:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:36:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:36:44 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:36:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XhBxX7bAzZGQHmV4s5Iy6m4pda8X7lJViV3JG6A5lo/W7IUUAumbcgid7JpF9K1TzigGgukiwY2lTDiJN3eeNvfQjXinDnK3QmSehU5fqK1BFkvvdAp7XOQqEHfdWTwtzAqlcP+wvIO9S3PPPs1NwxCUymDKQBqA0wn+NbQtQfMhYSpti4xDrBAKwu5todvVO3diiCz+jkgWguYVy+c0SgeVNbQ2Maosjgl1AL80ncvDcNukOLWCwBqP5OdlmVS40uwpO75Ic5YidRX6ojy+vwAQeOyHJdNpIa41HS178WxYFBqiyRtzXRfl+uH/qVUQTVS+RQARV+c2JbQwFMPisg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o2N2CIqU+HblukEyJSu2m5TR0N+WZT103vkIwvJWpCE=;
 b=caqfx7NKOLZTLednuLtdItUDDljaV3Xufx0zilPio9dOiTrVG5pN7WEE+9PwS7D+Hv5SSS60uFFGIBEexhtBQsn9yvhgDSfmzVmkD6romqnE7+yDIx+17ppi1mfyoFibuHOabgyyixe9W2PLKFKyQzeRHp8BVo22x9rwF0yXjx69lsoJv5SmTgw1NWBzGmu+Gm//MSmYWrQSDXVlGVDx++6aFiAEQOq9JmszShxiOq5UKDZPs8pbNwsHXCaLp/mzBTWl5dT1jwS3jCNlTzjfjU2ffJaYBVAxqEExvhYUVQRoWWr3JDhdMBlAxQdrE/Uu7FhngQEZEhwwk0LOO3DJhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CYYPR11MB8407.namprd11.prod.outlook.com (2603:10b6:930:c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 02:36:42 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:36:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Thread-Topic: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Thread-Index: AQHcoc27yWJOKQZCm0+OFfnDwILbPbWQejRwgAAJzoCAAKTG8A==
Date: Tue, 24 Feb 2026 02:36:41 +0000
Message-ID: <IA0PR11MB730753D5A4BA17347FAF1D9DBA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-5-imre.deak@intel.com>
 <IA0PR11MB7307ED11D322F4B53B76988FBA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyEJdyNxEgazSSF@ideak-desk.lan>
In-Reply-To: <aZyEJdyNxEgazSSF@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CYYPR11MB8407:EE_
x-ms-office365-filtering-correlation-id: 6f1d4292-e880-4f31-1178-08de734d8b51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QEUsEskG83vei2kGRDdHwiz1FDM8xTLsf/QJuiu1IinRI63TA1xyUmj9gmQS?=
 =?us-ascii?Q?3Syi3acnEBuqRxXU9YQPwfvvwbdJtgPa1ECs7DLMkL86GrKT3HLaAm2tafvw?=
 =?us-ascii?Q?xsClAqW24uL+jMEI8k9ZOjIe1ae2RsBONvB05aohpx0Vwmhfb/pDaZ5QLvEK?=
 =?us-ascii?Q?p/GP79NtLsQ+MJngPmQ4WcSxUqO3bbIDe8UzXGN0s9yazXRfX7jDbA9Hgvgk?=
 =?us-ascii?Q?wyNrMB6g+wcGaP8gvmDhqM9PuewwO/RqkhqfiTJHg1FL2ncp/9b2P4YB4yZD?=
 =?us-ascii?Q?kfdYbNGspxlpLDsyxDzeFbSQyjggNUeTBC1aOVYz0UMj9xCZ10mSyRzJj8e2?=
 =?us-ascii?Q?qXTD7a3jFTTtd1ccDbZOkcx2hsXaRmoRSV3e+Ng+VG1RZT6XqMT8fIEZS04E?=
 =?us-ascii?Q?btG6nOYhlkedqtLlgj1eB1ddxHFBOB1Gfsfghxcr2Rp99+E5gG7xofbhl2rG?=
 =?us-ascii?Q?HnSx2wtJg5Qlnu51o54wra7vJpIhqB0gxmqo04h1LMm3d6Q/d8AMxtxmh95B?=
 =?us-ascii?Q?qbBPCES8GwpeKbGxCEVl7Kp2keHkBP5P9oXnUW/ncLJocsVSe0DlifBxtobe?=
 =?us-ascii?Q?RbasP8Z9JlK7465g25HBaiWLx48+mZ+ptMNTdQhdxc44Wf44s3Ap5MzHe/dp?=
 =?us-ascii?Q?mJd0IivQxPifwC6U2SLtvUNOMJzqL6ZqCV0FnLTn8Ka/5r1SiMwxxcjf4aEB?=
 =?us-ascii?Q?K2yfPn9LtKh7+0fTtMVozH88xD0pynm7dVC93jV7+mzX6TQQHwXeOf4rcehL?=
 =?us-ascii?Q?gqEp+kZaskuB9U42dv46opBpqdYcKRobXncpQUDawv04zcuLX8ig5aTyI7iG?=
 =?us-ascii?Q?2Lx2mS2SbvH2rj9oKoFFOWiprjIo01U+28M9RWsb/LFiRZAIEoGe9aYcPjtT?=
 =?us-ascii?Q?ZJ7YxT185TPYqrV5nyLmJ35fVpngR7oGI0rH1hcaUSxGTCOm6q+5Rk3OnL1n?=
 =?us-ascii?Q?x7HbbghY6hBWE0FOuNCmV61XLiEyxVDO78o8Kjv7jF0qpzbNCUgU+fv9ybC9?=
 =?us-ascii?Q?6t5FUYz/llYjeHQrohvNnNZROX/zUpTaVwc00DXXEKRl5Qj1rguvSP2eQmET?=
 =?us-ascii?Q?8Vh3eEJEkxAIiiKHiokHOzmsl3l72vSSvYy91WGwAyomQmRPl6dknJNiB7lQ?=
 =?us-ascii?Q?h91RwPfAma/EJt14qYIbX5yAZ0vg+9e30lR0keA9qIKzYhE0kj+JHdJrso/M?=
 =?us-ascii?Q?EkQhTm67Wp+r+OyCkfIJ8fBxPZrf4s+yr3dwWh6h8hXyzofJRLYeNpdo17Mm?=
 =?us-ascii?Q?x4nKcGjI6kaGqij/3K/S4JfAzLhGpU403t3JRXuYEssxq9VTO4nJd3dNvcFO?=
 =?us-ascii?Q?49z1dzF6OEtpriAcFkuvVf0kidolE9cJFeMcanoi+9gN2hPBQt3Momtn0gEH?=
 =?us-ascii?Q?A6DvJkGBaBjkkn9zQauALeHiKoU+bLj9neIVtYe79FvqgTI0hR8RVIdF02Jz?=
 =?us-ascii?Q?zsZaMkPbilxIgOjNTE+dTWRUGIdX7d+5rOdU0yF/mXZ997+nCnhKpC3Xhbgb?=
 =?us-ascii?Q?S8onsqI2Owe/SIg5loobd09FqAK8zRUZG61dgVEoXBcSJuCiOZOmOtreJC3u?=
 =?us-ascii?Q?eoKJq1j5OszvODyTv87v/xHVhYODmWYoRw3GXk2KuSNOzevv21YZ8NRNtGCx?=
 =?us-ascii?Q?oh/My0AVtOf/CmTQqp0FxYs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wRc543ZnAaeOxArVrx/ZlBa5Ruf76nf1wvVWUFoQZCvabgRtZR7BIg+waO2G?=
 =?us-ascii?Q?eIDF75vZNWy6P2NZNm9zCM0HXH+oA1ulbgTQLLjafzi7G6XmBqiSt9gCk9x2?=
 =?us-ascii?Q?S66/2Pr4C7FWazaX1CJr0cVhKaGqPRi/q+e7s7sznlhRdSe465lOl3FNcGcp?=
 =?us-ascii?Q?R3Gg/vy+ZxyvQeOjLUobumCUqw+hgRKQjWgCKWFlxl0X9nrgtL0VNC6soDD0?=
 =?us-ascii?Q?bgHMKPedsWW8RFXrBzgdxc9zeuI6CZGZL/r+OpJasFWHftO6n8UTEV48dqtN?=
 =?us-ascii?Q?uja7u7kyBs21pnAQfEL9vUtGy/dH5NXxPVFYAcfovPn2QXe8uIbVfp9y513C?=
 =?us-ascii?Q?g7nGCPRLoJWZzpsUB9l0QSApmTMrhkEYt+bzjF/Tb4lP/cFdZzwFtANUUztM?=
 =?us-ascii?Q?G8sIUEWwHbvMhQfztfcOxt6DnQMhSm96HJK2x+x15mu1b3GbE0K/GEsBRJn0?=
 =?us-ascii?Q?B3dX9Sn7Z8ZsOVQlrMfG0j+4h72Ulcuy1SfP3MGq3wBiPWK9YTe/5AK+6Vby?=
 =?us-ascii?Q?VfNZ4IQ9GJ+jAoH03IUcuHOgfUePSKhWiou1Dq+QVfgKodhuPjEUF0Qh/62l?=
 =?us-ascii?Q?IViY1Xn+QCJE7Giq3FUGaiav2cCNIqUB9EDd72kjyUs+i9xSVlzEGMPimSFx?=
 =?us-ascii?Q?h5N7iirrztpP/B/ZpXIIu8BeSfjHv7xBFN7uAnBU7lpDJvzdbTkDDuWiNnEI?=
 =?us-ascii?Q?3Qz8E9TiBun1oWlkoe0bf/LUYkvmFB869ciBfeJ/KmudBzrKjtiUBfXE0brT?=
 =?us-ascii?Q?sYiDIrCZ6//N28OF3Ii+x7knSwzsrav+wW76CEtpNOk8SEOcZGGUGwcW+SJV?=
 =?us-ascii?Q?yRnkBlU1O3up32mtgPTDS4J95Yy7aY92PoC/deJcxUBPSIbtDI/rVbyROZOl?=
 =?us-ascii?Q?IW6nPU607BIDATv8VtQXVrzKBE5/QbbxmUm+OivyPTga13RlpcwoKCNQj8uS?=
 =?us-ascii?Q?NVR8UFtWpqkelEUPWdSVexTY/K6K2u14dccmQKfHWkr8TlKkZotxazpuaeeO?=
 =?us-ascii?Q?XhQCj+vS6x/YtpHwmQy/PwhgoYy1FMMP4acXN8Q0c5PEEFj/ceqPU4i7WOlG?=
 =?us-ascii?Q?AJVB1RCIVU4YA38/Wb1aBh0B8g9ze09YkmqhzVylvH59LVDlJTsDK3Agar3S?=
 =?us-ascii?Q?mBsgPqM0shR1DJI5AcvhvLJzP4fA6pkGzjZNNa/4Bk3cWbKPkgmtUAxNK/lU?=
 =?us-ascii?Q?Xif3ziRW246lGWNFaAK9GKYJCM6Iw7SeteYmQcdy6HgD/TwXnSr9b8S03Eyh?=
 =?us-ascii?Q?R62odc20zEBjOk2/eLfTDHbg5hW9i4kkzLOspPQMrpcnOZNP9uPVIO6eHs/1?=
 =?us-ascii?Q?+enHOLaL83KLMTG54gkPbWZ30YALcP1tpTESKyWHQwadI0D+q30vhA/6IB1O?=
 =?us-ascii?Q?yRTWJt/no94QlfXRgVUGOXqc3Z1hP5uUDbLOre+i2DxX/mcFKu5OI/uqUHYx?=
 =?us-ascii?Q?cZObKv2ENotLlQx+rVFnue8l0gXcerJ7/jCiGkIcm6BxmVCGexnyA8EJ1MSp?=
 =?us-ascii?Q?AkHZqZHTMekXy8NmoDeVLuoRXz8AYaYNxi53Ae43dlTeJBzPl5NLyS4Vnm2+?=
 =?us-ascii?Q?9JquINS64I9z+xkjwxOzMDsvAjWxNYtvGmREnOF+nhhtPfQ8AztDh1mVVPpA?=
 =?us-ascii?Q?8Iw5fNXiQ2Az7Q8LRjSOsAi4KZK0tx45pOYSanjkm+zwSOWc4wUSO91dokwQ?=
 =?us-ascii?Q?5c69lE8Z1S+i/jXs9iCRFNYr4CJRqbinkOaELWlw54z+4w12CG8/Y+9zFnKZ?=
 =?us-ascii?Q?AdexoGHgeQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f1d4292-e880-4f31-1178-08de734d8b51
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 02:36:41.9903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DO3/ZaIsRZbl/jvW7wXzYuSQy/dV4jtCdJtW5OqqBW/OduhLEJ4gUc/WNUrjaSJBYAgPnf5McVS5vwhQ7v2opQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8407
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA0PR11MB7307.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 721681810D2
X-Rspamd-Action: no action


> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, February 23, 2026 10:15 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> intel_dp_tunnel_detect()
>=20
> On Mon, Feb 23, 2026 at 06:12:23PM +0200, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Thursday, February 19, 2026 11:58 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> > > intel_dp_tunnel_detect()
> > >
> > > Clarify the documentation of detect_new_tunnel() return values,
> > > including the failure case.
> > >
> >
> > Can this change be merged with the previous patch as the previous
> > patch makes this change.
>=20
> There is no functional change. This patch merely clarifies the formatting=
 of the
> return value documentation and documents the failure case, which was alre=
ady
> possible before this patchset. Therefore, I think this is a separate chan=
ge that
> should be submitted as a separate patch.
>=20
This change in the return value was introduced in the previous patch, so up=
dating the function header documentation  in the same patch would be better=
.

Thanks and Regards,
Arun R Murthy
--------------------
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 9 ++++++---
> > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > index 5840b92dace19..1c552a7091897 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > @@ -241,9 +241,12 @@ static int detect_new_tunnel(struct intel_dp
> > > *intel_dp, struct drm_modeset_acqui
> > >   * tunnel. If the tunnel's state change requires this - for instance=
 the
> > >   * tunnel's group ID has changed - the tunnel will be dropped and
> recreated.
> > >   *
> > > - * Return 0 in case of success - after any tunnel detected and
> > > added to
> > > - * @intel_dp - 1 in case the BW on an already existing tunnel has
> > > changed in a
> > > - * way that requires notifying user space.
> > > + * Returns:
> > > + * - 0 in case of success - after any tunnel detected and added to
> > > + @intel_dp
> > > + * - 1 in case the link BW via the new or an already existing
> > > + tunnel has
> > > changed
> > > + *   in a way that requires notifying user space
> > > + * - Negative error code, if creating a new tunnel or updating the t=
unnel
> > > + *   state failed
> > >   */
> > >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct
> > > drm_modeset_acquire_ctx *ctx)  {
> > > --
> > > 2.49.1
> >
