Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC351D3C1CE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 09:23:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7371A10E098;
	Tue, 20 Jan 2026 08:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ByFmVRnG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708D310E098;
 Tue, 20 Jan 2026 08:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768897413; x=1800433413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QaGfQAJQm5GRjRsj4PbtPRMjuce038qlIOSsTIohmpo=;
 b=ByFmVRnGj7E/3hkCrsXWv9bRrTmtKEEXGAURimriJvgyIxD+4spPZh7K
 Sjh3aKSGdpvkKuOFk8vuDvj8GpPr3shHjrFif8p4eHtzhwQpwu07wrLz6
 SVnnLxZtRDU4GyanTEiRXU0K6bT+G+gFicK24pUD5ARc1OxbD0oZZWmMn
 J8HQAnj14t+g7MX5NK6+fkpzoiCsSic5nL/gpU7nOSq5Q7rTE0eZ7tUxR
 9vd4Zma6WBi3WNP4UHTAU6VkEOFNQ1Kh0bmW2rDfujxf118iyWLas+IrD
 QOykbDtk+OB5576FK0ykWigRIiPjuI0Inz9/60HfWqpjrReD9NJ2c0dy/ g==;
X-CSE-ConnectionGUID: GDILIIppRViklx61WhEoIQ==
X-CSE-MsgGUID: bhjY2HNiSLqo2UHsyWzZiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="80732622"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="80732622"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 00:23:32 -0800
X-CSE-ConnectionGUID: zaclvGdhQRantcnV+Acjzg==
X-CSE-MsgGUID: vqPaXMheRAyoOgAxRo8kmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="205966621"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 00:23:31 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 00:23:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 00:23:31 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 00:23:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ua+83/4jjp/wXM7ZuD+Un6C5RJGXAbtLkDxx/v25W8wtBaWvYqpePeAwqEfRG7p6jKe6bhGkEV2goq4l+f2KMIhnPR1h7sPO44eAyjot30/K00iDB9i/6if/3587EGsh+j7Qs7kKC/LZjtIfernsx1DQGu4htWza+uREDWnAQEJZ39em2LQB7aTz07LFGCLAw5WMXkqxYCPEjp6QvS4mBaVs8KCu9dP3bT/OSaA9Rfkp1Egi3BD2DEBgZFbFbARMWhEBPepiwH8iyN79OGpgQnRnJfrE+xY1sk2BaSsJG1XCRpHeT5qhMyfbiyRTbOsORM/u4EMBXGR1XaA89qRgMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PdYRLJASrb4+RO+5SnmM3DLOV4b6MJckcFy7EnWe/o=;
 b=IZLPZeiX45AAtMlKVzK2nWJc3NI2/+HmF1IpK7VrIbU/xgbIiWdFLayvFa6KYrHfKFkRSbJiEhbhM3xsGRF9aHhSrbkxauM7nHlo7wjNNDCLtFDAkHBldFiR6S+Fe7E+WyIFZsM48ASWyLS5KeY4RX0FsyodhugUiSsnGNV561hQ5d64jEmqj9Pe9clm8o6gJNp2dIRthAvIcO9KhZuKR+UhdarjM1zr8MTxbdzkJqtlBIkvRfkumSrqvkUI+csJ4g1yRrlnaTZlIBs3q2OGX65GMuFndNFSXU37ctrYa2TNsWzkRLRmmedQeVl/9EAIQDMcYad+UPmOmb2jfmk47A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by LV8PR11MB8680.namprd11.prod.outlook.com (2603:10b6:408:208::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 08:23:23 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%6]) with mapi id 15.20.9520.010; Tue, 20 Jan 2026
 08:23:17 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/display: Disable DMG Clock Gating
Thread-Topic: [PATCH] drm/i915/display: Disable DMG Clock Gating
Thread-Index: AQHcicnNqIL2Ari5LkWuAvW51YKtx7Vat4cQ
Date: Tue, 20 Jan 2026 08:23:17 +0000
Message-ID: <IA1PR11MB646765DC8252C407F4218656E389A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
In-Reply-To: <20260120050033.635681-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|LV8PR11MB8680:EE_
x-ms-office365-filtering-correlation-id: 4efd1c3b-e7f2-42fe-5060-08de57fd2a30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lfYK4n24XuYadmKbx4mXfIts2oiN3bZ4YwYTY0ZppMYud0Yshrwlov51egZ/?=
 =?us-ascii?Q?AV28nTfMBk7wNxJptxd+qkr5RkZLbCCF5xuFIQ9P0/EjMxDckdb3HDo/BdhV?=
 =?us-ascii?Q?1lXxUxdPREwH43LvNC2R8hnqxUxZyzM0R00rtjk3thzCTOzn0HIYFFLyiwUY?=
 =?us-ascii?Q?/fYRuP8AhQtQ09/Ais8WpzVT0/+bSCyQem4nGIMvMC+bZblfMdh7/+Tan0ai?=
 =?us-ascii?Q?NhQpnK2fdnxrThCStDGlOtJvSk/OTlrTk8lWxrhTSlxdHAYXYM11w/vQESnn?=
 =?us-ascii?Q?3Ws7axVBORMpVssTGOJg24dyvauOucPxVIiwr29eRyksdGHn3iNAhOBws99i?=
 =?us-ascii?Q?qIZDK3DdK1N5a60yuSHmaghi6ygyjcVP4eMrf2AtLMsk92JAaN+78XiaVxue?=
 =?us-ascii?Q?2XrN4NbdWAGe684CfV/xTa4XR02wbbz+CiqwrULfskTx4rT3+td36tXAfbUE?=
 =?us-ascii?Q?bca2N+36VWOylfPtf2AtlNlFyzCZvHsQhjV5wa5dAXicLUq54/Q3wDww6ag/?=
 =?us-ascii?Q?HKZxn1gmBCunBdapCIo0BOr4W6Rc1Q9GQ9WMYptqHDL/CfKxk2RXDyYZUFIu?=
 =?us-ascii?Q?WGRe1K014AzJfhenxcwj/cnI3/bCp9FmMdWUmaA3uAPHAJFmgfUjy7NOSJvV?=
 =?us-ascii?Q?A8c4XNIU7Gi3AyijtSn7tkn/nrGS67QSBqipbXlD02iXJ3uxSfcB6t4lc1Z7?=
 =?us-ascii?Q?zMKoX1nWXRXbJAgQXthtJfCQVLWJo0yxfNgLebSg39XvTx19TabNGpFLC5Hx?=
 =?us-ascii?Q?gUPGjBtRZpid6UpH8PJirN88xqqxOFpeahIdgV5ucmqEhFv0GvX7tj89g9Oc?=
 =?us-ascii?Q?0FQ+SU3IvRtZz8vIMvYXJ6k/lsNhnZQeOv3eCdKaTvgpfoxNHUwCR6IS4rP/?=
 =?us-ascii?Q?TWDFe5n7Clow7fEgC15AVtshcg7E6M+b7tRiAOMisNxiiSV7jQcSnGCDigkB?=
 =?us-ascii?Q?VDcFw626NO7NAzay1Qo48yuHorFF9ILF6l2UbL0ZErKntR8VJzuenpEf9U+h?=
 =?us-ascii?Q?93sXLW8R8Ep1YQr+GBGpfK3d796dv9pNN8v92OFVNH3uJBQpXY7GyH4bclHs?=
 =?us-ascii?Q?f1AXfzfs0aiN/JRf1yVMa5iBcFxMlYLxrxJhqJsUDai8iprbIkXoI246Gc6D?=
 =?us-ascii?Q?N7t56MGJDTbPZbAucWpqQumKOW3dXcdBcv8Jan+2OSbfyUDaysWsFJ2IEQkT?=
 =?us-ascii?Q?bdSzvLYYXvT5rar8Bvf7qrysKQ2dDuZQp4Tg+4y8tR8Wv4yZ2fVUL3QAKYUe?=
 =?us-ascii?Q?0AzzUlnRZbE5mUGrEDWb7a58QEWovFqstIDY3F3rBz1kKnDVGY4I5F6ZP2Bs?=
 =?us-ascii?Q?8hS3UgFsXCZt76k+4FbaCVosAMMWbBr3vjQPgNEd8Upx0yNxKCYX032PCVpc?=
 =?us-ascii?Q?KKkZej3i12eqb5t8DHlqrCa7xAnhfkRMYt0N1+Pj02gJPbT8HtpCgJQJxZ6g?=
 =?us-ascii?Q?AGaMs40+B8qiMo7SQfmzDCDpNfGHh3DsRrA7P9liMY1vRZUHGuR4SjkWzye8?=
 =?us-ascii?Q?zQpUE3lwTIxPLPJBPAtnI7cPfwqxXY0aT/eRtoOMMgs2sDxxN54fa7pLZS29?=
 =?us-ascii?Q?ln/vynyMSsFXRK+PLl4kNhJFKL9wU49a8UPw+z9YgWUNbHN/B9XIVFzBW0ZB?=
 =?us-ascii?Q?TF8nGEY/6T+BNXrO1/ZJVpE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MM8nh6EkJ8Ny85LI8X8B0ABt+GJzk2NnpX6SaOv+nEFrGilqvPm1HHWgd5jN?=
 =?us-ascii?Q?kalfscTEuVdnfOHYnQHwP1NhIGuLr7t37wKWcp9knTXApKUt5/rnnxFZxlZF?=
 =?us-ascii?Q?ZpnEKemeZZLAx8O+j30B4OFglcbxysapV/8QLkcSYAanPAcIJ05jozGkMdAW?=
 =?us-ascii?Q?y/lcpeUGGZwwzj6F3iWACB2V+VRa6e1QX1eqwiQXh07hephW0tGYKWjJ7AQP?=
 =?us-ascii?Q?qShszyWc1TaqZhSqbgchbpQWgSSjj8kiC18MOiP0j2ZhS+YPfo0xyDWhvHmr?=
 =?us-ascii?Q?x8SrHftzrmhQ4mk12kvn/2WQY6vP/upx7rs9QeJ70SJKnWNITfbq/xKuiShW?=
 =?us-ascii?Q?KkFQMU0IlCz+YJArptybpe3q0oeryrguOjhXKd5DTgyfvcl7eb2P/Ndh2dfN?=
 =?us-ascii?Q?Vg2xtEAEa7V+oiRYlsMd+uN/+WcY2N2hwNFSOb2TBZ18OwFZ9BsctDaoBhmT?=
 =?us-ascii?Q?lu/wBCy/4z51k/CfQhWPWOB8QOsbfx5jyRhxxU7aKmsBHFgOyooDK2yBnJb7?=
 =?us-ascii?Q?eZ+F3u4D3LH6Y0lGcTYCXFMzlGp6l/9qFkXWF5dWLSh0GpiAjd6ol8PX4sJP?=
 =?us-ascii?Q?NWJT3u5FsqGqm+p7CuBAFW3q8nMpb4oY1B12YFY0e2BsCouATwXyWHu6JHiy?=
 =?us-ascii?Q?/WJMoKReM+rgc9OOwzaJgaAxJLCfvYX06HH46/yf5aAO2W617wIX03IG0n8j?=
 =?us-ascii?Q?NUUuUO4lW90QMbed61yesmBtEeBQvf/FHLB720rSZX02pATVPeGjtBxXWeqx?=
 =?us-ascii?Q?3CSabA8SehRsx5MnW6HxBTlhVD8o/58/Vbi4LLhD/7cbtis5g3sGqP1j2h06?=
 =?us-ascii?Q?djJ5eDRdnxfYS4GzsFJfgocZhNQfaXyKfRInUXdJ9wPZXlPIA6dV9c7GJb1W?=
 =?us-ascii?Q?wIgK7fwfyDhbxv8jerDUexpjS6OXADnW0s6XBLmXWEN2zYPcR8I2l3/HbOmy?=
 =?us-ascii?Q?l/vAwjXKMtOSYbGGz7cFnz4a1f2tWVob78WJS4xYa+KyiHGhCN0Ua7CZYn0O?=
 =?us-ascii?Q?6OXQQzdfow5M04h1QOA/EFlRzh6ClkNTOuFsheDTMm1DoX1isEA+vvaBHCTA?=
 =?us-ascii?Q?slk8JqYXxUlZEggOvqP48t0AQX+ED8AbkcIlAohXB+JemyGKlBNfzxNFVMWw?=
 =?us-ascii?Q?7wQkI+MWvEXpG4Xmyv6DiemGTNm1gI/XRy4zFYvW6P1NQjJGpG6vNuOiV0tN?=
 =?us-ascii?Q?YF79l4Vimzfa6tgdSwFHYwYRgCo4eB4rHD6l6+KtSpGA+obFNo9P2VZScFe2?=
 =?us-ascii?Q?MnpXi/y0CdaHZbW/L+AdO0ZrVLQl+n2/TOU2KCSQAd2ckymRcZSQiLBmLFM3?=
 =?us-ascii?Q?hD+JEs1l6nN7y2nRRglTauDIjyFVzK4wyrGt6kpBedwqSJEev+GOnZyDqilH?=
 =?us-ascii?Q?K7k+1kZ3WsTIyzYjZTUfzbVbnJfqZrIZ96wJGJ2p0pPxO4UdBpXd2F+nIb5y?=
 =?us-ascii?Q?bxpCuPRMUD3UiN9hHR88OrJh/dUDScnkOmWZFxuRRXVFtSBWtaAEoBZXAnAF?=
 =?us-ascii?Q?7pzrVqM/PJKDAm4MwLIKQ4c7VYVdmu3EPI7vhapVxh7PZDxl9lBurlauFWAi?=
 =?us-ascii?Q?IQtLHKbFr/tdjI6Sja4NIWHg5EE3u3jRYFbHlsSlMPmcpd+K3hGparpDODe3?=
 =?us-ascii?Q?RKCSQ759MYAjqS8hTR7BLBGYioAUrOqwSpvBaZRdcXtpxQRV430KeaIUFcVF?=
 =?us-ascii?Q?zmDksMdioigECjtwZoe5i7EBXL4mCb/4IhivTdZeCykAxeAR16VpgeI+O5H8?=
 =?us-ascii?Q?F+Cb6UqDMA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4efd1c3b-e7f2-42fe-5060-08de57fd2a30
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 08:23:17.8409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CFeaUdTRfmoRbRaEf3vvvP4cYTwIBI6AIDlq0vpKp9EbI4EkiC3QqEJUoLofIL30UmELm4CPfwSwHN8edweXbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8680
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Tuesday, January 20, 2026 10:31 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/display: Disable DMG Clock Gating
>=20
> Disable DMG Clock gating during display initialization.
>=20
> WA: 22021451799
> Bspec: 69095
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 7 +++++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index d10cbf69a5f8..2d46f00bd0d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -910,6 +910,13 @@ get_encoder_power_domains(struct intel_display
> *display)
>=20
>  static void intel_early_display_was(struct intel_display *display)  {
> +	/*
> +	 * Wa_22021451799
> +	 * Disable DMG Clock gating
> +	 */
> +	if (DISPLAY_VER(display) =3D=3D 35)
> +		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0,
> DMG_GATING_DIS);
> +
>  	/*
I guess we can remove the comment, only wa no. itself is sufficient.

With this fix LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
>  	 * Also known as Wa_14010480278.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 5bf3b4ab2baa..f928db78a3fa
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -763,6 +763,7 @@
>   */
>  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
>  #define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   DMG_GATING_DIS		REG_BIT(21)
>  #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
>  #define   PWM2_GATING_DIS		REG_BIT(14)
>  #define   PWM1_GATING_DIS		REG_BIT(13)
> --
> 2.34.1

