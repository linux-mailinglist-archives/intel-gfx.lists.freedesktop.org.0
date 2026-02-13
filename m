Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGdsDD3gjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:26:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A396134012
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:26:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD3310E7B0;
	Fri, 13 Feb 2026 08:26:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nWgI6cb/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7406A10E7AF;
 Fri, 13 Feb 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971194; x=1802507194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6dvlG5sh9e2pnaQoqKitlDQ7U1CO3x3+Op40RE7Plf4=;
 b=nWgI6cb/648JhCL9OLQR4rsOWY+pfKxHmRIvvZo2sd1+R3dNn8mAgQTK
 BxrEjUvI0XE85C20GGyuDFkLA8+97QUjbewVG6Ykq7yEE/ZYwklldkjyE
 vZa2sIqWJ2xs+OcP5qsHIdsrurRmIqyC8AiqWXrdJcuPEj5pIoF0tbTMQ
 eY91sVGEB7YhhpTqJqy0vLRo5jE+cszU7PN0huaQgizzEROnFlRtJYtdl
 JAo1AYLiCGqXn+TbsPoj3zoab1+Vq9nCFC7aMqpDlJ2lKP9XDUikQ/QtK
 OPXPbmeGGfXuIKefXHn+bdJpq5jLmRb7XRyBG4xHA5xrDUxOKUwhk3tuL A==;
X-CSE-ConnectionGUID: zVzKJoMUQFezPOvUnpi7YQ==
X-CSE-MsgGUID: BLfVavs9QUG0MSUXJ9jQ1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="71352750"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="71352750"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:26:33 -0800
X-CSE-ConnectionGUID: nv5O7ZiQQSObvfDJD4BV1Q==
X-CSE-MsgGUID: vNkpiFPxSIKG4K4ZwDo7xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217021852"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:26:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:26:32 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:26:32 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:26:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mIJcLPaFOwR7BdFGUcsTgXiS979E7KVRpw7z8ibFvEMq73l+z9IsaX7T1L16knKgA+daWkVL3WzZKVCf/zkwkeAQdz5SZsCQfbXR/40EjM3EJaxa9Zho1Ha+etopVDowcDn0TBDDcXN7OSQ60yBd40cJ8YIEWikCh5Dbat3Dy7dKtmHeHZfo9PW4PgMr0RB2U6fZSCQYVfPtHs0XoWVigJIkUsdjILXtckqrhRKMSt3i+0NCeINqgBkmTU3ZQ18qHWo96hj+LBVVheYNNQHYQ/ZDdj6pszzXZlZnmt/WCRZEPDs03FgLmYOyuvAUCt6joJoFgmPfEWea4rPp7hQyEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fhSTHtQSn/WgKTpdLCWzyUUuTu5UQaJODLSkp9J5ass=;
 b=X/R9nY6iXNLp73rXPW+9i5Ft+Z3ZZ7AjymlJQ1jwQBl/vIK2BmwS7wJo+m5gu0KLBYru0QqfKjlFfoH3Y3gt+N5vaSeNblwg/Y71DD98zlWj4y30Kzb1B/FEzklZGW67sYh1IytrJVdbNedi4XFWgZvgiMsEVttH3wNbiJRGxAHjgyLssR7KuU9pucpYplfzo7RsCWDmLdm6xHerWDXr5WXBXTGNGrsopEMpViBnj5JTpv0H7uV4braUcZaaDUR+xLvvPZYyOuycw0kildKgv3RHDeSeQLvFYuskNB2IM9VsrkQINbNG/Rxb3QRJDcaUvOM8hGlYYHOfGjbmUmMR7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4666.namprd11.prod.outlook.com
 (2603:10b6:303:56::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:26:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:26:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 10/15] drm/i915/display: convert W/As in intel_flipq.c
 to new framework
Thread-Topic: [PATCH v2 10/15] drm/i915/display: convert W/As in intel_flipq.c
 to new framework
Thread-Index: AQHcnFF32MLBCiL+eUeBIu4ZcCVz17WATBIw
Date: Fri, 13 Feb 2026 08:26:25 +0000
Message-ID: <DM3PPF208195D8D84A8AFB4D4671C3642B9E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-11-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-11-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4666:EE_
x-ms-office365-filtering-correlation-id: 5d03b874-5f5e-4c43-f930-08de6ad993af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?0Zhzm1aQPKUrTTA7Lg94RyTntAaC7RET1J66LY5TK6O5SlibbDbBj7vt4lfM?=
 =?us-ascii?Q?+7UYq8fj/3bq5xU+9DAfAeIZHxwQA5jrrhOfw5RoQzzsFTLBhMKzNTaTGvBX?=
 =?us-ascii?Q?N38d5RP12GUw1/OMzLQy7pGaUZnNsjVosLB/tbhIh78CymKoUBhp1vbMiXo+?=
 =?us-ascii?Q?gEjZF0XSHDo6th9Z0JfSXwlFrmLCoTnMBENWNJ2eFk44xevsdh4i0zE7KX7Q?=
 =?us-ascii?Q?jvauy1HUzTZPwwhBBLh3XaxoXV1VPJoXZS5aFM4/ScesZfqtoCD2Mj7T9LoF?=
 =?us-ascii?Q?EPmKepEfa2Ic4eK7nZHFd4Pn/j53W3cQ1bKd398hfsr3Q5LgGAk8WbmgXTHO?=
 =?us-ascii?Q?Xz+Iv4Ax28aNN6fw4XB5BRVzWKm1TsSt++No/DvunwxXnZ5lQYnEAIjhl1bz?=
 =?us-ascii?Q?PUOtRbuarpktlUZdJT8ItXO2EO+ZOz9saxJPWL5x0keY7VMwYjvRHxtW8EbU?=
 =?us-ascii?Q?COI/XCpHYTl7IP8oNJoErhawn7Vfy2fqaOITo1XIZKm7II4QyNo0n0sSf5QW?=
 =?us-ascii?Q?SE5S3STMU7eEeP8iRpxCrKOZaA8nR1lIJD8/HMbY1P8nr4tkkZmHuLmbU6kI?=
 =?us-ascii?Q?G9MDErdWoJMdwZtA78Y8unMoSZhJO2oDuxQy69N5aXsIbJ3hcBTadY7/5fAX?=
 =?us-ascii?Q?KoqwL08gV+IVW1NfCZ+DV+j5qpzl+iXVGHfoDsSIfhTGclW2X11bvHkGpp5U?=
 =?us-ascii?Q?Zhuy/hmkdz3MHl3Bz02mmajaTn70SM0lCzbIE33gwctY+g945w1OekEqY9N6?=
 =?us-ascii?Q?yZDh9Z9jXRPebgh/mZM6hr774X5bg+UYlblTs71BeRVeAbvEoKMukctRB5Jz?=
 =?us-ascii?Q?aspFQN9uQN93SQaDofkUv8bUvq41UrcMlnOMKDnkvk0RWkkeb1Mn9rthQW7o?=
 =?us-ascii?Q?03FZXmYazQQ3CiUBlkR8jGm/Vjlivo0jH4L3q5WrkBkd6Ku1t+gUWjpgt0ra?=
 =?us-ascii?Q?SmjMEn7rZZCSSfHIRUi0kvUbMbAoubINLrDI6Mq5NerI8EH/qqNW5tkgS9ea?=
 =?us-ascii?Q?ybk7SWM2d+q8lvu8/uEDclg3oHXF0gpTr/M0E+arN3LX5jpx22opQayEuFaX?=
 =?us-ascii?Q?GqFBfNk4AQzflzw56XmNvwlym93WhuMWHuLPz2eoJEL6gUNsW9OXp0k6Yxqr?=
 =?us-ascii?Q?kbom2jaJEXWUBMU9h7jiKjJkGzmkg0Z61fI8Eq6vjXUZeEm0qPCwxEfgWCnI?=
 =?us-ascii?Q?Pc5+FCrsIbsWe99KL0YIKobw5u1LR2c0HKbWnsgasHYpufwape4rF48C3Nmd?=
 =?us-ascii?Q?d5RSUvLo1Qr3FCm5/ZffaXdsZW8K78irCUsXpGS3peO/H1nehJmdswxXcrFr?=
 =?us-ascii?Q?FlHWxX5VJr1SdemPi09dpaMU+OzXyWHbss25qkhz/jRBGEMhcfIEIsTKDnoC?=
 =?us-ascii?Q?5/ufCSPJwZUj0iV3sb7h5di41zyZQh64dlqnLoYDMHNJsBo39rZYJYAJP5dJ?=
 =?us-ascii?Q?m/83UUvcjkBpkTRqy1/3CsUwP0ORaV0Fy6clr8KHFng3kyWDoxIsooNx3NiU?=
 =?us-ascii?Q?xGIxQtV6+fYRU5pXtHSfF1pbc/dBAvU3SvG6O9d0/qpdTq0m9VW+SczBOkvD?=
 =?us-ascii?Q?6xsYeLciRpudLUZnceUpIT2SEfP5fab9gBDCqW8N8mQWPacOw273r5KVeF8V?=
 =?us-ascii?Q?kc917G7sQLXSoOUpAnW0R14=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FIZBFuqmaS5/2o+vk9ij8z80hMhIHgYXYZnSh62+jxypHjt3nkdV5iwXExCQ?=
 =?us-ascii?Q?c0rpTKwiMy7cUR949epqT2ZyjBZd0BKUZBz1Bx1rH5JgMZGDRzw25qrlelDO?=
 =?us-ascii?Q?IH3IOCfUgQQjOyOImt4T5ICbVwI/R4k1VpsOch6zuemXf/3yBPAjtJseDBSd?=
 =?us-ascii?Q?LNSTIyDB8vZJ2EmtVHXI3hG+4jYmkqo9RfR9VADLqpHZnft9CLeSC17BGjfW?=
 =?us-ascii?Q?3azUhmghR30M7MwJB4Q9RcataoULrtT41GHEfJgUsvKWxaS2jiC79CzhCOm0?=
 =?us-ascii?Q?dnUagRTu2bMrDM9FTPNRArfqaqzx2wjvIoEkTjXlkObcDSBpO4CGwNIKCWx1?=
 =?us-ascii?Q?YaXNooGbFl1EELbgCMBZGMp5nfUsmdCGH36Dy8//UvyHGuxZ1/EnK3eXkSa3?=
 =?us-ascii?Q?sdiolltx1lHIy7yyrIFGY2qINnFLK0GXYWYeuY1XN2T+z63BBwOVhsZ8QRIW?=
 =?us-ascii?Q?mu5KLFAfWUbbYYNGVyMBt/VKkzOdMJSRJH37brqKc8zEp+zUoO+1kUhDKAGh?=
 =?us-ascii?Q?ewTzEJzBKuKjA3rifnFxz1EgpYM+XzP+H9cP7/P0EdnI1JX+aJUy9oezYr8/?=
 =?us-ascii?Q?rjAqpqdgvywzGyGcfxxbiekmxIDDvQ1mpHOXFZTxXX5wkCMnNqM+VEwoQQk2?=
 =?us-ascii?Q?QMUS+Q6sQ0TV5jEXMHSrZTCqA6YS6XV/BjjrcI5Cl/pACAh+W4l94oJHJQex?=
 =?us-ascii?Q?QrB1Da/9FCKKxAOFw1ZstXbMV7tltgeHvDWDL9H+CmLOsRV1ejqC6vBGk+86?=
 =?us-ascii?Q?uhsvCUVLknLA0s9tLAtLJ8QGpY1xJZQUEuXoARaJErJusz0FbRbqLyfX+da0?=
 =?us-ascii?Q?838ae9/tluC7Pt0++Nu4C3cqfqIYyJpyc0uNmuTSHPauONozvzYs9px7P+nU?=
 =?us-ascii?Q?BU/JI9YGrFHI5zC3RwrY7msw0BTwFi/xctya6DfpeReU3CBcg3NX73h9vBt5?=
 =?us-ascii?Q?r7URw/pf59a4886m6wsUpAzPgnXSp/N681lXhgNlPzWx6VkPXQgnm3wfKR6o?=
 =?us-ascii?Q?8RfC08D3z18aEUcNTef/f7AzxdnEZjfLVJk88T20QKe97RhxG7LbBiq7OZv0?=
 =?us-ascii?Q?VBWV896VjnBmc7b9nK0qI2KLCM/znuu+I+kpeIxSqOWdk7jdLPncWeNwh0oD?=
 =?us-ascii?Q?FjW/xXxWM37d8Qt/r5ZCrU49P3eGytgo5vjM81vtfihl68pkx/Fo8HnA9L6b?=
 =?us-ascii?Q?ez/ZzAkneQxl/Df9oQWaRYFhr1/JOjzw5G113hgUKoy5h2SdQS+CAhvbXAQI?=
 =?us-ascii?Q?+GlzeAw4g1GJu2e66ycf2EbSynXqr8yi3yz5IMWYHGAryaoOKZdfd7JgZz/f?=
 =?us-ascii?Q?J07NpU6jfaLbtl3XFTelBKfoHb+iIhWR1dEGOX5zatovqiecSHpa3RJsqQeb?=
 =?us-ascii?Q?eMrXiiSsdJzProANJ3GnAbKRUNx0rNvqTh5EFFOtzjd1S31DWLyU7QU1bypp?=
 =?us-ascii?Q?OcRAvqv544cnYwYZGio7/pTWnX3V4du1u3zssNoXTxYlbjUlt7suhc2fxbNI?=
 =?us-ascii?Q?PXHazoj9T4AMqnWK+1G+KO5M6wPPOMr4PzLQiKJJbWNfL3jW16s/0Sc+Bv8/?=
 =?us-ascii?Q?GpfLBghrG5ygu0PowXUzhdfgrhNho4Umzu3/4v8qnTOzC6m6trtBlQ+w7nfX?=
 =?us-ascii?Q?dBSBMx90vnfH+MxrNS2JGHc6B76i7um+e6BAGkMS+VggfUUJamRcjAGgkRwZ?=
 =?us-ascii?Q?lO7bKq91ZMYHWOA2KFkHZShKYuTU8dpiq3O1LqyeyCNK6SXQGRfW0d1yVKAG?=
 =?us-ascii?Q?XTGedep5pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d03b874-5f5e-4c43-f930-08de6ad993af
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:26:25.1263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UbItdz8jUMUEe3I1pnIuT1zqqhfkjClsLtkPRPzH6l/fcb2E6VTmAfHET+NSbT49BhDtSf0u/SlfesBNdmzr/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5A396134012
X-Rspamd-Action: no action

> Subject: [PATCH v2 10/15] drm/i915/display: convert W/As in intel_flipq.c=
 to
> new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

*intel_display_wa.c
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
> drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
>  drivers/gpu/drm/i915/display/intel_flipq.c      | 13 +++----------
>  3 files changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 1459e5df1dd3..3aa79e607bf8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -117,6 +117,10 @@ bool __intel_display_wa(struct intel_display
> *display, enum intel_display_wa wa,
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_18034343758:
> +		return DISPLAY_VER(display) =3D=3D 20 ||
> +			(display->platform.pantherlake &&
> +			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
>  	case INTEL_DISPLAY_WA_22010178259:
>  		return DISPLAY_VER(display) =3D=3D 12;
>  	case INTEL_DISPLAY_WA_22011320316:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 87fe404962ce..57345d0abe1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -46,6 +46,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16011863758,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_18034343758,
>  	INTEL_DISPLAY_WA_22010178259,
>  	INTEL_DISPLAY_WA_22011320316,
>  	INTEL_DISPLAY_WA_22012358565,
> diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c
> b/drivers/gpu/drm/i915/display/intel_flipq.c
> index 1e9550cb66a3..234fe22498f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_flipq.c
> +++ b/drivers/gpu/drm/i915/display/intel_flipq.c
> @@ -12,6 +12,7 @@
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
>  #include "intel_dsb.h"
> @@ -447,19 +448,11 @@ void intel_flipq_add(struct intel_crtc *crtc,
>  	intel_flipq_sw_dmc_wake(crtc);
>  }
>=20
> -/* Wa_18034343758 */
> -static bool need_dmc_halt_wa(struct intel_display *display) -{
> -	return DISPLAY_VER(display) =3D=3D 20 ||
> -		(display->platform.pantherlake &&
> -		 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
> -}
> -
>  void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc =
*crtc)
> {
>  	struct intel_display *display =3D to_intel_display(crtc);
>=20
> -	if (need_dmc_halt_wa(display))
> +	if (intel_display_wa(display, 18034343758))
>  		intel_dsb_wait_usec(dsb, 2);
>  }
>=20
> @@ -467,6 +460,6 @@ void intel_flipq_unhalt_dmc(struct intel_dsb *dsb,
> struct intel_crtc *crtc)  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>=20
> -	if (need_dmc_halt_wa(display))
> +	if (intel_display_wa(display, 18034343758))
>  		intel_dsb_reg_write(dsb, PIPEDMC_CTL(crtc->pipe), 0);  }
> --
> 2.51.0

