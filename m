Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DD8CD8FE7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04BA10E2AA;
	Tue, 23 Dec 2025 10:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ckWwkpa4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1356410E2A3;
 Tue, 23 Dec 2025 10:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487478; x=1798023478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=scRNK/Zo4+mdetIHrtiWdFjxzJhlFNYSNmADwz7poNc=;
 b=ckWwkpa4dU9geogbsrVePkJav+7p1t/JJDTwgBCOTsj//XxTLHXQkaJV
 tym2mwA7hFrz7YzrPSfxqvsml5Aqwyf2L3EAZ2WWrc6RE1HKBrSW1bx/I
 sz5V0eHmJChL2Gq5EnqgGDSz/GDqGi+0KchGd54NEOjgHnwcnv1pO/roS
 kLudQ3QN5wIg8l9dvZM2+uJd3iCSCFEP7CRo+65RaWbKxI1635S4OERVH
 Jd/fvjqHIGBabV26LlUdgf9wlpyKIlq53fmqsuirA+Na1vcpROCy5hQXn
 XWLCerKowGE475VFAUB6syTx3G3kyz4/SLp5NJPNU1n47kCFjI/CG2buU A==;
X-CSE-ConnectionGUID: 6eIukZYrQJORu7kWTAzJUA==
X-CSE-MsgGUID: t2Nr2T4RQ/alnJQsfTQfeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79453662"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="79453662"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:57:57 -0800
X-CSE-ConnectionGUID: 3I7bRVOxQzG0N8bNOgZ/1A==
X-CSE-MsgGUID: X4CMH3r6TPmBxRC7zOQkCA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:57:57 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 02:57:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 02:57:57 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 02:57:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VKDARRA/ezVmh5MgIkPkOL7uLHlrg7+feMfan1cB65K6J5so1D6tFYofwEQM7tcGivYJpJ1qfHUJaNhzeW+QcfhqomHeTja8R0pPAuLlb1eENusd263SVdVSUd6QERdW+r5+ZkEhqX6uoNjy3el+8SjES9R0lAlOSV9xaCmjBu6euN1TzGgos5Zd92++ivn+8FatiG+Ds/GJj9pSs6/ztZtdRjduMUfmwI11Al0Le7Zybn4oJH+EY0in1nZQ+qAEgAtArU2dzfRv7pjZ1jtpD5mtwa3K3d5dhQ3lGBdG0ozW0xiLF/D5xODsJNn1i/XhmsknB8n9jp7D6fKyiuXuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=scRNK/Zo4+mdetIHrtiWdFjxzJhlFNYSNmADwz7poNc=;
 b=oklD7ZDZ47wBzcy+1XLleT2tn7MwnG5o78kP+JAjTiTDJKPceVe6FQyi68XjUO8BL2dhAYJxRe6gT9L3uai1f4P5rHnZ+munKpFPsiqFvG6nQ+CJoLh3wkhdqxT2ViE87YQ97Gvp+fLyazhVZzgeq6M7q6VkjeY/NIQIUUQZVo2dJuQMvf4q4E/M4dM5kEAggCqH7L8/FQhbZlHz9nmzKmv5xk70jTb4JIw+0NWVRBkSajwg1JEU0AOFJ6you4d2z1htRhn9uk9gLihXfJMyq9bswORNPL049Ud0l0TXO21hiPl/BK9qJfNA5e4ECySYSzX3QRJKHUEHZMIg+A+B8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB5110.namprd11.prod.outlook.com (2603:10b6:510:3f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Tue, 23 Dec
 2025 10:57:54 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%5]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 10:57:54 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Thread-Topic: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Thread-Index: AQHcY16D/VJveTMVWUG8hTe9PhvJKrUkSO2AgArmJIA=
Date: Tue, 23 Dec 2025 10:57:54 +0000
Message-ID: <IA1PR11MB634840738995725EBD7C0841B2B5A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
 <8d31226f-a94d-49f7-8ee5-aa34ea37f19c@intel.com>
In-Reply-To: <8d31226f-a94d-49f7-8ee5-aa34ea37f19c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB5110:EE_
x-ms-office365-filtering-correlation-id: 0e66ec2a-560f-46bf-2abc-08de42121fe2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?LzhMc3lmR0psUERMd0Zmb2Z4SEM5OEplalVPazNVSExuT1Q5YTg4Q0c4Y0FV?=
 =?utf-8?B?aDZuOFM2WkZXS3l6ZklqTVN1cW9oUlFWd0NKYU9wOHp3a24vM21FK3lva3lB?=
 =?utf-8?B?cmVhTDhoR1hmNldmMldJblU2TysxMTdabksvR0xwc0JRbjN3ckU0TUUyeGJy?=
 =?utf-8?B?bUtjb0VXTTZhWTNydThVcEtCdjAzalFrU2JVdUt3Z2oxbGMwSnlHYzVwZ0Jo?=
 =?utf-8?B?am9oK21CemZDQ1NwbW80aVhHazZBV08wajVSQVBmakRLcldXSDMwbTVCcFhj?=
 =?utf-8?B?R3pkeWU1SFNuQ09yOHQ4WFF3K0tsQjY0aEc4Nm5FdHlHUEtYdE9panlVL1V3?=
 =?utf-8?B?YnFkeGxXaTFnQ3ZpcDEwWnhuMFhDOXA2Z1RVVDhFd2gzdnR3czlXVFA1T3ov?=
 =?utf-8?B?cklQdVJvVEx4cExuT0FrbDF0dk9QTzFWRW54OFJNNG9LbzVzWTJLZXF0VmJD?=
 =?utf-8?B?QzNlSDlqR0djclMrUkRXRFBCeDlkUG9qUlFIclJEUmZ4dWEzVlB6REtxLzY1?=
 =?utf-8?B?NmJxc0ZmTStkdlcyVkhqTWRTUi9iNTdBdG1JeXRHRnBSNHg0RmloazRla0d2?=
 =?utf-8?B?L1d1a1l2TFhPR3lxOTZHaFlla0wzSEJjNHhndC8xQ013eVpLRkw3MENDNnUy?=
 =?utf-8?B?bTNkM3gvOWdUYkh6T2tGZE9lck9yTnVtdVh5Y0dFNXA2bEpwakNtYW1yL1o2?=
 =?utf-8?B?bFBDd1M1d0Z0cXYzdHozTmhTcG5QTzFBR1Y1dUh0TU9RbHl1ZjV0cGhjbmEy?=
 =?utf-8?B?OTF1QWd0RXZObWdSMnhieWVtU2QzZEc3STJhaTJiYnc1c09tclJ6Zlg3a0gw?=
 =?utf-8?B?VVc0RnZJbnp1cjNvdThaNUVITERJV1Z0aTg2Uk5PbXBrRk8yMFlONWxxTzNX?=
 =?utf-8?B?N3ZKWDkyMytZV2hIa0xaQ0hrQmlKQjBGUVltVFNMOHQ2THp0cTYrdVIrVlhF?=
 =?utf-8?B?UWpwMGg2cU9TVFIvZGhZenpxVkNMMUovSkh6d3d5NmdheWJnOUlvMGQ3VmNG?=
 =?utf-8?B?MUMwTU5IdEJIUFRZaTdGMHN1L1h5SFh4UlFERlpRUlNET0hrSzFmbTZKVkg4?=
 =?utf-8?B?Zm9UM1kzV25LU1NKOGkwc3hqL1pPRmJOWEM2SVViOWRKZ3JHSzd0MkdpUkRV?=
 =?utf-8?B?WGtQb1VjSm1UNTlubldhY1c1U2FVWDZLRDB5Tk1VSlc3TVpRcng5dEc4TUNx?=
 =?utf-8?B?aUNiMkQ5eHBsMndUS2dhWlNhV25HSmNKa2lySCswenpRSnFYZll3Unlkbngw?=
 =?utf-8?B?cVA1bXZRVTJFU1ViM2k4OVB1Y0lpeTVFNzZ6WjNtdVF4ZEpDZDd5WUdDMTdY?=
 =?utf-8?B?Uk9uRTloc3Fxb29WWHlEcmsrL1pvY1dlMC8rbm0xRnlLZjkzaXdWTkV5bTNW?=
 =?utf-8?B?Mm1ia21lVEgxa2l6Z2lSbEdPd3NFaGNlMU9aeHl0SldWNzBsVkdzTzRBU1Ro?=
 =?utf-8?B?UEsvckZId0pDbVpLeXkzSDMrcGRYUTBuQm45TWRiSXBnNmtBK2ppZFM2RWRT?=
 =?utf-8?B?V0ExWFF0bzhkTVI1NnlMMm5TOHd1dEQ3bVdBWVRhN3UzTXEzWHBGSUpFUW91?=
 =?utf-8?B?RHRpTUg0MThzell4Q3hHQ0ZvdFdqTlUydHFYMjRabTd3andvVU1tRlpxN0Qx?=
 =?utf-8?B?S3c5MjV2VEpkUzc2aTZYZ0s4c3NpL0VYM2ltbDFEdzQ1R01LWi8zUmxCdmRo?=
 =?utf-8?B?anF4RXMvNkhFcmNRZUx5R2d0cjZveDEvYXFrTmVKMEUvQ1l0c1hlelpYMlZh?=
 =?utf-8?B?TmN1Q2tHR3I5dXBBeGZLazNIYk16SjM5WDJSSk1ETkFyR0VVcTF1ejJDdURy?=
 =?utf-8?B?RFFTSWs3am9lWlEva3NrclF3MWllWjR4L2tXOVUvSGNHVjJ2UmFhT0xvNE5p?=
 =?utf-8?B?aVFSR0hOdUxwMFJkSm9zbmFOR2RObmNScnIwaGpYZWp1aFo4YXlPSENicmhX?=
 =?utf-8?B?cnUyc01PMXRwaUJscG9JQWJudTd3amZvanVveitEMHl5N3NaeThvcHhIMjRO?=
 =?utf-8?B?dFBXZmcvS01nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHlSRzBZVnUweGd6TWlxb3o1bGRYaTdwbkhJemViUzJkMzJHcXMzS1l5eTk5?=
 =?utf-8?B?bjJzQ2lsYTVPbTI5dGIvdWs2bkR4emo4cjhPYjJpRnJlbWZEQU1OSk5WVVRT?=
 =?utf-8?B?aDg0OHV6ZVJNUFpzVUMrZUttNW12UENSQUxxSk50enRYTDJSamdTeGpDRCt4?=
 =?utf-8?B?K3VKckxhWERtb3dBbUJrVVFvbUlPU2sxODhiVFp3YjlZcys0WWNwSGprL0Yz?=
 =?utf-8?B?bG5aUXJDV2s5ME1ybWhEUVloSW94U1FIZ1NZTVJZdnpKZXRESkdyV3Z5OExG?=
 =?utf-8?B?dEl3cFJwNWY2TnQvKzNaYUlaT3oreXA3azFUV0YvaVBGZ2JFT2xIVFJhSHdI?=
 =?utf-8?B?eUtEampGNlBpL3N5K2pITVVTRkI5OWw2eWUrU3QvZS9hZzJkZUdzcWhDNmNX?=
 =?utf-8?B?R1hoaG5CVEZjaGZUMnVLOENwRHd2UWZUSm1xMlRDOUNTbkZNL1pidDhSaURP?=
 =?utf-8?B?TWFub24yV0Y2dUdpNm5wVmtEV0g4T09HNEF1cFFMM01hMWIrVWJwMzBPSVUv?=
 =?utf-8?B?Y20wTHNYN2ZZQUo3b3dySjJ0SjhrSE1KcVRrRXZ1NVVYZkVYWVZqQk5xNkhB?=
 =?utf-8?B?UnhCOVpSa0lLZFFGSmZrbEJrelAwVEd5NUJFZzB2RjhYM3IyQVVzd1FmMW43?=
 =?utf-8?B?WlA4TVo2Syszd213NVJjOFJTWVZiL25XaWU5WWFSVHQ2TWI0bnM4S2wzdzZU?=
 =?utf-8?B?VXdlY3N0UTBGUlNQclRxVjlsclZMYk1FNWsxN3hIUVlDUUtSaVNoTWJVVEVU?=
 =?utf-8?B?VnJmZk5rNm1PbHNIMnlrUHBmSlA1alVpMzZLRmRnREs1b3ZCcS9QS3lwWG14?=
 =?utf-8?B?QVpqeE82OXVpdnRzemQxRG9YNm4zWWJ6czVsMWFBOWFLM0VnQ0liM0p0S2Q0?=
 =?utf-8?B?aUFCU0psQ3Bic2ljNUNTVjgvdFBjd1VBVlE3UkNBRUtrdWFGR3U2YitkMWZU?=
 =?utf-8?B?TjJHZyttd2dsYlVoYTFEZ3Y1anZCUkxVWGhvcW5IeVFnN3ZqdzgyelFSQVVN?=
 =?utf-8?B?QmZaeVIyclJ6Z0NRcHRydkxDOWM3THhaWGNBYzlMNmR6dDQ4UEZEWkluV1kz?=
 =?utf-8?B?dU55RFVoanNkTDFoYStaSGpOd2kzT1ZMQXk0VklLTHh3UHkxOHppWTVmUkNo?=
 =?utf-8?B?SkZ0TTJOWFN3U3h5WDVLZU5UcnJkTHpmOXFCOTlHVm1GQ3pvc1JQTXExd2w2?=
 =?utf-8?B?Nm1ENnVKYnEyaWt3TStFdGgzRlU1UmFLajJXQjgxNGNqV3djTVh5RFltc1E3?=
 =?utf-8?B?N1ZxSGxrM0hkMklPVllFRmRiSmlCRXB5dGZvNjVEeWtrVDFlcmIybVZlbFhQ?=
 =?utf-8?B?N1BVTzd2SWpCNmE2R3VWc1I2b0V6MVZxZ2xjMTZCWWg4a2R3T1Zmc0wxQUVP?=
 =?utf-8?B?V3VIVm5DQlZ3aTdGRy8wTXMrdUhKdUh3bTNWK05wZVlXaEcwd2F0WkUreXZW?=
 =?utf-8?B?K0RXUXhBQVdqaDRPZFpkSHFHOWhKWG5Rems2TnRQNDh6RnVnRE16d2ZSQWF6?=
 =?utf-8?B?WGpnVko1cjNONkNLdDdUMmZTWXlLc2ErV0YzQUZMNGFIOXhjZUxqRzFna0pR?=
 =?utf-8?B?VzdJK3lVZHNuRFc0OGdaaHN6QjBjRkhDd2Q0TlFLVnczZnN4K0RIb0c2eEd3?=
 =?utf-8?B?a0RhbGNBbkZWdHNnbWpQVHVIKzF4ZmFxYnl5VzZ4Nk44Z1ozNE9pTlJwT09P?=
 =?utf-8?B?enlQaTRGYVlSUExSQ3RLL0dtWVkyQS8xOFNFazdwNHRKSHo5ZHNkTHpZR1p3?=
 =?utf-8?B?MldVRkw4VlZTZXh3RzFDdHhIaHFMZmdTME1FemxvSVlxMWg1bktvb1lFcElw?=
 =?utf-8?B?ZWVwWWc4Wk8rRmJacEVaTEVqUWF3ai9KVzNwRVpuNmE3WXpRbHRrT1FWV1Bl?=
 =?utf-8?B?dVBGSmxzU0hqc0FqMFloSUEyM1dlNUNBLzQ5cHNRazVRQWFGckRzTEZJWjNa?=
 =?utf-8?B?VTU5dElyUmpUMmg2Q3dGbDdpUVk1RlMycERsYS85ZWdlTU1hOU5oU2xsWDdh?=
 =?utf-8?B?cmQvUTNyaUxwU1JQTlgwV0t6Qk13eTBTUjRkQllBSzY1YzFzVHlWOCtrb05C?=
 =?utf-8?B?V3VUWUhETlNqSS9GZndyWEVqY0hQZkVSck0wcXdyS0tiU3puYVo4Qlo4Vzh0?=
 =?utf-8?B?UHpmMjg3dDZQYUluTUVIS0NBMkp3dU51VlBBWHM2UXdmR1ljVlhNMG53V3BC?=
 =?utf-8?B?QVFIS2V0VnV5OWtHZEl5NmRhNTlrSkpCSkdNVkpUZlAvbHNidjd0eUg4Vktx?=
 =?utf-8?B?UGpFY3R3aFhCMjdvMEJNSUZqSERhVDhtOGNWMkdKb1BNNlFaWUMwOHFyNUlu?=
 =?utf-8?B?RzlhSFUvaS9kanRuMm5HUUc2OFg2YmJrdkhnbnR2ZEsvNGdpR0R3YVZidzRl?=
 =?utf-8?Q?CFovJ+inPPz+H9FFWcvLcfKUV6ziOapR45kw4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e66ec2a-560f-46bf-2abc-08de42121fe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2025 10:57:54.4426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g6h0ZAVNSLEgm+dary3Kld7TQMQMlzpDqGthVQJu0aFMLxWseXZ2maXFc0axKGYDZo3v4sDPwwbmiwj/GU72NpQk8plTEHCwHx1Tvq1GdPPLBPj9KXV16XBiYYTGXiJt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5110
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAxNiBEZWNlbWJlciAyMDI1
IDE4OjAxDQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyB2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hDQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+
OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQ
QVRDSCB2MTAgMTcvMTddIGRybS9pOTE1L3ZycjogRW5hYmxlIERDIEJhbGFuY2UNCj4gDQo+IA0K
PiBPbiAxMi8yLzIwMjUgMTowNiBQTSwgTWl0dWwgR29sYW5pIHdyb3RlOg0KPiA+IEVuYWJsZSBE
QyBCYWxhbmNlIGZyb20gdnJyIGNvbXB1dGUgY29uZmlnIGFuZCByZWxhdGVkIGh3IGZsYWcuDQo+
ID4gQWxzbyB0byBhZGQgcGlwZSByZXN0cmljdGlvbnMgYWxvbmcgd2l0aCB0aGlzLg0KPiA+DQo+
ID4gLS12MjoNCj4gPiAtIFVzZSBkYyBiYWxhbmNlIGNoZWNrIGluc3RlYWQgb2Ygc291cmNlIHJl
c3RyaWN0aW9uLg0KPiA+IC0tdjM6DQo+ID4gLSBDbHViIHBpcGUgcmVzdHJpY3Rpb24gY2hlY2sg
d2l0aCBkYyBiYWxhbmNlIGVuYWJsZW1lbnQuIChBbmtpdCkNCj4gPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMg
fCAxMSArKysrKysrKysrLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5jDQo+ID4gaW5kZXggYmE4YjNjNjY0ZTcwLi5kYjc0NzQ0ZGRiMzEgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBAQCAt
Mzk5LDYgKzM5OSw3IEBAIGludGVsX3Zycl9kY19iYWxhbmNlX2NvbXB1dGVfY29uZmlnKHN0cnVj
dA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAgCWNydGNfc3RhdGUtPnZy
ci5kY19iYWxhbmNlLnZibGFua190YXJnZXQgPQ0KPiA+ICAgCQlESVZfUk9VTkRfVVAoKGNydGNf
c3RhdGUtPnZyci52bWF4IC0gY3J0Y19zdGF0ZS0+dnJyLnZtaW4pICoNCj4gPiAgIAkJCSAgICAg
RENCX0JMQU5LX1RBUkdFVCwgMTAwKTsNCj4gPiArCWNydGNfc3RhdGUtPnZyci5kY19iYWxhbmNl
LmVuYWJsZSA9IHRydWU7DQo+ID4gICB9DQo+ID4NCj4gPiAgIHZvaWQNCj4gPiBAQCAtNzg5LDYg
Kzc5MCw3IEBAIGludGVsX3Zycl9lbmFibGVfZGNfYmFsYW5jaW5nKGNvbnN0IHN0cnVjdA0KPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAgCWVudW0gdHJhbnNjb2RlciBjcHVf
dHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ICAgCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0K
PiA+ICAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gPiArCXUzMiB2cnJfY3RsID0g
aW50ZWxfZGVfcmVhZChkaXNwbGF5LCBUUkFOU19WUlJfQ1RMKGRpc3BsYXksDQo+ID4gK2NwdV90
cmFuc2NvZGVyKSk7DQo+IA0KPiBBcyBVbWEgcG9pbnRlZCBvdXQsIGl0IHdvdWxkIGJlIGJldHRl
ciB0byB1c2UgdHJhbnNfdnJyX2N0bCgpIGhlcmUuDQo+IA0KPiANCj4gPg0KPiA+ICAgCWlmICgh
Y3J0Y19zdGF0ZS0+dnJyLmRjX2JhbGFuY2UuZW5hYmxlKQ0KPiA+ICAgCQlyZXR1cm47DQo+ID4g
QEAgLTgyNyw2ICs4MjksOSBAQCBpbnRlbF92cnJfZW5hYmxlX2RjX2JhbGFuY2luZyhjb25zdCBz
dHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiAgIAlpbnRlbF9kZV93
cml0ZShkaXNwbGF5LA0KPiBUUkFOU19BREFQVElWRV9TWU5DX0RDQl9DVEwoY3B1X3RyYW5zY29k
ZXIpLA0KPiA+ICAgCQkgICAgICAgQURBUFRJVkVfU1lOQ19DT1VOVEVSX0VOKTsNCj4gPiAgIAlp
bnRlbF9waXBlZG1jX2RjYl9lbmFibGUoTlVMTCwgY3J0Yyk7DQo+ID4gKw0KPiA+ICsJdnJyX2N0
bCB8PSBWUlJfQ1RMX0RDQl9BREpfRU5BQkxFOw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoZGlzcGxh
eSwgVFJBTlNfVlJSX0NUTChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gK3Zycl9jdGwp
Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gICBzdGF0aWMgdm9pZA0KPiA+IEBAIC04MzYsNiArODQxLDcg
QEAgaW50ZWxfdnJyX2Rpc2FibGVfZGNfYmFsYW5jaW5nKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkNCj4gPiAgIAllbnVtIHRyYW5zY29kZXIgY3B1X3Ry
YW5zY29kZXIgPSBvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ID4gICAJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG9sZF9jcnRjX3N0YXRlLT51YXBpLmNy
dGMpOw0KPiA+ICAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gPiArCXUzMiB2cnJf
Y3RsID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBUUkFOU19WUlJfQ1RMKGRpc3BsYXksDQo+ID4g
K2NwdV90cmFuc2NvZGVyKSk7DQo+ID4NCj4gPiAgIAlpZiAoIW9sZF9jcnRjX3N0YXRlLT52cnIu
ZGNfYmFsYW5jZS5lbmFibGUpDQo+ID4gICAJCXJldHVybjsNCj4gPiBAQCAtODU4LDYgKzg2NCw5
IEBAIGludGVsX3Zycl9kaXNhYmxlX2RjX2JhbGFuY2luZyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpDQo+ID4gICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxh
eSwNCj4gVFJBTlNfVlJSX0RDQl9BREpfRkxJUExJTkVfQ0ZHKGNwdV90cmFuc2NvZGVyKSwgMCk7
DQo+ID4gICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgVFJBTlNfVlJSX0RDQl9WTUFYKGNwdV90
cmFuc2NvZGVyKSwgMCk7DQo+ID4gICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgVFJBTlNfVlJS
X0RDQl9GTElQTElORShjcHVfdHJhbnNjb2RlciksDQo+IDApOw0KPiA+ICsNCj4gPiArCXZycl9j
dGwgJj0gflZSUl9DVExfRENCX0FESl9FTkFCTEU7DQo+ID4gKwlpbnRlbF9kZV93cml0ZShkaXNw
bGF5LCBUUkFOU19WUlJfQ1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gPiArdnJyX2N0
bCk7DQo+ID4gICB9DQo+ID4NCj4gPiAgIHN0YXRpYyB2b2lkIGludGVsX3Zycl90Z19lbmFibGUo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwgQEAgLTk2Myw3
ICs5NzIsNyBAQCB2b2lkDQo+IGludGVsX3Zycl9nZXRfZGNfYmFsYW5jZV9jb25maWcoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gICAJc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ID4gICAJZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+DQo+ID4gLQlpZiAoIUhBU19WUlJfRENfQkFM
QU5DRShkaXNwbGF5KSkNCj4gPiArCWlmICghaW50ZWxfdnJyX2RjX2JhbGFuY2VfcG9zc2libGUo
Y3J0Y19zdGF0ZSkpDQo+ID4gICAJCXJldHVybjsNCj4gVGhpcyBjaGFuZ2UgbG9va3Mgb3V0IG9m
IHBsYWNlLg0KPiBIbW0gLi4gSW4gUGF0Y2gjNSwgaW50ZWxfdnJyX2dldF9kY19iYWxhbmNlX2Nv
bmZpZygpIGlzIGFkZGVkLCBidXQgYXQgdGhhdA0KPiBwb2ludCBpbnRlbF92cnJfZGNfYmFsYW5j
ZV9wb3NzaWJsZSgpIGlzIG5vdCB5ZXQgZGVmaW5lZC4NCj4gSSB0aGluayB0aGUgYWJvdmUgdXBk
YXRlIHNob3VsZCBlaXRoZXI6DQo+IA0KPiBNb3ZlIHRvIFBhdGNoIzcgKHdoZXJlIHRoZSBoZWxw
ZXIgaXMgaW50cm9kdWNlZCksIG9yIEludHJvZHVjZSB0aGUgaGVscGVyIGluDQo+IGEgc2VwYXJh
dGUgcGF0Y2ggcGxhY2VkIHJpZ2h0IGFmdGVyIFBhdGNoIzcgYnV0IGJlZm9yZSB0aGUgZW5hYmxl
bWVudCBwYXRjaC4NCj4gDQo+IFBTOg0KPiBNeSBlYXJsaWVyIHN1Z2dlc3Rpb24gaW4gWzFdIHdh
cyB0byBpbnRyb2R1Y2UgdGhlIGhlbHBlciBzb29uZXIgdG8gYXZvaWQNCj4gaGF2aW5nIGl0IGFz
IHRoZSBsYXN0IHBhdGNoLg0KPiBUaGlzIHdhcyB0byBtYWtlIHN1cmUgd2UgaGF2ZSBwaXBlIHJl
c3RyaWN0aW9uIGluIHBsYWNlIGJlZm9yZSB0aGUNCj4gZW5hYmxlbWVudCBsb2dpYyBsYW5kcywg
dG8gYXZvaWQgYW55IHJpc2sgZW5hYmxpbmcgREMgYmFsYW5jaW5nIG9uDQo+IHVuc3VwcG9ydGVk
IHBpcGVzLg0KPiBHaXZlbiB0aGUgY3VycmVudCBzZXJpZXMgc3RydWN0dXJlLCBtb3ZpbmcgdGhp
cyBjaGFuZ2UgdG8gUGF0Y2gjNyBvcg0KPiBpbnRyb2R1Y2luZyBhIHNlcGFyYXRlIHBhdGNoIHJp
Z2h0IGFmdGVyIFBhdGNoIzcgKGJlZm9yZSBlbmFibGVtZW50KSBzZWVtcyBhDQo+IGJldHRlciBp
ZGVhLg0KPiANCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC82
OTA3ODkvP3Nlcmllcz0xNTgxNTYmcmV2PTENCg0KU3VyZSBBbmtpdCwgDQoNCkkgd2lsbCBhIHNl
cGFyYXRlIHBhdGNoIGFmdGVyIHBhdGNoIDcuIFRoYW5rcyBmb3IgdGhlIHJldmlld3MuLiANCg0K
UmVnYXJkcywNCk1pdHVsDQo+IA0KPiANCj4gUmVnYXJkcywNCj4gQW5raXQNCj4gPg0KPiA+ICAg
CXJlZ192YWwgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIFBJUEVETUNfRENCX1ZNSU4ocGlwZSkp
Ow0K
