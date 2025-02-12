Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76437A3244C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA9310E855;
	Wed, 12 Feb 2025 11:07:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYYT48zy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FBE10E855;
 Wed, 12 Feb 2025 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739358468; x=1770894468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jFFHEY5hFnTbdKH9WRzotrmRExy1O4ttGVXXWbQq6Qw=;
 b=YYYT48zyQGPKYf4HR71vNBkk/6KzI7/MRsLE4NSs2KSud+5Vsfbb9ygp
 XWcmeFmrRLn3wKm/xPAbDXGG+80RRV+DwCjImO57IlC/xudBPHAzBIyjA
 z1jiMqccONy7pC1274Aih84E3ZPWKF7+3CxvMZGZQYQuUMvq+ysoyCYio
 SnYSpAhb/8wkDUwCgslkFMrEi5akv7hXLcBLWWwdg1njqEZeXPnougAxV
 CYdRjB+CSTyZBgpKxBDOp/AkcvdA3L9cmZ0Z2xPa2MsNZomsWvoHIvuvr
 ADgndtSQr0PcX+YtTr8pfxPVOp78SZf9nFRohcJKBUVmwGFQCPj8eiHfR Q==;
X-CSE-ConnectionGUID: 40Sj8rpFQNmBEMUzbLrJhw==
X-CSE-MsgGUID: zerACZs2SN6T5j/wIyJfdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43772797"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="43772797"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:07:48 -0800
X-CSE-ConnectionGUID: 4aDdzFvKRgatM2FW3IWQGQ==
X-CSE-MsgGUID: yXK4/PhtSfWaIlwAYmKzQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="117716125"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 03:07:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 03:07:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 03:07:47 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 03:07:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bm2DE1wS1o0ya1HY49ZNAHqx42kr6ussdEXz/wKaouPm7rqvO9o2XnDxBPidkcEVHb/1f1cJ7WRwQYYzVmGuPtyGRV7rearRqCpC9NonlOvZ0KHzZyXyjeTrP7mwgQuLDXMycYkjqwQAyr9KgJe3BJb7k6S2z23rPNMyHJXb6MTum3rrNL0V7cE+k71yE3jVhhr/DLEMYhnGVWQ6P9ldQBB7diP2Z69FzvT9fuU4B/HjB+Kc2UX7Tq3ySnrdC/eD5rgtaxrDr9B0IcEH9lEDbnEOAzkt+JIhg4Eu8+02dD/80iUNMf14EFmrGL0CEoZ2IoMvdc9GG5FQmYMdvceR5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jFFHEY5hFnTbdKH9WRzotrmRExy1O4ttGVXXWbQq6Qw=;
 b=fplsEDrvbfy9McYkXv83dIXwnohbirazm4/hSWmRKYwZKZN461hwLzO9pVjebpoHjSG5k/0q1foLaaMSCg5UtRAwyNumva+1KjXpbi0eKC+AgYK++AP5L+rr37DSg9YcfL360JMZZtl7mM9y0iXsCbJJfU6ZJcyHfK0TTK0+7OWp9Z87DlVcexZ7Mx3iT326mVRIq3t/09qpz8msHFl3fLW/saVD01fO9tcA7F4tWeObuidYsDvkl8/k3hv5eMzJWONh7LXKAC4t4A0DndWI6BOl/bfza/kIj4ngiqtmWyynl8J2bQXh52BUQ9EAMk0C7/8uJoNTjvonmqbKZguOlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6980.namprd11.prod.outlook.com (2603:10b6:510:208::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.23; Wed, 12 Feb
 2025 11:06:59 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 11:06:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: RE: [PATCH 16/17] drm/i915/ddi: Move platform/encoder checks within
 adlp_tbt_to_dp_alt_switch_wa()
Thread-Topic: [PATCH 16/17] drm/i915/ddi: Move platform/encoder checks within
 adlp_tbt_to_dp_alt_switch_wa()
Thread-Index: AQHbcomFzYeBLGIJAU6y9c5iqLqdWbNDl0Pw
Date: Wed, 12 Feb 2025 11:06:58 +0000
Message-ID: <MW4PR11MB7054E0E42243515F1315EBF3EFFC2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-17-imre.deak@intel.com>
In-Reply-To: <20250129200221.2508101-17-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6980:EE_
x-ms-office365-filtering-correlation-id: 37c8e765-54ba-44e8-f08e-08dd4b555ec1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?QXpFWmdwR3k3TjdtZUUxcUk5MzBXeGZjd0dEY3pUL0V3cXhVeGJ5dUE2d2pY?=
 =?utf-8?B?dU5BYkgxTk1qdU1NcFVSTkdIRW1NSityREhjdVVrTWhIbytCOEsvUXJDUUpC?=
 =?utf-8?B?cXRaUUZ4Y041QVpHU1BCZE5pYkVNbzdsMnlYdFRYY1pGaGhGVm5TaHFSOWVL?=
 =?utf-8?B?Z3BkMUVmekFNeUNXZU9ENXFDVHhXZTBzZUViVDBDT0VXTzdBSWtqTXlid2dM?=
 =?utf-8?B?RmY5eERhU2htVGg4eTFkNGd4eVVGRzlxcnN3ODBWbmtCRjhCR3pJTHc2Q24r?=
 =?utf-8?B?MEJ1L0dxQVJCeVVwMGM2MEdRS1ZjWjhWb0poYjJzTFVkMnlqL1M2aEZ4QWU3?=
 =?utf-8?B?UGhtWXRJNjJHY3RkdkVUODhTaitZbFByRHdFNFBHZWd2dXBNQnFvRkc0UDNq?=
 =?utf-8?B?a0JseExTeGE1cmJEZjgwcGdXdWw4eEV4bUhMYUNqb0p3c2VLT0V0RW8vNGJP?=
 =?utf-8?B?S2s1ZG5TVHpPTmZkbmNtdHNwaFc3S1prV0NpSFJKakdIMDdDMlhZYVBhbVBm?=
 =?utf-8?B?dFBPd3VGb3EyamY4MlhIRHhxT2lxVVBwenJzQnk2d2lES1ZZcGM5Zy92QVpv?=
 =?utf-8?B?RVJGWTNkRXVIajlIdEk1MnppbEt0TUcyTVRYclhWQzE0bXhXbDhpZUwrNFBj?=
 =?utf-8?B?VVA2dHNwUGpwaGxsUnQzaDV2NFNSR2I3Qko3V0VVNnc0SkdaaysxYWJNT3VO?=
 =?utf-8?B?R244cUpJWm5PRVEyN0ZmckR6OFp2RFR4S2FlRC9HUUtsQkRWMUNiOUgzRldE?=
 =?utf-8?B?c3d1ZkVUVWVkaDZHeW1Vc1RXaU42bUVWVEh3NkdORTNPdER0MWh6SXJpM0pT?=
 =?utf-8?B?ZlVRa2Fib2dvZHo0NDUwTlVGaU0rdisxZ1BmZjBTSERkeEp2VEcybTl4SkZK?=
 =?utf-8?B?ckNCSm9yRDZJWjZROXc2aitFak8raG9CcFpZSkFvbWowRkxOemNhRTMvZ1B6?=
 =?utf-8?B?R25QVmMwU2lnOEZoS0F0ODJnRUlZcXgrSHVSSC83V3V6L2o1Y3JRcjRwS2FZ?=
 =?utf-8?B?T1FTdGdVVHdka3JtaFhXSmVGWGZENTJFU0NVL0J0S2hPbGw0TkVHY2RNY3NW?=
 =?utf-8?B?VWVidkpKb21mSG8yTnNySk5PTzBJN2krT080bGlGTGJMbWIreGR1VlM4MDFu?=
 =?utf-8?B?Y3N1cUxjcGZ6WFRWbVl1V2R5N3VaVDF3YkgxUzcvc1RKOWlXQ2lDVWllSzdJ?=
 =?utf-8?B?cHVmeC9JMmY0YkQ0ZVk5NmVvRVl0bUV0WmNIaEIxVE85UERZRGEzNmlLVHc5?=
 =?utf-8?B?dTJ2ZEwzSnNBZDBMWmZCYmprcmxMTEE3bkZrR2FLc3dpYkZ2QUlnR2Z0ejF3?=
 =?utf-8?B?eW95Z1g4YUc2V1lEZHdXU0hvTVM0ZklndFpKbnk4ZURYaThYemcyMjNtV1lR?=
 =?utf-8?B?NlRUZmdud3VQYXFFNUFtNE4wKzRka3ZnOFJLWW96c1JXeFhoZFhFM29pZFFN?=
 =?utf-8?B?U241ODE2c2lER0xIYkE3YzVRcmNYUmphZmZZSHh1TktJc0ZFblFUSUtZQzJn?=
 =?utf-8?B?aGx2SWJpcmxXb3lRV3dDb2ZuSW4yT3lxSDlFNWh6R2JRdHgycjRFcUFIUmtM?=
 =?utf-8?B?YlNybXZNZzJ2SGZ0YUNCbDA3d2xMNVp6dWNGRnZURHJoYVplSkVncE15Q1JM?=
 =?utf-8?B?b0FVcExGaXNUTXIxWWtpK1h4Ty9RUFQweGsvTnN5WkdJdXBURko0NkFsd3Ax?=
 =?utf-8?B?UDRBYStzemJWYTJabjMwUXNUWERnT1dvNmR1QlkzSW12MWY4WHB2cjVQSjJ1?=
 =?utf-8?B?UDdQMlEyWW5MdGtWV0p5VEpQbVpxaUtLWGNyT3JhbVpqY1FhVDcxTndlTlg5?=
 =?utf-8?B?cHlXYWZKLzBPYUNWSWRKU1NnZldwS0xTV2JNU3ZldnQ3eDhTTnhOWm5HQ3ZO?=
 =?utf-8?B?cjhwbDRYVHV5dnpwMWhpam5NTFZMNUVXd3RMMmxjV3JnUGw2S1VoSVMzWHBO?=
 =?utf-8?Q?DkfxC2E65fo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3Bpdi96V29HZGtranNLOHQzZU5LR0lhdHBZUlZjQ3ladjFVbnY3ckJteUE3?=
 =?utf-8?B?T0ZhbzA1cXVyN201dGFGUkxVUnlRUXRRc1dmbENKOUJEQ2c3NzBEM1prWnE3?=
 =?utf-8?B?d09XTXJPK05zRFZUdW5HOGNyMEFORWo0TjY0YmNTSzFYRWt2WUJXYW14bnRw?=
 =?utf-8?B?N0NQWXo4ZGQwRVFMc2VWTlE0Z2lBdFU2ejAwTm93ZmVDSkp0UWdONUgwRnd6?=
 =?utf-8?B?Y0tSeGIyZEpJdjhqNDVtME5kSHVwK25CTW16SENNUFRURnMzM3FuSlBlS29h?=
 =?utf-8?B?VUR3VHZBVEV0MTEzamJIbDIzWjVCQ3IyOUJaUWlmMVdRR1Y0YXRiMHZKTkhu?=
 =?utf-8?B?d3VWeHo1dHpBcEdHb2dpNDQvQTNqS0pEMU5xd3Z4eXZmNlpnc21NV3Nnc2tV?=
 =?utf-8?B?UHZaZnZtQ25TckFINHFyRHE2Z1hyblNXT0FVQjRmMUlCK1BSUEMrdlNDL1ky?=
 =?utf-8?B?T3ZySU1FRFJFdEdqWDdZRmZCcERXTGdkMkJ1WXdtN0luQ0ZPbDRORjRmdEVq?=
 =?utf-8?B?L29uNGs4eS9iN3NNTldYWUIxc25mU1NrMGp0MU9rb3pwVUJ4azUrQXNrQzNI?=
 =?utf-8?B?dm01ZHQyeStPWVdOUTlaQjc5d3h0ZzBRbGI5SW5GczV2aHdtV1d4bkk2NW9E?=
 =?utf-8?B?cEdySFNtRzZ1Q2k5RU9uWDlRcWROdExPeFVvcWsxdVpxYVp5SjRhMyt6czUx?=
 =?utf-8?B?Y3Z5VUdVU0x6OWFVK080dE0wekl0eXEyYVNLRFdkNWJOV3VMVU1JL211Ry9V?=
 =?utf-8?B?UFRzQUtpVW0xQ3g1a0pmcklqV3gyZ0phemJtOGl4QzA1S24vWERCWkN2ai9u?=
 =?utf-8?B?R21iUDh5elFnQ1EzV05CTUhjNTN3U2t4cWJoWk1nWXRZMnRGdzVmb0U4MGRO?=
 =?utf-8?B?bVF4YzBMOGlQTzNzbS9sbTdJZkw1RVhXTjNtTUV4bHkwL2Zra3BMYUk4bDg2?=
 =?utf-8?B?Tmwvc0QrVEpoL01BM1hNdXdReStPaEpOU2FiUUFwV3ZiK1YzaUlORm1SOEQx?=
 =?utf-8?B?SUVMTFB5SU95bGwxYlZLQ0pxSS9PQTAyVXJjMXlTWUNYWWx6SVVjd29waEox?=
 =?utf-8?B?dVU1WC85RVRIbVhtZU4rSWJFYzFLY2JwV0ZjdW1RNjc1T3ljV3RSQytJSEt6?=
 =?utf-8?B?YUE1dG1PdjN0eDk5WHZzOEhoV2VzaFBPM3FrZmliZlN0ZE9RU1NvOWpackd2?=
 =?utf-8?B?aVlhN2x4aHNGczZ6bk5OVjV3TVN0RElGblM4S3hRZ2J5aHFBdytuWkw0OG42?=
 =?utf-8?B?Y1JwRFhtUTdzQkppRm9CQTFWaXduZFJXTXd5aHZraXI5RTdsSkhsa0hNaWNM?=
 =?utf-8?B?TjVUZFVWbWtESVZ2R0MzaFNYRnhUZWsydGJUaDJMd2xzVnpDSExkZk1oZXdC?=
 =?utf-8?B?ZnJPMkxOenJtNGk5TEtRcnBWYW1WYW5yS1VLdlBDQ3JpTG1lbjFjYVBnNWEx?=
 =?utf-8?B?NDFKSGpTQnZ1aDY3c3Q1ZTlycUdFSEtmZnJqNkY2UjMrOFExcXRVWnBOMC9q?=
 =?utf-8?B?eFNPWWFETkw3cXRQellzNHhQV3NJTC9sVnJDZ2V4UXk3Wnl2QTZZN2RJOW5Y?=
 =?utf-8?B?cHd6VTB0aHpaL2JxdFlpelpQZ0VRYzdGSmhuaEk3N1FsZkh2d2JPZnBRWXhh?=
 =?utf-8?B?cTNBeEJYZHBRQWgrd2laM01iT0p0Zk02ZFovWnpyVWdKazFiNWVEUnZXVndm?=
 =?utf-8?B?SkoyQWx5eFJoQkdicUNvbE5vdmFBQlc0ZzNldXpQWVFwd1dNU0tXSC8xa2E0?=
 =?utf-8?B?V2R6dmR4QUxkR2JLdTFnN0pBaFY1Z2psb3pYWlZ0ZHBPY0h2VWdKWVNEZ20y?=
 =?utf-8?B?QmI0UGJqTG1iQjRWUXlnSTdZWkJ4TmpNNDA4TzhzRDk5aW9VbDlmM1JuZWgv?=
 =?utf-8?B?TkRLYm9lWTZkcDN4cWFOc1E4aVRMYmx4YW1MQUpZVXp1WkgwS0haQ2xaTGk4?=
 =?utf-8?B?b0hkYzVuaFhzQ2E0ZVNzZWFsOEJnY1ZFKzFtUllDMElXR3g0dlluSEZiZlRE?=
 =?utf-8?B?RDVpcFZ5dlYxRlJYYmlTSThjRjNwbWloVngrSWdueGpPV045WWtSOHVDd0FG?=
 =?utf-8?B?RVVaMjdNTG1pSkIwSmQrMGdVbTFFOGdkQXRTV2FkQ25YQ1V1OThUMWFpNVZu?=
 =?utf-8?Q?l0uVg6AV/5Kc+zXirglDqTq2B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37c8e765-54ba-44e8-f08e-08dd4b555ec1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 11:06:58.9957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iuLdMnhJQkDxTLCxUFo7YYQwmDUPOSYCqFKgj+Nrj7NdUVxubbJZTMJrgXXri7LX+fHnjEPkGW0YrvadwCpaIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6980
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogV2VkbmVzZGF5LCAyOSBKYW51YXJ5IDIwMjUgMjIuMDINCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAZ21haWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMTYv
MTddIGRybS9pOTE1L2RkaTogTW92ZSBwbGF0Zm9ybS9lbmNvZGVyIGNoZWNrcyB3aXRoaW4NCj4g
YWRscF90YnRfdG9fZHBfYWx0X3N3aXRjaF93YSgpDQo+IA0KPiBGcm9tOiBJbXJlIERlYWsgPGlt
cmUuZGVha0BnbWFpbC5jb20+DQo+IA0KPiBUaGUgcHJlZml4IG9mIGFkbHBfdGJ0X3RvX2RwX2Fs
dF9zd2l0Y2hfd2EoKSBmdW5jdGlvbiBuYW1lIHNob3dzIGFscmVhZHkgd2hhdA0KPiBpcyB0aGUg
cmVsZXZhbnQgcGxhdGZvcm0gYW5kIGVuY29kZXIgdHlwZS9tb2RlLCBzbyB0aGUgY29ycmVzcG9u
ZGluZyBjaGVja3MgYXJlDQo+IGEgZGV0YWlsIHRoYXQgY2FuIGJlIGhpZGRlbiBpbiB0aGUgZnVu
Y3Rpb24sIGRvIHNvLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAZ21h
aWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgfCAxMCArKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jDQo+IGluZGV4IDQzMWRiMWU2YjZmMDcuLmEyZDgyYTRjNGFhNzcgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMzY5OSwxMCArMzY5
OSwxNiBAQCBpbnRlbF9kZGlfcHJlX3BsbF9lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZQ0KPiAqc3RhdGUsDQo+IA0KPiAgc3RhdGljIHZvaWQgYWRscF90YnRfdG9fZHBfYWx0X3N3aXRj
aF93YShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikgIHsNCj4gKwlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4g
KwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChl
bmNvZGVyKTsNCj4gIAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX2VuY29kZXJfdG9fdGMo
ZW5jb2Rlcik7DQo+ICAJaW50IGxuOw0KPiANCj4gKwlpZiAoIWRpc3BsYXktPnBsYXRmb3JtLmFs
ZGVybGFrZV9wIHx8DQo+ICsJICAgICghaW50ZWxfdGNfcG9ydF9pbl9kcF9hbHRfbW9kZShkaWdf
cG9ydCkgJiYNCj4gIWludGVsX3RjX3BvcnRfaW5fbGVnYWN5X21vZGUoZGlnX3BvcnQpKSkNCj4g
KwkJcmV0dXJuOw0KPiArDQo+ICAJZm9yIChsbiA9IDA7IGxuIDwgMjsgbG4rKykNCj4gIAkJaW50
ZWxfZGtsX3BoeV9ybXcoaTkxNSwgREtMX1BDU19EVzUodGNfcG9ydCwgbG4pLA0KPiBES0xfUENT
X0RXNV9DT1JFX1NPRlRSRVNFVCwgMCk7ICB9IEBAIC0zNzc3LDkgKzM3ODMsNyBAQCBzdGF0aWMg
dm9pZA0KPiBpbnRlbF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgZHBfdHBfY3RsX3JlZyhlbmNv
ZGVyLCBjcnRjX3N0YXRlKSwgZHBfdHBfY3RsKTsNCj4gIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQo
ZGV2X3ByaXYsIGRwX3RwX2N0bF9yZWcoZW5jb2RlciwgY3J0Y19zdGF0ZSkpOw0KPiANCj4gLQlp
ZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpICYmDQo+IC0JICAgIChpbnRlbF90Y19wb3J0X2lu
X2RwX2FsdF9tb2RlKGRpZ19wb3J0KSB8fA0KPiBpbnRlbF90Y19wb3J0X2luX2xlZ2FjeV9tb2Rl
KGRpZ19wb3J0KSkpDQo+IC0JCWFkbHBfdGJ0X3RvX2RwX2FsdF9zd2l0Y2hfd2EoZW5jb2Rlcik7
DQo+ICsJYWRscF90YnRfdG9fZHBfYWx0X3N3aXRjaF93YShlbmNvZGVyKTsNCj4gDQo+ICAJaW50
ZWxfZW5hYmxlX2RkaV9idWYoZW5jb2RlciwgaW50ZWxfZHAtPkRQKTsNCj4gIAlpbnRlbF9kcC0+
RFAgfD0gRERJX0JVRl9DVExfRU5BQkxFOw0KPiAtLQ0KPiAyLjQ0LjINCg0K
