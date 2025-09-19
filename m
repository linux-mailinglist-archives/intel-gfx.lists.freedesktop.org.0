Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EA1B8A8F9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 18:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79D010E24F;
	Fri, 19 Sep 2025 16:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iMur77B4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8242910E24F
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 16:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758299173; x=1789835173;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RuPbG0ljicxfbbum5KUof7EZA+PivmkMDLNw4q1K9zg=;
 b=iMur77B4JaPqYRklHLL5Ci/yGekhH5pZK5EwdUCcZC3gDfaG66T434HX
 sk0B6h/ggtjNL6dgp5hStv0jtTWPLAbRVEeeByQMijwYiKAiVkljVr8OQ
 bStotTk02yz0TkWKm3TMkfnSFLBj9RGLMDELWakhX1RBceT3Io5vArANW
 QdOceIB39c07HQTwJvgBRPMiZpLty6HbJEHyAZd4ClvDDAtRDMxS93r0S
 7oTIJmvpP6wIJjXp0KAA8knri7cwniwSpjJjen+wO8+UbQXHat/BAErXb
 4gaitr4QoTHeycHTBuGSIdQLppkh3nIR6fK98qH+7NC7VtQG6eIRchpKV g==;
X-CSE-ConnectionGUID: UQP6Zb7/TJqoHqobEnr5YQ==
X-CSE-MsgGUID: g3WIGYYqSI2tvZYe/nkMDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="86086087"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="86086087"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 09:26:13 -0700
X-CSE-ConnectionGUID: QR58H2uETZCdA4F2/OiLEA==
X-CSE-MsgGUID: roVBvYcSSEegG+TeKp5jwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="181145910"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 09:26:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 09:26:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 09:26:12 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 09:26:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OpDeybapnEczybvEoJd+Hkc3HLn/T8/867Yz423mf27zWj9rs65Qgxy0ePw99ZedHGAgHxpEzNtJIp1SQAsgf1Y6wizXIPkEEzAq6b/mTzBvI6bNWX+Vc6Px102lolGKCEk/rBdC8rw58AgosjgX7p953GkXiFDucmOVNrH2OzSKJfdRDs+hceYxkLGmLxTy+F+HJarRA5ew1FFzYZqJbuLvXZlU1CwFExYfeiMI/YXTrXMW0OxQThGDxWubvReCCjwi0eeovpXXXsWNfhuKzAiVyLchnisDqBttlfwEKLmtm6wdXrxN7/NsUCO1UrkIIPe1fj+rQJxCLMVJInqcIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RuPbG0ljicxfbbum5KUof7EZA+PivmkMDLNw4q1K9zg=;
 b=a4SP18RZMUsXcfDPhrYrtrmNPw9Z92R77pqyqdy30yhkLgECAeNHAYJZfrKKMnabuP+VMWn65n5QLqXAua9c3r9btD1tRizjptbnti5cqWo/WsIrMqptnK0da/0PbpjxyNcF5leRFqKAUqQJf6ex/U31V3NZdlRIF62AHfqxd5pp9wCv99B3EQUL9RMn8kaKo0ljYmeXFwjoDfqtnecMgNp5jfQi7tdMtf/taSRQJMJWeyEDbzP61DqYkYkgRvlxWFZ7hqfsekBxbmea59HOFcm146ac3o1pLeS45vaoXacWwccMHVY4dvRSvkyLKFcPHy3N/g529CL3uAbjBc9Faw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA1PR11MB6444.namprd11.prod.outlook.com (2603:10b6:208:3a7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 16:26:03 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 16:26:03 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 0/3] Add WCL as subplatform from PTL
Thread-Topic: [PATCH 0/3] Add WCL as subplatform from PTL
Thread-Index: AQHcI153FPqSsEZ+eE2FUFdRo2eqRbSURd6AgAZ29WA=
Date: Fri, 19 Sep 2025 16:26:02 +0000
Message-ID: <IA1PR11MB6266F5F5D29D1EDAEED0F4C9E211A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <175794363121.1613.6250224933429429857@intel.com>
In-Reply-To: <175794363121.1613.6250224933429429857@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA1PR11MB6444:EE_
x-ms-office365-filtering-correlation-id: 3e8cdc6c-0601-4e9d-5957-08ddf79939f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?M2UzV1BhUXQ5blk1TVViSUhUQjNJYVRXKzhaWTVHbEdKNkgwR0dGUkRHYjlH?=
 =?utf-8?B?dkFFSDBKbGJkWFpxd3RPOFZNR0JOZEdEQzJjRUN3ZiszY2lPRXZZRHl6blg3?=
 =?utf-8?B?blVrTlVHM2lZWFNobEhCMm03T3BOQytzaS9SSGNaTVJEZ2pMZ0J2aHk2TUxj?=
 =?utf-8?B?bTRGcmVSSG1ZNVJyMWhrSHVaVVhCd28xdm54dlBHQ21qZDlSaDF6amZFSW9i?=
 =?utf-8?B?dFgxYkUvS0VTZkJLOHgvZCtQd2JzZExrLzYyZTdhMEhmRkJrdm01bmFXWHYr?=
 =?utf-8?B?dmEwbnN0RHhiOTA4UkdyZkJ5cXZJUjAzT2lwWG1reGdGQU03dkFNaFNpajRU?=
 =?utf-8?B?SkNOdkhDQlFRRlQzb2x4cmtqeDIveGYyR2xnNjZuNVVKVFlIMEdrM0lQbnN5?=
 =?utf-8?B?Y2JzVFdhS1VnZXE4NHRTcWhCd0N4SzZXZ21uOUJSVUZSMzY3cmJnRHVYU1Bu?=
 =?utf-8?B?U3Yxd2hPNkt5bmF5WWJRRm5uSTlGYkhhRDlJMU1jcEl5bjdYTEJKNUJTNlpS?=
 =?utf-8?B?Uzlhbm1scFFNS1hLRG1reXJzWG93WXFGdjg2TVIrNmhrRGJLR1B4UkFrZFlQ?=
 =?utf-8?B?OHJ5S0tOOUE3dmFsYmFZNEpVdlRpejRZRkVNQmlkWW1vL1pUZUJiZjlPM0JN?=
 =?utf-8?B?bmNKa0pCVHgwYWRmWFRyWW1jd0ZDbVhIMEh2UndEQlZQRWdMZGphYWxUaEQv?=
 =?utf-8?B?cFZVcVdBajZqUlE2THVTM1dEalBKbk55dFlmTXRSYzZ2cC95LzcvRGxUaWhC?=
 =?utf-8?B?SGlVQ2cxY2NXdXJVQTYzWlc5ZEpKTlFhNkNRdHRaSXhCaXE1ZExxUXF6L1la?=
 =?utf-8?B?WEpZeG84eUkxN3ZqSEMyZ1QzZmdRb1BGL240dnJERjA0ME02ekliUitPb29a?=
 =?utf-8?B?T25iTUJLN0NheTFrcVZ6eWxDdnlzeUpmd1E3U3dFM1l4VUZQMnQzWFdJazVl?=
 =?utf-8?B?Z1N4NzN1Snd5Yjg0WCtXYXVzelNsRFNBaVlEeVI4bTRVM2dsbENmZzZYdCtt?=
 =?utf-8?B?TWRET09PVVF6VWNkVDBVMTFtbmY5NlJkNXdtZm1Yb3ZtS0NSNUxuRDB2TVN1?=
 =?utf-8?B?NzJYdFIwS296R0lVeE5DNlpwcXRZQ3NTL29TaEQyS0VKVHJJK2Nxb3B4NU1V?=
 =?utf-8?B?bWpTMTdwOEM0SnlrUXdTcW11UDZROThHejJGYUxHbmdPbkhUNmZLbmZZcTNy?=
 =?utf-8?B?Sm44TTBiZGc3SGtGS0xraWxxWjlRc1ZPalVCZmJrUjI3K1djemo2UmJObVRi?=
 =?utf-8?B?dkNNQmMxaWQzdVAxUHRucThFcm9sSkhjSUNpWjJpV3hmanFQMDZOL2JkZEJO?=
 =?utf-8?B?NFYyNk85d1l3Vk9QVHV6Z1REeGJ4YklFRS9GS3pJeUJrWHFrcUdwdzk2blZH?=
 =?utf-8?B?a1NsckFlTFFWSThaRUdva3UzSUs4ODZ3cXFnQmp5QWJwUHBtOHVIYnNscWtw?=
 =?utf-8?B?a3d4LytRd3g4TmpYNGs0L2VwSmNrS3JZcUhqWVF1M3R1V3pVUGRwd3Vma01S?=
 =?utf-8?B?WmlJVTNHQVNxdW1La1BXajZXZzEyVDUwMm41ZEhUakFHZ1p6dUdUbkZSQjRl?=
 =?utf-8?B?ek4vdHNrS2hMdG55U3QzM00vck5FR0NyT0Q2TXljMTk4MDFzbS9Wa3dTejNv?=
 =?utf-8?B?b2lwcElVeXhyckZBQVc5UktaWSt2RDA4UUhJcXJZblE0WWN4UWIza29VUytr?=
 =?utf-8?B?cjNhUUpvN0pweWZmZURUK3BJOTFIWFc0MEgzRjE0V2t5WW4zc3hiWjNTbWZz?=
 =?utf-8?B?d3NZZDdiWmM5RXQ0VmdVdGF3K01FdlhCUXUxM2kxUGFYOSs0aElQd05YWDg3?=
 =?utf-8?B?Q2FRRWVzdXdKM3hTSFV3aDNWY1dYNzI4dTlJSDVYYi9OYkJCN3R2Q3FVVmho?=
 =?utf-8?B?TERzWENNZzFCVjVYS1E1SXhxUXk4MktyZ0FYbFREQ29tVlQ3U1VsYitJWFRE?=
 =?utf-8?Q?gviT7qdE79w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cUNRbWdsSzJTTVU2L3JicEhmdWdONXJlOStDNFBVVnIrT1VFbGdMT2twMVNm?=
 =?utf-8?B?U0JOeFJRQXpZenR1L0xKTGFjWlFWWVRRV3c1K2o3WmVDQnoveCt2SEhSMWtV?=
 =?utf-8?B?MHJXaDhTN3NxM1VQUWNOYWdZSEVaWVNuckRVODZHbGpEbDJ4ekN2R1JxT2Jz?=
 =?utf-8?B?S2R0VEEvZGZ3ZDVHeU0ybm5ucXppQnFIWUV4MTF4MFZ0MG5RZVE4Y2Nod3pk?=
 =?utf-8?B?TUpaQ00rZ1AwdzQ1RW5VVGltek9QZTZPaVUyTEJpamw1RTNkSGNnS0pnaDJo?=
 =?utf-8?B?K0dNejRkSUFUN0tUK1g3d1p1TC9hekVHV1VGZUczSXJKUUdFTDNSNWpDOFZ3?=
 =?utf-8?B?VnVXMHBaZXlJS0ZsZ2F6MGx5NHg0Ulk4cGZzYnZsS1lmdUh3MVZhNGxxRjRG?=
 =?utf-8?B?QzBINHFDWm83QytYWXU5UDZqU1paZlNTWHJZQmlndHorSTVDbExLSkJaVzFp?=
 =?utf-8?B?ZEJNYWFiWTVIdjJQT1JrNUZPREE5MHUzSnVqaFpkS3JEVjV5UXJHeUc4cGZa?=
 =?utf-8?B?WWNzby9VTjN3V0k2YkN6MTI3NlBHbitBUVZxeXp0VzU4NXpsbndOOU9lTlZW?=
 =?utf-8?B?V0RCVHlqSUdUVVJGN2dZOWwwd3V5bXRHMDMyR0pBMlBOY25GY1VxOHQxalBJ?=
 =?utf-8?B?UTVYOTBEb1J2TFJhaUpiL2pvZzY0bEhkYUxtV09JeURHTTMyWFJ0YWppTnla?=
 =?utf-8?B?R1J2dW5vWFU4bUFlRi9FNjJMMk83Z1F2Y0QwQ2JYYWhRQm02TzBlOFg1ZFJ2?=
 =?utf-8?B?Q2FYQTRmTHV0Qk9ha0NSa2o2YTlKb0pyL01tQ3Y1eldOak5jQzR6RmRpSkJk?=
 =?utf-8?B?YjhZN1R5RjFtUUhMalJRZkhRS0FYdFRHM3BiUUFybitkb3Qzb0hVTHJaSGNN?=
 =?utf-8?B?Tm41dkwvM01QaFFHa1A1dkFJY1dIS1duSDAvVXVSQjd2ZFZjQnlsY2U3aVI5?=
 =?utf-8?B?N2V2NWhZUU1JSUM1SUpmZDg1akRmQ2dSUVY3MmdBWDVkcC9QRmZvZXd5aWhG?=
 =?utf-8?B?UWNjOGtKTEhHVTBHY0k4T3kzT0VGcWVPUGNjTSt4Q09TVmVQaVV3N0dUSjNP?=
 =?utf-8?B?YUwyL0RYU3FnTTlGeFBGWnF1eGYwbjdwclAxdTdaazFGbElkd3V6SXU3c05u?=
 =?utf-8?B?cWV2T3NIOEpFQ0dUakIxanlzTzlnTmNCQlVENXIyWnVMbW9Na2ZlTWVJZ3Q2?=
 =?utf-8?B?RlBnMjVYSkRQWmV5czNObUFLc0QrRWY2M05BMFY2REpkcDlrakZmcUJyQ1dt?=
 =?utf-8?B?b1JCQlhtVGhzbWl5OURxNHd1SVpFMXNlVGg5Y0JJSlNMM3VjenlMTmpOamc1?=
 =?utf-8?B?VWNYdlVsU2lVWHZpb1Q3SjFEVklMMFdvZEl4WjdHOGJxYjBqSFRJb1ZCa3o0?=
 =?utf-8?B?UXNuL25PZ2RqQ3dVdUNmYlVXSmZUMFBQUEV1c3FDQVBvQXZtSUswVkFkSVpM?=
 =?utf-8?B?bXRFbGF0bFlqTzJPTGVGU0ZKckpMYndXWDNRZTN1OWg0citDWGxjclhjeml3?=
 =?utf-8?B?WnEyUXNCZmJ6d28wOEVTY0s4bWxDRFZIRTl3NGdNOFJ6TTc4TmtCdWExRlN4?=
 =?utf-8?B?WURzZXRlYnVIcVhJMi9pcytsNmtrNEU5bDlRQXpMbExRaUdoYVZrSmdJS01x?=
 =?utf-8?B?dnVFTHViYm5Kd1krQjBsVFVRWFhaZy8zc3p0ZkdHaThuaUZxWEh6dXBNdktI?=
 =?utf-8?B?RXZuSHo0ZXQ5MkJRcSsxQzU1Y2cySE1xUFVWbW54S0lzU3NzUEl4eVF5V0l1?=
 =?utf-8?B?Q3Rxb2tSTkJsNlRidmpmM3N4UGpIT0gxUEJsZ05vdDVzUm1zMVdlVmt6dDVi?=
 =?utf-8?B?MkdtZlY0SG4xSGRjWkJkUlM3eXVjbmtybVhkMi9vUHJWM0k5TGNJSjdqWHdW?=
 =?utf-8?B?Q25yUkRuWlhnVjhubEgxeDVVNmhrS2VZaWpObHBlbUIvWTYwQUg0WVp6OTJt?=
 =?utf-8?B?RUFaMFVDT2JFZ3FtVTRKeHJVckV6RVZGaTVCR3hPK0V5L3UzRTVmZWZxTmJ3?=
 =?utf-8?B?Wm5PV2pzZVFqQnNGYnhueHNDK0hyeUc3WUhvQzB5WHhYcy9xVVFkWXJ6YWdK?=
 =?utf-8?B?dFNwa1l0bXhQS3QzQjJ2TUNoYk5td2NVZURDTVU0b3Axb2JBMUxJdVpBVTVm?=
 =?utf-8?B?NVROMVN4MFl6cGlIUkp2ZzJLWFBhZXN1czdDOW1JSmhlVlQ2eHVYOGlqRlU2?=
 =?utf-8?B?dVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8cdc6c-0601-4e9d-5957-08ddf79939f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 16:26:03.0376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n/wX+NUz6TYI56W5OxkoRcS7f3wcFqsc7pt3WQX3F8ek3fKeyIOj5EWcAD1igep19SaE6pYfN9O1V/EOtl1ugCz0LQBkVBmxZUT/z6raTz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6444
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
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIFNlcHRlbWJlciAxNSwg
MjAyNSA3OjExIFBNDQo+IFRvOiBCaGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3YXIuYmhh
ZGFuZUBpbnRlbC5jb20+OyBOYXV0aXlhbCwNCj4gQW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBp
bnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBBdHdvb2Qs
IE1hdHRoZXcgUyA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+OyBCaGFkYW5lLA0KPiBEbnlh
bmVzaHdhciA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggMC8zXSBBZGQgV0NMIGFzIHN1YnBsYXRmb3JtIGZyb20gUFRMDQo+IA0KPiBRdW90aW5n
IERueWFuZXNod2FyIEJoYWRhbmUgKDIwMjUtMDktMTEgMTc6NTU6MzktMDM6MDApDQo+ID4tIEFk
ZCBXQ0wgYXMgc3VicGxhdGZvcm0gYW5kIHVwZGF0ZSB0aGUgZGVmaW5pdGlvbiBzdHJ1Y3QuDQo+
ID4tIFVwZGF0ZSBjb25kaXRpb24gcmVxdWlyZWQgdG8gZGlzdGluZ3Vpc2ggV0NMIEMxMCBQSFkg
c2VsZWN0aW9uIG9uDQo+ID5wb3J0IEIuDQo+IA0KPiBJIGhhdmUgYWRkZWQgY29tbWVudHMgaW4g
aW5kaXZpZHVhbCBwYXRjaGVzLiBNb3JlIGdlbmVyYWwgY29tbWVudHMNCj4gYmVsb3c6DQo+IA0K
PiAtIFRoZSB0aXRsZSBvZiB0aGUgc2VyaWVzIGlzIGEgYml0IGlubmFjdXJhdGUgYXMgaXQganVz
dCByZWZlcnMgdG8gdGhlDQo+ICAgcHJlbGltaWFyeSB3b3JrIGZvciB0aGUgZmluYWwgb2JqZWN0
aXZlIG9mIHRoZSBzZXJpZXMuIEkgd291bGQgc2ltcGx5DQo+ICAgcmUtdXNlIHRoZSBvcmlnaW5h
bCBwYXRjaCdzIHN1YmplY3QgYmVjYXVzZSAoaSkgaXQgd291bGQgaGVscCBwZW9wbGUNCj4gICBz
ZWUgdGhpcyBzZXJpZXMgYXMgYSBuZXh0IHZlcnNpb24gKGNvbnNpZGVyaW5nIHRoYXQgeW91IHVz
ZWQgdjIpIG9mDQo+ICAgdGhlIG9yaWdpbmFsbHkgc2luZ2xlLXBhdGNoIHNlcmllczsgYW5kIChp
aSkgaXQgaXMgbW9yZSBhY2N1cmF0ZQ0KPiAgIHJlZ2FyaW5nIHRoZSBmaW5hbCBvYmplY3RpdmUg
b2YgdGhpcyBzZXQgb2YgY2hhbmdlcy4NCj4gDQpUaGFua3MgR3VzdGF2bywgSSBoYXZlIHNlbnQg
bmV3IHZlcnNpb24gdG8gb3JpZ2luYWwgcGF0Y2guIA0KDQpHZng6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU0MjIwLw0KWGU6ICBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1NDIzMy8NCg0KPiAtIFRoaXMgc2VyaWVzIHNob3VsZCBh
bHNvIGJlIHNlbnQgdG8gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnLA0KPiAgIHNpbmNl
IHdlIGFyZSB0b3VjaGluZyBzdHVmZiByZWxhdGVkIHRvIGhhcmR3YXJlIGVuYWJsZWQgaW4gdGhl
IHhlDQo+ICAgZHJpdmVyLg0KPiANCj4gLS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPg0KPiA+
RG55YW5lc2h3YXIgQmhhZGFuZSAoMyk6DQo+ID4gIGRybS9wY2lkczogU3BsaXQgUFRMIHBjaWlk
cyBncm91cCB0byBtYWtlIHdjbCBzdWJwbGF0Zm9ybQ0KPiA+ICBkcm0vaTkxNS9kaXNwbGF5OiBB
ZGQgZGVmaW5pdGlvbiBmb3Igd2NsIGFzIHN1YnBsYXRmb3JtDQo+ID4gIGRybS9pOTE1L3hlMzog
UmVzdHJpY3QgUFRMIGludGVsX2VuY29kZXJfaXNfYzEwcGh5KCkgdG8gb25seSBQSFkgQQ0KPiA+
DQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgICAgICAg
IHwgMTEgKysrKy0tLS0tLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGV2aWNlLmMgfCAxMyArKysrKysrKysrKysrDQo+ID4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHwgIDQgKysrLQ0KPiA+IGRyaXZl
cnMvZ3B1L2RybS94ZS94ZV9wY2kuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsNCj4g
PiBpbmNsdWRlL2RybS9pbnRlbC9wY2lpZHMuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
NCArKystDQo+ID4gNSBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4tLQ0KPiA+Mi41MS4wDQo+ID4NCg==
