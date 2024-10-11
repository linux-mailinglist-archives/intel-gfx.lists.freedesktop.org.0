Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0999A0F9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A75D10E10B;
	Fri, 11 Oct 2024 10:14:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lLCQAnYp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3C610E0A3;
 Fri, 11 Oct 2024 10:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728641660; x=1760177660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=raMksvSc5D4R1f1fTMf1uSAeOmq/wYI6W+E/N6sgr/8=;
 b=lLCQAnYpnTJaIXaZ0o7jZC2WeXf/Yaq4hM1H7TeYIDmbIun3zqTfxr3T
 /WLU3S8hmgrlyljFhnLi+osxwECBXbziBofZuf6/rsFgHkSQ8KKT4oWxh
 wu8t/VKVGRii0qeuW+eWDTD5UeK5qzSQCMWDdw5m4NCPZP0USC0/zIwFi
 R3+z3h/c3De43Y8OiLvs8NCySmQZ6DBp4OCjop1hMbateByZdxKylFxbS
 NB1dvQpJPGtKOZ0Ghf126xo0KEfRN4rkqABKxpPtNxopW/VRxbKcMHTS1
 MM3662LVmXfj1x2R0fPfR+Nnv4BNM+Sj5aOg/wzVgdDGOPfSRaMryPGAn Q==;
X-CSE-ConnectionGUID: qM9v3uk2Stqg2PNdA7rbwA==
X-CSE-MsgGUID: paHkC+VySWutrpef+VQmZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38617985"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38617985"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:14:19 -0700
X-CSE-ConnectionGUID: fNATZkWLSWiEeo7Asinypw==
X-CSE-MsgGUID: eh12EM1sSiSWdxRf7Rlf1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77171228"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 03:14:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 03:14:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 03:14:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 03:14:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 03:14:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwrGdzdtJl21asfAAh2+cJCGbPUUmG/1xsTzooQ7cE7QZnyStm/8FXjvlEcjfUcEto9i7JQk/k9wcr5lkp6krQRk2tgkaYEkULVlJagYOCqCOLQbXn28U/Vlr1nx1tV6S2J00Z/4xwFep7FvVinfLUHvqvpACBZb1uTD2Ns24eeA60q88+auYEwD6NGoz55xOKohGvthD2GrylmnNw/h4tEHvINyNXVhTwxdcjeeNo9No07XVlIkOnj+SqQbPKf/aWijmGeNS+uHftQXZTZFKVLvWRvYvCsMCfNRCV+Lv6ec6ckTBxP2Dpd0kRfcuKj/H5paHiP1tZkOvw2QdRdBVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raMksvSc5D4R1f1fTMf1uSAeOmq/wYI6W+E/N6sgr/8=;
 b=fS7c1i/TrObb6Uzt6kql9e3c3wgevBIcgsP90ZfZgnfidHmXpWFHcM2Q3zPSsIGLI3iDU2qbdtfW5ve9IqfIFk1BFuDuteZo28VrqMixzGB1YfX8PIF+hds0gSlxDrXFFCjI8iiYY4AMEDJELmQXfV17X/ivcx6psRoQSEmLr3yxmRvS5GBFsME1aIjrZsFXQIxLq5qeD496/4HcRJfZe2MfrRLRD/YxpUw3a8lVD79HC4zdxNe7A2ASQEc9PV5rk4wKg8XkqfoepYJ9lyc6rDEgGWXn8pbXLZhTRtgq2puFcpmSW/j/pVlOcIt8yrLbUXZ3Zi3PGpma1uJoninMag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6816.namprd11.prod.outlook.com (2603:10b6:a03:485::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 10:14:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 10:14:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/vrr: Do not overwrite TRANS_PUSH PSR Frame
 Change Enable
Thread-Topic: [PATCH 2/7] drm/i915/vrr: Do not overwrite TRANS_PUSH PSR Frame
 Change Enable
Thread-Index: AQHbGtYUn+h4XCPuhk2MQrMvn0fCD7J/4/CAgAFy/QA=
Date: Fri, 11 Oct 2024 10:14:05 +0000
Message-ID: <d56fea0a50e34dc8262f1cb1275f3af85811fe16.camel@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
 <20241010053316.1580527-3-jouni.hogander@intel.com>
 <ZwfDN4aqrTjBIk86@intel.com>
In-Reply-To: <ZwfDN4aqrTjBIk86@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6816:EE_
x-ms-office365-filtering-correlation-id: f5609ee6-c350-4f94-f2a3-08dce9dd6fb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eDFYREFqYjlxWXlqeW9tcFJRait5MkkxZjc2ODNSVjZvMy9wRzAxQlQ1T1RW?=
 =?utf-8?B?WVFGY3FZcVpBajkvOXI0M1RtdERYcFY3VlhaMWhvdUxzdjlpR3NnY3ZwWko4?=
 =?utf-8?B?YUxBRDdKRC9FM1RJZ0N6ZmQwc0RnY1NKZ2ZUQzZ3S3B1S1ZkWkVWTVg1OEFj?=
 =?utf-8?B?KzRmTlJzN1ZXc1dTRWExcXNpRjFBWHIrQ3F1SkRNRUgxM1ZDbHJocEQ4K093?=
 =?utf-8?B?d3psNUxyWHlZYm5VMEJacFFBWHBOSVFybGRPcUNtODBDWmpMV2hhNXlwTTNS?=
 =?utf-8?B?aHA1cTgzWTE4Qmc5UTRJK1NTQkdJZ3lHUWVCb2h1MmZtakxMeVFoODdtZGpp?=
 =?utf-8?B?UHJlYW5PQS9PU1VNZ2plUFZNOTF0OUVOY29KU2ZYbG9zYm16VnJUc3Z1NU5k?=
 =?utf-8?B?NFZHUTJhUGZ4OHRTbkN1VjFCM3oySkZEQXEwb3E2MTJiOWRMTkdKY1FSQk12?=
 =?utf-8?B?a1g4bExzQ3hGbU5Lb1VsVUhndUhJS2xnOGV3WWdacmF6MFI2am1Ra3Q3VWFz?=
 =?utf-8?B?ZlNBa09wSzRkZTgxZjVySTF1U0lMU2hBOFd4T3dIblBOZ3JhNk0rSlFQdG5l?=
 =?utf-8?B?OHpXMko5VE45L3Q3eW5xMUM5SWxyZWcvUFQ0ZmdnSHh3SzhmM0ZGbHJ6QnI1?=
 =?utf-8?B?eXc1bStZTERhSjRvMVVlcDZhTHVIMDRWRUt6cWo2bnJGZUl4U0cxV2N3bGpG?=
 =?utf-8?B?V2tVZkFhNVJJQnpvblZrSU5zS3BaMlFqdkJxZHpmN2xTR3YrdjAvZy9tNDE1?=
 =?utf-8?B?OGFheVFJMnVNdm8vNHZRdTVSaFRWUFhxSkNMcXl1TnVlY0VxWVRNNVhvSWsx?=
 =?utf-8?B?K2xqNmZRd2xlbWlFRi8xSG15SjUwSFlLdDhGa1JlcElhVk5aaXV5cnFuOWxD?=
 =?utf-8?B?RjczM1YrdkdiTEgzQ2FSM21pNmRhbm9SSzVlaHAyeHl6Z1Z2N3FRbllzWHNU?=
 =?utf-8?B?eXZrdXFSM0tnOEEzVlVTMGF6OUwyaG9vS3FoSE85a1dtUGJQQnFETlFmcExP?=
 =?utf-8?B?NlNOdjE1RncwOXg0cTdSb05DN0lxSzlPMUx1MHdHWVh0K0dBR1VQRHloNlBl?=
 =?utf-8?B?RVFseHlGSTNwaDc1dzBVb1lTeDVwRVlic2lhWTdzREhjTkYyRjh1TFJ5MXJV?=
 =?utf-8?B?YVF4VjlNVEZNTFE0dVlRQmhzekFpY1V3MWtXaTNXbVJkTnNYTXpqbGJFVE14?=
 =?utf-8?B?b1NwZHB0Wjg4bHltdjUycGVLSWtrVzd4Q3NyYjZ1VS9jcFlhcC9VWEk1TlRr?=
 =?utf-8?B?TWpuVzJzWHcrTkxvY3VBU0NpS1B2VXlXdUlKTmZQTkNJcDVSdllLU3lLR0hV?=
 =?utf-8?B?bDRqbzNzbEx5TG15UWJvdUliOHRKSWN1MEc4by9HK21sOHdFS2VLOGM5M3Nu?=
 =?utf-8?B?bTdHQ1QrTkwvZmdQeVlEZitPYUlMdFVidmFPRnJOaXJleDg4ZEV3N2lwSVNj?=
 =?utf-8?B?RW1jTG9kMkNINi83TjBraEwwWHlVZ3gxUk83YzVXcjdmY3gxc0tkTXJ3aUgx?=
 =?utf-8?B?OTVGcXcybkRXbnhBVHNxT0RZVVhHVzlSMEdRMENYTXBmUjNhN1BOL2JGY0pX?=
 =?utf-8?B?alZjOTNTYWhXYjNicGpCQ2lDYTZHY1ltQ05QSGFjZXB2MFpxV3FwOVM1TnBm?=
 =?utf-8?B?dXZwOGdsNWE3TVdsVGNJdnZWYU55YStPV29kRlVlenRHNis5ZWlIS29COVFU?=
 =?utf-8?B?eTNCaEtmRW5zV0ZMMVlaZXMzcXVqQ25DWkxSSmZRZnQ4MFpkcGRFanVOMXBu?=
 =?utf-8?B?TnlzUVF6MTNDWEtsVjAvR2lKcVZZNHc4Z2xKbmIyVVd2OEloTDlTOFhaNGFK?=
 =?utf-8?B?RkJHQVB6dTdvcHU2bUYzQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDFaTWlFMTA0S2hXN1lTSFZta2VvUjJvaUsySTNFY21BRG1rYjlaT0lzZVVC?=
 =?utf-8?B?NU92dklQbWxYQnZCVFNJL2MzTTluRFFmVXM2RFZWWktWaE03RGorWDRveGs1?=
 =?utf-8?B?ZVNTdkxFblRZa2VTcmVkL1NVRjVFWnVKZVMya0xzdDV3YlVaZm95N3JHVkJs?=
 =?utf-8?B?VXZzblJwTzUrVVE2RFNjY0VKNHRpWW1SNHFKYVBCelVSUkZTMXNSWTBCd2h6?=
 =?utf-8?B?dXpxc1I2VHhqa0Q4bXAyU0VxYUZLM2h5NUZsRTZuRzhXZHpYSXlkdStpY1kz?=
 =?utf-8?B?dk5YOCtINWs5QXpjRTNSYjV6RGZDa0N2Q0ticFdENk52RHV3bUtVRHczNlRR?=
 =?utf-8?B?ck5sU2QvQmdnS3h1SGk5Sk1CWmVsdFVxV0Z1TFY3Unl4a0c0RG5kaUV4NHhr?=
 =?utf-8?B?L1NKdWxPejg5U2RKQk84TUhocnljdXc0ZUw1eXY2dnVaRDhFeXBNUWVNbHla?=
 =?utf-8?B?QlFDaFllVUhQQzFRdjdvQzF4Y0pIWWJPSk1nU1dQdjRoeVc0THMzUFZkUDdE?=
 =?utf-8?B?Z0RiVTZxbE92anNoQnU4Vm5RMHBnWkZjNUNIQXdla0I4Sm9mdmFHdGc3TE9E?=
 =?utf-8?B?cUFrU01yK3UxVklOWVFTT2tlbzQvV3QxNlArZUcxdkVPTllWNnJJWW1DZ1pt?=
 =?utf-8?B?ZE9URVZLaDIxRHZodHcwRXhyeEVqZFRSSS9MZGhjVWRDVm41MCtscGpLUyt3?=
 =?utf-8?B?YXZvVzVhQlFBTThzTndaNFFSQ1BPOU9yYXVYK2p3anlDY0ZiRnBYSnhKeUYv?=
 =?utf-8?B?eEhuTzBsN0wzM1ZkNmFrb3BFUHE0WHZTeTg0aWo1NXVzdzFjblE5S1JEcEk0?=
 =?utf-8?B?dk8rTEVtYlFWWERwcjFtZThPekFrY2RKT2x2Nkk0T1k1cENQUGY1S0hwS3pi?=
 =?utf-8?B?VHNTemlyOFIzU25zb0xwVUczU3YvNW96V0ZVeFNERUw3OTVxelhVS21zcXp5?=
 =?utf-8?B?bVJ0dEU2SEVvRmkrT24zR1VrWWE1d0k0eGpibTlSOFllY3V2eUxKcm0xRHg0?=
 =?utf-8?B?ODhyOWV4OVpDYk5uOStZR0ZOVytZb0hyQ2lNcnd1NS8rdXdkcy84blF2WHg0?=
 =?utf-8?B?dEV1ZUFJYWJ1OUtwWEpMaGxkeWdBeGhJTkJQZHZHV1RhVkduS3RvYnZaM0Fx?=
 =?utf-8?B?d2thanozMXJHYnNFcnVqRU9VU2dlblgrWDFJaGNVL0Zra2pmM29vMkNUWXRu?=
 =?utf-8?B?U0JiVDVEUXhkQzNJR05sbmtnOWhtUXZITTIrVHRkS3ZYbHpGZmZWM0pLSTF3?=
 =?utf-8?B?WFhMUFJoME9EeHhQWDNVTXBPNEdSZU0yMWVYcVhlUVYxSVo4clVXV0xaOUpN?=
 =?utf-8?B?bzNUVkpiWTBaK2ZsOHpDNnBJYXdOb2FlUUhqNGVuMUV3OEM4K1crS2poRllG?=
 =?utf-8?B?NTZ1cVVSNU1pTHJLbkxyNWhOZTlYWFpHL0pjWHBHRzhVaWc5UzNNNFFraDFC?=
 =?utf-8?B?TUxmYjZpK0pPa010KzRSTjRET245blVPUXNtOS9PNUQ0Y29TTEUwWU1US0Fr?=
 =?utf-8?B?K0RvZTFud3hFS3FZd2VPU09kTFlITUZFdUZxUGxuWjhtZG8xY3liSTV1T1Q2?=
 =?utf-8?B?ZWl3bjBZRXZNVFVkNFYzbzVtb3Y3UTNtYTRLNk5uS0plek9hUmhmSzJZUE5z?=
 =?utf-8?B?cmlxVnZmdmluQ2JnOE1VdEE4T3N0cElYMmdqT1JPV2NnR25XZjRJN01Od1Nj?=
 =?utf-8?B?K292bmNqcGRjd1VVa240T2U2QVdTY3NIVk14RitTT1FtN2Q1c2UycmZ4ejh6?=
 =?utf-8?B?SkREWVZSUGkzMjVZZmRvN2U3RUhVUmYyWXhmaHJkMXdOSTZWQ08ra2FDblNX?=
 =?utf-8?B?MFAzODRHUERDSDBKOURxRHp5bVUzL2JhRkVjUE1DSVZheVo3V2JJeEIvV2dD?=
 =?utf-8?B?NURvWVp2YUpUL1ZPVVJLcysrclpOelkyb0xEbmJaRDdwd3VDTTVHeFJWTGR2?=
 =?utf-8?B?eEpwTjVLekdmcmpLNTk3LzBLWFNuMEtmZ09OMGkrR0FFbjFjd21uZk91bGN3?=
 =?utf-8?B?NFRRYjdMU2E1TC9NblZwTDIrV2RmQUpjR2NrQUVERHd1RmxnWm1sektGTVU4?=
 =?utf-8?B?UEx1cHZqQjg5T2lBNG9GZ0gxU2FFZW9vWE1ad2VBUlZpZFJ1Q3N0QkhYTE9w?=
 =?utf-8?B?NnVsVkw1VWN1Zms0UnFMeHovbkkvZlZqL1JDdjk0V1pWbHJWU1ZQR0RIa2dj?=
 =?utf-8?B?aGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1211B326B5CDBF47AC261F467E9AF9AD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5609ee6-c350-4f94-f2a3-08dce9dd6fb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 10:14:05.0967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oKpUBBUhzbr1QQkHBG94Ak1YZqBKjDm5sP1acwIHwNx6D+DtfP5xIhm7soqiCyXCR9+ihN+1TVb57OSUzIicdYOCjn1+h12nYTyDjKMjw8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6816
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

T24gVGh1LCAyMDI0LTEwLTEwIGF0IDE1OjA2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVGh1LCBPY3QgMTAsIDIwMjQgYXQgMDg6MzM6MTFBTSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gQ3VycmVudGx5IHZyciBjb2RlIGlzIG92ZXJ3cml0aW5nIHBvc3NpYmx5
IHNldCBQU1IgUFIgRnJhbWUgQ2hhbmdlCj4gPiBFbmFibGUKPiA+IGJpdCBpbiBUUkFOU19QVVNI
IHJlZ2lzdGVyLiBBdm9pZCB0aGlzIGJ5IHVzaW5nIHJtdyBpbnN0ZWFkIG9mCj4gPiB3cml0ZS4K
PiAKPiBSTVdzIGFyZSBub3QgZ29vZCBpZiB3ZSBldmVyIHdhbnQgdG8gZG8gdGhpcyBmcm9tIERT
Qi9ldGMuIFdlIHNob3VsZAo+IGtub3cgd2hhdCB0aGUgc3RhdGUgc2hvdWxkIGJlIGFuZCBqdXN0
IHByb2dyYW0gdGhhdCBpbi4KPiAKPiBEb2VzIHRoZSBQU1IgYml0IGhlcmUgaGF2ZSB0byBtYXRj
aCB0aGUgUFNSX0NUTCBlbmFibGUgYml0IG9yCj4gY291bGQgd2UganVzdCBhbHdheXMgc2V0IHRo
ZSBiaXQgaGVyZSBiYXNlZCBvbiBoYXNfcHNyIHdoZXRoZXIKPiBQU1IgaXMgY3VycmVudGx5IGFj
dGl2ZSBvciBub3Q/CgpJIHdpbGwgdHJ5IHRoYXQgb3V0LiBJJ2xsIGd1ZXNzIHRoaXMgc2hvdWxk
IGJlIG9rLgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKPiAKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYyB8IDggKysrKystLS0KPiA+
IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMK
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYwo+ID4gaW5kZXgg
OWE1MWY1YmFjMzA3MS4uOGI0ZTNmOTM4ZWZlYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKPiA+IEBAIC0zMzksOCArMzM5LDggQEAgdm9pZCBpbnRl
bF92cnJfZW5hYmxlKGNvbnN0IHN0cnVjdAo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWNydGNfc3RhdGUtPnZyci5lbmFibGUpCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiA+IMKgCj4gPiAtwqDCoMKg
wqDCoMKgwqBpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBUUkFOU19QVVNIKGRpc3BsYXksCj4gPiBj
cHVfdHJhbnNjb2RlciksCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFRSQU5TX1BVU0hfRU4pOwo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZGVfcm13KGRp
c3BsYXksIFRSQU5TX1BVU0goZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLAo+ID4gMCwKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUUkFOU19QVVNIX0VOKTsKPiA+
IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKEhBU19BU19TRFAoZGlzcGxheSkpCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlKGRpc3BsYXksCj4gPiBA
QCAtMzcxLDcgKzM3MSw5IEBAIHZvaWQgaW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0Cj4g
PiBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkKPiA+IMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkaXNwbGF5LAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFRSQU5TX1ZSUl9TVEFU
VVMoZGlzcGxheSwKPiA+IGNwdV90cmFuc2NvZGVyKSwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBWUlJfU1RBVFVTX1ZS
Ul9FTl9MSVZFLCAxMDAwKTsKPiA+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlKGRpc3Bs
YXksIFRSQU5TX1BVU0goZGlzcGxheSwKPiA+IGNwdV90cmFuc2NvZGVyKSwgMCk7Cj4gPiArCj4g
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfUFVTSChkaXNwbGF5
LCBjcHVfdHJhbnNjb2RlciksCj4gPiBUUkFOU19QVVNIX0VOLAo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDApOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoSEFTX0FTX1NEUChkaXNwbGF5KSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwKPiA+IC0tIAo+ID4gMi4zNC4xCj4gCgo=
