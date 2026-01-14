Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861C0D202D3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F30710E615;
	Wed, 14 Jan 2026 16:22:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvJ6l5qP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DF410E615;
 Wed, 14 Jan 2026 16:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407778; x=1799943778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+sPnqgFYSueQIZvrU6C2aP58nXSmILIXfmPltKwpYK0=;
 b=HvJ6l5qPkTvDZ/w0w+HJOLtPU54wMcHUj7t+0IKhikRx8c/FdE0t/Xrw
 Da9GGnT2t2jW4vBMDQ+HD+xFltt2cuMvaDNoH2iKip/s1fAqywqdI7unI
 cVooR2LC3DgdDDFexdnwSScEzkxy9YV6E8UrbOwto26bqRpalAlm240RV
 AF7u+jzHnBeJyjUMXnPAehHrS9LHT/grNz4eOnVKZ0Coo1Vwn3u6ENYOC
 CqoXtPR43wbi8WVNfDrjagJ9PG4uNZVg/miXF0byOsSiyiEmSg/DzrR7N
 /XPUCV8kJbv6EhFz8R/Qjb/DWRVBJK22V98LM1TZylr0nwOJNkNw6Bat4 Q==;
X-CSE-ConnectionGUID: Uvw+/jCaRvyYw1gBYm8VIQ==
X-CSE-MsgGUID: cAugnNX/Q9CTs1dHNTPUKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551550"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551550"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:22:58 -0800
X-CSE-ConnectionGUID: P4wjrArfSKCFCPU8uASffQ==
X-CSE-MsgGUID: Uyvwkco2RKeVbagbEhJhmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611096"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:22:57 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:22:57 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:22:57 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:22:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gXfHDe7v8xDsYiA0hgI2ud4t8w3kRnw3rdh6HPqxyEjheHctgMSrjQ+0ZRM77QNltMGxzn5O6D4g8wnoHz8EbUtu5tVc6awjVsgFOe2rNyqhrmonJDP7gqiv9OQsIZ/TzGDpatHSYnYFQZAQBeQNAqKstjpBMGSCR5LHdYWztyRMARLhVXSpKeI3YCMNXkr0PQHs+InfTfUXpbT/aLC7O8/96HMwQJC49Cmvny3BTGjgK1jErxTwghgq2g3cme3yzWdPhDH1THabBToCmjRYac7RIEohNTHpI0Oj5u5B1J/I2WDIK7JrXC4HkQ9lIZLY6xptYzVtlUxBKSi2tE/lXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HcAgI/rs44WX/063g+HGvfSfEJwjQg3n3K3JzZgmN2w=;
 b=VQhmmpQm42fXlCxDmMLJd3Xa9ZmsdKq3hicbRSjmiRRkaMC3xt15JPeJG3aUvZPNyyeB1jLXT1n/rOyzrNBDBLO74KnXYBG16h/wwN6NvnIeU96hn5kaEntICC/xpsMDN9rNS7SKSWz7ydWqOXR371VBVqdK2woEyoWTwbh6/hUR80fbVgRCwX2gE7EqzpB8INH6POicpQA1enxMP+BOhCfKGeMJTw0bYNi6YjCsQ1tEXfFLnt8TMZluwoajb62zu7wR9VyBsKj/yPdSbl+oTvcHSDMu7pz3wYATw8Mb6sdojF1M0tw1IjwhYxYVtnh996Rd9xnR5gM74lYXJYy0+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:22:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:22:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 01/15] drm/i915/dsc: Track the detaild DSC slice configuration
Date: Wed, 14 Jan 2026 18:22:18 +0200
Message-ID: <20260114162232.92731-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ec42735-a4c9-48f1-cae4-08de53892bda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?azBkcWQyUnRFY1AwMHVxWGZiK2V6NG8xR1NUK0xnYzNiMndDSVpGVW1YMFU5?=
 =?utf-8?B?dWJjOXRjYU1POUJzUDYzWmUwc2NseStLNHdNTmFrQzJsQWp1WkZheWw1aUlT?=
 =?utf-8?B?WFNndG03L2VpNFVJWEZYczMrNU5hajUzRVNBZnR0cy9CclFsajlsekJJaGhi?=
 =?utf-8?B?cVprREU4MEsvMHZRK01zZmkxUE90d0QrVi9lbVoyRFNFOWVJRVJlMU9jUE5x?=
 =?utf-8?B?RjArV2ZIRENiQi9EV1V1dDArLzdSdSswR2lQdElXb2tVV0lPVnVwc05xN2Ev?=
 =?utf-8?B?NUJ1YkM3RVFYNmptZC9GQTAvb3g2MG9DWUJKL21VdWROdTNBRXh2RFE5N1pa?=
 =?utf-8?B?WnlVN2k2bDFFWkw0dVZkWjdkZ3B1ajZCSXdQSGJ2SnBPbE1wM3J5WUFPelZ4?=
 =?utf-8?B?Um1vQjBBbE1BczRZUDRsQjhmdkxick0xM3l4Skc4aVAxUG9ndjg1T1c0RStU?=
 =?utf-8?B?TkJZRUpPdUlqZlhzazZZdXNHTTRJeGtlQnZHSFJpdUpMNEhBMnYzRWZxQmx1?=
 =?utf-8?B?NWo2NTE5N2dRWUhWOHJMb2RseHJLZWdUVW91amRJVnYxeC8vVXpwd3NFNk42?=
 =?utf-8?B?Z1RBSk80SHFiV0JJWDlSZTRwV3BjRUNxTmYxd1dLK21GMkU1U3BWbkhYU28y?=
 =?utf-8?B?dDVVS3pjb0h6OUJCUnAwNit3TXY0Sm8rbndGSW1uVmdqVjY1bWRLYk1paFBx?=
 =?utf-8?B?ZFFXcHhtcWlaZ0wvazRqV1BvM25zMlMvdkx5aDVrMUtTUk5zM05XSklMSUU1?=
 =?utf-8?B?aW10RjNGSVgxSFJlVVlHMnNxVDB6YTlwOENLaDJVZmt2cWtYTHlkcUZhYzlQ?=
 =?utf-8?B?VDRFL2lrTThLVlNpcTRFbkhud2NEdzUyR0tqUTJielJVYUN4akxCMm1TcDVO?=
 =?utf-8?B?QzgzL0h4ODRMTXk3TFk3VXBUaFdYYTh5NlJwTGh2WHpPbHlHaC9nSTFYMDNI?=
 =?utf-8?B?UWxzdDV4KzJFbmgzQ1hkN3pneGVhZWc0emxDTTJQaFpySUxGWlZUaVRPelhN?=
 =?utf-8?B?RzF1ajh1Nkp2MWRNcE9iUUpKVnc1dHIxSGZYT0NzRXh2SWIzQjNJOWRNSGt4?=
 =?utf-8?B?U013cFJSVEJOL2ZJWlVzbkVUcnZydjhBTFA1Z005VG10M0o1NUNmUWNIMzFN?=
 =?utf-8?B?WXFOa1labTBwc2IxMW84bUx3RURhZXFCMU9OSHZuTysyNUp3SlFNMmZpK0JG?=
 =?utf-8?B?QzhyR0MzTXp5RyttdElnL1F1ZXBmYU4waG02b1N3Vm5sUmlINzVsUHphb2VB?=
 =?utf-8?B?WDN5MGMySW5HVXV0NjB3amxtNmRQN3Y2K0ZmVkZHWVNpSE4rbjNvMERuZUIz?=
 =?utf-8?B?RzJ1OEFkL0dPb1hoSExRUXdZNHdaMjRVc2RSMTRSekM5NkpCZ292Z1dLMDlJ?=
 =?utf-8?B?Y3YySFVoTmE0ams0ZWNxZkpCVHZzTnhwTmptd3E1Qm51WUt3SFd1T3hqV2h4?=
 =?utf-8?B?Z1ZqSzl5MEFDZFJ3dFVlOGVwcUdjaERDUEFndkJGRFVtcUZMRkpxemlENXFa?=
 =?utf-8?B?OG9nd1AvcFZjUnNvdHJ2T1pUb2RhUHJpdXhWWVR0NDl5S2duZVd6Sjhhd21l?=
 =?utf-8?B?K2hsZkNGVnJVVVZFaUFmUWhPWVRVQ0lNOG9OZHhSSXF6SUZMUlRIRE1UblVO?=
 =?utf-8?B?aENkNStuRituYkJuMlY0LzA1cFJPYXJoNnA4dFZ2R0NpZ0pHMnNIZGRTSlgy?=
 =?utf-8?B?VS93aEF3c2NNQ0ZHTHVlSHQwa0Y3VVlLSmptVmVya1VrSXlUc2psRWVsUkNT?=
 =?utf-8?B?TlZPbjZ1S1pZNGpvbXlSQmZDTGhqQUh5d2FWNmJMSEdWbmlWMC9PNmNhUkJY?=
 =?utf-8?B?QkhNNjVqYTY1TUczcE1haGNDZUo2WGxaaDJPczRuRUh3MlphbnhvZ3k4enlm?=
 =?utf-8?B?eGlRRHFpL2QyRE9vOEQ5SXNXUElVUmFzU3lhbnUxSTlHbGZtTDVKSUJUbWZE?=
 =?utf-8?B?TER3RFk1d0NJSE53WE1uc21NM1FQajlSc3FIZmJwMGZUTm9BbDJxUU5HbWF2?=
 =?utf-8?B?RndYQUdaOGhrcUJZeTZEUlN2aDBWY2Z6ZzVZWWp3OUtkMCtscEdEM2kxUDd3?=
 =?utf-8?B?R1pKUE1aTkVPQnY0ZWZxcEkxblVETFZuQmwzZC9VNERWeVJhOWxib2NqV3JG?=
 =?utf-8?Q?2pNA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjVuY0ZvM3dOelVHTFdlVG1iRGhQSzY0RW9GN3JPMWNZc2VGV3JJaEU0QmNI?=
 =?utf-8?B?RGZpTzBJVjFNMXNIbWt0djlCWG5hbFFYZVY0VVFqV1liMTdXYkEvMEh3MGhn?=
 =?utf-8?B?eEZ1QVhpVldqc2J2QnBCelFqRExtTDZ1ZU0yTld0RUc4NzhTQlNyQ3BodnZj?=
 =?utf-8?B?V2dXcmNwd1Zqa2hIeGh4eDJGSGhkZTJ0YVhNN1RKYlBTdXlkaThLVGZiNHUy?=
 =?utf-8?B?eENNRk0xcG5uNjhzZHQrQlhCSEh1bW8wRVRTNDJZRkgzeE1LUWgzaVdjN3Ro?=
 =?utf-8?B?TDQybnBOR25BN0c1blBTaTFxTGhGT2tjOENDenhSSmRBckR3L28vMHV3c0hq?=
 =?utf-8?B?S1hMRCtjRUhwcXBvWVNQdUtsZS9lUkpDcjJwSlJkUEU5OE85d1F6ZHVqbEhy?=
 =?utf-8?B?ZlE4MGVWZGtaVWlWWlhkNnRiKzFLemRwdXMrWnNEcEpwVVhoMjlPWjFLRG5p?=
 =?utf-8?B?QUY4RWxkMGE4VlFxODAyUkxkR3JJbWdseXYwRTJEdFdTNmF0QUxvNEFzVDVn?=
 =?utf-8?B?aEVjVlZmUnBEaStBNjFpa2l6TkcyZU5URml4ZmN1emRZQXliaTRUSG0zMDNC?=
 =?utf-8?B?RUtPZkpJYVlGRFdTckNXbXdMZmRRL3lHU1JBTm91QnU1bHFwOWs3QzVkM0d6?=
 =?utf-8?B?ZkdKazJjbXdUNy8vbUEvY0QzT3BRZlRBUFRSZjkxRjJ5NXVnbXcyZnp0Z1FR?=
 =?utf-8?B?c1AvcE1obVBlampJNXVLaGhzcjNFU213aDRBeXg3U3VJMStuazg0WlpCUVhz?=
 =?utf-8?B?QnhJSjV4MjlRRzZaYUFKZktBejBzNnpTSndZUUlFOXdhTWVmc1EwQW9nS1d4?=
 =?utf-8?B?WWVPVXQ5ZE94bmJXWnJZQWZiZGpsQWw1Q0FCNkVBa3ZycWNHbExkNlZrV21I?=
 =?utf-8?B?MFpvOG8vbnYxejlMN3JjTE9ucDdNN0RTYm9uRWJaWm9IMEFXVHJBRm00OVFx?=
 =?utf-8?B?T2Qyd0N1QUdSOU9UQTk2OEdWRnlMYksrZ1FjSGpXVmxNU0dkeE5hWitWQmUy?=
 =?utf-8?B?TWFMZFJ5RGtlRE5ENXk1S1lwN1d5OGpkUGJXd04zdE43aFlqclJkK2N6RDlG?=
 =?utf-8?B?RXBraWdHS2svRTF0a2VsaXB6dkJlVHh6cHEyR2FnWGxyU28zNnBpME9XdmZ2?=
 =?utf-8?B?S2JWQ2JlNi90QmU2L2V6SS9jTXZXOEJ5QVpCTG1QRmttVFVKT1JLN0RUTzlm?=
 =?utf-8?B?SGxlUU5sQ0UyQkE5OXVGWk9PVVR0Y2dxUWRGMzlWK3B6V0NJR1E5ZzBTZ3N2?=
 =?utf-8?B?RXBIaXI3RDFRODZFUTdNczNzYkVjYm10dHdkOC9wV0xXMnNxRENoMnlMUzZ2?=
 =?utf-8?B?TkRaN0o5Q1NlU1hZekV5MUgxTnJiblJXOS9mRktjRXY5dWpNdWkyTGJ5QzVV?=
 =?utf-8?B?dDU3aW0rUm5kNGUzWHVhR0JsUjF0NkZnR2lsenNVQ0hiK21zMkpHYm9OalN6?=
 =?utf-8?B?WHc2ZlMwS1FrZlcybmg0QjZzUzhjOXlnVGF4UjZRWGFrcmlwcUloZmh0alZl?=
 =?utf-8?B?NE9aT21jNWlBcVUwQ0tzMjU4Um9BYk83Q2ZMNTM2Vi9sV0J3UkhDOVIwNjlu?=
 =?utf-8?B?MnFoUTlZMndyRFl3N284b3BHbHBpMWx6NnhsLytYOFU0RnI2cW1mY21INE9Q?=
 =?utf-8?B?TkJOL3FBbzRwMjJGVFdPbVpQeDNaNkVxVStUc29zMnBNdWQ0ZkgyUzZYalll?=
 =?utf-8?B?clZVWVJZTUU2djRzQmc0Q2d5VzlZSXNxUGdUUVJTVUttWEx6VFFZWVp5WGx2?=
 =?utf-8?B?cDBqcDBSSkNNcHJRSysvYTVZQUNNZE9hejIyUXJCLzRtQ3RiUWZ6VHkwaHFT?=
 =?utf-8?B?aTRwUG11T2dRd2R1TjdPN2NHWWl4ZEJSVFFpeHI3VCtCWWZ0dkNLVmR0ZVlt?=
 =?utf-8?B?YXA5ZmdmSnNUYjJTbloySk1KV0FOb1k5Vno5RXNaa0dTMFBvRnlMclZCMFB3?=
 =?utf-8?B?WldjQ1J5anZXTHN6ZnhrZU1QcGMxOS9pYXhQa3puUEFjbHdyRllSUkpyay9W?=
 =?utf-8?B?NnlHTzQ0c1VJeFpLTk9QOXRxeDNQUU5jS0FKYzNVOFpsUEh0bkdHQzlHcGMx?=
 =?utf-8?B?UjdIbE9YWlQxZ3pyYW10bnBZaEZSenRNMHdSTkRRVmVuS0FreWVNVFNmckdY?=
 =?utf-8?B?YVVmQ3dpekFZcm9OODhRM1RwQUNTaVl2YWJCMXhQSFJBdkczenc1VFQ3eHNH?=
 =?utf-8?B?REwvbU14LzhNazdmYlo0QURRYk1qbW9lNFdvbFlpZW5hNkxwMlJjRHJzR1lL?=
 =?utf-8?B?SU9tK3VrVnJlc1FpREpLdS9nUGFkZUU3cEJ5am1nUU95cm9xMjFsNnZidERH?=
 =?utf-8?B?VEJteFJUN2hvcjRQWk9PaEROL0ZDWUt6dlBkeEtxSTNBbHcwTzBNQ0hhOCtV?=
 =?utf-8?Q?TbF6iSWbDpGIIgpKNnW4GelFR+jUvDpk9MXb7MD0rUIQX?=
X-MS-Exchange-AntiSpam-MessageData-1: 3jDsqa0g/kJS/w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec42735-a4c9-48f1-cae4-08de53892bda
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:22:54.6661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +o57L1IVMSsmQnJIfzxnAMSMDrpva/DclzwmVTTM/WrQ6BK7IkBymZ58Lm0FAgFDqG/Fn0RxK++QngTtvEVbdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Add a way to track the detailed DSC pipes-per-line, streams-per-pipe,
slices-per-stream configuration instead of the current streams-per-pipe
and slices-per-line value. This way describes the slice configuration in
a clearer way, for instance providing a

2 pipes-per-line x 2 streams-per-pipe x 2 slices-per-stream = 8 slices-per-line

view, instead of the current, coarser

2 streams-per-pipe, 8 slices-per-line

view, the former better reflecting that each DSC stream engine has 2
slices. This also let's optimizing the configuration in a
simpler/clearer way, for instance using 1 stream x 2 slices, or 1 stream
x 4 slices instead of the current 2 stream x 1 slice, or 2 streams x 2
slices configuration (so that 1 DSC stream engine can be powered off in
each pipe).

Follow-up changes will convert the current slices-per-line computation
logic to compute instead the above detailed slice configuration.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 5 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 5 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.h          | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6b92f333e18bc..4d5d23cd46f25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1334,6 +1334,11 @@ struct intel_crtc_state {
 		bool compression_enabled_on_link;
 		bool compression_enable;
 		int num_streams;
+		struct intel_dsc_slice_config {
+			int pipes_per_line;
+			int streams_per_pipe;
+			int slices_per_stream;
+		} slice_config;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 5493082f30a75..f8e4b2aa6c176 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -35,6 +35,11 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config)
+{
+	return config->pipes_per_line * config->streams_per_pipe * config->slices_per_stream;
+}
+
 static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 99f64ac54b273..e61116d5297c8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -13,9 +13,11 @@ struct drm_printer;
 enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dsc_slice_config;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
+int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
-- 
2.49.1

