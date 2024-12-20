Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4AF9F93FA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 15:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D262710E1BD;
	Fri, 20 Dec 2024 14:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bcW/Z0AQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D94910E0D5;
 Fri, 20 Dec 2024 14:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734703732; x=1766239732;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PDmYLY4h/fUeVLmEVRE/ITknNX5dDbabh+QqB2EA9wc=;
 b=bcW/Z0AQTIaEWFpBXwdfqiNGNA1fRTbR/Ds+OG/1s8hlDe1RFg9M7/b9
 +hSuiBEP+0RHfBTsPylZVXEKJWX8S7nra6jfMuR1s+lTttrhA0ZEqTRw8
 zijwL+QkExETHWB04SaWpikKLYxK3uxrB7KnrZgLRvFMgtDwdeS2Ksv5b
 Dg4I9UpanQ+g8P56dgP75XSRc+11xORNfxwRA4Q/9OaLbUj0TaVvuCZbK
 xMYGw4qeIeAUc/gq/3RM3fqdJTeLRQ2uL6E8L8kBkp62X/L8jmURR8UFT
 sAL2g+Ecw0e2ocKU7tfG2A6oX0MBNb5dtlbZJcu09LvBYNG42OqB5trS2 g==;
X-CSE-ConnectionGUID: QD39oxnTTbSXUIr4D5P4fA==
X-CSE-MsgGUID: T87pvar/Q3CazND/UWPS3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35397864"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="35397864"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 06:08:50 -0800
X-CSE-ConnectionGUID: xTYklUDIR+GNLCmySnP+/w==
X-CSE-MsgGUID: C5c0SyaCTiiiMwdmjenmUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98719819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 06:08:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 06:08:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 06:08:48 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 06:08:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QihExuPvhyy81rQkqtFC9SRtITGsry7ZRT/ssZ1Xyab0lVfkyeDWMxgJRUg/a5a7i70QUqrUxXzWD/kgh4ElxnjYErB4ulQPtXjhZKRKdmw2tVN5XSjaodFX/U5XoFZAgvRq2wF0JzxPPcXe7JFBDUVFsedbvVeCfIKcSxY/sGl1khDl2sBK1oJNEAOKFVDGLq9wDOpxmT+pfTZBi0KqZLx6NZNBuWDcBRrsFirudy6HxTGmQH9f8WVxKnp38cpK8b1e9ifrR6/ySQor0wUKwhSEFxmdZHeXyKyBSA/coGZHJ+el/JvIB32p1fQrW9bVEbnYeqNH0GXPMVLesaEVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A7B/TxG+SMw7tjG3QmFnOV8Fw7Je35G/CC4Rxr+FHdw=;
 b=R6yuOjoXibsk3rlEq4/q2DyNb3WreY6FkpPl8ZVf6VUHWpkee+AzzECaVpnIc/6jy2nIqQP7kpiFJFk0f4rDoAJIby+bkJMU21q1YjXVMgoLsURWOvjOBk5wMB1PrBMs5pAXbQGoLImg8I7IngGPOiSdClg60c7miPdyup+m9Ea9UCLmMLjbBBvil2TrkngT18gWJeKer+j+5behY5xGMg7kF9EKOHjE6ObxGgBarSkcyacGs5j4VY0IaHifEyb7z43eEOt2lnpP32/MMuP+zUVpdYqCp4xHmPGb6OISnB9TiCc5pSVaS0fqoE7k4iJT57iMg8QlqaXu7UCvGodzsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.17; Fri, 20 Dec
 2024 14:08:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 14:08:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CH0PR11MB54444299B8C0FBB73897F3F3E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-4-gustavo.sousa@intel.com>
 <CH0PR11MB54444299B8C0FBB73897F3F3E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
Subject: RE: [PATCH 3/3] drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Fri, 20 Dec 2024 11:08:36 -0300
Message-ID: <173470371682.2440.15548786677900604945@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P221CA0020.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV2PR11MB6022:EE_
X-MS-Office365-Filtering-Correlation-Id: 88caafce-e98e-41c8-e905-08dd20ffce64
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3BhSmRGRzk1YW1lOVZrNDgvSFhJTmtaZ3FFT3dRcW1VV0UrR1cxUEFQQnlO?=
 =?utf-8?B?LzVCN1dzVityQ2ZmakVvQU1BSHZMWjRxWjRIZzc5SFpHbXN2MUxjTEtGNGty?=
 =?utf-8?B?WlhRRUZ2dG5Pdlc0U3pVYVZsKzdrRFJuMXJjZ0YvTDdsejFsSzc2bTI5RFlz?=
 =?utf-8?B?bjJSZ1JlcElCMGxWVVNFOC9ianNRQTU3bmQ5L0ZjZXBjVnllalhLV0NjTHhW?=
 =?utf-8?B?Yk8wOTQ1L0NaU3NOTkcyc2EwMHJHcFBiaFJtd0VyclBEUnBYMFNJdUpFTFZZ?=
 =?utf-8?B?VTNQMC8vbUk5a3lKcDl5SUxna1JjSUNtTkdvS3pOUkJQVEpaek5UYVhKRHB6?=
 =?utf-8?B?WTROVndTRnhwbUg4c0FPQkdLNmUzVm1VTk42dXJHNGwxNUIrUTl4N3VnVVQ2?=
 =?utf-8?B?Uk12UHgrRC9USVQ1RGl4cEllZXdHV3ZReHZjcWdKV0xNaDdEaTNuWkNIWWVK?=
 =?utf-8?B?ZlNLK2RLenBkaU1wdjdBMmZtbjZEVVBhLzNWZmc0Ym9RRXgybVUxRFBMeURq?=
 =?utf-8?B?RStldTQzUFFaamJDZk1wZ1NHRjJyUlJ0eDREam1NMFRPT1V4UkJ0Y2M1bUcx?=
 =?utf-8?B?bWZoVlprY1NTbU5XWVF3Y1BmWFlMU1oyMDduSTc4VWhOU29IYUxHRGNacTJX?=
 =?utf-8?B?Vk13K2hEY25kWXZVOWd5V3Rrdk9wS0pVd2RHdlRnZkhqTGxlbmJyYWZoaW15?=
 =?utf-8?B?b0lMb0kvdTdNamFMaUZMUHNvY3puM3ZMMk8wRm1tbUZQOWRDWWx5NzFZcjFw?=
 =?utf-8?B?c0RhNE96eWFWRGRUMjRBYlNEZGNhOHZnRXZ6Zzh6c2ppeHMxUkppajBodjRC?=
 =?utf-8?B?U2Z6SXVqT05YenFzT095R3JlMlkrelljUUM2OEFBY1kwa0NZLzFDQ20vcVR5?=
 =?utf-8?B?Z3dZV09wQ0Z4MWU3aXl5blJaamRHd3FCNXR1b1d2K3QrdnNWN21DTkZhbWpo?=
 =?utf-8?B?dVZaS04wMjhsdVAwSGNzVnZlT0Rwc2ZHUVJiQy9XeUdFcXQxT2NCV0tmN2Z2?=
 =?utf-8?B?azJOR2Q1M0lCZWFSWmlxZC9BMG11bDNkVU5PS1hlL256M3BRcUVVYm12UHo5?=
 =?utf-8?B?aVJTYSt1T0xBblRyTW0xMDMvcnhibmtKUFNpL1R6aVJXVWtsMXlHRDRFSmxs?=
 =?utf-8?B?RitsL0NNcjU3bGNrQXd4c01DS2NVbklteW5XR0ZnZnNESSs4aDUzRktINmRX?=
 =?utf-8?B?SThkY25sam42ek5tYnZFWTh0d0tlb0pTS2xTRGlTbDFETGcrZlh1cEh5aTI4?=
 =?utf-8?B?bVUyRVZ3ZzlNSWdsdnNSSTNhUFFCZzZ5bEdFY005SzZ3SnI3ZXBuczRxdlpS?=
 =?utf-8?B?RzU3bVhqbEk1QW4xQmRTUk0wMWQ2ckZCN0xtbHNKSkpsMVBiTHB0Yy81WCt1?=
 =?utf-8?B?MjlMdEc1b1orZ3poQUNnY0dzcUwvcXlOWmtlWGh0YS9wTkNrWWVUWU9ta2lk?=
 =?utf-8?B?d2svWUp0YWVjQVNzUjRZczVEVVdFNTRrRjZQc3R6S2JaTWJ2QmhuZ09QMVYw?=
 =?utf-8?B?NWtnMEpLRG52WXRacG1YSFlVeGg1QTcvRXlxdmFuYjNTakNVdXZ0WWZ5RHV4?=
 =?utf-8?B?WmRZU0UxTjhQUGV4TEFVYzBoNlZkMGNIc0gxTkFFSHdFcFVrVmU0WjZUZi9L?=
 =?utf-8?B?REF4UVhwMGxib0pnc1pQWHRhZVBUOXZBQ09DTFVhQ1VhMWRKL2N5amJ4RStH?=
 =?utf-8?B?OHNUSjNNcEtGKzE1Vk5MTEE5MWFJM3luZFZKSHdhbldqVG5tc0ZXK0dXak9o?=
 =?utf-8?B?b3VEOHpjZzBrT21sYkRlMXF2YnBoVnpPNFJzN29iNU5jSy93ditsL0xWOHhw?=
 =?utf-8?B?a2hQb280SDRDNERVL053bVBhVER6ZkZROFhkenRyRWVUZVAwdWtKWGlLckNt?=
 =?utf-8?Q?hKIFlikLQ4tCb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDhza0hYdDJWbEtNU0NhK2xHZDg2d2hUVVordVFYTndhbWQ5OE5oenVwVmIy?=
 =?utf-8?B?RmM1T2l1dyt2T0k5RFFSK0QwN2wrdWlkaEhKMnBnWGtFNWJlTnA3VlRMbzda?=
 =?utf-8?B?dlNRTjFlOVVqajltMklrNTdOb0tMdGxzUjd2Qm5FUlVPNFJnMjZCWmRUbnZ4?=
 =?utf-8?B?ZzVxVlNiK2NrZW5XY0w1V01VSWN3WkxiQ243cE91QnFQNTVHSHNSbC9kTFJP?=
 =?utf-8?B?d0JFZ1prNkswQVpFa2JVVXRpc1FlWUtDQjlBTTduckRUSmlKOUVJNG03QVpN?=
 =?utf-8?B?ZExXUVVSbEZ3MkRCcW5VZVIrMGdNd3pXT1REanlMOTV6c3JnUDhkdFl5azhp?=
 =?utf-8?B?Nm4yRjZpaDgzaXBVbUJZc3VyVHVmNlBJS2tDY3VjYlJMdTZ5dStUWWNMKzdG?=
 =?utf-8?B?VGcwZHJLK3A2NXRaNlJnUmNmUHRxNnV5WG5EcE50Q0RGcisvc1dGMXI5SVhV?=
 =?utf-8?B?TnJWd0dPb0gxYnk5UkNoTUV1MDFFVlgwVDlGTUVmQVlqTkVXWDdWQ1FiOW9i?=
 =?utf-8?B?RS9WbjFybmxtS2VLcVBGWnFMSXFZSUh4dVFENUhPUFBGQUZESEV3UC9TcTZy?=
 =?utf-8?B?bDREZ054dlFhdGJkVlBQRFVhb2tqUC9McWlmdFNaWVQ3dDVVeGFuQnowWHBK?=
 =?utf-8?B?YnRqNDlSQTJqZW96L1hZU09HM0FjOWE0dkMxNXc5RTJHWW13QzlHTWdyWnE2?=
 =?utf-8?B?a2tFaGd3WkN6bzRhQmV4S2c3UmVEbFZnMk40WjBFQ2lySTNqMWJ6bjdqelFN?=
 =?utf-8?B?Zm5pZEZXUjZkWVcxM2NnNkEyV3hkSm1DL1lQM1dRK0Q2d1BpQnNLUVlOTjdm?=
 =?utf-8?B?RUM1YlZsSmIzUm50V29CSk9vMmhUbDA0MXVQZXE1aTNlQTY2RTVRY2tHN1hT?=
 =?utf-8?B?OU5tRnkxUzVEVmRMZkQzYngxV0NQZG5mU2NESmU5c2N4SmhUS3dXeTBBYTNk?=
 =?utf-8?B?b1FxMTFXbDJxWkNNd2NHZ0dveUNSNDQzNVJiZm4xVi9HdXM5M1JSdU1CRDBH?=
 =?utf-8?B?b2ZjblJaMkwyU3VBajFaSEpEZVZOdVRUeU5ZN0l5bTF6OEhQWFYrZFo1OTRy?=
 =?utf-8?B?citxRVJlckJmWUFlVkNJRVE0SGs3Z2JkbURXQm56SzBBaEY1bW9UblpFbkp2?=
 =?utf-8?B?ajR5eDE2bWdXbVpsdk5LcXY4cXdzMi96d1pjTXdmR1R0UWNSWVgwaHFVdThJ?=
 =?utf-8?B?VlBCWi9IMjQvVVZnQlNIRUpRNVFYbFV1NjNWUGkvajFBYjVCZkpmbkpTQlc2?=
 =?utf-8?B?V00yRzlBU3FrV1JvbmZ1d1AyQWdCTXExMndnUXJEb1BkUWlLa2IyMHZTVjBX?=
 =?utf-8?B?empVdjVkYjgrYVNucmtSYTlFZTZNK3Y0SzExYWJNVlRxaEIveEk3ZWh5TkdK?=
 =?utf-8?B?YWl5b2RZM3YwbEhraWo5QmpJYldNR3JvU1BjYTFoZGhBOFpyMDloRzBnTlpy?=
 =?utf-8?B?THJOK1BoNTVtRkpFL0ViNEs2cFBISUkxbTd0T0daek9mWGQxNTFtV1VZcWcv?=
 =?utf-8?B?QVVFZlNYbWZ0ZEZEckl1L2pJaFo0VWd6MXlTdjA4UmRsUCtLYTlldy9qdUEv?=
 =?utf-8?B?Vlg2ekxZOVppQ3ZkOTlpM3FFN2xWOC9WWUJpTHBOVFF1NXRXVHphRk01MG8w?=
 =?utf-8?B?V1dLOE01NFo1L3F1THZWc3ZwV29VaExMalBqMEtER3lCUzAzU2RoNCtnQzhZ?=
 =?utf-8?B?QzNmNlc4V0YyZVhNVGdFbjMzbTYyQkVNOWliTFptRlRhekw3aFpSbjFBaHJa?=
 =?utf-8?B?ZGtwek16elRrNGlNT1YyU1Uya0FCbStib3JWc21xRHJnVURERWgyT1hrSHVr?=
 =?utf-8?B?dGxUeklVajhKSkVhNUpZbXNUamtVWUZBYk5uUkV5ZEJCNlphcnA0NjZUUnFw?=
 =?utf-8?B?UytkV3NJZ0p3aldwM3p1WEltUWd1TWNoSDRTTk1xSVExTTNiSEJ4U25RUHNI?=
 =?utf-8?B?UVFOY0FMZ3d4Ti9SMGpxeVBMcUdjMGRON0NLTWNaenR6SjJ3dGxJMVkxRytU?=
 =?utf-8?B?MEt1aFZOZzZ0VXh5L2lEMWgxMEZDUEFyanV5MDdORFdISlJOc09Zd0gzeW93?=
 =?utf-8?B?TDhqbW0rZWRHQUNoSGpubG83L3N2Y0MrUlFkaWlES0ZwTWlIMm1MQkxrWnZ2?=
 =?utf-8?B?N0J3SUE0eWRTNHhOck1kODVCRE8wcG9XVngxdFlUSlpwRGsxVFF0UjFZaHhm?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88caafce-e98e-41c8-e905-08dd20ffce64
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 14:08:41.0861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w703I+AmT/c4zcBjlwaSSeW7TjRU8VqKZGfAb6cCTen4sf/l26Ylr33GOsB9PD32t7ac/vTdbK6AnZECw1wYKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
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

Quoting Cavitt, Jonathan (2024-12-19 19:45:15-03:00)
>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Gus=
tavo Sousa
>Sent: Thursday, December 19, 2024 1:49 PM
>To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>Cc: Ville Syrj=EF=BF=BDl=EF=BF=BD <ville.syrjala@linux.intel.com>; Nikula,=
 Jani <jani.nikula@intel.com>
>Subject: [PATCH 3/3] drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS
>>=20
>> Reduce global state boilerplate by using INTEL_GLOBAL_STATE_DEFAULTS().
>> The only case that requires customization is for the duplication of
>> CDCLK state, which is resolved by wrapping the generic implementation.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>LGTM, though I am a bit curious under what circumstances we expect
>obj->funcs->atomic_destroy_state to return a valid function pointer
>with these changes?  I'm guessing we aren't depreciating/erasing that
>function pointer because we might need it in the future?

I did keep the atomic_destroy_state for completeness (to complement the
"duplicate state" one). It might be that we end up not really needing
any customization for that part for any of the global state instances
that we have or will have. We could revisit this then...

>Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel>

Thanks for the reviews, Jonathan!

--
Gustavo Sousa

>-Jonathan Cavitt
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c       | 21 +------------------
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 18 +++++++---------
>>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 21 +------------------
>>  drivers/gpu/drm/i915/display/skl_watermark.c  | 20 +-----------------
>>  4 files changed, 10 insertions(+), 70 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 30236010e0ed..f040dfa70fd9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -1422,27 +1422,8 @@ int intel_bw_atomic_check(struct intel_atomic_sta=
te *state)
>>          return 0;
>>  }
>> =20
>> -static struct intel_global_state *
>> -intel_bw_duplicate_state(struct intel_global_obj *obj)
>> -{
>> -        struct intel_bw_state *state =3D to_intel_bw_state(obj->state);
>> -
>> -        state =3D kmemdup(state, sizeof(*state), GFP_KERNEL);
>> -        if (!state)
>> -                return NULL;
>> -
>> -        return &state->base;
>> -}
>> -
>> -static void intel_bw_destroy_state(struct intel_global_obj *obj,
>> -                                   struct intel_global_state *state)
>> -{
>> -        kfree(state);
>> -}
>> -
>>  static const struct intel_global_state_funcs intel_bw_funcs =3D {
>> -        .atomic_duplicate_state =3D intel_bw_duplicate_state,
>> -        .atomic_destroy_state =3D intel_bw_destroy_state,
>> +        INTEL_GLOBAL_STATE_DEFAULTS(struct intel_bw_state, base),
>>  };
>> =20
>>  int intel_bw_init(struct drm_i915_private *i915)
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index fc084e2a4c6a..a9dfbd53e812 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -3130,27 +3130,23 @@ static int fixed_modeset_calc_cdclk(struct intel=
_atomic_state *state)
>> =20
>>  static struct intel_global_state *intel_cdclk_duplicate_state(struct in=
tel_global_obj *obj)
>>  {
>> -        struct intel_cdclk_state *cdclk_state =3D to_intel_cdclk_state(=
obj->state);
>> +        struct intel_global_state *obj_state;
>> +        struct intel_cdclk_state *cdclk_state;
>> =20
>> -        cdclk_state =3D kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_=
KERNEL);
>> -        if (!cdclk_state)
>> +        obj_state =3D intel_atomic_global_duplicate_state_common(obj);
>> +        if (!obj_state)
>>                  return NULL;
>> =20
>> +        cdclk_state =3D to_intel_cdclk_state(obj_state);
>>          cdclk_state->pipe =3D INVALID_PIPE;
>>          cdclk_state->disable_pipes =3D false;
>> =20
>> -        return &cdclk_state->base;
>> -}
>> -
>> -static void intel_cdclk_destroy_state(struct intel_global_obj *obj,
>> -                                      struct intel_global_state *state)
>> -{
>> -        kfree(state);
>> +        return obj_state;
>>  }
>> =20
>>  static const struct intel_global_state_funcs intel_cdclk_funcs =3D {
>> +        INTEL_GLOBAL_STATE_DEFAULTS(struct intel_cdclk_state, base),
>>          .atomic_duplicate_state =3D intel_cdclk_duplicate_state,
>> -        .atomic_destroy_state =3D intel_cdclk_destroy_state,
>>  };
>> =20
>>  struct intel_cdclk_state *
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu=
/drm/i915/display/intel_pmdemand.c
>> index 1f71efb7d04d..5bf245a9ac8d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -15,27 +15,8 @@
>>  #include "intel_pmdemand.h"
>>  #include "skl_watermark.h"
>> =20
>> -static struct intel_global_state *
>> -intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>> -{
>> -        struct intel_pmdemand_state *pmdemand_state =3D to_intel_pmdema=
nd_state(obj->state);
>> -
>> -        pmdemand_state =3D kmemdup(pmdemand_state, sizeof(*pmdemand_sta=
te), GFP_KERNEL);
>> -        if (!pmdemand_state)
>> -                return NULL;
>> -
>> -        return &pmdemand_state->base;
>> -}
>> -
>> -static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>> -                                         struct intel_global_state *sta=
te)
>> -{
>> -        kfree(state);
>> -}
>> -
>>  static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>> -        .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>> -        .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>> +        INTEL_GLOBAL_STATE_DEFAULTS(struct intel_pmdemand_state, base),
>>  };
>> =20
>>  static struct intel_pmdemand_state *
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index b3d38e09df5a..8aa041be8277 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3289,26 +3289,8 @@ static void skl_setup_wm_latency(struct drm_i915_=
private *i915)
>>          intel_print_wm_latency(i915, "Gen9 Plane", display->wm.skl_late=
ncy);
>>  }
>> =20
>> -static struct intel_global_state *intel_dbuf_duplicate_state(struct int=
el_global_obj *obj)
>> -{
>> -        struct intel_dbuf_state *dbuf_state =3D to_intel_dbuf_state(obj=
->state);
>> -
>> -        dbuf_state =3D kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KER=
NEL);
>> -        if (!dbuf_state)
>> -                return NULL;
>> -
>> -        return &dbuf_state->base;
>> -}
>> -
>> -static void intel_dbuf_destroy_state(struct intel_global_obj *obj,
>> -                                     struct intel_global_state *state)
>> -{
>> -        kfree(state);
>> -}
>> -
>>  static const struct intel_global_state_funcs intel_dbuf_funcs =3D {
>> -        .atomic_duplicate_state =3D intel_dbuf_duplicate_state,
>> -        .atomic_destroy_state =3D intel_dbuf_destroy_state,
>> +        INTEL_GLOBAL_STATE_DEFAULTS(struct intel_dbuf_state, base),
>>  };
>> =20
>>  struct intel_dbuf_state *
>> --=20
>> 2.47.1
>>=20
>>
