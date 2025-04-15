Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3926AA8938A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 07:55:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABADD10E0EA;
	Tue, 15 Apr 2025 05:55:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dt93LSA0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1F510E0D9;
 Tue, 15 Apr 2025 05:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744696504; x=1776232504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vZ7dVHLwKPN19Ivl6S0KZEV++iNCo/0CXCWmmLV1sJc=;
 b=Dt93LSA0Kg/bBwGjW8X6IxCSmeiQvTf/nKhzK8ZyCNVwidEUCbV43Ygp
 mNYqdPDTikPKF3q7PkxBTudAs0IXf+0aSAiRmT19O3TCm4VhFHT0kCDnW
 q3OMpXYPx1Unr2L7Efw6CrAL0dhDkQO5E+ZbKlmIt2Vl2ESP1JhfFmE1E
 4oSBx1Yxcf7f5d2PXJieyamrw20aC74HYPserlBztCi3bWWaAJNJZVetC
 pTMUyjJQuAElGdJE4qM5F7JwNwASCNOWJfmulcGnUNEiOzVVNwaDJDMXh
 COGgMTertQPg3MUUYXveHpHll4yFZoFJtjzd5K5fuLZhKdza8zqw0bERl g==;
X-CSE-ConnectionGUID: 4SlCt//0RPOxAhR3kAcRFQ==
X-CSE-MsgGUID: qfhbXqdcR4q261bAoubWzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="56848458"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="56848458"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 22:55:03 -0700
X-CSE-ConnectionGUID: qEYOb2JqQx2tiZuurNrrUQ==
X-CSE-MsgGUID: YmI3dCYZR229XmxxOkOyIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130997268"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 22:55:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 22:55:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 22:55:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 22:55:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OIWYN1Q0o85lJJtMusiPF/zM6h47M05cP/eY3/E/UTyDQnbatARwV+6W+r8htafBh/My9EFDkRy/4hP57swtawgyT5pXeQYv2gXj2y2taSLhQRXONqF4+Ip23GqmUMWXH3maGBRF1XdfaCbs28WyJ0UAJaemSQDCx5qJQ7WrordJKAFrhllgOlAF73wxQ5NHZcrQHY8Gie/Vmhlpr+ByeieL6GVcHrWBVZNKInuF9887cmzTZDsgwEaut6Ud+BXjwV/6sY3me1NBkMmsrZkHQh5DNX93ZWp0/2oK2Jp4JYoo/03KCQM8CJTCbyx86grkUnm3KJI3q6dvkRRMS8NYVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZ7dVHLwKPN19Ivl6S0KZEV++iNCo/0CXCWmmLV1sJc=;
 b=GJ/yp+QBmSESy2YApcPv1kdAiQBVoEJG7V3c+wQNH7Ir+yq7fxMsxTm2KD66rFytfPk8RiDRu2ZedQBKqxR55v1ZH3h+yTFJioDRihtgc6zJYKd5QJwgky1s/RJiaGQjuiaV583m8xtPoi6XYM/Xd0OTWWVX5zQ3w17k/7kxPSujkMHD46zMFXAbJ84tp/2qZmcpC++cIfFEJ4wZch5NOy1EuXnMsSFUpYgaStQeOP2Xh+ZR83C9XjslbwfdorXDSUIpAXXycY1uzp9q7xxEkOlJo9TMJnH5qSIpIbA//5X8heqc+0alGP3reLDobi8h2Mn2w3RzMowrlv+JLnmuZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6119.namprd11.prod.outlook.com (2603:10b6:8:b0::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8632.35; Tue, 15 Apr 2025 05:54:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 05:54:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v8 7/9] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v8 7/9] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbqVtlSe9k8KJXAUK7F+gd9saf5bOkQwmA
Date: Tue, 15 Apr 2025 05:54:40 +0000
Message-ID: <3d45d9f975bf15a61bc04f670d25d4ab5727159f.camel@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
 <20250409140258.785834-8-animesh.manna@intel.com>
In-Reply-To: <20250409140258.785834-8-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6119:EE_
x-ms-office365-filtering-correlation-id: c246c853-db35-4426-ec5a-08dd7be20349
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eXVvRUh5MlVvZi8ySjBNTmx0MW9Yem9sYk5LZFJ0ZlltSUprK0pvQ0hLUzVr?=
 =?utf-8?B?dXBCOVRJamQ3eEFPR2FiRlRNcGM0N09tZXZKcXZib0RHdVJuTDczQ3k1UEpZ?=
 =?utf-8?B?S0c5SS9xZjdjY1RvNnpuTEVoK3RwS0hVS0JRUi9RZFE5Vjh4cS9LbmpISXdu?=
 =?utf-8?B?RDhFQ2tzM3N3UE1FUGpyWmc5WHI2WlhJZlpHUzdnOWREbkFDM1BQTHFEZTIv?=
 =?utf-8?B?R0EyckpPVlpacDFzekYxdDlIeVBhRkhXSVRCVWFZM1RqUUdRRHZCQmlrRUsz?=
 =?utf-8?B?UXB4dXU3Tm1BVHRmQ3JKQXVWNVRzQVhVaFdaYjBkR0hYRGpHT1NNdkx2WnI3?=
 =?utf-8?B?bUdnMmlaUVVLdnY1TUt2ZEo5eE03RzgveWdKdnRCMmlsUUxWKzgwNlVHT01X?=
 =?utf-8?B?QU9EYmkva0ZINXZoNU1CRnFCYUVWWHJ0L1dvYVhHT000djFXR0VFYUFSMmw3?=
 =?utf-8?B?NzZROWllVjhFQnp5MTlQbFFld1puTXJuYTRURml4dHBZVG5XTEN5aHUxYVhj?=
 =?utf-8?B?bHl2ZnB2dWhBS0JZWXdNak00NFRKU1hJbjBWZE5wa3lJbUdPbThjVGFmK0Fu?=
 =?utf-8?B?d3RicVByU1AyREhxWEwzT0ZuQTFnWTdLVGlHditVUkZVODM2TnVMdCt3cHdQ?=
 =?utf-8?B?K05NcGtFQTN2VlIxajhweHlTNG9vc0wyN1FUZ0dpVHVWV0R5L2gwRmZtS1FR?=
 =?utf-8?B?Q0hZZWJjZkNWTHBTWk1VUVFFMkw5MXMyenRyQmxqWXRCZjRYRmU5UEtKdkov?=
 =?utf-8?B?RmVqSlVLOE5vYTNzZUx6LzFWNE5TeTVqbVJKc2pwQTdBUkk0YjlmMkJyNE01?=
 =?utf-8?B?SENHU3JRSUNXY1BPbFBPbTI1TEIrd3IzYThnMjFlNWxlMjhBOE9EajY0TDlZ?=
 =?utf-8?B?RzBDNWR0KzYwTXBFL21aUktoK3BBYmRWT0MvN0ozT0l4UGhjWUYrZjFRYnJ0?=
 =?utf-8?B?NkpsTDZPc2VoQnZ5RGJNSmloeSs4VEd0RW5sbEppSS9WTlRvdDBRRFd6cGpr?=
 =?utf-8?B?QVY4UUloVFk3U2JKd0FjV3Q1K1VmNXFNQkJUczAyZi9GZnNiTmExSlpFVzZG?=
 =?utf-8?B?bXl4amZGczA0M3p1R0hjL0VDWDVzUjY5UXlWN1hNWmtQOGN3WFk2djVMeXNZ?=
 =?utf-8?B?NDZocnc4OSt1VFFzK2hPMDNockZrb0dZSnBHVDg3UnJ1cURoUUxDeW8vWHFZ?=
 =?utf-8?B?TGd2OGxpZXUxU08reXorL1psdlJwakFzdklxaXBGU3BueEM4cHYwaWJGZm9n?=
 =?utf-8?B?aDdBc0FzTCtPMnR2QThSYm1kRGwydER2ODBacG5jTzNQNkNrOU5LMWFWTzRV?=
 =?utf-8?B?cTVuSDNUOGRTaE9vVjZHa0FXK0xOWXlKYzdqbUsvS1hZUGVJVGlmclUzbHhl?=
 =?utf-8?B?U1J4STBNbVlSYmx2QndweDVCblIrZVJhT3ovejhub2VXNlFTMVhwZ1BDbFpB?=
 =?utf-8?B?Nms2NkZuR09ubGUzR3lRWjZtZ2paaVRHcmNpNWRHYzVMNUcvVGsvMjFGOEMy?=
 =?utf-8?B?S0RybllzVExCVElOVXZBV0cveVJITGRZTFkwKzZtWWsya3NhK3VtQUwwOXpj?=
 =?utf-8?B?NlhhUHpxOXBQOGtPVzlQZnJQSGFOVWxqcW52bkUzRHU3ak1CSUhmWFdOcko3?=
 =?utf-8?B?ZngzWEp4S2NHanpFbGRsMDdGM3lnVDFVdWJTUzRWZ3hkcC9wS0FBeHU5TWRw?=
 =?utf-8?B?M1V4Wnc0N0Z2S2EybHFRb2pGSVVLd2JMT2tyTzBSTk9vRHhmRmg2WU9UdXRy?=
 =?utf-8?B?OEJoblE5UXVucUh4VGpTTURTTGwzOXR5ZVRVS1VoZjVRa2U4TGpkbUVuS3c3?=
 =?utf-8?B?TVRZYmYxeTRaeXFmcUFQMFNEeWdva3dMeHVOUjE0aEw2Ty9BZ2NkWXZ0Vk9W?=
 =?utf-8?B?eVg0R09PYldoUFlWcG5uQVFRTS92Y2ZuOEJqU2VLOUZ5UC9ISzRQdDVTTktN?=
 =?utf-8?B?T01YSE5Bd2ZSK1lpbkE3NjZQNy9Qb0NSL2oySWV3Mko1RUFDZGJiY2FwTDY2?=
 =?utf-8?B?a21KTkJYazVRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZjExM1cvUHkySGl4UTduNjFLM2ZsSWRBMEUwYlI3Y09wTTVza29Sa1FZbGsy?=
 =?utf-8?B?L3VyeWs3N2pRSW5HdHV3VUtyZGVONjRlNmxOSklzUm5OR0p4ejZxMS93R1A1?=
 =?utf-8?B?b3hNNHRLdE1PODBDbURxK1FGSXBQdFBUMkdsTDB2Mzk2QWZ3MkZDRGlQVDdD?=
 =?utf-8?B?Zld4Zm1lVG5oNlM2dTRvNFE2dlgrVWdBNmE0TGdYTDVtYzNxeTN5ek1qVzlH?=
 =?utf-8?B?N0huQnNGWnh3TDI4c04yWG5kUkVzUnNiRS9CU25sbVdVcnYyN0pPYUZZaUpU?=
 =?utf-8?B?WVNrOFdZYUppWXJvdUxLWG9VUHFlMFpUMnhBSGdIbDlLdWpXT1l5c3pWQ2Fm?=
 =?utf-8?B?a2tiaVM0UXZCMWxYSENBWWFWeWprZVFxR2ZrUDl6c3dVVjB4UHI3UVR5UHIz?=
 =?utf-8?B?d2ZxYzFmamxpUmcrZXFabmVlQ2FNWkFEeERHVVk4RlpoZGlBend1ZEgvUXBR?=
 =?utf-8?B?KzFMYk1XT1hCUGJqSFkvRVVHWGg4SkdXaHo4SVFueWhQazA4bndIQTJ0TytJ?=
 =?utf-8?B?Ujh5Z2t2NW4rWVZaMG1OdjZwb1pCaTA5aG51a0t4cFFINmVXVjNXbk9LRzBM?=
 =?utf-8?B?ZmRvUC90Q0wzR1daZUI3SXRraU9uT3NPT28wcXVqR0pzL1ZqWXlhU0J0TlJt?=
 =?utf-8?B?RHZxczRXdTZFWHBOejR0cUpYZ1R1L0poYTE0UWR2amtTYWxsdzhtcXFpQlU0?=
 =?utf-8?B?Z1R5eWZFa1NZMFFDZmRJT3JkNWJTM3Vnb25QaVdyR0tpRnltak4xMnVWRWlX?=
 =?utf-8?B?S2k2Sm1xdTJ1bU1nRkRlZnB4aElkcVN2TlNhU09ZdmVXV0NDakJIU1J3dEI3?=
 =?utf-8?B?TWIxRlIyY0dQaXlrbTBKOGlGdVJFdmR2MGdpcDMySjh1aWdDVWMwTy9udTlG?=
 =?utf-8?B?aVE4MWVMRHNQazAweTFYd3d1YjU2T0hZSzJROTZSUkZNb3graGVxN3pTekhr?=
 =?utf-8?B?ZFhYakU1RDh1RVVzaE9ITS9CNU5HN2UwOFRkdGNQMG5ncU0vb2tvM2dMQ0Nm?=
 =?utf-8?B?QUI3Nm92bCs4dnlUdzRhQ1djVk96bjNqQ2lTMkJkTkJia2dQSVY1T0s4Mm8z?=
 =?utf-8?B?UUZxNTJzNUJJaDZUQXA1YVdRcCtjRXZoMzUyblhJL0NvWXExN1Y0S2VWa2Fu?=
 =?utf-8?B?bmkzRE0wYVRGdE5xTzluK0N0SkN2Zjc3NStOd2dMN0dtTm5SQnVRVDA4NmR5?=
 =?utf-8?B?K0s0VFkxWGtvVE5jM0xJK1c4T3F4b2U1OXByOVJYMnFhTE90U1JVdkc1Qnh5?=
 =?utf-8?B?TTl1QUpJMi9QS0JkL3FqUURyWlFqdVo2dFg0Y3hHYTNKYzlyTzA1N2xzNnpl?=
 =?utf-8?B?Q3BjNG1DdWJEYkNQMDJ1dk1ZSUphNjRkbGwwY1k1L3NrMlNNaGF2ejB5cVlu?=
 =?utf-8?B?ZDNKcmoyUkxVM0RPV3NsK1ZEcC9zVEJoVDdqM3Y3SHZueGViS3dzaHhDNlNO?=
 =?utf-8?B?dlZsUm8xcWcwK1hyWUNqaWxYUnFKeURCTkNabU5FRjFMK3dyaE5CYS8rM1FI?=
 =?utf-8?B?SVJWWlRCbXUzMnNxTHh1Q3RMbytSV2k4MitBWDl5bmFHbUMxa29DWFhuVk5p?=
 =?utf-8?B?TXNETXlWSFlsU0xmZDF0MmV3QWhmMndGTDhaN3ZxVkZKaHNuTEJlZDdlRWNI?=
 =?utf-8?B?S2luZExOMVRTRGpkMXlLSDl3NmdjcVZvcVQ1UzNaVUU1SWdUMVZBMjQ4TGVO?=
 =?utf-8?B?QlFzUWpzQzFGVjNaNkhIUEVqV1F1RDJlSDVwS2FNOVU4UEFmR3IrbXRQbk5j?=
 =?utf-8?B?SzNpcC93TkpkRkViWms0bmJTMkRkc24vRGo1clM0dFdNVWFMRVFhTlQzemlU?=
 =?utf-8?B?Q21pMjFNcUpPaHZGOG5DS2hremg1c0ptVzlJNHowWEVHMVR6T0VaRCsxNkYz?=
 =?utf-8?B?SGg1U0MwUkJ0eDlQK3V6YlpULzA0VVdUL09PclVKdHhoL3g0RGNSeXhqTEcx?=
 =?utf-8?B?VEtmR0lYSzhKNWNCYk9RYWZQeEdZOXdHa3J4WnFyd1Vyb1R3TlAvQndibHh0?=
 =?utf-8?B?dkI5bUJYYU9leDdwY2ZtZHBmM2tQSy9xTDhzdDB3R21Rcm02SHczQURZM1dW?=
 =?utf-8?B?dm1WcWhLWDBZU2ljc1VzM245dCtLYm5NUlZHM1BiZ0VkSSszOS9ha2VhWVVo?=
 =?utf-8?B?NmRYOGU2UG5aUG9vUFFhSUp5VGQ4bzFkcER2T21MNTU5MExtY2lTSHFsU05N?=
 =?utf-8?B?RWVGNnNBd2ZEM29rY0pyYVk4OWhCNU56L3gvRVpGWFBWV3ZiNVBCRC9Ta3N1?=
 =?utf-8?B?NUhCU3JFZ05vcEprMXNKWWNKN0hBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FEB5C5A637BAE441A407019F5B6E9AD4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c246c853-db35-4426-ec5a-08dd7be20349
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2025 05:54:40.4184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HVaCbvbGZ0lYXbHVY41RlUM4QALTPEKzrfelzpKq1fdIOB6CHOL2ZbY2kTqQlyrsiOY512cGSQ6QzD6CNjZVkmoge7PYKES4wtHDWUD/IPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6119
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

T24gV2VkLCAyMDI1LTA0LTA5IGF0IDE5OjMyICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYW4gaW50ZXJmYWNlIGluIGRlYnVnZnMgd2hpY2ggd2lsbCBoZWxwIGluIGRlYnVnZ2lu
ZyBMT0JGDQo+IGZlYXR1cmUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjoNCj4g
LSBSZW1vdmUgRk9SQ0VfRU4gZmxhZy4gW0pvdW5pXQ0KPiAtIENoYW5nZSBwcmVmaXggZnJvbSBJ
OTE1IHRvIElOVEVMLiBbSmFuaV0NCj4gLSBVc2UgdTggaW5zdGVhZCBvZiBib29sIGZvciBsb2Jm
LWRlYnVnIGZsYWcuIFtKYW5pXQ0KPiB2MzoNCj4gLSBVc2UgaW50ZWxfY29ubmVjdG9yIGluc3Rl
YWQgb2YgZGlzcGxheS4gW0phbmldDQo+IC0gUmVtb3ZlIGVkcCBjb25uZWN0b3IgY2hlY2sgYXMg
aXQgd2FzIGFscmVhZHkgcHJlc2VudA0KPiBpbiBjYWxsZXIgZnVuY3Rpb24uIFtKYW5pXQ0KPiAt
IFJlbW92ZSBsb29wIG9mIHNlYXJjaGluZyBlZHAgZW5jb2RlciB3aGljaCBpcyBkaXJlY3RseQ0K
PiBhY2Nlc3NpYmxlIGZyb20gaW50ZWxfY29ubmVjdG9yLiBbSmFuaV0NCj4gdjQ6DQo+IC0gU2lt
cGxpZnkgYWxwbSBkZWJ1ZyB0byBib29sIGluc3RlYWQgb2YgYml0LW1hc2suIFtKYW5pXQ0KPiB2
NToNCj4gLSBSZW1vdmUgUkVBRF9PTkNFKCkuIFtKYW5pXQ0KPiAtIE1vZGlmeSB2YXJpYWJsZSBu
YW1lIHRvICpfZGlzYWJsZV8qLiBbSm91bmldDQo+IHY2OiBJbXByb3ZlZCBkZWJ1ZyBwcmludC4g
W0pvdW5pXQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jwqDCoMKgwqAgfCAzNA0KPiArKysrKysrKysrKysrKysrKysrDQo+IMKgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAxICsNCj4gwqAy
IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDRmZTE5MTRmZjc1OS4uNGI2M2Q4
YTZiYzI2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiBAQCAtMjc4LDYgKzI3OCwxMSBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAlpbnQgd2FrZXRpbWVfaW5f
bGluZXMsIGZpcnN0X3NkcF9wb3NpdGlvbjsNCj4gwqAJaW50IGNvbnRleHRfbGF0ZW5jeSwgZ3Vh
cmRiYW5kOw0KPiDCoA0KPiArCWlmIChpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvYmZfZGlz
YWJsZV9kZWJ1Zykgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMT0JGIGlzIGRp
c2FibGVkIGJ5IGRlYnVnDQo+IGZsYWdcbiIpOw0KPiArCQlyZXR1cm47DQo+ICsJfQ0KPiArDQo+
IMKgCWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gwqAJCXJldHVybjsNCj4gwqAN
Cj4gQEAgLTQ0Miw2ICs0NDcsMzIgQEAgc3RhdGljIGludCBpOTE1X2VkcF9sb2JmX2luZm9fc2hv
dyhzdHJ1Y3QNCj4gc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+IMKgDQo+IMKgREVGSU5FX1NI
T1dfQVRUUklCVVRFKGk5MTVfZWRwX2xvYmZfaW5mbyk7DQo+IMKgDQo+ICtzdGF0aWMgaW50DQo+
ICtpOTE1X2VkcF9sb2JmX2RlYnVnX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gK3sNCj4g
KwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rl
cik7DQo+ICsNCj4gKwkqdmFsID0gaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5sb2JmX2Rpc2Fi
bGVfZGVidWc7DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludA0K
PiAraTkxNV9lZHBfbG9iZl9kZWJ1Z19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkNCj4gK3sNCj4g
KwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rl
cik7DQo+ICsNCj4gKwlpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvYmZfZGlzYWJsZV9kZWJ1
ZyA9IHZhbDsNCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtERUZJTkVfU0lNUExF
X0FUVFJJQlVURShpOTE1X2VkcF9sb2JmX2RlYnVnX2ZvcHMsDQo+ICsJCQlpOTE1X2VkcF9sb2Jm
X2RlYnVnX2dldCwNCj4gaTkxNV9lZHBfbG9iZl9kZWJ1Z19zZXQsDQo+ICsJCQkiJWxsdVxuIik7
DQo+ICsNCj4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gQEAgLTQ1MSw2ICs0ODIs
OSBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4gaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpDQo+IMKgCcKgwqDCoCBjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9y
X3R5cGUgIT0NCj4gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gwqAJCXJldHVybjsNCj4gwqAN
Cj4gKwlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2VkcF9sb2JmX2RlYnVnIiwgMDY0NCwgcm9v
dCwNCj4gKwkJCcKgwqDCoCBjb25uZWN0b3IsICZpOTE1X2VkcF9sb2JmX2RlYnVnX2ZvcHMpOw0K
PiArDQo+IMKgCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfZWRwX2xvYmZfaW5mbyIsIDA0NDQs
IHJvb3QsDQo+IMKgCQkJwqDCoMKgIGNvbm5lY3RvciwgJmk5MTVfZWRwX2xvYmZfaW5mb19mb3Bz
KTsNCj4gwqB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IGU1NThmNTJjMzAzOS4uMzg5ZGQwMzNjMmQwIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiBAQCAtMTgxMiw2ICsxODEyLDcgQEAgc3RydWN0IGludGVsX2RwIHsNCj4g
wqAJCXU4IGF1eF9sZXNzX3dha2VfbGluZXM7DQo+IMKgCQl1OCBzaWxlbmNlX3BlcmlvZF9zeW1f
Y2xvY2tzOw0KPiDCoAkJdTggbGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zOw0KPiArCQlib29s
IGxvYmZfZGlzYWJsZV9kZWJ1ZzsNCj4gwqAJfSBhbHBtX3BhcmFtZXRlcnM7DQo+IMKgDQo+IMKg
CXU4IGFscG1fZHBjZDsNCg0K
