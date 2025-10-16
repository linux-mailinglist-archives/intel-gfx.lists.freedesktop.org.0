Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6E6BE2DAA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 12:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C3D10E9A1;
	Thu, 16 Oct 2025 10:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PEhVi11M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7A010E9A1;
 Thu, 16 Oct 2025 10:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760611263; x=1792147263;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BU4lEKPTFXt4pFURFXzAatZvQffS7z2r89PQdHAKRZc=;
 b=PEhVi11MtfLf1AS1mEiEwR7hrWdSwbLAD3rdklzN8x0H0rgPFEBdkYc5
 dbsS2G/a5Ssy60Z3PvI5oKPcMJEvI7mKSINaNoERClZUelmNmucvoVz1o
 EE3kJbBC5fGULq4IlcPxGuBCxNBNA7In+vISgD2Pv8CG5Y6uqIH6OALn2
 CjkINj/MYs40YRCuvt2FO6XkLbtz83a9ogsh3f7X85naAy7Hf1eR+CEkx
 xkQYgPb22N1/oAnnnKzFSqtG4/jvACHRcysc2NHiY8C23Af97Sa4iU1Eg
 FuBM88N4bgOuIrB/7G2mN/Pw8zEwm6Goh21Furott30PqZg0tqIk8G0fe Q==;
X-CSE-ConnectionGUID: WodxMKntSv+qh0EZiNzUKw==
X-CSE-MsgGUID: 8hKsnA+iSoeP9I5AeeD31Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62708250"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62708250"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 03:41:03 -0700
X-CSE-ConnectionGUID: 1goqugDdQuim2tiCQGPVNg==
X-CSE-MsgGUID: RCKpPQSASOO2vCJs0Hrxpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="181631575"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 03:41:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 03:41:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 03:41:02 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 03:41:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lOyNHP+en/voyVjRm/PEA+z7epqBdFDXM3TtQoRoH2T17rQ/UY/sj7UbZlxTiAVg70qNqDRL1qbeEb8g2fk7oq1qq0xK2Bp08McOIUybM+frYi1XIw408egfxmrNeTR8cdWesgBVXKdZsMJq35AZVCUFh1p/doJ+5fW7WHSRzGYbsT4PolC44BimU8SKGhftGnZAGBxNFdXukXqBnn/YtKu3t1ffA+PlUvnWfNfKOzil4k26Md3mtMadQ2IGjuFC+GdYg8RE5Jid7QpHj4NcNonlK69jk1Xal9lOP1tglO0JIRf2deZQVgcvIKUEpTsfD/j0ek7QE27S0Wpae+WOoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BU4lEKPTFXt4pFURFXzAatZvQffS7z2r89PQdHAKRZc=;
 b=Gs6TT8AdTczPRuwIBtrqhTUGYtrsP+QDwHoe5EY3QUwWS//ObBTUe4rEJQqtwH3L1d6fURc700b4ab0xQX3pUOecOaR62wFiFwRnqVa5eQ3ADAHNAuV5sZ3gXlrvEgOBBUvVH6CFPs9Myo7wPtRc/K9o1regapvI/uZ3cGClatlFYiSLBO1ibfizpgH8tF+fqAz/PPBFlgapbzR1MS+ey7dJvNWNCDDa8RAx3MVZF7yTgKwvg0BSjEIQNui7rNHopNajSr10N6uIwoRwwK+Lt2l/EDJ1AW6L3G5nX5CPZIDecLqNrzGcD5d3QOeOBUJAZ2ZhZNuvX1wyViX6PrL6kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BY1PR11MB8032.namprd11.prod.outlook.com
 (2603:10b6:a03:524::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 10:41:01 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 10:41:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/9] drm/i915: s/"not not"/"not"/
Thread-Topic: [PATCH 2/9] drm/i915: s/"not not"/"not"/
Thread-Index: AQHcPH3OoCuFR47IcE+yx4KHeIgfCLTEmaHA
Date: Thu, 16 Oct 2025 10:41:00 +0000
Message-ID: <DS4PPF69154114F2357A36F60B2F7E6C721EFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BY1PR11MB8032:EE_
x-ms-office365-filtering-correlation-id: 508451d7-e16f-4452-5abd-08de0ca07faa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?S2VWejBrYlpTenRlbUlMYlh1dGNYaXAyNFd5UzJ6WkVFLzlwbXUrVnpCdjQ3?=
 =?utf-8?B?NVUzSVArN0dPUStJT0l0VzZkS3ppK0FSYWNLNGs2T09xKzM3WS9HdnFNU2k1?=
 =?utf-8?B?dHFuUitZN2NBVFBvV3J3VlRKdlRsZWhrejdsLzVpa3JSSGo4S21hbGswU0R5?=
 =?utf-8?B?cHFxb3hVN0twVlFHSC92TGNzQUt6NWRyeTRGMURKaUNNSXJveDEzcWU5T2FD?=
 =?utf-8?B?OUxWNTV4c3BzYmp5VUM5ai9qanVNUGlML2p6c3JMOXg2VFE5eHA1YXhLTDFY?=
 =?utf-8?B?bGc2aGZWcGFjaUJQczZxRU5LeGt0czZBbG12ZThyWHFDMU1QMWt6UC82Zm5M?=
 =?utf-8?B?aDhOZG1MMGdFNXNIbDVtRTFrZmZTU0pReC9kbTRmeml0TkkvM3V0MGY3Uklh?=
 =?utf-8?B?SmpUUWFFelVwV05kOEdzRFRzZVBsTWdvVkZMRU5DZlZpMXpLY2FuZjNJQ1VJ?=
 =?utf-8?B?ZnFyY1Zpc1Y1MnJybXQ5OTJtNlFYTlR3ZUU3VWlIR2xLUnhoNEl0MU94Rk9U?=
 =?utf-8?B?UWN1L3BYN214b0pNeG1MOCtYcGI2alVWSW0xaFdtd1RFbVFZMEUxaiswN2Zh?=
 =?utf-8?B?cEp4UDd2ZW9vQzdTZnU3NW00ckxHRDFDeUdUR1F2ZFcxWlh4TFQ1aFAvb3pE?=
 =?utf-8?B?V0hieTkwa0VaN1RuYXJZRm9lLzR1aVV6QjlabTBWK3lSVU04VE5GSVZyV1lK?=
 =?utf-8?B?a0IrRzRCNm5iYklGZVFvajgzRXNka2NTY0NLNS94TzJDVE10Sk5PZFpGd2J1?=
 =?utf-8?B?QzgxRHQ1QmwrclhpMEtJd1dHaFR3MkduNkx6cjhjS2F2RC9xUDNpVTRJSHg2?=
 =?utf-8?B?c2x1d1NFcS9QVk1IcUM0QUZtUk94VXVvbEdnMXdFeGxQaE40Umg5UDdCY2E5?=
 =?utf-8?B?OGpZZlcyWUtwY0x4WXpUaXM1UkF4WE0rd3kwb0wrZDIrR1BoYTUrdndwUlZB?=
 =?utf-8?B?MUxsMXRJN3ZTNnJYaWRjVTJJS1dNOU1MWHFReEJHbGF0M0drbHl6OFpOajh4?=
 =?utf-8?B?ZjRUNzhLZFBaUHJyZVBURTNVT1NZb1owWjBIQTc3ZUN1MWxEbGVBTWVmaTRn?=
 =?utf-8?B?M0FuNjlDM3llVXhZaWw1UzJUVDJ2S1hEeUl0cFhNNjhLcjlMRjhoMm9oOU45?=
 =?utf-8?B?ZjN5c1huMUtZU1VOeEFpOVhsVUpHYjUrb0lIZU1oL2oxcWtRVzJlY094T0NY?=
 =?utf-8?B?bzRHRWsyNy9tTjhkeXVlakRvaVZNeEJyeWZzUzd4WFl6cThDQmMrL0h1bHI5?=
 =?utf-8?B?cFdvNHkyWE5zZm5ub2VkTXp3d0JGZ0NNRU9PTjUweSs1NmR2bVZVaElMdFRE?=
 =?utf-8?B?bFRMQUdVMmN0c3FFT0E4emZkZm8wL2tmZGI5ekxGdm0yYXZXRktVRGdqL3gr?=
 =?utf-8?B?dmY3aFhTdGFzZkZjdW1MRGdoVHlQR2VCeEg2TG0yelZTN3htUE9yd0FNY251?=
 =?utf-8?B?N29qRXZ4VE1MN2g1NXlXZUFocmszdFFSSDJMcGp2ZXBvc1ZKM2N5dkE4VVMz?=
 =?utf-8?B?ZkV5enRNajF0L3hFbzV1Z01aaGs2aE9TbEs0OTZ5STlnT2FWd2FEcU0vVXBT?=
 =?utf-8?B?Vlp3Z3Zqd0ZybWVhQzVLSjVPY0tvVEtCWnNESDllbGp6ZFBNaU1WeHFhY3hV?=
 =?utf-8?B?YXEvMWI1TkJ0RXBzVWVGeHRMWWRuSzFCck8vb0tCTkVMcEFJcUxYQmdJUXh5?=
 =?utf-8?B?RDUyNVp3ZUcxV2hHdmdJOEg1SUFYVzA2WVBDS2lRMkEzVG5pYzQyU21jNkRT?=
 =?utf-8?B?T1NwSmdqMTVic25QMVpqMUUrZm9CbzZMd1p2a1dYRXdrcnJDbU5JaS9nejdO?=
 =?utf-8?B?cnh2dWp5K2lLamRsc1VXcm9VY1RFNGJYRzdYZnpkWlhCWUNKVktaV3dJZFJr?=
 =?utf-8?B?QlUxaHhBYXpkUWZ0eVZ0MVBRbkliakEvaUFVTzJ2b3YybmE0b24rakF2NUhG?=
 =?utf-8?B?cUtCd252L3FBQnJjQnhUMGZLUS92YmFwTmZOZndtS3B4Z0k5bnJYeFpLeENR?=
 =?utf-8?B?enlQVjRxbndXeWw2ZDBmS1VibVQ3eVFDQldiVUR6YnpvWUZFNlI0emhCeExv?=
 =?utf-8?Q?NMM0xH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3R2L2ttQXh0eWpINU9jR2J3WmFwZ3UzaFNGWTFIZzRsQkREbGZYTVlUSzV5?=
 =?utf-8?B?b1JYZWtURlhiNWxEa3dGaWRZQU9xamhza1RmMkRzclZaLzI0Z2tHbHB4STl4?=
 =?utf-8?B?TzY1T1dHeUdWNDg3Zkh2S05QSHY5K3NxN2c2TXNwcDVqQnpWU1BZTXpUMVh1?=
 =?utf-8?B?ZzFEbVI5QU5LVjV5VUVUWk9oNzBsS1Z4c0diWmVCN0hrTzJncGt1aFZlcStP?=
 =?utf-8?B?ZGYwWUVYdEZwcFlkVndXZ012b3RwclkzdVBnbSt5c09xM0tEMkc2Y3k2T0VN?=
 =?utf-8?B?V3dHQk50UngyTmdYclJLV0VvbUFaVGVjc2pzOFp2SHNMVXMySmgyZmgybkh3?=
 =?utf-8?B?bEVSVnhJK1h4QlRkZXlMNk5ISmpuT0I2V1FITVlKRGN5OWJYSlVMT2tIRTVI?=
 =?utf-8?B?L3JubzRWY3RNMjA1blJTVGFkSFhVa05IK3QzbGtTaUp6SHFGZjl1akpoamJ0?=
 =?utf-8?B?K1F0R09QRUN0L1Rka3NIOEkvbzB1Mkd4RTNpWk81cUE1UTNIdCtCZWtYeE9R?=
 =?utf-8?B?OE5vR2U3aFRqdERiMERIaElVdjMvV1lFT0FTd0hoRUlwcE9hdW1hMDNkTFNi?=
 =?utf-8?B?SER2MEZONVZ1Yk13bDF2bTlHdXRSOUVVYWhmUmdDenVHYzJhTlRxUlpNZ2FI?=
 =?utf-8?B?QnJmUWZKamE1TGxPWGlIYzRuVi8rMmpreVZ3YU5ielNYRThrNll1c0EyTmFq?=
 =?utf-8?B?TGs0b0Z3ckFkSllvemZ5OUMvc3dRQ2J2NGZlRHdQbGM2dmtNN3V2TWhKQ204?=
 =?utf-8?B?dkl0RlZVYU1zTW5jR1J0cjRTcHN1S3VFL1UxaDM3dGRzb21Tam13MWVEZTcz?=
 =?utf-8?B?ekwxbnFJMnoybFA2cjhGdkFidFV4VXZ0a2lNWFVGWnJITFA0WnFGMndSTFBi?=
 =?utf-8?B?dkhYNU5uN3pCbDRObzJoL2Q0L3gyZ3hRalR1VU8wVEZ5c0x1VUdkTDU1ZDVB?=
 =?utf-8?B?T2tNenk2TnhmWlE0ZGZtNm8ydWFTSSszSndlNVJqSDVyclVoTUZ1U0hZdFpV?=
 =?utf-8?B?UDNmZHZSb1dmL1hYQ3lTV1NKLzlBT3ZoeGk5bm9IampjNHcxNllCMVR5RGI0?=
 =?utf-8?B?UnlFRHlQTml5YTJHUlNpNnpmUHJyd0ZseFgvbVE2ODliZjdWb01TaVlYMitu?=
 =?utf-8?B?Nm0zMVU3YktkVW0vYi9uTUJKQzlwb1ViQ1hkUTNPdW5pUTRYNGRJa2hxUEtF?=
 =?utf-8?B?UmFhSlF6OUtadUt1REgrQmc2N01Wdjl2MHFwNVp2elRreUZKMDFBRFpWM2U2?=
 =?utf-8?B?aVlGT3NiaHRqUDlLMjZaYmI5V0w4Nkt4UmY2c3RUcitkcnU4cmtqcFhlK3Nv?=
 =?utf-8?B?S1g2aTh4ZkpjTDN3ZGdHdTk0U1BvcmptS2luM0JYSHVwRXlSby8zQlhhNHk2?=
 =?utf-8?B?ZU5McXkwazRRcnljRklOd21OYWxaa3ZZekw0cE5vS0FNY0haRGZ4dVVPSkor?=
 =?utf-8?B?ZC8rMVVRYVpTN0o3R2ZkcVlGUDU0UkFMOWxtN1ZPb1JrZjdIRmxKT3drazRv?=
 =?utf-8?B?NnhYTy9ReE9lejNRcm1pdkJrMVhCaXVOYmtzVFpZWmM2QkV3TWpPMS9ZL2tK?=
 =?utf-8?B?QmFRVFJXUGYyV0pMaWhORWlxaWo3d1Zad1JMZUhXVlhlcllxd2o0ZzZYRDQ5?=
 =?utf-8?B?QXVhZnV6M1RrWWliQzQxWXNQUzJ0YnB1VmxMYlhvMElIZkNzQ1dxSkQ4QTM0?=
 =?utf-8?B?czcxcC8zSmIxRy9ZVUdqSUVCMnorM0t5bGFuUGV4N04xSnMvN1QrVFc0aC9J?=
 =?utf-8?B?SDVKTlBoM3dMSjY1SEJONURBRTJwTThjQktYZ1pTMjNrQ2dwRHYzMWNmNkVz?=
 =?utf-8?B?WkVXZ2x0Q3dSOEV2eHVrL0Y1VFVjaWRyZUxyOHVtcENZdksxZFM3c1ZrZ1ll?=
 =?utf-8?B?OFJFaHhCYllmbDdmOCtKd3lmOHNOZnBxZHdRa0kxWW1FMXBPWWRoS3NjbFVx?=
 =?utf-8?B?eVpCZEhESG94NTVZWnpMcS9URFhqSzlxZ1ZyaVFqSExQYzltMDVtZitVQk9M?=
 =?utf-8?B?ayttU0w5eUl3Zm5URlZmUVEwTWt0djRDOFpuTVNGenluUXpiYjhSRVJVY0px?=
 =?utf-8?B?UUVYYWUzdUE0MnZvMHVQUWNQRnVGbDJxU2tKbEVEckR0b3ZSbmpaRkhySDdK?=
 =?utf-8?Q?QCNhLFr9Y2CLhM5BReP4tGVP+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 508451d7-e16f-4452-5abd-08de0ca07faa
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 10:41:00.9228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9iIcFJaWVR05RuUrIYzyTknJbL/heae9dd7asc7VSKNOq4I4OxwLStyAFDpZHOZkDSNNNCPFrWB791YzUng1yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8032
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
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBTeXJqYWxh
DQo+IFNlbnQ6IE1vbmRheSwgMTMgT2N0b2JlciAyMDI1IDIzLjEyDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogW1BBVENIIDIvOV0gZHJtL2k5MTU6IHMvIm5vdCBub3QiLyJub3QiLw0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IEVsaW1pYW50ZSB0aGUgcmVwZWF0ZWQgIm5vdCBub3QiIGluIHRoZSBidyBjb2Rl
IGNvbW1lbnRzLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jDQo+IGluZGV4IGE0ZDE2NzExZDMzNi4uZDAzZGExZWQ0NTQxIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC04MzEsNyArODMxLDcgQEAg
c3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9id19jcnRjX251bV9hY3RpdmVfcGxhbmVzKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXQgIHsNCj4gIAkvKg0KPiAgCSAqIFdlIGFzc3VtZSBjdXJz
b3JzIGFyZSBzbWFsbCBlbm91Z2gNCj4gLQkgKiB0byBub3Qgbm90IGNhdXNlIGJhbmR3aWR0aCBw
cm9ibGVtcy4NCj4gKwkgKiB0byBub3QgY2F1c2UgYmFuZHdpZHRoIHByb2JsZW1zLg0KPiAgCSAq
Lw0KPiAgCXJldHVybiBod2VpZ2h0OChjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICYgfkJJVChQ
TEFORV9DVVJTT1IpKTsgIH0gQEAgLTg0Niw3ICs4NDYsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50
DQo+IGludGVsX2J3X2NydGNfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjXw0KPiAgCWZvcl9lYWNoX3BsYW5lX2lkX29uX2NydGMoY3J0YywgcGxhbmVfaWQpIHsN
Cj4gIAkJLyoNCj4gIAkJICogV2UgYXNzdW1lIGN1cnNvcnMgYXJlIHNtYWxsIGVub3VnaA0KPiAt
CQkgKiB0byBub3Qgbm90IGNhdXNlIGJhbmR3aWR0aCBwcm9ibGVtcy4NCj4gKwkJICogdG8gbm90
IGNhdXNlIGJhbmR3aWR0aCBwcm9ibGVtcy4NCj4gIAkJICovDQo+ICAJCWlmIChwbGFuZV9pZCA9
PSBQTEFORV9DVVJTT1IpDQo+ICAJCQljb250aW51ZTsNCj4gLS0NCj4gMi40OS4xDQoNCg==
