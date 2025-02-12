Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 924FAA32371
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 11:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F33210E83D;
	Wed, 12 Feb 2025 10:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="llkh5Xs1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6206310E32C;
 Wed, 12 Feb 2025 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739355933; x=1770891933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fklzO2dRwCH2Bprg9/UKs5206PeQMii0sYCoMAAP3qY=;
 b=llkh5Xs17vgLH6eefEQ0wGd8251xk5/ufVBrRaD83ITeW0onc0nMX5Ti
 QGfc6hhS31zsaqhrO0QucMlz7qQ0KDdyuQ1iIZbs+mNfnOFTZRcBqLn72
 1DbNR4y9rmpcD13ZytDuBIupzIYmF4fSqv9VpZ8MrIZ9IixbLXGc6eGnk
 npPvMLf1Q+W0N048IN+82Ifl0xT7wMYFJlBvQF4rhhw3Z3Z1H0py0lKte
 IgVtEPEvWs9wQHDQwXQOp0oF7AMKa+6VDI9Fy+Z5dp+pwb64/eCfoPObD
 br5f7mjEOFXRvHXDJvDShyhlnm6azv5AHGko0FJpumR1ZOByZUBxgUjFM Q==;
X-CSE-ConnectionGUID: gFBZFTETQ4mCH1NE5hxnMw==
X-CSE-MsgGUID: 6Hmde9MvTwqW/LGqekG5Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="57539622"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="57539622"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 02:25:33 -0800
X-CSE-ConnectionGUID: P020pbksRzSKoU+Wa6guhg==
X-CSE-MsgGUID: 5kCEtjcxRnq1cl4j7RnsOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117964085"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 02:25:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Feb 2025 02:25:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 02:25:32 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 02:25:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hBw5LGO4cHrzGYvc4F3mu6zj6+qc6UcOPt6wFm8HzsoQUZ4VlpgAEvNEjRi9PQDKxhowDxum3ajq8gD+pPXIZjC7bAmWcNg9SRNxX1wMUcRYIIjl5h8B4qYTA7TypnmOeKHRczMHU3MmksaqeOYLScVjs93f0Cc9aw4MRFEHvvNRco/O5+1HHw0HnSLncYQ3Hpjxw16q/Kzj87TvPeHb+xvgZChJxzkKJY3AsOKudsOzua5YumnqNlF0p/L2GVa/tNFe5cM+b8MNhDsLxcAAqP3gsVWnO7013TP3mTxJDKvDjfd7uCKutIMRbZx94Vku+LZLXiX/WlxapHWLLco0qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fklzO2dRwCH2Bprg9/UKs5206PeQMii0sYCoMAAP3qY=;
 b=s3bavzFBJBWlUqAwsGLIQGjAHa30M6VHTn3xJmr5NVhDt3kpKBPlVz+2ALeFAuE/jJr+ZRWbA3rVvKmyWqcyarBRnaaoXAMncazxPz5dsbehXBJMDUJQtP9D/Ch/V430TpNP/Z9APMOTgGrDQ85LDvZHdvp8IVdKtMujDpfsm870ZJuKZwGPkwgX4sCfpcs92BWF4XzwNBzevCW5J+tlLmDkBlu62IATlUoyfgtiuaipWi2d34HX8Gg+/IwL4JZ/cc2j8maLmwlx5KU4Eu4K3tKfFcsL3kpFda+1WVBECCg1cJ+AlgP2WScvdUVTgBkICP6gRNWA8jC49kVL7VnQNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 PH7PR11MB6498.namprd11.prod.outlook.com (2603:10b6:510:1f1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Wed, 12 Feb
 2025 10:25:16 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%6]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 10:25:16 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v7 01/13] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only
 to send full update
Thread-Topic: [PATCH v7 01/13] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only
 to send full update
Thread-Index: AQHbfSPcoD8poUPbX0GiP94qQvtftLNDdjrg
Date: Wed, 12 Feb 2025 10:25:16 +0000
Message-ID: <DS7PR11MB599058EC955F144DF669B2AAF9FC2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
 <20250212075742.995022-2-jouni.hogander@intel.com>
In-Reply-To: <20250212075742.995022-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|PH7PR11MB6498:EE_
x-ms-office365-filtering-correlation-id: 0e4a3cf1-d12f-4214-88f4-08dd4b4f8b0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?T3BaWEducGY0bUVSMFdhL2RDbkNDRTBZK29vR3R4MFVtVG1PNzU0QkF5N1BQ?=
 =?utf-8?B?MXc0MWxGMGtObWE5QTdDNE1BOTZDM0F2b2hWakR5dGp1V1o4VGRIT3lCTEYz?=
 =?utf-8?B?TFZmdEdudXpaTituR1BxWWlNeGhBU3V0WGxWemlwOXVvSUdkMWpqRFRIdzhT?=
 =?utf-8?B?WkVsZ2xoMjJialdEYWJMaVJjU0IzNXg2bkhXN3h0WFFHSHZScjMxVTJIa1Rs?=
 =?utf-8?B?QjNCSEovaTJmMjBkbjdqeUZkbmF4VjFvOXdTWURzVEJ4SWU3dVdFUi9jSmY3?=
 =?utf-8?B?R2R3cGF4eUttdlJKdThpbzRxOUk3cGhBN09CUVhnQzl6UzRZRU8wczhJMEU0?=
 =?utf-8?B?YWllYlo5ODA1RG0zL2ZhRkswazRKc2wrZWFjZEp5M3ZJQjlBQ1d4ZzlVT3lQ?=
 =?utf-8?B?NGlUeWVQYzcwWnZ3STV3M0tQc054aWVYWW1ITk00R2dZYXprVXFibUhNOEZa?=
 =?utf-8?B?Yko1b3hZUDFJUEZ5Ri9PNDVYVEp5cmhoaEpWMkc3b3UvV1l6bUQ4Z2dGWDVE?=
 =?utf-8?B?VXFvWjh3alZGY3EyQlhzY2dSRnFYVWtNeXlNSmZQa3YvUzU0UEpISjFZV3VM?=
 =?utf-8?B?Q2xmNTFIWlF6NXgyV0VXUmQ5SHFXbDhZY3dnS0tiVWpjY0RncmE4eGtRNjAx?=
 =?utf-8?B?amRCUkcyeWhzZ2E4M212c3RZeVNaTlJPc2I1TlhVLzJpZ2lLMm15Y0VjbHpo?=
 =?utf-8?B?YkJTN2NCRDVPVEc5YXVURHhkMTJLSXQ5M2RWVEhrUXdRdHRCSTNIODJVcmdx?=
 =?utf-8?B?MzhycW0xSEwxRDBFeVdneHVsczlFbjNEaFZLZFlLZXdibXUzMTdhYlRVemRo?=
 =?utf-8?B?ZGU0djU3WHgxc2I0VnZpemFzWkROVHo3TWFyWXJxS2cxeXpQampzajhSUmNR?=
 =?utf-8?B?L2RZVk8veWRpZnVyLzA1SGljaHdrUlFwcnhUekpHM1BuT2NubUhBRTlyeFNE?=
 =?utf-8?B?N3pQbGZNb0s1SEZoa1h5Y0hXR2pnZFZGZ1BzRzFhbFNBV29uQmpsTngvWmg4?=
 =?utf-8?B?bmlzOTBvRkpubnlBQldHeHB5SmkranpDNm45VTh4TEdqUnpWODVoZG5waSsx?=
 =?utf-8?B?eUlVMC9leTFkU1VwTEwzRzJjMTRUTTBOQSttUU1jMDg4bStsQVdhQVNjSG51?=
 =?utf-8?B?ekFXb0RnRG54aU1TRDMvNVZ1emFpQU0zM3o5M0NwdkFJUFZjc0psQnNHSUZ2?=
 =?utf-8?B?M2RFZGxBalp3TmtZdjczTmx0RGFJSUoyRW9lZzZTT3hrM1NrWEtXTC95N2Jt?=
 =?utf-8?B?NWRnWlArVDFOTDNzVXZmWnNzN3B5VG9zZk5rNURCZnBZaUsvemliVHlPcWpH?=
 =?utf-8?B?RVZtclAzT0JCNnpjSThLNGQ1S21lNnFJSFgvR1lqclgzV1dzNEI0aGJYM0xx?=
 =?utf-8?B?aVpqd0prUmt2cTB1SXIrR0RYME9UWTF6c2gvbDlZNStTejFZbjZDbDNETjdw?=
 =?utf-8?B?NHlzVXBSaWJaMUhiK1czeUsxV3BQdC9xZ21DMWxjS0VrTVVSVmNaY2dMTFIw?=
 =?utf-8?B?dVNtcWRvQ2FCVmMzYzVNU0pTNC9YMUpWcFV3ZTFNaUJrR3g4aDZpOXp2eDc5?=
 =?utf-8?B?eE9LdC9kVUZDS1hQNnVqbGRKb250Nm1IZEJUNlg2N3h6dkpCZURMWEp6aWtp?=
 =?utf-8?B?VjBaU1BOcHY1cXFlN09UZllpcjdXOGVtcUVTY2RDOEUwY2xrQ05ZVVQvWFJT?=
 =?utf-8?B?WUpOVkxDaXZNQnFpRmR6Yys5RStnRUpVYnhiMmVJUTQ0RVpVK09HNE5xY24v?=
 =?utf-8?B?VStQbkZiY1RrdkhqU2xxb2srSTlnbjcxVE41aFR3NjhOM0pjVUtiTTZaV3Z2?=
 =?utf-8?B?bTlmUHN3M1BuN1E1U1h0eGlwbG9ETHo3ZUlTN1BvRTlySXhIQ0tTcVVWZGhJ?=
 =?utf-8?B?WEdnd243NUlDVGJVc0s5cGxpc0c3eHZiNktNRC9aQVBUMWczakV2MFhicjlW?=
 =?utf-8?Q?qgU7rUVahN6PSoLQJ8n0lXotadpITNBP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c251QitnclZNdmNKRWRjYjcvSzlSTERCa0gzSlpMMnh1T0puNWlKU3VTdDNp?=
 =?utf-8?B?bGkxRzNMeitGRWVRUWl0M2FCRFlkWXJxZzVFVFRaSjNaK0Q0K3JvYUhBaDhQ?=
 =?utf-8?B?T1RYbnFMMTN6MWwrUkZUVXVKeC94RzY3bk9mVW8vdXNNSW9QWXZNQ09WdHBh?=
 =?utf-8?B?Mk5MT0lyTWhBT1ByWVVBN2dXVHlzYlgzaVRQWGF0YjgyeVFtQ2dIYThrR0t0?=
 =?utf-8?B?OFB4M3BZTmtOb0p1MVVNOVM0R01MdG5hQVhnNTdLMk5YUS85NnZXdUFmUzU4?=
 =?utf-8?B?VTN2UWNYZkZEM2k0TDV2SlhNTG9oaENtTnUwektRSEZqOWx5ZXJVK2ZZSTZG?=
 =?utf-8?B?ZVVzVkgvYXdXdUVHNjN3aDRrdEtwbEN3S0xaUFFOa0N0NFFFNkVnQ0JCTmc5?=
 =?utf-8?B?TG1VL25OaUhIRXNzTWErUVg4MCthSTJVYXl0RHR3RHdCMkY2eFhVNHRnNjNS?=
 =?utf-8?B?cUlaL2N1UzRPN1c3WUJ2TmtuZUdhWTdOblFQYmVmL052TS9xZS9Ed0FCVFg2?=
 =?utf-8?B?WHU0OWZXVUxkajFIK2JHcjNHbTZaMjF0Z2RWZ0RRb1FyWmxSTUtiQXdPbmFa?=
 =?utf-8?B?cnpWcG90bjBjeW1Vd09sRTBaTkw5VlVDbjUrZnBYempOODJ1NUVlclpUS0Q1?=
 =?utf-8?B?dnZTNFZFeDVBd3I1SEp1OE9EV1FQMHBNSHM1VnF2ZnNoZmxIWjU1QVg1RFZE?=
 =?utf-8?B?OTdTaGFXWmRtVkpxRkVzVkZpa3NjQUZpdzJEZHowRmxkeFZoUDNOZWlJbEdt?=
 =?utf-8?B?U1EwUG4vblVSOUVPV2xFM3BjY3JiMDNKT2dzZnJZR0N3RDVybVRqRlJuQlh5?=
 =?utf-8?B?b2VXTXRTVFBMcmU2eW83bUZ0NWwrT1l2UWZDclloK1lLMXI3MjdRVzQrYUdm?=
 =?utf-8?B?b20vSFJOcWVEMFRFVit1aGhJdHRycHVFUFc3Y2VSYVhjY1JtaTRxN3oyVzRE?=
 =?utf-8?B?Y1Zyck1XdGcxbFR2aXFhcEo2UmdpVndqK2N1djdKTVZxRW5KMVd4ejgzcGVL?=
 =?utf-8?B?NGpSWitadkg4dHkvaERCVTI2SEJxRzdCdmt2aGJZd2s5SWluOVlaaHYxdm9P?=
 =?utf-8?B?ODRPRndybGNmVjV4cnFtMTl4Z2hKeHYrT2EweGtoMG16UXlpeDIxalhtRnpi?=
 =?utf-8?B?STN0SFI1NlRNc3lpaWI2Zy9SVGMrRzJWNnZjV2VXSmh6c056T21CQktlMGxE?=
 =?utf-8?B?ME10d1VxM1RweTJ1U1Rhb0dNTWpaS0IvTmQ1bUl4ZGY5L3ZCdGRHOGpYOWFz?=
 =?utf-8?B?azFkUWZoZzBsYmx0KzlOajZ4aG1TbWVUdUNiTlcwbzh0QnBzV3Z5OXd4WkFq?=
 =?utf-8?B?UUt4NGdrYittZXhSUlZiNUxpekw3MlljV3JhcnROSGpnbEJPbXk1K09NKzJZ?=
 =?utf-8?B?bTlPcXBVdGU0Ym9USjUrQ3JDVjFSV3NkaGU2QjVpM0lacE9xOEpESTBaWktm?=
 =?utf-8?B?TC9neG5LOFhDTzdwd25veHpiSTJkc3Q0TVBSZnlUeFd1Z2xJQnFxUGRiWnRl?=
 =?utf-8?B?NUNINDRxLzllTVNEMnRXajAzbG0xVUVIMTY1eTZpMzNIQklWT2ppZ2tNV3Z2?=
 =?utf-8?B?SklFRldrNUZibnZ6dWVTUG5vSmQ4bU1NSWttTERMS1hhdy9aSFZpODl1OUpk?=
 =?utf-8?B?R0wzTkxNUWFqZGZKTGNyRmpDRXBOd29Rb3NIN2FMTGU2SDRERUNRWDJTdGNI?=
 =?utf-8?B?M015alYvZ2ZONGdUOGNadzUzeE1kMW41b3FieFRPY0VFKzJEb0FaNzNvU1Fl?=
 =?utf-8?B?QVlqWC96OGpZc1JxeFpnbHIwNkthNDVBaWN3NS9pU29nM3ZLTm80MkhGMFdQ?=
 =?utf-8?B?Mk45SHRlMlFmNUlKbldVL0ttUWpJcGpia3B3ZEpLalZqMmM0LzZNdWZwRlN6?=
 =?utf-8?B?bk5kZzc1d3hxSGRoejVkcjVEYzVFOHdTODRCV3g1VWMvU2ttWDNGTzNZa1Y1?=
 =?utf-8?B?clJQN2xMRk5UZjVUdHhiMjJtNGl2a1ZsU3JDNGcyNDB3SC9uV0owRjE2VXEy?=
 =?utf-8?B?K0V2VnU2dzFUSUtwMlFHd2trbnVrT1hyRWJ4SU94dDh4OGZaNi9TY3A1aE1y?=
 =?utf-8?B?ZTFmaHozYXdTNGxyL214enloQ3hMK2tnMzBlOVUvUHpSakJLZjdrak5iTER3?=
 =?utf-8?Q?pKoXz3AwTPnueODSCe77WZp+S?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e4a3cf1-d12f-4214-88f4-08dd4b4f8b0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 10:25:16.3549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PsFKbptoCsoGR2TDBWn/xA8eyMIPOaU5kcSNMhZPrI6ROIPFm2CiDzHXNhdnxqJsUYqUDqukN6gmdE6Pc2yV3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6498
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMTIsIDIwMjUgMToyNyBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY3IDAxLzEzXSBkcm0vaTkxNS9wc3I6IFVzZSBQU1Iy
X01BTl9UUktfQ1RMIENGRiBiaXQNCj4gb25seSB0byBzZW5kIGZ1bGwgdXBkYXRlDQo+IA0KPiBX
ZSBhcmUgcHJlcGFyaW5nIGZvciBhIGNoYW5nZSB3aGVyZSBvbmx5IGZyb250YnVmZmVyIGZsdXNo
IHdpbGwgdXNlIHNpbmdsZQ0KPiBmdWxsIGZyYW1lIGJpdCBvZiBhIG5ldyByZWdpc3RlciAoU0ZG
X0NUTCkgYXZhaWxhYmxlIG9uIEx1bmFyTGFrZSBvbndhcmRzLg0KPiANCj4gSXQgc2hvdWxkbid0
IGJlIG5lY2Vzc2FyeSB0byBoYXZlIFNGRiBiaXQgc2V0IGlmIENGRiBiaXQgaXMgc2V0IGluDQo+
IFBTUjJfTUFOX1RSS19DVEwgLT4gcmVtb3Zpbmcgc2V0dGluZyBpdCBvbiBhbGwgcGxhdGZvcm1z
IGFzIHRoZXJlIGlzIG5vdA0KPiByZWFzb24gdG8gaGF2ZSBpdCBkaWZmZXJlbnQgb24gb2xkZXIg
cGxhdGZvcm1zLg0KPiANCj4gdjI6IGNvbW1pdCBtZXNzYWdlIGltcHJvdmVkDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
TEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAxIC0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggODYxZTUwY2VlZjg1Li42
NGUwM2QxOWNhZDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBAQCAtMjM5NSw3ICsyMzk1LDYgQEAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0
bF9jYWxjKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCXZhbCB8
PSBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2JpdF9nZXQoZGlzcGxheSk7DQo+IA0KPiAgCWlm
IChmdWxsX3VwZGF0ZSkgew0KPiAtCQl2YWwgfD0gbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJh
bWVfYml0X2dldChkaXNwbGF5KTsNCj4gIAkJdmFsIHw9IG1hbl90cmtfY3RsX2NvbnRpbnVvc19m
dWxsX2ZyYW1lKGRpc3BsYXkpOw0KPiAgCQlnb3RvIGV4aXQ7DQo+ICAJfQ0KPiAtLQ0KPiAyLjQz
LjANCg0K
