Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF413AABD9D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 10:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F9910E311;
	Tue,  6 May 2025 08:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCQteJkY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E4F10E2B3;
 Tue,  6 May 2025 08:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746521162; x=1778057162;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N0+JZLd+BR4Hn3wH/8KlKSfn4m/edBMnsevmv0fdOBI=;
 b=hCQteJkYkusu2rVFUfTYioNzFGWWOzMc1cFLlPfUvAktg+EsZb5E5Z47
 nzkk8S0g/srRdxnzFk1kf2zBFfbtaeTskV9zQozs4GaoX2TcYPVOnD7QE
 P0w3eKKi5ZxJ/E2ipn4bA8zIAEDJ7NAJFF78CCI/1dBdmHzpNT2VQVb/d
 MpoVKd8pHUztS1PJfKNVAzKIPrNPzXFrrWV/9afkRjzzMnQsO95hA0ZEl
 8CQr+sHxPjaolzlDVcHLl5UdC9omckuFthlYPGLq8+Vaj4GxMGMu7T9J7
 EdSmKONM01oAlpl82Y9VYJK5zEJTnDGvyJcd0CFwCOgQh0Bq1jA1UZ4Zy w==;
X-CSE-ConnectionGUID: qOeteUshQGWOlRcSi01FOw==
X-CSE-MsgGUID: LtngqVwwRBCIX0hLKvzyAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="47279245"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="47279245"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 01:46:00 -0700
X-CSE-ConnectionGUID: DDpaMcg2Tb2hNtfYiZiYYQ==
X-CSE-MsgGUID: Rie3j+4ZSeeEPt9eZWiW2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="172744603"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 01:45:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 01:45:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 01:45:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 01:45:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FHjbcrDmP0ZahUL5revIvk+8B4FH8EHlYnHmiX6xTTnQDIgVczBSTxXLZXaNwSHG6VPFbCbTWEBJ94ADOh62frMiXLhpZgHDPK5DcyrP2OfQKWJMt1mg0QkIsbfJIj6O0W0CJ8GJ816amt0FPhroRY0u5QQCtwlAmhR6iVYPl4/S71wXH0jqGI3n3HEK61ScESDZIFB1BmJ6wBvnRnGzGJMofJXLc+NOEsfv8BVA4JbbkqgWEKAU8PCgRPsGEtlXS46eOIK4vx9FPUh6w9G4k7ELFsU4LjdwIXqX4MzAxODiqKGvGQELShOYR0vF/cf11/1jhrc8zJFWkzZHGMDL5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lj/Y0jxvd6/CgwFQKtViY5+9KDfvAvxEjsjoX2QY1n8=;
 b=qdjn6EMt7OoI+vmRmKuqZEXDWbYbZNeDD2+AySDdBhOsdmKK0oYEYSvLs3dhNcFZQZUbnzzIGABR7sEID9rjlViaiBwDV1je4+WHYxe2ou8uxuFAmqRKS8NnDMZhSc/VfQzMoF2V1IoVj91c1GhgQBW4rTxe+OX8trt7IWx4h19XX+lsyq+oKuw6txi031DkRzVh8HdI521TyI/Ln6FqRgqterrbA1uHvnSaJgUYhGvC+x4JRxSZDu6XNtjWamB2z9dh3iDH6lYS1l44IZcowW7lQEOPl7pavauCd0ts5v1KFLlk6Wsi6uPkhmLDh/1U728dHxq1G62RwY67eNF8zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 08:45:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 08:45:14 +0000
Message-ID: <da854dc0-930c-4cf3-ab12-4862e1867ad9@intel.com>
Date: Tue, 6 May 2025 14:15:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/12] drm/i915/dp_mst: Use the correct connector while
 computing the link BPP limit on MST
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8488:EE_
X-MS-Office365-Filtering-Correlation-Id: 76be74e1-dbfa-4c55-9385-08dd8c7a51b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnZSZFoxb0hBUURYbmdiS2xqUkJNVndqVjB3cTNlWGw2R01uUnBKTFg4WGZE?=
 =?utf-8?B?Wk94emkrOUFRNzI4eWhMRldSQStPSm5rQklIaG1QY1RCeW4zUVgxcERkRWRK?=
 =?utf-8?B?K2t1QXNtcnhBdjVudnlNTHFtcnBQTTI3dWwyQS9uUnJtOHlsbzJIR3VvRzlY?=
 =?utf-8?B?SzFaaXJObVgzTERpUzA3c2QvN1puMXRRaGhFdFp0UEFRTk1tdUJBV1V5Rjcz?=
 =?utf-8?B?REV1ckduR2llT3ROYzlSZmdnSmJsd3lyckZoU01MMHNHNGh2cXd5WE1RS0tG?=
 =?utf-8?B?MlNQeGdwZjR3bHNJTVlabEd3aDhFSWl0ZFhpdTByMW5abG9GYmdkU0FrNUc2?=
 =?utf-8?B?Uks4WHdGQzhSU2N0bWxYN3FxVFZoN1JHTHRrcWk5YjN2SkZhWDJad1hVeXJk?=
 =?utf-8?B?VTlTQVFaZ052dzFBTjJPSVZqUC9kcnp5YWFtNERDWk9JTnJFSDR5Qk92QlI0?=
 =?utf-8?B?S3laa29UVUVyU0d6anpqT3JtTGhSLzhCNk9MYzEzWENjSzZzMEpDN1ljMEhi?=
 =?utf-8?B?clBheitiWExOVXYyUG1YalphZGhBYm85V2UxdmUxZFJqTlgzR1EzUDNmZmJo?=
 =?utf-8?B?L1p4UmhNQzkyellQMlpxS05FRWxHenY0RENrSDRIcnRaZG10UHRNekZOLzRO?=
 =?utf-8?B?WnFKS3ovR0JUWk1ucTlvSEpNSzRNWW14dEJDaXRQQ0FlSmZDV3JQakdxdlFX?=
 =?utf-8?B?azRtZWFWZXNpME5DSzBpczZOcm1wNDZvTTdudEVqVDJ2cmc0NjdnNDRUZVJl?=
 =?utf-8?B?dEhEdFlxK01ZNWZ5aHdiOWs0SXUvQnh3RnNqNlZyM0h0QnNRdWdDSFBCTGFl?=
 =?utf-8?B?cDZiVWJqNzRydGxEeE9RY3lpckFrdGlXcmpPRmZIM055RXJIZ01JKy83TFZF?=
 =?utf-8?B?eDFIRm9UaWs1bDZjNDVQNTFVTXBSK2Q4Rlk0dlF6YmNoeWF1Vk5lWDUrZDBJ?=
 =?utf-8?B?a0xucnQ4M1Zua0JCLzY3VU1QQmJvMERVS01QTUFLVUdQVVFVaXdlclNYc29K?=
 =?utf-8?B?dHhydmlkNTFpZ2RhYWl4R29VaURSN25SM1VIY243UGtUdHB2YTY2MHAzcXRV?=
 =?utf-8?B?MHU0Uk55bTI5bWRIUXdTcVJrMHlNS1BMa0FXT2JUeWcwWXRTOE5ucUNJRmUx?=
 =?utf-8?B?MS9rcnRQSElORFVqdkJwcnpGRko5TWR0bmFsUWdEcG04UEFkZFNZejNKZkNo?=
 =?utf-8?B?S3dGTlhkL2pSTHh3NTdZSGIxditubUZ1LzIzY3FnUFRuUGgyQ1dwclJyU24z?=
 =?utf-8?B?ODVDS3pkM1V5UllwSlJDM0lIeTJLVjJEUVIrTkIzOG14a05aNmdEdk41d2Fl?=
 =?utf-8?B?ZXpiMDdtaGF6OGl5OTA3TFA3dEhDRzRTT3V1NTFtU01YZzhaQXRaVzZjRlRZ?=
 =?utf-8?B?UmpRUjdGWWJpZ0VqVEsvQWJ2NGg2dUJFUlJuMTk0NUN1TGZNYk5tMDVWZ3Ji?=
 =?utf-8?B?a3ZPb3loeHlxd3dLYnc5aC90ZUxJWFBxWVlabDFZUkJhQzRtZEtYWTgrODc4?=
 =?utf-8?B?Lzg4Wit4VHMvcUlJZXF4Q21XYUhRQmgvdEhDKzFVdHdFWEtqa0lWejRGL1Fo?=
 =?utf-8?B?a0J6SE56OUJqOGg5d1ZNTW9VbU43dEJSTkxrSUtkdk04dTBraEN6Z0R6MlFN?=
 =?utf-8?B?RmhlQnBrNWlzS1VScmI5MFpYaVhyemZac05kNmJVZnd0M1hUdnlkTzdYcy9p?=
 =?utf-8?B?eXlLZGVzdTVuVnBUUTRyUUxQbzZJWGtva0Y0SGlybkFWWVhweVk5U2JaYW5M?=
 =?utf-8?B?UjIrUVNDZkdBbGplRU9DR0EwTGxZM0cxZkROK29kdUhsdDFrMzRUb2M4MWsw?=
 =?utf-8?B?dnRVc3ZrbkRzdHpQY3lJVW9kYUNrNVY3R1lLMzN2cm9IdE1ZeUpTNjNoa1BV?=
 =?utf-8?B?SjVONXl3UjJwZmZhZldKa1k0UkY1ejdUTHVQLzdhOHJ2Mnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnNTTm4wc3EwdkRuYmdoaVhIQjFRWU1JcDUwa3dpU1FRUUJQekdUSjhNYzZr?=
 =?utf-8?B?aXhJZS9oMXpJcjNWVTVkaUlaRloxbVB3Z2ZvaFJDNk5oakxkdWJ1cW5NdXVF?=
 =?utf-8?B?RnNEbXkxN2hlWUtFWnJhMmFGQ2lwS1dKRkxFTU9aTG5saml6WmlHWXlFZUd4?=
 =?utf-8?B?dDMwWlpnSnRRZE9ObmxSM3NOMzlhU1NtQ3NLYm1PQmpzZlFYa2NYYXk4Q0hM?=
 =?utf-8?B?VzdzMjI2ejVjZmkwUjYxYkJiMzJUcENIRnRjWUtTVWdaU013bUFhR3Y3a3ZL?=
 =?utf-8?B?UEVDOU9SR3lYc2ZLSjRsMEZ6RGlXY29mUlZBUVhNMXV2MnhYV0NWbUZINnA0?=
 =?utf-8?B?QzlmQ3RjdDlWbHZyYThZa0ppMkhLSXFDSGYxSVA5NTFrSm5hKzEzeFhmc2s5?=
 =?utf-8?B?WW1uWUgrTnp3cGhLNFZxOEZod2R4NlhIUW54cHZNeHRQaGhKRDZyRVR4Z1NG?=
 =?utf-8?B?UXFRb244bG1xNGNDSkF1YUNaSDVrWEpFdndxK1J0ajErbElnMWFBNGtGSkJk?=
 =?utf-8?B?TXBFRGNnem5qVnFpbzZkenBiSmY2bXhLS2JOVDkrNnU3MzNlMjNqQ1Z3T1pF?=
 =?utf-8?B?Y0p1RG1uTWdNaDBSbFVyT2RzUGZEQkgrQTBtU20vaUpzbE9LNTRlMVBQZnRT?=
 =?utf-8?B?S2hqZ0lmZlFpblV1eG5DRFRRUGxIRE9NNjdrT25Fa3dDMkRtRUlJVGx1Zzhy?=
 =?utf-8?B?SFNzei8vWTlyNjlEcXBMNk1pb0pkd0ZVeTNUQThvVzBONlVPQzhRUUN1VHpM?=
 =?utf-8?B?VGFGaXdVWHFYenNEZVJpOVJ2OVd3NFZHSGtGV1FHZG1ub0tweDNMOUlEYXBZ?=
 =?utf-8?B?TTF2bmQ3Qk1VUngrL1pBWjNycWdEYTcrZ3dEcjRyemZjK2gwU3N0UjdQM2JN?=
 =?utf-8?B?SUxGblBnV0IvUGQrSjRjMnhINjh6d3BSWUxpdVUxWUhYS0VVR0hlV3NabTBh?=
 =?utf-8?B?WnYrTXlsYW40RktjdTVJaVNsOEpCbm5Uc1YzbThmZkJyNmlOeE1GZjN5WmJ5?=
 =?utf-8?B?SmYzamZ4MlNRVGVoRkMvbmh2SXJHMnIyeGZ4Y28vRS9pdGRqM3dXbnZ2TStU?=
 =?utf-8?B?OE1uWm1RZ0dZOVpCUEczLzNUYTVXWktLdmU3eThJLzlZejVQMkhUbElIdG9D?=
 =?utf-8?B?aUk4WFNTcHBqYk9MMklCdzZQMDhMcGtlWGZQRm5vZkluMFhjcVNzWnk4cmYz?=
 =?utf-8?B?Mnd5bWY1VDlOOHI5TnIyQ1ArdFBGL28relBxZmFSZkJ1YTRlSng3MDBTeDhu?=
 =?utf-8?B?ME45aENGUys4VGtrNVcvT1k2aVQ4bXZvNHMzRk0vVXY3SmdwVzdLL2JkRW9i?=
 =?utf-8?B?NGMyaFlPaFBNdzFIZ2xSbUZSbUpQWFk2ajJDbklVL0xJdEdaQXNrZCt1OWFQ?=
 =?utf-8?B?bldpL3FBS1hybVZ6YnJ3VTBkUkcxc0p3QnRZMkgrZE5rRzFYWjVHWXJ3UWE0?=
 =?utf-8?B?b1JHTG5lZE9USHl5L2N5NllZR2JaNjJCUjVlRVBoZ2lnMW8yTjJwbTE3c2RQ?=
 =?utf-8?B?VkJKVVorSS9OSWxQaGRLbW1BMlhoM3dUa1RaNXFxMmRZckdwby9wYWdjR1Zt?=
 =?utf-8?B?WlJHeG9RTjNWTTJOaEtzclIveUE4SHBwM2I5Q1VzT1dpN0FQeWdBUzFEbVFY?=
 =?utf-8?B?ekRrVHBVZGhoQjl1bjdoZGU4ekhxRERwakcrNERTWm5yL1FPOW5CRll3ODBk?=
 =?utf-8?B?WXB6Tkw4TDlGRnlpWFpYRllKVXhSUm8wRUFMMUlLb1FmS1NZRFR2Rld0R3pF?=
 =?utf-8?B?R25TVGdxSWdsMjFXS1NHSHZhT1h0a1I1K3EvU1ZmblhqSFFSdkREOGVrNEQw?=
 =?utf-8?B?YkNMcWt6QWxNS2JBcFh1V2cvZGdpSUxNQXB6KzdtSTB3eHdjaUtaUjZGMlBF?=
 =?utf-8?B?QlcvUmNqT0FlSGV6Z3RWb2x3ZTVvTlVpNWo0NGo5MVVpcHJPKzN4ZnlDZmcx?=
 =?utf-8?B?R3czSUxwNEM1MmtoTGtRWStHbG4xc3p6eGNOYnU1V1NQYWdvMHRCT1U4MnQ3?=
 =?utf-8?B?L3djd3luSXBNTm1aZVU1Z2JMWmtkZGF2T0Jua0hJWUpKcUhRVHZYQXZzU1Ry?=
 =?utf-8?B?dXdST0NCWGNFaE9tSlIyTXJZS2xoMXpDdFVFMllseGUyTm5sem5PMzBsaVhX?=
 =?utf-8?B?bkFOZTk0Wkd0bWRySU1YZ05WanBpNGRqTlVtZUVjM2JmTVF4NU9FSDdBTkhS?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76be74e1-dbfa-4c55-9385-08dd8c7a51b6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 08:45:14.3176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kka+qPZdFhUvIeQtzD1uajNNwB7H/zWnSie9U9fx+Hc1ZuLDuGRFgKs3itxXn3i93vIcCnLxDeyjImDdVyRRWsfmXK2L/BD8igl+ZW1mCkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Atm, on an MST link in DSC mode
> intel_dp_compute_config_link_bpp_limits() calculates the maximum link
> bpp limit using the MST root connector's DSC capabilities. That's not
> correct in general: the decompression could be performed by a branch
> device downstream of the root branch device or the sink itself.
>
> Fix the above by passing to intel_dp_compute_config_link_bpp_limits()
> the actual connector being modeset, containing the correct DSC
> capabilities.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Fixes: 1c5b72daff46 ("drm/i915/dp: Set the DSC link limits in intel_dp_compute_config_link_bpp_limits")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
>   drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>   3 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 607aea1bf6fa2..d63aea7ee9c80 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2523,6 +2523,7 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
>   
>   bool
>   intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> +			       struct intel_connector *connector,
>   			       struct intel_crtc_state *crtc_state,
>   			       bool respect_downstream_limits,
>   			       bool dsc,
> @@ -2576,7 +2577,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
>   
>   	return intel_dp_compute_config_link_bpp_limits(intel_dp,
> -						       intel_dp->attached_connector,
> +						       connector,
>   						       crtc_state,
>   						       dsc,
>   						       limits);
> @@ -2637,7 +2638,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> -		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> +		     !intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
>   						     respect_downstream_limits,
>   						     false,
>   						     &limits);
> @@ -2671,7 +2672,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>   			    str_yes_no(intel_dp->force_dsc_en));
>   
> -		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
> +		if (!intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
>   						    respect_downstream_limits,
>   						    true,
>   						    &limits))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 9189db4c25946..98f90955fdb1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -194,6 +194,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
>   int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
>   
>   bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> +				    struct intel_connector *connector,
>   				    struct intel_crtc_state *crtc_state,
>   				    bool respect_downstream_limits,
>   				    bool dsc,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d19ef1fef452b..49b836cd8816c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -621,12 +621,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
>   
>   static bool
>   mst_stream_compute_config_limits(struct intel_dp *intel_dp,
> -				 const struct intel_connector *connector,
> +				 struct intel_connector *connector,
>   				 struct intel_crtc_state *crtc_state,
>   				 bool dsc,
>   				 struct link_config_limits *limits)
>   {
> -	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
> +	if (!intel_dp_compute_config_limits(intel_dp, connector,
> +					    crtc_state, false, dsc,
>   					    limits))
>   		return false;
>   
