Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 798EBCCE957
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 06:47:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF4610ED65;
	Fri, 19 Dec 2025 05:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwj9V5J5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137CF10E41E;
 Fri, 19 Dec 2025 05:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766123247; x=1797659247;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1MzoVrbXfg4SSz0BCAd4E01Uik+MfahYKy51ETtSTts=;
 b=jwj9V5J5XRSEZFnUz6wLNpRAU0eRF82uCHAE5InUf8jpIXIpeG0FOPmX
 9rhqa1TiLo25utvEIiX8jcLRORa7npNZzfa+LN1QvB0pdnGOg4fLCIu5g
 oCwIVPDUi6IShNR4V7cwTwLoiIDIRqiPHH/Jv8zV0MpBL5629jJ6wnPxf
 LmDRPSo3APtZ1GRdPIi3/cotkYVHkCtvQAQFzSJxMpSfjSaHeWFoxy4Jx
 Y96cSCVBTvXW0j0aUVdF35EbHVxSXw1mVYrBVMwo6DuEQbg2MgVgtdV7o
 UZ8NX+f6yJgaKS3SQzb6UkKI2zQkSxvtWITV7WrT6H9c+cVtYcHZr2Qo5 w==;
X-CSE-ConnectionGUID: rfo7FdNuRjShLSj9J5/ZGg==
X-CSE-MsgGUID: q6+YFMmDSUu6N3rs8HJMag==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68056839"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="68056839"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 21:47:27 -0800
X-CSE-ConnectionGUID: 7oJiuoHvS7OWh/urbuJaOQ==
X-CSE-MsgGUID: XOn+u6PsRly658B5kGDTzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="199254752"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 21:47:26 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 21:47:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 21:47:25 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 21:47:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=alojAoj9jPPhz9xGA0vk/uvKwLHfABBDImvuZwZZqoHX1NdzCiAjgXEF2oHG8CJ6ScUE+h1YEivPEUCq4kazOAc55U632k9UpS2mtEXZzvMtQNjkfq6fNOLNc+ZUVsRacXJcUEiCvVH4VBFYsfVkqjialdWVP4xnN1e7pvRvilcTyxoxi0rWw0FexldKrCMu7HgzQxR8GO0YT+4YQgPqjmvxxKYyDnux5XAW0rdQ2sO5pNJmkjiU4WU02jS2nYM96Y0SsMQKZUCFs6hnNrLh53pKARq+I/V2Wg7NlEdXfZ1vay5DcXaTVrsg5Ps7iauOrF+dmG9vDQnuv7ZOvy7p+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MzoVrbXfg4SSz0BCAd4E01Uik+MfahYKy51ETtSTts=;
 b=jUYcho9+GNEZO7Jbd+KuGrOJoxz7JBwcmatlkxVkzeHUIxsEsli9mvvZoZS8bNWYjx5blOGp64FBAWhfuUNkQ6xkHkTjLEhgQqKwO/HSJ+tN5f5h9bu/C2p2gOfDUTFn3SezPBPzaQJbiNJYNhA1XXR/nIvyfe5ZChjNUrfT/Y8Oagj9HTH6IdUOp2v6rtn5oMsQrxYbo1jVzE1hqaBRPZlmIISZeVYM1R+/HTp1qmZ0RCcCarMuiLjljZhYb9Bn9dTLSVibNlHw+X47WLW7xH/y3hf6pXr1vNsAc51Z0U9Ei2QlEgv58g35tyxJs/klXC8bDKSwC2AL+nwrcXxVUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7)
 by SA1PR11MB5777.namprd11.prod.outlook.com (2603:10b6:806:23d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Fri, 19 Dec
 2025 05:47:23 +0000
Received: from CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::3bae:78fb:38be:a25a]) by CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::3bae:78fb:38be:a25a%5]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 05:47:23 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/cx0: Use a more accurate message for
 powerdown change failure
Thread-Topic: [PATCH 1/2] drm/i915/cx0: Use a more accurate message for
 powerdown change failure
Thread-Index: AQHcbtC2mWywNZiARU63+GhwPNi6tLUoeB5g
Date: Fri, 19 Dec 2025 05:47:22 +0000
Message-ID: <CY5PR11MB62829BE9FA0F3DD3C8C33D51E2A9A@CY5PR11MB6282.namprd11.prod.outlook.com>
References: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
 <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-1-08677b03e2f1@intel.com>
In-Reply-To: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-1-08677b03e2f1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6282:EE_|SA1PR11MB5777:EE_
x-ms-office365-filtering-correlation-id: 9486c653-ffdf-4b96-2a1b-08de3ec214fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RkcyU0tLb0RmVFVBZjRUN2FQK2VKQ2dnZ3hFdWNMZGJIUlpOR0VLTk9OMkRP?=
 =?utf-8?B?WkI0c29sbytGWWxrUGlPWEt6VzJWWS9BbVk1R1VYL1dNdkJBS0ZvMFBiQlV2?=
 =?utf-8?B?aGZWUXo5cUxEejNXdC9FTXo3bWhJNFZMYmZ2S2k4RElMekFjem1YQ1JnaFMz?=
 =?utf-8?B?cGw2RU1sU3RMV1hWcDZWL2ZkSUU4QjFqRFUxOHVpKy9SSE5FcmlQUDNsdUlO?=
 =?utf-8?B?bGM4RlcwMFhrRmhERG1Ldk5QT01LWG8yakQ0S2pseU1lY1JEdTdVK3RScDgr?=
 =?utf-8?B?eXF5QlVac3VUUW8zZjlKTExJT2xLTC9Sa1lEMVRCeUtFVVlHTFNHVUZwL1pJ?=
 =?utf-8?B?NUU1SXVleGJVei9nRDFBcThhSEpubEszaWVyV2VjTGpSaG5vZkxLRHMyb0FW?=
 =?utf-8?B?Z2QvZGRDYkU1VUl1TFp1bEo5eElwYU1JQ2wwbXY5QmprRFoxZDF6N1dEbDZC?=
 =?utf-8?B?d3VxakQrZ0NRRUxGOWZvVTZ3ZnBON1VPNkZUdm1vcDVYY0R0ZzFQRHhxdlhM?=
 =?utf-8?B?S1FyQmRaTVRPb3dsYXpJNEg2SUh1U2E4d2twNEdJVHBSWTk4ckk1dFNhY1Z3?=
 =?utf-8?B?d0tQeWNXblVZdGJ2aGV4QTZlNmMveFhBaFhCaEgrRXlZeXY3a0FHTGJ0ejVN?=
 =?utf-8?B?WGlhNDNObXBsWWVGMWxZL01Vc1EvdGl2cmhpVHlUTE9kL3NGMU9FczBxUVBQ?=
 =?utf-8?B?NDRsc2NDKzA4Zk5odWtsUFVIQ3g0Q0dBd2tOOFB0Q2VEVjEzZ2pvSi8rb0JB?=
 =?utf-8?B?OEVIdVo3akk5VzBXZGJkZ1FPdHhJeEhGUzhucFJYWldkbVRpMW04RisrbFJL?=
 =?utf-8?B?OWFIMkRSOWl2Zkw0OHNWT21VR1NsUEFFRkR6dk4vNU9JQ1FSaDdZQTY3L3U1?=
 =?utf-8?B?eHdnSmRlWHk1Vzdia3A2Mm40bnBOV1dhOWY4SHNCeURmVjROLytWR0ZvN1FS?=
 =?utf-8?B?S3VpTUJPT3hrZkJENms0UGkwWmFXY1BQdllpVUtTamdSU3FIckl0WXJ6dG9Y?=
 =?utf-8?B?MEtSZWx0VGVoZEwvOVRhamhYZFkxcm92c3RqTkFCT3RpVjlHVzVqR1dnd3cw?=
 =?utf-8?B?aXV5NHQ1UGsyYmxTSzVWSXV3QUtZN216K1Q3aGF1RE5YcVVRdytuKzhKaHdZ?=
 =?utf-8?B?azN1eDBCRHpYUTJYdVJoQnhhY0NCbmIzOXVYMW1RN3dzVk5LRUM1U3FrMWM1?=
 =?utf-8?B?Vk9SV1pCWWJRbGtrbG10RnR3em0veFp6Zk5jUUJ3bG9mV213N0VhN1JYSm5p?=
 =?utf-8?B?azYrb0lsY3RRV0R4UmdudzdqRUIzZ1VLRDlTUHRYUlZ5ejcwT1Nabkt5R0t1?=
 =?utf-8?B?RFZSVWt0U2JGT2RUZ0Z3RG9HU0FUWlV6cnduR3FBZHduWHJmN3NvMk5xTW5B?=
 =?utf-8?B?QkRmOVowaVl2ZXN0dW1qbURuSlMvUHdMQ0haWVJob3N1cE9nYmVUWDBtZ01K?=
 =?utf-8?B?bXl0R0doUVlCSGw3bXQ1WFlaWEMvdFIydDJ6azgyVEphMzhweFdhbFNJY2RI?=
 =?utf-8?B?K21ybEd1aFk5OU5jWjZZc2U0cnVxY0ErK05ZcUN0WVRLMTNGQmp6VzU1Y2tq?=
 =?utf-8?B?R3pkbkdBbkhuem84M2d5eDAxaUpnY2NMRDg1dGRGVm41NHU4bkRjb3U3SEMv?=
 =?utf-8?B?YTFkb1Bhb2FDdUN0R2RUY3R0eTdENkJlV2hGb1JFbm9PMFlzczczK05vOWNU?=
 =?utf-8?B?TDNBRExTS21HZ240VlRySkRSRUxCMjcvalhUV2FvZTUyYWF6Mkg2N0JoV20v?=
 =?utf-8?B?KzZMUVMxL3gwMHAyY1F5bW1uOWgvOGlEeDRDRTJxRFFnTmRTNE8rdm5OSTlx?=
 =?utf-8?B?Y1NMdGZZUWxqbXRoc1ZmQ2xXci9qMGhIZ0t5cS9SVnRHQk82eGxOaDVqK0I3?=
 =?utf-8?B?UmZzNzN5YzJwVWlLTkE1OFA2TnQvVDJPVEYwaXVxQ042QThQQjEyRmZQK3V3?=
 =?utf-8?B?UEtIVHJSaGtQUkFtRjViV2NFbUhNc0pSNmI1T2dORjRrbUlGNHZ6NGRZVmhK?=
 =?utf-8?B?RkxOWUNpZWlxTzV1ZGpnYzU1cTBFak1XdTJzOWlTVDZWYmd1bWpvY1E0NWw5?=
 =?utf-8?Q?BQ7bir?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWFia1l2dUVROFA5U3B4T1FKc25XdnBIZjVGTHVaaU5lU1pEaERRZlY1RjZi?=
 =?utf-8?B?ZTdGN3p6UXU2U0U5UkZqZDBjaGJ2eDUrdEhSTk5MNytGTmVnSHJrVXZubTAr?=
 =?utf-8?B?M2JBYnhBSmgxdnRnNlgwdmVOdGs3aFJKdXlxS3RqVlZnMklMYy9Tci9nZUow?=
 =?utf-8?B?MENHQkwvR21la2VSa3BraGhJaWlITmRpUUdxY1Y4V04yeVYvV0JETEVvcmhJ?=
 =?utf-8?B?b0htclpGN2IvcWo2MDkzWUQ2WllsSGw1dkd1MVhxMXFRcTNIRlU5dTFteUFj?=
 =?utf-8?B?SWw0UVMzeWovWUxHNlE4SkhYV1JJOXY0Z2dRc2RXUGdjUzFvRVFUZ2JhbnZq?=
 =?utf-8?B?WGI0ZithV3hGcXIxU1RPdFJ6Znh4VFhnakZPZGNJeWZCTWFPZUpSYnBQL2U0?=
 =?utf-8?B?NVc5TFk2MDliNjZUVmRlcGhMT0lGckpCZGhUUm9NZy81bkh2b1l6eXphVDd0?=
 =?utf-8?B?dEFzdGk3S3NIcjVJZXF3ZHJqNVNlMDVBc05OZUh3dis5cHBVdkNkcWo0N0Rt?=
 =?utf-8?B?b3NNSTF2VHJjd0VrOFExdTZ4UnlxSHVVY091REp2cXY1YllmV1JUMlcrWWZk?=
 =?utf-8?B?SGtjU0QwLzBvdGk1ZjArUC8zQkNPQnNwQ00yR0wwMU51U1poWWRqKzlia200?=
 =?utf-8?B?NStRQmxrMjdrVmU0L3JjM1FidWhQc1pFMmQwemowRC9mYkY1SjdtbldZbWhT?=
 =?utf-8?B?VGQ4Tlc2d1F6dXgxdk0rUFBkQWRSbUwrOXNKekRhbVpseG53YlBZMHpJUW1n?=
 =?utf-8?B?OG96TTI4bjA1TDgwUHo5YkI2SWFid3BDOXlOZ0hzYWlBMWVzSUVHWndxd1lw?=
 =?utf-8?B?MEtxOWhYb0ZLenR0MHhsalNzdytWelpFS0xneG83TjVhcG9BNFJZS0IzOHMz?=
 =?utf-8?B?L2d1b1RRRzExYm9RczdjQStJb2FpdWRvTlhHdmJoMUIwN2xaNU1OckQwMmdi?=
 =?utf-8?B?aHl4QUlIOXNCTHh2VEJtbWwza1Q5WFlYZ1dWVzhqcHRESVJSVFFVUGpoNnAz?=
 =?utf-8?B?aFdyUEU3Z0lpRldMalk0blloNU1wd0podkdGd0dBT0lDOUxybDJEdlg3Sm9y?=
 =?utf-8?B?SjhTbEluWStEclFXOE1iNTNYUTJYeVRsaXpVS0J3bmxGVDZ3ZWhNbGRibFBN?=
 =?utf-8?B?Uk05cWtNdmJBUVVpTG5MUHNGSjQwZ1ZrV0g1bWJvbkxWOVY2ak1vWEtUMTZ5?=
 =?utf-8?B?cVJQL3ZVSTNtVUlrTm94dGJaSnBwWjNvUU1kSEkvUXJEdmExNm52YUxEQkJU?=
 =?utf-8?B?N0IvcTZzVXJ1VmFXS1hrQzFRTWxRRWRCWElTbXI3K1NFNkllcXBIQkxuUHhX?=
 =?utf-8?B?RDd0QkVUZlBITFRHbW1lZHpDQXpseTZDTi9HY01jTEhxNzE2TTVEekZrbkUz?=
 =?utf-8?B?d1JlK3pYWkMrVUlnN25ZbXBKS0laUm8rZS9YZTE1cTFiaVRvQVRDVTVMY0Rh?=
 =?utf-8?B?OWcxL3A4Y3hGZjdwWXBKb3dZSmI4aTZXVjlyTkxpM3Z4a1p3Uyt0bEdCbHVq?=
 =?utf-8?B?WFpicVNiZG0yYU1lbEhYTEFBMVdUWDU0Qm40SXowdVBHMkxtZVo0MXNiZi9B?=
 =?utf-8?B?dVBtOEttcmtCN050Y0Z2SEJSQjFtSkFINzAvNXhJd052bWdJM1FvYmQ1UWty?=
 =?utf-8?B?dGx6bzNxYjljbTlQSEVYcDFlTWd4M1FySm1TT25JMENXOXk3U28rM0V4U2tI?=
 =?utf-8?B?WHJoc0s2UnpXTW1XbHVMWkhSNG14cmliNDFva3VBTlRNd0pzNkxZQStFMnNF?=
 =?utf-8?B?c2c5YkxjKzBOT09ZUTVKdUl4OUNHY1ZhMWpzM2kvN2dIanhvNE4zZ0lGdGFY?=
 =?utf-8?B?VHJVQmZvOFErTWUvZnJIWUVqN29va1lMRFNHcHpNbk44VjdXTUpUbktVN3h2?=
 =?utf-8?B?UUpvSWxWbDBuWm9uTEIvTVJ4cnBjZmgxSEl1SEw1N2RaUThva1BMSXZ3S3Rw?=
 =?utf-8?B?M2dpbmlRdTAvbTNUZTltU1dCaVV0UkhOczFubHhjNloxdnhxcGZmaEZqWks4?=
 =?utf-8?B?ajNlKzNLWXMxRGNaMVEwS21EbStZNFljYnlFNStXTGZER2dmSU1FQk1KUW1L?=
 =?utf-8?B?djVBUVAzYVZMSzRLQ3Bkd2JLaWVvdHpLWUNOWnpnREZyaEMwUjFLZENxMVZP?=
 =?utf-8?B?VnlBc0VDNyt6RkhOemRKNFVUdTlON1lYM1dBSVh5ZmRZc1ZYNER4VVJmei9h?=
 =?utf-8?B?b0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9486c653-ffdf-4b96-2a1b-08de3ec214fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2025 05:47:22.9715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VOsjM45hbK4S7SzTILMqzDPyYQmKIoa0bzqFbLj0HC0+R1eQAFXplPfi28vEESlzoLcp6zddJqSFQn1bQ/gUjoNiNBWRVKCI73PMB9VBJpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5777
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgR3VzdGF2bw0K
PiBTb3VzYQ0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDE3LCAyMDI1IDI6NDIgQU0NCj4g
VG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9jeDA6IFVzZSBhIG1vcmUgYWNjdXJh
dGUgbWVzc2FnZSBmb3INCj4gcG93ZXJkb3duIGNoYW5nZSBmYWlsdXJlDQo+IA0KPiBXZSBkbyBu
b3QgdXNlIHRoZSBmdW5jdGlvbiBpbnRlbF9jeDBfcG93ZXJkb3duX2NoYW5nZV9zZXF1ZW5jZSgp
DQo+IGV4Y2x1c2l2ZWx5IHRvIHRha2UgdGhlIFBIWSBvdXQgb2YgcmVzZXQsIGhlbmNlIHRoZSB3
YXJuaW5nIG1lc3NhZ2Ugb24gZmFpbHVyZQ0KPiBpcyBtaXNsZWFkaW5nLiAgRnVydGhlcm1vcmUs
IGluIGFuIHVwY29taW5nIGNoYW5nZSwgd2Ugd2lsbCBhbHNvIHVzZSB0aGF0DQo+IGZ1bmN0aW9u
IHRvIGltcGxlbWVudCBhIG5ldyBDMTAgUEhZIHdvcmthcm91bmQuDQo+IA0KPiBVc2UgYSBtb3Jl
IGFjY3VyYXRlIG1lc3NhZ2UgYnkgc2F5aW5nIHRoYXQgd2UgZmFpbGVkIHRvIGNoYW5nZSB0aGUN
Cj4gcG93ZXJkb3duIHN0YXRlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBTb3VzYSA8
Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogRG55YW5lc2h3
YXIgQmhhZGFuZSA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQoNCkRueWFuZXNod2Fy
LA0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
IHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
eDBfcGh5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHku
Yw0KPiBpbmRleCBmNmQ2OTYyNzE1NGUuLjI2NGY4YTUwNzJlNSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTMwNTksNyArMzA1
OSw3IEBAIHZvaWQNCj4gaW50ZWxfY3gwX3Bvd2VyZG93bl9jaGFuZ2Vfc2VxdWVuY2Uoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IA0KPiBpbnRlbF9jeDBfZ2V0X3Bvd2VyZG93bl91
cGRhdGUobGFuZV9tYXNrKSwNCj4gDQo+IFhFTFBEUF9QT1JUX1BPV0VSRE9XTl9VUERBVEVfVElN
RU9VVF9NUykpDQo+ICAJCWRybV93YXJuKGRpc3BsYXktPmRybSwNCj4gLQkJCSAiUEhZICVjIGZh
aWxlZCB0byBicmluZyBvdXQgb2YgbGFuZSByZXNldFxuIiwNCj4gKwkJCSAiUEhZICVjIGZhaWxl
ZCB0byBjaGFuZ2UgcG93ZXJkb3duIHN0YXRlXG4iLA0KPiAgCQkJIHBoeV9uYW1lKHBoeSkpOw0K
PiAgfQ0KPiANCj4gDQo+IC0tDQo+IDIuNTIuMA0KDQo=
