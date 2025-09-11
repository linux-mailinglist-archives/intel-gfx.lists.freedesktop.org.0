Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9F1B53D81
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 23:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB7810EB8D;
	Thu, 11 Sep 2025 21:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NahqiyjZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5798610E0A0;
 Thu, 11 Sep 2025 21:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757624943; x=1789160943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1opauL1unFUzRAeiXOcK7qIFGTG4BEgIFyBwFoR1kyo=;
 b=NahqiyjZYocRVtqBY+Spxl63bypxP5Z2E4V2oaLuQ/WYf+4gBwMYks39
 le2Spt+5tsIaQFic1Zdq4cahbaxNiEbuO44J59vKRIPNPZH+WMy6yWn4i
 WQbHyxFpzeltxhMdcmwtpvC3nxNXegyU0/hYwp5xA15LIXlyarU+R8FRI
 I79l/bYbtoBc7olN1azSatYcSkTJIvGD+kQAVuAF5A9dr63ZNoUEAIYTg
 TjdTxGOTJenyX1j+HSqeIfWS+wUl4Pu6xVXBPDCMeB/6lY9cO+c9CZKbN
 8ipuxfNlqsBaT6FilAjQLbDVvInFw5+ZpP703c9h5WKbDe4IHThEX4InU w==;
X-CSE-ConnectionGUID: VHMaqBioT5aLKuqs0XJl8g==
X-CSE-MsgGUID: EjIbhZntTni4gaIy24SYxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="59666598"
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="59666598"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 14:09:03 -0700
X-CSE-ConnectionGUID: zNhiZUaFRAuJQ6709VE7kQ==
X-CSE-MsgGUID: 3I1t0+iCTbaPEOogw71SVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="172973839"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 14:09:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 14:09:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 11 Sep 2025 14:09:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.87)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 14:09:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VKcNuz1pBtaA+bwhy3KWvAZzqF+pJbIwHZcUL6TgcA2bHULnKkmvej2NW1HJgjp8QZrI/uvSQ/xze7AbJX8A1yNXHohx5lFzXQMRKDVuiKwZ7I1NyHleFJWKR8UwzQO20o5KNkQw0pBXw9J/h/0zn0vd5LctyMCuVdC/iV6UoGfU6GvnnJRIaDAiS1+S3xtsYdwF70M4S9Ww3cVVMwHzPxWicbqb9m7FmxpxGGsKOF5LySHbs7FbQJQ7Yj/zoI+WkHummFvO08F7QMAGDxWqyEdNc/FRYcJHvsgP9VTjjHaMT6nK1Ng1Nrjn4TlzJA6FMc/cV1FKXRHFHxdMPRjgpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1opauL1unFUzRAeiXOcK7qIFGTG4BEgIFyBwFoR1kyo=;
 b=LgSgvWc/Blnb5WY9zsmx2SiZNFMjzHd7isNqhjlaDMxVmuMA5YPLonk7hXCVdnpFc64KC0+cY6GkeZ5VECi44wEDnWw5Mg+BVlvz74uI5qFC4hzsNlUUR1xWIy20PGcmcsplTqXwgQrNKxrsP37BB2pMp6y4Zjsru8cPPOK87ppvnstR3ICp/X2Rd6R6HmaI5C0cNjHQwDVlGStYXUXK8TCHPvo3/LGosPXzn0WHzIMkjLS2bDcCDAYO9cNXUfkK3dP1txugik1UdCDsjKCQh4dkQ1YPsG41XVd+qwLTLJJsweskTi3VkSVdfgOvyS8MDWqnGxeBcW7MUK72Iks/rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CH3PR11MB7673.namprd11.prod.outlook.com (2603:10b6:610:126::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 21:08:59 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%6]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 21:08:58 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
Thread-Topic: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
Thread-Index: AQHcIW6J5hUjMlibk0O2wEzqM8YdVrSK8wgAgAA6bsCAAANQgIADS2Vw
Date: Thu, 11 Sep 2025 21:08:58 +0000
Message-ID: <IA1PR11MB6266B380EB1C0BB1DC660E8CE209A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250909094535.4126289-1-dnyaneshwar.bhadane@intel.com>
 <175743023064.1838.6299430690698520828@intel.com>
 <IA1PR11MB6266A4A408531083F4DE8646E20FA@IA1PR11MB6266.namprd11.prod.outlook.com>
 <175744348951.1838.3620029253889327019@intel.com>
In-Reply-To: <175744348951.1838.3620029253889327019@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CH3PR11MB7673:EE_
x-ms-office365-filtering-correlation-id: d06de9f4-6cad-421b-2938-08ddf1776cf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?d3VhSjZIazF2bDg5SGwyZUhJL0taTGtjQjFlcjNLRmtudUxoYzhmWFdZUU92?=
 =?utf-8?B?MXlFbUI3SzloYytuZHM4cVZacTE1bzR3WmtYMklJcGIwbDhHUjNzeDgwZndt?=
 =?utf-8?B?dzlEOUlBKzYwalVFQmgvSlFMb3dxU0RmTHJFSGdWVDZFWUlQNzVjdGNJQlZz?=
 =?utf-8?B?dWpLQVRUY0RDSVBMc0ZJUjVRSm5nb1ZmRHg1QWdyZWZOclA4UlJBZUdsTUkz?=
 =?utf-8?B?NHd5cnMxL3dQdXh5eTJVYTBGQTNrL245eTYxdUE1L3RnOGJ1R1JjT2xIblZY?=
 =?utf-8?B?NFlwbm5oWk9KNEJCWFRaQU1Tc211UHJnT2tnNE1OMFdKWE44TWdNNTBRa0t2?=
 =?utf-8?B?Qk9Td3I5VUxEc2lvR3llM2t5cE9yK2hrVzFTQkxRdDhObzJ3SUd6RGhXNzZP?=
 =?utf-8?B?ODdlL2NPb3N4N0RMVlBhdU4weXVVQ2VNY21SRkhCaUN0dVB2eHZjTlc1S3dB?=
 =?utf-8?B?RUQrMEpnb3VtZDVGVGszbkJvQk5OTldIV040SFZVUjBteWJSaVdLdSt0MWU3?=
 =?utf-8?B?bC9EeityVTU1K0ltTDZVMU83aXZxVFE0a1FXcG5vSXQrNyttR2VxWDNzWWFG?=
 =?utf-8?B?RjlxWHpoMy9CNUM2RlppcDBhek9DRzRLYzZNN3NVY1JFTkNCWWhsV0hCbk5R?=
 =?utf-8?B?S05XMzk0bHhZTlZ5d3F3TFM1UTZ2WWQ0VGhtMGdKNnR5VjJycnF4N2sxdGJz?=
 =?utf-8?B?U2pMaWIyVGdmdzNtaHNNWXlxVURxelY3K0NOOE1kTHY0TzE3NnJkTlZia25M?=
 =?utf-8?B?dlg0N0hrUmRVWTJxY3N5VE90V2diRVVmZkpjLzRHbEFIMm1KbFptaUJpUHV5?=
 =?utf-8?B?eEZaQmxoKzJoVmxMRkFuK0pGTGtiVlBWR0orNlYxU2crMVZhSHA5Q3RIT2po?=
 =?utf-8?B?OGs4U29ZMnBoK003OVROWVJmL2lPVS9qQXZCQi9LMG9FTW9YWDJOZnlUMVJF?=
 =?utf-8?B?aERiRTdiYWxQQ053Vkp6Z3VPaDJwNHUxSUl5ZFZabGJLMVBRcWUrc2d0MmpJ?=
 =?utf-8?B?L0tQc2FKd05zQ2x0MlkxZWZYMERGUTM3TjBieE5MY2xIOGN0VDRmRFhkZHc2?=
 =?utf-8?B?d2F2Ly9JMHlnaWtHNDFRdUZ2Y3p0eHF1N21CalVMVnFqVkZsQWdieCt4OUNY?=
 =?utf-8?B?VFNGRWJZbHdnR3Fld0tZOEZLNStYOG9yUXVxdmo0WC9palBiRXZtRGxkMDVF?=
 =?utf-8?B?N25iMExlZXMyMUVuZjBRMGdtQ0dmaFdGbTk5dWFxMDJuUTFLTlVFQ2I1aWFU?=
 =?utf-8?B?Vmd1Q0lvMWtNQndYSXd0czI1cy8xTkE5aWNIMUV2ajFIWTZjbnZwbW9xQUFY?=
 =?utf-8?B?YUR4YzNrZW9reEduZmlxUjBsUHM0TU95ZDdlSSswYjZMNGVFQTNkbTBDMnZX?=
 =?utf-8?B?eWN5U09RS21FNlhYcmMwbzkrWDFrbHZzMzZuanBoa1FOVEM5MkFEY0JTYXNu?=
 =?utf-8?B?UFh2bHdiMEEwQkk3YWVmYms2UkVnQXJROE1yeElCNDVmMFFXNm0ydGRqekZs?=
 =?utf-8?B?MGRKQ1NVc1JrZjFpUHlkLzl1OFBxK1dnVDlJRGZXeUY0Y1dDdnczOGlZNkYx?=
 =?utf-8?B?NnR3dlFOOFdXU0tuaGUwblB0T1FrYXNPSHpmTURvUDdpK1dpWjBjU2pBOVhZ?=
 =?utf-8?B?ZjBmWFRPVjhWQnJRUWdVYktIRTRPdG0xNlNtRVZ1RlpWbDhyL0FvOExqeWdu?=
 =?utf-8?B?TVQ5QXVNdWF1enEvbWhhcU1LU0dHZVBJZllDZ1k3disza2xjQjFGcXQ5T2Er?=
 =?utf-8?B?UmdpOFljaTl1SW42bmU2N0t5TVdhcWJLT0tjeWRxNHYyN1pNbDA5dmx3MVNE?=
 =?utf-8?B?MTFhUVl0bWNRaytNeC8zMWVEV290T0lya0Z0Zy9TT1lmc1N2M1JxYlVJcU10?=
 =?utf-8?B?S3o4ZEpkRnVnYVhxSktmbFFGei85SWxNcGVSQWt0WlZybUczTlY4Mkp0V1dx?=
 =?utf-8?Q?5nRPqmps0ps=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnFEVXdPL1JIMW9RbWt1S0o2a2N3VzVKVWFROXlCSXhKUTdTRGNZMk9XRDB4?=
 =?utf-8?B?SzFBYzBuMkZlNTZSZG1GSUJrakY4N1VEekJZSXVubGk2VVdMT1VCN0RvMlhE?=
 =?utf-8?B?Rk81TEwzTkozeTRMc294OTloQklDenNNbUduQVFvdzdGMjV2cmlUbktUTzU5?=
 =?utf-8?B?NzhXYWRPb1dLQ1VEb0lTb1ZLQnlJU2hjQVRGd3o2M1BkdDNrVmNiWFBwYzg5?=
 =?utf-8?B?L2JOWGFOZ29TU3hqMzNhcVJoY0Z1SzJzZmFreFRsejF2UUlDc0pLa3ZBOHdN?=
 =?utf-8?B?Y1BxWWhDaHJzS081dFlkWDgrWkZRNlhHcXlDZTgwR0ZMOGdHZnkvK0RoRnUr?=
 =?utf-8?B?MUdPeSt5WEM2WDNGMElMZHE1QWRJRzE2SE9wQ05Ibm1McHE0R2E2ZFU0b0tK?=
 =?utf-8?B?bmh5V2JzNFZJOFEvdVE1RG5QRDBZYzJCb2hHMWE0ZmZVK3VsbzdOaE1CeUpH?=
 =?utf-8?B?R21hYkpvWnJBOXcvR1pUT2lMSGZnWnVnV2lMU3lvNVhkbHJZZXNFeW4vRWlT?=
 =?utf-8?B?djRiYXB2U3h3VHExUTBBN2FWOFdaZlRQK3RZcTV1TmZmaEZCa2NjVE9RdUZJ?=
 =?utf-8?B?dWJIWndHaGtSZDYxaVRnWWpTakgzR0tpNGNsdFcxcHdlUk5VeTRUYmpoMUZQ?=
 =?utf-8?B?bEw4aVpqcmRJc2FabWEvYSs1TVdvUGVEMlhKOVBBUG1sQlBob3Zoc09KSzdV?=
 =?utf-8?B?ZTBHMUV3c3ZpalBVajF1ZksrNHBtbUxhclZEeGxXOGRnaU5NeitVZzMwcXB4?=
 =?utf-8?B?em1MbGFHb0hTNklGdkJGNDZvMjgya01qR1FHbCt2SnpadUNIWXFGN0dHTmdE?=
 =?utf-8?B?NVJlTjQxOXZhNWEzQzdzTG5FaUZCWUw4SlU2ZVpva1hWRGhFRW5pK2xDOG91?=
 =?utf-8?B?NG9VVVcwbExvSi9XRXJ0QWJKR1gyMlAvTmg1MXRnQlUyU3ArMUJmV2prWGZn?=
 =?utf-8?B?WWVTV1k3WXNuaDI2aE9rd1VweFBxaDV0TUNFMzkxem5tYnFUTXBabHZHMStD?=
 =?utf-8?B?RnMrWEdIZHlzTTJqbDUxdXVyV0ZHQy9BazBSeXJlUSs1WGR4VEZlK0N5UG56?=
 =?utf-8?B?ME5BT2ZIcnI2Zlcyd0tBS054YXpFSWZmS052dkxVeUttQnVxSnJXd2RVMDhk?=
 =?utf-8?B?OEhTWDFVZ2NIcTRWcDRvdnRjQzM4U0Q5TzJya2F5aXkzZk9TR1ErTXFWL2pk?=
 =?utf-8?B?MWk5YzcxcERmMXBYMXp1MTJ0d281eTM3TzkyekZNaC92L01kcWVaTG5YYlBH?=
 =?utf-8?B?MW1UZnNkWTlHaEJZV0d0dytiSVprNXAvVXFKRjVtN1lpUXE0dzhBWXpvaWZt?=
 =?utf-8?B?NkdNV09QRTVaQ1BxYkxtMDJsbW5mWGVoWmdvUWRoeXBqZEZVbWV3c0JESmw0?=
 =?utf-8?B?akVoTkpaNE45ajFocThVWGk5cTkzOWtFM2cycmRUWEZBQWNjOWh1VnNOVHlX?=
 =?utf-8?B?TlZleTEwTi9LS21yY09neUR6OW1TOGw2ekJDbElzQzNtbWlHL3dCejFzWm1F?=
 =?utf-8?B?dzU1QVMrVThXTy83NlJaZEkvRDYzMHZBc25jT0F6NnF3SCs1d3RXR0xkL3U0?=
 =?utf-8?B?c2h5c2dFdE9jZUVReW9qRTJvR0F6QzVhb3NiV1k2NkUxTmhlcVhaQnk4TldI?=
 =?utf-8?B?OGZzdUwzZW5RUEZCcjZ4M3dod3hDUkdENUY3QXdoTlhZRHBQWmNxY21oMnp0?=
 =?utf-8?B?YzhIaGhRdWpqaUU0MytnbWZqQ3ErbFJ1R1phYTBRNVQzdng3Q0U4WHZXaHh3?=
 =?utf-8?B?SFRWOXFnR0lWU2NkWDBwSXRsamlQM1ZYNkt5QXcxak5VTU1SSy9oQ1c1THBx?=
 =?utf-8?B?OG12YXA1ekhCZ1AvVm5Tem5UL2QvbXhtWjF1WGlrVzVDSkEvYjlVZlZoL1o2?=
 =?utf-8?B?KzBMOC9ocDFtR2RKY3J2aVNjUnQ1VUJyS3UxSXNGbThPTU93MDcrSkM3cEE4?=
 =?utf-8?B?aVFRdndtcUNMYzR3YWpmandOWGdLS1VKcUxJNFlTMEtyNmZjMGRBcWxIOE45?=
 =?utf-8?B?elQrKzhpUlhXV2xFdnVIR2ZmN1VISUkwWTR0dHNOMXNPSm5Ya0o0b2J4cXYr?=
 =?utf-8?B?MDZNbU9UUDVIR1JxMUFrMXlsRkdOZmp1UlA5Tk53Q1JXSTZBNm95TVNaRURv?=
 =?utf-8?B?eE10ZTlIZ0g2dmVYMmQrTEF6U0IzNXhFRGlTT1pJQWVjWE1NNm9XWTJ6eGJW?=
 =?utf-8?B?QWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d06de9f4-6cad-421b-2938-08ddf1776cf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2025 21:08:58.7765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z03vWW2s97qsw+V99VrxEK3REmldpLU6Y6hYAzRx92b77S5G+h13jwBOwaAwYa7DFcwI/woLk8+MNL31BP4BKojfTcbm+hcZbPDNMM0lkEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7673
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAx
MCwgMjAyNSAxMjoxNSBBTQ0KPiBUbzogQmhhZGFuZSwgRG55YW5lc2h3YXIgPGRueWFuZXNod2Fy
LmJoYWRhbmVAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmF1dGl5YWwsIEFua2l0IEsg
PGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjsgQXR3b29kLCBNYXR0aGV3IFMNCj4gPG1hdHRo
ZXcucy5hdHdvb2RAaW50ZWwuY29tPjsgUm9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtSRVNFTkRdIGRybS9pOTE1L3hlMzogUmVz
dHJpY3QgUFRMIGludGVsX2VuY29kZXJfaXNfYzEwcGh5KCkNCj4gdG8gb25seSBQSFkgQQ0KPiAN
Cj4gUXVvdGluZyBCaGFkYW5lLCBEbnlhbmVzaHdhciAoMjAyNS0wOS0wOSAxNTozODo0OS0wMzow
MCkNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206
IFNvdXNhLCBHdXN0YXZvIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCj4gPj4gU2VudDogVHVl
c2RheSwgU2VwdGVtYmVyIDksIDIwMjUgODozNCBQTQ0KPiA+PiBUbzogQmhhZGFuZSwgRG55YW5l
c2h3YXIgPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29tPjsgaW50ZWwtDQo+ID4+IGdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
PiBDYzogQmhhZGFuZSwgRG55YW5lc2h3YXIgPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29t
PjsgTmF1dGl5YWwsDQo+ID4+IEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjsg
QXR3b29kLCBNYXR0aGV3IFMNCj4gPj4gPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiA+
PiBTdWJqZWN0OiBSZTogW1JFU0VORF0gZHJtL2k5MTUveGUzOiBSZXN0cmljdCBQVEwNCj4gPj4g
aW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoKSB0byBvbmx5IFBIWSBBDQo+ID4+DQo+ID4+IFF1b3Rp
bmcgRG55YW5lc2h3YXIgQmhhZGFuZSAoMjAyNS0wOS0wOSAwNjo0NTozNS0wMzowMCkNCj4gPj4g
Pk9uIFBUTCwgbm8gY29tYm8gUEhZIGlzIGNvbm5lY3RlZCB0byBQT1JUIEIuIEhvd2V2ZXIsIFBP
UlQgQiBjYW4NCj4gPj4gPnN0aWxsIGJlIHVzZWQgZm9yIFR5cGUtQyBhbmQgd2lsbCB1dGlsaXpl
IHRoZSBDMjAgUEhZIGZvciBlRFAgb3Zlcg0KPiA+PiA+VHlwZS1DLiBJbiBzdWNoIGNvbmZpZ3Vy
YXRpb25zLCBWQlRzIGFsc28gZW51bWVyYXRlIFBPUlQgQi4NCj4gPj4gPg0KPiA+PiA+VGhpcyBs
ZWFkcyB0byBpc3N1ZXMgd2hlcmUgUE9SVCBCIGlzIGluY29ycmVjdGx5IGlkZW50aWZpZWQgYXMg
dXNpbmcNCj4gPj4gPnRoZQ0KPiA+PiA+QzEwIFBIWSwgZHVlIHRvIHRoZSBhc3N1bXB0aW9uIHRo
YXQgcmV0dXJuaW5nIHRydWUgZm9yIFBPUlQgQiBpbg0KPiA+PiA+aW50ZWxfZW5jb2Rlcl9pc19j
MTBwaHkoKSB3b3VsZCBub3QgY2F1c2UgcHJvYmxlbXMuDQo+ID4+ID4NCj4gPj4gPkZyb20gUFRM
J3MgcGVyc3BlY3RpdmUsIG9ubHkgUE9SVCBBL1BIWSBBIHVzZXMgdGhlIEMxMCBQSFkuDQo+ID4+
ID4NCj4gPj4gPlVwZGF0ZSB0aGUgaGVscGVyIGludGVsX2VuY29kZXJfaXNfYzEwcGh5KCkgdG8g
cmV0dXJuIHRydWUgb25seSBmb3INCj4gPj4gPlBPUlQgQS9QSFkgb24gUFRMLg0KPiA+PiA+DQo+
ID4+DQo+ID4+IEkgdGhpbmsgd2UgbmVlZCBhICJGaXhlcyIgdGFnIGhlcmUuDQo+ID4+DQo+ID4+
IEZpeGVzOiA5ZDEwZGU3OGEzN2YgKCJkcm0vaTkxNS93Y2w6IEMxMCBwaHkgY29ubmVjdGVkIHRv
IHBvcnQgQSBhbmQNCj4gPj4gQiIpDQo+ID5TdXJlIHdpbGwgaW5jb3Jwb3JhdGUgaW4gbmV4dCBy
ZXYuDQo+ID4+DQo+ID4+ID5Cc3BlYzogNzI1NzEsNzM5NDQNCj4gPj4gPlNpZ25lZC1vZmYtYnk6
IERueWFuZXNod2FyIEJoYWRhbmUNCj4gPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29tPg0K
PiA+PiA+UmV2aWV3ZWQtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVs
LmNvbT4NCj4gPj4gPi0tLQ0KPiA+PiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3gwX3BoeS5jIHwgOSArKy0tLS0tLS0NCj4gPj4gPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+PiA+DQo+ID4+ID5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPmIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPmluZGV4IDgwMTIz
NWE1YmMwYS4uMzM5NjNhZDE0Y2ZhIDEwMDY0NA0KPiA+PiA+LS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4+ID5AQCAtMzksMTMgKzM5LDggQEAg
Ym9vbCBpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiA+PiAq
ZW5jb2RlcikNCj4gPj4gPiAgICAgICAgIHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPj4gPiAgICAgICAgIGVudW0gcGh5IHBoeSA9
IGludGVsX2VuY29kZXJfdG9fcGh5KGVuY29kZXIpOw0KPiA+PiA+DQo+ID4+ID4tICAgICAgICAv
KiBQVEwgZG9lc24ndCBoYXZlIGEgUEhZIGNvbm5lY3RlZCB0byBQT1JUIEI7IGFzIHN1Y2gsDQo+
ID4+ID4tICAgICAgICAgKiB0aGVyZSB3aWxsIG5ldmVyIGJlIGEgY2FzZSB3aGVyZSBQVEwgdXNl
cyBQSFkgQi4NCj4gPj4gPi0gICAgICAgICAqIFdDTCB1c2VzIFBPUlQgQSBhbmQgQiB3aXRoIHRo
ZSBDMTAgUEhZLg0KPiA+PiA+LSAgICAgICAgICogUmV1c2luZyB0aGUgY29uZGl0aW9uIGZvciBX
Q0wgYW5kIGV4dGVuZGluZyBpdCBmb3IgUE9SVCBCDQo+ID4+ID4tICAgICAgICAgKiBzaG91bGQg
bm90IGNhdXNlIGFueSBpc3N1ZXMgZm9yIFBUTC4NCj4gPj4gPi0gICAgICAgICAqLw0KPiA+PiA+
LSAgICAgICAgaWYgKGRpc3BsYXktPnBsYXRmb3JtLnBhbnRoZXJsYWtlICYmIHBoeSA8IFBIWV9D
KQ0KPiA+PiA+KyAgICAgICAgaWYgKChkaXNwbGF5LT5wbGF0Zm9ybS5wYW50aGVybGFrZSAmJiBw
aHkgPT0gUEhZX0EpIHx8DQo+ID4+ID4rICAgICAgICAgICAgKChESVNQTEFZX1ZFUngxMDAoZGlz
cGxheSkgPT0gMzAwMikgJiYgcGh5ID09IFBIWV9CKSkNCj4gPj4NCj4gPj4gVGhpcyBpcyB1c3Vh
bGx5IGEgcHJvcGVydHkgb2YgdGhlIFNvQyBhbmQgbm90IHRoZSBkaXNwbGF5IElQLiBTbywgd2UN
Cj4gPj4gcHJvYmFibHkgd2FudCB0byBrbm93IHRoYXQgd2UgYXJlIG9uIFdDTCByYXRoZXIgdGhh
biBkaXNwbGF5IHZlcnNpb24NCj4gPj4gMzAwMiwgd2hpY2ggY291bGQgdGhlb3JldGljYWxseSBi
ZSByZS11c2VkIGluIG90aGVyIHBsYXRmb3JtcyB3aXRoIGRpZmZlcmVudA0KPiBkaXNwbGF5IFBI
WShzKS4NCj4gPj4NCj4gPkhpLA0KPiA+d291bGQgeW91IHN1Z2dlc3QgdGhhdCB3ZSBzaG91bGQg
aW50cm9kdWNlIHNvbWV0aGluZyBsaWtlDQo+IHBsYXRmb3JtLndpbGRjYXRsYWtlIGluIHRoaXMg
Y2FzZT8NCj4gDQo+IFBlcmhhcHMgYXMgYSBzdWJwbGF0Zm9ybSAoaXQgY291bGQgYmUgb25seSBv
biBkaXNwbGF5IHNpZGUpIG9mIHBhbnRoZXJsYWtlPw0KPiANClRoYW5rcyBHdXN0YXZvLCANClVw
ZGF0ZWQgV0NMIGRlZmluaXRpb24gdG8gdGhpcyBbMV0gcGF0Y2ggc2VyaWVzLCBhbG9uZyB3aXRo
IGFib3ZlIGNoYW5nZXMuIA0KDQpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy8xNTQ0MjUvDQoNCj4gQ2M6IE1hdHQgUm9wZXINCj4gDQo+IC0tDQo+IEd1c3Rhdm8g
U291c2ENCj4gDQo+ID4NCj4gPkRueWFuZXNod2FyLA0KPiA+PiBBbHNvLCBhcyBzaWRlIG5vdGUs
IHRoZXJlIGFyZSBtYW55IHN1cGVyZmx1b3VzIHBhcmVudGhlc2VzIGluIHRoZQ0KPiA+PiBjb25k
aXRpb24uIEkgdGhpbmsgb25seSB0aGUgb25lIGZvciB0aGUgaWYtY29uZGl0aW9uIGlzIG5lY2Vz
c2FyeS4NCj4gPg0KPiA+Pg0KPiA+PiAtLQ0KPiA+PiBHdXN0YXZvIFNvdXNhDQo+ID4+DQo+ID4+
ID4gICAgICAgICAgICAgICAgIHJldHVybiB0cnVlOw0KPiA+PiA+DQo+ID4+ID4gICAgICAgICBp
ZiAoKGRpc3BsYXktPnBsYXRmb3JtLmx1bmFybGFrZSB8fA0KPiA+PiA+ZGlzcGxheS0+cGxhdGZv
cm0ubWV0ZW9ybGFrZSkgJiYgcGh5IDwgUEhZX0MpDQo+ID4+ID4tLQ0KPiA+PiA+Mi41MS4wDQo+
ID4+ID4NCg==
