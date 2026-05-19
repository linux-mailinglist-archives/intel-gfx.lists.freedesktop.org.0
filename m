Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF5HG+gADGoUTgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:19:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A9577E89
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7442D10EA7D;
	Tue, 19 May 2026 06:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTXnX0AE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8169310EA7D;
 Tue, 19 May 2026 06:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779171558; x=1810707558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VJP5lXx+BH07IaAJxCx9XfiEeyBxMZD2GAV1WMp7rho=;
 b=MTXnX0AECYvHzZqypoBsFUS5q0PJwU0GKvmqq2l1UDSzgiLPht3+kDse
 lrOjWDM4RlXP411l4s2k+RH8Hs1mAgym63DeUn2SSqytCoWh91oVz0w36
 czhUyZok2MJslMlG9odt/IwsAzJt1c5u/Q+7D15yQZqnFFS5whUYPvqQM
 PaXVlX4Qx8o60wNvrOuz2Fs8u0Fr6IT6JhG15A7/QQYTdTX3evjkEHbVd
 uMOLPkJvawhBtQ36zSLiQB9rP/S1rjr9LOAxSfUcQ/hYJKXsdeOLnPg+w
 Zk+Kg/fs1736gEGLidpU3CZ6VJKAY5ri09wreI2bIYxnMJOhjwI3O3uhV g==;
X-CSE-ConnectionGUID: VowEEWFBTI2je40RLiZEpg==
X-CSE-MsgGUID: 5wi+HvQzRTGti1ORz70BpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="105499167"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="105499167"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:19:17 -0700
X-CSE-ConnectionGUID: aP/Sv871TbGJnyC8lEctxQ==
X-CSE-MsgGUID: C3oV+HaOQzK8QLjpnEHv3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="237044529"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:19:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:19:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 23:19:16 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gkOkbDF6XPS+EKQJT2q/t4oLfz1/sWR44B1DHYWf4pK5Hy6nUYdO/ScmntzPnmY7q9yTD/dSq9hs/zRm8qhI50u5mMx8JoVOtXaNpynGCjUJurk5hQfIyv7nYflHt572NDQij9tTkUqx8L9uRdtrVHbtXSkaPPTLj8Hs7nBpZUqUepJ9alRkhet9w0HPdDKa8Nr4jrZCMsQh6h+tcCPPPo7qZVyOdH3VtlvoyRPPyuxLIZr1J6fx6dD2wz5Nhnbqpj0+JzixlPzir0L2ftIYH/KtGq9phCZfCsHNJL/phuMgrBM99Nf6SWLbc6gy5hlxWOW6UlCoA+O0lJnRbdR3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJP5lXx+BH07IaAJxCx9XfiEeyBxMZD2GAV1WMp7rho=;
 b=fDmZV40EsIP89mz0HqVEMXi1e1hZkTdySuq/cLOdSGjY2Eje5oRvGb3s8cTl7Us5Y6kjGsiPbHpufOd0nP6Zknr4EA17fZaQ7Wcv+kJC991Lh6joC5hSqMTUpNWoFk9ZhejfHDme+OgQOlYhptgrGSWA2QL4XyUp7BZOXOKwUEsvgKkStjFm1jOwNq/Gnuy1d+iBX5qYk3fgsU0FD3o/Xz4qBdWlRGzn467UU3bfRKIPrvSPhKTIcnmgvcEFp2CFXJrzagZYk+6YnH4BBJfLcYgtc6OBUjTEVTaVWmCEyEvQ0UBw7DgLiPg0ZuiE0i4sIauwvUo10xtFkjKyXFGV2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB6175.namprd11.prod.outlook.com
 (2603:10b6:8:99::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 06:19:10 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 06:19:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 19/31] drm/i915/bios: parse Snps's VS/PE-O tables
Thread-Topic: [PATCH v3 19/31] drm/i915/bios: parse Snps's VS/PE-O tables
Thread-Index: AQHc3cFftyuchabdqEGk8lxwreZe9bYU8zqQ
Date: Tue, 19 May 2026 06:19:09 +0000
Message-ID: <DM3PPF208195D8D97E83A81047F5C05A613E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-20-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-20-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: cf56be5d-08e5-4ba5-a23d-08deb56e8a08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|4143699003|3023799003|11063799003;
x-microsoft-antispam-message-info: Q2XrgFOfHPmKSFT6k+PG3VcU5W6cmM6XQ2jZUQleG/ZPnZ+L6hjyh4yFxoJqljFoPEyN4RF/TMkDwcRJtVkLcDbMR7cp/3FHP75fUDB8khFbCrwKJBQw7Sduohk+BAwfsEInWIn6/XXcQX6L2tDKH6ZWDt5gzHCPx0ZkwTvb1N6xbgcqDIahECAVrmJQjBE+38jQBnwrak5Ot3UF4yj5dX02yF4XgB1gZoUUxkG9j/SAmwPPEyX80jRlDlmCtx9oEzIgjYNrwjSUrvTv3wQVl+GRSMuod25c17YPV0cEP8Ux5gJ3qCISnqPvYP2ri43itaa5qmHipteU8/UWLyM0NRc7HLvlct9dLGb1TF3QsVolhDMUzBxQ2tXWSUD7wPCwuIwlhneBJQLond7QnX6TTm9aHWLRvcNDM3S5Dme9wVsxnzedMPrR2VKNYeR0aBD5TyiPyVgkrvduj0CEv1Me0GlwU/UuiDzyea6+usyx3RaivzJRotrepvIyaYkF+SWFUQKjNBYHTQcbS11xMRMAJRbjdsDNMGP6ZMdGQkp5lkUgGXvRZNvmWpZdKXgh5eDfwSyrF6eqi37r2biJEr8SJz9aseSR2D5IYwFdMUj+sD9mUKlgNLjU87DY3tKmNihJG7K8ioxO/t8t6MumW/pluf5okCVSbdifjdMPtMfe53CdaN+b0fntUclU9vDoETmKD/s267V3a7yh6KpIgRcpO1PLADRasnQTXvJdgTSV45nNQFf6pzJ/rrzUJuB1fWUi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(4143699003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnJqWCtKdnN4SkNoaVJ0T2hYRk9GcTdybVI2S0pKTkt0d09KOEg4MXNpRU1y?=
 =?utf-8?B?aGIwbEtNaWNCOFNGaEpyYnFYenBoYnp5Nm5jc21BSXRDU0QrSWFkYURjOE05?=
 =?utf-8?B?ZHA0UVcrTzYyTzhxOEI1d3I4Y0VGbFQxcGZuaVpHVzRFazJhK0pZcmJZWmdQ?=
 =?utf-8?B?ZTRFQ2F0bituemNLcHhYK1lTMnVpcXdMWThzMHo4dE1LSjY1MDZKRVg0Njlh?=
 =?utf-8?B?d1BnQVkySERFRjdySEw1enozN3ZaekdMd2ozdHF6bkY1T1VZY0xtKy9LWVVE?=
 =?utf-8?B?OHMzNWRQUEZpdDkzdWo0QnB0d3hQZXNsSVFMUW1DaUpIMEp5T2hsNDBJYXlv?=
 =?utf-8?B?U3F3WE1tNlVEMTVKNW05alAxQkVHRFd6WEJiYTJmSkZqL0NGM3RKdklybzhm?=
 =?utf-8?B?ejBJODVxZVBvZDJEMGhlZlJwbG4wWlpFbjBWYkhGUGFFTk1ZMVEyMy9KMG1o?=
 =?utf-8?B?QnJRMDdhK2dvY2xXQ0pram1uZHRnV2Z0cUZzeXRqTWdGTzRjOGRxRVpVWjNX?=
 =?utf-8?B?YUI1V1QvM3dCZE5uMDAzamN4MEYvVXdnNXhwek91UWxDRDVKTUo3M3Y0b2Z4?=
 =?utf-8?B?QnFEeGJHd29BQzRJMXBrWlpXamZqRXQrSllYRElmeG5DSkxVVHBHY0EvNzJB?=
 =?utf-8?B?U3lZR3BzL2VNVHFuRWlWRmpFeERTSnJNSVl4RUJLemlvQUdwTjc0T0NyOWFW?=
 =?utf-8?B?SWlTdVZiNzkrT2J3bTFwc201RklpSWI0RVh6YzRQemVGWEZsaU9ZNUc5ZTZO?=
 =?utf-8?B?c3VyeG54VERBaE5EV0hqcUNtMUVwaFgybHhURU5QVTJsbWNyZDVHdXN3R3JU?=
 =?utf-8?B?cm96ZEtmUXNSWmZZd2Z0SGVBKytYcTBiTTFpbmJEUGhjWUhXVWVvUXVBWGRs?=
 =?utf-8?B?aUd6bllreXZEYUlXNlQvQkd1aDg3UHp3Z0FLV0w5OHQvc3BDVnFRdnNtelRv?=
 =?utf-8?B?aDZhemFReG8yck5maWhtWkdGcnhTWndhUWtRV3pBWmFGZmhPdlNaVVNHV3Zp?=
 =?utf-8?B?bTdVSFZsNlduL0xOLzRncWpuS1RQR0FydkFnWHhPazIvYm5taGt0NFBqYlhC?=
 =?utf-8?B?eURSazNrNDVjbUZzY0w1OFE3YjVFUTQ2bVNXaVFXQ0FXSUZMNEtxb3ZQYzFU?=
 =?utf-8?B?cHptMFBSMDY5RXBMUGlybDA3cmJSdThyMnp1MWFVaTY5eUh2ZjA3aWtSRHJh?=
 =?utf-8?B?cW1ocFdCVCtUSG96RlViQmx5M20rTGthbXN2clNhN1dJckg1aWRLdllaUG1C?=
 =?utf-8?B?aVJqUEUyNU9KOUptbk9DRTU4MUIzYjRSUnlDZ0xZU0JlWjQyZjlmVEp2S0wr?=
 =?utf-8?B?VS94YkswdEZFeTBwZDZBeVpyQkRDNnpRQ1RFR2c5MmQ3c0JqMHJDTWFmMmNU?=
 =?utf-8?B?T0FDY0p1SlE1cDFEZmRHVnNYM21heFF5QW9ocitqUjB3cDZ3bUdZSlN0VEtE?=
 =?utf-8?B?a3doUFpCN1BOZWtFSWtmVm9iY0J0MDFBZmczVEdqSnF3aGo2Y3YwdUV5Mk5Q?=
 =?utf-8?B?M3JsTXJpbUdvUXJWVitWdTVjNEFKZFMvMzZ5VTNOZWFPWTZaWGJpMWFETXRG?=
 =?utf-8?B?dXpZaDY1WENNWHlyazhYSVA1R0ZuUmJtcTZqNWhyNUlzV1NJSlNnL3pjRThs?=
 =?utf-8?B?QzdvUk5mNWYvWWxBV2FqTEh2NXBTdUJXUFA2QUxncGd1R2NiSkJSWDduR1dM?=
 =?utf-8?B?ZzZKNHorb3FDVzZ5aXkyUDgyOHRMODJZZkQvMU0ramtRVHBtOVp0MWhUR0hR?=
 =?utf-8?B?Mm5oZ2RQVDZ2a1pEdFNRNzJvVDBYdUdyZWsraElsMWNhMlZWWXNEZlNER28y?=
 =?utf-8?B?ZnhpM01sMmpzbG83UWpiRncwWmI3ZVAyWXZLbmFsMlRwV1RTRW80My9qRnNo?=
 =?utf-8?B?MnN6ZlFubG5ncDJyOHBXMDZyT2gwbS9xcFowcjUwRUdHRE1sQ0gzcWpiaHBT?=
 =?utf-8?B?N3JiUHFhNDZVOHhwSTg4NnF3NVUrd0ZtUUp3YTNGaENTOE0rNTNyWTl5RlFY?=
 =?utf-8?B?bDRCeVBvSTkyVDZPbFpBT0xCOGVVbVdlMXl6V0M1a3FvcXd5aE9ZQWNiSkFn?=
 =?utf-8?B?Sm4waElvbDNvbGNnUnM2Snc1UUJTK05LMktZTzNpWUtoWkE0dDBXTFBTWkZE?=
 =?utf-8?B?RTdhY2JUZDU3ek1LWWgzbnZHYS9uMU9GOEV5dkdmOWRodHJ2WDlrWmtUc3Q3?=
 =?utf-8?B?aVdtZXpIMUsyMU0ydENscnZuU1lCbHlpMlNqZ3BOaVh3UTJ0MWdUb2NpVnRL?=
 =?utf-8?B?cWE3REsxL0N5RUZGV2ZDNjR4dStFaE5pdTBkRiswUzdGN1IwRzdDTnB5MnRU?=
 =?utf-8?B?WU91YVBwOUJTaDY3K2lOM2hQTGZ3VUdLdW1hdGdDRnlSWUJhQUIwUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: agvW0ECAbGvmfT9Q5Rseko4X3vpCxtL+9merCVgEeUBMSO/XpfcmgWDih2jCD8BxV4HRANiipMakhCKiCXMpem7/PgguNjqzWBck+/QmgOHiaIab0JvyhqzvJn+wDSp25lyQADtrpHgvVmRPi1/KeXO8J9/QextO2lLiUzEvEf5LK11dFxxzJjS7XwptlRIMmdHJi7le9VunTvR0f+TJIOvkHwGTtOupeKUNmB7G2OywtSunl0CdCvBfg/RxwdgBDwE/E/sizopozUfKup4BHWlDzaeCVWgQZyl2WCUWNlkkHnd/NIiHWIlfhXhWWxtGDFTMWalnOzbUEnnFiXTABg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf56be5d-08e5-4ba5-a23d-08deb56e8a08
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 06:19:09.9682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6q7ePMpBFUGgROeR3RU1kkLVmLhyYn0T3hxvpbT7lnpZ9qmiPdYHuYEDrgssL8h14D6FkLB2BGj3MdJ1LkY3Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E11A9577E89
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTkvMzFdIGRybS9pOTE1L2Jpb3M6IHBhcnNlIFNucHMncyBW
Uy9QRS1PIHRhYmxlcw0KPiANCj4gU25wcydzIFZTL1BFLU8gdGFibGVzJyBsYXlvdXQgbWF0Y2gg
d2l0aCBkZzJfc25wc19waHlfYnVmX3RyYW5zIGxheW91dC4NCj4gSG93ZXZlciBWQlQtYmFzZWQg
dmFsdWVzIGFyZSB1MzIgd2hpbGUgZGcyX3NucHNfcGh5X2J1Zl90cmFucyB1c2VzIHU4Lg0KPiBU
aGlzIHdpZHRoIG1pc21hdGNoIHByZXZlbnRzIGZyb20gY2FzdGluZyBibG9jay0+dGFibGVzIHRv
IHBvaW50IGF0DQo+IGRnMl9zbnBzX3BoeV9idWZfdHJhbnMgYW5kIHBhcnNpbmcgaXQgdHJpdmlh
bGx5Lg0KPiANCj4gV2Ugd2lsbCB0ZW1wb3JhcmlseSBpbmNyZWFzZSBkZzJfc25wc19idWZfdHJh
bnMgc2l6ZSBidXQgZXZlbnR1YWxseSB3ZSB3aWxsIGdldA0KPiByaWQgb2YgaXQgbGF0ZXIuIFRo
dXMgc3RpY2sgdG8gdGhlIGFwcHJvYWNoIHVzZWQgZm9yIExUJ3MgVlMvUEUtTyBwYXJzaW5nLg0K
PiANCj4gUGFyc2UgZWFjaCBlbnRyeSBmcm9tIGV2ZXJ5IHRhYmxlIGludG8ga3phbGxvYydkIGJ1
ZmZlcnMnIG1hdHJpeC4gUmVhZCBudW1iZXIgb2YNCj4gdGFibGVzIGFuZCBudW1iZXIgb2YgY29s
dW1ucyBmcm9tIHRoZSBibG9jay4gQXNzdW1lIHRoYXQgZWFjaCB0YWJsZSBjb250YWlucw0KPiAx
NiByb3dzLg0KPiANCj4gSW5mbGF0ZSBkZzJfc25wc19waHlfYnVmX3RyYW5zIHNpbmNlIGVhY2gg
VkJULWJhc2VkIHZhbHVlIGlzIHN0b3JlZCBvbiB1MzIuDQo+IFJlZHVjaW5nIHRoZSBzaXplIHdp
bGwgYmUgZG9uZSBpbiBzZXBhcmF0ZSBjb21taXQuDQo+IA0KPiBBZGQgU25wcyB0byB3b3JrYXJv
dW5kIGZvciBhdmFpbGFiaWxpdHkgb2YgVlMvUEUtTyBwYXJzaW5nLg0KPiANCj4gdjItPnYzDQo+
IC0gcmVtb3ZlIHVubmVjZXNzYXJ5IGJyYWNlcyBmcm9tIGlmIGJsb2Nrcw0KPiANCj4gU2lnbmVk
LW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQoNCg0K
U2FtZSB0aGluZyBoZXJlIHNxdWFzaCBwYXRjaGVzIDE5LCAyMA0KDQpSZWdhcmRzLA0KU3VyYWog
S2FuZHBhbA0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgICAgIHwgMzYgKysrKysrKysrKysrKysrKystLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oICAgIHwgIDYgKystLQ0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAzNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggMWIxNGNmZmU2NDFhZS4uMmQ1
NTY4ODkzMTZmMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gQEAgLTIxODcsNiArMjE4NywzMCBAQCBwYXJzZV9jb21wcmVzc2lvbl9wYXJhbWV0
ZXJzKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiAgCX0NCj4gIH0NCj4gDQo+
ICtzdGF0aWMgdm9pZA0KPiArcGFyc2VfdnN3aW5nX3ByZWVtcGhfc25wcyh1bmlvbiBpbnRlbF9k
ZGlfYnVmX3RyYW5zX2VudHJ5ICoqYnVmc19tdHJ4LA0KPiArCQkJICBjb25zdCBzdHJ1Y3QgYmRi
X3Zzd2luZ19wcmVlbXBoICpibG9jaykgew0KPiArCXVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNf
ZW50cnkgKmVudHJ5Ow0KPiArCWNvbnN0IHUzMiAqdGFibGVzID0gYmxvY2stPnRhYmxlczsNCj4g
Kwl1OCBudW1fcm93cyA9IDE2Ow0KPiArCXNpemVfdCBvZmZzZXQgPSAwOw0KPiArCWNvbnN0IHUz
MiAqdmFsczsNCj4gKw0KPiArCWZvciAoaW50IGlkeCA9IDA7IGlkeCA8IGJsb2NrLT5udW1fdGFi
bGVzOyBpZHgrKykgew0KPiArCQlmb3IgKGludCByb3cgPSAwOyByb3cgPCBudW1fcm93czsgcm93
KyspIHsNCj4gKwkJCXZhbHMgPSAmdGFibGVzW29mZnNldF07DQo+ICsNCj4gKwkJCWVudHJ5ID0g
JmJ1ZnNfbXRyeFtpZHhdW3Jvd107DQo+ICsJCQllbnRyeS0+c25wcy52c3dpbmcgPSB2YWxzWzBd
Ow0KPiArCQkJZW50cnktPnNucHMucHJlX2N1cnNvciA9IHZhbHNbMV07DQo+ICsJCQllbnRyeS0+
c25wcy5wb3N0X2N1cnNvciA9IHZhbHNbMl07DQo+ICsNCj4gKwkJCW9mZnNldCArPSBibG9jay0+
bnVtX2NvbHVtbnM7DQo+ICsJCX0NCj4gKwl9DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2b2lkDQo+
ICBwYXJzZV92c3dpbmdfcHJlZW1waF9sdCh1bmlvbiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5
ICoqYnVmc19tdHJ4LA0KPiAgCQkJY29uc3Qgc3RydWN0IGJkYl92c3dpbmdfcHJlZW1waCAqYmxv
Y2spIEBAIC0NCj4gMjIzNCwxMCArMjI1OCwxMyBAQCBwYXJzZV92c3dpbmdfcHJlZW1waF9vdmVy
cmlkZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSkNCj4gIAlmb3IgKGludCBpZHgg
PSAwOyBpZHggPCBibG9jay0+bnVtX3RhYmxlczsgaWR4KyspDQo+ICAJCWJ1ZnNfbXRyeFtpZHhd
ID0ga3phbGxvY19vYmpzKCoqYnVmc19tdHJ4LCBudW1fcm93cyk7DQo+IA0KPiAtCWlmIChIQVNf
TFRfUEhZKGRpc3BsYXkpKQ0KPiArCWlmIChIQVNfTFRfUEhZKGRpc3BsYXkpKSB7DQo+ICAJCXBh
cnNlX3Zzd2luZ19wcmVlbXBoX2x0KGJ1ZnNfbXRyeCwgYmxvY2spOw0KPiAtCWVsc2UNCj4gKwl9
IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KSB7DQo+ICsJCXBhcnNlX3Zzd2lu
Z19wcmVlbXBoX3NucHMoYnVmc19tdHJ4LCBibG9jayk7DQo+ICsJfSBlbHNlIHsNCj4gIAkJZHJt
X2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiVlMvUEUtTyBwYXJzaW5nIG5vdCB5ZXQNCj4gc3VwcG9y
dGVkXG4iKTsNCj4gKwl9DQo+IA0KPiAgCWRpc3BsYXktPnZidC52c3Blby5idWZzX210cnggPSBi
dWZzX210cng7DQo+ICAJZGlzcGxheS0+dmJ0LnZzcGVvLm51bV90YWJsZXMgPSBibG9jay0+bnVt
X3RhYmxlczsgQEAgLTI2OTUsOA0KPiArMjcyMiwxMSBAQCBzdGF0aWMgdm9pZCBvdmVycmlkZV92
c3dpbmdfcHJlZW1waChzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEp
DQo+ICAJaWYgKCFpbnRlbF9iaW9zX2VuY29kZXJfb3ZlcnJpZGVzX3Zzd2luZyhkZXZkYXRhKSkN
Cj4gIAkJcmV0dXJuOw0KPiANCj4gLQlpZiAoSEFTX0xUX1BIWShkaXNwbGF5KSkNCj4gKwlpZiAo
SEFTX0xUX1BIWShkaXNwbGF5KSkgew0KPiArCQlwYXJzZWFibGUgPSB0cnVlOw0KPiArCX0gZWxz
ZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpIHsNCj4gIAkJcGFyc2VhYmxlID0gdHJ1
ZTsNCj4gKwl9DQo+IA0KPiAgCWlmICghcGFyc2VhYmxlKQ0KPiAgCQlyZXR1cm47DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5o
DQo+IGluZGV4IDMwZmFmZWVhZjYyZjIuLjFiNDhkNjYxODllZGUgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+IEBA
IC00NSw5ICs0NSw5IEBAIHN0cnVjdCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zIHsgIH07DQo+
IA0KPiAgc3RydWN0IGRnMl9zbnBzX3BoeV9idWZfdHJhbnMgew0KPiAtCXU4IHZzd2luZzsNCj4g
LQl1OCBwcmVfY3Vyc29yOw0KPiAtCXU4IHBvc3RfY3Vyc29yOw0KPiArCXUzMiB2c3dpbmc7DQo+
ICsJdTMyIHByZV9jdXJzb3I7DQo+ICsJdTMyIHBvc3RfY3Vyc29yOw0KPiAgfTsNCj4gDQo+ICBz
dHJ1Y3QgeGUzcGxwZF9sdF9waHlfYnVmX3RyYW5zIHsNCj4gLS0NCj4gMi40NS4yDQoNCg==
