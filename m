Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5669D2E44
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 19:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F5F10E36A;
	Tue, 19 Nov 2024 18:46:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ws8sw8SE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F175010E36A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 18:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732041995; x=1763577995;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2fTOO0Q8Jss4T+y2wkqWT7kqmS+NdY5XRlwCh9Dw/2o=;
 b=Ws8sw8SE6cs4gWBZ9MEgN6+Tx36ON/osky65JCRBin0Tmh8gJOfpJapE
 SZBoS755j6EylYGlq5bcgzFiaLFYD3bM8M52C2f5czcUmRL6h2q+kS+XK
 rlmyXsO2CoFrx6dAjUvJzr3XuymwTnejvRL/WoeRUvfNBz3GtsqedUM7R
 /bnYTB6vS7PZbG5HUB/+aTqaZD8TbyHhIcd0SfqL/x01XnQpAsX38H5uu
 wWaXEUaSP5ipeU7FWJ+EB+WZSu9msm+mOuLrQ72MJAFBFS0ePFhDP1HWB
 j322e9n1cw8DBDNYxJs5fy8JB7U+/oVbhpXLbaG3TUt2P7UzfSm+vsrww Q==;
X-CSE-ConnectionGUID: NDT/WqojRe+gr2gESyWR3w==
X-CSE-MsgGUID: KqaNx8aaTza6/lE+wRLy/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31813772"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="31813772"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 10:46:35 -0800
X-CSE-ConnectionGUID: LJ4DTCS5TkKXHCakCwfVdg==
X-CSE-MsgGUID: nfKZhN2dQfmfjeL0cFYzLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="90041375"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 10:46:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 10:46:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 10:46:34 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 10:46:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wn/kykChGB85o4G4s0R0/YtupZqiqahaBBa0Ks0UZ2bazHlptvlTlHl8a6n1D/te0PYzA908Y+DhpxxVlWD0wijm/7evfxCj+z7TW395akIVWqMLyB9ebJfum2dlQeJ3ZxAHMUVKCgu+XsjDd4N1QIdUXTvENzHO29CTMy8xbcoA3rmw+lYB8nkeVFXierTiT6jg7XPQUk0KXDYB+VdYY7uoiYmo/cvxl+QrEfIuoCNkvfuCnVC6eegQvKfg+ztgYKjik/1L5KwBvoiI39AlGQef8Tp2RSvzVqHB1ZZoav+a/lA9BGaCVcLQtcwnPjW0dnzsb/u/eCSHJwmQovsl0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iIoSpul0Pve074979eWBNJb3rnMLNwxcvoNH15GE6gE=;
 b=mH1DHIAyp8qOpl2dNOEJxeBhk479JN8SMeN8h7CJc3Mz95p40/iNjzL0rsL13dJsTfYYeCxYFNE4NI5Pbz0OfqH3BejYIcnMHmb/3o5lfxlBP1YlQmsqtoj+0fTsx8BwjC/yZ2WLiLk0lQlcLS8LaCSV1NgS9klnFWY8JWdSeFC/lysCopZKa6PMUREKW2hTFPp1/LNMTahOKp/eT2aHgw8p1osSAgtjAOKm1Y4PLKMDHSwNT8syDCNioj4G03m/0dzZIKLWOYkiHnNRLMrbuiryKyaT8/NGd9v7+K7Hr21DvN4j2XNQsnP12ABg4AggtHx9MNUzSActAptYB4x6mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Tue, 19 Nov
 2024 18:46:30 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%4]) with mapi id 15.20.8158.021; Tue, 19 Nov 2024
 18:46:30 +0000
Date: Tue, 19 Nov 2024 10:46:23 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVA==?= =?utf-8?Q?=3A?= failure for Fix
 some races/bugs in GuC engine busyness
Message-ID: <Zzzc/7/FKb/r0I79@orsosgc001>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <173197578749.107654.17859540795040720891@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173197578749.107654.17859540795040720891@b555e5b46a47>
X-ClientProxiedBy: MW4PR04CA0172.namprd04.prod.outlook.com
 (2603:10b6:303:85::27) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: 00603022-36f3-4474-b94f-08dd08ca7b5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkVRTEVIMzBWMExINTBQU2N1MGJxSmFVL0JRTWg0WlNQRU1IbzdiYzgrM2sv?=
 =?utf-8?B?STc0SUdVb2t6SFM2MDcyZGdnM2JFek1ZSkJHTW5GR1BEdkw0M1dUWUxHOTN3?=
 =?utf-8?B?Y0lnZzJxNWFUY0ZvbHFkaW55bW9ZU2Rxa0FzR2xzSTM5dW1xVGRjSGY5RlFx?=
 =?utf-8?B?Q05CQm5lbzlvMmFmc0Jucm5HWXVCbFdCK3liS0p5czRPYnhFOWM5dUFOWDNt?=
 =?utf-8?B?R1Y0YjdCMDJsSWVDRXdtSlpoMzJ0c3BPa0hnc1VGakE1MUtUVjNmcnFqSG9a?=
 =?utf-8?B?R09UMXBxVVVKTyt5QWo2RUloMCt4R3JQOHVZVWhRVFBCa21Belk2b01Vb0NH?=
 =?utf-8?B?aUw4bmMrYlJKNDBFdWwvcFA4VytWNDg0RWZGbzg5VHBNdDRlbEg2ejJKajF5?=
 =?utf-8?B?UzVuemMzbkt5RkVKUUZUUExWZUtIY21DbmsyT083ZTE5MEtlQVBmQmxPMFhL?=
 =?utf-8?B?dDhmTHczL2VmYnJXcTU1VWpvbU1XUWdFRFkxTUNrQlQ1R2duZGhlVlg5TVRT?=
 =?utf-8?B?djQ5QVZTSE01ejhMV3dQNjUvVDRydFpnLzNhNC9vU3JIKzVmSDBHQ2dCVy91?=
 =?utf-8?B?OGhQckRVOFVkaWZPdE9zajdvRVZITzJrVlVHRk9DZkQrMlV3bFRRRlRlSlhS?=
 =?utf-8?B?WFAyRDY2LzE5NzJIOXdDdVhQZXhwQ3U2dzVzOXRTWm1KSDNHclVGcVlNY2JX?=
 =?utf-8?B?L2ZsejQ3cUs2Y0xQbVRSMjBBd1QrY1ljd3I2dGh2akxobnA1Sms1M3c4Vjl2?=
 =?utf-8?B?L2JnckNOSjcwSTM0c1RVUGErVXVWdmo5bCtFODh6U2taM1F4eWdoYlg5dGZ5?=
 =?utf-8?B?RTBsS1BLdEs1eFA4ako1K3JaQTl3WGJVK1dPOTdDcHBzUXdMdWk4MEtKLzZG?=
 =?utf-8?B?SkFNZVJSV0JSb1VLb1BsalFxZkU3Uk9MbjUxUHdkWG5HbkwwaWYwWHpmSHdm?=
 =?utf-8?B?QzdtWm4rQ3lCQ3BmTC90U3QyY1dOTmhUaUUzU05xOEVidTR2MGVjam5xYVNm?=
 =?utf-8?B?R3dWUDVJZ2ZCdXl4b2xTMGlpM2w2bFd5MzJzeGdZN3FpWlpPR3dhR1pJNEtN?=
 =?utf-8?B?c3F5Z0VhRkFXczYrZEx5TXExQWtJc211NUJSSmJsMWIwZEZkaTd6S01Va3BD?=
 =?utf-8?B?VEpENlJidHc1NHRGWHowd2RmNzFMTi9qZ0ltTzgvWXkrRXFZNnJZaUR4QlBv?=
 =?utf-8?B?WGpITTBKWkZEaXRlbytzWXdSVlFlRW5CdjVlaUpzYTdYcUhMODE2NzZUaCs0?=
 =?utf-8?B?ME1weVVXNFRHQ3VkVnlObXkyTnVZbS93VjExQjExZ21vNWZLS2dDZ2xTaUhW?=
 =?utf-8?B?cWlmMm9PdWlxZ2ZHL25XU2U4UDdrWkdKZTMvNytpYTVrNFlROHorU3hhdGdl?=
 =?utf-8?B?TUhlMmdtTFdxYkdLOGJMZnByalVJY0lWSTNOcHVGaHliSGJnMi9TRXRwYmkv?=
 =?utf-8?B?ak1tdVRhUE9kTUN2L2pPb2p1azl0bmo1NUtLZ0U4a0dna1F1RnJIM1Y4ZlAr?=
 =?utf-8?B?NVJOc1ZYQTBZaklhU2k0Nk9OMHVIdlMrY2Y3ejlkaTNnclBFRXFWYmNJZE1h?=
 =?utf-8?B?eWNpTmJUU2JGdkNZb3Fwdkt1TkhYZ1NzM2h0MDIvMnNkMjkrV1p3dFJyWk13?=
 =?utf-8?B?bmc1NHlSWjJrNTl5eGdiU3g2aXdKSVYrNzZFb2VuanNNN3MzdHBUQ0tROWxJ?=
 =?utf-8?Q?phHsuHNwWzjM071WESF7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnF4SDlTYzA1OUNONmJYWWZ2cEZabnFaWFkxQ0w0UTU0VStkWmtuSmZDczk5?=
 =?utf-8?B?RmhvWEV3TG50THZMTjNYbmlMUTdKbzBFaW4wZ1E3bGJuclFYNnptem5kNjN2?=
 =?utf-8?B?SVpTeWRkSE9PSFVWMEVvTU9BUHdMaC9vcENoMXc5ckhHUXNNamFqSzV1V3ls?=
 =?utf-8?B?MVRNWW9MTEgzeXZ0VzlFSUdZTWZBcWRUYmU5OGlWWS96d1YyYVVDRnlId0Jj?=
 =?utf-8?B?bTBlaERpS0VpWC9mR0NVNkN3NFl3ejJ1aDA2dVNkbFcwME13TFZ2ZmhrYTgy?=
 =?utf-8?B?S2FyOTk1Y1RsZmpHdWFUcWJTZWY4OEMvSTNlcUVUOEt1eHA1M1gxc09UMUVU?=
 =?utf-8?B?T3dkUTIyUnA5VDZJeFFtYThlSkRVMWlQWG43eFVTUlpoZ0MwaWFDdVlpMW0z?=
 =?utf-8?B?OWFhTmc5Y2xSa3B4YWlIdTlNRkxaM0ZVSklYQzlnUU1WNWtKVEtXR0kvNXNs?=
 =?utf-8?B?Z2pLZ3BEMThCaFYwSE01QnlmK3BBWHZKQ3JxRDRwNWhxOEtBVFVlME1ncjA1?=
 =?utf-8?B?MDJtVFRjOFBCR1hTZ0FXUWNINVQ0QVVCdUVZWGRJalRFeURHaWIvTTA4VWI0?=
 =?utf-8?B?Y3lSZWpmU0lDTEtmM09tbmxOR2ZaQXFSdUFtSG1GZzFCUHYzYjVETEQ2OHdk?=
 =?utf-8?B?bWtKdHJPd0hkcW0vZ2JBSngvSEFYY2VqK3lrWWkrdlhpdEJ3NkZsTkxLTUpy?=
 =?utf-8?B?WHRrdGNjd1pZT2l5QWVPRWQ3T2ExNTEyTXc3elJCZ1JOeWFHajBPb3pVYitI?=
 =?utf-8?B?NUxMQ09CK1MzT004Y2xCV1RHZytKYjM4eENQVXVSMTluZHNUcmw5OXBiT0JT?=
 =?utf-8?B?SjYrWEtTbDVuMHhsamZxRmJhL3pPcEFVY3VJT1NzSjdDdnNpT3J3UmFTR0xm?=
 =?utf-8?B?Q0trMmtOWFMyVU9YOUVRek9teGpZV0h2V0xnTDdvRTErTzNVakJjUzRKQ3BU?=
 =?utf-8?B?U3pVSXkxUDlGSm9JNFBFVG8yNnkxQTJTUU12ZTE0a245VVRGSW9DWDRmV1dU?=
 =?utf-8?B?ZXpOV3dRNjdhdGh4RmFaVzVUMnhxZlV3dXdzSFdlaS9SSTlBbkUxclBNd1pm?=
 =?utf-8?B?bllNdmxCdkszY2ZMeC9hWCtXY1lLbmo1bFJzNWsrd1dON1dSb21obkxvYnhh?=
 =?utf-8?B?N1YydDh4cVBxZFg2K0FWTUgwUGM3elRvVHcvRmJYalp1WHV3U1ppejEySmwy?=
 =?utf-8?B?a0ZXZSsvV2NaNEFQMlVxcU9iVzVKTk50SFVkYTM1VUczeHBXN0IwOGx6MEFu?=
 =?utf-8?B?UTlTRFJZc1M1cVBzRlBDbStLSGg4UERPRnJISE1ha2I0VVBzZHJJRXBnSVVv?=
 =?utf-8?B?YWNvTjd1RUtneE5vdnZtU25jNXJWRXc4bStETUF2TENHQlFMTitrdzhSUlZr?=
 =?utf-8?B?WFRkaXNxTnZqbzFxUGJMS0tSbStFM2lLL3ZmOWJUMUUzbVdEcFQrYmtKaDB0?=
 =?utf-8?B?QUxna0RTNERHWWovK1E0UnloTGxwdE5tNTJnekdYUEUwRzhrTkE0MTMwaXdC?=
 =?utf-8?B?b3ZUd2JHamVDWFVpYkRidld5Y2tBWUh0a3YwOHZPaWpTSjZLcXhMaUtkdmNI?=
 =?utf-8?B?eWlWTzVsQ2pRYkVnTUluMlNuYUhMOEhia2FJUGlZNlc1dFNEM1dzT3dFOUtr?=
 =?utf-8?B?Qjdheno0dVZoQWhvRks1aitmZ1ZPSlp4Y1greTg1TEZ4ZU5mTE10SWU5Q1Zh?=
 =?utf-8?B?QVYweTJYbUx1c3A1T1dkNi9nb0VtQUZqR2pxU0hHQzNHbkdiTFlTekxTcDlr?=
 =?utf-8?B?MGFIQm5SWDQxQy95N3hwWWVCbURESDliQ1BpNnBieTU4ZWxZV05YR0Nha1kv?=
 =?utf-8?B?VVQvK3NCYkRwS05uVHFGSlA2d1IwK1FDZVUyb2M5UFZaK25vdFp5WldQbzNX?=
 =?utf-8?B?enhsbHdZNG5Dc1VQS2FPT29LS0E1dlhvUHpQbVAwWlNzWFErLzZzK1hDK2pv?=
 =?utf-8?B?SzBDYXlxL1M5VlpucXNqZE1tVjd2RlN2QzB6TnBVbHlMOUxzd1haelBtS0xo?=
 =?utf-8?B?WjhaQ1NqVVZmVk9GdXFWNjR1dTBTd2g5OFhaNTh0MFpLQmZUS214WWhySi80?=
 =?utf-8?B?ZWhMZkI5aXNuYXlnV24waUFNNE5tTjlTZzE5TldVT0lWTWNRcUlFV2pjNU1v?=
 =?utf-8?B?c2lOZXFoVG9tWUoyRGFUQXYrTXE4Z2ZBRnlIWlJHc0dVVWVlbmZPS0syekt5?=
 =?utf-8?Q?QCgMmv/8PsbPfGTWP3LdCAA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00603022-36f3-4474-b94f-08dd08ca7b5c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 18:46:30.4915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: niwBqqZiYwNJbJqYJOwJ2WUxefb1QSsk6u1FfacNjueOTB1EOIT6UvfrKr5XzM2Ph2z3VkDmoyMT7DBy86hoivd0tQUWD82QrZWUq2gp5Xw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
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

On Tue, Nov 19, 2024 at 12:23:07AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Fix some races/bugs in GuC engine busyness
>URL:     [1]https://patchwork.freedesktop.org/series/141522/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141522v1/index.html
>
>          CI Bug Log - changes from CI_DRM_15717 -> Patchwork_141522v1
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_141522v1 absolutely need to
>   be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141522v1, please notify your bug team
>   (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141522v1/index.html
>
>Participating hosts (46 -> 45)
>
>   Missing (1): fi-snb-2520m
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_141522v1:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@i915_pm_rpm@module-reload:
>
>          * bat-dg2-11: [3]PASS -> [4]FAIL
>          * bat-adls-6: [5]PASS -> [6]FAIL
>
>     * igt@i915_selftest@live:
>
>          * bat-adlm-1: [7]PASS -> [8]INCOMPLETE
>
>     * igt@i915_selftest@live@workarounds:
>
>          * bat-mtlp-6: [9]PASS -> [10]ABORT
>
>     * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2:
>
>          * fi-cfl-8109u: [11]PASS -> [12]DMESG-WARN +2 other tests
>            dmesg-warn

These are unrelated to fixes in this series and passing locally with the 
patches.  Queueing a rerun.

Umesh

>
>Known issues
>
