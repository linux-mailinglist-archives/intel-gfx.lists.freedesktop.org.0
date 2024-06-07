Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 118F3900513
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6FA10EC49;
	Fri,  7 Jun 2024 13:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HpS/Ma0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9DE610EC49
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717767425; x=1749303425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7Ku9FeVft5us6HZst4x5XfDPmFF5195Kpo/xfZdFsb8=;
 b=HpS/Ma0f1lojC5tLWEetQstibRJmBlYzhLIJo/54Z4FgJWSmJ5cXVHt4
 39iJR5z0haLTRxa7fWXSTgtD5UQQh+jYr0lGAPBQ93vIUf8dav4AD4MK/
 cADEiXtQnVHcKnisyQgorAlWfBo2CfA16ZlCe2m8QiHryNhya9oHrXs9O
 fQsIW7c62Bt5LtzPF5Sfqnrc1T3zRP884K1F6O+rJy7eLis+V/CVjrKuW
 NW32rZeysYnvSqpv1kLahpov+8sIhaF3SoSX0zuHpob7fY/tET0xaZJP+
 CrcdzR/IiZIfKOIQk0IUSVPxoTq4Tn1Z77H1Zd7/gsjCPFxBopa5SLg1s w==;
X-CSE-ConnectionGUID: QWIqy6stRiGZMr197+UCMw==
X-CSE-MsgGUID: Sp7aMJhxSXKK+xMV4eILLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14643575"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14643575"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:37:04 -0700
X-CSE-ConnectionGUID: hdKLm6+7TkiJkn0xDgBC/Q==
X-CSE-MsgGUID: W0cvMapZTPeXZ3sbpT/UkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="69112818"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 06:37:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 06:37:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 06:37:04 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 06:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XMFXdcecXCiWsZ/LHB2A+nOQKUB/0cJCiixGnE+M3VtReUPRZPOdFk4VG968tIbMKy5RRQoLIdSw1xr15JkqOO0EzYIs+7gtEEkKgg9EyDndjoMGp8y1s383sTqzZNf5s3PzaO7W+4MAMXRWehDY/MydgxL9HUT0yYkf8N5iKCZ+Gh/hrHWfpmCx8bcTIZxiTgzdkp5UtwXeG0JQpiN3RegZLDbuB1GxmwByjiUwJaznmBEH3/BRng418v07Q7qt4wgoyDMTcvtrYK2/swXRfT2L1QztC/Zgh0FNs0PQuErW5qlwpZ2fTrI+3J8RyOyArB/qa8FaURKkDXO2L7CN9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Ku9FeVft5us6HZst4x5XfDPmFF5195Kpo/xfZdFsb8=;
 b=Qqb/2+u07Z7QjGN2zjjUFpVT5L71fi8TqqWZ/XhkXELMXshmcVXRMAFixewa0+eEm6MrWMbup3nur/AwVxOjIEisaXaHX2VkDToFpW0Sir8rQ+7cOMswGARfg8a97qYT7+6vGyoJa4K5moCC4z8MkvBK2GvdTFZVgbc8wvmGmzXfOWJMr7xhVQunAq8o84nYWp22tHzuudCfd1I2usqhLmWZdnab0lFE5RnhCW/BcycGeqTGNgVrXNt3RpItupQCEjRM/o+MB1czPna2NlCzcKYMVH2hg7q1XaNQt96EvAkNNHHHIYfbhtd0sOgpiVHq70EFu3tQk4vvVLBIy0fpaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB7150.namprd11.prod.outlook.com (2603:10b6:303:213::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.25; Fri, 7 Jun 2024 13:37:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Fri, 7 Jun 2024
 13:37:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Topic: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Index: AQHatzLfWf8fm6o1xkS5TQuwQg1fU7G61bAAgAAL94CAAUZpgIAAJESAgAAE0YA=
Date: Fri, 7 Jun 2024 13:37:00 +0000
Message-ID: <068c33bd19cba64a9d5608730a8a4cf19ef1366b.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-12-jouni.hogander@intel.com>
 <PH7PR11MB59814F6E88C3E874C2BC89EDF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <dca159f3bc64a46aa16c47d2a058effd341b9560.camel@intel.com>
 <PH7PR11MB598151A142A3A56CC06D03D1F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <f9c5296de3cc67e20b95f96a05a6737cbd5b6bee.camel@intel.com>
In-Reply-To: <f9c5296de3cc67e20b95f96a05a6737cbd5b6bee.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB7150:EE_
x-ms-office365-filtering-correlation-id: 39679345-08b2-469d-656a-08dc86f6e8f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?M0pSdG9jNi8vNm5SMjlmak5oZ0d4MjRkVnZtSDIyTFc4a1dFUkg1RysxVmFs?=
 =?utf-8?B?RmphTzJpNGE4dFpHQVRVeWd6aE4wUGFxc21MRE5EeUtHczdtRnFFU2FucHpZ?=
 =?utf-8?B?ZklsK2czeTJvYjVYNkVHeCt3UHlRakg2RytHbkpsOERRZTNWbzBNOEtlRUN1?=
 =?utf-8?B?Z0RNNGZ6alk3T1ludWtlWW44WENhTGJFNVdldWlPQ2ExV2ErQ1RESSt2M00z?=
 =?utf-8?B?NUJraGlXVVFQWk9DcTNtQ0Z0RjRRYXVrQTBqWXdURDdpL3BKNkdTNlFycVBC?=
 =?utf-8?B?c0pZSHA2bkFOQW9WSXdtUnk2d0dwREVFVC9GQVgzcjRQQ0k2TlZpcUVaK1Uz?=
 =?utf-8?B?L2o5cXRHcnAvbXlRMTBJbU9pL01VdFlJc0t1eld4ZW1ZS1I4c1VHWmxrQmNz?=
 =?utf-8?B?WmdkUVdLN0hJZE0wZ0x5QUhWVTlBTUNQNW1QbnlzdFdYNUpWT3NCR1k5UWM5?=
 =?utf-8?B?TURWdGVWbzV1K0lnVXZybmJxaklJMit0ODIrQzMzTk1UMHpyYlNZRE1SaEpw?=
 =?utf-8?B?K2pIcERQc2g2WUpEcjZiZitNenZGWW1vTGlZR3N3aVA3ejE3dlgzSCswRnVU?=
 =?utf-8?B?RkU2SlVwTlJOeWdEMEtTTk9WUmwveWF2UzYvb054YTIvNE85NVdJOENJVVdw?=
 =?utf-8?B?SnJhOTgvejlFS1lGa0dLUTBRUlhUUmFSNVpIVW1tZ2dMclV2RkNYeHI2aGxm?=
 =?utf-8?B?N0VnSk8wZ25uWGZuZG1weHpOSzhSVkUrL2ZDaTZGVkZRT3VJdG1QbDFIQ2dv?=
 =?utf-8?B?Rk1WY0IzeXhWY2V2cUQ4Q3VqNUQxalU1ZDZPWGJPR0xEakE5YTluZnVJNTNC?=
 =?utf-8?B?RURTUGR2aXVob3hld1JueHBMcTNITXc2SWg0b2MwNlRBOUhVY3hkdlEvQVc1?=
 =?utf-8?B?QytSbEtxYmFacG5EMFVzUy9VM1YrRlFMMWJDYlFWcWY0ZGIzSGwyaDlhc0kx?=
 =?utf-8?B?UjdlQ0pvUDJSVWFTaXV1Y21VWHhycG43OVlsVkJ2Z1JSVE9QYUdnTStJcFZO?=
 =?utf-8?B?UTVrY2VUNXM5U3l0dDR2OUxzZjdqR3RabDFQY3A2SGs0d0VyWGN4a1YweDB5?=
 =?utf-8?B?WUREb09ZTFl5YXhybGdlOEJNNmkwRWVGL2x0MnVnZHBQZVhJaWxTSGhlWjlL?=
 =?utf-8?B?NHdkY3N1djVZMlF5L294YmlUdG5ZTnF4RFRvQllneXhobmVVQVRCc3czVUhF?=
 =?utf-8?B?eTJ6cEdFYXhxL2VPVXVVa1JqUHJHWVNUdjA4QldxNjJUSFhsV0xaTDRaTnBa?=
 =?utf-8?B?QWFQZlh2RHFhbjdNN2NaUXFQalR4L21TQ2FieVJucUZRQXR0YlcxL0ZlT09C?=
 =?utf-8?B?RW1yMFVhM1JMcEpXTktsdzJ6b3pHTHljY052YmNFT1RlUkkrZjBNY283S0JX?=
 =?utf-8?B?eXdHN0lLWjA4WlZDeExEN3AxaDU3a1RJRTdzcjVKWDZoSC9tMld6Q1RKVmlU?=
 =?utf-8?B?U1l0dDNhRjNuVmJUZW9mTHZCcUpJODNybU8xRmQ0bHJHckFIWEpQMStxeTlT?=
 =?utf-8?B?cUYyc255ME5LYlc4THlOd25QNHlFcU1GK00zTzJENFdNMWVpWkVwQzNUc01G?=
 =?utf-8?B?Z0pjdDZ6bmZucHlycVNmUXcrU1VvbXVoYmJzRnFyc3hlZy82ZHJxTnlaTm1o?=
 =?utf-8?B?eTZLeE8raFpmamFQMlFzZVg2QlJaeUFITTJyZ2l0a0dmMGZ4SHRmVnNOdlV3?=
 =?utf-8?B?WmFCLzNBV2pCOXVxQnd5SWdPa3RmV3VWODYydGwzZjBHODEreTVZR0NsbzBZ?=
 =?utf-8?B?ZS9DVTNuSzBYZU56amtNTlY5Zkhna2wxWkYwWVBLZmFxYXEvQlNoRTUrN2pq?=
 =?utf-8?Q?+De814vFPSHr0YaCEssPV33YDjSo+xqCZjPIY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUFjQlBHbzN4eXNpeUdqUml4R3lHZUlZZDU2TmZ6S1FLOFNSSGNORE5OVXpk?=
 =?utf-8?B?Sk4zcVZONVFDeTloQmprSWx1ZHdNWjB2U2w0NEY0aTV1NVF5c1pxck1vbnho?=
 =?utf-8?B?U00vZUlscHpuYk1nQ0c3T0tDeVUrR2gxT2dTcmVTTFdoZ2RYd053RVZXaVlW?=
 =?utf-8?B?MjFRY0JVRE5tNkpVVkZsMlc5RFBDd1NoQXFUZmM0YmNxNUcwcnUveFgxOFRz?=
 =?utf-8?B?T2QwUDhFdFFSMUZLOFRGUkZEOXBWREJsazk0Y1VWZitCenNFZEN3L2VKdHd6?=
 =?utf-8?B?bjJQZnNLMk9VeGU1Z3B2YitQZ3VZeGhLcUQ0dTNVTW9pTjZLUytNNXd2L25V?=
 =?utf-8?B?UzNJcTVmVXdkNGNkUVZyRGZPeGNTbFhVNGZReUVsaUJMbGJyNHI0TURYWkxB?=
 =?utf-8?B?bGMyUjJBSGQ0NlkxaVpWVkpPSzEwOWoxdUFoVTRqNmJCekVMdExKcFFvbUpm?=
 =?utf-8?B?T1NtbXlUMUg1OERKcU1hUG1IZVZwSUF6a3NOQlRzYklYR2xJWkY2WStuNEFL?=
 =?utf-8?B?ZGhBWW5mNFlyQkxiWXFXWGhMM3pJOHpmTHk1VTBRdkVLSjZ0SmdidDZOUWdN?=
 =?utf-8?B?Zm9BSmkzakpGU0pmYW4wcVhENERrRkxDamZNV09XUW5SS2pWUWQ2TnpBcDM4?=
 =?utf-8?B?M2V2UTg0UDRjTzloZ3IzQVdyUm92WW5DMTFnSU9Ndk1FSEJVcDdUTXFGUjdr?=
 =?utf-8?B?c3B6ZDMzbDBneWREYUJJRk9EMW9yOTY5dnhIZjBBSTJXQWFDZmN6Yk8vN2hz?=
 =?utf-8?B?SXFSZ0YwRGtMQTNwaEdIRFFVWSswT2liWi9LTXk3NFUrOGc4RzhyczdLbjM1?=
 =?utf-8?B?OWhObTYzYkRMTFNOejM2dzhEbklNRVlORyswRzNNZUZvdkJXSG9CMFdGaDMr?=
 =?utf-8?B?Mm45aU5MZVNMTHk5dlhzQmZ0VmpPTDhZQ1VHUnN5SHZ2WENpd1ZWVUc5cjJq?=
 =?utf-8?B?ZGVEajhPMWI3U0tjbGo5dHBDbjVRNW9tVGJ2WVB5eG9aZVo5K3ZXMkpPbG1k?=
 =?utf-8?B?ai9ZYkRWcHJEbi9NenVVRnJ6QjJLYzRoL1RFS2pPQjJWcUFRRHg3YWx5UHRK?=
 =?utf-8?B?YUk3Q2NVM1VQZmMveHhlcFlDV25CeGdjV0xiMHV4cnEvVFFxb2FERkc3ZHlD?=
 =?utf-8?B?QlpBME9jMUN5Z3B2bTFHNlBqcGtleDRlMjZMOVRSd0FaSnhTMmZSZVg1WmZj?=
 =?utf-8?B?djBVSU53VFRhWG5KNTM3Mnh3YnAxWllFeDJyaGhxcUExZy95RENjNG8yVHlY?=
 =?utf-8?B?dDlaL3RzVkp1WVNBR1laZ0JDYzNwSGgraVhlZW5PTTVpNjQ1dE9NWDZ3c1NC?=
 =?utf-8?B?QkFjdGp2emhqYk5VZG5WRzJUOFNaMzlwL2M0bDJIZkZmTGhwcEk4LzhXLzBv?=
 =?utf-8?B?Z0tDTEUvb0dMcHY1NzEranhnbFhyQWJGcm81TFMwWUdNd3VYb1VoWEw0ZnZ3?=
 =?utf-8?B?TGhJSitIT0IzK3h5SkdQdzZhMURMcjZtWG1QQ3NuY3d6VmVYalFQNlhTbmpX?=
 =?utf-8?B?bWZjcUUwclJaNTk4VUR6L3NSQ2NqbjQzWTI5Q1Fjdjl0S2ZNV0pma3o1TmV4?=
 =?utf-8?B?d2lLYjZEVUxYYkFSSklkelRBYXhkaFdWWDZ3SHQ5NkxJdTJXNXNwdWJvVm5s?=
 =?utf-8?B?ZEUya1l0NXlsay9kazZFbGpMVmUwUG8rMW9OYUJBSnowV0N6elUrdWRENEti?=
 =?utf-8?B?OHFrYlh5cXgrRVVxUk9sMFYwVGtweHlKdzNQeGE2ZXFHOHEzeGYya1MvUWJa?=
 =?utf-8?B?RnQ4UVEwdGhoMkpUcTVWMnFKcDFLZzE5ZnMzRGZ2emJqWGgwRFJmV1B5dzlk?=
 =?utf-8?B?TzZ2c0F3OFBsQzNPNFlPS0YzeUtwejZwTkEycmZ0Rzd5amlCK0NJeThVUVBN?=
 =?utf-8?B?Nm9teU1LUkJaazBRdVAzdC9pMnhmRWc0NERCVXgrNEM4d2hMbWErQzZ6amhx?=
 =?utf-8?B?VDVlWXU0QUdQNEpLVEdiTXRVM3FUS0NsNGUwRjhBaGR4U3hCbU9kSERWOUZa?=
 =?utf-8?B?VGt6STI1c0NLT2ZWNm5XSHE0RytrVlVBNXhSSHlsTVB1bW5RSVBqR2t0SC9Y?=
 =?utf-8?B?V0tXdmZ1Vng2OVpmU2k4R1B6Y0Q1QWN1dWp3WjNCbzNvaWpxVlZmQW1jamF4?=
 =?utf-8?B?bG5vT2l1cWZEWHJGUUhlcVZqbUNBMFppSXM2QVhrSitxMUd3TGM5aDlPSzA5?=
 =?utf-8?B?UXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <39F7B59091621847BD6DD91C28302804@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39679345-08b2-469d-656a-08dc86f6e8f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 13:37:00.7660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A5PAqrtikj8RFBSftIrV1cJ+TVRKi0b7a4lnReYRP1rWq4GF9qsWzaXR+qeITXIzheq3lxt2UcocH5Q35j8E8lcACSyIQKudm7W+2AT56ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7150
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

T24gRnJpLCAyMDI0LTA2LTA3IGF0IDE2OjE5ICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNC0wNi0wNyBhdCAxMTowOSArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3Jv
dGU6DQo+ID4gDQo+ID4gDQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4g
RnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiBT
ZW50OiBUaHVyc2RheSwgSnVuZSA2LCAyMDI0IDk6MTIgUE0NCj4gPiA+IFRvOiBNYW5uYSwgQW5p
bWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiA+IGdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjYgMTEvMjZdIGRybS9pOTE1L3Bzcjog
TW92ZSB2YmxhbmsgbGVuZ3RoDQo+ID4gPiBjaGVjayB0bw0KPiA+ID4gc2VwYXJhdGUgZnVuY3Rp
b24NCj4gPiA+IA0KPiA+ID4gT24gVGh1LCAyMDI0LTA2LTA2IGF0IDE0OjU4ICswMDAwLCBNYW5u
YSwgQW5pbWVzaCB3cm90ZToNCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDUs
IDIwMjQgMzo1NiBQTQ0KPiA+ID4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gPiA+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT47IEthaG9sYSwgTWlrYQ0KPiA+ID4gPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dh
bmRlciwgSm91bmkNCj4gPiA+ID4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4g
PiA+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMS8yNl0gZHJtL2k5MTUvcHNyOiBNb3ZlIHZibGFuayBs
ZW5ndGgNCj4gPiA+ID4gPiBjaGVjayB0bw0KPiA+ID4gPiA+IHNlcGFyYXRlIGZ1bmN0aW9uDQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2UgYXJlIGFib3V0IHRvIGFkZCBtb3JlIGNvbXBsZXhpdHkg
dG8gdmJsYW5rIGxlbmd0aCBjaGVjay4NCj4gPiA+ID4gPiBJdA0KPiA+ID4gPiA+IG1ha2VzDQo+
ID4gPiA+ID4gc2Vuc2UgdG8gbW92ZSBpdCB0byBzZXBhcmF0ZSBmdW5jdGlvbiBmb3Igc2FrZSBv
ZiBjbGFyaXR5Lg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4g
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE4DQo+ID4g
PiA+ID4gKysrKysrKysrKysrKysrLQ0KPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gwqAxIGZpbGUg
Y2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ID4gPiA+IGluZGV4IDM1MzBlNWY0NDA5Ni4uMjNjM2ZlZDFmOTgzIDEwMDY0NA0KPiA+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gPiA+ID4gQEAgLTEyNDMsNiArMTI0MywyMCBAQCBzdGF0aWMgaW50DQo+ID4gPiA+ID4gaW50
ZWxfcHNyX2VudHJ5X3NldHVwX2ZyYW1lcyhzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBlbnRyeV9zZXR1cF9mcmFt
ZXM7DQo+ID4gPiA+ID4gwqB9DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gK3N0YXRpYyBib29sIHZi
bGFua19sZW5ndGhfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+ICpjcnRjX3N0YXRl
KSB7DQo+ID4gPiA+IA0KPiA+ID4gPiBBcyB0aGlzIGZ1bmN0aW9uIHNwZWNpZmljIHRvIHBzcjIs
IG1heWJlIGdvb2QgdG8gaGF2ZSBuYW1lIGFzDQo+ID4gPiA+IHBzcjJfdmJsYW5rX2xlbmd0aF92
YWxpZCgpLiBPdGhlcndpc2UgdGhlIGNoYW5nZXMgbG9va3Mgb2sgdG8NCj4gPiA+ID4gbWUuDQo+
ID4gPiANCj4gPiA+IFBsZWFzZSBjaGVjayBwYXRjaCAxOS4gVGhhdCBpcyBhY3R1YWxseSBtb3Zp
bmcgdGhpcyB0byBiZSBjb21tb24NCj4gPiA+IGZvciBQYW5lbA0KPiA+ID4gUmVwbGF5IGFuZCBQ
U1IuDQo+ID4gDQo+ID4gSG93IGFib3V0IHN1X3ZibGFua19sZW5ndGhfdmFsaWQoKSA/IHRoaXMg
ZnVuY3Rpb24gaXMgc3BlY2lmaWMgdG8NCj4gPiBwc3IyL3ByIGFuZCB0aGUgbmFtZSBzb3VuZHMg
Z2VuZXJpYyB0byBtZS4NCj4gDQo+IE9rLCBJIHdpbGwgdHJ5IHRvIGZpZ3VyZSBvdXQgc29tZXRo
aW5nIGVsc2UuLi4NCg0KVGhpcyBhY3R1YWxseSByZXZlYWxlZCB0aGF0IHBhdGNoIDE5IGlzIHdy
b25nLiBUaGlzIGlzIG5vdCBTVSBzcGVjaWZpYy4NCldlIHNob3VsZCBjaGVjayB0aGlzIGZvciBl
RFAgUFIgZnVsbCBmcmFtZSB1cGRhdGUgYXMgd2VsbC4gSSB3aWxsIHRha2UNCmNhcmUgb2YgZml4
aW5nIHBhdGNoIDE5LiBIZXJlIEkgd2lsbCBjaGFuZ2UgbmFtZSB0bw0Kd2FrZV9saW5lc19maXRf
aW50b192YmxhbmsuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gQlIsDQo+IA0K
PiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gDQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+
ID4gDQo+ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gDQo+ID4gPiBKb3VuaSBIw7ZnYW5kZXINCj4g
PiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gUmVnYXJkcywNCj4gPiA+ID4gQW5pbWVzaA0KPiA+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoGludCB2YmxhbmsgPSBjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID4g
aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19lbmQgLQ0KPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID5ody5hZGp1c3RlZF9t
b2RlLmNydGNfdmJsYW5rX3N0YXJ0Ow0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGludCB3YWtl
X2xpbmVzID0gcHNyMl9ibG9ja19jb3VudF9saW5lcyhpbnRlbF9kcCk7DQo+ID4gPiA+ID4gKw0K
PiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoC8qIFZibGFuayA+PSBQU1IyX0NUTCBCbG9jayBDb3Vu
dCBOdW1iZXIgbWF4aW11bSBsaW5lDQo+ID4gPiA+ID4gY291bnQNCj4gPiA+ID4gPiAqLw0KPiA+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICh2YmxhbmsgPCB3YWtlX2xpbmVzKQ0KPiA+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+ID4gPiA+ICt9DQo+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+IMKgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFs
aWQoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gPiAqY3J0Y19zdGF0ZSnC
oCB7IEBAIC0NCj4gPiA+ID4gPiAxMzMzLDkgKzEzNDcsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9w
c3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgLyogVmJsYW5rID49IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlciBtYXhpbXVt
IGxpbmUNCj4gPiA+ID4gPiBjb3VudA0KPiA+ID4gPiA+ICovDQo+ID4gPiA+ID4gLcKgwqDCoMKg
wqDCoMKgaWYgKGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kIC0N
Cj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRf
bW9kZS5jcnRjX3ZibGFua19zdGFydCA8DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
IHBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxfZHApKSB7DQo+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgaWYgKCF2YmxhbmtfbGVuZ3RoX3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKSkgew0K
PiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sDQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IyIG5vdCBlbmFibGVkLCB0b28gc2hvcnQNCj4gPiA+
ID4gPiB2YmxhbmsNCj4gPiA+ID4gPiB0aW1lXG4iKTsNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+
IDIuMzQuMQ0KPiA+ID4gPiANCj4gPiANCj4gDQoNCg==
