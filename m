Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C271DBD5B8A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 20:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBC510E4B7;
	Mon, 13 Oct 2025 18:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THbUvNZU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED23510E4B7;
 Mon, 13 Oct 2025 18:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760380224; x=1791916224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wfK5VaNWxj9OmvyfBHmqWD6selQSboXV7pdcnDROvZA=;
 b=THbUvNZUxrS+/FOuf4/AvZaSxntFMXz8LbQK3efiRvHzR/PzcrLPfSOM
 HZo5DgQZqXM3rxdWybJr6CtmhmMrBIPriEHWcljIxXto8BTjp2cbwYbpr
 CPyQy4HhbreUPGm+8BBK+mYt6PRld8OZ4y6ovKpbbYz/uSRmI7qbdS0SO
 C1PhCwSOW1OmH/icd3nYLMKbolQq5cyhr5EST1ZsEUrg00iLkDUiVZvao
 WXRi+JulzaiTr/U3okRsas217f3SOI19JAg7UKcvTqLyY6b9yzORyug0q
 CdF6wOvLFvgfVw4FBlfEEEMpgZS8tWan7vPEIw7B/TLMJtXFviqD5ZSae Q==;
X-CSE-ConnectionGUID: U7/Yg3uIR8+OwU0g/Qr85g==
X-CSE-MsgGUID: RaNE6/dVTlan0vUYX5eMfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="72790082"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="72790082"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:30:24 -0700
X-CSE-ConnectionGUID: voQ5bDCTRAyTa2P0+P2tJQ==
X-CSE-MsgGUID: e6isau1RSf62l3sjyZwEqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="180900329"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:30:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:30:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 11:30:22 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:30:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a90iWxirDmrYJwlf16o5tDYVCx5wrwgGnjY9m07OxgNnWjD84OEqfGCNVGqIdU22YnaO9wZsfYL1I9OFG9Xbr12+8fEvsp3pW1cr3RH6xoCo4iqJOCW/3HWFwSI3MdGZB/DEEUxGQOsqkblgYPzO5GSUKJOOIvIhq2Ic/VdTIeHoNX9vOjcA/ilX+Y4QcupODCY7CAWm4w2V9dA2m1AFqZ1PXB/U/zAfR1WUOSeAgzk+eTVMAhs6ld0AABuQOSo45fAAADMmsaZFd4D8zYKjjYXQc0N+QOstHjCn64E/+tZ2Q9vN/E/Ud1fz0Mj/fHLt74j9/lSqv5rJHYDbyDJR2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wfK5VaNWxj9OmvyfBHmqWD6selQSboXV7pdcnDROvZA=;
 b=bO7ITDP1di8XCtK3L0150GdaR1ComWLr94FLXVfXjC5aSp6Q6MJjWuf1i7zIml0v8mlNn3HuB0C8ZJ1fC2C1NH94QWJ3kbeD0JTkyxnaDIQuNv4JfUKxWSoNWQugqaxwF8B7OXPu4n4SwDXZunc2iwaIQjoYVDO+THlqBzIgFCco7qmFEY+ruVCszSQ6HmcteRwRoyHY0NMNFk9lo8PfrJYQLjT9Ce9LDlvfZfvaPS94/aRfkM8SaxGgyJo/haMEv3hlvy8a3xZmzCoR+5Fm4PWz//lI60jAFYmKcF8BRemwIuUQJX9uMnawYKBDxiSMZ9vjp6pFXshFEuTOB1PO2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8752.namprd11.prod.outlook.com (2603:10b6:610:1c2::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.13; Mon, 13 Oct 2025 18:30:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 18:30:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 06/11] drm/i195/wm: Add WM0 prefill helpers
Thread-Topic: [RFC][PATCH 06/11] drm/i195/wm: Add WM0 prefill helpers
Thread-Index: AQHcOIKPqb2F8wjI9EWgA+NrTQtAU7TAa7xQ
Date: Mon, 13 Oct 2025 18:30:20 +0000
Message-ID: <DM4PR11MB6360E7A89CAF8C2E64384053F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8752:EE_
x-ms-office365-filtering-correlation-id: 86308b76-cef7-480b-f4b2-08de0a8690ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?K05mYW03MHdpMnFyS1V3UmltS2FwT1FTTUFOMTd6K2xZeDZWZGVQV2k2dmJ0?=
 =?utf-8?B?eFlHZks3eTdEUzVtRjV5czQzZnh3V25OeUdxQVJIZmVsbG9TM09CanNKdGdU?=
 =?utf-8?B?NFR1ZFBXS0x1M0pFTEo4RmRGK3RxS0EwWFFnc2c4VUFjK0VlY0lLMjhyckZM?=
 =?utf-8?B?RnBhZDNkbTR0UTVlUTBheDI3OGU5NWV4aFFOeDY0L09ucnRiRXA5YmRaZHVH?=
 =?utf-8?B?TTI1ZFBUdktUTjRjcHBLaXg3VVJjNkV5NWZFZFFiRERDbkwwVmVEcTg4REgv?=
 =?utf-8?B?eVhTVHVsT0JXYkF6OWh2QzAwd3lSWTdnbzJtUWprTUhialFlZWhMQU83Zzda?=
 =?utf-8?B?Vkh6WVo3M1R5TVdMQlM5RTZqUUlBQjFCd1Z6VVZtZ2xvdXBHVEhVU1VWUWJz?=
 =?utf-8?B?N291dnl3TkxxRkFqOWdwWmlpQkR1WUgyWUJjVlFGVHQrQTFpaXlQdFhic2kv?=
 =?utf-8?B?dWlLbXpOMVlRSkYxQ1RNRjZNeFFLbFZJaHgyLzhDbXphL1V4NGdpQmgxazFh?=
 =?utf-8?B?Uy8zZythc0tZYnExYml4OHZQSUd1Y2kxRi9oQ3ppWnZMZS93eHNqaWp5djEy?=
 =?utf-8?B?RHBvVW55Tzd1Wkx2R1pmSmZ0Nm9TT2w2ZWZtaXYzQ2pDancralJ4anpWTWZz?=
 =?utf-8?B?OVpkUGpqUlpoZmlTdkU3cWtnbXVCcTlnSnVYMnNhSXFTOUl4TEk2MzlwbXd0?=
 =?utf-8?B?YytKazVrSWhTTE9jekYxOHIvWVR2bVlYaGc0M3dsdVJ6ZTR1ankrVjhpOVRX?=
 =?utf-8?B?RnZFaWpXTkFvcVZNdTJDbmtuTTZjRGpqRGxFNERMRTZGVnJkdmo1eUJTQWZY?=
 =?utf-8?B?NUF5RmhKODNzS3BvbmlncnB4U1dxbms1Zkd2V1ZpSnY5TUxkUUZhU2licjlm?=
 =?utf-8?B?blUyZTVWcllFb21QWlRJQ0hWYWlUVEpzdXJUaExUVVAzcjNxMER3enJUZlhN?=
 =?utf-8?B?UTZWSkprVFU5dXdiSzRvQTBXTVVBUXk0U2I1OFhyeXZsdzJIb2FITTF0aEF3?=
 =?utf-8?B?UDBkcmgrNDBkM1owc1lSa1p4VVdUOXhLR2lpYmY1dmJrWW9SOWNlS2I1QWVy?=
 =?utf-8?B?V3B3SzVVdGpaUWdwMU1EOG9Kdkdpa2kyTW9QY0F2QTgwTUtoeVk3bmJHV2tY?=
 =?utf-8?B?eEtkYWg5Zm5PUG1UT25MMFZnOEc0MDNsUG1mS1B2WEV0eU5VYk9ZYUx1SEx0?=
 =?utf-8?B?WkFwRUVGdGdySUJUQjk5djlpLzJrMXMwL2xsWUR5M24yMnFHR1hMbHJheXAw?=
 =?utf-8?B?RTZLRFJraW9UdTZmbllFMjF0QlBpWFpJbXp6d2tXWlBvRXR3bjFTVWNXZkph?=
 =?utf-8?B?NTMvTnNHM2N3REJBMU5yd2J5ZC9FZ3pqR2xUdmxSNFdDSkk4NldDNDlMUWdl?=
 =?utf-8?B?eWVWRmVObERSRlBHdU1pYWNwUUlPT3pqNGo2aWcwTlBsMnpSeWc0YW1ReE9R?=
 =?utf-8?B?dWRqOGhEZWZYR1dydGdIdXpvKzBZZUVHS0RCWXBGRFN1U1dJUk9pZk03VzFW?=
 =?utf-8?B?cVlmaUV5YktqZ1gyaHJPdldBTWRUeFBLSUFCU2pXZW9ZRXBYQVRVQU9ZUXNi?=
 =?utf-8?B?TnI1ZVlJTHNRQWEvMEhNNW5SYk9uNjFQRFNwQU1YVk5jZGNkaWNCSTJDOWNN?=
 =?utf-8?B?Y1oyUm5neTlNMUVjZVZLRnlGRFhtMW0xNWVYd3NRM3JPbnpVZ0dJWTRLVmhR?=
 =?utf-8?B?Q2s4N0pLRlAvbUQ5SkloSGdqcUZ6OWN6Yk4yQUVqaGtGWklFLy9oYjFGYm9D?=
 =?utf-8?B?a0dhcWYxbERqbGJTOUlYRXNaRjdKK01UYndjZXBEdE1va0NaM0JZQkFGNWwr?=
 =?utf-8?B?UVZRSk1GRXVPUlRpV2hQRVZNMUpxOTlqT1FGc0NNR3JJTlRoc1Y2cGYzK0JZ?=
 =?utf-8?B?RXIrSXNZeFR3bVNtZUdPMytqSnZhTFlma1hTY1Ixb2c2WkxZSE8xZVdudDBW?=
 =?utf-8?B?MUc0WlR4cElYbkJkYmFUS0hEWXZ5UWo0N043YjM0TkRqcXQyb2FEZ20zbGln?=
 =?utf-8?B?NXNQQWRRUTlLOUVoZlBMT3VTaTJMMU1DcUF3d3VOaDQrc1RzY0d5bDhNRTVL?=
 =?utf-8?Q?2K/sYi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0h5UzYvWFZFeGZHUWhEMTZZVmpiUXZpSnYyQzByTlJRdVdRaS84L1hFNEF5?=
 =?utf-8?B?LzEvdGdwSG1YbEh0b2Nsb1B6bkNHR00vU0xZRVBNbE5JWHozU0sxNHhCczRi?=
 =?utf-8?B?OElROWxqY2llUUhkeDNaZTZJNFFHOWxuMmRVWnhlbkRjYzZ0anZ0ZTltM2Fq?=
 =?utf-8?B?T3hkZExWaDRoYlFBcEtmTWlXNzE5RVZxSytEZ1Z5VExBaktuZmhLYlkrYytr?=
 =?utf-8?B?bkF3TVVvRmFmWXZxaWhqUC8xWitOTCtBSi9Ib3pBZXJsTkNtSGYzLzQ4K0dk?=
 =?utf-8?B?YWhNd3p3TjFXcGF5Mzkxd0hORHc4ZGRZQVAxWGVjdEM0VW9IaHdJcTZaZjRZ?=
 =?utf-8?B?M29uK1JyU3k1Q0N4U3BPQWhXd21LL28xVy9wSis4cHVBYlI3K2wxd0dXK2Vw?=
 =?utf-8?B?UjJ2RVlDYjM0UVVscDVNVFBWT2NFdE1nbndONjhwa1liRDlJaVlYTHVqNk5K?=
 =?utf-8?B?cXhkc0FGV1JZUEtOTTNpQSt0ZndLSFpnbXBMeGdReW9PcC9mYk1YTFhta3hR?=
 =?utf-8?B?Tnkzc1JWaGMzbTVRVzNuc21HVG5zYXBmaFp5bEZrUEJLV0RnS0dTRjlDdjVV?=
 =?utf-8?B?TTM1MjhQZFRZU3M4VUJsRW5GdGgxc2FIbjAvY1Z3Y3d5YmNQYllTalZUdFB6?=
 =?utf-8?B?elVaRGVmQzQ2SHVYVW41OXhBSXNycVpsYkQxc3VKN25jVFNjYjdJY29HMmly?=
 =?utf-8?B?d1JOZENJQVNuTnBtSDZzOTA3Mm82ZFdwL2RrWEtmWk5OSGpZdHNVcDFlNmdO?=
 =?utf-8?B?Y2t2NVVmbWJidjI0TDAweDBuRkNXeXJ4WlV3ZUtHVHlFWUdod1JEZVVWZjMw?=
 =?utf-8?B?WWVPUUllcWtlQngzMEZQZVNMeHFDcXFhbzJTYjdGWlJvRTIycy9ZT3FIaUg4?=
 =?utf-8?B?ZGlGRkV0eENDVnhzTnpmUFdmWXZiVUdlOEduK09oV3dvbjFwNnJ1R0hQTytQ?=
 =?utf-8?B?Mm5UZkVyS2lQVlQ0cDJrOUczQU9PMzF6MnZYVVovUkptZjM0ZmZHaHRSUjVC?=
 =?utf-8?B?NFNRNUV6YnZoS0tsYVA2MG5vdnBienlaVytvMFh5bEptM2VUbTFOcGtwS0hE?=
 =?utf-8?B?Q3BFdCtzV2xBQVY0dWpESndRYms1VUxXRnhKdEVubGhOOUVoUmMyUldQZkR1?=
 =?utf-8?B?a2R4TUpUU1ptTW1rcjRJUXBsSmF2MWN6R3VURGluSzNjQ25vcVV0ZXJKV1do?=
 =?utf-8?B?ZTZ4Y1ZveVhFM0hKbXJFVmxubTd2TjR1NWJ3SVVoQmFieDUvMGh4bU95V1pw?=
 =?utf-8?B?bWI3RGd4L3N0QkpNaE1Ha1FySXFOSTh0MEowVmhqdTAzZHhrU0VVTHJIMkVq?=
 =?utf-8?B?d2JmYzhDTUdUbXhQYnNubUE0SVJIMzZnMFJTdjJzTjhNN1ZyWUVybk9tK3Zx?=
 =?utf-8?B?djFHdE9URVE1em50clBuWlI1MXdRUDZoVFJVL0xBRXlQTnEzR2FpeS9INGx3?=
 =?utf-8?B?MFppUmZyQldydk81a2pneFdSaGVRYW1qRDJIR2tiNlNvRmRzaG1MU0p2dWFo?=
 =?utf-8?B?ek83WURmdjNRMlJKWndMb25EbEdlK1RLZlU4SFdmOHlRYllPeUJsbm9wZ05x?=
 =?utf-8?B?VUhUUVRrbTdPdldWQmhsVEFOVEhRNUxXMWkrbTV2QVpNTmZISXdrUG5YNXRI?=
 =?utf-8?B?MmlFNzAyMy8zOVF5dHVHUlc2cThsQVJkQWdjbzN5NzU1b0w1anZDOUJ4R3Ex?=
 =?utf-8?B?QlVQSmQvNWQwbGNHd2VlM0lNOTA2c3hiZDZ3b2pwSUJIaGpIa3JDMjlxME1j?=
 =?utf-8?B?WUtIQmRJQkVaMjd1SWw3czIyV2NJVlFnN2JKM0RVek5JMUFrcHAyZko4ODdm?=
 =?utf-8?B?UWtSLzhlRVVidzRCZ2VnWWhZN08rVnFUSDZlTTBUaHpQbFdMbmo2RUtXc1kx?=
 =?utf-8?B?NjNIM1dmR05SL3ZpRlMreVJPd2h1TzZGdmZLTDJaRkVEd3BPK2JBVGhVTnFL?=
 =?utf-8?B?YWE0VXJGb29BMmdpaWpkdHdnQm5CaE5mS0NvT2tHN3hVYVZJVzk0WTZTM1Nj?=
 =?utf-8?B?bUxwOTNDT0Y0QTZNYjU1RS8zZnhXNGFLb3dkcVdQUHlWYi9GeCtkWWFvVHZp?=
 =?utf-8?B?SnFGdkFwNkxCTFpUclRzaythbDRZZjJyczZ5ditxQllNREJVdjJpd2s0Nldw?=
 =?utf-8?Q?99InhIJv3V3tL4hyDLrZwvZjK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86308b76-cef7-480b-f4b2-08de0a8690ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 18:30:20.6503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p9cPNtkq0fsWLOMN2AoHvaRUgmQrc0tZ8Txr+u0GJ10EgRMwXO3Mz4qe/IMpgeuoQMWk0NdfhaWDHlRXr/K+9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8752
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAyMDI1IDExOjU2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMDYvMTFdIGRybS9pMTk1
L3dtOiBBZGQgV00wIHByZWZpbGwgaGVscGVycw0KPiANCg0KTml0OiBUeXBvIGluIGk5MTUNCg0K
T3ZlcmFsbCBsb29rcyBnb29kIHRvIG1lLiBNb3JlIHJlZmluZW1lbnQgY2FuIGJlIGRvbmUgbGF0
ZXIgZm9yIHRoZSBGSVhNRSdzIA0KYW5kIFRvZG8ncw0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2Fy
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEFkZCBza2xfd20wX3ByZWZpbGxfbGlu
ZXMoKSAoYmFzZWQgb24gdGhlIGFjdHVhbCBzdGF0ZSkgYW5kDQo+IHNrbF93bTBfcHJlZmlsbF9s
aW5lc193b3JzdCgpICh3b3JzdCBjYXNlIGVzdGltYXRlKSB3aGljaCB0ZWxsIHVzIGhvdyBtYW55
IGV4dHJhDQo+IGxpbmVzIGFyZSBuZWVkZWQgaW4gcHJlZmlsbCBmb3IgV00wLg0KPiANCj4gVGhl
IHJldHVybmVkIG51bWJlcnMgYXJlIGluIC4xNiBiaW5hcnkgZml4ZWQgcG9pbnQuDQo+IA0KPiBU
T0RPOiBza2xfd20wX3ByZWZpbGxfbGluZXNfd29yc3QoKSBpcyBhIGJpdCByb3VnaCBzdGlsbA0K
PiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9z
Y2FsZXIuYyAgICB8IDMyICsrKysrKysrKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF9zY2FsZXIuaCAgICB8ICA0ICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF93YXRlcm1hcmsuYyB8IDU5ICsrKysrKysrKysrKysrKysrKysrDQo+IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5oIHwgIDMgKw0KPiAgNCBmaWxlcyBj
aGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiBpbmRleCA2ZTkwNjM5NDk0Y2Eu
Ljc4M2ZlZTk4NWU4NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfc2NhbGVyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
c2NhbGVyLmMNCj4gQEAgLTEwODksNyArMTA4OSwzNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IF9z
a2xfc2NhbGVyX21heF9zY2FsZShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdA0KPiAgCQkJCQkgICAgICAgY3J0Y19zdGF0ZS0NCj4gPmh3LnBpcGVfbW9kZS5jcnRjX2Ns
b2NrKSk7DQo+ICB9DQo+IA0KPiAtc3RhdGljIHVuc2lnbmVkIGludCBza2xfc2NhbGVyX21heF9z
Y2FsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gK3Vu
c2lnbmVkIGludCBza2xfc2NhbGVyX21heF90b3RhbF9zY2FsZShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gKwl1bnNpZ25lZCBp
bnQgbWF4X3NjYWxlOw0KPiArDQo+ICsJaWYgKGNydGMtPm51bV9zY2FsZXJzIDwgMSkNCj4gKwkJ
cmV0dXJuIDB4MTAwMDA7DQo+ICsNCj4gKwkvKiBGSVhNRSBmaW5kIG91dCB0aGUgbWF4IGRvd25z
Y2FsZSBmYWN0b3JzIHByb3Blcmx5ICovDQo+ICsJbWF4X3NjYWxlID0gOSA8PCAxNjsNCj4gKwlp
ZiAoY3J0Yy0+bnVtX3NjYWxlcnMgPiAxKQ0KPiArCQltYXhfc2NhbGUgKj0gOTsNCj4gKw0KPiAr
CXJldHVybiBfc2tsX3NjYWxlcl9tYXhfc2NhbGUoY3J0Y19zdGF0ZSwgbWF4X3NjYWxlKTsgfQ0K
PiArDQo+ICt1bnNpZ25lZCBpbnQgc2tsX3NjYWxlcl9tYXhfaHNjYWxlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiArCXVuc2ln
bmVkIGludCBtYXhfc2NhbGU7DQo+ICsNCj4gKwlpZiAoY3J0Yy0+bnVtX3NjYWxlcnMgPCAxKQ0K
PiArCQlyZXR1cm4gMHgxMDAwMDsNCj4gKw0KPiArCS8qIEZJWE1FIGZpbmQgb3V0IHRoZSBtYXgg
ZG93bnNjYWxlIGZhY3RvcnMgcHJvcGVybHkgKi8NCj4gKwltYXhfc2NhbGUgPSAzIDw8IDE2Ow0K
PiArDQo+ICsJcmV0dXJuIF9za2xfc2NhbGVyX21heF9zY2FsZShjcnRjX3N0YXRlLCBtYXhfc2Nh
bGUpOyB9DQo+ICsNCj4gK3Vuc2lnbmVkIGludCBza2xfc2NhbGVyX21heF9zY2FsZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7
DQo+ICAJdW5zaWduZWQgaW50IG1heF9zY2FsZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfc2NhbGVyLmgNCj4gaW5kZXggNmZhYjQwZDJiNGVlLi41ZGVhYmNhOTA5ZTYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5oDQo+IEBA
IC00Niw2ICs0NiwxMCBAQCB2b2lkIGFkbF9zY2FsZXJfZWNjX21hc2soY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiANCj4gIHZvaWQgYWRsX3NjYWxlcl9l
Y2NfdW5tYXNrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4g
DQo+ICt1bnNpZ25lZCBpbnQgc2tsX3NjYWxlcl9tYXhfdG90YWxfc2NhbGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKTsgdW5zaWduZWQgaW50IHNrbF9zY2Fs
ZXJfbWF4X3NjYWxlKGNvbnN0IHN0cnVjdA0KPiAraW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7IHVuc2lnbmVkIGludCBza2xfc2NhbGVyX21heF9oc2NhbGUoY29uc3QNCj4gK3N0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gKw0KPiAgdW5zaWduZWQgaW50IHNrbF9z
Y2FsZXJfMXN0X3ByZWZpbGxfYWRqdXN0bWVudF93b3JzdChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7ICB1bnNpZ25lZCBpbnQgc2tsX3NjYWxlcl8ybmRfcHJl
ZmlsbF9hZGp1c3RtZW50X3dvcnN0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsgIHVuc2lnbmVkIGludA0KPiBza2xfc2NhbGVyXzFzdF9wcmVmaWxsX2xpbmVz
X3dvcnN0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgZGlmZiAt
LQ0KPiBnaXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGluZGV4
IDlkZjllZTEzN2JmOS4uYWFjM2NhOGY2YzBmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMjksNiArMjksNyBAQA0KPiAgI2lu
Y2x1ZGUgImludGVsX3Bjb2RlLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcGxhbmUuaCINCj4gICNp
bmNsdWRlICJpbnRlbF93bS5oIg0KPiArI2luY2x1ZGUgInNrbF9zY2FsZXIuaCINCj4gICNpbmNs
dWRlICJza2xfdW5pdmVyc2FsX3BsYW5lX3JlZ3MuaCINCj4gICNpbmNsdWRlICJza2xfd2F0ZXJt
YXJrLmgiDQo+ICAjaW5jbHVkZSAic2tsX3dhdGVybWFya19yZWdzLmgiDQo+IEBAIC0yMjQ0LDYg
KzIyNDUsNTkgQEAgc2tsX2lzX3ZibGFua190b29fc2hvcnQoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+ICAJCWFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFs
IC0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQ7DQo+IH0NCj4gDQo+ICt1bnNpZ25l
ZCBpbnQgc2tsX3dtMF9wcmVmaWxsX2xpbmVzX3dvcnN0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5wcmltYXJ5
KTsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0gJmNydGNf
c3RhdGUtDQo+ID5ody5waXBlX21vZGU7DQo+ICsJaW50IHJldCwgcGl4ZWxfcmF0ZSwgd2lkdGgs
IGxldmVsID0gMDsNCj4gKwlzdHJ1Y3Qgc2tsX3dtX2xldmVsIHdtID0ge307DQo+ICsJc3RydWN0
IHNrbF93bV9wYXJhbXMgd3A7DQo+ICsJdW5zaWduZWQgaW50IGxhdGVuY3k7DQo+ICsJdTY0IG1v
ZGlmaWVyOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBGSVhNRSByYXRoZXIgdWdseSB0byBwaWNrIHRo
aXMgYnkgaGFuZCBidXQgbWF5YmUgbm8gb3RoZXIgd2F5Pw0KPiArCSAqIEZJWE1FIG9sZGVyIGh3
IGRvZXNuJ3Qgc3VwcG9ydCAxNmJwYytzY2FsaW5nIHNvIHdlIHNob3VsZCBmaWd1cmUNCj4gKwkg
KiAgICAgICBvdXQgYSBtb3JlIHJlYWxpc3RpYyBtb2RpZmllcitzY2FsaW5nIGNvbWJvIG9uIHRo
b3NlLi4uDQo+ICsJICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDkpDQo+ICsJ
CW1vZGlmaWVyID0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOw0KPiArCWVsc2UgaWYgKEhB
U180VElMRShkaXNwbGF5KSkNCj4gKwkJbW9kaWZpZXIgPSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxF
RDsNCj4gKwllbHNlDQo+ICsJCW1vZGlmaWVyID0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ7DQo+
ICsNCj4gKwlwaXhlbF9yYXRlID0NCj4gRElWX1JPVU5EX1VQX1VMTChtdWxfdTMyX3UzMihza2xf
c2NhbGVyX21heF90b3RhbF9zY2FsZShjcnRjX3N0YXRlKSwNCj4gKwkJCQkJCSAgcGlwZV9tb2Rl
LT5jcnRjX2Nsb2NrKSwNCj4gKwkJCQkgICAgICAweDEwMDAwKTsNCj4gKw0KPiArCS8qIEZJWE1F
IGxpbWl0IHRvIG1heCBwbGFuZSB3aWR0aD8gKi8NCj4gKwl3aWR0aCA9DQo+IERJVl9ST1VORF9V
UF9VTEwobXVsX3UzMl91MzIoc2tsX3NjYWxlcl9tYXhfaHNjYWxlKGNydGNfc3RhdGUpLA0KPiAr
CQkJCQkgICAgIHBpcGVfbW9kZS0+Y3J0Y19oZGlzcGxheSksDQo+ICsJCQkJIDB4MTAwMDApOw0K
PiArDQo+ICsJLyogRklYTUUgaXMgOTAvMjcwIHJvdGF0aW9uIHdvcnNlIHRoYW4gMC8xODA/ICov
DQo+ICsJcmV0ID0gc2tsX2NvbXB1dGVfd21fcGFyYW1zKGNydGNfc3RhdGUsIHdpZHRoLA0KPiAr
DQo+IGRybV9mb3JtYXRfaW5mbyhEUk1fRk9STUFUX1hCR1IxNjE2MTYxNkYpLA0KPiArCQkJCSAg
ICBtb2RpZmllciwgRFJNX01PREVfUk9UQVRFXzAsDQo+ICsJCQkJICAgIHBpeGVsX3JhdGUsICZ3
cCwgMCwgMSk7DQo+ICsJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCByZXQpOw0KPiArDQo+ICsJ
bGF0ZW5jeSA9IHNrbF93bV9sYXRlbmN5KGRpc3BsYXksIGxldmVsLCAmd3ApOw0KPiArDQo+ICsJ
c2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0Y19zdGF0ZSwgcGxhbmUsIGxldmVsLCBsYXRlbmN5LCAm
d3AsICZ3bSwNCj4gKyZ3bSk7DQo+ICsNCj4gKwkvKg0KPiArCSAqIEZJWE1FIElzIHRoaXMgc2Fu
ZT8gT2xkZXIgaHcgZG9lc24ndCBldmVuIGhhdmUgd20ubGluZXMgZm9yIFdNMCBzbw0KPiArCSAq
IHRob3NlIHdpbGwgbmV2ZXIgaGl0IHRoaXMgYW5kIGp1c3QgcmV0dXJuIHRoZSBjb21wdXRlZCB3
bS5saW5lcy4NCj4gKwkgKi8NCj4gKwlpZiAod20ubWluX2RkYl9hbGxvYyA9PSBVMTZfTUFYKQ0K
PiArCQl3bS5saW5lcyA9IHNrbF93bV9tYXhfbGluZXMoZGlzcGxheSk7DQo+ICsNCj4gKwlyZXR1
cm4gd20ubGluZXMgPDwgMTY7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbnQgc2tsX21heF93bTBf
bGluZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+ICAJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGku
Y3J0Yyk7DQo+IEBAIC0yMjYwLDYgKzIzMTQsMTEgQEAgc3RhdGljIGludCBza2xfbWF4X3dtMF9s
aW5lcyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAly
ZXR1cm4gd20wX2xpbmVzOw0KPiAgfQ0KPiANCj4gK3Vuc2lnbmVkIGludCBza2xfd20wX3ByZWZp
bGxfbGluZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7
DQo+ICsJcmV0dXJuIHNrbF9tYXhfd20wX2xpbmVzKGNydGNfc3RhdGUpIDw8IDE2OyB9DQo+ICsN
Cj4gIC8qDQo+ICAgKiBUT0RPOiBJbiBjYXNlIHdlIHVzZSBQS0dfQ19MQVRFTkNZIHRvIGFsbG93
IEMtc3RhdGVzIHdoZW4gdGhlIGRlbGF5ZWQNCj4gdmJsYW5rDQo+ICAgKiBzaXplIGlzIHRvbyBz
bWFsbCBmb3IgdGhlIHBhY2thZ2UgQyBleGl0IGxhdGVuY3kgd2UgbmVlZCB0byBub3RpZnkgUFNS
IGFib3V0DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93
YXRlcm1hcmsuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFy
ay5oDQo+IGluZGV4IDYyNzkwODE2ZjAzMC4uNmJjMmVjOTE2NGJmIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaA0KPiBAQCAtNzksNSArNzks
OCBAQCB2b2lkIGludGVsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5jeShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlDQo+ICpzdGF0ZSk7DQo+IA0KPiAgYm9vbCBpbnRlbF9kYnVmX3BtZGVtYW5kX25lZWRz
X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+IA0KPiArdW5zaWdu
ZWQgaW50IHNrbF93bTBfcHJlZmlsbF9saW5lc193b3JzdChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpOyB1bnNpZ25lZCBpbnQgc2tsX3dtMF9wcmVmaWxsX2xp
bmVzKGNvbnN0IHN0cnVjdA0KPiAraW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICsN
Cj4gICNlbmRpZiAvKiBfX1NLTF9XQVRFUk1BUktfSF9fICovDQo+IA0KPiAtLQ0KPiAyLjQ5LjEN
Cg0K
