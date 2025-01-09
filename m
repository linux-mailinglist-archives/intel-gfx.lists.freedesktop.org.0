Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66221A06F98
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA31710E09E;
	Thu,  9 Jan 2025 07:58:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONJCoaqW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2C010E09E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 07:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736409532; x=1767945532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zTKkFf45/8bV7CjREd7zRymhyi+OvqlEYPFN5tyvhew=;
 b=ONJCoaqWmeL9vRoe1nlmA2cg3OwO9ArFd4X9mUjEY1ut9s8FjeUXmkiO
 RzYgIMxPOfFUtD30kNB15fZ3orxUtaLXEPDswdrSgLB4aBrMQn+rwIor3
 BCRJntAhVa2tOJ7TJCDpD6uXrqU0o8XyGAdQinqpCGAzR6fVbm4T3NCmy
 0DQ1TUtT7HcI4OuPI6GGpwAXSVh4geyYgdYjlAl52vkA4/095ERp/vG1h
 EKJpW0NBWgJhE/xKmdqE1XK05iWHwn60NmiGonsQ8Ltj6xmJBfgBdAyqw
 bbmJSB6ItUfyzWj0XZAHgFiBFbAWzySGDfKtZr2wbokIm6+o8W0B4bGRX Q==;
X-CSE-ConnectionGUID: szbA+bQ6TEawsQFK5W4ppQ==
X-CSE-MsgGUID: 7iWFrZYKSgqnMNC/eNKLGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47231857"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="47231857"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:58:51 -0800
X-CSE-ConnectionGUID: G9tSTvaSQwu6cZ4cjWDGPw==
X-CSE-MsgGUID: /Nny/kGcTpaTABOjeQNYXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103301366"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 23:58:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 23:58:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 23:58:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 23:58:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FPx0F1xP4rXnrN5KEMLyxwMLYZl2O+vGCpytgCPDDixXqUu4yceI5K1znOzRrZpgO3v+7hhmqhISYyertnbCgdIx2Zsv5UXHrkAZfXon2jW3NbeozNWStNAZxgr7uGGqTTGuVqxnxzxUFdRQwRK6cPid7b4KKiYRrzeRcW6locsRfG2tIs6xMjE06S/UXQbo4pewofgE3tQRgeqaHrTjkBCEciYvaIpclGSggdwt76Z1h0Q8ZknBRV6LAYfJcTNqWWYxL5uT/qCe3O5YthpR8rgVr1J+hNkh71x3fILc8/l62VnQa79dCVTUBUry3WO6hNOtT/9jLZZ/gBelFxoFIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P0fFjF+7QnM6DJJvFP+6ywJl7WKMi+wIwszT34h7ioA=;
 b=baqXhgSTdbXoj7E5qHxqA+uLvIQlcVsk7xcNGz+/zzUqKL64YAG11EVQYB1RussYctRXIjoTrxlbsBwEwoOZ+qmW965xQIEPpYLairNsRS/FsNSvCwuXr8inOvBAXvq4kFUgrriaaBnhx790/Ht8MYKQsLZ11ugclA9NYEnppQk8FusJ0ZIFjMNBLO8DfewkDaPboCRHlkOMJoJ6e4CpuZC8GlI0EvF+XSW3UmhiUwGPOlo1860Qma4qDadaixZhxSZMfWBHHFAnnoaoofNNcNNal4zL8VAaZfJXNJZ8MtZosK3TH4hLF9t0TXrmSNjrJN+yiLX51m4/VUaP0OK7cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 07:58:32 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%5]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 07:58:31 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shyti, Andi" <andi.shyti@intel.com>
Subject: RE: [PATCH v1 7/8] drm/i915/display: fix typos in i915/display files
Thread-Topic: [PATCH v1 7/8] drm/i915/display: fix typos in i915/display files
Thread-Index: AQHbYCMbVMKx7r/a7UOJx5BP27+otLMLRZkAgALO3oA=
Date: Thu, 9 Jan 2025 07:58:31 +0000
Message-ID: <SJ0PR11MB5867BDCDAEA53D798D8E9E53D0132@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-8-nitin.r.gote@intel.com> <87zfk2lrbl.fsf@intel.com>
In-Reply-To: <87zfk2lrbl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|CY8PR11MB6817:EE_
x-ms-office365-filtering-correlation-id: 87e9a150-0a01-4918-5d24-08dd3083691d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?VBPw0kZO31kU0PiufvFoE4FAXrKBnIIla8JTiHGFVsoc+xr6OxGssmwPor?=
 =?iso-8859-1?Q?h6M/kgsyqCq205JI/x1qdYXqHpllceevznLCQf0ADbESJYF4yIGQYKLuKj?=
 =?iso-8859-1?Q?6BRX5SqS06pkuy0G7W0Zx2xJIMfQSH++el9wy0sbcoDvTUxxaioKMp7RCy?=
 =?iso-8859-1?Q?i3WJzkmPfdHsKQUCn3/j+itowESCej1KFUOppyNXyM8h/SDmYzzvyyXc37?=
 =?iso-8859-1?Q?Bk6zUPGmhM/lgphPm9+m9qn91vQ8pU9q0cTvkc4fGa+5XS0uDqTolazeIn?=
 =?iso-8859-1?Q?aeOb0xLSilQUA2eV+YJzKMfhJyyxgvX2kwT8duu4GI88ezKon8n/OVzJr4?=
 =?iso-8859-1?Q?zYQzRixmNrd3Bs9FTZ0/PAc1eqUjgztm4W/irY4im8S81k4++bUphl4qG1?=
 =?iso-8859-1?Q?Tiw+snITKbudJqK/oWIGkFKis+u+qAyRhC9hcqjCnG1D8xGbSBGBWMHSKn?=
 =?iso-8859-1?Q?V+t372LlUrYUS187Wy+iUZu9SMMnDYc2R+1l1+4x/LGYcpyF00YwF3HlzE?=
 =?iso-8859-1?Q?MVsQ+BndPsuNSoG8u0Wl8yJ4kziBDLtbWFRZFB/BvVMZpBxN1Vb8urGSxg?=
 =?iso-8859-1?Q?esZgF3GhSFs9rmosmcP7timu3MBENk3TuOn3BSYbyRjwM+Zgijeu/MEfYU?=
 =?iso-8859-1?Q?qRfqyDaR64jMEAIkZQQMZEKAHE+H4G/zZDh9fpioc6L2ijNGiaSrBkPLHh?=
 =?iso-8859-1?Q?8BNinolr4qeqiGKO0D0wR3e5V2X5Jqv2zm9BQQWzUxa8Hsfu4R48VmQfhI?=
 =?iso-8859-1?Q?eq1BtrX3Hkcjxa1RIi/0I1QiEQ21/VRbUmIgE6Q67Hbxbdtlbt/sBTP0dS?=
 =?iso-8859-1?Q?rZJ4SaxcnhgU4GDqU2V8yI/3KfqWZUMJZH4I+7pt1UPJiM/9H3XGA3OO7L?=
 =?iso-8859-1?Q?9+vgVdQ6GkTE70kpbvddP0oHgJqw/NbbxOag6s8JxBjexxBJ1NsrK02mJh?=
 =?iso-8859-1?Q?tiBv3exWIwInQLmRThXepIVMY7t5j2VMvfNEeJpPU1+yDxXPVOH19VsagJ?=
 =?iso-8859-1?Q?PZJ35XqsKAkw+hty2RWDD/c2Nc6CFdYHejCYZbo3gRLBsI+8gzON/4Etht?=
 =?iso-8859-1?Q?SnCW9WDJtwJasB+1SoBflrmHdBUJdCTNtceJRuJGyThIbHGalLXMGN4XFh?=
 =?iso-8859-1?Q?BqsTq/Ct9EQd8BhZpWZgFN8+tnfoOhKzNg6aOnXgOgd9c9cUF2Q5ALgcRQ?=
 =?iso-8859-1?Q?hMlCG6UN0bLbGvUnabnHfmMVeBKJ53hlj7YQEj51DMd7D7C6XewO4MC1+h?=
 =?iso-8859-1?Q?reWVi2wwUBtnLGDvT4jzfP8/mwpYRGo5Qao/3l68dN+0jYawlr01YvY9WV?=
 =?iso-8859-1?Q?OLV3sc8dVhIucytoZIPZRpR8PTtVuiWkHN+mmvrjMl01m4GIGCELKsMTtJ?=
 =?iso-8859-1?Q?fE0gqW+q1M66xAEW0KUjKF/O6FG++w0G7lK1scB067dM97gOnjf3QPX89q?=
 =?iso-8859-1?Q?ogPtvBLi3T22lGnwfNiJgje5tPjhPar27kbcDIbIcCOSp4veePou+N+6/l?=
 =?iso-8859-1?Q?JAXRWE3lqEs3bHYr/RS3Hq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kTbFGKWnKpjkePTaUifrQxReTKFgLbY1sH6Aa2hHDKpEXIddSqkBmuD3RL?=
 =?iso-8859-1?Q?Pw8B4A6TOCshZ8o+qSxddbMPLD6BBe3S5hAKYcA4frQgCwPulrsIhVhEt+?=
 =?iso-8859-1?Q?PV/91kuh9nTe1s5+D7ESoPNx/7YzU2QWtSrcnL6Wh8HZgwUUru8ozM22Pi?=
 =?iso-8859-1?Q?Im9ec+aU8b4wWStAxdauzhPyVjGrii3IIWySv4rZyBURGrY5wxeCRcQaUO?=
 =?iso-8859-1?Q?/JC2EZqVUmLftEP+a4SNpRvlXDhe13T85GHMYOlDl71PW9yctA8mbexzat?=
 =?iso-8859-1?Q?aOgQgV33yJ/M+cS+plGY1DtoOBJxcnZEPjJP/HlfX+lOTRmHzTvuN+M+q6?=
 =?iso-8859-1?Q?x6ebFYbX5HP/Dhf3To11q/q04IwZo4PGVffcK+OEbQAsCrskAQUDwaDqD0?=
 =?iso-8859-1?Q?E0JGiQ6YJ5oJMgBGVP5oSFjGT4RM347BxG3nGcIE41qOxL4PCLRfgaj2cU?=
 =?iso-8859-1?Q?FCIN+Mebpv3NtP0SMey9mMbmsMsiGnSy7K+G7S7jv3ssYusNon4J3fw3tW?=
 =?iso-8859-1?Q?VKxCScqCK5MYEInJ6T/asCALn01tc+2zNZV0MIXzQl0mVsRWB/i2HXyvwz?=
 =?iso-8859-1?Q?uZ/O2+xVBJieR2MFn04GaE704erWNInhrgOY0gAPUcqG5DNYq5rbxo+Q0k?=
 =?iso-8859-1?Q?TqNh0k3A+aW+fxnZXXiitVcXhizFCmk3PLARmCxk6fsbs1POvfuOaNoRzp?=
 =?iso-8859-1?Q?og45hwMr/ytogwYtBjwHH8cUCbq5LK1nfdSSohJiks4sTJBjgB5P7x53R6?=
 =?iso-8859-1?Q?yS9O0zBGNcfo1IvspQ2VtavWvWSkqtBRkPfkhSR4kS78mnG0jJGAB/axZt?=
 =?iso-8859-1?Q?x3xa0QT3ejfOYlin8tSepbZZioPu2PT4IqTWd7+DkycMx2OtzFPsy+538W?=
 =?iso-8859-1?Q?M2SQvTSyk5NdCqVmZtkk/cS4WcJChHPnJzF60sAsLe0udP+qmLVdPvUed7?=
 =?iso-8859-1?Q?aXOrIlRH4EiyGpY08KrO9nMDLP6ypa3ZrP65ryUbvnZXl9/RpvYiTt/UaM?=
 =?iso-8859-1?Q?M1mjUfTMtTBmifzztJn2A9Zxm+EH7Toax+7vgrAaoLbzWtl4QZLuJzy8KC?=
 =?iso-8859-1?Q?aepFKP4s1U1BGVHDQh8tezncYVlk/iOCjFwS2LJXt1mgQHyw56KsAQs9nm?=
 =?iso-8859-1?Q?r78yG4nUVIk9arDcADPNBFJILYxkFHa1JkhHZcKgSLPDjE/iGXNZqSnxnz?=
 =?iso-8859-1?Q?jZj/QrJIoF9XAFFFJJq0+tBXWF6O1SZ5AF0GxBx263kSmvG1tBdNHblFjr?=
 =?iso-8859-1?Q?uqkX8VUyRgLchppPJ2AmukVdKSNuBvzmAy42fsrF9JNfiNXFp4v1z3Dbfs?=
 =?iso-8859-1?Q?b1a8/Gy0/xklXTBtQ/JNF2+TbanO+oeFuQ4vFIvBR985+qVbasOcDZmRKO?=
 =?iso-8859-1?Q?a5HfVlhZHQGVJ1oMbz7OKlV8f4Wosay7dQdd4syjisEYjb8pWePOJR3y9+?=
 =?iso-8859-1?Q?GBE4d8YqKb8pcXDgq99AFcMVyqOVXWLnxQKg9uoxOrarLTeoo1kpVsQyaA?=
 =?iso-8859-1?Q?OcIUB+L1fY5clugABvYp7ayvbvSWnq9FvROUM4gm9P01breAl8efmWQOIh?=
 =?iso-8859-1?Q?ooiG1SHrO6/rbNMuHdTMl1VnHtVXVWWtMqTBCrxRIBYumj4nFR5la3JyRB?=
 =?iso-8859-1?Q?HGnWPS+2HXn6SMm+T/WYckh6yg/zftEbht?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e9a150-0a01-4918-5d24-08dd3083691d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 07:58:31.8262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qPtR4aTwIO9zdoTFNz9HQt+9oeyMyC/XraXCJuhS10ShlyG+nv0RQslKObOm6N3qN2MSSoqtu+AUgNoQOZIEUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
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

Hi Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, January 7, 2025 6:22 PM
> To: Gote, Nitin R <nitin.r.gote@intel.com>; intel-gfx@lists.freedesktop.o=
rg
> Cc: Shyti, Andi <andi.shyti@intel.com>; Gote, Nitin R <nitin.r.gote@intel=
.com>
> Subject: Re: [PATCH v1 7/8] drm/i915/display: fix typos in i915/display f=
iles
>=20
> On Mon, 06 Jan 2025, Nitin Gote <nitin.r.gote@intel.com> wrote:
> > @@ -8440,7 +8440,7 @@ intel_mode_valid_max_plane_size(struct
> > drm_i915_private *dev_priv,
> >
> >  	/*
> >  	 * Most people will probably want a fullscreen
> > -	 * plane so let's not advertize modes that are
> > +	 * plane so let's not advertise modes that are
> >  	 * too big for that.
> >  	 */
> >  	if (DISPLAY_VER(dev_priv) >=3D 30) {
>=20
> I appreciate the typo fixes, but there's an explicit policy that certain =
things are not
> typos and should not be fixed. This includes British vs. American spellin=
g.
>=20
> Can you not tell codespell that?

Codespell has --builtin option for 'en-GB_to_en-US' for corrections from en=
-GB to en-US',
which we can't use as it corrects en-GB spelling to en-US spelling.
And there is no other option to include both British vs American spelling.

I will correct this in the=A0next version.

>=20
> > @@ -2552,7 +2552,7 @@ intel_dp_compute_config_limits(struct intel_dp
> *intel_dp,
> >  		 * seem to suggest we should do otherwise.
> >  		 *
> >  		 * Use the maximum clock and number of lanes the eDP panel
> > -		 * advertizes being capable of in case the initial fast
> > +		 * advertises being capable of in case the initial fast
> >  		 * optimal params failed us. The panels are generally
> >  		 * designed to support only a single clock and lane
> >  		 * configuration, and typically on older panels these
>=20
> Ditto.

I will update it.
>=20
> > @@ -442,8 +444,10 @@ static int intel_overlay_off(struct intel_overlay
> *overlay)
> >  	return i915_active_wait(&overlay->last_flip);
> >  }
> >
> > -/* recover from an interruption due to a signal
> > - * We have to be careful not to repeat work forever an make forward
> > progess. */
> > +/*
> > + * recover from an interruption due to a signal
> > + * We have to be careful not to repeat work forever an make forward pr=
ogress.
> > + */
>=20
> If you're changing the comment format while at it, might as well capitali=
ze the
> first sentence and add a period.
>=20

Thanks for pointing out. I will fix it=A0in the=A0next version.

- Nitin

>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
