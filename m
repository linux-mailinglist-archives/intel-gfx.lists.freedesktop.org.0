Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C3E8C8278
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 10:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0D410EE26;
	Fri, 17 May 2024 08:12:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cjj+YAD3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DB610E0F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 08:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715933555; x=1747469555;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6+B0OO+sLcjJHnebtu0pl2JaRmSMIPxIgu5a1EWNpl4=;
 b=Cjj+YAD3N2+Amty15wgxbGr42W0X1vIVb60e1zyoXVEWUqOHOVrc2A7R
 QKmHibzPCp+Ta4Mk/JyacWrWfi+FpRWrhqBgdJoAWq+JDPnIX5s5h6EF+
 wHVEDdkzyBGsQc/jvTZq3R1/3fiL/Tqb/kKCwc3SkGoQPPb8RQADQ1grd
 nZu0n5FDZj6LUmKWIO/NJ8fB27kggEDYLB7Cwff2dkEEb9/MvqXz0Z8du
 g0z68dNdTZoSYDHVYW16UB28QH+YLDVASTKRuExyuGgs6/OA9RMOkVf6p
 2oQIPiBvTzWlMeqJvucnQ3SRR4DEVTJra89q3K9NrYjQ4Aa+GvaQCzsGl g==;
X-CSE-ConnectionGUID: 0HDJPDVhQua/HsjT1xhQrA==
X-CSE-MsgGUID: TDfA3cp4RxKlvTNgRcxb0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="34608669"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="34608669"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 01:12:34 -0700
X-CSE-ConnectionGUID: O1hGbzwWRYmcNqEkyQ+/7Q==
X-CSE-MsgGUID: U9Tx+iLMTQaG6pZvvNltOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="36509446"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 01:12:34 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 01:12:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 01:12:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 01:12:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hz8jVuaGgIlFSkfnXI9jXxZK7UATNBFcM4++Z+mFsvRWyerTLT5KmN8JKmG5iH7KM/ZuqTTLLaUNhhpPreEryXEtM7lwJgq/vdcFHshIORba+eVRz1ep1IxMTKyEZg4iShYGOd//1Lf1oqLA2uDDFAp0R9CPOc7z4H0lEtQpqJK0aGc+tCRBJXJWJNXc7GVojHvq2Ic4t6AAIYKB2ukG8DZKa+5s76YmooIzk5r6plXrfvYS1R1CPx7Ix5YZ+57Rg2maFJwI0XxT9j6OLLf1dmn24TUch8qlMTZ24z7NzA7SrYB2YtKvIUT0jdMCjYS1P0vmGk/xEclsJAxTodwVYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+B0OO+sLcjJHnebtu0pl2JaRmSMIPxIgu5a1EWNpl4=;
 b=nl+s8LuWjX0KPkFXRzzC7LX4toEXJMUKPt5UaesA/EvmobwQFL+2jwCf0QywDJKwFNX9eXNTMvcNv84gvPuESPYai5RK/ATwMW+rASYPDoAWb8fHYah5XX6xx2VWpL/BCFleEmQxL3LDkG1H1sh22YTqj1XE1Jjpcmekrhn8gexpRROLYwj5eABpwfd7p5xwMAUH4uIeSCgWXBjIJfCpXiZTsqylt+iJg8l3zzH7fwo3nOAGT27NV2NLo9ziZYBw/UDu5CjVGaBtppIM19KtGYcpafTu+mcVrkNUAKEcHXdLK1cBp5ENAenWW6RxWCahr0q2Edt4gosQfNWAgLB3yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4995.namprd11.prod.outlook.com (2603:10b6:303:9f::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.30; Fri, 17 May 2024 08:12:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7587.026; Fri, 17 May 2024
 08:12:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 68
Thread-Topic: [PATCH v2 1/3] drm/i915/psr: LunarLake IO and Fast Wake time
 line count maximums are 68
Thread-Index: AQHaqCwfHwOUPxxM3EqZqhmQyDc2vrGbE2Ug
Date: Fri, 17 May 2024 08:12:32 +0000
Message-ID: <DM4PR11MB63600DCF435F0B93D18E49DCF4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240517073005.2414293-1-jouni.hogander@intel.com>
 <20240517073005.2414293-2-jouni.hogander@intel.com>
In-Reply-To: <20240517073005.2414293-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4995:EE_
x-ms-office365-filtering-correlation-id: 5066a6b6-40cb-4b16-4891-08dc76491a0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?akRweFl3dEVYQUdLeUNsdW5QZFZWWVFTODhMZWFGd3I0TEZ2bUsxOUp1OUZ6?=
 =?utf-8?B?NGtlYXpzejVVQkc1dEFLam10VEcxamRhWnAxVHRmQXlMOE12d3ZySkFsVXJN?=
 =?utf-8?B?Wk11akJXa1dLZDl3QlFTVGlYaWRGeEpWam1kaysxMnhlRmpJZjh0ZVJKTllT?=
 =?utf-8?B?T0VGRW5NNU1wd2FsZTN2MG9Xdy9MTXRvN1pWcDd6RGtWRnEvb2MzVXNJS3Z5?=
 =?utf-8?B?Z3ZQTGYyZzFpUUNNKzd5MHZwUlpTbzI5ZGI5ZUEvMkJnZmtKNS9ReWMzajRU?=
 =?utf-8?B?TWhaaGJkTWhhU0RqTksyRU90azNwVWladmFzc0RqbnpBUlByNFJxYjJCQStl?=
 =?utf-8?B?Q0Qvc0hTVXRhek9nOXdWWHpXMStjNmhuQXdpRDM1MEg1T01iaDBDY0lSK2V2?=
 =?utf-8?B?QTdnWWZRZVJpaUFxbldXdERsRHhwRUE4cGZORzAvNWswcjRjNnBMVkh0MVIy?=
 =?utf-8?B?bVlZam9tOTRUeDFzMHR1SU8wRDRmd0JWaHcralFkQ0lWYzRVaVBOY0xXQ2tG?=
 =?utf-8?B?ejdJTnUrRkVtWFgxUkJKZDZrMmNFNUtWTGpvTHJvWFNKNysvYXBuYjkreEl0?=
 =?utf-8?B?LzNOeXFpdkducGd1dnFZUlpaMG41TVhkdE1rbWEwSDMvaFlza1d4V1p4UTNR?=
 =?utf-8?B?UDBFdC9TK2tTcHF1bDVveHJvVlR2QTEzaEFnWklaRkRMdzFkemdLemZQc0dx?=
 =?utf-8?B?eWlRTXBCcVhUVStQUmoxN0lDUUZFamxzeGpHaHV4OXl1RGhZNEhGaGhab3N1?=
 =?utf-8?B?Znh5MEFDVjVEZ1k5aTBibFlBanZWazJXOTZQYTlIL2FOanZzU25rVzZkeUxt?=
 =?utf-8?B?ZElSUDFFbWpxblFQUC84VWt1ci9mMTIwTlBEQm9DeFdBaWROc05hMThpbWd0?=
 =?utf-8?B?TDd0d3BReE5iUEZFNDQ0citFcHhGMENEeVF1YUhLaThEUi91M0U3WFQ5VHN0?=
 =?utf-8?B?YkpRV2NiQjNMTThLb3BxZmlncmdsTWQ0cXNPU00rS2RvZFRhanA3b1k1N29V?=
 =?utf-8?B?TXF0YUFNeEpuWWVsM2pOVFlsbzJaU3lxcCtpUTdCYXZ1c0dlbC9FUVJwa2pK?=
 =?utf-8?B?MEQ3R0ZCYWVNY0JYemlwRDFwWWlWdDhZQXdON0VIY1FCTEk1N0N1K2p4TVk5?=
 =?utf-8?B?TUJOR3NQRXFERnNHSGdUWFBlQ0NCZWJMeFZSbEVJQnloM0RGR2kzQ1ZPTmFl?=
 =?utf-8?B?RHUrQ0t0Slh1b2xqcStheEpPbnIvWVFqS1NGZ3A2OUovQ05JVWhvVHlDaEdU?=
 =?utf-8?B?dnNBZ3dzTndobDBLMTdiOCtLRnpoUnRSVlUvZ3hnYWRwV2NjRDdsbExwQTcz?=
 =?utf-8?B?ZUdQR0tva3pFQVJybmZndHUvODVmazZ4YVpjMnNGTmJNVVloSWpQSmhTRE1D?=
 =?utf-8?B?QlVSZ1RmRForckh1eUxTTDUvQVljQmpnUFVrTERNc3cwZmpmMGxPdFJmYm4v?=
 =?utf-8?B?QUMxRllXUXV6YkMzQXJTd2NkYkFsczNGcTVxWFp3YnNvcW9XVlpxUDQrWGpW?=
 =?utf-8?B?cWY4VmdOOWdZSXQzNEZpZ1ZJYUZGSkhFOHZ2alRBZmhiSlBJQkFzM3U1elpG?=
 =?utf-8?B?bVptcmN4YlVJU2pMYnZ0V2tMU3ZVbUNERlJPRWsvbXVPN0ZaOU4zd1ozUERI?=
 =?utf-8?B?TXl3cXdDc3BVSGtEREFoMHlJQjc2ZlVmMjNjVWZJWHh2MHY3TDE1M2NLMTBH?=
 =?utf-8?B?MFhOOGw5Wmk1Tkd1d0Q0WjZYa0xQVjlHM2VWNmN5WDNzYjUyamwxdldydDAx?=
 =?utf-8?B?TWlldVVmZDdlK2dOdlplN3BoYUN6RXpTUG5vN2IyM0p3YmUyNTZUL216dGZL?=
 =?utf-8?B?Y3dvZXQ3Q3dpbkM0cFQ5Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cGkxMTlVeGltSUU2ditCb0NTdmtYKy8zQWlmYkZ0NXlBR0hsUmZKcDZwTlpC?=
 =?utf-8?B?WW0rakRDb2VzeEd4OEJRK2tLWXhpUExWQXJtWnBBK00yaTNVYzA0bEhOc2Ey?=
 =?utf-8?B?Z1R4ZFZLdmVlaURVRDZBTVRpRVprekxNMFRBQ09yYkJ3cC9neTVkT3dSTE81?=
 =?utf-8?B?Q21iM1NPWkQ4Wnptd3pQWk1xazFNR1VxbjNuWTg1amh1VjRzVUlrM1JpYUxS?=
 =?utf-8?B?bVZvS2FrWi9zZE1TUDZBRHFud2NuSm1Ubk1yZ2x5K3haN2owcWdFZHZud1FX?=
 =?utf-8?B?OVZJY1ZUT1dsRDhQRTNqbHZuMmIyQXBFazRkbzZKWkZXK3Q3ZFNGUXVidzds?=
 =?utf-8?B?WFc4MmtqdVRNeGtkMGFBS1hyVmdlQzZPa1dQUlRLbXlXUUVvUC9qRVcrSytB?=
 =?utf-8?B?Z2JJRkd5Rkx1OEMvNkF4dUNqaHVGbHcyUFdXZWFna2V6WFdkUlJKZFYvZklX?=
 =?utf-8?B?dGU5OGxBSzQ3Z25sQkV3blA0bGpldUhMd2tMWHpqQjdMaXZrckpQZ3pMYU9x?=
 =?utf-8?B?bnlpczExSWlEbGNpUWFHczVUZHZqdXJGaitPN1JQWldWald2ZElXMDBhUEtw?=
 =?utf-8?B?TktYZDlkSXZYYTgyYWJpa2JOYXVVaU03V1d0WlNrU1pjVFgvY1JxSzMvUGhK?=
 =?utf-8?B?WExEV0pQSTd0Y0ROeEQ2dHo4ZmdhNmV1U3owQStOZWZib25VR052amRab3J6?=
 =?utf-8?B?V1lWR0JDSmNpQTBjU1o3WlpTc3VWTGZOckc2Q3Z2bkxTV1ViUS9PUWgwajRW?=
 =?utf-8?B?QjY1K0FzQyswUWQ1V1JpaHU4YTVBQm1jbUsrYzE0dlg3WTNxWjVFNy8vOVNx?=
 =?utf-8?B?MHVHcGlRcUppcDhPODI2YVNFbGYxYS94M3VtOEhwZDdVOHdFbUxNQmtTZmcw?=
 =?utf-8?B?WmV5YzFkSDlQUXBJSmVaVkE4UWQrNW9KeDRidmxvcDNkVXVNb1U5VVBuYzhm?=
 =?utf-8?B?SjdqbmlnWkRyRUlTdktGQ1N6QXRzaW1oUkRyOU5xVzl0RGRwbEZWcmxEUzV3?=
 =?utf-8?B?VWVXeEp2YVRiUURnZVEyVTNmdDFoTTdjZFdhY3hlSDhuRDM1WVVjejM0ejhm?=
 =?utf-8?B?bDhwbkMrUzdrWW5qbUM2SVdOTnQ5THZNV0NuMW9xNlFqbll4MmM2WWpIaEpl?=
 =?utf-8?B?UjJldW0xRHAzaTNKZU04Q0JFNnhnTTcvRnZHNHF0c0NFRllhTTlwNlBnMytj?=
 =?utf-8?B?ODBGTVQwL2w5bGg3UjBjTlVna0VKUFN4RjlmOS9laWJ6SDlkTnlyVVZXVEEv?=
 =?utf-8?B?aTBXd0pQTTEzVFQ0ZDFYeG9OYUVqZ01NejhDZ3pEOTJsdEw1c1lkNks0eFJG?=
 =?utf-8?B?TXlFRjhOUVpVZndseGp3ODh0aXR6THR6dXEweXpORHkzQnZvV2V2eGVNM1ly?=
 =?utf-8?B?ODB2R1ZmQ3NNSnFTUHQ0VW1neTRZMmo4NDYxcEhCWThnSVRacEgvSEJ0UURj?=
 =?utf-8?B?eEdmemNxeFdJbDFDZGFZaEJLRWdPeHptMUtHUjRUQy8rdjc1Ui9aRU1rMmpm?=
 =?utf-8?B?eWdSWStzS2VsREhYRkgyeW5raUVsL2thNjFicTJHa3F3RXlGeHZXWXFIdHZu?=
 =?utf-8?B?dXVySDh5M2p2NkNqTHA3Q3MyRkVETmt4ak8va29GS2R2b2J3OEp1L0xqOWs1?=
 =?utf-8?B?c3pNejY5U3lHNW9HdlVZYzR1YlpjcUtwcEZIZENmdGM3SVorSVBhLzZFT0lT?=
 =?utf-8?B?OUorT2VZblVubndFc291OUdobmJVclNnc3o2cUtlTlRNMDkwTDh3M1VNQkdD?=
 =?utf-8?B?MDFKQ1BnL3B4RzJDZHBpTnB4RzFwTThlZEdkZVRqN3BMc0RvakpNRTVDUTdB?=
 =?utf-8?B?MWp4N3BHQyt5WU8xMkpDeEhNUGFyeWFldWNkQUhYaE1ZT3ZwSXNETnM5bmJS?=
 =?utf-8?B?dkJMeHo4SmJ4WDEwbUJJZVJqL2pIeW1tNk1Ua1pzendiRjk2MW44eFN2V0E3?=
 =?utf-8?B?eEJnemZ2UWlZanFjRFNxbTlVR0JBZUtuVURqOEIzbFIxdzMwc0Q1d3Q0WW56?=
 =?utf-8?B?QnJteGJIUmJ6OFBRaUhGdUZtMisyV0FVSlBVUGp2UVhyenR5ekgvWjNsN1Zm?=
 =?utf-8?B?eGhVWUx2Mk5ON0VYeGhQdEVqYU1PMkx6bW9TTFFGWTZabzBCczFBelhDSVhr?=
 =?utf-8?Q?jwNA3CedztbqMG40mgOD+CZ11?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5066a6b6-40cb-4b16-4891-08dc76491a0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 08:12:32.1367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O6o/M1B8teZWw01Ul5TqJXlz1a2UO7HAZBlQliCnSWH+0HBAMT1plFAkCJdxIcpwS7KBMgcpdrjd8Ujpl/S3tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4995
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE3LCAyMDI0
IDE6MDAgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNo
YW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pDQo+IDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAxLzNdIGRybS9p
OTE1L3BzcjogTHVuYXJMYWtlIElPIGFuZCBGYXN0IFdha2UgdGltZSBsaW5lDQo+IGNvdW50IG1h
eGltdW1zIGFyZSA2OA0KPiANCj4gT24gTHVuYXJMYWtlIG1heGltdW0gZm9yIElPIGFuZCBGYXN0
IFdha2UgdGltZSBsaW5lIGNvdW50cyBhcmUgNjg6IDYgYml0cyArDQo+IDUgbGluZXMgYWRkZWQg
YnkgdGhlIEhXLiBUYWtlIHRoaXMgaW50byBhY2NvdW50IGluIGNhbGN1bGF0aW9uIGFuZCB3aGVu
IHdyaXRpbmcNCj4gdGhlIElPIFdha2UgbGluZXMuDQo+IA0KPiB2MjogbWF4aW11bSBsaW5lIGNv
dW50IGlzIDY4ICg2IGJpdHMgKyA1IGxpbmVzIGFkZGVkIGJ5IEhXKQ0KDQpMb29rcyBHb29kIHRv
IG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDUgKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
aW5kZXggZGYwZDE0YTUwMjNmLi5mNWQzZWI3NzY4MzMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQyMSw4ICsxNDIxLDkgQEAgc3RhdGlj
IGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwN
Cj4gIAlmYXN0X3dha2VfdGltZSA9IHByZWNoYXJnZSArIHByZWFtYmxlICsgcGh5X3dha2UgKw0K
PiAgCQl0ZndfZXhpdF9sYXRlbmN5Ow0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0g
MTIpDQo+IC0JCS8qIFRPRE86IENoZWNrIGhvdyB3ZSBjYW4gdXNlIEFMUE1fQ1RMIGZhc3Qgd2Fr
ZSBleHRlbmRlZA0KPiBmaWVsZCAqLw0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCkN
Cj4gKwkJbWF4X3dha2VfbGluZXMgPSA2ODsNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1
KSA+PSAxMikNCj4gIAkJbWF4X3dha2VfbGluZXMgPSAxMjsNCj4gIAllbHNlDQo+ICAJCW1heF93
YWtlX2xpbmVzID0gODsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
