Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QsDoBcyuOmq+DggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 18:05:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483A66B88DE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 18:05:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jlNtig+E;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB31589FC9;
	Tue, 23 Jun 2026 16:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7655889FC9;
 Tue, 23 Jun 2026 16:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782230729; x=1813766729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vt9w1ud7NM8utwhIXQk1kZUw7ExF5wGc0GAfijbsTEw=;
 b=jlNtig+EjZlJt9xBaunNa6vSEzRsDLI1izbDPXNvNaAEVrq0aJaoT7tQ
 LdkW8rUrdS5MkaAEV9fqqMwDzha0NqcB9G4hz1c6KeTrcVvthrMmn/Ou0
 y0+TyiPM1Flc3uYX3pLavxhl3gq8HyVjZqYQqaRygeqCgrit4Voeovc9J
 I+/Vk4EPktZDSK02QUNd/vZ8OXe9Twk7uTdopzJDZRw/TdbVbP17/L2E+
 C2JXJQmbgr17cWI12iG6stseH6Tcqk+LN1LSAuTnHDxigU+DoDhZsCTAq
 7TpMukBYP9aQ8eq5OYkTiyekpUQbTPKSn6qtVkSWoKjaBe5e9vM5mcBTq Q==;
X-CSE-ConnectionGUID: V1/u5gRXRKWGA1yIUgAskA==
X-CSE-MsgGUID: 2z0fQ1dwRX+rI5caB2KjKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100404853"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="100404853"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 09:05:29 -0700
X-CSE-ConnectionGUID: c6an9UbrQFGa2TW/SrU3HQ==
X-CSE-MsgGUID: be+fcAH/SU68P3Hrh4lpvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="253430881"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 09:05:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 09:05:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 09:05:27 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 09:05:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LFk39G2GIDCAId4ND5cCDIcS56xsW40T8oaesBTd97ahuymqicxcJWbUr1fr9eyO22vMYALHOROCx0BJkSlZDH1tCEszoaSzxGm2/egveJfypVniSXcJsxy34+Y2i38e+74Yf1JiAcA8Yvf6qe1+tsY54N3YAp9Qo2csEEpfnS7Izvy7N/tl7QCQ/IFhynlhUUPUc0eoeQ1g0FiWAMHVBRgvI6SdhTXAhWYsqhDcFz9I5oOUMbQ54rXXK2glRvHyWZU4VU2/XWl6dUrpYH0KaXydjZnh9UbST4F6bulEuNoGkFB8v6QFTsSD/zj0EiOzOa/f5t+RS0pZ6ehRM584TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vt9w1ud7NM8utwhIXQk1kZUw7ExF5wGc0GAfijbsTEw=;
 b=Uj21+vwYths4M/IR74Mjgg4JbGJg8ONV3aoaKSJXFEjrV8O4kMS9YRFPT5ZYlxYa/hLFVP8hbQZqeaCz7DKle+CDSTYdyFBm/zZ9gn9mW+HgHQxUqfw3Zuhd/y989NugNn2UbwFopj9PXt4OYP4xDvAbppHI4v5icN2fcoL/j4iIR7sgQT1b/jKzjlxXZmO3yeLujnxY57Kg753g+jOnVQX8lU9eEG2ywOMPNMQL7A/67RGjiy4aD2d5tDLuEgwhlPMspfFQacdtIej9BmbEyfLfl5V2ruYiM7xKXC+Q/CSQPwfzoU54An6Hx4UH/ECCZJkq17+m2GIbE66Oloys/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by LV8PR11MB8722.namprd11.prod.outlook.com (2603:10b6:408:207::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 16:05:24 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 16:05:23 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH v2 0/5] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
Thread-Topic: [PATCH v2 0/5] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
Thread-Index: AQHdAo8uyljFQ0zEtE+Qh/d74gNViLZMQI7Q
Date: Tue, 23 Jun 2026 16:05:23 +0000
Message-ID: <PH7PR11MB8252D065508FDC408244629189EE2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|LV8PR11MB8722:EE_
x-ms-office365-filtering-correlation-id: 008e70ad-2af4-4277-fe40-08ded1413b72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|18002099003|22082099003|56012099006|5023799004|11063799006;
x-microsoft-antispam-message-info: FRdFwkp8Fr3nA/A4HFBKEbOdj1NqesUSujfZw2rEuP/IJXSYp4fCG/7Ndz9S0jPTpuiG96KR32VBgeNsmzVlvtR3IIu98KbqDeWSHCieHTsnNKm5KSbLMfkwQM9jRWJSfxRJQhcN+EIe6PtIt3yI9iVUaElZy6vvKU1jLvTHQ5AkRA5UHKnED7STlah22joSPyCSil8GIHjzBUs7PTIArPLfNSJmD083PT7NKEN9aVdeiv7tXDpCAOmPG7HF7YtAgtowtNabC5g5wlLtcB0kAlRmKWYiGI3t2mh8RKhoEvDrOqhvsJwvfmnXozuJIZ7eK1UGqwSS3FLh4oVrADjzK4HD6Cx7wWI4roCUE1JKc6KbbdGEqWCcxV1ezy9BG7ASTiN0P3if62lHkm/90kH+DBfewk6ZX6IwIR2B8+IGKsJ9EsQOGjR9WYR65yCAMM1ozDaxo+jE7HfPrGjWSFoY/IS8sA4qP7u3XyvricrjQFJmz4HyRpYfF9tq3s+cZ8zbdrVzYor2XyOEDFzHCMV9klar3lZTMsIJONhgqgJDtziqMleHJe8WuXiOPbJRV6FLkKFZTfm4isvuMe+yFHU0t4F0h2x1Yg0uErUIOaSbmAQ/70LRzsptgQdIPcx+U9c20ojt6r4tR/ZAmowm6KF3zbuAlvVyHHcQ2qBG3p6vs05wZHfiQ+snB5DMyGeueOQi5uVXzqqqq6boNPiFu4madg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VFJDMC9LTHFmZ3pBZFVOOEh1a0ZtWGVPd28vdis3UFMzUDJiZkRXdFp3NkpY?=
 =?utf-8?B?RlVLNHI1Z3k1RU12aHNxbG1yTUUxZW5hRTRXZzIzeEVObjFCNU5heDRiQ0Uw?=
 =?utf-8?B?YkJXcFg3Wi9EeFBWMjVtV0czRUlJVGFHSCtJVjUya1ZyWFZEUk9VdG4zeWhv?=
 =?utf-8?B?ZlQzdDFlZmhyUTB0RTBzU0NlVFltRE5ndGtsV1ZpTzJaSDZnbHF0d1FheXE5?=
 =?utf-8?B?UlJPRENvT0lMNVpEdk90OURmb1ZXY1pROSsrVDUwdWtyN0IxS2VBQmR1L1V1?=
 =?utf-8?B?VUJFZC9zL1BMR1VCeE94bVZnN0U2NlZ4STNaRnAvT0srU09aRmI4cFlLSFVt?=
 =?utf-8?B?MktlR2c2RWpVODlCWGprNWpiSjI4WTNjelZFVkU5N2FmalBsYVlicWx3dVA3?=
 =?utf-8?B?RkRSUDRnZTlaaUYrRVBJTk1OYVp3endCaUsvZERHR3VVbVpKNUlLR0tTT29Q?=
 =?utf-8?B?M2htSkZiOXRkWWxCUTIzK0QxNm9vN0RFTWcraDNzRUNyZ3V4UnRvWDJ3cUZy?=
 =?utf-8?B?dTlWaWpJTVdZV2ovVEdveElkUUJmRUFuVm1HM1FjZVAxR1dBUWdNNi96US9R?=
 =?utf-8?B?SEpEU1YvMjhVUERyYldnN2RzTTAwSnF5UDRjSDQrSFZvaTZJcFcySHpBY2xR?=
 =?utf-8?B?WCtXaU1iY2t3aGNjOGR5RkFnUmNibFlZMEt0VzJPeWVaUTlRaXhrem5qM2Vn?=
 =?utf-8?B?cERrTkNjZUtaT0RXeW14bkJYako3ODVPdTBPdHZHd1V2SWQ0WXF2RWx6T2xO?=
 =?utf-8?B?Um5xVnRTZnNkS3BWZCsvU1YxZDN0UXFadmZxeFp1eStLYlF6QkEvcVFJTTNE?=
 =?utf-8?B?aWtFRHV1VW9ubUZ2bEhLbHZ6UWN0MXV2RXVQV0xkaXI5dGQwMmlZRHR5L3BH?=
 =?utf-8?B?Y0ZrbGIwRGtKNXNOd2grS0dCQU4xTG9aQ1diSGZGZU5XN2Q3WmRCS1dsRDRZ?=
 =?utf-8?B?V295VEVpajJjNU56OVVDRnRNNE5kcjE3T0JCakxQOTRObkZ3Q2RZTHh3M2pF?=
 =?utf-8?B?OVlKU3JzTWhWTE94WGo3QnBjdC9ZdS84TmRrUWJtelpLRTlWSC8vdThDVWxs?=
 =?utf-8?B?bzZtM1crU1l0WVYwOUhBUEFTNWFNVEZPZW9obmY5dGZyTGJUa25sQThVNWVy?=
 =?utf-8?B?d3ZxeFJ0UnVCOXZLdVgrQzVESCs2ZnJvTENvaGhEamU4bzdzUzZVSnQwckg0?=
 =?utf-8?B?dVE0azNtWStFa2NZd1ljYTl5ck4wUG5rbmpPdCtqZkNtZ1krdmVwM3ZqeW9n?=
 =?utf-8?B?TkVrSFJ2Y2UyYjlLU20rOXFMRWJnNUlxekRIWTVRWkI2V0RNRFhWWlhPSEdr?=
 =?utf-8?B?eWJ0K1g0N245VktUcFZYT2RuRVczaTl6ZnF4WGI5cWRMU2FqU09kblo2L1g0?=
 =?utf-8?B?ekpkVCtOa2VtZmZRK0poQ25nSkh5NzBQSE9Rd2tVK1NMaS9qVVNrMHpzbXBm?=
 =?utf-8?B?cnY3eEVzblJOaUo0WU9ySWlrS2Fza3kxQ3V6OE13cEtTL3piOWl5WDl6SDFO?=
 =?utf-8?B?amM2VlhYNmhEaHhDRkd6OHhOdkk2WmxjM2dycjUrWU1kVGZFejZLT3VVcytK?=
 =?utf-8?B?YUxQZzNBZXZhbkpvQXRZY3FVL0N4bVFwTnMzV3FLL0I1bDhXVEJyNzJPdjZE?=
 =?utf-8?B?aHlKWlNKbzVFU3pnaUZIWUtKOU83VVJGMWxwL0hrZ0ZjcW52blVjcUR3L1Ey?=
 =?utf-8?B?dUlRWktMLzhJdUpXVGhVVFN0ZnoxYzB1RXJpaG5hU1U1Ylo3d2FwK2VCNCtl?=
 =?utf-8?B?WHdZQXBZN2FCeS9JVjAzWmdtZHZGTHRuZlRxTzRjRWFvTWtiNTUrWGhyaElV?=
 =?utf-8?B?cVBSZFUyL014S3VIOHdRaWNCZHdCcG9uMUFGcmdYZEd4TVZZTzJrRG9nSWE2?=
 =?utf-8?B?UTVRMzdGSTR2VzNjREZzdkh0dTFmZDFsdVV3WE1XSVVPd1UvQitsWUNQU1I3?=
 =?utf-8?B?Q3N2T0lianpFVkUxdUdWbG8zRHliZWZ1bmRKSXVaMnhBbDFMUkVPZHlyZlZ6?=
 =?utf-8?B?czcrN1AxSnR4TFJnMklUdXhkYmhyc29SdjRJdmRzbFpucmo3dEJQbk1ZK2l2?=
 =?utf-8?B?bXh1cmtNeHRWb2R2MjVHWkIwSHR2VFFhQWlqVFc1d2ZvbXZ3YThaSStMMEs5?=
 =?utf-8?B?N0RFRTRlcVFPd3hTT0VvbDNUUEM4VGtYTWlMRHNpaEVQeDZkMnhKVFB4RHFC?=
 =?utf-8?B?eUd0dXI1b2JiZ01LM2JzSEZEb3FvTkZsZmR2ZjROODhCZDhCY1VJUDF5RTJW?=
 =?utf-8?B?UFNKVGlrQVh2bnVUdDNyRExINUEwblZqZmVhcmF0UXZJbnd2T1dVb3pXTnhZ?=
 =?utf-8?B?b0U5L05qYjdnNWdRTTVpYUNub0VyMWV0amZHM3JCdXdEVUlRLy9FZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Y+DGItdcJb3EqxTh64Q02vqTaeYLST6tAalnKZ6ocEiuTfUGeky2YpH6LxYPz5QCR4IDSiF5ub2ok8BAN3MAH3KntUlG4MD7Sn3Z8QfRLsNhoMr0N4xQZsgwQMy2eM+KlugwPAfETdyVTMWzplOLyA1lMrJQHFFpaB3SEmKTGe2+pwoAUCjcHDzs5Uk/Nla0hJYXASkCewQkwf3UmYnjONAPoLbFuNzZjO7qb++jZ0bbZclWwHafj0Rhex38B6IhqJb5D/7+ZRxPBRizR0Z7fnisunCVZnz+ekgYN1NxGJ332Tt/Y94MwXRDuXLXfu4vybudVviFS8+VmVMd+ZA67Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 008e70ad-2af4-4277-fe40-08ded1413b72
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 16:05:23.3558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KYrs+bu2Xu+6BkdJ1ipqAj5yMIGAakCQIptS89mwLNbA8Dti8yuLfTfRNnRW8m7hofWQXnVfepJL7wySc7V1bJKeXcg6xwaZyCfoe6DGuzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8722
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 483A66B88DE

VGhhbmsgeW91IHZlcnkgbXVjaCBWaWxsZSBmb3IgdGhlIHBhdGNoIHNlcmllcy4NClRlc3RlZC1i
eTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCg0KPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2Vz
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5cmphbGENCj4g
U2VudDogMjMgSnVuZSAyMDI2IDAzOjA2DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IEthbmRwYWwsDQo+IFN1cmFqIDxzdXJhai5rYW5kcGFsQGlu
dGVsLmNvbT47IE5hdXRpeWFsLCBBbmtpdCBLDQo+IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYyIDAvNV0gZHJtL2k5MTU6IFdvcmsgaGFyZGVyIHRvIGVu
YWJsZSBWUlIgYmFzZWQgcmVmcmVzaA0KPiByYXRlIGNoYW5nZXMgb24gZURQDQo+IA0KPiBGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4g
VHdlYWsgdGhlIGVEUCBmaXhlZCBtb2RlIHNlbGVjdGlvbiBhbGdvcml0aG0gdG8gYWxsb3cgdXNl
cnNwYWNlIHRvIGRvDQo+IHJlZnJlc2ggcmF0ZSBjaGFuZ2VzIG9uIFZSUiBjYXBhYmxlIGVEUCBw
YW5lbHMgd2l0aG91dCBmdWxsIG1vZGVzZXRzLg0KPiANCj4gdjI6IENsZWFuZXIgc3BsaXQgZm9y
IFZSUiB2cy4gZml4ZWQgcmVmcmVzaCByYXRlIGZpeGVkIG1vZGUNCj4gICAgIHNlbGVjdGlvbiB0
byBhdm9pZCBzb21lIGNvcm5lciBjYXNlcw0KPiANCj4gQ2M6IFN1cmFqIEthbmRwYWwgPHN1cmFq
LmthbmRwYWxAaW50ZWwuY29tPg0KPiBDYzogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5
YWxAaW50ZWwuY29tPg0KPiANCj4gVmlsbGUgU3lyasOkbMOkICg1KToNCj4gICBkcm0vaTkxNS9w
YW5lbDogU3BsaXQgVlJSIHZzLiBmaXhlZCByZWZyZXNoIHJhdGUgZml4ZWQgbW9kZSBzZWxlY3Rp
b24NCj4gICAgIGludG8gc2VwYXJhdGUgc3RhZ2VzDQo+ICAgZHJtL21vZGVzOiBBZGQgRFJNX01P
REVfTUFUQ0hfVElNSU5HU19WUlINCj4gICBkcm0vaTkxNTogUGFzcyB0aGUgZnVsbCBhdG9taWMg
c3RhdGUgdG8gLmNvbXB1dGVfY29uZmlnKCkNCj4gICBkcm0vaTkxNS9wYW5lbDogQWRqdXN0IGlu
dGVsX3BhbmVsX2NvbXB1dGVfY29uZmlnKCkgY2FsbGluZyBjb252ZW50aW9uDQo+ICAgZHJtL2k5
MTUvcGFuZWw6IEF0dGVtcHQgVlJSIGJhc2VkIHJlZnJlc2ggcmF0ZSBjaGFuZ2UgZm9yDQo+ICAg
ICAhYWxsb3dfbW9kZXNldA0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYyAgICAg
ICAgICAgICAgICAgICB8ICAyMyArKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
ZzR4X2RwLmMgICAgICAgICB8ICAgNSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9nNHhfaGRtaS5jICAgICAgIHwgICA0ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ljbF9kc2kuYyAgICAgICAgfCAgIDUgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3J0LmMgICAgICB8ICAgOSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgICA4ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDQgKy0NCj4gIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgNiArLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgICA2ICstDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggICAgICAgfCAgIDMgKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8ICAgOCArLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYyAgICAgIHwgICA1ICstDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYyAgICAgfCAgIDUgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyAgICB8IDE2NyArKysrKysrKysr
KysrLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuaCAg
ICB8ICAgNiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMg
ICAgIHwgICA3ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3R2LmMg
ICAgICAgfCAgIDUgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5j
ICAgICAgICB8ICAgNSArLQ0KPiAgaW5jbHVkZS9kcm0vZHJtX21vZGVzLmggICAgICAgICAgICAg
ICAgICAgICAgIHwgICAxICsNCj4gIDE5IGZpbGVzIGNoYW5nZWQsIDIwMyBpbnNlcnRpb25zKCsp
LCA3OSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuNTMuMA0KDQo=
