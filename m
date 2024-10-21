Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F379E9A68C4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EC110E4D6;
	Mon, 21 Oct 2024 12:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d6pSyXqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AFFF10E4D5;
 Mon, 21 Oct 2024 12:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729514498; x=1761050498;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=I3a+wXDlGv9PXY4MPKtj97KcKgPPFeeVCuF1/0UVmrk=;
 b=d6pSyXqufZtbbBZ5Se621AFSy12jL7zIKoQEl0cKr/MA+zSkI2qgQRcG
 0xRRLyBV4F0CslIjImppCGmALL1PQnFsYmXf3YFwKnmG0O3lzAO7WLdxc
 paoYNYB49d3JoAtVzrKvnRLHJSxdxSYU6BZoO330YzOhbuVj1zm46coRf
 MZrJV8UN8bLVUZfrn/D07BFKbXAucYLttaCRUvCOVAsWRboCNSyCWqiyo
 mNZK95uvQvg5qCMzwEV1OP2uJbUygN0QYPqJDGKlDt+JjQepe3keBM5Xj
 2XzExauGQ/KoOFBNPPP0MsuxDAC0GgbXEiS2QfGrghJFgKbe1g81JqONR w==;
X-CSE-ConnectionGUID: DwTC+eOhTdmYV4SmwFU24g==
X-CSE-MsgGUID: 9ZFoj0nvQze8QAAT5bx67Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46461180"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46461180"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:41:32 -0700
X-CSE-ConnectionGUID: CEPMVoOoRxy92gX1sEDbfQ==
X-CSE-MsgGUID: sono1AFwQ0OVZ8g4fxC13A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="84302124"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 05:41:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:41:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 05:41:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 05:41:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UOXsXMHL/YyUVqFu8IbzwaAkEiRtqMART6CQBJDka1zZCzPhp7i/sZLzU5lIFOZuDI1UarzeXii5NfnfGLv9iQxS6IE2/CfMMBSxWeESs5KfOBjX1natfwXuW/i9Orkswie/tejjO5qAwXoWjV6BWesBxOvA1b3c9z524Wfng+9u6aq9pjabiLP7DDS/KMl+xfsmaU1m9JyeiIjwpGCSq5vOfxC2BXqsBk1TM1R121x7XQWAvdxJk/dCvpSWvn92+XOEl+e74nNlHVUieT8oKOLwuLao05LDsTPSbV91DVX52VG8GH7feMPRWibUZAReV6HSbd6q4aREQufOG9oU6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/wxniVJ3E3uscP0Rk9KI8TpNma7NNAMzSBDN3FM2UEU=;
 b=ROAF3xqKKHGTRqzTvDlyBloqL8VqJHVWR8EEMWaO9XpIxPu9fKnspICbalCe6w3WqxLvsjAB2LV44Dmb5eoyjdYWHT1Vse7UvAyXKTW+0DBJd0d+jsNQXBlf28JXM/Uc7iXaW346hOIBW3vtmX8JwKiTyULewDJQhRvSmf54YZncFsgXC4X5Daka+nqreVtIHOQtZwGUzYHUQAoJNY6gpfYsS9qm+GI+3FPcc7gJykDQVGr2hbpp3wS33dWXeiMI44mz9xl0akC/t1oWhaKlkI80ToLX4y/t13M41ieMYPqTP3FqSwy/g6gbDg6boT7I1gE/vfNWhH31HFu98zHOAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5178.namprd11.prod.outlook.com (2603:10b6:806:fa::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 12:41:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 12:41:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241018200311.67324-2-matthew.s.atwood@intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-2-matthew.s.atwood@intel.com>
Subject: Re: [PATCH v4 1/7] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 21 Oct 2024 09:41:21 -0300
Message-ID: <172951448167.2472.7920506805226957676@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0137.namprd03.prod.outlook.com
 (2603:10b6:303:8c::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5178:EE_
X-MS-Office365-Filtering-Correlation-Id: 3107f499-c9bc-4894-fa31-08dcf1cdad6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGszc1BuVWhzZEpvSUhvajlmMXYyV3dBd0ZqcnBJUFZLa1JyaFBLNHBWZjAw?=
 =?utf-8?B?WVo3NnVLUVpTZndOT2RwR3dPbTZjSnUrYTR1RUc3djZROTZweU9kQllVdzNY?=
 =?utf-8?B?dkVYek1DR2VlT0J4Nys3MGtlb0VMSm10L0w4KzFkUW5ma3dJcGE2OGVZS2d3?=
 =?utf-8?B?QUlveTJKeVJucmo4TGFTMEVoeFo5T01NaGcrK0gzT2Y3RkRueVBXeXRwckEx?=
 =?utf-8?B?cTMwK214djhBQWg4T2xwZjlvWjlsMmNzb1VGL21FSWxYdmo5OXk5cWViTG02?=
 =?utf-8?B?M2Zoc0UrbEpuWmVLeWczYy9oa3V5WkxlMFBrTGt0ZmMxL2h6UGRuQ3UxUFlU?=
 =?utf-8?B?NnV2VXJnaE5CUWdyU1BaTWFOYXhJd2NWdzVVQm8vQVAzTmpZL1lHQ0FWQXRs?=
 =?utf-8?B?M1dIT01FYTdiWElON1J4NVIwL0VnamExamhvM2w1TFNiSWo2d0hIM21mdzJm?=
 =?utf-8?B?b1dDNTRkL3A0NHA3Y2NsaE94Z1BlRktJeXNhUjBZNTl3bFRnSnIwQmdaRytm?=
 =?utf-8?B?MjQxNUpkelI5c3NiK3VnU0lRSnplYXB6TkJnQ0FIOVNSSjAvVFVhcGRSUHBV?=
 =?utf-8?B?dEZqdVZybXdUV1J1cldvT3dOWS9WdERxSVBwcldoa08vNW5VbkRPR3lSck5k?=
 =?utf-8?B?MnhoRkxnUEVLZm9NU2pHQ3BmSEZFZGJUMUFlTXBEWElaZzhDUkRGRzg5S1Zk?=
 =?utf-8?B?SnRjK08vMEVGT1ZlOXNwd1dId0YyR0lUZVJtM09oVnJGYlR4MlpkcHMzeHVW?=
 =?utf-8?B?QTN4cEtNYUx6ZFhBL3phY2RURVZTYkFIcURRQ2JCdm5RMlFGL0xkcHQrVjJQ?=
 =?utf-8?B?TTdMZzlCczdMdzBFT2Q3RkZ3SDZVZlJaR25RMVRZLzFBSHNvSW5HNkpXUE5U?=
 =?utf-8?B?MjhmTjg1Tm5HcUw1Z0NqQkNWR05kUmZnMG9vdG5mYUdiWU9ZVisvb1ZSRlRi?=
 =?utf-8?B?d3ZLaHlJMW9UYlg4cEl5V1MrY3hOYmgzRzUxekJXRU5obnBCNWZxUEVQbTNy?=
 =?utf-8?B?VDNoQUU5NktHUTFObmV4d3lhV0dHcHd1L1ZXbVVYcXRaSlZYb1J1b2J2TGZ6?=
 =?utf-8?B?UmU2Sm8vVXU3RE5RR2V2WGtCcGE5dWgzMnZVaHdRUWVhMXNTTjVvNXl4WEs5?=
 =?utf-8?B?S2RkMlVCVGVKY0w3YUNXZFVtazhqd3lJSXNuSzM5M2pOdlhpR3h4YU5xWWo5?=
 =?utf-8?B?UVl6WG1oY1JLVVlnaEtQUmVhNjZCdWpoT2JwVlhhOUQvYUo0a200aWhPOGxD?=
 =?utf-8?B?RFkvdnVzZ1Btb2JaVlFqRzdvQ0RpS0NuUFZRVVNwQk1oZmZlN3llM3kzSWd0?=
 =?utf-8?B?WEY2VEQzakl3bElqRS83eTdHSis4SlJKTUdIZ0xiS3J2dEpyTGRjd1VZWjJy?=
 =?utf-8?B?cmN6NkJrWEFhUTBkdllwZng5N0hvL2srR2JGY2toeUErQmhpTi9DRmM0ZGFv?=
 =?utf-8?B?djJUVFNwUVFiS0FxY2VQek1yNzFESnJqb0RzVHl1U00zQ2JLMUxVcWtqdUFw?=
 =?utf-8?B?M25zU0ZjcHN1c1hKUzJMa2IrWmtNeEZVdXV3ZEttQS9kNVFlK0dxL1dpOFpj?=
 =?utf-8?B?L1dVVlBjWitsN2oxckVPZUlrVWFQWWgweGdOQVlFZC9FVGl4VllqQW5TYUhm?=
 =?utf-8?B?T2gxOVozeHYva2pUWTZ4TnE3ZXExWmxxY3RWOUNLYWtUMTdveUk1ZUpyekly?=
 =?utf-8?B?SzZQNDlCeGRiV0NMdmhua0V6YWhHY3h5Q2dwa0pXNXozbUxNQ3pjMW9aT3J1?=
 =?utf-8?Q?WSEA+V8NgBej56JfzzZrqe5u+K8LHIrAW4gCtwJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGFkclcyM2NRU0pJL2dzMEN0anJaWCtmQjhFU0RzclIxTVpxdTNYQ2JrTHpP?=
 =?utf-8?B?QmQ5VFdyK2R0T2tVdytEQUlTbndVTGI5UXI2ZHFmY1AyWmJNNmRHdytNMHFa?=
 =?utf-8?B?Sml5UCtrRXhsdFRwcU96OGxzNWZvYTZNeXZRUC9uRmttODVLK1IzdUo4QXhV?=
 =?utf-8?B?UlBpZ0pEZFpmSmNkdEZGVWdjV09lTFlBUWRhakIvK1AyVWszdnhqZjgxR2Ix?=
 =?utf-8?B?TW04YWlxbjlkbFhzNFRsMitQblRvZHhXRjlpVk9RRktqMHdXcWRoaExuOU9M?=
 =?utf-8?B?V2ZxRnhXallBSDQydkJvaDlXeUhiNldBWFV4R3d1V0FXRjlqbU1wSHJPcXdE?=
 =?utf-8?B?Qk1KVWM5TmRrNFJhMFdhdVlyUWZyQmJFQjZoNVd1UExHTkVNd2RSODA4NEp1?=
 =?utf-8?B?cWRGajdXUUxMUmN4UlMwdGRkb0orYkdHZW5tQ3Q1YTk4aGpRVE5GOVREK0lN?=
 =?utf-8?B?NmRXdENaYS9NK2g3bzYxSlplbGdIZ3hqYnZINFN5dHY0SkJJQitUa0NHQ0t1?=
 =?utf-8?B?SUE2d045WFpYemNJZWxUaldGSUtDTEFHbUdLRWtCLzRzS1NzbFo3d21haWpY?=
 =?utf-8?B?QUIzS1dlNVIrSW9hbCtsbU9GT1FPTU9RMEs1OVFJQlNaM0ErTEJjZ3lGWDRD?=
 =?utf-8?B?RUltY21JbmxSNGovanI1QUx4YWpObjJsM0tMazFmV3lvbFY5dXBRbVV0U3Vw?=
 =?utf-8?B?eXEyQ3M5VS90MmpDalZrQUdJSEFKRE0wS3dxeVFUbTVKbkY3WDZkOUN5SURB?=
 =?utf-8?B?aGxIcm5XVWovNlJDR05NQ0YxK1RacDNSVVhjRk4wNUFFU2FWNk1Yb1lTSHdT?=
 =?utf-8?B?MkxKUGJYSjI1T2d2bENQamh4MEprRmxRbndYUm1qYnJJVEN6VmFiVllIckhZ?=
 =?utf-8?B?U0dKSHhJbUN2c3pBMDloUGplaVJiOHhlbC9LaUZtUDBvMnQ4cEhwUUdUWGJ5?=
 =?utf-8?B?b3AvbUIvYVhpZEYySnlXOXJrRGdiU2xYam4zQUxHL3BpM000b21OaWRGV0k5?=
 =?utf-8?B?UjZXWnF6UnNlVytkRlhxZjAxanNaWStxNThSWGRmdTJFc0FQd2tYMXlYWGh4?=
 =?utf-8?B?LzFVQk00UmlNYzh2Um9wRmt3SGc1MlI5TGFpdVJJRHFrZVcwWnY4U29CbmZN?=
 =?utf-8?B?d0c3dnM1bzlrM3NqbU9ieVIwMzlOZ05sWmFCV3FVQkloaEV2dW51UWpiTXpu?=
 =?utf-8?B?SzZYY2FHTTZGbS9qMUNBNEUyUC9LclY0QTFPeE96VUFYRjZxVnhwdjNpK1ZD?=
 =?utf-8?B?R0M0NW5Ib2NEajZub1NhcWM4V1dER3ZLTW43UHRZa2RUZkNVWVpkeitxUTA1?=
 =?utf-8?B?eWxmb3lpbUxRckRQTmVGRVRJWmhRajRNWFdlcEYwb25QSFZRbyt6YjRLWHcw?=
 =?utf-8?B?RnBzRjdLcHFNK2t3akVHelRwaFpxVE5JOGR4RU1EMFVkOCtLMnY4UGF5ZG83?=
 =?utf-8?B?akZBVGpZNStZKzYxZmJHY1dOR0haSUpPZFBubmlocTY2Qk5YVzFxbGp0bWZU?=
 =?utf-8?B?SjRJWkNFZ1JFRmNXRmlDK3V6REU4MGt2TDhjOU5FZFErc0t5SklpSWZERFcr?=
 =?utf-8?B?Q0JibmxNY1FCSitoRGVCRzI5bEROK2hIV24yVVFDVFRCSzF2RWprNUMwd0Rp?=
 =?utf-8?B?dzhGOWlQM2JHZDVVRVdmSmJWa1R5Tk82aExZMlZ0LzFXVU9Xa1poMWNBUlF3?=
 =?utf-8?B?OXpISFhiSkN4SjZWbWIxSnIyZjNLQ2RWREFNTFY0cWhINVBMM0x1aVdWSUEx?=
 =?utf-8?B?alJZUVQzRFlZM0ZNOHVaeFA2QkpOT2lIMk9YdmZ3RFNOMVJaOXo4TTlMUHJL?=
 =?utf-8?B?V091RktzdEw5YSt3VXI3cVJRa2svRGRMc3cyRXZHMzFCNmxla0NXM2tWbHha?=
 =?utf-8?B?eWJJMElwcTVLK2t6SnUzQzUyRld5dlN3czlYa0h6M1pnYTA2bU5TMFZ6ZWxC?=
 =?utf-8?B?emwrZk1CL2N3S2NacEpvTk9EeFQzQ1VGNHRwamlMUzRBSmpodVNHRFJSMzA3?=
 =?utf-8?B?OVBxWER1TFR2NEVjSVowNnc0ZFZlbTlqYzEzZFUwSStKUER4WWQyTmRnRitK?=
 =?utf-8?B?d2xKVVdmK2FOZkFEdzI3REVMVkVmc2lxQS90U2dEalgzN214bHdCY0R1Vi9B?=
 =?utf-8?B?Q2d5c1dVUlVXODBvZjVva01aNEJNMnVqNUg2NzhBN0tSTTNNK2tac1Joa3Z4?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3107f499-c9bc-4894-fa31-08dcf1cdad6a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 12:41:26.2752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X4uxqnPOTXizsXg5kg5GsRJHrpmCk71KHXcxM2wQxlwpKX01unYKScifHOKJWdv627TnXRXafsU4ashHIXtVVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5178
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

Quoting Matt Atwood (2024-10-18 17:03:05-03:00)
>From: Matt Roper <matthew.d.roper@intel.com>
>
>There are some minor changes to pmdemand handling on Xe3:
> - Active scalers are no longer tracked.  We can simply skip the readout
>   and programming of this field.
> - Active dbuf slices are no longer tracked.  We should skip the readout
>   and programming of this field and also make sure that it stays 0 in
>   our software bookkeeping so that we won't erroneously return true
>   from intel_pmdemand_needs_update() due to mismatches.
> - Even though there aren't enough pipes to utilize them, the size of
>   the 'active pipes' field has expanded to four bits, taking over the
>   register bits previously used for dbuf slices.  Since the lower bits
>   of the mask have moved, we need to update our reads/writes to handle
>   this properly.
>
>v2: active pipes is no longer always max 3, add in the ability to go to
>4 for PTL.
>v3: use intel_display for display_ver check, use INTEL_NUM_PIPES
>v4: add a conditional for number of pipes macro vs using 3.
>
>Bspec: 68883, 69125
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
> drivers/gpu/drm/i915/i915_reg.h               |  1 +
> 3 files changed, 50 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index ceaf9e3147da..7cda674fa851 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_ato=
mic_state *state)
>=20
> static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_bw_state *new_bw_state, *old_bw_state;
>         const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state=
;
>         const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>@@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct intel=
_atomic_state *state)
>         new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>         old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>         if (new_dbuf_state &&
>-            (new_dbuf_state->active_pipes !=3D
>-             old_dbuf_state->active_pipes ||
>-             new_dbuf_state->enabled_slices !=3D
>-             old_dbuf_state->enabled_slices))
>+            new_dbuf_state->active_pipes !=3D old_dbuf_state->active_pipe=
s)
>                 return true;
>=20
>+        if (DISPLAY_VER(display) < 30) {
>+                if (new_dbuf_state &&
>+                    new_dbuf_state->enabled_slices !=3D
>+                    old_dbuf_state->enabled_slices)
>+                        return true;
>+        }
>+
>         new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>         old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>         if (new_cdclk_state &&
>@@ -327,10 +332,15 @@ int intel_pmdemand_atomic_check(struct intel_atomic_=
state *state)
>         if (IS_ERR(new_dbuf_state))
>                 return PTR_ERR(new_dbuf_state);
>=20
>-        new_pmdemand_state->params.active_pipes =3D
>-                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>-        new_pmdemand_state->params.active_dbufs =3D
>-                min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
>+        if (DISPLAY_VER(i915) < 30) {
>+                new_pmdemand_state->params.active_dbufs =3D
>+                        min_t(u8, hweight8(new_dbuf_state->enabled_slices=
), 3);
>+                new_pmdemand_state->params.active_pipes =3D
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 INTEL_NUM_PIPES(i915));

It is the other way around: We should use INTEL_NUM_PIPES(i915) for
DISPLAY_VER(i915) >=3D 30 and 3 otherwise.

--
Gustavo Sousa

>+        }
>+        else
>+                new_pmdemand_state->params.active_pipes =3D
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 3);
>=20
>         new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>         if (IS_ERR(new_cdclk_state))
>@@ -395,27 +405,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_=
private *i915,
>=20
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>=20
>-        /* Set 1*/
>         pmdemand_state->params.qclk_gv_bw =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
>         pmdemand_state->params.voltage_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
>         pmdemand_state->params.qclk_gv_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
>-        pmdemand_state->params.active_pipes =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>-        pmdemand_state->params.active_dbufs =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>         pmdemand_state->params.active_phys =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>=20
>-        /* Set 2*/
>         pmdemand_state->params.cdclk_freq_mhz =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
>         pmdemand_state->params.ddiclk_max =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
>-        pmdemand_state->params.scalers =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>+
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>+        } else {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>+                pmdemand_state->params.active_dbufs =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>+
>+                pmdemand_state->params.scalers =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2)=
;
>+        }
>=20
> unlock:
>         mutex_unlock(&i915->display.pmdemand.lock);
>@@ -442,6 +457,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priv=
ate *i915,
> {
>         u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>=20
>+        /* PM Demand only tracks active dbufs on pre-Xe3 platforms */
>+        if (DISPLAY_VER(i915) >=3D 30)
>+                return;
>+
>         mutex_lock(&i915->display.pmdemand.lock);
>         if (drm_WARN_ON(&i915->drm,
>                         !intel_pmdemand_check_prev_transaction(i915)))
>@@ -460,7 +479,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priva=
te *i915,
> }
>=20
> static void
>-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>+intel_pmdemand_update_params(struct drm_i915_private *i915,
>+                             const struct intel_pmdemand_state *new,
>                              const struct intel_pmdemand_state *old,
>                              u32 *reg1, u32 *reg2, bool serialized)
> {
>@@ -495,16 +515,22 @@ intel_pmdemand_update_params(const struct intel_pmde=
mand_state *new,
>         update_reg(reg1, qclk_gv_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>         update_reg(reg1, voltage_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MAS=
K);
>         update_reg(reg1, qclk_gv_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MAS=
K);
>-        update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
>-        update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
>         update_reg(reg1, active_phys, XELPDP_PMDEMAND_PHYS_MASK);
>=20
>         /* Set 2*/
>         update_reg(reg2, cdclk_freq_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK)=
;
>         update_reg(reg2, ddiclk_max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>-        update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>         update_reg(reg2, plls, XELPDP_PMDEMAND_PLLS_MASK);
>=20
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK);
>+        } else {
>+                update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK=
);
>+                update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK=
);
>+
>+                update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>+        }
>+
> #undef update_reg
> }
>=20
>@@ -529,7 +555,7 @@ intel_pmdemand_program_params(struct drm_i915_private =
*i915,
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>         mod_reg2 =3D reg2;
>=20
>-        intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
>+        intel_pmdemand_update_params(i915, new, old, &mod_reg1, &mod_reg2=
,
>                                      serialized);
>=20
>         if (reg1 !=3D mod_reg1) {
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 128fd61f8f14..a1c49efdc493 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -20,14 +20,14 @@ struct pmdemand_params {
>         u8 voltage_index;
>         u8 qclk_gv_index;
>         u8 active_pipes;
>-        u8 active_dbufs;
>+        u8 active_dbufs;        /* pre-Xe3 only */
>         /* Total number of non type C active phys from active_phys_mask *=
/
>         u8 active_phys;
>         u8 plls;
>         u16 cdclk_freq_mhz;
>         /* max from ddi_clocks[] */
>         u16 ddiclk_max;
>-        u8 scalers;
>+        u8 scalers;                /* pre-Xe3 only */
> };
>=20
> struct intel_pmdemand_state {
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 405f409e9761..89e4381f8baa 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2696,6 +2696,7 @@
> #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
> #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
> #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XE3_PMDEMAND_PIPES_MASK                        REG_GENMASK(7, 4)
> #define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
> #define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
> #define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>--=20
>2.45.0
>
