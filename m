Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OsyMiSL/GleRAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:52:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA944E8830
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B59010F093;
	Thu,  7 May 2026 12:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T5fIEQVp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D8010F03A;
 Thu,  7 May 2026 12:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778158369; x=1809694369;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7MOtarHE9GMNx9g4tY1HlELctjoUzdSBPRzKpOuij+M=;
 b=T5fIEQVpvWRggLGlfex5Pga5+C4TqcjhkhmbUiY+tibTs6o41cOLMGpO
 uQb8EWKHx1NnNffRAmQKv3j/HXOon7VpyA9OUzfR2neSqwzreVBcD41Je
 t0jIo7YJU5zgw6ZtxrGP2KTba/bYxQi/6j9oCOKlGcMY/aFNY/JTrRfbo
 tjdcP5c6ftJ0KIGMbwFEFwFYEctL3QEgFgC1VF0SeEWvoAfl15aV2wHz6
 oj63kT4CDhqPVhgICJslEgg79nvB2grVwY7AQLSDIJsSXJySo8ACd5s5h
 QiSnSf/UE+xbR1nr3bceo2m1JvJXBRVbpZLKbAPGH59s9H08S3pbUKMwT g==;
X-CSE-ConnectionGUID: qn/RlFtiQA2Wl/0oKHABLg==
X-CSE-MsgGUID: Q/e/neQkQhyOB2fSqEPINQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="66633835"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="66633835"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 05:52:46 -0700
X-CSE-ConnectionGUID: e80Cab+aRcmrmiE0v67Ltg==
X-CSE-MsgGUID: i4JYBp8mR9GfwWtVPF7+bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="233791750"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 05:52:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 05:52:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 05:52:45 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 05:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UmMmaGvaZ2AQpCidvMwPJZP1Ph2/iV/F/bbN/SbBBok78POdfhkJnthQYvWoOaaEzBGOqAlkJDvYhZSZShqkhscdPFCvr8Aa9sZgsomPv5NxnYgRyAKJ3RyWMjgOycH6JWz3Eu6NT7KxDsGV9y0Pg461yzlg2KRLal5r8bg9lrlYX7eaCA1qSfZi+sxX3zYOJVWTqubMB8iVP1LsEeRrHsxtHl2CKXdi4hubQX98yXGTuWpumjcFAi56kdaFIW+vzkpKibEcQD+pHIm7b/M2KFlONYCxxOQctJCn0aFm1odcSlhKMyXtlj/eML2F9ooucpLZUbflRQz3r5RKuE6bPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7MOtarHE9GMNx9g4tY1HlELctjoUzdSBPRzKpOuij+M=;
 b=a99EpfAKH+eyyCVfXi/rQ1Gg0/8CHL9QnASZfLEi3zyag0jw7n4C6CFbZug3tWKREsmrdY/ukvGBHBoqjKy1P1pkUTR+Kh24eSqP89AXgchBeHFTZubxZdSkuLSEOfeStf98DZV+PhMiAG3KEaFiW0p9YxUSLKqDx4OAEVvYa+eM0BQeDJoX254KJkpqa4CmZarpv8Ij3hlrIheaqAtKg3AG/anMuKKRIamQEXPc7qbrnc+blNwtKj5T+oGlL3GFyN7J+ZvOEyk60806rSZ+lQ4fYfdpRTZJo7zaX5Fi8WZYrTi/5XOe/4vrvafkrmIwxxHM3yBPwq+smm8X/uuu8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7593.namprd11.prod.outlook.com (2603:10b6:510:27f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.25; Thu, 7 May 2026 12:52:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 12:52:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for NVL
Thread-Topic: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for NVL
Thread-Index: AQHczJpqhs6hpKbRlUWy9XGsqycKZLYAuwoAgAHshwA=
Date: Thu, 7 May 2026 12:52:42 +0000
Message-ID: <bf3c2da2e0c7a0b5aef9f91366ca07345af8cb76.camel@intel.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-5-jouni.hogander@intel.com>
 <DM3PPF208195D8D58A9DB70E8251EC20BA3E33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D58A9DB70E8251EC20BA3E33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7593:EE_
x-ms-office365-filtering-correlation-id: b8046413-cd70-4e82-4c2d-08deac378709
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 3guqfiHcj8h7Jp/izSCR/PukKBfH5NrevwK49IylDf/pAtbkI8uciDaEbNWOx18jNNFd76nKS4BMzgrskkTme0NaT+kDYLaf91d4ErMWXthlxClg3zSBQyVPEqgEKHnQFRh9MpstXW36zm2TjLY2Nv+4Fibsd0gs9omYHRxFRvM7pVXWNtWYBklYdVqEuaMF1Zw7xev/zSIKnsIIybShwGvfUB7NCqLsV0iYvl8fyS5gJU5qWEYavyMI0CHD5kerNtF6aKOJ2YUvP0XDDV6V7njKiFXUdA57mGO8zFO7fLio2TgW+CkNXMuRsV9l5sxEQbynw3UpIPoM0ZYMRWNwyR515puALG9kNBzk0jMIpWV6yFd5b5u5gaVadO3HF88Sye4HV1VEXHfLHAVoMfYxA0oa8NQk+Mz4MOj9Go1ON6vlJMTvvKNC4mxGnt+dvLAqupd5QuhaKgIVkrTr9gf3+r6d34dKY4P3dRfw02JhXlXz2AzCwZk9TVSJgy4cj0IIGELbsSA7f7vu3chDLN4TA+ORJ51J2+B3flwcWrhS06tW1OMqVEV4QtIhLzhozq9cL0l9epw9Ft2ILIv/TO7PvyfVlSLB6A7h/S5ru7lENVwSXFoSeQF3CNHHJEzRJxmSUzrHaf1hyKJoG/XSqTbg1HlG0GqkeoytaphCPndLm0pIJDXtgreCe445xtRkMR7I0yj1J3sBJf0qzuuZ/15Lu1enKiSaa04o+YJqm2M0iHz8WpGbmdWVQdWz6KCMz8wr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0tVT0FKWU4xVldWY29xSUdoV2ZnZ2ZKNE0zMEc4YjZxWXVFUFIrMUdwQzdO?=
 =?utf-8?B?R2ZQTXNDb2VzZDNRejBBaHI0ajluMVdLd0xEc3dzSUpmSEEyeDI0UmxDMVp4?=
 =?utf-8?B?LzA5TEo1V0hhdGpXc1h1TzV4RFEzZElid1ZKdC9VY2o2enZGQ25NZG1haWxi?=
 =?utf-8?B?TUMvandrdTI3VTdOQXlkOStLU0g1S3pZa1V2cUN5K29DZWlVMlRyUnNsQ2ls?=
 =?utf-8?B?cHYyQkJRY3hwYk8rL2JydW4ydDZXK1VFUElYbHVlRkU1OFpFVmlPZTYyUlli?=
 =?utf-8?B?bHk1TVB3QnBud2JoTlRHMkFFOThZNko1ZTdROVF2K0cwbTAyMDhieEJzQWpr?=
 =?utf-8?B?N2tCZ2pLMXc1UDlrVUN6ZmRheXExM1ZDaWNDZW1FNkNmeHpFOFpOSHJLOFNn?=
 =?utf-8?B?N3BMcURnNXA0OVhWQTFmaWs2bDZGSXdESWhMdCt6ZDRzOGM0dURNYW9wQUxL?=
 =?utf-8?B?bXAyRlA3SGZBVlpuQVoybzBHK04wSDhYOFhRT3BGUGV1akhpYlBTcXYxRE1p?=
 =?utf-8?B?US9EOXFXWHpvVW02R3hOdStWMys2ek5Oa2grN0dsUDlHbXhSZFNaQ1hzL3B4?=
 =?utf-8?B?QktUS1ZUNzRISk0zRFRmL3hESFVnRjhLeUY4KzFkMUNycDVlRVVQRFVyd1FL?=
 =?utf-8?B?WkRHd2dQd0R5ejNqMjJQdnZ5MzRJbjNLblVlOGdXYmFVWlk5ZVBndnlISXZw?=
 =?utf-8?B?ajhHQnJZaHl6b2FwdFFzUXdCdzZlbDNnVDNJQkJ1NFcwSGxJWExudGRaSTBp?=
 =?utf-8?B?ZEZDY2U4KzdFSGtDTmNrYlY4MUdOM3BINTF3SDhPdUNlc3lmT3oxTnBoakk0?=
 =?utf-8?B?OGVTUStsQjlRYk54YVVJQXdlUHNQN0U3SGRXRTV1VnUxSUliNTJzZ05XK2JG?=
 =?utf-8?B?bmhsNWpvRC9YbDM4VzRVNzg5MVdCR3VxSUo2TDdtTksyc1EybnBzSldOTnZk?=
 =?utf-8?B?V1NtT2ExcHJjZTZkUjFDWnFRdksxd3dEaVY5MXdsMUdWallYWEluR01JQUVK?=
 =?utf-8?B?QU16Y0FkTkRzSWpVdHlwRXJJa2E5UVpqRUU0cDJEOUNlVU5yTFRvbXJsSHhr?=
 =?utf-8?B?cGh0blFqWEVtQVI1ZTRDaXlPQXdpeHFxNG43R21sUlhIelRjRUpBZGw1NlBT?=
 =?utf-8?B?dTRjang1Z3FoTnY0VGVjUUNRUFJDeTRDdkJpdnMvaGtrbkNXVkpFbUhJMFRG?=
 =?utf-8?B?c21HcjZ4amJ5TE9aUVFZVm00YmZUNDhLeGRqN2dJQjMrc0lSOUM0TUNwaDdy?=
 =?utf-8?B?U2Nnb1ArTDVJSnppK0lTektERjA2bGNsRVFEUFlYN0kvbUNXT2txdTE4RlNJ?=
 =?utf-8?B?S3dFY2h2UHFYSmlNNXNNUmg2cldSeXUyZUxLRHVROVZvZUJSWjhHc1g4d3BO?=
 =?utf-8?B?Y3VpK3ZqWkJzaldEMHdTdmpRaVB5MGtGeHdheUZuREJFdDNDUjFyRmFiWHJz?=
 =?utf-8?B?T1RlT2tBdWliNE9nM242MlduU3hDTTM5Y0NGaTNweWw5ejhGSDBBWWoyTzVq?=
 =?utf-8?B?SnpHTGdrM0N3UyszdE5JRzcwZ0FRcy9BdC84cmZndkMxV2hxaUhwOU1Cbk5a?=
 =?utf-8?B?K201VklieHpyakdmV2ZmelkySlhDdW0xanZmK1BhT1lpdGlXakxFR2owNWhi?=
 =?utf-8?B?NFEvc24rMnQzUjZma01rLzRQYldGTnR5WTI0SnVxZWVNeDJBbE9IcGpSWERk?=
 =?utf-8?B?ME5kMThYNVAwQ1NydGN0bURCcURFVWpqdzllVHBZWEs2Mk9EVmdSZDI2ZTVR?=
 =?utf-8?B?aVg4aWN3Znc5UVI4RjMzS1o1MkVabWIrdzVOQzdiTjZRQmRMcnFoNWYzb2xi?=
 =?utf-8?B?a09UTXJIR0s2V0tiTTZkRFpwSTZUVEVlTXAyRy80ckxxd1VURWdqTG9ncHhz?=
 =?utf-8?B?QUJjRUViVU5xSERic0ZYMW84dVIyZmw1dEZFNTRXQmVtSDVYcVU0dVYxZlR4?=
 =?utf-8?B?di80UVNhSzd0aHRDWUR5Y2gyVkFqeFlqd0lpQ1hNZ2loSzhPM2FxTk9MQnhM?=
 =?utf-8?B?Smt2SnIzSE5TVFcyVFBFeEo3QVpick9iV2U2Y1NxRkUxemN5TnRJUEVqUzVz?=
 =?utf-8?B?allnUHEzVitSMkFIV044U3Y4K1cwS01OankzekErMW1IN3owUG9GdFpZeEh5?=
 =?utf-8?B?c3ZrU2xveG4rT2x0enNybWtoNjJhMW9zdEt5K00vdXAraEZScEpXM2tmZWRC?=
 =?utf-8?B?ZUJGa1F1eS81T2p5SitjZGp1aEViMkJkZHB3RFgweDNBSmo4Y3ZVM1R2MkYw?=
 =?utf-8?B?b21yOERFZWlLTjhEYTE1bklUVFUzY3ZHbnZlL1g1Qy80Q3lHU1B1RlZqcmVv?=
 =?utf-8?B?ZEV3RExSTGVlZEwrVy9RY2FZZ25JcHJiQzMreldNTk15MzRUcU9HQVY3bkJD?=
 =?utf-8?Q?yjqL1i49/M1E2qmg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E20053F30155FA42BBE6121AC20567A0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ONCbvcjVRwfEX253JP+BYJOLWkcXTCQ20d3RAbXgOPWHAp/Os4E90xY5fMOpl64YqVzl0WXdwpwFQ/TNg42OeDouAkFkpzay/w43FkdKBEBpjq9ojcKiflW/z0EC9z/xEgdXjfFu2HDVTct7aGFJPCYpj12Z5z8CA8cTy8/CcRvoJ7wtPftKvqhqsgBVGDgNy3Joz2IK0FwLgB2IWYBkAnE2m42iTI6C5QmeHtLijTIA61km+TmlyRjtP3Xip8fko3N1EwdcK5LH4wsGnDDSP2mC/E1dkDBZ8yxaZdFU0BTELQYWpWjjLIp4Ml2/y57XfZ7LJdMj5REehOJqa9GpMQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8046413-cd70-4e82-4c2d-08deac378709
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2026 12:52:42.1631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fir39WoIctSxIjwZpj/wmaTlL3bOLmuYxfwchLfdBrAt7fw2COyqX6ZOwg1oTw9KMJwO8akojRIFk95ryCqSLqRJigtSoVP8Gn0gG4B0qmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7593
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
X-Rspamd-Queue-Id: 2CA944E8830
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTA1LTA2IGF0IDA3OjI5ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0vaTkxNS9wc3I6IEFwcGx5IFNEUCBvbiBwcmlv
ciBzY2FubGluZQ0KPiA+IHdvcmthcm91bmQNCj4gPiBmb3IgTlZMDQo+ID4gDQo+ID4gSW4gTlZM
IHRoZXJlIGlzIGFuIEhXIG9wdGltaXphdGlvbiBkb25lLiBXaGVuIHRoZXJlIGlzIGFuIFNVDQo+
ID4gdHJpZ2dlcmVkIGluDQo+ID4gQ2FwdHVyZSBzdGF0ZSwgTGluayB3aWxsIGJlIGtlcHQgT04g
cG9zdCBDYXB0dXJlIENSQyBTRFAuIEJlZm9yZQ0KPiA+IHZhbGlkIFNVDQo+ID4gcGl4ZWxzIElu
dGVsIHNvdXJjZSB3aWxsIHRyYW5zbWl0IGR1bW15IHBpeGVscy4gU29tZSBUQ09OUyBhcmUNCj4g
PiBpbXByb3Blcmx5DQo+ID4gY29uc2lkZXJpbmcgdGhlc2UgZHVtbXkgcGl4ZWxzIGFzIGEgdmFs
aWQgcGl4ZWwgZGF0YS4gUHJpb3IgTlZMDQo+ID4gbGluayB3YXMgd2FzDQo+ID4gdHVybmVkIG9m
IGV2ZW4gaWYgdGhlcmUgd2FzIFNVIHRyaWdnZXJlZCBpbiBDYXB0dXJlIHN0YXRlIGFuZCBubw0K
PiA+IGR1bW15IHBpeGVscw0KPiANCj4gKm9mZg0KPiAqY2FwdHVyZQ0KPiANCj4gPiB3ZXJlIHRy
YW5zbWl0dGVkLiBUaGVzZSBkdW1teSBwaXhlbHMgYXJlIHByb2JsZW0gb25seSBpZiBTRFAgb24N
Cj4gPiBwcmlvcg0KPiA+IHNjYW5saW5lIGlzIHVzZWQgYW5kIEVhcmx5IFRyYW5zcG9ydCBpcyBu
b3QgaW4gdXNlLiBUaGUgd29ya2Fyb3VuZA0KPiA+IGlzIHRvIHN0YXJ0DQo+ID4gU1UgYXJlYSBh
bHdheXMgYXQgc2NhbmxpbmUgMC4NCj4gPiANCj4gPiBCc3BlYzogNzQ3NDEsIDc5NDgyDQo+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgNSArKysrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiA+IA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggMzQxMTg2NjIyZWQ0Li4yODY2OGZlZDgzNDcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjkxMCw2ICsyOTEwLDExIEBAIGlu
dGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91bmRzKHN0cnVjdA0KPiA+IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqAJwqDCoMKgIGNydGNfc3RhdGUtPnNwbGl0dGVyLmVu
YWJsZSkNCj4gPiDCoAkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gMDsNCj4gPiANCj4g
PiArCS8qIFdhXzE2MDI5MDI0MDg4ICovDQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkg
Pj0gMzUgJiYgY3J0Y19zdGF0ZS0NCj4gPiA+IHJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSAm
Jg0KPiA+ICsJwqDCoMKgICFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQpDQo+
ID4gKwkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gMDsNCj4gDQo+IEkgYW0gYSBsaXR0
bGUgY29uZnVzZWQgYXMgdG8gd2hhdCB0aGUgV0EgaXMgYXNraW5nIGZyb20gdXMNCj4gQWNjb3Jk
aW5nIHRvIEJzcGVjDQo+ICJTZWxlY3RpdmUgVXBkYXRlIENvbnNpZGVyYXRpb25zDQo+IFdoZW4g
ZXhpdGluZyB0aGUgQ2FwdHVyZSBmcmFtZSwgaWYgdGhlcmUgaXMgYW4gU1UgYXZhaWxhYmxlLCB0
aGUgUFNSMg0KPiBmdW5jdGlvbiB3aWxsIGtlZXAgdGhlIG1haW4gbGluayBhd2FrZSB1bnRpbCB0
aGUgU1UgaGFzIGJlZW4gc2VudCB0bw0KPiB0aGUgUGFuZWwuwqAgU29tZSBQYW5lbHMgbWF5IGhh
dmUgYSBwcm9ibGVtIHdpdGggdGhpcyBiZWhhdmlvciB3aGljaA0KPiB3aWxsIHJlcXVpcmUgdGhl
IERyaXZlciB0byBkbyBvbmUgb2YgdGhlIGZvbGxvd2luZyAoaW4gb3JkZXIgb2YNCj4gcHJpb3Jp
dHkpOg0KPiANCj4gU2V0IDB4M0YwIERQQ0QgdG8gMHgyIHdoaWNoIG1lYW5zIHRoZSBUQ09OIGhh
cyBubyByZXN0cmljdGlvbiBvZg0KPiAxMDBuc2VjIGJldHdlZW4gVlNDIFNEUCB0byBTVSBzdGFy
dC4NCj4gSWYgYWJvdmUgY2Fubm90IGJlIHN1cHBvcnRlZCBwbHVzIHRoZSBUQ09OIHZlbmRvciBj
YW4gc3VwcG9ydCBlYXJseQ0KPiB0cmFuc3BvcnQsIHRoZW4gZW5hYmxlIGVhcmx5IHRyYW5zcG9y
dC4NCj4gSWYgbmVpdGhlciBvZiAjMSBhbmQgIzIgY2FuIGJlIGRvbmUgZnJvbSBUQ09OLCBpdCB3
aWxsIGJlIGEgY3VzdG9tIFdBDQo+IGluIGRyaXZlciB0byBhbHdheXMgc3RhcnQgU1UgYXQgc2Nh
bmxpbmUgMCAodGhpcyB3aWxsIGNvbWUgYXMgYSBwb3dlcg0KPiBwZW5hbHR5KS4NCj4gIg0KPiAN
Cj4gSGVyZSBpdCBzYXlzIGl0cyBkcml2ZXIncyByZXNwb25zaWJpbGl0eSB0byBzZXQgMHgzRjAg
RFBDRCAoSSBkb24ndA0KPiBzZWUgdGhhdCBoYXBwZWluaW5nIGFueXdoZXJlKcKgIGJ1dCB0aGVu
IGFsbCB3ZSBkbyBpcyBqdXN0IHJlYWQgdGhpcw0KPiBEUENEIGFuZCBkZWNpZGUgaWYgY3J0Y19z
dGF0ZS0NCj4gPiByZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUncyB2YWx1ZSAuSXMgdGhhdCBz
b21lIHNvcnQgb2YgdHlwbyBvcg0KPiA+IGFtIEkgbWlzc2luZyBzb21ldGhpbmcgaGVyZSA/DQoN
CkdlbmVyYWxseSB0aGlzIElOVEVMX1dBX1JFR0lTVEVSIGNhcHMgaXMgYSBjYXBhYmlsaXRpZXMg
cmVnaXN0ZXIgYW5kDQpzdXBwb3NlZCB0byBiZSByZWFkIG9ubHkgZm9yIGRyaXZlci4gVG8gbXkg
dW5kZXJzdGFuZGluZyB3ZSBhcmUgbm90DQpzdXBwb3NlZCB0byB3cml0ZSBhbnl0aGluZyB0aGVy
ZS4gQW55d2F5cyBJIHdpbGwgYXNrIGZvciBjbGFyaWZpY2F0aW9uDQppbiBCc3BlYyBqdXN0IHRv
IGJlIHN1cmUgYW5kIHRvIGdldCBCc3BlYyBjb3JyZWN0ZWQgb24gdGhpcy4NCg0KQlIsDQpKb3Vu
aSBIw7ZnYW5kZXINCg0KPiANCj4gUmVnYXJkcywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiAr
DQo+ID4gwqAJLyogV2EgMTQwMTk4MzQ4MzYgKi8NCj4gPiDCoAlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPT0gMzApDQo+ID4gwqAJCWludGVsX3Bzcl9hcHBseV9wcl9saW5rX29uX3N1X3dhKGNy
dGNfc3RhdGUpOw0KPiA+IC0tDQo+ID4gMi40My4wDQo+IA0KDQo=
