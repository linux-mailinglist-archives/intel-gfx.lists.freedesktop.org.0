Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E2BCB2EA6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 13:38:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B525B10E713;
	Wed, 10 Dec 2025 12:38:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7xvt7Ch";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2681C10E713;
 Wed, 10 Dec 2025 12:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765370291; x=1796906291;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gaPOMcFfz1h7zjChwdiLPnLr8kMgumo3URxs1JJG2Rg=;
 b=A7xvt7ChIQbP4yi2fTVmQ4EUy6EcJ9I+SS4jdOZuS5Pv2ve047EAO6oC
 xZrARiRqASoi5SOyYikHVJl5Ch3BxrqnE2sa5lxTIpheMHr2oRUsJohUN
 wcuqXAh9G85VeLP2LKbTEL2QqzEZhuKGAP3XP0+k1iAo0++beITrgpQ+N
 cDjnKB4Ldq36pt4toABugGg5cO2xsssuu4gSuJlmAvJp1lYwLy9f++fnx
 Q5cKsLk4PwyxjjnqM0EnmL6WYerE0QdxDRWGQ8QcsMsAKJjeZALtFDpwJ
 4YrE49DbDAMVepeNtUlbQtteJBBHXszwKgkxyGR4SrADnYOOt/X83XJiv Q==;
X-CSE-ConnectionGUID: Z4VdHmnsTw6Z7Fjeij7dBA==
X-CSE-MsgGUID: umM01OI4Q7SxVcATRArpMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="77659157"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="77659157"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 04:38:11 -0800
X-CSE-ConnectionGUID: YcMquPX2QhCvAhbXzulRag==
X-CSE-MsgGUID: hnd8RkTDT0GeGwvRWNjzBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="196255009"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 04:38:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 04:38:10 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 04:38:10 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 04:38:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R/TkU3zKSMFri0mNMk8Qvr93aW4+HGgE7n4vL5pMNaVBotPk8atF7pozjb+ZWaA3ut/Sl3UX3ILBkqd2qBoo2N4FhiSlqKAXUPX929MJwAZiphoNETbOO3upvoy91yLtXwjrKfPcB/yW4sfeL7KJCXBnS9m7JVgE7XlAR6h64pn+1eloBCxFP8Frr7UqXHKeiGpsA5KZ5/ZcbM9nhl4D6q2dCHx153rqYnJWQKhnOil3QeVwAeG1Gz+SonTjWeUhYOj0J8nPvcpn65r8M/PH6HF8GZ923i8PsvwVOTnyL0t0lBWVdPv9UB58v6ggocoHY0UPIxtPJo4kV1kvsOFcDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gaPOMcFfz1h7zjChwdiLPnLr8kMgumo3URxs1JJG2Rg=;
 b=sQcrhZLFcGwWvNSETmiwjZWY27oHInqbD1i6un2TqbXtTH8VkDj9QVQ7nWPVjAittM0+imXy8LU7XvAKbLhNGIsj6n8nMLX3w8EP/cw6iesonWMpahp/jNA0qHYv2Lkx711q+9GcoX3EiGddFz8BDepzzD+yvt0hBpHsg00xq9O+1eNuDDHMqQ8Hli8Pq5WKHB+V9drTe0LiyN3rY8P8N11NoTf2W150s+olCKUt++dyGr4BXEX6m5tyv7Vm1yE9/C3yu166YjYluBGZVu/mjs2cEqIgl0SxtyOmKq/54a11T3d1zol9MAs31lzGzrorFCkCkNWMFXmOKiQJFaOstg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB8099.namprd11.prod.outlook.com (2603:10b6:208:448::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 12:38:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 12:38:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 45/50] drm/i915/dp: Simplify the DSC slice config loop's
 slices-per-pipe iteration
Thread-Topic: [PATCH 45/50] drm/i915/dp: Simplify the DSC slice config loop's
 slices-per-pipe iteration
Thread-Index: AQHcX8em6VxRmxBzm0ilwLSo7sH3C7Ua5BeA
Date: Wed, 10 Dec 2025 12:38:07 +0000
Message-ID: <8ac6941a70c946b63dfce8641d22f89ecd0e392e.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-46-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-46-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB8099:EE_
x-ms-office365-filtering-correlation-id: ce433b5e-a777-440d-fab9-08de37e8f869
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VE1QcVFqN0R2UGhaSVc1aGIydHBCQllxS1c2Q0gyaytScWhGaGRrVXlSYUNa?=
 =?utf-8?B?c01OdkNoSzlzSDd2VkZsZ1J1WWp0eU9tL2RHQStoQ2l3NTUxQ25KQWdqc0RM?=
 =?utf-8?B?em05OFoxeVJXQ1dWTjJaNTdtNEIxVGhyWnhzV0w1dXNaUTBxcFZiYUF2eDdj?=
 =?utf-8?B?ejBSOW8yZWVhMHpYL2tYSlJPRTBxZ0U2aElVNi80SXRkektTV29KbS9XN01H?=
 =?utf-8?B?YW1ZNHBxOXZTL0lqdWNiY3ZVS2MzYUtrQ2lvclQ0MUZWNkVFYU8ycDlUTU1s?=
 =?utf-8?B?OTdxTFdJSHZZK29nZXB3OGF1K3gvSnVJaHlOUmhkdkNLU09nRDhMem9oMkIy?=
 =?utf-8?B?SEVRaGRwdTQ2M2l4OWxEdS9lUlg4ampndlV5bHIrUzZkUEVjbG83cklBb0pv?=
 =?utf-8?B?aUhxMGxzdlRGSXhQbEhxdXZxV1FVUjd6UituNVpqSHR3U3pxZzhQU3BCNjBY?=
 =?utf-8?B?b0FsOERJcmgwZHZFdERHYm9sU3pMcFhoVFpTS3hDNnFUaTZua3BBL1JiV1Vx?=
 =?utf-8?B?ZUZpRVpsQ3dLd01JMXA2MmcxVHB2WjlVbit3U1Uwc1JDSVdNMHhwc3hCNHdL?=
 =?utf-8?B?SDRMZ3FINkhTWFRCNzhTa29DM25EWFNuajdYQkJBZlhKL0F6S2JlK3FYK0Vi?=
 =?utf-8?B?WmFtTVFuYnZwM0dVWFlMZGlGWHAxMGR1L1MrQ1l1Qy9Bdzc3ekVQYzBsdWFr?=
 =?utf-8?B?eE1VUTZtUmlIdjJLNlFHLzY0bzRBK1NVQVRtK01pQldyWDVIbzZsVEcyeGN2?=
 =?utf-8?B?VmZZOFRJMTNsNXhOVVg1aDR6eG9tOEtLOTV6dGN6K0FYYlI1c0JqbE9Sakpz?=
 =?utf-8?B?MW0xalovaXUzS21ubkU1Q0xMZTBIbG1COVdYM0xnenkzY0ljZVhlMXV0eWRW?=
 =?utf-8?B?TWlwQ1ZCQXVRRDl1a253N0I2RXcxM1FQQlpkVkg3c1RFbkhTQkhWejBZbVYx?=
 =?utf-8?B?TG5qV2dwUXlYTGFUNW1nOU1nQ2wycWtEUTFTVW1Oa2NBSXhBbGZBYlh5MGpQ?=
 =?utf-8?B?UDVWWjVESjloM2FnQitxYmhJa0hKQlMvT21lVk15SkZDQTBjVGJMSnFsL1Nq?=
 =?utf-8?B?Z2RjY2lOZlkrVytUM281TERtZ04reG1yRWdOQ3MwWEI0WjFoNlY0UnYxWUE1?=
 =?utf-8?B?ZmNpcktDdXM0TEhhR2FnNGlLNzZBWHEwNHVlMVRnR0hwWjdKejA0bE1jTXhj?=
 =?utf-8?B?aVJKb282ODhQWWh2Q3U3VVNqNW1uV1UzZWd4cnJWQmxDVW43QWQyTjFZQm9F?=
 =?utf-8?B?YXYzcThzRXNZYkVNbkVqRTJsUE1UYmRpT1JrWC9LK2Q4UkJPNHlJZ0dUT3p1?=
 =?utf-8?B?SWhZVmRLK2JyWWlBMk84QllybGdDYWk5Rk0zMDVPam5wdVBlVnZ3ZHRKSGFx?=
 =?utf-8?B?ZGpwSlE5OWUzQWFkRXZnanc4ZzRFVDh4aUU5UjJhRCtVVVl6SGUvdDR4T1FZ?=
 =?utf-8?B?VXltMzFqVjFMQkZGM2Rya2dQeVhvQ3lTZ2J1YUN3QUF1b1h4SFlJWlJ2VWlx?=
 =?utf-8?B?djNQTUk4aVVsakZpREUzN2dWWENFUkN6ZEEwY2FaeWRYRkxaY1BURW9TcURi?=
 =?utf-8?B?cDhSdUNVTEZLS0VoenhTZTVsblJJREpMU3J2UEVBZWpqcDhtM3RuYVZORytm?=
 =?utf-8?B?U1Z1R3YvelNNNEc5elJZbDFUNWZyZzNBZU5LMmc1QnpxL1RyZHJOUEQrWG5S?=
 =?utf-8?B?TitpK0taU3AvaU5aMElBWEx3TE53c0IzM2Q2NTAyNzZDZXNDYVdpb1J2bytj?=
 =?utf-8?B?Q3FlbXFodFY0UUFqUCt6M01zYUp4ZGl3MzBrei9MV1J5QXhCci90YWVxN3Bp?=
 =?utf-8?B?M2RvUlhhWE9Mdmo0SEJYK3lXeS84V3NwMFVlUithZkhSRm1zMkxKR3RSeTF5?=
 =?utf-8?B?THFKYXlPTnN5YWFKMjJDZHo4Nk1WaGNhWmJMZ1ZxRW9qZEIrNkEwNlptb0ll?=
 =?utf-8?B?M0UrK3ZQbDM5SC81eTk1bEhCVis2SjlVRGxGRGFCWUp6WHVHOExRb3BrbFph?=
 =?utf-8?B?QkEybHdSSng2RytqSm10RDNRUDRSVFNKb0toYldSeVlqTXkxbjFDS2dPZ3pQ?=
 =?utf-8?Q?7dL/01?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cForc1lScW1laEJ3c0JTNGdLR1FJV3BwbS9DZkViOEhFWmJjdWVMUmtuUGdO?=
 =?utf-8?B?RUgyd3FMNHhEMXpjV0JxZjdxRnJuUThJY3c4a0lZK01ncDgzRmFuSE5WUEp5?=
 =?utf-8?B?Wk5ZbGRzcG1SK0JpYzlGUnhUWlNIdllCOXNJMjgvUm9USllnMTNndkZGZ3k0?=
 =?utf-8?B?NHkxQkY2RTdBR3ZwSFdlRDlNSHF4MHh5MWw5ZnRBZkszSnBUQkQ4czJyUHI5?=
 =?utf-8?B?T0hIWGllS09wZ1hlRUptUmJXc3U1TC9xSmY0UVlOSU1NTUVTdCtiZ01ZVzlk?=
 =?utf-8?B?Ym5scVdtd3lJb1Z4bWRCaWsvbmNjNElrWHhtb0I2YTloLzlpVUNiUmVOMnB6?=
 =?utf-8?B?cWwybEd6MUdWOWVydEs2d0IrZ1cwR3gzaWt0bmI0SVRUR1REV1RqMG5vTlE3?=
 =?utf-8?B?dTh1dkE4Y2t1blBoMmczS2hJT3NiRGtuVkFaVk5TZy9heDVMQkFTWDZyTURl?=
 =?utf-8?B?cUtFNTZOcEs4cVM4OEFxdnB0NVcyVU5zZmlCbjdTVldqSnNVY2l3UnVJUXpG?=
 =?utf-8?B?RkN1SUpFWmNwc1dQTzBNNUZBYWVtak5IUjcvR0MxYklDYkVyUUFlYUxmOW44?=
 =?utf-8?B?Ulh4RVljUjFBZnROa3lHS3NBaHo3emVJbXVpZDRpY3RGUlc3eDF2RytWVHdz?=
 =?utf-8?B?Ty9nVWNhWnpQcFJpcGVRenZRWDRTR0VGSHVyVDQwbUt5L2lSNE9oQmVWaGZE?=
 =?utf-8?B?QTNjMmhXbnZzU2hXTGxiVEVVZllzWG1TaVoza0wxcU9QVXZ6cmxmU0pmcjRF?=
 =?utf-8?B?eEdsOGhSM0w3bktSbXA1SWZoZHN5RDBsT2xPbmZzMUt1eHVqZWswMGplakdV?=
 =?utf-8?B?YlhlWlFjL2dOOTJhcUl0clJtWjdMTTZDN2JxTW1pcHo3YjR3NnMrdGFSTkpl?=
 =?utf-8?B?YjJJL2xOTjB0VVo4QmlqWEtRc3NTMkhGekd5TVdCNExyYmo2YzF0bVJOT3Nk?=
 =?utf-8?B?bktPVE9SUkk1d3dvNXFab2VnaGFZcUpQNEhUdjdDU1ZuSzR4a3R2NEF0UkN4?=
 =?utf-8?B?V0JWTUxsZ0xSYk9vV0VzbHBpbjRyMjhCeXFaSkE1QVBNbWVHRythUWthZnht?=
 =?utf-8?B?dWRXczd3WXpXSkYzL0Z6V1hTRXJzOUN3eHFQTU1tRUtobzRMdjFiby9OWGxT?=
 =?utf-8?B?WlhxRkV6WjBqVzl1RDRyNkwvY2thUkJ1TmlsTWRBU1BSUlZza3crV2Y3M1Qx?=
 =?utf-8?B?MWFWeWFkQUFmT3d0b1RXNUwyS01zZlNIT3pCTi9BelM5ajh4RjFBSXJMTzZV?=
 =?utf-8?B?ZUxLM0cvYXBkVktHNmdRVnNDNStROHRjbDVFMnlTa2xvM05RUGJudmRRTEhy?=
 =?utf-8?B?akhxQ2xsdTRyY0ZyZHkzZGl4ZUpWUFpkZ1Q0MmFpU21lNXEyZkxjQmJJTUJK?=
 =?utf-8?B?NHFobUNVelFhenNYU3RVVk1NUVlHazZ1cURXaDl3VVE1MUdMcDY1VGMxZDUw?=
 =?utf-8?B?MzMwY1VsVFBFbG4xT3lQRWlhK0lvcWh5NG9nTVI0VDF5cEFaMkxBSFpLdm1h?=
 =?utf-8?B?RFMwTUNHVENHNUoyY3hzL3ZWNmdHLzhaM3QrUGF6cGppcjViTmNUUVd0WVRI?=
 =?utf-8?B?TVZ5MWZVWjRzSXFRaWJ1QmpHcW9EdDVHYWJYSGVqUTBZbEJZV2Q1MzNDalZw?=
 =?utf-8?B?SzBMb3BUcnRQc2NTUlVob2VJQ1B4TURpc3lVREFaZXpPaGVNL21nd1VKenU5?=
 =?utf-8?B?b3BPaGY2NnVTQU45QnR1YURjK0ZjWGl5dnBDM0ZZalZ3UnQ5N3N4NVZWQVhl?=
 =?utf-8?B?REV0ajQ0aGdZcExkd25ETEQ0OU1WV3V0VWx5WWdXeXl1N2hITWpXSWw3UFZm?=
 =?utf-8?B?U1BLUnUzVm84NFA0dnBxRWY0L3FNYkl6cTFad2JXdm80TVBqS3g4N3dBOEJm?=
 =?utf-8?B?d1dudWpic1VJbzZkSlRXTVdseU1YZytuT1RrNDJHVU1zSXByV3ZKMmNWM2tu?=
 =?utf-8?B?REpoazg3Z2VIekQ5TURYQXdJR20za3k2Q2RUQTFzSVFRQ0ZWa0lhN0pDVEox?=
 =?utf-8?B?OUlPUGRBTHAwdnBiU1B3aW0vaWRIRG1yY2NoajdvdUxzVjB1RklvazJNM3ZQ?=
 =?utf-8?B?NStVUW9yZ1JVb2JwNEZ0UW5zVGRvSUVxVHFvOVFNSWRYNGVzVm9ybnI1dEtX?=
 =?utf-8?B?M05mdHIwcHpKeTEzRGQ1bHlvU0FoSFpTVXNXQjVyZ3MxekY2Skg5c2hUVU13?=
 =?utf-8?B?VmY1aGtGTkc1dm5Ubmh3SG1yNGVwQ3BtK3FtclNLUUJxRXozcUd6VUhudXVw?=
 =?utf-8?B?ajlZMU9Mc1JlajRrTS9ZRlZidmNnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <139372E9B8669C4B8D97CEFBF763AED2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce433b5e-a777-440d-fab9-08de37e8f869
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 12:38:07.2575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GbaIHd8Tdvt3iijkjPEUe6t92DCAtp6DbJKrF/6c8XaUUGcfjgdbM2Kv5yNjzqZ7GXWON0MGGFqV2xS3HHgnP+JQpXMxoOA+E+Du3E3rrHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8099
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFNp
bXBsaWZ5IHRoZSBzbGljZSBjb25maWcgbG9vcCBpbiBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2Nv
dW50KCksDQo+IHVzaW5nDQo+IHRoZSBsb29wIGl0ZXJhdG9yIGFzIHRoZSBzbGljZXMtcGVyLXBp
cGUgdmFsdWUgZGlyZWN0bHksIGluc3RlYWQgb2YNCj4gbG9va2luZyB1cCB0aGUgc2FtZSB2YWx1
ZSBmcm9tIGFuIGFycmF5Lg0KPiANCj4gV2hpbGUgYXQgaXQgbW92ZSB0aGUgY29kZSBjb21tZW50
IGFib3V0IHRoZSBzbGljZSBjb25maWd1cmF0aW9uDQo+IGNsb3Nlcg0KPiB0byB3aGVyZSB0aGUg
Y29uZmlndXJhdGlvbiBpcyBkZXRlcm1pbmVkIGFuZCBjbGFyaWZ5IGl0IGEgYml0Lg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdl
ZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMzMgKysrKysr
KysrKy0tLS0tLS0tLS0tLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKSwgMjAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGluZGV4IDY1MGIzMzlmZDczYmMuLmE0ZmYxZmZjOGY3ZDQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTEwNywyMCAr
MTA3LDYgQEANCj4gwqAvKiBDb25zdGFudHMgZm9yIERQIERTQyBjb25maWd1cmF0aW9ucyAqLw0K
PiDCoHN0YXRpYyBjb25zdCB1OCB2YWxpZF9kc2NfYnBwW10gPSB7NiwgOCwgMTAsIDEyLCAxNX07
DQo+IMKgDQo+IC0vKg0KPiAtICogV2l0aCBTaW5nbGUgcGlwZSBjb25maWd1cmF0aW9uLCBIVyBp
cyBjYXBhYmxlIG9mIHN1cHBvcnRpbmcNCj4gbWF4aW11bSBvZjoNCj4gLSAqIDIgc2xpY2VzIHBl
ciBsaW5lIGZvciBJQ0wsIEJNRw0KPiAtICogNCBzbGljZXMgcGVyIGxpbmUgZm9yIG90aGVyIHBs
YXRmb3Jtcy4NCj4gLSAqIEZvciBub3cgY29uc2lkZXIgYSBtYXggb2YgMiBzbGljZXMgcGVyIGxp
bmUsIHdoaWNoIHdvcmtzIGZvciBhbGwNCj4gcGxhdGZvcm1zLg0KPiAtICogV2l0aCB0aGlzIHdl
IGNhbiBoYXZlIG1heCBvZiA0IERTQyBTbGljZXMgcGVyIHBpcGUuDQo+IC0gKg0KPiAtICogRm9y
IGhpZ2hlciByZXNvbHV0aW9ucyB3aGVyZSAxMiBzbGljZSBzdXBwb3J0IGlzIHJlcXVpcmVkIHdp
dGgNCj4gLSAqIHVsdHJham9pbmVyLCBvbmx5IHRoZW4gZWFjaCBwaXBlIGNhbiBzdXBwb3J0IDMg
c2xpY2VzLg0KPiAtICoNCj4gLSAqICNUT0RPIFNwbGl0IHRoaXMgYmV0dGVyIHRvIHVzZSA0IHNs
aWNlcy9kc2MgZW5naW5lIHdoZXJlDQo+IHN1cHBvcnRlZC4NCj4gLSAqLw0KPiAtc3RhdGljIGNv
bnN0IHU4IHZhbGlkX2RzY19zbGljZWNvdW50W10gPSB7MSwgMiwgMywgNH07DQo+IC0NCj4gwqAv
KioNCj4gwqAgKiBpbnRlbF9kcF9pc19lZHAgLSBpcyB0aGUgZ2l2ZW4gcG9ydCBhdHRhY2hlZCB0
byBhbiBlRFAgcGFuZWwNCj4gKGVpdGhlciBDUFUgb3IgUENIKQ0KPiDCoCAqIEBpbnRlbF9kcDog
RFAgc3RydWN0DQo+IEBAIC0xMDMyLDE3ICsxMDE4LDI0IEBAIHU4IGludGVsX2RwX2RzY19nZXRf
c2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0K
PiDCoAkJaW50ZWxfZHBfZHNjX21pbl9zbGljZV9jb3VudChjb25uZWN0b3IsIG1vZGVfY2xvY2ss
DQo+IG1vZGVfaGRpc3BsYXkpOw0KPiDCoAl1MzIgc2lua19zbGljZV9jb3VudF9tYXNrID0NCj4g
wqAJCWRybV9kcF9kc2Nfc2lua19zbGljZV9jb3VudF9tYXNrKGNvbm5lY3Rvci0NCj4gPmRwLmRz
Y19kcGNkLCBmYWxzZSk7DQo+IC0JaW50IGk7DQo+ICsJaW50IHNsaWNlc19wZXJfcGlwZTsNCj4g
wqANCj4gLQkvKiBGaW5kIHRoZSBjbG9zZXN0IG1hdGNoIHRvIHRoZSB2YWxpZCBzbGljZSBjb3Vu
dCB2YWx1ZXMgKi8NCj4gLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRSh2YWxpZF9kc2Nfc2xp
Y2Vjb3VudCk7IGkrKykgew0KPiAtCQlpbnQgc2xpY2VzX3Blcl9saW5lID0gdmFsaWRfZHNjX3Ns
aWNlY291bnRbaV0gKg0KPiBudW1fam9pbmVkX3BpcGVzOw0KPiArCS8qDQo+ICsJICogRmluZCB0
aGUgY2xvc2VzdCBtYXRjaCB0byB0aGUgdmFsaWQgc2xpY2UgY291bnQgdmFsdWVzDQo+ICsJICoN
Cj4gKwkgKiBNYXggSFcgRFNDLXBlci1waXBlIHggc2xpY2UtcGVyLURTQyAoPSBzbGljZS1wZXIt
cGlwZSkNCj4gY2FwYWJpbGl0eToNCj4gKwkgKiBJQ0w6wqAgMngyDQo+ICsJICogQk1HOsKgIDJ4
Miwgb3IgZm9yIHVsdHJham9pbmVkIDQgcGlwZXM6IDN4MQ0KPiArCSAqIFRHTCs6IDJ4NCAoVE9E
TzogQWRkIHN1cHBvcnQgZm9yIHRoaXMpDQo+ICsJICovDQo+ICsJZm9yIChzbGljZXNfcGVyX3Bp
cGUgPSAxOyBzbGljZXNfcGVyX3BpcGUgPD0gNDsNCj4gc2xpY2VzX3Blcl9waXBlKyspIHsNCj4g
KwkJaW50IHNsaWNlc19wZXJfbGluZSA9IHNsaWNlc19wZXJfcGlwZSAqDQo+IG51bV9qb2luZWRf
cGlwZXM7DQo+IMKgDQo+IMKgCQkvKg0KPiDCoAkJICogMyBEU0MgU2xpY2VzIHBlciBwaXBlIG5l
ZWQgMyBEU0MgZW5naW5lcywgd2hpY2gNCj4gaXMgc3VwcG9ydGVkIG9ubHkNCj4gwqAJCSAqIHdp
dGggVWx0cmFqb2luZXIgb25seSBmb3Igc29tZSBwbGF0Zm9ybXMuDQo+IMKgCQkgKi8NCj4gLQkJ
aWYgKHZhbGlkX2RzY19zbGljZWNvdW50W2ldID09IDMgJiYNCj4gKwkJaWYgKHNsaWNlc19wZXJf
cGlwZSA9PSAzICYmDQo+IMKgCQnCoMKgwqAgKCFIQVNfRFNDXzNFTkdJTkVTKGRpc3BsYXkpIHx8
IG51bV9qb2luZWRfcGlwZXMNCj4gIT0gNCkpDQo+IMKgCQkJY29udGludWU7DQo+IMKgDQo+IEBA
IC0xMDU1LDcgKzEwNDgsNyBAQCB1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KGNvbnN0
IHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gwqAJCcKgICogU28gdGhl
cmUgc2hvdWxkIGJlIGF0IGxlYXN0IDIgZHNjIHNsaWNlcyBwZXINCj4gcGlwZSwNCj4gwqAJCcKg
ICogd2hlbmV2ZXIgYmlnam9pbmVyIGlzIGVuYWJsZWQuDQo+IMKgCQnCoCAqLw0KPiAtCQlpZiAo
bnVtX2pvaW5lZF9waXBlcyA+IDEgJiYgdmFsaWRfZHNjX3NsaWNlY291bnRbaV0NCj4gPCAyKQ0K
PiArCQlpZiAobnVtX2pvaW5lZF9waXBlcyA+IDEgJiYgc2xpY2VzX3Blcl9waXBlIDwgMikNCj4g
wqAJCQljb250aW51ZTsNCj4gwqANCj4gwqAJCWlmIChtb2RlX2hkaXNwbGF5ICUgc2xpY2VzX3Bl
cl9saW5lKQ0KDQo=
