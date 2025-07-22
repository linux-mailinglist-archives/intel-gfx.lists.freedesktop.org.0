Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE42B0D8F7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 14:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947FC10E669;
	Tue, 22 Jul 2025 12:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SQtZUmKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A073510E669;
 Tue, 22 Jul 2025 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753186079; x=1784722079;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=gjLaVBH/kX/L6QjsnSG582d+kSE0Dv1dLNDmH9KT0L4=;
 b=SQtZUmKXpbRBiz8BE8N1DUO5rEhlBVqs0P85DiOh3E8hD2AhVWVOyp1Q
 wHJgtW2rEY1BwabVxEzSxjtVGacnZe9RNMuAscT7/p0Rm89nWxNln9XTy
 W8m73Ioyy2JnXnQub0fJbEYvGlyKLY04va3Yve5Uv9EmMV0utqp2YVtfI
 pTougX3pk6kxMYpN3uLxaPS/+JVqrdLU1vc3W5ygoI0NeRRFa75OphS83
 43Ke65YFTKhmM/wxD5q/YMn9Woueqjok8N01Cza1Qk+8YjyKP6spizV4D
 ojkzzne0kUvxr8SESiXt3tyK8s6ulVJvZYT0E0MFj2rMMcmPvOSQcHzyB w==;
X-CSE-ConnectionGUID: AkmYoP2hROGlZ/ditB5uTw==
X-CSE-MsgGUID: 7EseIQ+XRe2A/LwrT3kKoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55543153"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55543153"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:07:52 -0700
X-CSE-ConnectionGUID: Iy/tAok8R+W0v3jEVKtfQg==
X-CSE-MsgGUID: QWdidV5NS2CmEcIkYygRFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="164795216"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:07:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:07:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:07:50 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.64) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 22 Jul 2025 05:07:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EG+qTvX4tyQw9pN6qOdfrJRooVVM/GFwba227DxgUQIVLR6Av1C+GM8RFVVpAsmP6v9JNDZZy1HQzohT2UK/EN1SILFMfxuqEkMkseU5xvGFxfsixFJPnXEX/FHoz/bWeJqefZZlxdF3Pr35ya3EPrx+/linbVighZweghJ9Li+uVkUzkCT1fKYZ32Ky3byl9BwgtViHcAx85zTa9aHw0jHfxmFZuO8EwmUhbhoZZ+5o8oBQoy3DGH2yd8M8gX9vkM3o1RSCcZTNyu1xiL9cAC9DWLSzK9Cl9j734Wwlr26FW10YtIGTlKKP60IKyLULkcCbtc6TT9mNJCPSRJeUJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PFh7M/RWjYQDE4uCCOiwdwn6C06XYbP7llpe84M8yxw=;
 b=jpEe7aBAj9xhR3WCYw3E9As9T/tNe7cg5+u/4oad0PkuQ8bnmUZB9P9LRAFM8y6rVXR62iMoszm57Q0npkSsR2HC+pWolp5n4E99ztmpCOptIArQGEjghFM1Fl7Z3avoTjAhFZ6VUOlTSuemK6lPQ6rIKZXBA5Uj6uXp2JnaaSkmFxpmuE21ywYjqcun7We+V5TI2YJ4/2ylNMRF00GkfKY7MaPct0ttw3E5Yd5/XMDc5UBERHxNo54l8qD6CnOpDkeJgOAq/H49Ho8iB5meLGBGZ+Q5EzFs6IwwJRo5UZ9vA5iW/RIbz4pGcDasyLVDgXaIXOoCjVnp0dP+DGy8zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7672.namprd11.prod.outlook.com (2603:10b6:a03:4cd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Tue, 22 Jul
 2025 12:07:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8943.028; Tue, 22 Jul 2025
 12:07:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250722101317.1728499-5-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
 <20250722101317.1728499-5-jouni.hogander@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Jul 2025 09:07:43 -0300
Message-ID: <175318606336.16862.4004451258537779671@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7672:EE_
X-MS-Office365-Filtering-Correlation-Id: ecebd623-c666-495f-e90c-08ddc9185fc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TnRhTTV6djhkNEZGS0hQM3hjamppSFpySHZyUjJYZmNudHUxTy9iU1ZTeGhB?=
 =?utf-8?B?eTMxeXM0VmNVb1F3SXAxVE1LL3dZNGJNMExnQlRxdHA5TFd0aHBPM1duRyti?=
 =?utf-8?B?RDNEN0w3UUdpdmNIYTVyd05vdTVKeFVzQXpSYUVRSjNEbExoMkxlYWs3Q0k0?=
 =?utf-8?B?ZWk0dmRJNlR3TU1tWVRsQ3I5YjI3Y3RJd3FCS3RNemdTcHNlTW5sTGRLWEg2?=
 =?utf-8?B?R21qbzRGa3JzeWJOcGtPV3N2NGVnT2owV1gwZ0d2UTBRWE5sY3NyQmVTM21n?=
 =?utf-8?B?Vk1oMzFyMWdFcTdzUk8yVkp0ZjZBQWtJNFRWQVZZSTRockNxNUFTNnRTVzhL?=
 =?utf-8?B?RFRZQWRvbldGcmZiVVQ3L2NnY3VMNWhxdHFIK2x3blp5VXBsNEdvNG1mWm5U?=
 =?utf-8?B?U3pIam1NTFZhc0FRWUVMU1FwMVBCU1o3ZmUxOFFFQ044NGpFWnN6YmhQUDBM?=
 =?utf-8?B?QmQ5bzZqQnAydXpySlUrczZBaDVtbEcySE84M0pDc1hDQ0tFVjRRTGlTblVh?=
 =?utf-8?B?L3ZXVm50VGJ5d2ZaRmZWY0ZCa01hU2RBZy9XcEt4OEhvVUthcy90c09hQ1dC?=
 =?utf-8?B?a3ZFUUNzVVM0bVlnK0RtMFFIMk5qcVZoeXc4RkcvZFZZZTNRRkdpSVZ2cXNI?=
 =?utf-8?B?ZjZPTUZvMEI2M0FmczJNTFFQby96S1JoMkRNOExOVFRPRTBNb0J0d2FReENV?=
 =?utf-8?B?cWdhNG9sajZGYThaUXp3bU9aL0FNQkJCMUtYYzA3aW55R0t3NklpVW83U0Vh?=
 =?utf-8?B?RHN3OWlFZFFkMUd2RmdKdk5WWEt0SUovU2FzdFRSaVBMTGtrTW9BbTZtZjg3?=
 =?utf-8?B?cllyc254Mkp1QXBaTFV3ZzM1TERFZXdscVRKRGdvT1FvL2xGNWZRWExuTTVj?=
 =?utf-8?B?TkdCek1FNmFlSWlWK3JxZkIrMWJseVNuMDQvN3dqd2ZGaDF1TmhmNzNHNE5G?=
 =?utf-8?B?eEVrMmhDdC9DNU91RVIyek5VcWIydmdkeXd2NEd0NUtXb0tzTlY1b3ZyckpL?=
 =?utf-8?B?R0tUQUkwcGFBQUtndmJDTjRGc1QyYTNlUFFCN3FQRmNnUmIvMC9IelpseFNm?=
 =?utf-8?B?c25zbVdqYklORnVNaEpCeDR4a2FUamtCaDk0NzFBYUYva3RJWU5VQTRsZ0hK?=
 =?utf-8?B?bStPZHlZbXhJNlM1OEZJOFhKTTVDdWdtUlZiZ0lNYTVRcit4czFhWkNJRjBJ?=
 =?utf-8?B?b1RYVFJwL1crUSt3RDgzQXRwcC9lSmVOU3c1aUp0TmkwOFRza2pHblNraGQw?=
 =?utf-8?B?T0dEOHNDMDZyK3JCZmowMDNSVkNuUWtNZGcwY2RNODlqZ0w5TGxZRGtxVW9v?=
 =?utf-8?B?NStubEJNSGtkcmZoSTI4ZmR0S2syRFo3ODA5c2l3Nmt0bXVVRmlvK0I0U2Zz?=
 =?utf-8?B?SmgwOG5aQ1hWemcyZ0Njc3had2xWUnNPK25mUWI5YVYvVDlHTXhkVFNFSzMz?=
 =?utf-8?B?Z1pLUW5pMGpBTEY4bFlvOEh4RUdGaStCRXNWQmliaW5ONk9uMEkvQis1YmFl?=
 =?utf-8?B?V25xSWRMTWVLU2dEYVU1dU1IN1ExWkpWb2Zla0d6ME9Rbm44eWQwWmJ5MFQ5?=
 =?utf-8?B?bTdGd1RMRHJ3SlBiN0dGMXhjL0d5b0RxVEJoRU1YVVlIYndWUjRHNXVOa25R?=
 =?utf-8?B?MWczbUliZnVZaHlud1pyOXI3UnJ0QlBYUVZZMmNkK3pIczEyQ0xZSXBQcmV0?=
 =?utf-8?B?eDVYbVRrQlJ2Tmd1WnVqWjV5a0J3VDMxVDcvOEZhOFFJcldCU2puNEluMnJL?=
 =?utf-8?B?R0YyNlMvMENjS3ZReXZUQnBVTHcwZ2RlZkNTSTZwKzJSM05WNDJPeTdhZDZO?=
 =?utf-8?B?WFJxTGJvbHRTQVEzemVXYk9wQllkNm8relM1UDJ0U1EyTFhYR0RBQXJYaFNE?=
 =?utf-8?B?aC9GL2N4T0JDUEhvRWVVYTN5RldxU0pwY1FtYlU4dHlNcHZKdjhqbVJ4MHdi?=
 =?utf-8?B?U1psSXNoQnhpRG1vZDF4eUpVaTY3VWdsYkFKWHowclRIeW1vVmFqSExNSlNH?=
 =?utf-8?B?WFUzeE5VVnpnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGRQQkpwVGxxeHBOUDZGNnZQM0VpU3MyNml1bmI0QzRZQlQ5ejBHV0I5TXUz?=
 =?utf-8?B?NnpjVjVTeXBwMG0rWkZVUkdMdEd1ZGRRSVlENi9iM3o4dWdFSGwwbHEvSHpK?=
 =?utf-8?B?Tk5wQ2p0UHVqRlk5Ymk5aEdjL2ZoUlNoNDNaakY3N1l4T1FFUmhzVlVmMlVa?=
 =?utf-8?B?d2FOMjZVdkNJZEF6Y0UzUUE0UHFPc1RydkRlclF2bFhKU3YyakFHa3F5akpB?=
 =?utf-8?B?SHd5NnY1TFU1blZOTDZTaUluSHh5ZFRLTTIvMzRRdVAwVDZCL1ZVRjBUcytB?=
 =?utf-8?B?UkFEM0M2enVIVTNFeS95SlI1b05ZY0h3SStKVWFBejFWUUs3TENYaFRXdkdw?=
 =?utf-8?B?d1BrL1Bmd3E5Yk1oL1BWMi9PQnIvclhBZ0ZLS3YyVnFaZmVuRkg3dUE5aS9E?=
 =?utf-8?B?UUdPK1R4Tzh2YjBwTHpIT1oyWXNHdFNhZ1ZncC9zN2RlRlNZc1crTjduYm9N?=
 =?utf-8?B?N3hpcy84VE5vOEFvM013TmMrTGxGdTNIL1g5dDg5RWVNdE84Y1JHb1NTdFBQ?=
 =?utf-8?B?SDIrcUV1d1hrYzhveWlpNEdVQ3VXOVVRaERlOTlncWhFYnBBMi8yYlNwSy9B?=
 =?utf-8?B?V2p3VGlLUHBVVkx3ZExTdHVQSTNqdnRPR0ZiOHFodjZpdFMwZ0M2SzkvZFRi?=
 =?utf-8?B?MElHOVVNV1ZTUkJqaktFRUZUazFHalFZTjdtczhpSTlJdHRrR3lDSi92MjJu?=
 =?utf-8?B?S21wT284eEV1aEhIRER0YnpKd2FNd21oU3FzWHQvZW1oUjdBdUZ6dXk1UHRM?=
 =?utf-8?B?S05rT0VjOVJLcEE0bE9hUG1CNmMzMDdEdlQ3NTN2TmwrdGdsMmVvMzBRNnpX?=
 =?utf-8?B?RHk1ZVFqQVhpK3FPQjlWZTJmdlNwdzdrajEvditOUncyclhkNEFNTGEvcDY5?=
 =?utf-8?B?YUUzM3Zwem95R1ZwUFFUeHlzOWRLOE5Rd1gwMGRZYUxTUEVzVDM5N3lWdTFu?=
 =?utf-8?B?YnlQMzVyZE40QmkvakM4Z05sNWdTME56aTlORlVjK3ZDbHVHK2hmZEQvQXhh?=
 =?utf-8?B?aWwvQlI2Uk52QUhkNDdBa2hRamJOKzFpaEJIbEV4bTlOZ3k5SEc0VVRoQzRK?=
 =?utf-8?B?QnFpbW1tRFdsTXplT1JPdDExS0doZ3JGQXc3b2dZeU9MMU9FZERzcExFMG1t?=
 =?utf-8?B?T0l4Y0NTQS9TRmVMdVprcStlS1RGRFY5cG1BWCswQmZXRU5WekhpWC9wckIv?=
 =?utf-8?B?M2NrOTFHR0d5Z1BUUTdCaTk3NldUTGU0TzNYSEVRVWQ0Y0o2R1lCR3FTU0dy?=
 =?utf-8?B?UEhFZUpLNU1aU3ovWWVCOW9IUGlPSFo2K2MrZi81ODFNL1owY3dXVU53SWZo?=
 =?utf-8?B?bm9zWjBjVWw3eXhrSHh0bk5OZmIwbDdFQTF0ajNMZ0ZObWVRanYxVkc4aXJh?=
 =?utf-8?B?VzBWUTZIZEZrWnpsZnU3ODFNam83Z3dIcW9WYzZvUEQ0NEg1anliUkxqMHph?=
 =?utf-8?B?ZjYveENjQURzMk04YXhGRGxMZTcxeGN2dm1peGtvSmpzeUVwUERBekM5NG1V?=
 =?utf-8?B?NDN3VHJNK1lmbk0rY0F0dUxvSFRjSk5vcnV4aWY4dnNSNmV5YjNUaXdLZ0ti?=
 =?utf-8?B?THFTaGFpR0RzTXM0bC9JSnU2dHBqc3JXd292WHB5cjk3MXk0a01sQ2hwT0ZV?=
 =?utf-8?B?elRMQ3Mva2kvaTZtRDlxaXhJbXUzUTZCUUJwemlDVUs4aUJsblpJWnVFU2xR?=
 =?utf-8?B?MlNhTTFhdDFGM0htekUwaEo5QUE1eDA2Unp4STluWm95bnIwTGFaTW9HRDc1?=
 =?utf-8?B?Q2dwclhJR21oUE41MzBPanNtRHVMTGV0dGVMNGVoTHVsQmpDNGFtUy9FZDJP?=
 =?utf-8?B?UzdBSG5IbUt3ZllvK3JuRXpUWWc0YjR0MVBJK25zUnJFWU9GNW1MWUI4alZF?=
 =?utf-8?B?NXdJcklLbVRiV2VIdFJYL2YybUdUNDduUFVFUFRqRDl3UUdsd1hTRWZPRmJp?=
 =?utf-8?B?dm9PRGhlcmkzTGhMWEpsdWF5QThxY1UxcjkvaC9CaU9DcEJLZTYwdnBXZ3dl?=
 =?utf-8?B?eDc3MXVZNE9KN3NKZFEwSmF5SWVEMW4vZzZ4VjNsK2d5YnBqSmE1bVJoYWFR?=
 =?utf-8?B?TCsyWlZUT0c5NE11dFY4TGU3ZlN4NW1iaW94SlFKUXZhclVYZFU0RUFERGlO?=
 =?utf-8?B?em9FQTI1ZmtLelp1bVA0VlFYQXZzOVI2QkhES1ZwVFFEU0ZRWXBnYjJpMlA3?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecebd623-c666-495f-e90c-08ddc9185fc1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 12:07:48.0618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O+d3G5SELhWkAdAYC+McEFKUiVoAY3BzeW+wmtbw6JpiT1b/QpGouENLyzyWA544jhBbr+Vl41/1Pycg899hpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7672
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

Quoting Jouni H=C3=B6gander (2025-07-22 07:13:17-03:00)
>According to C10 VDR Register programming sequence we need set
>C10_VDR_CTRL_MSGBUS_ACCESS before accessing PHY internal registers from
>MsgBus.
>
>Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sen=
ding")
>Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 5 +++++
> 1 file changed, 5 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index a203937d66db..886eff874cb7 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3258,6 +3258,11 @@ void intel_lnl_mac_transmit_lfps(struct intel_encod=
er *encoder,
>                 if (!(owned_lane_mask & lane_mask))
>                         continue;
>=20
>+                if (intel_encoder_is_c10phy(encoder))
>+                        intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CON=
TROL(1),
>+                                      0, C10_VDR_CTRL_MSGBUS_ACCESS,
>+                                      MB_WRITE_COMMITTED);

This could be moved to be done just once, before the loop, replacing
lane_mask with owned_lane_mask, no?

--
Gustavo Sousa

>+
>                 intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0)=
,
>                               CONTROL0_MAC_TRANSMIT_LFPS,
>                               CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMIT=
TED);
>--=20
>2.43.0
>
