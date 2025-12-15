Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10541CBCD15
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 08:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B3AA10E150;
	Mon, 15 Dec 2025 07:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kEsRfNV5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11FFD10E150;
 Mon, 15 Dec 2025 07:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765784556; x=1797320556;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eGtSngGWU3Cc3HH3oDdUhceucmSXH/Zo7Wkq5OT0pAg=;
 b=kEsRfNV5y+WAuqYQKLIXL86A4hz7PoB1Przu9Ykt7PLZmHwBBmLFTq4Q
 5MyAraR82PLgOvndOEicSTgISXYjQZQeaXRw3vlwjonrpXlq+op+4hPiZ
 e2F6XvOKSWL7IZxzI5wNQcXqSPzKTswpnxgwxwWKS9QUc/uA6gOeEJlGA
 Qh9HXA/NNsU//PoAJVUzTTi5OyZkQ8d74yN4Z0opJH4eS0RbEnvmtvIqD
 weG0THzJ0bnMmWlKwPWVnizD6Mgo1UfTuDpAetlTnfw+5n/N5rRTTri7B
 ePnCAUYlIXUvn6U4WfHBGwSgceYnvIoQRYT9v1kQBqoYyqkucskl9XB1R w==;
X-CSE-ConnectionGUID: DjXlE9CSSNqwgrShWutpRQ==
X-CSE-MsgGUID: km7wzqHkQFWeBuMwY2GocQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="71535449"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="71535449"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:42:35 -0800
X-CSE-ConnectionGUID: CmhDR/1/QnCxVS0z6vJ9ow==
X-CSE-MsgGUID: 6YDD2EeFSkytqm3AQiJ06A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="202567231"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:42:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:42:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 23:42:34 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.59) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:42:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mlyo7+V7g6wD0lQQbVTLUfrUhmOHRDEdziLpX2R4YBUUZdpw4KWyPwiDjMOzWBpZ4IbHEPakt8v4eruTlqFWLK7VDRn77Wxba85SBekD0eoJ6FTXz64Dtr0Ult5EjkJRdJkX5ka813grki70CO9Wnh7MHHacs1yjCJpQuRC53Hkuof+cHXhf80WSzH5wM+ZRAW4OirKtrm4MPC8aaYdFC38eqYjZucSSH4Ec/haAYfjwHZYZwUX05wNEPpw7XAjLebK0QGzyX5wJRbvEii1Kn15QF/O23KNZvdAiNyYZ4k3UUHwYJ6ktXoft3phe+WxLdeAGnWgmmVIFNKK8XL2ZjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+aHrFr0wVWZ8imuxF0XpNkFyAVfi+I+UgiD9AyZRbis=;
 b=O4GpVR9XejPUpWRn3PNPb5JUUjdARodNmMh/Z66jtQzcouOkV8B9jrUolECx5Qf9cetsbN8g/gXQtq0ZfVYvNoS52yj2gWF7lNsN8tH3uWogvMNYZ1Ir6tOpsm1UvRCxmI3ZrRyweXul4CGIPH+aI4CNqRYrisd7iuw8pFPWsFYONpwgAEOoYwaazfJRLVH9ka/AjJ96O9K+0oWInOvcm7P+rvaH4xHZDRiFm0QDr2EwAY6+Kgff+c0WOIMUkIaGMbbaqVJfyeis88sKdk1iLvAqbYWVwKZBKBMyZJ/u5xXppSwYd126x7CFppF/EZQO6+rf7iIbfUMZyvEU7ZncmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 07:42:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 07:42:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 16/17] drm/i915/display: Add function to configure
 event for dc balance
Thread-Topic: [PATCH v10 16/17] drm/i915/display: Add function to configure
 event for dc balance
Thread-Index: AQHcY16CG5wJT0zfmUaJcUJZpsfbmbUiZdYw
Date: Mon, 15 Dec 2025 07:42:32 +0000
Message-ID: <DM4PR11MB63601A55B57727C827D7904AF4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-17-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20251202073659.926838-17-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB4893:EE_
x-ms-office365-filtering-correlation-id: 44dc1756-80ad-46d1-447b-08de3bad81e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8ARyaVMWWbulM/M5got9rKzsqYuX56nJQcv6pXoHtud0MoOgZe8SROcAwH1c?=
 =?us-ascii?Q?Mpkc/ixRgNeBeyU1vi7c3rcSXY+7/BU1XxjxiNxbHtDhDyKaSWiPqrNewBKM?=
 =?us-ascii?Q?Xsg34VaUCPMOHrWbfCZI7kdhhq/aZoE5PkzSYL2Bxo1ja44xIYWYuafsto/o?=
 =?us-ascii?Q?wbmJOORPikmzjD6l5QaeshxU0jjGPxQLg19nItDcK8hDosJ69Xy4UIZuaG2Y?=
 =?us-ascii?Q?SF7HtGOHnewwgoTok6o3Rydipxt+Zqjiw2N8Hlf8cXkm081h7VMLxxZu4IXF?=
 =?us-ascii?Q?tfI0ByKTGMWQbD3XpV9QMYf3Xe3MuimftCcYfbff8ewUDsG3SmEAXvNuvFqq?=
 =?us-ascii?Q?T8U/r1ujhg24BMGXyVrkWPNQt7k/ENXDBxBHhQDCLzjhPsbQTaXnnJNkwaJK?=
 =?us-ascii?Q?bKL+QdAGtRP5i0D1iSShcMBJTaM7IwjM1LZxfmo/QPpH4cGqBhaVhHe7tKtA?=
 =?us-ascii?Q?b6wxQjTOEXaNBURospiRrHE7Mh+rdgv1RcTOyqXq8F3yghqxoeCgGI/1q7cz?=
 =?us-ascii?Q?kgwqr2xB/tTZU5NdBioabl3FEtzc9KQl7oQYRvx4BsRhgVsUb9S6OAQi9q0q?=
 =?us-ascii?Q?c3l3JfOTfvXU95jgro82RJ2O/eqzFGaxeSibSyGBh3yUV4U0KT30Tzy9BdFJ?=
 =?us-ascii?Q?AHQAQJlarBehR1yjYKbWSPOzhKZ0avPHvjU6CypIVVDmj6HcsLGCYQOaUfPO?=
 =?us-ascii?Q?F5z2uuHEqivHZzEJhcTd59XOcSVv5uzzXR77rfItpgkw7tRRRIcjXs15S7SR?=
 =?us-ascii?Q?GBgZ07PPkhxoz4HqFdYLzUynfqBLVARMzBkouBer8fle8E3+fvbAmGOFU0ZS?=
 =?us-ascii?Q?RdEUYSnobxO6/xaPKygLM/JtjauDAl7ds8y44aeOVpM+eyBtTOOi4MWMC2Z2?=
 =?us-ascii?Q?Tm66Siw0w0lLHgprwo1GbRQZfKh9Iww6Nzh/djK8jurMjGcILkqHCLjqu0Pm?=
 =?us-ascii?Q?FRZ7KqW+E9DJ+p5LjTLQ23v8HR/9kEpSO77CM2+i6PaNQERogIsWmRcosyCO?=
 =?us-ascii?Q?tTkmg5Usd6qP2y3sfo3GeLr++QXp6HWdJOZ8sdeHBzLvKAoaDK605qjDnwSe?=
 =?us-ascii?Q?ERj9/F8JggYD6EmVbNeVovVvThplCOm0rwUqsHQ9kqdplQMndGfm9CjMxVDu?=
 =?us-ascii?Q?8eSAiiiONq6dXHtUMFXe0/Q+64tDx8X8dlBmI4w0Emfph/nnvLDiB7+kbZXj?=
 =?us-ascii?Q?Cc+W2qBQZxHM9cJWaa0JDwMn3rGFvT+E4gJOGKwCgOdSPVrdE8j8qknvV3nB?=
 =?us-ascii?Q?2TzrEU+7scgoANTvOCQs/bYpir2y/K/dbfeMKgFOj9Xorfxe1qNphlvL4Ttm?=
 =?us-ascii?Q?vvEcPKzIFp+cttn+GA/MedJ5DV6rGYMIt7knSqAGTlVkwgZOoVagmj1NOhtF?=
 =?us-ascii?Q?29soDaxYpsOnSVQdsR/Sg7KWUO8LJgMTizgV8sB7rQR3dP40PLc6mtIsbtay?=
 =?us-ascii?Q?L8rlK8lkowETqkdqoAgyrwJRlupl92eWomh+YJ1qp906UCanVCtM8tdQcwuX?=
 =?us-ascii?Q?zASnNxXZqJpZL/wQa8LiJ2i6WBPDPZirxTmq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fxxmDiBYyyCrAbbizTC415CV5yTlF16rCvk55MiUnf9099uvbjUTpA8Y46c1?=
 =?us-ascii?Q?cZ+beJQdl6tXA2zorOfhSYP/Zg5T8Y0OrqzbOX7lVCs/cZsV3JC/vBKyloIR?=
 =?us-ascii?Q?5BWWgnGzxqSZ93DusYj0/hYjGZ2X5mKl+mIZNGqYvvK//7CCZyKESmkZYjth?=
 =?us-ascii?Q?5RZmV/pA7AdswiV2vnQJfXNw2Zt39PT1EBd8s259pyoSt5Pvt3Eg1zJCIWnz?=
 =?us-ascii?Q?P+AD4qi8a7UjFmVAWOuESKETfZYjyFbeAb4iukIABhNye7UYXsIHRo95nevX?=
 =?us-ascii?Q?HNisZW1EiZl01hOb9qdn6tqCy5XthvgGVnB0U8/lREgZG6NHjMMX2Nib8TLM?=
 =?us-ascii?Q?v3uN2HunR9XRKyxJB80bnE4fhx2mpWf1/q5hDxH1rDwsC7I/0fj4lrYlAoG2?=
 =?us-ascii?Q?hE4Trtxho/R/P+g05BjATJDLwKsCtsmJpB+KwSbof1fnPoszG3avDTo3qCbz?=
 =?us-ascii?Q?J8b7GVKCKaABBqFSlHHnnItjSNOCwIqjTH41W26hyrmkmBwDOaeBNopDExhk?=
 =?us-ascii?Q?qVEJzWNOthUa8F+5+NsK3v1FrpL4xqbx2Bt95ZMBDEHC1a6OdIeswxm0lgme?=
 =?us-ascii?Q?xzGEOJPeXSxx4/vTsNx1huEqWXM3XjsWp4qrBYhI67/80b+c2bin0pgEGsYX?=
 =?us-ascii?Q?LeGfIA4SLPzfrE+CxG82LxcXWfl5xJ7BmkJ8NvlC1GZaPV/mdrN8obaV8RzA?=
 =?us-ascii?Q?2xobUag0+91QEcHt+M2uE0SHKqWfR524T9xeop3Z1EQWvdOiqhhszTYR3Vzj?=
 =?us-ascii?Q?NTtZHO+D2k7CyiCXo+tigDaEC+uYqa6rlT4a+dnFW+pud7/BMK4GzPrvE0nG?=
 =?us-ascii?Q?mJ1oJRT5E8bk1ot9wLn+XXa/TSalkF/kjqtxdxdwfjRm1QSyisYfgQCb9mbY?=
 =?us-ascii?Q?IQv1vOpiH4L1HL6GANf+RaLmLOddQnrYaMPhlkP7PXRP2fmgBB698EOIirj2?=
 =?us-ascii?Q?I4bBLPSojHej8Y/jzs3Jlpminvs5QdhkeKy956SV5Avmsrr1/f6Sts4LdUyl?=
 =?us-ascii?Q?hxTtwTMs+F9QxeDQa6yvaSMQGl/e1p26zBOe9sP7XRWkZnO8+oiiHeowo9GR?=
 =?us-ascii?Q?1S8fxSlpcYDn/MpQ/hz2hHYNsioMRqyXsZxbZn31FAB+8FpwjfvAv5YoCLU5?=
 =?us-ascii?Q?J621wHmwSBR3zamv0Jr3CaK2R16SukfuCxtHZSBjrjfQb9CcH55yUjxxnjOz?=
 =?us-ascii?Q?xydoF8CI3H99TJomqrX2RWJe3HWXhUSBYLawAecY6ae9CuA1tpU1fnstMcgB?=
 =?us-ascii?Q?ChIckHcu8JR40pvYBUaBs+JN+hFyZ2BC0zQO4W9BP/4V6Gg12kwuvD93oZZk?=
 =?us-ascii?Q?hmS844uWCM/sSLsCw74huag6wBw0BhmCdDFWXDmTD/6b/xezAadB9ojvDGN6?=
 =?us-ascii?Q?3koXYWaQQ90fcVgwramumytZF+wUwiWa1TeFlA5i7oWVFSiIyD101G0xAr58?=
 =?us-ascii?Q?qqtsSn6XApWnATLBW7+5TYktLkuxrchMtH7LkhAvgK+wu4yGTm6MaFVCmgfr?=
 =?us-ascii?Q?i8QHR91ZBmH2xEWJPOEJUT/18033apY8NkZEunJ0+KVUqQl9YrMmXiw0/DeY?=
 =?us-ascii?Q?vW1YIO6BMwLs/Tiw7b4CvBt7kkhFzY3auZoE/TUE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44dc1756-80ad-46d1-447b-08de3bad81e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 07:42:32.7447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BlUjV3Jn5aGMIjChuQmAdFIa1/0w0RdOv8rZoAoVEg32RISD/sHCe34BmTEAdpOthO47kgsNemjmX5ujZP1puw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4893
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
> From: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com=
>
> Sent: Tuesday, December 2, 2025 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com; Shankar, Uma
> <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v10 16/17] drm/i915/display: Add function to configure ev=
ent for
> dc balance
>=20
> Configure pipe dmc event for dc balance enable/disable.
>=20
> --v2:
> - Keeping function and removing unnecessary comments. (Jani, Nikula)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++++
> drivers/gpu/drm/i915/display/intel_dmc.h | 2 ++
> drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
>  3 files changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index e076ba7e0f28..1182bc9a2e6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -859,6 +859,14 @@ static void dmc_configure_event(struct intel_display
> *display,
>  		      dmc_id, num_handlers, event_id);  }
>=20
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable)
> +{
> +	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe);
> +
> +	dmc_configure_event(display, dmc_id,
> +PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable); }
> +
>  /**
>   * intel_dmc_block_pkgc() - block PKG C-state
>   * @display: display instance
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h
> b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 9c6a42fc820e..3d8a9a593319 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_stat=
e
> *crtc_state);  void intel_dmc_disable_pipe(const struct intel_crtc_state
> *crtc_state);  void intel_dmc_block_pkgc(struct intel_display *display, e=
num pipe
> pipe,
>  			  bool block);
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable);
>  void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel=
_display
> *display,
>  							    enum pipe pipe, bool
> enable);  void intel_dmc_fini(struct intel_display *display); diff --git
> a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display=
/intel_vrr.c
> index 38dc4f87e6fe..ba8b3c664e70 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -823,6 +823,7 @@ intel_vrr_enable_dc_balancing(const struct
> intel_crtc_state *crtc_state)
>  		       crtc_state->vrr.dc_balance.slope);
>  	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
>  		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_dmc_configure_dc_balance_event(display, pipe, true);
>  	intel_de_write(display,
> TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>  		       ADAPTIVE_SYNC_COUNTER_EN);
>  	intel_pipedmc_dcb_enable(NULL, crtc);
> @@ -840,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct
> intel_crtc_state *old_crtc_state)
>  		return;
>=20
>  	intel_pipedmc_dcb_disable(NULL, crtc);
> +	intel_dmc_configure_dc_balance_event(display, pipe, false);
>  	intel_de_write(display,
> TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
>  	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>  	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
> --
> 2.48.1

