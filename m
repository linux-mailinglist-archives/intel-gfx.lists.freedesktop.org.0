Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D248CE0F3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 08:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6341410E029;
	Fri, 24 May 2024 06:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lUv1Jtsr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47DF010E029
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 06:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716531537; x=1748067537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kCTpHM83X+uXRKJl/AvvuZuew2c/dBIpRexVtVMZBZ0=;
 b=lUv1JtsrIROoC7IKFoN9XksBJHmx12pKhgZWwqadbqSw1VoH01kQOS4v
 uazn+Sc5n8bVhZ908RHa2EUZesMiMmwBMWmn5fW1CsgGn5sd3kwohU8yg
 CnIM+ZSJuH6PTxw3Yi8pj8wDPoEMcoGKPRpbbv9keZ/QUyFepTT4QVqAe
 Ousn5QHLLt6PXOpMEV1kftwFtm8ZaRmmWrNYHPuD+4bAaa0zoEt3y8uAR
 dDv8P/PT+EJjgh190/8u7NQS6FfNqoQWHmn9EnJYtVTWOy9pukfmLOsoj
 zhmuA0uQpJftPeNqBvTNlZlsi/d9Djux8QDbFXKL6OahH7FBw63hcAJ7t w==;
X-CSE-ConnectionGUID: VozbMY15TdqZqmRKC2udVQ==
X-CSE-MsgGUID: Iq4Vdr8NTBurdH7j4ElZWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12742816"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="12742816"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 23:18:56 -0700
X-CSE-ConnectionGUID: IbcPBE16SUWVlq+0dL8Hyw==
X-CSE-MsgGUID: I/OU963ATfqHmwi82dyVKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="34026920"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 23:18:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 23:18:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 23:18:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 23:18:54 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 23:18:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TO15Z7AviUQ+tm2TQ2ULBW5lirsARCwhhPcCB490CgGF4y1G9LD0GoHC3/fJOFLUXHavZzLmfeuFQ6JvYg10g1zSVxRAqm3m3fAD/J1UtfrK8djb1Xu8Eus9VqT2qwjhzMGfR1ki9F/SKYBnBpxvg7UxPsj1aRP76TdvXUQK22Zc8gDlp70XkFkJ3GjP2dlQvsU8WrPdWW5xP4+8SZrnQ4qUkYMtg7twsY7li49Le0pssNB2C0x9Qnvo5e6hV1Ak1eFZfkr/XyL0iCI140J/endaduAyk3MFqbWqotPsKlRBpmyg7mIQOSIVMJXq+tYmMSo79iOPnsK5R+tL76h4Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kCTpHM83X+uXRKJl/AvvuZuew2c/dBIpRexVtVMZBZ0=;
 b=KU6dafqd8MF9brc7zRLwRNuTsaChTidsP2sJ0cs8nr1u3OUGOD2JIUUFrxcRSEdd2bHa9/9PY7uvYG8ZnTnU8DCMXXLAH7PHD6zhWrbsKx7xxQqjVAkn6/s1gyHNVmoBqBljNnRw10LU4stMN/atdBhlif6FjKXfIsuUYUdQ2wiBxqDUfZBvfR04f6r+flS2uS8rcuKEZ5OYSZ58SLbw3Pjyw0XOT27eOJxRs4By+dQZ3bPE4mvHhsUoAMHqJ8v2i/zaNUwNng5R02ANHB9kRh5KrTb8atMapza5PCZzXkVCchyagRvpttnYdwm7S3clLSvsMl0phRTNnjQ09nN7Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6358.namprd11.prod.outlook.com (2603:10b6:8:b7::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.30; Fri, 24 May 2024 06:18:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 06:18:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Topic: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Index: AQHaq1t/aokUpTlGA0WNgL2GG9cShLGl518AgAAGZ4A=
Date: Fri, 24 May 2024 06:18:52 +0000
Message-ID: <63d1991bdea46260b6b7ef73b10d4465db1b0594.camel@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
 <20240521084648.1987837-2-jouni.hogander@intel.com>
 <PH7PR11MB5981D37648DD78C758F43459F9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981D37648DD78C758F43459F9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6358:EE_
x-ms-office365-filtering-correlation-id: a87af71a-6365-4b94-a48d-08dc7bb961d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?T3JRTFNkL21DbFRkeTV3ampZeFZWUzNHRDY3MXNqRHJ6b2piWnFKT291enB5?=
 =?utf-8?B?TEpzckpuRXlBcmUzaVlOODB6Q3BwQ1BOMlNOZ3FwK0E3NnF3VWVBOHlrY3p6?=
 =?utf-8?B?UUVtdDhzZCt3YzVGR0dEVitaZWRzVnQ5K21RSjA1ZFV3RjN2K1FhRXNmS2xt?=
 =?utf-8?B?ak03dkJ5ZXduZVZXSDB4L2piOWVMTDFsUFpGdGF0TFI1c3B3d3NJM2RZT0Ix?=
 =?utf-8?B?YSt1ekpzcDIvQml4OWd6RXJKOVNkQ0RuaER2Mld0VmJDbU9HK2laQkRIMndO?=
 =?utf-8?B?TEVnMVdobnowdDVDL3VqWHRjTVJJdkdvb3JYa2Z6VkxlMFlCcGdqQnlGNUpX?=
 =?utf-8?B?TkQ2Z1NvWCtuVDdYYWNINVUzV3J6aTFYU00xQWdScFNxb2xSSmI3MWg1Z2dq?=
 =?utf-8?B?MU10a3dIckwwellhSEQxVGlaUnNmTDRNUk9scm1OKzdwQVZ6Y0gxWTFCeXRL?=
 =?utf-8?B?RGtpbE83aWFlTnZ4c3gzb04yaGUvOHNLNm5aRkR6Y1FIT3VKUTFTL2Y2SGhj?=
 =?utf-8?B?Z1VZY000V21YM3ZFYytQWnVwN3hqKzU3UjBLcE9mbWJDSFhTaTZpZ3V4c3dX?=
 =?utf-8?B?U2gycG1rQzNjYnhVQzVRWjhxV3JwTE52T1hnNlY4WUhPSGRyTVgrZFQ1ZEhO?=
 =?utf-8?B?YTJUTGJ1QlZwQzZZKzJPbkEwQWFZY2N5WXpCNnB4cHhVangvdE4wZngyUVU2?=
 =?utf-8?B?bjV1MkJOUmswRWtaQzFhY2FPY0NxRmRYVkJCOW8rSlcydTZFVHltSTk3Qlh2?=
 =?utf-8?B?NUU0SUhaV0ViaFRqY1VpMWxXYWdudUlLTmw1TFd2Tms2OWlrNUIxb1l5SDlI?=
 =?utf-8?B?cFZ5N2ZNL0hyVHplSnhCTG84VzVRWXRESzByd29ud1N2dDE4T0VjRnQrSGZw?=
 =?utf-8?B?N1hBWDlzWklLS3grSFV4aFpROE00R1ZXL3pTTVRBbDBEVFBxSzdLSGh6UlQv?=
 =?utf-8?B?alUzK25POGRsbENCZzc2b3JiVzI5eC84SzlRT3ZMaU9GT0JZdGtNWXJRaUJ0?=
 =?utf-8?B?Q0MwWTBad1QxcWlhOTdiUCtocnM5ZVdEZTVRMWVPa2pVQXhRRUZqZjZOV1pS?=
 =?utf-8?B?N21VOVdyTmx1dnN4TkQ2Y28vck1FNGl4bS9VZHdEZXF0TWJCNVRuWmxuZklZ?=
 =?utf-8?B?bStuU0x4NVVFdnZXQWU2SHFjbUZHVTJPN25obnZoWTA5bzdLbEJGSEdpS3JN?=
 =?utf-8?B?SHVqZUlqd2N3dnpBbmdQeFdJR21Uc2JJVmNYN2c2SGd0aCtDaXVGYXdwOHQz?=
 =?utf-8?B?MDQ1a2F3QWtPa21jM0xyekJZWFlrV3ZQa3VBN3ZvSU9jbS9QUEp3bzIzWnB1?=
 =?utf-8?B?U01haXVFQWx1UnRCeXFDOExObUl3WDFrUHdkd2FPbE5nT28vSk1MTjRaVmov?=
 =?utf-8?B?V2k5SXdVVVlwVkFXMGl5MHRiemNrRVVqV25OWXNaMnMxNnhOZmkyMlhTb21t?=
 =?utf-8?B?RFkweUJxR1B6T3JmRkJKaUx2V0EvVHZxYjFFdWdRRFZlV1FzU0ljNnNnOG91?=
 =?utf-8?B?MUVkS1Ewald4N1JzYlJOcWd1NEY5ZWpLQVJ0YmpsNit5blRmSmM3b1k3OWsv?=
 =?utf-8?B?enJTenV3WEtBR0hIQ1ZucjYrdUVHRFoxY1F3YlJ4MS9FdXBQU3U3cTFDSUsw?=
 =?utf-8?B?UHE1NW5TZ3VNTEhYMmNLbGZQU0c2U0lXSitlSDgrM0xlSEpVZStYNlhCeHl0?=
 =?utf-8?B?ays5YkY5bWZTZ1JKcHp4aGNVcldlanFrNXBuUW9CMXdjRXRUZlkxTXlLRjVP?=
 =?utf-8?B?SEl3T0V5Yy9NR1lLSkhYRWMvTm9jeUIzVDg1cGIrRDUzRWZuVUVlbUl1S1ls?=
 =?utf-8?B?bXYzMHZ0cllTZ1NuS01iZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0RaSXAxaC9EajlpUU1Uci90RzVOSE55VVozbXZEVWI5Sm5MbEFIdHB6MFdI?=
 =?utf-8?B?UWpGdkI4QVdCZ3JweFdiZ2k0RldJby9GYnRYVE11UEVGTXZPQUI2NHF6WkY0?=
 =?utf-8?B?VHptaVE1Z09rNVp0c3lUT2psK1ZlNUNmNXEyKzdPWmdiWi9STHdpM3ZTTXpJ?=
 =?utf-8?B?ZHpaYTAzREZGbDZyNmV3RnBGV1cvRVVjN0NSTWN4M0tZNm9LamxJL212OEpt?=
 =?utf-8?B?VkpvWjBQalNmUkRTTnFBNGg1VFNadWxpZjdmeUprcTNmYTRCUjNwY2Y3Snp4?=
 =?utf-8?B?ZExVNVlFZDFHaHg0clQ2dm9LSnhkTStaNEFCM0plNXNyUGtVOGdwVVBMZ0Zi?=
 =?utf-8?B?ZXZPT2ZlMUZLcVh3bzBIQkpvYmNqNzczeG8yQnlSUnhORTNLMVdSOHhSQS9U?=
 =?utf-8?B?WHZ2RTZ3NGRPRDFWckNXdDhITStzdmRPbkc3SU1ZUWpoVVdjVEFxT3NyV1Vi?=
 =?utf-8?B?N015dHNFTzM4elRKV01ydzZTais5VGx4MHFhdTN3VTF1bDVORnJvT0F5TElH?=
 =?utf-8?B?OHFybmZsR0dGL1JRTE5VaXFaZWs2NkE1WXl5THpmN0tCR205U2djRjRON3ZQ?=
 =?utf-8?B?LzhXWkxtZ1ZncTZta1lYZ3FmMDhjZ0pHc0RQZ3hZYm9uWXEwa1JhYU1YNEto?=
 =?utf-8?B?dmNzM3I1RkxuUXRVbzdDNDQwcndiQnNqUDFaVHR2MWphb05CblZweURZT3M3?=
 =?utf-8?B?bVl2eEgxQ1dDN0FJWmc4dEYxelFhMlg2L1cvNjhNQ1htaHR5REpwalNkUGFE?=
 =?utf-8?B?SStuRzRadWtEdEtGcFg5bVpPL25Vcnh1b1ozZmVkKzNlWnVKdlN4SnlqRXhm?=
 =?utf-8?B?RzNWbTBwYVZwUWttWHEvbFcrYlhSTnFocUZKV0dpTGdKd0IvSVowZmxNemVN?=
 =?utf-8?B?Yk1LWTFWRWhyamdzQjdQcjdHb3k2eFBDREFsVlBSRXp4RkpkKy9JNnFHdmlh?=
 =?utf-8?B?Sld3dlhheXo1QjlqNHNWTStRcTJDaHhYRi9jeG5FMENDZVNlVWpZcVFNbThr?=
 =?utf-8?B?TzYzRk9qMm1aUWNkOWNMcHZtWVcxSVFlT3M0azNpL01Ddlpaa24xdEkrK2lQ?=
 =?utf-8?B?TkluSEhGQk5pSDR3dnJpRWlPWTE1SERFQkExdUJla05PcHcwazNhL0UyRHdo?=
 =?utf-8?B?UytmRFBRTit2WFY0cjB6UG5yOXJnWVQyamJoWmNoaUp0akx5dlY4ZzBpWU1J?=
 =?utf-8?B?dUNJZ1d4VmEvSjlLakZ2UDFWT2o5WmMvaVJDUUErQitvZng3MXgvZmFmSVJ3?=
 =?utf-8?B?Qmo5Q01hbE1mYTJFd0VRcWhDZU13Zk1hRE81Zzdhc2pwQ3RJYkZsYXNXaVV1?=
 =?utf-8?B?dmZGNFlwMjhQK3YzdkpXZlNjR0lMcUVEblNqcVZiTEhZVmRGZFdGOGZoc01l?=
 =?utf-8?B?NU9nSm1CY2thT0NJZkg0Ym9RYUxZQ1M5c0JGelpvSkE0NEs3NHJFVHdFUkdD?=
 =?utf-8?B?dDBLZXlJRzJLUEZ6YjNhcC9xYWxYQWl6blNHdEx5UHU1YmVnUE14c3oyN1Q4?=
 =?utf-8?B?ZVAvaHc1a0ZROTJXelFzcG1rakt1S1BPZ2w2UDIzWkNRSzNHSWpkSzN2dmc5?=
 =?utf-8?B?NW1qbmRHVk11SnJwMkJ4ekw2M0FvS2luOENwV3R5WDVpYWVGQktVNzJ4Z281?=
 =?utf-8?B?TVpyV1NQbUs3bWFUSVc3T0ZWUmVLdG5iN1NIbGRMN1JtRWpsTEp3aXhUY2Jx?=
 =?utf-8?B?Z1FreHFSUFU1NE5rSUpnWTVDR3dKZ2ZaWnZkczYxcDNpQi9lQ0Z1RlpZQ214?=
 =?utf-8?B?c2ZYWjZxNWNBZTJlenpraDhRdTA0d2NWczNqVEd1eWhtOGxmUVp2OUhmaGVX?=
 =?utf-8?B?VmVMVUsrK3lDTm1BRjRJZ05QbWxmbXpva2s2U3pWNU1vN2xGSWxXbFlIUGp5?=
 =?utf-8?B?Ny9ZOFNGTWkyb1dUZ1dPS21iaWZlRWo4emNCY1JHa0dXMzlDZnY5Z0VFNk9q?=
 =?utf-8?B?NTRUWW5OWEhjZnRFS3U3WmhGMFlGcXJKRy9GaEpMNVNFUzZMRTZGRXBpRVdl?=
 =?utf-8?B?TU1SSCt4L3oyN3hBUkIwNmQ4QTYyd2JxSzBVd1JadlJHTEtNcGZ2ZnozejNG?=
 =?utf-8?B?T21OME56MWNiSCtJVk9MeUtuYVhNTjI0U0s0UWdrM0ppUWZVUEs1K0RkLytr?=
 =?utf-8?B?dVZ4L0tNUHR0RXlFSDViWFJBQXNnWHpUTktxdk8wNzJGZUxiV1NBRjNVWWtN?=
 =?utf-8?B?Zmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9446D3D9B42E1F488FD36C0F21844969@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a87af71a-6365-4b94-a48d-08dc7bb961d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 06:18:52.0181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qeuGihQeT6YDP1MfDxhYJ/UMzbLpv/0ROHDZqK0c+FpqbK0ifbKJqjsyyPYTzPN1I154w8MtXSMzJY6g62dKT6lk/D9R7qSN+Rp/bjCH1rI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6358
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

T24gRnJpLCAyMDI0LTA1LTI0IGF0IDA1OjU1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwg
TWF5IDIxLCAyMDI0IDI6MTcgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBL
YWhvbGEsIE1pa2ENCj4gPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIHYyIDAxLzE3
XSBkcm0vaTkxNS9wc3I6IFN0b3JlIHByX2RwY2QgaW4gaW50ZWxfZHANCj4gPiANCj4gPiBXZSBu
ZWVkIHByX2RwY2QgY29udGVudHMgZm9yIGVhcmx5IHRyYW5zcG9ydCB2YWxpZGl0eSBjaGVjayBv
biBlRFANCj4gPiBQYW5lbA0KPiA+IFJlcGxheSBhbmQgaW4gZGVidWdmcyBpbnRlcmZhY2UgdG8g
ZHVtcCBvdXQgcGFuZWwgZWFybHkgdHJhbnNwb3J0DQo+ID4gY2FwYWJpbGl0eS4NCj4gPiANCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaMKgwqDCoCB8wqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jwqDCoMKgwqDCoCB8IDE5ICsrKysrKy0tLS0tLS0tLQ0KPiA+IC0tLS0NCj4gPiDC
oDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ID4gaW5kZXggOTY3OGMyYjE1N2Y2Li42ZmJmZThhMThmNDUgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IEBAIC0xNzQzLDYgKzE3NDMsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0K
PiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHVzZV9tYXhfcGFyYW1zOw0KPiA+IMKgwqDCoMKgwqDC
oMKgwqB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
dTggcHNyX2RwY2RbRURQX1BTUl9SRUNFSVZFUl9DQVBfU0laRV07DQo+ID4gK8KgwqDCoMKgwqDC
oMKgdTggcHJfZHBjZDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTggZG93bnN0cmVhbV9wb3J0c1tE
UF9NQVhfRE9XTlNUUkVBTV9QT1JUU107DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IGVkcF9kcGNk
W0VEUF9ESVNQTEFZX0NUTF9DQVBfU0laRV07DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IGx0dHBy
X2NvbW1vbl9jYXBzW0RQX0xUVFBSX0NPTU1PTl9DQVBfU0laRV07DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBkMThiYWViOTcxYmIu
LmJhOTJmNzFiODJkOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IEBAIC01NTksMjAgKzU1OSwxMCBAQCBzdGF0aWMgdm9pZA0KPiA+IGlu
dGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAp
wqAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9pbml0X2RwY2Qoc3RydWN0DQo+ID4gaW50ZWxf
ZHANCj4gPiAqaW50ZWxfZHApwqAgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiA+IC3CoMKgwqDCoMKg
wqDCoHU4IHByX2RwY2QgPSAwOw0KPiA+IC0NCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+
cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1cHBvcnQgPSBmYWxzZTsNCj4gPiAtwqDCoMKgwqDCoMKg
wqBkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxfZHAtPmF1eCwgRFBfUEFORUxfUkVQTEFZX0NBUCwN
Cj4gPiAmcHJfZHBjZCk7DQo+ID4gLQ0KPiA+IC3CoMKgwqDCoMKgwqDCoGlmICghKHByX2RwY2Qg
JiBEUF9QQU5FTF9SRVBMQVlfU1VQUE9SVCkpIHsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUGFuZWwgcmVwbGF5IGlzIG5vdCBz
dXBwb3J0ZWQgYnkNCj4gPiBwYW5lbFxuIik7DQo+IA0KPiBQYW5lbCBSZXBsYXQgbm90IHN1cHBv
cnRlZCBwcmludCBhcmUgd2UgcmVtb3ZpbmcgcHVycG9zZWZ1bGx5IG9yDQo+IG1pc3NlZCBzb21l
aG93IGluIHJlZmFjdG9yaW5nPw0KDQpJIHJlbW92ZWQgaXQgcHVycG9zZWZ1bGx5LiBXZSBkbyBu
b3QgaGF2ZSB0aGF0IGZvciBQU1IgZWl0aGVyLiBJIGRvbid0DQpzZWUgdGhhdCBhcyBhIHJlYXNv
bmFibGUgdG8gcHJpbnRvdXQgd2hhdCBmZWF0dXJlcyBwYW5lbCBpcyBub3QNCnN1cHBvcnRpbmcu
IEhhdmluZyBkZWJ1ZyBwcmludG91dCBzYXlpbmcgaWYgaXQncyBzdXBwb3J0ZWQgaXMgZW5vdWdo
IHRvDQpteSBvcGluaW9uLiBEbyB5b3UgYWdyZWUgb3IgZG8geW91IHdhbnQgdG8ga2VlcCBpdD8N
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ID4gLcKgwqDCoMKgwqDC
oMKgfQ0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxf
cmVwbGF5X3N1cHBvcnQgPSB0cnVlOw0KPiA+IA0KPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChwcl9k
cGNkICYgRFBfUEFORUxfUkVQTEFZX1NVX1NVUFBPUlQpDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYg
KGludGVsX2RwLT5wcl9kcGNkICYgRFBfUEFORUxfUkVQTEFZX1NVX1NVUFBPUlQpDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVw
bGF5X3N1X3N1cHBvcnQgPSB0cnVlOw0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLA0KPiA+IEBAIC02MzAsMTAgKzYyMCwxMyBAQCBzdGF0aWMgdm9pZCBf
cHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gDQo+ID4g
wqB2b2lkIGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCnCoCB7
DQo+ID4gLcKgwqDCoMKgwqDCoMKgX3BhbmVsX3JlcGxheV9pbml0X2RwY2QoaW50ZWxfZHApOw0K
PiA+IC0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1
eCwgRFBfUFNSX1NVUFBPUlQsIGludGVsX2RwLQ0KPiA+ID4gcHNyX2RwY2QsDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVvZihpbnRlbF9k
cC0+cHNyX2RwY2QpKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBkcm1fZHBfZHBjZF9yZWFkYigmaW50
ZWxfZHAtPmF1eCwgRFBfUEFORUxfUkVQTEFZX0NBUCwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRlbF9kcC0+cHJfZHBjZCk7DQo+ID4g
Kw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHJfZHBjZCAmIERQX1BBTkVMX1JF
UExBWV9TVVBQT1JUKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfcGFuZWxf
cmVwbGF5X2luaXRfZHBjZChpbnRlbF9kcCk7DQo+ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlm
IChpbnRlbF9kcC0+cHNyX2RwY2RbMF0pDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7DQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQoN
Cg==
