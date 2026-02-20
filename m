Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLchC49bmGkNGwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 14:03:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99336167A7B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 14:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83FFE10E6F2;
	Fri, 20 Feb 2026 13:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSQiJ1N4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7138010E6F2;
 Fri, 20 Feb 2026 13:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771592585; x=1803128585;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gnF1QhjAuxKfnb6FcuBCfsHJZ+23j3/IQVyazx8jG1Y=;
 b=CSQiJ1N4AtMyw4H2hqxBEjPwseJ6OVbJIytWc5HQgoEJVUUYSRk4f4Lf
 x4ErY+8SVh19upaSTp8SIACHd5QvR1wF/mM0YoejedISJHUXk+v62aA80
 MtMwDw0/iMTQo4smCNFU7uOHzHaPFEscS8C6PqQ5DYbE3JZnhsnB8DlPE
 L5c6+0h3WBmBKc8EFxAOvPwNGWrXY5IfLx35sSUpSnIsXEe7ZLQfsztcI
 Hu5l41/iLKVG2GxtLoifUbIXg7n97c7d+lAlphY6vM3tcX+UpOZ8HIxuy
 qG+QvfJ+sp57SNtjrUX3wHwBFqrGQEeyLN2DM+L12VOKgrNIRlmzhlwtr Q==;
X-CSE-ConnectionGUID: 93135exYRuKylfvfDN2QXg==
X-CSE-MsgGUID: sIndpfd/QY+i3927Mmg/IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="71709117"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="71709117"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 05:03:05 -0800
X-CSE-ConnectionGUID: xTO/s7klT7au2LLuGFNZ0Q==
X-CSE-MsgGUID: nDNiEnQ6TQ6EI4lBZII8ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="243313215"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 05:03:05 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 05:03:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 05:03:04 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 05:03:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t2QKrhMkUj532pWCp90az52EUJqBlTx28i+gveZ8hD6RKUBNNPN7ahbC3hSfk3mM6KYIC2xuyCVvvs+mXLHmXCADQ351tWSdozKJ1ccJxhvRLd9l4CyDDl6LgpBzDRlGL81KpTSsq2jZj16mVHvF70HHK/mQrlVJxXSfSGlDwD09B3b5jVyC/H66es4/u1cK/WKjYLeIR1D7X3a7kVzq00awQXBsiSX2BQ7LIJkizyhEcoUiXedQneIGR+x3HNlzsEKdWfHaslcRM2gOB79TIFztVmWH9Oxk0QP2EDqDXQfArjzo1/XgCkEVeodBk5GG9oqvDlZwg5PgYn7X+iwoKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gnF1QhjAuxKfnb6FcuBCfsHJZ+23j3/IQVyazx8jG1Y=;
 b=HTqBXjEBPQIyA7ZMpRzNfi/olwsBLIoQOoGaxXRlSbXvAtuYGuUHiMNlnqSpZ4xD1F082EivU09T2qwao/cGZdOwm7q2RY8uA2/8UuiFWpcasepiAs3OZkku6LRd2uyyrK/8b1xU8B357nvfuyq3mZaWhgEo8dQdhMozIESF8/3F4FUvF1vLF3w3nLNuK1c+Gby5lQ0JwZTUZKmvHpxcLSSB6QbOEu+cwIW9rjZJH/Pl6mn4QrRhvbq/d8BSIcNJjizMapFnNH61dM47hXRQIwo98tfvO8NSbZDyW4+SBCW92coC2aClc0conGjg0hI6CPHSEKHZUX/P/Hjx1iT/HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA3PR11MB9400.namprd11.prod.outlook.com
 (2603:10b6:208:574::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Fri, 20 Feb
 2026 13:03:01 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Fri, 20 Feb 2026
 13:03:01 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 18/19] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Topic: [PATCH 18/19] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Index: AQHcnOQGmz9qybyvKkCBwBvwMoURDrWK74oAgACoSnA=
Date: Fri, 20 Feb 2026 13:03:00 +0000
Message-ID: <DS4PPF69154114F83F862A0DD2B794F1898EF68A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-19-mika.kahola@intel.com>
 <DM3PPF208195D8DE44FEC017AC6A7866504E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DE44FEC017AC6A7866504E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA3PR11MB9400:EE_
x-ms-office365-filtering-correlation-id: bbeb8c59-50ca-4639-b9d5-08de7080607c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?QTNsc3ltby9rZGNJNUl2YmlWM0pDTDJUeWdwVDhDbUtydkZ3VVk3WnFXSENn?=
 =?utf-8?B?UXFkQ0s5TXdqWWpoTFJxdTZubEUyaHNtZUdSeVhjV2ZDbHJlelpUUXFtTFJx?=
 =?utf-8?B?eXBCdisxN0pvUVdIU1hoU3ppczJNOGVXNGsrcE1KTmc3K3oyaWhwMVVtM2pk?=
 =?utf-8?B?MS9QOVdPWFRIVE5uUGYrbGJVTzE2VmdDMm5FZ3kvOFY0d0xqUzQ1WDFibW56?=
 =?utf-8?B?dkN5TWpUTnVrSTk0bHh0VFJSeExaZUNNOTMyWTlYZUwrUTVwVnByYUNnOTFB?=
 =?utf-8?B?bjh0aTY4MnFla1llNVZENkxpOE9zVHh6Znk3Q01rQnFwY1d4K09MU2h3bmlB?=
 =?utf-8?B?QnhLZWJwbkhsMmJNZkJ5MFQ5a0lWWVZpQXl6YmFVMFhoK2tOQWd4Vm5BUnA2?=
 =?utf-8?B?RFFlVWVZbGJaWCtHVENNR21sbFlSemwrbGJPeUovZk4yRitWckovMnRLSmoy?=
 =?utf-8?B?aWhCTnpHbE4weld6OXI2UGZCZUdZOVZvckpHa1M0bXFxbGxCRXdiT2NFbkZH?=
 =?utf-8?B?YWh3elVsM0xibm5PQk1yVnNsaE54TnFpdmtSNzgxNEh5d1A4L0NVcHByVEZh?=
 =?utf-8?B?azBLZFFTOEhBRGZqUjh1NFd2U1hLNmdjYXNwcFRCbHdBZ0IzSC92SFJiZ01B?=
 =?utf-8?B?d09jNWpCcy9OS3JBTS9CbERLYjlRWWpqMFgwZHNUNkNPZFdEbzFSbjdSc0JE?=
 =?utf-8?B?Z0ZBVnUwbm9xWTYwSWorS1FrdzhBeHE2RjUwSU9CNG5IQWV1T0tkQy9wZTcw?=
 =?utf-8?B?SHcxekdXK09jRDEvc2FqWnhhZ0JhcHdvOGw4OElITlpCMnZLTWxKQVRTQVVx?=
 =?utf-8?B?N1ZLQXhOTkkybEw3QTJKUk02WjFPTzdhd1Z1dzNaaTdCQ29uSUYrYUMwemNN?=
 =?utf-8?B?OWNSZ0VPUDFJc0M4WCs2bnVYcmRsY3Vwem9iN0hESXY3d1RXZDQyMkVyL0k3?=
 =?utf-8?B?RXVTeVJ3eUpMNm1uWnJZdzZaWTlmYjVjblpyTXAxUm1sUWdxdGJzOGtNTGxD?=
 =?utf-8?B?TDlhZDBBRnBDUnpreXVZODQ5dVl6SzlaRUhzQVJSR3BQdDVtNFRFZUFyOFRE?=
 =?utf-8?B?MDl0dEpDb2NjUzgvRHJjWUxrQmZiS0UxbU4vTEJDWnpyS00zUmVDL2RFZGNH?=
 =?utf-8?B?Zno4YmtuN0YwMTAvNy9pWHY1VEI2aG15WU5DN3VhdEp0OUdXYVc0VjBibHBn?=
 =?utf-8?B?OHUzN1dIZEx4djd1YllWcTdMMmJ3cnB6M1g1M0FSdkx1RkpuakxyRm1vaXNS?=
 =?utf-8?B?eE5CUEM4bVVTcVU4UldVRjBXR0taUjB6djFwQ3k0TnpJVzh1YlNCOXhwZWQ5?=
 =?utf-8?B?a01XZlBhVUpBSm1icVgwS25aYkN1VXhEQS83aXorYldSeEE0dHdxV2pEL1Zt?=
 =?utf-8?B?dnVNdmtoQ1FGakx1UGcwdm5KMzYyd29ZWWlwbmFNc2ZxYlJQejZ4UFlaUFE1?=
 =?utf-8?B?WXdjQm9CelpWdHgvNHRiWjhaWEZia2gzc0F4L1R2aDVralhzbTE2YVlKUmI3?=
 =?utf-8?B?b0NTWk4zeFdYV2tVV2lLVWhIOVF1NG9mTlRkYk04Q1Uzdm13ZUVjQS9zM2Ir?=
 =?utf-8?B?a0V2QVUzdVJRRUxkenFNdUxBQlZLbytEQkIzdWR2U2tIZnIwNW5xNDA1SlNm?=
 =?utf-8?B?K0FVSmpocU5aL1hPcTlmY2J5VXBwSjZtRHhVOFFMc0FzbXpLNE1iQlhIbmV3?=
 =?utf-8?B?SHdxenNidGNYQzRSV3J5b3Q3M3E1bVZOSGppZ1p3YVlQek9Db3pQV1NJUTRL?=
 =?utf-8?B?YkhWYm5kNWJVV0J5aU1uSmxrMU5tUHdFckI0bmJBYi95OWlJNlo5eEh4WktB?=
 =?utf-8?B?c0Y5STJsTjE1NHBXMHErTW00ZTFHZGZtazFYV2ZwbWpBUDNZZ2VNRVZSK1dn?=
 =?utf-8?B?bjNST1MybzFtV08xd1pCMm56blBFeWhFcXlPM0Jva2d2QzhHS1haQWgxWkly?=
 =?utf-8?B?R0NFUjZxYVhiejlOajFSWGRpVmV2aWhwc2JMOXpJRC81cVltQ3NuZGZ2UDV1?=
 =?utf-8?B?TEd6eVYvOHNrVFFnV0pnNHlyUHpsVzFCd1VONEFabDhqNzYxQ1ltUCtzeFo2?=
 =?utf-8?B?cEI5WDdXUG9janJaTVdTdnFCQ2lRakRUNUpKRTkydG1kSmVuWGZRbmlmeHJX?=
 =?utf-8?B?R0gwU1NwSzZyeUg0eUFrVXpYUDBRaUhkNEt6Qk9UZkthYTZZSU42RkgwcmJp?=
 =?utf-8?Q?oY5Sk5gr3fMWuIymHrgzEis=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnhYdVRpR2ZrSVp4eVVFcDBtdUtreHlvU3pZUlFubWU5bWlnazAxRVFxR1BE?=
 =?utf-8?B?MlErdngya1ZrWjdsZDk0eWdxcGVFdHZuUjlldTV5dWhvMURpaThtUVdPRHNE?=
 =?utf-8?B?TC9mdlNJd0Y0b2JpaGZPTXhQeVFIRWhlYmI1OGxIWHlBcFZzVlNjcG1GRExw?=
 =?utf-8?B?M0YxTzgyMW9RdGk5WngrMjJBRHRBSVV0Vk4vNkYyRlBRQ0xGMG5CWGFodkly?=
 =?utf-8?B?MFFpUTlENnE3clVnR0ZLbWgrRlY1bUc0NHhpRjVQNDdIWWxVTDBsTGt3M0Nn?=
 =?utf-8?B?bTZyRWRsZk1TR2xTdlVnWnJaZzUrTFQrQjN1amNpNXJXVlcxUEVFaWkxRTlW?=
 =?utf-8?B?OTUrRENhejZ6b2paOWVhamdQazgzKytJN3N6THdZc2lXZnViRG1NZ0Ruc0N3?=
 =?utf-8?B?QVpsNW9BQ2laSFN1QzI2YTIwOWE0N2o4RFRyblJpUldJS09qZXQrK0h5WEtB?=
 =?utf-8?B?WnBJcUx3cDlCRnBZN1RKalBIK1hXdVJjNHVOQ2R2ZzVPNitmUW1yRmxRc3Zv?=
 =?utf-8?B?RVA1TXI0L0pnUXFSWVQ3SnJ5cmRVcy8wd2czRmJjcWdFdDl2UENjVVprRU5v?=
 =?utf-8?B?QmZmSG03OGNLSVlYTXFIZjdUNWkrenhpbWcwejJwd091MnRUa0FUdnN2dzkx?=
 =?utf-8?B?MjZnWjVJWVhNT1FwdzdUQVhjR2ZCYlYrRVQ0WExwRzBhakd1a2crQk1KYkR0?=
 =?utf-8?B?eHlkUDFnakJYTVJ2aUxOV2RnUUJXQjBXTjJBNkZuY3NCa0x0ekNraHBiMVNO?=
 =?utf-8?B?aHN1aUIwdkIxbm55Z3NKZFc2VEUvbWx3VzJMMnlUVHh1OUVESGZ3OEdOOE1O?=
 =?utf-8?B?NWRjYnpHU0lmaHJKbnQyUFVCbVBEZ3B2c1ZqbTRLVmZTSXRlb043ZWRIanZB?=
 =?utf-8?B?YUpjWTliV1F0LytpQU5JNDk5RVJOdVdqeTdqUUdrNVdudndlWUw0a1AzaHhn?=
 =?utf-8?B?em5ka0pqK0VnNTlDcTh1ZjM1VlhmNEsxZTBhc1FhRWYwZWNGVDI0YUhtTmR3?=
 =?utf-8?B?OW1kdnV4TGZMWWU5OC80R051bHJONnFyQjArcEtSVHVOT2MxVUw1bzlrV2Z1?=
 =?utf-8?B?WjJVODdYMWIxTmptWTBFajg5SUhBQ3VNam1wd0tya0pkeDdidFFsS3FMUmlC?=
 =?utf-8?B?RHcrVzExQzVJZld6b3JTaGFaNXR2b2NaK3NZM1pFUCtKYml5ZkQwdHFOTFVE?=
 =?utf-8?B?aWdGTlEwVEEwNllhYnhmSDhOTlA5RSsxNHBZSG1JRExSRDEwQUJUT09pWkNz?=
 =?utf-8?B?Zkxld1NBZUJwMHhQMi9zdXhIcjRuQjZzbnBCc1ZZeEJWb1JCSDdRQTR1OEhW?=
 =?utf-8?B?WVdCMFplMHk3eUpFNEJQTUdPWm05NGVIRWF6eFE2SmFFcHpBbi9tS0NnMWtI?=
 =?utf-8?B?N0x5cGdwODR4MHVZZktnbVNqUlprQkJxU2dsVFBXRkJaeFc0VzlkSEI2TjJF?=
 =?utf-8?B?QXZ6U0pqemdHNnpyblRzckY0WUpMQlNna2k3NEdXVUN5cWhkQ3ZxY0doeHBY?=
 =?utf-8?B?T3ZkNHV6d0VwWTFSMFFMbWp6SFYycmFpL1FXYkRWWlcxMmh5b3NnazlobTBw?=
 =?utf-8?B?MkxTdm1KWUNuWDRUck9KZTdFVS9lSU5NdGE4RnZKQWQyQUdsNC9aZUQvdDFT?=
 =?utf-8?B?MXV2RmxST0tEQjlmSEZPM29RMjBhYlZuMWhFZ1p4eXNDM0pCMDJNOUg1KzlD?=
 =?utf-8?B?T1dvUFJjSkR3VzhWNFg5RGdZbXp6Rk9HaUpLZmdIYzBqU2hFMmxlK2hDeUNj?=
 =?utf-8?B?eGY4Ui9uM3FXeXliVjkyb1ZGK1pRb3IrTmsrdFVuNm5FVG5XVEpFQkl4b0xR?=
 =?utf-8?B?TmMwekwweS9FN0pTT3o0UjRYeTMrL3FReVo2cWdmZ3BuaDFMcmMwVXFsQTRw?=
 =?utf-8?B?d1Z5QVJleVlhQjJmcjlObURseTNoMWxyS1N2YjVadFRVUUVGdXoweEhKMlFE?=
 =?utf-8?B?Tkx4NG9ITVl6NUpDTjVtdGpqQXlmb0hUUVhpcW4vWjBWRjFzTjBneEdQbE5l?=
 =?utf-8?B?WG0ydDFrQmdKUDRvem9RTGMvdDVGOFB2d2pKaVNvUDExL1pheEMzbTVPOUVU?=
 =?utf-8?B?UklLaU9PUk9KdFU2dDNqelJDYWhucmc3Q0pORE9HNENNdjlKZ2dJRkRXNTY5?=
 =?utf-8?B?Z29YNlNRSWdoQzRISW9KaVlDQWh2bWxVWW91WWZTL2h0VStPSEl2UGxjWWhS?=
 =?utf-8?B?NW1YMzJLSkphdzBGNVJtZjhJdzhOR2RGWURqLzR0MDZPSTZyVjJTUkdPbWpE?=
 =?utf-8?B?OEM0SXpGSEhYdDl4eEErcFYxbDV1WEsrSUNyRDlNajZQNzhKWkNEWjRLOGdo?=
 =?utf-8?B?M3dpNVBmMXA0Wjk3RHlaYjM0VVNJUEM5T2JVc1VGUHd4ejN5UGtTdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbeb8c59-50ca-4639-b9d5-08de7080607c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 13:03:00.9837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 52GhvfMFI9YBwiiAzgsH5YdKgkTrJRo8bicxW5tmFsKKiMeoAgiT3qGurd7obDARK5fRwCJT7zKt8monxDwKKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9400
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPF69154114F.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 99336167A7B
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgMjAgRmVicnVhcnkgMjAyNiA0
LjU4DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJF
OiBbUEFUQ0ggMTgvMTldIGRybS9pOTE1L2x0X3BoeTogUmVtb3ZlIExUIFBIWSBzcGVjaWZpYyBz
dGF0ZSB2ZXJpZmljYXRpb24NCj4gDQo+ID4gU3ViamVjdDogW1BBVENIIDE4LzE5XSBkcm0vaTkx
NS9sdF9waHk6IFJlbW92ZSBMVCBQSFkgc3BlY2lmaWMgc3RhdGUNCj4gPiB2ZXJpZmljYXRpb24N
Cj4gPg0KPiA+IFJlbW92ZSBMVCBQSFkgc3BlY2lmaWMgc3RhdGUgdmVyaWZpY2F0aW9uIGFzIERQ
TEwgZnJhbWV3b3JrIGhhcyBzdGF0ZQ0KPiA+IHZlcmlmaWNhdGlvbiBjaGVjay4NCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMgICB8
IDM5IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9sdF9waHkuaCAgIHwgIDIgLQ0KPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9tb2Rlc2V0X3ZlcmlmeS5jICAgfCAgMSAtDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNDIgZGVs
ZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9sdF9waHkuYw0KPiA+IGluZGV4IDA1MmNiYmQzNjM5Ny4uMWRjNTM5MThhMDU0IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+
ID4gQEAgLTIyNzAsNDUgKzIyNzAsNiBAQCBib29sIGludGVsX2x0X3BoeV9wbGxfcmVhZG91dF9o
d19zdGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJcmV0dXJu
IHRydWU7DQo+ID4gIH0NCj4gPg0KPiA+IC12b2lkIGludGVsX2x0X3BoeV9wbGxfc3RhdGVfdmVy
aWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IC0JCQkJICAgc3RydWN0
IGludGVsX2NydGMgKmNydGMpDQo+ID4gLXsNCj4gPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydDsNCj4gPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpuZXdfY3J0Y19zdGF0ZSA9DQo+ID4gLQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0
ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4g
PiAtCXN0cnVjdCBpbnRlbF9sdF9waHlfcGxsX3N0YXRlIHBsbF9od19zdGF0ZSA9IHt9Ow0KPiA+
IC0JY29uc3Qgc3RydWN0IGludGVsX2x0X3BoeV9wbGxfc3RhdGUgKnBsbF9zd19zdGF0ZSA9ICZu
ZXdfY3J0Y19zdGF0ZS0NCj4gPiA+ZHBsbF9od19zdGF0ZS5sdHBsbDsNCj4gPiAtDQo+ID4gLQlp
ZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAzNSkNCj4gPiAtCQlyZXR1cm47DQo+ID4gLQ0KPiA+
IC0JaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiA+IC0JCXJldHVybjsNCj4gPiAt
DQo+ID4gLQkvKiBpbnRlbF9nZXRfY3J0Y19uZXdfZW5jb2RlcigpIG9ubHkgd29ya3MgZm9yIG1v
ZGVzZXQvZmFzdHNldA0KPiA+IGNvbW1pdHMgKi8NCj4gPiAtCWlmICghaW50ZWxfY3J0Y19uZWVk
c19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSAmJg0KPiA+IC0JICAgICFpbnRlbF9jcnRjX25lZWRz
X2Zhc3RzZXQobmV3X2NydGNfc3RhdGUpKQ0KPiA+IC0JCXJldHVybjsNCj4gPiAtDQo+ID4gLQll
bmNvZGVyID0gaW50ZWxfZ2V0X2NydGNfbmV3X2VuY29kZXIoc3RhdGUsIG5ld19jcnRjX3N0YXRl
KTsNCj4gPiAtCWludGVsX2x0X3BoeV9wbGxfcmVhZG91dF9od19zdGF0ZShlbmNvZGVyLCAmcGxs
X2h3X3N0YXRlKTsNCj4gPiAtDQo+ID4gLQlkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNv
ZGVyKTsNCj4gPiAtCWlmIChpbnRlbF90Y19wb3J0X2luX3RidF9hbHRfbW9kZShkaWdfcG9ydCkp
DQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0NCj4gPiAtCUlOVEVMX0RJU1BMQVlfU1RBVEVfV0FSTihk
aXNwbGF5LCBwbGxfaHdfc3RhdGUuY29uZmlnWzBdICE9DQo+ID4gcGxsX3N3X3N0YXRlLT5jb25m
aWdbMF0sDQo+ID4gLQkJCQkgIltDUlRDOiVkOiVzXSBtaXNtYXRjaCBpbiBMVCBQSFkgUExMDQo+
ID4gQ09ORklHIDA6IChleHBlY3RlZCAweCUwNHgsIGZvdW5kIDB4JTA0eCkiLA0KPiA+IC0JCQkJ
IGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLA0KPiA+IC0JCQkJIHBsbF9zd19z
dGF0ZS0+Y29uZmlnWzBdLA0KPiA+IHBsbF9od19zdGF0ZS5jb25maWdbMF0pOw0KPiA+IC0JSU5U
RUxfRElTUExBWV9TVEFURV9XQVJOKGRpc3BsYXksIHBsbF9od19zdGF0ZS5jb25maWdbMl0gIT0N
Cj4gPiBwbGxfc3dfc3RhdGUtPmNvbmZpZ1syXSwNCj4gPiAtCQkJCSAiW0NSVEM6JWQ6JXNdIG1p
c21hdGNoIGluIExUIFBIWSBQTEwNCj4gPiBDT05GSUcgMjogKGV4cGVjdGVkIDB4JTA0eCwgZm91
bmQgMHglMDR4KSIsDQo+ID4gLQkJCQkgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5h
bWUsDQo+ID4gLQkJCQkgcGxsX3N3X3N0YXRlLT5jb25maWdbMl0sDQo+ID4gcGxsX2h3X3N0YXRl
LmNvbmZpZ1syXSk7DQo+ID4gLX0NCj4gPiAtDQo+ID4gIHZvaWQgaW50ZWxfeGUzcGxwZF9wbGxf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJCQkgICAgICBzdHJ1
Y3QgaW50ZWxfZHBsbCAqcGxsLA0KPiA+ICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBs
bF9od19zdGF0ZSAqZHBsbF9od19zdGF0ZSkgZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuaA0KPiA+IGluZGV4IDFjMmVjNDM4Y2QxMC4uOGI5ODk5
N2IzMTA3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbHRfcGh5LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2x0X3BoeS5oDQo+ID4gQEAgLTQxLDggKzQxLDYgQEAgYm9vbCBpbnRlbF9sdF9waHlfdGJ0X3Bs
bF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdA0KPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+
ID4gIAkJCQkJICAgc3RydWN0IGludGVsX2RwbGxfaHdfc3RhdGUNCj4gPiAqaHdfc3RhdGUpOyAg
Ym9vbCBpbnRlbF9sdF9waHlfcGxsX3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0DQo+ID4gaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfbHRfcGh5X3Bs
bF9zdGF0ZSAqcGxsX3N0YXRlKTsgLSB2b2lkDQo+ID4gaW50ZWxfbHRfcGh5X3BsbF9zdGF0ZV92
ZXJpZnkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gLQkJCQkgICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ID4gIGludA0KPiA+ICBpbnRlbF9sdF9waHlfY2FsY3Vs
YXRlX2hkbWlfc3RhdGUoc3RydWN0IGludGVsX2x0X3BoeV9wbGxfc3RhdGUgKmx0X3N0YXRlLA0K
PiA+ICAJCQkJICB1MzIgZnJlcXVlbmN5X2toeik7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF92ZXJpZnkuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jDQo+ID4gaW5kZXgg
MTJhMDAxMjFjMjc0Li4yZWMxN2MyYmZlMGYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jDQo+ID4gQEAgLTI0
Niw3ICsyNDYsNiBAQCB2b2lkIGludGVsX21vZGVzZXRfdmVyaWZ5X2NydGMoc3RydWN0DQo+ID4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCXZlcmlmeV9jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsNCj4gPiAgCWludGVsX2RwbGxfc3RhdGVfdmVyaWZ5KHN0YXRlLCBjcnRjKTsNCj4g
PiAgCWludGVsX21wbGxiX3N0YXRlX3ZlcmlmeShzdGF0ZSwgY3J0Yyk7DQo+ID4gLQlpbnRlbF9s
dF9waHlfcGxsX3N0YXRlX3ZlcmlmeShzdGF0ZSwgY3J0Yyk7DQo+ID4gIH0NCj4gDQo+IFNvIEkg
c2hvdWxkIGhhdmUgbm90aWNlZCB0aGlzIGVhcmxpZXIgaW4gcGF0Y2ggMTEgaXRzZWxmIGJ1dCB0
aGUgc3RhdGUgdmVyaWZpY2F0aW9uIGZvciBMVCBQSFkgd29udCB3b3JrIHdpdGggRFBMTCBmcmFt
ZXdvcmsNCj4gdmVyaWZpY2F0aW9uLiBUaGUgcmVhc29uIGJlaW5nIHVubGlrZSBwcmV2aW91cyBQ
SFkncyB3ZSBoYWQgdmFsdWVzIHdpbGwgbm90IGJlIHByZXNlcnZlZCBpbiB0aGUgc2hhZG93IHJl
Z2lzdGVycy4gRG8gaWYgdGhlcmUgaXMgYW4NCj4gaW50ZXJuYWwgUEhZIHNodXRkb3duIHdoaWNo
IGlzIGFnYWluIGNvbnRyb2xsZWQgYnkgRE1DIHdpdGggZmVhdHVyZSBsaWtlIFBTUiBldGMgdGhl
c2UgdmFsdWVzIHdpbGwgYmUgbG9zdCBhbmQgcmVhZCBhcyAwJ3MuDQo+IE9ubHkgdmFsdWVzIHRo
YXQgYXJlIHJldGFpbmVkIGFyZSBjb25maWdbMC8yXSByZXN0IGFyZSBlcmFzZWQuDQo+IFNvIGEg
bWVtY21wIG9mIGZ1bGwgaHcgc3RhdGUgd2lsbCB0aHJvdyBhIFN0YXRlIE1pc21hdGNoLg0KPiBZ
b3UnbGwgbmVlZCB0byByZXRoaW5rIHRoZSBnZXRfaHdfc3RhdGUgYXBwcm9hY2ggb3Igb21pdCB0
aGlzIGhvb2tlIGFuZCBsZXQgaW50ZWxfbHRfcGh5X3BsbF9zdGF0ZV92ZXJpZnkgdGFrZSBjYXJl
IG9mIGl0IGZvciBub3cNCg0KUmlnaHQuIEkgY291bGQgbGVhdmUgdGhlIGludGVsX2x0X3BoeV9w
bGxfc3RhdGVfdmVyaWZ5IGFzIGlzIHRoZW4gYW5kIHVzZSB0aGlzIGluc3RlYWQgb2YgdGhlIG9u
ZSBmb3IgcGxsIGZyYW1ld29yay4gSWYgb25seSBjb25maWdbMF0gYW5kIGNvbmZpZ1syXSBhcmUg
b25lcyB0aGF0IGFyZSByZXRhaW5lZCB0aGVuIEkgY291bGQgZHJvcCB0aGUgcGF0Y2ggIzEgZnJv
bSB0aGlzIHNlcmllcyBhcyB3ZWxsLiBJbiB0aGF0IGNhc2UgSSBkb24ndCB0aGluayB3ZSBuZWVk
IHRvIGR1bXAgYWxsIHBhcmFtZXRlcnMuDQoNClRoYW5rcyENCk1pa2ENCj4gDQo+IFJlZ2FyZHMs
DQo+IFN1cmFqIEthbmRwYWwNCj4gDQo+ID4NCj4gPiAgdm9pZCBpbnRlbF9tb2Rlc2V0X3Zlcmlm
eV9kaXNhYmxlZChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiAtLQ0KPiA+
IDIuNDMuMA0KDQo=
