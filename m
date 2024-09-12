Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67A1976537
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4D210EB21;
	Thu, 12 Sep 2024 09:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="im/1iYSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A36210EB21
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726132179; x=1757668179;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UaFsvUeyY1t33oSYqTF/UDc7jaZeGPIydFcK+BmJcJA=;
 b=im/1iYSUVwnJ9lTVGhSdBZeN4VXhVb0PWA3oW5wWhT3BlBqftBONIxQg
 osQRPFN3dZT5gJ3+K4jqzv3++U1NMTrJLznyvMvrnGz5O138jOFjzOEAq
 xrA87Gh1ATog+pfoaAeZf4qzIyBt1rK/k2vpBnsGoMnfEDyEE+9pDfo7p
 D3PLZNV2mB08xcD4Mp10BGxBqee50fL0Smtpitht4PCk2X+/z5cG9wfxr
 +lAm63q+JooSw6aFxwdzwyOcc+8aeMX+y6oWf7NMxEiOYq8PXEhpbLlZl
 aoz4tIFRO2hnJopdiCllFA+yLnPrRN5WFckgRzwPjMpGOILECzMKs2IBn Q==;
X-CSE-ConnectionGUID: kUwNvPsZSWOJHWKSngNITw==
X-CSE-MsgGUID: wE0Xk1jURne/FUfGDznzUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42486393"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="42486393"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:09:13 -0700
X-CSE-ConnectionGUID: J2MMEqHhT7GJ85T1Wl+UZg==
X-CSE-MsgGUID: dGbpLvH4Tu2WzTwy3Hv8iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67881785"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 02:09:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 02:09:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 02:09:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdNs+iPoC7Fe0iLke2TS4/j+YLATKcqFK5yqNNgAoqEOyc2WbqdC3FqebaudT5V73Ih4Sd/NFAsu7GqL/ONXdipcoIJuIoIfHRMYnvmteBsngUFCulRp/x/nDqol428B4huejtI+82bfG+U/TI60sGSphdh3hUw117kwNHlrA7Vrv2lR+fG/PLt7rExMgFoms7YPAXC2EGB2p/SlqujP9reM4pzUfpANQ0D8cmnQs39Nk91Gr0Kged7Om+oCL9yCG1dGzzBrrt23nvhhkS1SN0J3tSMRVMXR8FUuGxStB8vpzD5wy54m4JMoPbFLURpCnYsvt/YtWWlJ1Qr7OxM2hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RzftUv3Zjx+AYOdjE1bifbTWEJg+e5SXwAjn7GUwU6k=;
 b=xaQaTqrq5KQuY7pGG0EF+PKGym82nc/ZgZr+J0lGv+/Wzon+x/ztiKQqwsrjBYpiPZ2Xf4ayJ6itPlLh16K4BV98oKBlX96AfYnWBIVHSluQHTbVHyaoofPi8v9OC5aJye+2RNenFHKA2J2ufdpcI9EplYsYHMrYTQUqKZt3DUsif4PoH14Z3LurY9celhtVkIYTVbH9v9CZh9WPtVyhAES6DMZ6LFp37Jw44my2FaWw7WyxD3XGkSlv7nEKckFI7mUmHhmItmEc4xzk8MezVl6IvktaDa62Cb0gCzEeYb1GbvSPYgzR5KfHsmIL7uff+WeRbwcek2e4zrh+LGpQkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Thu, 12 Sep
 2024 09:09:03 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 09:09:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Topic: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Index: AQHa87WeoENNIiVmtEeLGnYRHmEF3rJREB2AgAKbXmA=
Date: Thu, 12 Sep 2024 09:09:02 +0000
Message-ID: <IA0PR11MB73070D2E4956CEC9EA8FF7EABA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-6-arun.r.murthy@intel.com>
 <SJ0PR11MB6789F3182BCE5DEF3E3FB7D38D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789F3182BCE5DEF3E3FB7D38D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN6PR11MB8219:EE_
x-ms-office365-filtering-correlation-id: 0c921a3b-544b-4086-24da-08dcd30a8ba8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Noi2GlTA9xJsd63K5br2HoD6uPuwz7OlSoJpdYN1MyBO6TCakwHtLwsPZUzh?=
 =?us-ascii?Q?SnRhFO0u3FDzoB6iR9gjYQj+YTb62WoZxP7Zg/WNDl7OPpeAgvpph7w7ypEM?=
 =?us-ascii?Q?mqb2ZFYkc0pGmIw47DWHpCNVIarkY2KX2Nsvqeq1lm0ZB2PFUTn+lWQTu0ts?=
 =?us-ascii?Q?Q/3EUpPp0cItnbKX6FK645aG1noxpHdGbT3NtWMlpU3k1P9AaAEDZHXtkgyy?=
 =?us-ascii?Q?4UbQ0PNj3ggpdWpmU+FtSlzRYdCpgyK2v0VJ6aQB5fBmNT8c5EC406eL+HxY?=
 =?us-ascii?Q?jSxXlYZL+tl7VhNpDJF+1gIRcNeXSayW/OQgSkL4NTYQWHirt8DRzCfqDOb6?=
 =?us-ascii?Q?XHfemKXAr0O9R4cudihJh/xjKDA+MXRSKWqHhguw9rr8Pn1pmnjHV+2A7E3z?=
 =?us-ascii?Q?OrCegeyHzsG3bTiqrMMJGF5msYn2Aasq0XFqx4eIh2MCVNFh766n8sVxWlmd?=
 =?us-ascii?Q?Dx0kmuT2S5/LfG2aTx9D6aOwxZiUM5+QtIs+bH8bp9hofY496VTNkPOut1S2?=
 =?us-ascii?Q?Dk9HRXueHqR7tWYIPWraWuzXz0HchQk8SoWmhyt+g0JcxTMv/YhlgmcWAiue?=
 =?us-ascii?Q?sHr41zeJa7lmbakzntJImXVOoVCyG3FNI06p32C7xRbNROIYaga2f0rG4tgj?=
 =?us-ascii?Q?GuV8P7wT3CCzrFMvQGfdZGAVy/lFwWsmkn+zoI2wb/Ama3vHMmHtgXbRUNFv?=
 =?us-ascii?Q?6HLEos+9Jnt9O4sU6OM05P+3vZIuYUFJ8FG858keNxaAeaJO/dFs0RFCaYRl?=
 =?us-ascii?Q?R9d1MVZMF7CACnC/4sYtAsWNMvYX0k7JB6MkEy/6bTuCY7zsEGV6CmnNrLSa?=
 =?us-ascii?Q?Zuak2/yqTlaqPVjFTdNwwRTT5CltWfIx1DDVWTLTbmgKqNJ2m5z9mc3HYbUj?=
 =?us-ascii?Q?BmcopHhxLP7YGZsCCPpj4HW94MCF2/wcJ0Tup03ccVWGYYcacazyBsanViC5?=
 =?us-ascii?Q?f5nrg3aVl4fSV5TA/0iMjDRUtV17rcoW8eg3ZcMBnqmUIQl/R/AHcJ2eUmVF?=
 =?us-ascii?Q?QTDAFW1Px8FNT9nkw29zbg+e5BMWLK5SM5bOT/MmL2Mr8Yor9KLd7yBcTTT3?=
 =?us-ascii?Q?9zaeM7nMI9sjK7Za34ZX+F5fmvYt99G5GqMVuhFOGyDd9aBF9h291Q/Qs/RM?=
 =?us-ascii?Q?sriAHqXlquO5vzWTusDSo7505OTdTbrILkJnE45rfxv37lpcVACgqGK4UyG6?=
 =?us-ascii?Q?/aZdp5LDKpOi9gOBaf9KAXbI+1ZgNRHUgTe6kCQhjL2NvmajG4mK6hnrjTgX?=
 =?us-ascii?Q?ZGTinQPrrvw66CXzsOOgDqHUqqB6TqCSAKbrq/BOI6yl/kF6dN5p1rixVLpY?=
 =?us-ascii?Q?mEw/MI/H8CkOCcb4/WYPfP1gk5xtcwXLAaE2o2HOQhv8DVosB4+fMj5HiMVN?=
 =?us-ascii?Q?QmuZn2J/DLb5pxDSzFKTQaeYe5tlxLvl8ju2d2yB6XUhKN9hIQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nmef83u8x1Vlmoh6XeopIWYr5gAWUkr0fS7WJJUyVDmyiEmg9FmXbup4fW3t?=
 =?us-ascii?Q?umAp4B8GCxKlS7i2CgPW66cIedqS2pJKGDDfVjGz8jmr06XDsq1wdCS5+CSv?=
 =?us-ascii?Q?sDwaxq+uFGrMOuKqTqV+kCXqgIJ+rZkG//d+Ukogo2b9PojLucAs6+onAFAq?=
 =?us-ascii?Q?gsKfVFATu4sALtmy0GlQ54omcbNlLn5sUBQq6JxS8arUml1X4RZXJiMMBROs?=
 =?us-ascii?Q?uXOroHm52XSv2qwsSOenYAVSx9JC7a577rhzJuXpfLfycT7Hwu8TW7a5bOud?=
 =?us-ascii?Q?TGRpcFg1aZiK/8iuQYKNI236doAwK6v6oMnpK3doedXC/5v8X7OeEC9Ke/ra?=
 =?us-ascii?Q?EEUcwzTMsgpkMhWR6q6VluThA1i0cA/Q9vbH6jtaMnCZHujum5Hhy2UtPE1N?=
 =?us-ascii?Q?QFlR1Pf27sDrSasi2D9RQpD91DEhRj3I6RuutUyMT/11IjMXIJ6FDp60XcWe?=
 =?us-ascii?Q?RaBd+f7Pvbxb9zDmVM6kv8KXkzQ4vqBLtwORHQ5BYS+lIldPXTbB3wufv2XE?=
 =?us-ascii?Q?RE4cOMjORBJysJvxkdzUA3yJzmV6I+fddwVv3qTbIx763Hf7JtTqKlRHSg9U?=
 =?us-ascii?Q?5gFmv46F8hwUXrrWGtrd9KEo2dXrW8uw6ACcJxQAXYyNusGfQ5g0h3r0IQ+O?=
 =?us-ascii?Q?XIv0ymkuTzHD0iAE2WZH2UDS0F+CtnLrc/6W0G+nyEQCi2s1pe8691PqjYLe?=
 =?us-ascii?Q?dX6k7svhJlXD2PuQqsYRw3oQpK5un3KbyPXrS3cRDMM9nm6XZu5JfyGjcaAQ?=
 =?us-ascii?Q?FwdHBU2D/jjVj2XXbh9sbTm4D5snLTmM8SchmgimYnge1kuC8qOeQ4OSaHWQ?=
 =?us-ascii?Q?CXALF+jWhJfgrYZ3mNDUHvA6UFcxtlpDjp9Zp6EolaKp68SbQRB12Anc3e0W?=
 =?us-ascii?Q?1PoCnbnt+iJq419NoRcG7tbAxC2EVsrlVoB1ZTN1ILoANdzrs5lN63laneSR?=
 =?us-ascii?Q?ET4FO8C2exeJeo/CSaZpsu5pHnTS57eEQAUSkLh+O18HjcMFflYcuj4A831q?=
 =?us-ascii?Q?8A3TYe+HyazlIoZN0gJUrDsfxeEkWW/5S9sMyP3aEsciIzDsu8H0ygUxIx7v?=
 =?us-ascii?Q?3FpFFx7I6OfDX8Lw0b7Q9FTAVmtwUBtkpf/b6qp0Axeksw5ImSZtaf2W5rUK?=
 =?us-ascii?Q?oYq8W2yNQhFYHgLV2bcpMRhy/wB8dGrLXjkcH6fZZHHdPNW0+XYoJEWmQwGE?=
 =?us-ascii?Q?IdiZTkg0XKWXj7AnXJMDpmENU+qJ5XcHrt0uI8IQNVQA9Son7005MPNIfVUS?=
 =?us-ascii?Q?FUUSJPXLqEeQE7msKF8Z9UGLrVFCPf2WvxjTq2ZZgf3iJ0h8D27nGePqO911?=
 =?us-ascii?Q?iQltBQRl3dpCi1RKIhVER9Q3InrEzwfg4k2qfdPIEXvpthwrmADyNnzH0Hv5?=
 =?us-ascii?Q?c1RfjRSZLEW1gpneqYaiLBbEjCb5KvIv8hfVA8odThkvNEog9YjUUbL5YzFc?=
 =?us-ascii?Q?oPUhZESOyN1oXWJ1GDz63zRYSzlAcGX8iBkeKrT/T1+efdS3TOtBmugfJy4k?=
 =?us-ascii?Q?cHFZj+HS1LHQ/eeLlUpi+N1ZPqZgeoXRlGn6/xBh83mpzEmTukZAnljC6B8f?=
 =?us-ascii?Q?XxXxYUg6nc5Hb8N9n2clNNT2etPBwRM4Tt3YHLMm/sVZaQHjg/5QCDK+pptC?=
 =?us-ascii?Q?YvlUiGR3nYVm5C7ogi2h/iYeDUuZ4KdB3/KD5QwMRqB8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c921a3b-544b-4086-24da-08dcd30a8ba8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 09:09:02.5880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HM6I0pSHA5rd9VzfKCE1SFDInfBhwQxOQTNxcUnNnu22rLhZsOlzeG/1UGMXvGvR72wP3cQ4N6OUFZ+YqLa4Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

> > @@ -161,12 +191,19 @@ static int intel_histogram_enable(struct
> > intel_crtc
> > *intel_crtc)
> >  	 * enable DPST_CTL Histogram mode
> >  	 * Clear DPST_CTL Bin Reg function select to TC
> >  	 */
> > -	intel_de_rmw(i915, DPST_CTL(pipe),
> > -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> > -		     DPST_CTL_HIST_MODE |
> > DPST_CTL_IE_TABLE_VALUE_FORMAT,
> > -		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> > -		     DPST_CTL_HIST_MODE_HSV |
> > -		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> > +	if (DISPLAY_VER(i915) >=3D 20)
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE,
> > +			     DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE_HSV);
> > +	else
> > +		intel_de_rmw(i915, DPST_CTL(pipe),
> > +			     DPST_CTL_BIN_REG_FUNC_SEL |
> > DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE |
> > DPST_CTL_IE_TABLE_VALUE_FORMAT,
> > +			     DPST_CTL_BIN_REG_FUNC_TC |
> > DPST_CTL_IE_HIST_EN |
> > +			     DPST_CTL_HIST_MODE_HSV |
> > +
> > DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> >
> I checked the Spec looks like this wait_for_vblank is not present. As the=
 step 1
> itself differs here and there is no need of putting in TC mode.
>=20
This is required to get the histogram enable and then after enabling histog=
ram, the guardband values are to be written.

Thanks and Regards,
Arun R Murthy
--------------------

