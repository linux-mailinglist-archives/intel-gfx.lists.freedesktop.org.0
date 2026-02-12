Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 37MaGKxTjWlz1AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:14:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F1212A47E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE7610E6D2;
	Thu, 12 Feb 2026 04:14:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZbyT4r4J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A9910E152;
 Thu, 12 Feb 2026 04:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770869671; x=1802405671;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sOOJbFTlnUqN5b3mV9vJ4W3CFSQ9Wx63F1JVcpLihgg=;
 b=ZbyT4r4J2cTHTaI/UIKyUjaoG+B13eaQIKQNXa9OdSCRTRYRhv+/W1UU
 fRpK53sbGD1nyqFSAomp5jTyOOmr3PufklqELhd7JpAn6y8Yii7JY22lv
 vMeyaymRgPeP9YeNDai/NEtCUtq8AdldulhPrIXj+hq3lE+/Lg+g8SpoF
 BbpZqr/HAaGk+Nx0EFCK0SljkCI2x3tNqJugVyQ9xqqg6diWQda12OG+M
 YmV2Qem3YhhX0aBL50Vr3YrvJNmbGQbYFOykPVe7vjW6gWMuctBNoUlo6
 qnfF3B5LqrBUUDpMBmDJb8UnHcRR1JGarUoIxUuXVUpCtE2OBJWIRSvbx g==;
X-CSE-ConnectionGUID: 1nv6RemkRpO9/fJH4obqkA==
X-CSE-MsgGUID: NG1GibWHTseQX7uO9to3Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="82360340"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="82360340"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:14:31 -0800
X-CSE-ConnectionGUID: atoozDxTQD6Cf6OYBb7EDg==
X-CSE-MsgGUID: rZ5+GZZuQnKXk4azedkTUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="211756012"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:14:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 20:14:29 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 20:14:29 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 20:14:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QFywubIzX5smIqzspyzg1CuMMFs3uvKapMnd/CDi+Oq6xkw8YVNKlQ3iGccEe3ItpPasS9AlzdX6uTwIDqPedeJjYa8Zjhf5aqR6zjJFoayBdnoRCsvO+eSkPM/0sajyL1Y6NylHKyelU5FNJNBiGXaGi2Lkq94l7IumOY8nccxRdLREC6KeJPqaJWdOUidzcoZKc00cYIC58Yql31pQkMy66ZUoZXlWx8Mu5W/0W8iEJd62ly0dT3ySBuD114ajV9ZcU2oYOlB7/D8l79RYVN7sxq2NmMBJ8V6rkwPx73b3QTk24rKPOlKmJooOMgBGkoSAIBhIdzpJCwzw4oyhhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hLXlylJ5ohiRy0QiYHi7c91L95wvrO9OUPCl/F3umfo=;
 b=KTJgPmMazf4G+qbULv9pW3xnoDVN5Bhvmj2r8oycziU+miBPkWkH8lTHdXYAhRaMsAb8czHgbmsRK5NY2sRJjVkLKfWz998rdhS8POMxithtQIvuj942ZLGYsTRhcZxByO8s0oXvZX25IfBqORIPEOs/wshy9R1Cd3bfpUuuz1iKP3EHG8CVvrGl/ZYm9DfAJaj667u5YohqmKRagerPL2600aAAbLc8NTtfno15dbpAbO7x3CxtFZPztQb5EmLAnO1oZCmXL4Fc5CJNE+i6cWSwVj182hXcCWiCL+Nb+mXRcsA2BUaJioBi6fy2CZ0W1cs/EbtEiK/+Oau44rzrig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SAWPR11MB9546.namprd11.prod.outlook.com (2603:10b6:806:4e4::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 04:14:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 12 Feb 2026
 04:14:22 +0000
Message-ID: <c25c9c1b-636a-4fd7-8494-807cd9d40ecf@intel.com>
Date: Thu, 12 Feb 2026 09:44:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
 <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
 <aYy4grqce26G5sw0@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYy4grqce26G5sw0@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0023.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SAWPR11MB9546:EE_
X-MS-Office365-Filtering-Correlation-Id: 22bdf76f-5aa6-4db5-80f1-08de69ed337c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dTlkUWZIdFMzUE1UWTkzUFJNcVRENlF6bFZSRldwbG5yZld6UzUvK1lCN2N3?=
 =?utf-8?B?SDcrVUFnOEZzM3B6QmhmakhVYUNjNXpYbDErcmp2Zzh5TEVFTkNSMDV0L2ti?=
 =?utf-8?B?aGd2WG9YbkNJeGpqbDc2RTRmTE9sWnQwQncvNzVHWG5BbFZZWlhyT3VuY3dw?=
 =?utf-8?B?L21EQVFWMnNuUjdYMnVjVzZGSFZxSitxMm54RERFOUp2dFRUdzIyVGdSTy9p?=
 =?utf-8?B?K2RFWmJKSHhKQkxxMTQyVDAyZTZ1Tzllb1JMVXNhVTdzVlRzamdTZFVNSmU4?=
 =?utf-8?B?VW03SWdaYmtOWGZaRXFhb0ZsZnpSVm12Q2Q4WUN5SWkwOFA5ZDVORXRRd0h2?=
 =?utf-8?B?Qjc4a0pzSWczTjVWNEdXUVZyZjU2SktVMzNNcGlnbUNBQXRUWVVuaFUrVkJz?=
 =?utf-8?B?Mm1zVlNXeVRmaWx4blgzYTJSQ1ZNMG9HcWlpa0hVNWFTajFxWFkxRmlXeWhP?=
 =?utf-8?B?TEtiK2R6UTgzN3NHZ0VPTDdtZUtXa0tkRVlKVHlLTlBMYzZjUFRKSkNlY2xJ?=
 =?utf-8?B?ZWhCMEw2cVlFTUJvd2lQc3ZwU056aWFudG5tdks1WFNCYkY0Q2hBa2Fybko4?=
 =?utf-8?B?TXQvcHlNWXVNRE1ld05KTDd4bm83OUJYSUxhek53NXc3UlQvZ3ZVWXNkWUlU?=
 =?utf-8?B?TnZ1OENJK1orQmZKbDluVHJRMkRyQ3c0eFRNbWgyZnhWckhpYVJDVkt0TWRY?=
 =?utf-8?B?TDgxLzMwdmNVbnB5a0V3Yy9idGRYRjN5cno1ZVRMT0V4czJLSUdXU25JNHZF?=
 =?utf-8?B?cmR0S1NxUkgvRWl1ZzFtTlJzeWxIVFpEdXA3VG92dkFTdzJZNGp0cnJmOTVV?=
 =?utf-8?B?M2lOd0NIVHZYWWFweDRnbFFRdXBmczNyT3pDSUF6TVl5MVRaajROSXdyWXlP?=
 =?utf-8?B?WHBsNjVMTDg2VU5pNzRzTkJJeGFSMi90YlZGVWg2VGszallvZEYyaUtPd1M5?=
 =?utf-8?B?YkN2bGRPd2c2YTI0WDUxUXVPbGRibWhtMGxBNVY5cVh0Q2FEMXo5K3JuU21I?=
 =?utf-8?B?dEFjdkxVRitDaXlGQ0dYZG1RTC9URHJPUENiaVk3aFVwY3FQRUpwT1c4UTlE?=
 =?utf-8?B?WnpYRW1SbUNCMnY2N0ttMDJjWTBDcXpYSDdESCtodmQrOUFIZENGMGVaSGp4?=
 =?utf-8?B?YWE5bnMreXNjNzNhazd6T2hiVFFDTVA3cEkwK1d3TGVqTmMzVnlreWZES2tj?=
 =?utf-8?B?ZUoza1NvV0tGTmQ5cTBSRXFyTWpHcjhRT3g4MFhCNVIzUHlXZzQ4V2NzQVh2?=
 =?utf-8?B?bDBtS3BGUE1sZ2xnamd5RURZZU5Ha0pNdWlHMTlyUjhUdU1GTVY4elFDWWlD?=
 =?utf-8?B?eHNhUmdwQ0YzeXpBZ0xWS0NpVVY1UmpkaWtGZ0c1cWFja2N5VWpMYXNyUmU3?=
 =?utf-8?B?bjJOSmZlWWVlcmd0TTAvY0NLOWpIRFRnSzBTSnFRYWozZE5XVWZsZkRzVmZK?=
 =?utf-8?B?c2E2UzlJUjg4cWRad0RZZGJOditBV05OeDNIS1dEa0hFc2hkV09obnE2bWdE?=
 =?utf-8?B?ekpkT1lEbEdNQ1FWb0l5N21NVDg0dlBNYjYyOUhwY3FkMXFtZ3Z6WGcwUldl?=
 =?utf-8?B?M2ZmMWlnczRWVHFiL2JTR2s4VUQ2UEZlUktZUnI1QU9KYlAyenp1cmNrcFJW?=
 =?utf-8?B?QlI5eityZjZyK0lTekpkSVl0Nk9kNURSa3pPMGs5bXh1UGdISTJTQWh3Q1pm?=
 =?utf-8?B?R0d3SXQxRk1qaVljUXhaRDZQZE9DZnEzbzBIbVNzc0hkRzNrZ253Y0hRSUNa?=
 =?utf-8?B?Vk5iN0k1OXFJUHpZTWZNdnMwcUlIYmtMSGh6STVLc3Y5by9iWGwybkp4amEz?=
 =?utf-8?B?WmtnVEcxM2tOMm40ekJsOVR1Zm53QWFJdlNvTDRMZ2N2RWtZYlhFd3ZOaTc0?=
 =?utf-8?B?TUNXdXNGWC9RemMrd0VqZ3ZhUXk5UlZlWlFHTHlGSFl3elNUUldqWDQwQkY0?=
 =?utf-8?B?Y0FHb2ViVTlyRWM1U0lVZVhxT0lYY2Uxc0d5b3hIYjNkbDhIVjdVMjMrUTky?=
 =?utf-8?B?aHRHYUg1UWszc1I5K1J2Q2ROZm4xcElhdXI1TlhSTUR3ak5VLzNlaC9JMWg3?=
 =?utf-8?B?VFZNY2lkTjJqZU1McUt5cFNzc2RsNnhVSUtRNzRQUkk5WWdvYWRjaUFBNTJQ?=
 =?utf-8?Q?6iVs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFVLMWdvaGJkZm83SGRLWkZhZ05BNDFsL0k3MG5oK25sTTlzVSswWlFyaWl4?=
 =?utf-8?B?Y3NnamdicVBqREtQSmlsK3ByMjk0M1p6WGFFZ040TzAxNDU5VG5BY2dWc1Fw?=
 =?utf-8?B?cDJHd0s4d0xnMWRDQzRldHF1UkFLL3VrUkdISlNUSTB2Tk1YaEMvaDRqWXRP?=
 =?utf-8?B?WVVVdi9RaDhVZlM5M3ZONUplQjVEbEZucEVlSFU0VHozSVZvOEJUTklKeVY4?=
 =?utf-8?B?SFNsVGJHOWdZQ2lnSUkxOGZYQkZsOEdhUlVXR25ISGVhbnNoeGt0VFhZYkR4?=
 =?utf-8?B?S2Q5alNXUWlPdkIxaURObDFnMGQ3MC8vL1MwVUh5YUI2UDV1VWg1ckd4Z0o5?=
 =?utf-8?B?bnNDMkdWazQ5VjhYNm1rS0dEVVh3UHBLd1B0SXIxQkQ4NlJGS3lmV2JBeXJN?=
 =?utf-8?B?WTlMYWhwWmk5T3A3ZjRGdUlGSXd2TUpQRUhwM1JFY3ZtYTlVQ2MwcHQzNmRI?=
 =?utf-8?B?WWR3blBRbHBFc09uZFlqU0U0YmZGWFZiR1k3M2lUMWNEd295cGJxNnQ0VVI2?=
 =?utf-8?B?TmczK2FFN1hIQjFpYTFwNFYxSFB5RGlmUmgvMVpQR24vWGVZc0U2RnlnNWRk?=
 =?utf-8?B?R25YY3o5bk9LSkRKNUgxcWM4NXVvM3R6a09iMEhldCtXak0reXV4bHlZNVAy?=
 =?utf-8?B?aEgzRnJvMG90dEJpVjZEMjJMMk51VTY5TWtIemwvSkJTakxsU2tONzdnTitM?=
 =?utf-8?B?ekdDWHB1b0xIR3d1OVpTNVo4VEdiZGE0Zlc2Njd1eXhGcDFBSmZlU2ltVUtr?=
 =?utf-8?B?VTF3QzRicU9LbEhBMkJONkJwTW0zSENLcGlnbHh5TWZtbnNBZmd3NlNpQ2RF?=
 =?utf-8?B?RFJlUjUydTVUMWNBODlOZFIvREZrd1pJZlhnN0FwRHdVRnBUcTRhRDFXT1I3?=
 =?utf-8?B?aEJ1cmdXc2xsRGh4QUFKdkd4Q3lHbitpemhNazhKNS9PYnJGN09VYVBsbGRU?=
 =?utf-8?B?TmNqdEppSEpOaVZqMm42UjAwbzEzbmtBeVRseDB6VmtnbkxncDJ4OWkwVVVZ?=
 =?utf-8?B?TnlwTGdtenp3MjljcG5OK045Y0RwR1VvUml2SGZhejFSa2lkejFNc2lwYWpn?=
 =?utf-8?B?Q0NudWszQlRoNXhyOVlJaFN2TzNZdjBDYTZIRzljenZNRHNFZ3RjVTk4ZEQy?=
 =?utf-8?B?VGNCVHQrZHkyYnRJQ2hYd1R6Z3VubzdBMUdPeFY4dTF4eElxSkJnSHd1bm15?=
 =?utf-8?B?RDhNcE1QZXp3USt4SHFuU3NEcTcrc04raklqMEJDeE9tYUZ1SXpHSkUyZitZ?=
 =?utf-8?B?TmdwcmhLUnFyZ3A4cDRuMjNJQXNqeW90bGc5MTV5UU9hZkhlU2hhK3EwbTBi?=
 =?utf-8?B?YlFNYTVGb0Z5Z0NDbGdueHRhNU9ZQ0V3S1lPcWVPQksrSzkyanUvVGpLTXlo?=
 =?utf-8?B?Ui9ST1Nxc0VkMG9RYU0yWlcxWUN1M0pqT2xtOXFLNGdFalVxdkg5M0pFdEVT?=
 =?utf-8?B?dzZhSWIxa0pKVkdCbUViWWJvYlFTUExiSzVHSzBaWEJmWGtvdWhValRGdEE0?=
 =?utf-8?B?YlJNTVRua1gySVFUdmF0bU4vUzh6Y2hhaGdFTHlNekgyUThPcndlZFNYQWM5?=
 =?utf-8?B?b3Bzb0ZONjcxc25GdUVEUXlSQVhJK1hnK1FSRkJZbG0rWklEaFhYQ084NjZj?=
 =?utf-8?B?K0FxcXQzbnB2VjlOc3pmdFNjMkpzek1wL3o0NGRNazd4MCtJbnFRR2paYmtt?=
 =?utf-8?B?TUxVS2g5cFl3aGtDbDlSZUVnZWpZekJYQnZiQ3lhOHU2Y3hCZWp5b1JaZmpS?=
 =?utf-8?B?RzhaSm9pWGhDQU1lSExhNi84UmFkY1h5VHQ3MEhWWHR6QThZT0JXWUFNc1dJ?=
 =?utf-8?B?Y3FrR2ZmUVhOcUQxYURUeExsRitrRVgrZFFiQ1lmYWUzMkIyMVNjRTljTU9C?=
 =?utf-8?B?VGdMQmpxNzNrTVRmZVBmaWxvZ213WWVQK1Q2WkdSUEpDUlVMa2NxaWdFUlQ4?=
 =?utf-8?B?emdQT20yODNrUU5NY1N6bHk1ZEJHZmNIUHhnWlJnNU51YnZoTWJhQU03ZW53?=
 =?utf-8?B?WVJQN0Y4eDYxZ29aeDBxNzdQcXd4ejAxT1YzbFk4UXpjM0VwaWEyR2t2K1Rw?=
 =?utf-8?B?SEMzNUpVZ3kvanRuNEMxOFE1Y0x3RWpaT1VHMEN3ckZ1WHRxYUduMllhQmYy?=
 =?utf-8?B?bGVLZm5zY0l6eVNaVDVCSkF2VmZTVjZSaWZyanhoQnhhdGM1UHBLWkZtV3ov?=
 =?utf-8?B?enlZbk5zcHJaeWd6eFRzYzVvVDRvQ3BBa1dqekoxRHA2MC9vbzlhWjRpbHNN?=
 =?utf-8?B?ZmpaOGtDTys1bmN3S3BURExMZzQ0RjVyVGtGMzdNaHlVc3BuQlFZTk1tUWc4?=
 =?utf-8?B?cE1JL0hzT2RLN29FZmVIUFZ3QjIvYnR3cURpNTc5TDJmSG50YWZ0dW9jd3hT?=
 =?utf-8?Q?cEjjzjkOGvIdPB6Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22bdf76f-5aa6-4db5-80f1-08de69ed337c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 04:14:22.8374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t/9MXFqtY1YKZM/DDYd5fYnGE1WEbm3aqQViapB6CYujzbxmzuR3EhO3e2RzXAdjcfF6B6pEFxQAVKRdcWGS/M34AB6DnAx3KTHAzvdh6AM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9546
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 68F1212A47E
X-Rspamd-Action: no action


On 2/11/2026 10:42 PM, Imre Deak wrote:
> On Wed, Feb 11, 2026 at 09:36:55PM +0530, Nautiyal, Ankit K wrote:
>> On 2/11/2026 5:28 PM, Imre Deak wrote:
>>> The user's request for a maximum BPC - via the max-bpc connector
>>> property - determines the pipe BPP selected by the encoder, which is in
>>> turn used either as the uncompressed output BPP or as the input BPP for
>>> the DSC engine. This user-requested BPC->BPP can be outside of the
>>> source/sink's supported valid min/max pipe BPP range and atm such an
>>> out-of-bound request will be rejected by the encoder's state
>>> computation.
>>>
>>> As opposed to the above, the semantic for the max-bpc connector property
>>> - which the user may reasonably expect - is not to fail the modeset in
>>> case of an out-of-bound max BPC request, rather to adjust the request
>>> clamping it to the valid BPP range.
>>>
>>> Based on the above, calculate the baseline (i.e. the non-DP specific
>>> platform/EDID) _maximum_ pipe BPP, storing it in
>>> intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
>>> pipe BPP (which is the lower BPP of the baseline maximum and requested
>>> BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
>>> state computation to use the baseline maximum pipe BPP as a hard limit
>>> for the selected pipe BPP, while also letting it use the baseline target
>>> pipe BPP only as a preference, clamping this target BPP to the valid
>>> DP pipe BPP range.
>>>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
>>>    .../drm/i915/display/intel_display_types.h    |  1 +
>>>    drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
>>>    3 files changed, 35 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index ab4b59916d2e7..dae7a7d11cb84 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>    	struct drm_connector *connector = conn_state->connector;
>>>    	const struct drm_display_info *info = &connector->display_info;
>>> +	int edid_bpc = info->bpc ? : 8;
>>>    	int target_pipe_bpp;
>>> +	int max_edid_bpp;
>>> +
>>> +	max_edid_bpp = bpc_to_bpp(edid_bpc);
>>> +	if (max_edid_bpp < 0)
>>> +		return max_edid_bpp;
>>>    	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
>>>    	if (target_pipe_bpp < 0)
>>>    		return target_pipe_bpp;
>>> +	/*
>>> +	 * The maximum pipe BPP is the minimum of the max platform BPP and
>>> +	 * the max EDID BPP.
>>> +	 */
>>> +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
>> The function compute_sink_pipe_bpp() is actually just limiting the pipe_bpp
>> to sink max limits.
> It limits the platform maximum pipe BPP passed to the function via
> intel_crtc_state::pipe_bpp to the maximum EDID BPP _and_ the connector's
> requested max-bpc x 3.

Yes right thats true.


>
>> Instead of filling the crtc_state->max_pipe_bpp in this function itself, can
>> we have a separate function only to set the crtc_state->max_pipe_bpp from
>> the edid max:
>> compute_max_pipe_bpp(const struct drm_connector_state *conn_state,
>>                       struct intel_crtc_state *crtc_state)
>>
>> This can be called separately from compute_baseline_pipe_bpp:
>>
>> ret = compute_max_pipe_bpp(connector_state, crtc_state);
>> if (ret)
>>      return ret;
>>
>> ret = compute_sink_pipe_bpp(connector_state, crtc_state);
>> ...
>>
>> This way the compute_sink_pipe_bpp will only do one thing(adjusting the
>> pipe_bpp to sink limits).
>>
>> ˚oO(Perhaps we should name it to adjust_pipe_bpp_for_sink()).
> Not sure. It's also good to see in one place how the debug-printed
> max/target/edid BPPs are calculated.

Hmm yes indeed make sense.


>
> In any case compute_sink_pipe_bpp() did compute both the target and max
> BPPs implicitly even before, combining these to
> intel_crtc_state::pipe_bpp, and this patch didn't change that. If
> separate functions make more sense that should be a separate follow-up
> change imo.

You can ignore the comment. It seems better to have 
ctrc_state->max_pipe_bpp set and the relevant debug message in same 
place for now.


>
>>> +
>>>    	if (target_pipe_bpp < crtc_state->pipe_bpp) {
>>>    		drm_dbg_kms(display->drm,
>>>    			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index e6298279dc892..e8e4af03a6a6c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
>>>    	} dsi_pll;
>>>    	int max_link_bpp_x16;	/* in 1/16 bpp units */
>>> +	int max_pipe_bpp;	/* in 1 bpp units */
>>>    	int pipe_bpp;		/* in 1 bpp units */
>>>    	int min_hblank;
>>>    	struct intel_link_m_n dp_m_n;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 48845899298e4..4018b0122e8e0 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>>>    	struct intel_connector *connector = intel_dp->attached_connector;
>>>    	int bpp, bpc;
>>> -	bpc = crtc_state->pipe_bpp / 3;
>>> +	bpc = crtc_state->max_pipe_bpp / 3;
>>>    	if (intel_dp->dfp.max_bpc)
>>>    		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
>>> @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>>    		 * previously. This hack should be removed once we have the
>>>    		 * proper retry logic in place.
>>>    		 */
>>> -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
>>> +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
>>>    	} else {
>>>    		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
>>>    							respect_downstream_limits);
>>> @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>>    	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
>>>    		return false;
>>> +	/*
>>> +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
>>> +	 * maximum pipe BPP limited by the max-BPC connector property request.
>>> +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
>> Hmm I think I am missing something. Till now we have set pipe.max_bpp using
>> crtc_state->max_pipe_bpp.
> Yes and then also reducing pipe.max_bpp further by every other source
> and sink maximum BPP limits.
>
>> This is set using min of max platform Bpp and the max edid bpp (and DP dfp
>> considerations, DSC sink input bpp cap).
>>
>> So the relationship between pipe.max_bpp and the crtc_state->max_pipe_bpp is


sorry I meant about pipe.max_bpp and the baseline BPP i.e. 
crtc_state->pipe_bpp (not crtc_state->max_pip_bpp).


>> not yet clear.
> The relationship is:
>
> crtc_state->max_pipe_bpp = min(platform_max_bpp, sink_edid_max_bpp);
> limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp,
> 			   dfp_max_bpp, vbt_edp_max_bpp,
> 			   sink_dsc_input_max_bpp,
> 			   src_dsc_input_max_bpp,
> 			   mst_max_24bpp);
>
>> I do agree with the rest of the below: we need to clamp the
>> limits.pipe.max_bpp between crtc_state->pipe_bpp  and limit.pipe->min_bpp.
> crtc_state->pipe_bpp = min(crtc_state->max_pipe_bpp, requested_bpc * 3);

Sorry, I am unable to find this line.. perhaps you mean that we intend 
to make sure that crtc_state->pipe_bpp is in the range 
(crtc_state->max_pipe_bpp, requested_bpc * 3)?

OR, is there any place we are using crtc_state->max_pipe_bpp to set 
crtc_state->pipe_bpp, till this point?

So, I am still not getting the line:

"Since by now pipe.max_bpp is <= the above baseline BPP"


Regards,

Ankit


>
> and so
>
> limits->pipe.max_bpp should be set to crtc_state->pipe_bpp clamped
> between limits->pipe.min_bpp and limits->pipe.max_bpp.
>
>> Regards,
>>
>> Ankit
>>
>>> +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
>>> +	 * property request. Adjust pipe.max_bpp to this request within the
>>> +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
>>> +	 */
>>> +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
>>> +				     limits->pipe.max_bpp);
>>> +	if (dsc)
>>> +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
>>> +								    limits->pipe.max_bpp);
>>> +
>>> +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
>>> +		drm_dbg_kms(display->drm,
>>> +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
>>> +			    connector->base.base.id, connector->base.name,
>>> +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
>>> +
>>>    	if (is_mst || intel_dp->use_max_params) {
>>>    		/*
>>>    		 * For MST we always configure max link bw - the spec doesn't
