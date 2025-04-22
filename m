Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D9AA963CF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 11:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58CDA10E54E;
	Tue, 22 Apr 2025 09:15:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJkYnxAi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DB010E54B;
 Tue, 22 Apr 2025 09:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745313303; x=1776849303;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7pe9EYdC3uuX+kGjsD7vmxq2VVTtusbxjBgw9f6yLbQ=;
 b=nJkYnxAiXymjLzOx2h2JrPVk195SGn3G0mYLcl9n/kyMclG/NUb7yrdv
 c3/CImB1vcCg7tPR+fcyHemSumyS62sEFlnuE2JYQmVEfEp/VXDV11n5i
 SvGaUu3oQp8sa2JY8fdfwfA2Qw21Ts0W6YtwM7vs8abzkORWzvRIyzS54
 jgN450Hj65Ec8DYB+ugufWy5pJSkQtyi7+vbOcCnJGLOZipTbf35+3nyx
 73A7ualX25BZElkiiS0rWc2oEpeVm0gBYx6F5R0FMe3J8Akfoa/4b62+v
 gOuag4xxsQwINrhbH/v9wRr2r9UIPQiv0rRu5QXr050YC4WiHSCrrDvZk w==;
X-CSE-ConnectionGUID: WYpHYek9TluZjrP7lTnCrA==
X-CSE-MsgGUID: pAzPYKT/SV6XvIOVio5BWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="50665653"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="50665653"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:14:31 -0700
X-CSE-ConnectionGUID: yzUECke0QxmaJyVQ15QhZg==
X-CSE-MsgGUID: 1mYMc0e9TjmJA2pMV7NrIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132848946"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:14:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 02:14:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 02:14:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 02:14:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AkMcCrf3pthEnM3Uxl1xc2k77nhAUZ7aU0xeCYuG7PjfLOqsal9IoafJyaxj3jl3/jbacUWXQAj5nnun/SbkGIwVlugylJsbLjco2prFSF5sTBSNrV2mzi5IpFjV7KcDbiQ4C7tO4s0frBVz43f1rl6VoWgx0nGkVUDA9uGrsJTJbInuJe99hFIMfVAlojR/6CryWqANKW1nxsRECi9jEJjR4I0fWbu+mv4gPIPs5qFpZ/3QH5f77WbmB7Y6Cnh6L6YYpATyzrs/wQCU3FJBi888VQbY7OEEHrKdeVM30htXeqo2OTD8RO53xMQvxibGLmIRXeofGNWzyGc3DgsDMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7pe9EYdC3uuX+kGjsD7vmxq2VVTtusbxjBgw9f6yLbQ=;
 b=ILSlbVAKDBEfsPGtlHr4GcmGi3ip2D9HRNmvjjzOwNVKs/9s/RlAotESpn5DeScAhIYA244J8CnEnUWTprXbpDkMCZUqlmWOF2d5aEn+6fImgzRIh93rXrw9d4dcDpmffDaAoZe/YfxvoHbgbwc0VK2piVgIw7vagmF+WJ4ALRpc5zv5lKh21yxwGVd3KcHTbpgl0irdptIhPk4mnUmbBVf24NQUm4io8Af0bQmLQaOsZG4yFExpiIDqkbncVKH+Lwt9JUa31Ko8c4nTgaI+1dvjegow4e/ilIxeHrb3PMYPSI0T4VhYhxbtp53h8DcCfmuX7j022KN/74R9l6lbGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4700.namprd11.prod.outlook.com (2603:10b6:303:2d::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.23; Tue, 22 Apr 2025 09:14:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 22 Apr 2025
 09:14:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Topic: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Index: AQHbr4BBzX5a2dK8mUyOmibW04vWdLOn3fGAgAd+UoCAABKQgA==
Date: Tue, 22 Apr 2025 09:14:14 +0000
Message-ID: <b90012ec7e1aa665b485345f696f26412026d4ec.camel@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
 <20250417094123.1662424-11-animesh.manna@intel.com>
 <9cb8a8b06472eb2126fa0ab17f2042f5274118b8.camel@intel.com>
 <PH7PR11MB5981CBF179E2433CA931A3ABF9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981CBF179E2433CA931A3ABF9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4700:EE_
x-ms-office365-filtering-correlation-id: 2cf81911-50cd-4e52-706e-08dd817e0d28
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?UjB0UERsZ1NYRUU3eXp4bElqMUpucnk4V21CVEloS3JDbWtvajAySzZPUUpM?=
 =?utf-8?B?dnVORllnTGZYNEpHQXJxSWtZaml4ZFEza1hTaTVVOThsdG96M0FZRGFVVmtt?=
 =?utf-8?B?Um1xVnREVTdGbEdIVmpHMXNwT1JmZjJ5T2VFUTVJZTY2eTNRS2JMTDNOeVk0?=
 =?utf-8?B?QUo4ZXFBK1F4OHpFY2hVVXBid0FRT0tJQy9jcXkzN25ZRGpUQlpkNHlWcmRJ?=
 =?utf-8?B?SU15b1Q4Vy9lWHZMTWlFYTZZcDZtRXJBUU9DN2RMYVVqdGJYbCt3cWkzWnlE?=
 =?utf-8?B?UGdGbmNmY3FRUVNiNkQyb29YNGRrTkM0SnBGcC9FbkJSSTlNWUdFM0pYYlFk?=
 =?utf-8?B?TEJsUXZNblUzSFY4SGM4TWhsbkxSTVBzZkVqODZIWFM0bWluNFZuOGhqSUlS?=
 =?utf-8?B?Y0txUWFSdFl2UEE2bTdqWjJzU05zdm5xUjZDKzdaWk9qNDB5clFZbFVKVEdV?=
 =?utf-8?B?UFdOTWlORWNEMHd2NTJMOFpsNG1JbGR0bm5ScDRyOUM1THp1TmVQTE9WR1c3?=
 =?utf-8?B?bHd4VkRxNFhyTHNVYjlTYjhNYTI0YmJtaFFoZlVjMnUwSUI1eWJyOWFRTWV2?=
 =?utf-8?B?RzVLQlhCR0lnZjBZNVdHVDRaMFlqNFI4bzBTZk1SYnRvdHhSU2t4ZnJZSjcz?=
 =?utf-8?B?SUQ0dkRLVmNmK2I4WlRQVnpnUjRWcjVjSDJjTFA1NE5hRlFoQWtUVHZlUHpk?=
 =?utf-8?B?YzQ2T0Q5V2xsQytOd1NHb2ZRVkZWRE0yZTRTVnNXQm9CbmVFY1hDeDdkeDBy?=
 =?utf-8?B?T3k3WVRwcUgrTzd2NUdaa2FDZG04ZDM2VnBOKzl0aDhOdjRqdFVKZkdZV0dV?=
 =?utf-8?B?aDM2cDJXMzltWVE2VEtXQitHVGM2OE5vdWMxQnpZcmNOYnJhZHlHY2lCcm1E?=
 =?utf-8?B?cE11TXozNHNKTEx3U2ZMQjg5Q055SkFKazIzTzMvVk1hVEFlVnN0QVNXNkl1?=
 =?utf-8?B?UnNrOE81S3hwRWk1cklvbUZaZUtBL2duZ1lja1hoeWlxNHVadnNPVUY2L2dn?=
 =?utf-8?B?dGFOT1BsVlMycFRWS3QxWFZ5MTZMbGE4RTNIdVpidGtTUmo5SVhoYTVhbVpM?=
 =?utf-8?B?NHhsVHlENkhqTUZOcjN6dGdnTDVlUUhBaFUyU1M4aWk4Z1VKUXM2MlRONTZ4?=
 =?utf-8?B?SzJNeHJNNHdVR0syV0hkZlBNSUVFUzNlL2J3ejBUWW5Td1lPQUlBZEUrWXhJ?=
 =?utf-8?B?bmVsdEcweE9TQ2ZrMk5vQmNmNVRzLzBHd1p3b0ZRR0t0ZndNZ2xyNm1BTHF6?=
 =?utf-8?B?NTNOQkhFTldocmJGQVlINjkxSzJGaTJaY2VUcEY3ZHM1aEdyWHFWb2JXakZ5?=
 =?utf-8?B?Q0U5RHlCcG1ZQmkwNHA5OFZ2a2JZMmFQa2EyVDVyWVNrZ1lGRTJUQU5vb056?=
 =?utf-8?B?TENTaU8vTFh5SENyR1NBcHFGZGxkTEJSZHdIcExCZy9FTjV0MHRlT3pDMno2?=
 =?utf-8?B?ZS90UGtJNHRUaVVDaVo0K2hIN2NKNVRMTGtTUEY4eHphanYwanQ0Rkp4YU9F?=
 =?utf-8?B?ZGs1Mm5kMXJIMjB4OFBzMTdLbnNYdkttbE5XRkFaL0VJZUxqMkxxdzdIOWpC?=
 =?utf-8?B?by9KZlc3UWkzdXpUalJ0QVAzY1gzZW9mVnNYRU1IYW5XS280enBGcXFxNFJ6?=
 =?utf-8?B?czBWM3pQM21TaEgyMmY2V3hsV3F2dmRMRG5vSm9vZWVQdllyckNHSC9zRERZ?=
 =?utf-8?B?NXZ4NWJJVHhTaUQ3SG9DbnZiNXlPU0JURWhleXVWb1RvMzBGSGlTUWJ5ZE41?=
 =?utf-8?B?OW9aV0NBOUxSSUg5c29XNDhnb1dOa2dmc0h3Ymh6T0k3L3ZPSUZXYkovZnM1?=
 =?utf-8?B?VWpPSGdQaGtFbnI0V1ozR2dxTkl2b0tGcnoxa0hBdlFrcUVudys2OC9Fb3Fq?=
 =?utf-8?B?YndCeTlZdFQ5TmhDZkw0QzdxM0Z1ODdMK2hmdGRWZDFSV21WcXpCZ01GU2Z6?=
 =?utf-8?B?cC9HVEI1cTZTTUU1dVFZNnlRNXFSdDR2cEdnREpJQnJlVE9QWUlGSmN1aE54?=
 =?utf-8?Q?mqVS5vfcRNTlWqloTBovvQ8FfjRtFg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b290RVhWVXRMU1MrNUowWkdYNlZaWS9LRExEYjNacnFPWlRQVVRjNmI0OUti?=
 =?utf-8?B?UnF2MnZyVmptazlaWHJhTWZnM3BjN3hiMXBDc0JJSGlEdlhSa3V0Kzc0a2JP?=
 =?utf-8?B?SlE1UE5kSjNGM0Z6QlFCS01GanJIQVRlSlMwbmt1VDZxNVVWTWVUK3p0b3Bt?=
 =?utf-8?B?K0Y1OVdnc1J4UVZlZHZiRVFBSjl3Szh6akhHWG5iNUowblVLTFdmQkNndmYy?=
 =?utf-8?B?elVyeXhsa2J0R1ZEc0I5MEx1YUVCWkNHNkhyN1RRcWRmMUREZENIZ3RESWJP?=
 =?utf-8?B?WlpNMmNoUkk2Njh6K2t5NzZsbkEwUWdybUF0VEhFRlI2TVNYMkdTd2dJQ2FD?=
 =?utf-8?B?aWNwS1NlU2gyQkd5UFNWNkcrT1NVNU10Wi9zQ3JRbnVaaUE1SElUQVh2RVA1?=
 =?utf-8?B?Qkp4dUN0WHpyZjlYRUhnemtvNjNMYVVGOG5rVU1GaUo3S2pWRTh2a25lU1VH?=
 =?utf-8?B?Z3pIS1VKU2RCSGtxV2hNMWlKUGJ1aElYcG5sWFZKQzMwNEdGSG9HeWJGM2xL?=
 =?utf-8?B?bEplb21uY0RXN09JbGFNVjFuMnU4VDlmNnEvdEdKYkJCQjkvbjcrSTA5YTRk?=
 =?utf-8?B?WTIzY2l2OEZGS00yNkl5ekd6OEF3cllxTlhoajFqeDVEUGFhcUhBdHlYc1NC?=
 =?utf-8?B?MHBlaGRjVGZBcXh3SWVuend6ZGZvQU5FcEFVODdVSEFpSDlrU1IvMm52WGNo?=
 =?utf-8?B?a3pXRExtUStDNVdETy9YMEtjRy8rZVBoN2YweitjQWNtQXlic0s4S01OOGdF?=
 =?utf-8?B?cGxDZWJ6dXgvcldiSlZaaXR6ME4rWUhqMnR0Zi84SE5WRFRyVXJFeUZ4Z1lU?=
 =?utf-8?B?bEZ2RHBUUDF5Y2cvWUVJMUlUM2NvbkZwNCt3T01ZZVVPbmdJNkI1bW9FYlVj?=
 =?utf-8?B?NGpFSUVaSkdPQzZyUWR6aGpHQUJaQ3dEdXM5QUVJUnR6N0NxYjl1dk42bkVW?=
 =?utf-8?B?N2lJaVc0SnAzSGozbjhLdEN2QmZPZEJOTGVmdmhzQXgrMUhGRUh6UDJOM2x3?=
 =?utf-8?B?U0VWWWh1cGhsUlV4S0RtVU9uQUd6dEJ3REFTR3ZiUmtkVFVnbERpLzJIT3dZ?=
 =?utf-8?B?Z24wQ0QwUGU1VlcxMk5vRWRKZDV6Yk9aczFlSjVUTFlzc1NKc0V1azhJbGF0?=
 =?utf-8?B?VWk2Q2Vlbk5nWGdBSWVKM1VqWXdoVkp1dGxMZjRYUGYyMFZKOGxGbHE3Wkdu?=
 =?utf-8?B?ZGtJbzdtUGt3OEhYR1BrWVBnYytxM1BOU1grb1FvZC82TmxMT2pyK2wyZ1M0?=
 =?utf-8?B?SHVoaVRkSzhZdS9CZHlNN3QvWEJFMCtUVGx4ZzVxT0pxdU9ybU5NMnZ2OEJi?=
 =?utf-8?B?alRJeHhnZVBBa3pzTTFROWo5ak1uOEg5b1VGQmFVaHJVNUtUdUp0MEpUZVdU?=
 =?utf-8?B?MWIyYmIzaENuQyt2QkJGcllOa2xHNnZvc3ZFaCtlZlMzV2t1dG9HWWEveXg3?=
 =?utf-8?B?aGM0cWhIS09hRTgxeGxmemlVNkVkTXZWbEhtMzNydVZIQTBISlZJNU9xZEFn?=
 =?utf-8?B?MCtyMXJnNWJabWpNaGhZaTUxNmRHOTNIcUR0Wk1CL0MrUFo1MzlzbVVTbjNl?=
 =?utf-8?B?a3Y5ZkRSZUc0TFROTm04UHJaYStGZWZaVFBKN1l2b2pSdHBKajNKdStxdnJ5?=
 =?utf-8?B?eDhobGE2bGkyZWErTExqVE5WOEt6ZVNiaWxsUFpoeVRpM2pibG1zTDZqUDJ0?=
 =?utf-8?B?T2hkZ21CNWFOQ0p1djE2NFNPZi91c1hocGZSQlRaNGxhVmZVV3FIbmlmSEtZ?=
 =?utf-8?B?bkY5MmE2cW1hVThxNkd0SGlBVmJwZG5ITTF4OC9OdTI5K2hIM3pac1VSdURO?=
 =?utf-8?B?a0d0bFVZNnpiY291czhGUTVGUnFPMHhPUlc3S29BZEZyMWxySHRLaDlJV0lF?=
 =?utf-8?B?dXZGczV6SHpPeXJpUmp6cXI0dGVHcERvcjhqODMzWjJmWU1EVjIxRkRnM201?=
 =?utf-8?B?eWF2K2xSdS94eHdieXRqaHhKdDJTNGIxSFhDSHpvNmF2QWdJQnZJd2JTYkRp?=
 =?utf-8?B?RUVXbHFhMU9FczdpTjhvbW1zcmQxT3JQSnAwNmJPL005V1hlVERDZkpTV1V0?=
 =?utf-8?B?RjJialFCQmd4aytzTFYwSmJ0ZWp2aVQ0bVhUY1JMMVc0Um9mVC9OYm16OUIy?=
 =?utf-8?B?RE9PZXRBT0EzMXBpdjB1d21rTjg3NkNVTjBDeFJZVHhrRkRLeGtEanZRKzNG?=
 =?utf-8?B?NVE0ekpuOXZFbVlzU2F6bE1UcnI4R09aZkp3ZUZHbFo3SUNud3F6ZTA2QlRC?=
 =?utf-8?B?eWJLWGo1V052U1ZEb0VQK3RMRUlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DFA980328A80C94FBBAFC8B7A50CD719@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf81911-50cd-4e52-706e-08dd817e0d28
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 09:14:14.2961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /96XGY8yOVVUj/Jgn7r7aTpetmjXA5fpE7efZdx34uj9RhKITGOafjwLauJ8XO1T07p/S96T5ijU9MSTh/UMBfL+m+bSVScp37XYLesTkmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4700
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

T24gVHVlLCAyMDI1LTA0LTIyIGF0IDA4OjA3ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEFwcmlsIDE3LCAyMDI1IDc6MTIgUE0NCj4gPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOyBNYW5uYSwgQW5pbWVzaA0KPiA+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+OyBCLCBKZWV2YW4NCj4gPiA8amVldmFuLmJAaW50ZWwuY29tPg0K
PiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjkgMTAvMTBdIGRybS9pOTE1L2Rpc3BsYXk6IERpc2lu
dGVncmF0ZSBzaW5rDQo+ID4gYWxwbQ0KPiA+IGVuYWJsZSBmcm9tIHBzciB3aXRoIGxvYmYNCj4g
PiANCj4gPiBPbiBUaHUsIDIwMjUtMDQtMTcgYXQgMTU6MTEgKzA1MzAsIEFuaW1lc2ggTWFubmEg
d3JvdGU6DQo+ID4gPiBNYWtlIGEgZ2VuZXJpYyBhbHBtIGVuYWJsZSBmdW5jdGlvbiBmb3Igc2lu
ayB3aGljaCBjYW4gYmUgdXNlZA0KPiA+ID4gZm9yDQo+ID4gPiBQU1IyL1BSL0xvYmYuDQo+ID4g
PiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jIHwgMjcNCj4gPiA+ICsrKysrKysrKysrKysrKysrKysrKystDQo+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoCB8IDIzIC0tLS0tLS0t
LS0tLS0tLS0tDQo+ID4gPiAtLQ0KPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlv
bnMoKyksIDI0IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+IGluZGV4IDNkNDQ1OTg4MWU3Yy4u
ZjRkODY5OTUzMDQ1IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+ID4gPiBAQCAtNDI5LDYgKzQyOSwyOSBAQCB2b2lkIGludGVsX2Fs
cG1fcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gPiDCoAl9DQo+ID4gPiDCoH0NCj4gPiA+IA0KPiA+ID4gK3N0YXRpYyB2b2lkIGlu
dGVsX2FscG1fZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+ICsJ
CQkJwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUp
DQo+ID4gPiArew0KPiA+ID4gKwl1OCB2YWw7DQo+ID4gPiArDQo+ID4gPiArCS8qDQo+ID4gPiAr
CSAqIGVEUCBQYW5lbCBSZXBsYXkgdXNlcyBhbHdheXMgQUxQTQ0KPiA+ID4gKwkgKiBQU1IyIHVz
ZXMgQUxQTSBidXQgUFNSMSBkb2Vzbid0DQo+ID4gPiArCSAqLw0KPiA+ID4gKwlpZiAoIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkgfHwgKCFjcnRjX3N0YXRlLQ0KPiA+ID4gPiBoYXNfcGFuZWxf
cmVwbGF5ICYmDQo+ID4gPiArCQkJCQnCoMKgICFjcnRjX3N0YXRlLQ0KPiA+ID4gPiBoYXNfc2Vs
X3VwZGF0ZSAmJg0KPiA+ID4gKwkJCQkJwqDCoCAhY3J0Y19zdGF0ZS0NCj4gPiA+ID5oYXNfbG9i
ZikpDQo+ID4gPiArCQlyZXR1cm47DQo+ID4gPiArDQo+ID4gPiArCXZhbCA9IERQX0FMUE1fRU5B
QkxFIHwNCj4gPiBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFCTEU7DQo+ID4gPiArDQo+
ID4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5IHx8IChjcnRjX3N0YXRlLQ0K
PiA+ID4gPmhhc19sb2JmICYmDQo+ID4gPiArDQo+ID4gPiBpbnRlbF9hbHBtX2F1eF9sZXNzX3dh
a2Vfc3VwcG9ydGVkKGludGVsX2RwKSkpDQo+ID4gDQo+ID4gSSBrbm93IHRoaXMgaXMga2luZCBv
ZiBsYXRlIGNvbW1lbnQuIEknbSBzb3JyeSBmb3IgdGhhdC4gSW5zdGVhZCBvZg0KPiA+IHNwcmVh
ZGluZw0KPiA+IHRoZXNlIHVnbHkgY2hlY2tzIG91dHNpZGUgUFNSIGNvZGUgeW91IGNvdWxkIGFk
ZDoNCj4gPiANCj4gPiBpbnRlbF9wc3JfbmVlZHNfYWxwbShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLCBjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUp
KQ0KPiA+IA0KPiA+IGludG8gaW50ZWxfcHNyLltjaF0gYW5kIHVzZSBpdCBoZXJlIGFuZCBvdGhl
ciByZWxldmFudCBwbGFjZXMgaW4NCj4gPiBpbnRlbF9hbHBtLmMuDQo+ID4gRS5nIGxubF9hbHBt
X2NvbmZpZ3VyZToNCj4gPiANCj4gPiBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCB8fCAo
IWNydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRlICYmDQo+ID4gwqDCoMKgICFpbnRlbF9kcF9pc19l
ZHAoaW50ZWxfZHApKSkNCj4gPiAJcmV0dXJuOw0KPiA+IA0KPiA+IHRvDQo+ID4gDQo+ID4gaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjAgfHwgIWludGVsX3Bzcl9uZWVkc19hbHBtKGludGVs
X2RwLA0KPiA+IMKgwqDCoCBjcnRjX3N0YXRlKSkpDQo+ID4gCXJldHVybjsNCj4gPiANCj4gPiBh
bmQgc28gb24uIFdoYXQgZG8geW91IHRoaW5rPw0KPiANCj4gQXMgd2UgYXJlIHRyeWluZyB0byBk
aXNpbnRlZ3JhdGUgYWxwbSBmcm9tIHBzciwNCj4gaW50ZWxfcHNyX25lZWRzX2FscG0oKSBjYW5u
b3QgYmUgdXNlZCBmb3IgbG9iZi4NCj4gU28gd2UgbmVlZCB0d28gZGlmZmVyZW50IGFwaSAtIGlu
dGVsX2xvYmZfbmVlZHNfYWxwbSgpIGFuZCBvbmUgZm9yDQo+IHBzci4NCj4gRG8geW91IHdhbnQg
bWUgdG8gYWRkIHRoZSBhYm92ZSBvciBzb21ldGhpbmcgYmV0dGVyLiANCg0KSSBkb24ndCB0aGlu
ayB0aGlzIGlzIGNvbmZsaWN0aW5nIHdpdGggdGhlIGlkZWEgb2YgZGlzaW50ZWdyYXRpbmcgYWxw
bQ0KZnJvbSBwc3IuIEkuZS4ga2VlcCB0aGVzZSBkaXJ0eSBkZXRhaWxzIG9mIHdoaWNoIHZlcnNp
b25zIG9mIFBTUi9QYW5lbA0KUmVwbGF5IGFyZSB1c2luZyBBTFBNIHdpdGhpbiBQU1IgY29kZS4N
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBBbmltZXNoDQo+
IA0KPiA+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+IA0KPiA+ID4g
KwkJdmFsIHw9IERQX0FMUE1fTU9ERV9BVVhfTEVTUzsNCj4gPiA+ICsNCj4gPiA+ICsJZHJtX2Rw
X2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gRFBfUkVDRUlWRVJfQUxQTV9DT05G
SUcsDQo+ID4gPiB2YWwpOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+IMKgdm9pZCBpbnRlbF9h
bHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiA+ICpz
dGF0ZSwNCj4gPiA+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gwqB7
DQo+ID4gPiBAQCAtNDUyLDggKzQ3NSwxMCBAQCB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91
cGRhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gDQo+
ID4gPiDCoAkJaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gPiANCj4g
PiA+IC0JCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+ID4gKwkJaWYgKGludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gPiA+ICsJCQlpbnRlbF9hbHBtX2VuYWJsZV9zaW5r
KGludGVsX2RwLA0KPiA+ID4gY3J0Y19zdGF0ZSk7DQo+ID4gPiDCoAkJCWludGVsX2FscG1fY29u
ZmlndXJlKGludGVsX2RwLA0KPiA+ID4gY3J0Y19zdGF0ZSk7DQo+ID4gPiArCQl9DQo+ID4gPiDC
oAl9DQo+ID4gPiDCoH0NCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggNDNlZDE2NjAwN2ViLi42ODk1MmY3YmRk
N2MgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ID4gPiBAQCAtNzk0LDMyICs3OTQsOSBAQCBzdGF0aWMgdm9pZCBfcHNyX2VuYWJsZV9z
aW5rKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gwqAJZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZHLCB2YWwpOw0KPiA+ID4gwqB9
DQo+ID4gPiANCj4gPiA+IC1zdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NpbmtfYWxwbShz
dHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCwNCj4gPiA+IC0JCQkJwqDCoMKgwqDCoMKg
IGNvbnN0IHN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUp
DQo+ID4gPiAtew0KPiA+ID4gLQl1OCB2YWw7DQo+ID4gPiAtDQo+ID4gPiAtCS8qDQo+ID4gPiAt
CSAqIGVEUCBQYW5lbCBSZXBsYXkgdXNlcyBhbHdheXMgQUxQTQ0KPiA+ID4gLQkgKiBQU1IyIHVz
ZXMgQUxQTSBidXQgUFNSMSBkb2Vzbid0DQo+ID4gPiAtCSAqLw0KPiA+ID4gLQlpZiAoIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkgfHwgKCFjcnRjX3N0YXRlLQ0KPiA+ID4gPiBoYXNfcGFuZWxf
cmVwbGF5ICYmDQo+ID4gPiAtCQkJCQnCoMKgICFjcnRjX3N0YXRlLQ0KPiA+ID4gPiBoYXNfc2Vs
X3VwZGF0ZSkpDQo+ID4gPiAtCQlyZXR1cm47DQo+ID4gPiAtDQo+ID4gPiAtCXZhbCA9IERQX0FM
UE1fRU5BQkxFIHwNCj4gPiBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFCTEU7DQo+ID4g
PiAtDQo+ID4gPiAtCWlmIChjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5KQ0KPiA+ID4gLQkJ
dmFsIHw9IERQX0FMUE1fTU9ERV9BVVhfTEVTUzsNCj4gPiA+IC0NCj4gPiA+IC0JZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gRFBfUkVDRUlWRVJfQUxQTV9DT05GSUcs
DQo+ID4gPiB2YWwpOw0KPiA+ID4gLX0NCj4gPiA+IC0NCj4gPiA+IMKgc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiDCoAkJ
CQnCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUpDQo+
ID4gPiDCoHsNCj4gPiA+IC0JaW50ZWxfcHNyX2VuYWJsZV9zaW5rX2FscG0oaW50ZWxfZHAsIGNy
dGNfc3RhdGUpOw0KPiA+ID4gLQ0KPiA+ID4gwqAJY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxh
eSA/DQo+ID4gPiDCoAkJX3BhbmVsX3JlcGxheV9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19z
dGF0ZSkNCj4gPiA+IDoNCj4gPiA+IMKgCQlfcHNyX2VuYWJsZV9zaW5rKGludGVsX2RwLCBjcnRj
X3N0YXRlKTsNCj4gDQoNCg==
