Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D052A7F733
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 10:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BFA110E5FC;
	Tue,  8 Apr 2025 08:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqP+ZtFx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A6510E0B0;
 Tue,  8 Apr 2025 08:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744099267; x=1775635267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QIpftlzblWdMBwDtaaeFaZnygSQZdw4XoeLul7JxeBk=;
 b=eqP+ZtFxE5LPaXvx+sl9PLMkY7u1O9sN36G8IAt0w/c/p/qEhyrvLy9H
 aZ8v6GkjtnckdsSIrprif2z/XeDhILFHmZWCpvny7eADZJmYffTiMFpjK
 7T+cQ8PG8kSmlmRQTLi1QVioT/vX+16hORfZlRHiUzX7QaPexf+kmLH9Q
 z8c6PXI4h2iSHfIamK8oj6ybg3EzUE048GuLlLt83nrLC6F+x5YRWw1uN
 Hpalx4/ymrzwDSR5F/lILiO8QQSxk4CZHVM69Nhaz4OPXeIczbpDunlQx
 Iaxxxcq0ooEJLpHZP7WHYYR7FvRrF9rBahFJjrHzr0IdO4mjvfXw9MLlP w==;
X-CSE-ConnectionGUID: HVmcqVOBTzGsxnFR1t2Z5w==
X-CSE-MsgGUID: RLAkK61GRRi6d3bs3HifBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45681870"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45681870"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 01:01:07 -0700
X-CSE-ConnectionGUID: WdnkI10NT/itT/VE787Gng==
X-CSE-MsgGUID: tP9KvI7sTz6J/hRJby0wTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="132329953"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 01:01:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 01:01:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 01:01:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 01:01:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mMzKxdotkJexk5DO4hYg7fjyWaHJKt3udeEXYVj3SYT12ftAq2LDwDWeCUhm4uXNRRtHRGokM/RSE/xLgoriIELb2aSySCIfsR9HNUYwwtqq5Z68NwzhsZih33G9N+A9wpFA68SLU8md4oznfF0xm7azhkhG9vBHVJRl/E0dO8E9m4/ZSJbtVwN0XStw6EuOWJeM6L1PqiETyGNKE3i4uoPDq1k7vZOOBFkNdzyr7cBbkJDNFRLygb3AzxAxLd9xryyESk6oseS2ek8iYF+gupJD50vKBqX23QAe6er1Hue4s0cUgBPcfdUYVKZi0YmFdX403GenvaRR3K24lSTYGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QIpftlzblWdMBwDtaaeFaZnygSQZdw4XoeLul7JxeBk=;
 b=qSjZG3QjJSejVKxuYp6QRelCua+Juul1yMjxzmFgb65UFXIJKmt/gqVAxqJqZESc9xC3WgNd9rOWlsol0s9QpFfklDt6xMG8dIkhMFZyfa+KE0vBfEafOjWMe2iNNuwsK2RfxqvSkS1MWwQGT7gL3Nfj4rfPHh/4LM6Yqc5IK/YqzM3Dad/WW7+tRTRDq+2hKIlrvuq7Za3tTssfoEngRbeSUgzqgJXMNdEjz5r99OUcXS369+vue+1toosNdsVkYBp32Il5JUSIWvgzlm2+BRmNmTXbxTl1X/KJH0CNiGcxPlk7yWe0NlqXUJWLrZWnRktRQUzWoUeAuNAMH++Ypg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7418.namprd11.prod.outlook.com (2603:10b6:806:344::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.31; Tue, 8 Apr 2025 08:01:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 08:01:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v7 6/8] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v7 6/8] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbpH360SwoLxkB+kq8L10RszRycbOZb8OA
Date: Tue, 8 Apr 2025 08:01:04 +0000
Message-ID: <a06264b38cb8ca3950d265d2400a4c3348cad9d9.camel@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-7-animesh.manna@intel.com>
In-Reply-To: <20250403092825.484347-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7418:EE_
x-ms-office365-filtering-correlation-id: 30ba59a3-9188-4b29-509c-08dd767382cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SmJnREFOOGVPVEwySXI1LzBwVlQ0aUpRUTlGeUUydXl3VWRML3p5ZjlYV3dR?=
 =?utf-8?B?Zk5lNGl0MkxiZlJUODNuWmVKQ05sKzBpM1k4OTlWU2wwRTlOS0pVMW5idnVu?=
 =?utf-8?B?U25rUmo1ZVh6Z25xcTRjbW1SRjAvT05zby9hcTdORkdpWlN5RHhiSjRzL1c4?=
 =?utf-8?B?c2JSWFhFRWlxVzU2dExxS2pzaVpPZVRzb0V3Y1c1dVd1L0hENjhtMXhGdEpt?=
 =?utf-8?B?d0gxcXBYNDBxVjA3bG9tdzg3blJMa05kU0lOUEFlcTNveVYwdU5YbUI2WHRa?=
 =?utf-8?B?T0U2TURlTHd4bXMxNFBhOHEvb3g2ZWx2NjNwOUcvaUhLaDNQQ01rTlp0NzV0?=
 =?utf-8?B?aVJFSC9NVFA3WlErL3o5UWU3V2JqN3d5T2Jmdm9vbkpUOElTdURCUCt1RURG?=
 =?utf-8?B?UHp6blRHR1BXbjEvQzAyMTlGN1hmc1BHS1VWMndhVDNTUXFKNlRiVExJL1ky?=
 =?utf-8?B?ekNVaFpDelNsemRqK0djc0I3YWVlOHVxOEptS044OSt5bTNROWdiRWQ3Y0dW?=
 =?utf-8?B?T1YvU09uaEhaTmkzSWU3UWwzMWswclN2RnNKemlwY0twRXhveHFxZ0pPWXk1?=
 =?utf-8?B?YVYrT083VGUzbjBxR3hiN2QrQ3ZxTUErL0dQeGpLTkJieURNNXhhQmVoV05E?=
 =?utf-8?B?K3FhVFdUcjU0TzlvVldDQWtlK0hqYS9ZQUJTTGJ6YVRvbUxiUDJJN0JaOHFN?=
 =?utf-8?B?N2FjQkpNZlFlZzd4U09SRFBjeDZFNDRxWCtlV1NGSEpBS0VFRmpOOFUxemlq?=
 =?utf-8?B?OEsyRk8xM2RkYmZyeHFWMU5vcW5jMmM1cUxZVlVjb1FyaFFOaC9MUHF5SzhS?=
 =?utf-8?B?NnBDZGlqZklleG1qc1FiVCsxSHZEMG9RbFhXNjFhTk1wbHRvR1JjdmxTRWFR?=
 =?utf-8?B?TWdLcFFkVHowVWlTTWlKeWlsTVhFN2FBQTc5NDF0VXp1a0dtMFd5NS9MYU1j?=
 =?utf-8?B?VFpLeTNjdmd3bmtFaks2VWc3dDZiTEZ6bGt6MmpZdFRPMHJzWFp6YWNQRjlF?=
 =?utf-8?B?dXhyQU05TUhkSTVFeU5NTWRFd2ZUd2dTZmc4bGNLdTc1MHNMZytsOEVHaGp6?=
 =?utf-8?B?Ti9rcFZOR2lmeXhSMnFNZmpzL1B0ck9WREE0UC9tdnhQL09YL1FsUGM2cXBP?=
 =?utf-8?B?QTJyckhpeHBVc2dGeTI3b09BT1NXREhKbWNsTFRpT255NlpQVWNMWGxZZkVi?=
 =?utf-8?B?UERNQXZiaFAraFFoMGl2TDNTRGxlb1hYMWN3N3AxSWxWd2poM2Q3d0x1eTk5?=
 =?utf-8?B?bVdZV1R4Y1JwWGpPL2MwU1cyVk9YZXJKTlRGaUhMTU1nQUs4aVNqZDg2MHJP?=
 =?utf-8?B?VThkTXpIblBqTjRicnIxdEhsNWhSY1dxa0gyclc5b0hSRHhBQW9JODdqblZl?=
 =?utf-8?B?V3o0OVhiaENrempKQnVhR21pcjRWM0hWL3RnV2JrTVU4SXJGa0pGdTZVUHBI?=
 =?utf-8?B?c1Q0UFZDWnJKTGRqTHJNclpBQ2F0Uld1MDE1QlNOUkh5ZTdkQ01jK0NYUjJ6?=
 =?utf-8?B?b1JSNFM2K2RkWTlFRFowaE55VzI4ZXNDN3pzWVFJZFBtcDVQYmNsSGM1aXhs?=
 =?utf-8?B?bjFVWjhEam5vOHBDVWJQU1NvbUkyWVRqenRSS09nSTRCWjF5K2pPT1NEU1RS?=
 =?utf-8?B?SThBcmlmRFp1cGp1NTNUWjVzRkxJVjk3Zm1tUE1yaGxIOVZ6TlRobGdKWnJp?=
 =?utf-8?B?ZDFsd3NqUkNxREJOS0l6RlA4bkNHV2lLV0tlbkRjTUsxYnIraHZpckd4UXY4?=
 =?utf-8?B?dTBjZGxZbVpSSG5CSkNvT0RZRnpwbWRjWkl6UmZlOWhlNFdxZitCOEthWmpr?=
 =?utf-8?B?NVljMUZGd0VJMG4rK1kxdHlVSU5qWHpEZmpkYVJqWGhEeG9qMWhKUysxaGYr?=
 =?utf-8?B?bXZXTzFaS1RtbHlMVkpHZXBKWW9Pb2hCbStacnU0Tys3VTllUFQ5NmtKQ1d4?=
 =?utf-8?B?VkhqcEFEMC9aYi8yaWZUZS9LSUkranFQSHNETUdlSDBXaWtBcUw1RkhENjd6?=
 =?utf-8?Q?QN9Ue5pwDRM3dPHZQSP2c0GmbnMGq0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVBsTWNRM1k3bEp2eFBOUVZhSWt1WmhXUGRLMlIrSVR2SFhEcXFOelZCUTZ5?=
 =?utf-8?B?WUtkOFNXSzdqTnY4WjdnSnljSTQ2Ylp3TUw3RGxlakp6WmpCZFdBU0IyWFZY?=
 =?utf-8?B?ekd1dVF1QVlPdDltWm81Mk1SS3BKWldFRVJWTzBRaG5CT3JHa2xYdmVxUVlj?=
 =?utf-8?B?S3Y4WmJLdUU4R0JQZHlIUHJFUDVtTXdRNFV2VWFqbDZ1WW1EOVJ1TUpkUGhy?=
 =?utf-8?B?U0RSNmt2THFXc0IvMDkwN1d1RjVSTmdXRFFPTGUxajBzS2RYcHBnc1Z6Q2hY?=
 =?utf-8?B?YTQvSTdqNVk5NEdzTXhtUUtPOFk4YXRBVmlxOW5HUThHK2hkRmZ4bFZYbjdV?=
 =?utf-8?B?MitxTkl2WkpIM1o2VTA2RHZ6VFJteEEzaWhuUks4QjNqOUVuUytvZVZqMHhO?=
 =?utf-8?B?Y1NudkZ3NjhkSDcwQytvRUhCUlVaVi9tK3hQZmZPRVhHZy9veDY0SWRheTBa?=
 =?utf-8?B?RHJhT3dnNklRL25OMElPOWU3VUFNYm9xN01mU3FYb0hZRW15OTBpN0RQZStN?=
 =?utf-8?B?R0gybTF6NWUvVXVDRnNIVTg5QksyNTdnZjkxZ1IxYWFNVmxObXB2R1hHVGNm?=
 =?utf-8?B?WG93WDdzR0QvRTRVQ1RMdGRIMUtBSnFVRytmc3FFRXhSYnVFYm1LdEk4NEJn?=
 =?utf-8?B?Q0tGTzVTbG8ycGFsNDJWNHhXTWF0Uk16YVRlTnFFR25VLzhuVFI1S0hVcGFR?=
 =?utf-8?B?ZmFpTTNPby91MEh1SVZmeWF5bUF2RDVGYnc4YWNHYWJabHRHblMyTk1ldWZv?=
 =?utf-8?B?UThyNUhVaUdXaVg1SkRzUkNGbXJocE5vNGlIVVpWeFh3Y1psWWY5anZQdTJz?=
 =?utf-8?B?MmJNN1VDZW90MXRPS3VaaklNSmt3ZEdVV1B3QlM0ZThqeEQxb3lQTEM1cGpC?=
 =?utf-8?B?YXR0N0ZMUjJQemNqSHcwUkhEcjc4a0lUT2UwS0JsbW52M0trcUszdHJsMWFr?=
 =?utf-8?B?Zy9yVitlMkZ0UTk5QllVQko5UVZGM2p4bFN3Mml1RmZiRmllQlQrUjNNU2VN?=
 =?utf-8?B?b3dZVnpzZmQ1K3Rwc3Z1QkRyWkdzYVJwaUVQZ2RKMEpvVFBpMnVPRkw5L0p3?=
 =?utf-8?B?QTBPZFVZZ2NNMkZTYU1nRFJpbCtER1pxNlhxM0pEYUg0Z3lwV0ozVTg2blhz?=
 =?utf-8?B?YWFSbGoyUWRGTWlHSGhYR3A1K2k2LzErQWhrQ2Zla0tPMHhEQTViR2ptd2VR?=
 =?utf-8?B?M2hpNnNEaWdRU0o5b3RoTjlnOTF0RGhKUEp1cS8wSG44ZzlMZUxzaHAvU2tX?=
 =?utf-8?B?S2laYml1SFJYT2lPVVhsRFl3Zlh0VjF0TFFOTFVUR1NCTHVCajBFM2UvbFdq?=
 =?utf-8?B?b2tidWMxWFI0eVJ2OUs5WWQxTHloT3A0YTFTTXlHb3B2b0xFNmU1ZmhVYnNs?=
 =?utf-8?B?U3JPbzFHT0FtQ21PcFE1eVdmbVQydThkOW1XK1piWWZmNk5vb1Zta2p5aFJw?=
 =?utf-8?B?VExUdmZJZ3ZHd1kyR05mSFRCUHFlMlFreTNzZGlzTDVhN3BrR21BRGlWVk9X?=
 =?utf-8?B?Q1hrV2FFb1lpSmFMRVl4NEFIQVRCV21UMEl1VDc5ZnBrODM1RGU4MTYxc1pH?=
 =?utf-8?B?ZlFXKzFEeHRibDhNUVNWTnJaUURMTCsrQlhxSWZHVmN6Q0I4c3Zjcml3b1B1?=
 =?utf-8?B?Z2dnNkkybGN1UGZsYU1BSVNWclJ0blMydVo5MjhYcW1Eb3RmMTZWRVFRN2M4?=
 =?utf-8?B?aHV0aldqalVPRlNJOTZPNDZLRFp3VzJrQ0xOejYvNFpVNCs0Q0MrRGprZWtp?=
 =?utf-8?B?Y2NVd2lZWXJTeVlwYVV6T3hwRmxURGg5Tkg3RER5QXFycHp1MjM4SkxJRjRk?=
 =?utf-8?B?RkJNT3hQY0laZGRIRUVlVHhNWTIzaTBsekxmL3NkK21rMks3V3p5WHU0NzNJ?=
 =?utf-8?B?NnNHOU5rUVFjSGNCeCtaSFNaT1hIRStCdUx0Zm9BMEZDT2R4VjdJVlFXU1dk?=
 =?utf-8?B?V0dhNjhZUnp6NE53cWc2RW5ZTEJtaWIwS3AxenpHOGxucm9xMWNha1RWcFdW?=
 =?utf-8?B?VHdIWmlDbXNaUnM1a1plSm5ucmJrZUc1R2kyajNwd2l0RlJMOVluK2VYSER5?=
 =?utf-8?B?a243WXcvYkQ5TnVBd2xsNkxqQjV3Z0NGWmVIQWsvaHhrL0xQcUZSeUNDc0tE?=
 =?utf-8?B?RmN1SUoxbXVrZVZBU0hxOXkyRldsZldVYzJXYTJHOFY1Qi9Ld1J6VTc4b21n?=
 =?utf-8?B?WGlCYmJabER2RlB0cWxkMmtNQ3l6VEY1MHMzSkxvcmNFQUpDT0VWdG95RXdB?=
 =?utf-8?B?Q3UwOWtZZnBrUzRwa1VQajNkdGRBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A47ACBB74A878D4BB5B74D1350A29CBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ba59a3-9188-4b29-509c-08dd767382cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 08:01:04.4183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DaVQSqi7qYu6IJclJE99jeBpctb6h2D0CszWpjahW9t+UkuDUf2rEqSY/aN4NnSOIwbrttayhmmCsiF/Axqxko1I4jK7fnRyr15snhZvMIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7418
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

T24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYW4gaW50ZXJmYWNlIGluIGRlYnVnZnMgd2hpY2ggd2lsbCBoZWxwIGluIGRlYnVnZ2lu
ZyBMT0JGDQo+IGZlYXR1cmUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjoNCj4g
LSBSZW1vdmUgRk9SQ0VfRU4gZmxhZy4gW0pvdW5pXQ0KPiAtIENoYW5nZSBwcmVmaXggZnJvbSBJ
OTE1IHRvIElOVEVMLiBbSmFuaV0NCj4gLSBVc2UgdTggaW5zdGVhZCBvZiBib29sIGZvciBsb2Jm
LWRlYnVnIGZsYWcuIFtKYW5pXQ0KPiB2MzoNCj4gLSBVc2UgaW50ZWxfY29ubmVjdG9yIGluc3Rl
YWQgb2YgZGlzcGxheS4gW0phbmldDQo+IC0gUmVtb3ZlIGVkcCBjb25uZWN0b3IgY2hlY2sgYXMg
aXQgd2FzIGFscmVhZHkgcHJlc2VudA0KPiBpbiBjYWxsZXIgZnVuY3Rpb24uIFtKYW5pXQ0KPiAt
IFJlbW92ZSBsb29wIG9mIHNlYXJjaGluZyBlZHAgZW5jb2RlciB3aGljaCBpcyBkaXJlY3RseQ0K
PiBhY2Nlc3NpYmxlIGZyb20gaW50ZWxfY29ubmVjdG9yLiBbSmFuaV0NCj4gdjQ6DQo+IC0gU2lt
cGxpZnkgYWxwbSBkZWJ1ZyB0byBib29sIGluc3RlYWQgb2YgYml0LW1hc2suIFtKYW5pXQ0KPiB2
NToNCj4gLSBSZW1vdmUgUkVBRF9PTkNFKCkuIFtKYW5pXQ0KPiAtIE1vZGlmeSB2YXJpYWJsZSBu
YW1lIHRvICpfZGlzYWJsZV8qLiBbSm91bmldDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNo
IE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqDCoCB8IDMyDQo+ICsrKysrKysrKysr
KysrKysrKysNCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjC
oMKgwqAgfMKgIDEgKw0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXgg
N2FiMjljNWZlZjM4Li40NmQ1NjlkZjM3YzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0yNzYsNiArMjc2LDkgQEAgdm9pZCBpbnRlbF9h
bHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4g
wqAJaW50IHdha2V0aW1lX2luX2xpbmVzLCBmaXJzdF9zZHBfcG9zaXRpb247DQo+IMKgCWludCBj
b250ZXh0X2xhdGVuY3ksIGd1YXJkYmFuZDsNCj4gwqANCj4gKwlpZiAoaW50ZWxfZHAtPmFscG1f
cGFyYW1ldGVycy5sb2JmX2Rpc2FibGVfZGVidWcpDQo+ICsJCXJldHVybjsNCg0KQWRkaW5nIHRo
aXMgcmVtaW5kZWQgbWUgYWJvdXQgZGVidWcgcHJpbnRvdXRzLiBNYXliZSB5b3Ugc2hvdWxkIHN0
YXJ0DQphZGRpbmcgdGhlbS4gRWFzaWVyIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBoYXBwZW5pbmcg
d2hlbiBsb29raW5nDQp0aHJvdWdoIGxvZ3MuIEkuZS4gIldoeSBMT0JGIGlzIG5vdCBlbmFibGVk
Ig0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCg0KPiArDQo+IMKgCWlmICghaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gQEAgLTQ0MCw2ICs0NDMs
MzIgQEAgc3RhdGljIGludCBpOTE1X2VkcF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3QNCj4gc2VxX2Zp
bGUgKm0sIHZvaWQgKmRhdGEpDQo+IMKgDQo+IMKgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVf
ZWRwX2xvYmZfaW5mbyk7DQo+IMKgDQo+ICtzdGF0aWMgaW50DQo+ICtpOTE1X2VkcF9sb2JmX2Rl
YnVnX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAg
PSBlbmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rlcik7DQo+ICsNCj4gKwkqdmFs
ID0gaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5sb2JmX2Rpc2FibGVfZGVidWc7DQo+ICsNCj4g
KwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludA0KPiAraTkxNV9lZHBfbG9iZl9k
ZWJ1Z19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAg
PSBlbmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rlcik7DQo+ICsNCj4gKwlpbnRl
bF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvYmZfZGlzYWJsZV9kZWJ1ZyA9IHZhbDsNCj4gKw0KPiAr
CXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtERUZJTkVfU0lNUExFX0FUVFJJQlVURShpOTE1X2Vk
cF9sb2JmX2RlYnVnX2ZvcHMsDQo+ICsJCQlpOTE1X2VkcF9sb2JmX2RlYnVnX2dldCwNCj4gaTkx
NV9lZHBfbG9iZl9kZWJ1Z19zZXQsDQo+ICsJCQkiJWxsdVxuIik7DQo+ICsNCj4gwqB2b2lkIGlu
dGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gQEAgLTQ0OSw2ICs0NzgsOSBAQCB2b2lkIGludGVsX2Fs
cG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Ip
DQo+IMKgCcKgwqDCoCBjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgIT0NCj4gRFJNX01P
REVfQ09OTkVDVE9SX2VEUCkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gKwlkZWJ1Z2ZzX2NyZWF0
ZV9maWxlKCJpOTE1X2VkcF9sb2JmX2RlYnVnIiwgMDY0NCwgcm9vdCwNCj4gKwkJCcKgwqDCoCBj
b25uZWN0b3IsICZpOTE1X2VkcF9sb2JmX2RlYnVnX2ZvcHMpOw0KPiArDQo+IMKgCWRlYnVnZnNf
Y3JlYXRlX2ZpbGUoImk5MTVfZWRwX2xvYmZfaW5mbyIsIDA0NDQsIHJvb3QsDQo+IMKgCQkJwqDC
oMKgIGNvbm5lY3RvciwgJmk5MTVfZWRwX2xvYmZfaW5mb19mb3BzKTsNCj4gwqB9DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IGluZGV4IDBiM2QyOWQ0MmVlMi4uZGFhNWUyNDM4Yzk0IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAt
MTgxMiw2ICsxODEyLDcgQEAgc3RydWN0IGludGVsX2RwIHsNCj4gwqAJCXU4IGF1eF9sZXNzX3dh
a2VfbGluZXM7DQo+IMKgCQl1OCBzaWxlbmNlX3BlcmlvZF9zeW1fY2xvY2tzOw0KPiDCoAkJdTgg
bGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zOw0KPiArCQlib29sIGxvYmZfZGlzYWJsZV9kZWJ1
ZzsNCj4gwqAJfSBhbHBtX3BhcmFtZXRlcnM7DQo+IMKgDQo+IMKgCXU4IGFscG1fZHBjZDsNCg0K
