Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UComMtELnGlL/QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 09:12:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5AE172F67
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 09:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D877B10E278;
	Mon, 23 Feb 2026 08:11:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J0vakA7R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29A5510E276;
 Mon, 23 Feb 2026 08:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771834318; x=1803370318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aVgGymvV+4xN7Ze69e8zkWTVP2IKMQ4pvpniU445hGg=;
 b=J0vakA7RIM00VpHYeEJC12uo1Cg7Xf1RpXO+h7s9JXpA07RA+VcfYz0W
 Ll8nEs1FF3UD/5JrAOIxWrOI6YVTgASgWZOXW+zrZp+XVbdRqZpSs/Ket
 As5ZQd/uGy8zUfEItHnJfiVTOwjzCy9psvCh7a7/ukv1ieX9Cqfmx0qgC
 YB/GzGXn8AZ2Uort96o3mWgNYcvOX1gWYDi/UE99KMrQxWB0QOuia+LFJ
 9SKQykNb916drr9MwBfXJi/gskz2FPIGL1d7kpAHdabmWI6/SdQ7fgK45
 sTH+xk9ufFV2GSPSD749JKs8Ko0g73dW72wodIf0/wXIZJsO+qJPE6tG9 g==;
X-CSE-ConnectionGUID: 7kZxqyVtRbyvBHJ/64Xh/g==
X-CSE-MsgGUID: 0vpa4p5qT4WqEZDona2M8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="95440836"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="95440836"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 00:11:58 -0800
X-CSE-ConnectionGUID: eaubLhckQwKFu69+Rd+aLA==
X-CSE-MsgGUID: uHrxAnJSQ/2PlrBOpIzwQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="215325434"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 00:11:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 00:11:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 00:11:57 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 00:11:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RC7hYaolmhec1yQV049bD6SVN8vKn5Jm5pDG3EyVT7MBBPfNmZjYOMKWYSU/LdnyQtwyJzWDGSMkPQlglRefO+uqRADAS7AIIqnQ317F/XLWDVcTJ5DuIBVefxlQ8skJ7iqMIsQMNGbslFsbjwnHznlA9Qm2lbbp3UQwqGXeY1aH6bpQdK90FIFJZmD/4pjHjWIVpd77D+piwVdmToqIzy6j7e2qn0G9DKotecZVC6xALULM+2PRQTutYUKvH8+XJKFQqjtaGtwlgACNQ4WGoJvycJwbAVWuJJBkVBb8hyWEItFglz8qWO2bbXk8+pUhvvnFfPWSl0oqf+l9KpHBeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=smtne59Buv8ZahQMjyGvIFVC8e2wDeDOOM0RWJb0Xe0=;
 b=FBKB9AVC4EPQo+zFSVPrO0f9MPTKWWwKT27LMsAUU2rh7JpaHLjbpwjKAFIT8Mevk0y12Boax6df4gnO+eL1fX1nzWCz7N2I0ZSRyv/PB2sTud2jgePrOFcHob94haSw0jko0vEXAjVfAk3KxYWydJHQhV9kzYT3QTde0MG+kfo552CZx/RLE8bhiRkAFDUcoHHqfZOpmyqwfxfc+S2HekdbklOEHqvDFE29IerLzoXsjEOS1DA9klu5/12X1oogSdqvjXgi0H1ooba7Hpp2r96wjbfBtTIO9KuNI5zSA6dt9XFcc9zgGAIVKJr1aXhDz+vD8s22z6PH1bwG6lZ75A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS4PPF706C623D2.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::2f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 08:11:53 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16%3]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 08:11:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH 6/8] drm/i915/backlight: Update debug log during backlight
 setup
Thread-Topic: [PATCH 6/8] drm/i915/backlight: Update debug log during
 backlight setup
Thread-Index: AQHcoiYnVi5x1VpR0UeMfMu60GHfl7WP4TaAgAARJ/A=
Date: Mon, 23 Feb 2026 08:11:53 +0000
Message-ID: <DM3PPF208195D8D2127173B1BD6FCBAB774E377A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-7-suraj.kandpal@intel.com>
 <IA1PR11MB64670ABDAC9EC44406BDC577E377A@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64670ABDAC9EC44406BDC577E377A@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS4PPF706C623D2:EE_
x-ms-office365-filtering-correlation-id: 1ee51e2d-2087-4e5b-70c6-08de72b33430
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?PCI2SQT6lu1JhVdbBEGXR7TlLQVxgS42fe87nFgPbGSY3aUOjZVFcHfD1Kpw?=
 =?us-ascii?Q?WKaqfNysCuQEbLO9A1/bF3LAdfg+pl2q0RDI4xq68/KP7CzDzffk4NgxRL48?=
 =?us-ascii?Q?rvudbdwR6hLKQ9jGr3+HzbYRBf569SeLe+4zcwJpW5T5WCXMHhM3Kz0MFqtv?=
 =?us-ascii?Q?OemhtNk6tRzq7LqE+qRJSFUE0A4616E8hI5W9RbW/oi0Ni8p4Uha8kcXHoHr?=
 =?us-ascii?Q?XEIGpFquE3bHi89XtfaY6b0NxltdXlrnLU7KIraZFr6zKTAy4byKalILfNVi?=
 =?us-ascii?Q?EqMiE7pKI8sev8o7ABazOcPmix2VqyTZZvf2GBwhogEJVV+5NHxtQU9zw0N1?=
 =?us-ascii?Q?N1qFJGaxTepDxij+l8gFN1X+YmK5pUcEhMIursggGCP+FlfQRwHehtgfHdhP?=
 =?us-ascii?Q?dH9gd6mGWSIikxmL97k0OBs7njduxCOX+9QsO9IOoPzeF044NyRKqlpFM9Dd?=
 =?us-ascii?Q?CVncCoMhQsMozjyZaiIL5DMLAPJaBFoRDpjdEtSMCr9TI4mTZPnbcYBL0/Y7?=
 =?us-ascii?Q?k+IeAeIuaok4PEG1MErwcl85dM9kOZoi8rlLxQC5fgnGMRav4F0G6u43lIaX?=
 =?us-ascii?Q?zIk/flFwQmyTxwt6nUtHcpN3SP/s1LBxaw3hS11dFbuyzFQa8idIW+t3LZm5?=
 =?us-ascii?Q?aNGEgfvss3SC97DgKh1EkRuyu3wWB9OxM1bcBlVc2sXNmBSZGseGtgVcgjU8?=
 =?us-ascii?Q?5RGnMcZ+dtJVNo0EyWedRPM95kW7jRCoY0JSckkIU13kq9tv34HwFG64bKei?=
 =?us-ascii?Q?dLbifmUxorBD+smUCUvktzB8JpP6FyqyXItGc4vFtyuWnBEKdXuHqNwnFEmj?=
 =?us-ascii?Q?OeeL12CxcaL31IMqYbmA1hZLQquxh/rUf9uGZYvs3IMlMMVuolpJqHljU6YH?=
 =?us-ascii?Q?YgzmsfyWxa9zVLca9uGI2MbH/vzZ63l/bztFcmivkbgFVH4liFgTetSKukaH?=
 =?us-ascii?Q?B37GG8g4aDPRiyxEfb7Lpaz5puzOrF+niKpdLRfIhDIeETRoquPhLmagYxCg?=
 =?us-ascii?Q?+qZoY/AHNJaLUkZzhpj/aWYBPEis2F9xFrl8UlOMcEVGx1kpmtDJYdrR0DHy?=
 =?us-ascii?Q?ZaursMG5VfKl4RAQKjz+GPg2M9JJZqlfAf4Y/sBjXyomcEGlTImLNj856peD?=
 =?us-ascii?Q?UPBitnjEbuIlvuWNpSSR57fJsEfDU05ZwZyGLjBuWMTvJEirDtN2EDTnXuYk?=
 =?us-ascii?Q?vyrkIoPIz8dipTAC1JhXzsB1JHyJ9n90t0+LvNhqbzYaRGQXkGzLzW+nmalV?=
 =?us-ascii?Q?UmOOPhlRXdLjRDpCm5mpBrJVdEOnG83ZDsue0Gj/xboWaOForYjm3dz7A7GE?=
 =?us-ascii?Q?OMTxviCZuiW2AoQ0PvhQrUIH8lit5WLWoi7f0kUVTVR4gSMPfwCLUxf/ECNV?=
 =?us-ascii?Q?k3UOrAH71ow5TuX3HCDLKud1Byx5Qvd9e8DO2I29pSEPfakj3MfAehM8674t?=
 =?us-ascii?Q?0JfSqO5WUPxVPL0ZKsghYH+oI9kH45oEP9+P3pHThZU6gkhC8hy3+IvPnMLs?=
 =?us-ascii?Q?PQxYFicbosRxj2jvq+RdvtxG39mmhzNMU+SANnlN1flTaRaLju5mwlKF3j54?=
 =?us-ascii?Q?QWEisuqhSiISwSDLaMSj2btEYuzEH6CwldfDwPPBdclvgnwYZNMLMHRkY65B?=
 =?us-ascii?Q?GPOGv2Dfda1BQfDIjFGovVg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2N/JhkdDk04BHO79Qn5sl86znUydzVxjs19rbzmXdYplKXERB45KZTd6+nJY?=
 =?us-ascii?Q?U+Nc6CdY3dbnilxGuFozdooEHIdl/PwsMnwOT3Nd4xoMyew6SU5U7ebDdOyQ?=
 =?us-ascii?Q?dih65dwokFoxvC7Q3h5JCLGHF4qNIRX4Dq6Z4miZeflddZvx6J9n16hXk49U?=
 =?us-ascii?Q?o7eF/TeRotcBprn6RGIVeESqA55nrT/KPoj2a/nkRdcF1R03DxerQvmeS4a9?=
 =?us-ascii?Q?ev+dG+JB0F1LzRiDSurzZN9T6E9WbZTBdBzY/ZuAUT5LTfsuJEFe/nfXGV/Y?=
 =?us-ascii?Q?sOMd/bHekrcl9c0n0VgC0rvV2Ye4d05HHtEwE6TtuHtOZ53z+eIvl8YmbqLA?=
 =?us-ascii?Q?YoSxyWqk6gqvkpOatp4fvg1gMCcOK+jkd8/h2AUu6j6PadaG5npYEdAFEfCe?=
 =?us-ascii?Q?w5ydGs1ZU8pz9SJ9vIASUXFdMOTX0smveELb7D1t2rj5RKbUIURN7KcZX59F?=
 =?us-ascii?Q?YQIm6+ZQ2EFbLueeadSPKjSZ7DcT+bcHkm5HDTRUxnMt+QYhYz7KBBcUzAvc?=
 =?us-ascii?Q?MHp55tBAZ8lph9TG+nGVeBxC7Zjm+ad85KSkpTJE32+vfn2YEfU7sFQUjvDw?=
 =?us-ascii?Q?8HuoimqXLKyk/k9xPHcez4Nqui+Ou6A85sWXKISepW6jteHuqPNSMA9pZoYY?=
 =?us-ascii?Q?nv7hPOugD0+tMBREIHyUTbaAr1f/PuI9wwy31TR0RWEdV0ETp/JajRHJPZqv?=
 =?us-ascii?Q?1WqtbgX3CE4RGHQ5wNEEWjL8mMQuCqauMCsL4nZyFkiRTxNFhynebiacQudI?=
 =?us-ascii?Q?emOinhP/4PmwoosAZ+biQvE5IGtWaLI8WG6o9P8wmfGU4qQm6YkzXXLTyKtQ?=
 =?us-ascii?Q?BIpJvac+MHBxeZJZbYrvyrXU6OyMDmxcg44O0Wvgi8JWyZA2fl1bkppZTjYM?=
 =?us-ascii?Q?NI7yBzTc8fiK9sUhHM6NhaUJJJ1Zgd27mbVckyFWuIK35JgPbT33Yg5qK74c?=
 =?us-ascii?Q?Wk51u/HbiPIoQ1Y0GT3sTB6TsQaNvbNf7iV4nExgs+Fuou/4jNpPSYm9mA99?=
 =?us-ascii?Q?kgut2XtetdDWUU7CTnlIiSzY81mklSmjI2/osF/rSIW8v1bSRNDMVIddiHm5?=
 =?us-ascii?Q?gk/edP1YNxWcKM8NxpLQ9Gmz1VEQFlSvNkylNRDPgM+yFRJaTCOeLEjrlf52?=
 =?us-ascii?Q?gSj4nZHnNTzf+py9G7Ya4/JlOgD625JLbBVqkKqIh7hN22NRJ8KSFnXbqN6D?=
 =?us-ascii?Q?3ABUN2+7PBelwg2SLX5nnd8BjISaS72be6M3cjusEMlUiov1Y76wqjNQwm/T?=
 =?us-ascii?Q?t5wbhhbrdjVIb3XXPG07sxasXOPibws8+eQ9JtR6rcG5PiKiUdkqk9ZD4YP/?=
 =?us-ascii?Q?6ihKgwIpyni4AOJ1qJaBYYv+l86e2eUfRg/bOOWG8MzO251C4R79TPBhxDIU?=
 =?us-ascii?Q?S0GqA8UDiG9nsidrWxGeDOFiUavGgK0wb8O6jiExFLNX+UAMJC5mQsXNDNqN?=
 =?us-ascii?Q?IJAZcnEhKtEe7dc6wj5XOP1WxWSBO8SbTOU14ahaWD/LTwBkfYwbzZWTMI2g?=
 =?us-ascii?Q?6jl8u7+GhG2ZNdJJ4cfJzsepWSE/V2kzJqM9fsQxgaxuZfa+UtfspFa+fpf5?=
 =?us-ascii?Q?wz3WFEFqUnIbmOID5YTcvmOtN2rEz1wJXQNmUCOR37I4zucwRzV3Yhkj+JtS?=
 =?us-ascii?Q?qs5iR2EJKrsTLxkJvnL8VobLXguFhL1jPJh9WHPBOJNnFu98XZ0iHgJQVJTJ?=
 =?us-ascii?Q?SttxYYwMC06AYz3j+vdTouJeC5JMLkFW7oglpc1JFCI4lXKTOpq8Lv01qM5O?=
 =?us-ascii?Q?XmhQFpIj4Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ee51e2d-2087-4e5b-70c6-08de72b33430
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 08:11:53.3154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tc5oKIhKjINPILYCuojEoXwUphCf0Jv9IPuHAxDmmxpnfHY/G9/0IpL+if0MZSZpuYZchC+l9SfzxONxP2OTJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF706C623D2
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4E5AE172F67
X-Rspamd-Action: no action

> > Subject: [PATCH 6/8] drm/i915/backlight: Update debug log during
> > backlight setup
> >
> > With luminance_set which represents PANEL_LUMINANCE_OVERRIDE, we
> have
> > another variable other than aux_enable to decide if we use PWM or
> > DPCD. Make drm_dbg_kms log represent that.
> >
> Hi Suraj,
> In this patch we have existing parameter aux_enable and you are adding
> luminance_set as new parameter in the log so I guess commit message can b=
e
> something like this:
>=20
> Since luminance_set (PANEL_LUMINANCE_OVERRIDE) will also affect the
> brightness control path, so log this as well along with aux_enable in
> drm_dbg_kms logs.

Currently what you are proposing is just a paraphrased version of my commit=
 message.
Can you mention what you feel is wrong with the commit message which would =
require me
 To change commit message.

Regards,
Suraj Kandpal

>=20
> Thanks and Regards,
> Nemesa
>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index c7143869bafd..043c9aef2ea6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -539,7 +539,8 @@ static int
> > intel_dp_aux_vesa_setup_backlight(struct
> > intel_connector *connector,
> >  	drm_dbg_kms(display->drm,
> >  		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is
> controlled
> > through %s\n",
> >  		    connector->base.base.id, connector->base.name,
> > -		    dpcd_vs_pwm_str(panel-
> > >backlight.edp.vesa.info.aux_enable));
> > +		    dpcd_vs_pwm_str(panel-
> > >backlight.edp.vesa.info.aux_enable ||
> > +				    panel-
> > >backlight.edp.vesa.info.luminance_set));
> >  	drm_dbg_kms(display->drm,
> >  		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled
> > through %s\n",
> >  		    connector->base.base.id, connector->base.name,
> > --
> > 2.34.1

