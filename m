Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E16B431D3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 07:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB3B10E974;
	Thu,  4 Sep 2025 05:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRnM0ydR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5349110E975;
 Thu,  4 Sep 2025 05:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756965286; x=1788501286;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cP4bBX+WcpEHtj40xh8U8Nl/Keid2k8a8vJtMrYERhM=;
 b=nRnM0ydRUbf6A26ZTYtCmx6pXYJK6WeFeJAj7wViL/J1qJDKjPGn/xuY
 88bPNSbPYf2i01OfKgwL6OImVagc/xQW5Tbbubn86+pB8r4593c7fwUOT
 nP6phBTOQMBMscgMtmZbyBL63du5UrBB4wqIX+uH5Qqe4rMab0xeCM0he
 nEdCtRS4HKJXXWFImqCOBi/QIHtB1ugbZLHnJ8yZUD8oJgX/tdmptFwMk
 xfrB7/Js2krLx2OklAbCHydl+Wo/4fUUoLu+pbbsF320UyFOAehI8cpKM
 LevKffKS6lO1gNzmXGgn2dBENHPp264RoFpN/fWm+TjKqAlnv/1kFBmyt A==;
X-CSE-ConnectionGUID: nH89cSz9QX6FMq61EjDkzQ==
X-CSE-MsgGUID: N3zWRzcYTwSSS/q2GsKaGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="70390499"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="70390499"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:54:46 -0700
X-CSE-ConnectionGUID: Bv94oF6DRJ293BM8Z6baNg==
X-CSE-MsgGUID: DBB6aLY+T2CNO8X0ELbVpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171730694"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:54:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:54:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 22:54:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.80) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YjUAPs0Ch8j1t+pNic4DgauJZ3zqwk0A1/Zx6QNQMGbAyU1VNEbFonbPT14Xqr0c0UB7Es9MYRUgzKPSfK8NOb1oJdw6GkRwQHdDWMmXF4y9ZPU1VbYu0lhSLLDCPp32Dq52Egy4lfXI9zVTxl5Sc8blRDI6FELgdrE0lXpaYMGvBYkVolDzbM2Mw9q0AUklJPCH0qLzl7L9+0Soq2/ERy6E407PHaRovia2mkM80yo/BKJ+a5PFZwnOomtqR0FiVUH++vSw1WdUK9eG+KlJntuFwx/kxG7cpWDgtZOinfGlXnofkzzF+0GilA0CkSvo+LyEfBUrZYQhGptT++uniA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cP4bBX+WcpEHtj40xh8U8Nl/Keid2k8a8vJtMrYERhM=;
 b=LmOrL/ZmcMUFGxxuUkQ31gWGFthOdumzMGpvA8DbkH5jxvlK8oTYdKtht9jBMHbDIAa4FJPNftl0iUghQE96iqGr5t2k00Hgv9ggXJAk3ir0s6KhV2jIQmalIUmx2BGi1ZngYl8ay2lI6K6AHqAE8MQLG/tYaG9SLmSS7SI8dpHw1x4vheOcbq3JF1bVCibYxeAkopN6++q/KkHkPaL2uz6xMpIsxZdXu2g2OHH49ELnAEn7ihysoGXsmFbSnNIMxx7eUO+c2swCmeevCBIgJ3jw7Qp/KOpKfyiYjyRvSfO3JNzkHyMNBapMG4OGT4MZaq9EvSDHOLnTINQzHSJp6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22e::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.27; Thu, 4 Sep 2025 05:54:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 05:54:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 11/20] drm/i915/power-well: use generic poll_timeout_us()
 instead of wait_for() for VLV/CHV
Thread-Topic: [PATCH 11/20] drm/i915/power-well: use generic poll_timeout_us()
 instead of wait_for() for VLV/CHV
Thread-Index: AQHcGBZsjjkxBOnF+0iI1rEfEoGu1bSCkJuA
Date: Thu, 4 Sep 2025 05:54:36 +0000
Message-ID: <754ff8c655bfa554d19c01892df9887705b35253.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <c644b7b5611a3c047ea5d3d52acd91830b2fa6b4.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <c644b7b5611a3c047ea5d3d52acd91830b2fa6b4.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB7104:EE_
x-ms-office365-filtering-correlation-id: 691084d3-f307-4d46-8836-08ddeb7787e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?R0dPSmg1eEo5RlJILzRCekx5elVuRk1JTkdmajNTbjlWeUluRUdINlhoWlNU?=
 =?utf-8?B?UEloemlGa0NhU2k2U25rYlRUTEkza3QyeGxIc0E0WlZqMUc3eGMzYnBPL0d3?=
 =?utf-8?B?bXl5cTZpcDBLamV0SU1NVEdDODJwM0RKbjI4SlRzeHoxVTFFMW5GV3hEWG9Y?=
 =?utf-8?B?YkxsNk1zUU90OUxQaTNoNERXU20zV2pJSjdWdElIY3FlVnNFUEJYdkNjRGI4?=
 =?utf-8?B?ckFrTW8wT0kzQ3FySDZ4Z0JSUlRSZ0lNT3Z6cXY4RmpGUDFEWFpHSlJyb3dl?=
 =?utf-8?B?ck5NZDlpbFNCSGVjd1hac2lLWjFYWjdDOHNMWUwrNFdpR1hnbEMwL21QT3lk?=
 =?utf-8?B?ZUg1ZzFqMGpubmQ5NnRJeWlKWk9GMVdPeFpsRHVkaFkrOGx2bnJHOW9MUVZN?=
 =?utf-8?B?V3NnL1docktRUmFETGpqNDU3bFFsL0ZzT3RtTDUzQ0xOd2UrUGtZRW9wTktV?=
 =?utf-8?B?bHZ6ZUl3S2JheXhFU0hLbURydGFpZ3VETEtSQXozalVVb0xOL2NVN25nWFlS?=
 =?utf-8?B?Tmh5cWFjVm5Za0JNaEF2TmxFWkZ5cmh6NGl2bzB6UmtReDVHaWVwMWtuMFpX?=
 =?utf-8?B?b01YNnJjQ0h3bnN3VGZtTlNFeklPVzJPZWNNOERXcU8reE94dXExU0F2dGVv?=
 =?utf-8?B?NS9YMXE0cWh5NksvVUdWcUUvQWp5S1FwV3hxVlZDTzJqWTRMTFJuV1lNdUV5?=
 =?utf-8?B?KzZhZXY4KzROMUc2QXVSQmVjUWRNaU1pM2s5UlYvLzlLY004NzJOaUlvczk0?=
 =?utf-8?B?cW8rRGo0ekgrcU9aR0ZWZGkzbm9vakFxR1gxZXpGdEN3blg1VXFSUEU4RGx1?=
 =?utf-8?B?YXFUdU4wRFZNNFlEWnJ4T2xNU2xGeTU0VmZ2S0VtdVQvWU1HMUt3cUF0dmFv?=
 =?utf-8?B?YVU5Z2kwbkFXNVRzQjNWL0RmNTJiODM4ajNtUlZpVkRpbW1EbEpnUHpLVlZx?=
 =?utf-8?B?UlJ6M3JhOWJaeStlNzlOeWNYSkxLQU1KM2dOWGJFbnNGUWlsUzFDRHlpcWlG?=
 =?utf-8?B?UEZpUmZQWDRhYUIwUElTQ0pMVk55eEQ2Zzl0TW9Ba1Q5NzB3b0JXTnQ2aUdj?=
 =?utf-8?B?Tm4yMHM2SFNMRm02eXdyL3FSbWwzVTFnYWpDeW5xTVBGTGhsTmZSRFlFeXJJ?=
 =?utf-8?B?azVMaTh2OEtHTVV0QzlPK2FwTTU2Y2RxanYrM1B4YUtGWXQ0azg3U2ZoRzRB?=
 =?utf-8?B?VXNsN3VTUitwQkF3V29qcDRrT09wVU1UbEZXN2xwV1kzVndVaG1JbGRKalJ0?=
 =?utf-8?B?UDc5YUFORmRVdWRlZ1pUd1F3TXVwQVNZSDhaYWRzZFFOcG5sbmVabEsxZW9y?=
 =?utf-8?B?SklqMmsvRjFqeHRGZWVNOFdSckhhdnJ1QjF4QlpUdFhoR1VNSHd4RFZrOTc3?=
 =?utf-8?B?K3ZtRytET1pCV1VxYnpMdzZVZWsvTkZsUG5WNFprMDlBNkhxbXBkNG5YWktu?=
 =?utf-8?B?TDIzUFBCL0pIS1g0TWx5a016RjJlYVJHbVNEaXJmRTlMZUJzeDRCQjNDYktH?=
 =?utf-8?B?N2MxS1JqK0VhQ1hoVWZUdlpHd1Y0cFBrVGk1bEhDdEdCRnZOSXk4Qi9yZHBr?=
 =?utf-8?B?Wmo4YVBmbEJtOVdGdDBCdVJ6YTRVOENrdUNMM2V4QkhFclFsR1M0Rk1mUzRq?=
 =?utf-8?B?NUphbk1WQXlOc2VHY2JtU3ZURzNhY2VCQmJGYnoyZHdKWkJ6ekNWTUlaeEhz?=
 =?utf-8?B?dTd2ZTAycFVRUjdFTkZ0ZHdqN0hmdC9peWJrb1FPTkNQUlYvV1V5b0VlR1Bn?=
 =?utf-8?B?Y3RpS2VTSGQzYzM2YmlNSllwSWVld1o5ak1QMit2dTdGOU9NM0F2Ymd2TjFZ?=
 =?utf-8?B?WWgveVFrbDdGU01tbXkyVXVTeS8rcWVRcEl0UHQ4cnlYTHNLK0JhNm9FNSs3?=
 =?utf-8?B?R0ZISWkySjVqQXpuNFkya1pXZW5xbGZZbmFOTk9HQW1UZmsyWE53aUJ6aEln?=
 =?utf-8?B?NG5ZL1FvYWdxSzZQR3UwalBhcDh2cTA5U3FpRnNuUzhiYm1aUG9HNWZQaXFr?=
 =?utf-8?B?cWpURlVGcDVRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGZGRGkvaE9CK3VpLzBrQy93eW14NGF5MzByNFg4Tnd4L1ZtT3F5WVovV1ZG?=
 =?utf-8?B?MTB4Q0txZ2dyTC9JeUkzWWZpcDIralpaSTAyT045VndxYVc2UmUzQm9ROEJG?=
 =?utf-8?B?ZDRsVEFYRmxTUEdrTmo0Yk1UQm54SEFUNU5mVDFaa0J3WWhsTzZxVml5SGp6?=
 =?utf-8?B?NkZaWVdjZGhvMGZVZmYrYlhLdW04Yjc3ZExOa1JJS1VFK0lrL0RIZ2hkdks4?=
 =?utf-8?B?amcwMnZVNng4SU9qaHVaaEc4YjlRWE5PREs5SEx2TzRpaUtPSEVORk4reXhD?=
 =?utf-8?B?OGxGNEt5RkxNaXFSVGRRakVNWkcvYVZkTGVGV3pabXlheXhuYzRlWnVobmhY?=
 =?utf-8?B?TFZrbXZVaHRveWtjeEwvNXE2YXVvSDIxWmlDNVhxdjZqRDIxYUFQWS9Edkwz?=
 =?utf-8?B?RkszK1NudURjQTZ0Z3k4RTdNL01mL1hsZjRpeHVFZlNnR1MzMCtBaDBkckl5?=
 =?utf-8?B?c1FmTzNDRlppNXFQMlYxTXNOZTVlVzRUL1UzUEpMV0xPa2FGTkNBYWNRWUpu?=
 =?utf-8?B?U2RHWWl6YzM0R1FlZ2FwN1ViY2JoQUFyaFJRSEJvRnE4QkhGSklhbDNiazJo?=
 =?utf-8?B?N2poV1BvV2VsRmUwN3F5YWFqVExJVEdBVW0rQXh1SWt4Q3Y4WnVIbWVnSEta?=
 =?utf-8?B?dHFRcWZIWFVTYnp0V2dzVWdvTGJwTXJPQXJ5Slh6VVJPMkhNa0kxZlpzUzNl?=
 =?utf-8?B?dVpmQ1YwUjFxdjdwbmRIZ1ludExxbk5YTlk3dUUvdnFsUmtGWmQ0YUhaNTcr?=
 =?utf-8?B?bVMxME1nM0pqVFBsM2M5MnZ5Y3VmZXF0UDlORGZ2bUtOUXZZTVVsd09aM0dh?=
 =?utf-8?B?bEszL3pQUkxMdkdNWUJOcnBubnlncUlXMSsxamZIN2Y0bEF5eXUySzBwU3VL?=
 =?utf-8?B?TkowSmhBRWhEQzYvSGVseTFoUUJEb05OdnhzRXFmTko2NzY4UkdUOWlKZjYz?=
 =?utf-8?B?UUNEZFN5UUIxTGNoMjBwSCtYbE56WXNaT0ZSQWwyRW9MWW1GOGtrOEhlTVpZ?=
 =?utf-8?B?RGw2ZDRlclhRMng2RzNZNUFIYlpvRE1ldE9HbmJMdHVoS3lWOUpOQTBXUlRt?=
 =?utf-8?B?L0VRWStSM3QyRndzb2NPWmZrT1E0bmtFdzFCZ05Sc1QyUXJpSEtoRURxajVp?=
 =?utf-8?B?R2ptTjhSN3NicmtySjVWUlVoaUU2MEduSjNvMExXZVRVemkxM1UrT0x4cU41?=
 =?utf-8?B?NWowdzVTVUtEQ0ttc29KRTJpc01ncnVSRHN0NmhZbTkrRGZXV2I5TTZmWmph?=
 =?utf-8?B?c2pWMHJxMDM4dFF3dHlOTjcxN3JwS1F0L0pHVVhCM2NvSUg5SFNaM1VtTThO?=
 =?utf-8?B?WTJxWDNNcGxFbk91NkdFNC9HVDlwMGhaRlZSSmJ1bEljdE5TbjBKQmg0Nk1R?=
 =?utf-8?B?N3ZWakJ5a2c3K0RvRG5EcDRmNEJGMDJ5ZG9nN0E4RDhKcmp0U3g5cXc0Y0p5?=
 =?utf-8?B?QWdINUZ4MUtGYUwzYTVFVW9UUGo5VFNFaGR1VEVSdkljMzllT0xiSTUwUDd6?=
 =?utf-8?B?V0VTL0d6MWYwa2NlOTI1VFdRZ01Bc1kvdWJUUm56ZjlkdDdMSVVtM1I5QUUr?=
 =?utf-8?B?UHR1dTdHRHFzdVR6NzFCUEwyQ0FRWDRPYWZQNXNrbCtBeFV2Smc3dlRnc2lF?=
 =?utf-8?B?d0ZDTWR4RHp3KzE3M2tnd2JFK0FDdDNKZXRjN3F6UzVkWnNvVHFTdkxXeUlM?=
 =?utf-8?B?Tk1RMFluSWZveU1xajlHV09NM2RJeGNjTERNVjIyK0tMT1MyMnpyYWZGUFJ3?=
 =?utf-8?B?eG9ZeHFiVGRGZmo3cmErUlBtaEpqUW03Z3p6cExnQmJSSVdqWTFCeHdjemJK?=
 =?utf-8?B?Y21lWktVMzFTUGVPVDRnRmViS21EajEyalNuR1YzNDd2UkY4QThpRVJScFIr?=
 =?utf-8?B?OU42OGhFWXZVdi9ScXYveC9XK1RZQmNVYlk0eWorcjJybFVJb3JmbTRGNFZQ?=
 =?utf-8?B?R0w2cHFhREVQUk5BSjB2bldMWk1VTVpOcDF4d2doWjI5KzNiYTBMbVFadXZ3?=
 =?utf-8?B?am9TSXhXdzhIWjNFUFc1SjdtYkNLMVFjdERrRFVoT3RmYTN4NzNSNzdDbUVR?=
 =?utf-8?B?RCtMUXdQKzdTVTJJblB1aG9aRjZ6THJ6ajl2cmlieUNiWTNzL09SakltT2c4?=
 =?utf-8?B?ZjNKZElzSnI3eFhTeEdONzFNM0I1NDVuVjBOSjFIR3RzQVI3TE1seDQ1TUZR?=
 =?utf-8?B?N0wvMUxLcDJOMDB4TmhvK2NDdEtNblJtVkV4bFFTcUJLMWJJT1daemNJQnVD?=
 =?utf-8?B?cW1qSE5aYnlISko0dU0razh3ekFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F77622F82598AE43BEB50BCF9DBB2DA2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 691084d3-f307-4d46-8836-08ddeb7787e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 05:54:36.9807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d2Qq5KpiQOhymkVahXJrmIbOLWyu35gtjEOe5XQp7Kmy/uHWQdzkPEHBGyh0+X4wmbEotKJNed4Dgg4Xp9XZbx2rQPczjVWcLtvwIHsZQMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
NTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQNCj4gMTAwIG1z
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gwqAuLi4vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2Vs
bC5jwqDCoCB8IDI5ICsrKysrKysrKystLS0tLS0tDQo+IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5j
DQo+IGluZGV4IDI3NWJjMjcwOGEwZS4uZGMxYThjMjk3ZDE2IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxs
LmMNCj4gQEAgLTgsNyArOCw2IEBADQo+IMKgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+IMKgI2lu
Y2x1ZGUgImk5MTVfaXJxLmgiDQo+IMKgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+IC0jaW5jbHVk
ZSAiaTkxNV91dGlscy5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9iYWNrbGlnaHRfcmVncy5oIg0K
PiDCoCNpbmNsdWRlICJpbnRlbF9jb21ib19waHkuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfY29t
Ym9fcGh5X3JlZ3MuaCINCj4gQEAgLTExMjgsNiArMTEyNyw4IEBAIHN0YXRpYyB2b2lkIHZsdl9z
ZXRfcG93ZXJfd2VsbChzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gwqAJdTMy
IG1hc2s7DQo+IMKgCXUzMiBzdGF0ZTsNCj4gwqAJdTMyIGN0cmw7DQo+ICsJdTMyIHZhbDsNCj4g
KwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAltYXNrID0gUFVOSVRfUFdSR1RfTUFTSyhwd19pZHgpOw0K
PiDCoAlzdGF0ZSA9IGVuYWJsZSA/IFBVTklUX1BXUkdUX1BXUl9PTihwd19pZHgpIDoNCj4gQEAg
LTExMzUsMTAgKzExMzYsOCBAQCBzdGF0aWMgdm9pZCB2bHZfc2V0X3Bvd2VyX3dlbGwoc3RydWN0
DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgDQo+IMKgCXZsdl9wdW5pdF9nZXQoZGlz
cGxheS0+ZHJtKTsNCj4gwqANCj4gLSNkZWZpbmUgQ09ORCBcDQo+IC0JKCh2bHZfcHVuaXRfcmVh
ZChkaXNwbGF5LT5kcm0sIFBVTklUX1JFR19QV1JHVF9TVEFUVVMpICYNCj4gbWFzaykgPT0gc3Rh
dGUpDQo+IC0NCj4gLQlpZiAoQ09ORCkNCj4gKwl2YWwgPSB2bHZfcHVuaXRfcmVhZChkaXNwbGF5
LT5kcm0sIFBVTklUX1JFR19QV1JHVF9TVEFUVVMpOw0KPiArCWlmICgodmFsICYgbWFzaykgPT0g
c3RhdGUpDQo+IMKgCQlnb3RvIG91dDsNCj4gwqANCj4gwqAJY3RybCA9IHZsdl9wdW5pdF9yZWFk
KGRpc3BsYXktPmRybSwgUFVOSVRfUkVHX1BXUkdUX0NUUkwpOw0KPiBAQCAtMTE0NiwxNCArMTE0
NSwxNSBAQCBzdGF0aWMgdm9pZCB2bHZfc2V0X3Bvd2VyX3dlbGwoc3RydWN0DQo+IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+IMKgCWN0cmwgfD0gc3RhdGU7DQo+IMKgCXZsdl9wdW5pdF93cml0
ZShkaXNwbGF5LT5kcm0sIFBVTklUX1JFR19QV1JHVF9DVFJMLCBjdHJsKTsNCj4gwqANCj4gLQlp
ZiAod2FpdF9mb3IoQ09ORCwgMTAwKSkNCj4gKwlyZXQgPSBwb2xsX3RpbWVvdXRfdXModmFsID0g
dmx2X3B1bml0X3JlYWQoZGlzcGxheS0+ZHJtLA0KPiBQVU5JVF9SRUdfUFdSR1RfU1RBVFVTKSwN
Cj4gKwkJCcKgwqDCoMKgwqAgKHZhbCAmIG1hc2spID09IHN0YXRlLA0KPiArCQkJwqDCoMKgwqDC
oCA1MDAsIDEwMCAqIDEwMDAsIGZhbHNlKTsNCj4gKwlpZiAocmV0KQ0KPiDCoAkJZHJtX2Vycihk
aXNwbGF5LT5kcm0sDQo+IMKgCQkJInRpbWVvdXQgc2V0dGluZyBwb3dlciB3ZWxsIHN0YXRlICUw
OHgNCj4gKCUwOHgpXG4iLA0KPiDCoAkJCXN0YXRlLA0KPiDCoAkJCXZsdl9wdW5pdF9yZWFkKGRp
c3BsYXktPmRybSwNCj4gUFVOSVRfUkVHX1BXUkdUX0NUUkwpKTsNCj4gwqANCj4gLSN1bmRlZiBD
T05EDQo+IC0NCj4gwqBvdXQ6DQo+IMKgCXZsdl9wdW5pdF9wdXQoZGlzcGxheS0+ZHJtKTsNCj4g
wqB9DQo+IEBAIC0xNzE3LDIzICsxNzE3LDI0IEBAIHN0YXRpYyB2b2lkIGNodl9zZXRfcGlwZV9w
b3dlcl93ZWxsKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAllbnVtIHBp
cGUgcGlwZSA9IFBJUEVfQTsNCj4gwqAJdTMyIHN0YXRlOw0KPiDCoAl1MzIgY3RybDsNCj4gKwlp
bnQgcmV0Ow0KPiDCoA0KPiDCoAlzdGF0ZSA9IGVuYWJsZSA/IERQX1NTU19QV1JfT04ocGlwZSkg
Og0KPiBEUF9TU1NfUFdSX0dBVEUocGlwZSk7DQo+IMKgDQo+IMKgCXZsdl9wdW5pdF9nZXQoZGlz
cGxheS0+ZHJtKTsNCj4gwqANCj4gLSNkZWZpbmUgQ09ORCBcDQo+IC0JKCh2bHZfcHVuaXRfcmVh
ZChkaXNwbGF5LT5kcm0sIFBVTklUX1JFR19EU1BTU1BNKSAmDQo+IERQX1NTU19NQVNLKHBpcGUp
KSA9PSBzdGF0ZSkNCj4gLQ0KPiAtCWlmIChDT05EKQ0KPiArCWN0cmwgPSB2bHZfcHVuaXRfcmVh
ZChkaXNwbGF5LT5kcm0sIFBVTklUX1JFR19EU1BTU1BNKTsNCj4gKwlpZiAoKGN0cmwgJiBEUF9T
U1NfTUFTSyhwaXBlKSkgPT0gc3RhdGUpDQo+IMKgCQlnb3RvIG91dDsNCj4gwqANCj4gLQljdHJs
ID0gdmx2X3B1bml0X3JlYWQoZGlzcGxheS0+ZHJtLCBQVU5JVF9SRUdfRFNQU1NQTSk7DQo+IMKg
CWN0cmwgJj0gfkRQX1NTQ19NQVNLKHBpcGUpOw0KPiDCoAljdHJsIHw9IGVuYWJsZSA/IERQX1NT
Q19QV1JfT04ocGlwZSkgOg0KPiBEUF9TU0NfUFdSX0dBVEUocGlwZSk7DQo+IMKgCXZsdl9wdW5p
dF93cml0ZShkaXNwbGF5LT5kcm0sIFBVTklUX1JFR19EU1BTU1BNLCBjdHJsKTsNCj4gwqANCj4g
LQlpZiAod2FpdF9mb3IoQ09ORCwgMTAwKSkNCj4gKwlyZXQgPSBwb2xsX3RpbWVvdXRfdXMoY3Ry
bCA9IHZsdl9wdW5pdF9yZWFkKGRpc3BsYXktPmRybSwNCj4gUFVOSVRfUkVHX0RTUFNTUE0pLA0K
PiArCQkJwqDCoMKgwqDCoCAoY3RybCAmIERQX1NTU19NQVNLKHBpcGUpKSA9PSBzdGF0ZSwNCj4g
KwkJCcKgwqDCoMKgwqAgNTAwLCAxMDAgKiAxMDAwLCBmYWxzZSk7DQo+ICsJaWYgKHJldCkNCj4g
wqAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCSJ0aW1lb3V0IHNldHRpbmcgcG93ZXIg
d2VsbCBzdGF0ZSAlMDh4DQo+ICglMDh4KVxuIiwNCj4gwqAJCQlzdGF0ZSwNCg0K
