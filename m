Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 704FC8FE7B3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 15:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD26010E15F;
	Thu,  6 Jun 2024 13:26:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1hSY1Ti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B000710E15F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 13:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717680406; x=1749216406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ABWnedNGyOV38TzCen0Q2KoQjCOckxNbkFQHduDg0Cc=;
 b=C1hSY1TiOHaFWXi7KXc/bq7yjALmgPTFPJpzTwoH93lcowEMfTJIVzoM
 dKX/KN1YPJ0VhXDayESPGE0GKblcpmbKekTRR6emKAkJXt3ln6oltDFb6
 k/5IF+vGo2F6pr2oMNF8AxTkH77CoW6K+rqKt3yifKDw4Ol2vHfXOq/Q9
 tP42T2B8s7eoQjpstvMw36AUKYZxq99lTXQq3B16whhfN2kacK/nr1QbT
 hHcg/Xp3D2ZpP8O54It85dY+cR27U6nHjlbQl/bmtra73CohLFUfanz6v
 Qq1xE6JppjhLBKIxjgXPvG6stEQvj3Iep9obOv2ZSkE7EG+Zk9Cs/amMe w==;
X-CSE-ConnectionGUID: gGL8JdApR46nRMZvw9ICfg==
X-CSE-MsgGUID: V1jFMGx5QJ696qlW6jXXMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="11942713"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="11942713"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 06:26:46 -0700
X-CSE-ConnectionGUID: hMKHq3j9Q+C6ucGOp1H98g==
X-CSE-MsgGUID: V2PHpd3NTm2yIIIBeMHyAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37900164"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 06:26:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 06:26:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 06:26:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 06:26:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 06:26:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzGcSw6trwyrCs3JgUsaH657gP0hUovt52VcDo86HYs456fAYx4s9YrgnuwwTfjz1MxTqb5TDs/ArrZIzA/dJJolK020hS3McuPPL57D1rrc3sgwSvLU42jE6eD7WyiidCrFl9Hw6/lzo7KIqXM8b1HrgFPGcg31eqY4xXhBoAT3hwdDuWvQxZgrGOJ1FDIBtxTHPy5s2bU/yo2sHmcvTekKOIGGOWeL+1Ph8pq+6nA0VImEwLrqpjlT3/3O/bGUCTrRTf+bMXp8+VCv7XC0kPGiEpNd+VT9zR0cpc9d4T2uP+17dx+eFxHXrX2vmlKAkN/96KsVtfQuzTdL6PI45w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ABWnedNGyOV38TzCen0Q2KoQjCOckxNbkFQHduDg0Cc=;
 b=Q+Pgpdpxle8svCXKXFcljY+2b9DWCQQN1LgFCxm6XdarCh+lwVRQPHui0WpPwt0iIrcWWUfmW+P1xNJAK/NBvi7EGpe0yX51/pz2zUlVzlH/KURXHEoSbBlWRaD0pPgCglrTlf/cL5vaq7gYbMwcYtcthDKmXHGwPSonY0FqIWPx2mUtjXHnEcgEwXnJIomfhBfeyUmv5gkS97yBDKkiv9fNMGNKGsjHHdDDEuLkVG4OhDS6/x5AEPokoXDNfTl6KtmtSL0p8xMUfdFfanYWpGlpr/ld6rxl7Qzi1k0PX0ig7sYayjawwCuOz/hkyt3bAyL1uovZ2foGVNRrOdSyDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA3PR11MB7977.namprd11.prod.outlook.com (2603:10b6:806:2f3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 13:26:37 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 13:26:37 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time
 for Panel Replay
Thread-Topic: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time
 for Panel Replay
Thread-Index: AQHatzLogrf2r4GVTk+1MORHNP2RrLG6ugtg
Date: Thu, 6 Jun 2024 13:26:37 +0000
Message-ID: <PH7PR11MB5981807A08755648E5D6A350F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-15-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-15-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA3PR11MB7977:EE_
x-ms-office365-filtering-correlation-id: 2e872069-8f22-476f-49e6-08dc862c4afc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MHordmZkWmZvSFB3eGc0dy9vd1YxT0VPcm5nbktVeE5ubndJc2JZRVRJVWE3?=
 =?utf-8?B?b1AvYklSOVoram5JakRacmo3OG91a3RsclZnMldVeHBYNlVHMDRXYTEvaS83?=
 =?utf-8?B?MW5PeDdRZUxlcURtOUlIWmpneVU1em1qY0xIck16UXprWDZsK01GQ3Y1eW9W?=
 =?utf-8?B?REo3NzY3dzM3cVR5enF0M2k4OTAyN3hRajVOS1E5SzJrWW5hYTFxdUlBZFZt?=
 =?utf-8?B?c3paVmZUTytrMlVHcXhlSE9qTy85NGtlRkg1SjFBQWZKYzZlblJlb3VrMUNH?=
 =?utf-8?B?SStRSXMzRG5IYW9LMURJREQrQ0hDNmpUZldtK1JmTkJBNy8xSDJmdEJPQTlu?=
 =?utf-8?B?elJoOEdDYkMvOTQrZ2t1Wm1KSHJUQitWeEgzKzNjMFN0VDgveUUyK1ZwbXd4?=
 =?utf-8?B?NGxldlJ4ZUtHVWIxTDczWUMzNU5yaTBic1EyT1JKRVVVSjdwMkNwN3BmNkhk?=
 =?utf-8?B?aGdIUmdnRTdMc2JuV0x4clNtdEo0V05mOWJWZ2YzVTNYSDdtRFUrM1AxWThy?=
 =?utf-8?B?NTJoSVBSTnl6SmsvRHFpOHFZSUthay9DZU92aFRuL3I2Snp3L0U0WElVUjU0?=
 =?utf-8?B?amFzdTk0RXcwRnlBMWx3dTI2eHhYL0VNSTRoajByK3duZVhiYXJoUXZCQUVR?=
 =?utf-8?B?WlVSbVRDOGlsK3RwSUhBNzRad2NOakFSZHFvWE5mWm5jMVFDQjd3N05ZNS9r?=
 =?utf-8?B?NUs5QzNwTDhsaTltL05rMFowVmpyWGYrN1Vqc3hpY2N2WmpjMVlrNGxlRUs2?=
 =?utf-8?B?REUzNFpLMVFLWkx0UzVqckFleXhrL0JYc0xGN3BWVnpwM2UvSktZVnZ5bGNa?=
 =?utf-8?B?UzdUcExtQWtvSmFqUGxzU2Y1eFRxb3IyZHBLbUthUGlKMXNZelBGRElKME1y?=
 =?utf-8?B?T0haTE5FcUcxVC9LaWZlT1E4ZzZLcG93d0FuZ2dITGxKRm0yVVpZRXBjMUxT?=
 =?utf-8?B?ZTA0TDVMbFQyL21WQmlKZy94MGRJYWVlT1ZQdTlZVVpxVTl0cmNpMUJpKzZF?=
 =?utf-8?B?YThobkVqQzNQZHRIeUtzQjdKOWFZMkwyOU01c0FWa2wyTElCOC8zdDdDVHRy?=
 =?utf-8?B?aEpsdTgvN1ArREE5R3JKTEl4SnhPTi9Da0dOeVNJb3JkK1BwSVRpME1tT1kv?=
 =?utf-8?B?RHROa3NnTDJ6WE9ZNi9GTVFMTVNJN2QvV0o1TzQ3TDd4NVNaT1pQTlpIWjRW?=
 =?utf-8?B?WkZKRTB1OWRKek1QZGovK1NXMlVsbjV0a2Z6NURnc25IZSsvRks3MzY5U2tx?=
 =?utf-8?B?Um5MQ2FzZmVRYlllRkNGWlg1SlVkNVFwK0I2UGorSEN2MHFndXRZT3pTWmhB?=
 =?utf-8?B?RlczMDdQRUlqVWtHV2VpR1VJc2hHWi83Yk02YVFENWNERHpIaHV2Y2R1YkRG?=
 =?utf-8?B?TThKeEJYSnErNXMxd1JlMWt3R09VREhVbjQ2blJGWU53b0lFakVPNHlhaDlj?=
 =?utf-8?B?NHUvTDU3eURMOUFyajN5bU9tRmZKYXdqelJEQm0wd2h0T1FCdUhZRWl1OUZX?=
 =?utf-8?B?OUV2LzlnRVQ1eER3U2U5RmNaOGpEa3VadWlXVzQrVytRS0dFTVRhY1hQOGla?=
 =?utf-8?B?VG5QRTROcFh2NzIxLzI0SDROb2xUY0dFMFB0aDRtY2JFbStvV2NpMTE3RWlh?=
 =?utf-8?B?VU9qTmYxWkdzY1NQdUVwS2JoaGRCekZ3dS9VblpzaFJVbDh2ZXlpU204NU5F?=
 =?utf-8?B?dW1oVEkzK0hiVFI4aVRTbjZsQTZCUEIyRUlZQnNDTmt4cGQ0Z09BbFdvY2xG?=
 =?utf-8?B?a0loSGRJSGhYTWZvNTZiUmFnYUo3ZkhkT0p5U1VBN3dHSW0yZXZ3UGJFRUwr?=
 =?utf-8?Q?dea+IR0kis9rl8diknCaT3AjMEy6E2vmGk+QE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cUh2MFV4eGRGYW00NklLbUFIWHJLMXh1VE5JQ09HNEJrZVpFUXZ3S1JuMEdv?=
 =?utf-8?B?TVNsMUU1b25HYUsrV3UzZTBzSXMvcEtrdVpLNFYrb0NoUEplc0JvdzdIaUFS?=
 =?utf-8?B?dmpWeGNpZkV6TEd6dUw2cUFRSVVrWFlyemNPaEl6V2dCZzY2RGU2ME9Vb3RB?=
 =?utf-8?B?djJ4dkxHK0U1YURVb1o5MVp2VFpWQWJ5ZTJ6dE1lTFVXaUdCbVIva1BldzNR?=
 =?utf-8?B?L2lSWFMxNXJTN2hYTEFtRWdWY2hneU9KVUJKK1VRTWFXVGgxUXlJU05wQUVQ?=
 =?utf-8?B?YXJqVlFaZDA1K3g1b1Axa045TFdaMFlrVkMyZk1GSGFUUk1qOGROL1FvdC91?=
 =?utf-8?B?Sk9QOTVUUGpLZVI2cFowMDEzM0pXTkN6ajdpa1lDeldScitmMVUyT3VNT0Q1?=
 =?utf-8?B?QlBLTC8rVXl1UlhnbTVSSXFOMjdZa0t4dCtoQkhqdkFyK3dmZ1JXQ1kyMStq?=
 =?utf-8?B?VTBSeGhGZGZoTEhwQ2hwTy9jeXJOdU92ZlhzU1RaOHF3bUJqdjlxM3hPdmY5?=
 =?utf-8?B?c3dFa25ROEYwZUlteFdnamZYZTVwZ01Kb2J3TDd6N3JQTGtJdHZVazhuZEVm?=
 =?utf-8?B?S1RtVzFPMU9KMXU2UmVRU04reFlNODJxYTIzbkU3SjJORWVaMW1qeUFvVkRD?=
 =?utf-8?B?MVhZdS9hQm1hejNvWU5tVkdmOVBOSDlDdk5kcWJUSXk5V2lUVFMyQVVDV0wz?=
 =?utf-8?B?ek5DZHBKeW1KallyRjlta0E4YmU5RnptdVFtWTNKQmV3cFYrRWZmWGsyL3Mz?=
 =?utf-8?B?NXVkTmU0Y212ZzhXdXA5ajRSNGNPR3pVVks0NldNTElOeDM4bDJhU0tFc2FY?=
 =?utf-8?B?Q01tdmExU3RuT0g1dG9BcnRSN2g1MFJscjhXRE5lN3VXRDBwQ2c4ZjZXSVdB?=
 =?utf-8?B?Z1dSOWhBYlhzWHo4aVpreHBZcEU1LzBwZmx4UFAwRWk4V2VWVlBqL09iTGlX?=
 =?utf-8?B?cFJSQVlOSHlSSTFkaDRXN1Z4K3YyZWQ5cEFOemRzelNBclpaR25XdjJUMWJP?=
 =?utf-8?B?QmU1QlZqU1puRmhjMkJiaTNFT0Y2U1g5YlRSNEIvczVOY1J0VEQ5NUlvK0lB?=
 =?utf-8?B?ZGpZWGZFcmxwMkwzc1N0d21zU0tMcENBZUdPRDRZbDlsSmVtN1BZQXdObHZ4?=
 =?utf-8?B?eVJTNzBJZUJrQjFPZnh5RHBIVVY2RlJuUVlYREdwRHQ4c0tpeTNUOHJJSklI?=
 =?utf-8?B?b1pWV3FRR3VNSEJWcFFWOHk4czNteW1nWVJPK1pmU2FFc3g4SDlIcjlKTm9H?=
 =?utf-8?B?WFc4Z01DMVY4TlZsZE94QlJ3eXh5b3hNSnVESkpvT3NqTFlUQ1pWNmExak9p?=
 =?utf-8?B?akkxWnFIc0JaY0FvMHJnK2VSOFRqR29jNjgrQ2VXVnYyMDg2MlMyRlVUaGlX?=
 =?utf-8?B?eVoyTThMem5KZkU0N2V4blBpcE1Id1VhNllXdnQzZlA4eWxjaFRBVGV6bS9m?=
 =?utf-8?B?NHB4bXJvN2l2WXZ2Wnh1VUgzQ25INFVrT243SSt5T0NXTnhLaUk4b1FDd0xn?=
 =?utf-8?B?UjJjTll0YVBxMTNCWGV1RUNFUjlMUXFoZHpUOWhiS2NmU2R6TWNoSlBBM2Fj?=
 =?utf-8?B?TmZmVnlCWEhYZHZPSE5lMGJxK0NFTDhHV0xNZTIyZVMva3U4SWprY1lWQmRC?=
 =?utf-8?B?Qmd2bEMwd3dyVk9JSkV1RHE0VHN0N3VmMVAzSGVKVHpxazN0RnRMTTNqTXNZ?=
 =?utf-8?B?MjZzTWI5cVpFWHRMZFMyR0JDQjVsNzNKZm1MYWpwRUNNMzhYeHlZSE02MjYv?=
 =?utf-8?B?d25Nem9xUENNSjM1OTdnL2lsdW85N0NtUTRXTEJHTyt2dXBJbHJyYzZ1SlIy?=
 =?utf-8?B?MEZtR2lQa3pPWmJmRE1qQ1FxbmNjbUZQK2JmV1hTTmxCZXNZNmIrU3l3ZXN5?=
 =?utf-8?B?TFI2cjlFNjBTaWQyOTNoMWN1UWtsOVZrMHpvTkpvcURwalNvUHU0b2RoUDNU?=
 =?utf-8?B?dFJUV2QrM1dGaW9KRi9lY2hjYXFub05YakJGd0ZMNDVvcWpBU0JOK1VZaW9S?=
 =?utf-8?B?eFpxSkRYUWhkZjh5b3FrSFNFT2IrSm1DWElBc1VZRzZ5dmVxU3RabndKbmpZ?=
 =?utf-8?B?d2dRVFoxdWdCZm93Um9VVkpqV3VxQVM1VStGeXpNREpHRXdDbVh3enVtMTcz?=
 =?utf-8?Q?zu54JtZddQ/06H+knPu/8bQvv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e872069-8f22-476f-49e6-08dc862c4afc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 13:26:37.4036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YM1qxhUImfJfR3IscsNBwqew1stM0K8TFnnUX0XVrwcErz84+VU53Jf8BdVrNx7xSHceKaPefb+Y942FKSlUCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7977
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAxNC8yNl0gZG1yL2k5MTUvcHNyOiBX
YWtlIHRpbWUgaXMgYXV4IGxlc3Mgd2FrZSB0aW1lIGZvcg0KPiBQYW5lbCBSZXBsYXkNCj4gDQo+
IFdoZW4gY2hlY2tpbmcgdmJsYW5rIGxlbmd0aCB1c2VkIHdha2UgdGltZSBpcyBhdXggbGVzcyB3
YWtlIHRpbWUgZm9yIGVEUA0KPiBQYW5lbCBSZXBsYXkgKHZibGFuayBsZW5ndGggaXMgbm90IGNo
ZWNrZWQgZm9yIERQMi4wIFBhbmVsIFJlcGxheSkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOCArKysrKystLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBjOWZjYjI1MTg0ZWUu
LmNjYjdjMDIyZTM2NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IEBAIC0xMjUxLDggKzEyNTEsMTIgQEAgc3RhdGljIGJvb2wgdmJsYW5rX2xlbmd0
aF92YWxpZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCQljcnRjX3N0YXRlLT5o
dy5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX3N0YXJ0Ow0KPiAgCWludCB3YWtlX2xpbmVzOw0K
PiANCj4gLQl3YWtlX2xpbmVzID0gRElTUExBWV9WRVIoaTkxNSkgPCAyMCA/DQo+IHBzcjJfYmxv
Y2tfY291bnRfbGluZXMoaW50ZWxfZHApIDoNCj4gLQkJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVy
cy5pb193YWtlX2xpbmVzOw0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5KQ0K
PiArCQl3YWtlX2xpbmVzID0gaW50ZWxfZHAtDQo+ID5hbHBtX3BhcmFtZXRlcnMuYXV4X2xlc3Nf
d2FrZV9saW5lczsNCg0KRXhpc3RpbmcgY29kZSBjYW4gdGFrZSBjYXJlIGZvciBFRFAgcGFuZWwg
cmVwbGF5IGFzIEVEUCBwYW5lbCByZXBsYXkgaXMgc3VwcG9ydGVkIGZyb20gTE5MIG9ud2FyZHMu
DQpOb3Qgc3VyZSB3aHkgdGhpcyBjaGFuZ2UgaXMgbmVlZGVkLg0KDQpSZWdhcmRzLA0KQW5pbWVz
aA0KICANCj4gKwllbHNlDQo+ICsJCXdha2VfbGluZXMgPSBESVNQTEFZX1ZFUihpOTE1KSA8IDIw
ID8NCj4gKwkJCXBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxfZHApIDoNCj4gKwkJCWludGVs
X2RwLT5hbHBtX3BhcmFtZXRlcnMuaW9fd2FrZV9saW5lczsNCj4gDQo+ICAJaWYgKGNydGNfc3Rh
dGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSkNCj4gIAkJdmJsYW5rIC09IDE7DQo+IC0t
DQo+IDIuMzQuMQ0KDQo=
