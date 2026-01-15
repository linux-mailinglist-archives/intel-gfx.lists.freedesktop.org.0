Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E03D23367
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 09:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA2710E702;
	Thu, 15 Jan 2026 08:42:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nv16mXaL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3834810E702
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768466527; x=1800002527;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aGkNybpAfa98X0/IyhUjrCLDurncW3u5MXj5qq38E3Y=;
 b=nv16mXaLVAb9yPaF7hQdXfrzNJeKRk14OyjnDAbABFsGPSff5Uc4XohF
 jk0/hsJdYpkl9aeCUdJgkVCqsNGgC+G6n9e/J16qHpBiJiBFaa15M8Y22
 pyULz6NJloQ1wMmSwf2ODya3EOoO9aGY1O+ukY5Hq1J98RNDXPjg2DDx9
 j0qmnxLa0T6zuaCR0SFWqov1gH9YuZmfCaITLU1bS3OGL0xLDmTDHNbSQ
 B1tQdtceUpxgTnhiKZcwrtwILOFt00pBMUnLtmMyrEIe8smar5fRpobk8
 oXKL5U8cDA0H1Jnp1pibiOjZGban4t2RPxKNl7RCUFFzenO+ZUnMQM6bE Q==;
X-CSE-ConnectionGUID: MPF/3bgbR+qlN5DaXwo8bg==
X-CSE-MsgGUID: LcyFe86gT4Cp+s9AQaLS8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="69857601"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="69857601"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 00:42:02 -0800
X-CSE-ConnectionGUID: 5T0vn4BuSdOlbteIXlqm6g==
X-CSE-MsgGUID: xcYZ34lWR0yG7gULHg4EQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204782727"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 00:42:01 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 00:42:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 00:42:00 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 00:42:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UjTBRimEBo5I5aftATJIGy5IhdWyBAcwfueCFuvzOhdG5PgsNclnp9k3YsyD4vDUyCbQsFP2RiRfPjFr9oQ7h5CFwVoCEfHdNXRTW8lyr728GLfPMaB7sVlrqGhWM2jKhoq8AxQoili/3X2h3NABLgu+FGzWjBdU0Q7H4xYJ2mq7R4CFEs03Vma9E19tY5GGtBGQ4U81WCWUBYuISH0QTs6wHYNaqYUssJPLOYDSbRvDPegoEh8eQeb48iLu3MhsIocR8eGdIWJyZH5siKNmYHKrb1SaOnRVAYnGME0wRTtrrM1rCki/zPaNpBxSOPBzp/WCNDbFArikB+924kPdpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0yktARtlO6Lqya7oepHe4UmpFPR9frSt/UvjyinNbSI=;
 b=tqlWjzIdu/a1rYrktXUJu30Gt5NY8m8AW72HZaMdI7qP7SjKPZ2AmsDVCpx3SrAXyOxPf7SL/1EAQXhMDudTJjGkow4pcpn4PIhLYujk5XIMLYDkk7VsmUBMRacT63RDM/0mIeoOe2M2tr6Ix6nl3ku5lmH8LotdG41salMuNQ5FylspLk6uZgXdA8JR3YoZBcd34JdQ+smcdmIKY3YBZHeQDfv+jRWGH/9eX0B7Vvue6hlH+ClCDjIDoRnQkXwh4wmkB5SW6fsClMLT8kxJaXsWo+1eY7jgXKmiEk25ObAhJVscHwcJpn1tpK5lkuvn/ruEOsgTaBs4yFUW080TJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM4PR11MB6096.namprd11.prod.outlook.com (2603:10b6:8:af::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 08:41:52 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9499.005; Thu, 15 Jan 2026
 08:41:52 +0000
Date: Thu, 15 Jan 2026 08:41:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Prevent userspace mapping invalidation
Message-ID: <jucuay72aqhbs2gy5kraal3ujrmmz34fwyklfmea4zteye3zmp@obvneb6wuaaz>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <ytvsfx65mus7fdwmureaznj3i22kcnqkodncobwaqtgdg6f77l@43jqatwpn3cf>
 <930bd54f9d82787f1362d0209d6e9f76ba78266f@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <930bd54f9d82787f1362d0209d6e9f76ba78266f@intel.com>
X-ClientProxiedBy: LO6P265CA0013.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:339::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM4PR11MB6096:EE_
X-MS-Office365-Filtering-Correlation-Id: ead655d3-1a71-427e-7f31-08de5411ee85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzRndEczSkwybGtHSEgvVE5hMFZhaUZlc2oxMElXaDVOb2hzVDAxVXpza2pO?=
 =?utf-8?B?U2REZTVuT2NHSGN2UXJVQlV5SGlEUzZwckd3MHRYVDlGTWpZWHpQcnh1enFO?=
 =?utf-8?B?RkMxaE9FY0dsaUhoSmtyRi9pejIrY05hdHdXZTNGVm8rSElIamtRVEtWSDBi?=
 =?utf-8?B?RU9hVUZZTEx5N1FLeWc0Z1dBN09hSG92aGtkbFZoZTcwRXNQejVqanRnU2pP?=
 =?utf-8?B?WEsydCtGUm5xTDYxZDc3UVo2eDQ5RkJQcFpBT0s2ZVUvN0xNYzE4OWM5emdR?=
 =?utf-8?B?Tm5LQlE4cXRIY1hzRFNuOWU4Y0E5bTdpWEgzSWQvcWFvZUJFaGVVU1luSW1L?=
 =?utf-8?B?RTJwTU5rbStJRWdON2VmZXJmd3VzQnREOTUvRnlIaldNT0ZhYkFRc1JJSHRV?=
 =?utf-8?B?Si9Ka2tOUWlyOEpqYWZrQi9iR1ZURFZaMnBrNERKNnNSQnR3NStUcThOZ0hB?=
 =?utf-8?B?OE9uNnlEenM5MWZQdVlLQzJSYXhPbjBQVXY3Mk16KzExeTAxaDUzTWVlaWZW?=
 =?utf-8?B?UGZoTENBUy8wQzhMY2RBWmNpMjE3U2VEQVN4UndENmJZSTFvL0k1dDhjZGhI?=
 =?utf-8?B?RzhhZWpHMHREUGJGU29vS3J3Zk5OQmR1Q243eFpxNVVUak0yUDd4akFQR0pE?=
 =?utf-8?B?WXlmMU1ya0gvdUlWWWljVnpkcEZ2TXByTTM3SUVZUVE2cDAwV2lPWVRocHZX?=
 =?utf-8?B?YXdBUndXYzRhSGdYZkJCVGVPbWk1bHFCVkVwdll4MGlOK0V0dGVlYWR5UlJI?=
 =?utf-8?B?SG11ZitqK3BjMm1NMVN0cm5TTzJlcmNMUC9uNmJBc1V0VjVWREJZL2VwcTVh?=
 =?utf-8?B?ZEllNWpmbnJ4YmQwczNhWDZZNFc3ajhhRkhtRmYrOFFYN3lpWk83UTYyQ0JN?=
 =?utf-8?B?TnFESG9rT1ZFUGFtVWRkdnpkaW9JM3Y2d1N5SG1zWmlia3JiQWZWc1MzR0ZU?=
 =?utf-8?B?RDY1a3IzMk9vU0VtMW9DelpRdittbmk0Tnc2Q3FKMWVuU0srZXFKTGZYWFVk?=
 =?utf-8?B?R21zUm1NWGliT2Nmcmt1UVd0Zzk5QWY3ZmpTV01NZDJWSXA1bm1VWDU3N1dQ?=
 =?utf-8?B?dytrd3hkUGd3aDdEdHBOQWxzMUYxT1hlNWs0U01WOTJoblR3b1Q2UEZVYkts?=
 =?utf-8?B?QVZtU1V3anJubHQ5WUNJblgxYzhnaTVyNEp1RzB2Y1JrWlNNZHlqUXF0cG5V?=
 =?utf-8?B?RVVRNis3bFFJbjhVYXhSd0Jjc3BWUEkyZXJINlBBSndodi93SzFYV0ZMeTBJ?=
 =?utf-8?B?cC9LSEtMM3dQNTlodlZwMDVLcW9McEI3THhPSkpBTlJWZ20vQURKalIyWFV2?=
 =?utf-8?B?VW5uV3lYT2pNaVRyNysvTnUwRWxLYW5Ma2hEZHp5NXV1WTQvU3pleDJHR1Ix?=
 =?utf-8?B?akI2bXZTWEI0S3gwYnhUTWNGWVNuNmE2d0NzNjhEa25uY2krcmZaYkVzSUpz?=
 =?utf-8?B?MGxwUk1qaDA3ME10eXYrOTBnTnFIdmhoaUl3eGluU2xqZk5EMmsrL3BMVFow?=
 =?utf-8?B?YXR4K01IZXJrOHp2dlBHeHB6NVBxc0xER3owQ2VOdlJoRjZqYndlTDdSdkJ3?=
 =?utf-8?B?d1pYNmMySFh2MlJialZvMk0zMDVrRzBXVlVxTkhyN2N4MkNUeTlGN05rc0hy?=
 =?utf-8?B?Qkt0OUVDVFZuRVdlTnJMZS8zKzBqOUZRTXBWWWFyYS8zTkF1bHZhNWErK29H?=
 =?utf-8?B?KzV3bW9oV09JUDljeGU0NnRnVkM1ZjdIVjFUYWNPQ1owZFVQWmgwOFB4VUJq?=
 =?utf-8?B?RmlKNHJoUkJub1BrVWZQU0JhSnRSZnkvbFdiWUFleEN5ak1ZTU5DRjlqTFFj?=
 =?utf-8?B?KytrKy9UbjFFQ04zSEQvZWtISUdhSFQ4YitmN1AvWHBULzM4VWZTeVM3UkRq?=
 =?utf-8?B?RlZCQmZVOHU1Qm85c2xjMFIrajVmaUhxVFZFcmxRbXdJbjE1YUgvNWloWXFT?=
 =?utf-8?B?NGFvdTRqY2VBSmp0ZXdkM3RVb21OV2kycWpFd0Y5RFlsNXRJYXV6V2VyZXVH?=
 =?utf-8?B?NjgwMWJVcUhRSGkramVNZjdYRFRkamtDcUtGOU9zMlgyMmt1TGxjVlZpdlZK?=
 =?utf-8?Q?cpvdaL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0xmRnVhbUd3ZHNWczhaQmZoc3pBeVFwRkNrNDRyaSswbXV2elpLVnpscmda?=
 =?utf-8?B?allDQ0VaN2JWZjNvV2U5eTNVdTl3OXVkZWswM3ZmZzRWTWRtZXhOaXhmMWN6?=
 =?utf-8?B?eXlMTFBtL24vbFlWT0VJbzFiQ3AyMUUvWWMyTHBNMllWd0x1T0kxV1RBRkhm?=
 =?utf-8?B?WlRCYVZpRlhESU1JSHFkMDhYTWVGT3p2bWNjdncrbW9oa0FvbFNFUEI5aE9R?=
 =?utf-8?B?TDg4VUI0U0lEOHlZVXl1LzVWOHdURk8xNEtINHJNYVJGQmtlMTd5Smd0RUdm?=
 =?utf-8?B?V1FZc2VJK2t4Sy8yc2VpdWdXYlJLelRFOHpEQWFDa3crN2xCV3JSNlhETmZs?=
 =?utf-8?B?V3J0S0xRZTM2ZUlRZDhjV3l0eVFtNDVLUkFLbGlLOHVHM2p1K29IbjAxc3NV?=
 =?utf-8?B?MUFCenVmNEdKMWcrQWZMUkhhWXRCTzZHbkp3bHZZbUJOTm15c0V0T0ZRbTA0?=
 =?utf-8?B?UGNrSkdqSW5MNUpid0RxcUNzVk16TFk3L2dBNVFleXJXMTZlMVM5R1pXSDJJ?=
 =?utf-8?B?UzZmS0FiWXYzc2hPVzYySU5DZHRwdXJPbGY2VFlDbjFXeEh1eTczY1gzL2pS?=
 =?utf-8?B?ZDF2aXpnRlN4WUhGN0I3SG9SZ3pzL25jb3QwSlUyYkxqcWdVTUtSRzhCa3Er?=
 =?utf-8?B?RHdaUU5ER3pINHN3SVV4SjN6OFBoQmFKc2xDTTVWV2F0aWJ3c3hUK3RBdVZk?=
 =?utf-8?B?VWoxRk5neXpoTGd2ZTlEdUt5bGZqbG95VUsrdjZROHRNWGl4N2wxTnhnMnll?=
 =?utf-8?B?dDVBTTdYNiswTkpDMjJ5QmdoaW1Xa3A2ZW1SUUVER2FQZXZ1dnhDUHJncUhm?=
 =?utf-8?B?V1ZtV0t5Yy9QazNTRDUzNmxHdlk2dEJ1b1JCSlVIbkRYT0cyUStCWUtURDgr?=
 =?utf-8?B?S211UjlOcVZZejNRQTRDZjRLbTZOTUt4aFpNQjQ1aS9QWjk2ZXZOTzkrOVFV?=
 =?utf-8?B?RU1SbnNwc2thSDJsL2tKdmRNbERTYWs0Yk45VDFSQ2hYNEhGdkxJYWtvL05G?=
 =?utf-8?B?N1lWeTlaak5NNTlJK0kzUFYzNEhQcGU3SjIxTkQ5VWVZQ2hzZWk5eEhVaEVz?=
 =?utf-8?B?dTB0WExhWEsxd2RpcXprZ1JuZVhtK0VPRGFZbWwvUGtqdkR4VnE5RDVCaTZZ?=
 =?utf-8?B?WjhkejVkVnBiaTB0OHBuZG90QU1yNmhJeDBrMktTcSs1d3k2M1FTT2plWWs0?=
 =?utf-8?B?aWd2WGZGalRpeXYzN1dQQ1M0a3RzZVR6SlNmb2V3NHA3eHBQc292VVRXSCth?=
 =?utf-8?B?V2ZSZllYakpGdjdiTzJxbjZaU2NQY1RzcmhyZzBoeXg4VVNlTWtRYXUxUjZM?=
 =?utf-8?B?OC9pRnR5ZE9Vc1J5TDBlVDVQM2p2N1I0aXhEdmtBYm5YeWsrazV3UWtod21l?=
 =?utf-8?B?dU1ZeS91ZlFncGxXTHV0ZlcwZ1pWVlFYeGRRTDlQcGd4K2tFWXR3WWZFNXZj?=
 =?utf-8?B?ell5NjBody9IQXAzZUtWejREOTF6NkR3Wk9HdW1RdUY1RERBN1JuUFVUYmJE?=
 =?utf-8?B?a1VqYlNENGhYc3FNUzdNWnMvdWVPQm1Demk2dVZoOUpMMnBpWTJndDJaajR6?=
 =?utf-8?B?Z3hNWk9FWXFoLzZRSlhFaGdQR3l3ZW0rV05JREk3RVVHcXhtQlBDVGN1amhn?=
 =?utf-8?B?dnFxUU1ETCswK2hIOFBlRjdWenVWdGlSL3pENmRZVXM0U0FiMkdHNU80UDkv?=
 =?utf-8?B?UVRnUWc5czduWEh1WXd2NnNlVjY2cjhLdEN3bDFDcWo5bUV3MXA1dDdycFht?=
 =?utf-8?B?MjlHaXNGL25ROC9ncExPTDZZUElaYno4RVFGSVl2TTZKSGRiSXV2bUQ5Mm5D?=
 =?utf-8?B?NzhFa0dTQTZpd21nTjM5VVloNTlZT0dUKzhxQnRoVnY5ajR1SHpUSXJhOS9H?=
 =?utf-8?B?T0x0VDhSYm55WlBDYU4wU0NsQ29hQXh3UzdETG1nNTF6QnhZZjArRG5ZekJ3?=
 =?utf-8?B?aStzWW45UmhMTmhmQTFEMlZBY21USmY0N3J1NGZkU1BzNUYyNVBHbkFvMlQv?=
 =?utf-8?B?NXB6TUJYYlFIV2tkWWpjeHlJeGgydkY5WENlTFFhSTJvNDFsckFnSGJRWnly?=
 =?utf-8?B?UzRiYmdOSjRXN3FzVkxPSmxDZG9PV01RNVFDYlFSdmgxcTZYOHlhTzFmK3RT?=
 =?utf-8?B?WlczSHNKLzVEOUkvRGI0a00wR3lqTzVVL09BRG1iNWZobS9hM0E2RzcrTzBw?=
 =?utf-8?B?eXVPOGNTK2VCejlvL2JzcDU4TjFsQVVIWmtKdTZDbXdlNUI0S09IeUQ0bXMv?=
 =?utf-8?B?c1grVGhZNzVnWHhyd1diQkNqVmJEbWdMbXRwMExiMTlIMXNjZ0VXOWtmUFB4?=
 =?utf-8?B?REY5RmVJZ29PeUpJUDR4RSt2SXBDYzNvNFozTmt0bEh4ZEFSTXFBZ2tERkJZ?=
 =?utf-8?Q?kXbsQwNXwyWGrG7s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ead655d3-1a71-427e-7f31-08de5411ee85
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 08:41:52.7581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5eFZu58VNiSj62AFmlJCCNg74qvMEc0jcHIDZ26A0JgDjyw+4mwete6IUtDjJW6dqBXY3pgpC1DdmMcbEnreC+BVY2n0waRJCZx/sVzZ5f0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6096
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

Hi Jani,

On 2026-01-14 at 19:04:39 +0200, Jani Nikula wrote:
> On Wed, 14 Jan 2026, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> > Migration testing in i915 uses current task's address space to
> > allocate new userspace mapping, without registering real user
> > for that address space in mm_struct.
> >
> > It was observed that mm->mm_users would occasionally drop to 0
> > during the test, which reaped userspace mappings, further
> > leading to failures upon reading from userland memory.
> >
> > Prevent this by artificially increasing mm_users counter for the
> > duration of the test.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > index 032bc2f17685..2f3104c17324 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > @@ -1193,6 +1193,13 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
> >  	if (IS_ERR(mock_file))
> >  		return PTR_ERR(mock_file);
> >  
> > +	/*
> > +	 * Artificially increase mm_users for current->mm to ensure the kernel
> > +	 * does not try to clean up the userspace mappings of the current task
> > +	 * during the test.
> > +	 */
> > +	atomic_inc(&current->mm->mm_users);
> 
> We have no business modifying the guts of mm directly, even if C doesn't
> have means for enforcing such boundaries. There just aren't that many
> places in the kernel that read, let alone modify, ->mm_users directly.
> 
> A pair of mmget_not_zero() and mmput() seem to be a more commonly used
> alternative.
I agree, however, the problem is that mmput() does more than
just decrementing mm_users, it also tries to dismantle userspace
memory. This is problematic, because we'll end up calling
__mmdrop(), which has WARN_ON_ONCE(mm == current->mm), so tasks
aren't really supposed to modify their own mm in that fashion.

Fortunately, there is an async version, which seems to work
(I am running the tests with it as I write this email, fingers
crossed nothing breaks), so I'll use that in v2.

Thanks for review!

-- 
Best Regards,
Krzysztof
