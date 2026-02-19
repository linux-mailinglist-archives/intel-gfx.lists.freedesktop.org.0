Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHS2E7uJlmlkhAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:55:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C5315BEBA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3E210E169;
	Thu, 19 Feb 2026 03:55:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KjTLIq7r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D24C110E169;
 Thu, 19 Feb 2026 03:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771473335; x=1803009335;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/nVQlXEZrxjwbNfhoHP1M+SI5eQlG8jkORijfmjzfs=;
 b=KjTLIq7rIdnomMArYKXEZXrj9Uqg172FUg31vlU/9imLqqxNEwj8WhqD
 4SqYsnvv11vkWt53dojsrXcDBPO8E1TD+Wn3DBxwS+jlKj2/ejo1zEKxm
 RBnxce3A2LUqhtJ3iKL+7f/dCVZQhAKFVparzELOXaLUvPhKuXMLnhn7R
 VSOKmepwLFvv6jksm5EsHFJWNMYN1s8zG3+b+WGwFwGJ5nUEUN4m8KO8y
 JUqgVQXzss3HTyXzlch626CBWsiIBjuvAFqR7krQZayekGPsyvGpUkTEK
 Cxo9JOpLxHObSbVrILNsdbXiUXlenhoGGC13bHOTAh7ftT8/lfvXtUbAC w==;
X-CSE-ConnectionGUID: r5ocSWk+Rwq7pa/22lKm/A==
X-CSE-MsgGUID: njdJ/6r1T32JFT7A/8hx8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72599120"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72599120"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:55:34 -0800
X-CSE-ConnectionGUID: Z8xKdJWWRECaCjTElvyEIQ==
X-CSE-MsgGUID: 7vn5xzhdRLOL60kO0IOtmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="214254785"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:55:34 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:55:33 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 19:55:33 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:55:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BdKxF1THySF4+hS9FeAR+M1NgRSipr0zLsJSTnU67vGundqDAEUQyaR3UnXcjzHviNGbi1TiT/eeBsFFoxUm+nGxJI8+cZWZOUBfEjQcyWWCKKdhBPttvESEZQlaERWAsVH8YP0eB0TLX4zncha6KUMW5das1DpRNFsNJ+zysX0uKx1oWBokoPOVTA+a8NPWEwG3O8PstMJxljGaFoPOzRdsAe/L7zAPPzO7OzyE9ybkfLStxf7id537iPWqLyXvsF+AFMR4L4+KDcvN+JQYV1WEHidPZuFK8jMKqV6cpXn7112wTs1u691tPAZBGK475EyK3KPxBBvShnd7pKvb8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O+Vdr4TZXQlXHA1SewCMIwcDxOxLxY/MAThBLkNYmKs=;
 b=khyoE/irZsG5yFnalewBPnDT62PLKGoE2q/zU05hlnMrihD8hTUz4iiMt5dxU5YmZwuWwY8LgHj2HcEA63/hBva2Q9BVT7M5Wlwe/iG3LSsYrR5seMvvHbTiJmu/xdpb+Q7GzLUve2G4I5P7Q4hwEPCQAV4balkYnKB8Qw/mVsWgPi8nLpRzZpNCz+4yKF6X/wF+qwVrq1nNkmgKVSD1vo43Xs6Yg/XqenaFb+P4VqRvz4OLWYzTEcNMbaIMjjEDZ9pADpLklsB1p82IVcJiHC99pF/7ZpDyriieAfsFZvSIG8yA3qkc/hiy/lOywwT9dHaWPFbFmYVW1dwFyR+M5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB7573.namprd11.prod.outlook.com
 (2603:10b6:a03:4d2::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 03:55:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 03:55:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 10/19] drm/i915/lt_phy: Add xe3pldp .compare_hw_state hook
Thread-Topic: [PATCH 10/19] drm/i915/lt_phy: Add xe3pldp .compare_hw_state hook
Thread-Index: AQHcnOegFkFQbFO0REOXADrIc54zmLWJbKBA
Date: Thu, 19 Feb 2026 03:55:30 +0000
Message-ID: <DM3PPF208195D8D2D29BD3DF45D2CD6A4CBE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-11-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-11-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB7573:EE_
x-ms-office365-filtering-correlation-id: 4b60bfc8-dc7c-4105-c3d9-08de6f6ab9b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rFE6eusvfr1NKfZspFMOJZEP6EjpjxYncxFJsoC1wZPpo+pyD2YQ7HOMQnOz?=
 =?us-ascii?Q?0d3JyLF64svF3Ar1FBnKeCbHE9EMMF4V6p3EPZWb83ReFpED3ZSnlFct4ial?=
 =?us-ascii?Q?QCsBkk9wBRRbLTSYceBq5wtIg7YfErkULXKtOSkF9XjIA3Dj3573alyWuKZx?=
 =?us-ascii?Q?TNQX/A9Erc1sf9jDHjWEssek1Lprwkvp4X1N9/eUS+1DHZi2TKr7x6Ely2bB?=
 =?us-ascii?Q?6aJWCUk8iQ3XSMAnGUc8BMEPnryuCVaYXXt+3kYgzeGiIJo/iCdBUolRXPwQ?=
 =?us-ascii?Q?NmqFR3aXkbm45pgUakv4r5yk8Y4HI3YX5+LhTvzSwlVj+pp9A+5hfcfTlPJ6?=
 =?us-ascii?Q?F9SchP4gBAaRulJdL97bWkiAKNJPz2BKzvAuC2Nf+4sh0D9eWYqVKUZy1zEN?=
 =?us-ascii?Q?M+bnKEnvty3718YAI5+M1QhpZfyoI22JwJTz4M9rRECttxIsXD5mZE7NhnRA?=
 =?us-ascii?Q?c/t4p1zl5OzRPpBXJ99lBIIlqOUa5SzHBdLv++LOi1fcEnvS2tu/yuFjwRiu?=
 =?us-ascii?Q?sxnc2fANrBr5FtCEBvh+RHrpalZ9vdwpYQXazpj+mCoO/1K3pRrYeeHjOpsK?=
 =?us-ascii?Q?FshB/vI8APNFkcUKiqbLeiu0uIIEP4p34MvmZm4ApJy2BqmxbN1NqTHFjTuO?=
 =?us-ascii?Q?BXclpI01ze6VoH+wvRJQq1ZKEQIFrGqM74R8HXo82hK/flhL4A794vSdjN0b?=
 =?us-ascii?Q?hbpsdTm1skS02xqLhhvFwTCYBc5cwj+v/Xb6pe80+E+Q4yWMt5fmLD71BM31?=
 =?us-ascii?Q?Hlh+B4lgQG/lt6IEnaIcsf4SoyJ4AMOLf8YGeaUT53AxFeZsNvpl7auLobJ3?=
 =?us-ascii?Q?6V2giaIEKnWKnnINHamB2xLaXGOTPyj5e2qBMd3GjBLNgunyFr3sxWzKcLvv?=
 =?us-ascii?Q?nKW8ELMKfLXRYns/pqz1CeWyUdqntkKuLUG3upEXsiXZh9QoKGNFlC4xymMY?=
 =?us-ascii?Q?n8+BWMXMMgloG7pRinBeG0Wii4UdTiBY2AP1UNXuCkQHV0yuvRuk8feNxAH9?=
 =?us-ascii?Q?7g/nJtIJTTJN0jFh+NJ3vJIMqpEXX+6dStionkCZbiwFp78AR/d7ttwWTxX4?=
 =?us-ascii?Q?2fhBc8tZ4JC+v2L9O+DjmlbDZyeDEcw7l9GiTPseWetuptd54hUNuynteUeT?=
 =?us-ascii?Q?10HfWEt6gHtq+TasTHZK2Nn4f6t70mXAEWelAbBu/PKevhn8D5TVSXax1dKQ?=
 =?us-ascii?Q?nwtc+GpwUXyu6RMaBrdLNPht+MGhpuozO436QG8jk3IMPy3TYtlfYbCwuEn7?=
 =?us-ascii?Q?aiwoQEp9hNlblAKMTQGVbi/fYUrILhL7nLlOjVc55lqDXg70VR9IsLnI4TOy?=
 =?us-ascii?Q?wXC6HN3R9i1YGV20DE4CFo9Sz2nb1i9K/MLvWcMYr9sK1BABUPFJPAHKMOqW?=
 =?us-ascii?Q?bmWdyuIQgNuKjM6a4bZeiUSQmEAdMEyasr0TTyEIxUm3yNU+a3sXh6eSyysF?=
 =?us-ascii?Q?FKTaHwT6FJiqdu5S3vOFIJRzauKakAEvS8unehNSjhZsBmO/2t4WrqKsOEXM?=
 =?us-ascii?Q?sC+JEDlWTUnA2swuqT/6i6CtefPJf3dFJwZbkpdeOWNhyRKQdeRVMsQYwMRa?=
 =?us-ascii?Q?ZeMfDSc8ckPfrLSWotNlCvo7VBAZcElzbLOoGRNfv/gjoMg9lIroXHkKPbye?=
 =?us-ascii?Q?cDkWDTR7FpnwG8spjFcCuNo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WOdpAhpYvQptxasu7YSLKWRra20ICnu4ExIRADTbb+xF1yMhfKabsvalDMQi?=
 =?us-ascii?Q?r2ThVXd18vWmiht31ewmrgvS936zktIZttG1ynRq/+B1F9x59UQA0xFBQg8k?=
 =?us-ascii?Q?hD9ria7+A9FdD1fSys2dx40AVrBIvjkwm44Aye6AB7AqBb++d9HG4+lvkAwb?=
 =?us-ascii?Q?8WKEzo8V7DepA/FQNSAEOQmz5jNrxCWfVgWyJTjdMYoirtyY+lTtvCRNfvM7?=
 =?us-ascii?Q?egb6dVMccENNedPWYzXg/q4d1XkhZH+38OJcCLLcnayJFsq9fB9Qxby+cudC?=
 =?us-ascii?Q?JxbCRcDfNHftrLom79Gj0HNq4n+BDtDqMKvdWZY8u9y/J60pyy1IOQK3qLj+?=
 =?us-ascii?Q?AgF2NVUASxOWjprmKaRsw1iURSOkjy4zxw44fGEnZo6QnRGigDTW4LDC8Nkp?=
 =?us-ascii?Q?iHR02rLXjVM3WlFwnI0+Y1tTPLH/S5ili8CuNKCA5WSx7bVgsZWPcPcG2AQK?=
 =?us-ascii?Q?Mttfzw9Fuk3s3AWfe816dhh0ufopJelsC6jovEo99waeLCPsZkN4mdHztqXQ?=
 =?us-ascii?Q?xTH6Bc0P09m1oE6yJGIeDhrTFZ0CscIRgrbPSa1lhWAJIgf+el9RRkdyn3mN?=
 =?us-ascii?Q?AEenAAfxA08HL+ydqlFtXQUn9klkkLRUqk8S0fHWqVtugKrhCuIR1fObQANw?=
 =?us-ascii?Q?TUSxhqWgPJiOrOkXRxFxYsYypjb69qghnEUW6WIxG8S5PSv9Z/8QJZLv9xHL?=
 =?us-ascii?Q?rXhhkOXvMBXg0cw+VdSwleU0OZdJgR0jGRPXDjX3c43vUEqDMpFC9jUO05bC?=
 =?us-ascii?Q?fl9yZNk5JAzwUZWDGkgZIgy03yJUmm0diM4Y6HrDKO2PJtpNXIbkjtoYj1Hx?=
 =?us-ascii?Q?AVle4Diq/t0WU3ATTLBKeT5xIqOSdGppL1+1Hy3Xb9Icw5HKNiYQqwTwZg+Z?=
 =?us-ascii?Q?rLyOQi2BuKpbZoMWk8lUV43JxOUAQFLtqiKaQVLpL3gptyY9tcaWlapwKP5j?=
 =?us-ascii?Q?OhscprnAn/6QEOMhuNu6Jzs5Bf5x4EItPlDEcPtLlZa1Sqd98/z2FJ9sdXRv?=
 =?us-ascii?Q?cdgkJXvkaXezjhM5g8D+mggrDj3bb5jkQtRcExQxojQRsrs1DzEmZpzp6UfC?=
 =?us-ascii?Q?jodIOw/i0iUQ0jK4YVbx8cxthFXlgiZXwLKkaMiaLrJfnmanUGV+C8wt17pR?=
 =?us-ascii?Q?4+lVcINV3f8neBEFxO/TMLWa1+fwGN8oAN53wRB1E7yk0kXliNkgVV873WSe?=
 =?us-ascii?Q?BK9zVkCcnHZYUAK6TqNWy/fWhfy4PRrwG2KF42AuZfjbFRNRnOMOW+S3HvyR?=
 =?us-ascii?Q?TckU5yTFFmx66D7VeXoeZn8ZgLx/ryYC+hbb2w+jJOdcI9A/4f7/e9QL0jdr?=
 =?us-ascii?Q?Lu4n8dB1DzyEWROx1Uk1MYBfmed1JK4Jg1pKGzsNtP8IjPsPU9W3G2+727Oa?=
 =?us-ascii?Q?eCwqO0WaJpHO8m1UdeR69S5ESFE8Z6dBAxuu75kx4hNqKcgmp7PN3g6DQwNG?=
 =?us-ascii?Q?kVaLNnSr03KqeII4daeF/gR2ECyGLnr79nxAVM1K41CgWreoqYGcKGe3aclp?=
 =?us-ascii?Q?V7T1JLOD7iOy4NBQINGvE7ZNTXFifrKDO2kFFgPis8qd39KAFuODdCzm6DZS?=
 =?us-ascii?Q?ptKRWIhEEkEWK7RByJmFYYPMrtEU41bb0ye9ZLoP++17DHEQ9vg8i+erZ2OA?=
 =?us-ascii?Q?Tfu13QcOdaUvhlH3/56WWY/M+ahu3F4CssIfO1Aehkp3ySvyTQ7cLV/o01tL?=
 =?us-ascii?Q?kXv5zi30rUQsaZP6znPQ4HLbL0aqRKZJefxKR56WD0yhi6VxRi9k91clmoUY?=
 =?us-ascii?Q?+cs7S9QFTg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b60bfc8-dc7c-4105-c3d9-08de6f6ab9b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 03:55:30.5760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0g2Tk1c63/U3zA9w95+6Bl+yVc2s54sZeLXMklkRwYF6Zu+M4uooMRn0UyJqeZh2+kDIPDDwNXsm7CdPlEZlew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 90C5315BEBA
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Friday, February 13, 2026 5:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>
> Subject: [PATCH 10/19] drm/i915/lt_phy: Add xe3pldp .compare_hw_state
> hook
>=20
> Add .compare_hw_state function pointer for xe3plpd platform to support dp=
ll
> framework.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 26b78063dd94..c1d7d9909544 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4655,6 +4655,15 @@ static void xe3plpd_dump_hw_state(struct
> drm_printer *p,
>  	intel_lt_phy_dump_hw_state(p, &dpll_hw_state->ltpll);  }
>=20
> +static bool xe3plpd_compare_hw_state(const struct intel_dpll_hw_state *_=
a,
> +				     const struct intel_dpll_hw_state *_b) {
> +	const struct intel_lt_phy_pll_state *a =3D &_a->ltpll;
> +	const struct intel_lt_phy_pll_state *b =3D &_b->ltpll;
> +
> +	return intel_lt_phy_pll_compare_hw_state(a, b); }

The "{}" should be on their own line

Regards,
Suraj Kandpal

> +
>  __maybe_unused
>  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
>  	.dpll_info =3D xe3plpd_plls,
> @@ -4664,6 +4673,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr
> =3D {
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D xe3plpd_dump_hw_state,
> +	.compare_hw_state =3D xe3plpd_compare_hw_state,
>  };
>=20
>  /**
> --
> 2.43.0

