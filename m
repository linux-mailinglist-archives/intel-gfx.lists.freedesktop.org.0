Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BBCA3A157
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 16:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617FC10E6EE;
	Tue, 18 Feb 2025 15:34:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0aYc5T0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6657610E3EA;
 Tue, 18 Feb 2025 15:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739892861; x=1771428861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9q4Cr27FBsCb5hLzNCTwG7IsI0C8Eom8ninG4UcT+LI=;
 b=g0aYc5T0689/z1ta5nTk+mNqdBcppXE8hP9TI0E6bPBOkaeKccd/jxYB
 05OfGfb7bmbqxqHD9achommGN4EQmqxKcvBhMV3uoYeXKntjia7veHwt4
 yan52Y03ClgAsgfsvvgbjOd3JxPlxkBoRJxGHdtaGvaxELGAO6DNDqO7F
 Ffw5dfMANRZEV7iiET8CAKS/8ucvW1rxSiDZKDVyms/kLBfPHBK9EEq6V
 BIeZYeWqaVyc9mEmcZqg+IQptqujV2R6A4si/6/mMWK/ju21uTfh9CPd8
 jBFn+SwW/iyEn3evzNqL3Tq4YyLNAMv5/IWmMnHQXWL7Zgh1kg1HXtQ2j Q==;
X-CSE-ConnectionGUID: IVPl5rkhTYu4Vx/aIbT+yw==
X-CSE-MsgGUID: +YR0m4ZGTP2apWGcafDLCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39829704"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39829704"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 07:34:20 -0800
X-CSE-ConnectionGUID: ELUM9pajTleGgOYXBsoczw==
X-CSE-MsgGUID: 0H8NYBMZQQiyg9pLo8DpMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="145336538"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Feb 2025 07:34:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 18 Feb 2025 07:34:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Feb 2025 07:34:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Feb 2025 07:34:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wjkdng6cpj1IUcMug4eytcT9A9QRhnTkYP1tdas322OhvCFfuN3REVgLmO6QVj2L7rN6e3Tp6pfYPmDtwG/D4eC0l100KfLbjgAolS1vCXvgrZnX4HQeI4qlW0UjLX2et+Ggqf2ASZE7nhkQLChVUzdO7JAJeFBo3KXm6ktBqJWURyGHEFxlylFSjAYpFfOGrSx+I2D6cnnrcw8Okwi4Gq6RRnGQ7Nzz6PbetDP3MuCyj4/caoK6qSdhpMCXHVRTnQB4+77Nrq1HSoeIlN0M2v/w1ddNKaeGcQ8cqwt+iYbZlQV/ZvSHyrn/qZIr5oHdoRSd669S2rVyMHJThesoEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9q4Cr27FBsCb5hLzNCTwG7IsI0C8Eom8ninG4UcT+LI=;
 b=SpJVonGcOCTbsXaxI33bDbuBZa+jP76PKywMq2GEN8yhXwETMi7m4xIyEyCPiFcI544rDGhAjJlylrg9JxNFZoF6VR0XNGaYZkNQW7XZCM2+mhFSHTcLwDam2UAUcLMRV78b/MRO3MNkRkkqLd6cTDn5ZASgxEzZhMYdBauDyHrG2JVJ1I3tXVUYxEmkBVe1fSWZCZ7DNpkMMRFqyMxwsBVwpW7bsVwSxursMYnwpRV0peVwyb6W7IJK93uAh5feoZT5/y6ZWeKKBAAX4bH6UEZ0ANmDgptzGWkcaneFvW069ZnVrdMBn1yfAet+eeimuVH+ygcz4yzFNK/b+ml7AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by DM3PR11MB8734.namprd11.prod.outlook.com (2603:10b6:8:1af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Tue, 18 Feb
 2025 15:34:14 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8422.015; Tue, 18 Feb 2025
 15:34:14 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
Thread-Topic: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
Thread-Index: AQHbgaDIO0hZ/L7bJ0C5M7r0UATiKrNM+4AAgAAo1ACAAAu2gIAAAdGA
Date: Tue, 18 Feb 2025 15:34:14 +0000
Message-ID: <f37c9a532c6dd18ffae8264305d6b1e3b63f2155.camel@intel.com>
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
 <878qq3o36t.fsf@intel.com> <Z7SdGtcVfduRSkNs@intel.com>
 <Z7Sm7Z1pfz0hYGD2@intel.com>
In-Reply-To: <Z7Sm7Z1pfz0hYGD2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.54.3 (3.54.3-1.fc41) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7SPRMB0046:EE_|DM3PR11MB8734:EE_
x-ms-office365-filtering-correlation-id: f81bd63f-7710-4989-8fec-08dd5031b2e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VW16WWpWR043NFBmZlFtT2JvQy9GOHM1RkNObytLZE9UdTBoT21oM3lTbmpz?=
 =?utf-8?B?ZU1JNUxIZitWTWo1ck5yMEloNDNjRDQwQXV0K0gwTkhobnBaWWdPMGNzaDNv?=
 =?utf-8?B?R1NBeUlNMDd4Qmd6d25GNXBoc0pyb05NbEZ6bDNIbEYxbzBNQk1Zd3NOaHNw?=
 =?utf-8?B?WTM1VUFYMzJ3ZzhkbzBwY2QyeWVITC9xaFdzUG85QXZBZGlFcVVsVzlPN2tT?=
 =?utf-8?B?UjlHbVlNckl3eG5ac05jdVp4emFjY3B2cDJnWXZpRmdKeldSek44b2lKSzNv?=
 =?utf-8?B?VVg3SkFmNGFCYnBRRlI0cFdvN2ZuYUtZOGtNVzN2amJBNERETGJoZXdXeHpY?=
 =?utf-8?B?MnB6T0tITmc3WmFuL0ErUmRBeVB6RVNja0xNcG51OUhXVHJkc2RDY1ZBM0dv?=
 =?utf-8?B?THhNYmV1S1hYOFNzVUI5SmRXN2ZrYTJrOFo3dy9BaWE1MjEvMzZIZlZ0bFVW?=
 =?utf-8?B?NjRIdDdMYjd5V0pHL0hMc1ZhMFJvamhQNjdWZmpkSUJBTlZ5dEp0bmN5Unlx?=
 =?utf-8?B?UytyOHNNUnBjSmg5MFQzSDJCQm0rNldXc01PUnloVVFlQzVFSzVVUUdsbTVT?=
 =?utf-8?B?OTJVanpNSnUyLy8rSTBBUVh6L0xDbng0MWhYd0dlaDRjWXhJUGR3OHQzRkpO?=
 =?utf-8?B?cHdPTWJsR1F1SFJ3MDcwV21Lb1VzTVk5d21FckxRNE9zdUxlRkhWUk1hbStj?=
 =?utf-8?B?TFp1MExCOE1mN0UxbU5jOWZGY2NWdHNKUmdPNmJwYzk1K2FYczU1b1dDRXVB?=
 =?utf-8?B?U3pIK0ZpTSs2TlZRTVNaN3M3WGpYeVRtWkpUcW92a0txRzBKRHA3ckJhTm5L?=
 =?utf-8?B?Y2dKZ1FEQzFjc0U5MnJTblFOd1RyMDB1V3dQMFVTRGhqVFAxOFRaQXVWczdv?=
 =?utf-8?B?ZkRlZDFKV0cvQ2tkbGRzNFFIQ2pGK3JNUVhOaHpKREJhYmFnR2VlMkVTWmYy?=
 =?utf-8?B?aGl6U1ZCQ0xyRXQ2OGs5RUdyKzBhL0JTL2NCb2pGUXZhUEowLzFYWTY4T00y?=
 =?utf-8?B?WEFHaFI4bWxtVHorOWQ3aHVLSXZaOHZNNmlxbWVYUFBQTDlKRFV2ckxVNk5E?=
 =?utf-8?B?cHBqd3lpYm1vVHRrc29RTGh5Y2xhNUxwcDQ4cTgveTA3U2dpZFFtK3Y2aUh2?=
 =?utf-8?B?ekplcmFDOU5ZYXlyYWw2QVFPdk1VRXZuTTA5NFZVT1QyY3UrQWQ2KzVBZThw?=
 =?utf-8?B?aTJ3c3FuTGR2NGJtYUhGalY2REYydWVXMjNpNTdSYm85cHFaSS91amt6L3h5?=
 =?utf-8?B?TUwzMUdZOWFBaHcwTWxOZ0xvenV1ZjR1VHY3a05neXE1Ym9iNGNDQUN1RjYy?=
 =?utf-8?B?b3d5dlRhTTBuaEVWTzhVR3BmOEt5ZFVEb3N1QjFGak4zNjRNQkVNbU00c0gz?=
 =?utf-8?B?Y0tSY2J6L3dNSFlhK3k0Rkprd0dvSEsyekNibGNTZWRkL1Y3N2xsVStrd2VJ?=
 =?utf-8?B?OUdId0dyZ1pRSDRSK1p3RitJTmN6Q0NtUEM1RXl0ZVVLMEZRNjRJMmFlUXFU?=
 =?utf-8?B?NTJoK2ZFVHA2ZVgrdTM4RGZPdFVUQi9qOVVGdXNVL3BEVCtaK1BCNWcxSWl2?=
 =?utf-8?B?bnpJVXllcEJNWVg0allhRjlKcHZ6UTJZNitnRldwNVgwMnp0cjc1Q3AxV1h5?=
 =?utf-8?B?LzJhbjNmT1BRUkMzd25mTWdUb050N2FzeFQyQUFva2tJTVN2UnZ6S2RMak00?=
 =?utf-8?B?dllMa0d3RXBkcFN3Y2xjTDh3UmhTRGdEbVJSMUtLd2ZJMzN3dDVLZGRSRW13?=
 =?utf-8?B?Q0I3Z2NMSkZDUGlxcXpFVnVKN0JsNlhUdFhCZWZMU3Z0dDVaL1UwRG5DOVVx?=
 =?utf-8?B?T21sVmpCaE9EQ0JIZEJqZ0ZiYm44T21kLzJjN3RmTyt4dWQ5T0thMTM5U0pJ?=
 =?utf-8?B?Y3IyVHUxckVIRFdqN2Z6Y1NaVmU2cWwrMERjU0hJanFNNEZ5ZkFiVThhZFAz?=
 =?utf-8?Q?QALDOXLcP3CK1M6jWPE9zF8rav84WtUU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGhnVGlDQjByOFhndHpKSWd3dXVoNnRxWVhFZGQrYWxSU2pmZCtJYVhuK1py?=
 =?utf-8?B?cVhFZXdjNTJRUjZaU3JGZXdSQkpXdHdrcEdISUFWQ3dxRGp4dlZRRTJPK2Nn?=
 =?utf-8?B?akpLYW9tZVd1bUpNSlhSUE1FQUhLeWQvL3NHLzgxbmxaNlZuSXE5OUJCZVlo?=
 =?utf-8?B?UWdQREI2blNKTWpPZ2JHb0FjUmFhYWcyVjcyN29jb3pTS2FxT0grWEFaU2I1?=
 =?utf-8?B?OHI3dVJQRlhaV3FjcHZ6YjRRQ2ZMZkVlblRWRFdaWndnSWNDd083dzhpUVJK?=
 =?utf-8?B?UHV2ano4cnhCUzQ0ZUNOR0s5VldFQy9ieTBXYjFzck1hLzBGajJIeEFERlRy?=
 =?utf-8?B?YzJtV044V0tXNWd6Q3MzRTJaTjR3WXdkYjFMaEdkdjNQNDFjNDJIaGR5bEVQ?=
 =?utf-8?B?MkVkUXFPK0k5Q2Y0V2Y4bjhubHVRMmpwdUNMVTU1dmkzd1Izc3gwdXFGOEdo?=
 =?utf-8?B?bFZkUGo4RXBWb3p2bCtCNk1GcFp5c2lNRUVhTXIyeUlTRENrcnRSNnNZQlpQ?=
 =?utf-8?B?eC93ZDBQQ2NZNUlKVmNwem9Zdnl3bVlCMDQzQnlDQi9xcnpwdHY2N0trQmR6?=
 =?utf-8?B?V2oxWlgxbk5vVVlaK21zYzNOQThzaWh3dklNZThzaStHc2lPNURsNGl0d3hq?=
 =?utf-8?B?ZHdFZy9KL3Vwb2xMNk9YVUlVa3lML2x0cUtzWkNuYW1JbkN0d3FOT2hjVUxi?=
 =?utf-8?B?TnFWMHRFdU54UU1COGxkSnF5VHk0QTBKZUFSL1ZHWjFMOHdaQTFya0x1WHIw?=
 =?utf-8?B?MG00bm1MMnppSVB4N0pkYWhXK3RNZENtcTc3VDhkRFpuMnd6MmwvSkpZbllS?=
 =?utf-8?B?Q25jQ0lwOUVOTXErNUtNK0VUQTNiNG1oNVlHWG1kZFp3TVFvcDJibGVZMzEv?=
 =?utf-8?B?dXNGYUcwV0w5QVpLWUtYS1lpTi9NUngvS0dQMXFHc0N4VFhwUU85MUVaRE1E?=
 =?utf-8?B?NHM2UW1SMTVyNm0zTHcrSVlzMklPMDlFczV1Z2pOV05nVHdmZ0ZxNFhSaUlV?=
 =?utf-8?B?ZVNGUCtQSkJSNnh2K01jQ0xzV2xwczMyV1VWQm9mekdqLzhvNjFoL0JZVUor?=
 =?utf-8?B?czdiYVRnZU1UUDdMenBnOU9iVnpQc05kUFZENnpjR1lGd3BGYUVnVGdZQ1Fl?=
 =?utf-8?B?aVZhVHZGVmtnSlJKbEpNMy9lMEc2aXBrc1dORW4xZnZoUzJKMDJXdVNqT3hL?=
 =?utf-8?B?WjJGd0JyWHp1b1RHZUJaSndKeHpLSTVUOU9TNHZKWGJhV3VUU0MxVlB5UzhJ?=
 =?utf-8?B?c0J1MzJDT1Q4UXo0TVByZXlNUHlEcVVaQkwxSS9XSG5WWDhjY0tjZGxGWUdy?=
 =?utf-8?B?ZnF4ait1MGszMnJrTWVzNkxrYk1iWlhZUU5kMSsrWXdHWlJyNnVvdkNvUThL?=
 =?utf-8?B?dXNpc0syOGhGODFaVUxNWUUzR2c0TDNOYWV6UHZoQzdkNjVqbUhvRlJieERK?=
 =?utf-8?B?NnVNMmMya3NwRU1oalNoLzBiZ3ZsS2pEaGhjWDBPWXN5eFJzVkRSS0ZkUUNu?=
 =?utf-8?B?dE5NTDUrMjAyeGREdWEybUVNbklrMWo1NzNUMWVRS2kzUGR2U1JmSFJYU0Jh?=
 =?utf-8?B?RSs3QnMzeDc1cjRtOTdnT3pGNXcxVHBDUGJ5ZlhHcjVob3VZTVNDUGFOSkhs?=
 =?utf-8?B?NjlJY0hCNWx1ekl0OHBNS1BRNFRyM1QzbFNXTUZJRENoelFWbWpwa2hHVlVZ?=
 =?utf-8?B?WE1wM01YTmNyaFZ3MmRSVHAvUmkwZU9GcytCWFM1NzZ2Vmc2V1VCbzRnTm1F?=
 =?utf-8?B?bXZIUjhUbmF2YmNCT0NReU95Um9ZOVV2WVhzVkpXcmFzUkdaaldaTWwzUS9k?=
 =?utf-8?B?bDhWdksrdjZuZ1IwUi9sUkdydTFac2hFQVROa3V6Q2VtL21ScW1pNUtzUDV6?=
 =?utf-8?B?Y2dWWG03TGtoYXdaeUloN0pjTG5EYWVuT1hzWVBNNndKRm1hTERjTnc2Z0di?=
 =?utf-8?B?V3I2OWU2NEZrdFhLUXpOMkE1VzRjQjBpMm9yK25kdlF5dlhaS0FzcmFXMVRW?=
 =?utf-8?B?OW16OUtNdm5kdHpvd2tXWmpoUjFvR25tUWdNMnpMN3FIaVh2Sm9NVEhzbnFk?=
 =?utf-8?B?QUQvQ2FiSzdOQTBpbk14ME9GaGlYQ0ZZKzB5M3hJcWxSYkk4cS9ubUFsZitM?=
 =?utf-8?B?cTY0RWhKdmxsazVpTGtzNjZKODBGSTJlZlFVU1gvWnI0OGlrMzgyMWo1K1Nx?=
 =?utf-8?B?YUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A0D8CD0474CB5D4294BA825643D9B72C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f81bd63f-7710-4989-8fec-08dd5031b2e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2025 15:34:14.0652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AYlZGTilhLuVzaOFCzifDZ1osEtPbpiSWIpy35zcJHddEMUvKQDzZ7pEsVUYfcC/JFP0M8ubM/D+qFvDNvZEOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8734
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDE3OjI3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRmViIDE4LCAyMDI1IGF0IDA5OjQ1OjQ2QU0gLTA1MDAsIFJvZHJpZ28gVml2
aSB3cm90ZToNCj4gPiBPbiBUdWUsIEZlYiAxOCwgMjAyNSBhdCAwMjoxOTozOFBNICswMjAwLCBK
YW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IE9uIE1vbiwgMTcgRmViIDIwMjUsIFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiA+IFRoZSBvbmx5IHVzYWdl
IG9mIHRoZSAiUENIIiBpbmZyYSBpcyB0byBkZXRlY3Qgd2hpY2ggU291dGgNCj4gPiA+ID4gRGlz
cGxheQ0KPiA+ID4gPiBFbmdpbmUgd2Ugc2hvdWxkIGJlIHVzaW5nLiBNb3ZlIGl0IHVuZGVyIGRp
c3BsYXkgc28gd2UgY2FuDQo+ID4gPiA+IGNvbnZlcnQNCj4gPiA+ID4gYWxsIGl0cyBjYWxsZXJz
IHRvd2FyZHMgaW50ZWxfZGlzcGxheSBzdHJ1Y3QgbGF0ZXIuDQo+ID4gPiANCj4gPiA+IFllYWgs
IFBDSCBpcyBiZWNvbWluZyBhIGJsb2NrZXIgdG8gZmluaXNoaW5nIHRoZSBjb252ZXJzaW9ucyBv
Zg0KPiA+ID4gbWFueQ0KPiA+ID4gZmlsZXMgZnJvbSBkcm1faTkxNV9wcml2YXRlIHRvIGludGVs
X2Rpc3BsYXkuIFdlJ2xsIG5lZWQgdG8gZG8NCj4gPiA+IHNvbWV0aGluZw0KPiA+ID4gbGlrZSB0
aGlzLg0KPiA+IA0KPiA+IEZpcnN0IG9mIGFsbCwgSSdtIHNvcnJ5IGZvciBub3Qgc2VuZGluZyBh
IGNvdmVyIGxldHRlciBleHBsYWluaW5nDQo+ID4gbW9yZSBhYm91dA0KPiA+IG15IHRob3VnaHRz
IGhlcmUgYW5kIGFsc28gZm9yIG5vdCB0YWdnaW5nIHRoaXMgYXMgYW4gUkZDLiBBbmQgdGhhbmsN
Cj4gPiB5b3UgdmVyeQ0KPiA+IG11Y2ggZm9yIGp1bXBpbmcgaW4gdGhlIGRpc2N1c3Npb24uDQo+
ID4gDQo+ID4gSSBzdGFydGVkIHRoaXMsIGV4YWN0bHkgYmVjYXVzZSBteSBjb25zb2xpZGF0aW9u
IG9mIGRpc3BsYXkgcG0gbm93DQo+ID4gaXMNCj4gPiBibG9ja2VkIGluIHNvbWUgSFBEIGNhbGxz
LiBUaGVuIEkgY2hlY2tlZCB0aGUgSVJRIGNvZGUgYW5kIEkgaGF2ZQ0KPiA+IHNvbWUNCj4gPiBp
ZGVhcyBkbyBvcmdhbml6ZSB0aGF0LCBidXQgdGhhdCBnb3QgYmxvY2tlZCBvbiB0aGUgUENILCB0
aGVuIEkNCj4gPiBtb3ZlZA0KPiA+IHRvd2FyZHMgc2VlaW5nIHdoYXQgY291bGQgYW5kIHNob3Vs
ZCBiZSBkb25lIHRvIFBDSCBhbmQgdGhlc2UgMg0KPiA+IHBhdGNoZXMNCj4gPiBpcyB0aGUgaW5p
dGlhbCBvZiBteSBjb25jbHVzaW9uLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBJIHdhcyBleWVpbmcg
dGhlIFBDSCBjaGVja3Mgb3V0c2lkZSBvZiBkaXNwbGF5LCBhbmQgZnJhbmtseSBtYW55DQo+ID4g
PiBvZiB0aGVtDQo+ID4gPiBhcmUgcGxhaW4gd3JvbmcgKGRvbmUgdG8gY2hlY2sgc3R1ZmYgdGhh
dCdzIHVucmVsYXRlZCB0byBQQ0gsIGJ1dA0KPiA+ID4gaGFwcGVucyB0byBtYXRjaCBkZXNpcmVk
IHBsYXRmb3JtcyksIG9yIHNob3VsZCBiZSBpbiBkaXNwbGF5DQo+ID4gPiAoZS5nLiBndF9yZWNv
cmRfZGlzcGxheV9yZWdzKCkpLiBCdXQgdGhlcmUgYXJlIGFsc28gbGVnaXRpbWF0ZQ0KPiA+ID4g
Y2hlY2tzLCBJDQo+ID4gPiB0aGluayBpbiBjbG9jayBnYXRpbmcuDQo+ID4gDQo+ID4gWWVzLCB0
aGlzIG9uZSBpbiBHUFUgaGFuZyB3YXMgb25lIG9mIHRoZSBtb3N0IHN0cmFuZ2Ugb25lcywgYnV0
DQo+ID4gdGhlbg0KPiA+IEkgbm90aWNlZCBpdCBpcyBpbnNpZGUgdGhpcyBmdW5jdGlvbiB0aGF0
IHNob3VsZCBiZSBtb3ZlZCB0byB0aGUNCj4gPiBkaXNwbGF5DQo+ID4gc2lkZSBhbnl3YXkuDQo+
ID4gDQo+ID4gT3RoZXIgY2FzZXMgYXJlOg0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Nsb2NrX2dhdGluZy5jOg0KPiA+IA0KPiA+IFRoaXMgZW50aXJlIGZpbGUgc2hvdWxkIGJlIGlu
IHRoZSBkaXNwbGF5IHNpZGUuDQo+IA0KPiBNb3N0bHksIGJ1dCBpdCBzdGlsbCBoYXMgYnVuY2gg
b2YgZ3Qgd29ya2Fyb3VuZHMgaW4gaXQuDQo+IFRob3NlIGFsbCBzaG91bGQgYmUgbW92ZWQgaW50
byB0aGUgZ3Qgdy9hIGZyYW1ld29yay4NCg0KaG1tLi4uIGluZGVlZC4gQnV0IGFueXdheSwgYWxs
IHRoYXQgSSBzYXcgdXNpbmcgUENIIGlzIHJlbGF0ZWQNCnRvIGRpc3BsYXkuDQoNCj4gDQo+ID4g
QnV0IEkgZ290IHN1cGVyDQo+ID4gc2NhcmVkIG5vdyBiZWNhdXNlIGl0IGxvb2tzIGxpa2UgaXQg
aXMgbm90IGdldHRpbmcgY2FsbGVkIGZyb20NCj4gPiBub3doZXJlLg0KPiA+IFNvIHdlIG1pZ2h0
IGJlIG1pc3NpbmcgbWFueSBkaXNwbGF5IHdvcmthcm91bmRzLiBJIHdpbGwgaW52ZXN0aWdhdGUN
Cj4gPiB0aGlzIG1vcmUgbGF0ZXIuDQo+IA0KPiBJdCdzIGhpZGRlbiBiZWhpbmQgc29tZSBjb25m
dXNpbmcgbWFjcm8gc3R1ZmYuDQoNCm9oIG5vISBzb21lb25lIGlzIHJlYWRpbmcgdG9vIG11Y2gg
aTkxNS1ndWMgcmVsYXRlZCBjb2RlIDooDQoNCj4gDQo+ID4gDQo+ID4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYzoNCj4gPiBUaGlzIGlzIGV4YWN0bHkgd2hlcmUgSSBnb3QgYmxvY2tl
ZC4gQWxsIHRoZSBQQ0ggY2FsbHMgaW5zaWRlIGl0DQo+ID4gYXJlIGRpc3BsYXkgcmVsYXRlZCB0
aGF0IEkgbmVlZCB0byBtb3ZlIHRvIHRoZSBkaXNwbGF5IHNpZGUgaW4NCj4gPiBvcmRlciB0byBo
YXZlIGEgcHJvcGVyIHNwbGl0IGFuZCBtYWtlIHRoZSBkaXNwbGF5IHRvIHN0b3AgdXNpbmcNCj4g
PiB0aGUgaXJxIHNwaW4gbG9ja3MgZGlyZWN0bHkuDQo+ID4gDQo+ID4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9ncHVfZXJyb3IuYzoNCj4gPiBnb29kIGlkZWEgb24gbW92aW5nIHRoYXQgZW50
aXJlIGZ1bmN0aW9uIHRvIGRpc3BsYXkgYW55d2F5Lg0KPiANCj4gVGhhdCBzZWVtcyBsaWtlIGEg
cmFuZG9tIHNldCBvZiBzdHVmZiBubyBvbmUgYWN0dWFsbHkgY2FyZXMgYWJvdXQuDQo+IFNob3Vs
ZCBqdXN0IG51a2UgdGhlIHdob2xlIHRoaW5nLCBhcGFydCBmcm9tIERFUlJNUiBiZWNhdXNlIHRo
YXQNCj4gb25lIGlzIGFjdHVhbGx5IHJlbGV2YW50IGZvciBHUFUgaGFuZ3MuIFRob3VnaCB0aGF0
IG9uZSBkb2Vzbid0DQo+IGV4aXN0IG9uIFZMVi9DSFYgc28gY3VycmVudGx5IHNvbWUgcmFuZG9t
IGdhcmJhZ2UgaXMgYmVpbmcgcmVhZA0KPiBpbnRvIGl0IG9uIHRob3NlIHBsYXRmb3Jtcy4NCg0K
SW5kZWVkLiBMZXQncyBzZWUgd2hhdCB3ZSBjYW4ga2lsbCB3aXRob3V0IGJyZWFraW5nIGRlY29k
ZSB0b29scy4NCkJ1dCBtb3ZpbmcgdGhlIGZ1bmN0aW9uIGVudGlyZWx5IHRvIGRpc3BsYXkgaXMg
dGhlIGVhc2llc3QgZm9yIG5vdy4NCg0KU28sIGFib3V0IHRoZSBQQ0ggc3R1ZmYgaXRzZWxmIG1v
dmluZyB0byBpbnNpZGUgZGlzcGxheSwgbm8gb2JqZWN0aW9uDQpmcm9tIHlvdXIgc2lkZSwgcmln
aHQgVmlsbGU/DQoNCj4gDQoNCg==
