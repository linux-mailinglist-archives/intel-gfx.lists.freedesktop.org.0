Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E66AA0D3B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 15:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252BA10E0A7;
	Tue, 29 Apr 2025 13:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O6bwzhqs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C19410E0A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745932579; x=1777468579;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=91cQdTdjlSb+cxK4vkwXONRaqnTbSzo7d+t8tHviejw=;
 b=O6bwzhqswQN9U01sU7PoLaH+hZIG+UGda6tYlDmsuGX2sbvsK+DejYcA
 WYZCqzx7UtmlhI9gOACn8SzBZusrygbFWD8P/77zWTCFEmsItfM5/yMGJ
 kBCsdjmZdYZV9jNh9e+kqXxZGy5RXVT1GEryGgurbG4iyhgyraWlhQtdk
 7hCku3Y4yZUc680cwIr8rjQmng36FblFPKMKGbooSMiY6Cpm+q/DB6CjN
 0hNJTw4oLAnDc5g6NHjl4Yd54EqiRaSzOOkTvwjHg15xiJjfExO/kTMMl
 cwuXP7iRB13Dp7Y2QvI3ZRBh0ZnK+bv7WwwZcvr6gK5CTvfwSKLSY5lp2 A==;
X-CSE-ConnectionGUID: kefx3GVtRpaavczlB3bVww==
X-CSE-MsgGUID: 4u6zbEq9QValWPbIzfGJ2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="51375276"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="51375276"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 06:16:18 -0700
X-CSE-ConnectionGUID: k24ZaHdOSZ6xfsMrWVvC0g==
X-CSE-MsgGUID: E7qFrwaAQI63g8CyUMJsCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="133773883"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 06:16:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 06:16:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 06:16:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 06:16:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SH1YINNo+qMsEBW5+wR//CUKSs8l4fXgA9ik82ftV9IT6cnogUG8vCLgkLt5wDcMlfCaFseGDGSrd7nuViLt1s15T3Ea9DBkIZ1AiUp4DjiGar+Efe3xl6mBXJaqC59mQi9nwXBJVeMQZwiQMMSXG0cEpbPOzWmdGaG2BoiV7WShNwJ9bHxzNt5XFgz7u7Klp0anrvtvw5DlNHdZ/38P0mn6/QlPyPGd60Uw48z8Qyqn9CkH605//IWBsR9PQaFMJTss+g8PaWPcTmWIMfIh2wQYHA3P8bZBBLJ6nVP5oy7Yx/FnO/jheQ1m8V+PtAdq0AUdF3HRLROWEFiPI/3xkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91cQdTdjlSb+cxK4vkwXONRaqnTbSzo7d+t8tHviejw=;
 b=dEbEOsG9LPSo4lw+54ortXDAKCAcXz9Nzq5YS9fpK83799rJ/6qTWkvYMevWjmmvqdh7o1czR5wjQXPo9t/s6VMD9CijhMvs5EamKnk4+1iW3CqiM5vCSCSfAtoVFThZMrEzrmPDeTb/bqSxSMty+SaoAaepnfljCd7OxhJG2N4Y0/0IM5ZG09zc49UEhzeIkWDzIlcirteEhNYVp9tpamY7rrhzf80VN1fvqPOktbukzPtXJVR27yhJwz5P4i0gm3l1moS4Nvmgfv9xGdKW6PcoKZB6qOkYAJBphda0iivLWDeE5v0vQMnrV+GfgConkw2g0fG6/+ndDf/7wso7Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by DS7PR11MB6128.namprd11.prod.outlook.com (2603:10b6:8:9c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.29; Tue, 29 Apr 2025 13:16:13 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::8bfb:998c:adbb:d002]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::8bfb:998c:adbb:d002%6]) with mapi id 15.20.8699.012; Tue, 29 Apr 2025
 13:16:13 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shyti, Andi" <andi.shyti@intel.com>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Thread-Topic: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Thread-Index: AQHbrrgepuuS3YVLp0mXKlpJB2mvQbOyy7GAgAdu7pCAAGHvgIAAFoSA
Date: Tue, 29 Apr 2025 13:16:13 +0000
Message-ID: <PH0PR11MB58804EEB54AC07E8C212E3B0D0802@PH0PR11MB5880.namprd11.prod.outlook.com>
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
 <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
 <SJ0PR11MB586797751A19E64E52CABECAD0802@SJ0PR11MB5867.namprd11.prod.outlook.com>
 <qqfjvvu44wikoohewpgpbselarv3t4vazur2sjvznbq4m7halz@r3ezlz7vhezc>
In-Reply-To: <qqfjvvu44wikoohewpgpbselarv3t4vazur2sjvznbq4m7halz@r3ezlz7vhezc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5880:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: 26083db5-588e-4906-0d65-08dd87200431
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NWRDdGxlTVJjQitpYmhTWWpxOVpwVWxXM2tJUmFvVTV0cERDcEtZNEpadkly?=
 =?utf-8?B?bmxRclRmeG5qMC95R1VTNlNWVHVxemMzd1V2dGhYZCtoeDVxY2tRWEFTNG1v?=
 =?utf-8?B?T25CYnZodEF5Y0JTZDFqNWx1STJzVmdsbzNCS0J4SVVIU0M3VkhJdFZrK1NL?=
 =?utf-8?B?SHc2RUl3WWljNkdEakZmcSszb3lzS0Rxay95czAwSjc4TkhWWGRKcWh0TkUw?=
 =?utf-8?B?OFpSUVNkZ09qS1UzdEFLaTd6aDZjbCtmV3FDbzFwYjk4dnV6SE9FVEZ3Yjdw?=
 =?utf-8?B?RFcvQlRhT3Yva1RQbTd0QzYzTW12aFkxaUVpMUN3dit4VXlZZENZRHFVaGFa?=
 =?utf-8?B?T3BNY0J6MjlmSVE2M3RqV2dXbnJUVUpHUTlqOENTWE16dnZseXMwc2RlV0pB?=
 =?utf-8?B?YlRMZ21oN1YwRm1UZ3Q4cDlEYnlkSjRTeUVRbDR4NFY4KzQ5SUU0eHVrUlJl?=
 =?utf-8?B?VDdKdGFTVXZGSWYyMzFWT3ZMTERqQUVwbUlNYkJjek5DU3dxTVpkWEJ5Mmk2?=
 =?utf-8?B?bHZXS2I2WENFc3FXcjlxamtDQ0QrOUUvZUdmdUpoSkRkR1cxUjM1andWNG9V?=
 =?utf-8?B?R2dhdklKdDhFa3BSamkvZjI1ZzFlM2ZwZXE1alZWeTVjalhtZ2pNM3lReUha?=
 =?utf-8?B?UU9TeWIrOGxXTUFGWkxtcktzaUZKTmdKa212cGpRbUxrczVyT25ES3lZc1VC?=
 =?utf-8?B?WmdscUVmUGc4YzdvNWZFU0xVc3U0eEFrQVk3VnBOWUJvUTdZZ0JBcWZoR3R6?=
 =?utf-8?B?TUo2L1pLWDB6YzhYbCs0RkFCOG1TbUp2ZnRrdWVNeDhqUDZpY3Z4RkpmeStp?=
 =?utf-8?B?bXVDaWVoTENrTUtXVnV5ZElRR2RpWjdDSXFXVER2cGNienFvdVZaSkpUdjVs?=
 =?utf-8?B?bHJtNk54TU95eEhUdEtBTW1rUWpNRGRXZVM2YW9aaVVHL1M4OURVUVVoN2ZZ?=
 =?utf-8?B?OGx3bnA5dmdURnlUK1ArcGUyMW9BY3VSdkpvK3NjM25nakJtN0NMc3RvUlU5?=
 =?utf-8?B?cSsxWWk5TkJrWTd4T2Y2djFTckcrZWxCeG5qUU5COFVpby85Qm9GQWNPTTFn?=
 =?utf-8?B?OElhRVdreVpROVU2Qm53ZTRQK1VYM3ZlS2FtVWFWMHNBNXVhYy9jK1diRzdS?=
 =?utf-8?B?TnRoQVduRVUzaUpzY0IrYmRtQXZ6NGpPVkEvZmRXaTFpYjdvLzVNdTJMMHdx?=
 =?utf-8?B?T3hBelN4RkVkaUt0djBhNi8vN2NBRXk4ZzFDZU5WcGlkaU4yNm1tMGN4RkJ3?=
 =?utf-8?B?cmNKZlE4a1h6RFFGemo4Szl5VUJPN3lDTGdMOHU4SVVuOVNDNXlMNEYrMjJm?=
 =?utf-8?B?TTh6L2tLd0N5V1hsQkRsRXk0dEdyeWloWHdUdEQrbDg3YTQveUR0TDRmd0NO?=
 =?utf-8?B?K0lEOTlRM3pmZzlsVXBkR0NBczl1MWMvNEtkRmc4azA3T1FnUlg0WE9EQkVl?=
 =?utf-8?B?TTM0WDgwOStEUzJlMnRYNVRISldSNW44YjUyRFoxTUJyVE5ENWtXK3F5WENj?=
 =?utf-8?B?dWhVc0pSTUFDNnlxdUJGS2dzeFRqZFhlNy9zaUZUOE90eHJ1ZWJ2QUpVUk5z?=
 =?utf-8?B?bWZ3TG1qNWhNeHVPS3NFWS9jR3lKZFlWVUhjN2J3bnNNRE9KY0o4TmsyTnlI?=
 =?utf-8?B?T1Nmbmp4UjhUcTFHVzIwRHdqR1U2TmJvZ0h3MnJ1RWFpakYyQis3UzhrQk9Y?=
 =?utf-8?B?SFdvdmZNWDRpVzJ2cmwyMml2WUN5L3dFb05EelpvUGswb1RPZE8wVXFDTFEv?=
 =?utf-8?B?VUxrRjNXVUF4b0VBSnhRQUtyY1lja2xDZDlaMTRHMVpKM0hXYmhjeWs1dzNL?=
 =?utf-8?B?WmttVTBIVnE2SHJGc1lMTGhJanpqTnlUall1Y3dCWmhLcjhTeGt5RnRtR1Jm?=
 =?utf-8?B?YXV5RFlyQXZ2TTFoZWdwaU8zRTU2K3FuVHNicy85cHVFK1RwOEZGMTh3ZnJi?=
 =?utf-8?B?MW5QZE51eUxidkRIcXhNWFNmOXdGYXNxbUViUzFmRjBYbGd1M2QySHZvK3Fu?=
 =?utf-8?Q?FYd5ntu9AK53fohzVoJL5EWxKrtbW8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0dZUGI1aHlLZWxzWThSR0gvTFJ2S0w3QWQ3NWdSeWMvUTdRS1FIaHFWZnNy?=
 =?utf-8?B?UzkzTURZNVVMOEExdGVzZGlJRk9ZK3AvOS93WTdSRk5uYm9tWUwyTzVxRVVW?=
 =?utf-8?B?M3J2cHl1YlBvUFhZbTZGQ3g0N2ExZmlMaU1UL1YyZUVFbEZXNlN3S1lnMGp6?=
 =?utf-8?B?aGVJaFNSdm05UmdRYXpNR2xxeGJlT1JzT0k0N1ZwcFZuWHFFVE5EWjYrWENl?=
 =?utf-8?B?ZUUrMlRnbVJjSXBMRkFHR3VUcU9zcjR0VERTaUxtNWd2VDlKb3BVZWNobXhr?=
 =?utf-8?B?RUZDMXQwZXVGRzJRRmJaOVkwMmJqWjR6amgwTFZ3WmlMLzhtUzVHNEl6ZzBz?=
 =?utf-8?B?RUlzVS8zZHR3dG5Ec1RTeS9WZnlQVENINnZYWVpsdFFiRnhzdWpvQTUvcWZi?=
 =?utf-8?B?MmRJVENxOGtpSlYwV3NHNlg1ODBsMldlc1dtN3BQbjdtSjE3ZG90OHVqYSs5?=
 =?utf-8?B?OFNUNjhUWlhKOXdYL0oxcW5YLy9Pd2VHL0p5NUVRNno5NlUyS0h0TC9qMitk?=
 =?utf-8?B?blRLOURoTzVzMVBCckpXNWpDTTdnSVZFUjlCLzFlaWw4dUswS1lqVHFZeVBr?=
 =?utf-8?B?SEdzUHh3NzFRRjVlMGJOMlYrNW1hVHlPcXVMTnF6TVBIREY1bU5WeHFsRkFu?=
 =?utf-8?B?VmlsZkdnbG1sTXdTOXVCZTVPK29XWkRrVUNpSjRBS0NMdDRYd2hGQjlYR1R5?=
 =?utf-8?B?M292R05wYWZwMEhLWjdrcHdoVWptalIzM2RBVGdKTjVVaVNDczY5VjJGOHhq?=
 =?utf-8?B?c3JLZFB2NlRhc1B0NnEyT3FpclNCZlNweVVsRHZkd2k0SjNlam42SmIrVmNV?=
 =?utf-8?B?QUIyTGlGcXFwemFZc2FtaDk5a2NKVDhYcDk2Q0xHQktxVmtseHAzZ0grKzNi?=
 =?utf-8?B?d2dXWkVKNGtSWEVLTmh3VGxIbGIwbFZEaUhTcDFiMjhOUUViNW80ZStJS3NL?=
 =?utf-8?B?LzNKdkY0cERwWGYreGFIMm5SaGVIOHZ5dnhObW5CUmJQSVFaeTA4SEZjTlVM?=
 =?utf-8?B?aUh0a0JmbFZVTmcxUHhsL3oxM1VJTmR6SHdLWGlpMC9sdzk2V1NrZEhMRzFu?=
 =?utf-8?B?RUUxSnNMS0VvSUhvUklyQzZPTGRzaDE4T2JtMzdpU1hLNGhycWQ4dFNVL3dQ?=
 =?utf-8?B?all5TUYzVDJsdERvWnNwSkdoby9zcFJvclpNdUZ6bkVkU2ZIaHRaWVBkbW5T?=
 =?utf-8?B?aVJTd05tb1dKWGY5dEdrQVNqc0hjSHBndnRrZ0hHVmhiNG1HVXdUaU9jZFFz?=
 =?utf-8?B?UFhmWEgraFJyZjBWaHFnS1J2TFAyZkk5d2hqR013a0xNTjNjblZqNWVNNmxG?=
 =?utf-8?B?NE5ZVERqYnUrOWJpRnJMWFVweDBqMUhLbkpqTDJzYk9KSGtNQ2FEWmNsTlla?=
 =?utf-8?B?T2dBVDNaSzZtRWU4S2ZBWUEwbW11UFlTREcxYlpoU3JYNElSU0ozVUJQVjFv?=
 =?utf-8?B?RFlLc3pLZ0MydDJKVnVuYmYwQnYwSEU4NC9IVEpETG9vcW02R1BVcURwQnlZ?=
 =?utf-8?B?MUVGVXk5eXlsMXB5b3dtc20vbXFXN1JhNVBYM3dIMXRDR2trY2toMmx5cCs4?=
 =?utf-8?B?SldRZzFyaFE2cXhNUzRrSU92YXVETWlRK0dKVFk5dlQyOFkxOHRiUm5HVEpO?=
 =?utf-8?B?d2w1U0lGY0RlZnl1V0NENWJOUnV3V2pvWlg0Z3pBMkRhVCt2NENnYkc2TmZ2?=
 =?utf-8?B?eVpJb0F1VElVdmxtSTl2djZpMGxSZS93d0Z3M3RvLzkvQUF1L2E1bG9lZC8r?=
 =?utf-8?B?NEE3YkwrZmd0YTZYa00vL0FnUHArR2hlaUwvQm13SDYxeFhuZnEwamJYUkZE?=
 =?utf-8?B?Z1N4SEN6TEpTZW1iSWVHUWxGNnpVbHBqTFhna3NCSUNVckVrQS9ZNVBUOHJv?=
 =?utf-8?B?Zm93SmYzdnRsS1pvbkRDOXEwM3ZvQ0xFMnFUcEhLV1lmbUlkN1N6WTJIU1o1?=
 =?utf-8?B?L2I5NTViRklkU2IxSGFFbUViRlI2Z1loOCtSZ2Q2QUZlQnYrUUwxWVhYWHB6?=
 =?utf-8?B?VmZLVkNOUWRndTl2TDRxZGtVV3lFL0h5SFMwd01VTGhRZ1hwY3NPU2Z1d3JT?=
 =?utf-8?B?Umw0QjM4c3Nlc3BhQ2RxUXN6L2JHWUZPNEVYbzVXS0dLZ3g3Sy9lVWVjNURr?=
 =?utf-8?Q?AAI4yUG/r1SpIsNIGSOebGcHI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26083db5-588e-4906-0d65-08dd87200431
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2025 13:16:13.5152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NCJOwJx4m3D3Xw1nybVB4hmpNGC0Nx1N60jwNy1VokjmTxnQKBy1e/HEUZy7+ICR05x2Xh8z9ZoyVajCF5/jZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
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

PiBIaSBOaXRpbiwNCj4gDQo+IFsuLi5dDQo+IA0KPiA+ID4gPiArCQlpZiAod2FpdF9mb3JfYXRv
bWljKCghc3RvcF9yaW5nKGVuZ2luZSkgPT0gMCksIDIwKSkgew0KPiA+ID4gPiAgCQkJZHJtX2Vy
cigmZW5naW5lLT5pOTE1LT5kcm0sDQo+ID4gPiA+ICAJCQkJImZhaWxlZCB0byBzZXQgJXMgaGVh
ZCB0byB6ZXJvICINCj4gPiA+ID4gIAkJCQkiY3RsICUwOHggaGVhZCAlMDh4IHRhaWwgJTA4eCBz
dGFydCAlMDh4XG4iLA0KPiA+ID4NCj4gPiA+IEkgYW0gd29uZGVyaW5nIGlmIHhjc19yZXN1bWUo
KSBjYWxsaW5nIHN0b3BfcmluZygpIHRvbyB3b3VsZCBiZW5lZml0DQo+ID4gPiBmcm9tIGhhdmlu
ZyB0aGlzIHRpbWVvdXQgb24gaGFuZCBhcyB3ZWxsLiBUaGF0IHdvdWxkIHJlcXVpcmUgbW92aW5n
DQo+ID4gPiB3YWl0X2Zvcl9hdG9taWMoKCFzdG9wX3JpbmcoZW5naW5lKSA9PSAwKSwgMjApIGFs
b25nIHdpdGggeW91cg0KPiA+ID4gY29tbWVudCB0byBhIHNlcGFyYXRlIHdyYXBwZXIgZnVuY3Rp
b24uDQo+ID4gPiBXaGF0IGRvIHlvdSB0aGluaz8NCj4gPg0KPiA+IEluIHhjc19yZXN1bWUoKSwg
dGhlcmUgaXMgbm8gbmVlZCBmb3IgYSB0aW1lb3V0IGZvciBzdG9wX3JpbmcoKSwgYXMgd2UgaGF2
ZSBub3QNCj4gZW5jb3VudGVyZWQgYW55IGlzc3Vlcy9lcnJvcnMgaW4geGNzX3Jlc3VtZSgpLg0K
PiA+IFNvLCBJIHRoaW5rLCBjdXJyZW50bHkgdGhlcmUgaXMgbm8gbmVlZCBmb3IgYcKgc2VwYXJh
dGUgd3JhcHBlciBmdW5jdGlvbi4NCj4gSW4gdGhhdCBjYXNlLCBJIGRvIG5vdCBoYXZlIGFueSBt
b3JlIGNvbmNlcm5zOg0KPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEthcmFzIDxrcnp5c3p0b2Yu
a2FyYXNAaW50ZWwuY29tPg0KPiANClRoYW5rcyBmb3IgdGhlIHJldmlldyBLcnp5c3p0b2YuDQoN
Cj4gQmVzdCBSZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KSGkgUm9kcmlnby9KYW5pLA0KTWF5IEkg
YXNrIHlvdSB0byBwdXNoIHRoaXMgY2hhbmdlPw0KDQpUaGFua3MsDQpOaXRpbg0KDQoNCg0K
