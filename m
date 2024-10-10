Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5829C997C61
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E984D10E862;
	Thu, 10 Oct 2024 05:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PzackoER";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0B910E862
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 05:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728537998; x=1760073998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lRJgWcghkCCXjBi/JqlW64MpUWTYdXs4zJ1gsLelUvY=;
 b=PzackoERnTo5pH+C+hFql78HmA5mD5uxsyBUlL2EwI0HgOxyLERcLuTQ
 MGrrJ7OP4MTPR0DRGa4GuthV7iq+GmWbUeDXYIKS2YJhitI4c0qLwJAQA
 VMnfuIxZmOM6J1tmG0UzqsRpg6lVHmjkoBmFhA/pxVkE62D6HW4BmPna3
 L0ipMONQlIivyqCp/KEJJyMpIUkdQrtAxixfVYcjLa1QZrhaV3gGwUvse
 ++XTzLuJLN1zQry6LMa9vwaPkdDzJQzj8hh9eMrQRS21EzdxAKmlJjboP
 26zRo0YZWxM4WBbyuVjvTrEb4pB0kMxjFJv7cLdDl7hLK6YXtO3rn3RwA A==;
X-CSE-ConnectionGUID: gijodlB9QP2XHc9t5FFwxg==
X-CSE-MsgGUID: jOZGY4cyRdq/S+11a0vSMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45350986"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="45350986"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:26:38 -0700
X-CSE-ConnectionGUID: nwj9hAc4R8q/pKbEXTAA/w==
X-CSE-MsgGUID: y6cQFakbS8eIigW2FRvoyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="81295863"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 22:26:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 22:26:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 22:26:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 22:26:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 22:26:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YClT2bHYsjHMZq+QuDeOhP+Fqs/9kmilJhz6W+j50hb78adH3XOTgbgxfRUcrtmDjwwMtfp8rhcfyyZ9SimJ9UVIqE27W35dtrKG4owYTYDglH5u+dkDk7pL4FU/28AvNpGWaA5vlCTXQvMMG/BGTRGdgf+8DfGcX5YEMtxvFDznmgT0aBmqpSo0wWVUCOnIyq8H/ydt7wpuQBaWNqeK9vW5uzYe/bVLa3CyDCkSooiPaMZch9YpgH58ot4SNSXUJ8t21ACt5keHw3TR3j/1dN7RuWeEgdJJmmUgb65o8H35IbWCs2FBV/CtYuhd+4RSmLkZhnkLYGEnAx+E0hBZKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRJgWcghkCCXjBi/JqlW64MpUWTYdXs4zJ1gsLelUvY=;
 b=V4ymWiyXGFhIEkTz+txFBTek11BtTPnxWFM0gXu39HEwQXGFc4ausKx6oV9FHCz1B3V2/y7n+VtxBtx8Y8F5sdY+p3FgLFcuVmhw+5C6hmozEf65DmWvl4rxTewGWZjB6IewqBKOLuMVyeg1SYDULD8MSP8SjsIvWWK+iecfsp7OuSmaEV/CE+miitIAsBxmVvpONMnFLDDW+82ipIj1Tdpbxf/5b44MGtSQXYY3pJEdyA5vyihduxu1U0AHFrHG5hrcZuDJfAGpjFlpLXZa7brczsWlgXkNvGKqWb9W89k/tP+OrvzoAQwTlB+EeEGBqHufPyV3iQgX9d3Z7X1MYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5030.namprd11.prod.outlook.com (2603:10b6:510:41::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.18; Thu, 10 Oct 2024 05:26:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8048.017; Thu, 10 Oct 2024
 05:26:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel Replay
 vblank workaround
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel
 Replay vblank workaround
Thread-Index: AQHbGlE0QhF5IARESEKMGSWHu0t5c7J+drUAgAD+mIA=
Date: Thu, 10 Oct 2024 05:26:33 +0000
Message-ID: <68bae7f78e000411bf89b5a7dfb1233735451148.camel@intel.com>
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
 <87ttdl8irr.fsf@intel.com>
In-Reply-To: <87ttdl8irr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5030:EE_
x-ms-office365-filtering-correlation-id: 167fdde0-0a9b-4a69-38e0-08dce8ec1adc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?L0FrdTNJOXppTEhuUldweHdiRnJCRFl1VVZ4azVNNzJhZkc1ZDl3WWkrVmkw?=
 =?utf-8?B?M1NnK1E0cklQY3hLTEd6b0U1RThGM0k0S0VLemhaaGRYZ1pLeWFuWWQxZnZi?=
 =?utf-8?B?emFsNm85YURLSzlqZitTeXR6T040aHJRWWNLd2E0MlcxWFg5ME1MR0pSSi8z?=
 =?utf-8?B?SjRqS29VWmN6L0w3emlYdGgwTC82MEVHVVJrWjcyRGkwV09XMWlaejYva3dM?=
 =?utf-8?B?TC9XNkI4UHZ1VnNST1l2WmxWT3QzcmFaYWYyS212SHRiOHY1dzdndjJ1Y3Ft?=
 =?utf-8?B?a3d2NGtFVTlhTkdDTG5hRlNZcDcxNGZNamtTblZkNjQ4NXR5QmQvZmp4QVho?=
 =?utf-8?B?eUxkWFFEMHA5SDVJOThRNG80V3NQYUEraGdTeXpselRGeUFMODc3VzYvQlVk?=
 =?utf-8?B?eVE5WFk4N3pkWUp4SVlhUUJCQUlwZTEvbTdoc21iL2trZzRHcnIwNUlXakJW?=
 =?utf-8?B?MnZaRTE5VERhcnRyRWxKQWZ4R0I3WWN6WE9xZUZ6RHh4R2pPN2V1eERjbkd0?=
 =?utf-8?B?dllYZlNyYS9pWHM2Ny9pSmt5MGlrNEJhWTdFR1FYMitJY29UZm1nRVBQVFdj?=
 =?utf-8?B?ZExEMmovdEU0YlFxWU1INUluSkhNYWw1NERpTThsblVCd3A3dHBpQUE5YVF1?=
 =?utf-8?B?YXpYS2xkTUQ1VCtJMWJYVWxEbUowNEpDajBXejhkVmxSU1dybkoyVno0S0pI?=
 =?utf-8?B?TitMRlpJOHhydjFVSXB6MitPUWNrRmt0RGljdk1TK3pyVHFDRUpma1Z2K3BU?=
 =?utf-8?B?MnY5R1V0RjZ5b05TZFdHdEgzcjI2eE5SY2dtYTVBODdxQUhVM3A0eXdSclBv?=
 =?utf-8?B?QzJpTFlQNjc3SFFWQmREeUpIbXlIeW80ZFBnOGdOSW9UbHl2L201S0hJbWRq?=
 =?utf-8?B?bkQvSnZXQXErZXFGL2d4OVB6UnBSMGFPOHNqZU5Oa1FuZjVCMVhYY2IzYXVo?=
 =?utf-8?B?SVN3c2pwa2NzV21TZENoNzA0VExET2UzNEFMdU5naVd4SlpkNkdybnM0aVVT?=
 =?utf-8?B?TFMrYW5wUDVNaWJpNGxmSkJQUzkvMllSSWJBdDdOa05sUU1ZbmtYd0tlRVJV?=
 =?utf-8?B?V2NaUE94Mjl3c216ektBMHlNZkdXYmhLdjBBRTJXN2VuWURCMFhNb0kvUGpU?=
 =?utf-8?B?Uk4rOTlnVlJLVi9uaFhLRWZaNHRsQ0xzNDJ4KzVER0VJckNxTCtldFRrc3hE?=
 =?utf-8?B?N2xDaUhIamZYQUtyaVNBTXZSYlVqdnBQVHFBc0pIcnZ0NTdxbFRseDhhUFBm?=
 =?utf-8?B?V3I2aWo5cGhlaTF2eEppZWwzbmpBOWtEWDNTWVgzNmhjN1RxdFc5SGRGMEZ5?=
 =?utf-8?B?MGFRMGlkVXRtblIxN1lqLzM1MFpVcWdlWHE4ZVNDM0doTVBuZTNRcSt2QjBj?=
 =?utf-8?B?Q2cwK1RSN0xpY1BoVVkzTzNFZFBrMCtOTnhwMVU0Ri9MemFTc0E4NTJJWmlk?=
 =?utf-8?B?ZFNyQngxdURHWnJDQVAwVS9ncEM2aStEeW9ubk5MT0ZONHZoOXFrNHd5eDI1?=
 =?utf-8?B?YmE0dndrRDNkdXM0aEZIaXVmK2pyaFpReFp6MFdMMkpDRDduOFpnYXRoc3JG?=
 =?utf-8?B?bk1CYTVCTERZcTlQNXZSVUpKOVV4NjNTNDZzY1RkcXh2SHJMMlp3alY5Z0xJ?=
 =?utf-8?B?NS9lZ3V3cnUzQ2dzR0s5N3JIVWlzbGFnYzAvQmpQc3hVQzh3SzhyN2I3V3h4?=
 =?utf-8?B?NUN5K2ZpQkhyS0J1RTMyaStvcGQzN1o3WEVXc0FhWlBiSWJqU1RjSTVKdGg2?=
 =?utf-8?Q?fBCqfn0InI8ehevuA1cUk+d2Cm/QP0e/TT4ubx2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZjFLMWhZZjlQem85M09vWUl5U2dlWVdMV0RJVTNtUm5YV0pWcklaVEUzODNk?=
 =?utf-8?B?SVQzZU5lRU5ObzFWRDdaeFQ3aGJuNm05MEhLRVpMMTUvb3BEdXo0YVNQR2ZW?=
 =?utf-8?B?SkswZ0xpMUdFZThUU3d0VVBuWkd6QUI1ZkdBTW1HZ2tUR2FQTVJFSnlPcUxW?=
 =?utf-8?B?bVZia0x1RW9HNWh4WXNxdHFnbUxROHdjNjRvMnlLNkx5TnFnaXkrTTRYM3Y0?=
 =?utf-8?B?eCtMT2Ruc0ZtcWtWOWVWZ1luNnJHZkJLVTErVXFyYXBPL01ITnlHZkxlQ3I4?=
 =?utf-8?B?cm9YSVhrVi9TaVBkZ1RUZ0IyQjVzZHdhaWp0VDQ5emRKNEM1NXJnMGorMFBE?=
 =?utf-8?B?NmhJaW9ZeThHMEpPVExlQ0hOMUpHUThmMHZEcmtSQ2M4WXRiT2VJYVlhdis5?=
 =?utf-8?B?TXFoVTZ6ZkYyRHpqRE1NS3Z3RUxIRDhCQXVpL2ZqNjc5eFlaUXhHMlJpZ0dW?=
 =?utf-8?B?cWhta21WNEtZMW5HVnNZeFVwQkJKYXdRdWFWTmpmRGtVbFZVRWUrSW44dlYy?=
 =?utf-8?B?YTdpT0tYM3ladk5aUWVQMHdYcURpUjNXbWtObzZBSG1WUDJzaUVMQUhOOVZP?=
 =?utf-8?B?d1V1NS9mVi9yQWc5N2hFMStmcm02Mm1IMGQrTk5adVpKTWdybVJQQ0NhQzVj?=
 =?utf-8?B?bXVWcDFLelpSVGpmQWNsbC8xYlpnTCtlbXRqK0FDYzljZW1XWDdVaFFvT1hJ?=
 =?utf-8?B?OWlydmZ3SFdaRlpRVTUrMHdoSktyVCs1ZFZZUGJYMld2K05IUkE2cEF4SVBR?=
 =?utf-8?B?MWNteWJNRXhrc1BGaGFtQXJYeVV1QmJDOUNXbU50VmtvMmllT3QvaHFNQ0J1?=
 =?utf-8?B?SEZZYnVicGlidU03RDY3R3hleDc0VXFzWnowemhtQkgxVDdQUmFWNTIwb1Qy?=
 =?utf-8?B?eFpOdTNaUlJCck9lYzdUQnRCc3BETDNqSUZRTnNwS3YvOHg5VzVjK1BUMnZx?=
 =?utf-8?B?Y3pRU3R6amczYm0zUU9UR1pmZXRUMWR6WFk0d1lmMVdqQmxYZzVGT3FGSll2?=
 =?utf-8?B?aGxRVW9SMHoyeGlmT2VTWk5FZVcrY2szTmJQY3pXNlJrNXF2UHNZb05LQW1T?=
 =?utf-8?B?dUc3ZVRYcm4vNUdQY1JaL1dmbHRHemZ3U2hmMnhVRHhyOHZYOTVSRVJtMmxl?=
 =?utf-8?B?R2tUZEIyOUdtQ3lndlZaSldJbjlIRGRITnJZRWlZaVV5SGlrSW5EQ1NEYXJo?=
 =?utf-8?B?VmQ5cnN2c0Q4amRiQUJzb1dycjVTSU4zY3ZrRlNvQk5mTStZVWdhSCt4Qkpk?=
 =?utf-8?B?OGtIbFVYUEM5YnF3S1BqQkJISHNIeVc3bnlEaHB0S0FwajJrSWdzbGpTRzhL?=
 =?utf-8?B?WHJZemNCMXFWL3pCZGl5ak9QZTEzbkdHL2JsWUx3L2NaaGxqQm05R3gyMXpu?=
 =?utf-8?B?b2lBOEV4aFNDUlgvRTF1M0RyUUlPR3krcklhNDRwV01sNTNmeXhyeFFqcWZK?=
 =?utf-8?B?eW5VUWNXSkNNVGozNHp4ZkdXU29pZDB6NGRhSGVpa09ySGhpak5EeVpMUC8x?=
 =?utf-8?B?bWZrdUlSQ05tSEFQcHAwN0w3Nzh0c0NJK1V6YkF4TWN4emRZWkh5K1NZUFhk?=
 =?utf-8?B?R2crQ0o1WDFnN282ZjAvWTROQnNZTjg5MGFWRWtWOW1Lb3hRS3RmR1ByS1NE?=
 =?utf-8?B?YVNWUkpRSzQvMTFzaDl6R05aS3FjOXdqYngzUE9TZ01YUTAzWjhaL3AxYjZT?=
 =?utf-8?B?QVU2S05VM0svSS9LQmY5dVZPTElsMktQcDNkMmh5OFgwTVRqdFNXMEdnRGlK?=
 =?utf-8?B?YmE3WHg1NWt0cThpQTEreHE0Wm5OQ1VpTEJob2hZenFNL2dOa2FjZElscVlH?=
 =?utf-8?B?em56T0s0ZlVlazcwdituTTJvaUl2eHRjSXBqaitvRDJLREltVlZ5dFEycDJ6?=
 =?utf-8?B?WEQxUG00QVc4VSt3KzIzMHIxT2l4S0dmVnJHeGEvWlJmUGhWRXQ0MzByRzhF?=
 =?utf-8?B?SFhsSW5IQ1VvTVhkd2NoM1FhWkE4NTVFMVhEMFlIZ3BYRnVSWUloSGpnN2JO?=
 =?utf-8?B?QUwvZ1BaOUN3RG9SSkJrcmt4dnZNZTRPckxFSytQQkwxQWUzamdYN0hseTA4?=
 =?utf-8?B?bnpadlhWRHNyVFQ5Z05XWTVVLzJieXNvdWJCMXZabU5VbjdlMzNHdmJsQ3ZE?=
 =?utf-8?B?Sk9pcWY0S0VxRG5aZDFGSGdyWWZqOXJsRTdURGptU3pXeElZOGpTSGx5Z0xD?=
 =?utf-8?B?ekE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <92579E1AF800B74BB6B267CCABB1BD68@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 167fdde0-0a9b-4a69-38e0-08dce8ec1adc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 05:26:33.9766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wZoI+wo8g+54EiSoWzM9cPpB2JfiW6M86byKccQrDEJvuH67Yw22bEtO2Nf9O1Wt0kR9mPQt2ujuoByWFuRY8kSvbyeE5asNEfeMFhCIXuU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5030
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDE3OjE1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwOSBPY3QgMjAyNCwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IFdlIGFyZSBhYm91dCB0byBjaGFuZ2UgbWVhbmluZyBvZiB2Ymxh
bmtfZW5hYmxlZCB0byBmaXggUGFuZWwNCj4gPiBSZXBsYXkgdmJsYW5rDQo+ID4gd29ya2Fyb3Vu
ZC4gRm9yIHNha2Ugb2YgY2xhcml0eSB3ZSBuZWVkIHRvIHJlbmFtZSBpdC4NCj4gPiBWYmxhbmtf
ZW5hYmxlZCBpcw0KPiA+IHVzZWQgZm9yIGk5MTVnbS9pOTQ1Z20gdmJsYW5rIGlycSB3b3JrYXJv
dW5kIGFzIHdlbGwgLT4gaW5zdGVhZCBvZg0KPiA+IHJlbmFtZQ0KPiA+IGFkZCBuZXcgY291bnRl
ciBuYW1lZCBhcyB2Ymxhbmtfd2FfcGlwZXMuDQo+ID4gDQo+ID4gdjI6DQo+ID4gwqAgLSBzL3Zi
bGFua193YV9waXBlcy92Ymxhbmtfd2FfbnVtX3BpcGVzLw0KPiA+IMKgIC0gdXNlIGludCBhcyBh
IHR5cGUgZm9yIHRoZSBjb3VudGVyDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oIHwgMiArKw0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jwqAgfCA4ICsr
KystLS0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IGluZGV4IDk4MmRkOTQ2OTE5NS4uNDU2OTdhZjI1
ZmE5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9jb3JlLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfY29yZS5oDQo+ID4gQEAgLTQ1NSw2ICs0NTUsOCBAQCBzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBGb3IgaTkx
NWdtL2k5NDVnbSB2YmxhbmsgaXJxIHdvcmthcm91bmQgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHU4IHZibGFua19lbmFibGVkOw0KPiANCj4gTWF5YmUgd2Ugd2FudCB0
byByZW5hbWUgdGhpcyBvbmUgdG9vPw0KDQpJIHRyaWVkIHRvIGV4cGxhaW4gaXQgaW4gY29tbWl0
IG1lc3NhZ2UuIFNlZW1zIEkgZGlkbid0IHN1Y2NlZWQgaW4gaXQuDQoNCnZibGFua19lbmFibGVk
IGlzIGN1cnJlbnRseSB1c2VkIGJ5IHR3byB3b3JrYXJvdW5kczoNCg0KMS4gaTkxNWdtL2k5NDVn
bSB2YmxhbmsgaXJxIHdvcmthcm91bmQNCjIuIExOTCBQYW5lbCBSZXBsYXkgdmJsYW5rIHdvcmth
cm91bmQNCg0KMS4gYW5kIDIuIGFyZSBjdXJyZW50bHkgdXNpbmcgdmJsYW5rX2VuYWJsZWQgaW4g
YSB3YXkgdGhleSBhcmUNCnJlc3BlY3RpbmcgaXQncyBtZWFuaW5nOiBpcyB2YmxhbmsgZW5hYmxl
ZC9kaXNhYmxlZC4NCg0KSXQgd2FzIGZvdW5kIG91dCB0aGF0IDIuIGFzIGl0IGlzIGltcGxlbWVu
dGVkIGN1cnJlbnRseSBkb2Vzbid0IHdvcmsNCnByb3Blcmx5LiBJbnN0ZWFkIG9mIGluZm9ybWF0
aW9uIG9uIHZibGFuayBlbmFibGVkL2Rpc2FibGVkIHdlIG5lZWQgdG8NCmtub3cgaWYgdGhlcmUg
YXJlIHBpcGVzIHRoYXQgbmVlZCB0aGUgd29ya2Fyb3VuZC4NCg0KUmVuYW1pbmcgdmJsYW5rX2Vu
YWJsZWQgd291bGRuJ3QgcmVmbGVjdCBob3cgaXQncyB1c2VkIGluIDEuIFRoaXMgaXMNCndoeSBJ
IGRlY2lkZWQgdG8gYWRkIG93biB2YXJpYWJsZSBmb3IgMi4gYW5kIHRoaXMgaXMgd2hhdCB0aGlz
IHBhdGNoIGlzDQphYm91dDogS2VlcCB2YmxhbmtfZW5hYmxlZCBhcyBpdCBpcyBmb3IgMS4gYW5k
IGFkZCBvd24gdmFyaWFibGUgZm9yIDIuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCiANCj4g
DQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnQgdmJsYW5rX3dhX251bV9waXBlczsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgd29ya19zdHJ1Y3QgdmJsYW5rX2RjX3dvcms7DQo+
ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUzMiBkZV9pcnFfbWFz
a1tJOTE1X01BWF9QSVBFU107DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gaW5kZXggYTQzNjdkZGM3YTQ0Li44MjI2
ZWEyMThkNzcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gQEAgLTE0MjQsNyArMTQyNCw3IEBAIHN0YXRpYyB2
b2lkDQo+ID4gaW50ZWxfZGlzcGxheV92YmxhbmtfZGNfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3Qg
KndvcmspDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnRhaW5lcl9vZih3b3Jr
LCB0eXBlb2YoKmRpc3BsYXkpLA0KPiA+IGlycS52YmxhbmtfZGNfd29yayk7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaXNwbGF5
LT5kcm0pOw0KPiA+IC3CoMKgwqDCoMKgwqDCoHU4IHZibGFua19lbmFibGVkID0gUkVBRF9PTkNF
KGRpc3BsYXktPmlycS52YmxhbmtfZW5hYmxlZCk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHZi
bGFua193YV9udW1fcGlwZXMgPSBSRUFEX09OQ0UoZGlzcGxheS0NCj4gPiA+aXJxLnZibGFua193
YV9udW1fcGlwZXMpOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoCAqIE5PVEU6IGludGVsX2Rpc3BsYXlfcG93ZXJfc2V0X3RhcmdldF9kY19zdGF0
ZSBpcyB1c2VkDQo+ID4gb25seSBieSBQU1INCj4gPiBAQCAtMTQzMiw3ICsxNDMyLDcgQEAgc3Rh
dGljIHZvaWQNCj4gPiBpbnRlbF9kaXNwbGF5X3ZibGFua19kY193b3JrKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogUFNSIGNvZGUuIElmIERDM0NPIGlz
IHRha2VuIGludG8gdXNlIHdlIG5lZWQgdGFrZSB0aGF0DQo+ID4gaW50byBhY2NvdW50DQo+ID4g
wqDCoMKgwqDCoMKgwqDCoCAqIGhlcmUgYXMgd2VsbC4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgICov
DQo+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0
YXRlKGk5MTUsDQo+ID4gdmJsYW5rX2VuYWJsZWQgPyBEQ19TVEFURV9ESVNBQkxFIDoNCj4gPiAr
wqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoaTkx
NSwNCj4gPiB2Ymxhbmtfd2FfbnVtX3BpcGVzID8gRENfU1RBVEVfRElTQUJMRSA6DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRENfU1RBVEVfRU5fVVBUT19EQw0K
PiA+IDYpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gQEAgLTE0NDcsNyArMTQ0Nyw3IEBAIGludCBi
ZHdfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjKQ0KPiA+IMKgwqDCoMKgwqDC
oMKgwqBpZiAoZ2VuMTFfZHNpX2NvbmZpZ3VyZV90ZShjcnRjLCB0cnVlKSkNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+IMKgDQo+ID4gLcKgwqDCoMKg
wqDCoMKgaWYgKGRpc3BsYXktPmlycS52YmxhbmtfZW5hYmxlZCsrID09IDAgJiYgY3J0Yy0NCj4g
PiA+YmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoZGlzcGxheS0+
aXJxLnZibGFua193YV9udW1fcGlwZXMrKyA9PSAwICYmIGNydGMtDQo+ID4gPmJsb2NrX2RjX2Zv
cl92YmxhbmspDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzY2hlZHVsZV93
b3JrKCZkaXNwbGF5LT5pcnEudmJsYW5rX2RjX3dvcmspOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsN
Cj4gPiBAQCAtMTQ3OCw3ICsxNDc4LDcgQEAgdm9pZCBiZHdfZGlzYWJsZV92Ymxhbmsoc3RydWN0
IGRybV9jcnRjDQo+ID4gKl9jcnRjKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBiZHdfZGlzYWJsZV9w
aXBlX2lycShkZXZfcHJpdiwgcGlwZSwgR0VOOF9QSVBFX1ZCTEFOSyk7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT5pcnFfbG9jaywgaXJxZmxh
Z3MpOw0KPiA+IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKC0tZGlzcGxheS0+aXJxLnZibGFu
a19lbmFibGVkID09IDAgJiYgY3J0Yy0NCj4gPiA+YmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gPiAr
wqDCoMKgwqDCoMKgwqBpZiAoLS1kaXNwbGF5LT5pcnEudmJsYW5rX3dhX251bV9waXBlcyA9PSAw
ICYmIGNydGMtDQo+ID4gPmJsb2NrX2RjX2Zvcl92YmxhbmspDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzY2hlZHVsZV93b3JrKCZkaXNwbGF5LT5pcnEudmJsYW5rX2RjX3dv
cmspOw0KPiA+IMKgfQ0KPiANCg0K
