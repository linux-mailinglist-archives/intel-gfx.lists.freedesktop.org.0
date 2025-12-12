Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B7DCB8866
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 10:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA5C10E5B7;
	Fri, 12 Dec 2025 09:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sh6YpgDW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61EBC10E5B7;
 Fri, 12 Dec 2025 09:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765533032; x=1797069032;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Bg462Vx3wG5Yucces8ZPmHCM49+t+ybGPWJf3j+aj8Y=;
 b=Sh6YpgDWbXry3syytR7LkjxKxcPh7efpAQOFe1fP4xxyxl5itb3+bt5Q
 74t6YDkRhoKWJ4fybU2BaV5Efeohhc5MOxIJXTEgqHIMYdHMov/1h9vkt
 O1xHgjHH2kchwQ5HcdEF/KWG3NH7BU4Q/IGIMFmc4RkaKu/EIeymVZ7BC
 8LI26IPOhQI2V9torObkvT4XJnXClz/BYTVLxNUkV64QFsRylezWZNFzh
 6+ykzCmk5XOYwcVMaMVXUTp84Dp+3zURrE/gU03i/q9NX8aN8PbqRBjlJ
 s9KLFgMv4CSDZpEm1uq4y9hBXMpInMuUw6cZL7wtgEy5qiHmwBV/B0Ad5 A==;
X-CSE-ConnectionGUID: JQL5C6VjT3aH28ULb1OQRQ==
X-CSE-MsgGUID: Mx5Zp5+eQtOUTPCJpOGS1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67479760"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67479760"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:50:32 -0800
X-CSE-ConnectionGUID: JmMGrt8ORqqUEfLfhezQhQ==
X-CSE-MsgGUID: X9zvyo+eToWiHkJPowLz9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196647469"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:50:31 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:50:31 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 01:50:31 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:50:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PGbf5qe2+gKM782sR1DNS02dgc2bTekEFKMVU09Rgnxrp556YyoAIk0k6skEI5+bhhdqZCBOxn7Tw6M7/QhMHL13p/C2R3OS/kU3mRn9mattaDC0s6R7WJdBZZi8PW2b2G/yOpvOvOiZrY+5FHH5Ahzw6lhKUpknzr3WfHS20CXESd6KEi0izRkWMUnNONaapEmRw8rfkRm935OPFt8E8y71gvfHvoK/y8gsGITgccnWWCGnJ46/TqjOrcDS5ZmTqk3oP22UV+FOBhrGwMarekIbbkAvX2Jg/KVnDL342G7fpq9iNcwcEkRZiNd9huduwqa6xWUEmFHrZd9iDOjaAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bg462Vx3wG5Yucces8ZPmHCM49+t+ybGPWJf3j+aj8Y=;
 b=J74lgUE7p93uSEqOZNKnMiltVISVZVdpG8kN/FtyiMyEyl2H4Lvik2TSLfL7KEWXAWnmNKIAXmV6irB+1rhNGCwj8ByV+jyP3ZWFdpwNGkB8QfC+PK+rYEWZY9H2UjPIcjd0cefjRsSdzCgeEDzg8VaO9tguV12e9Mxw0Jos2BwWnJ70d0mDrpR2JUGuwsB6hBZ12CgjYkB5RGnYtp/l+o7paU3kI5QE/Ax+KPOj9RgbwgKqXgyTTao0t7xMnnlqe5ORitbHgUpTijqcyybcIN6+ooJJbdB9DrfvRjp4ziv9JbHncJFt14iVomLU8ZYcwFKF6k6lPZDsQggAGB4cWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB8114.namprd11.prod.outlook.com (2603:10b6:8:129::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 09:50:24 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:50:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 26/50] drm/i915/dp: Factor out
 compute_max_compressed_bpp_x16()
Thread-Topic: [PATCH 26/50] drm/i915/dp: Factor out
 compute_max_compressed_bpp_x16()
Thread-Index: AQHcX9szYZZ0p7K7VU+CWVoEU1uLCLUd2cAA
Date: Fri, 12 Dec 2025 09:50:24 +0000
Message-ID: <9abd97662ce187ae0260a32639aae5a64b42c52e.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-27-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-27-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB8114:EE_
x-ms-office365-filtering-correlation-id: ab9790dd-555e-4eb5-d19b-08de3963df55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Q0JQR2ZUdC9CSXBHMHdCZU5Pamo3a3lqMmpKQXVXVnN2K1NFWWRQc2RNclM0?=
 =?utf-8?B?L2VtUXJGY3ZuMG9tS2drcFZqQnBtcWlyTHBzZUlRQ2J3ZnRsMWxFZ20wRzlK?=
 =?utf-8?B?aS9jRVBpaDJoeSt6c3BYUWZTbkJlRWlGYmJvVnpBZjdTL2xvbFVKamdXYWdo?=
 =?utf-8?B?Z0haMUNyK0pFak5nMGNwUlM0SktJOHlnMWdvV0xHZ1BkcWRSdHdkNWpMcVdR?=
 =?utf-8?B?M3loNEt0a1VZcjl2RTVNTE9XVmsyS1B5VGVZNmVNeUtFT3N1UUp6ZkZNOTFD?=
 =?utf-8?B?NlExbVMxeU4vVVgwb2l5bk5lUjFaNktKV0dUSE4wdmZTcGdyY05ybjJIbDlQ?=
 =?utf-8?B?MVduc0VjTUZLN2dYcWhoZ0JPc1dtdGdPNmhnUHpLSGh5QnQ2RUQrc0t1aUh2?=
 =?utf-8?B?TStuVnJBeE5DdXBkL1RtN1JGVEY4eEtQR2k1bTI1RHJBb3BSd2g0VFZDSlh5?=
 =?utf-8?B?Yi9IUTlXaUtvSHNINGgwQnFaQVZiWVRmdVRiYTN4MjNqSmN3NTBUWjFrVDUv?=
 =?utf-8?B?N3drajlWZ1BrUjVDVE94c0hBcjVkK3B2bHF4VndpOXBwc3ZIRWp1OVZmV3Yw?=
 =?utf-8?B?Z3FoamR3eEZBZ0l0OXUvcXRTY1E1eTBpVklVbjBRVFRmSnV4d3l5NnhaeFda?=
 =?utf-8?B?VzVhYURkTTR3eFJmRGF4NjRQOGR4Q05BNlhOY2xtTXpqWDIwRlBLN096R00x?=
 =?utf-8?B?cEdPYnhzMis1T1VPdUErbmlLM2ltZUt1VnB0SEcwRDZWRmRuYU9oQ0tMY0JM?=
 =?utf-8?B?VjFZeWd5MEtVNVRYdmZzdndtcVlsN2t5eVcwRm5OL3BHc3NuMTViSFhHeXdP?=
 =?utf-8?B?RTBLMXNKY0pMRE15aThpZ3YvWmhJaDZLZ3NMbEFpd1BRMm51RGw0ZmgreFZu?=
 =?utf-8?B?UzVIOE5TMTRZcCtzcmdQT2tiSzhoVFpneU9QSzJpNEp3SVpBZ3RPT2lSZjVx?=
 =?utf-8?B?M0ttMEgrRFdGZ2J0WllxK0ZjUVJYN2FiUFYwL0pDaU1oTGhqaURoK3BSa3RV?=
 =?utf-8?B?R2wwTzBhYUFYREN6b2hHYzNrNDl1ZXFDUXhZVDRVMmdrR1pWYkc1SnNxRExm?=
 =?utf-8?B?SGp1WnR5SytkbjRHVU9aNEJ2QlVBZnFkQzNZK25SeGoxOGhQd2tHamVHTml3?=
 =?utf-8?B?MmtCUkh4SW9GQkhaRWszYjJmSEhyUW5JYnkxYTZJTTlJTHpPYlVBYzh1aFAw?=
 =?utf-8?B?MXlxRmo0L01HajA3VThNcFRZMVM1aEsrMzJQR1RiWno3ODZUWTR0ZHRWYzZU?=
 =?utf-8?B?dXJGbVZWVVZzY1Jha1ZLQmpSMTFHT1duN0xYdU1kalZLa3pOWlBUR25KSnU0?=
 =?utf-8?B?dVVtVzNzVDZpczJ6SGQrU3BRYi9KcTU1andTNk1neS9vYmlaS2tCaUlSZkZk?=
 =?utf-8?B?WStGZGl2WUlGazhaUURXc0J3dlV0RnplUG11ZkwzWkZrdHhNK09rc3JVOHJY?=
 =?utf-8?B?Wjh0alF1N3NGRjlSMXo1dUx5WDdaaUswc1R4eU9DdERDVSsxTWZ1RTEyckIw?=
 =?utf-8?B?U2syQUxuMzZ2ZzZRMWp6M0RTZ3EzdGdseklCdHNVOUJRQ0M4b0xxbzFsN0pj?=
 =?utf-8?B?OG9VR1lLQjI3ak9CMFNEM2FhR1lYNWR6cW13MUVsaUYvSktDVmxpaVk5amc4?=
 =?utf-8?B?b3htdCthV3lUdVBvVnFOYVFCeDB0UUtBOS9kb0ozaFRPU3dmcVNDV0R3TEQ0?=
 =?utf-8?B?emxnRkhvNXZLM0t3TnBZaG9GOEU5SnFRWENYZjFiNjZtaldYK2huMUg0M0Vn?=
 =?utf-8?B?MVZYeWNja0pvY2JjeEliZC9RMW1yTHpiUTd0ZW0zM3psM0J2RkhOYmlhMWJn?=
 =?utf-8?B?c0hmT2lna2krSksvVGM4Q1FERWdJbXdCb2J2S0krRmdLU2o1Sm5jdzNzbGNw?=
 =?utf-8?B?LzlreGhJa0hPQW1TKy9LTFAyeTBDd3VVbEM4cGY5VEw3UDhxMWNVWGRldzB5?=
 =?utf-8?B?cUI5d1c3d3Z6SHlJb3BIQnloa0Nnd3kxemd4dnNSa2VrT00zK2xMaHh4NWU5?=
 =?utf-8?B?QnRWK3hGODZ5UTRlbW9sbk1sOGVlaGNnOFNXcDkrelNGdXVtQ1UwK1lTRjkv?=
 =?utf-8?Q?YKrkgx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wk1CWlZadGVybXVNc2MwUlJ6ZzVIam5CdElKaEY3ZldDK3MwOXNvTFZQSDFC?=
 =?utf-8?B?ODNzekF1K3V0dDJHaEZrV1ZFamtoRmM2TDlKcmJPWmhycXExZ21HVXc3T0g1?=
 =?utf-8?B?NHh4amV3WHEweVZncmZrbDVyS1k1blJuMGJjSVZuR0pKSUpDNjhBbHdhS2l6?=
 =?utf-8?B?RGVvYnJIbW9GOGRKaTEyQ0NHU0JJOEFNSjFmaVJkMjhWUlEzZjBlcVN0clJo?=
 =?utf-8?B?RzJ2RDd1WGsyMVVPSDBDTHR5dzNFblUySjFIZlQzTUYranp1NnBCbndidkhC?=
 =?utf-8?B?UStoUUlzVXBJMXgxamxaRzkrdTRzWFZHQjBvcytpSUFUa0JyYUl2SVVwaExV?=
 =?utf-8?B?aVVFakNnK0V6b1dzREc3eWFCQzUvSENYVlZ4dDNFclpDTDF3ayt3eDEyeFMy?=
 =?utf-8?B?eVloRmQ1emRnZHVrd0QrdjlLVFk4Z0Z1aG55cXU3YzdsazkzQVBCZytJSkNa?=
 =?utf-8?B?TEY5eE9DN3MyeFBuWk9NcUFyTG92aHNIOGlaSmMvVjM3VFR0NUZuSjVtU1kv?=
 =?utf-8?B?WHo2M3BEdVFhYmRBTVZpbDVmWE1tRnRwQWl5eUlNZG5JYlNNYnRocjhUNG5M?=
 =?utf-8?B?YWxKUmlhTkNhb2ExNHozdmVCeHIyTHEyWkNPOXdjMitsNXNQb05WdWtGbkxj?=
 =?utf-8?B?UTZCb1lPb1JxcmV1MFJLMjl4UW1kNkFXVEZXbTUrTkFKcHcwc21PbVlWQjBR?=
 =?utf-8?B?RkRnK09DWlZYVE1jVzZmekljY1QvNEtBbXd3ck5jV1BRZHRnVUVkaEtzZlRZ?=
 =?utf-8?B?RFFzN3RLZE1KZ2k5RmZ2Uy9kM0lrR0pxUTRHano0YXR6KzIwMmV6RDZEWnph?=
 =?utf-8?B?T1VEZ3pQZXRtOTdtOWtkZUFEL0VtbkVzbE83YU5wMFJmUVlsYk5UUnNVZnFw?=
 =?utf-8?B?Z3VJSGZaREJHcjJONUxGb0p4VHhWSnpYZTRRMmxGejdwTXo3Vk5iTFNxTS9l?=
 =?utf-8?B?OUkxRDJHbSs1SUZ5dU1FenorWUNtVVREc0Rsc1VwclVhZHB4Yi9oUEUxYjQ1?=
 =?utf-8?B?MG1kbjB5WjdjVjBTd3F0UThmcjVsNzhyczF3ZHRma0hlVU5COHRtNEc2QXhH?=
 =?utf-8?B?YVRCL3FJeVE2UURZd0tKVEtqVyt5M3hKTUI1ZGNqTk0vV2FzYS90WFJhbzVJ?=
 =?utf-8?B?UVZ4ZmJvVTR3Rlp1Z0VLVjR6WGhGNVBRUHA3RnVYNk5BUWNNMFJGc3V5dFJk?=
 =?utf-8?B?emRTTmlUSlkzdXRtdjdQWGMxR1BDRmlqdFFmaHA0Sm1jVlB1L0U5a2pkY1FT?=
 =?utf-8?B?Tyt1V2NPb0hhWXk1VCs1ZVlybXpLaUZQbEdrYWR2RkppbW5idExCOXpjLzR2?=
 =?utf-8?B?K2dwQUpaOUt4RnMweDc5cnBMSW1mK3BBbWJiVnVKQVpKR2NzUHpDeFdZTkcr?=
 =?utf-8?B?NjVoY245cVhsRnA3N1hpYUc0VXRXMGcxeGR3TG42TWd4UEN1S081Zzl0eTNV?=
 =?utf-8?B?SURvK3FIcjhlYlNmQVBaWGQvL2lWclhJRjdHN1B0QjdJMGZpZTlTNDcyYzk1?=
 =?utf-8?B?QVIyd1hYNERpRHVHMFNBcktLUVZ4Ui9iSHVXR1Mzb0NTdHYrd0QzTkQ5UGlp?=
 =?utf-8?B?dFMrMmEwdzZwL240by9FR1lsWjNRNkVFbU0yM1dNaGp2ZFdyOHJkT2JnVWY5?=
 =?utf-8?B?M1hCdHFFaUg1Y3I0QXJCRzREbFJvNWw1UlgwOTFQYmcvVVZKajF0dmxlbTJU?=
 =?utf-8?B?aTVGaWE2K0ErRlBlS1lSNUhVWEQyanJSQ2FwZzFFQ2hjeHZveFRtVElEcEdU?=
 =?utf-8?B?cURXbnBRazhRZ2J1QjBoYVNXdFhMcE9mQ1NCcGpIQ0FoU2dWSVYyWVNIcS92?=
 =?utf-8?B?MWh2RjVNeG5lL1FMcGs4elVQYSsxeFY5S1JKZDJmNS83ditpcTJaZmRiQVV1?=
 =?utf-8?B?N1VWVXdDam5GdXJVdnhuU2NWZzNsMWxrM1FFSFVOSGxCRjBRSlhOdmpXTnZC?=
 =?utf-8?B?N3FpdFdUb1ZkTFgvdTJndzIvemJma0xKZDNQNTZaSUhCaVFTVEN6alVoWjFY?=
 =?utf-8?B?VjlOV0p5bGpvM01YaHBZNjhRb1pLYkd0bklMWUNYVnljakNQQ2k2RE9hN2dh?=
 =?utf-8?B?aVYxUnl2azQ1MmFjeTNrQ2V2VHo0OTFGM05WTDQxQzZLY0dMTXdqeENUT0Yr?=
 =?utf-8?B?eUgyeHFpWi9NQUVPOXU0TkpDSTYwKzBLK2prc21ERi80a1ExeFhwdEVsQTdu?=
 =?utf-8?Q?SgMl6tGMnGG4Je5LzlJknMA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E22C55A81806354F811C12BAC420DD42@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab9790dd-555e-4eb5-d19b-08de3963df55
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 09:50:24.4641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E8LnWoE/3h615VPTBed0ssZWFbUIje/yTKoEmhzsg4RKTMK4naG/jX7Ie7RgRNfnzHM81+kpCLge9+M/nsF7vFVdXTGx1Z4h7+LuDoREfX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8114
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZh
Y3RvciBvdXQgY29tcHV0ZV9tYXhfY29tcHJlc3NlZF9icHBfeDE2KCkgYWxzbyB1c2VkIGR1cmlu
ZyBtb2RlDQo+IHZhbGlkYXRpb24gaW4gYSBmb2xsb3ctdXAgY2hhbmdlLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4MiArKysrKysrKysrKysrKyst
LS0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAzMyBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gaW5kZXggMmE1ZjVmMWI0YjEyOC4uOWRlYjk5ZWRhODgxMyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjY2Miw2ICsyNjYyLDQ4IEBA
IHN0YXRpYyBpbnQNCj4gY29tcHV0ZV9taW5fY29tcHJlc3NlZF9icHBfeDE2KHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gwqAJcmV0dXJuIG1pbl9icHBfeDE2Ow0KPiDCoH0N
Cj4gwqANCj4gK3N0YXRpYyBpbnQgY29tcHV0ZV9tYXhfY29tcHJlc3NlZF9icHBfeDE2KHN0cnVj
dCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCg0KY29uc3QgPw0KDQpSZXZpZXdlZC1i
eTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoN
Cj4gKwkJCQkJwqAgaW50IG1vZGVfY2xvY2ssIGludA0KPiBtb2RlX2hkaXNwbGF5LA0KPiArCQkJ
CQnCoCBpbnQgbnVtX2pvaW5lZF9waXBlcywNCj4gKwkJCQkJwqAgZW51bSBpbnRlbF9vdXRwdXRf
Zm9ybWF0DQo+IG91dHB1dF9mb3JtYXQsDQo+ICsJCQkJCcKgIGludCBwaXBlX21heF9icHAsIGlu
dA0KPiBtYXhfbGlua19icHBfeDE2KQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOw0KPiArCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcChjb25uZWN0b3IpOw0KPiArCWludCBkc2Nf
c3JjX21heF9icHAsIGRzY19zaW5rX21heF9icHAsIGRzY19tYXhfYnBwOw0KPiArCWludCB0aHJv
dWdocHV0X21heF9icHBfeDE2Ow0KPiArCWludCBqb2luZXJfbWF4X2JwcDsNCj4gKw0KPiArCWRz
Y19zcmNfbWF4X2JwcCA9IGRzY19zcmNfbWF4X2NvbXByZXNzZWRfYnBwKGludGVsX2RwKTsNCj4g
Kwlqb2luZXJfbWF4X2JwcCA9IGdldF9tYXhfY29tcHJlc3NlZF9icHBfd2l0aF9qb2luZXIoZGlz
cGxheSwNCj4gKwkJCQkJCQnCoMKgwqANCj4gbW9kZV9jbG9jaywNCj4gKwkJCQkJCQnCoMKgwqAN
Cj4gbW9kZV9oZGlzcGxheSwNCj4gKwkJCQkJCQnCoMKgwqANCj4gbnVtX2pvaW5lZF9waXBlcyk7
DQo+ICsJZHNjX3NpbmtfbWF4X2JwcCA9DQo+IGludGVsX2RwX2RzY19zaW5rX21heF9jb21wcmVz
c2VkX2JwcChjb25uZWN0b3IsDQo+ICsJCQkJCQkJCW91dHANCj4gdXRfZm9ybWF0LA0KPiArCQkJ
CQkJCQlwaXBlDQo+IF9tYXhfYnBwIC8gMyk7DQo+ICsJZHNjX21heF9icHAgPSBtaW4oZHNjX3Np
bmtfbWF4X2JwcCwgZHNjX3NyY19tYXhfYnBwKTsNCj4gKwlkc2NfbWF4X2JwcCA9IG1pbihkc2Nf
bWF4X2JwcCwgam9pbmVyX21heF9icHApOw0KPiArDQo+ICsJbWF4X2xpbmtfYnBwX3gxNiA9IG1p
bihtYXhfbGlua19icHBfeDE2LA0KPiBmeHBfcTRfZnJvbV9pbnQoZHNjX21heF9icHApKTsNCj4g
Kw0KPiArCXRocm91Z2hwdXRfbWF4X2JwcF94MTYgPQ0KPiBkc2NfdGhyb3VnaHB1dF9xdWlya19t
YXhfYnBwX3gxNihjb25uZWN0b3IsDQo+ICsJCQkJCQkJCcKgDQo+IG1vZGVfY2xvY2spOw0KPiAr
CWlmICh0aHJvdWdocHV0X21heF9icHBfeDE2IDwgbWF4X2xpbmtfYnBwX3gxNikgew0KPiArCQlt
YXhfbGlua19icHBfeDE2ID0gdGhyb3VnaHB1dF9tYXhfYnBwX3gxNjsNCj4gKw0KPiArCQlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCQnCoMKgwqAgIltDT05ORUNUT1I6JWQ6JXNdIERl
Y3JlYXNpbmcgbGluayBtYXgNCj4gYnBwIHRvICIgRlhQX1E0X0ZNVCAiIGR1ZSB0byBEU0MgdGhy
b3VnaHB1dCBxdWlya1xuIiwNCj4gKwkJCcKgwqDCoCBjb25uZWN0b3ItPmJhc2UuYmFzZS5pZCwg
Y29ubmVjdG9yLQ0KPiA+YmFzZS5uYW1lLA0KPiArCQkJwqDCoMKgIEZYUF9RNF9BUkdTKG1heF9s
aW5rX2JwcF94MTYpKTsNCj4gKwl9DQo+ICsNCj4gKwltYXhfbGlua19icHBfeDE2ID0gYWxpZ25f
bWF4X2NvbXByZXNzZWRfYnBwX3gxNihjb25uZWN0b3IsDQo+IG91dHB1dF9mb3JtYXQsDQo+ICsJ
CQkJCQkJcGlwZV9tYXhfYnBwDQo+ICwgbWF4X2xpbmtfYnBwX3gxNik7DQo+ICsNCj4gKwlyZXR1
cm4gbWF4X2xpbmtfYnBwX3gxNjsNCj4gK30NCj4gKw0KPiDCoC8qDQo+IMKgICogQ2FsY3VsYXRl
IHRoZSBvdXRwdXQgbGluayBtaW4sIG1heCBicHAgdmFsdWVzIGluIGxpbWl0cyBiYXNlZCBvbg0K
PiB0aGUgcGlwZSBicHANCj4gwqAgKiByYW5nZSwgY3J0Y19zdGF0ZSBhbmQgZHNjIG1vZGUuIFJl
dHVybiB0cnVlIG9uIHN1Y2Nlc3MuDQo+IEBAIC0yNjkxLDQzICsyNzMzLDE3IEBADQo+IGludGVs
X2RwX2NvbXB1dGVfY29uZmlnX2xpbmtfYnBwX2xpbWl0cyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
DQo+ICpjb25uZWN0b3IsDQo+IMKgDQo+IMKgCQlsaW1pdHMtPmxpbmsubWluX2JwcF94MTYgPSBm
eHBfcTRfZnJvbV9pbnQobGltaXRzLQ0KPiA+cGlwZS5taW5fYnBwKTsNCj4gwqAJfSBlbHNlIHsN
Cj4gLQkJaW50IGRzY19zcmNfbWF4X2JwcCwgZHNjX3NpbmtfbWF4X2JwcCwgZHNjX21heF9icHA7
DQo+IC0JCWludCB0aHJvdWdocHV0X21heF9icHBfeDE2Ow0KPiAtCQlpbnQgam9pbmVyX21heF9i
cHA7DQo+IMKgCQlsaW1pdHMtPmxpbmsubWluX2JwcF94MTYgPQ0KPiDCoAkJCWNvbXB1dGVfbWlu
X2NvbXByZXNzZWRfYnBwX3gxNihjb25uZWN0b3IsDQo+IGNydGNfc3RhdGUtPm91dHB1dF9mb3Jt
YXQpOw0KPiDCoA0KPiAtCQlkc2Nfc3JjX21heF9icHAgPQ0KPiBkc2Nfc3JjX21heF9jb21wcmVz
c2VkX2JwcChpbnRlbF9kcCk7DQo+IC0JCWpvaW5lcl9tYXhfYnBwID0NCj4gLQkJCWdldF9tYXhf
Y29tcHJlc3NlZF9icHBfd2l0aF9qb2luZXIoZGlzcGxheSwNCj4gLQkJCQkJCQnCoMKgDQo+IGFk
anVzdGVkX21vZGUtPmNydGNfY2xvY2ssDQo+IC0JCQkJCQkJwqDCoA0KPiBhZGp1c3RlZF9tb2Rl
LT5oZGlzcGxheSwNCj4gLQkJCQkJCQnCoMKgDQo+IGludGVsX2NydGNfbnVtX2pvaW5lZF9waXBl
cyhjcnRjX3N0YXRlKSk7DQo+IC0JCWRzY19zaW5rX21heF9icHAgPQ0KPiBpbnRlbF9kcF9kc2Nf
c2lua19tYXhfY29tcHJlc3NlZF9icHAoY29ubmVjdG9yLA0KPiAtDQo+IAkJCQkJCQkJCWNydGNf
c3RhdGUtPm91dHB1dF9mb3JtYXQsDQo+IC0NCj4gCQkJCQkJCQkJbGltaXRzLT5waXBlLm1heF9i
cHAgLyAzKTsNCj4gLQkJZHNjX21heF9icHAgPSBtaW4oZHNjX3NpbmtfbWF4X2JwcCwNCj4gZHNj
X3NyY19tYXhfYnBwKTsNCj4gLQkJZHNjX21heF9icHAgPSBtaW4oZHNjX21heF9icHAsIGpvaW5l
cl9tYXhfYnBwKTsNCj4gLQ0KPiAtCQltYXhfbGlua19icHBfeDE2ID0gbWluKG1heF9saW5rX2Jw
cF94MTYsDQo+IGZ4cF9xNF9mcm9tX2ludChkc2NfbWF4X2JwcCkpOw0KPiAtDQo+IC0JCXRocm91
Z2hwdXRfbWF4X2JwcF94MTYgPQ0KPiAtCQkJZHNjX3Rocm91Z2hwdXRfcXVpcmtfbWF4X2JwcF94
MTYoY29ubmVjdG9yLA0KPiBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrKTsNCj4gLQkJaWYgKHRo
cm91Z2hwdXRfbWF4X2JwcF94MTYgPCBtYXhfbGlua19icHBfeDE2KSB7DQo+IC0JCQltYXhfbGlu
a19icHBfeDE2ID0gdGhyb3VnaHB1dF9tYXhfYnBwX3gxNjsNCj4gLQ0KPiAtCQkJZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLA0KPiAtCQkJCcKgwqDCoCAiW0NSVEM6JWQ6JXNdW0NPTk5FQ1RPUjol
ZDolc10NCj4gRGVjcmVhc2luZyBsaW5rIG1heCBicHAgdG8gIiBGWFBfUTRfRk1UICIgZHVlIHRv
IERTQyB0aHJvdWdocHV0DQo+IHF1aXJrXG4iLA0KPiAtCQkJCcKgwqDCoCBjcnRjLT5iYXNlLmJh
c2UuaWQsIGNydGMtDQo+ID5iYXNlLm5hbWUsDQo+IC0JCQkJwqDCoMKgIGNvbm5lY3Rvci0+YmFz
ZS5iYXNlLmlkLA0KPiBjb25uZWN0b3ItPmJhc2UubmFtZSwNCj4gLQkJCQnCoMKgwqAgRlhQX1E0
X0FSR1MobWF4X2xpbmtfYnBwX3gxNikpOw0KPiAtCQl9DQo+IC0NCj4gwqAJCW1heF9saW5rX2Jw
cF94MTYgPQ0KPiAtCQkJYWxpZ25fbWF4X2NvbXByZXNzZWRfYnBwX3gxNihjb25uZWN0b3IsDQo+
IC0JCQkJCQnCoMKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+b3V0cHV0X2Zvcm1hdCwNCj4gLQkJCQkJ
CcKgwqDCoMKgIGxpbWl0cy0NCj4gPnBpcGUubWF4X2JwcCwNCj4gLQkJCQkJCcKgwqDCoMKgDQo+
IG1heF9saW5rX2JwcF94MTYpOw0KPiArCQkJY29tcHV0ZV9tYXhfY29tcHJlc3NlZF9icHBfeDE2
KGNvbm5lY3RvciwNCj4gKwkJCQkJCcKgwqDCoMKgwqDCoA0KPiBhZGp1c3RlZF9tb2RlLT5jcnRj
X2Nsb2NrLA0KPiArCQkJCQkJwqDCoMKgwqDCoMKgDQo+IGFkanVzdGVkX21vZGUtPmhkaXNwbGF5
LA0KPiArCQkJCQkJwqDCoMKgwqDCoMKgDQo+IGludGVsX2NydGNfbnVtX2pvaW5lZF9waXBlcyhj
cnRjX3N0YXRlKSwNCj4gKwkJCQkJCcKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+b3V0cHV0
X2Zvcm1hdCwNCj4gKwkJCQkJCcKgwqDCoMKgwqDCoCBsaW1pdHMtDQo+ID5waXBlLm1heF9icHAs
DQo+ICsJCQkJCQnCoMKgwqDCoMKgwqANCj4gbWF4X2xpbmtfYnBwX3gxNik7DQo+IMKgCX0NCj4g
wqANCj4gwqAJbGltaXRzLT5saW5rLm1heF9icHBfeDE2ID0gbWF4X2xpbmtfYnBwX3gxNjsNCg0K
