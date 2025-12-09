Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF252CAFCAB
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E99610E531;
	Tue,  9 Dec 2025 11:38:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIrZyk6o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F053310E531;
 Tue,  9 Dec 2025 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765280280; x=1796816280;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nsdySueUi7lyGVXmkCBe8Akx0p4CrGiZmQns7wZK6R0=;
 b=SIrZyk6oYgM2V2dRfikjFYFxv2rJzqw1Qx0WIDv0vJQmD8s4aGETMEIe
 ZovD9pdgO2OVVx8I9zVPVGNa3SxpECfzFhrt34KG34fOUuAzBUVcz3g8j
 mFwAjq45SayvQG2Mn4UkVjUGgP6726o9mKhapZ3aqDOe0AlK8MCyZ6xdJ
 vJznPm40HPyydI3eR5XNwQHEDG1MSzzei+YIzaSC9Uxp4600p/NWzgDqc
 Zx2ifTwxV2VMeo3uITY56duMzVFgTt/+FJ8K/3jmFJ7du5M2EoxH3w73b
 G5cdlF8myX8/ws2Frp3ZLooWo6/qv/DZGqE4r37SJHf91Ec+UpN3IYEIM g==;
X-CSE-ConnectionGUID: 30ZVVBWyROatVEuxKKZa4g==
X-CSE-MsgGUID: ob+fYh8cTaanReUl8iqVVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78595366"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78595366"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:37:59 -0800
X-CSE-ConnectionGUID: 2pHJo48jR9OiMDfrHWLkuw==
X-CSE-MsgGUID: 5B2jXsc3QmaXM/0I2SOfWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201313709"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:37:59 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 03:37:59 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 03:37:59 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 03:37:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VW+qOwDNv7OvH6PgxWuC7T1yz69hCB47I63WHAQGq59wgqo/Vxc3udrHoiAdBTlJ25ACGcUe/YmdibgrhFGmMtVcMvq4OwNqc/pUzZ07YOUeDGpYaAOuuUYrkV29DMxV2rVIlf0rlw8g0UqyMLFw4KpHbHhKlbAj9tv0qFN1wDHGe900ctLqwHGutMrcvLbFOfcJT5PE/OU2aCfxUoTpP1S7vUWHJ9+U2RCzXIVbGkEDO93tImeq6Y3NOHcB0cFKJu4oO2xjabLdCnJIAdOT2vS0xoc+mMHPP+j4PslwSNTMk4fFsJvc1hAcJUJN/gX1c8aimeEb9HxOu+dIFZbhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nsdySueUi7lyGVXmkCBe8Akx0p4CrGiZmQns7wZK6R0=;
 b=EbVl+dDQKPSpI+Rb1E4tF77TMejuY46QO7gmY+kJzImBtBRCRjDn7Ya68jpKnN2RbXf6siTZxM5hCEBzDGMT+PMFmWeE2f1Lqxu5HuMD1JqO0yeBM6VwSYBLmIZ7EWpq35z6QqEUV9skkBwQDT1v1GyNr/7w9lA+P5k8nyCe0XEnBUphN6bcTBYL/g5ApESkFPLlVvDJ1qxNzmK8gcHoe6VYVoiZO9RuZVFDGKYd1XAz+o3oAxKa0yPu+WMqyGNcEta06L3iYWBQ2DmzO9zM6Zj6ECyXo0LhT1YgP+NR3k4wsG0N7BaWjexP3yN6nAKiOhhLly+JQWmFdgVJdMEBug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4911.namprd11.prod.outlook.com (2603:10b6:a03:2ad::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Tue, 9 Dec
 2025 11:37:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 11:37:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 38/50] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Thread-Topic: [PATCH 38/50] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Thread-Index: AQHcX9szI6b4Jww7+kC80UqxF0B6lbUZETYAgAAfCYCAABCIgA==
Date: Tue, 9 Dec 2025 11:37:50 +0000
Message-ID: <7513da373de34c29d4d2bd10eee6414ebe4fc457.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-39-imre.deak@intel.com>
 <159d7d279c48cc07847b03e3466e78976dc3d086.camel@intel.com>
 <aTf8L_RcUICgHnPZ@ideak-desk>
In-Reply-To: <aTf8L_RcUICgHnPZ@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4911:EE_
x-ms-office365-filtering-correlation-id: ecf4b184-c5ab-451c-61c1-08de37176286
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VXordURPVVAvWEl5YTJ6SVE0RXRPSWVGN2sycTJxeiswaGVXelhFWFlsUlc4?=
 =?utf-8?B?dkJXVkxlT1lyWWZMRXp3eEIzcGFzMzJUVmF0clp6WVRQVG5SMk1MSHNPZkNJ?=
 =?utf-8?B?cGpBdzFsSEZBNFgxanV0dG5SVDQ5ODI0WlV2c0N5dGxuT3Z6Zk1OVXArV2ZW?=
 =?utf-8?B?bERtN3NTSUcvczhkTUR3TElwUHNQZWhKanZ2bkprb0VWRzZDNHlESGEzMWVD?=
 =?utf-8?B?TlZ6Qk1VQi9rVUJoUFp6Vm1aMmpsczJFbllsZmsxV3lWL3BDamlDTDFJZldY?=
 =?utf-8?B?NXlVOEN0MEtrM3NNWnY2TDdhelBoR1RPUjJJUGJHTFoyNmxjdVJ4TUsxRmpt?=
 =?utf-8?B?Z0NPVTBpbzYzWExhcVBFU24vbWtYSkRyeC9KODk5ZlE4eGo3WW1vNTJXUDFW?=
 =?utf-8?B?bWdYc0xaWlRWdDgyY3Q0STRFVnFWZ1NFeHpsUEl4dUk1UFRIeGY1T0gzK0k3?=
 =?utf-8?B?THdyK2pXL0lrYk1tVnZnQzdROThva2x6U3pxaURlNTVCakNXdEdZR1ZLWEJE?=
 =?utf-8?B?VVcrQjhTc2hHV2R6c3EyM3MxOGV1eEk4MGVtVktXSDkyTjEyR09SM2NhNHda?=
 =?utf-8?B?eGFQN1FQQyszNk1uMFN3N1NTTDNzczVvdXd4b2s4Mnd4cjQwUkdlM2dqdDB1?=
 =?utf-8?B?d0h0ZnV5YzZPRGlUT0dHVjRzMnIvY2crNWJlNlp1OU4zTC9BQ2xIWlFtYm1v?=
 =?utf-8?B?bnVRQzlOcWRIWlNDYlI1MWpaZTMrQ2ltRFY3TWFqMzZUOU1tcnpUa3FjQW1r?=
 =?utf-8?B?N2FuTFhhZithR2xhUGFaWXo4SlA4cW9FMkxveVVNSWZwR3o5K0RJWFo2MGNO?=
 =?utf-8?B?WG5CRVpOYjVROHZId3VjTFBDQUFJYkIrZk9reU9KdVB4dWRBTkpUdzYyYi9s?=
 =?utf-8?B?bkk4UEFHVG1nNVFLaERmZ1JOSmgyMWRDWXRUanMxRGFhQTlEei96LzkrTHpT?=
 =?utf-8?B?cnN4Y2dlUkc5eWNNMmdYb3RJU29YRFM4TUp6U0lPRnFTaFozOXJLQWg5SmdE?=
 =?utf-8?B?MlBQMXR6ZklmbHJLZ1NsRnlTaXgzZjl2dmFUUnhOeFZsbzA4WTEyM1JEK1l2?=
 =?utf-8?B?ZHJtcklPQVJFUFpidUEyZldPeWZsc2pBZEJ3cS96aE82MEdCbnk1MEdNTG1m?=
 =?utf-8?B?V094Ni9rMDZYM01KODcxTVpVLzRYRkp4UVRoNHU4SWRqdGFtblF6ZkZjOHBN?=
 =?utf-8?B?blpITGhRMStyNUdPanVqTHJ3R2JUTmRGblpFS1ErcGptMWh1N2tQRFMrVWwx?=
 =?utf-8?B?WGhEWVZJUlo0M0gwYlhWc3dENWduS0pqdytBelNOR1ptTjFVZTNMdzc0ZUxR?=
 =?utf-8?B?UmVnaTkreU5nSXNzTUZtczZscGtPUTRrQUNLMnZlcVVOcGxrLzJlYVlnSUlr?=
 =?utf-8?B?akswV3Q2ZVRVYTYrZHM2Vy9PY3h0Q3k3Qlg2L3AyeGUwWjVtckR4K1R5T0hW?=
 =?utf-8?B?NS85dWN4WStEeHpkS0hLOHZOVXRiWEgySDJISlNxOHk2QWttT1hja1FLNWdU?=
 =?utf-8?B?bkF0TDVHQ0o1ckJyZkxaRVVEd1p3a0tUTWhEUkNoRW80VU4yaGlYaEp6SXZ1?=
 =?utf-8?B?UEk1UXhGdHZVRmQwOW5zYkJHWW54b0ZzamJpODFZellSNXJwa1lQamFPNlFi?=
 =?utf-8?B?ODNBZUd4aS8wdkl1TndYcEQ5em5abzZDV3laWFNSNzVaLzFnVzBWQlpYajBF?=
 =?utf-8?B?cVFOT2ZpdEhHbng2TDdUdjBSRHE1TU9JK05LSUQxVlNscXV2VEVocys4VUZY?=
 =?utf-8?B?dENrMmFqWkpiOHozZzN6aTE3dlg2ckluVlZiSDBKbkhXQURnUGprQkJSWVlE?=
 =?utf-8?B?cVRhU1lTeVg3NVpZb01rZnZkSHl6OEFRUHNnT09pdTkrNnVISGVVbk5aV2c3?=
 =?utf-8?B?Q2hjcWRxSk9oT1JKcnp3ekl3d1NNMjNRREFsazUwN1l2M1ppdmVWNVc3Nm1D?=
 =?utf-8?B?YVRLZ3E0NjczZStvVHFWYnJLY3hPSHR0MVZ5OThvdnJKTXl1V3RqMzBoQ3JV?=
 =?utf-8?B?V094ckk5N0w3d2hGcXZNa3ljVU9nN1NKSStWSzJiK1dwdmZlK2lpM3c5Mmtj?=
 =?utf-8?Q?Ot9rxF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2xDbElLQTlwekh3WmtGODJyUmpkd1F4bFJmTnR3dU84ejJ2M2ZJZUF6Y1NT?=
 =?utf-8?B?SC81WmNuSTJ1Sm1XZVk4M1FvVEQ4akcvZTRJMzFsZDM0NXlyVldMWXhkY08y?=
 =?utf-8?B?R0xvb1pEeWR1SGJnb3JNU0pRcTdrNHE5S0VCYk1VODg4Y3llMHdYSXZpZjEx?=
 =?utf-8?B?Zlp6Wmk0VlFPUmNRNE1JMUdoZHZuMDNxSmlFNnA5WGx6SUVhWWpaMHR4MmtF?=
 =?utf-8?B?ZmNjVkhSMVk4cUZpTmFuZ1UxYllJOGxYNzBHYjQvay9qUGNNdDVvMUFvMnhW?=
 =?utf-8?B?dXdlam9xN3VDSTBSa0dRYitCc0M5TUU4elBnTGxRKzkvN3ozMDl1RE1Maysy?=
 =?utf-8?B?d0FjSFIzVjU1dnF3WWhmNUIyZWw0V3FSTVQwWGM2WmNzeVN6ZWNqdU84OXI5?=
 =?utf-8?B?TVg2dWdoYUpBVk9TWmFUcDBkTDJrKy9xamZ0WSs0S0FOMkhwZXk3S3JkcW0y?=
 =?utf-8?B?QXgyV2JuTU9NQ1VKR1hNT1FkYzEzeWROcERNL3pjQmFtaC93bFdyWGNtV3hO?=
 =?utf-8?B?SGJrM21vRVFlQ09wWlpwYUQ2NWhNM2Jsdm5xTS94alBmN0p0VXhObnRIb0V1?=
 =?utf-8?B?d0MxbklTaHhscStOc0g4TTVEbi9nSkgyNTZ2MWwzVlAvMGRHb0gyb1Y4M0FP?=
 =?utf-8?B?SVg3ejRkWlhySWpFNi9ncWQ0MzcxWDFWSW5uNk53Rld2RVRoK0h6Z2dSYy9E?=
 =?utf-8?B?eXMwbWxWc0VoUVJBRzJMZXhpZU42UTlnNW1aekpkUkVLek92cW5YZGhvL0V3?=
 =?utf-8?B?cmxmSW84cGYxVzJ6L08wc0FaRUdWVHdmWk9hQmp4a0dNeWxJRjdXcGQ4SCtE?=
 =?utf-8?B?dlg2V0pST2U5NmxWQW5BREJDc29VczZCQk1YMXpJOGNyL1Ixemh0aEgvdURN?=
 =?utf-8?B?V3JJMm9HQUF6SGdUbTV2QnpwVldsUnNoanNjQUpubXVCYUhqb3krcmpQektQ?=
 =?utf-8?B?MWcvbXFuQnFnVktCWFVVQzFpYnpXQy9nR3lkRGdGa0RuME55emdDTlNreXN2?=
 =?utf-8?B?R1A5U1NORTBWRFM1L2pTNXo0bzI0djBsNHJTcUZsOTdlWjcvb0M5Q1hWMkJh?=
 =?utf-8?B?cjM2dTNMc1JtODVNNVVETU9sTDIxR0c5aTV0VytUQlM3bndMbTZDUFJVaXZ2?=
 =?utf-8?B?YTJ3UlpNUHkwZy9kdXBZN2pqNEx6d1hsZ1FLNzR6Rmx3NUlSeFRZMkNkMWcv?=
 =?utf-8?B?SEdOcVZqNHVYUzlRSWdVT093cENiaWJmdUtDWlBjbkQ2a3Zqdkg2YTVPMUxl?=
 =?utf-8?B?aXF1TFhuOS96V2VnUndEcEU5K1p4cWZQQWtMRk1vYis1cTRwQU9oclVUa0lz?=
 =?utf-8?B?d05CYm5icHord0RYdEpGWGN6d0oxcHdkZkd0K09VNE9CZTU5b25GejdVOGNo?=
 =?utf-8?B?ZThsQVRCbG5mdWNRb2F2dTNJanAvRTZnMnRZMFR1bFIwS2k2V2Z6UHBGTWRH?=
 =?utf-8?B?R2Z2SUFLQ0pqLzRGV3pjY1FweUtzcHNKZzREWmQ5YWRiYTMwK2pUdllKcGZC?=
 =?utf-8?B?TWNkamJsUklqZWNid1ZTNlAvNDl6c1BHYW5FVDdFTUlPZm56QXlBU29pcGp0?=
 =?utf-8?B?NFNpcm40Mm9lQUhFYlI1YUZ4eVZLS3NHUDZRMVdmbzVQMmd3c0dvRkVzbmk4?=
 =?utf-8?B?VkZVTit2UGQ4dXZNSlhSdmhuWUZtKzR5aTEwbUVyMFlscUdOeUorcDhVamZw?=
 =?utf-8?B?bWpEa1VMVDVFbHdEQWozeWRCMlBHK3ZlOE41NlI3Q3lEQmlaQTRHbllEUTMx?=
 =?utf-8?B?QnBFdG5wRTJLYWVUV2xselZYU3p0dUQxUmdpWmZxUUhFdUh6c2dYeG5POC9J?=
 =?utf-8?B?VWZIT0tJVXpDV1lPakpBZXp3RGpJSnVHNEhBNTFYV1UwYkFjRTZOTHVpZXlR?=
 =?utf-8?B?OUZ5SUZJRVBhd01MTnBSVGYyaTNpRFNVbStxRUdtc1RWOHFKZGR5SDM0c2Fl?=
 =?utf-8?B?RjFWYTNGbkFFKzdBN0hUUGRrTThTTXJiQmNjUkJXYWl0Nnd0QytEMWRjZE4x?=
 =?utf-8?B?bE1uZSt6ZVJvVmlnTTV6cHpvWE8xQ3VQbHBwOGFaWTV6QVM3ZXI5eGxjYjRk?=
 =?utf-8?B?dHFBMlljQmlILzZqRFZ4OCtzcFlUMkl3TVpCUE5SQWJibTlubXpJRmplb1lE?=
 =?utf-8?B?WGh4OU5zSFR3R1VkdmZUNmdIRzljSU8xUlkxamg0SkFYak1zMGdrWG9YYXJi?=
 =?utf-8?B?dExaQU5jc2JZN2VSTk9hNGV3R2FZL3ZqU3poMFdZQWdTYTQ3akl0V3oyZUhs?=
 =?utf-8?B?eEQ3MUl2dEFhRnBLSXZQU0hjRThRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A59F91FF9E00D04D85488AC662B47CC2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecf4b184-c5ab-451c-61c1-08de37176286
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 11:37:50.9665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SR6CL2qPj0NJlAHWQtU+NnFyfckN7EC1D8I+zGOckgpLNe7tfEDnQrnZJp9RlHiWayLt+6JVaGUQB7SbgYc6nN6TKQnmTBfvxbFxRdebOmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4911
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

T24gVHVlLCAyMDI1LTEyLTA5IGF0IDEyOjM4ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgRGVjIDA5LCAyMDI1IGF0IDEwOjQ3OjM1QU0gKzAyMDAsIEpvdW5pIEhvZ2FuZGVyIHdy
b3RlOg0KPiA+IE9uIFRodSwgMjAyNS0xMS0yNyBhdCAxOTo1MCArMDIwMCwgSW1yZSBEZWFrIHdy
b3RlOg0KPiA+ID4gTW92ZSB0aGUgaW5pdGlhbGl6YXRpb24gb2YgdGhlIERTSSBEU0Mgc3RyZWFt
cy1wZXItcGlwZSB2YWx1ZSB0bw0KPiA+ID4gZmlsbF9kc2MoKSBuZXh0IHRvIHdoZXJlIHRoZSBj
b3JyZXNwb25kaW5nIChwZXItbGluZSkgc2xpY2VfY291bnQNCj4gPiA+IHZhbHVlDQo+ID4gPiBp
cyBpbml0aWFsaXplZC4gVGhpcyBhbGxvd3MgY29udmVydGluZyB0aGUgaW5pdGlhbGl6YXRpb24g
dG8gdXNlDQo+ID4gPiB0aGUNCj4gPiA+IGRldGFpbGVkIHNsaWNlIGNvbmZpZ3VyYXRpb24gc3Rh
dGUgaW4gZm9sbG93LXVwIGNoYW5nZXMuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuY8KgwqDCoCB8IDYgLS0tLS0tDQo+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgNSArKysrKw0KPiA+
ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4g
PiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNs
X2RzaS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+
ID4gPiBpbmRleCA5MDA3NjgzOWU3MTUyLi45YWJhM2Q4MTNkYWFlIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+ID4gPiBAQCAtMTYyNCwxMiAr
MTYyNCw2IEBAIHN0YXRpYyBpbnQNCj4gPiA+IGdlbjExX2RzaV9kc2NfY29tcHV0ZV9jb25maWco
c3RydWN0DQo+ID4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gwqAJaWYgKGNydGNf
c3RhdGUtPnBpcGVfYnBwIDwgOCAqIDMpDQo+ID4gPiDCoAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4g
PiDCoA0KPiA+ID4gLQkvKiBGSVhNRTogc3BsaXQgb25seSB3aGVuIG5lY2Vzc2FyeSAqLw0KPiA+
ID4gLQlpZiAoY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvdW50ID4gMSkNCj4gPiA+IC0JCWNydGNf
c3RhdGUtPmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9DQo+ID4gPiAyOw0KPiA+
ID4gLQllbHNlDQo+ID4gPiAtCQljcnRjX3N0YXRlLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNf
cGVyX3BpcGUgPQ0KPiA+ID4gMTsNCj4gPiA+IC0NCj4gPiA+IMKgCS8qIEZJWE1FOiBpbml0aWFs
aXplIGZyb20gVkJUICovDQo+ID4gPiDCoAl2ZHNjX2NmZy0+cmNfbW9kZWxfc2l6ZSA9IERTQ19S
Q19NT0RFTF9TSVpFX0NPTlNUOw0KPiA+ID4gwqANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+ID4gaW5kZXggYTYzOWM1ZWIzMjQ1OS4u
ZTY5ZmFjNGY1YmRmZSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYw0KPiA+ID4gQEAgLTM1MTYsMTAgKzM1MTYsMTQgQEAgc3RhdGljIHZv
aWQgZmlsbF9kc2Moc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0K
PiA+ID4gwqAJICogdGhyb3VnaHB1dCBldGMuIGludG8gYWNjb3VudC4NCj4gPiA+IMKgCSAqDQo+
ID4gPiDCoAkgKiBBbHNvLCBwZXIgc3BlYyBEU0kgc3VwcG9ydHMgMSwgMiwgMyBvciA0IGhvcml6
b250YWwNCj4gPiA+IHNsaWNlcy4NCj4gPiA+ICsJICoNCj4gPiA+ICsJICogRklYTUU6IHNwbGl0
IG9ubHkgd2hlbiBuZWNlc3NhcnkNCj4gPiA+IMKgCSAqLw0KPiA+ID4gwqAJaWYgKGRzYy0+c2xp
Y2VzX3Blcl9saW5lICYgQklUKDIpKSB7DQo+ID4gPiArCQljcnRjX3N0YXRlLT5kc2Muc2xpY2Vf
Y29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPQ0KPiA+ID4gMjsNCj4gPiA+IMKgCQljcnRjX3N0YXRl
LT5kc2Muc2xpY2VfY291bnQgPSA0Ow0KPiA+ID4gwqAJfSBlbHNlIGlmIChkc2MtPnNsaWNlc19w
ZXJfbGluZSAmIEJJVCgxKSkgew0KPiA+ID4gKwkJY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvbmZp
Zy5zdHJlYW1zX3Blcl9waXBlID0NCj4gPiA+IDI7DQo+ID4gDQo+ID4gZmlsbF9kc2MgaXMgY2Fs
bGVkIGJ5IGludGVsX2Jpb3NfZ2V0X2RzY19wYXJhbXMuIElzDQo+ID4gc3RyZWFtc19wZXJfcGlw
ZQ0KPiA+IHJlYWxseSBiaW9zIHBhcmFtZXRlcj8gSSBzZWUgc2xpY2VzX3Blcl9saW5lIGlzIGlu
IFZCVC4NCj4gPiBTdHJlYW1zX3Blcl9waXBlIGFuZCBleGlzdGluZyBzbGljZV9jb3VudCBhcmUg
ZGVjaWRlZCBiYXNlZCBvbg0KPiA+IHRoYXQuDQo+IA0KPiBUaGUgc2xpY2VzX3Blcl9saW5lIGNv
bXB1dGVkIGluIGZpbGxfZHNjKCkgYXQgdGhlIG1vbWVudA0KPiAoY3J0Y19zdGF0ZS0+ZHNjLnNs
aWNlX2NvdW50KSBpcyBub3QgZXhhY3RseSB3aGF0IGlzIGluIFZCVC4gVkJUDQo+IGluZGljYXRl
cyB3aGF0IHNsaWNlc19wZXJfbGluZSBjb3VudHMgdGhlIHNpbmsgc3VwcG9ydHMsIG5vdCB3aGF0
IHRoZQ0KPiBzZWxlY3RlZCBzbGljZXNfcGVyX2xpbmUgY291bnQgc2hvdWxkIGJlICh3aGljaCB3
b3VsZCBiZSBhIHNpbmdsZQ0KPiBpbnRlZ2VyIHBhcmFtZXRlciBpbiBWQlQsIG5vdCBhIG1hc2sp
Lg0KPiANCj4gPiBJcyB0aGF0IHJpZ2h0IHBsYWNlIHRvIG1ha2UgdGhhdCBkZWNpc2lvbnMgb3Ig
c2hvdWxkIHdlIGxlYXZlIHRoYXQNCj4gPiBkZWNpc2lvbiB0byBjYWxsZXIgb2YgaW50ZWxfYmlv
c19nZXRfZHNjX3BhcmFtcz8NCj4gDQo+IEkgdGhpbmsgdGhlIGNvbXB1dGF0aW9uIG9mIHRoZSBz
bGljZXNfcGVyX2xpbmUgdmFsdWUgKGZvciB3aGljaCB0aGUNCj4gc2luaydzIHNsaWNlX3Blcl9s
aW5lIGNhcGFiaWxpdHkgbWFzayBpcyBvbmx5IG9uZSBjcml0ZXJpYSkgc2hvdWxkIGJlDQo+IGF0
DQo+IHRoZSBzYW1lIHNwb3Qgd2hlcmUgdGhlIGNsb3NlbHkgcmVsYXRlZCBwaXBlc19wZXJfbGlu
ZSwNCj4gc3RyZWFtc19wZXJfcGlwZQ0KPiBhbmQgc2xpY2VzX3Blcl9zdHJlYW0gYXJlIGNvbXB1
dGVkIGFzIHdlbGwuIEluIGZhY3QgYXQgdGhlIGVuZCBvZiB0aGUNCj4gcGF0Y2hzZXQgb25seSB0
aGVzZSBsYXR0ZXIgMyBwYXJhbXMgYXJlIGNvbXB1dGVkIGFuZCB0aGUNCj4gc2xpY2VzX3Blcl9s
aW5lDQo+IHZhbHVlIGlzIGRlcml2ZWQgZnJvbSB0aGVzZSB1c2luZyBhIGhlbHBlciBmdW5jdGlv
bi4NCj4gDQo+IEkgYWdyZWUgd2l0aCB5b3UgdGhhdCBmaWxsX2RzYygpIHNob3VsZCBub3QgZG8g
dGhlIGFjdHVhbCBzdGF0ZQ0KPiBjb21wdXRhdGlvbiAobGlrZSBpdCBkb2VzIGF0bSBzZWxlY3Rp
bmcgc2xpY2VzX3Blcl9saW5lIGFrYQ0KPiBkc2Muc2xpY2VfY291bnQpLCByYXRoZXIgdGhpcyBz
aG91bGQgYmUgZG9uZSBieSB0aGUgRFNJIGVuY29kZXIgc3RhdGUNCj4gY29tcHV0YXRpb24gaW4g
Z2VuMTFfZHNpX2RzY19jb21wdXRlX2NvbmZpZygpLCBmaWxsX2RzYygpIG9ubHkNCj4gcmV0dXJu
aW5nDQo+IGEgbWFzayBvZiB0aGUgc2xpY2VzX3Blcl9saW5lIGNvdW50cyBzdXBwb3J0ZWQgYnkg
dGhlIHNpbmsuIFdvdWxkIHlvdQ0KPiBiZQ0KPiBvayB0byBkbyB0aGlzIGFzIGEgZm9sbG93LXVw
Pw0KDQpUaGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbi4gSSdtIGZpbmUgd2l0aCBkb2luZyBp
dCBhcyBhIGZvbGxvdy11cDoNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdh
bmRlcg0KPiA+IA0KPiA+ID4gwqAJCWNydGNfc3RhdGUtPmRzYy5zbGljZV9jb3VudCA9IDI7DQo+
ID4gPiDCoAl9IGVsc2Ugew0KPiA+ID4gwqAJCS8qIEZJWE1FICovDQo+ID4gPiBAQCAtMzUyNyw2
ICszNTMxLDcgQEAgc3RhdGljIHZvaWQgZmlsbF9kc2Moc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4gwqAJCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0s
DQo+ID4gPiDCoAkJCQnCoMKgwqAgIlZCVDogVW5zdXBwb3J0ZWQgRFNDIHNsaWNlDQo+ID4gPiBj
b3VudCBmb3IgRFNJXG4iKTsNCj4gPiA+IMKgDQo+ID4gPiArCQljcnRjX3N0YXRlLT5kc2Muc2xp
Y2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPQ0KPiA+ID4gMTsNCj4gPiA+IMKgCQljcnRjX3N0
YXRlLT5kc2Muc2xpY2VfY291bnQgPSAxOw0KPiA+ID4gwqAJfQ0KPiA+ID4gwqANCg0K
