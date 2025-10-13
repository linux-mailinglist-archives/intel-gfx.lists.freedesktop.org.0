Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAADCBD5BDB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 20:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074F410E4C0;
	Mon, 13 Oct 2025 18:36:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IfI6GNDb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A3910E4BE;
 Mon, 13 Oct 2025 18:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760380576; x=1791916576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TOrpkYTmYIWt8aRHrBsXRRwVyPSn4DoQwzNpJn76rI0=;
 b=IfI6GNDbhQzlhOoWdrcoTAgAYHnvJKJPGWJQyBUxj+wX56vrgGNVHxti
 2dfHUm/+e/Uxa2UOv59/xv8862anNsxkM8BQTeGZ+Cbkm3bRfFuN32Sp1
 3xKua2nUhSCMrJWm4v7JIRxJCv0pVnZ8lubfpoAREAgASc2BYraiFnSnj
 FkJHlrGP43kukLyDxFT9k91IkA3ndx3HZLG/mZbeIxHMWhH7nnWXpAQON
 oDwGpi9krP7rgxt+QeW79494J9nJwLhBZa/cZrsxgQl8XfmApTdjgrCfS
 gmx8ger0hP2dm10DfC7yLtkVdwKNkM32QCiJTHFu8KOLkErCsHc/7b+87 A==;
X-CSE-ConnectionGUID: YIl8Is4DR62UfO0T5iVabQ==
X-CSE-MsgGUID: xxhHrDVXS6Kgl4ez5gnvQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="61737032"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="61737032"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:36:15 -0700
X-CSE-ConnectionGUID: iRWpTv9fQVCjoBx2r+Xx/g==
X-CSE-MsgGUID: IMV9s+TNRiiDsxCsMmtO5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="180820233"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:36:15 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:36:14 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 11:36:14 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:36:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yxE5FOyVj8O9rse7RFknkljLJhuCxEKlgrK9cNnaaM+2/BF6rJhrL7c3ePScBh1LRPy+sRxRlh3NhUvOho4yDTGwesRUFy6CxvQoOSbPv9/SV4EoYMx1fxHkeojsCftJZbs0kDpXoIROW+XThRawoX77Rzpq2L+fFSEjiM6MxaQIoQjsVgj5eC4MgfSrHj5We/ihms7bnuo04a0d3sP1G+c554kliXOwoHiDG6YRDOMhgKlW3LJlzkAVGHUtGULI0i1++pEnbfdcOQGWakjBJBb8vTOV0LpgN0pbpHog5BueDzc6iQuwXhOBLjdVWnVTuWY93bcYTiCmvenW8F1JUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOrpkYTmYIWt8aRHrBsXRRwVyPSn4DoQwzNpJn76rI0=;
 b=m0q98X1gG5OYfkYrZKcwr6OHosqiQgDdzbuOY5KCyIV/dpqSVnUe1L6h2pDzISdPeW6H/624ZMGBmcMBYXOJD5yjjmobHkAVl3tRz0n6LnDG2s3az4DMZSU4Kn8o9tH8UT6jifUyu6skdtIQkSMWvmRRtYED9iBgY9tTug7UfFCChdx2mD5FS+PzfAu9OD7wnzmA0gC137mHJiM7y3g+Ailr8LvE2TN15zxexKSlMkZ1AZ83Xb7e1Y8BpOEAtpXLgDF5vLtS0iuehq9rs1ip7FzV9zE2aS5XvARxkKEiY+YXXG1LtBal1PV0UeuOGaT+6Br05M2MJIpa0mGRUo6w0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB7303.namprd11.prod.outlook.com (2603:10b6:8:108::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.13; Mon, 13 Oct 2025 18:36:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 18:36:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 07/11] drm/i915: Introduce
 intel_compute_global_watermarks_late()
Thread-Topic: [RFC][PATCH 07/11] drm/i915: Introduce
 intel_compute_global_watermarks_late()
Thread-Index: AQHcOIKb70iGoX1s5E+8IdSssYDJ2bTAbppQ
Date: Mon, 13 Oct 2025 18:36:07 +0000
Message-ID: <DM4PR11MB63602F44FE09479C15AF92EFF4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB7303:EE_
x-ms-office365-filtering-correlation-id: c31c5804-bec4-4b66-f294-08de0a875f9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?eGtLS1pEcW5jdndDVTFDM1hQMXNMOXh6T2J1S1VnbEhrYTNndU1wWXFYZ1JG?=
 =?utf-8?B?WnhmUEcwaHlkRFhrcU5PelJsRWkrVTU5WE1KcWNrQ0JudVNLNXo0ZDdKUXdY?=
 =?utf-8?B?UDhtQyswNVMwbG5LMWxIZDFIRVhMeHFHMW5wQmFiOHYvQ3E0anc1V2NIRUtO?=
 =?utf-8?B?R0ZPMEpEVzY3clAyZzhySEU2K2JsV1JFaW85R0JheXVEZUJjTTQwZnpPM2NX?=
 =?utf-8?B?OTVySVJJWk5yZVRmUEdOUStubHpUOXY4MWM5TUhyYnhmSEdXOWcrWlRqcTZr?=
 =?utf-8?B?VGRWenZmS2RUWUlheWdxTVpRQWo0ZVhTNjZhR0RpTytHc0hvTEFRdzRjdE4v?=
 =?utf-8?B?dTlKV0w0UzBmRmN1V3ludjU1aFdjbldHOXFqWVZ3bVdKalF6MllHS01oZFQx?=
 =?utf-8?B?TWdMSVdlb25PWmdYMnlxWnZhRml6bUEyODdVakYrV1NSYjFGczhnL3NJd1dF?=
 =?utf-8?B?K1hJeW5rZ3hlTXFXM05SVjBSVjJzU2FlYWc2cHk4NXQ3KzhWWkZaNkorS1Vj?=
 =?utf-8?B?dm1nUFlLQk85dDBoeXo3R0dOZ1oybThpdmo2YmM5SHZwTWR3T0Z3aGRUR2Vj?=
 =?utf-8?B?djkxZWoxYi96aW5Qd3NnS25PZ2E5a2s1UTNrdzRncDFEWndiUldkWHBBbEp5?=
 =?utf-8?B?eWFnQ0J0NGdSZXV2OUVCYkt6WmdCZ2o1WWVpeUtRSXp3dUpDVEd2UHVOazly?=
 =?utf-8?B?bmVFQ0xRK2VXNHlVc25MOCtBd09pTTNlY1QzcExwUEVNYlNMZWR1WHpVNjNH?=
 =?utf-8?B?c1ErQ2wrQUpxV2dwZmVwQWNwOW9JZjlILzl3U0JmNEdTYjhLY01TYTFVUU1G?=
 =?utf-8?B?L3gvWVJUbTEyRzhXeGg3dXFtb3RYbCt6SDUraGJibUVXZTVNYy9CeTNjY1Vj?=
 =?utf-8?B?dGRLNWJjNmFRdDE0VVpneVdvdUNHY2ZzMlU0SFNCenNZOXNJckY0TmlVcTNR?=
 =?utf-8?B?bmNjOHQ3SFl3dlkxUzJLc245TyszZjRUMzQyZnNXT3VjUmlsemVCTnJWQ2tu?=
 =?utf-8?B?aGpMLzF0Qm9QK1hUeEdUV2NsSzJ4RDhhS2NHakVzNEFJTkVmTzVuS2wrTFRa?=
 =?utf-8?B?bCtmSThLUTNnQ3hLQkJjME9DdkkxM0gwUVhrVFBRcVN4dFBaSmkycFNoaTQr?=
 =?utf-8?B?UjcxMTA3dzNSTGxSNHg3dnlGcDFoUGFrRXhsdnp0YVB5UEhqUmE4YU1USEVL?=
 =?utf-8?B?eEg0OEgrdGkxT0xZaXUybVNSYWJTMnpOalFSR3I0MGgrVEZwMWRLeVZ5SmpK?=
 =?utf-8?B?OE15WTVBUU5VZFRMN2Y1UldpZU5HYWk2WmlzWVhjY1ZpcTZkOEVEdGEzOXRT?=
 =?utf-8?B?ZkVwWlF6b3d6MitGV01UdjNzYlpaZU9tS3lLRDYrSVZlTGpNNU8yakZCT0lR?=
 =?utf-8?B?ZEVCN2QydjBjVDNvVFhZN0RSNEZYUk5yWERDdmZaMEVQSEllTW96V08rSkxQ?=
 =?utf-8?B?d1V1bG0rYUt5aFRkWUZucnlDdlBvUWw0cGNVOEhPMTdpZWc0b3ZkaGtkRTJw?=
 =?utf-8?B?MW13a2pnREhtM1RaL1dzV0xCbjNhNFNKNXd4RnJranRnQStBVmtncUdxdzdB?=
 =?utf-8?B?akptN0pLSG9nV2xCQUE5NGtNUzBkRTNVMGtsVGp5MjU5Vm8wb1EvUUdxRnBO?=
 =?utf-8?B?U2lPdmVnZTh6YzJ2US81SWthbGozUzA2Y0dDR2xNWnJTZEVIUmE4V1RuNkJR?=
 =?utf-8?B?eWtFMkRiN0s3U3RSQzhCV3hYZ0tPZkExL21ySTJZQzJ4QVU2RVNucUdEckp2?=
 =?utf-8?B?UnU3UUZkZkFyaG1MZHU5YXNMc0g1cnJWWCtYdlgzRkRTQm5wSVdxbEhtMlU4?=
 =?utf-8?B?azMzVnBEYVdCTHdVakx1ZlBnUW1GMk9yWnRnL1ZvWkFpeFFaeWVpVmRzQlhN?=
 =?utf-8?B?aWhJY3Y4R0doVXFxVUtkdE8wNUgxYUtwZXkxQlpWSU55WUhkOXRMUFFvMVph?=
 =?utf-8?B?ejRtcFVoNnFIWnNIRUNZQkpVS0NKbHJOM2FXdWVuVkdzNFpJZTVKcVdLemJE?=
 =?utf-8?B?aStMc1Z5SUtDWXdacVhaWmQ2Ymh1ejM4V0diNUEwL0ErMFArbEMzMjREOXV4?=
 =?utf-8?Q?4W/Jtj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGF4QmYwUEl5Y1dsd0VEYUVPQW5VQklRSDE0ckpkaW01R0RBNkFoR1NQb3Bv?=
 =?utf-8?B?Z3NxckYwTC9XREdGYXpaS1F1VFpOOCtqajY1Z3lEZE5BVjRSNVhxTzJxeVdo?=
 =?utf-8?B?akhSd2xNL0VDTjZ2UnJuc3hlRVp2UFhBT0hoTGVxQlk2eWdQWS9EbE81TFh4?=
 =?utf-8?B?ZkdoSllwNXI4M1k2TWIxV1U1SjZjTk9YdmdRbUFyKzEzdWljeDErVTNxWXBR?=
 =?utf-8?B?WE42VDFNcVlyL1VOakhVQlBSTmwwZnhubXJxTzlvNU10T1JNaCtGeGlFU0Jl?=
 =?utf-8?B?LzloWHJuR1ZYQ1V0MS9SMWVqYnQ0amwyNTJNd0s1ZG5Yc0ZKMUpreVVUWXV3?=
 =?utf-8?B?NVpTdkd6aFZQVWVXQmtNTmpSQ29NV3QxUnk2dnA4dVhIY1RjSDNCUzFqK0U5?=
 =?utf-8?B?dFMwdEZ5Q2ViQ0pBSngxc3RuZjBWcmJCWFlwVS8vNjcvMUpiZ1RoYzdTYXMz?=
 =?utf-8?B?eU5QR3RKSXBIOFJVeFNBU3c3QVFzR1Rnd2pSSmgwaXlTTkh4TGM1S2QxdjZ3?=
 =?utf-8?B?SnVNR1ptMWZFRENQakJKd1BmRlBQdEsveHBBRy9YNGZkbTZxckJ4bFJ6bENl?=
 =?utf-8?B?aEtKMGRjTjVBUGVHcW1qYTQ3dHpFWlI2SERpOGRPYU9SU0pKVEpiRkg2b2o0?=
 =?utf-8?B?WnFDWjBlRlgrS1R4QjA0dlR4NWxaYUlQM2E5MGdYZVZydzc5MmVLbHRpY2lr?=
 =?utf-8?B?N0NwRHNEV0tBWDg0aGlNTUw2Vy9LdndLei9QZU1tSXdXaG9scUpSWUwvUk1x?=
 =?utf-8?B?OFNnbVlsSnNXVVNacTVRUmdCRmJGRjYrM09ZNklJdlRMTjNReEZleHhvT0hM?=
 =?utf-8?B?WGtjS056anhNaks3akJRTzZDb29yRnd0amd3UkZoenNlUldiUGt0WFM2OFA2?=
 =?utf-8?B?ZVZ1Kys5TCt3TTcrc2xERkl2ZGJRTlZQVEhTNUVjNDJBL3FIcW9FM05GMUN6?=
 =?utf-8?B?Y3ZTbVI2WFpSUHJuUjZHMHZkcGxZc2FZRk5FT1l6TFEycXQxM2JIcU5SanAv?=
 =?utf-8?B?TXNtQnVVaTZCbzNES3ZaVytwQ0N3U1lMS0hOa1ZwRGI0c2g4ZTBkREdZWERI?=
 =?utf-8?B?YXdycDVQNGtiWXJYeG5aVEgrcVZVdjVIQmhCNHB4dTZhQS9YOEhxd3pQdm9B?=
 =?utf-8?B?N0d4aGl0VitZUmhrS3JqZzZtM0l1M0xoamh1ODl4WERka2tZcjRBS0V5MHlv?=
 =?utf-8?B?Mm41N3dtSzN0emw4Z09VeUZzdHRKeGhzSUtZL3lmU1c4RWwyL0RTY3dpeGh5?=
 =?utf-8?B?VFVCYUpBT3JaS010WXpKZGVSc3FxTy9nN0wyNkhudHEwMzBYSFN6MlRwRnl0?=
 =?utf-8?B?SGRIeVFkeXMwZzZqTUozazZOSHRuRzFkYVA0aTBMdWJlK1lkWHpDaUQ1R3E3?=
 =?utf-8?B?b3k5N0FnQlR2djVqeUdkVi9rYVJwVXBrR2E5Y3pVa1E0eXZ6bzRBU3pwdG5v?=
 =?utf-8?B?L3huMEV1NWdaRUMwR0F1UHBQbUl5ay9UZzQ5VFVCMDVBWTQ1c0NvQlY2TVRo?=
 =?utf-8?B?dGl6REdnLzBhZEFCTTdlNHBISTdmSml2cVF5dnQyam1MQ3lTcnVPaEdQSEJs?=
 =?utf-8?B?Z2NRSnFlWFN2a3d0ckFMbE1iOFdFYndYcUE4VTlSeGJNWkpWUUpIWG0zTzNS?=
 =?utf-8?B?YkdKY3JBT1BWTDZPSE9xaTNrUFRYazR5T2hGUFpocTNBSmJLa2RMZ2k2TkVZ?=
 =?utf-8?B?aVFtV3N2MnZhK0M5TWI2TG4wVkM4NkwrTEp3VDU2aDB2R2dnNVpCSllxTEkv?=
 =?utf-8?B?cEVENUlFRzFpbkFFUHpoOWpUMVczTFZ1aFFPL0htajNISFdzNkluUzA2TjNw?=
 =?utf-8?B?YTZiZXFLOG5JdEUzalQzdXRDOVNBVTFCUGN0SHI0aGVnKzlpanNZM0c0M3pY?=
 =?utf-8?B?cDJYb3dQM0VUeTJLaGNQcDZ1WW8xRHBSWVRHSlg0SHZxQjNXNjViOWNwSFR3?=
 =?utf-8?B?dE9iRmZ4NmhVcXR6NVU1cDZKQUt6Nk5rbVRqRE5YeDdKUVhZQ3MzYlR1ZkhB?=
 =?utf-8?B?ek5MN043OGhFakhacmExRHYyT3hwL0ZHOUVMR2daVnljcUdxWkU0QUxwYVBY?=
 =?utf-8?B?R25iL2ZqTzhjSFRQMmNUMHptdUdpSDNCNmwveWVZb1hoUGVzMzJtOTZ4dG9h?=
 =?utf-8?Q?rJQNOrowFeftD8SEmdevIvxss?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c31c5804-bec4-4b66-f294-08de0a875f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 18:36:07.4213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GNellgqyThTXnIE2X2peLim0JK3rOc3AhpTlJCFrUwx/uAmEkMTtd17QjMz+ag93YQBGvkYfL4Ej8UnS4MheCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7303
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAyMDI1IDExOjU2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMDcvMTFdIGRybS9pOTE1
OiBJbnRyb2R1Y2UNCj4gaW50ZWxfY29tcHV0ZV9nbG9iYWxfd2F0ZXJtYXJrc19sYXRlKCkNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBBZGQgYSBsYXRlIHdhdGVybWFya3MgY29tcHV0YXRpb24gc3RhZ2UgZm9yIHNrbCsu
IE5lZWQgdGhpcyAodGVtcG9yYXJpbHkNCj4gcGVyaGFwcykgdG8gZ2V0IHRoZSBmaW5hbCBjZGNs
ayB2YWx1ZXMgaW50byBza2xfd21fY2hlY2tfdmJsYW5rKCkuDQo+IA0KPiBCdXQgdGhlIG9yZGVy
IGlzIGFjdHVhbGx5IHdyb25nIG5vdyBmb3IgU0FHVi4gRm9yIFNBR1Ygd2Ugd2FudCB0byBmaXJz
dCBkbw0KPiBza2xfd21fY2hlY2tfdmJsYW5rKCksIHRoZW4gY29wdXRlIGNydHRjX3N0YXRlLT51
c2Vfc2Fndl93bSwgYW5kIHRoZW4gZG8NCg0KTml0OiBUeXBvIGluIGNydGMNCg0KPiBpbnRlbF9i
d19hdG9taWNfY2hlY2soKS4NCj4gDQo+IFNjYWxlcnMgYXJlIGNvbXBsZXRlbHkgYm9ya2VkIGFz
IGZhciBhcyBza2xfd21fY2hlY2tfdmJsYW5rKCkgZ29lcyBhcyB3ZWxsLg0KPiANCj4gVE9ETzog
anVzdCBhIGhhY2sgcmVhbGx5LCBuZWVkIHRvIGZpZ3VyZSBvdXQgdGhlIGNvcnJlY3Qgb3JkZXIN
Cj4gICAgICAgZm9yIHJlYWwNCg0KV2UgY2FuIGdvIHdpdGggaGFjayBmb3Igbm93IGFuZCB0YWtl
IHVwIHRoZSByZS1mYWN0b3JpbmcgbGF0ZXIgdG8gc29ydCBvdXQgdGhlIGNvcnJlY3Qgb3JkZXIu
DQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jICB8ICA0ICsrDQo+IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Nv
cmUuaCB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uYyAg
ICAgICB8IDEwICsrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dt
LmggICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRl
cm1hcmsuYyAgfCAzOCArKysrKysrKysrKysrKysrLS0tDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDQ4
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBhZmE3ODc3NGVhZWIuLjU0
ZWQzNjE4M2ViZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gQEAgLTY0NTUsNiArNjQ1NSwxMCBAQCBpbnQgaW50ZWxfYXRvbWljX2No
ZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAJCQlyZXR1cm4gcmV0Ow0KPiAgCX0NCj4g
DQo+ICsJcmV0ID0gaW50ZWxfY29tcHV0ZV9nbG9iYWxfd2F0ZXJtYXJrc19sYXRlKHN0YXRlKTsN
Cj4gKwlpZiAocmV0KQ0KPiArCQlnb3RvIGZhaWw7DQo+ICsNCj4gIAlyZXQgPSBpbnRlbF9wbWRl
bWFuZF9hdG9taWNfY2hlY2soc3RhdGUpOw0KPiAgCWlmIChyZXQpDQo+ICAJCWdvdG8gZmFpbDsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9jb3JlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
Y29yZS5oDQo+IGluZGV4IGRmNGRhNTJjYmRiMy4uNjJiZDg5NGE3MmY5IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4g
QEAgLTg5LDYgKzg5LDcgQEAgc3RydWN0IGludGVsX3dtX2Z1bmNzIHsNCj4gIAl2b2lkICgqb3B0
aW1pemVfd2F0ZXJtYXJrcykoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJ
CQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gIAlpbnQgKCpjb21wdXRlX2dsb2Jh
bF93YXRlcm1hcmtzKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ICsJaW50
ICgqY29tcHV0ZV9nbG9iYWxfd2F0ZXJtYXJrc19sYXRlKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlDQo+ICsqc3RhdGUpOw0KPiAgCXZvaWQgKCpnZXRfaHdfc3RhdGUpKHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5KTsNCj4gIAl2b2lkICgqc2FuaXRpemUpKHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5KTsgIH07IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3dtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3dtLmMNCj4gaW5kZXggZjg4N2E2NjRmZTIyLi4zMDM1ZDk4NzlkODMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMNCj4gQEAgLTEwNCw2ICsxMDQsMTYgQEAg
aW50IGludGVsX2NvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3Moc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAraW50IGludGVsX2Nv
bXB1dGVfZ2xvYmFsX3dhdGVybWFya3NfbGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+
ICsqc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkoc3RhdGUpOw0KPiArDQo+ICsJaWYgKGRpc3BsYXktPmZ1bmNzLndtLT5jb21wdXRl
X2dsb2JhbF93YXRlcm1hcmtzX2xhdGUpDQo+ICsJCXJldHVybiBkaXNwbGF5LT5mdW5jcy53bS0N
Cj4gPmNvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3NfbGF0ZShzdGF0ZSk7DQo+ICsNCj4gKwlyZXR1
cm4gMDsNCj4gK30NCj4gKw0KPiAgdm9pZCBpbnRlbF93bV9nZXRfaHdfc3RhdGUoc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkpICB7DQo+ICAJaWYgKGRpc3BsYXktPmZ1bmNzLndtLT5nZXRf
aHdfc3RhdGUpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3dtLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmgNCj4g
aW5kZXggOWFkNGU5ZWFlNWNhLi45ZjY5ZGM1ZGZkYTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3dtLmgNCj4gQEAgLTI0LDYgKzI0LDcgQEAgdm9pZCBpbnRlbF9h
dG9taWNfdXBkYXRlX3dhdGVybWFya3Moc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsICB2b2lkIGludGVsX29wdGltaXplX3dhdGVybWFya3Moc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkgICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0K
PiAgaW50IGludGVsX2NvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3Moc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpOw0KPiAraW50IGludGVsX2NvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3Nf
bGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICsqc3RhdGUpOw0KPiAgdm9pZCBpbnRl
bF93bV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOyAgdm9pZA0K
PiBpbnRlbF93bV9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7ICBib29s
DQo+IGludGVsX3dtX3BsYW5lX3Zpc2libGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF93YXRlcm1hcmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dh
dGVybWFyay5jDQo+IGluZGV4IGFhYzNjYThmNmMwZi4uNWMxOGZlOWE1MjM3IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMjQz
Myw3ICsyNDMzLDcgQEAgc3RhdGljIGludCBza2xfYnVpbGRfcGlwZV93bShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlDQo+ICpzdGF0ZSwNCj4gDQo+ICAJY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGlt
YWwgPSBjcnRjX3N0YXRlLT53bS5za2wucmF3Ow0KPiANCj4gLQlyZXR1cm4gc2tsX3dtX2NoZWNr
X3ZibGFuayhjcnRjX3N0YXRlKTsNCj4gKwlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+ICBzdGF0aWMg
Ym9vbCBza2xfd21fbGV2ZWxfZXF1YWxzKGNvbnN0IHN0cnVjdCBza2xfd21fbGV2ZWwgKmwxLCBA
QCAtMzAwMiwxMQ0KPiArMzAwMiw2IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQ0KPiAgCWlmIChyZXQpDQo+ICAJCXJldHVybiByZXQ7DQo+IA0KPiAt
CS8qDQo+IC0JICogc2tsX2NvbXB1dGVfZGRiKCkgd2lsbCBoYXZlIGFkanVzdGVkIHRoZSBmaW5h
bCB3YXRlcm1hcmtzDQo+IC0JICogYmFzZWQgb24gaG93IG11Y2ggZGRiIGlzIGF2YWlsYWJsZS4g
Tm93IHdlIGNhbiBhY3R1YWxseQ0KPiAtCSAqIGNoZWNrIGlmIHRoZSBmaW5hbCB3YXRlcm1hcmtz
IGNoYW5nZWQuDQo+IC0JICovDQo+ICAJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUo
c3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ICAJCXN0cnVjdCBza2xfcGlwZV93
bSAqcGlwZV93bSA9ICZuZXdfY3J0Y19zdGF0ZS0NCj4gPndtLnNrbC5vcHRpbWFsOw0KPiANCj4g
QEAgLTMwMzAsNiArMzAyNSwzNiBAQCBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkNCj4gIAkJcGlwZV93bS0+dXNlX3NhZ3Zfd20gPSAhSEFTX0hXX1NBR1Zf
V00oZGlzcGxheSkgJiYNCj4gIAkJCURJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEyICYmDQo+ICAJ
CQlpbnRlbF9jcnRjX2Nhbl9lbmFibGVfc2FndihuZXdfY3J0Y19zdGF0ZSk7DQo+ICsJfQ0KPiAr
DQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQNCj4gK3NrbF9jb21wdXRl
X3dtX2xhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpIHsNCj4gKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YzsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSBfX21heWJlX3Vu
dXNlZCAqbmV3X2NydGNfc3RhdGU7DQo+ICsJaW50IGk7DQo+ICsNCj4gKwlmb3JfZWFjaF9uZXdf
aW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4g
KwkJaW50IHJldDsNCj4gKw0KPiArCQkvKg0KPiArCQkgKiBGSVhNRSB3ZSBuZWVkIHNvbWV0aGlu
ZyBhbG9uZyB0aGUgbGlucyBvZiB0aGUgZm9sbG93aW5nIG9yZGVyOg0KPiArCQkgKiAxLiBpbnRl
bF9hdG9taWNfc2V0dXBfc2NhbGVycygpIChuZWVkZWQgYnkNCj4gc2tsX3dtX2NoZWNrX3ZibGFu
aygpKQ0KPiArCQkgKiAyLiBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsoKSAobmVlZGVkIGJ5DQo+
IHNrbF93bV9jaGVja192YmxhbmsoKSkNCj4gKwkJICogMy4gc2tsX2NvbXB1dGVfd20oKSAoc2ts
X3dtX2NoZWNrX3ZibGFuaygpICsgdXBkYXRlDQo+IHVzZV9zYWd2X3dtKQ0KPiArCQkgKiA0LiBp
bnRlbF9id19hdG9taWNfY2hlY2soKSAobmVlZHMgdXNlX3NhZ3Zfd20pDQo+ICsJCSAqIGJ1dCBz
aHVmZmxpbmcgYWxsIHRoYXQgbmVlZHMgYSBsb3QgbW9yZSB3b3JrLi4uDQo+ICsJCSAqDQo+ICsJ
CSAqIEZvciBub3cgaGFjayBpdCBieSBkZWZlcnJlaW5nIHNrbF93bV9jaGVja192YmxhbmsoKSB1
bnRpbA0KPiArCQkgKiBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsoKSBoYXMgYmVlbiBkb25lLiBT
Y2FsZXJzIGFyZSBzdGlsbA0KPiArCQkgKiBjb21wbGV0ZWx5IGJyb2tlbiB3cnQuIHNrbF93bV9j
aGVja192YmxhbmsoKS4NCj4gKwkJICovDQo+ICsJCXJldCA9IHNrbF93bV9jaGVja192Ymxhbmso
bmV3X2NydGNfc3RhdGUpOw0KPiArCQlpZiAocmV0KQ0KPiArCQkJcmV0dXJuIHJldDsNCj4gDQo+
ICAJCXJldCA9IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0YXRlLCBjcnRjKTsNCj4gIAkJ
aWYgKHJldCkNCj4gQEAgLTQwNjAsNiArNDA4NSw3IEBAIHZvaWQgaW50ZWxfd21fc3RhdGVfdmVy
aWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLA0KPiANCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfd21fZnVuY3Mgc2tsX3dtX2Z1bmNzID0gew0KPiAgCS5jb21wdXRl
X2dsb2JhbF93YXRlcm1hcmtzID0gc2tsX2NvbXB1dGVfd20sDQo+ICsJLmNvbXB1dGVfZ2xvYmFs
X3dhdGVybWFya3NfbGF0ZSA9IHNrbF9jb21wdXRlX3dtX2xhdGUsDQo+ICAJLmdldF9od19zdGF0
ZSA9IHNrbF93bV9nZXRfaHdfc3RhdGUsDQo+ICAJLnNhbml0aXplID0gc2tsX3dtX3Nhbml0aXpl
LA0KPiAgfTsNCj4gLS0NCj4gMi40OS4xDQoNCg==
