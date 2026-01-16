Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EF3D2FD3B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 11:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1835B10E85D;
	Fri, 16 Jan 2026 10:48:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0VOs786";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEBEC10E85D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jan 2026 10:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768560511; x=1800096511;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6pxVb05eLRghFYVD24bBKoK/HqTfqFy89svEu3/S1MI=;
 b=M0VOs786JUIQjTp+rkhaP1xDAOY/UI/oGsjgnoI8ssC/lPVrymKuy2hb
 /c3tnU5oCG59PpZnvbTTZUmg6hsOCvagG5RD3ASmZOdyzsLTeFxaNaVKl
 CEMfbn43QVyWMiLm60oX09V9ikIL2RSu5xQIX0b5tKNjkwATwQ20R1NLM
 nb2dopuJXyQwJMhx7qkarjQqPgtyu0d0qkRrYCffi3JOCS3m5JfEumQ7d
 tRb3purWK0XlqQnea4chBLsVbR42dHbo2ZWsSU0RdhXSe0/MuyeZt+9vD
 C8ZQchiP7mgCt2duMQHCfDoOHWImnJIBAARggPbBfWXev2CJk8Otjgrpm A==;
X-CSE-ConnectionGUID: 1NPBY/9cTI2bU5sELk4aAQ==
X-CSE-MsgGUID: ttJWwv/ESk2Cw20hGgdgJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="80595228"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="80595228"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 02:48:30 -0800
X-CSE-ConnectionGUID: CAx1nN8lSeuqybY4u+OD4w==
X-CSE-MsgGUID: nnsMQJlATMKa6r6g7UmPIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="235903626"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 02:48:30 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 02:48:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 16 Jan 2026 02:48:29 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 02:48:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lAeqIzs4u7xdSfmj5eOHA53dna7nVaDC9iXOUtydp+rgVkYHrrN28+mcCcySulQ/27C8yVgTogCWzUNuLDaVECeYKMPH5FR8tZyip2JoYvbh65XFjmJsCiQ3IoCkpiaQyL1v6BQpy+kZrVFJcP7HDLSesom1ocYhEnaHgbUN0sYQh1xuoQgdG9jwXM/Ffm/xVM1XoyZrxIMcuU8tscRMa6C9loK6kyE64n8McL4BE4sQ9XbLZAOc3lG2jGQ+obYvYk65yU/2AzqqdjzMrLNeRgWxJldx3+MMg8vXcOWSuwDxLbMxt72rYAlf/PFADOByOHLVavhBvaZezxzahp09bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pxVb05eLRghFYVD24bBKoK/HqTfqFy89svEu3/S1MI=;
 b=PEZjl1KwEqJuDx/anlnTUBpQRLjym/JjQcng+leYlCJPCL21qxCKqPHdAB1pvZLxFeZb6BXZvZyGdA3MJhbbWXXALX5P3Wdf/MooDHj6tB2mzy1Dvkjyh7IY222W12L1+QtxvFAjBUss7jyXPJxOl4tLJT9MJqPQHtlOiw4trrgest6pnUx+kfDJ2QrHoGjtjfB5M4uIwNxLKJ2PuGUwofRXcr7ydK4KmEdG5TXjSJWZrJ/Bz6dbILGeTCJ2wMBwl0USLPUo0jgTJjIlwiDXcz0qXT+cnkx6lCEHugzgbqJFzf/2E0aWGRwqvdoocNHW1caN9VX7ptZjCWOa9u78rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 by BL1PR11MB5222.namprd11.prod.outlook.com (2603:10b6:208:313::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Fri, 16 Jan
 2026 10:48:26 +0000
Received: from LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5]) by LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5%7]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 10:48:20 +0000
From: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/crtc: Guard vblank wait when CRTC lookup fails
Thread-Topic: [PATCH] drm/i915/crtc: Guard vblank wait when CRTC lookup fails
Thread-Index: AQHchs2hzU4GQaWVgUK4TaSYJu298bVUnCnA
Date: Fri, 16 Jan 2026 10:48:19 +0000
Message-ID: <LV3PR11MB87689200E77909E362FAC0A6F58DA@LV3PR11MB8768.namprd11.prod.outlook.com>
References: <20260116062203.1650454-1-kaushlendra.kumar@intel.com>
 <6f7ad8bd5d41e50176d98cfb658aaa7b77f63cd0@intel.com>
In-Reply-To: <6f7ad8bd5d41e50176d98cfb658aaa7b77f63cd0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3PR11MB8768:EE_|BL1PR11MB5222:EE_
x-ms-office365-filtering-correlation-id: b556e8f5-68d3-47b8-1721-08de54ecc360
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PbWA4/bGojUdppCFxRrZRhmpmkjKywLKRUjqa8f4SZcJdlgAM0vHREdjCoHo?=
 =?us-ascii?Q?wKJbciPJFRdrXqj7JolEBFGPL0wj6A3AfbC7RnsjZJoXeve4K8dvxLdcLOfc?=
 =?us-ascii?Q?ZVqUji8Fl4VsTb146ixVeW/tz1fChn/WVjmdrjmEX21OHM+zDe66egk0YKhn?=
 =?us-ascii?Q?ZZjlMKg8ecddcPr5V7juIzw3+h1NSzbemJryqOs9mk67kDlJ+dBli0P+dzfu?=
 =?us-ascii?Q?IkZrYJEwGBAWUWuH2A4iIgBOrGpiiIWKwWi2oEUcWzLiyMr2uX0zntS06F+M?=
 =?us-ascii?Q?TOZH3rBF+WEXzdTeNWvYxNaeuQTX76hIQeY4rjw0EkYt4hlkWkcf1ehpqCx5?=
 =?us-ascii?Q?8NAewEYhoC1AmQnpaMDI8G45uStEJlWb9WtTaC90L5hrKL2LEKBoVd99M5Fs?=
 =?us-ascii?Q?LOgjIwIuLftyzgpFhKqPlZCyBHTf/MSV0Hc0IclaHeHcph73GGMHUr3IUi9G?=
 =?us-ascii?Q?qJTz91RFhwjRkS8liOs1Y0OUPFvnc3v69bsBmdL8cji+TdBfyXGy9B+MpkKA?=
 =?us-ascii?Q?b2+Fpknc8tkHUJ2WB+55OVVCeCswpcY2hhCk0dGucw5DB8JoSmiZ4Xu73cpQ?=
 =?us-ascii?Q?NV6HaD4AE8GZhv5EZusmshpDnV5rCkHgGwFpqT9TflNqMTfcdDGNSZ+W8Zel?=
 =?us-ascii?Q?ue1dQhH8a0Rww0/xQqBduWm/WgbwqPImoZ01VKIxpgBukz79S2kJaRIoTZts?=
 =?us-ascii?Q?tmycoWlIHJeGIuttU+OTlUTLjUlFiqhl/JRD/n20c7DRZcSsHIS3HjHQIrLj?=
 =?us-ascii?Q?ftccyUN3AcTouq9J3HY/FkuE50qSVda8Q867bOGxa9Xygcu5KKKdJhRQP02L?=
 =?us-ascii?Q?gMAJhJZwsFmZ8Yf/8wziHMAwmDvtYVXrDv02HoI/jFjt0cb51EK4z+v4jDKb?=
 =?us-ascii?Q?geDJy9PlmNAZkAVScctGX1udAU1nayiVfSEZClzL/gzixhou8IiK5Q2ktbJo?=
 =?us-ascii?Q?YjrIU0PXCmBxHdiGKR/0jzH1psMfZxaDuabDq34m/xuWrtzbj60w9bA85lqO?=
 =?us-ascii?Q?rgwFIPb+e+5uDGXQqQFdoONQW9sLryPEUxPeDSFDPH6qlYFAJBiBN+9Jwtnu?=
 =?us-ascii?Q?kgMO1UizweXh/m5GRmkMtp5qBAbUkWCeBb1xDYF8MJ5cNl40TFXI4qq/+dcq?=
 =?us-ascii?Q?qt1KsKJzCdBd5xdStHjFHw0mhXfJUK3bbONl2wTz83IhNgUGtAea6PZf/cGZ?=
 =?us-ascii?Q?IU+JP/TE8AXGlfgCvVMH7Co+GCIgIbupQbDVJxlumG3fj46QE/XkOfr7zttW?=
 =?us-ascii?Q?zC+A7dlkXFnOYWzFEucAsKLs1cz7OlfeW6LZXC5notID3euaURvqncKcfipp?=
 =?us-ascii?Q?5FY6akVW93ltOBESo7wVEK2IWpn7cYjmsS4F43rdiZBFYh+Epjor9jQuA2il?=
 =?us-ascii?Q?RqtpHAU1eDLkWHLZr3vj+MOg8cmN4i+8YDE3wutIrqWILVymcGIaVF84ETMt?=
 =?us-ascii?Q?INklIDc3fHoR3NduyCjy8CkRwqKoq2s6ND6RoBz5Yu37HpBvQRhv/kYhWa0u?=
 =?us-ascii?Q?z/NGZitXnIyy4CKResazgWYO8Wah9MvLxuBrpzF71TDqUsWxls+bQBZq2Xy4?=
 =?us-ascii?Q?NTn4f+AXYQ+k9WF0ad/KrXWNDzVY3NN6/Fp3CK3QcFvzNMmTrGmcqTvJuL+1?=
 =?us-ascii?Q?j2BG7T9RGZ+9IxN0nI49WTo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r2Q9XBer4Xkps8mxCmwLwJte46pFya/8y1C+UuoSi0LT7kHDd62hKpqM+uwH?=
 =?us-ascii?Q?ICiDQeFDY34eJpBmzD+dnYwRq5aLscXsUxz3hzKr43uzOTCJaO59tsKGUke0?=
 =?us-ascii?Q?MLrkahx8yL9hk0LVbAJvW8ml8AdlzQbbKVBHEnqJ2dN6XW1MEWe+ZLeltZJV?=
 =?us-ascii?Q?NIl8xvKdRka2OlGmKG1JSo+1+Dy1ncgW5NpjFADnNUXdMkOOaeKHf6XarTjS?=
 =?us-ascii?Q?xFNqNwH6MTJYkGZNaDTjGgTW9i+xE7WmIom5bkye22Arg22y/LP8W7uYOX1S?=
 =?us-ascii?Q?G79TafSSW4hsl9sxixBr1d+fuVz0f/grk7ueIjolcndiuWqLbc3QXuaPdTSR?=
 =?us-ascii?Q?DTbvJJmGmG7qMXa2Q0ax6pOMx8JpGgGn4lYy3RpCGagulnZHNKWCfPbiWBH/?=
 =?us-ascii?Q?X/jUpcIffTEDn0J/J+fWd7o6k2m9CS0h19gLYimMWdpZX3p/xt2OPVYWkp0X?=
 =?us-ascii?Q?/SgVu9FMv39G+D+bLLPKZzMmKR26yhxaStlY00narFrtlrbgMTbZxeB1JojD?=
 =?us-ascii?Q?VX7yQVXcT23WATzZJfUbv1qa4epYlueiutGd+STwJvL6TLcf7Fp8i3JSU48o?=
 =?us-ascii?Q?zqPU7wLh1Tt0hXOaDvtiaHQVtsLvlynfoK7IH6MuUs6HdmcRDkuPt6hkYb7b?=
 =?us-ascii?Q?I0P4+IaWcwUYfNpPoDFg33bQB5fpvQDvFkwdnVw9B5QDg6Zd02+5ldnmTxjz?=
 =?us-ascii?Q?sCd741eiR+89QAGHzWmRTlwJfDVfCd7Jnm/2oKDnUWuqESm58IWFRHcJjhOR?=
 =?us-ascii?Q?oCcDbQudhsd8aevbY3NIpYmRj85PY9m0U4EakE4c1ZhdabgemZd+oaLcc4JW?=
 =?us-ascii?Q?9aabQgr7z2SpSSc6iVDavYj+uXF5v3dQCqy3MVXaEbT1m7MVzITF4oVWjVDm?=
 =?us-ascii?Q?R3HmzOzqxYqyE1Q5CiDyCrna9Vn7TEfZvf74lz1f3fq8AwHCR7NkqqMIsKFj?=
 =?us-ascii?Q?2yjG/6xrp+o/bCondzWzodWoR8A7MNjIqi7cG0y+3B8PZSJpWnNXGZGBJel/?=
 =?us-ascii?Q?uK+hAcNUVOm3As4wfNdPJQ22r65JKT7V/GQaTauFfKfaBmhImiauTOHlAxfY?=
 =?us-ascii?Q?jWw/nZ9cLWArEnVFF3zmi1HrKCoreiCrFi6xgxuh87+riH41JfT5MraRLBch?=
 =?us-ascii?Q?LguxllmGEvMUhKuGG/UwtujVDkVbMrD/vlPaqYFDq2ecI1IxIp3BjZOyPuHv?=
 =?us-ascii?Q?eF1IWLzNQEgUKvbzXLhlpxAzQuyF8Une3yX+f15wn3yIKNKDhLWhxsPey+1C?=
 =?us-ascii?Q?Ob6S8EpSbtfWC3bgNXoQ623mu3OXUwhihPjUUC1FZBmCK0e5Sv9yW6+uSNNi?=
 =?us-ascii?Q?X8rSTrO+yEnPCP84t3irweGBseopLu/X0jI1vpYGK/m1Bd+MeEjsvsb4fyYV?=
 =?us-ascii?Q?izgDWQVn0yWQaYQ71cN7U0mmDAu7ZfCe6nRjayUwBWlD5xJurQcz+b1nbQg0?=
 =?us-ascii?Q?aSHyv9ysyWwlLMSHbNc48GVFP5Sex0+ZnZnJ7R6q6lxHPZOk9l6/r+UBNJsq?=
 =?us-ascii?Q?slysn+qZcptC83eTZ08ZT06+Z7t6DHw7wZQKbx0e7HHiQ99pNYAuho5CnxyK?=
 =?us-ascii?Q?xtyrYD+9gJWReiZnSxxY4dRLQjBPAS9ln01gyQINjiFVxaNE5Eo2J7HUEEES?=
 =?us-ascii?Q?RdUzJFm4MRdUG0KZkWC1h33aSIEn/vJZwLOhcffBj7QBynr5U5hTuN6+OfMK?=
 =?us-ascii?Q?VummVI0XJV21vyk92sgKRyxy0VuJESUgO8IAIUMGDFg7gxU2xf97CwCAypSk?=
 =?us-ascii?Q?/ba5/0dalinW2wBMYOYvkiBneUMgf3Xz+lAW1o09EE+t4rsX4XW7lUHDNUdR?=
x-ms-exchange-antispam-messagedata-1: wDAU/N3NwYe9g830gIYt8++Kn3b1i48+V4U=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b556e8f5-68d3-47b8-1721-08de54ecc360
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 10:48:19.9909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 30zUa/L0V/knicKkSuFqpzDOpacFNlUCyZoB9oc4gb7zd+HOmMc/jFdHxYBh44OqVuMDlp1ZWe9t655GORFQ6ILiDWoPgtvmL1vNaNaoYhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5222
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

On Fri, 16 Jan 2026, Jani Nikula wrote:

> Do you have the backtrace?

Hi Jani,

I don't have a backtrace=20
intel_crtc_for_pipe() can return NULL, and dereferencing it without=20
checking seemed risky. If you'd prefer to see an actual crash before=20
applying, I understand. Happy to drop this if the NULL case isn't reachable=
 in practice..

Thanks,
Kaushlendra
