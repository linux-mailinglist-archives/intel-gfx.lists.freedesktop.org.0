Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8BAB383A0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 15:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D3910E79A;
	Wed, 27 Aug 2025 13:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FFiyMEtE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CEF10E0FB;
 Wed, 27 Aug 2025 13:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756300952; x=1787836952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UrgCgfWoL7C9+esrgljhe86nJeWBDWo8R5X1r8Jek7I=;
 b=FFiyMEtEcmD9I/E/oUVL8H132jIypvHCc+ILztGRMlgMguj8JHDNNs76
 mX8v/z18tP+GGnAL5H227hjegtypDAgg5wEDFMhqjN9MZV53fQHZSoaKc
 pbdd5ASU6xiz8YvNxsc6bH2WMIZjZTVkPCKaR0IlWjHU6LrStTnioxC+F
 rcelMiG6eFH4KKx9M+xBzYPLfxV7HSLyxQeeNIvlhdkxKa+fyb6QnT9+c
 BfE/GYtZXl7OaOTb5VO0+Na8DRAonsRdiScNXkZcFf8bIhj2YYBTNuzBd
 Z9oG6zCDn2Es2SkrASRMKOiPYN19kcsM58VTqCiNK5dcyrFulbbk7HUNl A==;
X-CSE-ConnectionGUID: g/zhhVeAS+OQ8HAEc7eAwA==
X-CSE-MsgGUID: j+v42nmLRYqlDImHIJD/OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57753128"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="57753128"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 06:22:31 -0700
X-CSE-ConnectionGUID: QLk1x9y+SGmBV+fcDI5zVQ==
X-CSE-MsgGUID: EL2CNDIMQ5WVYF1KF492CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169771105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 06:22:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 06:22:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 06:22:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 06:22:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oc4P9hAJzH2ZrBbLF9PDO2WXSJvPfwZuYyKWDDrHu7Gm5HOF/0wRJHdfPOWFEjaiAcxX4AtVEkPGXIlr78Dv7iaAc8MZ2SPXh5LTbl2dcDTDQcMiVa9nRTMBEQ39Qc7p+RnaAatLAf6BMHYRRb90ueJn8zHv8+i6b+oizjNWwEyRmljgIb88Skl/6RLS52lNPtsNb1vGOPC7i3Fn8M+jsovoO0Xbd+PiyztWTyn/G8NFH9zS6CQG27jGVJ6EC8vGQWVXGA6vaM0LPNx1lEev+Mg5j/GTg1im+Vlz6w8fijYIc2IusPJZ3vYV9tR6R8zebX8EbpeBkjfSloF22iylNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UrgCgfWoL7C9+esrgljhe86nJeWBDWo8R5X1r8Jek7I=;
 b=dJuvnfaFtkcZnAUunnayntxHsQxCqTgJ2/e0IR45SInfjDOc3WD7RdB/S+9yFZHpI/pi4ZXoHYgA1tjWmF/NItOrKU/SrnaSbqAdB92QxEvnuaSBhOfrJsrMBW73dwBcu/+0T7oqDbksNqlTvKuZeaVpGsD5oYI3ZAItK/N1ifKOkx+C2j/TGHqS3xfUGIA5++nI5DEVTzQ4NIJNRUY0MXullvkgc4S5o+utA0Ds1dwlI77EBUyjllY9nEs9c1v1aroWze8bRYbV3xU/ez3AP12C78A71HW36Ouj0KbG5cd4iphLhOSnTbH5Ruk1wwxquo77iXib0mQsdYNmNMix4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7369.namprd11.prod.outlook.com (2603:10b6:610:14d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Wed, 27 Aug
 2025 13:22:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Wed, 27 Aug 2025
 13:22:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Thread-Index: AQHcBpIjUfAx69EBy0aAK8tv75NnE7R0/uEAgAAgAgCAAXrbgIAABGGA
Date: Wed, 27 Aug 2025 13:22:28 +0000
Message-ID: <71e43318412992094ba2761e0366fd3593704087.camel@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-5-jouni.hogander@intel.com>
 <aK2qPstrBZZCtmfa@intel.com>
 <808fef64029b77661d2e084c1ff7e29fc0706cb6.camel@intel.com>
 <aK8C5-fWIwd9eLbt@intel.com>
In-Reply-To: <aK8C5-fWIwd9eLbt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7369:EE_
x-ms-office365-filtering-correlation-id: a150cb43-2513-4494-847c-08dde56cc549
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?c1N0ZnJiU0U5aHZiSndLVG5RMkk2Vk5IRU0wTTl5R2syTlIvOXJRRENRMlEz?=
 =?utf-8?B?bzNQSWZMVVZSdlR4RU1sT3Q0cnRvUVZOdjNCSnFDc2g0a2lheWVGL0J2VlFX?=
 =?utf-8?B?NndPN2kvVGZKeUVHQUJoa2czU09BUVdWRVQvNEgvMWY0SzRLdlAxdno5TFg5?=
 =?utf-8?B?NHZ5NDUvbkQ3cDc5MEVtSWdJMkhldEk0UnVBRnZxMzdGSVBnY0dSS3ZwdXJY?=
 =?utf-8?B?NkxaRnc5aFFiWlIvRzhCWHVxVFcySk5ETHpTWlUvR0xabkNNdHRsRUNNa09N?=
 =?utf-8?B?SVg2M2UyY01NMnRCeDl2TWZDZE9GQ3RPc010ZDNlNlBYS21LTGFCbUdOTlQ3?=
 =?utf-8?B?aWJQL1NyUnRNRkhsdlFLSEpnNmFMSXRheXBHdEEvZTRJN3JWQ0xPZnJsNjdr?=
 =?utf-8?B?RkdEZVE2WHZaaFJhMkFDMVNiRE5BOXcwUUpyZisxMFNFOGRtN2ZjZ3pnQjRQ?=
 =?utf-8?B?c25PZHVrYUlTSWtsem01dlB4aW1QNmV2SGFTbkpGOWN0ZTgvS3BBTXR5MzNC?=
 =?utf-8?B?MktraFc0M3RYMTE3UnNBMXUxb3J4NnQ2YkVNZjkwSTZvNmlJWTl5Y2pJUWhh?=
 =?utf-8?B?NU16U1MyeGgzWElGMkMrOUl3SGJ4bmVNZ2YramF5aHU0TmJyVWlDT0kvYjRR?=
 =?utf-8?B?aitqRitkWHdIL2pZNTV2dFhaV3dVaUhZNGorMHl3KzMzTElHV1lFNjhZbUQ4?=
 =?utf-8?B?ZS9XREF5MkZOWHkrWGp0OUFIZ3poWUEwVzFDWHBNclNJbVVBbmVJZjRMOFdP?=
 =?utf-8?B?bWViSE0vRzFXbjliZWVUQ05mN29xajJ6YU55akYvcVNtT2Q4TWVPVFVFUEU5?=
 =?utf-8?B?RnlPRmk5NW1qUVV1M3BZd3FDQmNJWFlxbTlWRzQ2d0xjNGtHL3RaZndjU3Iv?=
 =?utf-8?B?SlM5dS9CRGoxS3BNUXlCNWxpWUZBcWxuRUh5b3ZVMnQ0bTIxcXhKb1huMGIz?=
 =?utf-8?B?RVF2VVhYb21scS90cHRQT0tWMHR4YkdjckgwM0xNN0VjaWpZcFdxWlJCVHYw?=
 =?utf-8?B?Z0Z4QVVLQ09oMFdqSU0rV2c3bFRPSGNqb3ZGVSt4ckxVUFk1WHQzOW9jbSts?=
 =?utf-8?B?WkkxUEpLbk82RmNRVDRjM2c5YkQyMHBiVmpOd1pycDg0TlcrRUVTUC8xOHo2?=
 =?utf-8?B?dHFVbk91YUFRblYvdFB0VytMUi9KM2Z2UkZVd3dlMDd6N2ZOa2dQVjNReGdp?=
 =?utf-8?B?OExOTXY3YzNsa3M3L0w4UnlsNFlRZjZhalF3Qy9VS294dGEvSkpGUEZjMlFt?=
 =?utf-8?B?c1FtcUdXd0paQkszMkl6Mm5iczhaREc2V2kyNmdFOXZGUVZXcVNMVnJWOGl5?=
 =?utf-8?B?RGU1ZzhXaFQ5cWlYQ1pnbVRhcTlsTXJ6WVJMT091dGt4MVhEZnEwRHlZT1dy?=
 =?utf-8?B?UXhHMWgyNnN5YzZVMldnNzh5c240ZUlXbWIybnFLTTZaR2loUmJsSDU3VFF3?=
 =?utf-8?B?enY3NjZPWEFGMW5kQnI2OSszeEF4T21QVXhSUkwwREhoYStPNVNHeGdwRitL?=
 =?utf-8?B?QjJuTVQzNmpld3oyekRBMUY5U01GYWljbDhwWVNwK0lIeTlEcmFha2tDUzA3?=
 =?utf-8?B?OGdyWWFQNTZvOHNONG1ydnQ3Nmd3d3ZDQzQvcXJCd2VNclNSUTIxV0l2UXQ5?=
 =?utf-8?B?R3lMMFJldWU1Njdkb2NqZHJQZ1R0VVNYNGFvY1RzTzhTdTZhNUg4Wi9kQStu?=
 =?utf-8?B?bDFOc0VTSk5PYW0vaE9WMnAxVU9zdVlmc1dQNUgvODdqK1pkYkVFYUNOVEIw?=
 =?utf-8?B?bXdKWmFMQ0RTNzVGUTlHd2FmbFg3WXNVenJVMjJFVitPYmRpU2dVQjFNSU1z?=
 =?utf-8?B?Y3BNckxSc0VJYzJJaFJsMGljTnJLVkJOQVhPdXFsNlpGSUtBblpGVFd4Yjlj?=
 =?utf-8?B?UFBBdlJQQTByeHRHQ2FOZDhIMHJMWWl1dG1qQlYra2Q1Zjh4dGpPdHhNcytD?=
 =?utf-8?B?VlFsZGk3enNEbXpPK05kK2pHaW11RGhoOUJReDhmQUszZ01SQVVpSzM0eU9m?=
 =?utf-8?B?bkE5L3YwS0RnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YVBpUnNrYURpRGxvMlh4SXVWK3d0UjB5RzkvV1U1SFNtL3ZhcWZhbEpIUG5l?=
 =?utf-8?B?WkQzR2NFajROb2VNWWdSTFc3bkFIbDYwSmVoZlRtKzVTQURFL200NlNsK1la?=
 =?utf-8?B?ckFMdndST3hBdHU4NG0vSG1nZXNDWDJTZDNWdUE5Rlh1TjVJcUhFVU1TV2lz?=
 =?utf-8?B?MkFGWis5V3pHbzZ3YWZRQXg5ZUhoaWo5WmorQkE2N1VDdW1KeWdkWXdrN0NP?=
 =?utf-8?B?S0NyRnZTb0VEOEVqSXFQbFFNa0JTZnJRaVVvUk5MNmc3MUpsRnFFVVI4ZzdZ?=
 =?utf-8?B?b05EUkpVWllXL0tUYVN6NG1idm40ekhGQ2N0TjBpdUtQb1pINGZ3UWZJWTho?=
 =?utf-8?B?aitTVlFJR2wzYlM3VjRUdlFmTjdFSVk4SmJtaVovTG5EZ0dUN1dEUmpRcktV?=
 =?utf-8?B?dlhKWVI1QkpaRDlOdjNkZEJpTXhRZ3Y5QVBuVWxxUytPYjZvUTJnZ2p6MVZU?=
 =?utf-8?B?WnZqSWRTQ3lqRW1OT1puMGJwVEdrUitCb3MwOXRibk5WY0M1cTBZZmtXWHVa?=
 =?utf-8?B?aTlCU1hYbXFYNVQrUzVTTTdBbFlScFhqY3VveHB3bGwwZDA1azFzck4rWjAv?=
 =?utf-8?B?dDNHREE5REFDUTdERE9wbjVMMitNNkh6Tm5SVlFmMUdKaE1YMDdidzRIYkFa?=
 =?utf-8?B?K2M4MkVnNkJkcUlLUk41czk0TTIvL1loeTF4WnpqUnFxaERDR3BhUTZCclRF?=
 =?utf-8?B?VDZMVzc0U2s3Mkc5NlRUSTJlMExWbHRqSWhKL3pKRGhicW5tZm5BRml2b3Q0?=
 =?utf-8?B?cDNmRzFYR1BsY3NXQlp1ZHFkeERlL1hOVnRucEhzU0RRZ1hjRnVuTGVjejhu?=
 =?utf-8?B?bnF4Rjg2ZWhlV09YbklLUDJ0cjNucUJlRkM4UFFudmZnakt3ejBDYThmSFNI?=
 =?utf-8?B?bzNSMHdkMGI5VzAyVEF5NnhubmR2K04vRjAxQnpGWVF6cXJXWWp4cm12MlRZ?=
 =?utf-8?B?UnBGYUt1ZGczSVU1S0c2dk9yRVpTYlM5emZzRUVTbzV1cEhkVEs2M3dUUzBr?=
 =?utf-8?B?dGttQ29VSGhDWUJYLzc1TU04STB5N01oNnJnQWx5U1pTT0FoZEVhbUhhRmNI?=
 =?utf-8?B?Y245bm1rVmNjMm5DUXltVzc4OG9QaGh1eERPcUdZeFIwaDdLQklZek9KM01L?=
 =?utf-8?B?MXhCMjZqKzB0NEJjcE9hZGxMeStpOU1rVzlDWWo5YXVIUFBRMUprN0dNU2JP?=
 =?utf-8?B?dlBZdTIrSkhORjM2Y1NnazZDVkJXRXVyT3hpS05XNWNvczdGVS9GUW84TERx?=
 =?utf-8?B?L2hrdGE5eVVnRkJRZ0llZFQrdFFRc2NqN1Y5MWhjd3h4dEZUeUpCZmpwdWJU?=
 =?utf-8?B?VTVyalNuV2M5WFpTalJtOFNjWVRraDdZUTJYeEhUVnRWT01uV1ZOK2dzR01X?=
 =?utf-8?B?c2NlQlNPS1ZFeVkzcE1nUnJHMVBtL0ZZK1J3SmlTMWRUZHhLUTVOcFA2eDJX?=
 =?utf-8?B?SXNEMlEzTDFhR3c0cXp2YjVaOHNBQ1hJYjNVRDdzVk43MjNaM3RKNGNLRGxT?=
 =?utf-8?B?MjFCSFZmamltcVBaT2RVNGtGUnhvejFRS29lcUY2bUpuRVpsdUhRWmt5K2Fo?=
 =?utf-8?B?bGZic2VoQWFwMmVSdm9PTUZ5TkViM2Y0dTFxMEg2WVlZUFhzejVxYkoxZ0dO?=
 =?utf-8?B?U1dDV0ZvN1ZGYXZlQ1BNTERheW1HYUE0aHVjbmc0eXdZblVnSGpKWHA2bXhU?=
 =?utf-8?B?QW1hR1RBNGlWZGRLWEkzRmF5aHVNWURIa1NaYjRHTWNKZVN4SXFHNzRBbTN4?=
 =?utf-8?B?TWJQdW1haklHM1A2cUxxRytXRzZNQytWdGxTVHdsTHlsdXpkWEgwaFJIakIy?=
 =?utf-8?B?eUxodGg0TU12WkwwZ2NXRFh4eHRyVjZnVmhTUnBacnRiMXZ1OVVaaUdtV3ZN?=
 =?utf-8?B?ZVVSUWZ3Q2x4S283ZUxPdWV1REV6cmFQMC9JaU02aEd5cWdsczBwcjZsSkhN?=
 =?utf-8?B?MjRXdzhiaFgxeTJzeUxTRjAzVHQvaUJ5VURlUSszRWNyUjlMeURwdDNlWjBE?=
 =?utf-8?B?VUNzRXM3UFFtaElkaXF2amludGZvUHREVEd3cVhyRTNiemtMV3RubWdPdkJj?=
 =?utf-8?B?ZSthYkxVTmo4N1QxQnJYQ3Z2Mk9uV3lLSmh5K2VsL0hOcERSaW9TK0RWb2JU?=
 =?utf-8?B?cXRyZHp1VE9veS9xNlFZQ1VCMTlyZmhoVGkzcVdTbDRCaUtvUHBJaUY1cHNs?=
 =?utf-8?B?a3JpSlVkZVNnM1d2bTEwMThka0ZJa0ljaXBHdHBhc2h2clkwZDBUUVFGOSt6?=
 =?utf-8?B?TlNCRCszbjNkVUpJdjRLOVZaOTNnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D9CF76FBA357B4E98CDB313D9938CEF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a150cb43-2513-4494-847c-08dde56cc549
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2025 13:22:28.5361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: spzKma9CPcaAwXemZ30P3QG7ZjkYh39xH8kSDAiWqbba0ZdcFASqIuQQIQHdAHTLdBUbvhsusdRwsf3f9j+katmzbQGTayTq8ph70HkyMIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7369
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

T24gV2VkLCAyMDI1LTA4LTI3IGF0IDE2OjA2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgQXVnIDI2LCAyMDI1IGF0IDAyOjMwOjUwUE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjUtMDgtMjYgYXQgMTU6MzYgKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFdlZCwgQXVnIDA2LCAyMDI1IGF0IDA4OjIyOjEz
QU0gKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gV2UgYXJlIGN1cnJlbnRs
eSBvYnNlcnZpbmcgY3JjIGZhaWx1cmVzIGFmdGVyIHdlIHN0YXJ0ZWQgdXNpbmcNCj4gPiA+ID4g
ZHNiDQo+ID4gPiA+IGZvciBQU1INCj4gPiA+ID4gdXBkYXRlcyBhcyB3ZWxsLiBUaGlzIHNlZW1z
IHRvIGhhcHBlbiBiZWNhdXNlIFBTUiBIVyBpcyBzdGlsbA0KPiA+ID4gPiBzZW5kaW5nDQo+ID4g
PiA+IGNvdXBsZSBvZiB1cGRhdGVzIHVzaW5nIG9sZCBmcmFtZWJ1ZmZlcnMgb24gd2FrZS11cC4N
Cj4gPiA+ID4gDQo+ID4gPiA+IEZpeCB0aGlzIGJ5IGFkZGluZyBwb2xsIGVuc3VyaW5nIFBTUiBp
cyBpZGxlIGJlZm9yZSBzdGFydGluZw0KPiA+ID4gPiB1cGRhdGUuDQo+ID4gPiA+IA0KPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAyICsrDQo+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gaW5kZXggYzFhM2E5NWM2NWYwLi40
MTFjNzRjNzNlYWUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+IEBAIC03MjcxLDYgKzcyNzEsOCBAQCBz
dGF0aWMgdm9pZA0KPiA+ID4gPiBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4gPiA+
ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4gwqAJCWludGVsX3Bzcl90cmln
Z2VyX2ZyYW1lX2NoYW5nZV9ldmVudChuZXdfY3J0Y18NCj4gPiA+ID4gc3RhdA0KPiA+ID4gPiBl
LT5kc2JfY29tbWl0LA0KPiA+ID4gPiDCoAkJCQkJCcKgwqDCoMKgIHN0YXRlLA0KPiA+ID4gPiBj
cnRjKTsNCj4gPiA+ID4gwqANCj4gPiA+ID4gKwkJaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGVfZHNi
KG5ld19jcnRjX3N0YXRlKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiDCoAkJaWYgKG5ld19jcnRjX3N0
YXRlLT51c2VfZHNiKQ0KPiA+ID4gPiDCoAkJCWludGVsX2RzYl92YmxhbmtfZXZhZGUoc3RhdGUs
DQo+ID4gPiA+IG5ld19jcnRjX3N0YXRlLT5kc2JfY29tbWl0KTsNCj4gPiA+IA0KPiA+ID4gSG93
IGNvbWUgdGhlICdldmFkZSBzY2FubGluZSAwICsgbm9ybWFsIGV2YXNpb24nIGluDQo+ID4gPiBp
bnRlbF9kc2JfdmJsYW5rX2V2YWRlKCkNCj4gPiA+IGlzIG5vdCBlbm91Z2ggaGVyZT8NCj4gPiAN
Cj4gPiB0aGUgcHJvYmxlbSBkb2Vzbid0IGhhcHBlbiB3aGVuIFBTUiBpcyBpbiBTUkRfRU5UL0RF
RVBfU0xFRVAgYXMNCj4gPiBjb21taXR0aW5nIG5ldyBjaGFuZ2VzIGlzIHN0YXJ0ZWQuIEl0IHNl
ZW1zIHRvIGhhcHBlbiB3aGVuIFBTUg0KPiA+IHRyYW5zaXRpb25pbmcgaW50byBTUkRfRU5UL0RF
RVBfU0xFRVAgaXMgb25nb2luZyB3aGVuIG5ldyBjaGFuZ2VzDQo+ID4gYXJlDQo+ID4gYmVpbmcg
Y29tbWl0dGVkLiBJbiB0aGlzIGNhc2UgZXZhc2lvbiBwYXNzZXMgYW5kIFBTUiBpcyBjb250aW51
aW5nDQo+ID4gdHJhbnNpdGlvbmluZyBpbnRvIFNSRF9FTlQvREVFUF9TTEVFUC4gVGhlbiB3YWtl
LXVwIHN0YXJ0cw0KPiA+IGltbWVkaWF0ZWx5DQo+ID4gZHVlIHRvIHBlbmRpbmcgIkZyYW1lIENo
YW5nZSIgZXZlbnQgYW5kIGluIHRoaXMgY2FzZSBIVyBpcyBzZW5kaW5nDQo+ID4gYQ0KPiA+IGZy
YW1lIHVzaW5nIG9sZCBwbGFuZSBjb25maWd1cmF0aW9uLg0KPiANCj4gVGhhdCdzIGEgYml0IHdl
aXJkLiBJIHRoaW5rIHdlIGFyZSBjb25maWd1cmluZyB0aGluZ3Mgc28gdGhhdCB0aGVyZQ0KPiBz
aG91bGQgYmUgdGhhdCBleHRyYSB2YmxhbmsgYWxyZWFkeSBmb3IgdGhlIGZpcnN0IGZyYW1lIGFm
dGVyIFBTUg0KPiBleGl0LiBTbyBJIHdvdWxkIGV4cGVjdCB0aGluZ3MgdG8gbGF0Y2ggcHJvcGVy
bHkgZXZlbiBpZiB3ZSB3cml0ZQ0KPiB0aGUgcmVnaXN0ZXJzIGR1cmluZyB0aGUgUFNSIGVudHJ5
IHNlcXVlbmNlLg0KPiANCj4gSG1tLCB0aG91Z2ggdGhlIERTQiBpdHNlbGYgbmV2ZXIgd2FpdHMg
Zm9yIHRoZSBkZWxheWVkIHZibGFuaw0KPiBkaXJlY3RseS4gTWF5YmUgdGhlIGRlbGF5ZWQgdmJs
YW5rIGRvZXMgZ2V0IHN1cHByZXNzZWQgZm9yDQo+IG9uZSBmcmFtZSBkdXJpbmcgdGhlIHNlcXVl
bmNlIHNvbWV3aGVyZSwgYnV0IHRoZSB1bmRlbGF5ZWQNCj4gdmJsYW5rIHVzZWQgYnkgdGhlIERT
QiBkb2VzIG5vdC4NCj4gDQo+IE9uZSBjb3VsZCBwZXJoYXBzIHRyeSB0byBzYW1wbGUgYSB0aW1l
c3RhbXAgZnJvbSB0aGUgRFNCIGFmdGVyDQo+IGl0IHRoaW5rcyB0aGUgdmJsYW5rIGhhcyBoYXBw
ZW5lZCwgYW5kIHNhbXBsZSBhbm90aGVyIG9uZSBmcm9tDQo+IHRoZSBDUFUgZGVsYXllZCB2Ymxh
bmsgaW50ZXJydXB0ICh3aGljaCBJIHdvdWxkIGV4cGVjdCB0byBtYXRjaA0KPiB3aGVuIHRoZSBo
YXJkd2FyZSByZWFsbHkgbGF0Y2hlcyBzdHVmZiksIGFuZCBjb21wYXJlIGhvdyB0aGV5DQo+IGxv
b2suIFRob3VnaCB0aGF0IGRvZXMgcmVxdWlyZSBvbmUgdG8gZW5hYmxlIHRoZSBDUFUgaW50ZXJy
dXB0DQo+IHdoaWNoIGl0c2VsZiB3aWxsIHRyaWdnZXIgdGhlIFBTUiBleGl0IChhdCBsZWFzdCBv
biBzb21lIGh3KSwNCj4gc28gbm90IHN1cmUgaG93IGVhc3kgaXQgaXMgdG8gaGl0IHRoZSBleGFj
dCBjb25kaXRpb25zIHJlcXVpcmVkLg0KPiBJIHN1cHBvc2Ugb25lIG1pZ2h0IHRyeSB0byB3YWl0
IGZvciB0aGUgUFNSIHN0YXRlIG1hY2hpbmUgdG8NCj4gYmUgaW4gdGhlIHJpZ2h0IHN0YXRlIGp1
c3QgYmVmb3JlIHRyaWdnZXJpbmcgdGhlIGV4aXQuDQoNCkVuYWJsaW5nIHRoZSBpbnRlcnJ1cHQg
d2lsbCB0cmlnZ2VyIGV4aXQuIEFyZSB5b3UgdGhpbmtpbmcgdGhhdCBzdGF0ZQ0KbWFjaGluZSB3
YWl0IGFzIGEgc29sdXRpb24gb3IgYXMgYSBleHBlcmltZW50PyA6DQoNCk9yaWdpbmFsIGlzc3Vl
IHRoaXMgcGF0Y2ggaXMgdGFyZ2V0ZWQgaXMgdHJpZ2dlcmluZyByYXJlbHkgaW4gb25lDQp0ZXN0
Y2FzZSBhbmQgb25seSB3aXRoIG9uZSBzcGVjaWZpYyBwYW5lbC4gSSBmb3VuZCBvdXQgdGhhdCBJ
IGNhbg0KcmVwcm9kdWNlIHRoZSBpc3N1ZSBwcmV0dHkgbXVjaCBvbiBhbnkgcGFuZWwgaWYgSSBh
ZGp1c3QgaWRsZV9mcmFtZXMuIEkNCi5lLiB0aGUgY29uZmlndXJhdGlvbiBob3cgbWFueSBpZGxl
IGZyYW1lcyBiZWZvcmUgdHJhbnNpdGlvbiB0byBTUkRFTlQNCmlzIHN0YXJ0ZWQuDQoNCkJSLA0K
DQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gDQo+ID4gQnNwZWMgaXMgc2F5aW5nIHRoaXMgdHJh
bnNpdGlvbiB0byBTUkRfRU5UL0RFRVBfU0xFRVAgY2FuJ3QgYmUNCj4gPiBpbnRlcnJ1cHRlZC4N
Cj4gPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+IA0KPiA+IA0K
PiANCg0K
