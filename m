Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C543ACB02CF
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 15:07:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB24410E5ED;
	Tue,  9 Dec 2025 14:06:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtTyaAv4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0AF10E5ED;
 Tue,  9 Dec 2025 14:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765289218; x=1796825218;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=b9xx/OtALFcn4zm1gztj+wl7sOw+7t8KdMf1taR284U=;
 b=gtTyaAv4kzONAdaYfCj/RFYFU6ovq0allX976TE4wDuICZb9LSyFDYC+
 fEvmBbJ4+4MZ6pYSVWymnHf6Eb/GgFXWighY55JSnf9gAAkTKBTR27P5k
 Wh2S6xImJPrd2g6Ooz5NJ3fENsUcAIQPbjWx5earbtC6s903xxj9LwZeW
 onkf8+ZowGnmcYs187Zi1BsgbIJyTG14AmznfqV5DEkVklzC4qmELe5un
 r5SSLm4xjP8bkWxUQLw8sHxE7yhJk3kfGAY/bdHKvUqPK0RjKw/olKuIr
 wEp2K9BuAD8cnhmntn+ZgyXTiW4LerdcomYiFQJX9Iq1oI3yR2n/P2udr A==;
X-CSE-ConnectionGUID: 2ieo2aDKS+CU5FJsk5/DTg==
X-CSE-MsgGUID: MD4LBhlSRm2HAIIfKwm7Wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="71103086"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="71103086"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 06:06:58 -0800
X-CSE-ConnectionGUID: 2Zn4LH2YSmGUIkjMg1ukiQ==
X-CSE-MsgGUID: bhdEE+V0S2yON9bjXO8mfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="200416149"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 06:06:58 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 06:06:57 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 06:06:57 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 06:06:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vo1HdKG0TSfFFXdW0lWIyfkBZ6J3NkwFQUR5gvqM9tnGIhLayeC8uNxdgIgx02c9dnRpQhYZzU2wWfjrLpzY5asFVfFdtiF276Uc+TBm4UvgLs182KUoTmO6OjLSYUxuYsNC8rE+0P8/4lQe1q5ehoBKSdSRq+V3jTa5ATDU+8fNbx7WOgATFWWjzF2+oovE6jzKfB6ptcAd8I1oN4O4hzD6S1BhHxx1yvtp71xsw/5UMM+ID5BbE13TYlgpe49cR7t45uez90cPJQBN8IQcYxZ/aQN7YE1jP5JJldipDnrFqGVRymYfmfMga1QA7Mn+vMN5tLllomzUnkEXH6UvKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b9xx/OtALFcn4zm1gztj+wl7sOw+7t8KdMf1taR284U=;
 b=d7yFHk/9xgQ5rk/G1z5uEBKlCPnu1DyDmvpCfXkAGm0QEAsWLrZNRkH3elruSJTf57+caZOe3qtuGf/sk690Jg/Mdv8MzMVbgdSjU69i3vuN40wiKAG5i0y/dKWByMG6LiTms1KbB2wBG4O9yfs6bXkkSUXeHnEtISjs0xWI60ca8i13sThY1SjTs7bGTlOTk+JPOjExiAMsFXBsnmNrWDJH0LjAHc2JLrmHCD45HhUJ3CTNA6Bp+eKyGrBgP65Opp8Jqsz2nDBWTOPYvttG5MTi0EVSYjcAgE1UnOUtN6Psyb9/boivdRg93KkDMJ3H0fZV+rB+CFph/jXqX5bKOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPFE441933A2.namprd11.prod.outlook.com (2603:10b6:f:fc00::f56)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 14:06:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 14:06:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 40/50] drm/i915/dp: Track the detailed DSC slice
 configuration
Thread-Topic: [PATCH 40/50] drm/i915/dp: Track the detailed DSC slice
 configuration
Thread-Index: AQHcX8kLGTKsK6MDzk2ADhDmt9uQHLUZapAA
Date: Tue, 9 Dec 2025 14:06:53 +0000
Message-ID: <63569f2072a37d98818b6dac72b531077ffdea21.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-41-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-41-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPFE441933A2:EE_
x-ms-office365-filtering-correlation-id: 38e14661-3d7f-4996-4c9a-08de372c34c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TG1UNjBldkxLSHRoNy9hQktwNkJtNzh2UGZYcXJ1N0xacmZNMWJHSFBTYzhP?=
 =?utf-8?B?dVBZUlNSTThtY1hseUQ0RjB1NkdvNTgycUtpaHBvMVAwNDNLTjArQWVBY3o3?=
 =?utf-8?B?OWNkRXFIb1pUNGszeEhIZG1lMFVrem9VcmlEWFU4Y1BpVjIrWWxWR2xpWXlW?=
 =?utf-8?B?M2RJSkVkSVQ2UVRMcjFQN2gySGxGZzVFaWRJNzliTEczSHdMMWs4akNjTTB4?=
 =?utf-8?B?Wis4cmVNQXpaQnlQaHd1WG5CZ2pzazhNL0lDWkRZNXNGT2x5bjQzdTlTZENz?=
 =?utf-8?B?NWlhaldYRjM3RXB0enFiMmUwYS9wV0c3WkNUOEJ5eXFNdS9zRTJGSEtIamt4?=
 =?utf-8?B?a2YzeXYwRzVYRWZhVi9uY0FmdzhLU1ZPclBuY3dxZVpwSXl2bmFNbVRNbzNK?=
 =?utf-8?B?ZmYyTFcyN2g2WnMwUmNCdUw2WXBPQXJnUXZ6K0twZ3pvWm9UdXJOWmpabkgw?=
 =?utf-8?B?YndIRTdCQUhXTUx6V0xrekQ2dk0xRXdHdGxERVRsa2VwKzZTc2REQzNxQ0FS?=
 =?utf-8?B?NFRoWEtHOW9RekFvUWxnOW5SN2VIcXR5U1BickFXZ05YcVRHa3kxWDlza0FW?=
 =?utf-8?B?SVB6SWdoMkNvdWE0UWxxUXgvSU5DS0xJalg1dTVXeE5HQS9iNytmTVBJaXhB?=
 =?utf-8?B?b1FMT3p0Y1k1MFlFMGdnL0RLVEthc3B6dHN0L25BMFkxWkc3a1RDQ2szOUND?=
 =?utf-8?B?cjJMTkdNR0kzRWg1U2FjR3lDSGNyaDE2QkJic20vS25YM1lZdHpnREhiMzNs?=
 =?utf-8?B?RWhjQU5zWEVBOCtVd1orclNuTk5FVE1POGhnVGVtNDI5SjNzdFZUdHNXRnU3?=
 =?utf-8?B?ZVVoTGZXM3p5ZERRNk5nUFNmdWgxWWVwcGF3L2NQWENiOEEydytDSk1FUXA3?=
 =?utf-8?B?eWNaWW5uZVJHZ280YkVjaTFSYS9INVU1MnpKSko1S0FkY1UwOG9WSHdNS1o3?=
 =?utf-8?B?bGluTEtxOEVqSzhxT2swMzBSTDNIUG9vbVVSRS9EOWNGVmZCS0JwQjJjemhW?=
 =?utf-8?B?eDg5TnFhY0NhKy9VUi9ZVDRhWnlLWDZEQXlRQmxMVGtDdlpSQ0FQTG5BS0hY?=
 =?utf-8?B?ekFIdmR6RDVJSzBoR3E1U0VvRW8rbGR4RCtXU2YvS3ZmZ0VVZDZJZk5DMFV3?=
 =?utf-8?B?YnNhU1lnYUt4QnlFV0RFNFRMQ2FleUExcUdqSVNIeVZYdmxOWm5SQzMrdm81?=
 =?utf-8?B?OFZObnFYOFF3WXdsU2x5T0R4bnErYkZtZWZNY00xR2lhNFlmVmFub3VWWG1R?=
 =?utf-8?B?cCttODNiTTdTeUFzZ0N3RWdFZU5mR1diSk9CS1dFdU9YS1hCQlBLanVPNEN0?=
 =?utf-8?B?SjBaUVRjQ0Vmb1JmU2hzTGRRRTdDd3JuRGhhTmVKNmF0TWxyQjdYMVphYjN2?=
 =?utf-8?B?TFQxTStzR2xvTThJd2I4Mjk5Q2xwWldFWTN1Z2lZdlAwNmtzRWRoZERpd0Zz?=
 =?utf-8?B?ZTVmakI0WjBzTTlWVXVxRjZUdFNVS0Q0UHRUeGFCQllhMnF4V05TV0xid0xj?=
 =?utf-8?B?VGU3ak1tdnpiSEM0NEtBKzdpeTZjL2kyWmNWN0NJNWZIcThHY1ljYko4dWpq?=
 =?utf-8?B?ZlhDbVM2anJLWXBURGRGSTlvNzRFNmtWanhqQkpBMWQycGdRb3Jhc3Uxa3Vi?=
 =?utf-8?B?YnBLNzVya2k4b1phaTUzWDRjbkZFSDJiTWpteGFkU3hoQ1luRzFRMy9Qckgr?=
 =?utf-8?B?M2oyMTBkSnI0Zi9td0xNcVFZdGZoMW83VDI1U1JrUHpaeitJYzhiMlViM0lx?=
 =?utf-8?B?cytFaUUxbVVXWDhGVDZhVXBEdlNXSHFwNG5oU3JYUGhxWEJzdW1mOTU0V0w5?=
 =?utf-8?B?RWYxcGxYcTd2NEoyek5FR0dKU1plQjlFZnNxSm9xc1lyMzR4bHYxOVJyd2pi?=
 =?utf-8?B?cVUvT0NybWZrMmhZUG5Ha0dsbU9XQXJOWFlKSjVXZ3h6UkU2ZVVyRWZvdnNJ?=
 =?utf-8?B?cDJPeXFsUVRGSkRWcDl1NW1yeTBWNU1SVTJuejF0Y0dPaThyZUtqd3M1eUxS?=
 =?utf-8?B?ZkZvM2x2UWdxVnJzWldESnI1ZXI4dkFmM2U1bUpqY0p1UzNRTitoNDdwRVVP?=
 =?utf-8?Q?aTSenR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUk4OEoxRnNqWkhDUXBaOSsvTHRBdmdHUkpEMXFOajU0STVLNXJFend0K3RT?=
 =?utf-8?B?Z1lCUnpUaHkvSnRCKytkYWgvVTdkL3BYZGw1YVpNdDVyZlFhVzR3OVFUTWNh?=
 =?utf-8?B?VzlJSmFQZDVNMWV4eHN2eHJCOUxOM294NXFPTkNtR2o1YXMwZWtQR2xremEw?=
 =?utf-8?B?MXpYQXVMOVZkc1pXZjgrZE0vVUN0YXNITmpMZklWcytLRkx1cWtMYS9tOGJz?=
 =?utf-8?B?QlhSQ0xxelRzZy82cGQ1bUdjd1l3eXl1R1FnZnV3VG5sYVpYQXA2ckZzS1Jj?=
 =?utf-8?B?cC9WN2Y0Qy9lVkp5ci9XNitnblB5Mm1tbzE4YTBOOUNteW93c2pDcVRvZzZr?=
 =?utf-8?B?bE45YUdjejhvdzQvRkJmaVZtczFHS3FkRnlLc0h4bjhzaWFqdVNIRXpPSWpW?=
 =?utf-8?B?ZHRjMXVNRHAxSmtmWjUwYVI1SXR1OGFEVGNjcUdZSUtoeS8ya0R6TjlQQ2Jx?=
 =?utf-8?B?L3VIRm5SeGdEUVR2UWNzYUtaSjlDMmpIL0RPMW55d3ZHSmVKYmoyNFhBSWQx?=
 =?utf-8?B?SU8wTzJOcEpGb1NnbkxVZHk3OXlMOU0yZlBXMWZZcjBJdGpJR3lDL0NSc01w?=
 =?utf-8?B?alJCUTJnYU9ENlA2QnNXbmR2TDl0cTlCb0xGTDBBUGtzdnUrYis3WHR5MDFP?=
 =?utf-8?B?NTlneE5kcWhZaXZ2dEloQ0lNVmpsMG5MKytBeFpRRUVSVG9TdU5CZk1GK0Mx?=
 =?utf-8?B?NjByT0lscSttdzM1cUNnZzMyeGoxY3JndWl6VXNxY1htNEpwaXlsY3lFdUZp?=
 =?utf-8?B?dkFrMXZDb21oekQxd2E3eXJGUmovVWIxcVBTb0ZkNUlSVGRGbmZQQThUd1JQ?=
 =?utf-8?B?M05zcG5rOGNxQ1hFQmZEMVpweEkrdEJYMVlJQVFkOVFya2FnSDZ2YWlaRW1o?=
 =?utf-8?B?dE5VSm9zeDRVZTZhZEN6cmphazYwYzVGNTlIZ2J4RnM4UUxsUkIzNGRNVi80?=
 =?utf-8?B?WEswYWlxZ0VwbHhoaHNtWDZKUTVOdlEwUXFsZmJsS1FSaHQ3R1pmbHFtSlpx?=
 =?utf-8?B?emxwalh1VEJISkZzSEQrTVBZNU5zSUVSR3IzTGhYV200UG13Q1pQVVo5QjNB?=
 =?utf-8?B?VE5ySXBtbnBpZ1JZVlQwL0thVmZBMzMxOEloSzRtSGsxR3V6SGlEUXFvTzd3?=
 =?utf-8?B?ejZFRlJJcmNNMzdJdUVlMDFQWE01dlBoOWxGVGd5YW1RdzdNZTkyM2JpSnJC?=
 =?utf-8?B?VlNBclphbDRudGNpUk54ZzFDdWl3WXE3bnlBcnBSY1FNczNlM2Z2alc3eXV5?=
 =?utf-8?B?WGJBZWZ6UlJoTHU3aFBJRDZBLzFDTHZHekl0RC9JdlVuRjRub0JUYzZyazZW?=
 =?utf-8?B?U05JeXY2WHRUNVg3UENCZVBJeGtOUXZtaXBqNVRNQ3pPSG10Wk1GRzZZVVN1?=
 =?utf-8?B?RzR5MkpQcXgwMDlSa0hETllOZGVKYlJVbldiZXdLcTlHWXlEUHJVbnFhZGkr?=
 =?utf-8?B?K3puZ0tBVDFWRXAxZXNjUU5QamR6YkdINUN3b2hIWkJKWGdIc3lzbVVpbGdN?=
 =?utf-8?B?NTNtbU9zQXBtUzRDMHZtK09XK3A0OGVTYmVHUG1zelAxcWJ0STBFbnY3ZTlP?=
 =?utf-8?B?MHQ5NXNjV0hsQXdNbnlpdWxRaFBkT2ZkVVh6cXhEaHlKdTJHbit5SWl5eE5L?=
 =?utf-8?B?RmVzRnJ0dHVRVVlLVDZ6S1FiUmswaHNWREJvbjV5TDFEbW1XMjd5SzJFdm9t?=
 =?utf-8?B?YzN1dkxhQzBqeHRGS0lDUGJySkpZeVdUVGtTNUw5WS9UWHRneklaaHJlNkEy?=
 =?utf-8?B?emc2U2xZekRqYnBJTTduVCtQcCsySytxb3EvMElnVEl0eXhmcGJaM3RxQzZS?=
 =?utf-8?B?SHFDcThXU0hOSzBnL0xVUHl3eXRNQi9xbFRhMkVpa2RjaFdTNFVnUkt5MnVx?=
 =?utf-8?B?L0JWNWhuNGVuWnhKTW9PME9IS3BxN0g0dk1NeFg3MXd6MGxuMXhuZVovRHBj?=
 =?utf-8?B?ZC9uQXNLZ3BRekJ5Wnd5ZVdMVXF0M3p6YkxqVkpRTUh4NzM2YW5kTDljVEhC?=
 =?utf-8?B?b1p3d3QwaC82ZmxBdlVUbEc3eGZHREJnWnc5Q0RYTG9TZlRqVnNkS2g2elNq?=
 =?utf-8?B?VFpnQWZTUStVR0s5VUxIUmZjaGN1YVAzdXNNTXgwZmF0Z043RmIrdzcwU0di?=
 =?utf-8?B?cFltM3d2TFlOSVB0Wmw5ZitQUnFrT2E0OGh2OXpuaHFCbk1PdFRjeklXOTZB?=
 =?utf-8?B?L3JhTzE1SG5CMUZhb0s0bzJnUktWdWFxL3hHQy9RQ1NxT3R5eVp1SkhibmJC?=
 =?utf-8?B?NWJjZkg3TzVTczM4VHF6M1NPck5RPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CED02CE3DB057647922CB47ABA793168@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38e14661-3d7f-4996-4c9a-08de372c34c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 14:06:53.4993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bbeKQumsaJHGRec3EU6BKtyjLeNtCIm3qOAssekJozkVo8Q44DBk85il1nMftf8ITsTlYRAvBTSdU1jittM1P3qWKWK8olK/yQFjC4p9k/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE441933A2
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCB0cmFja2luZyBmb3IgdGhlIERQIERTQyBwaXBlcy1wZXItbGluZSBhbmQgc2xpY2VzLXBlci1z
dHJlYW0NCj4gdmFsdWUNCj4gaW4gdGhlIHNsaWNlIGNvbmZpZyBzdGF0ZSBhbmQgY29tcHV0ZSB0
aGUgY3VycmVudCBzbGljZXMtcGVyLWxpbmUNCj4gKHNsaWNlX2NvdW50KSB2YWx1ZSB1c2luZyB0
aGlzIHNsaWNlIGNvbmZpZy4gVGhlIHNsaWNlcy1wZXItbGluZQ0KPiB2YWx1ZQ0KPiB1c2VkIGF0
bSB3aWxsIGJlIHJlbW92ZWQgYnkgYSBmb2xsb3ctdXAgY2hhbmdlIGFmdGVyIGNvbnZlcnRpbmcg
YWxsDQo+IHRoZQ0KPiBwbGFjZXMgdXNpbmcgaXQgdG8gdXNlIHRoZSBzbGljZSBjb25maWcgaW5z
dGVhZC4NCj4gDQo+IEZvciBub3cgdGhlIHNsaWNlcy1wZXItc3RyZWFtIHZhbHVlIGlzIGNhbGN1
bGF0ZWQgYmFzZWQgb24gdGhlDQo+IHNsaWNlcy1wZXItbGluZSB2YWx1ZSAoc2xpY2VfY291bnQp
IGNhbGN1bGF0ZWQgYnkgdGhlDQo+IGRybV9kcF9kc2Nfc2lua19tYXhfc2xpY2VfY291bnQoKSAv
IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoKQ0KPiBmdW5jdGlvbnMuIEluIGEgZm9sbG93
LXVwIGNoYW5nZSB0aGVzZSBmdW5jdGlvbnMgd2lsbCBiZSBjb252ZXJ0ZWQgdG8NCj4gY2FsY3Vs
YXRlIHRoZSBzbGljZXMtcGVyLXN0cmVhbSB2YWx1ZSBkaXJlY3RseSwgYWxvbmcgd2l0aCB0aGUN
Cj4gZGV0YWlsZWQNCj4gc2xpY2UgY29uZmlndXJhdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMzIgKysrKysrKysrKysrKysrKy0tLS0tLS0N
Cj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGlu
ZGV4IDAzMjY2NTExODQxZTIuLmQxN2FmYzE4ZmNmYTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIzNTYsNiArMjM1Niw3IEBAIGludCBpbnRl
bF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
wqAJCSZwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gwqAJaW50IG51bV9qb2luZWRf
cGlwZXMgPQ0KPiBpbnRlbF9jcnRjX251bV9qb2luZWRfcGlwZXMocGlwZV9jb25maWcpOw0KPiDC
oAlib29sIGlzX21zdCA9IGludGVsX2NydGNfaGFzX3R5cGUocGlwZV9jb25maWcsDQo+IElOVEVM
X09VVFBVVF9EUF9NU1QpOw0KPiArCWludCBzbGljZXNfcGVyX2xpbmU7DQoNCldoeSB5b3UgYXJl
IG5vdCB1c2luZyBvYnZpb3VzIG5hbWUgZm9yIHRoaXM6IHNsaWNlX2NvdW50ID8NCg0KPiDCoAlp
bnQgcmV0Ow0KPiDCoA0KPiDCoAkvKg0KPiBAQCAtMjM4MywzMCArMjM4NCwyNiBAQCBpbnQgaW50
ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
IMKgDQo+IMKgCS8qIENhbGN1bGF0ZSBTbGljZSBjb3VudCAqLw0KPiDCoAlpZiAoaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSkgew0KPiAtCQlwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50ID0N
Cj4gKwkJc2xpY2VzX3Blcl9saW5lID0NCj4gwqAJCQlkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNl
X2NvdW50KGNvbm5lY3Rvci0NCj4gPmRwLmRzY19kcGNkLA0KPiDCoAkJCQkJCQl0cnVlKTsNCj4g
LQkJaWYgKCFwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50KSB7DQo+ICsJCWlmICghc2xpY2Vz
X3Blcl9saW5lKSB7DQo+IMKgCQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCQnC
oMKgwqAgIlVuc3VwcG9ydGVkIFNsaWNlIENvdW50ICVkXG4iLA0KPiAtCQkJCcKgwqDCoCBwaXBl
X2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50KTsNCj4gKwkJCQnCoMKgwqAgc2xpY2VzX3Blcl9saW5l
KTsNCj4gwqAJCQlyZXR1cm4gLUVJTlZBTDsNCj4gwqAJCX0NCj4gwqAJfSBlbHNlIHsNCj4gLQkJ
dTggZHNjX2RwX3NsaWNlX2NvdW50Ow0KPiAtDQo+IC0JCWRzY19kcF9zbGljZV9jb3VudCA9DQo+
ICsJCXNsaWNlc19wZXJfbGluZSA9DQo+IMKgCQkJaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3Vu
dChjb25uZWN0b3IsDQo+IMKgCQkJCQkJwqDCoMKgwqAgYWRqdXN0ZWRfbW9kZS0NCj4gPmNydGNf
Y2xvY2ssDQo+IMKgCQkJCQkJwqDCoMKgwqAgYWRqdXN0ZWRfbW9kZS0NCj4gPmNydGNfaGRpc3Bs
YXksDQo+IMKgCQkJCQkJwqDCoMKgwqANCj4gbnVtX2pvaW5lZF9waXBlcyk7DQo+IC0JCWlmICgh
ZHNjX2RwX3NsaWNlX2NvdW50KSB7DQo+ICsJCWlmICghc2xpY2VzX3Blcl9saW5lKSB7DQo+IMKg
CQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCQnCoMKgwqAgIkNvbXByZXNzZWQg
U2xpY2UgQ291bnQgbm90DQo+IHN1cHBvcnRlZFxuIik7DQo+IMKgCQkJcmV0dXJuIC1FSU5WQUw7
DQo+IMKgCQl9DQoNCllvdSBjb3VsZCBzaGFyZSBoYW5kbGluZyBvZiAhc2xpY2VzX3Blcl9saW5l
IGZvciBEUCBhbmQgZURQLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gLQ0KPiAtCQlw
aXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50ID0gZHNjX2RwX3NsaWNlX2NvdW50Ow0KPiDCoAl9
DQo+IMKgCS8qDQo+IMKgCSAqIFZEU0MgZW5naW5lIG9wZXJhdGVzIGF0IDEgUGl4ZWwgcGVyIGNs
b2NrLCBzbyBpZiBwZWFrDQo+IHBpeGVsIHJhdGUNCj4gQEAgLTI0MTUsMTQgKzI0MTIsMjcgQEAg
aW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVs
X2RwLA0KPiDCoAkgKiBJbiBjYXNlIG9mIFVsdHJham9pbmVyIGFsb25nIHdpdGggMTIgc2xpY2Vz
IHdlIG5lZWQgdG8NCj4gdXNlIDMNCj4gwqAJICogVkRTQyBpbnN0YW5jZXMuDQo+IMKgCSAqLw0K
PiArCXBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnBpcGVzX3Blcl9saW5lID0NCj4gbnVt
X2pvaW5lZF9waXBlczsNCj4gKw0KPiDCoAlpZiAocGlwZV9jb25maWctPmpvaW5lcl9waXBlcyAm
JiBudW1fam9pbmVkX3BpcGVzID09IDQgJiYNCj4gLQnCoMKgwqAgcGlwZV9jb25maWctPmRzYy5z
bGljZV9jb3VudCA9PSAxMikNCj4gKwnCoMKgwqAgc2xpY2VzX3Blcl9saW5lID09IDEyKQ0KPiDC
oAkJcGlwZV9jb25maWctPmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDM7DQo+
IC0JZWxzZSBpZiAocGlwZV9jb25maWctPmpvaW5lcl9waXBlcyB8fCBwaXBlX2NvbmZpZy0NCj4g
PmRzYy5zbGljZV9jb3VudCA+IDEpDQo+ICsJZWxzZSBpZiAocGlwZV9jb25maWctPmpvaW5lcl9w
aXBlcyB8fCBzbGljZXNfcGVyX2xpbmUgPiAxKQ0KPiDCoAkJcGlwZV9jb25maWctPmRzYy5zbGlj
ZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDI7DQo+IMKgCWVsc2UNCj4gwqAJCXBpcGVfY29u
ZmlnLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAxOw0KPiDCoA0KPiArCXBp
cGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnNsaWNlc19wZXJfc3RyZWFtID0NCj4gKwkJc2xp
Y2VzX3Blcl9saW5lIC8NCj4gKwkJcGlwZV9jb25maWctPmRzYy5zbGljZV9jb25maWcucGlwZXNf
cGVyX2xpbmUgLw0KPiArCQlwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Bl
cl9waXBlOw0KPiArDQo+ICsJcGlwZV9jb25maWctPmRzYy5zbGljZV9jb3VudCA9DQo+ICsJCWlu
dGVsX2RzY19saW5lX3NsaWNlX2NvdW50KCZwaXBlX2NvbmZpZy0NCj4gPmRzYy5zbGljZV9jb25m
aWcpOw0KPiArDQo+ICsJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLA0KPiArCQnCoMKgwqAgcGlw
ZV9jb25maWctPmRzYy5zbGljZV9jb3VudCAhPQ0KPiBzbGljZXNfcGVyX2xpbmUpOw0KPiArDQo+
IMKgCXJldCA9IGludGVsX2RwX2RzY19jb21wdXRlX3BhcmFtcyhjb25uZWN0b3IsIHBpcGVfY29u
ZmlnKTsNCj4gwqAJaWYgKHJldCA8IDApIHsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwNCg0K
