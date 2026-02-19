Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aC8uJoMol2mXvQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 16:13:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DB815FFA9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 16:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B4510E6EA;
	Thu, 19 Feb 2026 15:13:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mHicC0vu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CABE810E52A;
 Thu, 19 Feb 2026 15:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771513983; x=1803049983;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OFt4HsPOA3kGezwoDYWwxgXpqEG1hCfrANKufuwqN+0=;
 b=mHicC0vug5oQ9w2INogU9txam9hVU0UhFkRnriHv9ccaa947+eiDCgnj
 unSJYmIqvAHmRItN5/nLsUX0jZ3c3h7zXKkQ/vtaCloJ/IOiH5qPEAYnx
 T5eeuBWhvHI+/dX4Ax3ZK2F2ZcNVR0pIuwwrbpiuL61s4Js7EgiqV7LrO
 Q31iV7AjwwdtEvqPtMwOyS/W1SXH0zPbAKVktJV2dUyHTujMQ0JAfO7C+
 etUk1GoSs+yMk3jRf4c7jP624jO9Nk42AmuWBxNVL7/7IYMD32WN5oVzF
 sBvge8AftXxpBT6Vm+kbJW8fJsKlXp5wviXNFw7x71GGXSnpWk5j40E6d Q==;
X-CSE-ConnectionGUID: Ff71QthSSU65yxvp8tk6FQ==
X-CSE-MsgGUID: YjY9saF/Q7mzcitjYsfftw==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="71804199"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="71804199"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 07:13:00 -0800
X-CSE-ConnectionGUID: Mg86A+1/T/urC2n3CSqsIw==
X-CSE-MsgGUID: Lzl9BSvCR22TvXIo08h4aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="218676665"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 07:13:00 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 07:12:59 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 07:12:59 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.35) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 07:12:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MIL99GUi1URm54AignMNm/maFN6k8y6ypEV/w6FcwNpQNKtfFDXRh0Ngg9snicdUp41hnLs0Ir5vaS106r0zEhv0GRNX5Ggoi+hX9IUARvdyUN6FjWPHRh+G1B3bTvrnRCJqOJKofiXN+HeFgeDL/5ZS60fLG/R3POtyxCS1AdBVgFznISeM8MXSPiUQkAlglHSjYjl0xEgpYLzDTl+aeEGdedrlQscGI1mzlcfvJ5pqkeo7/rUtLppjW4Bw/EpJKA8XzqOrS2FBUvHHC0ofOkTzKE61tXnZzdusKpPS55uDrlr82x+pbV89jLkz4Tq/BpolIhVCmSQdheyEUAmefA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Wat8IbZeG6kw/BQrb6X0D6tq1VjDBfKK0MO3BwLBLU=;
 b=uBaHI+mZJsPtTlzGNmazZYQ81nmqiFUwzaUvsM4iD24AhI9Lh1sWQ86hZ+f9rxDlLBY3bHmnAhVTCOdnkTxyDj18P/eKYaLC1j1bmagWwGIsPnZaB913Jaa4e3kxybaxjMb3bgqGShX+s6qbew4gTKp6NHTxyy26ecFMALAhODRFLGP3vPSjApGPLIokBXeRaKCDLN8T+W0HT5Mbt3+9LcWmP6GwAE94DfiM8NESezAgGjlAYRFudGyUhVKr0gIMqO8xPHL8uJ4QJ6g6En0b6jOPzu6MMIm1lH3LB5M/uqlxtjEfNIuShj2xGiagWEtp7Z76u0jRkqLvJpp6eX5mHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN0PR11MB6058.namprd11.prod.outlook.com (2603:10b6:208:376::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 15:12:56 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 15:12:56 +0000
Message-ID: <2f2a155d-3b2c-4cf9-b8cd-8116fe84f85a@intel.com>
Date: Thu, 19 Feb 2026 20:42:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: On DPCD init/caps wake the DPRx
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <suraj.kandpal@intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <aZcj08k5dG4lxRNE@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aZcj08k5dG4lxRNE@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0063.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::14) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN0PR11MB6058:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a3b6a97-b3ea-4886-a0f8-08de6fc95c19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VGFQQlh6YVNab1gvMHlUVTlzbHhWdmZ1T1gwbUUwQ1lmNHlWdXlXZGJTR2Fl?=
 =?utf-8?B?dlB0UW8xeDArTEw5aTVIZkJ2VDF6WnM2c08xajdlWS9GbTFBa1Bhc2NxTWU4?=
 =?utf-8?B?U2hpQUNrZ29WYmt3Yy84YTlNbFFkWU04QzFtTk10cys0MEE4Umw1SDlzWDRy?=
 =?utf-8?B?dm1ZNVB3L3FHQ3RrVmljZ0c3Z3FrMjZPcEJRZXBHSGdtM1NhVWt1RHZSN29q?=
 =?utf-8?B?bGdiNHIwZ0dpZDdSdU1aN2tob1MvaCtRVlJmbzcvejJUdkFudWdZTmJ1dE1Q?=
 =?utf-8?B?czhDcy9KVFN1dVV0NHR3TTYzaDlaQWF2K3B5c01rcURaUk55TC9IUElUZjNW?=
 =?utf-8?B?bTRCN3lhQnloRFRNMGlMeTk2bXJ6RmVBbTllckVVZDJ1aS9Bd24ra2dSV1pP?=
 =?utf-8?B?UFlkRExQcldtSFRVZk5tQytKWkxlQTFWOEJ3bXBXbExDVnhwYlZLWlpnSXEv?=
 =?utf-8?B?anZZNDRYcGxPRzhhY1BuT2U4OXlqcGhoVTgyeUM2THRZeHkvZWdCL3JuejZx?=
 =?utf-8?B?ajNFRnRyc08zZkhtUDBwNzY4YVBDUEY4N2h6dGEyaVhMMUJ5bVJIVklua1Ar?=
 =?utf-8?B?dnhiTFZMOEl6a0NaNzd6blZUVi9jZHlBYlNheTI5TjA4YUhhVkJsN0Uya0ov?=
 =?utf-8?B?Q2dtMmlnQ3VJQjNwRld5VDEwemFTai9GNTVCazRjYWRLcmpvdUdtMFZyVmlw?=
 =?utf-8?B?MnFCL1h6aVJDdGlCNDJMZjlydWlhWE1rRW1xTTc4ZEVIL2p2Y2NJSmRpa3Va?=
 =?utf-8?B?MDhZRWR1Q21ZWG52WitSWUs2YXI1Tkc0VmRvSm5DSkhzWmJFWS9Ob0xUSUFW?=
 =?utf-8?B?MytSbDdtVWxkMEhsMTB4eU95ZnRhTkM4eEdnMWxxZzVoand0SnEya1RnZ1dq?=
 =?utf-8?B?ZDc2R2o5WDlVVzJxM2hUWHdManZIQTZQNERPVUNXTC9MYVA2Sy9IMThNYnFF?=
 =?utf-8?B?a1J3TkNMcHVLOWVRbStMdDdvTmdXOEQyMzBNd3RHTmtHV05kOUFQcHRsc1NU?=
 =?utf-8?B?UituaFdTNldWREdOQnFRcVYzTU5wbGZaS1B0aHA0MHJQeE82akVWRUVTa2RS?=
 =?utf-8?B?YzhYZGw2enZKNFowVkR5QTc0eXpBZUxwQjBhZ25DaEdIamdOZllxaXk1ZUQx?=
 =?utf-8?B?ckIvRUdkbDg2cFM0VHJHZm9NZmQ2QlVsUmgwZk52azF6Nis4QVVBay9lL0hk?=
 =?utf-8?B?NmFUTTBFbnlJSkhiVXNGdlJKK2ZkbUdCazdpUHFlOUYzSUl1Vk9JQWFMTGhC?=
 =?utf-8?B?MHlQSUE1N09ETVAvek44NG93aCt2Sm5HSklTbGNhcUs3MFlHVVB0U3RpK2E3?=
 =?utf-8?B?Ym55NERPeXc5cjlUVDIwWEVZZlRaVEwzb3k0ZmpiWTUrb1B6SlFKdm1wUmZD?=
 =?utf-8?B?dm5VdkRhUTRjTVQ3TVdabmdqVkVoczJabDJMOHdNYjR1OEthQmhIOTNhQjRB?=
 =?utf-8?B?UFFQMXhyYW5kR2RQVVNiYXVpYUYvN3JzcEw0RGpJUThER0xtdlFKNDc3eDdt?=
 =?utf-8?B?eGVNeFA2SWdSb1hEMGlFd3dLV1lWUnNEaHNUVEl0VzNhMUxIQ0MwMzdzb0ls?=
 =?utf-8?B?dTdRT2hJWDFwcHF2UmExbjFRa3dSMGNPMVQ1QWoxL2srN1lJUTFkMjAxR0Vv?=
 =?utf-8?B?dy9nOGxrMnNPeDVNb3JXNUovUjVGQWR2WGs5WEdET0N5R1czNEI4TEVNVEtE?=
 =?utf-8?B?Z2FickZLKzZQaUI4RWVORUlJVTN3WXdzU01CQlVGcDE4R242a0VBNy9nWkJw?=
 =?utf-8?B?SVpaV05LR1pBQ2RwbUVTZXhyMVBHSndsUWl4bnRQSEFTL2JpdFFLRVhxcU93?=
 =?utf-8?B?RVlGemY2cWo5S0JXa0xGWFNZQS9ycnJDZkVCd3NVSEhIQkwvU0FDRU9Yb0Fk?=
 =?utf-8?B?S3oybFFEdWVMSGtpdjhvWWJCRkpWbW13aWpkUlpPbGpLQ1ZGekhtWHd2WGNn?=
 =?utf-8?B?Y0tRS2M4aHRjWFRQVXhGQ1I1UTJFclNoSm56OC9aMFF1aWVnSlFCdmZoenRi?=
 =?utf-8?B?a2s1a1J3dWRMclkvS1VOQ1UrSkMvbFlQNmJORTNhUklYZTUveHU5Mllnc3NK?=
 =?utf-8?B?T0NGMHBzL1BJeWp4NDBZdm5NeGk3bnpHTElxUUhMcmcreEhZYVUyUnhjcmFL?=
 =?utf-8?Q?wDss=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXR1L1NSd2VSdGkvbmJ2b1VBaUcySkdBOXY2Q09IWU0vSGRLc0o4V2hxS2NL?=
 =?utf-8?B?YUhldEo5bXdQMlhBeUQ2cFFacnFKQStXM1BiQ3BCZVNSQnExSVdad0pieDRt?=
 =?utf-8?B?T3pwbkJlKzVIRUZSWHNqbXd0WEV4UUdXVXVsSFFKTHlWRTNXT003N3NocTY3?=
 =?utf-8?B?c0RqUVV2cnMzbjQ0MzFCbFZvUnNjZ0ZSQ09uOUwxUUk2cGlyUDluTjFSblQr?=
 =?utf-8?B?MXJ1TUtpNzNoVmg4L3lCZnNKVzlEcnkyOFVrZjJjckgyREFyeG1BVlhka3lD?=
 =?utf-8?B?N2poTElrS3V3YzBMdTRoOTBpcXk0QUJ2WTJrc3ZzVmw1Y0txRmtWSXoyTEZ2?=
 =?utf-8?B?dEJZODFLZEhZOVlBUGlwZXpoeUlybURqUmNjT0FWQWIyclZwUm44Y3BOZFdT?=
 =?utf-8?B?NVlPOE1pUW1HVnJyTmhoc0hzVHhkOVF6dk1pdTcvajVuTXE1THRqU09vbHRE?=
 =?utf-8?B?Z0hOZVYydlhOK3F3V0ZRcm5rRjdnSWtGNnJlOXZkRExZajdOdkpCKytUYjQ0?=
 =?utf-8?B?UHFkTVhyc3p4NTR3WEFscUJ1cFdwcGJFVzZ1T2VOVFFuN0Fmb1V6eDdUN3cv?=
 =?utf-8?B?dmhRS0Fjbm9mSE9LOXNjampncnhxM2R6THozbDcyVjQvRkYzSkVaaW1DcEV2?=
 =?utf-8?B?cFlGN0ZrTkhvUEVUaHE3dUNhMjNoN1lOeUt5dXBYakd6RGdsenJUTGpzYy9R?=
 =?utf-8?B?RnFjQ21mOU5POHlNeDdZczBsQ3BFdjlVSHR3ZEJyK3c1OWVSZk9lVUFYUGJ3?=
 =?utf-8?B?aTVVdFNLMS9kek1CRm1pUUhLUnRMT2VjcFpBT1NuWDhNcmxyZGdmUnpTS0xy?=
 =?utf-8?B?YXVnTm5abWRPWEZ0OW9qWDNoNHNVSHdXcXhKeUE4SHNCM2VYbzJ3SUVpZGRt?=
 =?utf-8?B?bGtiRDZKYnVBQUEvRU9zOW1XUUEraGNmQUVBQllCM1QxM0crYlZUZDZYZ3Bu?=
 =?utf-8?B?UXcyZTVHSWJNYzZRYzA5YlZKZ0pQZFZxcmJRVEUyMFZDVzRpK29YTVA3Um4w?=
 =?utf-8?B?REhFNjN2OEptZXdqbDZybVZXYTJDdHZYcG5XUUtUL0FUR2ZBbjEvcExzS09H?=
 =?utf-8?B?QkRrNnhGOStvbHRBZ0NGNDllRmF3VU1SMEZ0cS9GRlZTZk43T1AyU1NoMVZu?=
 =?utf-8?B?VGVZZjJWKy9KZ2FhMXlic0Z3WG05U0l5WFQ2YVRoR2V5S0JsWS9pK1Y3TWRQ?=
 =?utf-8?B?SU1raTFrT2dsWU5vSWtDMmhFY0RIOHp3MVlsQ3RIUDczYTh6YUdSdG5YUksr?=
 =?utf-8?B?Z3V0bk5Ielo5NWM4aHdvTXJ2d2FpS3ZjNjdyeFJUa0wxTXRpeVF2bmR2YjJt?=
 =?utf-8?B?bXZ2blFGZmt0d0VENnl1ZTlCcnlUa0pRRytxbzZmZGRmVkQrYUcvejVVSGsw?=
 =?utf-8?B?ZzM1Sk14cXhCa1pxenJWL0kzL3BCdWJ1RXBTUWJ2MkhkMHRIci8vME5uV2Iz?=
 =?utf-8?B?dFBLeUh1U04wcjNrbjhUZ3pzdWJCM0pkUU04WUcrd0JTUFVMQ1UvR3d1ZzJ5?=
 =?utf-8?B?Ujd0dW9JUGZhMmt5K0NkVjlPR3RoTE8yWmdzYzMyL3JINmhpMjcxN0dhU2Zw?=
 =?utf-8?B?L1Y3cWlKUW5xbDFHdkl4WUhYMDg4amZQSXo4eDM4MjIvendnR3NaVHhGV3pj?=
 =?utf-8?B?aG1jSWNVVWZ6STJVS3c4R3VBdFZvOVRPMUhYbzJkVk4wQk5IOGJQQ2U4UzVx?=
 =?utf-8?B?eUxraWc3LzJmNE93V1RzL3IzL2ZudWtuR3UrWmNSc0tUNTRZMGsxdjNBNE9D?=
 =?utf-8?B?TlVsOUI1cjYwRVdicEZGcEo0Q0hQL2VYSzFiaHdYTVp3ZnVCK2tTaDhDTzNX?=
 =?utf-8?B?VmpWYy85b1VhYVlmL0V6UEYzYS9UQU52eDVLMTI2Vzk1L1RSek1nMDJna0JK?=
 =?utf-8?B?NUR4T2lvc1EyZHp3dHRuM1BFaTBMSVJGL1BjZ0RPR0NVMGpEYnZhNE1NZWxx?=
 =?utf-8?B?dDlYSE5PSHNpWldtejZSUWVHSjdmVDEva003SEtTN2Q0RTFlVGJ5OG1abTVY?=
 =?utf-8?B?eU1pNSt5cCswcTV3SWVrN1pSLzBmQm9kZzQ4YWhRNXRUUVZsNEE3b3Q2QUw1?=
 =?utf-8?B?VUtLK2o2NTNvc2ZKcjlSQjFKYzRMRFhIUC9FeTlvUG1hVWtzYzlqRENON29Z?=
 =?utf-8?B?M1YzWGJ0TmZTNEY3Y2dQL0VRa002ck5HOHRqak9JSlJ3T3g1aWFUeXA0T2NJ?=
 =?utf-8?B?aFQvZXpZUldYYW1yUnlEeURqcHQwWnphZ3c5RUZ0Q1JxSVF0Z1gvTVdJcWpv?=
 =?utf-8?B?QXRPL0g2dStYZWZja1hqaXVUcG5GS1RIYU5pb0ozQk1hb25mcVVVdjdjSDdn?=
 =?utf-8?B?VnBJL2I1dzVKc3VsM3ZoTVZjQjZvWG1VNEJTVUdjTjNUY3lodDZkUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a3b6a97-b3ea-4886-a0f8-08de6fc95c19
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 15:12:56.1403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FLnBrIU/eKX8BAs0kM40yYIft3CWv0EB1Sm7OOKm7ArwUS5tGWt27IXMZOTWBqwcSFZjgfxtqD1cHwScf9CoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6058
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B8DB815FFA9
X-Rspamd-Action: no action


On 19-02-2026 20:23, Ville Syrjälä wrote:
> On Thu, Feb 19, 2026 at 03:13:26PM +0530, Arun R Murthy wrote:
>> Before reading the DPCD caps for eDP wake the sink device and for DP
>> after reading the lttpr caps and before reading the dpcd caps wake up
>> the sink device.
> Why?
Just to ensure that sink is awake.
On eDP init, as part of reading the DPCD caps during the AUX transaction 
its sometimes observed that the AUX tx fails with timeout. In those 
scenarios even if the retry is increased to 1000 AUX tx will not 
succeed. May be that sink is in sleep or unknown state.
Spec DP2.1 sec 2.11.7.1.5.8 says if there is a NO REPLY for AUX tx this 
can be due to illegal cmd or sink in low power state.

So in this patch we are trying to wake the sink device.

Thanks and Regards,
Arun R Murthy
-------------------

>
>> Closes: https://issues.redhat.com/browse/RHEL-120913
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>   .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>   3 files changed, 45 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 454e6144ee4e..2fbb947e6cc8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4705,6 +4705,45 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   	intel_edp_set_data_override_rates(intel_dp);
>>   }
>>   
>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>> +{
>> +	u8 value = 0;
>> +	int ret = 0, try = 0;
>> +
>> +	intel_dp_dpcd_set_probe(intel_dp, false);
>> +
>> +	/*
>> +	 * Wake the sink device
>> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
>> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>> +	 */
>> +	while (try < 10 && ret < 0) {
>> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
>> +		/*
>> +		 * If sink is in D3 then it may not respond to the AUX tx so
>> +		 * wake it up to D3_AUX_ON state
>> +		 */
>> +		if (value == DP_SET_POWER_D3) {
>> +			/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
>> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>> +					   DP_SET_POWER_D0);
>> +			fsleep(1000);
>> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>> +					   DP_SET_POWER_D3_AUX_ON);
>> +			break;
>> +		} else if ((value == DP_SET_POWER_D0) ||
>> +			   (value == DP_SET_POWER_D3_AUX_ON)) {
>> +			/* if in D0 or D3_AUX_ON exit */
>> +			break;
>> +		}
>> +		/* Sink in D0 or even if read fails a minimum of 1ms is required to wake and respond */
>> +		fsleep(1000);
>> +		try++;
>> +	}
>> +
>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>> +}
>> +
>>   static bool
>>   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>   {
>> @@ -4713,6 +4752,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>   	/* this function is meant to be called only once */
>>   	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>   
>> +	intel_dp_wake_sink(intel_dp);
>> +
>>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>   		return false;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index b0bbd5981f57..3f16077c0cc7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>   bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   				     int hdisplay,
>>   				     int num_joined_pipes);
>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>   
>>   #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 54c585c59b90..cbb712ea9f60 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>   		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>   	}
>>   
>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>> +	intel_dp_wake_sink(intel_dp);
>> +
>>   	/*
>>   	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>   	 * it here.
>> -- 
>> 2.25.1
