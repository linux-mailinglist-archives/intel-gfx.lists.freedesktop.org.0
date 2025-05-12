Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89FDAB35DC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 13:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9B110E091;
	Mon, 12 May 2025 11:24:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PkN6nFCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416D910E07E;
 Mon, 12 May 2025 11:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747049088; x=1778585088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HmDzaZ8jKDHo+IoZ7WfpfR3W2SR4TCTjg64C/0cn7V4=;
 b=PkN6nFCHyWYllediVQJALeFF9iVZj2PvzGf66DVN+2R/PMIhM2+ChwGE
 3w3SinKJ63c2YnkGjm/m2fYFj4zma0dRPXUR7I6Sd2eNzSIV98Zhv9hs9
 jsZP4fhKhfW9Luy9eZpxWtsAAJGR8Obqb6MW0pgPIksZGfd/itTYv7JfR
 ZUONARNvypfzb4xoCmEPWwcNIhfggLAt4eJ1eZ7DT5+zsnX6cfi8C1/su
 nMFJJrzWpcbn4z50AmbWcvAJSE2D8XAXnh4+8fxge5vS5+yiiap/TnvXZ
 7OKGqYRgkTQkIS1k2ACQ4yYWH1M2iXp+b6IFNTvvjx5od3oMh2zaqwNji A==;
X-CSE-ConnectionGUID: R+V7j0WkT5qPELki8g7Zeg==
X-CSE-MsgGUID: rOy+q4WwRm2EBK1vFS4+Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51491888"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="51491888"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 04:24:48 -0700
X-CSE-ConnectionGUID: 97pXPBZRSFC5VAVX8fX7bg==
X-CSE-MsgGUID: wdfL0nhCR5yaJ5Ff573mgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137047455"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 04:24:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 04:24:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 04:24:47 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 04:24:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TWCtegLsUJDzAHhXTf3cw1R8kTrdi/TKBZ8EQBfqFP/JvzwMuPOGQ+8ropfvVGMSlm1QHxHAoAKg2lxKOkkha1N5wklV5jOCeOlzwTMLp2JJ1lhDNFHqb0tVzdMcc8tp7Z2supZs1v8uYVb5R+E9HbSW+1frnUCVsVCYC9pjJEBypwF+9vdMQxlzQ5mdbPbe0lKis8Duo4djAjvh7RJpEHkMtncKgLP8innTn0DqX1XKm1QIxUXifN+8szBiQTP0TKhvYVvQTJwPjjHt0/WPQCgorcTf6YR8iZaCbAPJPoElICHs8qAJge8VoBX2o/AnDhta1ZR0ZkdfVc5jugy+Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HmDzaZ8jKDHo+IoZ7WfpfR3W2SR4TCTjg64C/0cn7V4=;
 b=MsBeAayE023SVbbixuxKPpW/uGw8WNDVboRVlmea+rGavzS9JxBoz7wgucXMbuSZIXu8H89jb5G3UGl6EPxmIO8XwODFj5BCLyi02ZvTfmcNFaJA/ARB8g8fpBGP6IlYP0v+VZC1UI5ztiXGGHz3HUvI81milvcW2Dp8NTXceVk3Y/VX8TGgL/Qx4wYpPM8yulFyZrqjsM1gCZ3vfbGdeqlJxjgWndm+bFs9D5D7pyAZZcLrU2WMeg1v4QaYwPf0BmPlgbGxUSyWyr5fbb4U45KzlYz333pbbwAtjBzSc5AGL0SoMUvSoFphRGgM4lbrLQvZymur73iL0jPtdpzTYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPFED6629EA1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 11:24:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 11:24:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 10/13] drm/i915/dmc: Add interface to control start of
 PKG C-state exit
Thread-Topic: [PATCH v3 10/13] drm/i915/dmc: Add interface to control start of
 PKG C-state exit
Thread-Index: AQHbrSTKCMOp3auvaU2N1jZSuF14ILPO/yGAgAAHgQA=
Date: Mon, 12 May 2025 11:24:45 +0000
Message-ID: <cfc2009edd2c15fc1e043e4e6871c16c9adf27fe.camel@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-11-jouni.hogander@intel.com>
 <aCHUMS6tBdKU0VAA@intel.com>
In-Reply-To: <aCHUMS6tBdKU0VAA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPFED6629EA1:EE_
x-ms-office365-filtering-correlation-id: 5f26dde1-2f0b-4d1e-d390-08dd91479934
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aEtWeDNRNVk2UmpROENpY01DZ1BraUtnNElVWW9OYWcvZ0pGbWpQZ1FVeHp3?=
 =?utf-8?B?dGg1NndzajJDZEdzSFRFTDYwKzRicUpLYUFLeEhKYlBiVHhSLy9rMmsxR3ZG?=
 =?utf-8?B?akV3RXhidFAwSnhGSHJaTVF6Q0NwdXpTWWxGSFpITXlnTzhKczloSWF5UFpR?=
 =?utf-8?B?QktWMTZ6SWhLS1Q2RUd1M3lHSng3SjZwaytWL0JCbVptQXhGR3R6RmU3UlQz?=
 =?utf-8?B?d1pKL1V3TGdGODlxZDVyTC9VUllqN2JGRmR1NURkOERVc2ZFWXc1c0JibGYw?=
 =?utf-8?B?VjZPVndvbU1BSzJGelVpTUNXU2Y5dVBPTFVaWXdPM09iK3ROd2Q2aGRGSUJR?=
 =?utf-8?B?SlFVZlpRd00rcEpEQmVUanEzOStndXZndEJkcW9nOFJyaXRqcTZETjNkalY0?=
 =?utf-8?B?Njk3ZEU5TWxGNmY2OGRDUXRqcnU3SS9Ka0tIL3VkMVNKbGREYzFGS0ZRVEtR?=
 =?utf-8?B?dFFzU01jZ2RiKzluZGdXTS9nNGxURDdwcjlDMjFIYUtDT2RvU09zdXNTNm5T?=
 =?utf-8?B?K2M5aXpyOTNDcHlhV3RTUWFVbUhNVVlBbU1IcmhwTzdXbi9aMDNyUWdCdDdM?=
 =?utf-8?B?dEhPZC92RHhFUDJXdXNxZ28rZG9CM3RjSGtKL2dQZG5HY2hJRVB3UVE4dHBj?=
 =?utf-8?B?dWlDbjNrNE1Fb2w5Y2M5aC9nM0ZLQ0FYQlpxNEJiWFhDK2tKaHpmWWVPUWVk?=
 =?utf-8?B?YmFlSzZCTC9XRzRqYkdrUEVHZG9Sd00ybURSN2s1TlZWMnJtWnJLbkZNaW5G?=
 =?utf-8?B?dThtYzNaR0FBSjU5TkxVSVliSjRSQ0NHMW5GZUd5VXNkY1BqbENtTkNiZUp1?=
 =?utf-8?B?cnRXZmhoWjMxd20vakRrZy9DQWVPVXcrVWtja1VlQVlTNmlueGFNMzVjaTlE?=
 =?utf-8?B?L3podkI2L085YW5NSGlUNkJZTGJBMWJ6V0pleGhqZXdaZ0lYZGpEc25qL3pR?=
 =?utf-8?B?RytERUk3ZzFjS0VNcTI5aENJSzhsNzFEQkMvT056SjVjWFJxSjNMc281MG4v?=
 =?utf-8?B?SmxjY3YzMWJzMm4zQjdmc005YVd2YnJQRlA5UFBpcE9jY29USFkrQnJkMkJu?=
 =?utf-8?B?V3VLeUc1dXZYdktwWUxkd0xMNFVGb3VrRmU4K3Zub3lQdGhBT2NZeGg0cXhB?=
 =?utf-8?B?UFJyUU1uMDk4ZG5uUUZya3JBbTVNYVRaTDFLTnVjK0hNWDVBTm8wMDUwMmxE?=
 =?utf-8?B?aVAzYzlNZ1ZLdVIySGw3Z2ZmM2dtWGZzTUdKb0htTkhCM2k4UWxFSEIrclUr?=
 =?utf-8?B?enErL04xeU50NmI4eEZGM3BLL21mTUZKdEVxbEpxZVVUMGRnZlREQVRXRm5t?=
 =?utf-8?B?Mnd2TFpKSFJwa2w2c2ZSSnB6WnlwTjZmdm1yeHZpM1Z3bWk0bnZpTWNlTVY5?=
 =?utf-8?B?Y0dPQVNSWnd3Y1NLbnl1d1d5RlN2emtiVi9OVWtFb0FlSWhpQm0xemxGUmd3?=
 =?utf-8?B?eU5Yb0JFVi9vN3RZbUdvTUNlTkY2TDJ2bXhwOFNsdjZKT0k4QzRRMm56em91?=
 =?utf-8?B?bEtEUXJONFVLMnY2ZlAvUlF4Z1E4UFJabDZEdnNmSHlzU2dlNkU2ZGVlUFVy?=
 =?utf-8?B?UHdaK1JoVStOd0Jxd0R2S29YZzhUdXBjL3BWRzNIdmdENzlzMGhOdndKQm5F?=
 =?utf-8?B?M0d3ZGxDMFAzNWtYRHl2dGNFKyttQ1hhQ1piZjlWTDZVbWtmV0tBei9Dc2tz?=
 =?utf-8?B?QjNEZnFIYlBSS09ZWnJYYmFjc2t4TVQvUkUweDc0UkNvVWt0ZXN2NWVUTWtm?=
 =?utf-8?B?VXhlYUcrNUVIU3pFVlBIZFJ5YSt5ZTRvSzdJYzNrRXpvQjlmdkt3NGZLZGNy?=
 =?utf-8?B?TjNjT2RMdGdpbXpGK3luWFJ6cEcrVERtR2ova3p0WnBuSGoyTGs4RlpPUjZM?=
 =?utf-8?B?c0tSLzB1SS9xa2s0ZUdzNW1vNGpUaTlvRzNwM3JNQWpCK05WUHFTWnFkamkv?=
 =?utf-8?B?RmlTcXVVTmtUUHR3cHhhTjRRYy8zQXJJcHNMNXB2eEx4eTBhc1d6amtWVDJp?=
 =?utf-8?B?SXJ0MjlFb1hnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2pJNzdrMW1WSXdZNWdRbUJKaWNBNkVwMnZRc29kQlFXM3RTZnJlSWVBSUNr?=
 =?utf-8?B?OFVpaWJPSFZTYjNoQ3JZVnRuRDV2a3hvYzMzQ1dybXFhekpRSEVScldDcjdV?=
 =?utf-8?B?d1ZkRFlSUkdUZmlxWldXcGE2SEZ4SVg0SUg5UHpnQlNUdUFReXlyYXJSNGxo?=
 =?utf-8?B?dThSKzBtZXd3R2tWUVVqb0xlc2dsOWhnamZ3dC9JZUlMcUVyZFptKy9ZQXJV?=
 =?utf-8?B?aHRlYkpjV2twelhHWWRUeEQ2ejVyUHFBSGgxd0l1eGFGYWozZVZDeGcrVi80?=
 =?utf-8?B?UUZQOGJST1c2Y1dkNmEwdTJWSXdsZDdDNkNISVRLMUJtbUh6R2dKZ294SjRo?=
 =?utf-8?B?WTE1NWNEd3dLdG04UkEyYnNuMTFObVROTlB2U2lneVhta0o2SWNFaHUxKy9U?=
 =?utf-8?B?WllUeTlvdXJNVDY5SVcvbTNNWEZiWFcxczZGSFdxWkZHSWV2TG4yQ00vdDFw?=
 =?utf-8?B?UisxZjJjcTY2N2U5QkgxOStJVmwvTGRJMnBtZlRQR2doZnFvUmZ5M2FCaEtB?=
 =?utf-8?B?NFBZc0xHZFdNMDFkSmk4dG1jUWl4bG4xK2g4WGlqb2NyaWFXTFFqTjdLaGx0?=
 =?utf-8?B?cWVvT2JvaTBibWhZcWNQdkQzcyszZ3U4eWFHVGl3bkV6K1JiUUs0NkVkZStF?=
 =?utf-8?B?bU5HREJxdWFEWWV6b3pvMEt5aXFUYUJZUXV0U3d5M0Q4NXVOWURRVWJwZUFC?=
 =?utf-8?B?Ung4N0N4NFNHU2hEbTh3SGpPZFg1d21FRzgyMU9OZmNlVHhjbStGYStycnE5?=
 =?utf-8?B?aVNGei9VRzA5V0VjcjJLbGUwMjdtRjU4eHZZdW93eEc3SldON2lDelRrWFA0?=
 =?utf-8?B?cjdqVW4yZmVvSU9yNnRBUjF1YkJJM0ZhNHJldFdtZ2NPRHIxNVc0VlhXOUpk?=
 =?utf-8?B?Qmc5S21hcnFaZEFuNUtqRndZRDl0dUdOZzV1YStZcE5MT1pUS1orN2xnQTBR?=
 =?utf-8?B?dFZkRTIzQzhNWmtSRmhOdzBlb3pJVzFzdTRlSXBtU2tYZ3REOHYwQjdoMkRx?=
 =?utf-8?B?STBzYmpkbXcxcU5CVzFRb2lmOURPT3lUYmJQRmxEM0lDWHM1NVp1b3pSc09R?=
 =?utf-8?B?RnJNTTZ2eHQvS2lIVG5YMFptZThRRGtsZDl5bExVdXZmb0ZKWVJOTGhkU2E0?=
 =?utf-8?B?b0w4MXh0ZzBnckdTUG9XbWlWZTUxY2dia0xQRkFjcWdYc0VPUHlPTjg3OWpo?=
 =?utf-8?B?TU83RWxobFN6Y1dFUTJOMlpSSzdpZGhzVUZJaHRUL0h1L1dyRTZEQXkzMG92?=
 =?utf-8?B?Z0w3OVIwSUZSR3c5TndXZVlQeERTeG5GMEZYSE11VkluUzhPckVFci9UWlg0?=
 =?utf-8?B?L2lxOGQrQ245bDcrdGZQR2M2WmpqVENkMnpHT1h5TkxJK1oxWUxCZzFqZ01F?=
 =?utf-8?B?SWlwSGcvT3VwRlBPbFNZMSt5bmhoZXpHVGROTEg2ZVhsRDY4Q0E1a0gxcHFL?=
 =?utf-8?B?eDRNRmpTZFlpQXZpaStmckZNR2xobmNmd2F1c2haSGw5S0xWTWRLOFhIWDkx?=
 =?utf-8?B?Y0xwR1FqRHl5NyszWUxCQW84Rkt6cnZITDJjckNKb2MvTDIyRXR3VjdEb0Na?=
 =?utf-8?B?dGdkMCsvZzBIektEaFgxbW1nakQ4djNHR0xsWm80Qlk4dHFqdVVLSWlCUTg5?=
 =?utf-8?B?QUo4di81L1plR1E4U0gvNDRTMDdGb1NqRGpUY3VtYzBmazUzdGpyOHZqaGNz?=
 =?utf-8?B?K0RGVnNUU3hHNXl3UnhUcFNCMkUxaDQ1Nzd4aEtIK1g3M2NLVklFWXU2c3d2?=
 =?utf-8?B?SHBLam1CQkRtYnZnV1R5T2xCa2diNThaRGxTQzNObGVPMFFRU05MaDlrT1pS?=
 =?utf-8?B?enNJYkxiWHlTVGhUdjI5L1NFaUlCTzNLanVpNUxUWFpYcDNRM3pBSnV5N25n?=
 =?utf-8?B?ZndObERjNmk3TlVtYzVEckxSVHlGelNTNXZSTElZaHhzUzZBRENON1l0ZWhu?=
 =?utf-8?B?L0JKQnlpRU9OcXdXdWFqQzZGZk9RR2FtWjFXdFFVeVU3L2dZc2tBb3N1Y0Zs?=
 =?utf-8?B?VkVaL2ZFdjVBemJNN0xpOGVlalJ0bWxTeURsRnplZmhaemkzY0RtelQwOHBP?=
 =?utf-8?B?ZzYvc09jMmdYNXliclkwYm96ZjE3eS91a2JEajU1MnBYZ2w2NjdhaHNOSVlu?=
 =?utf-8?B?TXVJNFgrN1hDb0x4bzk3ZytEM3ZFeDF5UVhEMlV4SThjUXo3MmhDaHFwVTJi?=
 =?utf-8?B?Qm43V2I5TUNuME5JVk15cTNBNkR2cGpndndXUGdOWXhmMTdvaSszY1QwSERW?=
 =?utf-8?B?N3lHczBnSTEyVEpGenY1WVdZVFlRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BE7D8CF5F5C40F4DAF451BA6BD25A842@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f26dde1-2f0b-4d1e-d390-08dd91479934
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 11:24:45.4967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p+AyJVBtYH7a9zOoimqyw4I6PALja42ElNVJqbBxQBlsQnmOwgyPGRB96IhEFuAgrVK9kn4sSnL9XnIgdw9ADJRrAbDvw/maSqCUJTK0Tj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFED6629EA1
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

T24gTW9uLCAyMDI1LTA1LTEyIGF0IDEzOjU3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgQXByIDE0LCAyMDI1IGF0IDAxOjA1OjA1UE0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBBZGQgaW50ZXJmYWNlIHRvIGNvbnRyb2wgaWYgcGFja2FnZSBDIGV4
aXQgc3RhcnRzIGF0IHRoZSBzdGFydCBvZg0KPiA+IHRoZQ0KPiA+IHVuZGVsYXllZCB2Ymxhbmsu
IFRoaXMgaXMgbmVlZGVkIHRvIGltcGxlbWVudCB3b3JrYXJvdW5kIGZvcg0KPiA+IHVuZGVycnVu
IG9uDQo+ID4gaWRsZSBQU1IgSFcgaXNzdWUgKFdhXzE2MDI1NTk2NjQ3KS4NCj4gPiANCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMg
fCAzMQ0KPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaCB8wqAgMiArKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2Vk
LCAzMyBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZG1jLmMNCj4gPiBpbmRleCBjNjU1NDRlNDhjNDIuLmJkNTBjOThjMGVlNCAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+
IEBAIC01MzQsNiArNTM0LDM3IEBAIHZvaWQgaW50ZWxfZG1jX2Jsb2NrX3BrZ2Moc3RydWN0IGlu
dGVsX2Rpc3BsYXkNCj4gPiAqZGlzcGxheSwgZW51bSBwaXBlIHBpcGUsDQo+ID4gwqAJCcKgwqDC
oMKgIFBJUEVETUNfQkxPQ0tfUEtHQ19TV19CTE9DS19QS0dDX0FMV0FZUyA6IDApOw0KPiA+IMKg
fQ0KPiA+IMKgDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9kbWNfc3RhcnRfcGtnY19leGl0X2F0
X3N0YXJ0X29mX3VuZGVsYXllZF92YmxhbmsoKSAtDQo+ID4gc3RhcnQgb2YgUEtHDQo+ID4gKyAq
IEMtc3RhdGUgZXhpdA0KPiA+ICsgKiBAZGlzcGxheTogZGlzcGxheSBpbnN0YW5jZQ0KPiA+ICsg
KiBAcGlwZTogcGlwZSB3aGljaCByZWdpc3RlciB1c2UgdG8gYmxvY2sNCj4gPiArICogQGVuYWJs
ZTogZW5hYmxlL2Rpc2FibGUNCj4gPiArICoNCj4gPiArICogVGhpcyBpbnRlcmZhY2UgaXMgdGFy
Z2V0IGZvciBXYV8xNjAyNTU5NjY0NyB1c2FnZS4gSS5lLiBzdGFydA0KPiA+IHRoZSBwYWNrYWdl
IEMNCj4gPiArICogZXhpdCBhdCB0aGUgc3RhcnQgb2YgdGhlIHVuZGVsYXllZCB2YmxhbmsNCj4g
PiArICovDQo+ID4gK3ZvaWQgaW50ZWxfZG1jX3N0YXJ0X3BrZ2NfZXhpdF9hdF9zdGFydF9vZl91
bmRlbGF5ZWRfdmJsYW5rKHN0cnVjdA0KPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4g
KwkJCQkJCQnCoMKgwqAgZW51bQ0KPiA+IHBpcGUgcGlwZSwgYm9vbCBlbmFibGUpDQo+ID4gK3sN
Cj4gPiArCXUzMiB2YWw7DQo+ID4gKw0KPiA+ICsJaWYgKGVuYWJsZSkNCj4gPiArCQl2YWwgPSBE
TUNfRVZUX0NUTF9FTkFCTEUgfCBETUNfRVZUX0NUTF9SRUNVUlJJTkcgfA0KPiA+ICsJCQlSRUdf
RklFTERfUFJFUChETUNfRVZUX0NUTF9UWVBFX01BU0ssDQo+ID4gKwkJCQnCoMKgwqDCoMKgwqAg
RE1DX0VWVF9DVExfVFlQRV9FREdFXzBfMSkNCj4gPiB8DQo+ID4gKwkJCVJFR19GSUVMRF9QUkVQ
KERNQ19FVlRfQ1RMX0VWRU5UX0lEX01BU0ssDQo+ID4gKwkJCQnCoMKgwqDCoMKgwqANCj4gPiBE
TUNfRVZUX0NUTF9FVkVOVF9JRF9WQkxBTktfQSk7DQo+ID4gKwllbHNlDQo+ID4gKwkJdmFsID0g
UkVHX0ZJRUxEX1BSRVAoRE1DX0VWVF9DVExfRVZFTlRfSURfTUFTSywNCj4gPiArCQkJCcKgwqDC
oMKgIERNQ19FVlRfQ1RMX0VWRU5UX0lEX0ZBTFNFKSB8DQo+ID4gKwkJCVJFR19GSUVMRF9QUkVQ
KERNQ19FVlRfQ1RMX1RZUEVfTUFTSywNCj4gPiArCQkJCcKgwqDCoMKgwqDCoCBETUNfRVZUX0NU
TF9UWVBFX0VER0VfMF8xKTsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBN
VExfUElQRURNQ19FVlRfQ1RMXzQocGlwZSksDQo+ID4gKwkJwqDCoMKgwqDCoMKgIHZhbCk7DQo+
ID4gK30NCj4gDQo+IFRoaXMgdGhpbmcgZG9lc24ndCBzZWVtIHRvIGJlIGZ1bGx5IHRob3VnaHQg
dGhyb3VnaDoNCj4gDQo+IC0gRW5hYmxpbmcgUElQRURNQyBldmVudHMgZXhwb3NlcyB1cyB0byB0
aGUgRFNCIHZzLiBETUMgcmVnaXN0ZXINCj4gwqAgY29ycnVwdGlvbiBpc3N1ZXMgb25jZSBhZ2Fp
bi4gU29tZW9uZSB3b3VsZCBuZWVkIHRvIGNvbWUgdXAgd2l0aA0KPiBzb21lDQo+IMKgIGtpbmQg
b2Ygc2NoZW1lIHRvIGF2b2lkIERNQyBhbmQgRFNCIGV4ZWN1dGluZyBpbiBwYXJhbGxlbC4NCj4g
T3RoZXJ3aXNlDQo+IMKgIEkgZG9uJ3QgdGhpbmsgd2UgY2FuIHNhZmVseSBlbmFibGUgdGhpcw0K
PiAtIFRoZSB3L2Egc2VlbXMgdG8gYmUgb25seSBmb3IgY2FzZXMgd2hlcmUgdGhlIHBrZ2MgbGF0
ZW5jeSBleGNlZWRzDQo+IHRoZQ0KPiDCoCBkZWxheWVkIHZibGFuayBsZW5ndGgsIGJ1dCB0aGF0
IGlzIG5ldmVyIGFsbG93ZWQgYnkgdGhlDQo+IMKgIHNrbF9pc192YmxhbmtfdG9vX3Nob3J0KCkg
c3R1ZmYsIHNvIGxvb2tzIGxpa2UgdGhpcyBzaG91bGQgbmV2ZXIgYmUNCj4gwqAgbmVlZGVkIGN1
cnJlbnRseQ0KDQpPdWNoISBEbyB5b3UgaGF2ZSBzdWdnZXN0aW9uIGhvdyB0byB0YWtlIGNhcmUg
b2YgdGhpcyBub3c/IFJldmVydCB3aG9sZQ0KdGhpbmc/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gPiArDQo+ID4gwqBzdGF0aWMgYm9vbCBpc19kbWNfZXZ0X2N0bF9yZWcoc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gwqAJCQnCoMKgwqDCoMKgwqAgZW51bSBp
bnRlbF9kbWNfaWQgZG1jX2lkLA0KPiA+IGk5MTVfcmVnX3QgcmVnKQ0KPiA+IMKgew0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+ID4gaW5kZXggMjM2
MzEyZmI3OTFjLi5iZDFjNDU5YjAwNzUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gPiBAQCAtMjAsNiArMjAsOCBAQCB2b2lkIGludGVsX2Rt
Y19lbmFibGVfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ICpkaXNwbGF5LCBlbnVtIHBp
cGUgcGlwZSk7DQo+ID4gwqB2b2lkIGludGVsX2RtY19kaXNhYmxlX3BpcGUoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksIGVudW0NCj4gPiBwaXBlIHBpcGUpOw0KPiA+IMKgdm9pZCBpbnRl
bF9kbWNfYmxvY2tfcGtnYyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBl
DQo+ID4gcGlwZSwNCj4gPiDCoAkJCcKgIGJvb2wgYmxvY2spOw0KPiA+ICt2b2lkIGludGVsX2Rt
Y19zdGFydF9wa2djX2V4aXRfYXRfc3RhcnRfb2ZfdW5kZWxheWVkX3ZibGFuayhzdHJ1Y3QNCj4g
PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ICsJCQkJCQkJwqDCoMKgIGVudW0NCj4gPiBw
aXBlIHBpcGUsIGJvb2wgZW5hYmxlKTsNCj4gPiDCoHZvaWQgaW50ZWxfZG1jX2Zpbmkoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+IMKgdm9pZCBpbnRlbF9kbWNfc3VzcGVuZChz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4gwqB2b2lkIGludGVsX2RtY19yZXN1
bWUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+IC0tIA0KPiA+IDIuNDMuMA0K
PiANCg0K
