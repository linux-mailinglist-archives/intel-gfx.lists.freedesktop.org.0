Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D82C202A9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 14:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4788810E284;
	Thu, 30 Oct 2025 13:09:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d+5mzB92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3135A10E277;
 Thu, 30 Oct 2025 13:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761829748; x=1793365748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FBmx5VLLMfzUDzhPOpIiBHRjPE1CZegKVk1ljX7qPac=;
 b=d+5mzB92hcgYv1RROSfrOncTfMNeWjqO+uJemvxgEP6DAe05xX1hz9+A
 RbOB805xIcBkO1QvCzYsknY56LIrPnC8K5G/ESMX/12h+EAP5Ynyi2ken
 RIhMx9hfqWCYqjE5bArC3gxpLwskW6yGFuossbivZ6jwMQHqpWL6Ztgzw
 FF9GY5fW6Q9WWpxvpqBYtt6eUq8vY2oNIOhdJsvVNC7gBAh336/kP2cqo
 DcjZNtxjtIagQ2Gf0WY3OWkdojvI5Rgp8l19PstxSl0v0i730hS8FGoT/
 fQdKoVbYqu0TdkOgGJ+uNQTIRj3egWg1C/l47G7hxUf1Kb5i9XF2qSHoV g==;
X-CSE-ConnectionGUID: uVP0A8bGRjOcGWx4euf5TQ==
X-CSE-MsgGUID: MOEaREQpTneu/p9jCziJ1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64010144"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="64010144"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:09:07 -0700
X-CSE-ConnectionGUID: 2PF8t06oRmmD65NkBfjx2Q==
X-CSE-MsgGUID: upZnqvMoSRSwJxrA/9Gyxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="209529915"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:09:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:09:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 06:09:07 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:09:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEhDZz1GG3Rqvnb7V16HbkLsxO2ktwqm/uJIDwLSiotLN4KasEWWBkoYJSEZO6Z6wRY9g9k6pOONtg+4N8MWux4+ykCTrWfi6w6pDuLQrPlc0lS7rKPMdMBx+8Ek/S58nYD0WhUEMYZwLA4+ZYzcmyRtcvRXKqfruWrPuaMFEGb5lBjL9/sHxnMca96dv8C+foXYbgiISU1aFzV2eYiiffi7qeSfZzo/KDj17vjmECisyaPLLpoE1rxtIZIKyeuQmCOLm6GtQPjLp3fHcpyxJZoMUeVXBj1bO+6GXsxNWFcdVVva6xIWL1r7OSos42EzVsjyZrdGb9WthZDXnQhCvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FBmx5VLLMfzUDzhPOpIiBHRjPE1CZegKVk1ljX7qPac=;
 b=gX/luBeApQQef5WY+RBiftDQg1ICWg1UuzSdfiM/X3q6494TBHK75sjwOlsjQtvZQ+1Qn+v1lVkXOts8lOvU5uZ6MsqayKwqQrvxA3kWW532+Aqrq0jygI/lzsTxZS0nj4PiA5iDuucZ6wBr6niP08Mg2utP+HlqpeuCtfPuZs3m7kxJajE3l/janOw+dBRXkoOwewbp65oktOCl6cHkwqUZhFjLcfzgpcE7tfu+HeZUiHJ4Hd5S5XfKaWt0b7Ar38oluUM2NC1ejH8z8x4fWpwM97nsxdmSLfElFWTcxdyMHamv/BtJK3FcV9pKHbTxm6O+21jXMiqiLD0Ad2xHNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6787.namprd11.prod.outlook.com (2603:10b6:303:209::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.14; Thu, 30 Oct 2025 13:08:58 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 13:08:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Thread-Topic: [PATCH v2] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Thread-Index: AQHcQ9X5iZ+pKUlBb0SwI//sgsP5F7TPT9IAgAtlMoA=
Date: Thu, 30 Oct 2025 13:08:57 +0000
Message-ID: <6610c41970db974ae74135ff25b8ecfd5c2124bf.camel@intel.com>
References: <20251023043140.961104-1-jouni.hogander@intel.com>
 <aPnUSIJ8d7WT1rkA@intel.com>
In-Reply-To: <aPnUSIJ8d7WT1rkA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6787:EE_
x-ms-office365-filtering-correlation-id: f724c7db-1549-4eb9-90d8-08de17b57c8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NTE2V0I3Ym9ESWM5eEJiRUUwbS96WXJLZ2JSOE1iL1hxbXNjU3dFdVVwenk5?=
 =?utf-8?B?SjUxUTdmY0hrY0NuaStXQ1JHamNHUzlhNVBMQTFsaERvcTdnOE5aSEt2REtu?=
 =?utf-8?B?S2p1azVleEJsbTFDNkxMSGs3RjgrUWhuN01SeEp0MjJQMUZ1dTJUMGFYZkVR?=
 =?utf-8?B?Q2FlbVBKVGJ0bDFCVFJkSWhvTVpHV0NVSUlRU1VsUTRScjRtTnl0Yit1Z3lO?=
 =?utf-8?B?dFF6NjNRczhZRjhVdW1sWnZ0TFZSMENqc083NU1wUU5JcUNUeEE3Y1pRd0RK?=
 =?utf-8?B?QnBla212Sm1oZEFuYmg0ajRyQ2pUd0xMOE1YTmdJanVuaEFRak1oQ3lrZGpG?=
 =?utf-8?B?VERqcFRrcGU3d0hlbjUreUZuaVJCSjhINjhDTldnV0RZSm5qSlhoWU42OHFY?=
 =?utf-8?B?ZWhrUU1nNTJ1ZWVZbGFMZEdKdlRKb0N0d2gycDV5Rk94dFQveXZHdEczSWU3?=
 =?utf-8?B?ZGZQUmFqZndEYlp5UUE2UlZ2d1p5SVNNVFhCcFpENHVVVXlsVUcwVUdnbEp6?=
 =?utf-8?B?emQzU2d6UVhzcXlHd0g2aHlMVitIUDFsekFjUTZUOENUSHhlWTdFWEZZbk1T?=
 =?utf-8?B?aStrcGlTTTVXMGxzMHJNTnA4aEdXdVYwRHdiNndKaEl5NTdIRlNuNi84c0RR?=
 =?utf-8?B?V1BtRnJ6VDFVa0FKZ0szSFB1ZnVhdThvQm1peXh6ZkVUa1VJN0o4bkR2RmhJ?=
 =?utf-8?B?UEVHdXZranBhY3lZU3FhcnhiYzJTWGhGVjE5WjFpaHhoT1FMNGlsN1BRb1U5?=
 =?utf-8?B?aDlOeHkvUFp1OUZKYkVlU0Frb3R5RXdrUi85a3k4ZjV6UVJ6Sk9FeG9taW1z?=
 =?utf-8?B?SURTa0FBbXpGL2RuTFZYNFkxbngvbXY1ZEtSNElVemhrTGc4amdPOVVxSGMw?=
 =?utf-8?B?YXNlKzZjK2o5SmpSaURlbENqV0ZncEJ6eUh2TkFhRk9sQTUzdys3Wmt6UmNI?=
 =?utf-8?B?MmFxNHJvM2p3eVRTbHpoMHIxbkhSVXh1YXpjODdDM3d0L2J1Lzk3UHRGU3Zq?=
 =?utf-8?B?d1dINXFYUlZHVDhzSUVwcjZZWkRKNkdwelhhTGdvM2ZLV2k3MHZaTmF0Q0hJ?=
 =?utf-8?B?YzNpYW92UDQ2TUJPRmdTSlZnNmdGV2pTOER5aHUvL3E0WStCK21JL1lQNDRK?=
 =?utf-8?B?VmpLOEFRdmYvYWlsdjhEMmlZKytLUndNL0Vsa2I4UXMxckIra3R5bW1YbExi?=
 =?utf-8?B?U29rWVRyUk5XUy9Ga2x1T3V4TG0wZUdrQXdhTFlQME1abGRuSVYvRmQyNFQ0?=
 =?utf-8?B?b2ZMK2J5VXJzV21RWXQyL0pUUy9UWGxHQnZ0QVhkMXFQZ2hlZ2o1VU5sa1pt?=
 =?utf-8?B?UlluLzJKWitUTUkzdHJ1OUdQSGladGtsNVRxOVA5b1V2SlFzbkR5cmhMMzM1?=
 =?utf-8?B?NUZKbWErU2pya3k1LzlDbGgzV3c3S0xCTnVhOGNaRzdnMzdJUTlaN2RlSlFY?=
 =?utf-8?B?eWx3NTNndVlGa2h4aEdvZDJPYTc0ckUvYzZSQlIrTGNqVHQyTDkvNXJjdmR4?=
 =?utf-8?B?cGRwaTFqYjlFK0hBYVM3SEdwR00vblVvVlFkWUdNQ200RnVmcTdKSkNTMmdT?=
 =?utf-8?B?TDdWaVc4THNBcHI2L2x0L2J5MFlaK1FaMmlRRlg1SG9sZzJubzBvMjgyMzFp?=
 =?utf-8?B?V2Z1SGJ1MlY3bkk2TUU4clhFL3NiNHJnbnUrV0YvSTNoeEVuYnl5S0VMU29T?=
 =?utf-8?B?V0VWazNZOU5BejV5UjdkQkgzUDNUc29PWDVTSUVyUXVuUEt0dUhuOVUzRk1s?=
 =?utf-8?B?R1dTenB0WHRaV09BeG9iWHoxNmg3YzZiZ1V6TmUwSEZJTGk2dzRXMDFsOUJU?=
 =?utf-8?B?by9NMkIzSlo5U1ZUbFp0Q1BSKzNOMklHZFdONFNJdHRSYkE4cW9yRy9ucWVu?=
 =?utf-8?B?NUp0NVZlSWpvZ0xwNzc2cWh2dWdGWFp0SSs5cS9HdWc2LzlQcS9MSXdSS1VU?=
 =?utf-8?B?WmZ1bHk5ODZISjVZM1ZmaTI2dzZjQTFYdC93c3dGRlFCMktCc1VTdTByYStS?=
 =?utf-8?B?bWt3REFNM3B0am5jOTJHaVVPYjl2NzRWSmY3MHpwZC96N0VXOWI4OTNkZjVm?=
 =?utf-8?Q?5YC3AA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWp4bS9TRCtuUHFSN3JuK2VQMVNJU0k3YUZycGMvVks1cHpydElmVmpsdnYv?=
 =?utf-8?B?UGVZenczM1Q3WlV3Y1VKNjcvVkcyTFVMU1g1UGVQb3R3ZlFUV3hmOWIrQ2U5?=
 =?utf-8?B?U3NlYzRhck9RZkxnQzJNWUpETXdlOTNOOG12cDZyc3g4RCtJbWdBTDJzL0JZ?=
 =?utf-8?B?WEpwUkRwQVNPb0hOenFFNlBsVXdOblhSdTJma29FQ1pZdTU1Vzg3c3ZrWmtl?=
 =?utf-8?B?Z0JCK0R6TmdWZGh1Yk02YVNVS2Irb0Nqc3l6aTF2eVVlZE1xNVBCTXpBRWF6?=
 =?utf-8?B?MmZwdmNlMXFFZEcxeW44ZmswQTlIQW52YUdGSXZkd0NvSnpzeWR4Y1dLbFky?=
 =?utf-8?B?MDYrYm1rKy9ld2MrRVdGd1ZLeTdsYTJsRTg2RTBlY2tMOXZzL3QvOTBKRGxY?=
 =?utf-8?B?eHRNc2RKdk5NS3I2TEdKUVVkb01Db3orR2hsNmF2VG9ROEFHVmhueStOYTZS?=
 =?utf-8?B?ZTV6YmFhREpMc2IySGpSK1FZN25qUEw1c1R0SUtuZ2lhVXMxY1B1Z0dwdTEw?=
 =?utf-8?B?NjBSTjdmbVMwdlBqNEl6dWFVMnJBSEdPa0x1Ky96SDBrRVcwRzZPSHhwK0lx?=
 =?utf-8?B?aVA3cVhDZ0hMYXBML09rbFBFekUxdU9UUEc3ZXZXMU51QnBBQTlOcDl0KzFV?=
 =?utf-8?B?eWVrb0d5ck5JbzM4WDNxSHZ0S1JCVFgwMVM1N2VRRTJhQXRBeFlLYXk4cE1E?=
 =?utf-8?B?OFBXUGZQRzBIOU5oUW1oNHh3dG1GbUJRdFY1L2U3bnJYdEpCYlM4MmVBellE?=
 =?utf-8?B?Nm9oVXVJb2pMcSsxOFF3ZVFPN0c3UGhrNm93SjF1cUVNUnRVRmgycmt1d2w1?=
 =?utf-8?B?dUtBdlNpMGRrZDdlN3hLQmJodGZNdlo1OHJ2NVFkWjFqTDVNRWVzU0dDakVM?=
 =?utf-8?B?SlZCVkVGT1dRYkhxak1MaVV0OHZ1OW9MbjdpRU0vd0hHb0tKcFJKUHhoK0NX?=
 =?utf-8?B?c29LM05LT1ovazBQeHFER1g1cEVabTcyL1ZyajJSd094RlBDankyMTZYRmZ0?=
 =?utf-8?B?clE3bFhjWkZEbmYyRnBRRzEydW5iaGdnVGdRRU1mOW4vNnNXZGNIL0VYYUFq?=
 =?utf-8?B?bEkrVERqVlh0K0VseEx1UVlxaUZ2Lzcxd1NtSktOV0tNSG9VR3NyYURtanly?=
 =?utf-8?B?czhuVTllNHc2RExwQ3pacE1UUUpjcndzK0xzZzBaUXFaWkozZTR5VzlvNVN3?=
 =?utf-8?B?K3AyMi91L0NxamNwUDFrbnpnSGNHa0g5UVErVzdZalQwSEZBc0JseWJFTmNj?=
 =?utf-8?B?VnQ0Qk1qOGRWcndHdmNmb1lDMHZvK1FRUS9rK0haM2xLeUtXSDBGZ0RObjNR?=
 =?utf-8?B?VTFYTEJ4ek1RN0YxUVd6VkQ0VEdiR3dOMUhQZXpNeTNjRG5YYVMwZnJDSzV4?=
 =?utf-8?B?b1JDM04xNE0xM05CMHV5UTRHZHZmeFFPUzQyaW5vakp0YUZhU2xVWGVITXFT?=
 =?utf-8?B?N1NOdWFwSVRvcDIxdUtOUGxkY0xyM2piTHJ6WGpLYlZGd2JBbWg2THV1U1o0?=
 =?utf-8?B?dmRwVmhUWmhBaE9yVU5OVkN2L1E4ckh6QUJkOUd6UDRoeDZtSTMyM21PRjdB?=
 =?utf-8?B?VnM5VkxyeHZ1M3BNNFVZTVBuajFBNzBYemN5U0xDc2VXNVpXUXRTWmNPTXJP?=
 =?utf-8?B?b0pUSEgxSDRTTUtMWUJEV25ZMzhLWEdxSVpwWFN4YlMwMzd3ZXB2RDNnSUZw?=
 =?utf-8?B?bnB0RjNERjNYUDlRNnVNcEgwOGVwbWNROFNjY1FiZmNiYnZlTUduZktpck1w?=
 =?utf-8?B?UnM3U0cwT2FDdmtIaGtLT1FXZThydjN2VHZkcHpyY2RyUy9RaW1vcWk5QUk4?=
 =?utf-8?B?Rnl5ZEprZUFPKy9JS3JseUZZY2QvbmF0N0w3c0JUbHJSaDlRZzQxQ0pYRWZJ?=
 =?utf-8?B?dlhsT3F3VkdSbWR4WnpkRURSYlZCME4wNUV1YlFQd0hGaC9jYnJ1aEhZMXF6?=
 =?utf-8?B?cmg2eU5TRXhDOVVIRGI2bGZINDdPRGpyVm5LTjdoR0Z5aGVsRCsvczU4dXNH?=
 =?utf-8?B?OE4wZW5wRmZrREt1L1FXOWdxZ0lTdzhHTUdNRElTSVUwYU04WE1QRUpLNEpt?=
 =?utf-8?B?TzYwSjFmV2tyOWFhY2xKVm9OZ1lwUVIzSUpGTkRNcGNjY2VCL3luclY3Yk9r?=
 =?utf-8?B?TVhtdjJ2VXBYUENjSnBCQ0tGdTBSZ3JwSUIxL0FGbkkzNGxvZ0QxSFVCTlBQ?=
 =?utf-8?B?eGtzRXlnTGZxQ042S1ZnY3FTWmlxMzFGd01nMnZjWFUzck5FT0QxQTNJQzJU?=
 =?utf-8?B?cDJKN3cvb2I5ZGVacVM5ZndBdi93PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0B8E8A4D4D025A49B63DD8086B0849AA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f724c7db-1549-4eb9-90d8-08de17b57c8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 13:08:57.9011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qj87m/+3J+Y9pBH+lvgr6YqYeSkeC3aeXpAs8a1jD+0IXU1nMjz+qIRmAbgQFvSZc8NswgeylmXKUsnnnXAPrX9JSRir7XPMCrEpQScZLlA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6787
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

T24gVGh1LCAyMDI1LTEwLTIzIGF0IDEwOjA3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDIzLCAyMDI1IGF0IDA3OjMxOjQwQU0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBzdGFydGVkIHNlZWluZyAiW2RybV0gKkVSUk9SKiBUaW1lZCBv
dXQgd2FpdGluZyBQU1IgaWRsZSBzdGF0ZSINCj4gPiBhZnRlcg0KPiA+IHRha2luZyBvcHRpbWl6
ZWQgZ3VhcmRiYW5kIGludG8gdXNlLiBUaGVzZSBhcmUgc2VlbiBiZWNhdXNlIFZTQw0KPiA+IFNE
UHMgYXJlDQo+ID4gc2VudCBvbiBzYW1lIGxpbmUgYXMgQVMgU0RQcyB3aGVuIEFTIFNEUCBpcyBl
bmFibGVkLiBBUyBTRFAgaXMgc2VudA0KPiA+IG9uIGxpbmUNCj4gPiBjb25maWd1cmVkIGluIEVN
UF9BU19TRFBfVEwgcmVnaXN0ZXIuIFdlIGFyZSBjb25maWd1cmluZw0KPiA+IGNydGNfc3RhdGUt
PnZyci52c3luY19zdGFydCBpbnRvIHRoYXQgcmVnaXN0ZXIuDQo+ID4gDQo+ID4gRml4IHRoaXMg
YnkgZW5zdXJpbmcgQVMgU0RQIGlzIHNlbnQgb24gbGluZSB3aGljaCBpcyB3aXRoaW4NCj4gPiBn
dWFyZGJhbmQuIEZyb20gdGhlIGJzcGVjOg0KPiA+IA0KPiA+IEVNUF9BU19TRFBfVEwgPCBTQ0wg
KyBHdWFyZGJhbmQNCj4gPiANCj4gPiB2MjogY2hlY2sgSEFTX0FTX1NEUA0KPiA+IA0KPiA+IEJz
cGVjOiA3MTE5Nw0KPiA+IEZpeGVzOiA1MmVjZDQ4YjhkM2YgKCJkcm0vaTkxNS9kcDogQWRkIGhl
bHBlciB0byBnZXQgbWluIHNkcA0KPiA+IGd1YXJkYmFuZCIpDQo+ID4gQ2M6IEFua2l0IE5hdXRp
eWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpUaGlz
IGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuIFRoYW5rIHlvdSBWaWxsZSBmb3IgY2hl
Y2tpbmcgbXkNCnBhdGNoLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gLS0t
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNiArKysr
KysrKysrKysrLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gPiBpbmRleCA0NzU1MThiNDA0OGI3Li5hMzM5MWIxNzU3MWNmIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC03MDIz
LDcgKzcwMjMsNyBAQCBpbnQgaW50ZWxfZHBfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QNCj4g
PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBzdGF0aWMN
Cj4gPiAtaW50IGludGVsX2RwX2dldF9saW5lc19mb3Jfc2RwKHUzMiB0eXBlKQ0KPiA+ICtpbnQg
aW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gPiAqY3J0Y19zdGF0ZSwgdTMyIHR5cGUpDQo+ID4gwqB7DQo+ID4gwqAJc3dpdGNoICh0eXBl
KSB7DQo+ID4gwqAJY2FzZSBEUF9TRFBfVlNDX0VYVF9WRVNBOg0KPiA+IEBAIC03MDMzLDYgKzcw
MzMsOCBAQCBpbnQgaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAodTMyIHR5cGUpDQo+ID4gwqAJ
CXJldHVybiA4Ow0KPiA+IMKgCWNhc2UgRFBfU0RQX1BQUzoNCj4gPiDCoAkJcmV0dXJuIDc7DQo+
ID4gKwljYXNlIERQX1NEUF9BREFQVElWRV9TWU5DOg0KPiA+ICsJCXJldHVybiBjcnRjX3N0YXRl
LT52cnIudnN5bmNfc3RhcnQgKyAxOw0KPiA+IMKgCWRlZmF1bHQ6DQo+ID4gwqAJCWJyZWFrOw0K
PiA+IMKgCX0NCj4gPiBAQCAtNzA0MywxNyArNzA0NSwyNSBAQCBpbnQgaW50ZWxfZHBfZ2V0X2xp
bmVzX2Zvcl9zZHAodTMyIHR5cGUpDQo+ID4gwqBpbnQgaW50ZWxfZHBfc2RwX21pbl9ndWFyZGJh
bmQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiDC
oAkJCcKgwqDCoMKgwqDCoCBib29sIGFzc3VtZV9hbGxfZW5hYmxlZCkNCj4gPiDCoHsNCj4gPiAr
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGNy
dGNfc3RhdGUpOw0KPiA+IMKgCWludCBzZHBfZ3VhcmRiYW5kID0gMDsNCj4gPiDCoA0KPiA+IMKg
CWlmIChhc3N1bWVfYWxsX2VuYWJsZWQgfHwNCj4gPiDCoAnCoMKgwqAgY3J0Y19zdGF0ZS0+aW5m
b2ZyYW1lcy5lbmFibGUgJg0KPiA+IMKgCcKgwqDCoA0KPiA+IGludGVsX2hkbWlfaW5mb2ZyYW1l
X2VuYWJsZShIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKSkNCj4gPiDCoAkJc2RwX2d1
YXJkYmFuZCA9IG1heChzZHBfZ3VhcmRiYW5kLA0KPiA+IC0JCQkJwqDCoMKgDQo+ID4gaW50ZWxf
ZHBfZ2V0X2xpbmVzX2Zvcl9zZHAoSERNSV9QQUNLRVRfVFlQRV9HQU1VVF9NRVRBREFUQSkpOw0K
PiA+ICsJCQkJwqDCoMKgDQo+ID4gaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAoY3J0Y19zdGF0
ZSwNCj4gPiArCQkJCQkJCcKgwqDCoMKgwqDCoA0KPiA+IEhETUlfUEFDS0VUX1RZUEVfR0FNVVRf
TUVUQURBVEEpKTsNCj4gPiDCoA0KPiA+IMKgCWlmIChhc3N1bWVfYWxsX2VuYWJsZWQgfHwNCj4g
PiDCoAnCoMKgwqAgY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSkNCj4gPiAtCQlz
ZHBfZ3VhcmRiYW5kID0gbWF4KHNkcF9ndWFyZGJhbmQsDQo+ID4gaW50ZWxfZHBfZ2V0X2xpbmVz
X2Zvcl9zZHAoRFBfU0RQX1BQUykpOw0KPiA+ICsJCXNkcF9ndWFyZGJhbmQgPSBtYXgoc2RwX2d1
YXJkYmFuZCwNCj4gPiArCQkJCcKgwqDCoA0KPiA+IGludGVsX2RwX2dldF9saW5lc19mb3Jfc2Rw
KGNydGNfc3RhdGUsIERQX1NEUF9QUFMpKTsNCj4gPiArDQo+ID4gKwlpZiAoKGFzc3VtZV9hbGxf
ZW5hYmxlZCAmJiBIQVNfQVNfU0RQKGRpc3BsYXkpKSB8fA0KPiA+ICsJwqDCoMKgIGNydGNfc3Rh
dGUtPmluZm9mcmFtZXMuZW5hYmxlICYNCj4gPiBpbnRlbF9oZG1pX2luZm9mcmFtZV9lbmFibGUo
RFBfU0RQX0FEQVBUSVZFX1NZTkMpKQ0KPiA+ICsJCXNkcF9ndWFyZGJhbmQgPSBtYXgoc2RwX2d1
YXJkYmFuZCwNCj4gPiArCQkJCcKgwqDCoA0KPiA+IGludGVsX2RwX2dldF9saW5lc19mb3Jfc2Rw
KGNydGNfc3RhdGUsIERQX1NEUF9BREFQVElWRV9TWU5DKSk7DQo+ID4gwqANCj4gPiDCoAlyZXR1
cm4gc2RwX2d1YXJkYmFuZDsNCj4gPiDCoH0NCj4gPiAtLSANCj4gPiAyLjQzLjANCj4gDQoNCg==
