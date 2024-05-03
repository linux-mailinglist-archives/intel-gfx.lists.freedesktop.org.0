Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E74C8BA5B4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 05:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE1110EDE8;
	Fri,  3 May 2024 03:24:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QNJa/N8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A12410EDE8;
 Fri,  3 May 2024 03:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714706664; x=1746242664;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=keQKnc3v2q2K3mqG5KtZBFcEObavj3slM/GUI9Jorxk=;
 b=QNJa/N8MGPYnZ+9j0eM88I1t0PSTTPZw1KK8PtiAuX1ZRxQsqPZpL0wY
 WGVkxY9aXx6co2KsjMtcNxnxSKWDg51V0GHMf3y4A5TbAAyn3O5BdPyJ1
 qDmCpSrRKElXSpSFCQ+x+Cq/oDmQX4xxkjdNPHq5okbQtRVQvFMeENiDw
 s5F7bgJ9Dwwgr717BkwAls7rLaCV8uvnpp8gdzJp8Uujpx3K8cGo0aAS8
 gjhpndfkI0yU4ZU5gB4+fDCkc04kaBYzAe5WJdHHGv02NmO4lfkugd2Nh
 4P2iuFkTltI1ZRbiLMuoEO8y2N6LgOG0jiO4xJuER/gObFhrmmw/udS6s w==;
X-CSE-ConnectionGUID: C5ml0lGQT0mp/23ERXWU0g==
X-CSE-MsgGUID: zOc6iA9TSHKGnAv+n0LjAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10726771"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10726771"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 20:24:22 -0700
X-CSE-ConnectionGUID: 6gFjCRlCRVygeUsrP7gI0g==
X-CSE-MsgGUID: M9r+8+OYTsORSh8LacDt0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="64777443"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 20:24:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 20:24:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 20:24:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 20:24:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZDKNcpNr+wU3Ma9HmlHIk32XDa3kTSqSsGeoxZZBSQBf2BEBO+1M0zYz7CcPzdiSWd3AZe+CHN27vYEllf5Lih1rS6DG4M/8j2q6ttFPQbG207t6CL5pz+OdEDwrqnq4R8PjcCNSb5I/wO66peIFDLkdi1KHTQGMCgNqL9QdBjQPavRYZSju69LsnqBkhMD5lIFNkfky6J8i3giwRV1Y/TP8tWccbff9Z73emruDa+Ota1iWYjcCxozrwOzrPxY551FkuPDeL09Tm610F2IPazvw1ydq+J3/Lbcix/sz3yT3qQhLJX999CfB500Uo8xaT/zwVIpi/Nwq99DM5BrO9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cY/YFHiHF0xA9gMra4R8/pUN1MWvLheMqR7We+e+W2Y=;
 b=Ax32E+UMcqKAm3LyuGYT8lQP6Bb62JGhQSc/WSAuPUjT6c7zhOx30FyA2grZEqKvMk35sNOPWkihkQmGuQSyeolw2FNFkU5WifEjJip/8tcaOAEfxkebIbBSHrltH0vkmOepPuZxbY01YnFxTr6uy7KgBcSnuDrw9B2b7djkaG0TOo/Jw506jjliKPoc8duCEl52rxCBgtF9OtzZch1COoS87dXL6/ff9N/kkRhikNChxyD1x+c59NMDQhZ82Lp+/TXIbSvwCZzYx2Lb80Vc4x4dKzTh0L6+li8rKjCerlRHP1B309u2DYRAeaRizgGwmr4afQQ0t2m+DdvaBjMt8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ2PR11MB7504.namprd11.prod.outlook.com (2603:10b6:a03:4c5::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.25; Fri, 3 May 2024 03:24:18 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7519.031; Fri, 3 May 2024
 03:24:18 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: [PATCH v3 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
Thread-Topic: [PATCH v3 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
Thread-Index: AQHamyQiqTAnX0Dk2UOoX5JL1cNOF7GE3ENA
Date: Fri, 3 May 2024 03:24:18 +0000
Message-ID: <DM4PR11MB59713F3EF45217B63A65431D871F2@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
 <20240430172850.1881525-7-radhakrishna.sripada@intel.com>
In-Reply-To: <20240430172850.1881525-7-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ2PR11MB7504:EE_
x-ms-office365-filtering-correlation-id: e34a2d4f-9edf-4b24-b656-08dc6b20844a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?EoawwO86/AWYBSEaEuAW9PxpZx9X1dUMlG2T2VicQZzQmrc05+jEgvwniNv8?=
 =?us-ascii?Q?7FpVmHN8OAO+0fWp8/FIaGw+Me9bpB9wTmaB0l3NyRXN8UDy3StQbyyN8j8w?=
 =?us-ascii?Q?aGGMhENu+PlEz3x8NQjplBJLo2iGK8f01of5ZB2zGHE+bWd1fUplzaV9eCvo?=
 =?us-ascii?Q?RkYkCzdqI6w52Gjq1n5Nv2o3v5NhdaIcTEf3xA8JIqR1WVwrdPaj/WWb+srr?=
 =?us-ascii?Q?lru51r1DtSFxitAHN29M9kvRMUjJd4UHn9uNjrfMkf+UTLSPuym/31Uvu10I?=
 =?us-ascii?Q?PTFszgAUh9ZXEgM6xh4ezEJQ/hhx1DZZstWwQT0V8oqWmQfnFhld+SpqlaC1?=
 =?us-ascii?Q?HK1WXTZIJi3NF1JbgLeXf3lqiB9/tNNvYP3WMk03EHOMnlXGb8B+s8Is36Re?=
 =?us-ascii?Q?2t8GSIzPuDDVTOddahUhya2TZlzj1hkrb4bMyQX4P75ylOjzPp3yv1kvf424?=
 =?us-ascii?Q?RS74cuK2VE0T/jKANVCGyOtDy257a7fdfAfPRWynbFhb+c5vfj6mQbJ82TV8?=
 =?us-ascii?Q?U63VDZ0o6WBrysSfIZmdGfwDFKvfAxs70qXUEmK/AmhHu0MTTOW/oxXxOpBn?=
 =?us-ascii?Q?T8NI8xv597fAzEJIl3V1oGtbu+nKkKyUavwh3tWVURyLWHaamhiqUQzoYJy6?=
 =?us-ascii?Q?hwvR7jiBBAUFj4+ko0UggQ9OyYiciaf0iX5YAozkzUzrGIVRpzCoJaQ5mBau?=
 =?us-ascii?Q?i1XK2fJ1ei4WFYFG/rljqoayphdpyTfjZMJ3+wxvU1cKDZK5SFuXT4/iMtyn?=
 =?us-ascii?Q?aQBgKPk3SJkVOLHLrNuvHFuQsp4fNDRKxrLodF5jTWq3OqDw1AxhmAGQJPEk?=
 =?us-ascii?Q?2HtAhzVbPUFyow+G/HYcSTylRiQ/fRVoHfat2ghntTLMODPrNu8NNUgRaiG5?=
 =?us-ascii?Q?hTHA9HZa/gbt2K12FZngwWE3PbLtn4sC1mWC50nCcPESDlELzcgwJWqySr7C?=
 =?us-ascii?Q?CRmcQm7tD/3N9vT/gkfIacoIrISUvS/Jsxrsn4T/LFVAl/K2Jbl3/jRFEJGr?=
 =?us-ascii?Q?JpWD63Ed0vGoW88+HnaU4uMKvglQODU2i0gJi+UjboPt9EY5fWgUnEGcalVU?=
 =?us-ascii?Q?Wx/LdQx+R2O/kDrQNtf56v6oSeBthhN0ocK7lcpeC4Kcw4PTBHXOqaNZmt/y?=
 =?us-ascii?Q?xOu7f623rh2+9JP3xH2K4VZWRRqNe+XHBm0J7cmT3xJ4N7RYJzbdgLO+r5DX?=
 =?us-ascii?Q?B/lHjbMIbYQVo3PdxxdMYvzpJ22l2dbi7VRaGXrtIUv3/dk4dikb14xArgkt?=
 =?us-ascii?Q?4Zgm8ReiJDKCHpsYAAct5NsLuwG0tld/pGFO33LKMXA5uMcUsOTe3axHCje/?=
 =?us-ascii?Q?qY5Fm8EjastosZVYiUDytSDfQ6eLYGIoUxE7xcqSU555Ag=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cvdnUs0dHMVqDiZAbEgJ89xEaSbBTaAloLBd3J22jQaWJ1id1B0aZ9cCa3/J?=
 =?us-ascii?Q?mifWzMLwVncMR+kXK9DIC4306jve7RM+iJ74p88L4WQ3M+/Fkc/S5i4i8RFV?=
 =?us-ascii?Q?PZuaxYRQLvBHnj/Z2RDebZ21RxDRbGwJKf7shxrMd0ffojtpVXThvZgBCwSg?=
 =?us-ascii?Q?nRY239tYmbmNoXmUnY+C2ZZTvzG4Olvdpxk2SBVC2DFrQsTVr5luCTXeKb34?=
 =?us-ascii?Q?r++rj3M0ObDEakN7W605EkAJ2rDlP7syTyGCpMNn1kfI1YykcKkmKi+Lcx7X?=
 =?us-ascii?Q?flTwv1LE68vzLwu6NMgrRmdeeWh1mj5vRNK6PZfpOhFdPFFKPgwiVUR1UTwj?=
 =?us-ascii?Q?L7fvd+phb/cLhtLFV6X6vbLiaISUkWMwtjx1fQ4pfQRmsgYd+ffaX4zcYoT+?=
 =?us-ascii?Q?4hv2Kjcixvij7Gi3smyrlCLbxcMaodnEkK6pSHG7kuyR4kCQdVzbxxe4HIrT?=
 =?us-ascii?Q?4EpJFvGCPMZx5cEGnHgUrxyH8pwLQCzvJZMne2KEy94wI4c/VxNJj/xDVJ6l?=
 =?us-ascii?Q?LjaFqVYNVUfLb6QTaAr6VNq1MQwasp8+xuhhoNrddyFG6payUaTetlOzSUwx?=
 =?us-ascii?Q?IJFppLAst+s1jy9BDZJg64fas1Zy9ce2Zsk9wyfpu2AyI8M5MVf6NVygsTaP?=
 =?us-ascii?Q?EJSC01nl+UGZOtHdhIyRqTckuClaxPUJUgU62mSxSjw9ezYu2ofXl5R1pPqO?=
 =?us-ascii?Q?cL94kJoPLE3Xm0/DhZbFTnZGYf86548N6qqHELKJToOdvx5mQ9+E6BLaf0xm?=
 =?us-ascii?Q?NPfIlCaymY8ysax5IHrS73PKBstVEUxArDGdXohSg9rLIXopKaBecnKkVQnB?=
 =?us-ascii?Q?6zL3J0Gm/xbpe8CB52rzyALhBDKk6bVI0rcPBjS9fJGvfoHsnF6Glp7Zqn1g?=
 =?us-ascii?Q?ZMqePq4B0iDOw1GygNfYe32lhWi+boozzgSPGdbxLHiC3ihS86GE3fk1T8mA?=
 =?us-ascii?Q?9JfoR7bhy5DvIeIyJ0Pc1vqsZGwD+Ojf5Wg+HN4e76OUuOeln5ePud2RCh41?=
 =?us-ascii?Q?AS7Rth57hPpJsdPNmOKFJstN6H8jdpKmQsY9dx3UYtTmlXmeYpjlULM1aFXk?=
 =?us-ascii?Q?Mb8enyQ1JVtbKX1a1TJ/1gyed+JYcrwopKUn59i5xcSSDL0pPeqPbN+Ou5rN?=
 =?us-ascii?Q?akuFXclN1h2jRVcj37yf0gc4rw6Uvy7PNim4AyrArqQNQUY7YdVuKWLmSFHp?=
 =?us-ascii?Q?zjSLvPr4v0avy+xjKdjvBGAnCCHpnwbaLWL1lQg3EA4MfH3vf7vPkLafMth2?=
 =?us-ascii?Q?frq6kxhCy4IXmGGXi9F0Ye9Y0t23+GmkszXfKW+YyQDh6td8FjHe1PpVGyji?=
 =?us-ascii?Q?UHs2juodYW9nqvTjZbfFNPozY7e6gX6uBmVIjXiaRW5T8+rqwfCLc+fKP1ss?=
 =?us-ascii?Q?hf95o5/HdCJbxueTm48wjlngRiKA3YSJCZ+dQbDYL7PA4i0Dg49fFt1l5rwH?=
 =?us-ascii?Q?FUXG8JTQgBTiJDSC4uni3NlgUCa3g+cs5VQ8fQrU3ZMRtQ5VfbNmnj2FEoFG?=
 =?us-ascii?Q?y/hcLmhFdYYBHMnQynELlhASWAnqXmHINC2ZdoSRfz0MNZrTot3I3Wxe2qkc?=
 =?us-ascii?Q?l4yw7tdzJdaEWUBJ992MNixHsihOkYnYtpCdaQdDzmU9kPynZLAKDHPoiPtN?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e34a2d4f-9edf-4b24-b656-08dc6b20844a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2024 03:24:18.1856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CVYnYLltKGbVd5GQl9AIGSw8JZfHUOHnngg9khCNnJzlI+RK6TY3JFMXjYOUf3RhS8UqSKVmXDODbYYNJ4s+A+TO6vvKtNvg9NXjHiT+9eg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7504
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

Adding the missed r-b
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> -----Original Message-----
> From: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Sent: Tuesday, April 30, 2024 10:29 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>; Taylor, Clinton A
> <clinton.a.taylor@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; J=
ani
> Nikula <jani.nikula@linux.intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>
> Subject: [PATCH v3 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
>=20
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
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
> v3: Fix white space error(RK)
>=20
> Bspec: 67610
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 65 ++++++++++++-------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 48 +++++++++++---
>  2 files changed, 81 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 2fee024d642b..866b943311f1 100644
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
> index bdd0c8c4ef97..ab3ae110b68f 100644
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
> +#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1=
))
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
> 2.34.1

