Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AD28FF118
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FA810E9C8;
	Thu,  6 Jun 2024 15:47:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hi4tS+VA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7358110E9C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688855; x=1749224855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9Rn7MzBbapvV7AqaMZACXfniJZtt5niTxfJnGkOCNVk=;
 b=Hi4tS+VAeF2BG112nCcK6myC1U/iISsHKYn4qAwn+sqK2aqRoHD+X9YE
 aA7pG4QH/uFgmCU5oi0JLtr4Fgq9FQqQYEi9NBHSd6CfAW29NTlATZCKF
 iJgpzmPmlepLXKfLYjqrVx0k6oDylMaA+3Y9/KJgc5lYflNsp0FL+b+Vw
 5r0/yG9vOs3DEZ5UjNAUFVETox0Tvs6+RireHHAho6gYPyXFkRO+8m8d6
 NktIDRue3ESk9s6kzNXuHNeccxmfdffcYacDN8ou+ZSB8YTO6IoEvhm4g
 TAxhNK2wXpfe6izfkmz47NGB7asmusjvEx5WHYd+5donjKr81QYZxsR19 A==;
X-CSE-ConnectionGUID: 0WfhfAB6TdKJEM+LBfOczQ==
X-CSE-MsgGUID: jdQRvdceSuecegChanvDrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18160122"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18160122"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:47:35 -0700
X-CSE-ConnectionGUID: N3Opgxj5Scejxk7jcky3RA==
X-CSE-MsgGUID: 5aFYLivVQ2OLRbWAHfLe1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37939670"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:47:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:47:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:47:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:47:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+VeHeyzrH7A24+PakrOYkLt1cy40KJrS1F+chtIjtnOSPpFIhlqDbGplwIs7pZfsjX8fzZa8+FUbO/+mKPbEifPS4St58KPT3Z5gdK1pIWOyxxkC6UXwMh9OQ9QqUudiCRjpvUKR5jQjUEWII5Ur/yRGVXTu3ob1GgIcIrnIJgrSbghLPjkcQTgRn/lmaBsToQs6osnIxTSnreKBAbv5gpMqf3RONIP/msPnp8V8xYYr2Xjz/59aJgmdnE99uH54XMq7MjZhytIv8e0zTWA4aQL5D4sDqTtS5A+lTWAC1KIz1QZEBUQcrzkumrNv0ioe0c7Omfg805Y7IbgDoCyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Rn7MzBbapvV7AqaMZACXfniJZtt5niTxfJnGkOCNVk=;
 b=NsLPOSKFFNnPxq4D2UgU2iiDjNnTuyz5P4V86rr/C+KMianE/ntrpfuucxBxtU+1pcZsiCGWojhJyhxKF6zyfmBrU2/Qxz/lgx25CJfxT84Uqpfu/7lmKzRsYXHSuo4sYr5YqgwG9o+Yv7Fz9IWUTKbl23APCze86roxwAymQdaxl3cw00ft4u1Xc134JfWaTmVkTI/UI0Z6HYRcHsDwg1iAkmh3gz6pTiXFKuAWqNKxOxjmRuRWinQD+RQGwjnHF/XqGNEpZ9f9ZO/v16zzfEAWpiEP9CeRLYSJhcn0tdd1oEFaNPcDBP5NNaN6XQh2DbOVQs6gbY2q03ZVB0RoLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 15:47:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Thu, 6 Jun 2024
 15:47:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time
 for Panel Replay
Thread-Topic: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time
 for Panel Replay
Thread-Index: AQHatzLo4dYTQtBYxEiN6Xqn040+pbG6u+qAgAAnWwA=
Date: Thu, 6 Jun 2024 15:47:31 +0000
Message-ID: <87e85c014c41ad64225769914e519697bbeee583.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-15-jouni.hogander@intel.com>
 <PH7PR11MB5981807A08755648E5D6A350F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981807A08755648E5D6A350F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB7080:EE_
x-ms-office365-filtering-correlation-id: a5555316-879c-41e2-dfaf-08dc863ff9cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?S1lBczNmdVFrMzFvM2lZN1RUd1Jpbmk5TS92OUpXalNKTkJrWlNYc3Rpd1BG?=
 =?utf-8?B?Y2lIMTI1djcxL0J2SWUyYlJvU3U3VU5Hb2d5bDM2SWVuOGtSSzVuY2crcjNV?=
 =?utf-8?B?UHJKTXNWSWQrZW5Xc0xveW90TitsMWxnZ3dkNjgvUit6MjZ5SEF5SVg4SGxr?=
 =?utf-8?B?K016N1FLbW1xWFdoWWZOd1lNM1dDVWxuaFRUbFdkQkZ6M0RGSHNQdUdMbkMy?=
 =?utf-8?B?NUFFRitYbURQUGhUNWZhOWJvY29BNHJmRVQ3anloUWxzMkNtanV3RHRXUHR1?=
 =?utf-8?B?cFBmNjFNZGxaaGhVZ3FodHlPRDY0THVkYkdWTmZ5aXBqbnZnd3I1UjF5TGhE?=
 =?utf-8?B?clpEOExHT2g4OUNXbDZHVHp3RHdPcmt1TGJUU1NsMStDNTZ5S0V2cVlxc2JN?=
 =?utf-8?B?VFpiUFYzeVlwMlg5RWU0KzFGaG1oVXlyYkFBNm5zaUtNdGxkZVZVYStBbUR2?=
 =?utf-8?B?a0srMjArVUlrVjBhY24xMnVYTmcxSGh3Rkt0d2NiUVhXb2NlUjRRbXJyMk1V?=
 =?utf-8?B?eS9TR1N1WmdYKzBZRGJvcFBqSGVIODczakh2NlowQ1lyT1RseFBZYUd5ZEJX?=
 =?utf-8?B?ZDQ1YlNKdWladzc4SkwyWG9lcnhCV2dVZWhGS0l3SUQxM1psZzd0RmhKRWRs?=
 =?utf-8?B?SGlSSjdES3lYa0U5RlE1cTdXTTd6RmFWUXFVWkFVV0NPcy83Q05ReUtwV01V?=
 =?utf-8?B?ZWtNVW5ndlRSWnp5dmphMHJrUlRMZWJHdVFaemxISEkralF5SDNkMG1Eck1R?=
 =?utf-8?B?bXpOVnlpK0tpcmNsWDRCaTc3YXVWZDMrK05PVjUxNWtnSlMyNmgxTnJPYUxi?=
 =?utf-8?B?NGd0WTZoNVNKWnAwMWMyTlhZbjNFVTZwTkwycHNxbDRqTUJ2c2VVckFIYSt1?=
 =?utf-8?B?UllaVyt4R2xmRElNQXR6YklyYk5KMG9CNnVRL0VxU0RhSXFRVCt3SzlSZUJX?=
 =?utf-8?B?Nlp4WkFBeGQveVZZT2J1VXl4dFcwK253akdFWG03WGd2ZHFxNWNJNllzcTFG?=
 =?utf-8?B?blhwMkhiMkg5bm5UbGNVNi9DbmM2S0tJSnVlUjkrdW9rTGRJLzM2TUJRTFMr?=
 =?utf-8?B?aHNNdEQzZnJXdzdkWGRRUzMvdlYxdDRuYjFhK1dEbzQ3Wmc5UUZYdG8yTlFa?=
 =?utf-8?B?UWxseUMvNHBubjZYK2tZeVJtYlhGZGFsYWEyS0Y2dG9reWRuT2lVVjVEUTNV?=
 =?utf-8?B?cHE5WVFMQ1E4QS8rejdUUTVJdi9zS0poSWs2RldqZ3dmNldlNkN3L3hBVm5o?=
 =?utf-8?B?cktZV3V2ZDFXbFBXckx4Ull3WTBwRUJEZXBtK20xNFMweCtCZmxxWkVPci9E?=
 =?utf-8?B?T2JRcGpXWWJ2Q1U1TFVnRjlHTzdQSEROYTF2bGJzRlRVMTJNb0YvUVM3ckRN?=
 =?utf-8?B?ZUN4V2VHKytNSDNpYjhjMFdUZmRYVk5obmh5dVZuOUlZY1c0Ti9Ldm9VOHJL?=
 =?utf-8?B?MlFYdFNDbVdRc2VpdlRHS0QrYzBVcHpmcFlsSng1T1ppRzN6V3YyS0c4UWlD?=
 =?utf-8?B?cG5XN3gvbVVleXJFVElSMTcxTzk2VFU0RXhFRzVXb3ZDTHhsandBaC93aVJi?=
 =?utf-8?B?bnRiODNxMXZISjF4cmpteTNMZmFtNmJ6cjRkdGJDUDk1UTJrY0I0Q09EUzVv?=
 =?utf-8?B?dFNTeVVNNlQ2ejNId01za3BvNTdrdmJmNEkzRWIrQ290YU1TRkYvQkQ1MGxG?=
 =?utf-8?B?RVhtYUVERWJKWkxvTzhsSlBjKzZ0UWo3Wnd3VDhMaThLcmZkUWgrVTIxbVc0?=
 =?utf-8?B?czE1OElUakh2eG1SRUR0MW96RlhyclV3dEM4eXVZa3IxQjVzS0RoT0dOVXEy?=
 =?utf-8?Q?Hc9cscYCVkLr0P/1I0iaZwAU/D9pE9UZGXB40=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXBrcjlwS29YL1Q5QVJnWFJoOTI5RFdPWjBTK2ExaVpVb09UdlF2V0NCajhq?=
 =?utf-8?B?TkRDMXRnVCtybjZtT3JsSlhGbHVLeGJFbVdQbS9xU1BoVlAzUGJXT1JvT2dO?=
 =?utf-8?B?bTJSSlNOS1dUQXd6bUJsTDdhM2dwUXo5bGhJeTZEOHNqZzh0Z1pSdm14U0lP?=
 =?utf-8?B?VlZHUk5BdFNtTWtyNVB4VWVoK1dHL0l4WGZSRFhTVWlOTWFqSWhmeDY0RGRM?=
 =?utf-8?B?djh3SjBjTUVFallJN2hLUEpudGY5RkQrdDZkRVo0YzNjZGNiMlVMNFhkMVFx?=
 =?utf-8?B?T1I0d3BTR1lEbmVPcUJ4ZVZ1cjFOUXVadkRYTVJybVNYSVVCUU5hYkNCWFBa?=
 =?utf-8?B?L25yWDlXM0xmdzFWbEgxWjBaSDZDZ3RXbzI1S1M5RGh0VUpHUng4TEpoVFRh?=
 =?utf-8?B?TnYrbDlDYUw3ekh6TWxMQTF0eWEzT3lacUJiT3UyallWSWU1RWpuRHowV3F5?=
 =?utf-8?B?WGs1WWdZQzRZa0EyWCt1TDBvR0VjblBDR0VzSnlVMnQ2SzE0QzVqQndDc2dt?=
 =?utf-8?B?QkdoVTRsdmNZQVJwYWxYWkdPUVUwNmhqczN6Z2x4bHBOYzF5Z01vRU9VZWY1?=
 =?utf-8?B?QXUvaC9qWTBjeXVxeGI3ZWV0YkdYa2lCWDgrSzNMazVXUDNaYXE4Qlg0UWZM?=
 =?utf-8?B?cGgyUFBEQ0pOZm1xd0ZmWWtNVzlSWnk3aUpLeWxxdnprZ1pEV1kySTcvTUgv?=
 =?utf-8?B?eGtwNzRqbnllMDNLQXVrUkhxSkJzTGRxclBzTW5GTUI5WFJjU2F3VHp6ejlr?=
 =?utf-8?B?emVvVkZ5cU84NW5EQ282THp3SWt0RTg4Rm1LTE1zdDFiMHJrYUkrV21XQXRB?=
 =?utf-8?B?TWZMaURqSkppTExGczllaUxjUjhtRVZnTzRsTktjMVkvZTVZcTZlOENNTml0?=
 =?utf-8?B?Sk9jZHBmNS9jNmZtdWhXamgzTU1jZVhIeml2R2hDNUFoclNOdTNuQUlwQWdZ?=
 =?utf-8?B?dUpUVENXSytDWG1nMitNdUJHZkJUenllcklkeVNyQmloY3pFbU83V2ZDVDk1?=
 =?utf-8?B?dWVGdXNNK2c5aytxNE51aEJnM0lyMnZFWnZKRWNTdjhGdmdEVWlCaFBtRGlW?=
 =?utf-8?B?R3VkVmJRZU91cVovcFRxSi96YXNXanR3anZIclh1WHBCWDgvUUlrQjlHKzRp?=
 =?utf-8?B?dFhhc1RCU1paMitHbXpRYzZ4ak1FYzd0bFNteEhBS3preHJxdGUybGI5cnc0?=
 =?utf-8?B?SFJ4ay9WMWRpazFtVFVucnU2NERLaSs1YWhFdVpSMUFpQ0FLaFZSdHpuVGtw?=
 =?utf-8?B?bUV0cXBHako1RGJUMFcrMzVvcklnV2JwOVU1OHJPMGs1MGgra3Z6dnZ6c3du?=
 =?utf-8?B?RkhlSmhaV29iY1Y0NVd4OWNtSnR6NXo4ckxjYU1jQlZvcnpWMjEwek43YXYy?=
 =?utf-8?B?THVyTXlycTlqeU95ZStIRXIvQmcxWXpKZVJsS2RGT1BCVkpXL2VUVEZsd1JC?=
 =?utf-8?B?cWM5cFNGUU5tUnZUMDYvU1ZjWXMwT3hObmVLYVU3RnhQWmJrN3dwbHFMajNI?=
 =?utf-8?B?SDFKWmRkdUNRYlBUT2hvemN5ZW50TzlLUFFGMVpvWHJJcDlnSnFqcHdzN25o?=
 =?utf-8?B?WlpNcVRrbmtHZ1Z0b2g3T1VwamY1bEtZV1diZHRydWhmTmsvUjFiSWxid0JK?=
 =?utf-8?B?VnpJWFU4V09GZ0hSR0NRelFZRWg0N1AzWGhhbFArWG5GRUZNWWkzZ29SRCt1?=
 =?utf-8?B?LzRFeGFhL0oydXU0R0hGMldkMzN0TmNiRk40a3k4Q0poRHhxb09CZjdoS2pQ?=
 =?utf-8?B?UWJzVXJxemNucnVvRWhoeWkrN1ovWTRvNGlTRzh5WjllV3JiWU1DNG9COG1J?=
 =?utf-8?B?OU0yRkJZeTFUaUVNUDQwaEhCZ0FnYVh0N3krMWNXbFpPZUZlS09wdXpWN3RV?=
 =?utf-8?B?RXhOQTdYb0wxR1R0RmpYY29OdWJFZDBNaExYMDllWmd5VFpUdHFEVnhuOVdo?=
 =?utf-8?B?ak1ZV1lWa3NtTzMramxPMDlXclZqMDJDMGFlRVhCdWtpRHR6Uk5vVE81RXI5?=
 =?utf-8?B?OFljdGJ1WDRsbGtVUTZmdUtmWlZqOUdMZlY5MGtEMUZiZExIdlFCYThYaW1T?=
 =?utf-8?B?M2k2L09MREFWdktGOTlwR09BVjBSd1pqZ215dTZXOTkwem1QM2FraWJ5WFRF?=
 =?utf-8?B?L2ZmMkF5Y3ZWV2tzczZEWTJqQnJ4Q3Q5U3dpMlNQeHRFSysrYy9VYTFKT2dU?=
 =?utf-8?B?Vmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A90A7D756A8D0E4984397C7921A1E6A3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5555316-879c-41e2-dfaf-08dc863ff9cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 15:47:31.1411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: puu7eRlTXysO9v11NEH2ogk/oThB0GbxtxR9VLLpG6VVIOsoTRuxDYaW8rJPfpzt1evFedV8y25g878aAUUupHH6XPKt9m7vmuYr058HEQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
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

T24gVGh1LCAyMDI0LTA2LTA2IGF0IDEzOjI2ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBKdW5lIDUsIDIwMjQgMzo1NiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjYgMTQv
MjZdIGRtci9pOTE1L3BzcjogV2FrZSB0aW1lIGlzIGF1eCBsZXNzIHdha2UNCj4gPiB0aW1lIGZv
cg0KPiA+IFBhbmVsIFJlcGxheQ0KPiA+IA0KPiA+IFdoZW4gY2hlY2tpbmcgdmJsYW5rIGxlbmd0
aCB1c2VkIHdha2UgdGltZSBpcyBhdXggbGVzcyB3YWtlIHRpbWUNCj4gPiBmb3IgZURQDQo+ID4g
UGFuZWwgUmVwbGF5ICh2YmxhbmsgbGVuZ3RoIGlzIG5vdCBjaGVja2VkIGZvciBEUDIuMCBQYW5l
bCBSZXBsYXkpLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDggKysrKysrLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBjOWZjYjI1MTg0ZWUu
LmNjYjdjMDIyZTM2NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IEBAIC0xMjUxLDggKzEyNTEsMTIgQEAgc3RhdGljIGJvb2wgdmJsYW5r
X2xlbmd0aF92YWxpZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21v
ZGUuY3J0Y192Ymxhbmtfc3RhcnQ7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludCB3YWtlX2xpbmVz
Ow0KPiA+IA0KPiA+IC3CoMKgwqDCoMKgwqDCoHdha2VfbGluZXMgPSBESVNQTEFZX1ZFUihpOTE1
KSA8IDIwID8NCj4gPiBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzKGludGVsX2RwKSA6DQo+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMuaW9f
d2FrZV9saW5lczsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+aGFzX3BhbmVs
X3JlcGxheSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgd2FrZV9saW5lcyA9
IGludGVsX2RwLQ0KPiA+ID4gYWxwbV9wYXJhbWV0ZXJzLmF1eF9sZXNzX3dha2VfbGluZXM7DQo+
IA0KPiBFeGlzdGluZyBjb2RlIGNhbiB0YWtlIGNhcmUgZm9yIEVEUCBwYW5lbCByZXBsYXkgYXMg
RURQIHBhbmVsIHJlcGxheQ0KPiBpcyBzdXBwb3J0ZWQgZnJvbSBMTkwgb253YXJkcy4NCj4gTm90
IHN1cmUgd2h5IHRoaXMgY2hhbmdlIGlzIG5lZWRlZC4NCg0KUGFuZWwgUmVwbGF5IGVEUCAtLT4g
YXV4IGxlc3Mgd2FrZSBsaW5lcyBpcyB1c2VkIGZvciB0aGUgY2hlY2sNCg0KTHVuYXJMYWtlIFBT
UjIgLS0+IGlvIHdha2UgbGluZXMgaXMgdXNlZCBmb3IgdGhlIGNoZWNrDQoNClByaW9yIEx1bmFy
TGFrZSBQU1IyIC0tPiBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzIGlzIHVzZWQgZm9yIHRoZSBjaGVj
aw0KDQpFeGlzdGluZyBjb2RlIGlzIHRha2luZyBjYXJlIG9mIGxhc3QgdHdvIGNhc2VzLiBDaGFu
Z2UgaXMgdGFraW5nIGNhcmUNCm9mIHRoZSBmaXJzdCBvbmUuDQoNCkJSLA0KDQpKb3VuaSBIw7Zn
YW5kZXINCg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiDCoCANCj4gPiArwqDCoMKgwqDC
oMKgwqBlbHNlDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdha2VfbGluZXMg
PSBESVNQTEFZX1ZFUihpOTE1KSA8IDIwID8NCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxfZHApIDoN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVs
X2RwLT5hbHBtX3BhcmFtZXRlcnMuaW9fd2FrZV9saW5lczsNCj4gPiANCj4gPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKGNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSkNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZibGFuayAtPSAxOw0KPiA+IC0tDQo+ID4g
Mi4zNC4xDQo+IA0KDQo=
