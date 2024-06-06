Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C908FED2D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD1F10E009;
	Thu,  6 Jun 2024 14:35:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwkBdzaO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5956E10E009
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684543; x=1749220543;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2c5MrQ0qCkZbHbZDBtTPJ9E95eYaahSeAAUI/9NRMgo=;
 b=OwkBdzaOi1nMtdR/vbjbjyl6usdp/H6EIcnQV9Z3p2qv05DXB6NJISgp
 V1PXHc8bCciwJunLLEY23oSiEHkeZ30YQCqtXHoXYJQzm49LgVX7ERB/X
 NADeTgKC5FY6d80OllaJPYVrHowIfuSrgnqe6IjJBLbE/oQndMEGlth/Z
 ZlPjg4j1lw5aHouYtGhngkU0LTeo4E65BU2h1X17wPlF6CHqWSzrmxgNo
 rIght8CNyLP3qokXhGdsU8EYWVaMZyhwOU+8aWRfPHrvaMuFGfbc09CsO
 d+Du7Cs+iwuA+VquNE9gQKXDQwYsuES4i4GJMbgvpthkHOUmM2IGpXev2 Q==;
X-CSE-ConnectionGUID: n0l6B05cRmOFHqcKeczHQA==
X-CSE-MsgGUID: waKGbX34SWWaxhKuYLyONg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18147959"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18147959"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:35:42 -0700
X-CSE-ConnectionGUID: 63S4UL0FQe+0w9143yeiYA==
X-CSE-MsgGUID: L2UODwO9SGSkzvioaRJgZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38059042"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:35:42 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:35:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:35:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:35:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJM2vVq5nfAhi9TqSEPhyGZR3/ewGsDDfmus8HbXSm2a+VgYLF8V08mORKvN5HiXwZkTF7VakUi2XcmPrKgRBlMISEPeD4Ct2LTYvHCIyine/vUrd+I/soqIHF0aApLqaHI0ENeSmVhxruwoRFZG1FFSwjQDqhPhqZHRNOcs/HaLApGDMF5sXbbGhRp6JXW9vfgCb3I7xBoLRCKsImQTxyXk1aOloTA6hA6Qxj+Wkf7iZSoeLZiJ2no18Ybs+y79Y+gwL6Ev2mllRw2M3ODdcZxX2i7pd+Fr4tHNjHbkQNnwHXlXJMFwnRqgfqO0KPFC8TQpgYwthDvQiEDeDAl1sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2c5MrQ0qCkZbHbZDBtTPJ9E95eYaahSeAAUI/9NRMgo=;
 b=LpEh9ZA2Hh93rlLJr/L4vC2Z/ck452WImRb65IsYbCVd/k84GEidXZnihvBGpa95/BXXY0UCbdSdd2QGsSHUJu1xKFVw7LKib+zsv6nccAZDsesqbeRmQwSIqQbywsVYAOy2VWimOQO/Bp81bYEXjAo2OYoad3RzilxO4mmnVMPXg9oGF5XeQAmgITigx1M/TcI4gFqLzLBrMa24G96WiDqE87zQ+dBJ1ItOwWs73TTBWB+W0hvXmTe52BRj6LCGb61ohElvavPTSsi+7kUxN2L7xflfuFK3/bN+uiquo0RIV80xKeZ5QUdJ2yaOesU9Lx0om807Avszkz0XDdk8sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB6064.namprd11.prod.outlook.com (2603:10b6:8:77::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 14:35:38 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 14:35:38 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdsIUoGo+1NESwzwj69wwgrLG6zW5g
Date: Thu, 6 Jun 2024 14:35:38 +0000
Message-ID: <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-11-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB6064:EE_
x-ms-office365-filtering-correlation-id: 8bf78926-8f49-4382-47d1-08dc8635ef7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ZFRTNStyWEUwcUJFdG8yaTZHWjhUb2FOSUJ2R2pHa2hwV0hvUkh0QUI4VWVm?=
 =?utf-8?B?YVJSMlp0ZzMwZE5kNVJwcVR6ZGdjdnVITmd4UUs2NThEaHZLOXVUOExmQmNq?=
 =?utf-8?B?MGNHMC90bGNXekVWQjlwejlobU1DSFZaVmUxNkxTR09KakpmSWZJRXpBaEI5?=
 =?utf-8?B?bi9jbFYySDJid3pMNUlrOXhKMVYyQ3BNSVRyUm82SE8xNnBhWmtqcko2UTZQ?=
 =?utf-8?B?bXEyM0xNVXI4OUVSdjByTFNFU0xlcU5yajIwU0tkdDk0S2g5Ums0UTRDdDM0?=
 =?utf-8?B?eTJ3b2VjUERoQmZYdWZpdjQ2SHdFOHhFbi9sUE9HZFNmSmh0VjdDRTFSWTJh?=
 =?utf-8?B?OUNCdm1BQXVqM1dITm5xVkV0VTVwMmZic05CL3F1b3RhZTFiYTVxbFFpVmRR?=
 =?utf-8?B?OUtPU2pNa2kwR0RVaGdkTEZNT25jeGFRQkZUS1VmTTBURkFjSDk1Nk9wbllB?=
 =?utf-8?B?VWJPRFFZcmZEbHduWE1IanYwVWpwTkVJZFdZazdQSUNiazBOZmhBaWpQOG9I?=
 =?utf-8?B?Vm1EWnNFZWNXWHFzQVV0dXhjdlA2azhQaEtZWSszKzB5MndjaGk0NUpsZnlC?=
 =?utf-8?B?NXFYK1lWekpWcTVZUUUwbkNjcEc2dG95N0ZuUUJkZkh5ZnZRNXphMEsxRFlV?=
 =?utf-8?B?TTFDQVBhdnFuWWI0VG1ianFUTi94ajY5MHhmVHNOdmhCaG9TMGZkMDNvelRR?=
 =?utf-8?B?TDNyVlE2bFpwaHV4TWJreWQ2T1hEam9nakRvS3hIU0gramthYWNZQmdENms1?=
 =?utf-8?B?V2U4WTQrMTNVVHpmR1VWdlZ2THE0VUVjUkh2QXlITmU2K0pWMW5vTG1LamM4?=
 =?utf-8?B?TytCWGtjamtsa1FFUXEwMDFzNWdEQVJ2eHIyN2gvR3dDa09sUTZMblpyMzI4?=
 =?utf-8?B?Wk90RFNCd2lwZmd2bXZUaVcxanZNRmx5bEF0Mlg5dXZBS3picVN4emxzakdz?=
 =?utf-8?B?bDlacDljNnpUUTNWRXhyN3h6Wk9KZGh3R096SUh6Mk1DU01oUmlxVHozbUx4?=
 =?utf-8?B?Q3N2cVk3VjgwaU1kWXF2bkkxdXd1UFh2R3RtQTVwQStnNFY5RGFhWnVpZGlK?=
 =?utf-8?B?Q1lRS3Rzek5pbGZYelRnMS9QN2tVNDlYWHM2T3NrMWpheEQwNWU5K3JzTWo1?=
 =?utf-8?B?RlJhTFZBUDQ0M0VSZGpFNXQyQ3ZlOUcyUHlwWVU5TkJsUExJWTNSZ0dkSzZu?=
 =?utf-8?B?VC9Kb1VKMEZwSDMwWStpZzM5N2tNb2VXU0tRQlRNd1hScHhkcWhKTlo4dHNW?=
 =?utf-8?B?SVBUZHkyS2tkSDM5ZTNPOUNyNEJTb1lsdnI1QjVvNWUxMDBlYm5JaFNmMDlZ?=
 =?utf-8?B?UVY5MlFFaDBLeWk0U1dOZmtudldMc1YrQndjS3UrbFp4Tk9zd2o5QTFRU0RO?=
 =?utf-8?B?YVlhd01Ob0NOZW9TUjZlZWxPZjVPSmxHQXo2Z3dxbjJIY3RLL2hIb1hhZVBs?=
 =?utf-8?B?SG5VS0daMVc2aEN3UUpBRjE1WENkQTAyRy9pbk50eS9VQVlCZFlYN0MzZHpp?=
 =?utf-8?B?NWhMcDRROVhUTllSRC9XRE0vdzhwYnk2anF4TFFGM3FNdTlNY1Z5eW42M3NK?=
 =?utf-8?B?OHlaSDhhYlgwbG9KdjFETFcxS3NRSGlSaEh6MVNyWVdvRUV0UGtiZjBRUUNE?=
 =?utf-8?B?STRiNHcwUTRNdVp4SUVFMVBwSTlCcWJLNGxCTXVPckI4TGRmMHRZNHREN0RS?=
 =?utf-8?B?Y3dUZWdhc0o2RFdFdDVCd1JRNEdESGU0ZkdZVXBPRE5zWUZFV2xYcWVOUXZH?=
 =?utf-8?B?VXNHLzM1RVdhakpzTklHR3A0OCtBbWZTanRMeWdJQ1NlT0pvYlBjNkFCMjhZ?=
 =?utf-8?Q?5ALgUjBs2PDYeSUz2BDzgfWkpGq9QkZideILc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3JHMG03S0pidUlFQmU0bmVFcEpQeHRWYnR6Rk9DZnhkZWNCdTN4M1J3THMy?=
 =?utf-8?B?c3AzRGNucDIrSitKL2F5ZmZCUnZPaHU3dWRzLzhwdEVlTGdYY3cvVmhVSW5I?=
 =?utf-8?B?QmlBZU4wWHRPcTBPSjBSUVVBVzNxYUM4dVNYR1VZdUplaU5SNzFJdjEzREpr?=
 =?utf-8?B?SEp1andnWk9idkg2WHRKRURuOHVDaTdKMGFkQzk0c1kvYmlIZWhrRzlWN0l3?=
 =?utf-8?B?cHNxYkFmc2M2TE5kcW02VnRDcURZYXFzREZEWHBqRnFqRERrcEtqOEU3ajRt?=
 =?utf-8?B?UVo1TGh2dWVGS0c0QXlMdXJwNTZ1dXovWE92RmVWYjliZE4ra1BsSTVHMlZn?=
 =?utf-8?B?cVFvM3p1ajM0S01iRWsvT2l1eGtSR1A3V1o3N3lwaXY0T0gwMXRqb3lvYTZx?=
 =?utf-8?B?M0orQU15MFE1d0dJWDhVTGFWN2JLRUxjNERHS0dKTGIrR3pNZmtvYk1vS3ph?=
 =?utf-8?B?Z1lNbjNXSXRpR2lhZFkvZXZjUzVhRkU4Q2JNOCtQR21kMTBlakF4bGFCWFY1?=
 =?utf-8?B?VG9wQ1kvS2p5MTVmSjM1RmgyTTRNb1R6UlNocXpBTzdVMzFERitEUnpIM2Jk?=
 =?utf-8?B?S2Rqanpwa3lKUzQvaWgrNGZGZWRkRTR6NlBLTkEyRmlmR1JWalZYTmNuNFJi?=
 =?utf-8?B?c2lKbnlyMzlHd0ZNckN5UzdnakFwRWMwNUFrc0JqcFltUlZWZmVKYk5IVjhj?=
 =?utf-8?B?clVzZVdzMHh1c240ZURCYi9MWHkxWFZPMkJFMTNwWGgwdFk2ZzBCOFFtb2lI?=
 =?utf-8?B?TlJTbEE5TUloNmJad29MdXJIQm8wSkt3WkFVYWMzYnVoVWtEV3dNQzRYSHcv?=
 =?utf-8?B?QnZjZXNFaVp1QVArWXlSVGdPQlpNYlZHQ0g4Ty8zalhnOEJlVDljZmViMGhY?=
 =?utf-8?B?VXVTMDBqRGVIZ1kzN0RYSG12eDBHekhpSGNOUjRhVFhuUHNacTBCV3llbHh6?=
 =?utf-8?B?YmxWVlpLTEpvYW5ZVjVyUTZ6eFdUVVRjL0xIdXZQYTlVcVhzN1pXUkgvTjk3?=
 =?utf-8?B?OFF2QTBVRFRIc2cyc09ZMzlVRmpnQnZxdTRoRWw5OFl2d2ZYVTNRNjRjUGg0?=
 =?utf-8?B?ck1nMWdoM3Z0M2xvb2dFVm1xeXdRRnFDRkJNcFVtS3plYmhjMWRLcTkySkdC?=
 =?utf-8?B?UFBYUXdOZzJwNVpaRko4WmUveE9kSWdIazdudHF1Q1Q4eHNsazdiZUFveFBQ?=
 =?utf-8?B?WFdHVEJ5WGx2UEdkOXAyUjIxMC9pOEFkTzZTWTVoTngzejlNN1ovRmlKcElt?=
 =?utf-8?B?dnh1TUJMcThxalkvU2VVSFNQYmxCUG1UbEovWjlOMTJORUxQQVpjQ1huSHUr?=
 =?utf-8?B?Z2s5Yy9hVjZsR0FJaEY3SWtQKzEvbFJIbkhzWFV0cFMwQ0hRbVRFQlMwN1ZU?=
 =?utf-8?B?ZWV3NmxNMXBqQTdoa2J2c2ZMeCtlUGgreFNXcjhIY1ZiTVB4SXN6eDI4Wko2?=
 =?utf-8?B?TnlGOG54cFIvWStxSHpSK3ZScGpLajEwQWJkNDJRSjhrVTV0NmZlT1VSNGU2?=
 =?utf-8?B?ZzJqclR5cHZkM20rR0ZML2VxaDJURlV1RXM5NkZRL3VGcGlWTSsyckNLZzlz?=
 =?utf-8?B?bmhNNnZtQTVUdTh1UTR3azFUTmwyaU4ybSs2YlRzaXpxRlZQTVRXakd1SjU3?=
 =?utf-8?B?aUVvM2t2MGtxNzFrV0tndzQzbTR3KzZlWkt6aGs0cXJJeWZ2VC90ZzFwR202?=
 =?utf-8?B?cXRaSW1VVW1OMmFCUjFLbkRQbWVqUFlVUlF6Wm1TN05ZZFBSOEFsM1RUbEFa?=
 =?utf-8?B?d241RS9VVXE4MmNuYTEyN21iRTFSZWxxeU5mYk51R29qL3gwTUFqdzcrMlVj?=
 =?utf-8?B?NVBqeW5DY3JqaDNjL2pXY1Y1VGkxd1lNSlh1bGhrODVwN09jUFpHWVp5aTMx?=
 =?utf-8?B?UTdpNDZRV1k2dzQ0VFREQlBWdVRpajdKMXFWWGN3WitHUzBwL1hxMmtSZTRn?=
 =?utf-8?B?S1lvc3BjYmJkWjhNSFd0dVFVdTlUdUpGZDM2cTVpQnBVVGowaEpFMGpHdG9O?=
 =?utf-8?B?T2xSOExJcFVNaHpGYWZOMkJTYkRPR01veDViTi9tck44ZEhRSFEwcXBvWDds?=
 =?utf-8?B?NU1oZWk3N1M4dUlDSG1majlHdjBsalM3NVByOWtIMjhkZDV6NS9objM2NkpZ?=
 =?utf-8?Q?h4JGknaPJ4vtEMuda27yriehw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bf78926-8f49-4382-47d1-08dc8635ef7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 14:35:38.8877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KScEmV6vTDv376Z08Ag+niJ9hNfyvvRG0aaNaQDjfePZ5BLLPfv5xi3FhQ8j9BJDY4yYek56c80Y4OE4/lbSAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6064
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMC8yNl0gZHJtL2k5MTUvcHNyOiBQ
cmludCBQYW5lbCBSZXBsYXkgc3RhdHVzIGluc3RlYWQgb2YNCj4gZnJhbWUgbG9jayBzdGF0dXMN
Cj4gDQo+IEN1cnJlbnRseSBQYW5lbCBSZXBsYXkgc3RhdHVzIHByaW50b3V0IGlzIHByaW50aW5n
IGZyYW1lIGxvY2sgc3RhdHVzLiBJdA0KPiBzaG91bGQgcHJpbnQgUGFuZWwgUmVwbGF5IHN0YXR1
cyBpbnN0ZWFkLiBQYW5lbCBSZXBsYXkgc3RhdHVzIHJlZ2lzdGVyDQo+IGZpZWxkIGZvbGxvd3Mg
UFNSIHN0YXR1cyByZWdpc3RlciBmaWVsZC4gVXNlIGV4aXN0aW5nIFBTUiBjb2RlIGZvciB0aGF0
Lg0KPiANCj4gRml4ZXM6IGVmNzVjMjVlOGZlZCAoImRybS9pOTE1L3BhbmVscmVwbGF5OiBEZWJ1
Z2ZzIHN1cHBvcnQgZm9yIHBhbmVsDQo+IHJlcGxheSIpDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMiArKysrKy0tLS0tLS0tLS0tLS0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRl
eCA3YmRhZTBkMGVhNDUuLjM1MzBlNWY0NDA5NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0zNTc5LDE2ICszNTc5LDkgQEAgc3RhdGljIGlu
dCBpOTE1X3Bzcl9zaW5rX3N0YXR1c19zaG93KHN0cnVjdA0KPiBzZXFfZmlsZSAqbSwgdm9pZCAq
ZGF0YSkNCj4gIAkJInJlc2VydmVkIiwNCj4gIAkJInNpbmsgaW50ZXJuYWwgZXJyb3IiLA0KPiAg
CX07DQo+IC0Jc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBwYW5lbF9yZXBsYXlfc3RhdHVzW10g
PSB7DQo+IC0JCSJTaW5rIGRldmljZSBmcmFtZSBpcyBsb2NrZWQgdG8gdGhlIFNvdXJjZSBkZXZp
Y2UiLA0KPiAtCQkiU2luayBkZXZpY2UgaXMgY29hc3RpbmcsIHVzaW5nIHRoZSBWVG90YWwgdGFy
Z2V0IiwNCj4gLQkJIlNpbmsgZGV2aWNlIGlzIGdvdmVybmluZyB0aGUgZnJhbWUgcmF0ZSAoZnJh
bWUgcmF0ZSB1bmxvY2sgaXMNCj4gZ3JhbnRlZCkiLA0KPiAtCQkiU2luayBkZXZpY2UgaW4gdGhl
IHByb2Nlc3Mgb2YgcmUtbG9ja2luZyB3aXRoIHRoZSBTb3VyY2UNCj4gZGV2aWNlIiwNCj4gLQl9
Ow0KPiAgCWNvbnN0IGNoYXIgKnN0cjsNCj4gIAlpbnQgcmV0Ow0KPiAgCXU4IHN0YXR1cywgZXJy
b3Jfc3RhdHVzOw0KPiAtCXUzMiBpZHg7DQo+IA0KPiAgCWlmICghKENBTl9QU1IoaW50ZWxfZHAp
IHx8IENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSkgew0KPiAgCQlzZXFfcHV0cyhtLCAiUFNS
L1BhbmVsLVJlcGxheSBVbnN1cHBvcnRlZFxuIik7DQo+IEBAIC0zNjAyLDE2ICszNTk1LDExIEBA
IHN0YXRpYyBpbnQgaTkxNV9wc3Jfc2lua19zdGF0dXNfc2hvdyhzdHJ1Y3QNCj4gc2VxX2ZpbGUg
Km0sIHZvaWQgKmRhdGEpDQo+ICAJaWYgKHJldCkNCj4gIAkJcmV0dXJuIHJldDsNCj4gDQo+IC0J
c3RyID0gInVua25vd24iOw0KPiAtCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFi
bGVkKSB7DQo+IC0JCWlkeCA9IChzdGF0dXMgJiBEUF9TSU5LX0ZSQU1FX0xPQ0tFRF9NQVNLKSA+
Pg0KPiBEUF9TSU5LX0ZSQU1FX0xPQ0tFRF9TSElGVDsNCj4gLQkJaWYgKGlkeCA8IEFSUkFZX1NJ
WkUocGFuZWxfcmVwbGF5X3N0YXR1cykpDQo+IC0JCQlzdHIgPSBwYW5lbF9yZXBsYXlfc3RhdHVz
W2lkeF07DQo+IC0JfSBlbHNlIGlmIChpbnRlbF9kcC0+cHNyLmVuYWJsZWQpIHsNCj4gLQkJaWR4
ID0gc3RhdHVzICYgRFBfUFNSX1NJTktfU1RBVEVfTUFTSzsNCj4gLQkJaWYgKGlkeCA8IEFSUkFZ
X1NJWkUoc2lua19zdGF0dXMpKQ0KPiAtCQkJc3RyID0gc2lua19zdGF0dXNbaWR4XTsNCj4gLQl9
DQo+ICsJc3RhdHVzICY9IERQX1BTUl9TSU5LX1NUQVRFX01BU0s7DQo+ICsJaWYgKHN0YXR1cyA8
IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQ0KPiArCQlzdHIgPSBzaW5rX3N0YXR1c1tzdGF0dXNd
Ow0KPiArCWVsc2UNCj4gKwkJc3RyID0gInVua25vd24iOw0KDQpwc3JfZ2V0X3N0YXR1c19hbmRf
ZXJyb3Jfc3RhdHVzKCkgaXMgcmV0dXJuaW5nIGZyYW1lLWxvY2tlZC1zdGF0dXMgZm9yIHBhbmVs
IHJlcGxheSwgSXRzIGRpZmZlcmVudCBkcGNkIERQX1NJTktfREVWSUNFX1BSX0FORF9GUkFNRV9M
T0NLX1NUQVRVUywgbm90IHNhbWUgbGlrZSBwc3IuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4g
DQo+ICAJc2VxX3ByaW50ZihtLCAiU2luayAlcyBzdGF0dXM6IDB4JXggWyVzXVxuIiwgcHNyX21v
ZGVfc3RyKGludGVsX2RwKSwNCj4gc3RhdHVzLCBzdHIpOw0KPiANCj4gLS0NCj4gMi4zNC4xDQoN
Cg==
