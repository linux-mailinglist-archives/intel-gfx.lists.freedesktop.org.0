Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E189D46E8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 05:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2983B10E86D;
	Thu, 21 Nov 2024 04:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l++ooP6C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE16310E86D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2024 04:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732164103; x=1763700103;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ORvdYtWc7RjjSZu3gOFGuW2CCM0u3TMPXRm2YEbYuq0=;
 b=l++ooP6C0IPO5z2d9XXwrNA6/FzRUCKWZFoBpLz4Ie7/tE2c3PCr+sY+
 ZNnki7njQXFhef1LlfkHZh7ZFvpRxTycEcppsZxlx6mza+UuueQcH2WCz
 uHXuDafEvmoL/Mas/FuDY2mWQfNL7FfsWCQAUd7H+7G1ha9CuI4Ww2x7R
 2T8RX5cEsX+nLG9bz2OdE2wEiZNMByrVp2c1xx7xQHvpaJF3OuVh+agDx
 jdD8F2XiRkQjcEZ7KESHCjqzkeEC02w1Fv5WXDxjgSQVEKKasbfyXm5m0
 Fblgw9CDJS7e0UR49fqMoDxfju5UJxwss5ZJc6Db3UPKzP/T2PFB8fbzc w==;
X-CSE-ConnectionGUID: j2mePCbPQkG6stjAtdOs5Q==
X-CSE-MsgGUID: 5N/t4FGNR5qqOCBU22DLmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="35114698"
X-IronPort-AV: E=Sophos;i="6.12,171,1728975600"; d="scan'208";a="35114698"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 20:41:42 -0800
X-CSE-ConnectionGUID: DLbWqRGQSIGMHU0IyAI3wA==
X-CSE-MsgGUID: q3ANu1UkRaG4Dik3BIn/TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,171,1728975600"; d="scan'208";a="94193260"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 20:41:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 20:41:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 20:41:42 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 20:41:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KBwmP5kqZTWkg9dki6OLvWJBuMtDbIup5YJ+bY7nCGsFy5rRZYhhpSXMP2eOBPa6RsxNbL3Kpsu/72SSdG+NTznCQa8hYuHEIBu86fT7m4p33Wdk0rFfOR4rMboaAVd5v3v4qJZQlT0DEiEj+yYqRgxp8VWZK77l3DG08n+4C2YqZadd2cSjH/5gepKmJl4pVpA8vYcABcsQmvuSH0oAMkaPywfTbzdveVbJ+L8PiqqB68hTOUebWjUBuit6AMDVZ/LZ2F5/ZzCwiRlzGfqMIFXXsfWS2UdZcQxpv/Udni1D2EsKfHsMy+Dmyf99h6OP2i3C+hVBpd/X1ye3WftV/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ORvdYtWc7RjjSZu3gOFGuW2CCM0u3TMPXRm2YEbYuq0=;
 b=QZSxlCnkFW1VwzBlZYlzutnxv29yBUHBdP60UnLRv/oZG4X/bODyj6W0sMkUZ22axceVON6SwmztgIsZact0cpppXvdNBvOCXIn0BxxQIMQ6LI33e1XCUcXsxfF9UxZGrPwxXAWKcwhXZRuuitqvyAos57yk/Nb6JUOKxiFcipVGzUcEBg9dKDaVzHuofB1BPV5p96JzU8hf/+RJP4JWetFQ3n2DqM/oQuGm34QJEeINbssxRu7Ay0hHiEcj7duD197MO5M0lvzwDaYHYtGgjFjurZTNQTEpWGcDkuHTEPtLjVRX41ZBRPQjwTjNJ9i/iYoqRV5UXxsIvno4tDGiAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by BY1PR11MB8007.namprd11.prod.outlook.com (2603:10b6:a03:525::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Thu, 21 Nov
 2024 04:41:39 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8158.021; Thu, 21 Nov 2024
 04:41:39 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 2/5] drm/i915/vrr: Update vrr.vsync_{start, end}
 computation
Thread-Topic: [PATCH v4 2/5] drm/i915/vrr: Update vrr.vsync_{start, end}
 computation
Thread-Index: AQHbOyjxnZxvQna8Gkm+1JYuPD7szLLAILgAgAEH91A=
Date: Thu, 21 Nov 2024 04:41:39 +0000
Message-ID: <IA1PR11MB6348F0952D1550D56940DF03B2222@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241120084948.1834306-3-mitulkumar.ajitkumar.golani@intel.com>
 <c979bf9f-9541-4878-9a55-2eab02b80c95@intel.com>
In-Reply-To: <c979bf9f-9541-4878-9a55-2eab02b80c95@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|BY1PR11MB8007:EE_
x-ms-office365-filtering-correlation-id: 91da433a-e8f9-4af3-5990-08dd09e6ca56
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NHJWdENMV3YvMlFpRkxRc0syWi9NcGEwTmN5K1lIVVV1Nk1kRU9paUtVS3BG?=
 =?utf-8?B?SEo3WmhFa2kyZ2lKZ1NtR0UyNjJMclBrVlNwUWxlU2svYWJ6alFSajJFK295?=
 =?utf-8?B?WlpkS1JzQWZhWUw0MW5TN0Zod0M0MTJwU2xZWEV4d0piQkRTa1FoT2U2WWd5?=
 =?utf-8?B?VUorTW4zT3hGV3NtcFpWUHVXTjU3WElSL1owcG9oQjVnN1Y0RTRXay9TNDZD?=
 =?utf-8?B?MDE1TU4vSmNWVDVlbXh3RDd1MWlYN0ZObDQ2MlRoV1lQenNOR25vVXM5b29z?=
 =?utf-8?B?allPUHVGcGJPSVRYSWJRZm96bEJoMjJCSTVxakNYY0RkUVdCRVB1SXhja0FK?=
 =?utf-8?B?eDE5ZTlSRXRWVGtsaXI4VmorLzVOZVphQkUvbVdJd1dqKzVBMGUzUUpLRlpi?=
 =?utf-8?B?bDZBM2VMcFMwNUFEL2JCT0lOTklTUnJEL25oZkNmdjR3QWNvSkpBZlZGK0Vq?=
 =?utf-8?B?ZjJPZGR4Vm11ejNiVElRZG5RVnF5c1FsZGZSSk5pYXQ4ckh6U0dOSzRxT0M3?=
 =?utf-8?B?SW1BTmxIa0hMRldCYXdpcUxmSDVIQVlmVzN4TGFrc1h4ZnN1TWxBV0ZRM1Nx?=
 =?utf-8?B?TlJYeUJQMW1KV21sSDNRTHQxaENRR2xJN1oxd0EvM2FLVFYrVEM1cDRoTWtq?=
 =?utf-8?B?QWZRM3lnQmdnV2QxNWlIRCtoRm0xeWR4aThoZXd6OUs0cGs2aUYxYlgybjFH?=
 =?utf-8?B?SGp6dUFmNHVFQ29BSWlQeEdyVFd5OEVyMkpKQmlpZk1lWHl6WjMwWm9KZHpz?=
 =?utf-8?B?a0hONnBocTBMUnF1bFgyWDZHQVVQVHF4cU5DQS9BNGI5VUxjaXlYcEY0RFpX?=
 =?utf-8?B?bkFhNHo4cWdmcjZMLy91V2Vab2RVQ0RaaXFDeS81UUM5ZU9UNndoK1dXdzN1?=
 =?utf-8?B?TFhGdUJGYWd1RlNoR0NJWDBlaGQ4N0Z0eVdPamV2Ukp1enJmNE5SWnZQT0g4?=
 =?utf-8?B?b2E3QzF3RWtqb2VDZk9ySWdPR1BYeTY3emwwcWgxUTVBVytNTStpcFl3OVpQ?=
 =?utf-8?B?Rk0wTDAxNHgyaHBxNHJ6UFdhM0k0ajdUUmhkOURCeThYTS9NWnRaQ3k0WWM5?=
 =?utf-8?B?QlNpSHZzRE02c2krS0FDR1k2eWtEeFZibHpuanlLS0VuSVBCb3ZYdWF1cjk1?=
 =?utf-8?B?dEhhV2QvemJBbFQzWnkvbmZQZ3RXeXphdTNRb25DWXZSQUVvOGY1dXByL29Q?=
 =?utf-8?B?NXdRR3FMRjBFUWhlczFIRkM3WnB5SUwyVTNhcVZoTDl1SmFzdFZ1TEgwZ2E2?=
 =?utf-8?B?ak1Bem9LbkFDV1d6YmpxM0kzQVF4c0JBWlZkZFFxYlZIS1JxcENTdGdpbFdF?=
 =?utf-8?B?aXV3TzJXamY3QlFobDZUUTdIOVI1RG8rdEl2VnVmSFV1ckY4dUJ2Z3E3eUtj?=
 =?utf-8?B?VW9aTTNYL2xYNGhySlVrZjcrRDVsdkFIWHdzeVlCQU1oUStkQW10R0ZPY1Jk?=
 =?utf-8?B?a3A4UE0zSkhKS0pmeDdEbHV5bHRMdjBiSHMwNjVIa2JOUXZuNVgxOEU1Qzk4?=
 =?utf-8?B?RGdqY3hwbWhlN1l2T1ovWkVTZExUMjd4cUQxZlJwWUNURkplYmUrRkZ6czdr?=
 =?utf-8?B?SWJIaFV4aFRrR1hHakRwRXI3VVhXSXB3WnhXZDQ4a3loUDVKOXgweTl0blhI?=
 =?utf-8?B?SDlSQWkrdFkzWnduc2kvckZwVlpia1ZVZ1hlbHZjY3YvT0h5NFVwVUtPVG9E?=
 =?utf-8?B?aC9PZVlSV20xa3BBOU4yelhKZkhlUThIZUdQWFI0ckhUR1F5ZDUzOEhDS0FZ?=
 =?utf-8?B?b3ZLRmk0bzdXQlBoVHdtYitDQjRyR1RkRXFzV290UXR4UUg1ODFvRmJCSTdn?=
 =?utf-8?Q?VYpQoysvGlYBbyld90b26pLF1InoSwND8F3fc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTJUOHdya0UzanlYdXNYazN2V1dia0VSZG4wQWtueWVQa0pER2djcUg4VDU4?=
 =?utf-8?B?MGtoNHZaL0VpQXFpNGlEbGxPVHRwaWJOTGliNTlCUWt6TWdsZk9hK3NWT0xT?=
 =?utf-8?B?RGNmWGpIY3dXQU5PSk44bE0wM1B3S3E3VmI5b2srT3lSNy8xcEFTbnphQVJx?=
 =?utf-8?B?dGZMZDVxWmRIT2hxNyt2dHNPb1lHeU5ycjVCNDRDcVcyT3RqSmVDQVdUSkJ4?=
 =?utf-8?B?YVhWWklSeXB3S0Qwd2J5SEFMM2xqSGFCbkQ0WjJvMThlL25uODkwTXJCY0dR?=
 =?utf-8?B?d1lrVW96WllMNW53VkRtZmtSSTBLOTVMMS9zMjk5L0UzOGJsRitPNHFpUE02?=
 =?utf-8?B?cWpiaUFxVHN4RXRESmpZNzNXL3dIc1JkY2xvU2pTckdoOTc3VDQ1cXdtcXhD?=
 =?utf-8?B?M3RsRDJxUWJQVmZmY21jYlZsNnBwbDZ4dUJEOHdDQXU3ZXl5cmtNNVZFalkz?=
 =?utf-8?B?bUdDMkYwd3Z0algwMEdKYUVvbEt2SE1vTHZVOHJLZVQ4RWh2anRyZ0JkUXFX?=
 =?utf-8?B?OTJScEVRdjg4U3ozM0RGa3hJTk5ER0FWaFN0dVlIYks3T2xqa0VkUUJEYmMv?=
 =?utf-8?B?bStrc2RIUGszTG9TWHJNYTl4L2lTSmFOYzE1bk5vUDhkS3QySldFamxiK1JK?=
 =?utf-8?B?aU54RXNBRnZ6VExUMm94YzZrMFBIQ0dyMnNWQ1dPQ2d6WmdsU2s1Z0RFazNv?=
 =?utf-8?B?VXN4bmtVVkZqUVl3VStvdEtFOTJORHg1TERDMi9lUmtvQnpzWjM3V3ErUUFr?=
 =?utf-8?B?QVBBQlJnZVBlZytpUVM5cW0rY1YrVEMyYlpxOTY1Q3FMQWtYM0RuMTJlZEt2?=
 =?utf-8?B?NEo4a2hIKytoZlM3RytON3ZZcTJiUWNUQjhKamNOYzlUdEQ0NHg0K0xwQ3h3?=
 =?utf-8?B?VHBRS1RaTktGQ0I0U3dsc2k0Ymxma2o3dE8vSnVlWVBGblhVeVE4UkpKRHRW?=
 =?utf-8?B?b1Y0TDVCK0dtQldERFB5M3BVZXlNa3VrNFJneXNoKy9IU1NmU2piOFpNbFlR?=
 =?utf-8?B?YWc2NnN4bzl5SVVqbzVIL3RBQ3pzdDJ1NlNhVXUyVERzMC9XWkU1UldzR0ZE?=
 =?utf-8?B?V2xwVnd6MzU3NVBscUF3a1lEKzN0Y0RhK1ZmY05XTmo4aFh1ckN5QVhNL0hL?=
 =?utf-8?B?L0RBN0kwbjd4dlRNU0ZxVFVhWkZpYncyWENhRFpVcG1UN04vZDZodEsxYUlJ?=
 =?utf-8?B?a0xlMUN4dUJFVVU5T0VhVmJmTnpDU21PaHh1cWJ5aVErWS9aZENEQXUwdnA2?=
 =?utf-8?B?TGFkbWYwamNnKzBLazR2K05ZcEhXRnZlZmpqY05TS2lIaFlzdWtlYTZPZGpy?=
 =?utf-8?B?MVhWSlZNMDFFb3BQNW1mNnpDUlhQbmlOTEd3L1hwWDRCWDdLMEUwbjZJZTlH?=
 =?utf-8?B?NUswK21OWDBCcDFnQm1KOFQvalI5bzlleW1WN05QQ25ETytSUGhSejlibkFP?=
 =?utf-8?B?cWk4LzNmRDBEZERnYy9rcEZ4dkR4QmtscjhXZ1RMdGRFeDRuK2xQUXlaMFgz?=
 =?utf-8?B?L3JFT2NzWDRodDBYUTNyTTJONEZzTm1tUG5HVHI0QmVxMGlaVWZ1Y2xaNVJ6?=
 =?utf-8?B?Uk81NnZxSEE0Z2YxRnNvbnE1WTFXV0pOdlpubmttbUcyR2FleXM4ZVpwN0dN?=
 =?utf-8?B?dE1YVHlhZnZzT1JwemtHSE9QMWNSdWFZY3Ewa0tnUnVTcVlyRktoMmRDUjA5?=
 =?utf-8?B?L0JQbElRNWdtc3ovSlBKemY1bThmdEpCdTgwcFhuVFQzM2tmaC9TN2ovMktK?=
 =?utf-8?B?OHJWR2c1U2FMWEh4TXlGUmZJZWJVY0Nlb002V1p1OUQ1bXIvYVVGSGxQS2Za?=
 =?utf-8?B?OWN3MjI5UzNTZlhYZmh0cjdKYkd6Z1RMOUNwUGZ3MFRzalBwY0RNOWpSNGsv?=
 =?utf-8?B?RWEzMlpUcnM2aWJWa2JYRkcwbEFPazBLNFZNR1prTTZTeTlBUTVCR09uSUIx?=
 =?utf-8?B?M0RFWXVZL3R4RTQ4c3NEV1ExRlRHVURoRDEwQi90am9HbGtqZ1dVK0NNc3lx?=
 =?utf-8?B?ZitGUi9WKzlzYjZ6VktKRXhhUitxdFE4UjZQQlkzRnlhNjY2WnJ1RDVUYXFX?=
 =?utf-8?B?Vkc4MHF0N3NrS0FkRXBNMFB4NzE0Tkt1Y3kzaWtWQkVMZW84NzVlaHBVM3Vq?=
 =?utf-8?B?UmpGdjBZYUxZOUxFT3ZXanlnUlJxUXJVQXQrWjJDb0V1OEhBNDUyMWg4ZkZW?=
 =?utf-8?Q?RMniIHkyLYr/PAGvPctPHiQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91da433a-e8f9-4af3-5990-08dd09e6ca56
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2024 04:41:39.7589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HyOY4d4pFNXfhyi7Wi3/ZXnSvT92jCwxQnx0VO55GKNgVvuASLzNeIZ1S1ADCplOAsxAS0qlRdTf1j9eHIX0By/zpQ9jMwVYRDsq/1JUQ2bj0FWB4S/dWd36ny9JiNtA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8007
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAyMCBOb3ZlbWJlciAyMDI0
IDE4OjI2DQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IE5pa3VsYSwgSmFuaSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IDIvNV0gZHJt
L2k5MTUvdnJyOiBVcGRhdGUgdnJyLnZzeW5jX3tzdGFydCwgZW5kfQ0KPiBjb21wdXRhdGlvbg0K
PiANCj4gDQo+IE9uIDExLzIwLzIwMjQgMjoxOSBQTSwgTWl0dWwgR29sYW5pIHdyb3RlOg0KPiA+
IHZyci52c3luY197c3RhcnQsZW5kfSBjb21wdXRhdGlvbiBzaG91bGQgbm90IGRlcGVuZCBvbg0K
PiA+IGNydGNfc3RhdGUtPnZyci5lbmFibGUuIEFsc28gYWRkIHRoZW0gdG8gc3RhdGUgZHVtcC4N
Cj4gDQo+IE5lZWQgdG8gdXBkYXRlIHRoZSBjb21taXQgbWVzc2FnZS4NCj4gDQo+IEFsc28gbmVl
ZCB0byBzZW5kIHRvIGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZy4NCg0KDQpSaWdodCwg
SSBtaXNzZWQgYWRkaW5nIGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZy4gSSB3aWxsIGFk
ZCBpbiBuZXh0IHJldmlzaW9uIHVwZGF0ZS4gDQoNClJlZ2FyZHMsDQpNaXR1bA0KPiANCj4gUmVn
YXJkcywNCj4gDQo+IEFua2l0DQo+IA0KPiA+DQo+ID4gLS12MToNCj4gPiAgIC0gRXhwbGFpbiBj
b21taXQgbWVzc2FnZSBtb3JlIGNsZWFybHkgW0phbmldDQo+ID4gICAtIEluc3RlYWQgb2YgdHdl
YWtpbmcgdG8gZmFzdHNldCB1c2UgdnJyLmZsaXBsaW5lIHdoaWxlIGNvbXB1dGluZyBBU19TRFAu
DQo+ID4gLS12MjoNCj4gPiAgIC0gQ29ycmVjdCBjb21wdXRhdGlvbiBvZiB2cnIudnN5bmNfc3Rh
cnQvZW5kIHNob3VsZCBub3QgZGVwZW5kIG9uDQo+ID4gICAgIHZyci5lbmFibGUuW3ZpbGxlXQ0K
PiA+ICAgLSB2cnIgZW5hYmxlIGRpc2FibGUgcmVxdWlyZW1lbnQgc2hvdWxkIG5vdCBvYnN0cnVj
dCBieSBTRFAgZW5hYmxlDQo+ID4gICAgIGRpc2FibGUgcmVxdWlyZW1lbnRzLiBbVmlsbGVdDQo+
ID4gLS12MzoNCj4gPiAgIC0gQ3JlYXRlIHNlcGFyYXRlIHBhdGNoIGZvciBjcnRjX3N0YXRlX2R1
bXAgW0Fua2l0XS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxr
dW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgfCAyNSArKysrKysrKysrLS0tLS0tLS0t
LS0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zy
ci5jDQo+ID4gaW5kZXggYjM4NmU2MmQxNjY0Li5jMzk1YWY0MTljZTMgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBAQCAtMjM2LDcgKzIz
Niw3IEBAIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiAqY3J0Y19zdGF0ZSwNCj4gPiAgIAkJY3J0Y19zdGF0ZS0+bW9kZV9mbGFncyB8PSBJOTE1X01P
REVfRkxBR19WUlI7DQo+ID4gICAJfQ0KPiA+DQo+ID4gLQlpZiAoaW50ZWxfZHAtPmFzX3NkcF9z
dXBwb3J0ZWQgJiYgY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkgew0KPiA+ICsJaWYgKEhBU19BU19T
RFAoZGlzcGxheSkpIHsNCj4gPiAgIAkJY3J0Y19zdGF0ZS0+dnJyLnZzeW5jX3N0YXJ0ID0NCj4g
PiAgIAkJCShjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsIC0NCj4gPiAg
IAkJCSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLnZzeW5jX3N0YXJ0KTsNCj4gPiBAQCAt
MzE2LDYgKzMxNiwxMiBAQCB2b2lkIGludGVsX3Zycl9zZXRfdHJhbnNjb2Rlcl90aW1pbmdzKGNv
bnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAgCQkgICAg
ICAgdHJhbnNfdnJyX2N0bChjcnRjX3N0YXRlKSk7DQo+ID4gICAJaW50ZWxfZGVfd3JpdGUoZGlz
cGxheSwgVFJBTlNfVlJSX0ZMSVBMSU5FKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSwNCj4g
PiAgIAkJICAgICAgIGNydGNfc3RhdGUtPnZyci5mbGlwbGluZSAtIDEpOw0KPiA+ICsNCj4gPiAr
CWlmIChIQVNfQVNfU0RQKGRpc3BsYXkpKQ0KPiA+ICsJCWludGVsX2RlX3dyaXRlKGRpc3BsYXks
DQo+ID4gKwkJCSAgICAgICBUUkFOU19WUlJfVlNZTkMoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIp
LA0KPiA+ICsJCQkgICAgICAgVlJSX1ZTWU5DX0VORChjcnRjX3N0YXRlLT52cnIudnN5bmNfZW5k
KSB8DQo+ID4gKwkJCSAgICAgICBWUlJfVlNZTkNfU1RBUlQoY3J0Y19zdGF0ZS0+dnJyLnZzeW5j
X3N0YXJ0KSk7DQo+ID4gICB9DQo+ID4NCj4gPiAgIHZvaWQgaW50ZWxfdnJyX3NlbmRfcHVzaChj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiBAQCAtMzUyLDEy
ICszNTgsNiBAQCB2b2lkIGludGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ID4gICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgVFJB
TlNfUFVTSChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gICAJCSAgICAgICBUUkFOU19Q
VVNIX0VOKTsNCj4gPg0KPiA+IC0JaWYgKEhBU19BU19TRFAoZGlzcGxheSkpDQo+ID4gLQkJaW50
ZWxfZGVfd3JpdGUoZGlzcGxheSwNCj4gPiAtCQkJICAgICAgIFRSQU5TX1ZSUl9WU1lOQyhkaXNw
bGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gLQkJCSAgICAgICBWUlJfVlNZTkNfRU5EKGNydGNf
c3RhdGUtPnZyci52c3luY19lbmQpIHwNCj4gPiAtCQkJICAgICAgIFZSUl9WU1lOQ19TVEFSVChj
cnRjX3N0YXRlLT52cnIudnN5bmNfc3RhcnQpKTsNCj4gPiAtDQo+ID4gICAJaWYgKGNydGNfc3Rh
dGUtPmNtcnIuZW5hYmxlKSB7DQo+ID4gICAJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5T
X1ZSUl9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiA+ICAgCQkJICAgICAgIFZS
Ul9DVExfVlJSX0VOQUJMRSB8DQo+IFZSUl9DVExfQ01SUl9FTkFCTEUgfCBAQCAtMzgyLDEwDQo+
ID4gKzM4Miw2IEBAIHZvaWQgaW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKm9sZF9jcnRjX3N0YXRlKQ0KPiA+ICAgCQkJCVRSQU5TX1ZSUl9TVEFUVVMo
ZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiA+ICAgCQkJCVZSUl9TVEFUVVNfVlJSX0VO
X0xJVkUsIDEwMDApOw0KPiA+ICAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX1BVU0go
ZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLCAwKTsNCj4gPiAtDQo+ID4gLQlpZiAoSEFTX0FTX1NE
UChkaXNwbGF5KSkNCj4gPiAtCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiA+IC0JCQkgICAg
ICAgVFJBTlNfVlJSX1ZTWU5DKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwgMCk7DQo+ID4gICB9
DQo+ID4NCj4gPiAgIHZvaWQgaW50ZWxfdnJyX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpIEBADQo+ID4gLTQyNSwxMCArNDIxLDYgQEAgdm9pZCBpbnRlbF92
cnJfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4g
Pg0KPiBUUkFOU19WUlJfVk1BWChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlcikpICsgMTsNCj4gPiAg
IAkJY3J0Y19zdGF0ZS0+dnJyLnZtaW4gPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+ID4gICAJ
CQkJCQkgICAgIFRSQU5TX1ZSUl9WTUlOKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSkgKyAx
Ow0KPiA+IC0JfQ0KPiA+IC0NCj4gPiAtCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlKSB7DQo+
ID4gLQkJY3J0Y19zdGF0ZS0+bW9kZV9mbGFncyB8PSBJOTE1X01PREVfRkxBR19WUlI7DQo+ID4N
Cj4gPiAgIAkJaWYgKEhBU19BU19TRFAoZGlzcGxheSkpIHsNCj4gPiAgIAkJCXRyYW5zX3Zycl92
c3luYyA9DQo+ID4gQEAgLTQ0MCw0ICs0MzIsNyBAQCB2b2lkIGludGVsX3Zycl9nZXRfY29uZmln
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiA+ICAgCQkJCVJFR19G
SUVMRF9HRVQoVlJSX1ZTWU5DX0VORF9NQVNLLA0KPiB0cmFuc192cnJfdnN5bmMpOw0KPiA+ICAg
CQl9DQo+ID4gICAJfQ0KPiA+ICsNCj4gPiArCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0K
PiA+ICsJCWNydGNfc3RhdGUtPm1vZGVfZmxhZ3MgfD0gSTkxNV9NT0RFX0ZMQUdfVlJSOw0KPiA+
ICAgfQ0K
