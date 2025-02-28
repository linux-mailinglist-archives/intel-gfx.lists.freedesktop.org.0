Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173A0A4907C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 05:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491F510EBF8;
	Fri, 28 Feb 2025 04:47:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J3ySgXj0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164D510EBF8;
 Fri, 28 Feb 2025 04:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740718061; x=1772254061;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M/qIxp4Eau1CHJOGDS/jMjDz9rgXNJ/HjLTRyvtTxqY=;
 b=J3ySgXj0+yl3tlYdCT/mtS+oNXFI3P23Y2Sa8cx32REWizKJmntgiggi
 bwQsYjQ3C1GmP16pqeUOHhgDp1dRRHdVpb9bm1IKIPsl1u22hDLzVYtiB
 Twhtobal2AAezdNDU6lSgsIgffyEmmWvzB4PHOBNuatfJVcc8LgrXKoDr
 ZmUfsU2it2d4lMzA23CteAbaNWqPgE/89HtoiXU53vpv6ZXA2JVhmhO8f
 v3nWbdKu7s6DRgYGy8PQNk2ZGtHIs5OH4NVogpPbAOQn3tYP8oeQwoIEg
 n2NGA8pPHTZS/NGHZuSwkoG6EIjcE/K4Up/gBm+NoLIUPeRO+asC29kxG w==;
X-CSE-ConnectionGUID: n3wwc7ORS3q0Hc00T9l0vw==
X-CSE-MsgGUID: +glcIXTRT2CYvsOgNVm+1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41553500"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="41553500"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 20:47:41 -0800
X-CSE-ConnectionGUID: 5eu3btZXRlK/+nmD0s6Mbg==
X-CSE-MsgGUID: wQNIzvttRFCI9d/Ju6jSpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="122359013"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 20:47:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 20:47:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 20:47:39 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 20:47:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K2ffUN115kkUMUtZF/HqJZ9gTMfToamalNBjHg6A3XIJr+3fN5qbqnqASVCyusqGUjbQ608RrUBZaT7iF0FMbkWZLMaC+deYjkasZNhzwpk2f9fsBP8zCYZtnFZ0iINyYoNDD0o8p4SarEE8QCnXcBA1lijt0RkPx8DUs5zGud853bqzHMGuSuF8HqMZoCPTPjlMLtJTfm+uLPFx4u0VE6/WnxeL4EEnjG1/0UxD/GddJDt+5rkVj0yB1VL/0Vp3ixe3kKSwXnwLuwTZfJEtZ5Ekb+PqfV18I4MlAznY9Q5981PFE30FMbXpp7Sgk7680UHlc/VPiGLpBA1xLp4iLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M/qIxp4Eau1CHJOGDS/jMjDz9rgXNJ/HjLTRyvtTxqY=;
 b=VI5r/3jYBJEeJdNqcu9NAhHFATOF/TxnhYK3iG8brXub/0SKWyn0FKyNGz33ZKiRsKBuqNbnIfq//1k+tiR5M7ZI+hwlYeqqXSrU50DStxg9OkSU3qgpuxScY4l2WEGz37zK9EK8kafc9xOeDY+0t7bLXea0NTAcl0xKdam0aHVfGOssqhV9IFhbzfVEPnQdV2TrpICobEz3HWdETE4+4SMP48GiKYFfLzvXHZuE4RNKSNf2REBLLuwr0//iiruGBt1VqcrNnrVsive1SY9pkRMRNjtj8fmmojjkMEipE8tX31e+IVcsuujB2d9NWaeHwPQzWwxKIcGVYDEXNrd0+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8155.namprd11.prod.outlook.com (2603:10b6:610:164::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Fri, 28 Feb
 2025 04:47:36 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%5]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 04:47:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Tseng, William"
 <william.tseng@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Thread-Topic: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Thread-Index: AQHbiQqFz86zEy3TB0uNHcWC2Wd3v7NcItUAgAABlfA=
Date: Fri, 28 Feb 2025 04:47:36 +0000
Message-ID: <SN7PR11MB67501F26AE0E2D2A36B9F085E3CC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250227112654.279160-1-suraj.kandpal@intel.com>
 <a940d336-31e3-467d-bcc9-4c9301f7a740@intel.com>
In-Reply-To: <a940d336-31e3-467d-bcc9-4c9301f7a740@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8155:EE_
x-ms-office365-filtering-correlation-id: 8b588a09-ac8e-410b-e422-08dd57b3060f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZndKTDhpYUxzTHU0VG54TmlxbEgwbmVOT05IY0JXd0diY1JuWW5XWFRPUyt0?=
 =?utf-8?B?RzVDRkJENVB4Rys5aHNYM0s3MFBuai85QVMyRXlQREk2Mlh3eC9xSWpaZnJi?=
 =?utf-8?B?Wnc5RTZBUXZORzJaS1FoRGFKMERxb2hUYmNNeTFFeGVQaHMvcVFnV1NyQ0lH?=
 =?utf-8?B?M1hpZWdwTW14cm5LYVRLelliTFdHdlZHbVMzSmQzV1FnRzg0cHltamthQnAr?=
 =?utf-8?B?VHc1MXpQcTY3Skt0MTBDZVIyQWJVRWJXSWxnM0NNUzFTcWpzeG5oTEhpak1W?=
 =?utf-8?B?NDZtNWc2UHN0OFd3eVJYN05QL29WR2FDRHB1RkZPNHU1MEdXZzY4V0ptMCt0?=
 =?utf-8?B?UFMvZ2NmU3FVQ0FiNkxZaU1XdWRVRmNMeVNYREk3K3dNT1BXWjVZanZqdHQ5?=
 =?utf-8?B?ckhYSmNPUzNDVFE4SVFZZ3luWDBDV21BUlo0VzRKRURIdWFrZWhGRndQT1Fx?=
 =?utf-8?B?MDlrWmRzQWJubHhCaDlud1Mzck55RGh0UlVxWEN5enFrMnBwMkVSM3pZeURG?=
 =?utf-8?B?OXNxcTg4am9hOXh0N2IydFozU25tUWk1SlA4dEI5T2tFMG9QejVWUzIvS0RC?=
 =?utf-8?B?QzM5eTI0NTVtNXlxWEdnN09yZHJLTTRFK0pORks0RHpMSEl4M0pmcHFNNWlX?=
 =?utf-8?B?VWdxdnRua3VUZjdXVkNYeEVxUVd6ekJGbUJETCtMTVpITEZhTEVVS1dGU1ph?=
 =?utf-8?B?MFljZyszQUJGWTdwRXVIWFU2RndqZHhtSG92WEJNUU9mbU5vR1RvWWhzY1dD?=
 =?utf-8?B?WHgyeTRVSFhsSjFHVHh4cG9McU5BeWVlTVh6OElzQkdES3NMOTJHMHU3b2x6?=
 =?utf-8?B?TWtQbFVoeUJsSWVNU2RycExVQWRSUitDbTFZSXRHNWZ6R3VrV1JlNzdrWmpr?=
 =?utf-8?B?eWxUbDE0OTYvVGtOLzlJRkMzdjRRYzlZS3c4SmQrZXRoaHAzN29FeDQybHI1?=
 =?utf-8?B?MHVjY3U5ei9mRE01MU1lRndwYnh0cld6YmhzSU5oL01WaFJ2bHc1d3NPNy8r?=
 =?utf-8?B?dnZjVXB6WnMyMjEvUHAreGdIaGlzZkF3aWROTEJ3V3NJa3JZYUFJSm9iajhw?=
 =?utf-8?B?NS94QXVLT1ExcHdIY3NybTA0SDZTWXF2M2VQTnJIKzEvU211WlJ0R0tNZ3cy?=
 =?utf-8?B?d2xVdnd3MTJYaDJXOEJjMzVUaW1vMmlzRytMVXhRZHFUNy9vQm56cnpHaHVq?=
 =?utf-8?B?VDh1aWRhUVFhSVVwU2ZNaFZueEJKaERCQncycG1pams4MUZQTnRXMGovZmpp?=
 =?utf-8?B?d2h3K20yNnR6UHVPb2pHRXcrbmx1cjA3cjRwelYrcWxKYnVLcGJpM0xGUmEv?=
 =?utf-8?B?SmdwaHVVbW9ScmgzdytvQ3ZjaW1PcXZLaUhHRmM2ZFo4TjRNME5iNDd1UlAv?=
 =?utf-8?B?OEo0ay8zL3ZDOTAzTnEvTUd4U0hiUnFKRnRleXhOUXYwTzVTVktiV01sSmw1?=
 =?utf-8?B?a3dZTGUzRDN4WitrOUFQV0RZZGZrY0VZbEE2RVlUV2lHNlJCbHlSb25mV0hH?=
 =?utf-8?B?dXVaYWZaUUVNTkd0MW42Mno3NXhzWGRibkdFTGtPRWpBN1dJSyt3WDJQN2c5?=
 =?utf-8?B?WVRhZ0lMVDFMZ1k3dWNGbEVYZzJsK1dheTNGdGdNOEExYUdjNlRRL3Z3NWhN?=
 =?utf-8?B?WnVZZ21hcTlSUHpzdEtvSy91elE2WXBmNnpITWZuTXA1SmZ1eGJEU2NLNmkv?=
 =?utf-8?B?dDM1OXAzWHdyUEV5d1RDelpXOFdDWC9ISkFQNUc3K2x5MHF6U29VSGRpRlcv?=
 =?utf-8?B?dGYxcUU1a1kxN3RweTJLN2lzYmQrSTBnTE5hcUUxUHhkU0dDN1FON1JJVGNH?=
 =?utf-8?B?YjFmVXRqeVNoV3h5Rnh0eUtkcXZLQmV0N3AzeEVTZ0xuUitwVWozOEVUNElW?=
 =?utf-8?Q?jjLqlwLpHxMfX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWVMOXVPNXo4R0drSHRSL2JkZjJIZG9TYzRtMmxTWWxTV2lqb2l4d2pNYzY2?=
 =?utf-8?B?VHBPSDVWNFJsbnZGUkJtazFEZEpWRkRuSVVhekxad1FYaTF0and2d1hSaXRB?=
 =?utf-8?B?aERVdTg3eWlxdTFROEtxYjZOZXA1OWxqUVdoRDFJR2YyQSswelJJN1dkNDlM?=
 =?utf-8?B?b2kzSFYzWThSL3FZZC9EV05yOVV0SnBCUGR5OHFOelZFekZ6ajRvbkt6cU1l?=
 =?utf-8?B?Q05uYVdrNWNJR211UjFDMkMxTHhJZU1RUnJKRko2SjczK1c2bm1VNjU2a3R6?=
 =?utf-8?B?L293MFF6akdpNVBxekZQRFRIbUExSG5tZGgyb3dDR0NlR24rQWRpUXhxdjRE?=
 =?utf-8?B?ODNxQ3pKajJXeHRsN0o4bjlpeG5nNDhGODg5ckE2M0xYN210OWNTbWI2OHRi?=
 =?utf-8?B?bnNJb0JsSTZRbkNwOFRvajJuMk9mc280QWc4dHVla3FwZ3cyS3A1TDFTbEtY?=
 =?utf-8?B?YXV2NTZ2YXNMQUVFVjc2QUVQTlN1MmExOWlXQVRTRjY1dklScWtvZkRzYzlW?=
 =?utf-8?B?SEdXRXc0ZnJXRXNMR2RQb0ozOUhzSTZKVnBTTGpEdHVJVnpMaGd6cUZWdXg0?=
 =?utf-8?B?VjJkbytvckpmSmdyYjVtNTZVQ3QvTVBMQVZVb0FMWHYyVURYZFR2WkNTMlgy?=
 =?utf-8?B?TXA2M0VZZ0lrY0VVRUdEVVVvQi8xVHZtMm5meFIyUm55ZitlbmRtYkpjblBJ?=
 =?utf-8?B?R0FZNGtmUk9OdFZqZ1FqN0M4WHpaQnRjSGRxQjBRcHJLWHM4SHd0Tm8wOC9D?=
 =?utf-8?B?UEthNnRNNDdvNE9EbjBTWURqdVo4Z3dxWDQ3RVJERFM1Uk9TNzhEckNudUpP?=
 =?utf-8?B?TkpqRkNiV2JqMU9lbHJnZm9Ta08xdXFwb3F4UmlKOUNFT29sNGxuTW5YaXRI?=
 =?utf-8?B?WXhmRmFEOVdqZDRNWHNLNFpqTHN5bTdiVzFJODMzRVVkbW5kY2lybEVHdEJW?=
 =?utf-8?B?bmlydUhFQ0h2YW45QngwcFBMcVd5c2NpVjh1Q29aOEdtODJqMy9TT2VvQk9y?=
 =?utf-8?B?V3JDcC9wei85M1lqV1FqSmN1VFJKSlZXbkpzOWZGSlBhRzF3eHo2dTF5aFcv?=
 =?utf-8?B?SUJ6VFI4bjNtVFQ4d0lOL3UvZ1EyWVFNU2toTnRJYXBFd0U0SW5vVVdCbktL?=
 =?utf-8?B?RXNrMmpNMGdaR09aZVgzTVRJOHRzbmRvczlwUGZYMDhTTW4rb1Zxc1NveG01?=
 =?utf-8?B?aTdqL1JYRjlpUzdkYzNLdHZOMWtTRUViVURHU2ovdERrOUh5VnZIUWMwQmYx?=
 =?utf-8?B?bDVYMEJZUWJLWU1qVXMydm9qbDB6WGtzSGN4MjlGY2pXZzdoZExyUnIzVWJT?=
 =?utf-8?B?RGNrUGtrTkhBcDlXRVRsaGc2Y2VmeFRYd21Sc2tKdFVvOHFiQXFEY1RGUStu?=
 =?utf-8?B?L1YwWmVyT3RabExyTUJETS8xeVhPLzVVT09UdTZPQ2JZVWx2UG1YUitUM2Rr?=
 =?utf-8?B?b2dSRGYxN0E4NlVvalZhTTJRRkVmNFBEdEhIOFhHcThxN3pQRDdnRkQ3U3lQ?=
 =?utf-8?B?QnpZWUpTdFI3dCsySHIzMWZyVllXUGp4M3UyQS9MMndERFVRUjdzUy95Y0F1?=
 =?utf-8?B?WEZFai9BbnhZQXNFeS8wdVFudmtqK25SRWtQMzJadU9VNndYc3FueVlwc1lJ?=
 =?utf-8?B?MUtnY3dvM1hnT2lKeWg2K0tYenNWQXlFVHZsQWRyNi9RSmVYN0ZGZktOZmNh?=
 =?utf-8?B?MTJIeXo1VWM0REliREdLcmpmWjlmUGxHWWd4a0gxbVlTU25xOG5FR2s3SWVW?=
 =?utf-8?B?RUk1emFZTGVwRzZROFdPdXBvMUJMQXNYdXIrWWNjYWxhSTM0cW9pN3lVQ0lC?=
 =?utf-8?B?Q0pJU3dJb1dMR0lKY0FpNDhMTjV0OXpkbTlLZGlEbGg0NGhuc0drUFBVWDVt?=
 =?utf-8?B?VUJuT3dTRC9wTFcyemY1aXcweFRpQ0Ztdk9mQnVTcThSb1hoNk14U2lSSHBq?=
 =?utf-8?B?M2tCSDVMSnh6N0l5NHFBa21COVJYaCsxbFhua0lWRlNpbUEyc2p6cGJoL1pH?=
 =?utf-8?B?eDFBRFdveGlkYzU5VVhsVE1zejk3MzJtYU9vVlUyYmJwZ1VsYk1CWFJsMEtF?=
 =?utf-8?B?U3F1THpGMDBzenRMVFJKblVMamZLdkV2WFA5M21naDNRTUJpK2xvcDZzMzBw?=
 =?utf-8?Q?8/IODIXEPUjf1WlIShM/SGz+Y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b588a09-ac8e-410b-e422-08dd57b3060f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 04:47:36.8535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x4/V9vE90KerVRkbirNuBJwqbY7Rzym7sDKKprWy1BJq1eG1kaOZLC7TF9p0amHHwZ+O/IR78xMM7ChGNJd9yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8155
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

PiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS92ZHNjOiBVc2UgdGhlIERTQyBjb25maWcg
dGFibGVzIGZvciBEU0kgcGFuZWxzDQo+IA0KPiANCj4gT24gMi8yNy8yMDI1IDQ6NTYgUE0sIFN1
cmFqIEthbmRwYWwgd3JvdGU6DQo+ID4gU29tZSBEU0kgcGFuZWwgdmVuZG9ycyBlbmQgdXAgaGFy
ZGNvZGluZyBQUFMgcGFyYW1zIGJlY2F1c2Ugb2Ygd2hpY2gNCj4gPiBpdCBkb2VzIG5vdCBsaXN0
ZW4gdG8gdGhlIHBhcmFtcyBzZW50IGZyb20gdGhlIHNvdXJjZS4gV2UgdXNlIHRoZQ0KPiA+IGRl
ZmF1bHQgY29uZmlnIHRhYmxlcyBmb3IgRFNJIHBhbmVscyB3aGVuIHVzaW5nIERTQyAxLjEgcmF0
aGVyIHRoYW4NCj4gPiBjYWxjdWxhdGUgb3VyIG93biByYyBwYXJhbWV0ZXJzLg0KPiA+DQo+ID4g
LS12Mg0KPiA+IC1Vc2UgaW50ZWxfY3J0Y19oYXNfdHlwZSBbSmFuaV0NCj4gPg0KPiA+IC0tdjMN
Cj4gPiAtQWRkIFNpZ25lZC1vZmYtYnkgZnJvbSBXaWxsaWFtIHRvbyBbQW5raXRdDQo+ID4NCj4g
PiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwv
LS9pc3N1ZXMvMTM3MTkNCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5r
YW5kcGFsQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBXaWxsaWFtIFRzZW5nIDx3aWxs
aWFtLnRzZW5nQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgNCArKystDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gaW5kZXggNmU3MTUxMzQ2MzgyLi5hZmZl
OTkxM2YxZWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zkc2MuYw0KPiA+IEBAIC0zMjAsNyArMzIwLDkgQEAgaW50IGludGVsX2RzY19jb21wdXRlX3Bh
cmFtcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqcGlwZV9jb25maWcpDQo+ID4gICAJICog
dXB0byB1bmNvbXByZXNzZWQgYnBwLTEsIGhlbmNlIGFkZCBjYWxjdWxhdGlvbnMgZm9yIGFsbCB0
aGUgcmMNCj4gPiAgIAkgKiBwYXJhbWV0ZXJzDQo+ID4gICAJICovDQo+ID4gLQlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpID49IDEzKSB7DQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID49IDEzICYmDQo+ID4gKwkgICAgKHZkc2NfY2ZnLT5kc2NfdmVyc2lvbl9taW5vciAhPSAxIHx8
DQo+ID4gKwkgICAgIGludGVsX2NydGNfaGFzX3R5cGUocGlwZV9jb25maWcsIElOVEVMX09VVFBV
VF9EU0kpKSkgew0KPiANCj4gVGhpcyBzaG91bGQgYmUgIWludGVsX2NydGNfaGFzX3R5cGUocGlw
ZV9jb25maWcsIElOVEVMX09VVFBVVF9EU0kpDQo+IA0KPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJl
dHRlciB0byB1c2UgYSBmdW5jdGlvbiBmb3Igc3BlY2lhbCBoYW5kbGluZyBmb3IgRFNJIHBhbmVs
DQo+IHdpdGggRFNDMS4xLg0KPiANCj4gKEkgYW0gbm90IHZlcnkgc3VyZSB3aGF0IHNob3VsZCBi
ZSBhbiBhcHByb3ByaWF0ZSBuYW1lIGZvciB0aGlzIGJ1dCBqdXN0IHRvIGdpdmUNCj4gYW4gZXhh
bXBsZSkNCj4gDQo+IGJvb2wgaXNfbWlwaV9kc2lfZHNjXzFfMSgpCQ0KDQpTaW5jZSB0aGlzIGlz
IGEgc3RhdGljIGZ1bmN0aW9uIEkgdGhpbmsgdGhpcyBuYW1pbmcgc2hvdWxkIHdvcmsNCg0KPiB7
DQo+IAlyZXR1cm4gdmRzY19jZmctPmRzY192ZXJzaW9uX21pbm9yID09IDEgJiYNCj4gCQkgICBp
bnRlbF9jcnRjX2hhc190eXBlKHBpcGVfY29uZmlnLCBJTlRFTF9PVVRQVVRfRFNJKTsgfQ0KPiAN
Cj4gVGhlIGNvbmRpdGlvbiB3aWxsIHRoZW4gYmVjb21lOg0KPiANCj4gaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSAxMyAmJiAhaXNfbWlwaV9kc2lfZHNjXzFfMSgpKQ0KPiAJY2FsY3VsYXRl
X3JjX3BhcmFtcyh2ZHNjX2NmZyk7DQo+IA0KPiANCj4gV2l0aCB0aGlzIHdlIGFsc28gbmVlZCB0
byBkb2N1bWVudCBhYm91dCB3aHkgd2UgYXJlIG5vdCB1c2luZw0KPiBjYWxjdWxhdGVfcmNfcGFy
YW1zIGZvciBNSVBJIERTSSB3aXRoIERTQzEuMSBpbiBjb21tZW50IGFib3ZlIHRoZSBmdW5jdGlv
bi4NCj4gDQoNClN1cmUgd2lsbCBhZGQgbmVlZGVkIGRvY3VtZW50YXRpb24NCg0KUmVnYXJkcywN
ClN1cmFqIEthbmRwYWwNCg0KPiBSZWdhcmRzLA0KPiBBbmtpdA0KPiANCj4gPiAgIAkJY2FsY3Vs
YXRlX3JjX3BhcmFtcyh2ZHNjX2NmZyk7DQo+ID4gICAJfSBlbHNlIHsNCj4gPiAgIAkJaWYgKChj
b21wcmVzc2VkX2JwcCA9PSA4IHx8DQo=
