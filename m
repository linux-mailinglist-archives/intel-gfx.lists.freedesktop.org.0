Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39001A6D5A2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 08:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD4AD10E214;
	Mon, 24 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fQTqK8Lo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E755610E214;
 Mon, 24 Mar 2025 07:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803193; x=1774339193;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2LlL1fMueD6ttcPheuu6JcVYlIQRq1WAawIHl65rFms=;
 b=fQTqK8Lod6VI9dT1B3w1l/82uDnijgZTKPZOOOAiHYu+pCwecQWI2MzW
 pKXdmUzJFGYTonSOHwfy9PsRe9WLaNFsCN5LefvlXUb+iKOplNqNI7+F4
 nR2McvJDGBzsdYpXmVk/QJZJTmNsme+AjU5Hag0K04szM3oZOOYGCfwVV
 aj4ofd7Uf4raDDJ9ejhzDa9rEESPasTfNcQhbbBnyyHSoErODW/b1o+z/
 qoMSafGA7hP9yNT0Q+8b1gbd8WHHOHdkfuNiMfgbPAcYaYpea6ZotUAAx
 A8GtUU+zGh50eQvY8EykcHRkSYdsIt/cG9QEprWKwStcMW2JjD9Okjjzg g==;
X-CSE-ConnectionGUID: p0EYrz2aT1y4womW8Y/DXw==
X-CSE-MsgGUID: eDx7MWPYSaasUu2jOwIsMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="44159226"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="44159226"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:59:52 -0700
X-CSE-ConnectionGUID: MPHvscdOST6m06iYRd+yJg==
X-CSE-MsgGUID: B6EFijsmQ5Ood/XAxYL5xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="129035971"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 00:59:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 00:59:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 00:59:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 00:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KSGMQgWvK7oFMRYMQlMONjRQCgAwGaicpUDJUS/xk5N7+VNjKl9Jj7kHQQpypqF+lISFJOHQoFvpTd3x3rbTExh8Vm4oKhSkAxtxXomi2QSfuVMvMi2mZsw/paxVmdHMbzDabIX4XBF0Nh3IDYby9rElm+GFOjVx0qw27wV71MQpygeOKGTsebHl3azEBzO0xUGxCR2Vfdki1KABBsrg0g9zu2cg0McR8lUqxbggH8EmQLVB3cIKdXYnKcoHT3B4AIyOWPsxNae+QDytESfvHP0QkMBPBLd7llMTA8CrxDDrf75jjbNIK7PCzMPpnFN0DqNwxCzSLCJ74TfqFUqPFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2LlL1fMueD6ttcPheuu6JcVYlIQRq1WAawIHl65rFms=;
 b=Q/nFf3pZsxNGeswFZW+rGP1JY2zC997SzLkYmhObIVEQkOQBXruxqk8V3GXwNcYvZfbkZnbOENfp1v3ssayeESBASCDXVV64jl28zsEclNCNnFK9YuKp/SwkE9hhcv73qW93rd8Z4ABn1VU0txiNX6njET0cR4FwGSVMtCJJMChbEMr3fpjDsuuI9TbT/mAORwnt/44bA9SCn29KZOZScp2YwzFeGY4ra+5JXdDd96u1/jsDs327bkQ/+ojiPTvY3dubG4/ITymG0ZJPGCBQoHQwF6/aMciceeP8o5uIG3kvsKFkFn13t3IuNlkNCrkBbHY1xxGL21ZNgBWU6y1lHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7832.namprd11.prod.outlook.com (2603:10b6:8:f5::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.42; Mon, 24 Mar 2025 07:59:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 07:59:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 1/8] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v6 1/8] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbmQZjCIv9WNq1EkqAuS3Q7qIPpLOB82AA
Date: Mon, 24 Mar 2025 07:59:50 +0000
Message-ID: <04fbc4244a577907c5ac274e1a3e5919d39d1f8f.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-2-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7832:EE_
x-ms-office365-filtering-correlation-id: bc83ead5-39df-4d74-d96a-08dd6aa9da4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SWJlazJ2SVpEZnY0bWxEYkIvMTNXOFVXcmJDRFJrczBKb1EzVnAzNWFYays1?=
 =?utf-8?B?ek5RSk04c3QzWENwQVNpbXkyT3hoTmF2VXptOWVNM1dQOWtVSXl4N00yQ3F3?=
 =?utf-8?B?ekg5QnltSDV0MThVWUtrSTVZTzFUUlRoOHRwVkRxZHNUd1lTYS85N1FlZWxz?=
 =?utf-8?B?QkMzM2p0TGxCcE93SWxmOTB3SXUxc1VhYlN4OGZ0RmYzdlNIenVyWWFyRFZq?=
 =?utf-8?B?T3dxRmY0cW5rOXJVRG9LYkdERkd6Y2k0L3JRcVpBYTZHN3FKZGhaZ0ZmQXha?=
 =?utf-8?B?UGtkTFZRUml5WEdzRzJBZm1uTDFIa0pFc0l2ck5mdEExZWxrdFIyMzFMYlFm?=
 =?utf-8?B?djJnK29EWW45ZFVJdzBmNmVQQjgwMzBzU05qSXZISzg1Qzh1dUM1OWVsWU1Y?=
 =?utf-8?B?ZHlCUEhFUVRkRHlnN2tCOU9LR2NYWS9YRjNPREd0eE9PWmFlZVFsYmlNaXZO?=
 =?utf-8?B?YWhvQTNFbjAyaE13dlhDR05ZN1pML2l5aW92TUV1anZ3cEhHYTBDT1M5WUxH?=
 =?utf-8?B?ZlNoZHZPbk92eTdkQ3FPTUR0Tk1pVGlUeldzQlJlZVQzSC9WUHF1aDRBUkIr?=
 =?utf-8?B?K3gyR20rQy8wRCs5VmRHeVU1WDBUNzloQ2J5S2lxcDRaREtucGkzVjRQUkgz?=
 =?utf-8?B?MlphMDNReCtqQ0VwNjM4UWlxTXNqWk1UOHVEdWNzVlRrMGl6WTZTSnZXVmtV?=
 =?utf-8?B?UG44ckN2UzZxS09UYU52QVYzR0VtUHk1SDVSRmM5bEpjNWlXeEdQaTc4MnNH?=
 =?utf-8?B?VTRGTERzZzFZWkNyeGswOEJHTURwdjlkaUJCZ25TaFdjK0lOcmE3K2RNNEZD?=
 =?utf-8?B?OHhLNnlMNkZVTDZOZjNmVTlXUTVzVHZKaEphU1hwK0hCYzZYOHdwRFlOS3BG?=
 =?utf-8?B?KytWcTA1b3A0aE1SWlpDTUI3MmNCMGdHTVFNVDRpM2RNaURwWnVKN2V1ZDUv?=
 =?utf-8?B?aWFQOHNvUVFhclZXVWNvVDhpTXlPK0VhN2drVWJhTHNrUjN5TEU4VEJaWkx2?=
 =?utf-8?B?SXBlQm1HdkdzWnlVZ1gvYnRaVmluZm42L1Zic3ZlVElXVzlWZnFQeElaUDcy?=
 =?utf-8?B?ZFZSV2hKcEtEV2lWdXg0VG9hbWV1WXVBOHNrSDNKWFUyT3VDRlh4WTVqS1ZI?=
 =?utf-8?B?aVdFcE4zc212ZFBmNlFmNGIxaE5kMUlyWVQvN0dua3B1ZnRqczRRVWtJWllZ?=
 =?utf-8?B?Z0tISDNWTW1RVFBLdWg2djBUdVN0cmF5L3NxbHpJNzlTV0c4YUljenVZTm9G?=
 =?utf-8?B?NUJvOTlwWjFySjVKdE5na25obFBvbytGdWRnUzQrNHFqKzhoWlhMRTZBcHNv?=
 =?utf-8?B?N1kwVmY2OWxQSVEzL3lLTi9jbzh4VmYwMmw2ckJwcTRRbUNGL1M5YWRQaHA1?=
 =?utf-8?B?Vlh6MXN0Ujd1Q1VYSVgxYkVSQi9pK0V3dnN6Z2hrU0hacHlFOHVreTQxNE42?=
 =?utf-8?B?TlVoUmgwQ3l4aDlVdkkzVWVvN2pDRHVuMXlKSmlVTi9nU3A5R2tFWEhtc2I0?=
 =?utf-8?B?U1lPSFpZSllZN0V3U3BTMTgrVWp4ODdBb3VoWU9pNktYUG1COTZZSk5zSUE2?=
 =?utf-8?B?d0k5NXBYc0w0NTJnSzlWMEJ2bng2S0p2OTBvSjI3WkNvakFIdk5XcWRTbmJP?=
 =?utf-8?B?dTByUi9acW0rK3RzSHh0bzNseVFxM2J2NVZwQldoS3dOd3ZSNEMrSjNvOVhB?=
 =?utf-8?B?NndHMGh2TXdLNWFSSkxpSDhpSTh6eEJnck1VdjBub2o0UUVOTUY3czFtYU5D?=
 =?utf-8?B?Z2l5K2ZDWjc5QUFabnQvWEJ1VGJ2eUVSWER1T3BQM2dpVHZKM3VLV1krMWU3?=
 =?utf-8?B?anlsdjl6ZDgwYm9GQk5TZlRWdlhDN3NXM0pNS092Z3FuS2Vya3JEVHVRUkRX?=
 =?utf-8?B?d3VqamYxUXVaZTNGNVlESG1kTnd5RE5iOFRFZGNTeUR2VUlQNkg4SHBuVTBO?=
 =?utf-8?Q?8oQZBNcc8tIbEHOxNcxmQ3RFh+SkqG80?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWtzcWUreE01Vnk1SDdGb3hpRFRYMHpVNmo2T3NEbXFZdk9jbWJMejNOU3Ix?=
 =?utf-8?B?dnBrMy9zRkM5cnZQekcwSnZIZXFNbENOYmlEbDYvRVlDTGZ4SXRTVTEwRXIy?=
 =?utf-8?B?TmY3bGFVV2MwS1hiVXQ5dU1saWZvVUlBL1pJQTljR2pSMElkV2k1cUVTd3M1?=
 =?utf-8?B?ZjdNcXgvTFN2c1JVS3V5MDlrUDRvYURVUWZ2eXl5em1HbXNzS1VsTXlMVTVy?=
 =?utf-8?B?K1I2ZDY2dVRMZU10Ukp2M2ViN2JpYWdnUk1LaDBwU0VvekdtUENBVmdyZWVw?=
 =?utf-8?B?NHNjWXFQaHhvT1ZUWGxwVzNiNWd4OUFrSmorZi81cDFMS0dYVFJXZGRmd09G?=
 =?utf-8?B?ZkhDWVkyL1lvSjRoM2lVRXM1WExkdlZsKzlZSE5CT1JIK0YvdXl5RlB5dmYw?=
 =?utf-8?B?NkJCWEVDVGRjTm9PMGFxNFpuZ1F6OFFybzdXOFg3aTVtbjFXMnRDWVYwNG84?=
 =?utf-8?B?aEVUZDE4MWhWdGVhR0hGYkI0dkdZOThQcGVCSWd2NXlEa2xzRG5qZ0lBaWJh?=
 =?utf-8?B?WnR5NHVQMDJyRmhsMDliQUdwdE1VRWpoVTd6L0lSQllqUU1ldzYwaktKeElu?=
 =?utf-8?B?YlRkMjlZcVVzcEY5eXM2N0pqRFVvS0tuSjE2MkVWaWNJOXBjd28zc29KZTBX?=
 =?utf-8?B?dEVOSmRIT3JPRXliUkJibjFSN1oyeVB2VHV3WjBrUElEN202UFVvQ05sK1E0?=
 =?utf-8?B?UElPaU9CMjdaeXlCWExUc0NOQkIvTHJmOEIzaEZxdWZhTFlDaXpWdjhqVm5j?=
 =?utf-8?B?c2s1eDlVQjFjcTF6WCsrWnE5cHNRMG15V2xiL25ZbVpUdm83VkoxdGVBL1JG?=
 =?utf-8?B?ZDJFeW5tcUw1MlVYZnM1enJXb081TUVubXc0TXdGaGdCdGxoTEFIUUlXYlF3?=
 =?utf-8?B?R2ROdTQyeWZGUXI5ZjhheFpDc2VsUnV5U2xlNlRHamhJaHM4dlFvWDE1L29L?=
 =?utf-8?B?QnVwMkJMZVhMZWErTjhELzlaOEFoZEozYkIwU0VpYXBYR1dRWm9nR0dWRlRG?=
 =?utf-8?B?dUhQWUkwUDh4eElzbUxjTWpTWWE5dG50YTRRN0d5ckE4cnpmK0RPTEl2eElk?=
 =?utf-8?B?aC9aK3dXNnpmZE5Zd2JKblYvdm9OVi82cUN5SmhkNllQdDlsMnFwcFhLbi9F?=
 =?utf-8?B?Zm1tQ1BnT3MxZG1haExBdHovaVZlYkdIcGVneTFpWnZCb0M4Z1AydkIwQWFP?=
 =?utf-8?B?R05qekxQaTVINllHS1RRY2lpTTlZSUZMTlJDMys0dTN5RGlBb2pqUCt1OXpk?=
 =?utf-8?B?djVvVEV1RHYwejNkdG1Yc3hOcVhnR2loaThMYUZQMlRPS2NEWGxkWkRUb1Uy?=
 =?utf-8?B?eTZWaHRRUmhSMGtwNjZxSitpV2xtU29PZ2VZM0JrcmE0cEw5amVQQ0RRK3gw?=
 =?utf-8?B?YTRjUlJsQVRXZFd3cGZSbG8zQW9mTDFNMnF4LzlXQk1JTmlmZ3lSYmZZZ1Fl?=
 =?utf-8?B?dDJiOXNKcVNESXBPWS9rL2txeFhvTDZteitaQ2cyaFBwL2N1ekVHMytOc1BQ?=
 =?utf-8?B?bmM2bWZ1akxGMmlKcjdOYkdXQVVkMUUrMC9KQjFhRzd0bXhkNkp1L0RBWHFu?=
 =?utf-8?B?cEhVY08vUmV0Z2dLYzVrblhSeHhhNDIvSGhTZzZadG5hOXFVOS9EanZkamtN?=
 =?utf-8?B?M24yTWptR1Z2b0tzaWgxNTlJV3lGYTNTOW1tVExNZGE2bUtnY1hab1kyVlkx?=
 =?utf-8?B?aFNqaGFLdW1vbEE1MWNURjVSQXl3VDJMUU03USt2Mm5lRVhZcEFjN2JHeUZp?=
 =?utf-8?B?VUJrWVN5NXRZVlBFYzVtVXlUSW9CSnpuY0dxTFNQWC9GdFRtTlo1SCsxOFFt?=
 =?utf-8?B?blFBSm1ra0Z5ZHJLN3pxMjRDREZJVjhtVndLV1JyNnErVHNHeGRROFVmRVRN?=
 =?utf-8?B?Q1hDcnR6bXU1V3NnOENzL3VrODEzQ3NyUVJzc2lHSGhKdFE2dFhNWXhud0VB?=
 =?utf-8?B?V09IMGs2cG11dzM1aC9tWkdrdDJ4Q0RhVGdlVExydk1ndURiRTAwcnBhTHN6?=
 =?utf-8?B?T0JYM3pzYTVkVmp3aHkyeDFGWjZzV1IrQlI3ZUlXUU1QYjhqMCtPaVBWK1M3?=
 =?utf-8?B?elAwb2JsSjJ1cUM1cDk0Yjd1NEZwTHRtMXkrOXpSZi9YUDRjdmVMMU12VnJv?=
 =?utf-8?B?SWZ3SnRxSTNBMXNoK0ZNbXBLSHVsSjd0VndTdVhSUmd3RWM2bzBnUklodTdz?=
 =?utf-8?B?eTB1Qy9pdkdtNnFjNGdrQlA4NEtYQTN4RDZyb0MrZm9sZlE2YUxmNnRmM3lQ?=
 =?utf-8?B?ZDZCWERjejFHNnVUK0NqTjc2WElRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5DF5B55D4E1374A83B0A58EFBFAE661@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc83ead5-39df-4d74-d96a-08dd6aa9da4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 07:59:50.0544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lb4h9pfbEWSXQNt9J1o0mpbxzkCl2eFLeOChhMU/2hSoc0A+dXhX6DhoPKypqy/bk1Ivjqy3jdtQts/SlWGhFCtgt24uqdPaXtBxNissf5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7832
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBFbmFibGVtZW50IG9mIExPQkYgaXMgYWRkZWQgaW4gcG9zdCBwbGFuZSB1cGRhdGUgd2hlbmV2
ZXINCj4gaGFzX2xvYmYgZmxhZyBpcyBzZXQuIEFzIExPQkYgY2FuIGJlIGVuYWJsZWQgaW4gbm9u
LXBzcg0KPiBjYXNlIGFzIHdlbGwgc28gYWRkaW5nIGluIHBvc3QgcGxhbmUgdXBkYXRlLiBUaGVy
ZSBpcyBubw0KPiBjaGFuZ2Ugb2YgY29uZmlndXJpbmcgYWxwbSB3aXRoIHBzciBwYXRoLg0KPiAN
Cj4gdjE6IEluaXRpYWwgdmVyc2lvbi4NCj4gdjI6IFVzZSBlbmNvZGVyLW1hc2sgdG8gZmluZCB0
aGUgYXNzb2NpYXRlZCBlbmNvZGVyIGZyb20NCj4gY3J0Yy1zdGF0ZS4gW0phbmldDQo+IHYzOiBS
ZW1vdmUgYWxwbV9jb25maWd1cmUgZnJvbSBpbnRlbF9wc3IuYy4gW0pvdW5pXQ0KPiANCj4gU2ln
bmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNClJl
dmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
LS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqAg
fCAyNQ0KPiArKysrKysrKysrKysrKysrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5owqDCoMKgIHzCoCA0ICsrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMyArKysNCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqAgfMKgIDMgLS0tDQo+IMKgNCBmaWxl
cyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggNTVmM2FlMWU2
OGM5Li4zNTQ1MTBiYjQzN2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jDQo+IEBAIC0zNjcsNiArMzY3LDMxIEBAIHZvaWQgaW50ZWxfYWxwbV9jb25m
aWd1cmUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJbG5sX2FscG1fY29uZmln
dXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gwqB9DQo+IMKgDQo+ICt2b2lkIGludGVsX2Fs
cG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ICsJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICt7DQo+ICsJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsNCj4gKwljb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19n
ZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyOw0KPiArDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAhY3J0Y19z
dGF0ZS0+aGFzX3BzcikNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJZm9yX2VhY2hfaW50ZWxfZW5j
b2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCj4gKwkJCQnCoMKgwqAgY3J0Y19zdGF0
ZS0+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsN
Cj4gKw0KPiArCQlpZiAoIWludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpDQo+ICsJCQljb250
aW51ZTsNCj4gKw0KPiArCQlpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4g
Kw0KPiArCQlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gKwkJCWludGVsX2FscG1f
Y29uZmlndXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gwqBz
dGF0aWMgaW50IGk5MTVfZWRwX2xvYmZfaW5mb19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9p
ZCAqZGF0YSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9
IG0tPnByaXZhdGU7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FscG0uaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5oDQo+IGluZGV4IDhjNDA5YjEwZGNlNi4uMmY4NjJiMDQ3NmE4IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBAQCAtMTIsNiArMTIsOCBAQCBz
dHJ1Y3QgaW50ZWxfZHA7DQo+IMKgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+IMKgc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGU7DQo+IMKgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsNCj4gK3N0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7DQo+ICtzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gwqANCj4g
wqB2b2lkIGludGVsX2FscG1faW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0K
PiDCoGJvb2wgaW50ZWxfYWxwbV9jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiBAQCAtMjEsNiArMjMsOCBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAkJCQnCoMKgwqAgc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUpOw0KPiDCoHZvaWQgaW50ZWxfYWxw
bV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQnCoCBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+ICt2b2lkIGludGVsX2Fs
cG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ICsJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiDCoHZvaWQgaW50ZWxfYWxwbV9s
b2JmX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7DQo+IMKg
Ym9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKTsNCj4gwqBib29sIGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDNhZmI4NWZlODUzNi4uZWI0MjQzY2UxMDdmIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiBAQCAtNTUsNiArNTUsNyBAQA0KPiDCoCNpbmNsdWRlICJpOXh4X3BsYW5lLmgiDQo+IMKgI2lu
Y2x1ZGUgImk5eHhfcGxhbmVfcmVncy5oIg0KPiDCoCNpbmNsdWRlICJpOXh4X3dtLmgiDQo+ICsj
aW5jbHVkZSAiaW50ZWxfYWxwbS5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9hdG9taWMuaCINCj4g
wqAjaW5jbHVkZSAiaW50ZWxfYXRvbWljX3BsYW5lLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2F1
ZGlvLmgiDQo+IEBAIC0xMDQ4LDYgKzEwNDksOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wb3N0X3Bs
YW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCWlu
dGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiDCoAllbnVtIHBp
cGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+IMKgDQo+ICsJaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3Vw
ZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gwqAJaW50ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRl
KHN0YXRlLCBjcnRjKTsNCj4gwqANCj4gwqAJaW50ZWxfZnJvbnRidWZmZXJfZmxpcChkZXZfcHJp
diwgbmV3X2NydGNfc3RhdGUtPmZiX2JpdHMpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNGU5MzhiYWQ4MDhjLi5jMWRkOWM3MzlmZDQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTkw
Myw5ICsxOTAzLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0
DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQnCoMKgwqDCoCBpbnRlbF9kcC0+cHNyLnBz
cjJfc2VsX2ZldGNoX2VuYWJsZWQgPw0KPiDCoAkJCcKgwqDCoMKgIElHTk9SRV9QU1IyX0hXX1RS
QUNLSU5HIDogMCk7DQo+IMKgDQo+IC0JaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+
IC0JCWludGVsX2FscG1fY29uZmlndXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gLQ0KPiDC
oAkvKg0KPiDCoAkgKiBXYV8xNjAxMzgzNTQ2OA0KPiDCoAkgKiBXYV8xNDAxNTY0ODAwNg0KDQo=
