Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54743B4218F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 15:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04EA10E894;
	Wed,  3 Sep 2025 13:29:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmJIZnVB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCD110E8AD;
 Wed,  3 Sep 2025 13:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756906176; x=1788442176;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5OhaiytgvQUg1Tge+ay3ycnybSkzrZVWc1jt6C17ncQ=;
 b=gmJIZnVBGsKOtGvbMf/m2apB8XgeMiO9NCe3w0CkM8GlAhGq+hrp/NwM
 Hpqi+hfbVROtDvyzSrKlRJnVeM7qMeHHPIN1B9WYqiAK+aSy0Bnfg7qMZ
 y2BXHQzbwYGJwX05CKzI5EAUWQZ5dudlCLisETVPymZr1cSn/l/2uQrCq
 YfyfLwyqixXD9lUjrVY7w4tiQGrOprK4pr4xQCVxSR6aSZWN9q2vAhYo/
 C3NCZxYQ+XfpP2q/EqKQH0X91gd/q0QahroK7vsqwf1oafeHmdLVrgR+I
 5xasa2/gi8QnrZ0iKxtROsz6zo6TAtfXShN9lJAjXL8y1K20pzPGQfsOu Q==;
X-CSE-ConnectionGUID: n3mBwz1LSrifLyZjudKp2Q==
X-CSE-MsgGUID: 9qPEjpyKSa6K2Z3s+hIPiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58433980"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="58433980"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 06:29:36 -0700
X-CSE-ConnectionGUID: ba0mX5s+RPusrl7piWgJAQ==
X-CSE-MsgGUID: k/NewodgRY6CYhfj/YFfaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="175958362"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 06:29:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 06:29:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 06:29:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.61) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 06:29:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gSN8PPoKjcLZ+kb4hjUMtAcb0d5HXiG0aiDp8tQxZtQF3Jt/xW15/gXZzCq3ScKY+CrnSkc2E/wX+lwcXEK2GqRRdkVOPVLvNxJJN5e5K7oBXZwJbbEga0sifxPJilTw8lqA/N4/N5gfJZRjJqYFhj/WVa9sCj6D6vqT+U93oGMz687SzEOERMk18+PhwgNCc6J4grbbx8m1bJQMzuuajWWb0WIZAXsIKFqHYdoDL4gPVDxijTVoRB5Ta2Acwr2ETph10XALzH55v/Hh5FApxuPBcHq3Pn9IIkNeb8m7hQlnYbE75dMpq0TV+UVKK6mCqDfA6dqbsa4gWzEstktwtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5OhaiytgvQUg1Tge+ay3ycnybSkzrZVWc1jt6C17ncQ=;
 b=jbRgleppFWoqkPFMHUJKTe9rDc7ngBznEsE1LEXiUIEksbKpTMPnndPvHDVRwNNdKTwE60pFg+JUX7G+ngUd7ITQeiLTKWkiIikdqAr5mJGEyTb8l4KrZ3cmz8QOkwH9yAWjfUERiN/owLLpBG0s3lWYJbnG1eitHS7iwsmUkKmxvZbUFlrOZo5gt5eEF/mLBnQ7S1snNDPEelGyN68Ej0g00EDdQiW1HKT1JyHcYb56D8w2RJWaY/c8BSK+gs4vqUUpqUq9OL+xXcds3SW6qwR0QjGxsJV9IWcD+45izl1g1yBahdy1ZMrKewG/k/HZKdkn2UBOast5l6KvsTLe3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5170.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.17; Wed, 3 Sep 2025 13:29:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 13:29:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Kandpal, 
 Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 01/20] drm/i915/hdmi: use generic poll_timeout_us()
 instead of __wait_for()
Thread-Topic: [PATCH 01/20] drm/i915/hdmi: use generic poll_timeout_us()
 instead of __wait_for()
Thread-Index: AQHcGBZNV07vHcqiAUmv1h12f6odNbSBfWEA
Date: Wed, 3 Sep 2025 13:29:31 +0000
Message-ID: <ccdc9ebcff65a1a46305fb014ec78a35ee4c5b7f.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <fc3a67f9de0049f415a276bba1c11a4df97e01d6.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <fc3a67f9de0049f415a276bba1c11a4df97e01d6.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5170:EE_
x-ms-office365-filtering-correlation-id: 86528bd5-2812-4294-1241-08ddeaedea4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VjdGUGQ3QWdNWlBwQWM5cmxHU09mMXhudFpiR3VvYnFqM2RvRGszVFFnQ0FC?=
 =?utf-8?B?V2owQjZ4b0FhM0pwTWhEWUVBczkvVURHWC9GTlZXVWZIWUZSUUJVbS9IVDR1?=
 =?utf-8?B?SXFFY2xWS1FEdS9YRXNaUGwxTDh0Vm5ZbGs1THZ4ZkJJL1AxaFpnbTJFcnpj?=
 =?utf-8?B?TlpwWGFrZHE0OS9CWFhhSCtEVGF0d01PSkhFYzVVblNsbnFkUVpzYlJlaEpD?=
 =?utf-8?B?NDMrbUlHVWc1S0tXV1Fpdm9qYXRreGpualJpSGx3NlFBMmtBdkRZZUErVkNv?=
 =?utf-8?B?SkkvVUVJamdjQjFQUGJad2ZMK05vb25tSXZaMllPNk5NcE9HeUpOOGtoQ3Mz?=
 =?utf-8?B?SkxZamp5S1o1Q3N0NnBzN0gyZnFncXlaNTVsYkVSNTdHK0FiQlZ4VGdDVTJT?=
 =?utf-8?B?Tk1Mdi91RHdPMUdlMUhDZkhLVTBPZG1HZ0dTNDdBL0g4L3lLWWM5MmFITW4y?=
 =?utf-8?B?MjhNeEVkN2thZ1haWDYxT0F4akNmUlhucGRPT1h5MlI0aThIUjVkWnpNcHNG?=
 =?utf-8?B?UXFMVVRIU3QzNVk5d0k4T1ZYVVJ5WlhGaUNrdWhXc2s3MVJhSjFMdXQxOVRE?=
 =?utf-8?B?cng4a2dpVTNsM3dNRGdPTitwcW5CcURPMG5hamFGeW1iTFhwWExmQ0Nnbnlw?=
 =?utf-8?B?ZmtMTkd6cTUwMnprZERSa0xRK2hjTEl0M3JTSkFMWVdSYjNYRUtvbStEUDMy?=
 =?utf-8?B?bE1tdm1YWCtsRDV3TlNpV0pvdXVjdzk3bXZkWmtlRkNIdlAxYlIzVGpsT0ll?=
 =?utf-8?B?OHprNnNLU05BYjJhWHNVanoyWTdYL3FWaVlCTUU1WFppTStqbGtWWGhoUTMz?=
 =?utf-8?B?amkrKzBwbEdpRU9tTlFqam9WSU9CbC9zVythK1lYV2o4K2hWTjVPQS8vRHUx?=
 =?utf-8?B?SityeWxPRUI2Sm0yR21OU1I5MnQ0bXRURUlSUm8zVlk4NktqVmJYcGNGS3JP?=
 =?utf-8?B?Q2J5Nm83VE1xcnZYN3FIZmNkQmhuVTJqL1U0a0lISVBvYUdpN2FpV2FOcjQ4?=
 =?utf-8?B?VUhCejR5MDdhZFJhQ1IzM095SThsSUN4cW5mTm5FOTZlSmpMb0ZIN21EelFI?=
 =?utf-8?B?a3ZpZ2NjemN5dE4rSUxYWEZ4bXVDMWIxUThKMEExVHFqVjEwMFQ5enRCTFZy?=
 =?utf-8?B?VlphNzdTRmMxRW5haEdPTzJyTW0yekgxZXd3SHY4VXVIOEhoTnJYS1dlaEky?=
 =?utf-8?B?U1RpVDhJR3I0cUJ6UUNPcWcxWFV1RUliSXUyVW1qZGhyZnQrRnVaOVNENEhi?=
 =?utf-8?B?L29HQ1FUa0p5M0pZY2F0bTBxelpsd3Z5c0dqckdRbjkzRmZuTDZJWVlibUt5?=
 =?utf-8?B?V00rMjZTbGhZdGtEZ2tVUEw0c2xveG9sTVdQdmZ5dHYvdHRBK1JweXJJQ2cw?=
 =?utf-8?B?NmZyZllLaGV1QUd6aHpNUHRieSt2czdtYUdjYlZTYmJxSC9qcmhPdG5FYnNJ?=
 =?utf-8?B?bFlIckh2czlIcU9zSWZPOWJHckxXTEtaWjR1MVhFQmE3NHJuRE52QWlzeHdh?=
 =?utf-8?B?Y25GYWJaWVJFNkI2M0wxZHhqTWp0SEVZQ0JXZmVkNDE3TWpidVBmU2pPNVN3?=
 =?utf-8?B?OUNsa1BscWhGSnRYL0tma1dHeWpTTGh2YzhmWndoK3R4ZnZ1d3E5TWdJWmln?=
 =?utf-8?B?V0JFMkdWRlpCcU9Pa29mNVd3TnVaRXhBakRkeVBiN1MyYlB3NGhqVzdSWU5Y?=
 =?utf-8?B?bTdidFdZdlM3dWhTbFUyTE11NWJHaVdwSzg5aFQrQk1KbUFPY205aUJGUFI4?=
 =?utf-8?B?eHgrVkhid01OdVdudXdTc1hQVFYzZ2FqcXgvczN4SXRmbTdxMDhCY3hiNlp5?=
 =?utf-8?B?bVpJenUzMkd6aXNYemJBbEluY2JRckgyVkxacSsyd1lTUjZFcmtxUENHc3RK?=
 =?utf-8?B?d3F6MmtnWnpkWVRsYUVyQ2NOejgvOGtCa05SZktYNHEzdEl4c0hmNVRqRGh3?=
 =?utf-8?B?aUJkVzFmK3pnam5Nb3FHM2VwRDhibWd1Tk5pZHJuTlkvbytzOVBaNXUrZCtq?=
 =?utf-8?Q?7tiWt9gZTltIqNd8JXKkWfcF+i4d2w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K29OVUlXUVlPNFB6ZXdRM3R5Nlh0RTFCRzJMM1BxQTVOc0RPOTBYUFZqT1k4?=
 =?utf-8?B?QVFoUUlkazdiU0hxaW1xYW41YnJDai9BR1FjQWswRE5JZUdOOHd1aHpJSmdy?=
 =?utf-8?B?OWlqT0w3RTcwOVc1Mm0reEdSTFRlUGxzditTcG5NOHpWN1N0UmRKbTRkeUxx?=
 =?utf-8?B?VkNWTXF3dzFzZE1KWXhiZEQ4NDQyUE4xUHA1ekxoSjFza3h3Tm5paE9WS1FR?=
 =?utf-8?B?eEFHdjVPaFFVNGRqTnNmU2F0b1gxMlFCbjdhS3JQNW55bTRja0RIaGZPM3ht?=
 =?utf-8?B?NDFPMmFyd0NZYStWY0FaNW1jN2srVXdxMXA5RlAzdXduUzFJYXN5V2ZBSFlW?=
 =?utf-8?B?Z1grZ3ZnWmdrNnBVNkhaR3NGTEcyR1VoS2RMUVZEVFJaWkhNSEptWHYrQnoy?=
 =?utf-8?B?L0ZTZmlDY3VaanFvbHBHaGJKak5wZ0JacEhqY25RRUJNVmhnYWc5YmdXdEtY?=
 =?utf-8?B?Q0YvVkVTeU40OWg5UkN5M21yYkk3cndhSzVjRzJhaTJlWEphaUp2R25Ub1Bk?=
 =?utf-8?B?SnVORkF2NXhtWktRdThlTzM2OTNHaHpjN0NNeWFHTEhDTXdsdzZUMTFsbWwz?=
 =?utf-8?B?alBFb1E2ZTRjY0dZa2tjVktrWlFCa1NDcmNaZ2lybmQ4eVNyNGNKQkdiT3BJ?=
 =?utf-8?B?TUtBRDcxeDV2a3JPY05lencyQ1FjTU11MFBGclNieVpHUnp6STEvVURSWmZE?=
 =?utf-8?B?L3Q2VVI2MEVQME8wQi9FZTVVZkJYazV1alZzQ2EwV2J6N0hRczR6RE1STUhn?=
 =?utf-8?B?RW5leU5aLzA1RXVubnFHcGUwM01hR01pcW1rZ0cxQ01WMHpEenV2Y3htdENw?=
 =?utf-8?B?bjYrR2Jkekhxa1VRWHlxclVQVng5OWIrZDFwRlZkOVYxYzlTbTkvWUJiRzVM?=
 =?utf-8?B?VHhMR2xrc1Bncm9DSVk0NDVNWlBBb1A0dUJvZEpGMG1Va1lMS2xmWjNvRnBu?=
 =?utf-8?B?SWRLOGZQR0tzd2FwK0Jzb28wUytnTXVMeFJoa1Y3QWRxTWZzV2wrUkJCaFFm?=
 =?utf-8?B?MGhwNTZmVllWV2ZJTnp4dzBaL1NlMVZEa2pRWSsydXd5bU5SV3IrUGcrK1Bw?=
 =?utf-8?B?OUxBRnVrTHBCNnVYQmhEdElCZEFmUzJHM1hndWl0VExvaENoemRYdlNsS2V0?=
 =?utf-8?B?V0VSMUhWSElPd05USHlUTmNpTTM1c2JQM0hweXNNY2d5RjU1OE1Yc0NlakVW?=
 =?utf-8?B?em41SWw1NlE1alFZb1VxazdCc1paUVE1Vnk5Yk9PL2p0KzZqOFFPUHRhZk1V?=
 =?utf-8?B?Y1dFSUMwM1M4NEJTU0grSk42R01JNzMwZ3F5QlFPcnRMY3NsTjlEdHIyRnlJ?=
 =?utf-8?B?M3hpMHYxek1hLzVMV21HZndSb2Zwc3NRUlNpS3NpTU4vTXV6Z0tHc3M2RC9w?=
 =?utf-8?B?RVlhMmQ1RTJxbkU3dW5uUDM3RXp0VVJGR1hOT0R6QUZkcWNNb0I5TGtzakNB?=
 =?utf-8?B?VVRrS1BwemRrekdrSTBqWTVxdDQ0U1RHSUJ2bExyazYxY1VHOXZ3cVZYTHBk?=
 =?utf-8?B?WnR4U0xqeU42amlOU1VaL3NTbGZqYUpXMkdDWUtScVhrME5ia3hvM2Z4bmx4?=
 =?utf-8?B?d1laUWY4c1VFU0QzNE1LZFVrcDgwZzJGM09uOENmdUdINFRReW5SejRTcEVl?=
 =?utf-8?B?T0FsaFl1bzk1VnA5dFNqZ2lUbVY1bEU0TWVrV3UySzdnN3RJaC9XdlRNWVg5?=
 =?utf-8?B?L21KRWZwczZtR2F6S2ZpZWd4cmh5MWNJQVhTUzhhY3NzR3JUY29tTFplUGpL?=
 =?utf-8?B?YnpxR1pKdVU0RUNLZG9YY2VxM2tqM0tWenVlQ3hnSllYQ2JiY0Q0YlJXZVp3?=
 =?utf-8?B?N3p4TFArSW9DamFzL3cvMXVya2s5OGFmL2NuR3VsWmFBOHIva21ieHlveWVZ?=
 =?utf-8?B?MXkrUHV1ZHNOVEc4VStpeW9uejYrVG1nREhGdWI1VUppWExUSXBXNVhRdGVq?=
 =?utf-8?B?S0o3NVM2ZWpsNmhMRlk2UUU0aFIxRUtBcTFPWFJaSXZ3VGhGMTdPaWI0Zmpa?=
 =?utf-8?B?SHNHdHVxV0lVcDBiU0N0d3Ria01rOVZWV0IvZW8zSXZVTUhCOVQwWW0xM1Fi?=
 =?utf-8?B?VXFqak1MbkZ3YnhYMU1QT3JOWHdSenU5VWgwSnkyNklaVTA4MWF4Y1FKRzNl?=
 =?utf-8?B?cEQ3ck9IVjZub2FhMXE2cE56S2lISXEyem5IYy83cHZKLzU2YmZuMDV5K0cw?=
 =?utf-8?B?SnVmZy9JcnNkRjkyOTR4ellpZzh0eHZ4TWVFQ0ZnRFB5aHdyRFQ3SmwzZHV2?=
 =?utf-8?B?TVZzQUdqS2t4VW81eTNOUWl3eFd3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2C419BF21C7FCB439F44CC2154940ED2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86528bd5-2812-4294-1241-08ddeaedea4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 13:29:31.5234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzfAbrKEx6aKF6EGgxzX/fAZyMLxVn/WP345yUZEyQ+zp0opttNsAQaqGyI5iR8tdQNGk9hvZKkwSOLJf9o6IBXPfJHgXpycnPgq+FYE+nU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5170
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiBfX3dhaXRfZm9yKCksIHdoaWNoIHVzZWQgdG8gYmUgMSwgMiwgNCwg
YW5kIDggbXMgaW4gdGhpcyBwYXJ0aWN1bGFyDQo+IGNhc2UuDQo+IA0KPiBVc2UgYW4gYXJiaXRy
YXJ5IGNvbnN0YW50IDQgbXMgc2xlZXAgaW5zdGVhZC4gVGhlIHRpbWVvdXQgcmVtYWlucywNCj4g
dmFyeWluZyBiZXR3ZWVuIDIwIG1zIGFuZCAzMDAwIG1zLg0KPiANCj4gQ2M6IFN1cmFqIEthbmRw
YWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAxMCArKysrKy0tLS0tDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGluZGV4IGNiZWU2MjhlYjI2Yi4u
MDkxMTFlNmQxZDIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYw0KPiBAQCAtMjksNiArMjksNyBAQA0KPiDCoCNpbmNsdWRlIDxsaW51eC9kZWxheS5o
Pg0KPiDCoCNpbmNsdWRlIDxsaW51eC9oZG1pLmg+DQo+IMKgI2luY2x1ZGUgPGxpbnV4L2kyYy5o
Pg0KPiArI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPg0KPiDCoCNpbmNsdWRlIDxsaW51eC9zbGFi
Lmg+DQo+IMKgI2luY2x1ZGUgPGxpbnV4L3N0cmluZ19oZWxwZXJzLmg+DQo+IMKgDQo+IEBAIC0x
Njg5LDExICsxNjkwLDEwIEBAIGludGVsX2hkbWlfaGRjcDJfd2FpdF9mb3JfbXNnKHN0cnVjdA0K
PiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiDCoAlpZiAodGltZW91dCA8IDApDQo+
IMKgCQlyZXR1cm4gdGltZW91dDsNCj4gwqANCj4gLQlyZXQgPSBfX3dhaXRfZm9yKHJldCA9DQo+
IGhkY3AyX2RldGVjdF9tc2dfYXZhaWxhYmlsaXR5KGRpZ19wb3J0LA0KPiAtCQkJCQkJCcKgwqDC
oMKgIG1zZ19pZCwNCj4gJm1zZ19yZWFkeSwNCj4gLQkJCQkJCQnCoMKgwqDCoA0KPiAmbXNnX3N6
KSwNCj4gLQkJCSAhcmV0ICYmIG1zZ19yZWFkeSAmJiBtc2dfc3osIHRpbWVvdXQgKg0KPiAxMDAw
LA0KPiAtCQkJIDEwMDAsIDUgKiAxMDAwKTsNCj4gKwlyZXQgPSBwb2xsX3RpbWVvdXRfdXMocmV0
ID0NCj4gaGRjcDJfZGV0ZWN0X21zZ19hdmFpbGFiaWxpdHkoZGlnX3BvcnQsIG1zZ19pZCwNCj4g
KwkJCQkJCQkJwqANCj4gJm1zZ19yZWFkeSwgJm1zZ19zeiksDQo+ICsJCQnCoMKgwqDCoMKgICFy
ZXQgJiYgbXNnX3JlYWR5ICYmIG1zZ19zeiwNCj4gKwkJCcKgwqDCoMKgwqAgNDAwMCwgdGltZW91
dCAqIDEwMDAsIGZhbHNlKTsNCj4gwqAJaWYgKHJldCkNCj4gwqAJCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwNCj4gwqAJCQnCoMKgwqAgIm1zZ19pZDogJWQsIHJldDogJWQsIHRpbWVvdXQ6ICVk
XG4iLA0KDQo=
