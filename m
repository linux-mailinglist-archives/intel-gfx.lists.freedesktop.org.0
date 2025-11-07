Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF0FC4034F
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 14:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD10610EACC;
	Fri,  7 Nov 2025 13:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RYwx/Urg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C608D10E0AB;
 Fri,  7 Nov 2025 13:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762523715; x=1794059715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kGtEWVh3ouZedmvDkmRB4x46WmrBOIzig6Ic5IQ5nMc=;
 b=RYwx/Urgh/w0YID/J97twzTCT+h8BR/Lq8KrNNF4NNcYokubJMh0syHB
 cc7gZZCHhmxbByo3uQm5LRCauFDcXBcBf18mQ57UofoUB+SlW1yN9t6xP
 RfaMc2x/J1cGNfx1oV8TGCznk0cEiTjHFxWGf677hRnd+4HY/KW4rFyZF
 VlHeMB7JxY0IMxQQ/LYU8iIQltAu/XlJRdYLp/nKy2ZkYbfYsgGf0/3vD
 s2f+3dhq6lo02ZxPsZFStE5KZERe4ZPcHJMoHMi9LGByUN1Kovxtl3+gZ
 2OJgl5a8+QJ6vMMyHpEWRFn1iz2S59e6E6liUgK7mB2sV80EjcYEqgyuW w==;
X-CSE-ConnectionGUID: zLWIWk9RRmWCxkXAcIzh2Q==
X-CSE-MsgGUID: pC9a5qrqSJWVatTARDWgSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64826713"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64826713"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:55:14 -0800
X-CSE-ConnectionGUID: N2PEd/JTR6Ov50CSM3aR1g==
X-CSE-MsgGUID: W9hcWftbSamUw/ZNlLsV4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="187344929"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:54:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 05:54:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 05:54:55 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.70)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 05:54:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BpaRhWLbPoyQM856ZfJFlh6XypwK3yDfsZyBZLbg/MRvuhAlGhI2aiF5ANiqCcXNWL9r40l7bgSfxyGKr+1I0xwEPtZc0IZwWOeiEdqZ+Got/RPmQipTV1hQtZiTz2xiR80YBf3Ggn+xLoo1HMXrD0Ove4T7uz14zFxRaXk9K3pvHSEnEfZSofD0pxPvog4Klta1OZfIHbDgF5/IuBG4cTo46Z93snpPFLfcc97EDb4lNx4+HnFwuUS2tg6JdAkT6yXZvJP3FIR0h+1vi5WFWC+kshhRGTsKcInqAOQ4n9bqjPpV5jkn02QrIuC7PX9XEnsOPVW6KCXbtIOUfxA6tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kGtEWVh3ouZedmvDkmRB4x46WmrBOIzig6Ic5IQ5nMc=;
 b=gwbAtuz8jWwWpHeGU6olKUFlnlrEdSUTG+0SN79K5l+QKUJDAtGNLX2E7SU2PymF6N4dO+EjjUd8lbf9UxpOdRnlyep4CUBsRz0KXdc7plr72cGFzPDfyNLhmorVEuDD8qELqt7n1kgRZI+IUAwTFg+cMl4PDnt0DPDnjdFqzUBD+LfOoJnaPUdtO7RycxRImfcfyWNFjTpDWMEEjiPpRbgwRg+uYC9iZrXYVIvuYWtRq7ji0XhIhnWlMcNYaUMD3f2eAbqQ4uDTm9zZbLR+aSlraVSglHl7UKU5ddCDwEM4DtVAjhFFcI07SCq1815UN6viJkF9e2A87Te7aswTKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB6844.namprd11.prod.outlook.com (2603:10b6:930:5f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.12; Fri, 7 Nov 2025 13:54:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 13:54:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/dp_mst: Disable Panel Replay
Thread-Topic: [PATCH] drm/i915/dp_mst: Disable Panel Replay
Thread-Index: AQHcT+PsB3iLNtg8sUaEAUUHFO0cALTnPGMA
Date: Fri, 7 Nov 2025 13:54:51 +0000
Message-ID: <b23c2ff042f4e52658cd58234d1925c440c0f4e8.camel@intel.com>
References: <20251107124141.911895-1-imre.deak@intel.com>
In-Reply-To: <20251107124141.911895-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB6844:EE_
x-ms-office365-filtering-correlation-id: 42d96f0e-5d1a-4a50-2f93-08de1e053971
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?c3ZYUkFrUkwyU2VmZUI5dVJOT0l4VVdnMC9CVjVBcnBGZmtBL1JPRlRPVS9n?=
 =?utf-8?B?TldIbzVvbEtLQlBmd3JSaHd3c2tibUxicUJhTHdGVEpWcVAyTTV0SUttM24r?=
 =?utf-8?B?WjJuTGtpcFd6ZWdrNmdrb2ZKZUlhQWJTT1FxcEVZYmFqU1JmWG9Nb1l4WTNw?=
 =?utf-8?B?M3ZKdjdIM1Zhajdlbit4ckh6Q1RVTlg3YXQxdGNKbGMzOGRDTDZ1aDl6b2R0?=
 =?utf-8?B?UlBKakEvMzFXRzQxVzZmaGNkenhISjMrcjBseTN2aTZ4ZCt6ODZJM0cvTnVr?=
 =?utf-8?B?bWEra2ZmVXU3MVhFSEdORmljRWJvN00vMW5zTXdIMUQrczRTdWZid3Bob21I?=
 =?utf-8?B?ZTBYc21WV1F1d1V1MHdMUXBNV2xWa1NRS0hERzVxWHZMcy9CYVVyVzlPbEhZ?=
 =?utf-8?B?c3QvWE1jYXlXd1VRbGpUc2s0RWZYckh6TlNPQ25xU1F2dGVjbFZKdEgwRHht?=
 =?utf-8?B?K0t1djZNbytSVUpuSG41OUdsdmNmMUJRR0tBY0h5VGlYc2k4a3BnNTlxZjBq?=
 =?utf-8?B?OFc5SWptSzNaNzlMK0JEbmZCNFExSXNPK3podUF3ZFM2MFcrbUlYRDVLNmFW?=
 =?utf-8?B?OWJNdkQxa3J4Q3FzVjlBZHRVMXBGajdiNmJXbkEyUldCN3hxb3BvSXpsc0NG?=
 =?utf-8?B?Sms0bUhxMktEV3VZRHlSWmhLb0VvVjJ6OHBrQkd4TlZEZldYM0gvSEMxVTJL?=
 =?utf-8?B?bm9DbFhZdjlCblVsWEprUmpJdWFWYTBMQ2NTWVVQK0RPV1dLNGllUWpCWnMz?=
 =?utf-8?B?MjQ4V0c4TUZHUTBQdGdDRnV2ZlhOT2lzMWw4UFJCVTZTN0NUd1p0VFNPcmNa?=
 =?utf-8?B?aVVLNncyS0x4SlArN2dQRlVaek9oc1Y4UVhTcUhFSi9pYWViVWdiUExLNmJ5?=
 =?utf-8?B?RFAxTVc3cHBxTlQrZmFTdG1IYUQ1QW5SZUhjNW1yZEJYbkM2UGdOTGd5OXFz?=
 =?utf-8?B?V3N5dDdzNDliMy9ueWtlekhxaHR6dzZRMVhyQzBHWW41b3dSQzF3aVFadWI4?=
 =?utf-8?B?SElCNG01S1BsTFVqUkM5OHNBc0d4WE9sMUVBb1FhbXZGdzVEUmpMQ1hkVjM2?=
 =?utf-8?B?VW05MVRpRWZlMWV5aTh6cjBrd2JOOXEwRTh0a2x5LytBcGk4elhSVGRWUVJr?=
 =?utf-8?B?VGN1b0loTy9GSm9WRkExNTZ0QXFTaEd5QVIwNnlOQzdlQUJDMWIzSzBCelU4?=
 =?utf-8?B?bThOVlpkNW1sTEhNM0hlWG0zUFFaRlE0akc2cGJZbmxEZlNXUzcwTWt5NUJ6?=
 =?utf-8?B?Uk9jSHZVQS9YVUYycThZc3dJcm43eHA4bC81SDdpaDR2dzRNRmZsV3lCTkpE?=
 =?utf-8?B?dWkyamJlZ01vbXU5bTZGRUZHWXAvMmgyZFVWQ2k0YUJUOWk2amJQY1lXcy96?=
 =?utf-8?B?RHBpQm1iUUlqanpXcUN1TGhmdTBRdDV2azYxVWovRXlWZ0gwZXFnZmh6SjJL?=
 =?utf-8?B?VzZPdU5Xb1pueW5WUzhCUWRhSjdaaDR1YWZhYUtFaXJJZ2MwbDlkenRhb0VV?=
 =?utf-8?B?RTZUYjhySHB4Q0F0ZE5QdTFWVEI1MmlGcUtFZUM4bkl6QWgrNGViOHZPZkFT?=
 =?utf-8?B?c3Q5Y2NrNlYvWjdhNks5d1RwRERxV3pSMUw0K3ZoZURUWUpTV2RFVHZleFA4?=
 =?utf-8?B?UTEyMDR1Q1R1bUtzMXp3NVhkaHRZdVlla2FrdElRUVZmU3hIZU1zMktqMzVP?=
 =?utf-8?B?aDBPbWFwOUdHdWVubG9oWGUyNnpIN1UxVDBvdTdWUm9ORTZyK090aTBIcExV?=
 =?utf-8?B?TGx6em1qOFlGcjV4RitXSnppYkhndEVSVGl3SUUyMmVoWE04RUJ5WFZMZHVV?=
 =?utf-8?B?TWRwK2p5VXJ3ZVNMK0hrZWVaVWovOVZCUXYxOXVGU2w5dEk0Yy9YUE13QU05?=
 =?utf-8?B?V3cwQWFWazBFVjl5dGdLKzlwNUhWVjUrMDlYWUYrZk9VU3p4UFpzZEV1b2Yz?=
 =?utf-8?B?a29ua25BYmR1Z0tIYytER3dzOFEra2ZRdGtnbkVvT2JqN0gwejR4aDJwNlQ4?=
 =?utf-8?B?ajNIaGFITzFBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0FZZEpqTU96Zmc1TUNJR3NYVXNFZDB6a2RZU1NBdnpOYjl5dTMxbldhTFFN?=
 =?utf-8?B?eTdZbVVpZ2xwNmc0ZTFLQXczWmo4RFd6SGpvTnZSOVUxM0NmcnliYnVETDlK?=
 =?utf-8?B?S1lHd0RBYkM1ZmF6eW4vU3FmQmZ1TVhubzB4RzVhd29wcHNKTnRGVXV2d2Va?=
 =?utf-8?B?cnYzRnl6Z2p4RFlRb1FQQVFJVTI1eEtCK1BxUDBER3JvZW9yYlF2SDBNdjRi?=
 =?utf-8?B?dERYVzlBQTRwNXZOOTBGaGJFTVdHK1o0UFZUcTZMNW40SEd5VkZIZTFrL1l0?=
 =?utf-8?B?MVhLTkJRWnovOCtBMi81ZzcvTWREYVA5TXRzQ3ZrbVJ4SDFPSEthTHpBQ1Zu?=
 =?utf-8?B?dlhSMzlEUDltQnJJUG1vQ2I0eERlZVAyaW5pdm9XOWovVzFzM0hMQzlwVjBI?=
 =?utf-8?B?WXdjeURSVDRIeTN1WHFSUFJ5M0tUdDl0TjNoMmwvQ3M1bUsyVlB6b2c0Unlu?=
 =?utf-8?B?NndFVEtvZTdPcU5ma09qY3ozRWkxckZUckNYbm4zU0FyRUd1aGVycUNJOTRl?=
 =?utf-8?B?dlQwWlJMQ2ZzK2cxTlg5L2c0UlFoMVpaS3k2eW5MRVBuckl5UzVVUmNzM2Fn?=
 =?utf-8?B?Y0lsNUdTTHRLVDZrQWZVeU5wU3RsRkozTW55bk53OVZMUkpLN3JaTVdCWXF2?=
 =?utf-8?B?d2UwdXFBUFEvS1d2QUsrclNNcjZUd2Z5d1NldUdJbjYxcVE0Y25ZRnB0L3hC?=
 =?utf-8?B?OGhLNHpIQnJpNW9PZHQyZXVCaGlhaGd4UktjbUZ1MmxZbGFPOFJ0b0c1dnpu?=
 =?utf-8?B?MTdKbS9BYWhIRDNtYTNrU1RDTlN4dkhKSzFad2kyVUtIZlhjMmtMZ0pZQmp2?=
 =?utf-8?B?VkFmTndhcmxlUlk5MHZuSHhwVVJPQVlZQk15TSt3aFBDL25INXFpNVFacFBK?=
 =?utf-8?B?Zi81c0cycWZ0NThidjExVkZ0SzBhT2g2VFhMWURDbURGd0lEd1RodStaeG9E?=
 =?utf-8?B?dkEvYXJkZ2ZSNTIxMlhxUEdsSmlxZXU5QjhocTBIWXNONFV2UktxTGxKNm5E?=
 =?utf-8?B?TTNyOUVYYTllOVFEWEt5NmF2bTlISVlyM0xIK1BzSzV1cHNUWHpXNG5TK2pl?=
 =?utf-8?B?U09GMEFUczdnaHA1WUEzaEJib0tiemo4QzltdFVUdkE1YzJiTVZ4WWo4WVN4?=
 =?utf-8?B?RXQxNFdmdC9oZDhjL2U4b1hVV3JDSlhPQi9nRGNidFprYXpoWjhkcWIwenlm?=
 =?utf-8?B?WldZU3g5dVZWc0NDNkFrVWFvYTAySzY4NWd1R0xDZlpSN3ovbGhhTUJ2SG0r?=
 =?utf-8?B?SnRac2ZRSitTdWo0QUl0U01JSVhxSU1WSnRMMEdaaVdKU2FmSHJEZUFKODhY?=
 =?utf-8?B?ZFhYYUVtaGt5L0o5VWZRemNETlJqRUl6Q21uMXE2a2p4RDVTR0JVSzl6Vit5?=
 =?utf-8?B?K05QY2Rucm1yV0VEa1VCNVVnRHVHcDhOOXJJMW5WaDQwWFdNZVZ0K3QzY1hX?=
 =?utf-8?B?ZElQYzRmM2ZGa3pzdjRRL1FRSEtkcXJuT0hSNkZCWHUrVGg4V21mbzNsYVlm?=
 =?utf-8?B?YmdQMXlsNmhlUE12S1dSYmE0TnpoL1lZSlpJQjVTREV2dmVlN3VUclRFRlNv?=
 =?utf-8?B?eXpBWjk1ZXgzMHM4VVd1U0pEMmx5OVhMVzJEZVpnM25jVkRpd0tQQnozQnZY?=
 =?utf-8?B?aGJTMFJRZm1heEJqM1lJbnVZMmdjS3RhMkt6UkJHYm5JdFpzb1NjeEI1VUlL?=
 =?utf-8?B?WVhzaHhFVjd1bkdUZzVjU1E2U3JVd3JZK0EwVmt3NDRiSEI0dFNTamFrdTVn?=
 =?utf-8?B?K0tkSzg5TW1RdzlRTzlEZVp2Rkk0bnZYb3hTUE8rVkJ1UnBDZURUOXAxSStt?=
 =?utf-8?B?VGlNcHBxc3lNQmFHZWVBck5EZGlnOGV2bjE2OTN0UFRFOUZNZ1JWWlpCSDFD?=
 =?utf-8?B?VTY0Q1hDbEtsa2NvNW9kNVBBTm5odlM4UjNYZHg3N1hGQXplNEZlMkVFcTNw?=
 =?utf-8?B?OHJNSThFZFZta1hDODA4cTlEN1hjems3YjFvVHZVYmEwWnM3QUxzVjJETnJx?=
 =?utf-8?B?RC9oZGZhVFdqUWQ2R2V5UDJkWlE1bHF6L0FtYWo2eFpJNDJkZmcwVFFtd0RK?=
 =?utf-8?B?Uyt1V2F0L1o1SlUwZGtIUUVlTlNQbklsVnEramMzMVVDU0MzRDNFK0U4c25I?=
 =?utf-8?B?U01KeEFXbTJETXlIVDEraDN4Q0hOcCtIcTNkUEc5a2tjWndndU1rVDdrS2dj?=
 =?utf-8?B?OUIrWFJ1WlFsWWVpR1ExR1dHQmZMNmxKUWlydTZqR3JzQ0ViVHRmQ2hjUkJS?=
 =?utf-8?B?VDdMS0xhSHR6VzBNNW1DYlRDMGFnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <17DFADA1CB15914A802C369123485E05@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d96f0e-5d1a-4a50-2f93-08de1e053971
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 13:54:52.0013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OYu6f8FDrVdCXN/2Tb4BtqR/5XIMHQZEnYGP8znYkCxF4qKHI5RRTe+aLWUI9NLr7JZBw46+LevVa+xVQ35p6SXjTF28z/2ywDH3UdqeBgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6844
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

T24gRnJpLCAyMDI1LTExLTA3IGF0IDE0OjQxICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IERp
c2FibGUgUGFuZWwgUmVwbGF5IG9uIE1TVCBsaW5rcyB1bnRpbCBpdCdzIHByb3Blcmx5IGltcGxl
bWVudGVkLg0KPiBGb3INCj4gaW5zdGFuY2UgdGhlIHJlcXVpcmVkIFZTQyBTRFAgaXMgbm90IHBy
b2dyYW1tZWQgb24gTVNUIGFuZCBGRUMgaXMgbm90DQo+IGVuYWJsZWQgaWYgUGFuZWwgUmVwbGF5
IGlzIGVuYWJsZWQuDQo+IA0KPiBGaXhlczogMzI1N2U1NWQzZWE3ICgiZHJtL2k5MTUvcGFuZWxy
ZXBsYXk6IGVuYWJsZS9kaXNhYmxlIHBhbmVsDQo+IHJlcGxheSIpDQo+IENsb3NlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNTE3NA0K
PiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IENjOiBB
bmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gQ2M6IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmfCoCMgdjYuOCsNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA0ICsrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5k
ZXggMDUwMTRmZmUzY2UxZC4uNTRmYzMwY2ZhZDg0YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC02MjYsNiArNjI2LDEwIEBAIHN0YXRpYyB2
b2lkIF9wYW5lbF9yZXBsYXlfaW5pdF9kcGNkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAp
DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShp
bnRlbF9kcCk7DQo+IMKgCWludCByZXQ7DQo+IMKgDQo+ICsJLyogVE9ETzogRW5hYmxlIFBhbmVs
IFJlcGxheSBvbiBNU1Qgb25jZSBpdCdzIHByb3Blcmx5DQo+IGltcGxlbWVudGVkLiAqLw0KPiAr
CWlmIChpbnRlbF9kcC0+bXN0X2RldGVjdCA9PSBEUk1fRFBfTVNUKQ0KPiArCQlyZXR1cm47DQo+
ICsNCj4gwqAJcmV0ID0gZHJtX2RwX2RwY2RfcmVhZF9kYXRhKCZpbnRlbF9kcC0+YXV4LA0KPiBE
UF9QQU5FTF9SRVBMQVlfQ0FQX1NVUFBPUlQsDQo+IMKgCQkJCcKgwqDCoCAmaW50ZWxfZHAtPnBy
X2RwY2QsDQo+IHNpemVvZihpbnRlbF9kcC0+cHJfZHBjZCkpOw0KPiDCoAlpZiAocmV0IDwgMCkN
Cg0K
