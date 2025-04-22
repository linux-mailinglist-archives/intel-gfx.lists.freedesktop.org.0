Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDF7A96167
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 10:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0EE10E18F;
	Tue, 22 Apr 2025 08:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xcm3o9Y6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3AAD10E18F;
 Tue, 22 Apr 2025 08:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745310446; x=1776846446;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tYqrY9FFuBq/FN8zULrSp8/A9y/cMl5Y1m0ihfKLagc=;
 b=Xcm3o9Y6PC1XINwKZMPf4liwpibXrFineQdSsRRx0J6VbsDazWSiKC24
 jXWGgoWVmm1KzzTP4d67djCXvag1FgoHCi75jM02OPNbYLJI4jsGcT28e
 D9PoU2EOwMWebPCAZ6wuC8hpUogTNfM0RTg1+0JU5zBd7Jaly20+Qb1OI
 7az3s68weYxt7VuD0LwXbYZT/uEUH5U4fDQAuJykEmeDIVkumPRi7J/XR
 HS933FqaA6BsR153GM6w40owwRhSNcQEBY5fy70aJlPl0uBPQOA9IGn7d
 teBAqyT8yl1NTTDAghASd43S3f93nfh46hjJ0Go+lD6dhCpmgGKEgs9+u A==;
X-CSE-ConnectionGUID: VWLy3hpuTE6kRwYeJSXtXg==
X-CSE-MsgGUID: CMPjxwr8TwKm+q3+5bqjoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="58221530"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="58221530"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:27:26 -0700
X-CSE-ConnectionGUID: DzKkMwbRRtKs/lO+t2AObQ==
X-CSE-MsgGUID: mlWZ+v+QSgSn4MnsvB2fqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="131698532"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:27:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 01:27:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 01:27:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 01:27:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oQKMS0OecqlbL5s0+LCoIWvBWT2Rv+Qs3+EJkddDpY0jEkyjE5ib6RLyZeAkssberBQ4M0XvQUWnJN9/0BsEZmkLpKSmdQ/Bdu2S4fGdSSvL1mdk4FZO2qEeSYf9A8cX5yf2MUPAWlZte+FokawGs+KdOkEhKblrdcB3P0B2EjmaKWPx42VgUAGUe07eD9a9jYWNyIXXvK6loGLwlg3ONIhQaIr3cwY/B0VqDHX8bNkJT2Vzg0XHsbV77LxjuEE844kjLGc9Gv7AKc6X2hzWXXLjoyAT6AYdlLGZgcskcdqrQrB1GwmfQsmmiG9+Quw4buzkkFSuVULIiHUbxGiTfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tYqrY9FFuBq/FN8zULrSp8/A9y/cMl5Y1m0ihfKLagc=;
 b=XoSG2+Mlmod6RUd/lzOS9dk8fhLocUEA+0r6mOmj6euq5ARvt/mGxfTfsZFiRZVycFS8Zk1QvlPltK/g+jeuUWvvRHPCdJ4ZQgny9UVyAJriputGWESWw40SbTk+eiY/fg1LxXyu/NDxlqdk7WhP4hU24FBfwb0xXqjqSLhTbMUPo8vbbqEaLwp4vqfYPS5AIiz3CaoZ1qjjStil5hQTqOPz9MKiBjG0i14VG3fCcERuw+RF8iMvQVRbXSsRp56Lo/QSP+Vmz6eUOzDKtZgl7vY1zGqrxg4OdaNhxv6cdz4rKLSCVwUssEt9bdnqjbYSn8KC6Y5+G1xDy+ceSzAuLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SN7PR11MB7706.namprd11.prod.outlook.com (2603:10b6:806:32c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Tue, 22 Apr
 2025 08:27:03 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 08:27:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 01/13] drm/i915/display: Add new interface for getting
 dc_state
Thread-Topic: [PATCH v3 01/13] drm/i915/display: Add new interface for getting
 dc_state
Thread-Index: AQHbrSTHwqQlue89pU6IA9LzKkmLL7OvZkSw
Date: Tue, 22 Apr 2025 08:27:02 +0000
Message-ID: <MW4PR11MB70545F8B8D1AD1F12E1EDAFFEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-2-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SN7PR11MB7706:EE_
x-ms-office365-filtering-correlation-id: 7a032558-6b47-44bf-f20b-08dd81777547
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Tk13Q3d2YzFRRk1TUHRva2tCWVJkenBybGNHOUhBY2tWckQ1UkUrQnRqcGdF?=
 =?utf-8?B?cHNRZ3JyZ0gxRVlVWUlhODVWc3d2N0RpYnprWS9QWFIzL2tVM3VQeFA4b3g4?=
 =?utf-8?B?Q01ZdW81d2sxZVlnSExqbW9JTXRHb2NVUG95aENTNzBvS0J6c3hGUk5MZVdx?=
 =?utf-8?B?a3JJMlZqckRGNjF5cmQ5QjhrNlZUTFhsNEZJVG9EVnI1TWdWZWd0dmFVMTJY?=
 =?utf-8?B?dTU3dHpYcG1STTJ5VnZ1dEdFN3hCZDhCcDRxaHcyZ0JxckVEMFRKS1J6Qkkr?=
 =?utf-8?B?MFB5ZWVxR1VYQ2NoSWx6UWgvTEJKZlRIUGd6ZFI4Nnh6ZUlIVzhkM3pJS243?=
 =?utf-8?B?Y0wxUXRpRXJUMk9mSWxLaUpNbExZbGRzVzJLSHJYczRveFpZU0JqSXE4YlQ1?=
 =?utf-8?B?cU1ENXpNSzlzOGpUa0NiM1htb0Z4Z0RQYlZQenB4RXljU29mS0JDNXJPd0dL?=
 =?utf-8?B?VVMwMDI0MHFjazVWbFU3MU55d0VtU2pUci9QL1RkTTBtZjRRbTlDbmZCLzhT?=
 =?utf-8?B?Nk9tNHVERGgzcEE1WmtKaHpwY1JhS3Q1ak1abU5QMTdJT3FvUzNXWHA0RXls?=
 =?utf-8?B?U3JMR3I4NWRQWkRBRUN0aVQ5KzZiandONzExdE9DWWRWeDFrOFRiclJRVTFR?=
 =?utf-8?B?bTIyUmhDWmZPQkdHUE5NQXVvR0VRWVFCeTFZcjUvMDUvMXRQOTNZaTlDbHUz?=
 =?utf-8?B?eEM0aXAxZTlzR25FcTdpTHRyUUtSbU4rOUE2dktiM1dESkNvdlB1cUFKNHlR?=
 =?utf-8?B?bTltYTZVUzFhT255MTFWWlN5WXRzM05rK3VTNVM0QWlDUjN5NnFYdnRLMUFP?=
 =?utf-8?B?WHhwNUtaNzBSTzAwYUJja1E3eEhxVG1xTEhyQWN6VVhpRURSeDdmL2poV1lk?=
 =?utf-8?B?cU91L1FjTzVBTUloQVVSOU4rZGxoZlN1UFBQc1RKRFN2aFZMbFF2Zno1ajI3?=
 =?utf-8?B?b3kvVFpSWXVtYW1aeXkvRkovUkprMGN0d0ZqZkJoQXY0Q2k5NkxQbEpsK01k?=
 =?utf-8?B?a2Jaa2k1L0J1d2J5TnZNc21wbE9rQnVSaXlLUmVzQXBzbDcvWmJKSFVkKzRv?=
 =?utf-8?B?U0gvajJvN0NHeFE2bDc1ckZsVXY3WU9JVlRnb0IrcU9EZGFSdWxaS3FXWUJQ?=
 =?utf-8?B?Q0t2ckhvc0EyK1cyb0VZelNCOXRTZmR2R3FJMEZaSjJwZDZqbEprTXlsUnRj?=
 =?utf-8?B?cS9KK3ZCZWVMRGJyNThqcnh5c283ZGVKZ1pLREw3eUpYa1NIZkt5TVRGMmZm?=
 =?utf-8?B?UTdjRkNaZU5IWVJKQ0UwT1VyVUNSdFpEZ2Zkclh0MFlrTWlraURTMzNleXdH?=
 =?utf-8?B?VDJ6Q29lU3dSRHdDTEgzMEtMaVlUZExiT0tlQmpqdGZ6STdlbWZHdGdLL2h2?=
 =?utf-8?B?OVhHeXhFeUVLTWNGZjBFYnhOYUNrNkRqMUt6dlpMdkEwQmN5WnE5YVAxS01z?=
 =?utf-8?B?aml5ZUJiaEtPWDJmQlIveElVME9NMXdCYVNFNU84NktQK1RjODVkQkNLRTd5?=
 =?utf-8?B?dXV0OFlzbENBUTdSUTE3R0hFOVlBM0o3V3YvWkhFdC9JUXpvSHBOZnd6OURR?=
 =?utf-8?B?U0xwL3pvNnF6c2RGdkNqakhwUnd6OCsweE1JaFhlZldtc0MrdzFnbDhsYkUz?=
 =?utf-8?B?UnM5YWNjTXlhTzZtY1lVWEsyVkgycGxBVVJFMkZia1EwdFJGNmF2Zklnc1ZL?=
 =?utf-8?B?TEFDRUVVdyt5QThoT2dlL3BzVEJQaFJhdjc2cDgrRFNnN0ZwU3VYUDRtNHNw?=
 =?utf-8?B?WHNUOVcwN1E5MXVKRnROcjJ0aFMrSlQ5UnJaUFc3dzRpR085NGxYdzJqekdE?=
 =?utf-8?B?R1hHeUVxbWNqWVhRR2x6ZnRqRDVTZlZHbDdpZDUrSk55Sksxcjg4K2ljYTRP?=
 =?utf-8?B?SkczZkZmci9zMHMzTTRZTUFWYWlNdkNkbXJkVEFIcG5uRzJHL01LNzR4cnJr?=
 =?utf-8?B?YklmVnoyVE5QSkFIeUU2ZDUybmo2dDhNQkp1M0taaGlHdVI2QVo3a2hQQ0Zo?=
 =?utf-8?B?djhxMFU2NSt3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djcxWEk5VGhUZDEyRjFTanlQMDNRcG9pV2dkNnUzSkFPMll5ZHNONXpNU1FQ?=
 =?utf-8?B?NHJDTWdLdEduMjdmQjdRaWVJNVlCSm9qcG1IY3IvTE9kcHp4RHA0aE9VL0Z6?=
 =?utf-8?B?a0lyZmRvcHlhRDFEREpqT2ZaYjl1ZmRNOUtDK25QbEFMTDBKK1pEQ1I5YnlH?=
 =?utf-8?B?QlA5Z3V5RXkzRHpEVGZKS0dsb050VHg5V05EY0JKNThGWkEvRlJPM1B3U0Fu?=
 =?utf-8?B?ZmxzalZ0Wno3RGRzSnk3R2FBZ3QwYTlyc3JWQTVlak9GV0FGOTlRSm5uZlFq?=
 =?utf-8?B?RStrL2JBakt6QS91TDdWeDl2aWplSUxYY3QxWWRyclZzVnN4ZFNWa3l1S1V6?=
 =?utf-8?B?Z3ROSEEwU3VBZ0YwclBxZHprbHJmN0FHdlVmSHJBVVh5N20zKzFHblJUaUpF?=
 =?utf-8?B?dzgrNWJzYmlQSXpuM1ZxZXBYVFVFcU10V0doeG9XTng3TUpYSHlwVWxFTXRs?=
 =?utf-8?B?eCt1NGFDeFNDUkVoZFFRajNsRVBmak1TWG9UUmVidFEyMXptQ1VqMUtxTDF5?=
 =?utf-8?B?TGd2OXB6dm93cmJwMHozc05jeEt4L3lxWkJEY1J4UkNvVzQ1b2h4TDg1YkZw?=
 =?utf-8?B?cUcwcVdZL2QxcEtUaGZDME5ZdXkxODlja1c2bEhVWFhMbW8zenpQVVRtSDJn?=
 =?utf-8?B?TGY0dzN3MUF2VW9iS0pVaTBld2pDMFpTdGFxVmF2QVlWdjMzcVRSNGNtbkpT?=
 =?utf-8?B?Wk9zZGV2MzhKSHJZTWFHTll2QW9iNER2TWFtdXQ5bHFUTkxlcTdWS3FwN1JK?=
 =?utf-8?B?TVlJaksxZEFiNmVhUENNM1hUTnN5NkJpY2xPdzlvK0VhODN6aGFVMXIrWStC?=
 =?utf-8?B?SHlWMjdjSzdnRlB2aXN5REo4NHl3aE1uYVZENW10VW03NVVYK1VIY2tGczlE?=
 =?utf-8?B?MXJLS2I5UTJML25FeWxsb2crTW9xbUdnK1FlbkFjWmFxN1JsTmUzb1RVcXhN?=
 =?utf-8?B?OVBKb3lON1FobVZWU21QZjE2SEF4MjdKT3cwRkZiSlhJdkNGUWJIdkhWMTE3?=
 =?utf-8?B?NHdrYVVSUkdCaEFGeFE3Z3hTYi9uc285Smt5aE9kVVBvSlhmVmU1cTl1NmZS?=
 =?utf-8?B?UUVidVN0REp5MVZSc1dOTlhXV05BcjVmb2UrdUNwelArNWVUSDRMWmU5dDRt?=
 =?utf-8?B?TFJxMC90dGRhaGtLL0ZRVzZ0RlQ5RVNWa3R2bjBQRlNBaWh6SWU2QldCQzdZ?=
 =?utf-8?B?UUJkTWQyVW9oRDd3MVh0MEcrQWZ3MGxlN0ZheVdiUVFXV2VRQXNzZDh4c1N2?=
 =?utf-8?B?K2pjQkpVazJyaFgzNUZoVGNkWWkyd3RmMWRRTGZNYjRScEljOEpCc0V3OWw3?=
 =?utf-8?B?SlBHQWdqNGUrVDV3ZzhnMktxUTcyRktWWnJSa0R5MCtwS3hYZW9mV1IzeHhR?=
 =?utf-8?B?MGNrSnprYlBIYmZ3QWZVaDZjNmtzWUlxdlQyS3o3U1Z6cE9Cc2xHaDl1V0Q5?=
 =?utf-8?B?NWtPcStWaDZGcDVGR2UrbERKeUJJaFFzVXBkSUgzbFR1elNuZlltU1BWbml5?=
 =?utf-8?B?d1dpNWZOVUc0cE9ic2h2R3FMRmRzaUh6dFcyMWl0UWVoaEQwbnA5bFZwMGF2?=
 =?utf-8?B?VE5ldWxRblFJdFEvN0loQzZSRlVUSVVZYjl0TFllZ2lDREFZRmhvUVYweWx5?=
 =?utf-8?B?dzkwTFl4bENod25hUnN5T3FwUWxZSy9zaXViUW9YUkJlU2ZwYTZ4bEI0MElh?=
 =?utf-8?B?QjdmWk1QdENEUzl1S0JBR283NVJST0NJWElWOUJuelg3MXFYMVpzWThPSnQz?=
 =?utf-8?B?NU1mR3MxQkpnZ3U5NDZZaDlvVHJEVVVpY2h5S0tMTm9yNFVqOFpySTJhU1RX?=
 =?utf-8?B?MHZjNlYwNG1pS3NFc3MxUjU1empmZFpYRkE3K0RMS1dPdG9yTGFLR29mK1JT?=
 =?utf-8?B?VmJrR1UvckMyWG04WjB6UEVUbGIrSFdmMVF4aWZCcHFvMnBOWmVuelltdTlr?=
 =?utf-8?B?SlN6UEFJNTBKcTNTZm9JVFNrdVBPaHVNMHhtUTRvTDcxL05kNGJBTGhGaUlm?=
 =?utf-8?B?MWpxdzRoeFp4SERtZDJsK3VKMGw1TXRicDR4V1RIcDFZenZLRUYweDJvamtO?=
 =?utf-8?B?K1drM1J5bWovM1A0Ykd6bVhFZUNXYnlYczcrNTVqOHUvTXZxK3g2cnZ0ZHBR?=
 =?utf-8?Q?Fzp1Mw6qROyCPXIGW4wBfpgS/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a032558-6b47-44bf-f20b-08dd81777547
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 08:27:02.4964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xamr0103xc1XjINw4VbiFWHWPlGR0nkD5RBneKDTGfNd2Ey6h+nD1guCQrcEa2wDxvStYrCzivfmShMYtjueUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7706
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogTW9uZGF5LCAxNCBBcHJpbCAyMDI1IDEzLjA1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjMgMDEvMTNdIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBuZXcgaW50ZXJmYWNl
IGZvciBnZXR0aW5nDQo+IGRjX3N0YXRlDQo+IA0KPiBUbyBpbXBsZW1lbnQgd29ya2Fyb3VuZCBm
b3IgdW5kZXJydW4gb24gaWRsZSBQU1IgSFcgaXNzdWUgKFdhXzE2MDI1NTk2NjQ3KQ0KPiB3ZSBu
ZWVkIHRvIGhhdmUgY3VycmVudCBjb25maWd1cmVkIERDIHN0YXRlIGF2YWlsYWJsZS4gQWRkIG5l
dyBpbnRlcmZhY2UgZm9yIHRoaXMNCj4gcHVycG9zZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8IDI5ICsrKysrKysrKysrKysr
KysrKysNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8
ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMN
Cj4gaW5kZXggYzc4MzE1ZWI0NGZhLi5mMTFhNGZiNGI3ZjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IEBAIC0z
MjMsNiArMzIzLDM1IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0
YXRlKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAgCW11dGV4X3VubG9jaygm
cG93ZXJfZG9tYWlucy0+bG9jayk7DQo+ICB9DQo+IA0KPiArLyoqDQo+ICsgKiBpbnRlbF9kaXNw
bGF5X3Bvd2VyX2dldF9jdXJyZW50X2RjX3N0YXRlIC0gU2V0IHRhcmdldCBkYyBzdGF0ZS4NCj4g
KyAqIEBkaXNwbGF5OiBkaXNwbGF5IGRldmljZQ0KPiArICoNCj4gKyAqIFRoaXMgZnVuY3Rpb24g
c2V0IHRoZSAiREMgb2ZmIiBwb3dlciB3ZWxsIHRhcmdldF9kY19zdGF0ZSwNCj4gKyAqIGJhc2Vk
IHVwb24gdGhpcyB0YXJnZXRfZGNfc3RzdGUsICJEQyBvZmYiIHBvd2VyIHdlbGwgd2lsbA0KPiAr
ICogZW5hYmxlIGRlc2lyZWQgREMgc3RhdGUuDQo+ICsgKi8NCj4gK3UzMiBpbnRlbF9kaXNwbGF5
X3Bvd2VyX2dldF9jdXJyZW50X2RjX3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICsqZGlz
cGxheSkgew0KPiArCXN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGw7DQo+ICsJc3Ry
dWN0IGk5MTVfcG93ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucyA9ICZkaXNwbGF5LQ0KPiA+cG93
ZXIuZG9tYWluczsNCj4gKwl1MzIgY3VycmVudF9kY19zdGF0ZSA9IERDX1NUQVRFX0RJU0FCTEU7
DQo+ICsNCj4gKwltdXRleF9sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4gKwlwb3dlcl93
ZWxsID0gbG9va3VwX3Bvd2VyX3dlbGwoZGlzcGxheSwgU0tMX0RJU1BfRENfT0ZGKTsNCj4gKw0K
PiArCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFwb3dlcl93ZWxsKSkNCj4gKwkJZ290
byB1bmxvY2s7DQo+ICsNCj4gKwljdXJyZW50X2RjX3N0YXRlID0gaW50ZWxfcG93ZXJfd2VsbF9p
c19lbmFibGVkKGRpc3BsYXksIHBvd2VyX3dlbGwpID8NCj4gKwkJRENfU1RBVEVfRElTQUJMRSA6
IHBvd2VyX2RvbWFpbnMtPnRhcmdldF9kY19zdGF0ZTsNCj4gKw0KPiArdW5sb2NrOg0KPiArCW11
dGV4X3VubG9jaygmcG93ZXJfZG9tYWlucy0+bG9jayk7DQo+ICsNCj4gKwlyZXR1cm4gY3VycmVu
dF9kY19zdGF0ZTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgX19hc3luY19wdXRfZG9tYWlu
c19tYXNrKHN0cnVjdCBpOTE1X3Bvd2VyX2RvbWFpbnMNCj4gKnBvd2VyX2RvbWFpbnMsDQo+ICAJ
CQkJICAgICBzdHJ1Y3QgaW50ZWxfcG93ZXJfZG9tYWluX21hc2sgKm1hc2spICB7DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5o
DQo+IGluZGV4IDFiNTNkNjdmOWI2MC4uZjg4MTNiMGUxNmRmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiBAQCAt
MTgzLDYgKzE4Myw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9zdXNwZW5kKHN0cnVjdCBp
bnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KTsgIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9yZXN1
bWUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOyAgdm9pZA0KPiBpbnRlbF9kaXNwbGF5
X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXks
DQo+ICAJCQkJCSAgICAgdTMyIHN0YXRlKTsNCj4gK3UzMiBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dl
dF9jdXJyZW50X2RjX3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICsqZGlzcGxheSk7DQo+
IA0KPiAgYm9vbCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+ICAJCQkJICAgIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21h
aW4gZG9tYWluKTsNCj4gLS0NCj4gMi40My4wDQoNCg==
