Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAYLEHCWe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:18:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F505B2C0F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A1410E118;
	Thu, 29 Jan 2026 17:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvaqACXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C5F310E118;
 Thu, 29 Jan 2026 17:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707118; x=1801243118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tBCrxsMWza1Wr3qGZz1xlk9WLnRaUjpX0hqFoXvIz5M=;
 b=mvaqACXSmo5+waSD4A2jmZEMOE8QwovFRlpom95NlpCMmchuaDEcX1wx
 HCPPfw53u2ZXhfFX7UCnRv0GZhhBR/aev/T243v6PbXQZ14dMbLYiW0nF
 hyuTJJ6oINFE+axFVvNI12klDfAi+6s+rmrpPSkQREe1NTyIT86Vev31F
 ZUu2Qha0WeKnuJ6aYPN9S1UYttyu7sSlZYMEZoMYTr3GG2j8ON6LFH1iD
 dVKw9/Sji7sJ6pXY76qjyvIAV7ci8Ln7GtvQwlGCPtZyM5OYaenVt7YoU
 t49oL2uhafirPX52RV+zKSil3DsB5u9p3QE8yfCIBity42XNgtfv9/Ic6 Q==;
X-CSE-ConnectionGUID: MXPqvCAhRtGSqCb/4HG+Mw==
X-CSE-MsgGUID: dnGTUee+TC2AslqAwxvcZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70925677"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70925677"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:18:37 -0800
X-CSE-ConnectionGUID: ++2Yp5ZhRE2BeqHZMKkB3A==
X-CSE-MsgGUID: 17urBWjJSsK2xoQu3ffapw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208240109"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:18:36 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 09:18:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 09:18:35 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 09:18:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hMYnenPj6mgujRSYE+7E1jpFxF+TxBY0gMG8ZYQor3LnPV9I9yN2piYhqlqEgYXbH3NsE8c/mQdUyYY64gHzrZjO6MaksTfHyo61Hi6EGApnz79cRCeW+9FyHqH7vMBchMR+3aSuBU8qylJe78+8qbaK/XwjEqb3d4JMidtyJrmQ/BDYIxHItolT9r29SA7y6OqGv2WvRHAg23QQteDzA6MYcul1X32fly7b/J/vh8fgP6qygVZtnIQ2wqC6dOZxLiblrPy7eDizWtmHoKmVpvqvQMyCwu8c5wfI7AIUyyZ6rzYeq262qxsV/1R4xYgtIv6m+1i3Ex5F+tIBCeeC8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXcsPJzpH9Y3oFdJfAcb/nMJSjlv2IQfj3z/K5gIbXE=;
 b=IuzriU64RNhCBQbpFLcKG1SYwIG19py+LzWOr/rYBz0qKL7H98uyiFF4G0QzUxQxNZPRZLUv/K/2THkKNte5lc/0n5R2Uir5nZfeaFaOTvyr4aoRmuLv9LHQ4+2U4pQnyjz0aJ10TJATAv7F5J9HnT0FsCj+1io2DUii9as7xDdD6owq/CK3nasWYUs6g61firRhx6YVOE+vYkpaO+Y985wm3P7zWaLYQwMf/8G8/AgMbeyvvlyz//k79NfAZYoDBxwF26SYUYsyj5hCryvqti07DqeAvAfwyLIt3YHK65CfQ0QARErFNRi9mgYwJmF8sPVn51iFGHWiJlONGrj2hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5456.namprd11.prod.outlook.com (2603:10b6:5:39c::14)
 by DS7PR11MB5989.namprd11.prod.outlook.com (2603:10b6:8:70::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Thu, 29 Jan
 2026 17:18:32 +0000
Received: from DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::b23b:735f:b015:26ad]) by DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::b23b:735f:b015:26ad%5]) with mapi id 15.20.9564.006; Thu, 29 Jan 2026
 17:18:32 +0000
From: "Lin, Shuicheng" <shuicheng.lin@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Subject: RE: [PATCH] drm/xe/guc: Fix kernel-doc warning in GuC scheduler ABI
 header
Thread-Topic: [PATCH] drm/xe/guc: Fix kernel-doc warning in GuC scheduler ABI
 header
Thread-Index: AQHckQ7ddowb7xeV80qdGnfTZ6u8urVpWYqg
Date: Thu, 29 Jan 2026 17:18:32 +0000
Message-ID: <DM4PR11MB54565029A66D2F1B81BD8DD7EA9EA@DM4PR11MB5456.namprd11.prod.outlook.com>
References: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5456:EE_|DS7PR11MB5989:EE_
x-ms-office365-filtering-correlation-id: 96e476e9-1bdf-40d0-be1e-08de5f5a6dbd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Tc990oZ8/NO+Ilv2g0aXTa+p7RhrmW0uDFusbJJ50yDe6qKbMH5WabjbO7Fp?=
 =?us-ascii?Q?Fpm9n8zTISRxvXFrcQWH4crzEm8Si1RyJwAD+dTAkzV5GHy0zY1woi+GVelA?=
 =?us-ascii?Q?YLTXgMc/rzVbEX0ILpHpxPdHWEhWgVxRceIYs0G1BlRtqKKVHgh++YAB2tFl?=
 =?us-ascii?Q?Wv1lv5kA0GM2DWSl8G8K8eh3P9gXnQGMKLOshqwJV5bdmSiVm1BvQXk1Z8g/?=
 =?us-ascii?Q?dcAdVvZBp5+eY/yQ/9Knz04QIvs5nqWSYLRUbclM+/g3fMo9nxUHmDB++xNf?=
 =?us-ascii?Q?NknhuNfdZ4Iyh9hr3CpIZIBUNsUkwpZsx+iZBptdsnB/+OU+ffwRJ45/ilDG?=
 =?us-ascii?Q?deCSElfqCC2+VdII5UlF0wIjpOcK4Hys1FWLguCz3snssKzGtKfqoEj/bcEF?=
 =?us-ascii?Q?NnO1TWDoj/JvTkbVJ4LcnIkEumgQfAlwoseNF5B/c71EyexHozwR9fFZzY80?=
 =?us-ascii?Q?fDRji0znnH+0fjtKHqADM0P0/F5Xnt9Z7yQbXjPUa2ybrpaVhAa/Spu8ou5r?=
 =?us-ascii?Q?GsVJCzOXiAifSXERVdnSovseAWtjBlr1623TZPwSXDb/KsX/JTF21LlZq1lu?=
 =?us-ascii?Q?xUuxrIvGHmM2YHgdvSZtJwHvKpRHY39yfqsqxg32ZW8nIxdDpvcCaOy++Xsp?=
 =?us-ascii?Q?+cXsF/nEASlhjTeF0pW8681UPhG5EHH2YXDSRwZ57n5C84Zfxr/rOpoggs+Z?=
 =?us-ascii?Q?hLYUnjL9X/BCGRT1Ra6Rv++fgZFU8nPPeG0rKFMpOA3pKQkBolH5GPolWycs?=
 =?us-ascii?Q?846ZBK4/CPKRKNxi/OMxOXzODGv2ak6V8qT2vE8P5ksMxZVzyUmZRE3eUT1h?=
 =?us-ascii?Q?c6cLMsl7Dn71MvY5Yuq0GPCbaWuXqCjvzO5sDXm2ASNHgcwG/aGXMM9jU2Dy?=
 =?us-ascii?Q?xoNr+gAwbL3cJ+W28BtOFitHjkv5Zy4zqEEA60WEgeZfOCkEz/Oax0OLQmdL?=
 =?us-ascii?Q?OM45WZiE0qTr+9VTauxmbUkbo5eXLLujmIyeejQhB8DF4Zau83GYnBCweoBL?=
 =?us-ascii?Q?paPdaLehrehSJJ4AlZOf8PAymJRXEqK4tv02tTIlIUiuk2ubVXf0Cg/O4lce?=
 =?us-ascii?Q?TKTHjTB+bKrSjb8Gn82GiUbsU/OkKIWkQUYFh6zNfJrrkBC8i8JO7+TVHW2F?=
 =?us-ascii?Q?a4PIpfvy6tGZbXyLaMHrE4ICvpjV3iqtIm0Y5JJn8H08NgzBGCxDMQaWkqWA?=
 =?us-ascii?Q?am1G/xu9XyhzH6XuGjdcBuhC42RmoDRMKQCdt9xnZeJIhMykPcuiF5qNODKG?=
 =?us-ascii?Q?EwaP6F8LMBSM6NQIVbVmvGUZp/crOSLNJE7Gc+tek5zgX3QIiMoempCuQX47?=
 =?us-ascii?Q?+JQEQS3uiboupzMzG3/W3x0t/xFYykGGS9goktbSf7j77b3e+NKGzZktx6NH?=
 =?us-ascii?Q?pKx/DvlUA1TTKjT0MZ2SeYtKWmd/Svy1DEq8yJUJFo6Bb8JxOi7agGWCix+q?=
 =?us-ascii?Q?DRYEuwu3avpkb06OhwSKmXJO6hfIq+WBYLerONRLkfDpfnE3aZb3szMq1HmW?=
 =?us-ascii?Q?ycikS+zzRoypC/4/OOBNVeCn7KrB9DsK9uzi20mVbSSGmKLp/X33nomxnNTx?=
 =?us-ascii?Q?GYNk+AcSt1sifFFeIJjXk1zcybLtmLKvDlGWBDq2Q1VYx9gJ0RgQcuIFzXLj?=
 =?us-ascii?Q?25ub27eTfIEfznjPFfrCPF8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5456.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FTH1qx7AEZlcNcdorhDwI8s0au+xvFlJAEYbO2UuRIBtdXG7E2LAo7JVgnBn?=
 =?us-ascii?Q?jjQ7GJMSowUDlFwNSQylkR3cVi7ZAoc1blmiXTAWoErpSKLXj5YfUNYSdduH?=
 =?us-ascii?Q?K1Y4EkrAeo+OFWctDz8P5QsBPAfKoh0LgaugszwinBIEWaNP2+EO8jX2FwY4?=
 =?us-ascii?Q?78W6g/6A4d9PMlN3OtXHYlneaZenyB1/Tt30bjmHnUBu1ANTPPFgHBaA8fPy?=
 =?us-ascii?Q?SVok1fqU4y/s1JsO+veLIOwtAr4b5emlPdjZI2jSHcQA0aPXdptI1i1k+wIF?=
 =?us-ascii?Q?s29wVz1+IyuMSac67Lvwu+mxJWI8CjE+KvsS4zgTYT6LlsiEYh3fcvzmrTq6?=
 =?us-ascii?Q?vLaIRbIAmUx2bX1M2/L0SZwqNQgFtz2LzURfi/ODLChpJEWxehwcR9niQ8JZ?=
 =?us-ascii?Q?EnRujYGZV7De4l4yybmyv/8hYAdZxq3zA12TTeUOyYl1+ru8TKQyHLJptK/V?=
 =?us-ascii?Q?aVWojItAHEpxbkjW9MKiIbkKCN3D6S9SPFgZyfqBtWyaAi5BMhjcUtYHtG4b?=
 =?us-ascii?Q?oxiLnqtgOuzGwnDygqlkDrsxigiB3fXeHpQmcMJGVvctnrJ3XxHxKXCZx7Qz?=
 =?us-ascii?Q?VnT8bjNcA2y0SG1RYOVk20eTsBqPsupO4VR2mzHtadWmpdzX0LOqxWggHsDl?=
 =?us-ascii?Q?yhFDoTNky8yNu6RwB29uxVeoNU2eRGIA63BWQsqljcLL+XRaw/f8tGeKGIYC?=
 =?us-ascii?Q?eaEAnnaMW0yNWxL7Xz9ZrLSLnOyTb+8jpXJrtStzYN73k+wswDbEYQw9c4lH?=
 =?us-ascii?Q?Be/BMLnjQX2NGoSqVGrQn2vBOio/fQ7LONzLLuBd/4OTNHqBjJEsr9oa6gYi?=
 =?us-ascii?Q?Ii3zA1d+ONRWAyZo90RmBucTBFSfWbWm8QZw2I20a3Q/lubKcOEzVBwSgUCj?=
 =?us-ascii?Q?QCp4LT/1OZLfRkpzTAJArZyeeXgHnbrg/sLdOkNayTyByZScmiZbslqfBzYO?=
 =?us-ascii?Q?9Q3Y7HSQmpieffsczgSajHKoma3btoyewRJbVQWkJJVDAhU0Weoe7BtaEkse?=
 =?us-ascii?Q?dFl2RP1cEzri07PxafgZ5jPJeAtc8u2ghUxGNcLkNDNJ4HXLSXoMm7T1RliT?=
 =?us-ascii?Q?SG5UvnM1680oweoOoAP3xaPBhrhaRIYzh64jyQV2SoOdI/qqmVYPeA5QbcF1?=
 =?us-ascii?Q?G/Aj4lZAC1ZucPLpAXoMlkoBV2LI320y5oyvJtq/jhac25Va3a3OtDG4rhM+?=
 =?us-ascii?Q?R1TTAEKfJYbJvC3LKBmX0FE5AfD6vpbmL4WVBUbeaYsg6BEumKsjAk5NDVH4?=
 =?us-ascii?Q?OyA4ffInLLKoHSfbyOTD8X3Tpmk/gJ7ujB3FMaW23rdtskBTQrUIrcE8mTQS?=
 =?us-ascii?Q?IvYcGQWc19tKAY/doJQ4xTl49Oduv3jb8VbIOWlDmCUw0iJu6c7NbQ4AdEL2?=
 =?us-ascii?Q?rX9jTSJJUAqyuz+kEWO7vJ0aKQgWm/MVtoQ0yQj4nRk3CkwNLufDPwB5ZfA1?=
 =?us-ascii?Q?bB9qPTEtsxpCzDMDusyoi5HesdI9tuiir0iF9Z6J3s8G1ik70o4QU2kK1F8k?=
 =?us-ascii?Q?f4RcERxmK7NciOKjwgig5yxY3dOl0pK/YW//cve29o32MwKtWUoWN52iKgHs?=
 =?us-ascii?Q?Qjp9Xbst+dQiXQHlcR1g28lOf/SflC3BYAd5MWbTJ0vpkh2g/wREyGNK5uSt?=
 =?us-ascii?Q?hYdLEl5GxjzRGGOzR4AciMUHleKjF3fCb4sCycKk7FmX1AXuHQHYaWuVkYee?=
 =?us-ascii?Q?8fKMx4CiyPPavZCsw/SbWLQZwYbTzciPubvIPgM3kTdTdzURO49GMxZWshGk?=
 =?us-ascii?Q?9nW7R8W5yg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5456.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96e476e9-1bdf-40d0-be1e-08de5f5a6dbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 17:18:32.5752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AxW9vYpTWq7I+nYmHe/oJMoRFGtREcfGJmKUAJsbuUNnRUm/cYQQ3nCeesaqHvZQ6DNnykrVhRqeJ/J2lSH2yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5989
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuicheng.lin@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9F505B2C0F
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 2:38 AM Chaitanya Kumar Borah wrote:
> The GuC scheduler ABI header contains a file-level comment that is not
> intended to document a kernel-doc symbol. Using kernel-doc comment syntax
> (/** */) triggers kernel-doc warnings.
>=20
> With "-Werror", this causes the build to fail. Convert the comment to a r=
egular
> block comment.
>=20
> HDRTEST drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> Warning: drivers/gpu/drm/xe/abi/guc_scheduler_abi.h:11 This comment
> starts with '/**', but isn't a kernel-doc comment. Refer to Documentation=
/doc-
> guide/kernel-doc.rst
>  * Generic defines required for registration with and submissions to the =
GuC
> 1 warnings as errors
> make[6]: *** [drivers/gpu/drm/xe/Makefile:377:
> drivers/gpu/drm/xe/abi/guc_scheduler_abi.hdrtest] Error 3
> make[5]: *** [scripts/Makefile.build:544: drivers/gpu/drm/xe] Error 2
> make[4]: *** [scripts/Makefile.build:544: drivers/gpu/drm] Error 2
> make[3]: *** [scripts/Makefile.build:544: drivers/gpu] Error 2
> make[2]: *** [scripts/Makefile.build:544: drivers] Error 2
> make[1]: *** [/home/kbuild2/kernel/Makefile:2088: .] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

LGTM.
Reviewed-by: Shuicheng Lin <shuicheng.lin@intel.com>

> ---
>  drivers/gpu/drm/xe/abi/guc_scheduler_abi.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> b/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> index 513b22a87428..19ec89bf39c5 100644
> --- a/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> +++ b/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> @@ -8,7 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> -/**
> +/*
>   * Generic defines required for registration with and submissions to the=
 GuC
>   * scheduler. Includes engine class/instance defines and context attribu=
tes
>   * (id, priority, etc)
> --
> 2.25.1

