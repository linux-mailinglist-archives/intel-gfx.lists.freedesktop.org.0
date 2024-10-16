Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 781A49A0DB5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 17:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09CD10E733;
	Wed, 16 Oct 2024 15:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rhy496Pd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2928B10E72F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 15:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729091504; x=1760627504;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dFQ5RmLYPSNLn0Ssi3BQEWjHxG8twoHAAXCjIyhz0Kc=;
 b=Rhy496PdyKSS9LL2BEw9fZCB5qlyKpaZtSuGCr6jy0oDdWPA4/wDc3Gq
 Le1IZJM/wzAGytcdfJ+T+rH700+EfbGhqKNgfJYB9quOf+cV5DgJo/VcU
 NUrwdoBcxyrTPKtSo3CVPXjlOlq+kM9FzwSyzXkx277h70EuXz1kw64Kj
 abpXf5YdWQYOzT0/AMjtVIhkjobTi7hnISvQ5TEd39hj6m/gEtlTKog4e
 A9PfXpnr8G9uv39ksjtcBksFs+1xpPSaAsUNaWFt/nc1ZuH7MtwiPMnLL
 naXp7OGFACazQg5yaIrlcZRbYGQII1ogJVJhIda4Gh4Hz91H24pzzVEcm A==;
X-CSE-ConnectionGUID: QrSK1AuaRbalMODg+h0wsQ==
X-CSE-MsgGUID: qYIgqDW4SiSN2z8m1U7VtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="39173899"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="39173899"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 08:11:44 -0700
X-CSE-ConnectionGUID: GbXvIR6LQuuK9nUvM+hflA==
X-CSE-MsgGUID: TeXScOhlSHmYWGceioheJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78298039"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 08:11:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:11:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:11:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 08:11:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 08:11:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R5LsrHtCZ/QOuAT7WGXtALTOuxtx9eN9Ub/5uJN2C+7AR/sv91eoBls9RJ6qkbPxfd+gs6VHXmLZNX+UIzkcdeKPWnPwg7699fAt6bqiD+EAh+fBCh+1L6P+aqIubXaNAwEB0DuWKnsHYeyP4E+EzT2YNpnYOB+WD6SmYaM3tmwx7iWPIhElCSiNYctuxZt3eUCfaePIgKOWuXX2a6rDqoyLlBapiNrjenpsmCmFlH7RDx3a/OJe7UXuTqxCDVB2lNfAAGGNQgVyMQa5Z/K+AVGUWL3eV0lsL0qyleXv7i10QJNbz084xRi4GikCVQEvF+R7zjHf1qC/BzptGkYk+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dFQ5RmLYPSNLn0Ssi3BQEWjHxG8twoHAAXCjIyhz0Kc=;
 b=OZ03Q48CLQuCYAApYv8oajiATdxu+F+4XPPFsiPuctkM/OpBQc31miAzUWZjQnZFDRQzHCFY7A+OVSGbI4F8FRYHolUFXNcjaO0SAb/p4DcpGifqZpOaFjaMMjVE+kk/yYR/Srge6xjtTSvcXkkE5YFLCkChPAGBsWBeRI9Tr9JXOFwxy7jrnMRexCTVDmPxTDGSK2Teqqkjo7xGxPs7wPuUyM7GCD2ZarG7R9gKj1I04tS+GYQGAv+aJCeAkSG/bfuA4ot6cngRZUWHWIp8TkjXhmo4JHuwwfQzR6TOrpQ0RJa8Al+BntxO/Wn5MxjowqTGkX5uBJ/cR/eTEah8wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA2PR11MB5178.namprd11.prod.outlook.com (2603:10b6:806:fa::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.18; Wed, 16 Oct 2024 15:11:40 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4046:430d:f16c:b842]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4046:430d:f16c:b842%5]) with mapi id 15.20.8069.018; Wed, 16 Oct 2024
 15:11:40 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIHNlcmllcyBzdGFydGlu?=
 =?utf-8?B?ZyB3aXRoIFt2NSwxLzFdIGRybS9pOTE1L3B4cDogQWRkIG1pc3NpbmcgdGFn?=
 =?utf-8?Q?_for_Wa=5F14019159160?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3Y1LDEvMV0gZHJtL2k5MTUvcHhwOiBBZGQgbWlzc2luZyB0YWcgZm9y?=
 =?utf-8?Q?_Wa=5F14019159160?=
Thread-Index: AQHbH2UVK1fUi/6tUku6lkQe2jFfF7KJfFBg
Date: Wed, 16 Oct 2024 15:11:40 +0000
Message-ID: <DM8PR11MB575113B080DC1CAE168EA6AC8A462@DM8PR11MB5751.namprd11.prod.outlook.com>
References: <20241016001658.2671225-1-alan.previn.teres.alexis@intel.com>
 <172903968628.1271149.4084171212942198773@2413ebb6fbb6>
In-Reply-To: <172903968628.1271149.4084171212942198773@2413ebb6fbb6>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA2PR11MB5178:EE_
x-ms-office365-filtering-correlation-id: d6b811a0-d4b3-4f17-f6ee-08dcedf4d685
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bktSTzlIVy9HLytHL0haV1pCYWY4MWl1K00yQmN2MGpPZnpNaHROS2ZnaHRO?=
 =?utf-8?B?RUJrbllHMjJITHI4d3FQUDE2OXQ2VXptVkg1bjFMMUtZNWtWT0p2Wkl1MzZX?=
 =?utf-8?B?RGZSTzFiVDI0dXkrR0JMTEtJK0xIZ3htallFcG5QaFBJUEVRdTZJbkx0Z1lx?=
 =?utf-8?B?TGNZYkVCZHpqN1NhTW92dnI5KzBEb3RISlBXOG1xYlJ6MVZWcnlkT3JyYUhy?=
 =?utf-8?B?TVNLWGxWZkRCdVVtcG5tdDV6bTI2d09KRmxBNmtqS2RCN092QWszenNQSktU?=
 =?utf-8?B?VTd0aW1oQXMxR1k5MkFSbDdhWFhLM3RZUjkxYWxOMlgxNE1ubEhzOFcwZm5H?=
 =?utf-8?B?NHNDeTl0SGNCaUpMb01DVEVtRi92WHdiOHh0VE1UbldNZWVMZ2d6N3JVVGJL?=
 =?utf-8?B?cFlSS3ZaVGJOZWplRXFLcWFIanZQK05sWVgzSDlaNE1TWjNhZHYrYm5Xcnhw?=
 =?utf-8?B?THp5NTRjVlZDNnpKV1lGMVVRR1d1d2dIL3RwNjlZUExMSFgzYjVzUGJrbkJF?=
 =?utf-8?B?VGYvOTRHeUJKRVh0WTlyb2VqeCtjbW5XTCs1TWRpZS8yczFCaTRueUI4cTNS?=
 =?utf-8?B?VHpVNFFNaVpQZGhZR0lmZW5JVDZ1UGV6VVdpQ05GdERyUlYxQTVLM2JrN2ND?=
 =?utf-8?B?MHpyMnFFeTVvS2RneGFVRmwrZnMvMTlPMkdKY3RXY0ZYUTIwQUtyVklBYUFj?=
 =?utf-8?B?M3RIT2pxSC85eDVqSHNLMGNxemVEN3RYTDh0d2N2cW9FekZETUZHTU1IUm9G?=
 =?utf-8?B?c2xGTXpWak1WajVwd3p5a2JwbFRxNkc1TVN6YXVOL3lTUVVTVzlqVGw4ZXNv?=
 =?utf-8?B?UHdBZGFtb1lBdUtFVURFSlJQZ1dCL05kSDMwcERHaFNCNVpiUy9tOHdGZDZr?=
 =?utf-8?B?U3NIWjVKYzk3S1hmaC92L2pzZTJySDVTeE5CV2NnMGN2a2JONnk1OVRybm91?=
 =?utf-8?B?dTdyV1pqNFFnL0Y4dU5XS2prSGd5aWt0emQ0VWNEUjhWNmdGMEY5VTBKVFo1?=
 =?utf-8?B?UE51R1l1a2dJd3FnYzVHeEFpaStMcUVwQURoMnE3OTF4ckhvcEdQcm5KeUNm?=
 =?utf-8?B?aFBHUkJnVGxJT3hnZUdqUzFDalBvUWpEdzhPdlBxOFUxU1RSRE5kdDNEVVhS?=
 =?utf-8?B?K3JyQkpGWFdUaUdMMStHRDFFQlE2QWNEU243VjVYdHE1ZW5McUo4SlFwUDNh?=
 =?utf-8?B?eUVYN0VnUnBIeWdIeFpqSlJMVDdaLzZlVERpVTFvdVl3TlJLbnlXRDRoR3hR?=
 =?utf-8?B?NHFVdlo1L1FiWE04MDE1ajY3WXhsOFNyVnNqWTladUJKTWtVTGcrb0ZxT0ZE?=
 =?utf-8?B?OC9BVVFHaDRmazZ2aHE2bUdSQkZ4YkxoMXY0cFRSbDRNZGp1TW5MTytqSjJW?=
 =?utf-8?B?UGExai82M2pCRGdvT0ZpS2cvcmVVbXBXMDBWb3FRZ1E5TEQwWWp3Vy9VVVdS?=
 =?utf-8?B?TDF1dmFrQzQ3dW5ZaXhOeWVJNktpQ0JyL0ZpRGZFL2d1VHVkOFhtSG1aOVEx?=
 =?utf-8?B?MWxab2k0YzdoVEYrOFM0MW82cHNyOEhTL1dJci9NOXBsaWxJbmVGRGZLUDRN?=
 =?utf-8?B?MEdiN1FZWHM4Qk5Sb2dGZENvUGlmaXEyeTdIMU9GQ1VRS3h6UXhxM3hXN0Y1?=
 =?utf-8?B?ejk1Z1lHcTZHaWM3U0EzNlBWUHN1YjA2N3VDWEdKQjB3TzFTN2xUdFV3eUJH?=
 =?utf-8?B?OWVsaS9mSzZWMGI4a1oveUFCblRLQ2ZTOUs5cFpoK1l2dGxTTXFPcGN5U0VH?=
 =?utf-8?B?Y3YrT25EcTRkV0wzc3o1Y1BpWjRVOEhNczlVd2dNUmozRXhpYnNpVEJ3Q2R2?=
 =?utf-8?B?YlJncCs5ZThQWHI1dElHQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHZnRTZ1SXovWEVURngrcEVFQUsxaWFyZzREVHo4U2IxeWNrRG9CRFlmYjRu?=
 =?utf-8?B?Nm1VK1pOWFhHcVNuRTcxeklzbVVsL21lNzNZRlk0TGdLby9Hcy9zYldYZmRj?=
 =?utf-8?B?NGs0Z2djSm9HREp0UlpUUTd5anV5Q1F0T29hc0ZURWJTRXZHN0JGbHd6b1Bl?=
 =?utf-8?B?MVNCSkdUdDJDWUFDb3FOcSszeG9JWkQ5QU0rTi9DRmt0czdoMDlCN0dpR2pE?=
 =?utf-8?B?Zk9EOXdyWjRZS3JZUWp2ZjZyM25KMFVBM1BhRkNoUnFrbzFEWmROY3FlMTRk?=
 =?utf-8?B?SU5rNFdJeHFQbDhpL0pZQUNHUW8zUSttU3M5aHV3NXdOYkhGUWsrNnhsa1hM?=
 =?utf-8?B?eEFUTkNZMXZuQU9hcnNGUnBUa0daSDc2VHBaTUk3MURuUnRad2l2Ymk4RjNU?=
 =?utf-8?B?RzhWZDNzbWZValdSMTV1bFRGZHdBc01od3JUclREY2JkRE04TmlMSzQwV0c2?=
 =?utf-8?B?R3JKOGxGK0cyc0QvNXAreCtDTHRvdFRuTGdVTFM1OERvSiszZzMySTBreHgz?=
 =?utf-8?B?VzhubEZIQU0wd0ZnaDFLTlc3T1dTNkVnV1doYlJUS2xycHF2azZYRkFTYUhN?=
 =?utf-8?B?c1dtODljOEdJZEVOc1l4OWZEN2ZyZHVuNm5acDdURUMrYXVhd24ydE9XdUVB?=
 =?utf-8?B?ZXQvYUNRZHQ3SmlNSk9TWi9jM1l3Y3BsTmhsb1FuS3ZaYkVNZG5mZEl2SWxE?=
 =?utf-8?B?RVdHdGlWK21Vb3J1UGdqQkNoT1hlWGtFdEVZU1lyeUNoa2ZMSHJxUG1uRlpN?=
 =?utf-8?B?N3lveGhpOGNBaU9GVlppbGNRcFRGSEtlaVVzblNSTkZUUmNKbllES0htWkg4?=
 =?utf-8?B?d084c0VPS1pqemFGcUk4MWVIclBaWmh1WW9xWTB4VzBLOXZCUmdYL0hobytY?=
 =?utf-8?B?T1lxb1JTanc4Mmw4dWs5a1d2S0tMQ2p0cHhJS0JqRUdYNGVkNkJoaUszSitV?=
 =?utf-8?B?Sm8zSGljeUlDZnZJSHNzZGhjQ0hLRmw3ZXJhS0c4WGxTVHZCeFU5cFN3eUtl?=
 =?utf-8?B?MjUwdkhiNy80a3VwcW5nTXNVWU9EOTF5MGhEOTJIY0ljekE0WDZFZno2MGFT?=
 =?utf-8?B?TE5DM2VVTE5iS1llUzd1U1hVb2IzWGVneC9rN2l2Z094SDZtYWtpWEs2T2NZ?=
 =?utf-8?B?NmZlelNGcnhxcVpHR2dlUzE3R1JCTUsva0JoQTRyTXBQOHdGU0tLTXA1d25D?=
 =?utf-8?B?c1A5Vnd0d2VjSHlFbXJDWW0xNGR6VGM0NmZDalYxWDErOWVFU3lUdUhVUFZm?=
 =?utf-8?B?RytTNzA1M0ZLNU5DTm1IK2NhTHNGdWdMZWxhNkRTN09iSGVTUkZXUmZaSGUy?=
 =?utf-8?B?bDAzTk1Nekt2cytCemwrKzFQSyt0MFVmeXYvdis1ZjVHVStSNHRWc3BZTHlL?=
 =?utf-8?B?emRvU2E2N2Z6bkdjaHdURGtZa0Q3eHBzcGdpZ2hhZ25uUEJNRkdwaldSR3F2?=
 =?utf-8?B?ZFNFVWYrZDVwNlV5NmZwY2lGKzI5TVpGSmpmaFp2SlprUDlJV2hGRjEyb2FT?=
 =?utf-8?B?NGo3Y24zTitPZVJnTXdlSnpaNC9QSnN0SmhCMm1BZUhGd3N6bFN4TG01R3E2?=
 =?utf-8?B?NFhEdThKbFZoTDBXVjBrT2duLzE1UUJvcHpBZDJrVmpDcFUvb0MxMEx3RTVr?=
 =?utf-8?B?aU9BK3RrYS9ONkMwOEJzcEZRQ05PeDEvd1lRNGlYRVZseWJ2cFNGa21PeTBo?=
 =?utf-8?B?M2tiVE1vV2dnMlM4NzZYU2NnU0JEeE1qd2MvQk4ybGF6czVsbjkwQmNLZ01a?=
 =?utf-8?B?bHV5L29ScE9EMldhMEpZY3VjYjE0WStlVUhobGV1dG9FN2FpNG01RVZrMGxG?=
 =?utf-8?B?MkVFNXF4YWszRTg0M3JOS1F6SnpUSmN0TzhzRHRiTzNBVStNNlltTXo2VjJj?=
 =?utf-8?B?WjhQUnpmcE5XZW1ycVhCK3EzZlYwTEZGa3hmVE90Vm1oc3lBUUJuak1hOVBS?=
 =?utf-8?B?a00xZDdnZ2IydXloMEhFdmEzaHdObThrbVpLa2EyWGY5RjRyVW1sVlhXNTln?=
 =?utf-8?B?THh1dDhQTU51QnpZZDhtcDhEM09CZytja1A0V1FQazdHSlZpMVErMjBySkpE?=
 =?utf-8?B?dGZ4ZUJtT2pHVXJXc244WWU2VG93M0NPQzVtZzcyM3JZaUQ2MmE2ZXNLRFkr?=
 =?utf-8?B?dW5wUktORnNscDdKOXRCNi9NUVMrY3lXdnJlU2JxNjBPWFc4WG9sVkxKaWxN?=
 =?utf-8?B?THc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b811a0-d4b3-4f17-f6ee-08dcedf4d685
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 15:11:40.6525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SqlvZEC5qFf6bBsIf9AF9neJg+SlUoEVeliLU+/dAkX26EF0jjRW8jlXQYnmBs6LOOkDIADqNT8N4Mo2r/lhGq6lYzH7Vu/TC+ontGt7DjsRDYMPxpLEzXZ95kGE/2SV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5178
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

VW5yZWxhdGVkIGVycm9yIOKAkyB0aGUgZW50aXJlIHBhdGNoIG9ubHkgYWRkcy9yZW1vdmVzIGNv
bW1lbnRzDQoNCg==
