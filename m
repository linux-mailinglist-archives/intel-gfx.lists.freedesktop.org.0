Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D876AB2DFC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 05:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0288F10E008;
	Mon, 12 May 2025 03:19:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SaNBWy9B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E790810E008;
 Mon, 12 May 2025 03:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747019969; x=1778555969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u+CpmYDMdS16qjltep4SHpo7jDQbjabzYHVF+9l/Ihg=;
 b=SaNBWy9B7aAD54cUVrZ5IkFJvOD5hE+3DEf+eSGh3SBVLOdg6M5iz8Km
 1n629FMjv0N+YhXTDuMJ4pMjkmDfd2EpHvhMYFM/V/z30rSydHTd1QQRP
 IefhEcprvzIcI18rY1IPrR/gTvJipT+iSxRbQjKDS6G6mlHLcSmQ6etWt
 2k4ayqzTXXTjwq9qYgvbYa3Eulq9QKfiyqq2Qmo4t4NavsvMmq4puYkYL
 P4nwetH9yKAeFCsLGGubBkAQIiWplJUKJUC40BiQQMuFdRFfauXC/yc/A
 jPBbX8RMINOLecI1D7Jk09ITmXyktUYjBc/5E0s7azWA8lM6DBdb4dSyc w==;
X-CSE-ConnectionGUID: UFv0q4uzQG2uYAgvU+vLDw==
X-CSE-MsgGUID: XS3n0v6qROqnmTY8I0ZDWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="48701440"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="48701440"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 20:19:27 -0700
X-CSE-ConnectionGUID: d+Va8uGST1SdQpEex9K8DQ==
X-CSE-MsgGUID: v4qpCEfkTRW+sVsc0XKS9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="160494947"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 20:19:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 11 May 2025 20:19:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 11 May 2025 20:19:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 11 May 2025 20:19:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWEMgL+Cq5V/Loo+5E92XyWNfOEVM2C2lfARZH7nYOlNvklhFUUv+TJishpFkM7cmOThsH0mdzBy0HkpMTTr9LHFaiepBteehQ5UCMg6f+5Ku6a+iCCAUw5IKkP1NnpGDiwviUQU6n0+tZtDplPEjswI91/0f76hap7USR+WnLI/ZlWlEl5NfZfrKQyeQcdVUdfMdYcr+3XLOEybwpAL7LS7FKuS8+1KjRLhbfwCLSomGwBLfBImaq8ODJJyODjbLMZpgbEBmLEgssKVh14cKqoYkkINmMo3+z3nzn4Sxfn3oVFiCwkNyh8xUgZb9tM9V5+6b/NdfpTVNAq/Z+GZjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kq83rAGAqivbACThXHsKAuQvgGUkRFGb0Jb9n9zbrSE=;
 b=TCWKzEhzE+43IeGucWkvGFBY7vUoRrs3uqRdkdAhOQSjirW0/pzbUuvq0vbCm48Hqyefl9hq33alYEsYTpzQuida+GlaSidvaHHxi52+ZcMN7ohpXuno2LiTF+M11d854QvQj8ftsr25v7FaSnDkHokstgYjicP98RKrlR05Wdqz+LzSIBv8FBXpAE6jSozjBbvIFxgN/cjIoeqNGH8WcDZoglbt4kHj/kyZ6SeD8hOC2qYGuAppCXi716ZXCUtxIweERJsU/WV4Qv8qaYOnhXgfBuSpalTadsSkYZ+wUi8HdRDTZRVxwbyykRoYEmsuAXsVj8SAIyMzQ1A2pViI3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 03:19:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 03:19:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH 14/18] drm/i915/dpll: Rename intel_[enable/disable]_dpll
Thread-Topic: [PATCH 14/18] drm/i915/dpll: Rename intel_[enable/disable]_dpll
Thread-Index: AQHbwJraIqxYOFFpQEqHLk0zGPTN/bPKGTUAgAQ9lQA=
Date: Mon, 12 May 2025 03:19:22 +0000
Message-ID: <SN7PR11MB675060D2F57D0371BF20F89DE397A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-15-suraj.kandpal@intel.com>
 <878qn6krgl.fsf@intel.com>
In-Reply-To: <878qn6krgl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB8567:EE_
x-ms-office365-filtering-correlation-id: 338a0871-3d78-446e-8bfc-08dd9103ca75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?YoL2rJYbQtmlVQV0jVl7fBeNz93dlvNhmQv/t2H6uLtW50wkhjHfDRzku2OI?=
 =?us-ascii?Q?UtWXmNPUdd4umCW1qEeP5U/v9A+yZVm6vUgn0hU01Ww1MI8olhkACCGeZd44?=
 =?us-ascii?Q?OPf0mTTAMKir/edq9dWcU3aX8j1u8aoeubkECMRfuG6p0+zT5KZb3gvYILrs?=
 =?us-ascii?Q?bLo8lMoDX4mB5QYbGA5X1sBazCpq7sOPmRGYTYRD+pHXBRARKpoJpAIa3eW/?=
 =?us-ascii?Q?3MSN1p06sUIwYEI3WcdEyGtQsue2ESQ7tByK7bLCH1PL5JFIRJC9RYBQ5dkM?=
 =?us-ascii?Q?lbY/eRm67VZEFlysWWj1JVtGlQ3OmS5CRIOgO8+sRmx32GVx7RwrgB0w/qYA?=
 =?us-ascii?Q?7/cbr6X7I5/Raxc7DsLNjdkdkQixHXFFnCLK86sIPgMJcWzRqP2b0ftBbIqV?=
 =?us-ascii?Q?zHopVZtA8qXpRziSsCdPS8lS4xdTNYsUVLkmdaS8PSR7nNFCuX5cAd6jmAea?=
 =?us-ascii?Q?hYxT6tnv9rAjC/cDT52mtaH93W7N9pj3ZxNW9whpocUXDontH1B4YQOXWjKj?=
 =?us-ascii?Q?2yZQPZglhLjSptuv863GkvrYqcmcsdj8iLP3rGOF58WMfB2cVipwYqqDaguf?=
 =?us-ascii?Q?GGo6bN/kTissWLfE/YZvQy7RcxF4jeusSrZgc3wWroDEM008RKoySFd9zqJQ?=
 =?us-ascii?Q?wevT2mJdzpauYR/YVFk53qiPDhkQ9eW0TcbCfs6XGq/26F7xWwth3ukbotD3?=
 =?us-ascii?Q?yS02ZZNqSqdvqDZ4WF95r+0VheUoCz9eaOUf1V31EkkLPavAmpuENSF3lPNW?=
 =?us-ascii?Q?kDcYXnSEw2yw4PmYhpvu/QmiDM4ysf6ZOUt9VdNQSIjxSccQ6Ss5eO6m1X/o?=
 =?us-ascii?Q?QiG6QDwLaVMo+4JgmOca0oPkaBFmFJrLrJKUIMxmkrCFScfI6KqCqA05iQSB?=
 =?us-ascii?Q?8TvbptOHs0PjKx/qbFcPLlT38wbA/BnzNidqXwgRUxocW51hbFUTYRzNG19U?=
 =?us-ascii?Q?xTXWNuLWJO9ITNCVpirsDeoMUdpN0+EL68UT/wCK+KZBTXzCogZQQvsohquO?=
 =?us-ascii?Q?2JvW6DxTMqCGcH+HwUYY6D3f7QLSoK+QaJGvkXRhBACcdbBChA/0IqgmWJDn?=
 =?us-ascii?Q?LwG6q/evvOfR5FDCAC3j2ilO2UIKWWdt2VqdCq5psu5PCTFKai5QzZ5Bry1m?=
 =?us-ascii?Q?RPNcNkMxpYsGSac5IUXt7CCmGvn4sV+Ydn5aEJf04aAXfU+zDHtNGwBypsUL?=
 =?us-ascii?Q?sP9Z1hmqrbYqObJGDhe8zBn2uOuznFkcnVrk3jJjM9TUXwm/tkjbtDa6570a?=
 =?us-ascii?Q?OPoZ37BwnS72i7RU9bPIhQuNlw46S+bU2TBPVIPpgq4uB4cTEp3BBa6VZ/Ty?=
 =?us-ascii?Q?26OB7cNT2q6cqsai5053T2BX2mtPUamfNGburarVQAFKX45Ob5al8uwTuZN+?=
 =?us-ascii?Q?nv5Zikyb2AD4msGBU5oNr/GashUIQtwCClrQROaPgPjbp057A61jk8khp+mJ?=
 =?us-ascii?Q?4vOdUdmrF2Kh8JUsUes7qZnvc6Cb7iWRAcGB0lC/Kg0tCpWUFBHCGaoeqCJw?=
 =?us-ascii?Q?i6T3h2vNixya/GA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6aW6Bmp+JfxxG+wtYAEBttGvHLuLXB6EWTM2iS83UjfNwpc43orNCfwY43S9?=
 =?us-ascii?Q?2X4ZItHFYBziBbgIvFINgvoZpgRhrGeDtmz8n/ehs6ag4VBukPult73P/IBM?=
 =?us-ascii?Q?R9JS/npZKDR4/KNWsoV1S9dKGlN+ciSCgX7ES2qUceatghhE/ukymjm6+Jvn?=
 =?us-ascii?Q?Q1a1Zqlx4QQtUZK6JhpTZl4w3U4v/ODHR0rU7WRi9QOT2WZt7fcpDfF04zIa?=
 =?us-ascii?Q?CIUPUbrqtybdzcLgLBmhyGVFwDVL8rWkoEQ3HsKSr53fHclVle5vy8DJBSt2?=
 =?us-ascii?Q?/kfVJBsnJS7HdDAvVeXQpsgZ3G8LvxkRy4nLME5L9+uPJ2lC9GCRaufDM8re?=
 =?us-ascii?Q?yQK1/gfl+f4JivtegpKLQ5O+OwnZksyH1ARwVnwsg1RipOMwGXwueOuE/bVn?=
 =?us-ascii?Q?ucS4x2BmoDJj/rm2w0dyRDwjO1dFzGVJSl/vxHoa8E0A1/EvHtc7p4guQSeD?=
 =?us-ascii?Q?1drUTELMbDNiOckxd4XwkvW/u0onkD4gzE1rlrp7c+ZGhO9+J91DP7PIVlcF?=
 =?us-ascii?Q?YPg2JFOBmlYjy+JzvCs23oedrBglJn2Zp440V7sM/V5Bkf9FzulIaGJbcQ20?=
 =?us-ascii?Q?rb+gTf3pAzzH1SwMLYUSqaaeGhXf9WVTkHOOf6f8X6W4sVo1/Vw/4Oib8vwh?=
 =?us-ascii?Q?C8EuPyk+fozxH1uk0xOzITfs3D69aekQbrxGO0veZojadoKSK/cENEWwJ6Gb?=
 =?us-ascii?Q?7NQRWCpuP/dABBKfVJs3esJI+K4c8ddKOfnB7nPVjMBd0wS8uycqJN7lhJpY?=
 =?us-ascii?Q?FRCUaOTLf80cXLisYtPMVYIkzaKCzyyT02dsPgdu/dYGEVDCsfzZUsJh4Kmw?=
 =?us-ascii?Q?2khHzt4bReESpvpVhIEiaYAGbnlTI+KVMqoM7Q5l4sGjckxM56Y5/W5R5MWZ?=
 =?us-ascii?Q?WPCQSLBRQOqkZJNkdOobqcLEWD1b4v1IH1JlKmmQbScxd3WHBK4DMBKfMSre?=
 =?us-ascii?Q?PNENTshAa/xELbyWZ8oIwZNYQBHI+BsXpCZQ1s9gmFNIuJDNiOf4REcB+jrM?=
 =?us-ascii?Q?J7L5SK+YM1c3AOiy0mJXGSM/Q5IQtXiHIaovTT7xNFaJ3/IR5dN/jRGz3WKo?=
 =?us-ascii?Q?pt3qsCWM0sqtzlupuF+bTP6jzLlpE4epPVKDMqVQhYZJe5ULVohMvpwGvMKC?=
 =?us-ascii?Q?Zw3gS8vRuEmpb6LIteyehmABiWT+gSbmupWxLHvgxB2btS/oyalePjK/BtJ+?=
 =?us-ascii?Q?YuSaGgVgBXtC3ldAmMYbY5hBKYLDrXD3lly7jpZq6VZYSH2NsZHcpgPcdvA+?=
 =?us-ascii?Q?VCUbb5Bl5d6CERdv9lOZkZPJKNJEQWBwFQ8C5eGPvxXX9tYaHIpWergk1PU2?=
 =?us-ascii?Q?K8Yask5M0VgCraiG9DdL2yZF50jARQ3JUeLdoVLD/Cf5bJbJDVpx1+bcwB+c?=
 =?us-ascii?Q?mOf5gvtFO33FQ2ZE6xhCXlM7aG3P+qU+EsrzIIgzVVxhuAV+hmcrqVY2XqDr?=
 =?us-ascii?Q?EXsUPBLcjYGCvemJtvkyZtsMBzIM/bQcZfpfAjZxLZjHRlvWBktcRCF2HLfP?=
 =?us-ascii?Q?4s66TFvkqV+GgWClKQlB8qfSAcuB6b+zru2pp85KRNholSKN0GG20dlpt2D8?=
 =?us-ascii?Q?p5NkzfGev+jAZQZAY1dJkWEG0NOW5v/qRvHZmmOV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 338a0871-3d78-446e-8bfc-08dd9103ca75
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 03:19:22.3911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fhNKBgSmqr+oowG3nGUSRyg3FODk3ZqoDwdk/uIcjxm02Jdk2i07X7dAskfw62YbFRQOm1QyJ49TctLrlmUB8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, May 9, 2025 3:59 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 14/18] drm/i915/dpll: Rename intel_[enable/disable]_d=
pll
>=20
> On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename  intel_[enable/disable]_dpll to intel_dpll_[enable/disable] in
> > an effort to make sure all functions that are exported start with the
> > filename.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
> I think you should repost the series with the controversial or incomplete=
 stuff
> dropped, and get the straightforward renames merged.

I think you are correct , I'll break it into two series will send the contr=
oversial changes
With the second part where we refactor the rest of the dpll framework to ta=
ke into account
The cx0 phy.

Regards,
Suraj Kandpal

>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c     | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 8 ++++----
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h    | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_pch_display.c | 6 +++---
> >  4 files changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index b091faff6680..8ee4833daede 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1664,7 +1664,7 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> >  	intel_encoders_pre_pll_enable(state, crtc);
> >
> >  	if (new_crtc_state->intel_dpll)
> > -		intel_enable_dpll(new_crtc_state);
> > +		intel_dpll_enable(new_crtc_state);
> >
> >  	intel_encoders_pre_enable(state, crtc);
> >
> > @@ -1793,7 +1793,7 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
> >  	intel_encoders_disable(state, crtc);
> >  	intel_encoders_post_disable(state, crtc);
> >
> > -	intel_disable_dpll(old_crtc_state);
> > +	intel_dpll_disable(old_crtc_state);
> >
> >  	intel_encoders_post_pll_disable(state, crtc);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 3a724d84861b..d1399ab24d8c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -257,12 +257,12 @@ static void _intel_disable_shared_dpll(struct
> > intel_display *display,  }
> >
> >  /**
> > - * intel_enable_dpll - enable a CRTC's global DPLL
> > + * intel_dpll_enable - enable a CRTC's global DPLL
> >   * @crtc_state: CRTC, and its state, which has a DPLL
> >   *
> >   * Enable DPLL used by @crtc.
> >   */
> > -void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
> > +void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -303,12 +303,12 @@ void intel_enable_dpll(const struct
> > intel_crtc_state *crtc_state)  }
> >
> >  /**
> > - * intel_disable_dpll - disable a CRTC's shared DPLL
> > + * intel_dpll_disable - disable a CRTC's shared DPLL
> >   * @crtc_state: CRTC, and its state, which has a shared DPLL
> >   *
> >   * Disable DPLL used by @crtc.
> >   */
> > -void intel_disable_dpll(const struct intel_crtc_state *crtc_state)
> > +void intel_dpll_disable(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 49eb02d72f44..f497a9ec863d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -417,8 +417,8 @@ int intel_dpll_get_freq(struct intel_crtc_state
> > *crtc_state,  bool intel_dpll_get_hw_state(struct intel_display *displa=
y,
> >  			     struct intel_dpll *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state); -void
> > intel_enable_dpll(const struct intel_crtc_state *crtc_state); -void
> > intel_disable_dpll(const struct intel_crtc_state *crtc_state);
> > +void intel_dpll_enable(const struct intel_crtc_state *crtc_state);
> > +void intel_dpll_disable(const struct intel_crtc_state *crtc_state);
> >  void intel_dpll_swap_state(struct intel_atomic_state *state);  void
> > intel_dpll_init(struct intel_display *display);  void
> > intel_dpll_update_ref_clks(struct intel_display *display); diff --git
> > a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > index b59b3c94f711..ca85596dfc9e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > @@ -394,11 +394,11 @@ void ilk_pch_enable(struct intel_atomic_state
> *state,
> >  	 * transcoder, and we actually should do this to not upset any PCH
> >  	 * transcoder that already use the clock when we share it.
> >  	 *
> > -	 * Note that enable_dpll tries to do the right thing, but
> > +	 * Note that dpll_enable tries to do the right thing, but
> >  	 * get_dpll unconditionally resets the pll - we need that
> >  	 * to have the right LVDS enable sequence.
> >  	 */
> > -	intel_enable_dpll(crtc_state);
> > +	intel_dpll_enable(crtc_state);
> >
> >  	/* set transcoder timing, panel must allow it */
> >  	assert_pps_unlocked(display, pipe);
> > @@ -472,7 +472,7 @@ void ilk_pch_post_disable(struct
> > intel_atomic_state *state,
> >
> >  	ilk_fdi_pll_disable(crtc);
> >
> > -	intel_disable_dpll(old_crtc_state);
> > +	intel_dpll_disable(old_crtc_state);
> >  }
> >
> >  static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
>=20
> --
> Jani Nikula, Intel
