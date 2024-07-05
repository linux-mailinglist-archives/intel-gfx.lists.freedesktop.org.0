Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F139928C18
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 18:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D867810E29B;
	Fri,  5 Jul 2024 16:09:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/EoYuOm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AE810E29B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 16:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720195788; x=1751731788;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5Z3laPB6aI0alzSYQvr6obG7OV3FPH1mwr9MzevSKX0=;
 b=L/EoYuOmWFsBy5wZsZoBa6tJPi9emUcLgh52prfJZ8NKSnwCg1hqeLYM
 Ypn7sfuvcavl6DslGFBQGpVjUk9kjuJjy+jbhmtIfAlHr+9BtVImZHYN5
 u81SZyaE/pNU/vudsZPlUo5RFBQabjSo0cnJH1/vOdnVTHvfKbHZL7M0Z
 5HshZFJmf7n7r0KWtncteFc8/RGv4HkQGRK9G0rX3bTWLkcTZxHTSOBYm
 pr37L3ZE0V0GRSdNoE7sBZxJxsPEJIan8TVVDh9qKfjPNXvfaE0AcySXQ
 PNOmAXZSoNHlj45Q1Epml8afINrrsFawcdetMgI3C4GTKCZVu9gjtK9Tc w==;
X-CSE-ConnectionGUID: PVm0+CGwS06KpeL4nR+tdw==
X-CSE-MsgGUID: MUk/Z44OQMuBg5Cv7ImCgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="42913828"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="42913828"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:09:47 -0700
X-CSE-ConnectionGUID: Kv/ZE++GRzyXnPtun+UFJA==
X-CSE-MsgGUID: lOuOLzoXRqa/rEDZHORetA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="51862234"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jul 2024 09:09:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 09:09:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 5 Jul 2024 09:09:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 5 Jul 2024 09:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AsTEDkzv+LwtE3tvLmckBYE48YW9RmIpPBxISosqdEdQ/cnMGGFYP5RrEdSt1D16oAJ0j6Zq2LYHg7RSsfggMWyLrbTq7hC8rvLtba4wJm++Pb5mg7D3GG0mMxR9VU6Qke0wxEkalGXNjY3Xv00KlotYJhWCSaPEcGABuCeXQxg5zZnNpjk6kaJDsXJFIYdmFkYBMc1NAw+1As/SsKKQdIJIqqcZemhSq+dkyfNM+PPDoJ/yCDn1TsL268B7M8W1cZP4hCyX2jaauuZ3+DWiAO2oUe6Oyz2WdZlxrSR9qA8FPcP7LdHjHorV/bUzYMWNUO77uuNX6TJqt1/ypRFugg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Z3laPB6aI0alzSYQvr6obG7OV3FPH1mwr9MzevSKX0=;
 b=cs2tyuG+Dy1giMxxNXAUHKB33k5lDpg16EXGShHirMbjbHW/8PvKXsi+gw5Au01XjJsoRsZ3Uvu9XeEB0tscu8h3VeaWiDdM1OoLNmCw7YLdV/LyiIdQYpONXDdHSZhcm6rF+M6FaXkxQUIejWaPtAutNamZCidY+iR6sTBS0Cm1zfn2EtRw+nLT8pPON2mE0H/QaUkUaHZw2q0ALM4elrVtNvM/nHTcSaPNqUli/ndRf6egXNDzfbeDmKhSgDH+aT8qHySfF45FN/CAU7dfxo0E3lsjxgbohajiT+hsuR2weoZxtkXkySUwwZ5utHhO2r8tM87jfXaqWgxYzT+E3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7846.namprd11.prod.outlook.com (2603:10b6:930:79::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.31; Fri, 5 Jul
 2024 16:09:43 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Fri, 5 Jul 2024
 16:09:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Topic: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Index: AQHaxmpTP7/zlQICe06J0ru5SG7sK7HoWTSwgAAD/OA=
Date: Fri, 5 Jul 2024 16:09:43 +0000
Message-ID: <PH7PR11MB5981221BB55DAD977C2F4CE7F9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7846:EE_
x-ms-office365-filtering-correlation-id: ec9a5c09-a0b9-4497-f1e7-08dc9d0ce1fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VzNHYnJxYlQ3WkN3Wk1OSC8vSWVPRVF6UG51ZEVWdzNsZThlUFRWZEFHUGdE?=
 =?utf-8?B?UGFHaitGMFprTmxabCtUMTllZ0wyNkNXQU9Oem1abGFFTG5PcjRHRFNCcnBG?=
 =?utf-8?B?dGUyQlpkQmk0dGV4dW9GOForZE5pamM1TlEybWhlbStRU3Y0N3FaRzRsT05X?=
 =?utf-8?B?SWJXdXpCbjNxcjJienBiM2d5TVVWbHM5bE5aV04xelpxcElLVWlGSzhyakpG?=
 =?utf-8?B?dWpBNWcrRzdQVlpTWGhMdy9tcVhUUDRpanFHMk5tRTd0MUZlYURPWVJLeTRM?=
 =?utf-8?B?NkFtUFlycS8zU3hnWjNXcUlrNE5FdnlHbkNrZ2ZBRXJkSVhtd1pJYmxRci90?=
 =?utf-8?B?OGdNVmRETTZ6VXRNeW8zZzZsYjBQSHIrUnI2a2tmcjFuTVA1WDhhakpxd2Fr?=
 =?utf-8?B?aGlnVUROUnlMUkQ5ZENPVlFsSytvU1hXNUllSjU4T1owQmg2bnJqNHdWaWlY?=
 =?utf-8?B?NW1Db2tTRHQ5aTFhb25UQzVONEpqT2dUbjQ1Zk4yKy9mVWszRnFUbnZSZGZM?=
 =?utf-8?B?SUZMV1JWdWIzMERQcVd6RjdpTGVvRml0L0E1UlVObEVYYXQySzZPRzE0a2N0?=
 =?utf-8?B?cFJNSjVsZDJZTkRPc0FNSFlscUtBM1dXck40a0dUSnhaUmcvN3lQUDBZSEVN?=
 =?utf-8?B?WFpIMWtYVUxBU05udTJZMXFmK2IzeXpDemVWcmJneC9nMndpbnF2VkEySjJY?=
 =?utf-8?B?ZEt6UGdCWmJuLzhNUXl0bEJiSjZuUTY4V3RwU3lkdFFuQXRzKzJlNmtBMDFr?=
 =?utf-8?B?UEZWdkZvQW1aMDluZVhvN2x0MHJ1Y0RMQWhEVXBiREJFTlNIelVHeGs1UTlr?=
 =?utf-8?B?TE0rRFBCQUY0YmZrZXRhWlpwRVZnVXNnNG5ZTlBydG9mTnRETVJsNy9qdHhO?=
 =?utf-8?B?Z2gvWm80U1RGNGxVb1ZVcXpwTmZUY0xxWW8yVlgzREVhL3BFdWVqNG5YNFox?=
 =?utf-8?B?ODlFc2dJajJicEdIdEl5WUVJdVNWQjlpRXBJNlV6aDZxWXdqa01FQmRxNDBR?=
 =?utf-8?B?WUttSThWMTByRlZuMHlyc2VGbzhyT2YvclB6b2JpODZhVEZZRTdSWU15TGlM?=
 =?utf-8?B?cjlEdmxsNlN5YlZqTC8xMlVUV21nU3dKZTRzMDJSZGJ3ZHh5UCt4OGUveVdL?=
 =?utf-8?B?NmV4RW5Mdi9RRkxCdXhkTGFzV0NoTWJJMnQyaFpRTENmTFQ3MkZNKzNPTE1n?=
 =?utf-8?B?NU5MS0xOYzErcnhmSHNPMGdBa1FoQWxKTVlWTXNEOW84M2Z4SGVVamFxbGk4?=
 =?utf-8?B?dWJrUEtaNkVCT3dnRTBkakNCWnVxd1FxWXNDdEdkMDBCY2x4RW54QThNUU5q?=
 =?utf-8?B?KzlJNmZoS21JUGpoTnNIZGNlNkNBb21YRU5UUnhqUjY1czV0WS8yOW5qNnlr?=
 =?utf-8?B?YVZiTDg5NWN5bCs2MmZISjlZT01Xa0Z1Z0hseVRIV3AyaGJqdlF5QXZZOUFl?=
 =?utf-8?B?UThXQjhuZE8zeXE4MkpXSWlUd3c3b3lMN3M1TmYvaXFQczBKdm9HeFpvUmdj?=
 =?utf-8?B?NStMaDMrSEN5eStNS2pESmpvREVNbXFGbjNuZG9oMHZNY3NCeXJXWU83dy92?=
 =?utf-8?B?Uk1BZlA4MHpTU2sydnBxK055MGo0VjVZTkh5b2lNWUpXNXpUcTkzVHlFNU1R?=
 =?utf-8?B?Y0x6YXlYdHdsNFlyUXVsaUNDVkhmenFPb2ozOHVTNGk1ZGNmZnZuR0xudW9U?=
 =?utf-8?B?NVd4aFpPUHRoUm5IZE1Hd0d0TjZCTmcyUCtEYUNOblBlWmgxVVFFblB6SS9Z?=
 =?utf-8?B?MnlVR1h5Q0VtYlpNWFJzTThsdjRFbmJuYkx1a1BCSzdGVktVZWxHTUl3b250?=
 =?utf-8?B?dUdYd0xaOXM3Y2p5cGJpZC9ackFkWDJmVHVPS1k1VW5kUFhqNGwzTUcrb29o?=
 =?utf-8?B?NDlkekF0dXpqdk9pUmNUN2V3bUM4Y05nNTdlU1NKYjROS1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1RvK3FhUlc0OUhLcm1ZbGlJblpucTZqYzg4bnJ4NXBtUzNPTnhXVy9USzVz?=
 =?utf-8?B?ZmZEQ0NabERkZmlIQ2RHQ0RZVHdYTDErcFhhV3BRR0t3Njh3QVY0U1o2VGVw?=
 =?utf-8?B?Qk45Tkw3UDl0dTExZENhd3hINHlkZ3ZNTXNwbzlCeWZ4V2lvU29CZHc2b1p2?=
 =?utf-8?B?NkVJNjBPUXY1MWhMV1MrRkFVcGJaOVNPT1pCNENSMTFCandzM2JKN0U0VUcx?=
 =?utf-8?B?REgydU11Rkh6Q1laUjFQbFNvb2hTTHVmWklJdkQxVG5lbWE1NnlNVnFZVEN5?=
 =?utf-8?B?SHdOSU1ubDRzcmNWS0JHcHFWWlptakZlTFVaN2FOdzVPUHRMWDZtZ1FqZ1lU?=
 =?utf-8?B?YVE0eXFyQ0VTc3RrV2lSR1N6NjJhRFRwc1UwSC9nb2d1VnQyTnhKZFBwOFRn?=
 =?utf-8?B?STN3VWtFdzBSWitnUy9yZjlteENGc295eFF5SnlxWnhIWU5tUHBTdWdua3Ey?=
 =?utf-8?B?ZnQ1UzZQdGNWTHBvZG0yT0FjUnpJK3FmbWh5ZEVDK0RYWUhpbDVweWlLWjVz?=
 =?utf-8?B?ckdCcHlmeFdGakg0VGlMaFF2NllSaElkYW8zdFExRVk5WWZWL2c4dkMvMk9J?=
 =?utf-8?B?K3hyM0VqLzJ3a0QzSERLWnpFY0RmYkNQWjF4eFZPN1Y0dzIxVDVvV29WN245?=
 =?utf-8?B?ZFpleG1aUXpNdE55YWVnV2loWFdyYTNtcEExMnM1bDRLOFdPNHBBYjByeENL?=
 =?utf-8?B?TFVEUG5IeThIRU9BNGxJYk9xRnJmTmRDZGlOVHhrQnA3cElwT1MwbDMzWVdn?=
 =?utf-8?B?cDczTVY3eDlmNFp3cmk4TGd4SjdNdG1uS1VuUGk0WnJuZWJuR0dUSnlXeVpi?=
 =?utf-8?B?N3VUWnhYK3hpbGVyaytCU3NjM0xYNXlEOGVpSzF6TDFLbUNZNWoyck9hR3Vv?=
 =?utf-8?B?dSs4ZlJxVVZPOHQwM0lHMGxsdER4Y0xvYml6TldXc0pEWTI0ZkVtakk5cTBB?=
 =?utf-8?B?SlZtUUZyNVRtUEtETXNFN3NLRDhUY01qcXpwZWs2WTBtek9OdTVSR0orMHQ0?=
 =?utf-8?B?RUtHaEhCOVd5REVqYmQ5dm9qajFVbXRmRnlPY2pXR0RZTTFRdGxjbFZZRi9v?=
 =?utf-8?B?VjhNci9pQ0dSNzlTUCsrM0c0b0VYbGd1T2xCOVhkQ2NxYkswZGVLU0VoRk0r?=
 =?utf-8?B?ZzRyWXVWajFoU1BNNnVJckF5bk4yalBVMW92cG9Zd2NZT1VaNXZqQkVXaGxE?=
 =?utf-8?B?dEczbWMxRm54WmQwcWZuTW1aSW42Q3Z0cm5BK1laakp5QmxUd1ZwNmt3U3V5?=
 =?utf-8?B?QVBHUXhtbXpQTU94UHRoV3ovOTF3eHZ4N0VhaENoMXlFZFkwM1p2eTltSUQy?=
 =?utf-8?B?bkNHenozQlR3UnFEayt3WFpKQml0NHVBdWd6c2tiU0NpYUFpdnJTVWVEejFP?=
 =?utf-8?B?U0sycW1iV2RXaUVOK0VsZkM1Sm9zeUtVNEtqN0V5eWJTNGVxRWYrNTliWjkv?=
 =?utf-8?B?L05LNmo3YStDNFM1MjVSVkRkUk1PVWRJcUI1SVhqY1JndCtjbVdERVh0Q09Z?=
 =?utf-8?B?T2ZhZ0Rad09XeGt2VEZLaDA0Rm9kVnBsQTB6TFluQlBrY2d0QTl6NEJGeGxR?=
 =?utf-8?B?RkxFdDI0UFcwZmdEODFwbE1KbkVpM05hYmhEMjFJVHVxVUt5cU15Y0hwZzZU?=
 =?utf-8?B?ekxibUxOQmttVEVxWWowQUJGV1IrWEdYaFIyTElhVHRCaUxFc0VnQVdHNzVZ?=
 =?utf-8?B?N3RXZmRnWVhXc1duWithQ0RwQzg3OW9oaWJtN1lYUHJ0NEhycXF3TmpkQkdy?=
 =?utf-8?B?NGlNL3hLWkxvVzRDSU5iVDE4SzR5TkdEdnBJc1g0S3Y1VVgzYVhnc3lLR0Fn?=
 =?utf-8?B?ZmwrUGE0ZGVWejNzMmtBYmh4eG83UjJBQXFuZC9FOWlxVkQ2MTRKcGtkcnFG?=
 =?utf-8?B?Vm9aZHN0bzk1YVRqc2ZuLzh3OUgxeWM4VVd6ckFIUmgrcktrRmNVdlVZZEQ0?=
 =?utf-8?B?d1VUMFBIWmxCTWhYaHNMSWFVeFpHSVVMNm5ZT1pWdUdyNW5qNHN2eTBpUVRS?=
 =?utf-8?B?ZWE1dmlrMlpzN1BFVnFBb2JTU2ZHckkzb3BobHo4KzM3TXlJYnFEUkxzQ0Ey?=
 =?utf-8?B?TDhQQjN5Wm1YZDkxRzZYTnJzc3hrczJwdkZTU01MMkxPQk1LeC9TMjBnUjdE?=
 =?utf-8?Q?bIQu5XwRIIWnSLvrja2Wxdm+m?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9a5c09-a0b9-4497-f1e7-08dc9d0ce1fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 16:09:43.6202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8OjoxSeOSzaLvahMGEI1IK0ohwz/dNE4Ah/jfwcvFmnVZ/jqZAOgb9rDlJ0sAUu5KVIM4Zi/lVnfOiUg6HhUgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7846
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogRnJpZGF5LCBKdWx5IDUsIDIwMjQgOToyOSBQTQ0KPiBUbzogVmlsbGUgU3lyamFs
YSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTogW1BBVENIIDExLzE0XSBkcm0vaTkxNS9kc2I6
IEFsbG93IGludGVsX2RzYl9jaGFpbigpIHRvIHVzZQ0KPiBEU0JfV0FJVF9GT1JfVkJMQU5LDQo+
IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRl
bC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mDQo+IFZpbGxlDQo+ID4gU3lyamFsYQ0KPiA+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIw
MjQgMTI6NDAgQU0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
IFN1YmplY3Q6IFtQQVRDSCAxMS8xNF0gZHJtL2k5MTUvZHNiOiBBbGxvdyBpbnRlbF9kc2JfY2hh
aW4oKSB0byB1c2UNCj4gPiBEU0JfV0FJVF9GT1JfVkJMQU5LDQo+ID4NCj4gPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gQWxs
b3cgaW50ZWxfZHNiX2NoYWluKCkgdG8gc3RhcnQgdGhlIGNoYWluZWQgRFNCDQo+ID4gYXQgc3Rh
cnQgb2YgdGhlIHVuZGVsYXllIHZibGFuay4gVGhpcyBpcyBzbGlnaHRseQ0KPiA+IG1vcmUgaW52
b2x2ZWQgdGhhbiBzaW1wbHkgc2V0dGluZyB0aGUgYml0IGFzIHdlDQo+ID4gbXVzdCB1c2UgdGhl
IERFd2FrZSBtZWNoYW5pc20gdG8gZWxpbWluYXRlIHBrZ0MNCj4gPiBsYXRlbmN5Lg0KPiA+DQo+
ID4gQW5kIERTQl9FTkFCTEVfREVXQUtFIGl0c2VsZiBpcyBwcm9ibGVtYXRpYyBpbiB0aGF0DQo+
ID4gaXQgYWxsb3dzIHVzIHRvIGNvbmZpZ3VyZSBqdXN0IGEgc2luZ2xlIHNjYW5saW5lLA0KPiA+
IGFuZCBpZiB0aGUgY3VycmVudCBzY2FubGluZSBpcyBhbHJlYWR5IHBhc3QgdGhhdA0KPiA+IERT
Ql9FTkFCTEVfREVXQUtFIHdvbid0IGRvIGFueXRoaW5nLCByZW5kZXJpbmcgdGhlDQo+ID4gd2hv
bGUgdGhpbmcgbW9vdC4NCj4gPg0KPiA+IFRoZSBjdXJyZW50IHdvcmthcm91bmQgaW52b2x2ZXMg
Y2hlY2tpbmcgdGhlIHBpcGUncyBjdXJyZW50DQo+ID4gc2NhbmxpbmUgd2l0aCB0aGUgQ1BVLCBh
bmQgaWYgaXQgbG9va3MgbGlrZSB3ZSdyZSBhYm91dCB0bw0KPiA+IG1pc3MgdGhlIGNvbmZpZ3Vy
ZWQgREV3YWtlIHNjYW5saW5lIHdlIHNldCBEU0JfRk9SQ0VfREVXQUtFDQo+ID4gdG8gaW1tZWRp
YXRlbHkgYXNzZXJ0IERFd2FrZS4gVGhpcyBpcyBzb21ld2hhdCByYWN5IHNpbmNlIHRoZQ0KPiA+
IGhhcmR3YXJlIGlzIG1ha2luZyBwcm9ncmVzcyBhbGwgdGhlIHdoaWxlIHdlJ3JlIGNoZWNraW5n
IGl0IG9uDQo+ID4gdGhlIENQVS4NCj4gPg0KPiA+IFdlIGNhbiBtYWtlIHRoaW5ncyBsZXNzIHJh
Y3kgYnkgY2hhaW5pbmcgdHdvIERTQnMgYW5kIGhhbmRsaW5nDQo+ID4gdGhlIERTQl9GT1JDRV9E
RVdBS0Ugc3R1ZmYgZW50aXJlbHkgd2l0aG91dCBDUFUgaW52b2x2ZW1lbnQ6DQo+ID4gMS4gQ1BV
IHN0YXJ0cyB0aGUgZmlyc3QgRFNCIGltbWVkaWF0ZWx5DQo+ID4gMi4gRmlyc3QgRFNCIGNvbmZp
Z3VyZXMgdGhlIHNlY29uZCBEU0IsIGluY2x1ZGluZyBpdHMgZGV3YWtlX3NjYW5saW5lDQo+ID4g
My4gRmlyc3QgRFNCIHN0YXJ0cyB0aGUgc2Vjb25kIHcvIERTQl9XQUlUX0ZPUl9WQkxBTksNCj4g
PiA0LiBGaXJzdCBEU0IgYXNzZXJ0cyBEU0JfRk9SQ0VfREVXQUtFDQo+ID4gNS4gRmlyc3QgRFNC
IHdhaXRzIHVudGlsIHdlJ3JlIG91dHNpZGUgdGhlIGRld2FrZV9zY2FubGluZS12Ymxhbmtfc3Rh
cnQNCj4gPiAgICB3aW5kb3cNCj4gPiA2LiBGaXJzdCBEU0IgZGVhc3NlcnRzIERTQl9GT1JDRV9E
RVdBS0UNCj4gPg0KPiA+IFRoYXQgd2lsbCBndWFyYW50ZWUgdGhhdCB0aGUgd2UgYXJlIGZ1bGx5
IGF3YWtlIHdoZW4gdGhlIHNlY29uZA0KPiA+IERTQiBzdGFydHMgdG8gYWN0dWFsbHkgZXhlY3V0
ZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMgfCA0MyArKysrKysrKysrKysrKysrKysrKystLS0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICAzICstDQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gaW5kZXggNGMw
NTE5YzQxZjE2Li5jZjcxMGYwYmY0MzAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBAQCAtMTMwLDggKzEzMCw4IEBAIHN0YXRpYyBpbnQg
ZHNiX3Z0b3RhbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICpzdGF0ZSwNCj4gPiAgCQly
ZXR1cm4gaW50ZWxfbW9kZV92dG90YWwoJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUpOw0K
PiA+ICB9DQo+ID4NCj4gPiAtc3RhdGljIGludCBkc2JfZGV3YWtlX3NjYW5saW5lKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IC0JCQkgICAgICAgc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpDQo+ID4gK3N0YXRpYyBpbnQgZHNiX2Rld2FrZV9zY2FubGluZV9zdGFydChzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArCQkJCSAgICAgc3RydWN0IGludGVs
X2NydGMgKmNydGMpDQo+ID4gIHsNCj4gPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlID0NCj4gPiBwcmVfY29tbWl0X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0K
PiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNl
LmRldik7DQo+ID4gQEAgLTE0MSw2ICsxNDEsMTQgQEAgc3RhdGljIGludCBkc2JfZGV3YWtlX3Nj
YW5saW5lKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIAkJaW50
ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLA0KPiA+
IGxhdGVuY3kpOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIGludCBkc2JfZGV3YWtlX3NjYW5s
aW5lX2VuZChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArCQkJCSAgIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ICt7DQo+ID4gKwljb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gcHJlX2NvbW1pdF9jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gaW50ZWxfbW9kZV92ZGlzcGxheSgmY3J0Y19z
dGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSk7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBpbnQg
ZHNiX3NjYW5saW5lX3RvX2h3KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+
ICAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgaW50IHNjYW5saW5lKQ0KPiA+ICB7
DQo+ID4gQEAgLTUyOSwxOSArNTM3LDQ0IEBAIHN0YXRpYyB2b2lkIF9pbnRlbF9kc2JfY2hhaW4o
c3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQkJICAgIGRzYl9l
cnJvcl9pbnRfc3RhdHVzKGRpc3BsYXkpIHwNCj4gPiBEU0JfUFJPR19JTlRfU1RBVFVTIHwNCj4g
PiAgCQkJICAgIGRzYl9lcnJvcl9pbnRfZW4oZGlzcGxheSkpOw0KPiA+DQo+ID4gKwlpZiAoY3Ry
bCAmIERTQl9XQUlUX0ZPUl9WQkxBTkspIHsNCj4gPiArCQlpbnQgZGV3YWtlX3NjYW5saW5lID0g
ZHNiX2Rld2FrZV9zY2FubGluZV9zdGFydChzdGF0ZSwNCj4gPiBjcnRjKTsNCj4gPiArCQlpbnQg
aHdfZGV3YWtlX3NjYW5saW5lID0gZHNiX3NjYW5saW5lX3RvX2h3KHN0YXRlLCBjcnRjLA0KPiA+
IGRld2FrZV9zY2FubGluZSk7DQo+ID4gKw0KPiA+ICsJCWludGVsX2RzYl9yZWdfd3JpdGUoZHNi
LCBEU0JfUE1DVFJMKHBpcGUsIGNoYWluZWRfZHNiLQ0KPiA+ID5pZCksDQo+ID4gKwkJCQkgICAg
RFNCX0VOQUJMRV9ERVdBS0UgfA0KPiA+ICsNCj4gPiBEU0JfU0NBTkxJTkVfRk9SX0RFV0FLRSho
d19kZXdha2Vfc2NhbmxpbmUpKTsNCg0KT25lIHF1aWNrIGNoZWNrOiBBcyBwZXIgYnNwZWMgRFNC
X1BNQ1RSTCAgY2FuIGJlIHVwZGF0ZWQgb25seSBiZWZvcmUgdGhlIERTQl9DVFJMIHJlZ2lzdGVy
IGlzIHByb2dyYW1tZWQgdG8gZW5hYmxlIHRoZSBEU0IgZW5naW5lLiBIZXJlIHByb2dyYW1taW5n
IGlzIGRvbmUgbGF0ZXIsIG5vdCBzdXJlIGlmIGl0IGNhdXNlcyBhbnkgbmVnYXRpdmUgaW1wYWN0
Lg0KDQpSZWdhcmRzLA0KQW5pbWVzaCANCj4gPiArCX0NCj4gPiArDQo+ID4gIAlpbnRlbF9kc2Jf
cmVnX3dyaXRlKGRzYiwgRFNCX0hFQUQocGlwZSwgY2hhaW5lZF9kc2ItPmlkKSwNCj4gPiAgCQkJ
ICAgIGludGVsX2RzYl9idWZmZXJfZ2d0dF9vZmZzZXQoJmNoYWluZWRfZHNiLQ0KPiA+ID5kc2Jf
YnVmKSk7DQo+ID4NCj4gPiAgCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBEU0JfVEFJTChwaXBl
LCBjaGFpbmVkX2RzYi0+aWQpLA0KPiA+ICAJCQkgICAgaW50ZWxfZHNiX2J1ZmZlcl9nZ3R0X29m
ZnNldCgmY2hhaW5lZF9kc2ItDQo+ID4gPmRzYl9idWYpICsgdGFpbCk7DQo+ID4gKw0KPiA+ICsJ
aWYgKGN0cmwgJiBEU0JfV0FJVF9GT1JfVkJMQU5LKSB7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBL
ZWVwIERFd2FrZSBhbGl2ZSB2aWEgdGhlIGZpcnN0IERTQiwgaW4NCj4gPiArCQkgKiBjYXNlIHdl
J3JlIGFscmVhZHkgcGFzdCBkZXdha2Vfc2NhbmxpbmUsDQo+ID4gKwkJICogYW5kIHRodXMgRFNC
X0VOQUJMRV9ERVdBS0Ugb24gdGhlIHNlY29uZA0KPiA+ICsJCSAqIERTQiB3b24ndCBkbyBpdHMg
am9iLg0KPiA+ICsJCSAqLw0KPiA+ICsJCWludGVsX2RzYl9yZWdfd3JpdGVfbWFza2VkKGRzYiwg
RFNCX1BNQ1RSTF8yKHBpcGUsIGRzYi0NCj4gPiA+aWQpLA0KPiA+ICsJCQkJCSAgIERTQl9GT1JD
RV9ERVdBS0UsDQo+ID4gRFNCX0ZPUkNFX0RFV0FLRSk7DQo+ID4gKw0KPiA+ICsJCWludGVsX2Rz
Yl93YWl0X3NjYW5saW5lX291dChzdGF0ZSwgZHNiLA0KPiA+ICsJCQkJCSAgICBkc2JfZGV3YWtl
X3NjYW5saW5lX3N0YXJ0KHN0YXRlLA0KPiA+IGNydGMpLA0KPiA+ICsJCQkJCSAgICBkc2JfZGV3
YWtlX3NjYW5saW5lX2VuZChzdGF0ZSwNCj4gPiBjcnRjKSk7DQo+ID4gKwl9DQo+ID4gIH0NCj4g
Pg0KPiA+ICB2b2lkIGludGVsX2RzYl9jaGFpbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPiAgCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gPiAtCQkgICAgIHN0
cnVjdCBpbnRlbF9kc2IgKmNoYWluZWRfZHNiKQ0KPiA+ICsJCSAgICAgc3RydWN0IGludGVsX2Rz
YiAqY2hhaW5lZF9kc2IsDQo+ID4gKwkJICAgICBib29sIHdhaXRfZm9yX3ZibGFuaykNCj4gPiAg
ew0KPiA+ICAJX2ludGVsX2RzYl9jaGFpbihzdGF0ZSwgZHNiLCBjaGFpbmVkX2RzYiwNCj4gPiAt
CQkJIDApOw0KPiA+ICsJCQkgd2FpdF9mb3JfdmJsYW5rID8gRFNCX1dBSVRfRk9SX1ZCTEFOSyA6
IDApOw0KPiANCj4gQXMgcGVyIGNvbW1pdCBkZXNjcmlwdGlvbiBhbmQgY3VycmVudCBpbXBsZW1l
bnRhdGlvbiBhbHdheXMgbmVlZA0KPiBEU0JfV0FJVF9GT1JfVkJMQU5LLiBKdXN0IHdvbmRlcmlu
ZyBpcyB0aGVyZSBhbnkgc2NlbmFyaW8gd2hlcmUgd2lsbA0KPiBwYXNzIGZhbHNlIHRocm91Z2gg
d2FpdF9mb3JfdmJsYW5rIGZsYWcgdG8gIGludGVsX2RzYl9jaGFpbigpPyBJZiBubyBjYW4gd2UN
Cj4gZHJvcCB0aGUgd2FpdF9mb3JfdmJsYW5rIGZsYWc/DQo+IA0KPiBSZWdhcmRzLA0KPiBBbmlt
ZXNoDQo+ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NvbW1pdChzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IsIHUzMiBjdHJsLA0KPiA+IEBAIC02OTksNyArNzMyLDcgQEAgc3Ry
dWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gPg0KPiA+ICAJZHNiLT5jaGlja2VuID0gZHNiX2NoaWNrZW4oc3Rh
dGUsIGNydGMpOw0KPiA+ICAJZHNiLT5od19kZXdha2Vfc2NhbmxpbmUgPQ0KPiA+IC0JCWRzYl9z
Y2FubGluZV90b19odyhzdGF0ZSwgY3J0YywgZHNiX2Rld2FrZV9zY2FubGluZShzdGF0ZSwNCj4g
PiBjcnRjKSk7DQo+ID4gKwkJZHNiX3NjYW5saW5lX3RvX2h3KHN0YXRlLCBjcnRjLA0KPiA+IGRz
Yl9kZXdha2Vfc2NhbmxpbmVfc3RhcnQoc3RhdGUsIGNydGMpKTsNCj4gPg0KPiA+ICAJcmV0dXJu
IGRzYjsNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5oDQo+ID4gaW5kZXggZTU5ZmQ3ZGEwZmMwLi5jMzUyYzEyYWE1OWYgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gPiBAQCAtNDcsNyArNDcs
OCBAQCB2b2lkIGludGVsX2RzYl93YWl0X3NjYW5saW5lX291dChzdHJ1Y3QNCj4gPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAJCQkJIGludCBsb3dlciwgaW50IHVwcGVyKTsNCj4g
PiAgdm9pZCBpbnRlbF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ID4gIAkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ID4gLQkJICAgICBzdHJ1Y3Qg
aW50ZWxfZHNiICpjaGFpbmVkX2RzYik7DQo+ID4gKwkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpj
aGFpbmVkX2RzYiwNCj4gPiArCQkgICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5rKTsNCj4gPg0KPiA+
ICB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+ICAJCSAg
ICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5rKTsNCj4gPiAtLQ0KPiA+IDIuNDQuMg0KDQo=
