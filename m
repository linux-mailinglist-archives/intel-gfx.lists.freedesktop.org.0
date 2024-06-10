Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E0C901E73
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 11:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59CD10E415;
	Mon, 10 Jun 2024 09:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ckFpNVp3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF7310E401
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 09:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718012414; x=1749548414;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9Pk/fo/qen2o5t9L9cK1hAHgg+xYsJXShGT+EA8j82U=;
 b=ckFpNVp3q7lCpllNlHDl2r4FnDoEN5ZmPB0AKDYJcX07PJGL4+neIlSl
 YJ4YNNaBOA3CIb/Km8dOX1zfczG0DRlK6FoH8AvqjCq7lOQ7LMIXFxKWO
 OdVeChveCg/JuFWQ+0ufX+lgGj5iDtF2LWQAX73ruG1NsKdeIaSd+EyyO
 tsjAvBB5zlEHvHGzqo5lxikz3E7BWbOhe/PEnHgiVm06W2wI1q9npN8Ec
 DD++t3UJpL8FVoe7EYctgmnb23T/sUZU9R4O6wSe+ejZ37919Zhuwog3U
 NhnRWjGnP3wfePTwfDxjlMam75i0EMd7eJ8nEFMyovakGqge4hdNp/S2t A==;
X-CSE-ConnectionGUID: EAcl5O+XSqyBln8s6rAbQg==
X-CSE-MsgGUID: fp8Et26XTVWpipL6qVMZfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="18488282"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18488282"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 02:40:14 -0700
X-CSE-ConnectionGUID: FWrM6UZpSGOop5Zdj+LUcg==
X-CSE-MsgGUID: UWq5vub+RZ6KQcb2ADqaiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43437864"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 02:40:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 02:40:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 02:40:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 02:40:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 02:40:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NMtXQ602Y55Hq8Cf3TcWh5kT5nD70w1FAu8yPzNolQa3eFn45HYtB46ywwCy2NL4/b5M1tXyidfqNr+dtcq3R6SOJxH2qmE481kfZv+kbuzNw3zOuO/9aab4JlGSE0a8/xBxyWxvzWLikdgvgu/YbJOp4Pne9oP2+lD+jrNcN+IzNTdTMZoOHaxlImx+fC/aHr9znNk+4STZ4+WVp9zFfk6SFkEYTfal5FN0ZFobyOB9kJPCwIkCbzSTQZG3T8gl5v2BLI+eDoyYhb5d3kAcm9Xh3s2IaPVB91oGsgGdT/rlG4/LJbx1ujY7fLY3mxSTclsmIRX/BNxi4zhka/dBLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Pk/fo/qen2o5t9L9cK1hAHgg+xYsJXShGT+EA8j82U=;
 b=lmnNNBO9+o/8oBGSzIPV1ZiFqMIRGPHWBXM6i6of70oK7H9hcZffNYGJTdpSPzG0KstPRDxW6dj2PVos1pEDnoMA7tiPO0XfGiFnuXBgqFYYXpCPzr0xnFl0TRZc7b3YVTx++Zhugd+ZM+kNzsSDwOFLeGZ+xEakWC9bU32jb3dDJ0FRHFnlrXorzWvkGxVIqHh/35fHNNbcz4fVsVoOf792vBa0GzvlPNLdF+PvrH2mSGZT9CUEyh1c+pXNVa1VkOqwFtRjGQ1yiPOvKtSPwzTYL2tPj9PmZH/WAZkTrfKkwWl5Z7C9pLSeSt2ux322Vvy6e936Zh52ooEXFzgpyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM3PR11MB8684.namprd11.prod.outlook.com (2603:10b6:0:4a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 09:40:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 09:40:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the end
 of enable_ulp function"
Thread-Topic: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the
 end of enable_ulp function"
Thread-Index: AQHauwsZ7eDWCfVpA0+E6HOn+NJdNrHAqJmAgAAJ8wCAAAtSEA==
Date: Mon, 10 Jun 2024 09:40:04 +0000
Message-ID: <SJ1PR11MB6129D953DA3AC6F1CA680B06B9C62@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
 <DM8PR11MB5655DDD6C1502191D2A38E43E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
 <DM8PR11MB56557918D2562FA54907EBA0E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB56557918D2562FA54907EBA0E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM3PR11MB8684:EE_
x-ms-office365-filtering-correlation-id: 709eb7bd-3306-46a7-002b-08dc89314ebc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?THNQNlJUMVh5c1prQVRXRGhjcjhnUUNFTTM1ZTQwUDhtRThEUVdnMHE2NG9o?=
 =?utf-8?B?U2VXTkY1RlUwUWVEYVBwTTFCR0gxMElHaS9iOE15cDQ4TFRsTnZMZGFodTBr?=
 =?utf-8?B?c3dLK3lhNVdJN3ZaM0VBdjBydGhybndBRXVuVTd5MGhoUXlKNUUxTmlBV0I1?=
 =?utf-8?B?dmdQT3l0SW1EUFNZRGp1bTRRSU9ZU2FBL1V2NmlPVDc3M081MzNHU0FmM3RH?=
 =?utf-8?B?VGFKdllDT2w4WnJuazBGYzl6RERDNXVqRy9WNmI4TU05bnhoR3JEcFJITE5x?=
 =?utf-8?B?R1VJdll5d2swdkhzVFZiaFl2aU1wYTl3MjBiNnZQcEJ5MlJXQW1CTC9aMHpx?=
 =?utf-8?B?Tm9rQ0hXQVZ6Q1Jva3dDbkNuaXpnQlFpOFJjWEUrTmh4NlAvcHhEeWdaYkJJ?=
 =?utf-8?B?Z1B5aFZjMklTamdDanBIekxFZmRmME1wdFUxdS9Fakh4dkdvN1c3a2cwTlhu?=
 =?utf-8?B?QW1jclYyQ2dEUlgwSEZPTCtMOWU1U1Q2cy96WGFrNFZOYWhWeTJuWkU0QkpB?=
 =?utf-8?B?VHg4T0NjSys1akR5WHNXOHdnMHNTTWdabDlnczhWR0RFODhFdExHa0Y5cHNY?=
 =?utf-8?B?QkVLbTd3bzk1VUFlc0lqWVpLK3B2QXN1Z3AxSVpFalpLN2QxNGYxUVhtSHk3?=
 =?utf-8?B?Z1owL2M3QUoybi9Rcis3K1BQSzFyM0dHK1d5OXdzYzFkbXZzMTJFSDJrQWV2?=
 =?utf-8?B?NEppd1FxZXRqTXBTUVRsbWlFdU1FNWF6QU8yZ2JzR3RFa1c2Vy81RnJDTzBS?=
 =?utf-8?B?aHJDV3NLYWxzOUlyQjVnQmxZTnBPSzErS3pXRHFrSVZlbXd4dXcrd004Rkww?=
 =?utf-8?B?OTA2RHlYd1h3RGFOR3lLMVFLUFg4UXJ5VHBsNDNvNTUxZ3pzYWZ0VlQ4V3RW?=
 =?utf-8?B?Q1pRQ20wV1ZYcjEzQk5jMkJqZ3pndENXUC93MUhvZWJNTldGbnNndklaTmpW?=
 =?utf-8?B?NTErbnYyMWxGd1RKVTM4UXFBaEdzOGFWNVFLTG1PVlhxem41TFVlcG9KS3Jl?=
 =?utf-8?B?ck5iZlFRaVg1VTFEL0lFcmQ0cFljTlJOcGZkbDRLT3BETnVTdXNoRG5PY3dL?=
 =?utf-8?B?QXU0UjZSNTVBYm50K1V3am9IRUdtS3RoNkdYVFc4MGpuVTAzR2NhNm1iTkFn?=
 =?utf-8?B?Mk1HeGpLVktZd0l4QkZyZkhhcGg3QVpGR0dDdGR6M3RQVnlITER5MklTRVhh?=
 =?utf-8?B?RVErSSt0NmhVUmRjTVRDa3VuSWFDNXEzd3l1ellDbHdBTnJ3SXhZRWt3MmZT?=
 =?utf-8?B?cENnb1JhRXQrQ0VEWk4yOXNXdGx4MHNBTHc2T0g0RVdha0ViTG5Ga0s4dkJv?=
 =?utf-8?B?YXI1TUZpZkMxMTA5TGJHaFY1bVAzcnJNbFVLeldWWU1ueHlYd1g2ZVJsMysr?=
 =?utf-8?B?YTdvVkVKbHhoNkhMNnJjV3pKUTQxYVQ3RkhuVFZRZG5vampCS0tocEIyY3lB?=
 =?utf-8?B?SFc1ZnMwMTh5NEZpOUttR2s3N25SNEZpNmVDd3IvSWZIZjF4M0VEbi85RGda?=
 =?utf-8?B?dktTQ29vSnJRc1o1eWFUa1lnUyswN2NhcjVIbjVHc05WYWxicEFodUthZTdC?=
 =?utf-8?B?RVlxeU5KVjRlT0pDMDZDcFFud1FDakpxYmU5eElIVVJxMDdYdDJMWlVWSGNt?=
 =?utf-8?B?YjB2cWJwU0VqcjcyQkd3Z2F1TGlPY0I2VHR3UkpiYlY4MVE4MkplWnhIcnFq?=
 =?utf-8?B?TElwUTVyMUpXNnlCd05vdy9qUUszOUN2aGZmTmk3aU9VbnFTZE1OUVZrck9P?=
 =?utf-8?Q?ofBP/Z4Z7KgxkWW4+PEXSKUhaRrLRUF7c29qHeT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVFwMGM0N2x0dk1VVnNmdVdib1ZBNXJvTmlsblZsZ3R2NkZMaUFmNkFOT0pr?=
 =?utf-8?B?Wld5Qng4UnE4YldmQTZSSUlhRllEZWJsckRuZi93WW4xKzVMR0t3VkRseDNE?=
 =?utf-8?B?eHlmZXZncVNMNGxDNzBRa0xRYW8vWGt6VE5LY0N0bFZnV3hPM3IwTnlURFNQ?=
 =?utf-8?B?S0VYalFVZWJJSm1HaERKMHl3NHJsT21tSE83UTZFemc1TWQyS0JNY2hCcTRX?=
 =?utf-8?B?dXR1NXRIWnhJYU1BUVdiOVdiTEF2dXFVY3BUWWdqMHhPazVMUlVYWEMyNG1K?=
 =?utf-8?B?dnJoN2ZaM0hPb3lHQzFKaHNZZUlVZW02ZWsweWFzaHBjU2V2THM0VUVES3Rx?=
 =?utf-8?B?MFNXaFlobk94dlJPU0lQaEJKMTZpSmhQcWRYK1NxWjZOQkxUQ05CTGVZZHg5?=
 =?utf-8?B?dENkL3RLQ0d0b0M4cTRGbHpxYjJTMG54UlpnTVRFWFFMUzVqR2IxbjFkWXVY?=
 =?utf-8?B?OGJiMnZTSHF2QTNpRUhMcU1jdXltTXZJenNnUm5seXhwRzhxZGd0RXNsdm52?=
 =?utf-8?B?bG8wZ1FkZWY0NnNsWXF3MldVWEoycGNPOURScm05dUpmZkFIemZlTTduZ083?=
 =?utf-8?B?ZDJrTHZVWitGLzBWakRtc2JsWXd0SFJ6ejRIYXlTcGlnRWNSUFVWaFBIWGhB?=
 =?utf-8?B?QVgzdzM5VkRGOWFGTXpBRkpmTVl4cGRYSklHMDduRWZEcTNLK0xsUFA2UkVy?=
 =?utf-8?B?N0VZS1RvUlFMQ29xTFJwWEY4dFlvNVkxZ0xRRk5IazkxWU9lUkx1RExMM05h?=
 =?utf-8?B?NDdIZGJ1Vi9Gb3dCNEwydGFRSkU4NHdSZVpRWStMRUwxR1VEWVo5RDI4TGF6?=
 =?utf-8?B?dXZ2N0RUUm1jU2dUN0kzdTlLWGhZcW9ocTBDS1dPMlpIT0VyNStvV3dha2ZJ?=
 =?utf-8?B?cGl0emhDTWE0ZnVmZFM4Y2dUN1ZUajJNMWVpSzNBbmFIVzVtMU5JQ0ViaHBY?=
 =?utf-8?B?QWQ4L3hKM1FEMnlnMkZCUXpxcko5K1hnMk5LaHM5Tk9ueFIyNitWZVAzZXQv?=
 =?utf-8?B?OC9ybXQ2SkV1RzFETExMVkJrWFRXS0xwUjFCT2pQeUhlanpSdUVwQWNJZ1dz?=
 =?utf-8?B?Q3hUZUJCS1h2bmg0UlZuUWxVWENxZEgxSHBJNHdCSHJGUE1iNXZkczhRWUV4?=
 =?utf-8?B?aVhlTDhrcTEyaXhnU0h5Y3hkL1YwdkRIS08rZ21VSmI0N1ZLUHlpclFNMENX?=
 =?utf-8?B?N0NSaEdMVXdLSTFWVGtuQVdvb21HRHNWazNGaXdoaDIyalhOcDhobXo2bVI3?=
 =?utf-8?B?aEJvNDdqbkZzcmVCdVhoYUFSN08xdnpGL1ZMV1hYUmt3S1JyUzhpU0RhZTVF?=
 =?utf-8?B?Y0grNzlBZTAyTmhXeXp3bmdWRWhCV09mU2dGM3RLcFJWRXFkUUJtc1U5dFlJ?=
 =?utf-8?B?RDZ5QThWTjhza0liL3lQT2N2azZtelZid0xldmJQTi9aU05pSUpKTlI5M2Vs?=
 =?utf-8?B?WTYwc3k5bTY3TDJPZ3luQVhDYWNWQndXWWpxS3pMSUZ4NmIwZFQzZFBZS2JH?=
 =?utf-8?B?azh2bjlic2Ewb3B5dzJOMkhxd1pLaUk4SVZqazN1Y2R5NlZCdkRQdGMxUHdT?=
 =?utf-8?B?bFdiMHpHWW93blhUMFRPamNodzJZNzNBYnFqckdEYnQydmFqeno0c3dDTG1M?=
 =?utf-8?B?WnUvUVNkTEUzSDBzNE1CbGx5cmREOUEvR0Evd09tL3I5QXJPMi9pczZ1UGY3?=
 =?utf-8?B?dWMrcmdYdEVlZDN3WjNpS1NTd3lITmtOemFDSUM2aitkSlVSTyt3S0RJT243?=
 =?utf-8?B?YnNQNlFpZnRjT0QrK2ZyT2cxS2QrWFFMb1RNbFpjNm5IYzRBaXcxN3p2MnpV?=
 =?utf-8?B?Wm9rdmptbXludFp2Um40YzdyVkp5WSs0UFdGOWlhUU9lZDBFVXpNVmFUQ0l0?=
 =?utf-8?B?R0xidVprTGVVUlFSdVhiSFFYTTdaOExMSmttMWt3UmZJQzBFVE9LTDZXaVJt?=
 =?utf-8?B?S2RRYk50UDhmZUtHZGMzbzVXZnFSYzQvTkRvbWs0NzEwTUw3bGxwOGpWWWky?=
 =?utf-8?B?QXFqdEl5dzdMWlFzN2RJWHAwS0QvQmdNOWttR0k2Z2pvS3RWblY5MVhyQXQx?=
 =?utf-8?B?RFdQSHRxaWxabXY2M1RTa3VncjRXZDNCd0VuR0gyL3NmMWRaUHlZeDhTd2tu?=
 =?utf-8?B?cGZRWDJkWStBYkdhN0ppZHRNNHJDcmRkNUNUNm02YVRxYUpWOXA2ZnY2ZFVP?=
 =?utf-8?B?aWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 709eb7bd-3306-46a7-002b-08dc89314ebc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 09:40:04.6755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oQNdsaj4LFjwOhLE+88j8aoTcQTjrlrXkg3ECnMa07Q1Tw48SkXY4xVxWoQ/ZGzavOg+IW4DwPbcoER8AJKnxaZ6t2dRJE69S2h9FYUX+VA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8684
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

SGkgSmFuaSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTYWFyaW5l
biwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgSnVuZSAx
MCwgMjAyNCAyOjI4IFBNDQo+IFRvOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRl
bC5jb20+OyBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyDQo+IDxjaGFpdGFueWEua3VtYXIuYm9yYWhA
aW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQm9yYWgs
IENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUkU6IFtjb3JlLWZvci1DSSBQQVRDSF0gUmV2ZXJ0ICJlMTAwMGU6IG1vdmUgZm9yY2Ug
U01CVVMgbmVhciB0aGUNCj4gZW5kIG9mIGVuYWJsZV91bHAgZnVuY3Rpb24iDQo+IA0KPiBIaSwN
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gPiBT
YWFyaW5lbiwgSmFuaQ0KPiA+IFNlbnQ6IE1vbmRheSwgMTAgSnVuZSAyMDI0IDExLjIzDQo+ID4g
VG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEJvcmFo
LCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+ID4g
U3ViamVjdDogUkU6IFtjb3JlLWZvci1DSSBQQVRDSF0gUmV2ZXJ0ICJlMTAwMGU6IG1vdmUgZm9y
Y2UgU01CVVMgbmVhcg0KPiA+IHRoZSBlbmQgb2YgZW5hYmxlX3VscCBmdW5jdGlvbiINCj4gPg0K
PiA+IEhpLA0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IElu
dGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhh
bGYNCj4gPiA+IE9mIENoYWl0YW55YSBLdW1hciBCb3JhaA0KPiA+ID4gU2VudDogTW9uZGF5LCAx
MCBKdW5lIDIwMjQgMTAuNDYNCj4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gPiBDYzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJv
cmFoQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtjb3JlLWZvci1DSSBQQVRDSF0gUmV2ZXJ0
ICJlMTAwMGU6IG1vdmUgZm9yY2UgU01CVVMgbmVhcg0KPiA+ID4gdGhlIGVuZCBvZiBlbmFibGVf
dWxwIGZ1bmN0aW9uIg0KPiA+ID4NCj4gPiA+IFRoaXMgcmV2ZXJ0cyBjb21taXQgYmZkNTQ2YTU1
MmUxNDBiMGE0YzhhMjE1MjdjMzlkNmQyMWFkZGIyOC4NCj4gPiA+DQo+ID4gPiBUaGUgY29tbWl0
IHNlZW1zIHRvIGNhdXNlIHByb2JsZW1zIGluIHN1c3BlbmQtcmVzdW1lIHRlc3RzDQo+ID4gPg0K
PiA+ID4gWzIxMi4yMDQ4OTddIGUxMDAwZSAwMDAwOjAwOjFmLjY6IFBNOiBwY2lfcG1fc3VzcGVu
ZCgpOg0KPiA+ID4gZTEwMDBlX3BtX3N1c3BlbmQgW2UxMDAwZV0gcmV0dXJucyAtMiBbMjEyLjIw
NDkyOF0gZTEwMDBlDQo+ID4gMDAwMDowMDoxZi42Og0KPiA+ID4gUE06IGRwbV9ydW5fY2FsbGJh
Y2soKTogcGNpX3BtX3N1c3BlbmQgcmV0dXJucyAtMiBbMjEyLjIwNDk0M10NCj4gPiA+IGUxMDAw
ZQ0KPiA+ID4gMDAwMDowMDoxZi42OiBQTTogZmFpbGVkIHRvIHN1c3BlbmQgYXN5bmM6IGVycm9y
IC0yIFsyMTIuMjA1MDkyXSBQTToNCj4gPiA+IHN1c3BlbmQgb2YgZGV2aWNlcyBhYm9ydGVkIGFm
dGVyIDMwMi4yNTQgbXNlY3MNCj4gPiA+DQo+ID4gPiBSZWZlcmVuY2VzOg0KPiA+ID4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTQ5MDQvc2hhcmQtDQo+
ID4gPiBkZzItNC9pZ3RAZ2VtX2Njc0BzdXNwZW5kLXJlc3VtZUBsaW5lYXItY29tcHJlc3NlZC1j
b21wZm10MC0NCj4gPiA+IGxtZW0wLWxtZW0wLmh0bWwNCj4gPiA+IFJlZmVyZW5jZXM6DQo+ID4g
PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVz
LzExMzA1DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaGFpdGFueWEgS3VtYXIgQm9yYWgNCj4gPiA+
IDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiA+DQo+ID4gQWNrZWQtQnk6IEph
bmkgU2FhcmluZW4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPg0KPiA+DQo+ID4gV2UgaGF2ZSBh
bHJlYWR5IHRyeWJvdCByZXN1bHRzIGZyb20gcmV2ZXJ0DQo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzQ2MDMvI3JldjIgLw0KPiA+IGh0dHBzOi8vaW50ZWwt
Z2Z4LQ0KPiA+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvVHJ5Ym90XzEzNDYwM3YyL2luZGV4Lmh0
bWw/dGVzdGZpbHRlcj1zdXNwZW5kDQo+ID4gU28gaGVscHMgb24gdGhlc2UuIExldCdzIGdldCB0
aGlzIG1lcmdlZCBhc2FwLg0KPiBXaGVuIG1lcmdpbmcgcGxlYXNlIHJlZmVyZW5jZQ0KPiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExMzA4
DQo+IA0KDQpBcyBkaXNjdXNzZWQsIHdlIGFscmVhZHkgaGF2ZSBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExMzA1IHRyYWNraW5nIHRoZSBy
ZXZlcnQgOikNCldlIGNhbiBjbG9zZSB0aGlzIG9uZS4NCg0KUmVnYXJkcw0KDQpDaGFpdGFueWEN
Cg0KPiBCciwNCj4gSmFuaQ0KPiANCj4gPg0KPiA+IEJyLA0KPiA+IEphbmkNCj4gPg0KPiA+ID4g
LS0tDQo+ID4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8
IDIyDQo+ID4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL25ldGRldi5jICB8DQo+ID4gPiAxOA0KPiA+ID4gKysrKysrKysrKysrKysrKysN
Cj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygt
KQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9l
MTAwMGUvaWNoOGxhbi5jDQo+ID4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9pY2g4bGFuLmMNCj4gPiA+IGluZGV4IDJlOThhMmEwYmVhZC4uZjllOTRiZTM2ZTk3IDEwMDY0
NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4u
Yw0KPiA+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4u
Yw0KPiA+ID4gQEAgLTEyMjUsMjggKzEyMjUsNiBAQCBzMzIgZTEwMDBfZW5hYmxlX3VscF9scHRf
bHAoc3RydWN0IGUxMDAwX2h3DQo+ID4gPiAqaHcsIGJvb2wgdG9fc3gpDQo+ID4gPiAgCX0NCj4g
PiA+DQo+ID4gPiAgcmVsZWFzZToNCj4gPiA+IC0JLyogU3dpdGNoaW5nIFBIWSBpbnRlcmZhY2Ug
YWx3YXlzIHJldHVybnMgTURJIGVycm9yDQo+ID4gPiAtCSAqIHNvIGRpc2FibGUgcmV0cnkgbWVj
aGFuaXNtIHRvIGF2b2lkIHdhc3RpbmcgdGltZQ0KPiA+ID4gLQkgKi8NCj4gPiA+IC0JZTEwMDBl
X2Rpc2FibGVfcGh5X3JldHJ5KGh3KTsNCj4gPiA+IC0NCj4gPiA+IC0JLyogRm9yY2UgU01CdXMg
bW9kZSBpbiBQSFkgKi8NCj4gPiA+IC0JcmV0X3ZhbCA9IGUxMDAwX3JlYWRfcGh5X3JlZ19odl9s
b2NrZWQoaHcsIENWX1NNQl9DVFJMLA0KPiA+ID4gJnBoeV9yZWcpOw0KPiA+ID4gLQlpZiAocmV0
X3ZhbCkgew0KPiA+ID4gLQkJZTEwMDBlX2VuYWJsZV9waHlfcmV0cnkoaHcpOw0KPiA+ID4gLQkJ
aHctPnBoeS5vcHMucmVsZWFzZShodyk7DQo+ID4gPiAtCQlnb3RvIG91dDsNCj4gPiA+IC0JfQ0K
PiA+ID4gLQlwaHlfcmVnIHw9IENWX1NNQl9DVFJMX0ZPUkNFX1NNQlVTOw0KPiA+ID4gLQllMTAw
MF93cml0ZV9waHlfcmVnX2h2X2xvY2tlZChodywgQ1ZfU01CX0NUUkwsIHBoeV9yZWcpOw0KPiA+
ID4gLQ0KPiA+ID4gLQllMTAwMGVfZW5hYmxlX3BoeV9yZXRyeShodyk7DQo+ID4gPiAtDQo+ID4g
PiAtCS8qIEZvcmNlIFNNQnVzIG1vZGUgaW4gTUFDICovDQo+ID4gPiAtCW1hY19yZWcgPSBlcjMy
KENUUkxfRVhUKTsNCj4gPiA+IC0JbWFjX3JlZyB8PSBFMTAwMF9DVFJMX0VYVF9GT1JDRV9TTUJV
UzsNCj4gPiA+IC0JZXczMihDVFJMX0VYVCwgbWFjX3JlZyk7DQo+ID4gPiAtDQo+ID4gPiAgCWh3
LT5waHkub3BzLnJlbGVhc2UoaHcpOw0KPiA+ID4gIG91dDoNCj4gPiA+ICAJaWYgKHJldF92YWwp
DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jDQo+ID4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYu
Yw0KPiA+ID4gaW5kZXggZGE1YzU5ZGFmOGJhLi4yMjBkNjJmY2E1NWQgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMNCj4gPiA+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPiA+ID4gQEAg
LTY2MjMsNiArNjYyMyw3IEBAIHN0YXRpYyBpbnQgX19lMTAwMF9zaHV0ZG93bihzdHJ1Y3QgcGNp
X2Rldg0KPiA+ID4gKnBkZXYsIGJvb2wgcnVudGltZSkNCj4gPiA+ICAJc3RydWN0IGUxMDAwX2h3
ICpodyA9ICZhZGFwdGVyLT5odzsNCj4gPiA+ICAJdTMyIGN0cmwsIGN0cmxfZXh0LCByY3RsLCBz
dGF0dXMsIHd1ZmM7DQo+ID4gPiAgCWludCByZXR2YWwgPSAwOw0KPiA+ID4gKwl1MTYgc21iX2N0
cmw7DQo+ID4gPg0KPiA+ID4gIAkvKiBSdW50aW1lIHN1c3BlbmQgc2hvdWxkIG9ubHkgZW5hYmxl
IHdha2V1cCBmb3IgbGluayBjaGFuZ2VzICovDQo+ID4gPiAgCWlmIChydW50aW1lKQ0KPiA+ID4g
QEAgLTY2OTYsNiArNjY5NywyMyBAQCBzdGF0aWMgaW50IF9fZTEwMDBfc2h1dGRvd24oc3RydWN0
IHBjaV9kZXYNCj4gPiA+ICpwZGV2LCBib29sIHJ1bnRpbWUpDQo+ID4gPiAgCQkJaWYgKHJldHZh
bCkNCj4gPiA+ICAJCQkJcmV0dXJuIHJldHZhbDsNCj4gPiA+ICAJCX0NCj4gPiA+ICsNCj4gPiA+
ICsJCS8qIEZvcmNlIFNNQlVTIHRvIGFsbG93IFdPTCAqLw0KPiA+ID4gKwkJLyogU3dpdGNoaW5n
IFBIWSBpbnRlcmZhY2UgYWx3YXlzIHJldHVybnMgTURJIGVycm9yDQo+ID4gPiArCQkgKiBzbyBk
aXNhYmxlIHJldHJ5IG1lY2hhbmlzbSB0byBhdm9pZCB3YXN0aW5nIHRpbWUNCj4gPiA+ICsJCSAq
Lw0KPiA+ID4gKwkJZTEwMDBlX2Rpc2FibGVfcGh5X3JldHJ5KGh3KTsNCj4gPiA+ICsNCj4gPiA+
ICsJCWUxZV9ycGh5KGh3LCBDVl9TTUJfQ1RSTCwgJnNtYl9jdHJsKTsNCj4gPiA+ICsJCXNtYl9j
dHJsIHw9IENWX1NNQl9DVFJMX0ZPUkNFX1NNQlVTOw0KPiA+ID4gKwkJZTFlX3dwaHkoaHcsIENW
X1NNQl9DVFJMLCBzbWJfY3RybCk7DQo+ID4gPiArDQo+ID4gPiArCQllMTAwMGVfZW5hYmxlX3Bo
eV9yZXRyeShodyk7DQo+ID4gPiArDQo+ID4gPiArCQkvKiBGb3JjZSBTTUJ1cyBtb2RlIGluIE1B
QyAqLw0KPiA+ID4gKwkJY3RybF9leHQgPSBlcjMyKENUUkxfRVhUKTsNCj4gPiA+ICsJCWN0cmxf
ZXh0IHw9IEUxMDAwX0NUUkxfRVhUX0ZPUkNFX1NNQlVTOw0KPiA+ID4gKwkJZXczMihDVFJMX0VY
VCwgY3RybF9leHQpOw0KPiA+ID4gIAl9DQo+ID4gPg0KPiA+ID4gIAkvKiBFbnN1cmUgdGhhdCB0
aGUgYXBwcm9wcmlhdGUgYml0cyBhcmUgc2V0IGluIExQSV9DVFJMDQo+ID4gPiAtLQ0KPiA+ID4g
Mi4yNS4xDQoNCg==
