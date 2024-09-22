Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE4797E0CC
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2024 11:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971C710E19F;
	Sun, 22 Sep 2024 09:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqnX+IfZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D410010E19F
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Sep 2024 09:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726998876; x=1758534876;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nMPIYas4WBFqQ+xAHKbqPhPQgowxT96t6zFdRS28zzc=;
 b=lqnX+IfZY5DdE1JXMbA11mndPCVsA9LmDPGnc7926hlnPNDnhNXrvo4q
 8kZXo3ZH0TbdtejI/r5IM9+WBOtkLyXiy8dg3jo6G0lynnH0d6LsNFWWb
 IjKsWOlT3w2gL+MR42lKln46MSaiX/Pjwhs1q0/vzLwShMZliRzFHUliV
 LQVIh4KNqO4n9VYpcnUYMZAJCYjnx7Bs2/gMDb5hjD9mmQ7r3Ord/fP70
 SvFfSQ106oANliMSHYP/+c3lEFX5g1n1df5MaZew5NV/1HvyB6eFRlfuE
 dzPiwEuX6+22l3Mbu1MlkDaEqeGZcS8WX2qALoEhY1FAkG2S5/dE7umx1 w==;
X-CSE-ConnectionGUID: jmJDLr7+Thee473ob1Cu+w==
X-CSE-MsgGUID: +bVoNTQkSniZE8J/XQR7lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="25902552"
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="25902552"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 02:54:36 -0700
X-CSE-ConnectionGUID: /AzgHAlFR22q8Roar7U90g==
X-CSE-MsgGUID: K6Cuq81LSpWm+GpuWjwH/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="75148186"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 02:54:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 02:54:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 02:54:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 02:54:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 02:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m4+H7ug2aaWsxsh/ha1N5Rw7R98wdtnKCDKVZPBvfUDTidWsP5upSxhNshwR7SyJ3I4/L8yCtgkAqoJfh2V46xduBK9vTzNlp6XRDOWpjgD00HrCxonk0OemqpYswB8jorgZVMpV+4VMrK8ok9EITQvr9/dsPqifLJATCdWod9XoBXuLkDEPJB9VLCylT8h6A0QUMqsNwOcJSMNI098uqLJ37/SjsheRS3kp9M3/jmoKwKJId59AZZ3Dfpm05A8m9NZtqwF1eABQP+PhsGKC7RHXQr3Qtq4sgwLDlv2l0Wyh+SCrwMuAiOvpsAZkSFhGtYXbcL3AWh4e+n41N6jTnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMPIYas4WBFqQ+xAHKbqPhPQgowxT96t6zFdRS28zzc=;
 b=ETUxUDZgGa4bd+VsEiZsDI+F+JDuV88oD4bHuVvFs3rq1ZKUtXlrxMvjS0zKeaeVjg/XqW9w94QS0VBUe8hH0DmueYWL8RKL245yD/D1WyW5JNmjhns5eFJ+YE5ig0tEPw08bG0CUqgDVunOkH8gMPDtZRQHjx2A3kekM0a3MhFZKpXfKeOaYKzjfXl89OEAbKx8YDN7GtkfJslxwKsSeLw/1fT6Nivv9YpMQIXwLnRD63iigm5RC+2zGb8J7oZfwIAAFvV688AYhrnTqN28NP9tQGGCQ2FfGT1WCx2d0TmaOUNMrr/qmm+KDQLcIkCT35ibMWDGJ21UrMUI965buw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA0PR11MB7749.namprd11.prod.outlook.com (2603:10b6:208:442::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Sun, 22 Sep
 2024 09:54:32 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.7982.022; Sun, 22 Sep 2024
 09:54:32 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/i915: Clean up intel_wm_need_update()
Thread-Topic: [PATCH 4/7] drm/i915: Clean up intel_wm_need_update()
Thread-Index: AQHbCFTu1+DtbemE8UmKWwy68iO0f7Jjmi2A
Date: Sun, 22 Sep 2024 09:54:32 +0000
Message-ID: <005dc35a0daff49c6d15fb68fb9e76f5e9836be3.camel@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20240916162413.8555-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA0PR11MB7749:EE_
x-ms-office365-filtering-correlation-id: 41859d54-2f75-481f-f1b6-08dcdaec8eb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dWJlVUt2Mys1VG9talhHMmF2MGYvTWwwNjJYeXJqajJNWWExZHYwTk5QYVFP?=
 =?utf-8?B?c2tWN0xtMWVzc1F0dGxZQW14YUJLeU9SYjgrb21CNVduMmV5ZS9icGl6N2t4?=
 =?utf-8?B?OXltbUI2bE1qMkNpOG5HTG5MTE9LR2lRaDVGU2grVHR6YzYyeCtyWUIyTkRi?=
 =?utf-8?B?REgxVU5icEpPUEdsTlNNWDgrd1h1bzkvR2kxUkw3VWZDL3hYNzZXM1llRVh1?=
 =?utf-8?B?UGhFWkdJQ3NydFlkSHU4L2ZzYzBlcnhhZ1Q5UnMvV2JGcFBzYlFuU2pBd3M1?=
 =?utf-8?B?Q0syTmVLaXNBUVYvUGtteGFtdGlpelNXODI0N0o2cE1kRDUzNzdPclBrSG93?=
 =?utf-8?B?L2U0VzV1RFRDRFlvSkQ2aXJ1OHhBL3hGbWpCUGZCQjhXYWJoTDQ1ZnhmRTZU?=
 =?utf-8?B?djlTRmF3Ykd6b3hCcU9zWjY1MGtDQVE0di93Z3c4RG1hK01zUHBsV2pxWWlJ?=
 =?utf-8?B?cE1pQU5HbUhpdktBOTcvTkxTU0tkZ3BLSHRsSWVaSERWbzZheHRGT3loQnFv?=
 =?utf-8?B?dHJWQXlvVHFXOXUvZmhqUWFpcW5UMjFZY0JZZEc0bGl3ZGhLaFRLRE1jOURy?=
 =?utf-8?B?Ny9jY0FLNm9FdFRhOGNzV0NBWTZidks0Vjgvc1hueW5oOFB5KzBKbCt0dHlG?=
 =?utf-8?B?T2Vwb0xXWTNlTzZTWURpRTdFYkg1Q3JxNXRLRGVHZ0U1TU11Z0g3M0JjWWNs?=
 =?utf-8?B?b3REeE1iRlMreUJBY1QwNVoxbFVaSS9xNGZjdW1DRWRnR01Rc3BhSi9GMEpL?=
 =?utf-8?B?Q2hSVU9YMEtJdWJNT0J0UWdmU2dWSzlZbDZCTjQ4YWFyeHlaK0UwZFdDdkll?=
 =?utf-8?B?U2NFc0YralF3REVVSEE3RU1yczhQbklKMHZ6bUpqK2JSaHVPbEtHWXMwLzA5?=
 =?utf-8?B?RU1wd1hMcVlnOTlLZk5KazFURGZWd1pEcUNmVm85b0RFajJYbEdKZVpxMXhM?=
 =?utf-8?B?bTRZUWdIUkplWkdaS2F3RDlyeC85NkllKzJBM0k5U2xOazNzUTNtZUVmQld3?=
 =?utf-8?B?eDF3emNXcU82aUpCSXJ3Wk5MTEpNb2NyaGNGVk1TUUNQWWNBV0RUZ2lCL3Fy?=
 =?utf-8?B?Y0g3bld0ZXpYUUhJOE1HMmhJR0NmdEp2a3ZDeTBtdTVqdjNmdzIvN0d1THZP?=
 =?utf-8?B?eTFObWd1MndsYUgrdURkZmxOaklOdkFud0tnNjEydzJyRzBmZEo3a3hiazFa?=
 =?utf-8?B?N3ZicXJIK0Y3cjdsVUx6UXNFQ0QyQlFDeUoxdDdYVHJaK1BRRitJZG9YbUNi?=
 =?utf-8?B?WEFRNkUrV0lwZmN3UUd6ZFk4SmQ3OTlxSWhBelYxelArYzhyOEtkMDc2Wldv?=
 =?utf-8?B?YkQ0ODZVSENSMmJUU25JNzRGM3VyZDZsamdtODVnbU9wUmVBbzBQNG9WaEFm?=
 =?utf-8?B?MWxITnVSMFlBQXhIelIrRlg5cGVDQkthTFJLUFY2RGtEb01ad3czNCsyWWVN?=
 =?utf-8?B?ZjJxeWlxcG5idTllSHd2V29jek1ndEVnNHc2K0lzSFppQ3JWRmhZZTdOQ0c4?=
 =?utf-8?B?RVVobHhmMHdGNzlTbmkrZVArOFpOQlBEYXdZdVVBK0RBVTdvT3N0REtYRjNi?=
 =?utf-8?B?V3AzcVV0NS9ZbTdqRHNtY2FvbTlNNTE2QURmcFBEcmtZM21GRlpCVTdMTEdz?=
 =?utf-8?B?TlptRjhzZERvdnNFOVRQUzI0ZklrTEc1bWs0MmRZSlNhQWFiRGV5ZGxhZTJp?=
 =?utf-8?B?OCtvR2FxZVllblRXODBRRm1pVzNkbzBLeEdEL0VzSVVkMHQyTzdwQkNBMXFa?=
 =?utf-8?B?bmx4Y1RhanB2Qkt1azRES2l2T3J3UHlCeEhjc3dncWVmY2VWd3o1a2dSY3Yr?=
 =?utf-8?B?b0ZBTjFsRzhLWUJXalM2OG5hakkzanN1bVBSbEszQml5YzBPWXhmNlp2TDV6?=
 =?utf-8?B?QXpyalBZUDZsNVRCTkVUQnpsUnpFelVRSlU2RHVDcjFuUVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KytUM25rWlNWVnRQY280bWFlZ1ZyQUs0MTBQS3RZakM3S21pQjFUenE0Qys2?=
 =?utf-8?B?M2NYL2tndjhLZVJpRWlPWnRQOGI5cktlT1pOS0UyNWdPUnJPOFB2QU5Qdzl0?=
 =?utf-8?B?azJjcExaMWFmVkhkRG42elNLbGRJTjI4TGRSVVQ1OUxRdnFtVmhOYld3Wita?=
 =?utf-8?B?UlpYOWJQRTQ5QUZMeDE4dTFWU2lqSlR5U1VXTXJUSWIxYVU4Wk9sOVFMTnkr?=
 =?utf-8?B?aW5MTENYaGJEcDdSMXg2M2pOQXduclYrdU1TbXRaSDFIVTJ3WFFPeXVIaFUy?=
 =?utf-8?B?VVVWc1dJRDZFbldNb2VUQldjbjZwQXRhOUs1RWg4a0xMSmR1Qm9GK1FOdFNB?=
 =?utf-8?B?SGNDWFVKOEJCODR5U2RuQlNrVGgybUtwWUxic1Y5WStZdGwxZjY5d0NOYjBJ?=
 =?utf-8?B?Zk9mNW1vUkh6Um5rMWRLWFNSQmJjWTRXY2pLQ0hxU2dWT1JQQjFHVVJhZFdj?=
 =?utf-8?B?amU0UmtwbDEyUk40UXVxNG5KUUZvU3BjZG8vUGFwZVhnYjdCRXNPTllFM3F5?=
 =?utf-8?B?ZVYxQ2svWWczYXR3aUhRZmZRZzIyMWxUWS9xSWI4OStQa29RSDNEOW5WVmNy?=
 =?utf-8?B?MkorUTVSN0h1cWVPZDh1WjdDN1JsOSsvS1YxeFVMMGhpN2w5Z1NRRnZJR1Ba?=
 =?utf-8?B?aXhjOCtrWWRRd1RSRnVtdlpQQmp5bWpkNDYxYjVCYjA5TElhY0ZCTVNpWjNr?=
 =?utf-8?B?bnFkb2owVVNNMzhzLytVQ0lJODRoRXpHNmt6YWRiL0hHZWk5aWRJUEdBRDVG?=
 =?utf-8?B?YUQ4dklZOGlkUkhuTzJ5L3hERjJyc3FFZVphN000NWMrTmpDRjBVVHhNVEFL?=
 =?utf-8?B?dXh1R3lvOTBMOVN6NEd2Rk1FQmp2RUhFYmdFeVRqNWwyK3hZZXd3NWFUOVV2?=
 =?utf-8?B?ZmtvQkoxVUhHWUR3ajhBa2M5ZW9QaTJPaGgvRXFUUVFzRHNDRHA2bmVpVndx?=
 =?utf-8?B?S3cwYVhkWmZIdjhucC84NUtaQmUzZ29xSzJpVzlXQkFzZld2ZXgvTUx3eEtt?=
 =?utf-8?B?ZzU2dVJLZWZuRFk0QlpKQWNsWWFjWXJlVk4xcTduQ3dxa2Zrc201eDNmQmZF?=
 =?utf-8?B?UDBHNU01bm5veXJmR2x4M1puQU5RUXk0Nlp4bCtJNGZJTlU1dDFsb2RCdGIy?=
 =?utf-8?B?MzRoNVpHYzVoZEM0TTBpTW02NmhySytZVjM2YmNVNGo0Q0NGK3lQSHo5MXY4?=
 =?utf-8?B?MFhidDg3TEZGOWxqRHNPR0c5M241VmwrUEFmRmdsSmVJNy83ZGUvL1N2Qzgz?=
 =?utf-8?B?d2NPRFhJN2xJZHFTNEhDWmlxb0lkcTVNOHVnTVgzTWFEOHhWRGtPZzdXeUw2?=
 =?utf-8?B?ZzlaZUdmbDVSaFdUdnlDYTVwZnQrdjVlWTNVVkw4VjAxMStaeW05Uk5lb2oz?=
 =?utf-8?B?bkwzTWhYOTh5dkIrYWdYUURiK3FIVkxnbHdVWEdkRjN1aVdOMjZlWk0yeFlS?=
 =?utf-8?B?R2xuakpCNzIwbTZNVVZ6UEVHNDYzWnQwd09pakIrMjJIMkEwNmF1RGV2S3Jj?=
 =?utf-8?B?Q2EyVDc2eVpncmYrdDlmSHN1N3J4UDVXK1BaMUdGS1N2VmxuekVCQURMVmVJ?=
 =?utf-8?B?TE1vRFFRbyt1aHJTQ2RhcjdNRGMwMjZPa1YvMnF1aE5UMmVKNkM3dUhWaVRL?=
 =?utf-8?B?THpoRkUrNkdSSnM1YTE5bkVKaVErUzJqeGI4OXByQ3V0ZjRqNHZHU1Q0NS8x?=
 =?utf-8?B?ZTdKUXBuSmRBd2ppOUh3c2RMQ0JTQW1Dd0p0c2NHVko4QVM0OHRER0Q1QXVt?=
 =?utf-8?B?Z2tSQWg2OENuMkxoWW5aR08wWnBzbjYra2oydlZRcWpoWlhGOHdDQ0ZEUk9P?=
 =?utf-8?B?T3I2WHJLYVFmWDh1OTBLUHNwcDUrNTRIZ3JkMDBHZVRFVkhYVzBVZ2dQd0Mx?=
 =?utf-8?B?eHk2ZzlSSWdlS2hZS3QrL0MzY01oekpTRUVYUlJ1dGxaQldWbWN6L2EwbzlL?=
 =?utf-8?B?VlIyNVU5QnVlVXg5ck1aTTlLTE9rYktNV0UwYmZHQ3RWU3RTTkVydTBtMmJh?=
 =?utf-8?B?c3pYZGpsM1VIcXBMQW9YTFg3aVBGZlRUK3VFcXhPVVpML1BVWjcvVTE1MHFj?=
 =?utf-8?B?aTZzVHhTVHlqR0t1SVRpVmhzdS9EaDNxcU8vU3ZVTHNocjFMcHEzaytlZ1M1?=
 =?utf-8?B?UlI1aUd2MlNCUXR4OEVZTTIyT1RKcFM0R1RkZEZKVUhnZ2dYT3lubUVQSUtY?=
 =?utf-8?Q?tcTUZdnwNKl2j0M4xlkDOu4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F0A42245BDB3E4A96752B6EBC0FD5B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41859d54-2f75-481f-f1b6-08dcdaec8eb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2024 09:54:32.0739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XtNxWv4ZQ8lTHTfmLc2YdSPQs4bCZTsBJESWI9yl/gLi7Xce4XbdZebJS245pghncmVxVX0r1RWGmGkjef+N3bbHwcSvukdW8IdPfqjtVyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7749
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

T24gTW9uLCAyMDI0LTA5LTE2IGF0IDE5OjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gaW50ZWxfd21fbmVlZF91cGRhdGUoKSBpcyBhIG1lc3Mgd2hlbiBpdCBjb21lcyB0byB2YXJp
YWJsZQo+IG5hbWVzIGFuZCBjb25zdG5lc3MuIFRoZSBjaGVja3MgYWxzbyBrZWVwIGFsdGVybmF0
aW5nIHJhbmRvbWx5Cj4gYmV0d2VlbiAnb2xkICE9IGN1cicgdnMuICdjdXIgIT0gb2xkJy4gQ2xl
YW4gaXQgYWxsIHVwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAyMCArKysrKysrKystLS0tLS0tLS0tCj4gwqAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1i
eTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jCj4gaW5kZXggYjViYmNjNzczZWMwLi4yYWViNGNkNWI1YTEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiBAQCAt
MzkzLDIyICszOTMsMjIgQEAgdm9pZCBpbnRlbF9wbGFuZV9zZXRfaW52aXNpYmxlKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IMKgfQo+IMKgCj4gwqAvKiBGSVhNRSBudWtl
IHdoZW4gYWxsIHdtIGNvZGUgaXMgYXRvbWljICovCj4gLXN0YXRpYyBib29sIGludGVsX3dtX25l
ZWRfdXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqY3VyLAo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ldykKPiArc3RhdGljIGJvb2wgaW50ZWxfd21fbmVl
ZF91cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUs
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRl
KQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqAvKiBVcGRhdGUgd2F0ZXJtYXJrcyBvbiB0aWxpbmcg
b3Igc2l6ZSBjaGFuZ2VzLiAqLwo+IC3CoMKgwqDCoMKgwqDCoGlmIChuZXctPnVhcGkudmlzaWJs
ZSAhPSBjdXItPnVhcGkudmlzaWJsZSkKPiArwqDCoMKgwqDCoMKgwqBpZiAob2xkX3BsYW5lX3N0
YXRlLT51YXBpLnZpc2libGUgIT0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiDCoAo+IC3CoMKgwqDC
oMKgwqDCoGlmICghY3VyLT5ody5mYiB8fCAhbmV3LT5ody5mYikKPiArwqDCoMKgwqDCoMKgwqBp
ZiAoIW9sZF9wbGFuZV9zdGF0ZS0+aHcuZmIgfHwgIW5ld19wbGFuZV9zdGF0ZS0+aHcuZmIpCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gwqAKPiAtwqDC
oMKgwqDCoMKgwqBpZiAoY3VyLT5ody5mYi0+bW9kaWZpZXIgIT0gbmV3LT5ody5mYi0+bW9kaWZp
ZXIgfHwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3VyLT5ody5yb3RhdGlvbiAhPSBuZXctPmh3
LnJvdGF0aW9uIHx8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9yZWN0X3dpZHRoKCZuZXct
PnVhcGkuc3JjKSAhPSBkcm1fcmVjdF93aWR0aCgmY3VyLT51YXBpLnNyYykgfHwKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZHJtX3JlY3RfaGVpZ2h0KCZuZXctPnVhcGkuc3JjKSAhPSBkcm1fcmVj
dF9oZWlnaHQoJmN1ci0+dWFwaS5zcmMpIHx8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9y
ZWN0X3dpZHRoKCZuZXctPnVhcGkuZHN0KSAhPSBkcm1fcmVjdF93aWR0aCgmY3VyLT51YXBpLmRz
dCkgfHwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3JlY3RfaGVpZ2h0KCZuZXctPnVhcGku
ZHN0KSAhPSBkcm1fcmVjdF9oZWlnaHQoJmN1ci0+dWFwaS5kc3QpKQo+ICvCoMKgwqDCoMKgwqDC
oGlmIChvbGRfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllciAhPSBuZXdfcGxhbmVfc3RhdGUt
Pmh3LmZiLT5tb2RpZmllciB8fAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBvbGRfcGxhbmVfc3Rh
dGUtPmh3LnJvdGF0aW9uICE9IG5ld19wbGFuZV9zdGF0ZS0+aHcucm90YXRpb24gfHwKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZHJtX3JlY3Rfd2lkdGgoJm9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5z
cmMpICE9IGRybV9yZWN0X3dpZHRoKCZuZXdfcGxhbmVfc3RhdGUtCj4gPnVhcGkuc3JjKSB8fAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fcmVjdF9oZWlnaHQoJm9sZF9wbGFuZV9zdGF0ZS0+
dWFwaS5zcmMpICE9IGRybV9yZWN0X2hlaWdodCgmbmV3X3BsYW5lX3N0YXRlLQo+ID51YXBpLnNy
YykgfHwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3JlY3Rfd2lkdGgoJm9sZF9wbGFuZV9z
dGF0ZS0+dWFwaS5kc3QpICE9IGRybV9yZWN0X3dpZHRoKCZuZXdfcGxhbmVfc3RhdGUtCj4gPnVh
cGkuZHN0KSB8fAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fcmVjdF9oZWlnaHQoJm9sZF9w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QpICE9IGRybV9yZWN0X2hlaWdodCgmbmV3X3BsYW5lX3N0YXRl
LQo+ID51YXBpLmRzdCkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
dHJ1ZTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cgo=
