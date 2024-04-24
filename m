Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7028B0F8F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 18:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB83113C67;
	Wed, 24 Apr 2024 16:20:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hn/pKd+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CCA113C68;
 Wed, 24 Apr 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713975623; x=1745511623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBAeWLCIUBu7/+19YP+z66VuHY9EIkOgnXozRkrqo9o=;
 b=Hn/pKd+vaR+lEq6IYPlRH7P4yWaTlOzRpVHWk6LmnGUlSwZOoMetDM8V
 zTYRR4qcoPN9UhzCzNNrfKXi1de7+8WXE+fok+3d/p80jE8b3463b3CoI
 LtMiRjayrXlKfARNVCqD3HFxqTyeM8+ZDifNxfsQg/XLv2mwEzdSOySJz
 2DL6cEOcEnX/iNrGGyRRCVxell7R2KotMMwtbmxk6RS99XsMN00M0AIcN
 MfgWjiqoA79Y/Lf0g6kR+FzvtmExel+mMd6KLhIhxsUNRAxrjzazyPgDD
 Q7UFKGemxBI/k2vVBWVMtF4lrW88p+GDg2hm7pbMt05SCWoiGV/n2NiQA w==;
X-CSE-ConnectionGUID: 3CW+rU7fT2GWciSJ5pS1ZA==
X-CSE-MsgGUID: c60UQaYVTK+jp0raZs7a/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="9489670"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9489670"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 09:18:54 -0700
X-CSE-ConnectionGUID: eGAJE/gpSpCuVmOtl/6JOQ==
X-CSE-MsgGUID: 1av//5yfT+K1u3u1hG7pjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="25385630"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 09:18:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 09:18:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 09:18:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 09:18:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 09:18:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GfKnz7qfCno1/QmzEgtgZZceYJr23hFdt1Ij4547cgpOoMl6IIwxoYRsau7oD8YNxAfODXy68xH+ryJXn7pSILvcDJOGrFbPTAmRCA0XzBAzQHzC3DjLlyjMkvQftjWFIm7ijttC6EZpHvj+TgyAQdN2MdtttXmnmh+2bjN2VdsbAP+HwWLXDB110AUiXX9ZUm9D1X5Fcl2SDydoIBX1AlrKlL1kjV44KtAIrLRTS1x66DsLjZfrebTE8Nl03+MMYtau//Sut3WlCtgJ5Kjnl6T+sGV8HKccO6jw0k3aq/hfQT4zAEDTZVO5rZITntL3T4jglp2zJ059pudVjbGq/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=einU7gUMmLenpMhuYuPHmkY/BHVEa10Q31F60NRElTs=;
 b=ZSYDtAF+m1jUJ7FBiA4bFge44ZKrOjSKklp2NkWdKdZtDTaYd8bbU8bpAR8SMCFaxkdagNQcZ6usOljHQ1M0kgYkSVG+8vofmBVMPIEGnWC8oCmC2pTS0SDtH1lZoWBwj16D0kCExcAc/r80juGYgn0VtxtU4gA5HN6RztXLcDlUlI59HrhVm7pczZzWRU7C9s7qIOA0/r+8WHY/lAaTiOaJWs7WMg8bpcAMmOPsZu1JLm+ugA/A7T6lvKW6209aZWjWsPd+I/lRyuR/qrxaK6Jaz0Se9ZxyagD6+Of3WiaAogLMi2HQVHXb9aizAfvAEWR5t2f26F6Vs++4/hSLIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7519.20; Wed, 24 Apr 2024 16:18:36 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 16:18:35 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Vivekanandan, Balasubramani"
 <balasubramani.vivekanandan@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v4 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
Thread-Topic: [PATCH v4 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
Thread-Index: AQHalIAD8iw25Gi53kiLKOyjMF0nAbF3nPAQ
Date: Wed, 24 Apr 2024 16:18:35 +0000
Message-ID: <DM4PR11MB597194E27FD2EB59D30321BA87102@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
 <20240422064038.1451579-7-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240422064038.1451579-7-balasubramani.vivekanandan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: 91462bc5-4e35-42a0-6019-08dc647a3185
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?gg+tSDdXq8coA1aIXH46vWfViN3Q7i9ypYWIx4s4bIGsI3OLjPri0ak8B7RO?=
 =?us-ascii?Q?xYFnqpOkG4KoW3aGlZBqukDE8vaQqFPp9O6U+OoUqf72+tXVOqq8DlnOl7fS?=
 =?us-ascii?Q?UX/feLrCzsnDGFpmKJclTeZ7VxVMXTi8wcvANwwKmzNKMPZYZRS9l2PCOw/t?=
 =?us-ascii?Q?29FQBS/3yn/GYnLosCtBMVN3ifO3rwuyLYlL0a5LQkf7Dz0RT9+YuLndmHJ2?=
 =?us-ascii?Q?n1taVa/Sy5vMjQjrzWnwe8t8/saHfmvvFp1loBAtCd60ZJQIfW6xvFBheE8I?=
 =?us-ascii?Q?666JM4LKW9Z3nqh7z/h/8gtmaf0B3nJtHhhmXMseUWLx5y+/hMNX5V3amxk4?=
 =?us-ascii?Q?zOtw2Zze6SJ1WlIOTj9SCfYpiTmo/ce7Dbjg+RnYUZBXWipqYzfnq+XnDQ5B?=
 =?us-ascii?Q?Rncb/KpU1q6D7783ImCm6n2wOnLvgSua7LBQB9m3Q1UIkBNo/lDgP8ABjoRh?=
 =?us-ascii?Q?YfjjGNmAALwq4KMJz0klW1u1z+ZzWbKzJ0FlORqORQBx7zbtJNwrd0yxWXGj?=
 =?us-ascii?Q?XFbX3FlckRlvIe66rQghxxdQ4C8de5Cht+gSG6Dpf5uolmQRhmVZJMwHbcqk?=
 =?us-ascii?Q?fYAAvUyE0DPD39KjtdmGFA0JktEtFFNwk7iW8ntIqtsN2KVCcpjtyYiH4UJy?=
 =?us-ascii?Q?NqEdPCmWU37Q0sVkC2MApYvJY2x4pOmPve2z0Y4p40okegGoYB43RT4WVkFp?=
 =?us-ascii?Q?vH0gVxpqF3nA3bgSnYfd9nFMTqLBHKPNF0DqXccKReYIVfpsjTeaXCtw65Tp?=
 =?us-ascii?Q?Du1gE2lhIy5GMmm2txKZP2R20MGxd6msmo/R8vFZioTi8hlHcKFVqW1BMvSp?=
 =?us-ascii?Q?S4zy49H3J9YjWN1Juvy8N3hwwr5YwacM8xtKYglGzI0zXYwrJmzlJG62WpUa?=
 =?us-ascii?Q?H1p1TZtVBtkTyYV7uU6zr8zNpUVlLlwzudKtyL1FGxXYiQohL7pQ+yIEYDhM?=
 =?us-ascii?Q?5fYmbSF9DDq0qDaCkUKbrOtMrkQ1BU7aOW0Pzr1ch1LGNDAz0wiTkLuFPq+1?=
 =?us-ascii?Q?1aN8JMaWkHCeokdUTGe9o7nJ7/sOiLWaT8wknlqckwwv3O/i+4ezNx79Sb26?=
 =?us-ascii?Q?CIkZbk+VkDQ4A7loV3iPwCO7c+OLjU4zCQlyyqSjVhiJBNe8spPBoNKngejI?=
 =?us-ascii?Q?fXWzj5DDma8OQIWXhviNVyqdu9Aw3cDjMwVbxT05vDYbI4yhfRRqH8wyzkpT?=
 =?us-ascii?Q?zs5j0P47Xx3GQC9JR56/ztAgiHf5phVVwOEPgZHBOi7/rDtxpBmYAWO8jktN?=
 =?us-ascii?Q?Z6UpFQgMROoU8E7zJBOV6EyZHsNeHuTi7S9jaVP00ee/rzNlNMhiLiuc47sh?=
 =?us-ascii?Q?zqAY84gRd/yelgUiO3tkAhpsgLKgxZu0Iyf1nxnW6ZkPLw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fR5Y60hU3qhUNeq2v8vkAQhlH9GEkkZ4ie4ZiSttvQWwDewt9xQzI+tZh6t2?=
 =?us-ascii?Q?NMuBzn/TR5Ud8ofNUBfHpnDUqB5UQmLn1agMwR3mcJCbBZqxRc3z3Yotf+Mn?=
 =?us-ascii?Q?yzA/hYFt/C4C7DU/fxcOjV7gMkrdDO2N0GsrojxlIu3FSXF14YJ9qVN6uGIj?=
 =?us-ascii?Q?0UJBUX9Krn8AxKIQgC6EfsfAOD6sVApPAFEsx2XzH19c8w3HKPkLx5UTnyiq?=
 =?us-ascii?Q?mHLi3fRqKU56kAEdo18gufZfSTUk+1/yjPcDUzTrTKWRembl0OkEpObhBdBx?=
 =?us-ascii?Q?TJ+JTKBVUmO9OOJjm0iZEoGiM2teaSj625czATwn8X3ITlRYJgPkIQvNxOpR?=
 =?us-ascii?Q?9uokPCNSfS6NhSra2wUL8XSwqudyRNGCZjyOdmZIohbWtGRWLdXuYboZsdrB?=
 =?us-ascii?Q?Axig2vPvS0h29LYZ6jsee6mnXPbg+gvioEkvI53rjyynvXQBQLlZ6zuvVIn5?=
 =?us-ascii?Q?G+tOA8Re5bYmOXazPaTHQCiL9+2iGh+dzsfSMLhoUJxDSJ1sSgRfPtkr0WCC?=
 =?us-ascii?Q?jZBnuE6anmWsI1H52zoYqVig/bAaGA7iIV7bUnZ/cNZrK/6lqDH7WIwn/kVx?=
 =?us-ascii?Q?cuJm5s5YJIqQkcJ/vEreVQA+ROnTh19qwAif4ADgwuQ5/bcF8YQ8d5MgY/G8?=
 =?us-ascii?Q?NSzZRiQGPAF8UuAaN3v2C+is9Qc059WCsAMk7jtf5cbaB/fwqwGr67rSTku6?=
 =?us-ascii?Q?jkeAAGemi0/BdnLJpcIvG6VIkdHO6pslQ3YEscR5PWgAxeHcGETC6W50KFf3?=
 =?us-ascii?Q?5D32oRBeumwMZsPYajPgO0GIeEMrJpfmUyGIXvi8GVCCAmzKHZ/WoK8QYcE8?=
 =?us-ascii?Q?XZAGTC1lauw2CFHiloq2vmKhOq1AOcrk+GIEtW4AyyOUFe/XjB8GKwPLamRt?=
 =?us-ascii?Q?5TZRydDbWZC5toyxy01FgirmP/OSNdPWeRVvphWWTFZc/dp7nhVudp9UhkV2?=
 =?us-ascii?Q?9MGDTu5b3qySqmuBi0KJQwhhHamWuDL4MZP1R7OSy2FBNihAXdSwpU3EOcfF?=
 =?us-ascii?Q?6jrCHkd8NnUgMSZZFJ13BPDFrfN5MkByogF8KDnr3YvJkt6JDMwAMakhSdZ8?=
 =?us-ascii?Q?sE5bSqrVzWQIaeNcVNe2rUjB9cRXyfvn1uxR43GDy0SpNhHoSr9awsQ4axrP?=
 =?us-ascii?Q?K9m99en2JmHJFBLYaIsRp5YEahYW+8KMMXXDwzCyYHjGxp7rcES2DR7+BT0+?=
 =?us-ascii?Q?9jbn5KQyVtgulVUx0Xg7G4WzIWjtiU9U0twzFIOP61wt5UBmIWMk1nDqILHe?=
 =?us-ascii?Q?GR13OsIny5FNZltnH2lfNrA29GB0g9oBhtOSiUZxYuoaV6aUPdlDb08NkiIW?=
 =?us-ascii?Q?CWpMDhIN+CtX8P8Cwd//D2OHsBwV59XGjSB2Qm1m20N5hAHCr94m4RGBHduT?=
 =?us-ascii?Q?LqEeI/y6AOrdyGI4+kSCFuyWBlGqA/rtojVhPysnxsYb3OEdlDMLPWTQTkqC?=
 =?us-ascii?Q?xnd8uRhd6t0w6PDw4Pw5+2MKVdm1cRi1TfZI4+An2aj1QOkpvApZLjDD5Sar?=
 =?us-ascii?Q?vttCL3QJFGDAQ2QBRrn15rpG4uZoYT3BMQ+RdontGzFuf3Rl7MHRNjMLCack?=
 =?us-ascii?Q?vAuPexYFV8TzeSPKZxkWnwM0mF7WzyqVAlIi4Esd/gALrpffFTLb16u+sx8m?=
 =?us-ascii?Q?6A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91462bc5-4e35-42a0-6019-08dc647a3185
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 16:18:35.8745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AOanmfpHU3fmKo+a4G2AjZWt9cA5kZOojq2mF3cTYzWkOwWP869J3cKkSKQ3H6kfwmoSCuZZw3PgQ27ub776lh0TrNnvSfGhwXoxA9J0AZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
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

LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Balasubramani Vivekanandan
> Sent: Sunday, April 21, 2024 11:40 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>; Taylor, Clinton A
> <clinton.a.taylor@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; J=
ani
> Nikula <jani.nikula@linux.intel.com>
> Subject: [PATCH v4 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
>=20
> Xe2_HPD has different offsets for C20 PHY SRAM configuration context
> location. Use the display version to select the right address.
>=20
> Note that Xe2_LPD uses the same C20 SRAM offsets used by Xe_LPDP (i.e.
> MTL's display). According to the BSpec, currently, only Xe2_HPD has
> different offsets, so make sure it is the only display using them in the
> driver.
>=20
> v2:
> * Redesigned how the right offsets are selected for different display
> IP versions.
>=20
> Bspec: 67610
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 65 ++++++++++++-------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 48 +++++++++++---
>  2 files changed, 81 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 33a612892d94..9bf882b439f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2161,6 +2161,7 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	bool cntx;
>  	intel_wakeref_t wakeref;
>  	int i;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> @@ -2170,42 +2171,50 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	/* Read Tx configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->tx); i++) {
>  		if (cntx)
> -			pll_state->tx[i] =3D intel_c20_sram_read(encoder,
> INTEL_CX0_LANE0,
> -
> PHY_C20_B_TX_CNTX_CFG(i));
> +			pll_state->tx[i] =3D intel_c20_sram_read(encoder,
> +
> INTEL_CX0_LANE0,
> +
> PHY_C20_B_TX_CNTX_CFG(i915, i));
>  		else
> -			pll_state->tx[i] =3D intel_c20_sram_read(encoder,
> INTEL_CX0_LANE0,
> -
> PHY_C20_A_TX_CNTX_CFG(i));
> +			pll_state->tx[i] =3D intel_c20_sram_read(encoder,
> +
> INTEL_CX0_LANE0,
> +
> PHY_C20_A_TX_CNTX_CFG(i915, i));
>  	}
>=20
>  	/* Read common configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
>  		if (cntx)
> -			pll_state->cmn[i] =3D intel_c20_sram_read(encoder,
> INTEL_CX0_LANE0,
> -
> 	PHY_C20_B_CMN_CNTX_CFG(i));
> +			pll_state->cmn[i] =3D intel_c20_sram_read(encoder,
> +
> 	INTEL_CX0_LANE0,
> +
> 	PHY_C20_B_CMN_CNTX_CFG(i915, i));
>  		else
> -			pll_state->cmn[i] =3D intel_c20_sram_read(encoder,
> INTEL_CX0_LANE0,
> -
> 	PHY_C20_A_CMN_CNTX_CFG(i));
> +			pll_state->cmn[i] =3D intel_c20_sram_read(encoder,
> +
> 	INTEL_CX0_LANE0,
> +
> 	PHY_C20_A_CMN_CNTX_CFG(i915, i));
>  	}
>=20
>  	if (intel_c20phy_use_mpllb(pll_state)) {
>  		/* MPLLB configuration */
>  		for (i =3D 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
>  			if (cntx)
> -				pll_state->mpllb[i] =3D
> intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
> -
> PHY_C20_B_MPLLB_CNTX_CFG(i));
> +				pll_state->mpllb[i] =3D
> intel_c20_sram_read(encoder,
> +
> INTEL_CX0_LANE0,
> +
> PHY_C20_B_MPLLB_CNTX_CFG(i915, i));
>  			else
> -				pll_state->mpllb[i] =3D
> intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
> -
> PHY_C20_A_MPLLB_CNTX_CFG(i));
> +				pll_state->mpllb[i] =3D
> intel_c20_sram_read(encoder,
> +
> INTEL_CX0_LANE0,
> +
> PHY_C20_A_MPLLB_CNTX_CFG(i915, i));
>  		}
>  	} else {
>  		/* MPLLA configuration */
>  		for (i =3D 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
>  			if (cntx)
> -				pll_state->mplla[i] =3D
> intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
> -
> PHY_C20_B_MPLLA_CNTX_CFG(i));
> +				pll_state->mplla[i] =3D
> intel_c20_sram_read(encoder,
> +
> INTEL_CX0_LANE0,
> +
> PHY_C20_B_MPLLA_CNTX_CFG(i915, i));
>  			else
> -				pll_state->mplla[i] =3D
> intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
> -
> PHY_C20_A_MPLLA_CNTX_CFG(i));
> +				pll_state->mplla[i] =3D
> intel_c20_sram_read(encoder,
> +
> INTEL_CX0_LANE0,
> +
> PHY_C20_A_MPLLA_CNTX_CFG(i915, i));
>  		}
>  	}
>=20
> @@ -2363,17 +2372,25 @@ static void intel_c20_pll_program(struct
> drm_i915_private *i915,
>  	/* 3.1 Tx configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->tx); i++) {
>  		if (cntx)
> -			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
> +			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> +					     PHY_C20_A_TX_CNTX_CFG(i915, i),
> +					     pll_state->tx[i]);
>  		else
> -			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
> +			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> +					     PHY_C20_B_TX_CNTX_CFG(i915, i),
> +					     pll_state->tx[i]);
>  	}
>=20
>  	/* 3.2 common configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
>  		if (cntx)
> -			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> +					     PHY_C20_A_CMN_CNTX_CFG(i915,
> i),
> +					     pll_state->cmn[i]);
>  		else
> -			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> +					     PHY_C20_B_CMN_CNTX_CFG(i915,
> i),
> +					     pll_state->cmn[i]);
>  	}
>=20
>  	/* 3.3 mpllb or mplla configuration */
> @@ -2381,22 +2398,22 @@ static void intel_c20_pll_program(struct
> drm_i915_private *i915,
>  		for (i =3D 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
>  			if (cntx)
>  				intel_c20_sram_write(encoder,
> INTEL_CX0_LANE0,
> -
> PHY_C20_A_MPLLB_CNTX_CFG(i),
> +
> PHY_C20_A_MPLLB_CNTX_CFG(i915, i),
>  						     pll_state->mpllb[i]);
>  			else
>  				intel_c20_sram_write(encoder,
> INTEL_CX0_LANE0,
> -
> PHY_C20_B_MPLLB_CNTX_CFG(i),
> +
> PHY_C20_B_MPLLB_CNTX_CFG(i915, i),
>  						     pll_state->mpllb[i]);
>  		}
>  	} else {
>  		for (i =3D 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
>  			if (cntx)
>  				intel_c20_sram_write(encoder,
> INTEL_CX0_LANE0,
> -
> PHY_C20_A_MPLLA_CNTX_CFG(i),
> +
> PHY_C20_A_MPLLA_CNTX_CFG(i915, i),
>  						     pll_state->mplla[i]);
>  			else
>  				intel_c20_sram_write(encoder,
> INTEL_CX0_LANE0,
> -
> PHY_C20_B_MPLLA_CNTX_CFG(i),
> +
> PHY_C20_B_MPLLA_CNTX_CFG(i915, i),
>  						     pll_state->mplla[i]);
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index bdd0c8c4ef97..269ca0872510 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -254,18 +254,50 @@
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
>  #define   PHY_C20_CUSTOM_WIDTH(val)
> 	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
> -#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
> -#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
> +
> +#define _MTL_C20_A_TX_CNTX_CFG	0xCF2E
> +#define _MTL_C20_B_TX_CNTX_CFG	0xCF2A
> +#define _MTL_C20_A_CMN_CNTX_CFG	0xCDAA
> +#define _MTL_C20_B_CMN_CNTX_CFG	0xCDA5
> +#define _MTL_C20_A_MPLLA_CFG	0xCCF0
> +#define _MTL_C20_B_MPLLA_CFG	0xCCE5
> +#define _MTL_C20_A_MPLLB_CFG	0xCB5A
> +#define _MTL_C20_B_MPLLB_CFG	0xCB4E
> +
> +#define _XE2HPD_C20_A_TX_CNTX_CFG	0xCF5E
> +#define _XE2HPD_C20_B_TX_CNTX_CFG	0xCF5A
> +#define _XE2HPD_C20_A_CMN_CNTX_CFG	0xCE8E
> +#define _XE2HPD_C20_B_CMN_CNTX_CFG	0xCE89
> +#define _XE2HPD_C20_A_MPLLA_CFG		0xCE58
> +#define _XE2HPD_C20_B_MPLLA_CFG		0xCE4D
> +#define _XE2HPD_C20_A_MPLLB_CFG		0xCCC2
> +#define _XE2HPD_C20_B_MPLLB_CFG		0xCCB6
> +
> +#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14,1)=
)
> +
> +#define PHY_C20_A_TX_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG :
> _MTL_C20_A_TX_CNTX_CFG) - (idx))
> +#define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG :
> _MTL_C20_B_TX_CNTX_CFG) - (idx))
>  #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> -#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
> -#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
> -#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
> -#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
> +
> +#define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG :
> _MTL_C20_A_CMN_CNTX_CFG) - (idx))
> +#define PHY_C20_B_CMN_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_CMN_CNTX_CFG :
> _MTL_C20_B_CMN_CNTX_CFG) - (idx))
> +#define PHY_C20_A_MPLLA_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_MPLLA_CFG :
> _MTL_C20_A_MPLLA_CFG) - (idx))
> +#define PHY_C20_B_MPLLA_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_MPLLA_CFG :
> _MTL_C20_B_MPLLA_CFG) - (idx))
>  #define   C20_MPLLA_FRACEN		REG_BIT(14)
>  #define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
>  #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
> -#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
> -#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
> +
> +#define PHY_C20_A_MPLLB_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_MPLLB_CFG :
> _MTL_C20_A_MPLLB_CFG) - (idx))
> +#define PHY_C20_B_MPLLB_CNTX_CFG(i915, idx) \
> +		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_MPLLB_CFG :
> _MTL_C20_B_MPLLB_CFG) - (idx))
> +
>  #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
>  #define   C20_MPLLB_FRACEN		REG_BIT(13)
>  #define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
> --
> 2.25.1

