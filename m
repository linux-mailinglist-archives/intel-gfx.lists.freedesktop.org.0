Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3679A34FD7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 21:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 754CD10EBA7;
	Thu, 13 Feb 2025 20:47:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XnHd4k9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B294210EBA5;
 Thu, 13 Feb 2025 20:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739479666; x=1771015666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gW38Ca2BIks+5c8UT5g5svAtfqAQY/HLBavCVyR7nyI=;
 b=XnHd4k9a9lSdm9WELBX51aZHN+qIdCoosEvzqE8FkaR276iU2a7jL50e
 pWNDf+5cPXLSZiVXY1994QQ5ZJHI6sJeKHxqgELzo1Nnp1BXIaf+GbJ5a
 Qo9+fhP487FP15Rlp4ducEWP9X0n1BYIJDqkp7UY1N3EQQeHLkupqCvL1
 KdU3pldoO9gPuzIiPtvXh+8SBt/zcFHl6ZLFJr7356A22wUZvvwqfQm1q
 +KaroorbMoP1RsCGKgk2lMa1fGj2LKSccDO373WDoaEzf4HPB7cjVFQJ7
 oz+HTuwqhrt07kypecVrjr48TD78rJ993Frx+xpsQx6TtzYxmuCB2yY0N A==;
X-CSE-ConnectionGUID: S7Wm1z5PShCglCUsQF83eA==
X-CSE-MsgGUID: w3sMglX1S8CruhcpZsy7oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57745449"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57745449"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:47:46 -0800
X-CSE-ConnectionGUID: 1XxPf9bCQJqGSSQaMQBmag==
X-CSE-MsgGUID: gIvPKowwTB65jDf94cSwoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="118180138"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 12:47:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 12:47:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 12:47:45 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 12:47:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wLyoiLvyRcKz/XtEcbzKcrSlPkTOw3475OVQv4fbEPSO7ravGZea+v4AMVF7CLxBUAAZYE8LZrxOSvnBJt/RnFpzArzerKsRU31gy7lpsXxiuuCd3/f8eT03GojHZYRaVdywseihsZKePYQyYsDEGlT2W20eeNDt5eyTS9So5Gi8UxbymPN7EqXtIMSBhXw0Hmi7Tbk4Xcd/gP2h30Lpptohw546amk2uKXVyQtd1Op5n93v/mlVWfp1k4Fh8r+nRcYTe7MhjbWoloXSOb3MnbL+zzjCDZgdTmPp6OwsUn0Gxxge8it2AOUFXbpbe20YvfR3Z1E5xdo4eCwu5TPsXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gW38Ca2BIks+5c8UT5g5svAtfqAQY/HLBavCVyR7nyI=;
 b=EcHa+VStb3w7hJG2NsGqEi2Kf7ce0GGsjKZD14wvaJeObyhlNb0BFqzQjGLp1Bh/NTp5RfdqMjfpylxhEBu4tlnoK4gnA9z+JaDI0/HrLbDFRvL2HrUmDz2zIJuFzlGf4B8oHLwWob1GpCHkYOgd4Y4tJry0ba49xfFxdtIIA39M05NFEAcXEnzC2mlH18HDWD9qYzRdEeTXLggwOOH1427UBdqRCH3T9GT5hnJGcI4m7eCdSpMA3NoeAf+Vq0fl1tPuNsOT23ZOQ5OMli1nudAdErMDFDrtoDzvs9IdaVwV7IY+UhUpST8B2lrjtGzFzSWwrjrVhqokS3JGIqeJ8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW4PR11MB6933.namprd11.prod.outlook.com (2603:10b6:303:22a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Thu, 13 Feb
 2025 20:47:01 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 20:47:01 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/8] drm/i915: Introduce i915_error_regs
Thread-Topic: [PATCH 6/8] drm/i915: Introduce i915_error_regs
Thread-Index: AQHbaD7tvYNflYZH9EiRjSgOuVuuZLNF4FyA
Date: Thu, 13 Feb 2025 20:47:01 +0000
Message-ID: <d45cc8e649df49a9b69f7d3e1c186405512ffcd1.camel@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20250116174758.18298-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW4PR11MB6933:EE_
x-ms-office365-filtering-correlation-id: f87416cf-792f-4d20-bb13-08dd4c6f911f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WTE3UWlMRHRtNGdONEVFVFEzTkgrMWJnZjdtQWVkOHFtYkg1YUQ3OWMzR3NN?=
 =?utf-8?B?WHluclprUEhLaGMxYTRoMlY2U2dUS1YyVXY4MXo0cUJwMlNUaVR2MjBKekhN?=
 =?utf-8?B?V2MwbC9ZRVFVMTY5K0RjWmQ1RGUrMU9uYkRTZWh4YXg1SEJvSmRnZDZ2MWo5?=
 =?utf-8?B?SURrR3E2M05EYTdUREZ2UitYbktDaWc5c2dkbDkwYXh4dkhIcXlQeXFsbnp3?=
 =?utf-8?B?VWhNQk5yNWh4bzFQcE5LVm9lMUhYRDUvZmdLYTg0WVhyb2FBNTdlanM2RzF1?=
 =?utf-8?B?WmZnQmozVVNjdHN3amNMUXA5UXdvRlBsYUNXckk5MGd6K1MxVkJ3S2tBbFNI?=
 =?utf-8?B?My85eHJESHBxRUtvSlNrTysvVGJpR1VzQlhsbXhONVVobVBjczAvNHNMZzln?=
 =?utf-8?B?UGR5YjJSZFBGNlF3dThtM1lOWGtqcmNyMlhkMFJZSG4vYmZKb0pMRG5ncEhB?=
 =?utf-8?B?eCt3bWYxVk93SWNReHZkMEU2TmRWQnUzTnRRMkdLbHBTQlZHUVBVQUYrWWZ4?=
 =?utf-8?B?VEpZd2FkdEg0WDk3YTFENUlQM1UyRUVhSWJDd3ZwUjBBeHk0ZS91QmJnVm1K?=
 =?utf-8?B?Y3laOGpmNUNXMWtuTzNEdHdWYmpKRDN5MW5Ia2xZbFB0NGM4TWYyL2Nuc3Vm?=
 =?utf-8?B?VDU1d2IzZHFVQlc1SE1VNEE0c2FVZzZLOFVrOUF0YUVHVnJuYUQ3RWJqZTVn?=
 =?utf-8?B?c01vdzh5Z01uSW1ySU5JamRKZmJ2ZHFnektqbTNSOFZjamQvL1UzcEJ2V2pv?=
 =?utf-8?B?bFo5SnhFRG5EOUJwN0wwaFZYbk9Rdk1hLytvZ2VLRzNsaHEvemw3QVYvQXBq?=
 =?utf-8?B?Q0k4YXdOaDN1ZW9LQTF5VFdJMGtaMTVaR2JWRzZnL1h4cTNIQ1RVeFB4UElN?=
 =?utf-8?B?RVdnK2cyMWl4N1d2ayt3c2t5R2ZpblovdjNmZGljOVh4bXE2SHBoQWxDd1I5?=
 =?utf-8?B?WTIramY1ZTAzMk9hMDhOeTNhMTRHZ2Z3VTJVanFBVGY1QWw4aHJVTXk0V0N4?=
 =?utf-8?B?Ni85YWMrK3pCcGNsUHZENFAyN2ZaRHhPd0hQTUlSNVdhdklUTlM3MjcrZmRV?=
 =?utf-8?B?ZEVFR1IzWjVCN0tQbmZJNE5vVlk0Z1pUVmd1WVFsdW1qTjFUMkpuUTE5UVpI?=
 =?utf-8?B?V1pJL1Q1TkN3M3ZqWGVJU0d5NERCTzU3clRZWGRRZG44cURJclBPVG44RytO?=
 =?utf-8?B?dWJNSHlmM3F2SUtQSEkrWW1GVjRwWDZSZlA4WE13RHk4SEpra1dCdDUwV2s1?=
 =?utf-8?B?RHYveTlwdllOdHZTdFR6UFdONFlZVDVQZjdoTzBtazducXkzNGRxTFVuVDV1?=
 =?utf-8?B?REI0bVdoc3d6V1B5U3hJaTdUbEVibDRaaHJraVhjQzM1QVora2g4V2VYSnAw?=
 =?utf-8?B?VWE2Tjlzb0ZQVGxKSDUrNVI5eTF4Zkl4SlZBM2o0eDkydVN4V1h2ZFUxSURn?=
 =?utf-8?B?cE1FbC9tMTgxUExXV0dxeE9mVzlydTJObTNNSDhrd1Ezdm5WV09IclRyS0pZ?=
 =?utf-8?B?N1ZyYzJTZnQwcFYyYlFadFpualVtcGEwcGhEYVlISjVJbGRER2pac3JuNnFY?=
 =?utf-8?B?UURlc1VEQU5nMjFFUnJ0M2pGRXZvZThmUGU0cTFlZU85ZHJVblBoVEVkL2JO?=
 =?utf-8?B?QUJzR0JLR01ZTmxxdXpxRlhOREczM1psd1ZUYmhJaGJEYlozOE9VbXo0V1FR?=
 =?utf-8?B?YkhmUHc5NmU0OFhDalBaa0VzclNVRkxoTTlySkNPRHBXRzJpcG4wYUVETjBC?=
 =?utf-8?B?WUJ2bmdBbDVvUEprOGVDdFNxcEhxMTF4dnRqbGxFWU1wWXpKc3R1cWkwQ0Ra?=
 =?utf-8?B?Vi9lYjQvRWRIS25MMmhhTnVtK1R0MU93N2QvU3AxVUtGTjE1NHpOVjNkNjJC?=
 =?utf-8?B?NTg1ZFVEMlZqa2FqU21uYUFXckNyTHdQbkl0cE5FcUI0aSt2YVdjNWlVMFlp?=
 =?utf-8?Q?uaxfJ1WTRcd1fh+kuBN+lSE68yTwgg6Z?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UGVVeHhNSWpqdlQ0Q2ROd1pEMEErSzNiKzZoSUhIbncwdmNzR3lXLzdTaDAw?=
 =?utf-8?B?UFE2cEYxZlBDOUR5L3VhdE9EdnczWlk5VWMzamM5M3BXVjBhdWZCWmtxTk96?=
 =?utf-8?B?L1BzUVJIZWdXeFphNnBWQ3pHanZhRE43S2VsbHdnN203a3drcEp0ZXJFbGJo?=
 =?utf-8?B?TnYxYnREeHpOcnNNM1dqb2dRbDJNeVY5MFlNOUhWWTJVOTNhb1VnOUtPTzdT?=
 =?utf-8?B?M1hOcHppbkhDUlZxRXlCNUNWZ2ZIdnlGaFgyL0R3RWE5dnErRGptcWdLc2U0?=
 =?utf-8?B?WUhGVUFtbzdvOWJzV29hSExWQ2ZDTzZtaGFZTEh4d01LUXpyaVpGYng4NWlQ?=
 =?utf-8?B?SmxLSURIRFdaZjYzYit4Z3BEV1dxNWpJZFNndS9XZUJVWE02a2V1RzVxK2pp?=
 =?utf-8?B?ZXpsYjVEdUNId2VJdWRKS3VEK3ZOQXIyS2M2cktLRTRXeGd6M3pCUFNQUUEz?=
 =?utf-8?B?VFdYRm1YWXFnd0lQbEhkdWFSbXkzUnl1TGFWM3hJOWZxV1JmcjdnYnRVUGw2?=
 =?utf-8?B?NkdGdFc5Q204SGkwSENXTFZ3c3pOK1FCZE9Vc3dxTzV5Z0ZpdXRpYW85WlVW?=
 =?utf-8?B?WmlhOU1EVHp2QUhEVUhiMDZtTFZDaU1kaWJFV0RaMm5kNHNaL2NSRitJUXpz?=
 =?utf-8?B?SmtaNXFtanpzaURjN1kvR2kvOExmMDEzQ3dFUElhZEJEd1NRMW1EVXFjT051?=
 =?utf-8?B?aWhWdUZGQWFaZW45eWRYVytGZjlwMlB0VW5rTGI5czhKZjRyZDJpTTA1a1ZL?=
 =?utf-8?B?Tlp2RzR2ZHRsT1FxUlN5eTNNSHdBaktnN0I2RnRNdmVOb1JaaGsyYkQrdDdO?=
 =?utf-8?B?dDErb2cyc0g5dXJoSTVVVjJhM1M2Z3lBakJFMHVQTndldHpTYnZPcm5OKzEz?=
 =?utf-8?B?TDBvSjVNUklkclVsVGJwaUxsYllvSTMxWXI2c2o5RTg2WDl3TmVBNmJWYVZk?=
 =?utf-8?B?WGFOZkl3Uy96ZFNud0hVTHNWdUduanFZakltY0VEMmRSalBOZUhic3dVbG5t?=
 =?utf-8?B?UlA1eE5UOTRqWko3YzN2ZDZjb0dxb295dUx6RmZ1ZnQ0MGVWaVNSWWFpQU9t?=
 =?utf-8?B?T3JCU1VobFkzcGlrUVp2YTIyUFI2SUVON3o2WWlmT0hLdWhwRVR5NzcwNTM1?=
 =?utf-8?B?UjFUMEtIR3k5NCtEQkY5SVlmb0xNdkNraXoxZk9QRmV2dWxMUmtuNUFRcTF6?=
 =?utf-8?B?RzFSZloxR3hKdGxmaDdJa28xVkN1YjBVNkt1YmRmWHhXTkYyTVlwUjlJTXA0?=
 =?utf-8?B?V2FrZHdYcExmZktKUTV3bTU2cHJiNUxNUGRCYTJ1aGF6K2dRTEh3UThxeFZs?=
 =?utf-8?B?dUkvcEt3bmt2WExOeDZPWEJCajBFd0NBaWRkbHo1dVdBV2lMS3gweEFBVU5T?=
 =?utf-8?B?cGpvTFZHUk4vT2J0UUxPMzFtRXU2Tk1ZdnkrK0MrVGZvM0JRVmhpVXJlZDRn?=
 =?utf-8?B?SkNvaWxUL1poUmR1UWQwQXVrcUpPTFhGK1JIL2Q5MUlXVWpLT3dPSXJ6RU5i?=
 =?utf-8?B?QkZSbHBNNnlzRzJ4NVJVc0ozQ2huUU0yTjkzT0xYMzE5ZWNTaXp4Q0Y4YTEw?=
 =?utf-8?B?T2Zsdm8vYnVlWk84UW0zeDA4TUN1aFFEd1JJcFVKSUVNOW13TGl4d0dLTVRB?=
 =?utf-8?B?K2c3anVhZXhrVVl4OHI2MzZ6NzhDa3ZVT04rNzFDZnJ0L3gvQmV1aTRlRWl4?=
 =?utf-8?B?UmNGREE3WGxpY0JWZE1SWHJsQU9WLzNwWTAwN1JFSXNqRWZGMFQrRzlORVBq?=
 =?utf-8?B?QjFDL1p5L3dGSTRYcHFIVnoyTjkvdzMxM1ZMYWZMQWdpZWhvTFBjVHJtT0l1?=
 =?utf-8?B?bThBWExTV1dmdjNONjhERzFXVkZPSnJHc2NPVjkvSzJRbUtIa1pFdVdadmdM?=
 =?utf-8?B?Q0ZTbm96dzYzVFlTTFJkSmxocmN6TDBuWksyNmRydDBOVDlkTGpNOEJJSS9O?=
 =?utf-8?B?NXFZUU0rUytnQlJ2cGY0eVZ4eWs5SWV6TW1IeW9YNXd6MGlQL2FVdmVBTEZW?=
 =?utf-8?B?ZG16aU1nZTdzMHBrK3dzWlRwUE5OeWRWb0JkZGtFZnNmM0ZlaVJqVXM0YURh?=
 =?utf-8?B?ajFaQlltcllQaU0rQlJyUzQxUC94VFU3NUpQeE5LU1FtTmY4WWZKV2dIOHlE?=
 =?utf-8?B?OXgrc1ZwSDhNTDdBbGRPaW1wR3o4bWdxakhQemZKbU10NlJsczlYaWVuTWdw?=
 =?utf-8?Q?aHXrJsxDEwQKEbYmXhGlUpQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <86E1080620429949AC51D67B00D74471@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f87416cf-792f-4d20-bb13-08dd4c6f911f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 20:47:01.5784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OM8C9xFKyC4yJWsC9YkqGyxcugb4qB+A0Nm7BZ/U/hqvoqPNg90hG+1XpARDZodnRaie3Cuf0vN15Xs5SWTnKOhNVMO5MebgwwOg+dTnS38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6933
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

T24gVGh1LCAyMDI1LTAxLTE2IGF0IDE5OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSW50cm9kdWNlIGk5MTVfZXJyb3JfcmVncyBhcyB0aGUgRUlSL0VNUiBjb3VudGVycGFy
dA0KPiB0byB0aGUgSUlSL0lNUi9JRVIgaTkxNV9pcnFfcmVncywgYW5kIHVwZGF0ZSB0aGUgaXJx
DQo+IHJlc2V0L3Bvc3RpbmdzdGFsbCB0byB1dGlsaXplIHRoZW0gYWNjb3JkaW5nbHkuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jwqDCoMKg
wqDCoCB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0NCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5owqDCoMKgwqDCoCB8wqAgNCArKysrDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqAgfMKgIDMgKysrDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWdfZGVmcy5oIHzCoCA4ICsrKysrKysrDQo+IMKgNCBmaWxlcyBjaGFu
Z2VkLCA0MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpSZXZpZXdlZC1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBpbmRleCAyMDJlYjFiNmFlNTQuLjMwNDBjMDAwZjgz
NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IEBAIC0xMjAsNiArMTIwLDI5IEBA
IHZvaWQgZ2VuMl9pcnFfaW5pdChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIHN0cnVjdCBp
OTE1X2lycV9yZWdzIHJlZ3MsDQo+IMKgCWludGVsX3VuY29yZV9wb3N0aW5nX3JlYWQodW5jb3Jl
LCByZWdzLmltcik7DQo+IMKgfQ0KPiDCoA0KPiArdm9pZCBnZW4yX2Vycm9yX3Jlc2V0KHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSwgc3RydWN0IGk5MTVfZXJyb3JfcmVncyByZWdzKQ0KPiAr
ew0KPiArCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIHJlZ3MuZW1yLCAweGZmZmZmZmZmKTsN
Cj4gKwlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKHVuY29yZSwgcmVncy5lbXIpOw0KPiArDQo+
ICsJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgcmVncy5laXIsIDB4ZmZmZmZmZmYpOw0KPiAr
CWludGVsX3VuY29yZV9wb3N0aW5nX3JlYWQodW5jb3JlLCByZWdzLmVpcik7DQo+ICsJaW50ZWxf
dW5jb3JlX3dyaXRlKHVuY29yZSwgcmVncy5laXIsIDB4ZmZmZmZmZmYpOw0KPiArCWludGVsX3Vu
Y29yZV9wb3N0aW5nX3JlYWQodW5jb3JlLCByZWdzLmVpcik7DQo+ICt9DQo+ICsNCj4gK3ZvaWQg
Z2VuMl9lcnJvcl9pbml0KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgc3RydWN0IGk5MTVf
ZXJyb3JfcmVncyByZWdzLA0KPiArCQnCoMKgwqDCoCB1MzIgZW1yX3ZhbCkNCj4gK3sNCj4gKwlp
bnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCByZWdzLmVpciwgMHhmZmZmZmZmZik7DQo+ICsJaW50
ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZCh1bmNvcmUsIHJlZ3MuZWlyKTsNCj4gKwlpbnRlbF91bmNv
cmVfd3JpdGUodW5jb3JlLCByZWdzLmVpciwgMHhmZmZmZmZmZik7DQo+ICsJaW50ZWxfdW5jb3Jl
X3Bvc3RpbmdfcmVhZCh1bmNvcmUsIHJlZ3MuZWlyKTsNCj4gKw0KPiArCWludGVsX3VuY29yZV93
cml0ZSh1bmNvcmUsIHJlZ3MuZW1yLCBlbXJfdmFsKTsNCj4gKwlpbnRlbF91bmNvcmVfcG9zdGlu
Z19yZWFkKHVuY29yZSwgcmVncy5lbXIpOw0KPiArfQ0KPiArDQo+IMKgLyoqDQo+IMKgICogaXZi
X3Bhcml0eV93b3JrIC0gV29ya3F1ZXVlIGNhbGxlZCB3aGVuIGEgcGFyaXR5IGVycm9yIGludGVy
cnVwdA0KPiDCoCAqIG9jY3VycmVkLg0KPiBAQCAtODY3LDYgKzg5MCw3IEBAIHN0YXRpYyB2b2lk
IGk5MTVfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gwqAN
Cj4gwqAJaTl4eF9kaXNwbGF5X2lycV9yZXNldChkZXZfcHJpdik7DQo+IMKgDQo+ICsJZ2VuMl9l
cnJvcl9yZXNldCh1bmNvcmUsIEdFTjJfRVJST1JfUkVHUyk7DQo+IMKgCWdlbjJfaXJxX3Jlc2V0
KHVuY29yZSwgR0VOMl9JUlFfUkVHUyk7DQo+IMKgCWRldl9wcml2LT5pcnFfbWFzayA9IH4wdTsN
Cj4gwqB9DQo+IEBAIC04NzYsNyArOTAwLDcgQEAgc3RhdGljIHZvaWQgaTkxNV9pcnFfcG9zdGlu
c3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDCoAlzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUgPSAmZGV2X3ByaXYtPnVuY29yZTsNCj4gwqAJdTMyIGVuYWJsZV9t
YXNrOw0KPiDCoA0KPiAtCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEVNUiwgaTl4eF9lcnJv
cl9tYXNrKGRldl9wcml2KSk7DQo+ICsJZ2VuMl9lcnJvcl9pbml0KHVuY29yZSwgR0VOMl9FUlJP
Ul9SRUdTLCBpOXh4X2Vycm9yX21hc2soZGV2X3ByaXYpKTsNCj4gwqANCj4gwqAJZGV2X3ByaXYt
PmlycV9tYXNrID0NCj4gwqAJCX4oSTkxNV9ESVNQTEFZX1BJUEVfQV9FVkVOVF9JTlRFUlJVUFQg
fA0KPiBAQCAtOTcyLDYgKzk5Niw3IEBAIHN0YXRpYyB2b2lkIGk5NjVfaXJxX3Jlc2V0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gwqANCj4gwqAJaTl4eF9kaXNwbGF5X2ly
cV9yZXNldChkZXZfcHJpdik7DQo+IMKgDQo+ICsJZ2VuMl9lcnJvcl9yZXNldCh1bmNvcmUsIEdF
TjJfRVJST1JfUkVHUyk7DQo+IMKgCWdlbjJfaXJxX3Jlc2V0KHVuY29yZSwgR0VOMl9JUlFfUkVH
Uyk7DQo+IMKgCWRldl9wcml2LT5pcnFfbWFzayA9IH4wdTsNCj4gwqB9DQo+IEBAIC0xMDAwLDcg
KzEwMjUsNyBAQCBzdGF0aWMgdm9pZCBpOTY1X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9
ICZkZXZfcHJpdi0+dW5jb3JlOw0KPiDCoAl1MzIgZW5hYmxlX21hc2s7DQo+IMKgDQo+IC0JaW50
ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgRU1SLCBpOTY1X2Vycm9yX21hc2soZGV2X3ByaXYpKTsN
Cj4gKwlnZW4yX2Vycm9yX2luaXQodW5jb3JlLCBHRU4yX0VSUk9SX1JFR1MsIGk5NjVfZXJyb3Jf
bWFzayhkZXZfcHJpdikpOw0KPiDCoA0KPiDCoAlkZXZfcHJpdi0+aXJxX21hc2sgPQ0KPiDCoAkJ
fihJOTE1X0FTTEVfSU5URVJSVVBUIHwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5oDQo+IGluZGV4
IDA0NTdmNjQwMmUwNS4uNTg3ODliMjY0NTc1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmgNCj4gQEAgLTQ3LDQgKzQ3LDggQEAgdm9pZCBnZW4yX2lycV9yZXNldChzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUsIHN0cnVjdCBpOTE1X2lycV9yZWdzIHJlZ3MpOw0KPiDCoHZvaWQgZ2Vu
Ml9pcnFfaW5pdChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIHN0cnVjdCBpOTE1X2lycV9y
ZWdzIHJlZ3MsDQo+IMKgCQnCoMKgIHUzMiBpbXJfdmFsLCB1MzIgaWVyX3ZhbCk7DQo+IMKgDQo+
ICt2b2lkIGdlbjJfZXJyb3JfcmVzZXQoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBzdHJ1
Y3QgaTkxNV9lcnJvcl9yZWdzIHJlZ3MpOw0KPiArdm9pZCBnZW4yX2Vycm9yX2luaXQoc3RydWN0
IGludGVsX3VuY29yZSAqdW5jb3JlLCBzdHJ1Y3QgaTkxNV9lcnJvcl9yZWdzIHJlZ3MsDQo+ICsJ
CcKgwqDCoMKgIHUzMiBlbXJfdmFsKTsNCj4gKw0KPiDCoCNlbmRpZiAvKiBfX0k5MTVfSVJRX0hf
XyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggNzFkMDljMjE2OTVhLi5hZWQx
MDlhZGZlZGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtNDcyLDYgKzQ3
Miw5IEBADQo+IMKgI2RlZmluZcKgwqAgR000NV9FUlJPUl9DUF9QUklWCQkJCSgxIDw8IDMpDQo+
IMKgI2RlZmluZcKgwqAgSTkxNV9FUlJPUl9NRU1PUllfUkVGUkVTSAkJCSgxIDw8IDEpDQo+IMKg
I2RlZmluZcKgwqAgSTkxNV9FUlJPUl9JTlNUUlVDVElPTgkJCSgxIDw8IDApDQo+ICsNCj4gKyNk
ZWZpbmUgR0VOMl9FUlJPUl9SRUdTCQlJOTE1X0VSUk9SX1JFR1MoRU1SLCBFSVIpDQo+ICsNCj4g
wqAjZGVmaW5lIElOU1RQTQnCoMKgwqDCoMKgwqDCoCBfTU1JTygweDIwYzApDQo+IMKgI2RlZmlu
ZcKgwqAgSU5TVFBNX1NFTEZfRU4gKDEgPDwgMTIpIC8qIDkxNUdNIG9ubHkgKi8NCj4gwqAjZGVm
aW5lwqDCoCBJTlNUUE1fQUdQQlVTWV9JTlRfRU4gKDEgPDwgMTEpIC8qIGdlbjM6IHdoZW4gZGlz
YWJsZWQsIHBlbmRpbmcgaW50ZXJydXB0cw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWdfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWdfZGVm
cy5oDQo+IGluZGV4IGUyNTFiY2MwYzg5Zi4uOTRhOGY5MDI2ODllIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZ19kZWZzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWdfZGVmcy5oDQo+IEBAIC0yOTQsNCArMjk0LDEyIEBAIHN0cnVjdCBp
OTE1X2lycV9yZWdzIHsNCj4gwqAjZGVmaW5lIEk5MTVfSVJRX1JFR1MoX2ltciwgX2llciwgX2lp
cikgXA0KPiDCoAkoKGNvbnN0IHN0cnVjdCBpOTE1X2lycV9yZWdzKXsgLmltciA9IChfaW1yKSwg
LmllciA9IChfaWVyKSwgLmlpciA9IChfaWlyKSB9KQ0KPiDCoA0KPiArc3RydWN0IGk5MTVfZXJy
b3JfcmVncyB7DQo+ICsJaTkxNV9yZWdfdCBlbXI7DQo+ICsJaTkxNV9yZWdfdCBlaXI7DQo+ICt9
Ow0KPiArDQo+ICsjZGVmaW5lIEk5MTVfRVJST1JfUkVHUyhfZW1yLCBfZWlyKSBcDQo+ICsJKChj
b25zdCBzdHJ1Y3QgaTkxNV9lcnJvcl9yZWdzKXsgLmVtciA9IChfZW1yKSwgLmVpciA9IChfZWly
KSB9KQ0KPiArDQo+IMKgI2VuZGlmIC8qIF9fSTkxNV9SRUdfREVGU19fICovDQoNCg==
