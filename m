Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6443B3947B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 09:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FFB10E3B6;
	Thu, 28 Aug 2025 07:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ivw+ZiIl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77EC210E3B6;
 Thu, 28 Aug 2025 07:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756364467; x=1787900467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=te+S/rHBwKynGqkH6Awt+Pql/A04VKoc6LODIi0R8F4=;
 b=Ivw+ZiIlDzJpgpI02QlW4oGBhoc5DKiAeUWzGheoarCcikkYmKbnjya7
 21tESOjMSg4Lc3b7iMLv9mkeSBiayTrkWau5ud4QvX8rCSGOUeBwXfzBU
 du7Z2kZ4Uo3bwkaYi8L51+HxrpQT/r271kA08LTjRig1YA4Iqhld2r7a4
 MT8UIb/pwNwTvZiqxE0V2BHjwSUUt5T/xAZTyz18WE2LHlTRnliwIgTVk
 UBTrPLyFzAY5U/bXmkdcfUV/W6pq1wB3m2CV2e1EO5mwaTbm21ukvTXkw
 Egx0qunstPssWrQujclV+s0N+/abTgOCGkPAQBB/JHqi27zoh0lqBLSTe g==;
X-CSE-ConnectionGUID: CMInm8C+S1mcWuq2gZxqTw==
X-CSE-MsgGUID: jYnClJyVSIWojUWb5YV0Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="62268613"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="62268613"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:01:06 -0700
X-CSE-ConnectionGUID: aRG6pPznSVyl4LQmrt3aXQ==
X-CSE-MsgGUID: DrAfelefSouIGERruLN7BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="207185058"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:01:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:01:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 00:01:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.68)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:00:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KkPTwywXTRbVBibO2mB7pQDc3DjM0rtBpCkByjeR4lTeTJN/FI9EMed6OW+P9DLWTm0J5WRL8/i2euRl14+/wE1n5QVfyTTZsUksIJ/h4GKarOAFACwcWGQDIZ7Muq3o/TkQCP8emwIKM6fQcH4KxpET3uBiTRYMgA2TkKfmPseiRGI3/TFlVkNGDECPxRN0/4/aBa1tKoHtzc9WrQDiHary+1Hbi0t4TXu4Gv70mr6XJpuDCSx1mCTCJN52RBOURHPlHoEIImsMXUIb73aXuUjEYINBA7wEhSfPW2Fcg0DBusSc9sWqe0xC8/QWh14u4sNIMtn7Cjm+LfVMwwWq9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=te+S/rHBwKynGqkH6Awt+Pql/A04VKoc6LODIi0R8F4=;
 b=a8h9HbB8Ml3PQniIW2kk24QmyEqJxwO5ZJwDOfrlIF/sRe8zR4xzR4L3Jonhct+sfy4fBABlWm9aFl9TBFUOW7DJaouGfFt0M2d2LJPni1pFFPsngC04D5TbYgPiAkfiKkapHbx7a1ajpX3I95UnE+EMtfK650GN4s0xb5hliJiA/q28DrHhqWr772asPvqx16XZYD2Vwagw++SOGgPtbajtDt/00NuJ57L4eFuYb1xusx0drdgcr+jmP/0yMVD7g8d/KILHsdKIt5VMOqMd4XtzeCmxf1OzfReMDPdfg8ay/w/VE4jDgsczAZfg4ammCwFjsm80y9qADREWAcatcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SJ0PR11MB6743.namprd11.prod.outlook.com (2603:10b6:a03:47c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 07:00:24 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 07:00:23 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/4] drm/i915/alpm: Add own define for LFPS count
Thread-Topic: [PATCH 2/4] drm/i915/alpm: Add own define for LFPS count
Thread-Index: AQHcDCD0g0mqJ1QY70Gej8hNJnWOgrR3umBw
Date: Thu, 28 Aug 2025 07:00:23 +0000
Message-ID: <DS0PR11MB8049F7F387873AE521BA7849F93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
 <20250813070617.480793-3-jouni.hogander@intel.com>
In-Reply-To: <20250813070617.480793-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SJ0PR11MB6743:EE_
x-ms-office365-filtering-correlation-id: 3253e727-e535-4de8-2726-08dde6008f6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?N2FMWG92RjduNTRTMExlYnVjYWdsZmRiTnFNVmdrdFg5WEQxRW0zd2QxREJL?=
 =?utf-8?B?cmFEanIzbVN4Z3p2TVB2QUVNQUFjaFlOWkx5Z1N3YU1LNndFWGY0aXp1U3gy?=
 =?utf-8?B?aFc3eU1QSXkvaHNvcDhnb1FWNVhyN3pIVnlkNWkrS1BoUmRnRk8zRlRkRDM3?=
 =?utf-8?B?alFSeDF2cEtHMm0yaWhMQUFWVGg5aG4zcXFYTzBsVldGdjdDNk1qVXVwTTRh?=
 =?utf-8?B?UEx5Z3R0c3YwejRxOUc0RlpJMXJzdTRWN1UzcmVZK1hickhaZkJNSk93cWt6?=
 =?utf-8?B?ZXdOUUg0NmJNTEU1aUN6ckU2OFg1S3BmN1puUFJSOXgrYndOTHNCUkltTk9I?=
 =?utf-8?B?dGVVMmY2d0w0OVFOM3luSGZQblVuSEJWdWF4N3VheENpUnZXOUdNODBmc29S?=
 =?utf-8?B?alRObmVnT2kvVEtNLy9yOE96WXI0Z0t2VUlwYkx6d3FsSm9FVmV1U0dSMzVu?=
 =?utf-8?B?WVFRQVdMR3B6OVZDNllVMVhQdTIxSDdBcmRsTXpnVzhPY1dvb1dSdjQ3NkVu?=
 =?utf-8?B?SEgvOWwrNkVBTHFuS3ZXYjJSYUR2OE5ndmZXMTZ2eTRyMXg5Q1B0dDZWNmZW?=
 =?utf-8?B?U2dPaXUyOU5YaHpLU0tXTmg2RXdvWHNjb2pFMkRkRWxCWUV0dkRNY01hMnFH?=
 =?utf-8?B?dzRDbWJGbFJFR1AwSFZlZ2JtYlRYUHlrc0Z4Y1Z2SDNIcXJSREdEcXV5TUFt?=
 =?utf-8?B?WGp0WFVIUnJhNXZ0d2RJRzdURWJJdGFqRzlsNXF6WmNtZlE5Tjh0VEx1VWJ2?=
 =?utf-8?B?V0VBSmo0SDVKRnRvY1IxS1lxc0tWTjc2d1pTZE9ySENGT0xsaC9PNzBqcnhp?=
 =?utf-8?B?VUhMeU9mckYzUzg1MEIzbmhVWW94Z1FYMHE4TnN3NDJwSEZMVXhRdXFtTE44?=
 =?utf-8?B?Q2JabDA0dG5RTGpneXlXckNTMjlmOTZURUVkWHMwUUdlVlhPeU1lc29CQnhk?=
 =?utf-8?B?T3ZQcFcyenY4cy92eXF3alRLMGpVanBPZ29qbW5HR2djdk5FY09IL2hqb2Rj?=
 =?utf-8?B?c0JyeFQyekhuOUVKWE4ybTQ3UFdtSTJDb1BoOTNoWlhObW03YUhONkJ6RjFk?=
 =?utf-8?B?WUoyTzArYm9QWm1zYnEyUUhmNXp3K2tsSVMxeGdyZnFPbkVaUmxiWm5FOGhB?=
 =?utf-8?B?ZVNGMTNVUEprTFR4a1FoNnhHUXNjakNNckNreWNXYjJoNXBFVVNmL3J1Y2Ux?=
 =?utf-8?B?VjFkaGxkU0pFcDVTZTNrVytnTHc2TXVVaVFuUEU3SExMNTZZR0RCcW9MWEdB?=
 =?utf-8?B?TzAzSm9ScnFOSmlJNGtSQ2kxVUY3TXFGSVRRcUR0T09HZlp0RUxWZ0JNTitF?=
 =?utf-8?B?R3o1dmtobzFrTEFZUE1jbkpLdTEyNGhCdGJrbFlCeXcyWk9wVEpCODJGT0c2?=
 =?utf-8?B?bGFFRmEvTjRDQ3U0bU9JVjZ1OHRxWWFnb0dTYzUxd0FuVWN6TUNFVVZuYWJG?=
 =?utf-8?B?RTNHZE5kSytZd3JRTkN2WC9wdjhwWExXVXRXanBhMDZvdGtkT0dxU2dyWVFz?=
 =?utf-8?B?ZVlBdExMQlVEdGdFcmIwcFBneWhlWXFSMlpCVXRWRmxaUjhBOFdrRmZDWktV?=
 =?utf-8?B?WCtlUm1nK3BYdkFXbzZhWW8xRnBDWGZJcjNmMzFDWlQxVG1mek9yVktWQVVu?=
 =?utf-8?B?OUlkUjhWcUV2bTBmdjl6eUpxc3ZGM3ZOeUxRK2dDRkc1aDBQZzN2aTk0N3ox?=
 =?utf-8?B?emgvampYMSt2L0h0aGh6NlB6T2VoMjVXc1VhRzJ5bVBTeG1vQi9PWDQyYTVX?=
 =?utf-8?B?TjZ6bG1iMVhCaGszSWpPbXp4VFpwVDlsS1UwQnBsdktYclVSOTdlL0M3NzZi?=
 =?utf-8?B?bjB6VW9wV1R1VWJrbWUxckpLU3FhK0praS81a2xIYzVCOVlXemVISGpKSEJH?=
 =?utf-8?B?Z2JmUTVQL3NJdlN1YnN6eEhYajZPeGlSUnZ4YjBJT09CRWNjZlBHcW40UUFR?=
 =?utf-8?B?c3piOGZRTlYrVVJHNTJLcnVHVXRSWDdRMlhUbWo2TnYvTm5Falp6RWRkakNN?=
 =?utf-8?Q?2t3E0k/tGkM/4wdT5oY1x6gXOhNoDs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHkzWHE3K3FYZ1N3M0xxTDZWK3JSb0FkZmY3NWtwanJVMXB2NVovZFA3Ukpk?=
 =?utf-8?B?dVJ4L2s0aFVrOWN6NTdxTmsvR05lVkdGK05jVkRRcG5kd2xpYnRCMTBzQXds?=
 =?utf-8?B?Qk0wTi9XOG1lSDEyNUZKUjNKUlRtYm52Mks0Z3QwbldNUGk2V200VWZqVlEx?=
 =?utf-8?B?VUdYTWhiZzl3T1ZIaWlGQ3VBdDhRMEJNRXdsUC85YnlRYkRiVEZiZXF0alhx?=
 =?utf-8?B?MUM0SDdxaElmeVF0aGhxcHREMlB0RmVNcEExYlQwUml1akJ1NEkrN1B0dVc0?=
 =?utf-8?B?QlB6WlBOb253NHAwSmUydnh4N3J6OEVsSHVKOXF3TjZXQytuSjVEeC9GbDUw?=
 =?utf-8?B?QXZ4VGI1SVppNlFHT3ZHRnZsWWx2cG1lUEVSbUFSNkd3NDRXWlM3aFFDYVpt?=
 =?utf-8?B?dTh2WEMyUEZJK3lCVmNKNlAzUzNLYmIvdHFBSEErZnR0aXNWVnVPcjIzaXla?=
 =?utf-8?B?VkpBOXJxcHVlc2xlekU0NWl4Qm9SVk5NTUZCUmpabjhvTDdabFlJR2Q2N3M0?=
 =?utf-8?B?amlYZGpLb1RNWDI3Rk1wSDhxdVJIUldnd2cxSUpVdzRWenp6L3NPY3d0SVNP?=
 =?utf-8?B?WmZzUVFETHRkMnhiS3haK1dFVFNoUnVkTTY0Smw1T1F0dEozaUhmLzBuQi9V?=
 =?utf-8?B?bysxZDlNVGNKcStscHFjNlpEbC8zWkVEQWlraVhqZ3M3Y0N5bU5DWmJYSmFC?=
 =?utf-8?B?dlFXSHhzaFhQRmp2WFhEWUN0K01BTm9pbDBTUzI0REtFS1psQTlZQThiRmN1?=
 =?utf-8?B?U0c2cC9hQUZ5SWh0L1NTMysxWVJZNFhHMGpSdm43ZEMvcnExelNxRmZVRlM1?=
 =?utf-8?B?dEltUWxiM2pCejgrN0tKUmdTMThZZnVJMStFckltc3IyTjJHVlRHVEs1NFdH?=
 =?utf-8?B?T0pQVk9tZExsVXFKelpLSlBMTlNFZlIydVdCbDBrQlJMc1ZkWkpvRzZZeGJK?=
 =?utf-8?B?Tmh3ZTJsNXRUTDJrak1Xd2F5OUxOcG5WV0RIMVkzRHJPdUk3SllQdGdDSGhn?=
 =?utf-8?B?QlFXSnEzTVRCU2RCT2tYdHF5T05JV1Y3ODVreThTZWZSRDhTbEoxOURkMUkv?=
 =?utf-8?B?bStXODdPNi8wV1dIckZtNkRmVzRhQVdLNnZRVjZKdzU4RVRVQ2lveFBIVlRS?=
 =?utf-8?B?VDBkK2lKOHRrK2crcTM0TUlTYUdpNWxDS2VwNmVkQkdqUktMYnhBWFpPVkR1?=
 =?utf-8?B?dllHdEZHWSsxRm9FUWs0dDg2dVBPb2l2R3JwQnVZWUhHTGZFSXNPSHAvUWw3?=
 =?utf-8?B?YWlpK0pKTWUyamk4VjBDT3BCRXNRSWE2Nk9NUndoMS9LTlZPVXU3UVFBdXlM?=
 =?utf-8?B?ZVBIRG5qWnVwN2xSNkNzWWlVNWhMeXRDREdoM1NmMDJDZGVVWEx1WElhSTZW?=
 =?utf-8?B?eEJTMzc1ZVF6dVorUFZHSWg0Rlg5RW1lUmUydThXY0xRaWVicXZ4NmZiVXFo?=
 =?utf-8?B?MGtlM01FaVNCa3VGbDBHKzdYVGpwa2kzZ0JySXI4cUJpbDBWTkh5aTQ3Z0l1?=
 =?utf-8?B?VUVrRTAwVjM0SG9jM2VKZ2MyUmFxNFM2THVaUzdLZFIzQUdMRjdYRFY0T0ZI?=
 =?utf-8?B?RzZmVHM0ZXRDSkVQcm5IVU1rVTh6d0sxSVBxT0JiOTZNOC9OZ01RTWI5NUwz?=
 =?utf-8?B?RUlFSVdROWZ0M0VxWmxyb2pPSWEvTXpXWlFsYzl2UTBLaTRPNXhQSklrM2po?=
 =?utf-8?B?bmJLSVJKdWlTcExoSTZxRUxHSmhWK2piWmw4ZDNaSk1JbHFiaC9hcDRsSS90?=
 =?utf-8?B?K0huNTl1WStFNVdTbGQ4enJoZisvMmx4aHcySDROWjlUOFlZOHBHZzV4L3J0?=
 =?utf-8?B?eTh1K2x1cjFPZFJYbDBBaElFZEViSlBRMStYSjJsTmpoY3puemFsclZ0aE1u?=
 =?utf-8?B?TmpnTDZ3WTZhL00vNE53RWcxMEVIbmN4QUc2aXJTMDFTalhybi9ZWURIMy9w?=
 =?utf-8?B?aWVXZ1Z1ZzBrV3M5eW1CdjgyNmMvdEdrQllLd1U2WXpBL3A0VmRzZzMvMTlv?=
 =?utf-8?B?bklFN3FQOGNaS3BVMGYzVlB2K1gvMmJrT1EvMkwyb2NkdGFPUUFuODFKb0Iw?=
 =?utf-8?B?UTh5c1BwTEFSV25GVXRuQnJCa0M5NVcrK2luSWhZRFRYSXIycEhzYzB2VStD?=
 =?utf-8?Q?11E1dTmf4x1W/Gbwi4Bv3E/up?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3253e727-e535-4de8-2726-08dde6008f6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 07:00:23.6994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EE18gq325/Lb6AXzuYkAWaf3q8EBaCfi+pPdUib6+Cu1Cu3r4CtEzbRfadOkE/lNC7P3B9kaAo8o/yQSj++vDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6743
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMTMsIDIwMjUgMTI6MzYgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAyLzRdIGRybS9pOTE1L2FscG06IEFkZCBvd24gZGVm
aW5lIGZvciBMRlBTIGNvdW50DQo+IA0KPiBBZGQgb3duIGRlZmluZSBmb3IgTEZQUyBjb3VudCBh
bmQgdXNlIGl0IGZvciB0aGUgY29uZmlndXJhdGlvbi4gVGhpcyBuZXcNCj4gZGVmaW5lIHdpbGwg
YmUgdXNlZCBmb3IgY2FsY3VsYXRpbmcgQUxQTSBwYXJhbWV0ZXJzIGFzIHdlbGwuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jIHwgNCArKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiBpbmRleCBlNDhhNDIxOGMxNjMuLmFlNTU2YTg4NWMyYSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTIyLDYgKzIyLDggQEANCj4g
IAkJCQkoU0lMRU5DRV9QRVJJT0RfTUFYX1RJTUUgLQlcDQo+ICAJCQkJIFNJTEVOQ0VfUEVSSU9E
X01JTl9USU1FKSAvIDIpDQo+IA0KPiArI2RlZmluZSBMRlBTX0NZQ0xFX0NPVU5UIDEwDQo+ICsN
Cj4gIGJvb2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkgIHsNCj4gIAlyZXR1cm4gaW50ZWxfZHAtPmFscG1fZHBjZCAmIERQX0FMUE1fQ0FQ
OyBAQCAtNDAzLDcgKzQwNSw3DQo+IEBAIHZvaWQgaW50ZWxfYWxwbV9wb3J0X2NvbmZpZ3VyZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJUE9SVF9BTFBNX0NUTF9NQVhfUEhZX1NX
SU5HX0hPTEQoMCkgfA0KPiAgCQkJUE9SVF9BTFBNX0NUTF9TSUxFTkNFX1BFUklPRCgNCj4gIAkJ
CQlpbnRlbF9kcC0NCj4gPmFscG1fcGFyYW1ldGVycy5zaWxlbmNlX3BlcmlvZF9zeW1fY2xvY2tz
KTsNCj4gLQkJbGZwc19jdGxfdmFsID0gUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfQ1lDTEVfQ09V
TlQoMTApDQo+IHwNCj4gKwkJbGZwc19jdGxfdmFsID0NCj4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xG
UFNfQ1lDTEVfQ09VTlQoTEZQU19DWUNMRV9DT1VOVCkNCj4gK3wNCj4gDQo+IAlQT1JUX0FMUE1f
TEZQU19DVExfTEZQU19IQUxGX0NZQ0xFX0RVUkFUSU9OKA0KPiAgCQkJCWludGVsX2RwLQ0KPiA+
YWxwbV9wYXJhbWV0ZXJzLmxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltcykgfA0KPiANCj4gCVBP
UlRfQUxQTV9MRlBTX0NUTF9GSVJTVF9MRlBTX0hBTEZfQ1lDTEVfRFVSQVRJT04oDQo+IC0tDQo+
IDIuNDMuMA0KDQo=
