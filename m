Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3A1CC7F63
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 14:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D4310ECBB;
	Wed, 17 Dec 2025 13:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCVhXDy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF3310EA53;
 Wed, 17 Dec 2025 13:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765979405; x=1797515405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2RIIIZLi88eNK+y915rETE9BkjW7muNjmurqTNLc1v8=;
 b=dCVhXDy0h9zEXKVvqc8M3yeH16sLauhFb1EH0lrNW8PSpWcfHjDLM2o6
 B5jIWVC9pX/lq9b2owMGKbPit1G0MD2bo0QEF5wXRQt0r7WGrAi1neIdl
 brlQhDs1CIKHg4zdTbSfiWd8vkJIrGMWmCtgknjyTAhjo1rI0IErKE8Mf
 AKDDE3Qzaz2H1AXq1pLoNAJGGxztAa4vYWuc/s5ddxdj6q18pnzGAMFY5
 3lPR+NmX4J9Th0Sxvd1i5HjrbjomrWxjahq5/xnGf39616wx4mQ2saVeE
 eayoHxx7EEI0o8U9qCX0osegQrug4IyGEEwmcPbnaVcPNC8iZtYvpuU10 Q==;
X-CSE-ConnectionGUID: sN1nix4CTZO36N05izEhIw==
X-CSE-MsgGUID: XE3ShW+3SteVLKgBsP5D7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="78553987"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="78553987"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 05:50:05 -0800
X-CSE-ConnectionGUID: pdLT0a6/SJyC8MATL2i4Dg==
X-CSE-MsgGUID: NPXGXDoIQUqv9m99aDNpBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="235716475"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 05:49:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 05:49:57 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 05:49:57 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 05:49:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kvdbz4TU1s8CUf96+/KW0a9lyG/WO1YqjSwhgy2zJBMkPGPMkNp8QabX5lZFAukfuHh5wC2ts54SCpKk8WBJO2wnCTrUEYjVwJQrEHfdrK2NFW+Cc1tMVcApdA4uR4UkIckKofRx+6gGSud33P3uJG/Zj2mDnDrF9w3aNyesYDIt9iPwaH/VMRb4WtIav1YzFCWY25HJd3t9KO6tYeIAf2GkdabRFNUK15t6+t+gM+X8ugC8y6ewKPj4BIoOUPL12faGcnJg0t+FHkkIjh/dwGJ3eWH3pkXIsBWBPoN6rU+ga9kg+4c+FNHgoAl5RmZMA9CH8DeH7M6USRHDf5wPhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2RIIIZLi88eNK+y915rETE9BkjW7muNjmurqTNLc1v8=;
 b=Fo+YUlC2krc/d5WJe5h2UIe5GDXLdd8GGll+z4XI5lLM4bGP0NMHTSi6lokabv4Jz+t2NGzYhIF22SqtAULW3HZQ0hYLJoXvyWopSA14iodQq41weM3XaNShojjKlBGyh3hCqXIKi2C/0gYb7Y1YXSJklw9HLKEx/8N9Ke+Z5Aks92oQoDxSLmgMg4JDcY9dqPjYxcNigQTmQLSoToEw05hQJ76F2c9NbR2iczP0G1HEc1Nj+w8jl9F0MQoMpRIgIYBaMvgnBs9QDYmv5v0e+4ClM/iwv5t5LS0i/2MTs30lY8daU6p6m1IdZ8weXSuOFiQ+FytlhhZnxS2f7zZl4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPFE5BD61D44.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::85a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 13:49:55 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 13:49:55 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
Thread-Topic: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
Thread-Index: AQHcWV1975amL5zsckiLpWCf6srpqrUmBVAA
Date: Wed, 17 Dec 2025 13:49:55 +0000
Message-ID: <d8e65d354c42eb4241c75b3c0f6b0125b5f48b73.camel@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251119135152.673276-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPFE5BD61D44:EE_
x-ms-office365-filtering-correlation-id: 18b2c6b3-4cb7-44ec-785d-08de3d73295a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ckRVN25zKzIrZGw2Z3RzNWwzTmREZCtXa0NZZ3Fqd2h0RkhjeHQ0cWV0UDZi?=
 =?utf-8?B?WSt1dDkvQ0tHMkljM3htNHNWcEdBd1B0OEVCYXZOVUdwbXFRZCtPbm5INkZK?=
 =?utf-8?B?djdGVXIyV3E3R25WcDRWMWhsTms4bjIyNGc2Q1BZdG1Vb0p5S0ZMTWlMVmNP?=
 =?utf-8?B?cCtWNWVjLzZWN3AxQ3RIaHZsUldYTDl3RWI0MkhmczBML0RHak1TWHdzRVJj?=
 =?utf-8?B?c0RBSVljOS9vOGNOdW9ET1B3YjVDWXJQbXFSd21USlc1dWZEOWQ3RVlrN21L?=
 =?utf-8?B?YmpYNnBEeWtrRVBjbEM5aGRTcm5kU215bUFOTjg5aGZLUFBQS3k1MFo2cEZE?=
 =?utf-8?B?NDZZK3NGNTdhVUhMYjQwMjhkWjRzYUUyQ28yWVpTZ1k5Y01VSUhFd055OEk5?=
 =?utf-8?B?Yi9PN2lpMTJoRU91T1d5cFVBWStzUTFqUEFGMDhUSlAwOHA3TmVteHNSeG5X?=
 =?utf-8?B?bWFNN0prS1VlcUlHMm5nN2tpYSs2Rmd1RHJUTjVFZWlXTWE5UTI3S0h6aHd6?=
 =?utf-8?B?dDl6N2pHUDJlbkRDVEo5VjhPOVBCQnROemJSY0pXVjhPU2VLUnhIR29icDlL?=
 =?utf-8?B?eXkyei91WEpZVmZkaS9NZGF1a2F4eTlDRFFWaGxSRks2T05WT2d3WnBVTGFV?=
 =?utf-8?B?ZjRkMTJXTW53dERNenBOcXd1cys3VVdjNnErRGdGQXZDdjQ5L1dLYnN3dGMz?=
 =?utf-8?B?RWlJZ2RaMmZ3bVFZVEw5cGxkNVZZQzhrcEZQUFJsSHZpcDV3ZnN6N3pXSDhn?=
 =?utf-8?B?TG9Ob3hQbHBxSTJ4Y0xMd3JBVHdUenpIR3UxdGhuMTNCOE5kU0tMYVlaQUta?=
 =?utf-8?B?MDlHcGFVTFY4RjBkcTh3ZHNGNkhDODNNTi9ZeW1YTU9acEtVWDBqd0FPS3E2?=
 =?utf-8?B?elFubWNsY2RHUUlLWGdiQ1BHSTZYT0YyaUs2eVZ6TUFHajNxcHNveU16cCtI?=
 =?utf-8?B?VG9FYmV4eE5zcVFpd2Q0NytBSnRSRktmN1BDRW5BS0xKd0V0amdrN0lNc29X?=
 =?utf-8?B?dUdpOGk1dGtQZ0Z1SmJsSWsySnZaUXZKL1h4YjI3bUVsSitPQnpnRUhuRDZD?=
 =?utf-8?B?a09ZY3VDKzZ1d3gvblBsUVhCWmd5ZXVNT3JXaU96dUNISkg1ZFVoYTQxeDcx?=
 =?utf-8?B?Zjg2dndRbXFQY1dzQkpjNDMxUXdjVjdxSXpyQThZUXE4MGNaaFY5dGQxdVly?=
 =?utf-8?B?RHdxMjE1TmpPSk9udDhTdEs4NTF6bUhBcVd6UUUyekwwOFFub3lPZUhHSmph?=
 =?utf-8?B?TlB4MVNFS3JuandGemxDeEhhSXVWQ1BUazY1Nk5YZXY0SldWOEhSUWRtazdk?=
 =?utf-8?B?UGVxYXc2M0hhUVNPNVI0eVVxUVd4ZWhoZitNd2xYcHRmZFNMK0VORnZxYkV2?=
 =?utf-8?B?L2ZzNHYrSUtzT00vMUxFZ0FNNnB4eFpEcFpmOWw5b2xQbHpHWHdjMTRtOFpy?=
 =?utf-8?B?ZDNFNVE0YlJiU09YaWh0Z2NuanRobjBIM1J3NTBaNTY0L3lhVjRQZzF0SGU0?=
 =?utf-8?B?MGw0Nk1LN1dXOCtnRlFPU2ZiWEIrV3crb29QWXJ1TGZ3QnlLM3JpaGJEWXRN?=
 =?utf-8?B?Q0N2VWlNcjN6eUtMTW9aNzA2bW1vS3pqM2w4WUozVUZINkdpRmg0Vzl3aldp?=
 =?utf-8?B?VXg1REVhSTB1SDB6em82VWwvMkh2MDIxUmdlSS9kNUN5QTVWbHlETUNtOHc4?=
 =?utf-8?B?MVFIazZLeURCeWJTRkh4bS92Rkd0akcvMytBUGN4MFBRNXdVRHoycXh5c2pT?=
 =?utf-8?B?clphODZWcks0dCt6d3ZxaUxHc0hzamw0TFUwV1I0K1dxQ0pLTzNOWnJJcDNv?=
 =?utf-8?B?QjJqaHdyTEpoZkRHaHYrUy9mUFNYczBIaXJOSmM1UmJFQmJQRG5uQXE3MzRL?=
 =?utf-8?B?R29ZZkdyN2tJMzR5RHdkL2VrUS84MEM4cllzN1hlWlZIaG9QdUNaR25CMm5v?=
 =?utf-8?B?aTVCdzRsSUcreXFmWVdoUEpqNDJhVFZPVmUvQTdnMm5rK211ZU0rV09ZbWhi?=
 =?utf-8?B?QmJiZjdSWDl2a3U1Tm0zRXBsREttUjdvT2UxNjJPVVlpazl0NnBHdXowLzky?=
 =?utf-8?Q?lORvnS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFREQTFXd0o0OGROSVV0dTJWTWdhTDBuK0hlRCs4RUVobU0rUDlsYUhqbjJ3?=
 =?utf-8?B?bzN2cnlDWENRWFZOWHRlSUdiVHJ2MXAwRU9KOVlxaXNuQkphSlAraFZzVkw5?=
 =?utf-8?B?REswU0lYeVRHYkZnS1hNejRTVzhmVFhOVHN4UHhCU2hsTWRhVVNPZ0ppbU15?=
 =?utf-8?B?N0NWaU1GWE8yaDJocEpjR25OQm0yTVkyNHZwNmw1bnNMaURaU3F2WThBMEoy?=
 =?utf-8?B?cUhNamxicFBUdFNLdmpXYVRZS0lnbUVmNHpXR2VZb25mZHZ2T0ozYU91b201?=
 =?utf-8?B?QjBJZlgwejRaMFZLRHpxU3dFVVJ5cllrWVF3b0crR0xzNEhpVWYwdTFzdzRS?=
 =?utf-8?B?R0NKV2RCdVVyTHJIQzNhb2NtVDFHZlFUOUMxWEIwUWhmNFNKWmpWam9xVllT?=
 =?utf-8?B?cW1hdGhuRlRmYnduZU9CUWcyYWo3dE5FOVY0enU0NkYwZ281L0hKSjA0UWhS?=
 =?utf-8?B?TlgzTjZodEZJM1h3bEthRUM0Wjlwa3MwMUNqbmE1eTNXdUhZRlVRQzZjS1la?=
 =?utf-8?B?dHJ0NWpDeitBZktqdkxNWW9uVE8vcVJIalZ2a3hHK0tzUXVHMnFIRVVJS0c3?=
 =?utf-8?B?WFhSQTh0MjBsWldPbzBVZVpCZUE0S1N2RURBbnhpelFad3V2U0tMakJwS0tv?=
 =?utf-8?B?OFFKYW9yRldnMlQyZmtJcFVRSWVHT0FzSkxNbDAvQ2tWbzJhMks2WXRJZFhL?=
 =?utf-8?B?Vmc4VGYrV01oMWw2d2E4RU15OFNCOExFbGR4eUlsV2tjbEtoR3Fsc2NQN2hm?=
 =?utf-8?B?bXQ1Um52TGJKZ0k3ZGFUb0hGZ0twZWRYYmJKQUpxWmtrUnRBN2tZY01DdU8z?=
 =?utf-8?B?cWVReW1LOWxhNEFOUzdtKzM3VUpQa2s5cTErNCttNTMrWElqYU9zYk9tRURk?=
 =?utf-8?B?ZU5zNGRjWkQycnFyQ0VhcUIzVldvVml6azVUYk51NWRjclpoNTBwOGZlbFlx?=
 =?utf-8?B?dE8zVE5sUThWVllKZ1JabGsrZE9vNkU3UGp3NUdqYmFlakN2VDhaSmRKRm9h?=
 =?utf-8?B?cnZHUnBkYXNYQ3NUTDgxZENFcmpNYTJRL25ha0lPV0ZrazArRjRDNUpzYlVW?=
 =?utf-8?B?d2lwaWZjUExBaVJXRy9xUXFhYUljR2h3eDFvSzkva0Z4ZUFrODNWUHNDNHQ2?=
 =?utf-8?B?dGVTR21tSzB4eEpUMFJLbGJhTWt5OHRIUUdieXFpTU5peWFLUHIrZjhMb3lF?=
 =?utf-8?B?ZVhuODg0YlR5RVRLOFFEY1BlMk1tdkpuTG1NL29FU3AvUzYyMDdKZGY5NEpm?=
 =?utf-8?B?YUQ5eE84RFIxbVd3UFhnM0lnNE5abS9rbUgyV1pEUXhCZmVVL3BQVVVvNlds?=
 =?utf-8?B?YzVOUU9ubXNhemV1TnpnS2dWbU5URlJ5Z2JCd0hVSnpYQXJDMzNTQVY1cHhj?=
 =?utf-8?B?ZXkwYWNkT1IxaE43YkdndnJDTTkvWDhncThOSnZiNWlsUVptZkVPZklCRk51?=
 =?utf-8?B?RnV1T09PUVBpLzVHZUNOdnBxeEFuT2FVeU4yWHNLMTZEamUveUtTSkV2ZWVx?=
 =?utf-8?B?ZmhSc2JJMGoxSVhQVUNKOSs0UVBkZXROSllVQlNLQ0k5azdhMXR4S1UrMFJG?=
 =?utf-8?B?bUIxYmFDTmM3TkhTaUhkMGpjVjhiT1U4YURZQk4zR2dNc28vN3FxUlQycUN0?=
 =?utf-8?B?N2pkSkNaZk1YTUxQSUtLWWV5OUdFYS9oSWx4dVlPbjh6MngvOU5yVFA3VVhG?=
 =?utf-8?B?bU5QWTY5YVdmMzVCTHpyTGE2bUF6WnprY2xrNlNBNERndTJlTzVGOUtDT2xq?=
 =?utf-8?B?Qkx6NFF0b0NMaS9VaEx1N3BLL1BoSFYwSlhXb3pnTTNzVGk5OC9SQTNtRXlK?=
 =?utf-8?B?d3pMN21nSU0vR0p3ZkhhZ1lLSkRkZVhrWXQzT3FHTkRQa2VORW5SRExTTXlr?=
 =?utf-8?B?dnRlUTViVit4Rk4yaVlKMThLNVRjU3ZrVHA1d3kyaklSVzNDK3VFVDJsS1hH?=
 =?utf-8?B?Z0FJUUcxQ3Y0Ulo5U2pSSXpwbWFnUVJEV0I3aExCdWhNbGxPUmE2TFVqTkcz?=
 =?utf-8?B?bHdpZmVHS0o2a2loNEt5MCttR25Ub3BDUjR3a1g5Vlk4cUJCT2NxZFBpZVZz?=
 =?utf-8?B?encvZ2lpczRQOFJPZXR2OEJPZEVaYWxaSEw2MzVSc0tJQ0YyWXdmTno5bEFF?=
 =?utf-8?B?dFFkaHkyRkx3S0xLaFg2VHR3Yjk1N0VhUDNtWVEzZnRIZ1dMMnpmbHpFN1VS?=
 =?utf-8?B?RGRic3l5cGZjcDJnSTY3NmwySElGQ2tkZi9wdTdsc0RjcmxMZlZ0RGpla2lU?=
 =?utf-8?B?VlZtbXRkODc5Q2dGd2hNcEFZQ0l3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <72CC93A8C94B0C4DB3FB95CCE2E8E8AA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b2c6b3-4cb7-44ec-785d-08de3d73295a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 13:49:55.7167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dV1oC9MrouorgzipdWFLfPg1lM6rPX4l+r0ALRNMczrmPSYIC93Bp9v2gb0AkxDNgatbqhIXg2BNxpOnqcHAHRcRQFQAls9qUvlVRTAYUms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFE5BD61D44
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

T24gV2VkLCAyMDI1LTExLTE5IGF0IDE5OjIxICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gVGhlIHByZV9wbGFuZV91cGRhdGUgYW5kIHBvc3RfcGxhbmVfdXBkYXRlIGhvb2tzIGVzc2Vu
dGlhbGx5DQo+IGRpc2FibGUvZW5hYmxlIGxvYmYgZmVhdHVyZS4gVXNlIHRoZSBleGlzdGluZw0K
PiBfaXNfZW5hYmxpbmcvaXNfZGlzYWJsaW5nDQo+IGxvZ2ljIGZvciB0aGlzIGluIHRoZSBwcmVf
cGxhbmVfdXBkYXRlIGFuZCBwb3N0X3BsYW5lX3VwZGF0ZSBwYXRocy4NCj4gDQo+IEFsc28gcmVu
YW1lIHRoZSBoZWxwZXJzIHRvIGludGVsX2FscG1fbG9iZl97ZW4sZGlzfWFibGUoKS4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPC
oMKgwqAgfCA0NSArKysrKystLS0tLS0tLS0tLS0NCj4gLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoCB8wqAgNiArLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDI4ICsrKysrKysrKysrLQ0KPiDC
oDMgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCA1
Y2ZiOTM0NTc3NmEuLmFiZWI3MGZjZjkyYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTQ0NywyNSArNDQ3LDE3IEBAIHZvaWQgaW50ZWxf
YWxwbV9wb3J0X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAlp
bnRlbF9kZV93cml0ZShkaXNwbGF5LCBQT1JUX0FMUE1fTEZQU19DVEwocG9ydCksDQo+IGxmcHNf
Y3RsX3ZhbCk7DQo+IMKgfQ0KPiDCoA0KPiAtdm9pZCBpbnRlbF9hbHBtX3ByZV9wbGFuZV91cGRh
dGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IC0JCQkJIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQ0KPiArdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGlzYWJsZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpDQo+IMKgew0KPiAtCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+IC0J
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiAtCQlpbnRlbF9h
dG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gLQljb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0
X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gLQllbnVtIHRyYW5zY29kZXIgY3B1X3Ry
YW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gKwlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXkobmV3X2NydGNfc3RhdGUpOw0K
PiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IG5ld19jcnRjX3N0YXRlLQ0KPiA+
Y3B1X3RyYW5zY29kZXI7DQo+IMKgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiDC
oA0KPiDCoAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gwqAJCXJldHVybjsNCg0K
WW91IGNhbiByZW1vdmUgdGhpcyBhcyB3ZWxsLiBpbnRlbF9jcnRjX2xvYmZfZW5hYmxpbmcgaXMg
c3VwcG9zZWQgdG8gYmUNCnRydWUgb25seSBvbiBkaXNwbGF5IHZlcnNpb24gPj0gMjAuDQoNCj4g
wqANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYgfHwgY3J0Y19zdGF0ZS0+aGFzX2xvYmYg
PT0NCj4gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gwqAJ
Zm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCj4gLQkJ
CQnCoMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJCQnCoMKgwqAg
bmV3X2NydGNfc3RhdGUtDQo+ID51YXBpLmVuY29kZXJfbWFzaykgew0KPiDCoAkJc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcDsNCj4gwqANCj4gwqAJCWlmICghaW50ZWxfZW5jb2Rlcl9pc19kcChl
bmNvZGVyKSkNCj4gQEAgLTQ3NiwxMiArNDY4LDEwIEBAIHZvaWQgaW50ZWxfYWxwbV9wcmVfcGxh
bmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJaWYg
KCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiDCoAkJCWNvbnRpbnVlOw0KPiDCoA0KPiAt
CQlpZiAob2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+IC0JCQltdXRleF9sb2NrKCZpbnRl
bF9kcC0+YWxwbS5sb2NrKTsNCj4gLQkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIEFMUE1fQ1RM
KGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSwgMCk7DQo+IC0JCQlkcm1fZGJnX2ttcyhkaXNw
bGF5LT5kcm0sICJMaW5rIG9mZiBiZXR3ZWVuDQo+IGZyYW1lcyAoTE9CRikgZGlzYWJsZWRcbiIp
Ow0KPiAtCQkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gLQkJfQ0KPiAr
CQltdXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gKwkJaW50ZWxfZGVfd3JpdGUo
ZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLCAwKTsNCj4gKwkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2VlbiBmcmFtZXMNCj4gKExP
QkYpIGRpc2FibGVkXG4iKTsNCj4gKwkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2Nr
KTsNCj4gwqAJfQ0KPiDCoH0NCj4gwqANCj4gQEAgLTUwMiwyMiArNDkyLDEzIEBAIHZvaWQgaW50
ZWxfYWxwbV9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAlk
cm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1JFQ0VJVkVSX0FMUE1fQ09ORklH
LA0KPiB2YWwpOw0KPiDCoH0NCj4gwqANCj4gLXZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gLQkJCQnCoCBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YykNCj4gK3ZvaWQgaW50ZWxfYWxwbV9sb2JmX2VuYWJsZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpDQo+IMKgew0KPiAtCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+
IC0JY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiAtCQlpbnRl
bF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gLQljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNf
Z2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXkobmV3X2NydGNfc3RhdGUpOw0KPiDCoAlz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gwqANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+
aGFzX3BzciB8fCAhY3J0Y19zdGF0ZS0+aGFzX2xvYmYgfHwNCj4gLQnCoMKgwqAgY3J0Y19zdGF0
ZS0+aGFzX2xvYmYgPT0gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiAtCQlyZXR1cm47DQo+
IC0NCj4gwqAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2Rl
ciwNCj4gLQkJCQnCoMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJ
CQnCoMKgwqAgbmV3X2NydGNfc3RhdGUtDQo+ID51YXBpLmVuY29kZXJfbWFzaykgew0KPiDCoAkJ
c3RydWN0IGludGVsX2RwICppbnRlbF9kcDsNCj4gwqANCj4gwqAJCWlmICghaW50ZWxfZW5jb2Rl
cl9pc19kcChlbmNvZGVyKSkNCj4gQEAgLTUyNiw4ICs1MDcsOCBAQCB2b2lkIGludGVsX2FscG1f
cG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
IMKgCQlpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gwqANCj4gwqAJCWlm
IChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+IC0JCQlpbnRlbF9hbHBtX2VuYWJsZV9z
aW5rKGludGVsX2RwLA0KPiBjcnRjX3N0YXRlKTsNCj4gLQkJCWludGVsX2FscG1fY29uZmlndXJl
KGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gKwkJCWludGVsX2FscG1fZW5hYmxlX3NpbmsoaW50
ZWxfZHAsDQo+IG5ld19jcnRjX3N0YXRlKTsNCj4gKwkJCWludGVsX2FscG1fY29uZmlndXJlKGlu
dGVsX2RwLA0KPiBuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgCQl9DQo+IMKgCX0NCj4gwqB9DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGluZGV4IDE0ZGM0
OWZlZTRjMy4uMGIyNDYwYjkwNDY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uaA0KPiBAQCAtMjUsMTIgKzI1LDEwIEBAIHZvaWQgaW50ZWxfYWxwbV9j
b25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJCQnCoCBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9h
bHBtX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJwqDCoMKg
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gLXZvaWQg
aW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiAtCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICt2b2lkIGludGVsX2Fs
cG1fbG9iZl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpuZXdfY3J0
Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9hbHBtX3BvcnRfY29uZmlndXJlKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gLXZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5l
X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gLQkJCQnCoCBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICt2b2lkIGludGVsX2FscG1fbG9iZl9lbmFibGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm5ld19jcnRjX3N0YXRlKTsNCj4gwqB2b2lk
IGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IpOw0KPiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCk7DQo+IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3Vw
cG9ydGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAwNjk5NjcxMTRiZDkuLmVj
YmRjNTA2YTFmYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gQEAgLTEwMDksNiArMTAwOSwyNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9j
YXNmX2Rpc2FibGluZyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNf
c3RhdGUsDQo+IMKgCXJldHVybiBpc19kaXNhYmxpbmcoaHcuY2FzZl9wYXJhbXMuY2FzZl9lbmFi
bGUsDQo+IG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgfQ0KPiDCoA0KPiAr
c3RhdGljIGJvb2wgaW50ZWxfY3J0Y19sb2JmX2VuYWJsaW5nKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQnCoMKgwqDCoCBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpDQo+ICt7DQo+ICsJaWYgKCFu
ZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQoNCklzIGl0IHBv
c3NpYmxlIHRoYXQgbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSA9PSBmYWxzZSAmJg0KbmV3X2Ny
dGNfc3RhdGUtPmhhc19sb2JmID09IHRydWUNCj4gKw0KPiArCWlmICghbmV3X2NydGNfc3RhdGUt
Pmhhc19wc3IpDQo+ICsJCXJldHVybiBmYWxzZTsNCg0KSSBkb24ndCB1bmRlcnN0YW5kIHdoeSB5
b3UgYXJlIGNoZWNraW5nIHBzciBoZXJlPyBJIHNob3VsZCBoYXZlIGJlZW4NCmNoZWNrZWQgYWxy
ZWFkeSBvbiBjb21wdXRlIHBoYXNlPw0KDQo+ICsNCj4gKwlyZXR1cm4gaXNfZW5hYmxpbmcoaGFz
X2xvYmYsIG9sZF9jcnRjX3N0YXRlLA0KPiBuZXdfY3J0Y19zdGF0ZSk7DQo+ICt9DQo+ICsNCj4g
K3N0YXRpYyBib29sIGludGVsX2NydGNfbG9iZl9kaXNhYmxpbmcoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUNCj4gKm9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCcKgwqDCoMKgwqAgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm5ld19jcnRjX3N0YXRlKQ0KPiArew0KPiArCWlm
ICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KDQpObyBu
ZWVkIHRvIGRpc2FibGUgYmVmb3JlIGV2ZXJ5dGhpbmcgZWxzZSBpcyBkaXNhYmxlZD8NCg0KQlIs
DQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+ICsNCj4gKwlyZXR1cm4gaXNfZGlzYWJsaW5nKGhhc19s
b2JmLCBvbGRfY3J0Y19zdGF0ZSwNCj4gbmV3X2NydGNfc3RhdGUpOw0KPiArfQ0KPiArDQo+IMKg
I3VuZGVmIGlzX2Rpc2FibGluZw0KPiDCoCN1bmRlZiBpc19lbmFibGluZw0KPiDCoA0KPiBAQCAt
MTA1Niw3ICsxMDc3LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcG9zdF9wbGFuZV91cGRhdGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJYWRsX3NjYWxlcl9lY2Nf
dW5tYXNrKG5ld19jcnRjX3N0YXRlKTsNCj4gwqAJfQ0KPiDCoA0KPiAtCWludGVsX2FscG1fcG9z
dF9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOw0KPiArCWlmIChpbnRlbF9jcnRjX2xvYmZfZW5h
Ymxpbmcob2xkX2NydGNfc3RhdGUsDQo+IG5ld19jcnRjX3N0YXRlKSkNCj4gKwkJaW50ZWxfYWxw
bV9sb2JmX2VuYWJsZShuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgDQo+IMKgCWludGVsX3Bzcl9wb3N0
X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IMKgfQ0KPiBAQCAtMTE1Myw3ICsxMTc1LDkg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUo
c3RhdGUsIGNydGMpOw0KPiDCoAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+IMKgDQo+
IC0JaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlpZiAoaW50
ZWxfY3J0Y19sb2JmX2Rpc2FibGluZyhvbGRfY3J0Y19zdGF0ZSwNCj4gbmV3X2NydGNfc3RhdGUp
KQ0KPiArCQlpbnRlbF9hbHBtX2xvYmZfZGlzYWJsZShuZXdfY3J0Y19zdGF0ZSk7DQo+ICsNCj4g
wqAJaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOw0KPiDCoA0KPiDCoAlp
ZiAoaW50ZWxfY3J0Y192cnJfZGlzYWJsaW5nKHN0YXRlLCBjcnRjKSkgew0KDQo=
