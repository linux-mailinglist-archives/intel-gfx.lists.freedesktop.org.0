Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111D9977CFC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 12:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D679910E19A;
	Fri, 13 Sep 2024 10:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lbhhkbVc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC9A10E19A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726222285; x=1757758285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H21VB63cf5eEk2TvywCCiMGBuECt7LZLsHYy3ZyixCA=;
 b=lbhhkbVcGrS+4yW4Ts4VKbI/1Gditx++wQqjE3RUcEyI9ocNRFETlA4h
 2SIRh62kHPMYYMgWUufMrLm9+pU/0mdzix3RnvaSnQhNV90S7V2vH4512
 VoIeq9NXwpaTKaSYOJhZKTOyaA7YCelWj11cNQU3Rg89k7LFQuAtCr2lw
 yfQddNWN+r9JzF8802PvH5FaY8lws6k/EGv0n24hLYDwwxNhRbyOCWE/y
 HGwlYXcSAv/MQ0U1JYhpTuvvNP/BiKCeOiO+RvLZd+4mVMjE+Af2do6Fe
 N62ZkD6zdjnY16vyouYkxX/pLk4ICATgW5Hkvxqft9QqMMta71YiMJ6S/ w==;
X-CSE-ConnectionGUID: dhCyfIJVSgiA6crq6L3RKw==
X-CSE-MsgGUID: 9ff/9NgMQe6+SYIJgrK3/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25270347"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="25270347"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 03:11:24 -0700
X-CSE-ConnectionGUID: kPny5cBKSweZJRt8F0ypYQ==
X-CSE-MsgGUID: 03YWXGjCSWmelTJyhqArNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="67974240"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 03:11:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 03:11:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 03:11:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 03:11:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 03:10:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xkYTyHpBJXMLvGQKzoK/o0cOIkVz4U5eXVyN9AyFA32j0Tf4o0WQw6X7kIwN4LoeACSzrCvL8Lz9cLd4Jx+lnMphBE4/QMj+B00v2Q/PdEl2c8KTbeBTLjgvZf1hLY7chrWVRV6Kz967/acNCZA8Kx8ZVHfvBapeu37c2eArrJ/nOzXsjtC2z+RKBsrJmDGd9KOaVuDAfKlZorUzhONIHsLGJHs9y17gSNIUZu0J4ap1UOApDUncBSj2x3Xlz41GynB3RVTDZQoD8bXPoVNdPz9V8xP0mGi/cJtEoKSlyOkXi5Nq8sp4TVgMNyt6XygHPfYdd2a4naIOC3epzHtMXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fi/E5V8Dbn7DxOqZez1jB2Z01d1cBejURkc2e0kS0Nk=;
 b=Aj8VGyr5z2ue8+SPQXv1MTl+7/r8eF5eJ19QJwBHqcPs195iMAoZSuQg1d39rWQXAuoQDIHjGCB206q0qfOPmjO9JFvNCE2dXfy5qXqt5JRQMf53n5Mmbzc/3gclG5KJt+nglM+HotMTThFs4gewu4+jvs8O2BVth2WjH2O4hStujrZj1iTam5YRBH86124xB1HEXBEC3AlDZZ+2txHPXM3ev/B2WbjWUOu1g6U2qa045nDpXI+Rq8WdP5paHN+uw0SkEMx/Ola13KrwxS8ojYhxE43QsLT5cjDt/Ww3/pCXu2+CbLoqe6mfqCvGT10Dd0AR+LNfc99rWRB9z7D5ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB6447.namprd11.prod.outlook.com (2603:10b6:8:c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.17; Fri, 13 Sep
 2024 10:10:40 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7939.022; Fri, 13 Sep 2024
 10:10:40 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v10 1/4] drm/i915/lobf: No need to pass connector-state on
 lobf-compute-config.
Thread-Topic: [PATCH v10 1/4] drm/i915/lobf: No need to pass connector-state
 on lobf-compute-config.
Thread-Index: AQHa/1WpfU8RBsGxAkKoAkmzIbwP5rJT+HkAgAGFhnA=
Date: Fri, 13 Sep 2024 10:10:40 +0000
Message-ID: <PH7PR11MB59813CA5C01CC8958095FFDBF9652@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
 <20240905051841.3012729-2-animesh.manna@intel.com> <87jzfhgp7j.fsf@intel.com>
In-Reply-To: <87jzfhgp7j.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB6447:EE_
x-ms-office365-filtering-correlation-id: 2f0da3a5-2c38-4c77-1db0-08dcd3dc522b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pUYw8DflRgmoAPC/LYZ69KvX9M9xnj6DfWN4vMGxG366RWh3AnF1pIL1fjjQ?=
 =?us-ascii?Q?FjQKNaPVKFCTiiiWOYrqOeSarUN2qkNQnuPd8+rMA3yS2mkjnVnevKuN0ONr?=
 =?us-ascii?Q?CYf3yVkc+RMaLLVkJAQeK8tlAvtU2V6+uYeyPXd/nUFphp7/QfC5q7EMCbBX?=
 =?us-ascii?Q?XrTUuBvQTJx+BevNWEG3NLSqQGbMGey90L2d58gAH/SsSC6+icn03rYyd0Bq?=
 =?us-ascii?Q?74ivQ0LKBxAfjGvsNN376qDLfzC/T5aZ71c67jc4vmVlO3WSQ91YgNevnZ5Z?=
 =?us-ascii?Q?cOFo+9HIW+LJ4Uw6MfXhnO9+RC1AXDntLyzI8dtuFh1Jm0sSo1OnjFYpwSVu?=
 =?us-ascii?Q?F4lB/xaOK3E4/f/7z0rZpuL0I/kTrEgcXZqOI5Wa0Pf6F6T7EM7oAy/LUAa7?=
 =?us-ascii?Q?JXYHkfIJUzgsdUpD+1KSyIblufRE/kAwn5mcn1sOwynt439niQ/PPqSADTSQ?=
 =?us-ascii?Q?q339xNt7CDp5egXCpGwDNbAYy42kVJFhTGrLySaVgl4uc1G+5EtQVNcYwwvp?=
 =?us-ascii?Q?CYQe094GYV2MzzdT+1CkqHz8OY+rW/Br4CzU3fi7TTyTINO16CxmgLlvk9ws?=
 =?us-ascii?Q?exQb00swvyOdjUQxcrPaUJMyK7O24QaOdVWbBGvH0T+9OPED0Dwcw2maMYi0?=
 =?us-ascii?Q?j9NhituJCysblYRNp5wRCEjWdL3ll2JWyLaWZYjO+3cd7s21SQJjMCJLbK2e?=
 =?us-ascii?Q?HCgjAVYYa7LgFR4EeAhGaqhjUovKJc4OIc03V38OkUnRRg/b8slkSjOE1D63?=
 =?us-ascii?Q?hAHjQ5fQQ6Jh6dhgEBU25vx4VHmwJj/2wsOZCrPUqgMuEF1eRjtQ1b3nGJya?=
 =?us-ascii?Q?AStrBK/Xu0ZkxkvAhK5ZW6fmMqxYk3apUsC/xx/6kj7gn0/JbVuDOmacD1JZ?=
 =?us-ascii?Q?nCydEf3HLsWbZ4apoNkeBkdb3cOKayxzxW2YVma+jMxc3BiVb/83gJKqwvRx?=
 =?us-ascii?Q?tytiblHQAE89vzmG74kmTFUVApdkDnX3u336geD151yZQcNu8SX3A5pbFTFl?=
 =?us-ascii?Q?4VTmAfq9AboelhGIcFP0YxI+5STlAo1YRmGTCmTUeb1iyTWB3cEmVygZsj8t?=
 =?us-ascii?Q?fldB6QqbNQBrK0ydoT8I4LVpBXbJmuyWqWg+o55vLLQnv7lr6+9faFzDdCW+?=
 =?us-ascii?Q?uZc5Eo9tyfjlY99u8/g0EVHWT70jpMlFBPgBPP0+plL3c8fm1ZZhZNOekRDR?=
 =?us-ascii?Q?VQ91wPHiNT/wpRRn4ZpJspuFtGMTyYz4H4OsFBQ5Yi4WkbSsqQs5V0F3KkvP?=
 =?us-ascii?Q?wMB7eVwbptZ179EILAts0sePwHbW/a5+rkDdyoLUESTF+gYEntEz/cQa/jk5?=
 =?us-ascii?Q?geOh/uOGTJvyNDUcSHg3eOeA1CDZM7XZOvFJMfHQ8aHCyTOluZ/JZ13Xq+A1?=
 =?us-ascii?Q?57EZfbQ1DSa+iOEp5+TXWAL4b2nOqVmoT70QMb17khnvGBYfuw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DDW1p909EZGReN5cdoW7Gv97Mxptyk2pQDqXG+pszXgrvkJqNfrodFMLVMeb?=
 =?us-ascii?Q?lfUoj43dDKUgsW89AE0P8gmNVcSDX5CYvCY7yuxHdRkhD33B+KH0In/pwN4g?=
 =?us-ascii?Q?PhUVqr4UKMRuYgI3vGqfYuH0P0qEK9MrTcDjWoqudHVmdu0whrm9C0lqjNf1?=
 =?us-ascii?Q?mW/9/BQVg4gy2QmVDcjO0nzn1F5EvaIW6j+pntf6AIyKherheFTInM95yaOl?=
 =?us-ascii?Q?4O8D4X2QKW415++X3esK4RKoWKEORLPHypshvRvMBujv5PBnlCaZw34BrfDy?=
 =?us-ascii?Q?RIHWyBNw3g0m6T7Lwzs54QVGrI3iaSRLwVpI3hBrzQyy1SQRvo1ukUnZZ8OF?=
 =?us-ascii?Q?m8LbAn9Ssb2PGIZUwqrFE8EaMf/owqdddMNESXpLLUIHo2wuakGllaZnVfa0?=
 =?us-ascii?Q?Imc09Hr2gyCKx9T7h65bm+1Klo/C79CVLRaRFhIpWneY2jCt9bfZnbE9jk17?=
 =?us-ascii?Q?blK4REpC+NObl3aGHQwdxZPhyuJCN+smf33m9UPxcQmzBV01MCa00WnWqLh8?=
 =?us-ascii?Q?n7DoC1N6t+yJIzs3TSQFV/gHcp2C00oixvTp6lBWnKt5A5C+p7T/UHTQpILO?=
 =?us-ascii?Q?Rr2NcqS1rYdxDxskyOyrMtO8CHWG3yvWmIGE5X8dS/KZLfGlJeEPREAzTPTC?=
 =?us-ascii?Q?vaaM5iVXSDUtv1zkd8458GwgXfqU7uF2kce1VYafT6UMhavF0QbBN2SLOlGI?=
 =?us-ascii?Q?VeHLsjwtPCfrRYw+4VqShEBruv6XupX9GcJONxqFqaThXLTejLlbobOBH18T?=
 =?us-ascii?Q?jfc0JzpNUZlUI0SZZ261EcT3RZPRxcTeY8F80RV7BSNV+ry0Awp/xSDXj27C?=
 =?us-ascii?Q?QDzEj8u7xJzBz0nLvDprLwzVBATpiT3Mq5HFdJmnQLfEOJ6Q+ePVtN/hGFLA?=
 =?us-ascii?Q?RlGeE6dA/OYtZgeQEMf/c3OiRztVl8c/CnPTFus1NNX0FbwkgV/NjGlf8fII?=
 =?us-ascii?Q?uD4iKCYieNAB7MgUck9O7pYZSgRHuzpz/MBiBUGlKSWxXLkewPWKFkpq50xf?=
 =?us-ascii?Q?EXLz/t1IyAZCLcfgqcEDLr1wdzmveYZUwZed2s1OwoHGgVnJ7MrBB3PCy87K?=
 =?us-ascii?Q?xUFSe3yOZ4Rw0cLh3H25X3guGfoDkSnHgi998PNeJYgy4K2NyXJz2K2tTWYp?=
 =?us-ascii?Q?q6BqtcQAmmwef3LZwDBoyJVSXEssh9K+FEo/pKg3OgvfEt4I3UPF70e4ekYL?=
 =?us-ascii?Q?FWQg9hvwpbNQ9TzBIHtUPJL+KfZJ5WYwke/BxkgSTBJJTh6IWFwQmWvf/ffe?=
 =?us-ascii?Q?KnWgw3R7I8UMAg8i6U2D43JC/LKqPoOIzJRjyod2adL+92uC/CmPFtj8l06f?=
 =?us-ascii?Q?iJYDI2NA3VnALglxk0LLTNqpM8I5jPN+sH3v85z/pg/aelj4vXBag0p3E1nJ?=
 =?us-ascii?Q?PvIjkrGcVbYmwEuFC7jTJclij/D5YIGjWoVn4E/cAdTFue8kLKGGlGw8LqwB?=
 =?us-ascii?Q?2Zu7B0xW6WEJdmWCv6eFqJiz/aFaGxBcxh+TIW6BDPa2t0La/zMBcJr/WE9n?=
 =?us-ascii?Q?m9beu2Yg5NgEkOOj7G99jWySp3hVYbrdn4YppDiNUmaO2ALI5GHGfMfu7kOg?=
 =?us-ascii?Q?z9oQ7B/6BHCsqx9qKTzlw6VTNcALR+49uLE6KOfc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f0da3a5-2c38-4c77-1db0-08dcd3dc522b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2024 10:10:40.4373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mt84xPJhDdCyEPqetBhhBQ5mI8TjOmL6CoBONnLCEh0ayXfzHWjvypgYp2c0iBDV3XbdRLjrfQhsQ0Qz1ExfYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6447
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, September 12, 2024 3:37 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Hogander, Jouni
> <jouni.hogander@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Golani, Mitulkumar Ajitku=
mar
> <mitulkumar.ajitkumar.golani@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [PATCH v10 1/4] drm/i915/lobf: No need to pass connector-sta=
te
> on lobf-compute-config.
>=20
> On Thu, 05 Sep 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> > Connector state is not used in lobf compute config, so remove it.
> >
> > Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")
>=20
> This is refactoring, and not a fix. We don't need to have this backported=
.

Sure will remove the fix tag, it was added as per previous feedback.

>=20
> On the actual change, it's fine. But I do find myself thinking most of th=
e
> similar functions on the encoder->compute_config() path should 1) be all
> named _compute_config, and 2) have the same parameter set as
> encoder->compute_config(), needed or not. Because often you are going to
> need something later, and then you end up having to plumb them all the wa=
y
> the stack to the destination. It's just unnecessary to keep removing and
> adding the parameters in the _compute_config() path. (And similarly for
> many other encoder hooks.)

Currently atomic-check() path we do feature's requirement/dependency check =
and then compute-config which will be applied in atomic-commit.
So I also feel _check() or _compute_config() suffix will be good for all fu=
nctions in atomic-check() path.
Regarding passing argument to any function, I see it is used as per need.=20

Regards,
Animesh

>=20
> BR,
> Jani.
>=20
>=20
>=20
>=20
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c | 3 +--
> > drivers/gpu/drm/i915/display/intel_alpm.h | 3 +--
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
> >  3 files changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 186cf4833f71..f2fea356d28a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp
> > *intel_dp,  }
> >
> >  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> > -				    struct intel_crtc_state *crtc_state,
> > -				    struct drm_connector_state *conn_state)
> > +				    struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(intel_dp);
> >  	struct drm_display_mode *adjusted_mode =3D
> > &crtc_state->hw.adjusted_mode; diff --git
> > a/drivers/gpu/drm/i915/display/intel_alpm.h
> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > index 8c409b10dce6..a17dfaa5248d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > @@ -17,8 +17,7 @@ void intel_alpm_init_dpcd(struct intel_dp
> > *intel_dp);  bool intel_alpm_compute_params(struct intel_dp *intel_dp,
> >  			       const struct intel_crtc_state *crtc_state);  void
> > intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> > -				    struct intel_crtc_state *crtc_state,
> > -				    struct drm_connector_state *conn_state);
> > +				    struct intel_crtc_state *crtc_state);
> >  void intel_alpm_configure(struct intel_dp *intel_dp,
> >  			  const struct intel_crtc_state *crtc_state);  void
> > intel_alpm_lobf_debugfs_add(struct intel_connector *connector); diff
> > --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index a1fcedfd404b..86bc6d79279f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3107,7 +3107,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	intel_vrr_compute_config(pipe_config, conn_state);
> >  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
> >  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> > -	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
> > +	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
> >  	intel_dp_drrs_compute_config(connector, pipe_config,
> link_bpp_x16);
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config,
> > conn_state);
>=20
> --
> Jani Nikula, Intel
