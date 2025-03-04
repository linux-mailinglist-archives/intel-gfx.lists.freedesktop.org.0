Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056A4A4DF9A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 14:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0B210E384;
	Tue,  4 Mar 2025 13:48:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3n7OUdc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37B310E384
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 13:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741096094; x=1772632094;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=y0M2zErLiDS4qqU8EFGrPWrqZB9VOXD+wW0aQRQ18nY=;
 b=D3n7OUdctxgLjp+wM636rmq1Ve1RMZOMFIR0oGLp/1ym98KeaiMl8TZA
 TOK12TwatAo11rH455f/2SUPMEbYU4Vh2RYnyvrxnj8hqH+3nscuguP9z
 JVC5pn5qnNGK4oFNd3habnNbPoXOZnXHUihYUEPpkd09WCf6uz+Gq6YU+
 +7B9rDCtmg7HWdGOrGmbtSD85ZmeZ8y0Bv5brlOxD/nuhmV0T/wQgTCqj
 TAKy4twuJja7cf3lfMOT3C7r4Je0Jzjj8NHnCjuaVPDncMt8fegAgZW44
 7AmB1l6CaKll8i8XeGRZodoVEBl5d2TA+kuOCaf55BqRkVrbVkiQMqIzn w==;
X-CSE-ConnectionGUID: pSop8z4sRvSyMc4sFi+X7Q==
X-CSE-MsgGUID: UX372EIKQ8CFZZDEGVCMww==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="29601491"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="29601491"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:48:14 -0800
X-CSE-ConnectionGUID: 8mGnFau0TOuXl1fMu9vyYw==
X-CSE-MsgGUID: AIlxv+O4TCaTg9WeIyUBEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155567525"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 05:48:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 05:48:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 05:48:13 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 05:48:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TQ56Yi+hhcwsArMaQ0LcmzknB/LURImDUu4xchSbo4Bdn0iVMewwQZk9EcGsxRlsctfAEzH03Qj+vlUysUfuByCexkqdF3ksZMvfAunCS0g4T0guB8pJ84Nb/tcEtG7UhoD04O0wApbWZ8KR6dlkZcdzEbosnFKJ+qDDYXCPzPuL10R93Hbc57h6yvCatQtt4iuV39xly4ziLb66UKIJXTnylNK4LJcc375wIFkECYMzWq97dRscJAh7867iDdKoIFDJ3jb5aBS3YB3mreDNgL1VdOtyQkMuBEEG3BzgR8sa6t5t3qLRODi6QwnwV40gQA+lnzXM26FuWlvMJicxZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0M2zErLiDS4qqU8EFGrPWrqZB9VOXD+wW0aQRQ18nY=;
 b=aKyfj7vaP1jvYNaUJisicMXmob/8/sSgDPvJtZXMNU83zlDxmcE0rAGHbpaMj8uMON+X3iyGgNlUg+hDlSE1KhocnzNjFN8POq5to7ogjOdcbBjAGOwor/rcbCmslLBL9rSLuqHPEhLjCXkj5qxEPkwUP4xs+hSeoMJpb3slKSz15ufyLdE8LHCNh76FDDheSMz95DwdlJO0E7iV/P4dg31CEBvwSa0r5V+LPc+M68Aq9M+Olx1POtRweQc9TTV1FaGUmQjxvSVIaSvlckuzSbHYqWGBYzzsfSK8uI+5S1Ax4juC1i0+IVogdL1Z4woI9H6q3k8YjnfCKrcTJIIICw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH0PR11MB8191.namprd11.prod.outlook.com (2603:10b6:610:181::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 13:47:57 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 13:47:57 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 08/19] drm/i915: Add skl_wm_plane_disable_noatomic()
Thread-Topic: [PATCH 08/19] drm/i915: Add skl_wm_plane_disable_noatomic()
Thread-Index: AQHbgkruujXVph8mqEGO8rhoQnDye7NjE3qA
Date: Tue, 4 Mar 2025 13:47:57 +0000
Message-ID: <34e5aab51b72b6af8e52b7c7a7558aeb417cc7d8.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH0PR11MB8191:EE_
x-ms-office365-filtering-correlation-id: efdc6ebd-b71c-468d-d824-08dd5b232ba4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dHRYVHlWdjJIWDJaL0ZxMmFLejVFUTl1Sjd3R01ER3REQkZYS3E1ZnVRZ0Iy?=
 =?utf-8?B?YWN3YTVySXJpWjVsWCthYVdHSHF6WC9BTEloalVGK3ZTK0Nta3Z6YTdoUG1P?=
 =?utf-8?B?UUxVbmovWHpqcVlYeDZMUXFyZktSYUNoKy9kME9GUGthTFNRUWxnOUk4Z0Za?=
 =?utf-8?B?RmJ6ZVRUSVE3UzFTdTBrRXB6V21peWRVaFpWbEh3UXV1QnBTRGtIV1VjQXFR?=
 =?utf-8?B?Q1VGV1lpSEQvZU5GVVYxL21ONEFMS3RZQVVUOGh5Sm1nY3c0Yk9FZGl2Mnkr?=
 =?utf-8?B?UStlRnVkVDlLdnNPdVJ5eCs4YnpKSlV6MmVzTHVuNkxHSGZlaWllOHI3akgr?=
 =?utf-8?B?ZDEwazBOL3ZCcngrY3VSdS8wUjQ3QkVWcEZBWko3V2hHTWFhR0JUd3BHVnE2?=
 =?utf-8?B?V1NmTjdqMVp1Z1l0elQxVkdkcWRoa2VYZkdWQS84OFczR21nZWdRai9NWHl1?=
 =?utf-8?B?UGJQV3hBYTJnN2x2WlVaaVFjNkJEOEFxZW5aR3FVMXR0RUVSUnNmVXJ0aSto?=
 =?utf-8?B?VGx4dUxYMk9xNHBjS2hIVXdYS01ZTHp0SFFiUDdTd25xNnlZVUFWS0dURzBj?=
 =?utf-8?B?NHo2SFRNbGZCa2E5aFdobmVCYUJVMHpkVEZqbUNWLzdoOTkwQXZBUkJrNUo3?=
 =?utf-8?B?bXJBWDlZc3VIVDYvaVU0RVkxRnJ3NTNLSW9jWHlUNnVHSEM2ZXBpYVhHYzlR?=
 =?utf-8?B?bzZsejZjRko5b2N6VHl4Z2VUbE1WRXBVTTViVmV0QStuT3RjY2ZIdWwxb205?=
 =?utf-8?B?TnNmKzhya2pEdCtIM0UvV1pQQVo4SUU3b21EYVR2T1lDTTZuM1crYWQwcGI2?=
 =?utf-8?B?eUZTTWM2S1BiMmV2YnlJL3o2NFpFMmhPWWN6OXlrRnVqbE1MMmVkeUdFbGxY?=
 =?utf-8?B?b3N1QThYc054UHVyYXUzcE1jdnlJZUdxcmxvajJyNzhkSlE1Z3NYdWNDaW8y?=
 =?utf-8?B?ckVaMzExZGd1QWhXVHo2eUpTRDNQQ2tTVk8raWUydjJoVFdWZlYzbGZKcFZp?=
 =?utf-8?B?YVRsUkNUM1ArVlVMa3BzUU1hZmlNYVp5QU44UFZ5eDl6WlZaQi9YdEtzcVhv?=
 =?utf-8?B?akFtei80TGdhL0ZOQWN5dmNGajR0UUxxckxrTVR6Uk5Sd1N6N3hVYmVxNjE4?=
 =?utf-8?B?cFAyNmxGUjl3RzdYNEYybUJOUERlZ2VESHJFREp5RHJOUmF0bmUxT1BSOHBZ?=
 =?utf-8?B?US9DWFhIT2J4c3VCODRybitHUm9kNEVIZFV0eE1COG4xcVhyZnJRRDl1U2cw?=
 =?utf-8?B?UC9SNnBkeWtERDRxOUpqSlhLU1d0aDBDSEVaSkgwRlFld3BhaFBwQWRJb3hu?=
 =?utf-8?B?SUpoK1dxRWRrNzEyckc4M3ZoeGZuK3hWWnpieFlRc2NHalAvamM3SDQ5ejVX?=
 =?utf-8?B?RWhlVUZNNFFCaklkWTJJelRtYVlvU2hGTFIxeFY2YWtnOTh4b2hCdDhVckVM?=
 =?utf-8?B?UzZEWUVDUU0wMStpRW5XNFl4UE9kV053ODFKQmYrZXJYNDArVTB2ZmxUZFhE?=
 =?utf-8?B?ZW5HYWhqZE4xbGVEbHpLblFYa3Qxdk9EZjdWV21SVkoweTdWZGUwTXNPVXQx?=
 =?utf-8?B?L0NkdXFHQ0VtcWxBRHFQbTd5ZlBWMWdCekN2VGg2Q1ZVMWtKaHlYeG11Rzhx?=
 =?utf-8?B?YVpVK3RDTFpaOEh6QXdwbHVyUjdtU3RCa0lJVzY3dlNuWlZnbnBLOHZRWFNV?=
 =?utf-8?B?amQ1VzZ4cm9NZFJWaXYvM0NuTW9EN095WWYwMjJIQzdaVWZZcVVMNzZ1YVor?=
 =?utf-8?B?UXlvQmI5QTdHSERmak9xWXk2YVpWL3g4Ynd0SnpRTFZjMXk5dG00K2lTdU1i?=
 =?utf-8?B?eDFFeG4rWTJ0QUxaTUNPZlZnT0x1dzVwdEw3c2grL0VtNndDR1RTeTNuTDBF?=
 =?utf-8?B?M1k4WEVmaytwR3A2TTNTNUQ2c3k0RjIzeFRNM3lkdEptY1ZZVVduR09kcWxo?=
 =?utf-8?Q?GTUNDw7mF9K8oGbrNMir5/A72tlabwqg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGxmVjhKT3NBRVNHWGFiTkRVeVJYWWdmellqSTlOZHp6VzdPK2JCOVBuWU9K?=
 =?utf-8?B?clkxNmowU2JyN2duZzhsdkdlMmFkVWJrbmVleXBjaStHdmFidi9MMi81VGEr?=
 =?utf-8?B?QlZxR0tJcnIzQld3eGo1ZUJ6L0ErVEVHcmFXUUJyM3U5Q2xUd29aR29Cd3o3?=
 =?utf-8?B?Rm10Ynd4YWVCQ1R6ekpuenl4bEE2N0QvYWZra1k5ZWMzZjNuNytkOUlOdFZp?=
 =?utf-8?B?UEorSCtTajQxanhNMnlHZDQ2VDdLQkg5VXpMU1VUOUJ6enNGWk55QkE0WVVY?=
 =?utf-8?B?WXJiYks5VGd3bzlIYnNIODVyc0h5cHVtdUtqWHRjQXRrRDV1KzcxQ1R4NE9Q?=
 =?utf-8?B?UkFrM21LWU44VWVMWUtJQTZaZlpYR2JLenl2L3QzVlJXVC9wM1JleW1aOTY2?=
 =?utf-8?B?WVlGT3ZadE5hN01pNHZFcGdIa2toekQ2dHB3NWZxS08xYkVYRWR6UmMrdWdS?=
 =?utf-8?B?cldVYlVESGFHaG5JdCtvVXZhK0UrdytZRVh1RkxZRnBxbVo1R2FEZGZ4eVgy?=
 =?utf-8?B?ZVVFcHhhWEVzU3oraTNGQ2xSK0hkUXROR1lRa3paU3FUUWwweWVYaFNyNVVn?=
 =?utf-8?B?Mi92RDU5NzYyeWNEckl4c2tSTUVsQ0h0bUpSaEh1aEpaeElVdkZuWnpycnl0?=
 =?utf-8?B?T3NGTWo5ZVIwM3NaY044R2k1eUs2bklXTVJNL3dDbHUrQ0ZxZjVNM2JXTXZS?=
 =?utf-8?B?clFVWFRndEZhZTlhV3QvZmUyOEJwZEQxSWlOQWxiTTR4TnF3YlY5ZW15SzJt?=
 =?utf-8?B?QjN5ZGwveEp1cTl0c0t0bmN5ak0vUjdQK1NYSnMzN2lHQ3RaQXRpVHlUTnpa?=
 =?utf-8?B?Kzk5UHhlY2M5UU9HQm5vcFROSEZha3E0eHJGUUdIOGJNdHZvTy93WWJxTWhE?=
 =?utf-8?B?bm80M1dxWHFraGJpS3hhTmF4Nm5hRTIxYkdkSXpDY3ptaHU3Q1ViMTVJSGdT?=
 =?utf-8?B?VndnTVpYL3ZFbDI1TFhDWmUvVDB2c2huVDhFMkpYWnJaWmtSV1NRTUZMeTNl?=
 =?utf-8?B?ZGFCQU0wUkdrWmMyS3R4MjVFbjdwSVBvL3l4QTFiQmk5dHFIYklBWUJ1cmR2?=
 =?utf-8?B?akdQR2tSOEpTNEJadXhYMVFMcXI2VnJONVN0dGlEejhvc2cyL0VsYUdEbDVv?=
 =?utf-8?B?QjFsdzd2K0tIb2hyVjlONDFOWWpXdFIvWmloVGNPbjVFOHU0TmlxZktkN0c2?=
 =?utf-8?B?R2xVSTkxS0lGeU15MURsQ3dmejQ0YnBrVEtDa0pnTkJZaVMwVWhQa2txTWRH?=
 =?utf-8?B?bnF4TmZFcloxMlYrOGZHMSs3NDBUcnJTV1JBL0p4a0Zha2lIYitWUTkzWXhk?=
 =?utf-8?B?TEFjbXVLeFpVOWRCYVkxYTBHOGFGK3dYa0VVaGNRRU5ZZ1ZYUkNpRjZQOFFp?=
 =?utf-8?B?eFpQbWZLOTJsRmFXV1RIdzg2UkgvZmJzVVFmSGRxOTkzNWl0K1pINlBnYno4?=
 =?utf-8?B?R2ltaHliWjhXWU01QUo5SGxnZ2V3NFhTZkdhdjFaUkdQWEFuN1pqQXFNWHg0?=
 =?utf-8?B?dTlRenZ6UUdJdDI3NUlnelZQNHNya0xGVXZWYjJqUCtTL0J4WDFWVEVoMnUy?=
 =?utf-8?B?WFdoQkhkcEhIbG1Rc2xJN1ZrQ2o2WDB4dzJRaTg4WkJxOHBKRnJYNWJGK3pR?=
 =?utf-8?B?YnFXa091K3ZWUUNGOU9KSVZDVXJZT0JNY2VDQ0pwQkdVbXFTRWNhQisxVzY4?=
 =?utf-8?B?a3ZrRWYvTVpXUXpQUmdkcW9EL2p6Q1A1OTlyaWpnYU9ZWFF3M3o4Y0FDemJV?=
 =?utf-8?B?c29uYW1KcS9TdUVUa2t5ZjRNcUpVZlVrc1U3SGZ6aGQyWWZBOXdGeHZJQzBm?=
 =?utf-8?B?MjJNQlZnMjc3WFYrNTdGWTByVHB6eFF6SmF2b2hFNHgvT2pFL0dYTEtsaGRW?=
 =?utf-8?B?OGNqNHp3R3FtZi9IcUF3cWdENVlWVlhWNkRNMzlxdmltY00zWWJOR2JRbVFJ?=
 =?utf-8?B?a200NVRqTytHRGtXNU84SVdwZCtUY3UrM1RtQ1VNcEY3T1orc21jdVVKampI?=
 =?utf-8?B?SzNLc3paU2ticCtheStKajI1TmQ5TGIxTi9US3J6YVFmc1ZGcjJMcjJtblpx?=
 =?utf-8?B?K2UxTVIxVndvYllxQmNFN3pGeTFVbFBEK2pPcnorU3BzRmk5bEU2dThpeEMr?=
 =?utf-8?B?YzNoKzNTaGJYS1ZacHVaTW5ITG5jbkZ2c1dYZEQ4Z0ZEVG93Mk1wUzZrZzVC?=
 =?utf-8?Q?1b5/aFTP/CY6120a/OwVfZg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA6E66BC0AF9CF41B6D934500358D032@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efdc6ebd-b71c-468d-d824-08dd5b232ba4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 13:47:57.0443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+8n9iswb7dJTFiblaM1JKEzT6Ao2dcu908TD8Rqen1a4V6cQun/D5sQZ1LUKMxv1ySZ1RnRBWGKnvXWrzcJZBsuY6LHLttpkUP2dQG70Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8191
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWRkIHNrbF93bV9wbGFuZV9kaXNhYmxlX25vYXRvbWljKCkgd2hpY2ggd2lsbCBjbGVh
ciBvdXQgYWxsDQo+IHRoZSBkZGIgYW5kIHdtIHN0YXRlIGZvciB0aGUgcGxhbmUuIEFuZCBsZXQn
cyBkbyB0aGlzIF9iZWZvcmVfDQo+IHdlIGNhbGwgcGxhbmUtPmRpc2FibGVfYXJtKCkgc28gdGhh
dCBpdCdsbCBhY3R1YWxseSBjbGVhciBvdXQNCj4gdGhlIHN0YXRlIGluIHRoZSBoYXJkd2FyZSBh
cyB3ZWxsLg0KPiANCj4gQ3VycmVudGx5IHRoaXMgd29uJ3QgZG8gYW55dGhpbmcgbmV3IGZvciBt
b3N0IG9mIHRoZQ0KPiBpbnRlbF9wbGFuZV9kaXNhYmxlX25vYXRvbWljKCkgY2FsbHMgc2luY2Ug
dGhvc2UgYXJlIGRvbmUgYmVmb3JlDQo+IHdtIHJlYWRvdXQsIGFuZCB0aHVzIGV2ZXJ5dGhpbmcg
d20vZGRiIHJlbGF0ZWQgaW4gdGhlIHN0YXRlDQo+IHdpbGwgc3RpbGwgYmUgemVyb2VkIGFueXdh
eS4gVGhlIG9ubHkgZGlmZmVyZW5jZSB3aWxsIGJlIGZvcg0KPiBza2xfZGJ1Zl9zYW5pdGl6ZSgp
IGlzIGhhcHBlbnMgYWZ0ZXIgd20gcmVhZG91dC4gQnV0IEknbGwgYmUNCj4gcmVvcmRlcmluZyB0
aGlnbnMgc28gdGhhdCB3bSByZWFkb3V0IGhhcHBlbnMgZWFybGllciBhbmQgYXQgdGhhdA0KPiBw
b2ludCB0aGlzIHdpbGwgZ3VhcmFudGVlIHRoYXQgd2Ugc3RpbGwgY2xlYXIgb3V0IHRoZSBvbGQN
Cj4gd20vZGRiIGp1bmsgZnJvbSB0aGUgc3RhdGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMiArKw0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMjIgKysrKysr
KysrKysrKysrKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRl
cm1hcmsuaCB8wqAgMiArKw0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQ0K
PiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxs
YWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IGluZGV4IDk3NTZmNTIxODRjMC4uNWE0OTUzYmE0ZDE5IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAt
Njc4LDYgKzY3OCw4IEBAIHZvaWQgaW50ZWxfcGxhbmVfZGlzYWJsZV9ub2F0b21pYyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywNCj4gwqAJaW50ZWxfc2V0X3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0
ZSwgcGxhbmVfc3RhdGUsIGZhbHNlKTsNCj4gwqAJaW50ZWxfcGxhbmVfZml4dXBfYml0bWFza3Mo
Y3J0Y19zdGF0ZSk7DQo+IMKgDQo+ICsJc2tsX3dtX3BsYW5lX2Rpc2FibGVfbm9hdG9taWMoY3J0
YywgcGxhbmUpOw0KPiArDQo+IMKgCWlmICgoY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH5C
SVQoUExBTkVfQ1VSU09SKSkgPT0gMCAmJg0KPiDCoAnCoMKgwqAgaHN3X2lwc19kaXNhYmxlKGNy
dGNfc3RhdGUpKSB7DQo+IMKgCQljcnRjX3N0YXRlLT5pcHNfZW5hYmxlZCA9IGZhbHNlOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRl
eCA5NTg0ZDRkYTEzZDAuLmRhN2ZmY2ZkOTQ3OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTM4NjcsNiArMzg2NywyOCBAQCB2
b2lkIHNrbF93bV9jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+IMKgCW1lbXNldCgmY3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwgMCwgc2l6ZW9mKGNydGNfc3Rh
dGUtPndtLnNrbC5kZGIpKTsNCj4gwqB9DQo+IMKgDQo+ICt2b2lkIHNrbF93bV9wbGFuZV9kaXNh
YmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiArCQkJCcKgwqAgc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yyk7DQo+ICsJc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUgPQ0KPiArCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3Rh
dGUpOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgOSkNCj4gKwkJcmV0dXJu
Ow0KPiArDQo+ICsJc2tsX2RkYl9lbnRyeV9pbml0KCZjcnRjX3N0YXRlLT53bS5za2wucGxhbmVf
ZGRiW3BsYW5lLT5pZF0sIDAsIDApOw0KPiArCXNrbF9kZGJfZW50cnlfaW5pdCgmY3J0Y19zdGF0
ZS0+d20uc2tsLnBsYW5lX2RkYltwbGFuZS0+aWRdLCAwLCAwKTsNCj4gKw0KPiArCWNydGNfc3Rh
dGUtPndtLnNrbC5wbGFuZV9taW5fZGRiW3BsYW5lLT5pZF0gPSAwOw0KPiArCWNydGNfc3RhdGUt
PndtLnNrbC5wbGFuZV9pbnRlcmltX2RkYltwbGFuZS0+aWRdID0gMDsNCj4gKw0KPiArCW1lbXNl
dCgmY3J0Y19zdGF0ZS0+d20uc2tsLnJhdy5wbGFuZXNbcGxhbmUtPmlkXSwgMCwNCj4gKwnCoMKg
wqDCoMKgwqAgc2l6ZW9mKGNydGNfc3RhdGUtPndtLnNrbC5yYXcucGxhbmVzW3BsYW5lLT5pZF0p
KTsNCj4gKwltZW1zZXQoJmNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZS0+
aWRdLCAwLA0KPiArCcKgwqDCoMKgwqDCoCBzaXplb2YoY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGlt
YWwucGxhbmVzW3BsYW5lLT5pZF0pKTsNCj4gK30NCj4gKw0KPiDCoHZvaWQgaW50ZWxfd21fc3Rh
dGVfdmVyaWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCcKgwqAg
c3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IMKgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaA0KPiBpbmRleCA4YzA3YzExMTM1YzcuLmQ5Y2Zm
NmM1NDMxMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0
ZXJtYXJrLmgNCj4gQEAgLTQyLDYgKzQyLDggQEAgdm9pZCBpbnRlbF93bV9zdGF0ZV92ZXJpZnko
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJwqDCoCBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0Yyk7DQo+IMKgDQo+IMKgdm9pZCBza2xfd21fY3J0Y19kaXNhYmxlX25vYXRv
bWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gK3ZvaWQgc2tsX3dtX3BsYW5lX2Rpc2Fi
bGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICsJCQkJwqDCoCBzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lKTsNCj4gwqANCj4gwqB2b2lkIHNrbF93YXRlcm1hcmtfaXBjX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiDCoHZvaWQgc2tsX3dhdGVybWFy
a19pcGNfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCg0K
