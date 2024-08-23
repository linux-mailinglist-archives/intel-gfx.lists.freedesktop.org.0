Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1C395C46C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 06:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81A610EC23;
	Fri, 23 Aug 2024 04:54:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+NTNQ3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB18F10EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 04:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724388854; x=1755924854;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Td0x4kE3hBS7SmyoqUgqpT0X7HKhMEUNZHAQ00IVooM=;
 b=E+NTNQ3TsFEbilFD7/fP9HneGxkxT0xm/sZjHbvrviZSd8XypgINogc9
 oCZfSHSEIBo4zbB/6wy5z+SWIrl9OZgHfE2p0l3ZXjDiZtI+1pYkxNqAX
 cEptip5h53kwl3GgkMZRcMYgQ9RRpHmkAvTqEhjTNjWL3A4vpAd8liDMj
 n70bPAlMsKTjVqMB7zeC2VbagTZOmedeD7+80H6QBoO62lxCnPD181Wtt
 SFZuG7n7L5YogumbZ3PCLy+DB33PO6g8c5o7HnLYxhwmoe+b1R4DB43bP
 d+KCDdgiS1rtX9XMlvP2JiKprmv9AX+EHKq+8XYJ8LzVORAO+gLYW40yC Q==;
X-CSE-ConnectionGUID: Td+BPHzZQ5iANqe/oXglEQ==
X-CSE-MsgGUID: bdw6PW3kR+CaOr3EH7wEfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26709281"
X-IronPort-AV: E=Sophos;i="6.10,169,1719903600"; d="scan'208";a="26709281"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 21:54:14 -0700
X-CSE-ConnectionGUID: 7PbszUzfQ2CdG16XqbQ9Kw==
X-CSE-MsgGUID: UzhkJeAiRByEE7rmEEQrlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,169,1719903600"; d="scan'208";a="61530620"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 21:54:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 21:54:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 21:54:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 21:54:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RKXK9lcqzbs9YirylGWLKfto5lafFuUXqeTEIDHCmDhQDtYqzGngY7faaIosrnPYU4MKXVZ2EZU5a7EV+p4QkfB8+qvuRxX6DTpoyoJU3DolSJyFuG34dLM4RFHMGzqG8+b0Y865xYWvny0ukRT1l/PfYa8fgBynKKKl7UW1MDYdsQL3TsIM25N2wMMfMApzHqOA7aWnd6sXZzbPSLdoWckYv9IQgwr0mElfJRQgrJl64s4rG/tCPnXCCprR+0gs4mKVDVoG0j2j9X28xGzA0KZZo9lwwap1eeEZjXzI34rhvy21BN5UwKDYVU3kvPxkgCuXrUctuoMLn9fcsI7G/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Td0x4kE3hBS7SmyoqUgqpT0X7HKhMEUNZHAQ00IVooM=;
 b=oLlR7EO8aJxJsNkLP0t3bbL2pXiRoBRWDFVM7/i26/akb9J9oEqlVw9NHwyRE/rUZh6ozPkgsPy+x9JUqqbTuhxrqjS3QzwNL/aXXMiJLrWNFkjvFxL58zmHFjEMURjOKVdV32t9y0CFqFR43jCTjWDH+gBVE4R4E9PovLw4+GjcZf2hsxoolzHOL1O6oc3A+93u659Z73QC82Fp5VCj/BgkZniUTIZVZ0TXuqbMF9iq91k+ahbz7l14tvimd+pl5uJUkJkQkNZRFJv4Ja6kISY/eF2aCYPk2AUAOuUVQnigV4h34lFqS0vQVjE60gagGiJuO70KBXjG3gIVl7NMOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6747.namprd11.prod.outlook.com (2603:10b6:510:1b5::18)
 by IA1PR11MB6147.namprd11.prod.outlook.com (2603:10b6:208:3ed::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Fri, 23 Aug
 2024 04:54:10 +0000
Received: from PH7PR11MB6747.namprd11.prod.outlook.com
 ([fe80::ddc8:5257:32ef:aa77]) by PH7PR11MB6747.namprd11.prod.outlook.com
 ([fe80::ddc8:5257:32ef:aa77%3]) with mapi id 15.20.7875.018; Fri, 23 Aug 2024
 04:54:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHawgLiilrt1Cs0z02ObiLKtoAsc7IzW0mAgAFPjgA=
Date: Fri, 23 Aug 2024 04:54:10 +0000
Message-ID: <PH7PR11MB6747D12BDE00E08FB0E89DD1E3882@PH7PR11MB6747.namprd11.prod.outlook.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
 <20240619043756.2068376-3-suraj.kandpal@intel.com>
 <10be50e89952324062170828e3a055774fd28768.camel@intel.com>
In-Reply-To: <10be50e89952324062170828e3a055774fd28768.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6747:EE_|IA1PR11MB6147:EE_
x-ms-office365-filtering-correlation-id: 1db224d2-98d5-4553-c09c-08dcc32fa09f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NFpDNnp2UjZWczlLN1B3YXBrUEcrRDk4OGNIMGdTYWhORkRBanpONkhPa1Ru?=
 =?utf-8?B?ak1QNHdSd0pMSWRnT0gvOWlibTNjVXliWDBCcjJ6QkxMVXBteDBYVzlEZnRm?=
 =?utf-8?B?YjZFdzVDMnIrd2RKYmdQMmUvN0RFM2hWOUttL0xMak4yUzBuT3ZJWm1HUVJN?=
 =?utf-8?B?dlV6bklpaTh1TUI3eGJ3ZEdrbHhZQk5TbTBoOENia2hvczh5YVFPRlVMOHdq?=
 =?utf-8?B?RGVGTmdWUndvTkpndEpCUlNYdDNRWXVaUlpFMkk2V1VFNmViZVB1UjNtR2lY?=
 =?utf-8?B?c2FSNW15M08wTmNwK0ZveGhiaFNIRVQrMGpTWWJIcGkrZktvbFl0dnZKYWs3?=
 =?utf-8?B?amZ0ZzBzRm42OGR6SmxNSFdIVlZlaVZ6Ulo1TVN1WDNUSG8rUExERSs0RWs5?=
 =?utf-8?B?bEcydUJXcnRWTll2VGU1WStPOHB6R1U1eFkzNnE1YzNWL1lzSnQ5b3dZa3dQ?=
 =?utf-8?B?cWpKNlB0SDVDS1JDSG85Y1JsUmxFaHVqQ0tRMkxrRVBjSTdESVpYVms5SnV0?=
 =?utf-8?B?S0dYWGJFcng1VFVCZmtSZ1pVMklyVVZkMWE5QXZpdmFIZ2Z5b1B1ZUhnUlpJ?=
 =?utf-8?B?ZUZBVHl1ek9vTElMK0c3MkxCY1JUMTRDeC9NRTZvcnhvQU5rMFF6d3JHMEY5?=
 =?utf-8?B?eitEMXpZOFczWG8zd3E1WjlBS3NLdlgwdW9PMmUwL3dUMkR4Yk5xM2FUK1o1?=
 =?utf-8?B?S01VUmF2bldWYncyY00yMHNUZWNWZzQrdEVRRFZ5SEpxWW0vazFuRGtNRU8r?=
 =?utf-8?B?WVJmV3JDdnF4TitTSTQzZy9iOXpXWDZIWS9uYlllSi82eGJuS0IxS2FsL0RY?=
 =?utf-8?B?ZkVjNHMrNUZlTmFQZ2ptMjRob2JpbjREcWF1NUdKT1kwOG9XMTljSUx2Rkoz?=
 =?utf-8?B?dGZLMFZweEo1b3NwMW5xenBWNWhoM0F6cW9QeTJhYm9wUWNsTDBtWk5SQTcz?=
 =?utf-8?B?cVhLU2duY1o0aXhDNGtGTE5nMUNVdHVyUGltdjJ0V3lYRWlOcUNQN21ReXFW?=
 =?utf-8?B?czB3bWpsMUdYZGMzSTd4WEtJTlJLSjZ0R1NnV21QMkFqcnlPNUFQTXc5bU9J?=
 =?utf-8?B?ZHJKcTlCaW5oejh5Zjk1TjAyeWNxZU16N3F2Q0tzSDA5a1JXNjF2RXNXQ2gz?=
 =?utf-8?B?NUxWOXFMVFg5b2NycklTV3V1cUdJdEd3Sy9oMDFrSkY3cHIvVG42UHVvZ2xN?=
 =?utf-8?B?UmIrbjlVbHhtamNOV3lMQk9HRTFnaXZ4UlV2VzE2ZDV4OE5mSEQ0Y0E5cSsw?=
 =?utf-8?B?V2txS1lxMVkrS1dSTkdaUkdhWjh3MjAzaXZMamZEc0VQYkNrMDRDVC9QNnAr?=
 =?utf-8?B?dy9Fd0dLem9XV2NRNWYvTHBWc1pDODBKbFRXdTFlL21xczI4Nzl5bzlVekt2?=
 =?utf-8?B?UkxFd3hPaXRiaWhmM2JFMHM4bWF2WUlsdGxIVXF2bGt4UU1OOXMwTzhmc3hY?=
 =?utf-8?B?MnNuekZwbzJHMTFnekk2ZnFhc283c21MTFVzSSt2dC9Bd2daKzdIMm04Ymtu?=
 =?utf-8?B?TFBjc0Y3WFZYYjVXSVZKZkdDS2RPSnVUV2srekl2Tkt6S2U4MFNVTUpPeUxE?=
 =?utf-8?B?L2o2a1JiQjcydXhld2puWEFRQWxxWjM4NnprTk9qTnR3NndLbmo4cUdPaitF?=
 =?utf-8?B?bmFUakdPYitTRmQ3UHZuME9KY3QyM3hMcXF1bkpVdGdjdkI1TDNUQ0ZsSC9Z?=
 =?utf-8?B?bGhtL2t1aVNqSXR6WXh6YnFEUC9ROHBLVS9XTEZjNXEwTCsxQU1ocUNpMTJu?=
 =?utf-8?B?MGNqd3I0bklWWHRVdHFJVVhqZ2VDWjBwRzNIcjRyazFIblZ4V3lQa1BOcE1z?=
 =?utf-8?B?bmdUOGhUWTVEZkhvMi8ySnZISERLZUg0RUo4ZjhpQnRva2loaU9wVVFTd3hU?=
 =?utf-8?B?bjlCTW9DVnhIMDRpZWNnRUVKQmRFZVpvcXRWbGpMY2YyVGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6747.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czV2OUZOSGYwVVBnVjNpZmFXSi9sQ3JENVV3ZTYxWno1cWlpRGRCdE1YaUtw?=
 =?utf-8?B?ZUJncU1wNzVoV1UzUHVxR2ZjcU1vMGVBZzluMnVEMjZSZGNxRzRkR2NCQUx2?=
 =?utf-8?B?dXoreCtmQ2JPL0ZpbVBJQ243dW5pclJZbDFHTndwcElpUzZxTXB6NUp2U1VP?=
 =?utf-8?B?UGNEMk9QMnhGdDlSb2RtWFpPMWF2eW9kanpjZ01VMTlRMzFBQnVPUTRMczhR?=
 =?utf-8?B?ejlvaHdDbkFuS0hGWlBtYlRycDlQbVJPMkZtY2pXS1laeCsrYUJwLzRqQk4v?=
 =?utf-8?B?T0tkcWNUOEF5OVNMRkFrZG96K2tkZnQ2SDNncjNIblVRdiswSGNFeTZNcGZ4?=
 =?utf-8?B?L2JVR3dpdUtIbTF2Zm1SSHg3L3owTVlYSUhjYnBCQlRNY1hCSGdGcG5sZUhK?=
 =?utf-8?B?RWJHUW5GS3ZUTWxpcXZ2YllvT2dHQzk5UW5jaHZTRlUzNWszaXJNRkFtUEJZ?=
 =?utf-8?B?cENGL2ZZYmQvZXZzcDdsUVhtQnY5YnVmREc2Umh4ZTl5bzcvSWRpeDhzRXhP?=
 =?utf-8?B?OUt6WTV6eDNSQTh3L3FneGQraktzbUhXT085TDA1aVljS3g2RnNTRU1KOVJI?=
 =?utf-8?B?dVZYOW1ZTWkzVnMrZ1RaMk1qM3plblkvTUVEejJseE9QeHhod0JpdnpvLy8z?=
 =?utf-8?B?ZjNSSHBUTitkekdNMkttTERvcWxvM0k0MkdscElpdEg3SEE2TFdScmxLcnk0?=
 =?utf-8?B?RnVrU3lzVlpSZE5EMFcvQnZuM2V5MmdSUHNmdEpIbTBmN0xoZ0QyZk1rdzRQ?=
 =?utf-8?B?MkVieHpCUGQxd3FJdy94NmNoN1Jib0hoU1duMHpLbGt2V1VwMlcyaUhkUUtS?=
 =?utf-8?B?Ym1KYmJtZi9EZUZtQ3dhL3dENDVRVmNGQkxYZ1l3NU1wSFhBR2U5TXFpYUZ6?=
 =?utf-8?B?SFg4c3A0UlAzWWFqcXhRekhxWVNIOG1BbEdmM2pPSU9hM1hTZWMvTjFoc0JS?=
 =?utf-8?B?QVZUK0FIc0o5SFVQRDB6QnhkQWROVzhPQlFzUzJFQ2pma3dwRGdLbjM2YzRy?=
 =?utf-8?B?NmdYdDNyN2kwUU05NXNGSEoxbXJIUERRTVRXcDdTUnN4NVV5RWFTTm8wSUdi?=
 =?utf-8?B?cXVZbXJab3EwUEp3c011KzNQT09KRTcyYjQvNElndlpaRVRVb0kvTnIxaVhn?=
 =?utf-8?B?R1pqRjJab1UwdEZtQlpneUY1VldWRWJibWlsMHE0TXhWSmZBT2ZtSVViK3M1?=
 =?utf-8?B?WFRLY1MrZlA4aWtwbHpmZTVUS0U0UkNHa2wzNFdkTGFVRTlxbXBqL0owRzdx?=
 =?utf-8?B?ZEhQUjd0aEp1NFdMakt3bG9rejUwZm5MM0Fha1FmVCtUVEtiR0xlRjZkd3ll?=
 =?utf-8?B?Z1ZSZFpwL0ZJcVZMeHQxL1BlZU4rc0RnWlpUYlQ2dEtDaHNkaVdpWWUybXUw?=
 =?utf-8?B?UzVuNWRGSVdZK0c0OHc1M0ZvR3BiMldnTmkyRENhclhnSHVDampDUmIwRm5P?=
 =?utf-8?B?SWc4RFJiZHkzNHpNQW1zWmxlV0hKbFBlek5yVGZHZjFGOEhENXdZNXBsbmYr?=
 =?utf-8?B?Z00wbTZSUzVXaThQdE4wRWRVYVhYaERKdERLTHJvRnc5VE9BOTJrS3NEcmdO?=
 =?utf-8?B?UlE5blU3bDVKK1c5ZlBMS0Z4YmRCckl1eUNLbmtScTJMVmVwQkNBcklKLzJT?=
 =?utf-8?B?cEFMa1hHZzA5MWVTb2Q5R3NNOHM5a3JLNFpEYlZ4SHZ1VnJ4dE81UWRBeldm?=
 =?utf-8?B?NW5ydTFIa1hHaFk3UnJpOE5neWx6djZ0YmJnMnM5MUhOcG5Od2pIQWQxQ1VW?=
 =?utf-8?B?dHpyeXRBOEpSM09sNzBaeU9sTk1IaGFSdTRTTk1BemNYb2VWZ2VWUXBOQzNJ?=
 =?utf-8?B?RnU0K0M0aTArSW1CTTVjMTZhNDJhdjlPSXE2TkFLVXk3UXRzZ1hRSTF3V3hO?=
 =?utf-8?B?UmFOWCt5akNyTS9mSlYyT2hTMmlodlF2bDcwSnRnd1FJaXhLRiszSHBUVU5p?=
 =?utf-8?B?aFNXOUZuRkdZcE1FQ1dVeDcvUkxteDg5YmppVVZKYk1JQUpJc0pES0VVejVU?=
 =?utf-8?B?VUJxb1E1NW9XMjJBNHIwa3FBdVl1WjExRE9rSlBhM1pXejB6cjJWRkJpRGI4?=
 =?utf-8?B?SVZXL1lDTGlTdlB0amUwRWR6dk53dVI4SG1CeWN4TkVWd3FMSTlVRFVMa2hQ?=
 =?utf-8?Q?TWT3pM0+ECXpSYUHdjF7JZeS+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6747.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1db224d2-98d5-4553-c09c-08dcc32fa09f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2024 04:54:10.5035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 83L240xDal+yo7hCxPR0YXRQpGQfyx+TYA8mRkS4EDiRT8utWub13ID+Ovvy6255fyLzkCAnSmIcGvvVaC9vZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6147
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMjIs
IDIwMjQgMjoxNiBQTQ0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE11cnRoeSwg
QXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IE1hbm5hLCBBbmltZXNoDQo+IDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT47IGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJq
ZWN0OiBSZTogW1BBVENIIDIvMl0gZHJtL2k5MTUvcHNyOiBJbXBsbWVudCBXQSB0byBoZWxwIHJl
YWNoIFBDMTANCj4gDQo+IE9uIFdlZCwgMjAyNC0wNi0xOSBhdCAxMDowNyArMDUzMCwgU3VyYWog
S2FuZHBhbCB3cm90ZToNCj4gPiBUbyByZWFjaCBQQzEwIHdoZW4gUEtHX0NfTEFURU5DWSBpcyBj
b25maWd1cmUgd2UgbXVzdCBkbyB0aGUNCj4gZm9sbG93aW5nDQo+ID4gdGhpbmdzDQo+ID4gMSkg
RW50ZXIgUFNSMSBvbmx5IHdoZW4gZGVsYXllZF92YmxhbmsgPCA2IGxpbmVzIGFuZCBEQzUgY2Fu
IGJlDQo+ID4gZW50ZXJlZA0KPiA+IDIpIEFsbG93IFBTUjIgZGVlcCBzbGVlcCB3aGVuIERDNSBj
YW4gYmUgZW50ZXJlZA0KPiA+IDMpIERDNSBjYW4gYmUgZW50ZXJlZCB3aGVuIGFsbCB0cmFuc29j
b2RlciBoYXZlIGVpdGhlciBQU1IxLCBQU1IyIG9yDQo+ID4gZURQIDEuNSBQUiBBTFBNIGVuYWJs
ZWQgYW5kIFZCSSBpcyBkaXNhYmxlZCBhbmQgZmxpcHMgYW5kIHB1c2hlcyBhcmUNCj4gPiBub3Qg
aGFwcGVuaW5nLg0KPiA+DQo+ID4gLS12Mg0KPiA+IC1Td2l0Y2ggY29uZGl0aW9uIGFuZCBkbyBh
biBlYXJseSByZXR1cm4gW0phbmldIC1EbyBzb21lIGNoZWNrcyBpbg0KPiA+IGNvbXB1dGVfY29u
ZmlnIFtKYW5pXSAtRG8gbm90IHVzZSByZWdpc3RlciByZWFkcyBhcyBhIG1ldGhvZCBvZg0KPiA+
IGNoZWNraW5nIHN0YXRlcyBmb3IgRFBLR0Mgb3IgZGVsYXllZCB2YmxhbmsgW0phbmldIC1Vc2Ug
YW5vdGhlciB3YXkgdG8NCj4gPiBzZWUgaXMgdmJsYW5rIGludGVycnVwdHMgYXJlIGRpc2FibGVk
IG9yIG5vdCBbSmFuaV0NCj4gPg0KPiA+IFdBOiAxNjAyMzQ5NzIyNg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAy
ICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDC
oMKgIHwgODINCj4gPiArKysrKysrKysrKysrKysrKystDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQs
IDgzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBp
bmRleCA0NmIzY2JlYjRhODIuLjAzMWY4ZTg4OWI2NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAg
LTE3MDgsNiArMTcwOCw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+IMKgwqDCoMKgwqDCoMKg
wqBib29sIHNpbmtfc3VwcG9ydDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBzb3VyY2Vfc3Vw
cG9ydDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFibGVkOw0KPiA+ICvCoMKgwqDCoMKg
wqDCoGJvb2wgZGVsYXllZF92Ymxhbms7DQo+ID4gK8KgwqDCoMKgwqDCoMKgYm9vbCBpc19kcGtn
Y19jb25maWd1cmVkOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHBhdXNlZDsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgZW51bSBwaXBlIHBpcGU7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGVudW0gdHJh
bnNjb2RlciB0cmFuc2NvZGVyOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggMDgwYmY1ZTUxMTQ4Li40ZGRlYTY3MzczODYgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAt
ODA4LDYgKzgwOCw3MyBAQCBzdGF0aWMgdTggcHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoc3RydWN0
DQo+IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
aWRsZV9mcmFtZXM7DQo+ID4gwqB9DQo+ID4NCj4gPiArc3RhdGljIGJvb2wgaW50ZWxfcHNyX2No
ZWNrX2RlbGF5ZWRfdmJsYW5rX2xpbWl0KHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+ID4gK3sNCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+ID5ody5hZGp1c3RlZF9tb2Rl
Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gKGFkanVzdGVkX21vZGUtPmNydGNf
dmJsYW5rX3N0YXJ0IC0gYWRqdXN0ZWRfbW9kZS0NCj4gPiA+Y3J0Y192ZGlzcGxheSkgPj0gNjsN
Cj4gPiArfQ0KPiA+ICsNCj4gPiArLyoNCj4gPiArICogUEtHX0NfTEFURU5DWSBpcyBjb25maWd1
cmVkIG9ubHkgd2hlbiBESVNQTEFZX1ZFUiA+PSAyMCBhbmQNCj4gPiArICogVlJSIGlzIG5vdCBl
bmFibGVkDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgYm9vbCBpbnRlbF9wc3JfaXNfZHBrZ2NfY29u
ZmlndXJlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICppOTE1KQ0KPiA+ICt7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGM7DQo+ID4gKw0KPiA+
ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDIwKQ0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICvCoMKgwqDC
oMKgwqDCoGZvcl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgaW50ZWxfY3J0Yykgew0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
ICghaW50ZWxfY3J0Yy0+YWN0aXZlKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlID0gaW50ZWxfY3J0Yy0+Y29uZmlnOw0KPiA+ICsNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPnZyci5lbmFi
bGUpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gZmFsc2U7DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ICsNCj4gPiArwqDCoMKgwqDC
oMKgwqByZXR1cm4gdHJ1ZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArLyoNCj4gPiArICogREM1IGVu
dHJ5IGlzIG9ubHkgcG9zc2libGUgaWYgdmJsYW5rIGludGVycnVwdCBpcyBkaXNhYmxlZA0KPiA+
ICsgKiBhbmQgZWl0aGVyIHBzcjEsIHBzcjIsIGVkcCAxLjUgcHIgYWxwbSBpcyBlbmFibGVkIG9u
IGFsbA0KPiA+ICsgKiBlbmFibGVkIGVuY29kZXJzLg0KPiA+ICsgKi8NCj4gPiArc3RhdGljIGJv
b2wgaW50ZWxfcHNyX2lzX2RjNV9lbnRyeV9wb3NzaWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQ0KPiA+ICppOTE1KQ0KPiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Ny
dGMgKmludGVsX2NydGM7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVs
X2NydGMoJmk5MTUtPmRybSwgaW50ZWxfY3J0Yykgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9jcnRjICpjcnRjID0gJmludGVsX2NydGMt
PmJhc2U7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fdmJs
YW5rX2NydGMgKnZibGFuazsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmICghaW50ZWxfY3J0Yy0+YWN0aXZlKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB2YmxhbmsgPSBkcm1fY3J0Y192YmxhbmtfY3J0YyhjcnRjKTsN
Cj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICh2YmxhbmstPmVu
YWJsZWQpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoJmk5MTUtPmRybSwgY3J0YywgZW5jb2Rlcikgew0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9DQo+ID4gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGlu
dGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFwc3ItPmVuYWJsZWQpDQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9
DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4g
dHJ1ZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0YXRpYyBib29sIGhzd19hY3RpdmF0ZV9wc3Ix
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDC
oHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHAp
OyBAQA0KPiA+IC04MTUsNiArODgyLDE0IEBAIHN0YXRpYyBib29sIGhzd19hY3RpdmF0ZV9wc3Ix
KHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMy
IG1heF9zbGVlcF90aW1lID0gMHgxZjsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIHZhbCA9IEVE
UF9QU1JfRU5BQkxFOw0KPiA+DQo+ID4gK8KgwqDCoMKgwqDCoMKgLyogV0E6IDE2MDIzNDk3MjI2
Ki8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5pc19kcGtnY19jb25maWd1
cmVkICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIChpbnRlbF9kcC0+cHNyLmRlbGF5ZWRf
dmJsYW5rIHx8DQo+ID4gaW50ZWxfcHNyX2lzX2RjNV9lbnRyeV9wb3NzaWJsZShkZXZfcHJpdikp
KSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJQU1IxIG5vdCBhY3RpdmF0ZWQgYXMgaXQgZG9lc24ndCBtZWV0DQo+ID4g
cmVxdWlyZW1lbnRzIG9mIFdBOjE2MDIzNDk3MjI2XG4iKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiAr
DQo+IA0KPiBJIHdvdWxkIHJlY29tbWVuZCBkb2luZyB0aGlzIGluIGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZyBhcyBhIGxhc3Qgc3RlcA0KPiBhbmQgZHJvcCBwYXRjaCAxLiBEb2luZyBpdCB0aGlz
IHdheSB3b3VsZCBiZSBzYWZlciBhcyBpdCdzIG5vdCBvcGVuaW5nIG5ldw0KPiBzZXF1ZW5jZS9z
dGF0ZSB3aGVyZSBwc3IuZW5hYmxlZCA9IHRydWUgYW5kIHBzci5hY3RpdmUgPSBmYWxzZSBhZnRl
cg0KPiBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZC4NCg0KVGhlIHJlYXNvbiBmb3IgdGhpcyB3YXMg
SSB3YW50ZWQgdG8gZGlzYWJsZSBvbmx5IHBzcjEgYmFzZWQgb24gaWYgZGM1IGVudHJ5IGlzIHBv
c3NpYmxlIG9yIG5vdC4NCkV2ZW4gaWYgSSBjYWxsIHRoZSBkYzVfZW50cnlfaXNfcG9zc2libGUg
ZnVuY3Rpb24gZnJvbSBjb21wdXRlX2NvbmZpZyBhbmQgc2F2ZSBpdCBpbiB0aGUgaW50ZWxfcHNy
DQpzdGF0ZSB3ZSB3b3VsZCBzdGlsbCBlbmQgdXAgd2l0aCB0aGUgc2VxIHBzci5lbmFibGVkID0g
dHJ1ZSBhbmQgcHNyLmFjdGl2ZSA9IGZhbHNlIHVubGVzcyB5b3Ugc2VlIGENCnBhcmFtIHdoaWNo
IHdpbGwgb25seSBhY3RpdmF0ZSBwc3IyIGFuZCBub3QgcHNyMSBpbiBzdWNoIHNjZW5hcmlvID8N
Cg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7Zn
YW5kZXINCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PQ0KPiA+IEVEUF9QU1JfSURMRV9G
UkFNRVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsNCj4gPg0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjApIEBAIC05MDcsNyArOTgy
LDEwIEBAIHN0YXRpYw0KPiA+IHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgdmFsID0gRURQX1BTUjJf
RU5BQkxFOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgcHNyX3ZhbCA9IDA7DQo+ID4NCj4gPiAt
wqDCoMKgwqDCoMKgwqB2YWwgfD0NCj4gPiBFRFBfUFNSMl9JRExFX0ZSQU1FUyhwc3JfY29tcHV0
ZV9pZGxlX2ZyYW1lcyhpbnRlbF9kcCkpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoC8qIFdBOiAxNjAy
MzQ5NzIyNiovDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3IuaXNfZHBrZ2Nf
Y29uZmlndXJlZCAmJg0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9wc3JfaXNfZGM1
X2VudHJ5X3Bvc3NpYmxlKGRldl9wcml2KSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgdmFsIHw9DQo+ID4gRURQX1BTUjJfSURMRV9GUkFNRVMocHNyX2NvbXB1dGVfaWRsZV9m
cmFtZXMoaW50ZWxfZHApKTsNCj4gPg0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpIDwgMTQgJiYgIUlTX0FMREVSTEFLRV9QKGRldl9wcml2KSkNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfU1VfVFJBQ0tfRU5BQkxFOyBA
QCAtMTUwMiw2ICsxNTgwLDggQEAgdm9pZA0KPiA+IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuOw0KPiA+DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmhhc19z
ZWxfdXBkYXRlID0NCj4gPiBpbnRlbF9zZWxfdXBkYXRlX2NvbmZpZ192YWxpZChpbnRlbF9kcCwg
Y3J0Y19zdGF0ZSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5kZWxheWVkX3Zi
bGFuayA9DQo+ID4gaW50ZWxfcHNyX2NoZWNrX2RlbGF5ZWRfdmJsYW5rX2xpbWl0KGNydGNfc3Rh
dGUpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuaXNfZHBrZ2NfY29uZmlndXJl
ZCA9DQo+ID4gaW50ZWxfcHNyX2lzX2Rwa2djX2NvbmZpZ3VyZWQoZGV2X3ByaXYpOw0KPiA+IMKg
fQ0KPiA+DQo+ID4gwqB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KDQo=
