Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BE4ACE03B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 16:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD38F10E74B;
	Wed,  4 Jun 2025 14:25:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnzYGf2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B98E210E748;
 Wed,  4 Jun 2025 14:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749047140; x=1780583140;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=KqMBkROeKoZ06tZUZCOG0wP6p+4XxdoxpMo4ym4OeyQ=;
 b=fnzYGf2lTK8tQrxw3RGhn8LNjb2koJDgDRfbsGKWDujWLiQXLYU4ZuiY
 Bn1DxqneoHUY0eKOMCGZxrqoodLMvqVr+V6HUBBa9fRELIFY+cCjUhQma
 cn56n6WlxKy5kAS+WgXbgUtSms4uUwyWgaO1MN/m7/KJDdU3aC57XuzW2
 hE1h8bBSmhAY3RIyC6X5g5Gz8ervPk7byB7uG8Gj+XXvqVBYs01AeaUDT
 SRfmMQfDJtlDcgpoDwWjS0UhGKF+8wuIucqOb5/t4JlBSipAwSwVn6MUw
 /7/xAsiHhUWlf+lZEnwGzIOMz+atlEOg85jr6Md+4e/hX8jQdgrMNBIJu Q==;
X-CSE-ConnectionGUID: SKqplOuLRXuARq0joH2cwg==
X-CSE-MsgGUID: fiwdQlP/TOi4TBoqiLigYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50373257"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="50373257"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 07:25:39 -0700
X-CSE-ConnectionGUID: 2fn/m5f4QLixCxLmH8wsiw==
X-CSE-MsgGUID: w4U2lenvTb28l147KtNcjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="176168190"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 07:25:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 07:25:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 07:25:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.76) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 07:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nkP5Sw8orvoRTlxi5+WkuOt30tOC0ELVpdUqjQvNHZfsLqviVHsiQv0GiYS9nBWwhPmaARxP9h3q9oXTOOUfFCYjXCpSJTosEeJxj1wCnOktj8qdaDDiG007701jWcbrTOLtsdvOD7cwQRjx7uukajQ0g8KFnkEoKQhorFHfKSWqahsIt0bxYikcgTQfd0TSuNe4A7H62jAXdd+brGo/f/ooShTcw3QpZk0iOpeJFTlDMkOPs3S2dIXLCpO9r7FZh5DOTnfzyULHWxvRH5+frKTbGfgVOzZ+IFUKLeGxtS2OIYwjDxgEIIGoPLiKHm02W+wCIgiWEEXypOugSgXHrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqMBkROeKoZ06tZUZCOG0wP6p+4XxdoxpMo4ym4OeyQ=;
 b=KVvURoMcdHGFYFDCdz4gREh9J+kL6RiO7mtSzMmepSc88lXOoGIflept/1ZCtEoJLyqS6BVlSU07nsYOWz0UgceA/eHb2rR0r/sWtlOONJLtp1zsUYRIavNpHEmmoEAezHjS4UjdIylKdpjRBpeEcG9Rr0GsxOCfhpf+yCIPlfXew6AINEeMGjkBA4JpmtASCgaog9LJSixk219EYvAb+PXIikFgBKJZ5JyMove3kSrB37tTYd+coQwhyQdC8bz1j2us1fp28dS8xMA6hKOyy2gx8MKXY3uObJ9Gq3DBjiQNTtczxnKJnpPT0iVZuxc6ICGTm0lYVqrLOLeYjpy43Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS7PR11MB8825.namprd11.prod.outlook.com (2603:10b6:8:255::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Wed, 4 Jun
 2025 14:24:55 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 14:24:54 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 6/6] drm/i915/dram: allocate struct dram_info dynamically
Thread-Topic: [RESEND 6/6] drm/i915/dram: allocate struct dram_info dynamically
Thread-Index: AQHbzuliccOBcFEncUCUhogECuJitLPzGw2A
Date: Wed, 4 Jun 2025 14:24:54 +0000
Message-ID: <3ceb49f3d17831a1329a583c23385345a35c2f79.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <73625095157346ea0e8614108c9b369208e5df66.1748337870.git.jani.nikula@intel.com>
In-Reply-To: <73625095157346ea0e8614108c9b369208e5df66.1748337870.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS7PR11MB8825:EE_
x-ms-office365-filtering-correlation-id: 4600f097-f480-4fb4-fcde-08dda373939a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TXJ2UEpjemllc0ZIL21lWCsvbG5QS3hveUxOVkpiVFd3cFViNlF6ald6THgv?=
 =?utf-8?B?OHl4WGRrVjQvdVY0Y0NXUXVoakpoNjc4TEJMbmd6RFRVUFFCNVREeXo0RGp0?=
 =?utf-8?B?Rm9MMHE2NGQzNEpwNTFHVHB5WUw5TUMzMXJKNlJuUW9Qd0d0eEo2clRUWm51?=
 =?utf-8?B?OFU0NW1pNkNORUJaMUJ4bFFDR0RCZkUwNWRYTmxrYmMrSDdGWXlITnNyVld6?=
 =?utf-8?B?SEtZRFNSbWJDVG9GOUJEc2xFcndSZ1VZdU5CVlhnNEo1YUhGMmhvaGZYeDlu?=
 =?utf-8?B?Z1lKc211Q2ROcm5aVi85bnVvQ29nQld4L0cvaFVBYno0TkpWS0o1ZlpiWnBI?=
 =?utf-8?B?Vnd6S0JqMFFsVWNubTZJMGh5K2hjUW5IaUUrc0o2RzJJbU5NTW5DcGtUQ2hO?=
 =?utf-8?B?SjdQWTJUTFhUWVZGdmJFL2xIYm91WFIxc2lWOWtEc2gxWmllcXVBMXdDeVVu?=
 =?utf-8?B?SSs2QW14UUp5Vkdxc21VVUlpb1hPRXV6aTRxMHRjVWoxSzliVjUzV203SWJZ?=
 =?utf-8?B?SEI5QnRnZTdnOWtmV1Q1T1NZbnFWdXFZQnlvNDEyN0h1RWN3MFpwUnNUTnE2?=
 =?utf-8?B?RnZSZlhZK0VNeHo2Mmk0MEYvOW5Rd2djYy9VV1dKbWRBdHE5NktrTi9FSXd4?=
 =?utf-8?B?WGdQZm9pV21ZaXVnOStnTlZOT1RCNGg4M0RiWm4rSkxmMnNXQ0JzWDBRVXdF?=
 =?utf-8?B?bFR5VDRaS2IwMXR5S3pxcW9mRUFnMXQ4dEp4VzJmNzlnSnQyaW82UWloOFNS?=
 =?utf-8?B?di9RYlRHSmR1K25NY0M1aFBld0h4YmdxU3A4S21yVVlhUGtFdW5LMng3TElP?=
 =?utf-8?B?S21zUUdSby9hakVUNmNRb1hjeDdOc0dGaXF0YjVhaGU5eWRWSjRNaFN6dTVk?=
 =?utf-8?B?ZUl4WGVwdzhMS1BuUHF5VGZ5NUZ4eWVCa0F6WkdEVzhucE8velJqZDBIcnpC?=
 =?utf-8?B?WjU3ZHkxU3BISDJkVEdWS1Jsa0FHa1BZOVF6cVdyaUw3Y1gyS0Rsc2diZDlj?=
 =?utf-8?B?MXRyaEx4YjEvMmhWUWwwc25adjZuaWkwM1ZBTmU3dk5tYUtZYVJHUFhCYlky?=
 =?utf-8?B?UjkwY2VEbmowR1FQb3B6dXBEVEFXOTFkVW1NVmZocmgyZ2Q5ZDc1UUxUaDl6?=
 =?utf-8?B?b2ZQckx3TTQ1bkpNZml1SmpFS2RXOTkxVEFMOFluQzJ6RFJpMWJNN3A2QVJN?=
 =?utf-8?B?UWM2YWdyM09QaER5aEEvM3BOTlBGTHZBV0s0RG9pRWU5MGVzQ21NZnY1YW04?=
 =?utf-8?B?bGJOTHFtSzBscUNKQng4WnpxVGNjNHdMaFFYUDZXVUoyKzg0UVdxcVhwU3My?=
 =?utf-8?B?TWtraXNrUWo2YndBQ3NpeDBraFJ5YmQ4RTE0eHg2RWJYei9OdENNSC9vZGo2?=
 =?utf-8?B?ZVlqNnFmQmRDdUtwVG5NS21QZllSdThld2k1dUZmUUdvSDVLN0tCSExQcTBn?=
 =?utf-8?B?NVJKdkZ6dDB4c1lHVHQwaERpUHp2NHU0cmlSRjRqN1l0d1lHMnozZ09PUytr?=
 =?utf-8?B?dVo0TFlGYThiVXo5NzBDcVpnT3AvWVBYTWRBZkdDNzBWNWRKd3JuRlJHaDE0?=
 =?utf-8?B?Q3J1SHl5NXVoak1admRCRjBlbEMwdjNidmROZldWU0VaMEthSDRhRkdMd1VU?=
 =?utf-8?B?RU9FbDdDQUdOTWN3WU4xamFRU2ZvWFVKMGk5Uy9DNkhpQ0lDZU5QUEhoQ1Z5?=
 =?utf-8?B?K2taaGJ0OTIyNVBwcWd6RGQ2cWJuNURQVDlRQWZhSEFON3BvMU10ZGNxWDUx?=
 =?utf-8?B?Z0p3cXlJKzdaUHpUQWFBT1E3aUF2OHVQVmRqSkRsckxaUVM1VHkvYjJNWmNm?=
 =?utf-8?B?cDVGZEZQMjVDdlBWK3FKS3pOUVhzbDZ4ME45MGE5YWMzcXpzVVFrU2NHOUxr?=
 =?utf-8?B?djIra2JWT1J2NmJ4YVJwQjZKOGVpSCtXRHIxVWFvQk5Oa1ZBZnk3OWt6dm8r?=
 =?utf-8?B?U1NkSE4rUEs3Uzc4M1Jzd0xuS0krcjdkV2R2ZSs0aDJBb2F1ZjFaeENNWEIv?=
 =?utf-8?B?WUU4MjlrWFlRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WmptMjA4UnVhQ3J4TWE5MS9zVFZ0eGZoKzRSd0Vob28rY2lMb2pTYS9XTktP?=
 =?utf-8?B?R2FKU1E5blp6cnBuZkMvUkxWNEJ0Q29RZHNrUjcvMUtyU1A2VnBDOTRzR0lF?=
 =?utf-8?B?ZWQrT3BNTjNWNk4rWUppL3NIZ0FmZlVyUWhXNzhOc2VBdXlHd1dWclVMSmwv?=
 =?utf-8?B?SkxFb2h1dDJZNFdtTDJNY0VzQXFxb2IvOWlsMmNqYmpRWklEelYwWHMxNm9k?=
 =?utf-8?B?QUVoMWVNd2JTSnNGZGVxaVJNMDdoclpyakJra0twSFlHbmIzUGt1cSsrbzE1?=
 =?utf-8?B?WWd6YUdoczJJWUNLQVQvNVZKVkx3RmowNnBsTXZZcVQ1WmxoN0Z6Z1lseDNy?=
 =?utf-8?B?WTh5ZVVrNTVjTmlWV1o2UFZHOFNic216WmpwTGdIckZLMHdzdjdrUHZ4NHhi?=
 =?utf-8?B?bjFNVHNRaXU2L01paVp4dXZPZFE1NmZpWCtXTjhtYmlKWVJsN3dERnMvUGp3?=
 =?utf-8?B?bk4vSmprSVpxUmszU0FTeVRNREgxa01BSWh5azVlVWk0alZkN05wdTB3eTI1?=
 =?utf-8?B?dHlhKzFIMGNtUzlwanVZMWZBK1lRa1dpUmdGY2ZzVlhPbE03NzRCWTdSNWhG?=
 =?utf-8?B?OTRxWHhWTXBCWU9XZFdhOFNJSkJMb1A1cTNkb1E0MEh1Yllsb3RRellFKzJG?=
 =?utf-8?B?SW9icjgwN0dHSGJmYjdaSDRkdXhVYkkyZzZQQ0ZSODU3aVVadUoxVDhuOFpk?=
 =?utf-8?B?czYwMmc5TDlucFBmeVgxd29aMW0wRVBpcW9OSlh0dnV1WmY0UW8vSnVzRVpt?=
 =?utf-8?B?OWZtWm0ySXNvSE1Rci9pQ1FrU20wTnE0ZGpmT1pOUlFyUG51UEdFdTVuL20v?=
 =?utf-8?B?aXBVekNXcC93c29SRktEaUY4NXBicEVrNm1pcjd6Yk43bDRYcHk4YmV5WlE0?=
 =?utf-8?B?bW0wTjdRalNKYmhYcWNwd3c3ZDFXb3pqZXpEdE93RS9RQytIKzVxbzZ4ZWIy?=
 =?utf-8?B?Zm85RzNTcjZRNG5qNGV0OS84TnVSaXRKQXpTcUp3azltK2xSVUFkUTkyaWd1?=
 =?utf-8?B?aTMya2FScitXVDNGMld1bTVjd3dEVWpxQ08yejhqTHpzbC9McVhOdFRScnlD?=
 =?utf-8?B?QTEwL0NpWFZzdGM2bzRpV2NocCtwMUQ1Z09saHhpYnZZc3lDRXlSSGs5dGtG?=
 =?utf-8?B?dDBSZzRXMUVMWXVobUlHWHlHVndPNDd0MHF3OEdnUHl5cjhpeUpBTGdLRTE0?=
 =?utf-8?B?MG5VVGp2V29Vc0Q4WENTdldSblBhVHBMY1NjRXFmUmNLeUl0T3B3S2FzY2J5?=
 =?utf-8?B?OEF4TTNUb0JMbi9PVGdaVDJ3MHV4cnJUWkxLd2xWZklITkJIQnRCQVB1QnhY?=
 =?utf-8?B?V3lwSzFIcithdFMya0F4S3ZRbGh1NFBnaWFBZ3RhRW80Um9PcWpVRzZKOVhl?=
 =?utf-8?B?ckxUNGpSMWZNMVUxLzJZeFVMMjZPOGJDMURLd3NMTm52cGlxdFNCUVhTc2ZG?=
 =?utf-8?B?S1pDcDR5VFNBMWptbk9nbjZWRDRRT0VxNHE1M1QyRlRlMlJLKzR0V1VMZ2d2?=
 =?utf-8?B?bGRVWm80Z2E4S2RNMlMyVW8rRTVYamZxUlljakdCRTNUc3ZsaXh0UzJRdFEx?=
 =?utf-8?B?VW04VDFGVFpWUUQzcmR6OHFLYWJjYVYxcXYyUUtCYVFxbzZUL29YZUdnNkE5?=
 =?utf-8?B?aG9FdEx5RkwzL3F1andycnRYR05LN0I3L2tkd08wOFowSG9OMlBDV0RhZEh6?=
 =?utf-8?B?ek14Z29wb1BYbzkyNG83ZjlrYmwzS2QreDUzZVU0Y3ZpRzRtcGtUWXZ4TXlv?=
 =?utf-8?B?cjZxYTFndHIwRFJudUxTQUNCS2FjWTRNQ095MFNVOEtYRjdkQ2RlMERrRUxQ?=
 =?utf-8?B?QWVNWUpYeXg1ekV6V216dFpBRjJTVGxXQSt6WG9DNW44SnpiajNCeTUzU01o?=
 =?utf-8?B?K3dLeWpKTGNNK2xlUGtlcUVZbXVXUitGWXNaQWRrRDdFOUFPUThjbUVRS3Fp?=
 =?utf-8?B?cFBJRU1HdTBFNUFKMDMwdTVoZlRodS9zNFIzdG9nNmJSblpMRmlLSWZXYUpL?=
 =?utf-8?B?WEpWUzlWT2hmM0VYby9GclpvMjg0RWJxRithV2M5VFkwR2lZV25lS0xwOEs5?=
 =?utf-8?B?WHV4TTNGTVJFUTlOSEZBMmdOS1l1UXNoZ2o3MEpmb1N4Uk1ZcFVvMUdKbG16?=
 =?utf-8?B?SjFFSk1wcFBqUHdab3VwS01Wdyt3QkxGUWE0bWxDSlMzMzJQZDBKZjdEbGhT?=
 =?utf-8?Q?cJDAuIxsrI3FyGrtth56C5U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C32548E12580D441826C4F2773C76419@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4600f097-f480-4fb4-fcde-08dda373939a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 14:24:54.9402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vpbp/1W23pI+kGg91NCsBZQT9deUbdlDmyQ4r9i+HDVKp4zp0ZVlLXvyfPoJ/sMMJi6paVgaxZehNBCPVFEQr9qeBGR4+E30NTfBDEXirBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8825
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

T24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
QWxsb2NhdGUgc3RydWN0IGRybV9pbmZvIGR5bmFtaWNhbGx5LCBhbmQgY29udmVydCB0aGUgc3Ry
dWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgYW5kIHN0cnVjdCB4ZV9kZXZpY2UgZHJhbV9pbmZvIG1l
bWJlciBpbnRvIGEgY29uc3QNCj4gcG9pbnRlci4gTW92ZSB0aGUgc3RydWN0IGRlZmluaXRpb24g
dG8gaW50ZWxfZHJhbS5oLCBhbmQga2VlcCBpdCBvcGFxdWUNCj4gdG8gZXZlcnlvbmUgbm90IG5l
ZWRpbmcgaXQuIFRoaXMgYWxzbyByZW1vdmVzIHRoZSBkdXBsaWNhdGlvbiBvZiB0aGUNCj4gc3Ry
dWN0IGRlZmluaXRpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5owqDCoMKgwqDCoMKgIHwgMjEgKystLS0tLS0tLS0tLS0tLS0tLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYyB8IDE3ICsrKysrKysrKysrKysrKy0tDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uaCB8IDIzICsrKysrKysrKysrKysr
KysrKysrKystDQo+IMKgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RldmljZV90eXBlcy5owqAgfCAy
MSArKy0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gwqA0IGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlv
bnMoKyksIDQxIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFw
aWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaA0KPiBpbmRleCBiNmM2MzJiZDUyMmMuLmFhZmFiMzgwMGY0MiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC02MCw2ICs2MCw3IEBADQo+IMKgI2luY2x1ZGUgImlu
dGVsX3N0ZXAuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfdW5jb3JlLmgiDQo+IMKgDQo+ICtzdHJ1
Y3QgZHJhbV9pbmZvOw0KPiDCoHN0cnVjdCBkcm1faTkxNV9jbG9ja19nYXRpbmdfZnVuY3M7DQo+
IMKgc3RydWN0IGludGVsX2Rpc3BsYXk7DQo+IMKgc3RydWN0IGludGVsX3B4cDsNCj4gQEAgLTI4
NSwyNSArMjg2LDcgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgew0KPiDCoAl1MzIgc3VzcGVu
ZF9jb3VudDsNCj4gwqAJc3RydWN0IHZsdl9zMGl4X3N0YXRlICp2bHZfczBpeF9zdGF0ZTsNCj4g
wqANCj4gLQlzdHJ1Y3QgZHJhbV9pbmZvIHsNCj4gLQkJYm9vbCB3bV9sdl8wX2FkanVzdF9uZWVk
ZWQ7DQo+IC0JCXU4IG51bV9jaGFubmVsczsNCj4gLQkJYm9vbCBzeW1tZXRyaWNfbWVtb3J5Ow0K
PiAtCQllbnVtIGludGVsX2RyYW1fdHlwZSB7DQo+IC0JCQlJTlRFTF9EUkFNX1VOS05PV04sDQo+
IC0JCQlJTlRFTF9EUkFNX0REUjMsDQo+IC0JCQlJTlRFTF9EUkFNX0REUjQsDQo+IC0JCQlJTlRF
TF9EUkFNX0xQRERSMywNCj4gLQkJCUlOVEVMX0RSQU1fTFBERFI0LA0KPiAtCQkJSU5URUxfRFJB
TV9ERFI1LA0KPiAtCQkJSU5URUxfRFJBTV9MUEREUjUsDQo+IC0JCQlJTlRFTF9EUkFNX0dERFIs
DQo+IC0JCQlJTlRFTF9EUkFNX0dERFJfRUNDLA0KPiAtCQkJX19JTlRFTF9EUkFNX1RZUEVfTUFY
LA0KPiAtCQl9IHR5cGU7DQo+IC0JCXU4IG51bV9xZ3ZfcG9pbnRzOw0KPiAtCQl1OCBudW1fcHNm
X2d2X3BvaW50czsNCj4gLQl9IGRyYW1faW5mbzsNCj4gKwljb25zdCBzdHJ1Y3QgZHJhbV9pbmZv
ICpkcmFtX2luZm87DQo+IMKgDQo+IMKgCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtIHJ1bnRpbWVf
cG07DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxf
ZHJhbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYw0KPiBpbmRleCBl
N2ZhOTM4Yzk4Y2YuLjU5MDMyYzkzOWQwZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc29jL2ludGVsX2RyYW0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2Mv
aW50ZWxfZHJhbS5jDQo+IEBAIC01LDYgKzUsOCBAQA0KPiDCoA0KPiDCoCNpbmNsdWRlIDxsaW51
eC9zdHJpbmdfaGVscGVycy5oPg0KPiDCoA0KPiArI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5o
Pg0KPiArDQo+IMKgI2luY2x1ZGUgIi4uL2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgiIC8q
IEZJWE1FICovDQo+IMKgDQo+IMKgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+IEBAIC03MDYsNyAr
NzA4LDcgQEAgc3RhdGljIGludCB4ZWxwZHBfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgc3RydWN0DQo+IGRyYW1faW5mbw0KPiDCoA0KPiDCoGludCBpbnRlbF9k
cmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqB7DQo+IC0Jc3Ry
dWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4gKwlzdHJ1Y3Qg
ZHJhbV9pbmZvICpkcmFtX2luZm87DQo+IMKgCWludCByZXQ7DQo+IMKgDQo+IMKgCWRldGVjdF9m
c2JfZnJlcShpOTE1KTsNCj4gQEAgLTcxNSw2ICs3MTcsMTIgQEAgaW50IGludGVsX2RyYW1fZGV0
ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoAlpZiAoR1JBUEhJQ1NfVkVS
KGk5MTUpIDwgOSB8fCBJU19ERzIoaTkxNSkgfHwgIUhBU19ESVNQTEFZKGk5MTUpKQ0KPiDCoAkJ
cmV0dXJuIDA7DQo+IMKgDQo+ICsJZHJhbV9pbmZvID0gZHJtbV9remFsbG9jKCZpOTE1LT5kcm0s
IHNpemVvZigqZHJhbV9pbmZvKSwgR0ZQX0tFUk5FTCk7DQo+ICsJaWYgKCFkcmFtX2luZm8pDQo+
ICsJCXJldHVybiAtRU5PTUVNOw0KPiArDQo+ICsJaTkxNS0+ZHJhbV9pbmZvID0gZHJhbV9pbmZv
Ow0KPiArDQo+IMKgCS8qDQo+IMKgCSAqIEFzc3VtZSBsZXZlbCAwIHdhdGVybWFyayBsYXRlbmN5
IGFkanVzdG1lbnQgaXMgbmVlZGVkIHVudGlsIHByb3Zlbg0KPiDCoAkgKiBvdGhlcndpc2UsIHRo
aXMgdy9hIGlzIG5vdCBuZWVkZWQgYnkgYnh0L2dsay4NCj4gQEAgLTc0OSwxMSArNzU3LDE2IEBA
IGludCBpbnRlbF9kcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4g
wqAJcmV0dXJuIDA7DQo+IMKgfQ0KPiDCoA0KPiArLyoNCj4gKyAqIFJldHVybnMgTlVMTCBmb3Ig
cGxhdGZvcm1zIHRoYXQgZG9uJ3QgaGF2ZSBkcmFtIGluZm8uIEF2b2lkIG92ZXJ6ZWFsb3VzIE5V
TEwNCj4gKyAqIGNoZWNrcywgYW5kIHByZWZlciBub3QgZGVyZWZlcmVuY2luZyBvbiBwbGF0Zm9y
bXMgdGhhdCBzaG91bGRuJ3QgbG9vayBhdCBkcmFtDQo+ICsgKiBpbmZvLCB0byBjYXRjaCBhY2Np
ZGVudGFsIGFuZCBpbmNvcnJlY3QgZHJhbSBpbmZvIGNoZWNrcy4NCj4gKyAqLw0KPiDCoGNvbnN0
IHN0cnVjdCBkcmFtX2luZm8gKmludGVsX2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
KQ0KPiDCoHsNCj4gwqAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRy
bSk7DQo+IMKgDQo+IC0JcmV0dXJuICZpOTE1LT5kcmFtX2luZm87DQo+ICsJcmV0dXJuIGk5MTUt
PmRyYW1faW5mbzsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHUzMiBnZW45X2VkcmFtX3NpemVf
bWIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBjYXApDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc29jL2ludGVsX2RyYW0uaA0KPiBpbmRleCAyNWZlNjBiMmIxMTcuLjJhNjk2ZTAzYWFk
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5oDQo+IEBAIC02LDkg
KzYsMzAgQEANCj4gwqAjaWZuZGVmIF9fSU5URUxfRFJBTV9IX18NCj4gwqAjZGVmaW5lIF9fSU5U
RUxfRFJBTV9IX18NCj4gwqANCj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPg0KPiArDQo+IMKg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGU7DQo+IMKgc3RydWN0IGRybV9kZXZpY2U7DQo+IC1zdHJ1
Y3QgZHJhbV9pbmZvOw0KPiArDQo+ICtzdHJ1Y3QgZHJhbV9pbmZvIHsNCj4gKwlib29sIHdtX2x2
XzBfYWRqdXN0X25lZWRlZDsNCj4gKwl1OCBudW1fY2hhbm5lbHM7DQo+ICsJYm9vbCBzeW1tZXRy
aWNfbWVtb3J5Ow0KPiArCWVudW0gaW50ZWxfZHJhbV90eXBlIHsNCj4gKwkJSU5URUxfRFJBTV9V
TktOT1dOLA0KPiArCQlJTlRFTF9EUkFNX0REUjMsDQo+ICsJCUlOVEVMX0RSQU1fRERSNCwNCj4g
KwkJSU5URUxfRFJBTV9MUEREUjMsDQo+ICsJCUlOVEVMX0RSQU1fTFBERFI0LA0KPiArCQlJTlRF
TF9EUkFNX0REUjUsDQo+ICsJCUlOVEVMX0RSQU1fTFBERFI1LA0KPiArCQlJTlRFTF9EUkFNX0dE
RFIsDQo+ICsJCUlOVEVMX0RSQU1fR0REUl9FQ0MsDQo+ICsJCV9fSU5URUxfRFJBTV9UWVBFX01B
WCwNCj4gKwl9IHR5cGU7DQo+ICsJdTggbnVtX3Fndl9wb2ludHM7DQo+ICsJdTggbnVtX3BzZl9n
dl9wb2ludHM7DQo+ICt9Ow0KPiDCoA0KPiDCoHZvaWQgaW50ZWxfZHJhbV9lZHJhbV9kZXRlY3Qo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiDCoGludCBpbnRlbF9kcmFtX2RldGVj
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0veGUveGVfZGV2aWNlX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZGV2
aWNlX3R5cGVzLmgNCj4gaW5kZXggMDQ4MmUwMGU1OGRmLi5mM2NiYTBlZDRlYzEgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9kZXZpY2VfdHlwZXMuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0veGUveGVfZGV2aWNlX3R5cGVzLmgNCj4gQEAgLTMwLDYgKzMwLDcgQEANCj4g
wqAjZGVmaW5lIFRFU1RfVk1fT1BTX0VSUk9SDQo+IMKgI2VuZGlmDQo+IMKgDQo+ICtzdHJ1Y3Qg
ZHJhbV9pbmZvOw0KPiDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiDCoHN0cnVjdCB4ZV9nZ3R0
Ow0KPiDCoHN0cnVjdCB4ZV9wYXRfb3BzOw0KPiBAQCAtNTkwLDI1ICs1OTEsNyBAQCBzdHJ1Y3Qg
eGVfZGV2aWNlIHsNCj4gwqAJICovDQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
Ow0KPiDCoA0KPiAtCXN0cnVjdCBkcmFtX2luZm8gew0KPiAtCQlib29sIHdtX2x2XzBfYWRqdXN0
X25lZWRlZDsNCj4gLQkJdTggbnVtX2NoYW5uZWxzOw0KPiAtCQlib29sIHN5bW1ldHJpY19tZW1v
cnk7DQo+IC0JCWVudW0gaW50ZWxfZHJhbV90eXBlIHsNCj4gLQkJCUlOVEVMX0RSQU1fVU5LTk9X
TiwNCj4gLQkJCUlOVEVMX0RSQU1fRERSMywNCj4gLQkJCUlOVEVMX0RSQU1fRERSNCwNCj4gLQkJ
CUlOVEVMX0RSQU1fTFBERFIzLA0KPiAtCQkJSU5URUxfRFJBTV9MUEREUjQsDQo+IC0JCQlJTlRF
TF9EUkFNX0REUjUsDQo+IC0JCQlJTlRFTF9EUkFNX0xQRERSNSwNCj4gLQkJCUlOVEVMX0RSQU1f
R0REUiwNCj4gLQkJCUlOVEVMX0RSQU1fR0REUl9FQ0MsDQo+IC0JCQlfX0lOVEVMX0RSQU1fVFlQ
RV9NQVgsDQo+IC0JCX0gdHlwZTsNCj4gLQkJdTggbnVtX3Fndl9wb2ludHM7DQo+IC0JCXU4IG51
bV9wc2ZfZ3ZfcG9pbnRzOw0KPiAtCX0gZHJhbV9pbmZvOw0KPiArCWNvbnN0IHN0cnVjdCBkcmFt
X2luZm8gKmRyYW1faW5mbzsNCj4gwqANCj4gwqAJLyoNCj4gwqAJICogZWRyYW0gc2l6ZSBpbiBN
Qi4NCg0K
