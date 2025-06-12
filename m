Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A92AD7CB3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5745F10E1B8;
	Thu, 12 Jun 2025 20:55:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1MYDcoW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D9110E194;
 Thu, 12 Jun 2025 20:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749761756; x=1781297756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9CkNWZUid4BWDvhEc0S8wH7aLjryQ1zxhf3Ab3C1KAA=;
 b=O1MYDcoWD7JX3pQUMqMATf8e2x6bWApD9dFw3QxoOfIskT+B0QQM6DVJ
 d97s0JGMV6VsCc/j2e7c0EAxP08HSWNh8W2GG6VL4y17MZxCyO3WAsuGL
 gZ3GC7Sx1Fg4Dtz9S9QK0GvCCCGHD6g1pOjH15RusuvyXzW+eNbun35nb
 hra3K/guaZB2//rr+w5HoQkiL1ohW65C77QELM1rpckghDVkal8CBtnVU
 9EJaGmYShWOprKM6LaoOOW0KxQtBtQjM6DdDUF1UDTVraQx0UrD2yQyjB
 agIzYsmSb5kIvqz4M8mTIzuqkvGVcYmGikpt5sLYhD3f5t8SJkAJbZkzB A==;
X-CSE-ConnectionGUID: uwNjQ+YwRHKT//ZTcNp18A==
X-CSE-MsgGUID: 8ogYK1bnQK2VY/wxkwsjTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="69530858"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="69530858"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:55:53 -0700
X-CSE-ConnectionGUID: cHq0uGv1QLG01uC2itk6yA==
X-CSE-MsgGUID: QWiQitoQQ4yqXmP7dkHTFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152401720"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:55:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:55:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 13:55:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:55:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Asy0X2jc/Glc1e/zZ7CTaFmldkLLzvUTwmy/A6IfdGZIvLj9qCs1QaDNP7Xbarhb7hXokRUjXDfzAIbPYSxp/skPSAr74s7EPQTC4xwpgQqHNQwwJOGd89CwS+wdXQkcOb8PCBZ22dUR87OVssD4TaWVyxznSUptJrwLsw2SmchX7m4woHctVElm8iY72FOEAV7pHo/5txIvrX2oEcpVjqj5Hc7tq2KrGoDH2qZXeLC7zinxJDzRcSsrxHrm3lGS0cwhwHnn/qnZhdf/MdeE29OEqsnfDEpAabHOm8cvozeYLu3nM7naaVwUg14B+QVmdG8UsTtSdJXfZEWOrr9tCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9CkNWZUid4BWDvhEc0S8wH7aLjryQ1zxhf3Ab3C1KAA=;
 b=JJDx7ZlRFDFQbT2vKHZaSwBR7p7r/QFZToLE9ZpeLQMd221jETCKp9yGbPVIcQ/m4LPuRcbA5jPBfS3knB44mRbXhDIdwX7h8Tq0J00wTKbRp0Vu6y5YUlawujYbPlksuWc0UyqUIDNPHHC/dQ+IxnbjmhHkkjcgRpCggtay+sCOUoIiSdyy+CelPkA63H/y+eB6C43A1OYqOfZohjAQ2Mr9DlSCzCMetRm+Nwqv/dFkP6h4nzh/bjbLLWXhEN5o8WLgLiWTLkimeLZ/YyYNJS9JyOb5lFkp9Q18+qeR2V/RMAIvOXf49L0PZsC42fwo8OSnboFDhnkW6xd52aNcpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM3PPF1FCD3EAF0.namprd11.prod.outlook.com (2603:10b6:f:fc00::f12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Thu, 12 Jun
 2025 20:55:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 20:55:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 7/9] drm/i915/dmc: Assert DMC is loaded harder
Thread-Topic: [PATCH 7/9] drm/i915/dmc: Assert DMC is loaded harder
Thread-Index: AQHb2ukClgThcWHr+UOWMSD7bi210rP//nog
Date: Thu, 12 Jun 2025 20:55:21 +0000
Message-ID: <DM4PR11MB6360701860C599151AF86954F474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20250611155241.24191-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM3PPF1FCD3EAF0:EE_
x-ms-office365-filtering-correlation-id: e556e0d6-ffac-4182-7a10-08dda9f37253
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cGJ2elhvNnlZMVpweTZRRGtDN2lISXJaWmljbUZ1SjM3cnFVUXZuU1JXdmlO?=
 =?utf-8?B?NXpldVFKcmJJTEh3bThQUzlnMFdMcVo4T3RIdzNYalo5Q3JBNEw3aUZkWjZr?=
 =?utf-8?B?RjNXNUttZ29hTTRpYzVyV2dNUWVxVTFaVTlOQ2daVS9yVk9RSkFqSHVQNmt4?=
 =?utf-8?B?K2lFVVJuTEd6SzFYeEtidUdqcVA0UlN2V0VsaXM2YlU0UmwvYzhEQ0JoL3pW?=
 =?utf-8?B?WmtQcXFnMytvbmRYaUdaSXJmWVJqSVVtRjZOb2poWnVTRHRuZ1k5UzNEMGYx?=
 =?utf-8?B?cUt1S1VpTi9aUFFUbGlnWXd6ZmI5RWhhYWRVR1FMUDdQY010NXlyTmt1blJ6?=
 =?utf-8?B?UjJOWjBxQlY5Mm52UWFOZVBjVlNhdEo2YmZ0ZlVZb1Z4dWdnb0czaFV5NnlE?=
 =?utf-8?B?TmJDZGIycFlhNE5VZXVwYmQ5K1BKWlBiOUdhOWdmempSeGZzWTJKVHpQWlFR?=
 =?utf-8?B?Tnp1VTZYWjYwTnBCbGpyMVhuWFVlU0xsL0t2cGlBUmk1R2s2cnpaYlpsRU1Q?=
 =?utf-8?B?TGhLdVZ4MmxpRk4xajdTYmx6UGFZMlM1dzZmaWc3eE9pQnV1R0wrS0tKdlZP?=
 =?utf-8?B?YkJQb04zaWFMT3RiYmJDWUVpY2xoSlA3RkRrRzVRZVpkNldRZHJyRTUvdGha?=
 =?utf-8?B?MXkyaW83MWErRCtUYThWOGE2dGJ4UDNuUkhXMW4xVDlGOUIzOEo3ejVJYnBG?=
 =?utf-8?B?amdaVFRQQUNKQ0NiZ01neGN0cFB5VzZ0TEE3WUxRbXkxUjVCQ0h1OWdzekVR?=
 =?utf-8?B?aGlTL2tUYkkrSEJvZmZLUG5NV0RWOTRKMWlWRklyRVhpV1ljRDkxaG9iTVRQ?=
 =?utf-8?B?MmYvaVBXSFE5VUQ2UjNoZFZwcEE0NjBjck9MOWJ5KzNPdGJERklOamlxb3dP?=
 =?utf-8?B?TmNDMG9XNzNrdFJZdCsvaGVZZVFZcWhUeDNWZ1RqNGhJUSt6dkJaMmJTZHBh?=
 =?utf-8?B?bFBaM0hJeVZ5bDFYYzNSZlpDcVN1bXRDQm5tY1Jndlc2ZGlVTkdqUkdZQ1RZ?=
 =?utf-8?B?dVVwcjhlVEc0SFcwQ0hMNjA5MnllSXNWY1NycTk4UE1zNEtLbWFPTnZiTHN3?=
 =?utf-8?B?STF1K2oxTlZwWnF0MENCb0swQnd0YUlHUGRHUHhUTHVLc2hNcGpKRllEMERG?=
 =?utf-8?B?a0lGM3kwQmR5OXpJUGFkM2NJSnF1SmZFdUFOTzQ3QXZGUGVJMXBwd3g5eVFx?=
 =?utf-8?B?SnhUdVhuU1dkazlmK08ybTNPcDBoZWJCZVlUSFJXR0ZPczN6ZUg4Rm9QVVBT?=
 =?utf-8?B?dTdmTGhqeTk2TCtmbzNNeHVPWXZ1KzFmWmcvVUFHdFlLNEpDSVcrN1JtQmJq?=
 =?utf-8?B?d0VlNGRKWEYrcUIxY21mT0JXUmZvNU9Vb1NBb0d0MTFHcUtXZ3NzcmJFa1Fj?=
 =?utf-8?B?dmpqTi9DR0ZYaFNRc2lEYmUwMUt2RVZFb2V6QUVHOHRES2hJUVVTbEplVS8v?=
 =?utf-8?B?QjVqRlgxRmhLeStoK3hGQThJd1ZsbnlwNUJkT1ZBWVpHWWN1N3ZkaUtOV0xu?=
 =?utf-8?B?MUI0VzNnMU03ZGJaR202VjZBVXpsSzZRaWdwL3EwYmY2NVUvM1I5UmNoSFZV?=
 =?utf-8?B?TkpxYkxkMGt0ZDZHRHVrZTVEekhnV2hSZ25vMTkrS2wwTTl5ejlRaTVFMUZO?=
 =?utf-8?B?T2RmTW91SG1ka1grYTFtS3c0QUs2aVY2QWxrU01Jck11WllseFc5OEo4OUVN?=
 =?utf-8?B?K2tQcURVYzkwZEh2SFR3UTE4eGE5VUZFZG1VOU16clBpaXcwOEtiRi8ySlpm?=
 =?utf-8?B?cGtFeXhoc1lRaitpL1hUSWRMVW1JRG1KeFJlZFRlN1FrWm9rZG5MNThNYVFw?=
 =?utf-8?B?T2Z4aUt3NHY0dTduM3RaYmxQWFFJZDJ0ODVXVzVMNEU5TG1lemRtUFBFU0xm?=
 =?utf-8?B?cm1RZE9uU0lLUzVTcGxTUUorZ3N4RytmR20xM2FESGdjUWNQUkZOM0Jxa1Rh?=
 =?utf-8?B?S3doRWdJRmhzdHRXanF4SW4vazhLN0crQzBibVNhbmdIMllpZ1BkQXBnWXM2?=
 =?utf-8?Q?1IHI41MS8oGZGL509wla2cAAaxl3Jg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzZTbkJUNUkrWVZ2UHRZNHNqZWkxaW1QdUEvVm00TktITGZObjZkaXRoemw1?=
 =?utf-8?B?SjFQak84RGowOElGMDJ4ZGQ3bEFRVllVaHY0U2FyNDYwVzBSK3ZDZmtDU0V1?=
 =?utf-8?B?M1NEaXF3M1dtbjFlM3gvS1ltZWFzdUs4WW5yeEhIRm9qa1BSUnF4VDROSUVt?=
 =?utf-8?B?eEM1SDFad2JQUEt0TkQya3U4N1RvU0RvUnFHeHIyM0g3djJLMVFacHZ2WldM?=
 =?utf-8?B?TzZyRkpwdVg5N3hTd21Xekl3TzlVVnBWbzRVRVRDM0Z0OThxZHByL0VyZUtO?=
 =?utf-8?B?dkIxMlVrcEthNS9nbmk1aG8zSGxOZEdIckJRNWxZUmpicmtzNlpxdXhwdnBw?=
 =?utf-8?B?K1E5RVhFNkkzZDZwUDR0NEg1TlBGbmJiVWltUEYxMk1aSHFWbUhCb2lYVTFU?=
 =?utf-8?B?OWJXRXJLSjF1aGVLSVk2R3BzVWxieWtiZXltYVRyajhWeDh0K1FFQzFkOENE?=
 =?utf-8?B?RHMwaTFlVWtNVHJLL3ErK1ZXMFVVdkRnL0thYlJkL1U5OU54Qis3K3dqYndt?=
 =?utf-8?B?S1BOWkJ6Q0RSNmpYUTBERys4LzRCejgxUUlFZW9RUHFMeWJDSTAyU3dyR2g2?=
 =?utf-8?B?bGphVGRSTEIweDYzM2ZaK1FVSGZ2aVVtQTl3TUd1QTkyck85bnhpN0hGcDN6?=
 =?utf-8?B?bkpwZmlBTGZMejNVSUkrZmFZUStxenlaN1B2MmZKeGFSaVArM1BsVEovRStS?=
 =?utf-8?B?TTdab3BHeStTVG9rRmcxVWFkeW0wUHpoTTg1WXQraFJtK2ZDd2ZucE1UNUFX?=
 =?utf-8?B?NVFmNlNIanVjbWJ3Qkh6dEpjOFZtUStNR2dxTlRRZWl6bGlVcExUUkVpaVpG?=
 =?utf-8?B?cG1XZGtOYWZkejdSdVBqU2VIN2lkaUsxYTl0NE8yV2g2WWVUcjlsYmJUODVN?=
 =?utf-8?B?dWtJMVNwOHM5emhSc0lERDkzNnV2TERFZnZReUFtLzNNc0xFZm9sbnVZdjY3?=
 =?utf-8?B?VzdIaXRFbnZJWnFhRExzYStFKzNiSHpDa2xWMUFaYlFZY0NuOVV3VEpXVzBU?=
 =?utf-8?B?VzJNTG1zSXpsNSt1dHRPQmFPYVpnQjcrOTA2YmJWVHJEUFBHNnk3MWJUZy9v?=
 =?utf-8?B?dHdJbm1QWWtVWWNzSG94TUhqWG9BYk1BVVpmd0VGV05BMDdoaVloMFQ5L2hO?=
 =?utf-8?B?MWlOSS9qNXR4R2h0U0dBWXpvSHNpN0JmdWpoNXkvMXlHZk44QWQzcTFOQTdT?=
 =?utf-8?B?dld5WFNxazlBcXFFaWh6L0hhSHo5VHRjWXBYQ0xuSk1HKzdoSUZ2dWVlMzBF?=
 =?utf-8?B?TTY5OG1US3dhR2xNZGVwdURvdDdVcHhranUzdUNlMDBhZCtQN3lMUFcwUll3?=
 =?utf-8?B?WXMwSFM4Y1BITEtNSGRycU45ZjZDVmJ5UFpwSUFpSVpVVFR4MVp4NkNteVJV?=
 =?utf-8?B?R2luM3ZpMzFsN2RyWGc4OElSS3l1WGozZ3gwY1BJRXBkM1RWR2JZcCthU2g1?=
 =?utf-8?B?aUF2dEdlRnhxOVpUZGpycGhkaitkeGZjK0kxQVJaZ0dnK3liclFmeDh4L0hi?=
 =?utf-8?B?c2RpZDV2SjJ4MGJRYUk1N1pJbVZqMEJtNVoyTDU0Q3hnNEp1UFJ6L05naWZm?=
 =?utf-8?B?Q2dNaTl5c3ptVDg3djBsWnlwMHEyWU5lTkM1ZHJDckMwbDJHWjR1VTA1MmlF?=
 =?utf-8?B?cGV5Nkp2TjdUR3czdC9zaEtKS0ZjK2ptTDFlMmthQU5abXFBWlg5UDZkNUFy?=
 =?utf-8?B?ZWxrcHZlbnBySnduM0JKTm41TFM5WjA2ME10VFdUL1RjZFBBYnA2N1hlck9D?=
 =?utf-8?B?N2tTWGdKL2xNaDliay9PR3JMbnQ3MVBaUFZ2aCs3Z2VxWllzZHpNRDYzZ1F1?=
 =?utf-8?B?dGpDc1FaSnhMV0ZMc1Z4a3owdS9HYVRyeWFmd2lhcWI5bmIxWU8xWElxNGcx?=
 =?utf-8?B?NXNHR1I1eVllSmIzVVU3eXRtTmMxNHhXWWd0TzlMemppVnV6QkY0RnVDNzZa?=
 =?utf-8?B?V1VCN1oxMjk5VHc1d1JmY1JUeWZaVURlNVQ0MHZaeUxmYU5uS1Q5M01oUWs4?=
 =?utf-8?B?bHloRWRYdy9pdVZwb2xnNlJIRXFtanB1Tmo1MDNkY3RXdkdSZGg2QjZWRUdO?=
 =?utf-8?B?bVpkc290Vmhid09mSVVZR0cyZVpmdVRHME41V1J5RTRBQ2liVGRiV0V0dG9L?=
 =?utf-8?Q?zKbqzZx/3J2wOnj2g99J8wsex?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e556e0d6-ffac-4182-7a10-08dda9f37253
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 20:55:21.6230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m6nZlcVB3jW9qtXhXhU7PNydrtz3n/BY3RNxkB4kBDH7HbgjlQLpkhID6SriZC2yxvvCP5gg9v2Rm/qaXJxIlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1FCD3EAF0
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxMSwgMjAyNSA5OjIzIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDcvOV0gZHJtL2k5MTUvZG1jOiBBc3Nl
cnQgRE1DIGlzIGxvYWRlZCBoYXJkZXINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgd2UgaGF2ZSBzb21l
IGFzc2VydHMgdG8gbWFrZSBzdXJlIHRoZSBtYWluIERNQyBoYXMgYmVlbiBsb2FkZWQuDQo+IEFk
ZCBzaW1pbGFyIGFzc2VycyBmb3IgdGhlIHBpcGUgRE1Dcy4gQW5kIHdlIG1pZ3RoIGFzIHdlbGwg
anVzdCBjaGVjayBhbGwgdGhlDQoNCk5pdDogVHlwbyBpbiBhc3NlcnQgYW5kIG1pZ2h0DQoNCj4g
bW1pbyByZWdpc3RlcnMgdGhlIGZpcm13YXJlIGhhcyBhc2tlZCB1cyB0byBpbml0aWFsaXplLiBU
aGF0IGFsc28gY292ZXJzIHRoZQ0KPiBoYXJkY29kZWQgU1NQL0hUUCByZWdpc3RlcnMgd2Ugd2Vy
ZSBjaGVja2luZyBmb3IgdGhlIG1haW4gRE1DLg0KPiANCj4gVE9ETzogTWF5YmUgYWx3YXlzIGNv
bmZpZ3VyZSBETUNfRVZUX0NUTF9FTkFCTEUgdGhlIHdheSB0aGUgZmlybXdhcmUNCj4gICAgICAg
aGFzIGl0IHNldCBzbyB0aGF0IHdlIHdvdWxkbid0IG5lZWQgdG8gc3BlY2lhbCBjYXNlIGluIHRo
ZSBhc3NlcnQ/DQo+IA0KPiB2MjogQWxzbyBhc3NlcnQgaW4gaW50ZWxfZG1jX2xvYWRfcHJvZ3Jh
bSgpDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMgICB8ICA0ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jICAgICAgfCA2MCArKysrKysrKysrKysrKy0tLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oICAgICAgfCAgMiArLQ0K
PiAgMyBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXJfd2VsbC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiBpbmRleCBjYmE5NmY5MjBmZDIuLjBmMTg0OGI5NzBhNyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyX3dlbGwuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+IEBAIC04MjksNyArODI5LDcgQEAgc3RhdGljIHZvaWQg
YXNzZXJ0X2Nhbl9lbmFibGVfZGM1KHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0K
PiANCj4gIAlhc3NlcnRfZGlzcGxheV9ycG1faGVsZChkaXNwbGF5KTsNCj4gDQo+IC0JYXNzZXJ0
X2RtY19sb2FkZWQoZGlzcGxheSk7DQo+ICsJYXNzZXJ0X21haW5fZG1jX2xvYWRlZChkaXNwbGF5
KTsNCj4gIH0NCj4gDQo+ICB2b2lkIGdlbjlfZW5hYmxlX2RjNShzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSkgQEAgLTg2MCw3ICs4NjAsNyBAQA0KPiBzdGF0aWMgdm9pZCBhc3NlcnRfY2Fu
X2VuYWJsZV9kYzYoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJCSAgICAgICBE
Q19TVEFURV9FTl9VUFRPX0RDNiksDQo+ICAJCSAgICAgICJEQzYgYWxyZWFkeSBwcm9ncmFtbWVk
IHRvIGJlIGVuYWJsZWQuXG4iKTsNCj4gDQo+IC0JYXNzZXJ0X2RtY19sb2FkZWQoZGlzcGxheSk7
DQo+ICsJYXNzZXJ0X21haW5fZG1jX2xvYWRlZChkaXNwbGF5KTsNCj4gIH0NCj4gDQo+ICB2b2lk
IHNrbF9lbmFibGVfZGM2KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSBkaWZmIC0tZ2l0
DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gaW5kZXggNzZiODhjOWJlYTAy
Li4zNzYxODc5N2Q5MzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZG1jLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kbWMuYw0KPiBAQCAtNjA2LDYgKzYwNiw0NiBAQCBzdGF0aWMgdm9pZCBkbWNfbG9hZF9wcm9n
cmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LCBlbnVtIGludGVsX2RtY19pZCBk
bQ0KPiAgCWRtY19sb2FkX21taW8oZGlzcGxheSwgZG1jX2lkKTsNCj4gIH0NCj4gDQo+ICtzdGF0
aWMgdm9pZCBhc3NlcnRfZG1jX2xvYWRlZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwN
Cj4gKwkJCSAgICAgIGVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCkNCj4gK3sNCj4gKwlzdHJ1Y3Qg
aW50ZWxfZG1jICpkbWMgPSBkaXNwbGF5X3RvX2RtYyhkaXNwbGF5KTsNCj4gKwl1MzIgZXhwZWN0
ZWQsIGZvdW5kOw0KPiArCWludCBpOw0KPiArDQo+ICsJaWYgKCFpc192YWxpZF9kbWNfaWQoZG1j
X2lkKSB8fCAhaGFzX2RtY19pZF9mdyhkaXNwbGF5LCBkbWNfaWQpKQ0KPiArCQlyZXR1cm47DQo+
ICsNCj4gKwlmb3VuZCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgRE1DX1BST0dSQU0oZG1jLQ0K
PiA+ZG1jX2luZm9bZG1jX2lkXS5zdGFydF9tbWlvYWRkciwgMCkpOw0KPiArCWV4cGVjdGVkID0g
ZG1jLT5kbWNfaW5mb1tkbWNfaWRdLnBheWxvYWRbMF07DQo+ICsNCj4gKwlkcm1fV0FSTihkaXNw
bGF5LT5kcm0sIGZvdW5kICE9IGV4cGVjdGVkLA0KPiArCQkgIkRNQyAlZCBwcm9ncmFtIHN0b3Jh
Z2Ugc3RhcnQgaW5jb3JyZWN0IChleHBlY3RlZCAweCV4LA0KPiBjdXJyZW50IDB4JXgpXG4iLA0K
PiArCQkgZG1jX2lkLCBleHBlY3RlZCwgZm91bmQpOw0KPiArDQo+ICsJZm9yIChpID0gMDsgaSA8
IGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5tbWlvX2NvdW50OyBpKyspIHsNCj4gKwkJaTkxNV9yZWdf
dCByZWcgPSBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb2FkZHJbaV07DQo+ICsNCj4gKwkJZm91
bmQgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIHJlZyk7DQo+ICsJCWV4cGVjdGVkID0gZG1jX21t
aW9kYXRhKGRpc3BsYXksIGRtYywgZG1jX2lkLCBpKTsNCj4gKw0KPiArCQkvKiBvbmNlIHNldCBE
TUNfRVZUX0NUTF9FTkFCTEUgY2FuJ3QgYmUgY2xlYXJlZCA6LyAqLw0KPiArCQlpZiAoaXNfZG1j
X2V2dF9jdGxfcmVnKGRpc3BsYXksIGRtY19pZCwgcmVnKSkgew0KPiArCQkJZm91bmQgJj0gfkRN
Q19FVlRfQ1RMX0VOQUJMRTsNCj4gKwkJCWV4cGVjdGVkICY9IH5ETUNfRVZUX0NUTF9FTkFCTEU7
DQo+ICsJCX0NCj4gKw0KPiArCQlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIGZvdW5kICE9IGV4cGVj
dGVkLA0KPiArCQkJICJETUMgJWQgbW1pb1slZF0vMHgleCBpbmNvcnJlY3QgKGV4cGVjdGVkIDB4
JXgsDQo+IGN1cnJlbnQgMHgleClcbiIsDQo+ICsJCQkgZG1jX2lkLCBpLCBpOTE1X21taW9fcmVn
X29mZnNldChyZWcpLCBleHBlY3RlZCwgZm91bmQpOw0KPiArCX0NCj4gK30NCj4gKw0KPiArdm9p
ZCBhc3NlcnRfbWFpbl9kbWNfbG9hZGVkKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSB7
DQo+ICsJYXNzZXJ0X2RtY19sb2FkZWQoZGlzcGxheSwgRE1DX0ZXX01BSU4pOyB9DQo+ICsNCj4g
IHN0YXRpYyBib29sIG5lZWRfcGlwZWRtY19sb2FkX3Byb2dyYW0oc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkpICB7DQo+ICAJLyogT24gVEdML2Rlcml2YXRpdmVzIHBpcGUgRE1DIHN0YXRl
IGlzIGxvc3Qgd2hlbiBQRzEgaXMgZGlzYWJsZWQgKi8gQEANCj4gLTYzNSw2ICs2NzUsOCBAQCB2
b2lkIGludGVsX2RtY19lbmFibGVfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwg
ZW51bQ0KPiBwaXBlIHBpcGUpDQo+ICAJZWxzZSBpZiAobmVlZF9waXBlZG1jX2xvYWRfbW1pbyhk
aXNwbGF5LCBwaXBlKSkNCj4gIAkJZG1jX2xvYWRfbW1pbyhkaXNwbGF5LCBkbWNfaWQpOw0KPiAN
Cj4gKwlhc3NlcnRfZG1jX2xvYWRlZChkaXNwbGF5LCBkbWNfaWQpOw0KPiArDQo+ICAJaWYgKERJ
U1BMQVlfVkVSKGRpc3BsYXkpID49IDIwKSB7DQo+ICAJCWludGVsX2RlX3dyaXRlKGRpc3BsYXks
IFBJUEVETUNfSU5URVJSVVBUKHBpcGUpLA0KPiBwaXBlZG1jX2ludGVycnVwdF9tYXNrKGRpc3Bs
YXkpKTsNCj4gIAkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgUElQRURNQ19JTlRFUlJVUFRfTUFT
SyhwaXBlKSwNCj4gfnBpcGVkbWNfaW50ZXJydXB0X21hc2soZGlzcGxheSkpOw0KPiBAQCAtNzQ0
LDggKzc4NiwxMCBAQCB2b2lkIGludGVsX2RtY19sb2FkX3Byb2dyYW0oc3RydWN0IGludGVsX2Rp
c3BsYXkNCj4gKmRpc3BsYXkpDQo+IA0KPiAgCXBpcGVkbWNfY2xvY2tfZ2F0aW5nX3dhKGRpc3Bs
YXksIHRydWUpOw0KPiANCj4gLQlmb3JfZWFjaF9kbWNfaWQoZG1jX2lkKQ0KPiArCWZvcl9lYWNo
X2RtY19pZChkbWNfaWQpIHsNCj4gIAkJZG1jX2xvYWRfcHJvZ3JhbShkaXNwbGF5LCBkbWNfaWQp
Ow0KPiArCQlhc3NlcnRfZG1jX2xvYWRlZChkaXNwbGF5LCBkbWNfaWQpOw0KPiArCX0NCj4gDQo+
ICAJcG93ZXJfZG9tYWlucy0+ZGNfc3RhdGUgPSAwOw0KPiANCj4gQEAgLTc3NiwyMCArODIwLDYg
QEAgdm9pZCBpbnRlbF9kbWNfZGlzYWJsZV9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ICpkaXNwbGF5KQ0KPiAgCXBpcGVkbWNfY2xvY2tfZ2F0aW5nX3dhKGRpc3BsYXksIGZhbHNlKTsg
IH0NCj4gDQo+IC12b2lkIGFzc2VydF9kbWNfbG9hZGVkKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5KSAtew0KPiAtCXN0cnVjdCBpbnRlbF9kbWMgKmRtYyA9IGRpc3BsYXlfdG9fZG1jKGRp
c3BsYXkpOw0KPiAtDQo+IC0JZHJtX1dBUk5fT05DRShkaXNwbGF5LT5kcm0sICFkbWMsICJETUMg
bm90IGluaXRpYWxpemVkXG4iKTsNCj4gLQlkcm1fV0FSTl9PTkNFKGRpc3BsYXktPmRybSwgZG1j
ICYmDQo+IC0JCSAgICAgICFpbnRlbF9kZV9yZWFkKGRpc3BsYXksIERNQ19QUk9HUkFNKGRtYy0N
Cj4gPmRtY19pbmZvW0RNQ19GV19NQUlOXS5zdGFydF9tbWlvYWRkciwgMCkpLA0KPiAtCQkgICAg
ICAiRE1DIHByb2dyYW0gc3RvcmFnZSBzdGFydCBpcyBOVUxMXG4iKTsNCj4gLQlkcm1fV0FSTl9P
TkNFKGRpc3BsYXktPmRybSwgIWludGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gRE1DX1NTUF9CQVNF
KSwNCj4gLQkJICAgICAgIkRNQyBTU1AgQmFzZSBOb3QgZmluZVxuIik7DQo+IC0JZHJtX1dBUk5f
T05DRShkaXNwbGF5LT5kcm0sICFpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+IERNQ19IVFBfU0tM
KSwNCj4gLQkJICAgICAgIkRNQyBIVFAgTm90IGZpbmVcbiIpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0
aWMgYm9vbCBmd19pbmZvX21hdGNoZXNfc3RlcHBpbmcoY29uc3Qgc3RydWN0IGludGVsX2Z3X2lu
Zm8gKmZ3X2luZm8sDQo+ICAJCQkJICAgICBjb25zdCBzdHJ1Y3Qgc3RlcHBpbmdfaW5mbyAqc2kp
ICB7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiBpbmRl
eCBhOThlOGRlZmYxM2EuLmEzNzkyMDUyMDc4YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+IEBAIC0zMiw3ICszMiw3IEBAIHN0cnVjdCBpbnRlbF9k
bWNfc25hcHNob3QNCj4gKmludGVsX2RtY19zbmFwc2hvdF9jYXB0dXJlKHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwICB2b2lkDQo+IGludGVsX2RtY19zbmFwc2hvdF9wcmludChjb25zdCBzdHJ1
Y3QgaW50ZWxfZG1jX3NuYXBzaG90ICpzbmFwc2hvdCwgc3RydWN0DQo+IGRybV9wcmludGVyICpw
KTsgIHZvaWQgaW50ZWxfZG1jX3VwZGF0ZV9kYzZfYWxsb3dlZF9jb3VudChzdHJ1Y3QgaW50ZWxf
ZGlzcGxheQ0KPiAqZGlzcGxheSwgYm9vbCBzdGFydF90cmFja2luZyk7DQo+IA0KPiAtdm9pZCBh
c3NlcnRfZG1jX2xvYWRlZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ICt2b2lk
IGFzc2VydF9tYWluX2RtY19sb2FkZWQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0K
PiANCj4gIHZvaWQgaW50ZWxfcGlwZWRtY19pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSwgZW51bSBwaXBlIHBpcGUpOw0KPiANCj4gLS0NCj4gMi40OS4wDQoNCg==
