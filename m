Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DEDB395FF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 09:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A2910E1BB;
	Thu, 28 Aug 2025 07:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CR7i9U17";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239FA10E1BB;
 Thu, 28 Aug 2025 07:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756367687; x=1787903687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w8hOjdXH7BrCOEbz0TuNiVfjzmocF9HV51STn1mElF4=;
 b=CR7i9U17u+o8M9lU5umjZb6P02rdq0nnWmNbVzgK8m4kV6pE8VBDLes0
 cJKt6TPGAEA4k9hCIhmE7hRZzOMU+gR2V0ATTaW5IFcAanppqS50hI3WC
 2iTUuccnL6NsXiGgAyNTTIV5dLBpVxw6sNHeRculnok1RLz0HVgIx3zRL
 4fwWoKL8ITPbpHGgIfzcbKXoonGvfucJuol8uCSM/dXLU65iezaZLcy0H
 wQ+jZ1WQh89S5VWN2owc5BGdwdGG5rgUKgQCBnqTsNJr1GSDN5ByQwAvV
 oL+u2LxC3KkuwpTRrDpZ2XeZULdfv0fPwq7eC3lVTFk+7M06LCDxQ61gU Q==;
X-CSE-ConnectionGUID: f41LDD68Sayjmq/4Vg1xPA==
X-CSE-MsgGUID: OXafz8eGR52ERq4n/Y8Eyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58694322"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58694322"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:54:46 -0700
X-CSE-ConnectionGUID: CPl2NyLrTtyqt0oSW0+FVw==
X-CSE-MsgGUID: qSW3BIC/TOi2mL6HN9YpWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174434071"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:54:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:54:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 00:54:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.89) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qsOJpMg1gBMErFBZNRXC9FZEkTLPmS+eIYveZlK9X97aXuNd5IBUyzvhEbowaDnihwmflysjqghW6fL4BJ41NQAEkSC9WR3EW0E8llMLJH3AzQp5e22/IpcFCcN1zD99xDVrig2/d+kpkoQcCdz2tCwFdsDfXKdBfxFPWQ4TrBDlSlot0GAbtCDvlyPfL78h94MzGd+npW/frj3DOnZsuy5vknRyTZM0lXtzkM2Rrjo7m3KHv9gGfx0/JkyltAN1nqxPtfk0nZ1lNu2IAwcjNRxithot3LOCnbucrQKzxYncKtlbQ0kDuJTs5eYCH1mnpKS8JRPuFLLIKiF1TMzp8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w8hOjdXH7BrCOEbz0TuNiVfjzmocF9HV51STn1mElF4=;
 b=yrXiflttFxTHTkK9OQdvF/j7qo8P7dR4TbRJW3XriErbk61ffIu1kjptEWYRbVa89baw/x1UFXRSlrFX4XxiMiSL+HW+eaGeTVFGjL7Hfi7uKwddosVlOQqW756/dMeUJZiH1DisjbQcm7MHibmu9DGsGYNHg3Sdb26uUsqt4ylbsLMLPwELR8WI5gsAZyjZ7H4YUFyCgDEaJTzNAPtU4W0cGfnDCH7It2pdjiCKv7JMDXVk1rqBNYpK7i2d2SC4l7N5VLjJFtsgnsumFKOUKKoeO+J6DBTdYCh1DFf1WepXPG3amRMh9mBOtfcGryRwv6chCapPa5Y6whCX1jm+vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 07:54:34 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 07:54:34 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 4/4] drm/i915/alpm: Use actual lfps cycle and silence
 periods in wake time
Thread-Topic: [PATCH 4/4] drm/i915/alpm: Use actual lfps cycle and silence
 periods in wake time
Thread-Index: AQHcDCDvYef074SpyEqxz65/JCBtYrR3xPwQ
Date: Thu, 28 Aug 2025 07:54:34 +0000
Message-ID: <DS0PR11MB804973213F7EEFC7040E0DDEF93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
 <20250813070617.480793-5-jouni.hogander@intel.com>
In-Reply-To: <20250813070617.480793-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SA1PR11MB8253:EE_
x-ms-office365-filtering-correlation-id: 0baa0439-6804-44d9-fbd4-08dde60820c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?R083U1YxUGgyZEo2L0oyWG1tbUdSTVljMHpYWW0zL0lnOUdlbm4rbEVFQWdO?=
 =?utf-8?B?cG0rOGwxTUU1MG5oZUdYNTkzNkNVdWFFTmQxOE5QcEhrUG1DNTBxNUVraVpz?=
 =?utf-8?B?S0xKdFB1Yi9iMXduN3JxWlo2bXE3SGdVSkJheWt1cGNZY044WlRVQytnQzZI?=
 =?utf-8?B?cW5QVm84VmJaVlg3T0tRZEo1ZEttZXhVV2UwR0lZbGFwMElwSm1HRGl6d2d4?=
 =?utf-8?B?aFpvc2E4MGVUNHFpSHlXbUdHa3dXQzhyUTJyVmQ1NDVsKzhZNFVSY24vckVH?=
 =?utf-8?B?VVFkZmZpeHUzMzIzaS9TbC9SVXVGUzVUTmFBbTZ1UDBxZlhkOStITUVHSjhr?=
 =?utf-8?B?eUhBY2VUeDVEK21STlJtYjU4UkxVUHpCOUJKZmRGWlQ4bTl4MUpVR0NrSlNO?=
 =?utf-8?B?QnI5S2lxUndnV0xjTWl6aTNwdGhFWXd1QW8yc2h6K1R3VTlpZzJ3eis4K1F2?=
 =?utf-8?B?MG5FVURFN1NHZjFaN04rQ2N1MEhIR1V4T1dMcERmck4xOW45ZytKOEJlNXoy?=
 =?utf-8?B?Z2kwTzdJUG9RZTd4Z0xPL3g4ejhINXNwWldBM0I2ZlBQK0w3aFo1cVhIZXB2?=
 =?utf-8?B?UzVoQVA1UTJYZ0MzdmVDOHdUQ1ZWM2JHbGRRZ1RXQXlvVzNxaFhacnhyQmRS?=
 =?utf-8?B?UFNaZzRQN3JzNXpxMjgyWnZ1MlZhT3dlMmszRGM4cmJYNXpWU0ZwbVQ5OXJo?=
 =?utf-8?B?WEV3WUgrQzJYMk5pc0F1VGtvbWdvRUtZRkNQQWl3VE9LSUZ4M2VqZHorMm9G?=
 =?utf-8?B?dXZUTXJrQlZjWm03Yk0zTmNKUUdienNEeFhCUWlaTGRYZk84Sm90NVVJc1ZN?=
 =?utf-8?B?ZDVaV2V2TUs0VC9YMExzN3JuWEdCS0w0QUpJUzA2djMyRGNFR2pVS3l2TnRD?=
 =?utf-8?B?MW4zc3ZodWNPajMxVDNEejMxWVRkaDA1NUFMaEVZMEFsR3VreHVXYUxBSjlM?=
 =?utf-8?B?UGFHRW1iT0JEZjJtQ2w1RElFZFZHNnRTZzNJTFgzdW4xcTNoY0YxYXZiTkVL?=
 =?utf-8?B?djl3aXZVcXkyVFVpY1lWNys5V09KUldJVUJpWVNqNGZZVzFLQmZ6Z3V3bnFa?=
 =?utf-8?B?YXoweHpzdzRDVkxQeGF4MHlZU1F6b0tGVWdhZkJSNU5pT3F1NmZkc0xuSDYv?=
 =?utf-8?B?ZEw5ZzljNnR4S0lWdHVZNU5CR1NmcGJGZ0k2bHovc3Bjbm1HdTdMV2YzRU5F?=
 =?utf-8?B?QmYyMGRxeTJ3L09OeVBNVHNOdnNxQjM5aVhwdDlGK0paYm9HdEFZdTNYYWY3?=
 =?utf-8?B?dVdrc0hOL3NHR0duNHNpbHd3YmhkVHJ5SzcwRVRCOVVMZEh6Wm14Uk14NXdU?=
 =?utf-8?B?RDAzWDhpOG5qZHhMWTJ0NmFnUVhOcjZ0bHJreVpGZ2hRN1NMejRCZHFqM2Vs?=
 =?utf-8?B?NUluYWxBODJqQWFHd1oyekZpcW90aWRYc0pVWXRFbk1UMVQxWGFSYW9zMzF3?=
 =?utf-8?B?N3ZJVzlqYmticVZnNmxuR2s0dEhNMHgrTE5QTXduZnFNbURXZkdNTThXb2E0?=
 =?utf-8?B?VVBZemkvWUZiQ0hQdnhKUnJRU09UK2lFYlBPZVlaUDVPSnBNZEFMcnVJcGQy?=
 =?utf-8?B?b3pJM1hSRGphL0RIUHMvL3ZOR0w2SE1zWVBoZy9KSE1JYm9GRXlMRDdCVzZJ?=
 =?utf-8?B?WDF3Tk80YlNQNndFL1lYU0Ezd2dWMVkvZkRqN2Z5OFMzN3dwQW8vc0dxMmlv?=
 =?utf-8?B?emFOTDRFNDNMYjFqRm1iN202a3QyQURDbFQyNmhsQ3ZIS0NiZFJVcmlqNCsx?=
 =?utf-8?B?TWRqL1p3d2hqV2R2WDVtdE93NnhoYXBlSEdSQmhXbUZrdmowL2VmQlYveFZk?=
 =?utf-8?B?bUNubHRMUm1OZ1oxLzNBMXdOZHZpOHdkY1ZHV004d2hlQVUyQUJKY0Zkd25W?=
 =?utf-8?B?SERtNlFnSGtoN25qa2hSbTR0aWtOWWNzMFBaZVd6RExXTVpYSHE2ZGVlSUVi?=
 =?utf-8?B?endNVUErWmxRMnNUNUxiVlp3b2hya0dSRlVBVU5PWDU0WnpVVjVnQzhhUHhC?=
 =?utf-8?B?LzV6NDhGZm13PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGFMZzFoRll2U3QxQWp2ZWp2OVNZczM1TFlyQWVhSm1NeGwvSjhLOVR6OFRa?=
 =?utf-8?B?RDJsQm5iZHVsdVBibXlMZU5pUlhTc0Q0ODVxUnZWSUNmbER2YXNkbEFVaUpz?=
 =?utf-8?B?WHNENVBUVEM3cXlHMlIvKzR0ODFIUDZCdENkMmVsM3JyZ3VUdXV6STZqazd5?=
 =?utf-8?B?cUY0Y3ArY3VJRHRxUFlnWkFlUkFTU0J1aFB6RFM0UERBeFhPVnJYd3E2cEhP?=
 =?utf-8?B?SVNCUjJ3bC9KWEM4M2pWTVlYM3VQdUo5MDdPTFdlZXRLNkxWYWdLQmg0RkNM?=
 =?utf-8?B?Z08wU2dPTnBXbjZNb24xaEZBTFgrRHpielNOTyttSWZZUlcwOTlDZ0tsRTZ6?=
 =?utf-8?B?Um83K3FmRnN4NjVFM254amVMNG9wRmVEZHgraDBtMGNraTB4Z0pyS0FrbUM4?=
 =?utf-8?B?ZEJJVzNHaDVpaHM0dGVaeDYwanBBeTU2VVF6OWFnYmdIdVB6MGloMXZ6bFJj?=
 =?utf-8?B?Tzd5Q29xMDVtYlZkYlZmemJiRENUeUh1Nzk5T3FBZm8vLzVQR3BNSDVzMEp6?=
 =?utf-8?B?STAzWGFmRnh6RWNPWWtJWUxCRFZseFpPcEpPWWdxNHhhOUtEQ0YxVlUzU01X?=
 =?utf-8?B?bzZTZVo4Q0tIa21RMUNrcTBYQzFFMHNYWGM1MjZmdFU0UkR3ZENyRnJiWnNj?=
 =?utf-8?B?dVRnNXVoWW5kRXNRRmpJYW1BbHloZWpjSk9hZWRocVV5MTJ3c0M3dzd1bUFQ?=
 =?utf-8?B?N2lUZ0o2Y0ptays2VmNCVzdUcnUyMjQxVzJnUkpiVms5M3ZRc0NhNHk2Z3pQ?=
 =?utf-8?B?eXRrSlhudW5TNjhNSHVsOUNzYmM5eE52RUozNUUvQmJ4cmN6aklqZEZjU2Ro?=
 =?utf-8?B?eHdNNVBmQjRad0hUMGpFdGg2alNVb25TRkIzYjdGU2xablBHMUVxdVdKQ0tR?=
 =?utf-8?B?N1ZwTHFsRjh1Q3JXWFBUOE1OM0dPd1pCdmZkSnM3S29Edk1mTjlXK0Q2bElB?=
 =?utf-8?B?NTlyRkx4TmpHZE9BYmlDeXJyZnR4TjVIempuc3dUUVFucGttTUxFZi9Fcng3?=
 =?utf-8?B?blhVSHNEYVQ3V1lPcEY2SVZSV1pTdFE4VnpJNzdBL0F4emZBTVpiaHRyMkly?=
 =?utf-8?B?bGNKbWx3QUxLRkNNcm5BRlo2ZnlhMUUxcWxPdHd3bHpUMU4wVjVHb2I1eWda?=
 =?utf-8?B?OC9jSE42RE9YSzdGMXRzMEtCdTU1ZWhmVlBmZEw4NVlnajZOU0JFUkFpLzNE?=
 =?utf-8?B?MnVISEw1VG55OWRrNEc0RHZsK3lMa3M4aGN2SlFmZ081VFovUEtBR0JOZWY5?=
 =?utf-8?B?TWhlQlEvZ0VEV0JkbHJaeE1jVlFHd3ZhcWZuTVZGOGhiTkRsMFdIa3hJKzh6?=
 =?utf-8?B?dDl1UjBUSnRkQ2pySWhZWDhxOFBjUVVQQkZGMHdxWFlUb0VvS01IMk1LbnVh?=
 =?utf-8?B?bGtLZVh6dlRsYzdrcVNnWTVwNk4xY3pXZjNZMXlCbGZxSzJpbXo1LzVsbUNS?=
 =?utf-8?B?SmhubDlJeWlTVzNoajZxb3FtWEtjMXhqbSsrRWI3bnUrR2xhNzQ2UGZtZjVP?=
 =?utf-8?B?MWJyZExuVktFWFJXaWwzNnZodTNpUGtTK25sbzJVK05Bait3UDJ5c0JlL2ZP?=
 =?utf-8?B?K2dOR2tBVTcvUkZMeStvOUJFMG8yMkVjYzJaZjJCVnFrRFUzM3NtR0N6MXZy?=
 =?utf-8?B?a0hiaFdrWnBiR1lmYzFDTTRGTW9GZzFETmpWWnFaWlIxb1pURHU2aWNHYjFL?=
 =?utf-8?B?NGhsQ21SZkdHSkF6amNYeGdtdlJFQ2tLaE95NjVlbTJSUER6MSt4NTd0Nm5P?=
 =?utf-8?B?R3U1MzhPb2htYU82c0Npc25xZHloQzQ0QXZUNDFkOTBVTnNndmhJdEYxV2Nr?=
 =?utf-8?B?ZlVZSUZSUVVpOFprRXhQVWZnRCs5K2ViQllQZHFHQUwzUmNlRkd5Q1paZHVL?=
 =?utf-8?B?a2NVZDFqMmgvUVg0c0wrdnkzSFB6ajRPQ0k1aWxZMW5NYUdTL1ZOS0xXbS91?=
 =?utf-8?B?aXBjMVZsT080YUdNa1EzZ1ZrNSsvcm1seVNCRFVHV3pncWc4TGJKcDkxT21L?=
 =?utf-8?B?U29ROFNtZmVZZXlxUFpJZkhPaGQ2OU96UVE1SzhwY1BLS3EySGtDdjlkVU50?=
 =?utf-8?B?Q2l0MTI3cUs3UWE4c056RzlBK0FCNlV4SmNmcHZPV0c5WUdnVjREQks3aG4v?=
 =?utf-8?Q?ixyGmBiyfzEMuAVzqfk/z3vaF?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0baa0439-6804-44d9-fbd4-08dde60820c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 07:54:34.0197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RQX1SMOlWlTxg5enGIRhvPlHT7FTlQidi1tkZcz0Ia8WiAZl4dVhOMi5Syqq5MRotSbMTlZ3oBnAV5eCV4TGUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDEzLCAyMDI1IDEyOjM2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0vaTkxNS9hbHBtOiBVc2UgYWN0dWFsIGxm
cHMgY3ljbGUgYW5kIHNpbGVuY2UNCj4gcGVyaW9kcyBpbiB3YWtlIHRpbWUNCj4gDQo+IEN1cnJl
bnRseSB3ZSBhcmUgdXNpbmcgbWF4aW11bSBsZnBzIGN5Y2xlIGFuZCBzaWxlbmNlIHBlcmlvZCB0
aW1lcyB3aGVuDQo+IGNhbGN1bGF0aW5nIEFVWExlc3Mgd2FrZSB0aW1lLiBVc2UgYWN0dWFsIHZh
bHVlcyBpbnN0ZWFkLg0KDQpDb3VsZCBub3QgbG9jYXRlIG1pZCBvZiBtaW4tbWF4IGlzIHRoZSBh
Y3R1YWwgdmFsdWUgb3Igbm90LiBHb29kIHRvIGtub3cgdGhlIHJlZmVyZW5jZSBpZiBJIG1pc3Nl
ZCBpdC4NCkFzIHBlciBic3BlYyBzb2Z0d2FyZSBjYW4gdXNlIGFueSB2YWx1ZXMgYmV0d2VlbiBt
aW5pbXVtIGFuZCBtYXhpbXVtLCBzbyBtaWQgb2YgbWluLW1heCBtYXkgYmUgZ29vZC4NCiANCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KDQpUaGUgY29kZSBjaGFuZ2VzIExHVE0sDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5u
YSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDEyICsrKysrLS0tLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IGIyMTIzMzA1ZjEyOC4u
NGU4YWExNjdiOTdiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiBAQCAtMTE2LDIxICsxMTYsMTkgQEAgc3RhdGljIGludCBnZXRfbGZwc19oYWxm
X2N5Y2xlX2Nsb2Nrcyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gICAqIHRNTF9QSFlfTE9DSyA9IFRQUzQgTGVuZ3RoICogKCAxMCAvIChMaW5rIFJhdGUg
aW4gTUh6KSApDQo+ICAgKiBUUFM0IExlbmd0aCA9IDI1MiBTeW1ib2xzDQo+ICAgKi8NCj4gLXN0
YXRpYyBpbnQgX2xubF9jb21wdXRlX2F1eF9sZXNzX3dha2VfdGltZShpbnQgcG9ydF9jbG9jaykN
Cj4gK3N0YXRpYyBpbnQgX2xubF9jb21wdXRlX2F1eF9sZXNzX3dha2VfdGltZShjb25zdCBzdHJ1
Y3QNCj4gK2ludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJaW50IHRwaHky
X3AyX3RvX3AwID0gMTIgKiAxMDAwOw0KPiAtCWludCB0bGZwc19wZXJpb2RfbWF4ID0gODAwOw0K
PiAtCWludCB0c2lsZW5jZV9tYXggPSAxODA7DQo+ICAJaW50IHQxID0gNTAgKiAxMDAwOw0KPiAg
CWludCB0cHM0ID0gMjUyOw0KPiAgCS8qIHBvcnRfY2xvY2sgaXMgbGluayByYXRlIGluIDEwa2Jp
dC9zIHVuaXRzICovDQo+IC0JaW50IHRtbF9waHlfbG9jayA9IDEwMDAgKiAxMDAwICogdHBzNCAv
IHBvcnRfY2xvY2s7DQo+ICsJaW50IHRtbF9waHlfbG9jayA9IDEwMDAgKiAxMDAwICogdHBzNCAv
IGNydGNfc3RhdGUtPnBvcnRfY2xvY2s7DQo+ICAJaW50IG51bV9tbF9waHlfbG9jayA9IDcgKyBE
SVZfUk9VTkRfVVAoNjUwMCwgdG1sX3BoeV9sb2NrKSArIDE7DQo+ICAJaW50IHQyID0gbnVtX21s
X3BoeV9sb2NrICogdG1sX3BoeV9sb2NrOw0KPiAgCWludCB0Y2RzID0gMSAqIHQyOw0KPiANCj4g
LQlyZXR1cm4gRElWX1JPVU5EX1VQKHRwaHkyX3AyX3RvX3AwICsgdGxmcHNfcGVyaW9kX21heCAr
DQo+IHRzaWxlbmNlX21heCArDQo+IC0JCQkgICAgdDEgKyB0Y2RzLCAxMDAwKTsNCj4gKwlyZXR1
cm4gRElWX1JPVU5EX1VQKHRwaHkyX3AyX3RvX3AwICsNCj4gZ2V0X2xmcHNfY3ljbGVfdGltZShj
cnRjX3N0YXRlKSArDQo+ICsJCQkgICAgU0lMRU5DRV9QRVJJT0RfVElNRSArIHQxICsgdGNkcywg
MTAwMCk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGludA0KPiBAQCAtMTQyLDcgKzE0MCw3IEBAIF9s
bmxfY29tcHV0ZV9hdXhfbGVzc19hbHBtX3BhcmFtcyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVs
X2RwLA0KPiAgCQlsZnBzX2hhbGZfY3ljbGU7DQo+IA0KPiAgCWF1eF9sZXNzX3dha2VfdGltZSA9
DQo+IC0JCV9sbmxfY29tcHV0ZV9hdXhfbGVzc193YWtlX3RpbWUoY3J0Y19zdGF0ZS0+cG9ydF9j
bG9jayk7DQo+ICsJCV9sbmxfY29tcHV0ZV9hdXhfbGVzc193YWtlX3RpbWUoY3J0Y19zdGF0ZSk7
DQo+ICAJYXV4X2xlc3Nfd2FrZV9saW5lcyA9IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0
Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGUsDQo+ICAJCQkJCQkgICAgICAgYXV4X2xlc3Nf
d2FrZV90aW1lKTsNCj4gIAlzaWxlbmNlX3BlcmlvZCA9IGdldF9zaWxlbmNlX3BlcmlvZF9zeW1i
b2xzKGNydGNfc3RhdGUpOw0KPiAtLQ0KPiAyLjQzLjANCg0K
