Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CDA908FBE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5B910EDCA;
	Fri, 14 Jun 2024 16:11:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQaWcRgJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4DBA10EDC7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718381503; x=1749917503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y+TZTpNSCPb/DNIvEVEdV3N7EkG/RWOgPF+L1lm/aUU=;
 b=MQaWcRgJSOzGkK3xT1Bj2ennK4CMNllhdoHHi7vpVuP1ODrkN7d5jGfY
 2m+LGTYkrgHcSyHJU7DSIdflslYVHuLNY74QW6Ahdx65wXxZ5oi6/zPCg
 4bunvOmZ5nDu8pUQI1PC8nM+3vZ1aBFsPG0UOwQk1+aDGIvaOs6r2W9Ca
 mcVtQucT543qbrNbvB382AxPyRZkGWJ14FNr5nDIM9MBbSo2rKRJoYBla
 DLwa6HKprAQV85iCD/07EAXG3ljjCVy0zzzL+J3IE1pHYuO7WPkwJYzIr
 jiVnXE5GE6ktypwaOS6kyry9NubxPV057eoheGh+IAkpsJFExhjP+SmSm g==;
X-CSE-ConnectionGUID: Y0C9FMHVTcSy5UhtSYiUug==
X-CSE-MsgGUID: voxEvudFSjK3QxSyojMpaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="26693360"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="26693360"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:11:29 -0700
X-CSE-ConnectionGUID: GsGkMroOQUyxWEhChsaNSQ==
X-CSE-MsgGUID: SOQn7AH4Sl++ZTpKdvwoGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="45078842"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 09:11:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:11:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:11:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 09:11:18 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 09:11:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BdmxRfqXJx5EFKgWaPdCfJVjhDaAcvL4xHn/r+BXZCQ24dpZ098lDq/N7UA90yUZzWn6CdD3hYtHsoj+vEQZfZpBgDYJqvHgTVRNULF7/WvS5EiOdsxYsIcZNXby3xyouJ6PMI8+ta0CRB4dWUXADv66+F+mF4dwQGaYeon2ZNcbUPMah0q2aYwq3bDEU5vgj0Z4ctPAOlHQgiXEUOyd3Rcz7GcwcrjsnWrEAFrPhqsgiIIYSvPuZs8LcQGuDoHVuTppQV0Ey+0tIoSxTdPPC47+WOXhlj+aatbZD7faHpMY9BF4KQ7P+0M7X29Ya1XyEF0yuWip1SpyyQh7KseejQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y+TZTpNSCPb/DNIvEVEdV3N7EkG/RWOgPF+L1lm/aUU=;
 b=PngHeBXk78p8rV8zqT2ANpvskDKsPWqTgWHYdRvUtlO9mDUWMGZuTZsAnp9JpwBh8s/N7mEOOq8on0z8mvNum1bMVnU40lvej5bpLycfEYpWK2wgxOodNH8THgIQvIw1j7PZ5HV7iio25yuUb5cR66/Dz/OmRgAXqcK1x7Vq0JESGa4XluCg7/AjSNim5YY+3XvBf8KpvS268k/96DWY4zIsEtpqtrZtQ4qSxZkivLO0I+LG7W/6C6gQsjb/c2cjfJixExa1NNcvJaz57NtJHcwatwv7o9izBUn6a4Z8eaAzuncrSo4dWy6AxbrRMyw0VqzrXHLn9fn6+6F+RqH7wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7827.namprd11.prod.outlook.com (2603:10b6:930:77::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 16:11:16 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 16:11:10 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing
 wrong register
Thread-Topic: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing
 wrong register
Thread-Index: AQHavXSy4G1LimbKg0aZakEJDZmWbbHHbvbQ
Date: Fri, 14 Jun 2024 16:11:10 +0000
Message-ID: <PH7PR11MB5981BFB6E1967C55A680BDCBF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-3-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7827:EE_
x-ms-office365-filtering-correlation-id: 23c3c13e-4490-4dc3-d22a-08dc8c8c9b1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?enBMV1lYTkxVbC9oN08yTnZoY2xkbThkRzJqeGZtajZkNUhEVG45ZDhSaGxD?=
 =?utf-8?B?TFQyL3dOK1dHOFRKTTNzNDdoWXkzYnM2TTlxcXFiSFA4VnhERHBBT1VXY0ph?=
 =?utf-8?B?MzV1cndydU4wNWZCcktUbTE4NExUUVkyWHNMMm9mQVVrVCtVOERyeVR2UVo4?=
 =?utf-8?B?eDBVM3RzbjhRWk10RHY1UHk5eTg0TDh5SFM1VEViQ0JCU242dU1peUNQRDFo?=
 =?utf-8?B?bFdtd0xNM2RIYWQvakRDa0Y2ZmsvRStIckJHTnV0dHlGOU8yK2Nxa3RDUHBH?=
 =?utf-8?B?cHNIRzV1MXkrZkNBVnFYYlhNemRtOEVxaThMSjJzdGxpaFJkYzlxRXp6TlAz?=
 =?utf-8?B?MUd6Mm0yQ2NaNlFJWWx3MHZJTnNoSHhqNVBpZjFlUkRFOG1PTWNEZUgvTHBJ?=
 =?utf-8?B?d1NRRDd4TmJzOU4vR205cWR0Nm5iWTkzYnIrZitRa2N0SG0rWndlTDQ0SDdJ?=
 =?utf-8?B?THlQcU8rZE10NFUzWTcxZkNxQ0pOcXhWM2g0S3hoekN2OENteis2Y0lTMldI?=
 =?utf-8?B?ZHAzT0t0czhJSjBNR1hxL0tGMXB6OWZNWHY1eE1YWFJNdzFvUXdaWlpMTlZE?=
 =?utf-8?B?YUdRZnB2S2hnaGUvVlQwRFlkdksrMVhKZUJML1d5dzQwRGJKcHFtcklPclhl?=
 =?utf-8?B?Q1lkbDBoTFV6ZnZuZE5qaWdBRWptdnRMcHlCTXF2a1d0WCs4OWQwS1ZrdCt2?=
 =?utf-8?B?SGFxakZVQnpGZlFrN0FvTWVBZjF1V2lncWZvRUlMZmJjTUpsQVRyNnd4NjRy?=
 =?utf-8?B?S2tYakg1NmEzaTZ5OXp2eWQ5cXQ2UWc5Q2F1Rjg1ZVlWT3c1L1ZDRFpaU1d0?=
 =?utf-8?B?SmxNalRwUDFOVVorQTdwT3ExOXBlUEpRaUV6SHpnQ0laMEdwNURNUlFMTGVP?=
 =?utf-8?B?cHVra3NFNzllR1c5RWI2MzhRL3hQZ21EMFJGZ0h0REFoMUpEZWZUcGU2ZXor?=
 =?utf-8?B?bkt3QlM1MEdEd1BpZE9KT3phdmhQdjNXYlc0eVVPMEkwemY1cnpTbUdmdGJi?=
 =?utf-8?B?V0t6bEFZWEhXc3dZcElRUTJ6QXJ5RnNsOFBLMkVHc1FsQnBaWi9XS2ttYVVV?=
 =?utf-8?B?bGJ2NlBYbkpDZVV5QjhOR09PZEtHc2w0QzEwZlppcFVQMmxmTmNnVFBiY3VN?=
 =?utf-8?B?US9NUXBiQzVRMW90M0Y5WlNWOVNUdmNFZ0U5ZkE0TGJMaWlqd3RxUG9Ib1Z3?=
 =?utf-8?B?U0RVN2QwVWxpaTFwbm1ldWhZTnRpVTRYVmFQaWppdzQzcmdIVTJMc3pWenZL?=
 =?utf-8?B?aXFvZEVybVgyQUJVTzlaamVkSFdiZU02SEQ5T1pYbE1xMXRqWTNBcmxYUDNz?=
 =?utf-8?B?WVQySUFUaGxBdWRLTEJhRlpobXMzM0hWTFRmb1huRDk1eE1YOURiRW9aUWFy?=
 =?utf-8?B?dlZrKzBrVXNGWmpPa3Y3S0JEdzhxditvQVdscEdzQmRKQlk2N3p2MzBwUDFT?=
 =?utf-8?B?eUpWQkhsY2ZHZUU0WVRGWEx3TVp0QVc5WE1ZVGtWRFNydFF3dHVMd3I1OEV5?=
 =?utf-8?B?ZjRxYWsxQkcrYm81S2x5WDJ3azNEWEwxdXlxbis3TlMzd2RNcE1GcENVd2h1?=
 =?utf-8?B?bVlMd3BUdkhCU2hXT3dTMFgvMzlFakNnNGxMenNIU2hTUHBGZ2lmL2gxQVNX?=
 =?utf-8?B?SzJZbVVlbm9zT2FxV2tzV29FN21HYWk5amwyVVlvOTRaek0vSU1VblpwMVNF?=
 =?utf-8?B?ckRISWZRTzhPYVBZZFJZV2ZzWVRxbDFrQW5ldTdVMkdEZTZyREN0SjVFTENj?=
 =?utf-8?B?aE0vSC9UalhDZXg2N0ppcFlSazEwbkIwMXlDVmFreDRTTUhQVU5xUWJxZmY3?=
 =?utf-8?Q?57AmFT3vzPq4DUDG2f/gJYApiYc62qCHKptM4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEdLZmZwbW1FODdQaDJTWjBqYkdDY3dkbUltRGRmLzhRQmxHblA4YitVUW1O?=
 =?utf-8?B?OEEyWklLYnhjYzg3UVRISUdIVE84QW44R3h0SHRwRkk4SjVVbmhoYVowbTBI?=
 =?utf-8?B?Yk1oK3B5bmV2R05sK093MWV3aVlwZHJMWUlqTmc4TTR3MHRzelJwSnRwaTYw?=
 =?utf-8?B?ME5GZVZ3Q3MycUdvMm5sY1JaSENzQjI5Q0QzZW44UDFIQ1dpQWQzRk9iYUxF?=
 =?utf-8?B?aU1UVngrZFJRUWwreS9uRXQvWWErem5KSXN6aEl1Q2lUc3B5QWZoT0s5ZkZC?=
 =?utf-8?B?WEMyYStrU3BhYjZjQmQrTndzNUduVDM4Z1RVVEVFdHVqbjdIS09Ec3YwWktI?=
 =?utf-8?B?THRDUWFZeG15R0h1bHRPTlJLR0s3ajRocmhyZ3dYMmt1aW9TU1NreUNPN2Ir?=
 =?utf-8?B?TVdVVlNCOE4wYkVNOWdjeEZIZlFiWHh4VDFITzVnaWlBUDJxWWdsYUZkdjYv?=
 =?utf-8?B?Z0x6S21jQXpUenFIa056ekRzMWJoRDNEYkZBb3ViOXhnbC9NbnlRakUxQ2xM?=
 =?utf-8?B?Z2J2OTAyUHl5bnlUd1FoZEhtWU5iejVwQXg4bnJOSk5qLzNmcFhSaktUZ1l5?=
 =?utf-8?B?Z21pbVpzdEdyeWlCZ1puc2JYY2REV2V1Ui92VTcySEdiai9FV25Ic0RaMko5?=
 =?utf-8?B?RTB6SHpDZTNqd0psRzJ6WjNuYjJnNjRDZjhpK2I2amF0eXlUY1craDFQbU13?=
 =?utf-8?B?cjY3OVQ0M0c0cDUzemhZWFE1R0pUQ2cvK3VJdDB3bk0vR1FBeFVIQzBGSE9o?=
 =?utf-8?B?L25TTitydTh3cmRJWERlODZ1cHRTNGFqMTJmSC9Tc3hteW5yQWhGbytobVl1?=
 =?utf-8?B?QmdhZEN3TnJpZzcveE92RGl5QTQ5M2FmWmttTWk4blJHVVhpTWV6bHlHNjd3?=
 =?utf-8?B?MWNGM3A5a0NyMFFRbWxGWjFpdmhTcFNHano5UUpIcFRXK0ZZUXA5OFBPTUhk?=
 =?utf-8?B?R3RFYUl6Q1ZQN3Z4dXJPbnMxU0h0eUN5NGtMTkxQNjFhQWQxME0wUlVyZFoy?=
 =?utf-8?B?clZSa3BVRUJmd0RTUXBKdVZZbEpUYVZQM1VIRk01MThXTFRkN2hjYm9XcFBW?=
 =?utf-8?B?RU9rTE9zWVc1U3RSbFZSOGVDUEVhbnZWNVc1Nzc4MkxLVHdOUXpLU2NCeHpR?=
 =?utf-8?B?cDlQTGVKNU1Ecmp5OEtNS0l3Z0kreGc5SGRobEV2Tk51TWZlK3RXeFRLb1B1?=
 =?utf-8?B?N0VwRUNqQisrTkI1L01NeEUvWU1JaEluV2FCcUNuZ0wvZVkvbm10UEVSM0M2?=
 =?utf-8?B?SGVvTEU0S1VnY2NQcStTSDd3T1FOMkdBODFZNmg3TXd2WDBnZTUrdXBhbGJL?=
 =?utf-8?B?eHBrMEh5WE5uTVY3NTZvRklYc09peTVrOXIxMWxQWkJTSnJ0YWE0MDZvYzRz?=
 =?utf-8?B?Vm5qcFQ0TzgwcjRsN3JJNXVIWXR0RHhpRG01c08wK1pMVWNwdlBYQ0FXSVpE?=
 =?utf-8?B?cWdLSXR6dlV1eGRCU2Z1dldSZ1VPd3hRdEc0Zmdqdm5PTkhXejdoQ1NZU01C?=
 =?utf-8?B?aTl1c3N0ZVpOTGVGWGlzMkVTTVVFdGY0cHh0emNQUTVuYzBKdERIRjRyTXlj?=
 =?utf-8?B?a0pMc0JLOVZScE41OEpvREtxNGRSRHpLNGZXcUUwQlI5eG9PNjMxMWV0TTdX?=
 =?utf-8?B?SkgwQUlEQTVQZllxZjRyQkdjUkZmZWg2bWI5aEFjdkFNOFgrcHRSeWlRdUFD?=
 =?utf-8?B?b0pMQUlRSkszalhVSEdMN3dSTG1iczh5WVRML2FtS1V0MkNTRnhQRmpzUzB0?=
 =?utf-8?B?aUpoWlhXS3NFaFZpWmdJMGI1eFdTVFRjZDhPVHpBS0g5ZFQwMFY4TXFtd0dY?=
 =?utf-8?B?cC9OcTZJdFpLQlZPVzJ3aEtaMUFHRU04TnVScmMySkVtYlEvU0tFMHZ3K1Jq?=
 =?utf-8?B?K2xrR0FtMTVDTUV4S3g2MmpJNjB6UHpqSkpNekoyY24zL1c2MXl0UUtRdm9y?=
 =?utf-8?B?Z1k4WjhIeHdYa2RScDlIRk5kM1JVZEdybzFtZWMyaWNvQlkxT2dab2RmTW1J?=
 =?utf-8?B?aGR2aUZoTm84NTVxcXp1cHI5b3IvcXlsSHNXZjVyTG5Ycy9rbkZBL2d6Nlhq?=
 =?utf-8?B?RVU1aTNyL012Zy8vZmZWMmRNOWlPOHoyM0ZxZG10NytrdWtUYTZ6eHZTMHpP?=
 =?utf-8?Q?LvWxnFngg7VEgdXwfJo+tptD8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c3c13e-4490-4dc3-d22a-08dc8c8c9b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 16:11:10.5263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PdPxFDra6HW+EnuhxetOJjZszB5rKbpGue+wrJgubfhr2A+YmjNmXzoxB05FYjM2n71DWjcyhFpKlcA71FDO4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7827
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwMi8yMF0gZHJtL2k5MTUvZGlzcGxh
eTogV2EgMTYwMjE0NDA4NzMgaXMgd3JpdGluZw0KPiB3cm9uZyByZWdpc3Rlcg0KPiANCj4gV2Eg
MTYwMjE0NDA4NzMgaXMgd3JpdGluZyB3cm9uZyByZWdpc3Rlci4gSW5zdGVhZCBvZiBQSVBFX1NS
Q1NaX0VSTFlfVFBUDQo+IHdyaXRlIENVUlBPU19FUkxZX1RQVC4NCj4gDQo+IHYyOiB1c2Ugcmln
aHQgb2Zmc2V0IGFzIHdlbGwNCj4gDQo+IEZpeGVzOiAyOWNkZWY4NTM5YzMgKCJkcm0vaTkxNS9k
aXNwbGF5OiBJbXBsZW1lbnQgV2FfMTYwMjE0NDA4NzMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jIHwgIDQgKystLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICB8IDEyICsrKy0tLS0tLS0tLQ0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29y
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+IGlu
ZGV4IGNlYTBjZmVkNTY5ZC4uNmVhNzY2ODdkZDE0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gQEAgLTUyNCw4ICs1MjQsOCBAQCBzdGF0
aWMgdm9pZCB3YV8xNjAyMTQ0MDg3MyhzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4gKnBsYW5lLA0KPiAN
Cj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgU0VMX0ZFVENIX0NVUl9DVEwocGlwZSks
IGN0bCk7DQo+IA0KPiAtCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQSVBFX1NSQ1NaX0VSTFlf
VFBUKHBpcGUpLA0KPiAtCQkgICAgICAgUElQRVNSQ19IRUlHSFQoZXRfeV9wb3NpdGlvbikpOw0K
PiArCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBDVVJQT1NfRVJMWV9UUFQoZGV2X3ByaXYsIHBp
cGUpLA0KPiArCQkgICAgICAgQ1VSU09SX1BPU19ZKGV0X3lfcG9zaXRpb24pKTsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgdm9pZCBpOXh4X2N1cnNvcl91cGRhdGVfc2VsX2ZldGNoX2FybShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLCBkaWZmDQo+IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gaW5kZXggNjZhYjhhYmQwYTA0Li40NDE0NGRjZmIxYTMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjE2NCwxOSArMjE2
NCwxNCBAQCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0DQo+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJY3J0Y19zdGF0ZS0+cHNyMl9tYW5fdHJhY2tf
Y3RsID0gdmFsOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyB1MzINCj4gLXBzcjJfcGlwZV9zcmNzel9l
YXJseV90cHRfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gLQkJ
CSAgICAgICBib29sIGZ1bGxfdXBkYXRlLCBib29sIGN1cnNvcl9pbl9zdV9hcmVhKQ0KPiArc3Rh
dGljIHUzMiBwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJCSAgYm9vbCBmdWxsX3VwZGF0ZSkNCj4gIHsNCj4g
IAlpbnQgd2lkdGgsIGhlaWdodDsNCj4gDQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNy
Ml9zdV9yZWdpb25fZXQgfHwgZnVsbF91cGRhdGUpDQo+ICAJCXJldHVybiAwOw0KPiANCj4gLQlp
ZiAoIWN1cnNvcl9pbl9zdV9hcmVhKQ0KPiAtCQlyZXR1cm4gUElQRVNSQ19XSURUSCgwKSB8DQo+
IC0JCQlQSVBFU1JDX0hFSUdIVChkcm1fcmVjdF9oZWlnaHQoJmNydGNfc3RhdGUtDQo+ID5waXBl
X3NyYykpOw0KPiAtDQoNClNob3VsZCB0aGUgUElQRVNSQ19XSURUSCgpIHJlbGF0ZWQgY2hhbmdl
cyBnbyB3aXRoIHBhdGNoMT8NCk5vdCBzdXJlIHdoeSBpdCBpcyBhZGRlZCB3aXRoIHRoaXMgcGF0
Y2ggd2hpY2ggY29ycmVjdCB0aGUgcmVnaXN0ZXIgb2Zmc2V0IHZhbHVlLg0KDQpSZWdhcmRzLA0K
QW5pbWVzaCANCg0KPiAgCXdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJmNydGNfc3RhdGUtPnBzcjJf
c3VfYXJlYSk7DQo+ICAJaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5wc3Iy
X3N1X2FyZWEpOw0KPiANCj4gQEAgLTI0ODUsOCArMjQ4MCw3IEBAIGludCBpbnRlbF9wc3IyX3Nl
bF9mZXRjaF91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICBz
a2lwX3NlbF9mZXRjaF9zZXRfbG9vcDoNCj4gIAlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19z
dGF0ZSwgZnVsbF91cGRhdGUpOw0KPiAgCWNydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0
ID0NCj4gLQkJcHNyMl9waXBlX3NyY3N6X2Vhcmx5X3RwdF9jYWxjKGNydGNfc3RhdGUsIGZ1bGxf
dXBkYXRlLA0KPiAtCQkJCQkgICAgICAgY3Vyc29yX2luX3N1X2FyZWEpOw0KPiArCQlwc3IyX3Bp
cGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMoY3J0Y19zdGF0ZSwgZnVsbF91cGRhdGUpOw0KPiAgCXJl
dHVybiAwOw0KPiAgfQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
