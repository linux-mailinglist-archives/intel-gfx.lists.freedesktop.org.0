Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0pWjGfcXOmpp1QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:21:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D566B4265
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:21:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MosAUOpW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7E610E946;
	Tue, 23 Jun 2026 05:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDD910E946;
 Tue, 23 Jun 2026 05:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782192114; x=1813728114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bHCO+dZws64NgVkK+UbHHJV3JH8XNYjsUZe76jGEGAI=;
 b=MosAUOpWxFvEHmRNeCbhoXTHOYFop7v2aDwikxHd2LP9d5E0BVqVQBYU
 LmEer8x+VsN28UPQtsjMflVlKHPEuTy6eNHAXg2Ru6ABFEFipCXdHW0iB
 hZK66B0UW2XmGWMX4D3mnIGnmKM29gHQY3mJaanhhuv7WfO+BIv6MGOCk
 FMhjtwvCLQ/GFvfnKZXgsK/nCQDSFnptqIY/qZ8JioskN5exBory1sxTQ
 QphwWsutxI/nzGI3CekaXJXOIQlF0EEugImS3IUUCVdxwNzsH1S0tkzYH
 VncitKGY+ZOjibwwgooh+l1571I/nj4ZrQb/yRK2QhZhOtP0fCQA5cptC Q==;
X-CSE-ConnectionGUID: WL7P+hsZRcera1CGOFAp5w==
X-CSE-MsgGUID: VUSQL36sSzmzmphAwbAqfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82797086"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82797086"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:21:54 -0700
X-CSE-ConnectionGUID: H2DsPFZYRPWG4y6zVNARKA==
X-CSE-MsgGUID: KMswHq7LSVy4IW//DwIvLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="287551007"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:21:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:21:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:21:54 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z6Zdp2C6OYPKL1EVSORrrTqv0STF2HPmZPKd16rqr2C/KriUwUgJ7+ZJs9H/N1vF9ovdYS7ryAe9Lf+kuLOgCuI58VK9hjZSe/uuJeQ/fcm6YHjwz00yb8+bAYhgNh5p/X4gCkbkxFAmufYJZTOdBauzy13CHUC66xfKHiINPtd5CUx3NrTDLcUhcTvqbWUDj1IzxLPuFk3R5gAoQ8v8hS97YWXNjfErLXgENuZLGdp7rgpiIjTDJjkDwuNqa8BoLvDtDMnsNqA0O5llFAJGnossDNAyjyah9o648gzxa8V5i7OCaTI6UXsz4eOvAQo+3i+zEAwmiD8l9TbkD4J0Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=50ILJuNE/fhEu/PHAYCxCDdooVy2h+nF/xzXUjhhip0=;
 b=NJM6VtdYQvd1jXt9aMUJgZK34nEylhELnACJrkGd5vMhl8dLdBs6NOPpe3RY/Kc47b18mYlxtonkeuPdE8i+8cvi1mFvxzX3+udH9NoUWPcC2XQEqAVX2GbZB+oyf9pVaXnIjP87HLEbCGz/Bd7QqmtcunXU8FLt7o7eBbH9gQRqBFfEh74gkafQiyAZnNfhNYqjKWejH1tyPJo9din9ucsGT8Nz90sSufPh5XtRIGQ8qEfLWbXxyqpR4TdaNLn7GOuiDIa9BU51n3oESJNyLOczj35KSSWrhvHt5dR+v+pAL03eRJ9tALsFuELMgwDpqZn9cels7zbuQepnuM7u1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PHXPR11MB9664.namprd11.prod.outlook.com (2603:10b6:510:3cb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 05:21:52 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:21:52 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 15/28] drm/i915/dp_link_caps: Add helper to print all
 supported link rates
Thread-Topic: [PATCH v2 15/28] drm/i915/dp_link_caps: Add helper to print all
 supported link rates
Thread-Index: AQHc/c7hRfj3QkHW/U+di5XXE39gH7ZLpLhg
Date: Tue, 23 Jun 2026 05:21:52 +0000
Message-ID: <IA1PR11MB64678B16F76B429E472BD94CE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-16-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PHXPR11MB9664:EE_
x-ms-office365-filtering-correlation-id: 97b37f00-ebef-46fa-7690-08ded0e75553
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|376014|366016|22082099003|18002099003|38070700021|4143699003|11063799006|56012099006|6133799003;
x-microsoft-antispam-message-info: ER1+yZTayCdzkk+gyat1wjq5ANK0fZxaxBdGbkvb4GOW/FZwfiHgaMdPSaDNdtkZajrGXuIJYRjXSsF9hwZ5DXg8f4ilDPN46EBn8JoP+mHOR8H5eRnKGesx37AHxk+mtMiJpaIALZdwPokvn/Nu7v5LVK1rej5dfespjtt+O+DZpC53mG4CmJbqWiO1uD41AysX7WSoXFa933oaiUz9pkJrookTtz9iDlDWgNryfRqJRxyLuMS6hHXko4gBhrj35Y9TlJSc79wHZQrVi5O0IcLIvKcDPmdlEAsekl7GT4hU/LeOK8N8iGgESPrWtzCJCaRvWisCZQ0PJt/at9RL+yuReNhh5EZSGJrACvF6ZXeLesctdqMqOiBWDDKZHERJ/XoQVqelGu/i1S0+na6mssD0U452ndtSlL6GoSr+ClN3aUWhy2JmmHjQAkbgfyPvD6xNiv7N0j7IrHm5PntjD3ZuHZmDq8hwh/xlIIiZZinFG/Ud2rNbKqqgKxBSFD6OJuyQ6FTX2XrVwGJkoY2lLac93HT78M4lKEEVO/NTDa1VDznjBvt6j8cRkBx9I2kXPLOYpPgYlcZ04XoYNNoUS1qSsOHbU/9vytTQtrtXkHwuDgFzvSzhzSAnZUnKhMzFjmMKTF8qGL7OfMEjsE+ot0Bt5uJ604fIZ4VwUVHAS1fBeRJXT+lvdsGd2nS4j8M+DS/xdhm/XLUIuU1UtRa7T/xe4jakjUCSJeigol4+khE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(22082099003)(18002099003)(38070700021)(4143699003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wO0F5t/QMZpoi/SP+Tu73OBlHjq8wWsDVbylgvDtDJAf9ZcYyzHWHZFjx3c3?=
 =?us-ascii?Q?u2K1aWPHDvGJ1kBCx6OGbYaiEIfny5f1QnT3o2xocK7BCoNaYC3/b3Apumtp?=
 =?us-ascii?Q?VP2xMN9khfp8aynn3ikt1nCVBb6nvCtUj+SVfUW8c52//zIElIwNOf7do4v+?=
 =?us-ascii?Q?wUyJMKpxDx1GvHldyPbIP3pgwIhnozneqMpYhVomIHEvSGj5WDlOsA4nlAO8?=
 =?us-ascii?Q?NB3jeHG1AK+60iC7aM/ksRTZh1Qxd3MzRAY/UCGHrm7DVsZ9AA+h5IT2aAMD?=
 =?us-ascii?Q?qb+3v2gskbBrerPMpq/pvZJ3ykjOdBRuPSAtRiEUTUSfHA+joDDpq47G1svf?=
 =?us-ascii?Q?QuhBV1CrSEBnrd9CqMRUsBqdKhS2qeEExyc0JSeMcT8rY2Mi/X9IfA5B9/x5?=
 =?us-ascii?Q?Q/DJ5LtY1TbVQI+7C2UWZNljgEcqKT+1oTPmGS02i7v8OmVhY9vapfP8urx6?=
 =?us-ascii?Q?1AQnDafR+7tKacP+umvjobQT831z8+kUciYXX1S2oDQt2nWHuGFVEysw1zcR?=
 =?us-ascii?Q?pvEEcjky0G1j5zF6NWC9Y00+JZnrAaS1yVEREVOzAJxH4S1uOBP/7CBWh1fq?=
 =?us-ascii?Q?sngMRlXzNHkNYoZIc1DWNHNqzC427fgIjivbRaikEO1jife+IQzp//rTQKYd?=
 =?us-ascii?Q?Vrwq4efiT7GMjLIphoKlYI80R6DFK22gJxTCeUmk2rQmuA3Dr3UqWFlMxSt5?=
 =?us-ascii?Q?XPO+HjNg4C7wdQMWWRq1i8GIrQkZNARQctTw+tA2CJI59yoqSXVfL0xPartR?=
 =?us-ascii?Q?nL8rXS4AEr84Jc4KBd8RGV0O6rZyimL+2x55hVz61P6mciFsG1O7kOiF59+v?=
 =?us-ascii?Q?CMz2D6qqCWxap9cfIYh5ttk+PMIn5NSXZZuZwOUuYj06VOsTvh1Edsaos741?=
 =?us-ascii?Q?qJlKKDyxUgm+X11mluK12w2Sqk78rxwFmOx2W+0jOKof6byqqth4oAdcNgQD?=
 =?us-ascii?Q?iWnh+FIFg+c5Er6sQ+M7b4+Voc+yzX8NxnDuiH6xScfVc8zl8MPz4u0ZIRfR?=
 =?us-ascii?Q?fAq2p0msxW5gEQ4B3jxNsYEAet+w82zqqISQxEMOcsg/fvrYDbtPsBOO1t1K?=
 =?us-ascii?Q?oLXl8V7WlNcq8uZv7QC7iGoQ/DnIolfUJOUVopoq62Mt+3+fVj5tGQrzz9mN?=
 =?us-ascii?Q?GrJVokqKEi2+Lsyter9OKdR2vTcjUesSAssqycW9h+wvG3IMKlM3TwCtNjvP?=
 =?us-ascii?Q?d/3kOOb1FOWsfuqv5HCiXGW62LhySUSjSdsu0l4L13PfjTekSsuy4t7W/0Xe?=
 =?us-ascii?Q?36mQWAHZzBFebtt/4yXqqamq3xG10fT1wywXROD4JUPylOp5WrCcs8Kn7E2B?=
 =?us-ascii?Q?D4IwwqnNsy+3IZWx04+S7m6DZitLI4vY9P2G9zMmRKoUgjPtx6GnGj9INaYP?=
 =?us-ascii?Q?Pb9jsKNRbBa6OWsjecYX156z6G2oKWZN2+6mj3gTXyBMnnQ3Y0An0MmPTSZ2?=
 =?us-ascii?Q?kWrHrj0X/DQfijmyKKr9oI4W93N5WzFTnEWajrnLLpFdJgxQ9Rb4b9/0hyNI?=
 =?us-ascii?Q?QqZMKs4/ddd9EMjuRQL64qsGQFzD5fh04kKl9wvM+FOnr6vCon86Tnn0JaUc?=
 =?us-ascii?Q?el40J7+0rJXmxPS3BdOJ4NVeqC2QR0RerFsb+IYwR7lPZW5AqCUjAKWIE3bf?=
 =?us-ascii?Q?8tEfoy9ixrwWEFE2J2Q06UGk/HfE/qGU+2wBxg0EiOoSKAF1DIfJ3jIJtrq0?=
 =?us-ascii?Q?XsmIY9Y4HpZTAADT2pqtHJUVcEyMbEUqn4n4RKlv9rDaQdx0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FIMlFfZ1wv5LN0ReegWIMc7nWMG04i+GgNkskq6qoYf3ZO2tAyWGvV/GFZYFScgwn2qLBJa9nrZAHIObRKo3tEXqFDqXtuO8GE8RxG0himcVj8fipovXWSuLrg6/H98MeBP4BrDfhXO6b54VRQuG0wQ9I9CeSYadZS6e8asqwZLV64saDUGsm+UOMdV3cj7HF1E7s9Fo278tqM1+KoKWE32SDDwugz6Y5kydZKwNpQR2seEnDcqjcH33DbdlBSKuvBXt3fJqWuNPNAfpcMGGuq9hWTxFZoEie54yh4gr3eWGgq4FlKpMq3Ooifpq9u3cKrGSP0iHymZ0wdYcTmFELA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97b37f00-ebef-46fa-7690-08ded0e75553
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:21:52.0638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xcqbxS2RII7GN90MLZGMwwPOeLc095L5plkHDAjzYjv2ovhqSDXlDkz/KskRT3K29vct1WcRIZ1PmTJf+tGfRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PHXPR11MB9664
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3D566B4265



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, June 17, 2026 1:39 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 15/28] drm/i915/dp_link_caps: Add helper to print all
> supported link rates
>=20
> Add intel_dp_link_caps_print_rates() to print all the supported link rate=
s
> tracked by the link_caps module. This prepares for tracking these capabil=
ities
> internally within the link caps module.
>=20
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c           |  4 +---
>  drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 14 ++++++++++++++
> drivers/gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
>  3 files changed, 17 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d2b9b6fce2b32..f9c3d3561c417 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1543,9 +1543,7 @@ static void intel_dp_print_rates(struct intel_dp
> *intel_dp)
>  	seq_buf_print_array(&s, intel_dp->sink_rates, intel_dp-
> >num_sink_rates);
>  	drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
>=20
> -	seq_buf_clear(&s);
> -	seq_buf_print_array(&s, intel_dp->common_rates, intel_dp-
> >num_common_rates);
> -	drm_dbg_kms(display->drm, "common rates: %s\n",
> seq_buf_str(&s));
> +	intel_dp_link_caps_print_common_rates(intel_dp->link.caps);
>  }
>=20
>  int
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 679d59cc256c9..13f9bfd5d7bad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -6,6 +6,7 @@
>  #include <linux/bitops.h>
>  #include <linux/debugfs.h>
>  #include <linux/log2.h>
> +#include <linux/seq_buf.h>
>  #include <linux/slab.h>
>  #include <linux/sort.h>
>  #include <linux/string.h>
> @@ -66,6 +67,19 @@ int intel_dp_max_common_rate(struct intel_dp
> *intel_dp)
>  	return intel_dp_common_rate(intel_dp, intel_dp-
> >num_common_rates - 1);  }
>=20
> +void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps
> +*link_caps) {
> +	struct intel_dp *intel_dp =3D link_caps->dp;
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	DECLARE_SEQ_BUF(s, 128);
> +	int i;
> +
> +	for (i =3D 0; i < intel_dp->num_common_rates; i++)
> +		seq_buf_printf(&s, "%s%d", i ? ", " : "", intel_dp-
> >common_rates[i]);
> +
> +	drm_dbg_kms(display->drm, "common rates: %s\n",
> seq_buf_str(&s)); }
> +
>  static int forced_lane_count(struct intel_dp *intel_dp)  {
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps; diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index 09e580bc5c9b3..7333df6b82f97 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -16,6 +16,8 @@ int intel_dp_common_len_rate_limit(const struct
> intel_dp *intel_dp,  int intel_dp_common_rate(struct intel_dp *intel_dp, =
int
> index);  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
>=20
> +void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps
> +*link_caps);
> +
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps
> *link_caps,
>  					  struct intel_dp_link_config
> *forced_params);
>=20
> --
> 2.49.1

