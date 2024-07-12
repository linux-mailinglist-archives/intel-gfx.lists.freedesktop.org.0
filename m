Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C9692F534
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 07:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F1D10E098;
	Fri, 12 Jul 2024 05:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RyNt4X5R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A938310E098
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 05:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720763532; x=1752299532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=anrqTaxA4ekLHL/0fSN1G1XoDGIQCbFv5cKicUPIYBw=;
 b=RyNt4X5R8OVci7jZIE3ssvh49qJkx6ELb1M0CphEvDapQwif1PzfpaQ5
 I4kADofTbQzVk0/zHrAvtJ6uBmyXYlmJ96KCRka3HVZ+PFFriN/4eC0fm
 5u49au9EBTFpcpdKVOVS8TqIWPP6FUVqPrCX1dzOtFe0PBrrVFVc4svxr
 pHVsRXWft8uGtDYaGdgfoE7Ia13ptpzhkIpRsYEeQw8NhNj7GrcPNXSNH
 c2AqgCFKGOJBHtEwt4vl4WdE9J6p3M0IsX2lhxnaZ2SmOGtQxSEZ0Ovmx
 uGKgFG+pgOADHJUU49SoUNQs4tuj2DWZwtkWRCuLSxjA0yWiD2/8WNz/M Q==;
X-CSE-ConnectionGUID: MUJ4RAZ0TCmvKI5QoRucNQ==
X-CSE-MsgGUID: kOULwGkSTpi4wEfhkMLoRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="17898735"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="17898735"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 22:52:11 -0700
X-CSE-ConnectionGUID: 6Htmcs81Tr+kW9vxKbspZw==
X-CSE-MsgGUID: j88UjLhLSsKWnV+BJe7tLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="53105369"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 22:52:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 22:52:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 22:52:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 22:52:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xz/yObPiREL4wqyAJ8EbWGuKtO+iaLuN9+Pdham4homN7JPXTYWFBx7z0+um2u3Y8u+d7N+BMFADiw6x2ZuNOuInk7wgvidOwhWw7WOMAxLd4JHbZbVjDUdvKPqy3gfUrwnxY0ksDZpKKvLK14i6HUNe1IVCEIGBd6euQOyTjSj2sTZV9juxsInjDRBRyjcO6SvqpvNfzUpNywnf71oTb2Jm7DrLBEVvT2iJhKLNxwRqYnhl27ykc7r5l3Z+yWA8wu6yOsMuQYwmo8Z2BGrOBaa9w2Heta0Temry6ZHWhfQHzoUloayG0z0sQmCnuhKW82H1ywFGpvq/zJat7pkqng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e8D/jdkhzLM6OzH9d9p6ojmzqm0oJqH6yQayuLD7Lo8=;
 b=sgXsqUqi+RLVVQ37UCjgqbDgz44NbiSnxo90j8EKN4AWjN7cVEdICPariVGAJuuMqWLHGNMn2yOm36E68gub5rp8TkzBFRd9nLhxRFmr6qbe0qFQ5DqRuG2xWPoP2bZag/VLN6IqSmsEQiCCgjjMI5pwp7EjjqhuNkclEBIkQBptNBcT8r34GWmi0LR7EYWTidoBRCLCUzgzmOgEsIvGMJg+ohkFrpFYV94XLRP/PetnBwfbeq/2k+3bHGZYD0tCGg07CDOIa4HJlYrQS8167AVHdnerlv6V1HE9JonmzqfUPmWpMCY22rW6ZB7PXQuNBPzGcF56e1exLSHpOIJ64w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MN0PR11MB5986.namprd11.prod.outlook.com (2603:10b6:208:371::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Fri, 12 Jul
 2024 05:52:07 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7741.033; Fri, 12 Jul 2024
 05:52:07 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "jiangshan.ljs@antgroup.com" <jiangshan.ljs@antgroup.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: Regression on linux-next (next-20240709)
Thread-Topic: Regression on linux-next (next-20240709)
Thread-Index: AdrUGlgPzCjArjqLR6Ou8zsvlQzOkQABPxSg
Date: Fri, 12 Jul 2024 05:52:07 +0000
Message-ID: <SJ1PR11MB612986837520A40CF484A1CCB9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612946A115B182F4C81692EDB9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612946A115B182F4C81692EDB9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MN0PR11MB5986:EE_
x-ms-office365-filtering-correlation-id: e4c8d09f-47c2-42cf-903b-08dca236c3ce
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tCpvQjI5/MzmGPbbv4riAd4kV7JzCpy3ohUDP6lHo83vv+QEMMUSqdS4tQ4y?=
 =?us-ascii?Q?mrg7ThPg1EIHoo2sHMtunYa7Zo18kqMorO3WU5/Jdwb8BCNG1/coyFhwpl1D?=
 =?us-ascii?Q?CUAJrfzf9/ocKIazLfGnBO4aU2OobvpBNlITrnJPWQ1JFbSHohFFgYdtK1kg?=
 =?us-ascii?Q?Dl0SmulWMH5Qd+NRUjwiVImx2vNCISGXFxTCK/ob4XQiN2rM748R7ngYsKXr?=
 =?us-ascii?Q?s8DJ5gN05kjobwA0XzWbYPO37POkuPfPKtF/Mq2Fs5pR78AC41pcQAgGzxFe?=
 =?us-ascii?Q?oMsrczYqcvFmo2CdJihOXfoYJYhVkZHMgzSHkt7GvAWPj7kvy/LPL7HtsPxe?=
 =?us-ascii?Q?+53vsYC0FKhANM3KFE1+Cdav9EA9FmIBvHMWCtd3ExnW/vm7M/W4DUPY7ieV?=
 =?us-ascii?Q?L1OlvqrgMHUPCxM023oyBWijubABEtR4n9ZY6dY74Zc/1UcX7rxh+0EegnUL?=
 =?us-ascii?Q?w8QB9uZfJD8nxJnc1lrsKppTENAu4qx1pmJllvPyZ9UhwoAuUuWMMka6tWgh?=
 =?us-ascii?Q?K04Drva5twIMurTCt9S4R7rXYXm+3hTVurEHrLP6bSg7tkbkZluRcNd05rc+?=
 =?us-ascii?Q?bY5kum6di4do4RUMvE+Sy3feYaYkAvmdDAcbp2JoTrhgjq9LmWOwNbUwrH4e?=
 =?us-ascii?Q?yaCz+F7T7tO89zBFDw2mR7YNTSxpuJmEHXMx/ZNfrvyBNt98H4kPOGyJS8nU?=
 =?us-ascii?Q?xSV1Ji/J790Qm4x6lMtlvuw1wtWuQ325ZcfMZG9+7kFAVYvnu9LSGzQNT10+?=
 =?us-ascii?Q?qtdsYAnKwecIF12TlTw8v60n6u7L15DHsaaYx+V8Wt3ImrDMX4RNiVMagS8n?=
 =?us-ascii?Q?D6/0VQrAo+eGGkmD77NKsx9hqX37I8ymbQRZdP7aN3BjT3F7e4vEplQQdXbg?=
 =?us-ascii?Q?9N/u9zP/+vDiB5wLdMFRQyWoa/d87l8Weid7Alv0NAHRF18in3qHkD2K3zUE?=
 =?us-ascii?Q?g1aJBMV9aAybdiz9p0IqsonZJpXqwX3T4B10R4wJX/3MkYDeV7TOnzO5dGDv?=
 =?us-ascii?Q?qJT6dAFiCu9kAt4vEhjtoJW2Uam7AwTctng5PwyEiGDovQ7mvvHaB4692KSH?=
 =?us-ascii?Q?7dWcdd3r2GvNwUH9l3ZkhiJqDJQc6Yhs6PSt9Ll1wHHFJ2cPKDilKt5R16zl?=
 =?us-ascii?Q?3ly9IG0pNV/C7BkaNRltheDNYPmoV6OsWCRyTS2BjDgg7vEY6fReCIh2BCxV?=
 =?us-ascii?Q?v7L71VTmFckFS/DuBrzUjAOKSKUKV0HfLytti50S/XgJF4VGFN2MOgYpMSEe?=
 =?us-ascii?Q?nV+LoR1hxD7GFxbMPsPV1HwtrqkIlSaCKUNSBB4IrZHM7LmOqP5Id6hOmu7Z?=
 =?us-ascii?Q?SKFSn6Y81wpTmsdb5VWe7iw+bx0fPkFdUBjuXgDe0jUWVfdSLz9518S9l822?=
 =?us-ascii?Q?mHUwnC8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HEI2vCPxEkkm3qgD7X9sLePNMs54RFtLfH3I8TdmvexC/tbd1cez1UIttQLc?=
 =?us-ascii?Q?sYrXRgOrQgq6E4hfbaG9UtihP8rR+XnMD4Bvmsa2vwYpCzY5pjKX3tNZVikK?=
 =?us-ascii?Q?jJcUzxlrVn4BqQCCHrTVD0Ty60igQkmLSaZnZcg6Cgqcno1zWgxN06gbkeOO?=
 =?us-ascii?Q?X9TSw67Geyw1ynMZCPqjhc3fDNYk3gv8km+LZ3dZ5OIfv2P69g81fK6gL5Yy?=
 =?us-ascii?Q?bWalLe0GcB1EAmVDu26bMQMpc4yWt5s8vnNzCa03DqdDiH/38tcr+SIMP8qT?=
 =?us-ascii?Q?HDrnHXz6TKhTgOVVrrWAgwepbgXd4NcbhAR+pFtiiviCST2yP4RTFVve5tHB?=
 =?us-ascii?Q?Gh3eRkWsyk7sNb3+oTHu6NCXdg2VJncGLDQY6uriL2FypWrDc0FtM8wf6edm?=
 =?us-ascii?Q?yUiWxvVO27wIysy8wc1YYJAxUyZcbNBFK+hMv7jm92botn+E3veW+vzz83v0?=
 =?us-ascii?Q?0vyBklkIVRbcbKwFW6I4IX6d/AicR6QQAUrKtpGTRgJE8SQReW9P9YNjo6+o?=
 =?us-ascii?Q?rNnd+4jtsIyZ8KfRAUT7v2Fsgq0WdKEDQq1XcaXWWZ2JSfPtV9beB8zqE/sR?=
 =?us-ascii?Q?66O+5L7weFzEAFUfr/LZrNhAaRjG5b29tgB7D098JdeCwEnTmnyicL6Xo7Oh?=
 =?us-ascii?Q?1CjGpUWFU7+Xqxp750uIfh6giYiE6wMVuCCbPvq8/DHrph2PrHTP6QNpx/Cx?=
 =?us-ascii?Q?GKnv9ofkKvtL0FovjkIKlHqFnWp9QNmiO8G7l7/gkkcj3ZE11O2ssEoJE5yJ?=
 =?us-ascii?Q?n/zUCL/XXaMrAkUagSLKUbbGz/7QEmsmeg2CqvNotXgWGR/iA4ivfrp0taLn?=
 =?us-ascii?Q?bttCnlPMkFeBk1Lny0GXSrOe0+9iWMtcrFbB3c99sR/HBh9HTHssrO0R5yOq?=
 =?us-ascii?Q?XpoJ8olZJlckwlMUT1AFiT2A0Qa/FXL+c++QSpvmEYDnBMM4wLo2CHK9Se5+?=
 =?us-ascii?Q?41hjelPuDsNO/xr9HTNMCd9DCw/EKqORsA4YPm9qIDODsD21Syf0kIDpde0+?=
 =?us-ascii?Q?rlDD2cmHEtPNNparRXHEu1pRf0s4veZVU6dx5sBm61VlarYLEAcfyf8/eYV0?=
 =?us-ascii?Q?hGzEGNKU+etEUXHRbO8sttnWhiV+isW3yKkl1LojnE64UwHUI5ISAbgYDtQG?=
 =?us-ascii?Q?76OlAkFkyJwL+rdI2nEA1NQTJG6ZDaJn6pKSYsCTXsdSPXIangk5hLiQoivv?=
 =?us-ascii?Q?JBHxbiRp0H61WTiib5v1xcOWpxMFjIfPbVluQMWSjQGOFtKaiYJGWw4GF8/Q?=
 =?us-ascii?Q?yLuvHKO1BdGlf5kP3XN/yVVDJSvPxNaw1Xfe4enSXH6fRyWyK3gMsDQ8bUMh?=
 =?us-ascii?Q?PwAqIOyLAxCKvFz9JPzBjqORKRgJsA9/raNEviYl/U8jI2MS3kqs7GfrQanj?=
 =?us-ascii?Q?LMirlWmb3+cFXwI4SykIch5oxnZSIgCXtjcGM88CitCgqHsrBel+MZ1iCTQE?=
 =?us-ascii?Q?EedL2gluwTFNmq9lLGgc6VKwcr37d/UFKdFYnnfPI8qzt1tMLWo8C59+wImD?=
 =?us-ascii?Q?4WUMA1JuvO0J9xwYX5aEp4lArLQT/SxMreRJkuzKOMpJ/GFc80jRWCvVoqVp?=
 =?us-ascii?Q?YCia5BgQOcbLr4zLet2JB8eVY/4HeecXXyeGRVdg9lrptcS0RpiVzXKVFfeM?=
 =?us-ascii?Q?uQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4c8d09f-47c2-42cf-903b-08dca236c3ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2024 05:52:07.6765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yXDOfNtO1lZRAHs9ZdxQ/8zLejqmrKCeHvUW7fh5HJMTxRpJxr6sKwFLCs0prkW/ws/u7hlWiOZA1lntozgmrDrnQ5QKjHU39EGjHQIaFmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5986
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

[+intel-gfx]

Hello Jiangshan,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20240709 [2], we are seeing the following regression=
 during boot up.

```````````````````````````````````````````````````````````````````````````=
``````
<4>[    0.813758] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<4>[    0.813758] WARNING: possible recursive locking detected
<4>[    0.813758] 6.10.0-rc7-next-20240709-next-20240709-g82d01fe6ee52+ #1 =
Not tainted
<4>[    0.813758] --------------------------------------------
<4>[    0.813758] swapper/0/1 is trying to acquire lock:
<4>[    0.813758] ffffffff8264adb0 (cpu_hotplug_lock){++++}-{0:0}, at: allo=
c_workqueue+0x31a/0x820
<4>[    0.813758]=20
                  but task is already holding lock:
<4>[    0.813758] ffffffff8264adb0 (cpu_hotplug_lock){++++}-{0:0}, at: pada=
ta_alloc+0x56/0x140
<4>[    0.813758]=20
                  other info that might help us debug this:
<4>[    0.813758]  Possible unsafe locking scenario:

<4>[    0.813758]        CPU0
<4>[    0.813758]        ----
<4>[    0.813758]   lock(cpu_hotplug_lock);
<4>[    0.813758]   lock(cpu_hotplug_lock);
<4>[    0.813758]=20
                   *** DEADLOCK ***

<4>[    0.813758]  May be due to missing lock nesting notation

<4>[    0.813758] 1 lock held by swapper/0/1:
<4>[    0.813758]  #0: ffffffff8264adb0 (cpu_hotplug_lock){++++}-{0:0}, at:=
 padata_alloc+0x56/0x140
<4>[    0.813758]=20
                  stack backtrace:
<4>[    0.813758] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.10.0-r=
c7-next-20240709-next-20240709-g82d01fe6ee52+ #1
<4>[    0.813758] Hardware name: ASUS System Product Name/PRIME Z790-P WIFI=
, BIOS 0812 02/24/2023
<4>[    0.813758] Call Trace:
<4>[    0.813758]  <TASK>
<4>[    0.813758]  dump_stack_lvl+0x82/0xd0
<4>[    0.813758]  print_deadlock_bug+0x259/0x390
<4>[    0.813758]  __lock_acquire+0x733/0x1f60
<4>[    0.813758]  lock_acquire+0xd1/0x2f0
<4>[    0.813758]  ? alloc_workqueue+0x31a/0x820
<4>[    0.813758]  cpus_read_lock+0x3b/0xe0
<4>[    0.813758]  ? alloc_workqueue+0x31a/0x820
<4>[    0.813758]  alloc_workqueue+0x31a/0x820
<4>[    0.813758]  ? __pfx_pcrypt_init+0x10/0x10
<4>[    0.813758]  padata_alloc+0x6f/0x140
<4>[    0.813758]  pcrypt_init_padata+0x12/0x80
<4>[    0.813758]  ? __pfx_pcrypt_init+0x10/0x10
<4>[    0.813758]  pcrypt_init+0x3a/0xa0
<4>[    0.813758]  do_one_initcall+0x5c/0x2b0
<4>[    0.813758]  kernel_init_freeable+0x18e/0x340
<4>[    0.813758]  ? __pfx_kernel_init+0x10/0x10
<4>[    0.813758]  kernel_init+0x15/0x130
<4>[    0.813758]  ret_from_fork+0x2c/0x50
<4>[    0.813758]  ? __pfx_kernel_init+0x10/0x10
<4>[    0.813758]  ret_from_fork_asm+0x1a/0x30
<4>[    0.813758]  </TASK>
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit 1726a17135905e2d2773f18d47bd4e17dd26e1ed
Author: Lai Jiangshan mailto:jiangshan.ljs@antgroup.com
Date:   Thu Jul 4 11:49:13 2024 +0800

    workqueue: Put PWQ allocation and WQ enlistment in the same lock C.S.
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We could not revert the patch because of merge conflict but resetting to th=
e parent of the commit seems to fix the issue

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240709=20
[3] https://gfx-ci.igk.intel.com/tree/linux-next/next-20240709/bat-rpls-4/b=
oot0.txt
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240709&id=3D1726a17135905e2d2773f18d47bd4e17dd26e1ed
