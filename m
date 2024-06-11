Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DDA9038BD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 12:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADF810E586;
	Tue, 11 Jun 2024 10:20:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/UOUGgp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB8A310E586
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718101224; x=1749637224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5WcZyKYCxkoOdF3Ariyc1vW0Lfh50aVmL5Rvlfbfnlo=;
 b=m/UOUGgpC3X0OfsL5BbmrCv1qgyWw7ybPuE47fDNHYLjmJZLtvrvw3pl
 aWDMt1UyZncp4F+bsE9I/Lw3mR0TPuZr1uhJfQaI3hpx6p5ustvwZ89eO
 hTb/j1QHxKmnYaPkUcPqt2WL87AvBgrDT+n2CrfjXajBFkCZ7juvDyp88
 1uc30ACXRMhD9Xf0KIaHcVbyqmw2JPPrdt5YLJLEF10mcGF6mpEhsN8FD
 jaHy+uK1Crtlpz26I1DSN7BbAE8HfO4vZ9cEt61eVjgL1NJX4GR/dnh8x
 YGGmVle9YRl97DPpcF3XtzCEstYFQO+Fxl3Ti+echOVG7ZGx4ekY0S46S w==;
X-CSE-ConnectionGUID: hiEG1o7+SC2hf3ZWzZv5zA==
X-CSE-MsgGUID: 3Qsf1dvyTfCbuRw9pHaH1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14955004"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="14955004"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 03:20:23 -0700
X-CSE-ConnectionGUID: KigQBHzkRqmXzVu4fTm70A==
X-CSE-MsgGUID: v9G++NEQTCyVA7t39wC0Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="39232910"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 03:20:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 03:20:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 03:20:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 03:20:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 03:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQRxUORbRaJy/+JtGgud3lf8DHvGVol+dwxlrOejdV5e0jfKB21620laZWuQXX/ly0xPXNELzRmXD+/Fn33tK0JcGBLjJKDCkrw2VkYBLosNBXgydHMJUKjeWkFiCiXTgwApI7UFoVnzuF6Zwn+iG00zGBychz90LS0ClNnlnlqBxNltjeqfDqOV3wUj20j9cZpNsBm1cSiiP8jIqemA+NB2ZYs3RTrOuTlY0FAbJtmEy7JgV/fPFwIJit471MWd5XH5OrSYDekpc0G54TkQcQpNPbV6rSA0KhDyY5iVzkaAzsmLq1KDmBpxXQtVm+to3WyzPzYvR4WOnj2qTzm+SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WcZyKYCxkoOdF3Ariyc1vW0Lfh50aVmL5Rvlfbfnlo=;
 b=jcOJ0+y7laSfRn6jtJMR6px6mjZ2RM9cjix/gmDvBkyeVyOTi0jJbMO5g57LF6f/Rtf6GYXWdwwoSBnvH0xa1ri3+sxxs9C1/3G93UL3jY5f3m+u8L1JGOQN1lnyLMfhy4T5hGYUlsGvU64/VTgz4lul9MCoMW9TmycLa6fUxByN/0PCb1iElU9gXmFeyEl4zyNbMoE0BwEHN4Y0iI29u8MSA5oeqlXAi5O2ZbSthoqK5RpdHmdwXNXJMhgfnDBu8hq81IK4EfkLOHAkMNNrjbasJ7h+Se32wlWsBg1M6c6sp5Vz2cMVihWW8X6VeU+snqhZEQJtOQ0edheI72/Wpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7361.namprd11.prod.outlook.com (2603:10b6:930:84::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.37; Tue, 11 Jun 2024 10:20:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 10:20:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "Manna, Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH 00/13] Panel Replay eDP prepare
Thread-Topic: [PATCH 00/13] Panel Replay eDP prepare
Thread-Index: AQHauOGPAmitor51fUqbmkrb13TnWrHAv+UAgAGgQgA=
Date: Tue, 11 Jun 2024 10:20:19 +0000
Message-ID: <43b5f677b22b022f0ea5ace362bb6805a23f3e80.camel@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
 <PH7PR11MB59811ACDD60C9282AA05D784F9C62@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59811ACDD60C9282AA05D784F9C62@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7361:EE_
x-ms-office365-filtering-correlation-id: 7b20fd74-2250-47c4-f0f6-08dc8a001871
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?N3FXUVFPaktKZGpCeVZEU3ZVbHRKOE84T3dnaWN4cUxoTU1nc1NSOW1DeVVt?=
 =?utf-8?B?U1pScFFUUmIwcWJNdWZMUWYxNGRBZFZwWXRPU0VLcGdwTWRMaFlnc1U4dlNy?=
 =?utf-8?B?L0JtNDJmRXAzN0RIeEZLTkVDQ1ViZk9BRFUreUEwQ2VMb0FDVXRKTHpTYmpX?=
 =?utf-8?B?dFp1bVZyRmtuSkIxQkZtTWFZYXJvTUdDT2ZXMnRvUEtyYWhpMXQxYW9iTmNh?=
 =?utf-8?B?bWIxQjB5aUVHN0FNSEo3NGZTZjVET2h5WER3ZnZveHJuTSt2QTVyekxLR29H?=
 =?utf-8?B?Um1UVGFVY0tpT3huVWVlTkF2V0Y2ZDF6UjBjdmdUNjAvUlJEMklMeTA4eXBa?=
 =?utf-8?B?L2VKOEgvaWlLZ1RlaU0rdUpQakJpeVhtVTFBRDVzdkR3YzhrZjdTVTA2cHNX?=
 =?utf-8?B?M3hnZjZDYkpzeEh5bWc4STllaFJXeGV0L0tEcTZaVk9iaDRmZjN6Y2VJdGti?=
 =?utf-8?B?elY2NVlKc3ptMkgzQnQyVVVlazY3OC9kZGE1TzFwK2NyVkRqRHFCZDRkVFpx?=
 =?utf-8?B?amp6Um1JS1pjeGEzRllBMzNpZStGeGpjb2E5clFaUllyM2ZPNFd1a3JEWVJk?=
 =?utf-8?B?TXZoVUF0YWlDaHlrQWkzS1RyZGJiOU9vK0R6b2FnOGp1Rzc0S3BwUFJ3YnlM?=
 =?utf-8?B?S1Y3MExXSVJkdnh0Q2N2ejVGMTlLeTZ3NTltMzQzSG5XN3ptZXAwU1h6aE9J?=
 =?utf-8?B?OS9CdERYZVRqRE9LTThESWdsL1gycGZOZjgrZzd2azhCMHpSQXdkUGk2WFpL?=
 =?utf-8?B?Z1lHd2dnY1JpWm03RU4wY09EVmMzdXI1b0FDMXpQMDF2VFJvbC9OV3JuK1gy?=
 =?utf-8?B?NmlVRUZrUERvSUsyN2Z3M1JubEV3bGxEY3IzNFZnYUtVVGpreFk4VlpLOTV2?=
 =?utf-8?B?eTFSRmg4alhub053UUVZQWZUSFUwa1NFNk5RZlpkOSs3Z1FaKzkvZ1ZOcWxo?=
 =?utf-8?B?S2tBdnY2R3BVeFJQMDQzaG5QeXIvWW02N1J4STZDYlFZQktsc2Z5U1hwMStk?=
 =?utf-8?B?eUJEM0xYVm1kNE80cUZiczYreWhHV1IxSkRGOUVLU1BHUnVpbE9tc21VRGY5?=
 =?utf-8?B?QUI5TEFDcUFWVzNmeTZxMHBRUUxPU0Q1bTdBeW5aMmxxZFZPYytkK1lGc0Vn?=
 =?utf-8?B?VXpCaDdKUHYxUUtmV2o4Tml6OGhZek51UldJWlU3SVI2b1ZieXVmZC9Pa2N6?=
 =?utf-8?B?RTRmSkJsS0UxMlljMXpCUWlKZ29qejZsMlZkbXl3WFFJNkIyV1RYbFJOdzZ0?=
 =?utf-8?B?dTZuZ1JVVmdaZUk1bkdGRFNTTnpKTnJEQTJjZGdSQ2tnV2FGNm1sQzBEakZO?=
 =?utf-8?B?bTVaaW9oMGVZK3BDejBtRHhXZ25QU2pSZHhIWkZ0T1dNQ1hoS0NFeU5SYVNL?=
 =?utf-8?B?aXl5UWJOZWlPYUFzb1ZQN2ZBZUd6QmlqZnhteFRnOVlpYmVLVllUSEdEL3BT?=
 =?utf-8?B?MDdIam1xQU9hUngxSHpIYTgvL0ZLK3lSRTE1VXU3L0dDNHVhaDd0NjZMcE9r?=
 =?utf-8?B?bjVyeEkzNzlvblZHV1dmZ1R4RXV3N3pyVDdMbjhFeHorWk8wM1lLV3pNdFNV?=
 =?utf-8?B?NnFNMTRITVhGbUFHUGJJRzFWbk9mcjkya29KeHdJbjBXMXNPUk1TY2crTGU4?=
 =?utf-8?B?R0xqMDZzeXh3UW9iQ0poUVg5aDJTT0hTYnJWVXNOUWx6aCtVTTk5SC9NNHlT?=
 =?utf-8?B?ZDJUM2RPNmFPdXJsWjQxeXg3SU9WTEhENVV2UnNRZWFjeVN5c1JOS2VIWlZa?=
 =?utf-8?B?djluWHI3cWFCSmFHdndUcDF3OWpadWR3T1JHZCtqMWs1UzUza3RMcmNIQ3Vi?=
 =?utf-8?Q?Fqd8qEGpbJxsB5tmY+YTndRzPeNtqJCOxKw2Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGxMYmY1STdJeW5MaEsyZGh0UVh2Y1NWR29Sem95aHVTNXdSbllxaTlYSnlF?=
 =?utf-8?B?U0ZWYlY2MWMza3p1NXVxaG1aNDVsK2oxc1pEV1pBRDB6UzhGUm0ySm5wN3Nx?=
 =?utf-8?B?ckZ2NXl1UWp1T3k5Z3U2RWVlZ3ZyUFB2cnhQaGpGZUpxbkRWMitvS1pqam9p?=
 =?utf-8?B?Qm9EV3RNeHVzR0xBcWpCS0pwU0tmQ2Nid0pDM3R6Sk5LUXZUbGxxSnJKQmY5?=
 =?utf-8?B?UzVTcEw0enhldlJVb2pNRDBZME9EVXBzbUkySXVSYVczYk5DZDI2SHpEVGpn?=
 =?utf-8?B?R093MkUzT0JxSVZaMGo4ZGYzSjNrM0RmV2ZYLzE4S3h0Zlk0TnI2aDh5S0Jm?=
 =?utf-8?B?YmlUWE9PRkJTSVBuR0NZbHlSU1NVeE9aeDNsdlNjSDJDa1hQTDdhaVByNkhi?=
 =?utf-8?B?SXNONEQ5Mm5lQXEwc2pSZUpiUFRadFFyOFhPalNtcGtFQW9qTUNRK3B5Z21W?=
 =?utf-8?B?Z0FwNFdNQXVXMnA0R3JPaENNbHA4a1NIeHRsRkFndG9nQzNuU0FSdS9QQThj?=
 =?utf-8?B?OXdmbTJtUE52OVM2TFV6c2ZVNXlJcjNiR1VrNVVMRUhSeU1oMDN0WTJETytK?=
 =?utf-8?B?d3FVVGd2dDhzdXRDRGR3Slp5djlOc0xXQ3JoSk1oZnM2RXJGeENMeDJ5NWRE?=
 =?utf-8?B?bmJaMlAzSlozTUo3K25kSFpYNVJFWUVGRVFrMDNIMTAxSWRCczMwdkUrSTJa?=
 =?utf-8?B?OE1JNTVLUzNHWlFucmlGT21WUVFseFNmV3hUS2gwVERBSzQ2TGdTZzRaT2Jz?=
 =?utf-8?B?S3E2dE0zczEvOTFBa3BHQTg0OGtiV1hrY0dRdnkyYlpyYkpGSWhCcGJYUzlS?=
 =?utf-8?B?eWQ3Q2t2RnljQ2N2YVQ2cVZId1dCbERzbDBQcWVpVlNvWFJZSlpLWkdGU2FG?=
 =?utf-8?B?RFpHL2pDMzQyL09Pbzl6Y200OGpLanV3SU9UTTlmTFprN213aXpGdXZIaWx4?=
 =?utf-8?B?MVY0L2doUGFKWFFtZ3BFSmFwSnQ3bUJIcSt4UTYvY0NmUTRHSUdsbFROOHZ5?=
 =?utf-8?B?UGNXaElYdlFwRXZ6ZGV3R0dDdEdjbkFnUnJZVFZrdWszdGI3MGZkRHhBQTk4?=
 =?utf-8?B?SUZYSGtjc0hEUTR1RW12M2FjdktiNjRPYlE3R25EdXNpT3VHYU9EUXVmTW5h?=
 =?utf-8?B?bDZDQ09ha2FxZlZSZjdkSm9od29FNENya2tvWGRwYUI3YXFOMlNtdEVGYVlB?=
 =?utf-8?B?bW9DTWVJdTNhNjdVTlNGS2MyaEplUzd4eXdBcDM2VHQ3QXI1VVoxUU1YMXEr?=
 =?utf-8?B?UjgvS0RtNlAwRVFYYWk0a2VwNi8wWjJZMzFrMHVVOWdqWkdTcm8ybWtoUkJ6?=
 =?utf-8?B?N1dCRVFjNmpNdkcrVWlnc3R5akVNVlQyYm91MzFKY2ZiOWxYT2Z2VUY2Mjd0?=
 =?utf-8?B?QXM5Qlc0b0RHQWQ3RUFRNUgzY2p0SmN2dzJ0S0lFakhlNEFRcUZrbkg5RVZm?=
 =?utf-8?B?cmV6c2I4Q2FNWVJESWg2VzFTcnBRQUZHZXNNYm43V0JscHEreE1PWndHWlNm?=
 =?utf-8?B?STU1UWpJelgzdnBhbGpTZXhiRW1rU2pqY0NNOVk3cytYaGN6Q0kveWRaZmRO?=
 =?utf-8?B?RDdmNmNKTWJKMDgzMnRuellvZllWSTdackJVTmEvdWU0WHF4UTlKRXJ4NzJP?=
 =?utf-8?B?MlpxdTc5Y2wyVnc4RUNhUmdhcElCdm8xM1F3aEZSWnZON3Q2ZW9UaGhNbVNX?=
 =?utf-8?B?RFZzTmhyQk5acHdib3RldVhtc1UxZGMvQzNpQ3JYWlAyb3FDWmZwdzhvSXBN?=
 =?utf-8?B?L2pKVzNFZzBuOFZySnJUWkpSTk53UDVqQ1NNdXhCMmRmZjBUajF3RWNybG9w?=
 =?utf-8?B?cGFZaFZWNGFjK0M2QzhXTmN1WkRzVng3WTUvT2pzSExmVWxKUzJGNFpTQjlK?=
 =?utf-8?B?RTJHOXFSWkFrUUVkc0FPU003c2s0NEtFbG85YlI2Z0R3T2tLdk5GQzJTUzVO?=
 =?utf-8?B?UDFTc3lkTGFGbVNmOGM5M1g0eHpmNGNWa3U0NnFPVGg0R0RDdFFZL2FHT2FS?=
 =?utf-8?B?aTF1ODlPdW1nNDZmUllhcXhaaUlTSVZaQURUQU8vVDdjdWZ4eXJTS0xLMXVM?=
 =?utf-8?B?dHJVdzlLWjQ1OFMzMCtEbnJkeUxSY1VSbWlCci9oUENONC85QXBpSFpJdmFK?=
 =?utf-8?B?SEsyZmZTZE9TcU15M1paZWlFRFozRjdlKzhvMlZBTEw0Z01JbHYrVTZZeVBq?=
 =?utf-8?B?VGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <38A0AC9BD79C294B9A2D6BE272425B45@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b20fd74-2250-47c4-f0f6-08dc8a001871
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 10:20:19.4130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FsXdO4uI9gScScHjOxxergiqq/y3DqL34tCsz6Po51SSGbGmKScThEKcULZ8xPcJnkKiWI6osmp3cMtT70h1YbT6H3ktasXxTMFfeX74FH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7361
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

T24gTW9uLCAyMDI0LTA2LTEwIGF0IDA5OjMwICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBK
dW5lIDcsIDIwMjQgNzoxOSBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEth
aG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggMDAvMTNdIFBh
bmVsIFJlcGxheSBlRFAgcHJlcGFyZQ0KPiA+IA0KPiA+IFRoaXMgaXMgYSBzdWJzZXQgb2YgIlBh
bmVsIFJlcGxheSBlRFAiIHBhdGNoIHNldC4gSXQgY29udGFpbnMNCj4gPiB2YXJpb3VzDQo+ID4g
cHJlcGFyYXRpb25zIGFuZCBmaXhlcyBmb3IgZW5hYmxpbmcgUGFuZWwgUmVwbGF5IGVEUC4gVGhl
c2UgYXJlDQo+ID4gc2VlbiBhcyBzYWZlDQo+ID4gdG8gbWVyZ2UgbmV4dCBhbmQgbm90IHlldCBl
bmFibGluZyBQYW5lbCBSZXBsYXkgZURQLg0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlciAoMTMp
Og0KPiA+IMKgIGRybS9pOTE1L2FscG06IERvIG5vdCB1c2UgZmFzdF93YWtlX2xpbmVzIGZvciBh
dXggbGVzcyB3YWtlIHRpbWUNCj4gPiDCoCBkcm0vaTkxNS9hbHBtOiBXcml0ZSBhbHNvIEFVWCBM
ZXNzIFdha2UgbGluZXMgaW50byBBTFBNX0NUTA0KPiA+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IFRh
a2UgcGFuZWwgcmVwbGF5IGludG8gYWNjb3VudCBpbiB2c2Mgc2RwDQo+ID4gdW5wYWNraW5nDQo+
ID4gwqAgZHJtL2k5MTUvZGlzcGxheTogU2tpcCBQYW5lbCBSZXBsYXkgb24gcGlwZSBjb21wYXJp
c29uIGlmIG5vDQo+ID4gYWN0aXZlDQo+ID4gwqDCoMKgIHBsYW5lcw0KPiA+IMKgIGRybS9kaXNw
bGF5OiBBZGQgbWlzc2luZyBQYW5lbCBSZXBsYXkgRW5hYmxlIFNVIFJlZ2lvbiBFVCBiaXQNCj4g
PiDCoCBkcm0vaTkxNS9wc3I6IFNwbGl0IGVuYWJsaW5nIHNpbmsgZm9yIFBTUiBhbmQgUGFuZWwg
UmVwbGF5DQo+ID4gwqAgZHJtL2k5MTUvYWxwbTogU2hhcmUgYWxwbSBzdXBwb3J0IGNoZWNrcyB3
aXRoIFBTUiBjb2RlDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBBZGQgUGFuZWwgUmVwbGF5IHN1cHBv
cnQgdG8NCj4gPiBpbnRlbF9wc3IyX2NvbmZpZ19ldF92YWxpZA0KPiA+IMKgIGRybS9pOTE1L3Bz
cjogUHJpbnQgUGFuZWwgUmVwbGF5IHN0YXR1cyBpbnN0ZWFkIG9mIGZyYW1lIGxvY2sNCj4gPiBz
dGF0dXMNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IE1vdmUgdmJsYW5rIGxlbmd0aCBjaGVjayB0byBz
ZXBhcmF0ZSBmdW5jdGlvbg0KPiA+IMKgIGRybS9pOTE1L3BzcjogVGFrZSBpbnRvIGFjY291bnQg
U1UgU0RQIHNjYW5saW5lIGluZGljYXRpb24gaW4NCj4gPiB2YmxhbmsNCj4gPiDCoMKgwqAgY2hl
Y2sNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IENoZWNrIHZibGFuayBhZ2FpbnN0IElPIGJ1ZmZlciB3
YWtlIHRpbWUgb24NCj4gPiBMdW5hcmxha2UNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IFdha2UgdGlt
ZSBpcyBhdXggbGVzcyB3YWtlIHRpbWUgZm9yIFBhbmVsIFJlcGxheQ0KPiANCj4gVGhlcmUgYXJl
IHNvbWUgY2hlY2twYXRjaCBjaGVja3MgbmVlZCB0byBiZSBmaXhlZCwgd2l0aCB0aGVzZSBmaXhl
ZA0KPiBmb3IgdGhlIHdob2xlIHBhdGNoc2V0LA0KPiANCj4gUmV2aWV3ZWQtYnk6IEFuaW1lc2gg
TWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQpUaGVzZSBhcmUgbm93IHB1c2hlZCB0
byBkcm0taW50ZWwtbmV4dCB3aXRoIHNvbWUgY2xlYW4tdXBzIGZpeGluZyBjaGVjaw0KcGF0Y2gg
d2FybmluZ3MgYXMgc3VnZ2VzdGVkIGJ5IEFuaW1lc2guDQoNClRoYW5rIHlvdSBBbmltZXNoIGFu
ZCBNYWFydGVuIGZvciB5b3VyIGhlbHAgb24gdGhlc2UgcGF0Y2hlcy4NCg0KQlIsDQoNCkpvdW5p
IEjDtmdhbmRlcg0KPiANCj4gPiANCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jwqDCoMKgwqAgfMKgIDExICstDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoMKgIHzCoMKgIDIgKw0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmPCoCB8wqDCoCA0ICstDQo+ID4gwqAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgwqAgMSAr
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKg
wqAgfMKgwqAgNSArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuY8KgwqDCoMKgwqAgfCAxNjEgKysrKysrKysrLS0tLS0NCj4gPiAtLS0tDQo+ID4gwqBpbmNs
dWRlL2RybS9kaXNwbGF5L2RybV9kcC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoCAxICsNCj4gPiDCoDcgZmlsZXMgY2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDgz
IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+IA0KDQo=
